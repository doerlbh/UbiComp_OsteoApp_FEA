#!/usr/bin/python
# -*- coding: utf-8 -*-
# Baihan Lin, 2017

import matplotlib.pyplot as plt
import numpy as np
import sys
from itertools import islice

dt = 0.0003
allTime = 66.0
sampleSize = 220001

for arg in sys.argv:
	filename = arg

x=[]
y=[]
z=[]
with open(filename) as myfile:
    data = list(islice(myfile, sampleSize))
    for line in data:
        x.append(line.split()[0])
        y.append(line.split()[1])
        z.append(line.split()[2])

t = np.arange(0.0, allTime, dt)
#s1 = np.sin(2*np.pi*100*t)
#s2 = 2*np.sin(2*np.pi*400*t)

# create a transient "chirp"
#mask = np.where(np.logical_and(t > 10, t < 12), 1.0, 0.0)
#s2 = s2 * mask

# add some noise into the mix
#nse = 0.01*np.random.random(size=len(t))

#x = s1 + s2 + nse  # the signal
NFFT = 1024       # the length of the windowing segments
Fs = int(1.0/dt)  # the sampling frequency

# Pxx is the segments x freqs array of instantaneous power, freqs is
# the frequency vector, bins are the centers of the time bins in which
# the power is computed, and im is the matplotlib.image.AxesImage
# instance

ax1 = plt.subplot(231)
plt.plot(t, x)
plt.subplot(234, sharex=ax1)
Pxx, freqs, bins, im = plt.specgram(x, NFFT=NFFT, Fs=Fs, noverlap=900)

ax2 = plt.subplot(232)
plt.plot(t, y)
plt.subplot(235, sharex=ax2)
Pxx, freqs, bins, im = plt.specgram(y, NFFT=NFFT, Fs=Fs, noverlap=900)

ax3 = plt.subplot(233)
plt.plot(t, z)
plt.subplot(236, sharex=ax3)
Pxx, freqs, bins, im = plt.specgram(z, NFFT=NFFT, Fs=Fs, noverlap=900)

plt.savefig(filename.replace("csv", "png"))
plt.show()
