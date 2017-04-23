#!/usr/bin/python
# -*- coding: utf-8 -*-
# Example on how to read the ADXL345 accelerometer.
# Kim H. Rasmussen, 2014

import time
import spidev
import math
#import sys, select, os
import RPi.GPIO as GPIO
#import spi
import sys, select, os
import cPickle as pickle


time_run = 15
folder = "apr18"

counter0 = 0
counter1 = 0

GPIO.setmode(GPIO.BOARD)
GPIO.setup(22, GPIO.IN, pull_up_down=GPIO.PUD_UP)
#GPIO.setup(18, GPIO.IN, pull_up_down=GPIO.PUD_UP)


# SETUP SPIs
spi1 = spidev.SpiDev()
spi1.open(0,1)

spi0 = spidev.SpiDev()
spi0.open(0,0)

def setup_spi(spi) :
    spi.mode = 3 # <-- make sure to set mode AFTER open
    spi.max_speed_hz = 5000000 # 3.9MHz < 5MHz (highest value for adxl345), 3.9MHz is equivalent to clock divisor of 64

setup_spi(spi1)
setup_spi(spi0)


# Read the Device ID (should be xE5)
# xfer transfers varying control select, but xfer2 cs will be held active
id = spi1.xfer2([128,0])
print 'Device ID (Should be 0xe5):\n'+str(hex(id[1])) + '\n'
id = spi0.xfer2([128,0])
print 'Device ID (Should be 0xe5):\n'+str(hex(id[1])) + '\n'


# open file to write data to
fname = time.strftime("%m_%d_%H_%M_%S", time.gmtime())
fname0 = folder + "/acc0_" + fname + ".pkl"
fname1 = folder + "/acc1_" + fname + ".pkl"
#print fname
f0 = open(folder + "/acc0_" + fname + ".pkl", "wb")
f1 = open(folder + "/acc1_" + fname + ".pkl", "wb")
#f0_string = "x_acc\ty_acc\tz_acc\n"
#f1_string = "x_acc\ty_acc\tz_acc\n"
f0_list = []
f1_list = []


# Initialize the ADXL345
def initadxl345(spi):
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
def readadxl345(spi):
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

def read_save0(channel):
    #read_save(spi0, f0_string)
    #global f0_string
    global counter0
    axia = readadxl345(spi0)
    counter0 += 1
    pickle.dump(axia, f0)

    axia = readadxl345(spi1)
    pickle.dump(axia, f1)

#def read_save1(channel):
    #read_save(spi1, f1_string)

#def read_save(spi, f_string):
#    axia = readadxl345(spi)
#    f_string = f_string + str(axia[0]).zfill(5) + "\t" + str(axia[1]).zfill(5) + "\t" + str(axia[2]).zfill(5) + "\n"

# Initialize the ADXL345 accelerometer
initadxl345(spi1)
initadxl345(spi0)

timeout = time.time() + time_run

# Create callback for interrupt (Read the ADXL345)
#GPIO.add_event_detect(18, GPIO.RISING, callback=read_save1)
GPIO.add_event_detect(22, GPIO.RISING, callback=read_save0)

# read once to fix interrupt... (clears the current interrupt)
#rx = readadxl345(spi1)
rx = readadxl345(spi0)

time.sleep(time_run)


GPIO.cleanup()
time.sleep(1)
f0.close()
f1.close()

print(counter0/time_run)
#print(counter1/time_run)

f0_csv = open(folder + "/acc0_" + fname + ".csv", "w")
pickledtext = []
file0 = open(fname0, "rb")
l = []
while 1:
    try :
        line = pickle.load(file0)
        #print line
        l.append("\t".join(str(x) for x in line))
    except EOFError:
        break
f0_csv.write("\n".join(l))
f0_csv.close()
#f0.close()

f1_csv = open(folder + "/acc1_" + fname + ".csv", "w")
pickledtext = []
file1 = open(fname1, "rb")
l = []
while 1:
    try :
        line = pickle.load(file1)
        #print line
        l.append("\t".join(str(x) for x in line))
    except EOFError:
        break
f1_csv.write("\n".join(l))
f1_csv.close()