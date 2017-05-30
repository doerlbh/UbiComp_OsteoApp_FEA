% spectogram analysis.m for experiment may14
% Baihan Lin, May 2017

clear all; close all;

load('may14.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/may14/spectogram/');
system(['mkdir ' path]);

%% -----acc0_05_14_20_27_54 acc1_05_14_20_27_54------

pathN=(strcat('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/may14/spectogram/','acc0_05_14_20_27_54 acc1_05_14_20_27_54'));
system(['mkdir ' pathN]);

size = length(acc0_05_14_20_27_54);
plane0 = var(acc0_05_14_20_27_54);
plane1 = var(acc1_05_14_20_27_54);
s_acc0_05_14_20_27_54=zeros(size,1);
s_acc1_05_14_20_27_54=zeros(size,1);

pulse = zeros(size,1);
pulse(1:1000) = 1;
rate = 0.0003;
nwin = 1000;
wind = kaiser(nwin,10);
nlap = nwin-10;
nfft = 1024;
Fs = 1/rate;
frame = 1000;

for n = 1:size
    s_acc0_05_14_20_27_54(n) = acc0_05_14_20_27_54(n,:)*plane0.'/norm(plane0,2);
    s_acc1_05_14_20_27_54(n) = acc1_05_14_20_27_54(n,:)*plane1.'/norm(plane1,2);
end

figure(1)
plot(rate*[1:size],s_acc0_05_14_20_27_54);
title('Spectogram acc0\_05\_14\_20\_27\_54');
xlabel('t(s)');
ylabel('signal');

for tp = frame+1:size-2*frame
    if ~pulse(tp) && (s_acc0_05_14_20_27_54(tp) > 100)
        figure(2)
        spectrogram(s_acc0_05_14_20_27_54(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis')
        title(strcat('Spectogram acc0\_05\_14\_20\_27\_54',int2str(tp)));
        pulse(tp:tp+frame*2) = 1;
    end
end

% figure(2)
% spectrogram(s_acc0_05_14_20_27_54,wind,nlap,nfft,Fs,'yaxis')
% title('Spectogram acc0\_05\_14\_20\_27\_54');
% filename = strcat(pathN, 'spec_acc0_05_14_20_27_54.png');
% saveas(gcf, filename,'png');
% close(figure(1));

% figure(2)
% spectrogram(s_acc1_05_14_20_27_54,wind,nlap,nfft,Fs,'yaxis')
% title('Spectogram acc1\_05\_14\_20\_27\_54');
% % filename = strcat(pathN, 'spec_acc1_05_14_20_27_54.png');
% % saveas(gcf, filename,'png');
% % close(figure(2));
%
% figure(3)
% spectrogram(s_acc0_05_14_20_27_54./s_acc1_05_14_20_27_54,wind,nlap,nfft,Fs,'yaxis')
% title('Ratio Spectogram acc0acc1\_05\_14\_20\_27\_54');
% % filename = strcat(pathN, 'spec_ratio_acc0acc1_05_14_20_27_54.png');
% % saveas(gcf, filename,'png');
% % close(figure(3));
%