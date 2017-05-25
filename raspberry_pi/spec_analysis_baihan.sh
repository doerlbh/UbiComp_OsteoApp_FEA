#!/bin/bash

# -*- coding: utf-8 -*-
# Code: spectogram analysis
# Author: Baihan Lin
# Date: Apr 2017
# Lab: UbiComp Lab

folder=`pwd`
mscript=${folder//*\//}_spec_analysis_baihan.m
echo "% spectogram analysis.m for experiment ${folder//*\//} \n% Baihan Lin, Apr 2017\n" > $mscript

echo "clear all; close all;" >> $mscript
echo "\nload('${folder//*\//}.mat')\n" >> $mscript
echo "path=('$folder/spectogram/');\nsystem(['mkdir ' path]);\n" >> $mscript

for f in `ls acc0*csv`
do
    acc0=${f//.csv/}
    acc1=${acc0/acc0/acc1}

	echo "%% -----$acc0 $acc1------\n" >> $mscript
	echo "size = length($acc0);\n" >> $mscript
	echo "plane0 = var($acc0);\n" >> $mscript
	echo "plane1 = var($acc1);\n" >> $mscript
	echo "s_$acc0=zeros(size,1);\n" >> $mscript
	echo "s_$acc1=zeros(size,1);\n\n" >> $mscript
	
	echo "parfor n = 1:size\n" >> $mscript
    	echo "s_$acc0(n) = $acc0(n,:)*plane0.'/norm(plane0,2);\n" >> $mscript
    	echo "s_$acc1(n) = $acc1(n,:)*plane1.'/norm(plane1,2);\n" >> $mscript
	echo "end\n\n" >> $mscript

	echo "nwin = 100;\n" >> $mscript
	echo "wind = kaiser(nwin,10);\n" >> $mscript
	echo "nlap = nwin-10;\n" >> $mscript
	echo "nfft = 1024;\n" >> $mscript
	echo "Fs = 1/0.0003;\n\n" >> $mscript

	echo "figure(1)\n" >> $mscript
	echo "spectrogram(s_$acc0,wind,nlap,nfft,Fs,'yaxis')\n" >> $mscript
	echo "title('Spectogram ${acc0//_/\\_}');\n" >> $mscript
	echo "filename = strcat(path, 'spec_$acc0.png');\n" >> $mscript
	echo "saveas(gcf, filename,'png');\n" >> $mscript
	echo "close(figure(1));\n\n" >> $mscript

	echo "figure(2)\n" >> $mscript
	echo "spectrogram(s_$acc1,wind,nlap,nfft,Fs,'yaxis')\n" >> $mscript
	echo "title('Spectogram ${acc1//_/\\_}');\n" >> $mscript
	echo "filename = strcat(path, 'spec_$acc1.png');\n" >> $mscript
	echo "saveas(gcf, filename,'png');\n" >> $mscript
	echo "close(figure(2));\n" >> $mscript

	echo "figure(3)\n" >> $mscript
	echo "spectrogram(s_$acc0./s_$acc1,wind,nlap,nfft,Fs,'yaxis')\n" >> $mscript
	echo "title('Ratio Spectogram acc0${acc1//_/\\_}');\n" >> $mscript
	echo "filename = strcat(path, 'spec_ratio_acc0$acc1.png');\n" >> $mscript
	echo "saveas(gcf, filename,'png');\n" >> $mscript
	echo "close(figure(3));\n" >> $mscript
done

#fscript=`pwd`/$mscript

/Applications/Work/MATLAB_R2015b.app/bin/matlab -nodesktop -r "${mscript//.m/}"
