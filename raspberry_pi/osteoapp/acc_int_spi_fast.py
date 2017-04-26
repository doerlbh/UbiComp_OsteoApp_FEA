#!/usr/bin/python
# -*- coding: utf-8 -*-
# Example on how to read the ADXL345 accelerometer.
# Kim H. Rasmussen, 2014
import time
import spidev
import math
import sys, select, os
import RPi.GPIO as GPIO


time_run = 50

# Setup SPI
spi = spidev.SpiDev()
#spi.mode = 3    <-- Important: Do not do this! Don't set mode til after open. Or SPI won't work 
spi.open(0,0) # port 0, device 0
spi.mode = 3 # two bits that have to do with clock polarity and phase...
spi.max_speed_hz = 3900000 # 3.9MHz < 5MHz (highest value for adxl345), 3.9MHz is equivalent to clock divisor of 64
#spi.max_speed_hz = 1953000 # 3.9MHz < 5MHz (highest value for adxl345), 3.9MHz is equivalent to clock divisor of 64

# Read the Device ID (should be xE5)
# xfer transfers varying control select, but xfer2 cs will be held active
id = spi.xfer2([128,0])
print 'Device ID (Should be 0xE5):\n'+str(hex(id[1])) + '\n'

# open file to write data to
fname = time.strftime("ubicomp/%m_%d_%H_%M_%S", time.gmtime())
#print fname
f = open(fname + ".csv", "w")


# set GPIO25 (pin 22) to be interrupt (connect to int1 on adxl345)
GPIO.setmode(GPIO.BCM) # means put 25 instead of 22...
GPIO.setup(25, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)



# Initialize the ADXL345
def initadxl345():
    # Enter power saving state
    spi.xfer2([45, 0]) # [0x2d, 0x00]

    # Set data rate to 3200 hz (rate code 0x0f) and not low power
    spi.xfer2([44, 15]) # [0x2c, 0x0f]

    # I didn't enable full range (sets number of bits) and set range to +/- 2g 
    # also sets to 4-wire spi
    #spi.xfer2([49, 0]) # [0x31, 0x00]
    #spi.xfer2([49, 0]) # [0x31, 0x00]
    #spi.xfer2([49, 10]) # [0x31, 0x00]
    spi.xfer2([49, 11]) # [0x31, 0b00001011] which means +-16g and full resolution
    

    #should probably set all to zero:
    #FIFO_CTL
    spi.xfer2([56, 0]) # 0x38, 0x00
    #ACT_INACT_CTL -- "If all axes are excluded, the function is disabled" d6, d5, d4
    spi.xfer2([39, 0]) # 0x27, 0x00
    #TAP_AXES
    spi.xfer2([42, 0]) # 0x2a, 0x00

    # set all offsets to 0
    spi.xfer2([30,0])
    spi.xfer2([31,0])
    spi.xfer2([32,0])

    # set DATA_READY interrupt in INT_ENABLE, automatically set to active-high
    spi.xfer2([46, 128]) # [0x2e, 0x80]
    # set INT_MAP to enable interrupts on int1 by setting the 0x80 bit to 0
    spi.xfer2([47, 0]) # [0x2f, 0x0]

    # Enable measurement
    spi.xfer2([45, 8]) # [0x2d, 0x08]



# Read the ADXL x-y-z axia
def readadxl345():
    rx = spi.xfer2([242,0,0,0,0,0,0]) # 0xf2
    #print rx

    out = [rx[1] | (rx[2] << 8),rx[3] | (rx[4] << 8),rx[5] | (rx[6] << 8)]
    # Format x-axis
    if (out[0] & (1<<15)):
        out[0] = out[0] - (1<<16)
    #out[0] = out[0] * 9.82 / 256
    # Format y-axis
    if (out[1] & (1<<15)):
        out[1] = out[1] - (1<<16)
    #out[1] = out[1] * 9.82 / 256
    # Format z-axis
    if (out[2] & (1<<15)):
        out[2] = out[2] - (1<<16)
    #out[2] = out[2] * 9.82 / 256
    #print out

    return out


