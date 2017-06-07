% time delay analysis with FFT and least Sq. may30
% Baihan Lin, June 2017

clear all; close all;

path='/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/audio_time_delay/may30/';

[y,fs] = audioread(strcat(path,'DR0000_0017.wav'));

figure(1);
dt = 1/fs;
t = 0:dt:(length(y)*dt)-dt;
subplot(2,2,1); plot(t,y(:,1)); xlabel('Seconds'); ylabel('Amplitude');title('ch1');
subplot(2,2,2); plot(t,y(:,2)); xlabel('Seconds'); ylabel('Amplitude');title('ch2');
subplot(2,2,3); plot(t,fft(y(:,1))); xlabel('Seconds'); ylabel('Amplitude');title('ch1-fft');
subplot(2,2,4); plot(t,fft(y(:,2))); xlabel('Seconds'); ylabel('Amplitude');title('ch2-fft');




