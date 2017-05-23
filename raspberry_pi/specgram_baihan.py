#!/usr/bin/python
# -*- coding: utf-8 -*-
# Baihan Lin, 2017

import matplotlib.pyplot as plt
import numpy as np
import sys

dt = 0.0003
alltime=66.0
#N=220000

#for arg in sys.argv:
#    f=open(arg)
#    for i in range(N):
#    	line=f.next().strip()
#    	print line
#	f.close()


t = np.arange(0.0, alltime, dt)
s1 = np.sin(2*np.pi*100*t)
s2 = 2*np.sin(2*np.pi*400*t)

# create a transient "chirp"
mask = np.where(np.logical_and(t > 10, t < 12), 1.0, 0.0)
s2 = s2 * mask

# add some noise into the mix
nse = 0.01*np.random.random(size=len(t))

x = s1 + s2 + nse  # the signal
NFFT = 1024       # the length of the windowing segments
Fs = int(1.0/dt)  # the sampling frequency

# Pxx is the segments x freqs array of instantaneous power, freqs is
# the frequency vector, bins are the centers of the time bins in which
# the power is computed, and im is the matplotlib.image.AxesImage
# instance

ax1 = plt.subplot(211)
plt.plot(t, x)
plt.subplot(212, sharex=ax1)
Pxx, freqs, bins, im = plt.specgram(x, NFFT=NFFT, Fs=Fs, noverlap=900)
plt.show()
