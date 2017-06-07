% impulse spectogram analysis.m for experiment may14 
% Baihan Lin, May 2017

clear all; close all;

load('may14.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/may14/impulse_spectogram/');
system(['mkdir ' path]);

%% -----acc0_05_14_20_27_54 acc1_05_14_20_27_54------
pathN=(strcat(path,'acc0_05_14_20_27_54','/'));
system(['mkdir ' pathN]);

set(0,'DefaultFigureVisible', 'off');

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

plot(rate*[1:size],s_acc0_05_14_20_27_54);
title('calibrated signal for acc0\_05\_14\_20\_27\_54');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc0_05_14_20_27_54.png');
saveas(gcf, filename,'png');
plot(rate*[1:size],s_acc1_05_14_20_27_54);
title('calibrated signal for acc1\_05\_14\_20\_27\_54');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc1_05_14_20_27_54.png');
saveas(gcf, filename,'png');
for tp = frame+1:size-2*frame
    if ~pulse0(tp) && (s_acc0_05_14_20_27_54(tp) > 100)
        spectrogram(s_acc0_05_14_20_27_54(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');
       title(strcat('Impulse spectogram acc0\_05\_14\_20\_27\_54','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc0_05_14_20_27_54','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        pulse0(tp:tp+frame*2) = 1;
    end
    if ~pulse1(tp) && (s_acc1_05_14_20_27_54(tp) > 100)
        spectrogram(s_acc1_05_14_20_27_54(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');
        title(strcat('Impulse spectogram acc1\_05\_14\_20\_27\_54','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc1_05_14_20_27_54','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        pulse1(tp:tp+frame*2) = 1;
    end
end


%% -----acc0_05_14_20_29_38 acc1_05_14_20_29_38------
pathN=(strcat(path,'acc0_05_14_20_29_38','/'));
system(['mkdir ' pathN]);

set(0,'DefaultFigureVisible', 'off');

size = length(acc0_05_14_20_29_38);
plane0 = var(acc0_05_14_20_29_38);
plane1 = var(acc1_05_14_20_29_38);
s_acc0_05_14_20_29_38=zeros(size,1);
s_acc1_05_14_20_29_38=zeros(size,1);

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
    s_acc0_05_14_20_29_38(n) = acc0_05_14_20_29_38(n,:)*plane0.'/norm(plane0,2);
    s_acc1_05_14_20_29_38(n) = acc1_05_14_20_29_38(n,:)*plane1.'/norm(plane1,2);
end

plot(rate*[1:size],s_acc0_05_14_20_29_38);
title('calibrated signal for acc0\_05\_14\_20\_29\_38');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc0_05_14_20_29_38.png');
saveas(gcf, filename,'png');
plot(rate*[1:size],s_acc1_05_14_20_29_38);
title('calibrated signal for acc1\_05\_14\_20\_29\_38');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc1_05_14_20_29_38.png');
saveas(gcf, filename,'png');
for tp = frame+1:size-2*frame
    if ~pulse0(tp) && (s_acc0_05_14_20_29_38(tp) > 100)
        spectrogram(s_acc0_05_14_20_29_38(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');
       title(strcat('Impulse spectogram acc0\_05\_14\_20\_29\_38','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc0_05_14_20_29_38','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        pulse0(tp:tp+frame*2) = 1;
    end
    if ~pulse1(tp) && (s_acc1_05_14_20_29_38(tp) > 100)
        spectrogram(s_acc1_05_14_20_29_38(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');
        title(strcat('Impulse spectogram acc1\_05\_14\_20\_29\_38','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc1_05_14_20_29_38','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        pulse1(tp:tp+frame*2) = 1;
    end
end


%% -----acc0_05_14_20_31_12 acc1_05_14_20_31_12------
pathN=(strcat(path,'acc0_05_14_20_31_12','/'));
system(['mkdir ' pathN]);

set(0,'DefaultFigureVisible', 'off');

size = length(acc0_05_14_20_31_12);
plane0 = var(acc0_05_14_20_31_12);
plane1 = var(acc1_05_14_20_31_12);
s_acc0_05_14_20_31_12=zeros(size,1);
s_acc1_05_14_20_31_12=zeros(size,1);

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
    s_acc0_05_14_20_31_12(n) = acc0_05_14_20_31_12(n,:)*plane0.'/norm(plane0,2);
    s_acc1_05_14_20_31_12(n) = acc1_05_14_20_31_12(n,:)*plane1.'/norm(plane1,2);
end

plot(rate*[1:size],s_acc0_05_14_20_31_12);
title('calibrated signal for acc0\_05\_14\_20\_31\_12');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc0_05_14_20_31_12.png');
saveas(gcf, filename,'png');
plot(rate*[1:size],s_acc1_05_14_20_31_12);
title('calibrated signal for acc1\_05\_14\_20\_31\_12');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc1_05_14_20_31_12.png');
saveas(gcf, filename,'png');
for tp = frame+1:size-2*frame
    if ~pulse0(tp) && (s_acc0_05_14_20_31_12(tp) > 100)
        spectrogram(s_acc0_05_14_20_31_12(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');
       title(strcat('Impulse spectogram acc0\_05\_14\_20\_31\_12','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc0_05_14_20_31_12','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        pulse0(tp:tp+frame*2) = 1;
    end
    if ~pulse1(tp) && (s_acc1_05_14_20_31_12(tp) > 100)
        spectrogram(s_acc1_05_14_20_31_12(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');
        title(strcat('Impulse spectogram acc1\_05\_14\_20\_31\_12','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc1_05_14_20_31_12','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        pulse1(tp:tp+frame*2) = 1;
    end
end


%% -----acc0_05_14_20_32_44 acc1_05_14_20_32_44------
pathN=(strcat(path,'acc0_05_14_20_32_44','/'));
system(['mkdir ' pathN]);

set(0,'DefaultFigureVisible', 'off');

size = length(acc0_05_14_20_32_44);
plane0 = var(acc0_05_14_20_32_44);
plane1 = var(acc1_05_14_20_32_44);
s_acc0_05_14_20_32_44=zeros(size,1);
s_acc1_05_14_20_32_44=zeros(size,1);

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
    s_acc0_05_14_20_32_44(n) = acc0_05_14_20_32_44(n,:)*plane0.'/norm(plane0,2);
    s_acc1_05_14_20_32_44(n) = acc1_05_14_20_32_44(n,:)*plane1.'/norm(plane1,2);
end

plot(rate*[1:size],s_acc0_05_14_20_32_44);
title('calibrated signal for acc0\_05\_14\_20\_32\_44');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc0_05_14_20_32_44.png');
saveas(gcf, filename,'png');
plot(rate*[1:size],s_acc1_05_14_20_32_44);
title('calibrated signal for acc1\_05\_14\_20\_32\_44');
xlabel('t(s)');
ylabel('signal');
filename = strcat(pathN, 'signal_acc1_05_14_20_32_44.png');
saveas(gcf, filename,'png');
for tp = frame+1:size-2*frame
    if ~pulse0(tp) && (s_acc0_05_14_20_32_44(tp) > 100)
        spectrogram(s_acc0_05_14_20_32_44(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');
       title(strcat('Impulse spectogram acc0\_05\_14\_20\_32\_44','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc0_05_14_20_32_44','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        pulse0(tp:tp+frame*2) = 1;
    end
    if ~pulse1(tp) && (s_acc1_05_14_20_32_44(tp) > 100)
        spectrogram(s_acc1_05_14_20_32_44(tp-frame:tp+frame*2),wind,nlap,nfft,Fs,'yaxis');
        title(strcat('Impulse spectogram acc1\_05\_14\_20\_32\_44','\_',int2str(tp)));
        filename = strcat(pathN, strcat('impspec_', 'acc1_05_14_20_32_44','_',int2str(tp),'.png'));
        saveas(gcf, filename,'png');
        pulse1(tp:tp+frame*2) = 1;
    end
end


