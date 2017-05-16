% impact analysis.m for experiment vib0514 
% Baihan Lin, Apr 2017

clear all; close all;

load('vib0514.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/vib0514/out/');
system(['mkdir ' path]);

%% -----acc0_05_14_22_07_27 acc1_05_14_22_07_27------

time = 70;
n_acc0_05_14_22_07_27 = max(acc0_05_14_22_07_27.');
n_acc1_05_14_22_07_27 = max(acc1_05_14_22_07_27.');

n = int64(length(acc0_05_14_22_07_27));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_14_22_07_27)-n
s=sum(n_acc0_05_14_22_07_27(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_14_22_07_27(maxindex:maxindex+n-1)./n_acc1_05_14_22_07_27(maxindex:maxindex+n-1);
p10 = n_acc1_05_14_22_07_27(maxindex:maxindex+n-1)./n_acc0_05_14_22_07_27(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_14\_22\_07\_27');
filename = strcat(path, 'pacc0acc1_05_14_22_07_27.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_14\_22\_07\_27');
filename = strcat(path, 'pacc1acc0_05_14_22_07_27.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_14_22_07_27(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_14_22_07_27(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_14_22_07_27(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_14\_22\_07\_27');
filename = strcat(path, 'acc0_05_14_22_07_27.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_14_22_07_27(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_14_22_07_27(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_14_22_07_27(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_14\_22\_07\_27');
filename = strcat(path, 'acc1_05_14_22_07_27.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_05_14_22_08_10 acc1_05_14_22_08_10------

time = 70;
n_acc0_05_14_22_08_10 = max(acc0_05_14_22_08_10.');
n_acc1_05_14_22_08_10 = max(acc1_05_14_22_08_10.');

n = int64(length(acc0_05_14_22_08_10));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_14_22_08_10)-n
s=sum(n_acc0_05_14_22_08_10(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_14_22_08_10(maxindex:maxindex+n-1)./n_acc1_05_14_22_08_10(maxindex:maxindex+n-1);
p10 = n_acc1_05_14_22_08_10(maxindex:maxindex+n-1)./n_acc0_05_14_22_08_10(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_14\_22\_08\_10');
filename = strcat(path, 'pacc0acc1_05_14_22_08_10.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_14\_22\_08\_10');
filename = strcat(path, 'pacc1acc0_05_14_22_08_10.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_14_22_08_10(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_14_22_08_10(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_14_22_08_10(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_14\_22\_08\_10');
filename = strcat(path, 'acc0_05_14_22_08_10.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_14_22_08_10(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_14_22_08_10(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_14_22_08_10(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_14\_22\_08\_10');
filename = strcat(path, 'acc1_05_14_22_08_10.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_05_14_22_08_27 acc1_05_14_22_08_27------

time = 70;
n_acc0_05_14_22_08_27 = max(acc0_05_14_22_08_27.');
n_acc1_05_14_22_08_27 = max(acc1_05_14_22_08_27.');

n = int64(length(acc0_05_14_22_08_27));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_14_22_08_27)-n
s=sum(n_acc0_05_14_22_08_27(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_14_22_08_27(maxindex:maxindex+n-1)./n_acc1_05_14_22_08_27(maxindex:maxindex+n-1);
p10 = n_acc1_05_14_22_08_27(maxindex:maxindex+n-1)./n_acc0_05_14_22_08_27(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_14\_22\_08\_27');
filename = strcat(path, 'pacc0acc1_05_14_22_08_27.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_14\_22\_08\_27');
filename = strcat(path, 'pacc1acc0_05_14_22_08_27.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_14_22_08_27(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_14_22_08_27(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_14_22_08_27(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_14\_22\_08\_27');
filename = strcat(path, 'acc0_05_14_22_08_27.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_14_22_08_27(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_14_22_08_27(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_14_22_08_27(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_14\_22\_08\_27');
filename = strcat(path, 'acc1_05_14_22_08_27.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_05_14_22_08_52 acc1_05_14_22_08_52------

time = 70;
n_acc0_05_14_22_08_52 = max(acc0_05_14_22_08_52.');
n_acc1_05_14_22_08_52 = max(acc1_05_14_22_08_52.');

n = int64(length(acc0_05_14_22_08_52));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_14_22_08_52)-n
s=sum(n_acc0_05_14_22_08_52(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_14_22_08_52(maxindex:maxindex+n-1)./n_acc1_05_14_22_08_52(maxindex:maxindex+n-1);
p10 = n_acc1_05_14_22_08_52(maxindex:maxindex+n-1)./n_acc0_05_14_22_08_52(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_14\_22\_08\_52');
filename = strcat(path, 'pacc0acc1_05_14_22_08_52.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_14\_22\_08\_52');
filename = strcat(path, 'pacc1acc0_05_14_22_08_52.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_14_22_08_52(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_14_22_08_52(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_14_22_08_52(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_14\_22\_08\_52');
filename = strcat(path, 'acc0_05_14_22_08_52.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_14_22_08_52(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_14_22_08_52(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_14_22_08_52(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_14\_22\_08\_52');
filename = strcat(path, 'acc1_05_14_22_08_52.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

