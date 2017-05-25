% spectogram analysis.m for experiment may14 
% Baihan Lin, Apr 2017

clear all; close all;

load('may14.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/may14/spectogram/');
system(['mkdir ' path]);

%% -----acc0_05_14_20_27_54 acc1_05_14_20_27_54------

size = length(acc0_05_14_20_27_54);

plane0 = var(acc0_05_14_20_27_54);

plane1 = var(acc1_05_14_20_27_54);

s_acc0_05_14_20_27_54=zeros(size,1);

s_acc1_05_14_20_27_54=zeros(size,1);


for n = 1:size

s_acc0_05_14_20_27_54(n) = acc0_05_14_20_27_54(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_14_20_27_54(n) = acc1_05_14_20_27_54(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_14_20_27_54,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram\_04\_24\_00\_04\_56');

filename = strcat(path, 'Spectogram_04_24_00_04_56.png');

saveas(gcf, filename,'png');

close(figure(1));

%% -----acc0_05_14_20_29_38 acc1_05_14_20_29_38------

size = length(acc0_05_14_20_29_38);

plane0 = var(acc0_05_14_20_29_38);

plane1 = var(acc1_05_14_20_29_38);

s_acc0_05_14_20_29_38=zeros(size,1);

s_acc1_05_14_20_29_38=zeros(size,1);


for n = 1:size

s_acc0_05_14_20_29_38(n) = acc0_05_14_20_29_38(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_14_20_29_38(n) = acc1_05_14_20_29_38(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_14_20_29_38,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram\_04\_24\_00\_04\_56');

filename = strcat(path, 'Spectogram_04_24_00_04_56.png');

saveas(gcf, filename,'png');

close(figure(1));

%% -----acc0_05_14_20_31_12 acc1_05_14_20_31_12------

size = length(acc0_05_14_20_31_12);

plane0 = var(acc0_05_14_20_31_12);

plane1 = var(acc1_05_14_20_31_12);

s_acc0_05_14_20_31_12=zeros(size,1);

s_acc1_05_14_20_31_12=zeros(size,1);


for n = 1:size

s_acc0_05_14_20_31_12(n) = acc0_05_14_20_31_12(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_14_20_31_12(n) = acc1_05_14_20_31_12(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_14_20_31_12,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram\_04\_24\_00\_04\_56');

filename = strcat(path, 'Spectogram_04_24_00_04_56.png');

saveas(gcf, filename,'png');

close(figure(1));

%% -----acc0_05_14_20_32_44 acc1_05_14_20_32_44------

size = length(acc0_05_14_20_32_44);

plane0 = var(acc0_05_14_20_32_44);

plane1 = var(acc1_05_14_20_32_44);

s_acc0_05_14_20_32_44=zeros(size,1);

s_acc1_05_14_20_32_44=zeros(size,1);


for n = 1:size

s_acc0_05_14_20_32_44(n) = acc0_05_14_20_32_44(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_14_20_32_44(n) = acc1_05_14_20_32_44(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_14_20_32_44,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram\_04\_24\_00\_04\_56');

filename = strcat(path, 'Spectogram_04_24_00_04_56.png');

saveas(gcf, filename,'png');

close(figure(1));