def read_save(channel):
    #print "IN READ_SAVE FUNCTION"
    axia = readadxl345()
    axia[2] = axia[2]- z_offset_sub
    #print str(axia[0]).zfill(5) + "\t" + str(axia[1]).zfill(5) + "\t" + str(axia[2]).zfill(5)
    f.write(str(axia[0]).zfill(5) + "\t" + str(axia[1]).zfill(5) + "\t" + str(axia[2]).zfill(5) + "\n")
    if (time.time() > timeout) :
    #if(0):
        print "Exiting program"
        GPIO.cleanup()
        f.close()
        sys.exit()


#def offset_read(channel):
#    axia = readadxl345()
#    avg[0] += axia[0]
#    avg[1] += axia[1]
#    avg[2] += axia[2]
#    count += 1



# Adjust x- and y-offsets to be average over 3 seconds of readings
# Set z-offset to 0 because z-axis must be adjusted in software
def set_offsets():
    spi.xfer2([30,0])
    spi.xfer2([31,0])
    spi.xfer2([32,0])


    GPIO.add_event_detect(25, GPIO.RISING, callback=offset_read)
    rx = readadxl345() # read once to fix interrupt

    timeout = time.time() + 3
    while (time.time() < timeout) :
        pass
        #print count
    
    GPIO.remove_event_detect(25)

    global avg
    global count

    print "x-axis average: ", avg[0]/count
    print "y-axis average: ", avg[1]/count
    #print "z-axis average: ", avg[2]/count
    print "count: ", count

    xoff_val = avg[0]/count
    yoff_val = avg[1]/count
    zoff_val = avg[2]/count

    xoff_val = -xoff_val/4
    yoff_val = -yoff_val/4
    zoff_val = -zoff_val/4

    print "x offset: ", xoff_val
    print "y offset: ", yoff_val
    #print "z offset: ", zoff_val

    spi.xfer2([30,xoff_val])
    spi.xfer2([31,yoff_val])
    spi.xfer2([32,0])

    # write stuff to files
    f.write("x-axis average: " + str(avg[0]/count) + "\n")
    f.write("y-axis average: " + str(avg[1]/count) + "\n")
    f.write("z-axis average: " + str(avg[2]/count) + "\n")
    f.write("num samples over 3 sec for average computation (may be some repeats): " + str(count) + "\n")
    f.write("x offset: " + str(xoff_val) + "\n")
    f.write("y offset: " + str(yoff_val) + "\n")
    f.write("z offset: 0\n\n")

    return avg[2]/count



def offset_read(channel):
    axia = readadxl345()
    global avg
    global count
    print count
    avg[0] += axia[0]
    avg[1] += axia[1]
    avg[2] += axia[2]
    count += 1




# Initialize the ADXL345 accelerometer
initadxl345()
#avg = [0, 0, 0]
#count = 0
#z_offset_sub = set_offsets()
z_offset_sub = 0

f.write("x_acc\ty_acc\tz_acc\n")


timeout = time.time() + time_run

# Create callback for interrupt (Read the ADXL345)
GPIO.add_event_detect(25, GPIO.RISING, callback=read_save) 

# read once to fix interrupt... (clears the current interrupt)
rx = readadxl345()


#timeout = time.time() + 10
while(1) : 
    pass
#while (time.time() < timeout) :
#    pass


#while(1):
#    pass
#    if sys.stdin in select.select([sys.stdin], [], [], 0)[0]:
#        line = raw_input()
#        break
    #axia = readadxl345()
    #axia[2] = axia[2]- z_offset_sub
    # Print the reading
    #print str(axia[0]).zfill(5) + "\t" + str(axia[1]).zfill(5) + "\t" + str(axia[2]).zfill(5)
    #f.write(str(axia[0]).zfill(5) + "\t" + str(axia[1]).zfill(5) + "\t" + str(axia[2]).zfill(5) + "\n")
    #print axia[0]
    #print axia[1]
    #print str(axia[2]) + '\n'


GPIO.cleanup()
f.close()


