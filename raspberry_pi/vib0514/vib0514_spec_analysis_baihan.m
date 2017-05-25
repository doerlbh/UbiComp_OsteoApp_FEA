% spectogram analysis.m for experiment vib0514 
% Baihan Lin, Apr 2017

clear all; close all;

load('vib0514.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/vib0514/spectogram/');
system(['mkdir ' path]);

%% -----acc0_05_14_22_07_27 acc1_05_14_22_07_27------

size = length(acc0_05_14_22_07_27);

plane0 = var(acc0_05_14_22_07_27);

plane1 = var(acc1_05_14_22_07_27);

s_acc0_05_14_22_07_27=zeros(size,1);

s_acc1_05_14_22_07_27=zeros(size,1);


parfor n = 1:size

s_acc0_05_14_22_07_27(n) = acc0_05_14_22_07_27(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_14_22_07_27(n) = acc1_05_14_22_07_27(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_14_22_07_27,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_05\_14\_22\_07\_27');

filename = strcat(path, 'spec_acc0_05_14_22_07_27.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_05_14_22_07_27,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_05\_14\_22\_07\_27');

filename = strcat(path, 'spec_acc1_05_14_22_07_27.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_05_14_22_07_27./s_acc1_05_14_22_07_27,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_05\_14\_22\_07\_27');

filename = strcat(path, 'spec_ratio_acc0acc1_05_14_22_07_27.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_05_14_22_08_10 acc1_05_14_22_08_10------

size = length(acc0_05_14_22_08_10);

plane0 = var(acc0_05_14_22_08_10);

plane1 = var(acc1_05_14_22_08_10);

s_acc0_05_14_22_08_10=zeros(size,1);

s_acc1_05_14_22_08_10=zeros(size,1);


parfor n = 1:size

s_acc0_05_14_22_08_10(n) = acc0_05_14_22_08_10(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_14_22_08_10(n) = acc1_05_14_22_08_10(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_14_22_08_10,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_05\_14\_22\_08\_10');

filename = strcat(path, 'spec_acc0_05_14_22_08_10.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_05_14_22_08_10,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_05\_14\_22\_08\_10');

filename = strcat(path, 'spec_acc1_05_14_22_08_10.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_05_14_22_08_10./s_acc1_05_14_22_08_10,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_05\_14\_22\_08\_10');

filename = strcat(path, 'spec_ratio_acc0acc1_05_14_22_08_10.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_05_14_22_08_27 acc1_05_14_22_08_27------

size = length(acc0_05_14_22_08_27);

plane0 = var(acc0_05_14_22_08_27);

plane1 = var(acc1_05_14_22_08_27);

s_acc0_05_14_22_08_27=zeros(size,1);

s_acc1_05_14_22_08_27=zeros(size,1);


parfor n = 1:size

s_acc0_05_14_22_08_27(n) = acc0_05_14_22_08_27(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_14_22_08_27(n) = acc1_05_14_22_08_27(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_14_22_08_27,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_05\_14\_22\_08\_27');

filename = strcat(path, 'spec_acc0_05_14_22_08_27.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_05_14_22_08_27,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_05\_14\_22\_08\_27');

filename = strcat(path, 'spec_acc1_05_14_22_08_27.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_05_14_22_08_27./s_acc1_05_14_22_08_27,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_05\_14\_22\_08\_27');

filename = strcat(path, 'spec_ratio_acc0acc1_05_14_22_08_27.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_05_14_22_08_52 acc1_05_14_22_08_52------

size = length(acc0_05_14_22_08_52);

plane0 = var(acc0_05_14_22_08_52);

plane1 = var(acc1_05_14_22_08_52);

s_acc0_05_14_22_08_52=zeros(size,1);

s_acc1_05_14_22_08_52=zeros(size,1);


parfor n = 1:size

s_acc0_05_14_22_08_52(n) = acc0_05_14_22_08_52(n,:)*plane0.'/norm(plane0,2);

s_acc1_05_14_22_08_52(n) = acc1_05_14_22_08_52(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_05_14_22_08_52,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_05\_14\_22\_08\_52');

filename = strcat(path, 'spec_acc0_05_14_22_08_52.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_05_14_22_08_52,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_05\_14\_22\_08\_52');

filename = strcat(path, 'spec_acc1_05_14_22_08_52.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_05_14_22_08_52./s_acc1_05_14_22_08_52,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_05\_14\_22\_08\_52');

filename = strcat(path, 'spec_ratio_acc0acc1_05_14_22_08_52.png');

saveas(gcf, filename,'png');

close(figure(3));

