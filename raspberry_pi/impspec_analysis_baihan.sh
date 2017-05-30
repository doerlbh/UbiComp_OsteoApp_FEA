#!/bin/bash

# -*- coding: utf-8 -*-
# Code: impulse spectogram analysis
# Author: Baihan Lin
# Date: May 2017
# Lab: UbiComp Lab

folder=`pwd`
mscript=${folder//*\//}_impspec_analysis_baihan.m
echo "% spectogram analysis.m for experiment ${folder//*\//} \n% Baihan Lin, May 2017\n" > $mscript

echo "clear all; close all;" >> $mscript
echo "\nload('${folder//*\//}.mat')\n" >> $mscript
echo "path=('$folder/spectogram/');\nsystem(['mkdir ' path]);\n" >> $mscript

for f in `ls acc0*csv`
do
    acc0=${f//.csv/}
    acc1=${acc0/acc0/acc1}

% impulse spectogram analysis.m for experiment may14
% Baihan Lin, May 2017

clear all; close all;

load('may14.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/may14/impulse_spectogram/');
system(['mkdir ' path]);

%% -----acc0_05_14_20_27_54 acc1_05_14_20_27_54------

pathN=(strcat(path,'acc0_05_14_20_27_54','/'));
system(['mkdir ' pathN]);

size = length(acc0_05_14_20_27_54);
plane0 = var(acc0_05_14_20_27_54);
plane1 = var(acc1_05_14_20_27_54);
s_acc0_05_14_20_27_54=zeros(size,1);
s_acc1_05_14_20_27_54=zeros(size,1);

pulse0 = zeros(size,1);
pulse0(1:1000) = 1;
pulse1 = zeros(size,1);
pulse1(1:1000) = 1;

rate = 0.0003;
nwin = 100;
wind = kaiser(nwin,10);
nlap = nwin-10;
nfft = 100;
Fs = 1/rate;
frame = 1000;

for n = 1:size
    s_acc0_05_14_20_27_54(n) = acc0_05_14_20_27_54(n,:)*plane0.'/norm(plane0,2);
    s_acc1_05_14_20_27_54(n) = acc1_05_14_20_27_54(n,:)*plane1.'/norm(plane1,2);
end

figure(1)
plot(rate*[1:size],s_acc0_05_14_20_27_54);
title('calibrated signal for acc0\_05\_14\_20\_27\_54');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc0_05_14_20_27_54.png');
saveas(gcf, filename,'png');
close(figure(1));

figure(2)
plot(rate*[1:size],s_acc1_05_14_20_27_54);
title('calibrated signal for acc1\_05\_14\_20\_27\_54');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc1_05_14_20_27_54.png');
saveas(gcf, filename,'png');
close(figure(2));

for tp = frame+1:size-2*frame
    if ~pulse0(tp) && (s_acc0_05_14_20_27_54(tp) > 100)
        figure(3)
        spectrogram(s_acc0_05_14_20_27_54(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis')
        title(strcat('Impulse spectogram acc0\_05\_14\_20\_27\_54','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc0_05_14_20_27_54','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        close(figure(3));
        pulse0(tp:tp+frame*2) = 1;
    end
    if ~pulse1(tp) && (s_acc1_05_14_20_27_54(tp) > 100)
        figure(4)
        spectrogram(s_acc1_05_14_20_27_54(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis')
        title(strcat('Impulse spectogram acc1\_05\_14\_20\_27\_54','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc1_05_14_20_27_54','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        close(figure(4));
        pulse1(tp:tp+frame*2) = 1;
    end
end



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
