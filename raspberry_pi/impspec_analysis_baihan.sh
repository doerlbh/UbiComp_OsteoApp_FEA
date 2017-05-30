#!/bin/bash

# -*- coding: utf-8 -*-
# Code: impulse spectogram analysis
# Author: Baihan Lin
# Date: May 2017
# Lab: UbiComp Lab

folder=`pwd`
mscript=${folder//*\//}_impspec_analysis_baihan.m
echo "% impulse spectogram analysis.m for experiment ${folder//*\//} \n% Baihan Lin, May 2017\n" > $mscript

echo "clear all; close all;" >> $mscript
echo "\nload('${folder//*\//}.mat')\n" >> $mscript
echo "path=('$folder/impulse_spectogram/');\nsystem(['mkdir ' path]);\n" >> $mscript

for f in `ls acc0*csv`
do
    acc0=${f//.csv/}
    acc1=${acc0/acc0/acc1}

	echo "%% -----$acc0 $acc1------" >> $mscript

	echo "pathN=(strcat(path,'$acc0','/'));" >> $mscript
	echo "system(['mkdir ' pathN]);\n" >> $mscript

	echo "set(0,'DefaultFigureVisible', 'off');\n" >> $mscript
	
	echo "size = length($acc0);" >> $mscript
	echo "plane0 = var($acc0);" >> $mscript
	echo "plane1 = var($acc1);" >> $mscript
	echo "s_$acc0=zeros(size,1);" >> $mscript
	echo "s_$acc1=zeros(size,1);\n" >> $mscript

	echo "pulse0 = zeros(size,1);" >> $mscript
	echo "pulse0(1:1000) = 1;" >> $mscript
	echo "pulse1 = zeros(size,1);" >> $mscript
	echo "pulse1(1:1000) = 1;\n" >> $mscript

	echo "rate = 0.0003;" >> $mscript
	echo "nwin = 100;" >> $mscript
	echo "wind = kaiser(nwin,10);" >> $mscript
	echo "nlap = nwin-10;" >> $mscript
	echo "nfft = 100;" >> $mscript
	echo "Fs = 1/rate;" >> $mscript
	echo "frame = 1000;\n" >> $mscript

	echo "for n = 1:size" >> $mscript
	echo "    s_$acc0(n) = $acc0(n,:)*plane0.'/norm(plane0,2);" >> $mscript
	echo "    s_$acc1(n) = $acc1(n,:)*plane1.'/norm(plane1,2);" >> $mscript
	echo "end\n" >> $mscript

	echo "plot(rate*[1:size],s_$acc0);" >> $mscript
	echo "title('calibrated signal for ${acc0//_/\\_}');" >> $mscript
	echo "xlabel('t(s)');" >> $mscript
	echo "ylabel('signal');" >> $mscript
	echo "filename = strcat(pathN, 'signal_$acc0.png');" >> $mscript
	echo "saveas(gcf, filename,'png');" >> $mscript

	echo "plot(rate*[1:size],s_$acc1);" >> $mscript
	echo "title('calibrated signal for ${acc1//_/\\_}');" >> $mscript
	echo "xlabel('t(s)');" >> $mscript
	echo "ylabel('signal');" >> $mscript
	echo "filename = strcat(pathN, 'signal_$acc1.png');" >> $mscript
	echo "saveas(gcf, filename,'png');" >> $mscript

	echo "for tp = frame+1:size-2*frame" >> $mscript
	echo "    if ~pulse0(tp) && (s_$acc0(tp) > 100)" >> $mscript
	echo "        spectrogram(s_$acc0(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');" >> $mscript
 	echo "       title(strcat('Impulse spectogram ${acc0//_/\\_}','\_',int2str(tp)));" >> $mscript
	echo "        filename = strcat(pathN, strcat('impspec_', '$acc0','_',int2str(tp),'.png'));" >> $mscript
	echo "        saveas(gcf, filename,'png');" >> $mscript
	echo "        pulse0(tp:tp+frame*2) = 1;" >> $mscript
	echo "    end" >> $mscript
	echo "    if ~pulse1(tp) && (s_$acc1(tp) > 100)" >> $mscript
	echo "        spectrogram(s_$acc1(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');" >> $mscript
	echo "        title(strcat('Impulse spectogram ${acc1//_/\\_}','\_',int2str(tp)));" >> $mscript
	echo "        filename = strcat(pathN, strcat('impspec_', '$acc1','_',int2str(tp),'.png'));" >> $mscript
	echo "        saveas(gcf, filename,'png');" >> $mscript
	echo "        pulse1(tp:tp+frame*2) = 1;" >> $mscript
	echo "    end" >> $mscript
	echo "end\n\n" >> $mscript
done

#fscript=`pwd`/$mscript

/Applications/Work/MATLAB_R2015b.app/bin/matlab -nodesktop -r "${mscript//.m/}"

