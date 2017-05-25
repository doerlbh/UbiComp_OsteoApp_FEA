#!/bin/bash

# -*- coding: utf-8 -*-
# Code: spectogram analysis
# Author: Baihan Lin
# Date: May 2017
# Lab: UbiComp Lab

folder=`pwd`
mscript=${folder//*\//}_spec_analysis_baihan.m
echo "% spectogram analysis.m for experiment ${folder//*\//} \n% Baihan Lin, May 2017\n" > $mscript

echo "clear all; close all;" >> $mscript
echo "\nload('${folder//*\//}.mat')\n" >> $mscript
echo "path=('$folder/spectogram/');\nsystem(['mkdir ' path]);\n" >> $mscript

for f in `ls acc0*csv`
do
    acc0=${f//.csv/}
    acc1=${acc0/acc0/acc1}

	echo "%% -----$acc0 $acc1------" >> $mscript
	echo "size = length($acc0);" >> $mscript
	echo "plane0 = var($acc0);" >> $mscript
	echo "plane1 = var($acc1);" >> $mscript
	echo "s_$acc0=zeros(size,1);" >> $mscript
	echo "s_$acc1=zeros(size,1);" >> $mscript
	
	echo "for n = 1:size" >> $mscript
    	echo "s_$acc0(n) = $acc0(n,:)*plane0.'/norm(plane0,2);" >> $mscript
    	echo "s_$acc1(n) = $acc1(n,:)*plane1.'/norm(plane1,2);" >> $mscript
	echo "end\n" >> $mscript

	echo "nwin = 100;" >> $mscript
	echo "wind = kaiser(nwin,10);" >> $mscript
	echo "nlap = nwin-10;" >> $mscript
	echo "nfft = 1024;" >> $mscript
	echo "Fs = 1/0.0003;\n" >> $mscript

	echo "figure(1)" >> $mscript
	echo "spectrogram(s_$acc0,wind,nlap,nfft,Fs,'yaxis')" >> $mscript
	echo "title('Spectogram ${acc0//_/\\_}');" >> $mscript
	echo "filename = strcat(path, 'spec_$acc0.png');" >> $mscript
	echo "saveas(gcf, filename,'png');" >> $mscript
	echo "close(figure(1));\n" >> $mscript

	echo "figure(2)" >> $mscript
	echo "spectrogram(s_$acc1,wind,nlap,nfft,Fs,'yaxis')" >> $mscript
	echo "title('Spectogram ${acc1//_/\\_}');" >> $mscript
	echo "filename = strcat(path, 'spec_$acc1.png');" >> $mscript
	echo "saveas(gcf, filename,'png');" >> $mscript
	echo "close(figure(2));" >> $mscript

	echo "figure(3)" >> $mscript
	echo "spectrogram(s_$acc0./s_$acc1,wind,nlap,nfft,Fs,'yaxis')" >> $mscript
	echo "title('Ratio Spectogram acc0${acc1//_/\\_}');" >> $mscript
	echo "filename = strcat(path, 'spec_ratio_acc0$acc1.png');" >> $mscript
	echo "saveas(gcf, filename,'png');" >> $mscript
	echo "close(figure(3));" >> $mscript
done

#fscript=`pwd`/$mscript

/Applications/Work/MATLAB_R2015b.app/bin/matlab -nodesktop -r "${mscript//.m/}"
