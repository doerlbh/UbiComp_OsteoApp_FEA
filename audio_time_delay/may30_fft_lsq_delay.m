% time delay analysis with FFT and least Sq. may30
% Baihan Lin, June 2017

clear all; close all;

path='/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/audio_time_delay/may30/';
pathG='/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/audio_time_delay/';

[y,fs] = audioread(strcat(path,'DR0000_0015.wav'));

ch1 = y(:,1);
ch2 = y(:,2);
ch1_fft = real(fft(y(:,1)));
ch2_fft = real(fft(y(:,2)));
save(strcat(pathG,'data1'));

dt = 1/fs;
t = 0:dt:(length(y)*dt)-dt;

%%

figure(1);

subplot(2,2,1);
plot(t,ch1);
xlabel('Seconds');
ylabel('Amplitude');
title('ch1');

subplot(2,2,2);
plot(t,ch2);
xlabel('Seconds');
ylabel('Amplitude');
title('ch2');

subplot(2,2,3);
plot(t,ch1_fft);
xlabel('Seconds');
ylabel('Amplitude');
title('ch1-fft');

subplot(2,2,4);
plot(t,ch2_fft);
xlabel('Seconds');
ylabel('Amplitude');
title('ch2-fft');

%% fminsearch method

c0 = 0;
cr = fminsearch('eFlsq1', c0)

%% iterative method

min = 10000000;
td = 0;

for c = 0:100
    
    err = 0.0;
    for j = 100 : length(ch1)-100;
        err = err + (ch1_fft(j+round(c)) - ch2_fft(j))^2;
    end
    err
    if err < min
        min = err;
        td = c;
    end
    
end
td