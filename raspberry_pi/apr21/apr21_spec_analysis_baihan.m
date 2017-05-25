% spectogram analysis.m for experiment apr21 
% Baihan Lin, Apr 2017

clear all; close all;

load('apr21.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/apr21/spectogram/');
system(['mkdir ' path]);

%% -----acc0_04_24_00_04_56 acc1_04_24_00_04_56------

size = length(acc0_04_24_00_04_56);

plane0 = var(acc0_04_24_00_04_56);

plane1 = var(acc1_04_24_00_04_56);

s_acc0_04_24_00_04_56=zeros(size,1);

s_acc1_04_24_00_04_56=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_04_56(n) = acc0_04_24_00_04_56(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_04_56(n) = acc1_04_24_00_04_56(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_04_56,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_04\_56');

filename = strcat(path, 'spec_acc0_04_24_00_04_56.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_04_56,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_04\_56');

filename = strcat(path, 'spec_acc1_04_24_00_04_56.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_04_56./s_acc1_04_24_00_04_56,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_04\_56');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_04_56.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_07_20 acc1_04_24_00_07_20------

size = length(acc0_04_24_00_07_20);

plane0 = var(acc0_04_24_00_07_20);

plane1 = var(acc1_04_24_00_07_20);

s_acc0_04_24_00_07_20=zeros(size,1);

s_acc1_04_24_00_07_20=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_07_20(n) = acc0_04_24_00_07_20(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_07_20(n) = acc1_04_24_00_07_20(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_07_20,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_07\_20');

filename = strcat(path, 'spec_acc0_04_24_00_07_20.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_07_20,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_07\_20');

filename = strcat(path, 'spec_acc1_04_24_00_07_20.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_07_20./s_acc1_04_24_00_07_20,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_07\_20');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_07_20.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_09_23 acc1_04_24_00_09_23------

size = length(acc0_04_24_00_09_23);

plane0 = var(acc0_04_24_00_09_23);

plane1 = var(acc1_04_24_00_09_23);

s_acc0_04_24_00_09_23=zeros(size,1);

s_acc1_04_24_00_09_23=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_09_23(n) = acc0_04_24_00_09_23(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_09_23(n) = acc1_04_24_00_09_23(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_09_23,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_09\_23');

filename = strcat(path, 'spec_acc0_04_24_00_09_23.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_09_23,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_09\_23');

filename = strcat(path, 'spec_acc1_04_24_00_09_23.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_09_23./s_acc1_04_24_00_09_23,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_09\_23');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_09_23.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_11_14 acc1_04_24_00_11_14------

size = length(acc0_04_24_00_11_14);

plane0 = var(acc0_04_24_00_11_14);

plane1 = var(acc1_04_24_00_11_14);

s_acc0_04_24_00_11_14=zeros(size,1);

s_acc1_04_24_00_11_14=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_11_14(n) = acc0_04_24_00_11_14(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_11_14(n) = acc1_04_24_00_11_14(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_11_14,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_11\_14');

filename = strcat(path, 'spec_acc0_04_24_00_11_14.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_11_14,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_11\_14');

filename = strcat(path, 'spec_acc1_04_24_00_11_14.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_11_14./s_acc1_04_24_00_11_14,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_11\_14');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_11_14.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_13_16 acc1_04_24_00_13_16------

size = length(acc0_04_24_00_13_16);

plane0 = var(acc0_04_24_00_13_16);

plane1 = var(acc1_04_24_00_13_16);

s_acc0_04_24_00_13_16=zeros(size,1);

s_acc1_04_24_00_13_16=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_13_16(n) = acc0_04_24_00_13_16(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_13_16(n) = acc1_04_24_00_13_16(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_13_16,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_13\_16');

filename = strcat(path, 'spec_acc0_04_24_00_13_16.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_13_16,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_13\_16');

filename = strcat(path, 'spec_acc1_04_24_00_13_16.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_13_16./s_acc1_04_24_00_13_16,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_13\_16');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_13_16.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_15_16 acc1_04_24_00_15_16------

size = length(acc0_04_24_00_15_16);

plane0 = var(acc0_04_24_00_15_16);

plane1 = var(acc1_04_24_00_15_16);

s_acc0_04_24_00_15_16=zeros(size,1);

s_acc1_04_24_00_15_16=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_15_16(n) = acc0_04_24_00_15_16(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_15_16(n) = acc1_04_24_00_15_16(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_15_16,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_15\_16');

filename = strcat(path, 'spec_acc0_04_24_00_15_16.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_15_16,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_15\_16');

filename = strcat(path, 'spec_acc1_04_24_00_15_16.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_15_16./s_acc1_04_24_00_15_16,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_15\_16');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_15_16.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_16_51 acc1_04_24_00_16_51------

size = length(acc0_04_24_00_16_51);

plane0 = var(acc0_04_24_00_16_51);

plane1 = var(acc1_04_24_00_16_51);

s_acc0_04_24_00_16_51=zeros(size,1);

s_acc1_04_24_00_16_51=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_16_51(n) = acc0_04_24_00_16_51(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_16_51(n) = acc1_04_24_00_16_51(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_16_51,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_16\_51');

filename = strcat(path, 'spec_acc0_04_24_00_16_51.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_16_51,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_16\_51');

filename = strcat(path, 'spec_acc1_04_24_00_16_51.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_16_51./s_acc1_04_24_00_16_51,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_16\_51');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_16_51.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_25_36 acc1_04_24_00_25_36------

size = length(acc0_04_24_00_25_36);

plane0 = var(acc0_04_24_00_25_36);

plane1 = var(acc1_04_24_00_25_36);

s_acc0_04_24_00_25_36=zeros(size,1);

s_acc1_04_24_00_25_36=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_25_36(n) = acc0_04_24_00_25_36(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_25_36(n) = acc1_04_24_00_25_36(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_25_36,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_25\_36');

filename = strcat(path, 'spec_acc0_04_24_00_25_36.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_25_36,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_25\_36');

filename = strcat(path, 'spec_acc1_04_24_00_25_36.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_25_36./s_acc1_04_24_00_25_36,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_25\_36');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_25_36.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_27_10 acc1_04_24_00_27_10------

size = length(acc0_04_24_00_27_10);

plane0 = var(acc0_04_24_00_27_10);

plane1 = var(acc1_04_24_00_27_10);

s_acc0_04_24_00_27_10=zeros(size,1);

s_acc1_04_24_00_27_10=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_27_10(n) = acc0_04_24_00_27_10(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_27_10(n) = acc1_04_24_00_27_10(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_27_10,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_27\_10');

filename = strcat(path, 'spec_acc0_04_24_00_27_10.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_27_10,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_27\_10');

filename = strcat(path, 'spec_acc1_04_24_00_27_10.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_27_10./s_acc1_04_24_00_27_10,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_27\_10');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_27_10.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_28_50 acc1_04_24_00_28_50------

size = length(acc0_04_24_00_28_50);

plane0 = var(acc0_04_24_00_28_50);

plane1 = var(acc1_04_24_00_28_50);

s_acc0_04_24_00_28_50=zeros(size,1);

s_acc1_04_24_00_28_50=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_28_50(n) = acc0_04_24_00_28_50(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_28_50(n) = acc1_04_24_00_28_50(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_28_50,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_28\_50');

filename = strcat(path, 'spec_acc0_04_24_00_28_50.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_28_50,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_28\_50');

filename = strcat(path, 'spec_acc1_04_24_00_28_50.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_28_50./s_acc1_04_24_00_28_50,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_28\_50');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_28_50.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_32_31 acc1_04_24_00_32_31------

size = length(acc0_04_24_00_32_31);

plane0 = var(acc0_04_24_00_32_31);

plane1 = var(acc1_04_24_00_32_31);

s_acc0_04_24_00_32_31=zeros(size,1);

s_acc1_04_24_00_32_31=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_32_31(n) = acc0_04_24_00_32_31(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_32_31(n) = acc1_04_24_00_32_31(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_32_31,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_32\_31');

filename = strcat(path, 'spec_acc0_04_24_00_32_31.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_32_31,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_32\_31');

filename = strcat(path, 'spec_acc1_04_24_00_32_31.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_32_31./s_acc1_04_24_00_32_31,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_32\_31');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_32_31.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_34_11 acc1_04_24_00_34_11------

size = length(acc0_04_24_00_34_11);

plane0 = var(acc0_04_24_00_34_11);

plane1 = var(acc1_04_24_00_34_11);

s_acc0_04_24_00_34_11=zeros(size,1);

s_acc1_04_24_00_34_11=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_34_11(n) = acc0_04_24_00_34_11(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_34_11(n) = acc1_04_24_00_34_11(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_34_11,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_34\_11');

filename = strcat(path, 'spec_acc0_04_24_00_34_11.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_34_11,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_34\_11');

filename = strcat(path, 'spec_acc1_04_24_00_34_11.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_34_11./s_acc1_04_24_00_34_11,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_34\_11');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_34_11.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_35_57 acc1_04_24_00_35_57------

size = length(acc0_04_24_00_35_57);

plane0 = var(acc0_04_24_00_35_57);

plane1 = var(acc1_04_24_00_35_57);

s_acc0_04_24_00_35_57=zeros(size,1);

s_acc1_04_24_00_35_57=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_35_57(n) = acc0_04_24_00_35_57(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_35_57(n) = acc1_04_24_00_35_57(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_35_57,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_35\_57');

filename = strcat(path, 'spec_acc0_04_24_00_35_57.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_35_57,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_35\_57');

filename = strcat(path, 'spec_acc1_04_24_00_35_57.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_35_57./s_acc1_04_24_00_35_57,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_35\_57');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_35_57.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_41_09 acc1_04_24_00_41_09------

size = length(acc0_04_24_00_41_09);

plane0 = var(acc0_04_24_00_41_09);

plane1 = var(acc1_04_24_00_41_09);

s_acc0_04_24_00_41_09=zeros(size,1);

s_acc1_04_24_00_41_09=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_41_09(n) = acc0_04_24_00_41_09(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_41_09(n) = acc1_04_24_00_41_09(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_41_09,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_41\_09');

filename = strcat(path, 'spec_acc0_04_24_00_41_09.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_41_09,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_41\_09');

filename = strcat(path, 'spec_acc1_04_24_00_41_09.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_41_09./s_acc1_04_24_00_41_09,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_41\_09');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_41_09.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_43_52 acc1_04_24_00_43_52------

size = length(acc0_04_24_00_43_52);

plane0 = var(acc0_04_24_00_43_52);

plane1 = var(acc1_04_24_00_43_52);

s_acc0_04_24_00_43_52=zeros(size,1);

s_acc1_04_24_00_43_52=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_43_52(n) = acc0_04_24_00_43_52(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_43_52(n) = acc1_04_24_00_43_52(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_43_52,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_43\_52');

filename = strcat(path, 'spec_acc0_04_24_00_43_52.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_43_52,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_43\_52');

filename = strcat(path, 'spec_acc1_04_24_00_43_52.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_43_52./s_acc1_04_24_00_43_52,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_43\_52');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_43_52.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_48_49 acc1_04_24_00_48_49------

size = length(acc0_04_24_00_48_49);

plane0 = var(acc0_04_24_00_48_49);

plane1 = var(acc1_04_24_00_48_49);

s_acc0_04_24_00_48_49=zeros(size,1);

s_acc1_04_24_00_48_49=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_48_49(n) = acc0_04_24_00_48_49(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_48_49(n) = acc1_04_24_00_48_49(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_48_49,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_48\_49');

filename = strcat(path, 'spec_acc0_04_24_00_48_49.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_48_49,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_48\_49');

filename = strcat(path, 'spec_acc1_04_24_00_48_49.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_48_49./s_acc1_04_24_00_48_49,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_48\_49');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_48_49.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_50_59 acc1_04_24_00_50_59------

size = length(acc0_04_24_00_50_59);

plane0 = var(acc0_04_24_00_50_59);

plane1 = var(acc1_04_24_00_50_59);

s_acc0_04_24_00_50_59=zeros(size,1);

s_acc1_04_24_00_50_59=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_50_59(n) = acc0_04_24_00_50_59(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_50_59(n) = acc1_04_24_00_50_59(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_50_59,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_50\_59');

filename = strcat(path, 'spec_acc0_04_24_00_50_59.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_50_59,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_50\_59');

filename = strcat(path, 'spec_acc1_04_24_00_50_59.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_50_59./s_acc1_04_24_00_50_59,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_50\_59');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_50_59.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_52_26 acc1_04_24_00_52_26------

size = length(acc0_04_24_00_52_26);

plane0 = var(acc0_04_24_00_52_26);

plane1 = var(acc1_04_24_00_52_26);

s_acc0_04_24_00_52_26=zeros(size,1);

s_acc1_04_24_00_52_26=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_52_26(n) = acc0_04_24_00_52_26(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_52_26(n) = acc1_04_24_00_52_26(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_52_26,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_52\_26');

filename = strcat(path, 'spec_acc0_04_24_00_52_26.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_52_26,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_52\_26');

filename = strcat(path, 'spec_acc1_04_24_00_52_26.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_52_26./s_acc1_04_24_00_52_26,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_52\_26');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_52_26.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_54_06 acc1_04_24_00_54_06------

size = length(acc0_04_24_00_54_06);

plane0 = var(acc0_04_24_00_54_06);

plane1 = var(acc1_04_24_00_54_06);

s_acc0_04_24_00_54_06=zeros(size,1);

s_acc1_04_24_00_54_06=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_54_06(n) = acc0_04_24_00_54_06(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_54_06(n) = acc1_04_24_00_54_06(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_54_06,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_54\_06');

filename = strcat(path, 'spec_acc0_04_24_00_54_06.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_54_06,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_54\_06');

filename = strcat(path, 'spec_acc1_04_24_00_54_06.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_54_06./s_acc1_04_24_00_54_06,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_54\_06');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_54_06.png');

saveas(gcf, filename,'png');

close(figure(3));

%% -----acc0_04_24_00_55_42 acc1_04_24_00_55_42------

size = length(acc0_04_24_00_55_42);

plane0 = var(acc0_04_24_00_55_42);

plane1 = var(acc1_04_24_00_55_42);

s_acc0_04_24_00_55_42=zeros(size,1);

s_acc1_04_24_00_55_42=zeros(size,1);


parfor n = 1:size

s_acc0_04_24_00_55_42(n) = acc0_04_24_00_55_42(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_24_00_55_42(n) = acc1_04_24_00_55_42(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_24_00_55_42,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_24\_00\_55\_42');

filename = strcat(path, 'spec_acc0_04_24_00_55_42.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_24_00_55_42,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_24\_00\_55\_42');

filename = strcat(path, 'spec_acc1_04_24_00_55_42.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_24_00_55_42./s_acc1_04_24_00_55_42,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_24\_00\_55\_42');

filename = strcat(path, 'spec_ratio_acc0acc1_04_24_00_55_42.png');

saveas(gcf, filename,'png');

close(figure(3));

