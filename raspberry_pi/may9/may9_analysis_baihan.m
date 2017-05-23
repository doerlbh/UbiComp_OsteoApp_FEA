% impact analysis.m for experiment may9 
% Baihan Lin, Apr 2017

clear all; close all;

load('may9.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/may9/out/');
system(['mkdir ' path]);

%% -----acc0_05_09_22_05_16 acc1_05_09_22_05_16------

time = 70;
n_acc0_05_09_22_05_16 = max(acc0_05_09_22_05_16.');
n_acc1_05_09_22_05_16 = max(acc1_05_09_22_05_16.');

n = int64(length(acc0_05_09_22_05_16));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_09_22_05_16)-n
s=sum(n_acc0_05_09_22_05_16(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_09_22_05_16(maxindex:maxindex+n-1)./n_acc1_05_09_22_05_16(maxindex:maxindex+n-1);
p10 = n_acc1_05_09_22_05_16(maxindex:maxindex+n-1)./n_acc0_05_09_22_05_16(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_09\_22\_05\_16');
filename = strcat(path, 'pacc0acc1_05_09_22_05_16.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_09\_22\_05\_16');
filename = strcat(path, 'pacc1acc0_05_09_22_05_16.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_09_22_05_16(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_09_22_05_16(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_09_22_05_16(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_09\_22\_05\_16');
filename = strcat(path, 'acc0_05_09_22_05_16.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_09_22_05_16(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_09_22_05_16(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_09_22_05_16(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_09\_22\_05\_16');
filename = strcat(path, 'acc1_05_09_22_05_16.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

