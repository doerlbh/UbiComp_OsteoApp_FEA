% spectogram analysis.m for experiment may9 
% Baihan Lin, Apr 2017

clear all; close all;

load('may9.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/may9/spectogram/');
system(['mkdir ' path]);

%% -----acc0_05_09_22_05_16 acc1_05_09_22_05_16------

size = length(acc0_05_09_22_05_16);

plane0 = var(acc0_05_09_22_05_16);

plane1 = var(acc1_05_09_22_05_16);

s_acc0_05_09_22_05_16=zeros(size,1);

s_acc1_05_09_22_05_16=zeros(size,1);


parfor n = 1:size

s_acc0_05_09_22_05_16(n) = acc0_05_09_22_05_16(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_09_22_05_16(n) = acc1_05_09_22_05_16(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_09_22_05_16,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_05\_09\_22\_05\_16');

filename = strcat(path, 'spec_acc0_05_09_22_05_16.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_05_09_22_05_16,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_05\_09\_22\_05\_16');

filename = strcat(path, 'spec_acc1_05_09_22_05_16.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_05_09_22_05_16./s_acc1_05_09_22_05_16,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_05\_09\_22\_05\_16');

filename = strcat(path, 'spec_ratio_acc0acc1_05_09_22_05_16.png');

saveas(gcf, filename,'png');

close(figure(3));

