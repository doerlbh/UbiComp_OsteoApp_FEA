% spectogram analysis.m for experiment apr18 
% Baihan Lin, Apr 2017

clear all; close all;

load('apr18.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/apr18/spectogram/');
system(['mkdir ' path]);

%% -----acc0_04_18_21_46_06 acc1_04_18_21_46_06------

size = length(acc0_04_18_21_46_06);

plane0 = var(acc0_04_18_21_46_06);

plane1 = var(acc1_04_18_21_46_06);

s_acc0_04_18_21_46_06=zeros(size,1);

s_acc1_04_18_21_46_06=zeros(size,1);


parfor n = 1:size

s_acc0_04_18_21_46_06(n) = acc0_04_18_21_46_06(n,:)*plane0.'/norm(plane0,2);

s_acc1_04_18_21_46_06(n) = acc1_04_18_21_46_06(n,:)*plane1.'/norm(plane1,2);

end


nwin = 100;

wind = kaiser(nwin,10);

nlap = nwin-10;

nfft = 1024;

Fs = 1/0.0003;


figure(1)

spectrogram(s_acc0_04_18_21_46_06,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc0\_04\_18\_21\_46\_06');

filename = strcat(path, 'spec_acc0_04_18_21_46_06.png');

saveas(gcf, filename,'png');

close(figure(1));


figure(2)

spectrogram(s_acc1_04_18_21_46_06,wind,nlap,nfft,Fs,'yaxis')

title('Spectogram acc1\_04\_18\_21\_46\_06');

filename = strcat(path, 'spec_acc1_04_18_21_46_06.png');

saveas(gcf, filename,'png');

close(figure(2));

figure(3)

spectrogram(s_acc0_04_18_21_46_06./s_acc1_04_18_21_46_06,wind,nlap,nfft,Fs,'yaxis')

title('Ratio Spectogram acc0acc1\_04\_18\_21\_46\_06');

filename = strcat(path, 'spec_ratio_acc0acc1_04_18_21_46_06.png');

saveas(gcf, filename,'png');

close(figure(3));

