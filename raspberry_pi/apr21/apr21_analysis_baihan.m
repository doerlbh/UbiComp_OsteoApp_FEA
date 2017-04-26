% analysis.m for experiment apr21 
% Baihan Lin, Apr 2017

clear all; close all;

load('apr21.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/osteoapp/apr21/out/');
system(['mkdir ' path]);

%% -----acc0_04_24_00_04_56 acc1_04_24_00_04_56------

n_acc0_04_24_00_04_56 = max(acc0_04_24_00_04_56.');
n_acc1_04_24_00_04_56 = max(acc1_04_24_00_04_56.');

n = int64(length(acc0_04_24_00_04_56) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_04_56)-n
s=sum(n_acc0_04_24_00_04_56(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_04_56(maxindex:maxindex+n-1)./n_acc1_04_24_00_04_56(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_04_56(maxindex:maxindex+n-1)./n_acc0_04_24_00_04_56(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_04\_56');
filename = strcat(path, 'pacc0acc1_04_24_00_04_56.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_04\_56');
filename = strcat(path, 'pacc1acc0_04_24_00_04_56.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_04_56(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_04_56(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_04_56(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_04\_56');
filename = strcat(path, 'acc0_04_24_00_04_56.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_04_56(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_04_56(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_04_56(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_04\_56');
filename = strcat(path, 'acc1_04_24_00_04_56.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_07_20 acc1_04_24_00_07_20------

n_acc0_04_24_00_07_20 = max(acc0_04_24_00_07_20.');
n_acc1_04_24_00_07_20 = max(acc1_04_24_00_07_20.');

n = int64(length(acc0_04_24_00_07_20) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_07_20)-n
s=sum(n_acc0_04_24_00_07_20(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_07_20(maxindex:maxindex+n-1)./n_acc1_04_24_00_07_20(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_07_20(maxindex:maxindex+n-1)./n_acc0_04_24_00_07_20(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_07\_20');
filename = strcat(path, 'pacc0acc1_04_24_00_07_20.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_07\_20');
filename = strcat(path, 'pacc1acc0_04_24_00_07_20.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_07_20(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_07_20(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_07_20(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_07\_20');
filename = strcat(path, 'acc0_04_24_00_07_20.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_07_20(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_07_20(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_07_20(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_07\_20');
filename = strcat(path, 'acc1_04_24_00_07_20.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_09_23 acc1_04_24_00_09_23------

n_acc0_04_24_00_09_23 = max(acc0_04_24_00_09_23.');
n_acc1_04_24_00_09_23 = max(acc1_04_24_00_09_23.');

n = int64(length(acc0_04_24_00_09_23) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_09_23)-n
s=sum(n_acc0_04_24_00_09_23(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_09_23(maxindex:maxindex+n-1)./n_acc1_04_24_00_09_23(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_09_23(maxindex:maxindex+n-1)./n_acc0_04_24_00_09_23(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_09\_23');
filename = strcat(path, 'pacc0acc1_04_24_00_09_23.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_09\_23');
filename = strcat(path, 'pacc1acc0_04_24_00_09_23.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_09_23(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_09_23(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_09_23(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_09\_23');
filename = strcat(path, 'acc0_04_24_00_09_23.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_09_23(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_09_23(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_09_23(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_09\_23');
filename = strcat(path, 'acc1_04_24_00_09_23.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_11_14 acc1_04_24_00_11_14------

n_acc0_04_24_00_11_14 = max(acc0_04_24_00_11_14.');
n_acc1_04_24_00_11_14 = max(acc1_04_24_00_11_14.');

n = int64(length(acc0_04_24_00_11_14) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_11_14)-n
s=sum(n_acc0_04_24_00_11_14(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_11_14(maxindex:maxindex+n-1)./n_acc1_04_24_00_11_14(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_11_14(maxindex:maxindex+n-1)./n_acc0_04_24_00_11_14(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_11\_14');
filename = strcat(path, 'pacc0acc1_04_24_00_11_14.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_11\_14');
filename = strcat(path, 'pacc1acc0_04_24_00_11_14.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_11_14(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_11_14(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_11_14(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_11\_14');
filename = strcat(path, 'acc0_04_24_00_11_14.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_11_14(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_11_14(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_11_14(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_11\_14');
filename = strcat(path, 'acc1_04_24_00_11_14.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_13_16 acc1_04_24_00_13_16------

n_acc0_04_24_00_13_16 = max(acc0_04_24_00_13_16.');
n_acc1_04_24_00_13_16 = max(acc1_04_24_00_13_16.');

n = int64(length(acc0_04_24_00_13_16) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_13_16)-n
s=sum(n_acc0_04_24_00_13_16(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_13_16(maxindex:maxindex+n-1)./n_acc1_04_24_00_13_16(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_13_16(maxindex:maxindex+n-1)./n_acc0_04_24_00_13_16(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_13\_16');
filename = strcat(path, 'pacc0acc1_04_24_00_13_16.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_13\_16');
filename = strcat(path, 'pacc1acc0_04_24_00_13_16.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_13_16(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_13_16(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_13_16(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_13\_16');
filename = strcat(path, 'acc0_04_24_00_13_16.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_13_16(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_13_16(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_13_16(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_13\_16');
filename = strcat(path, 'acc1_04_24_00_13_16.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_15_16 acc1_04_24_00_15_16------

n_acc0_04_24_00_15_16 = max(acc0_04_24_00_15_16.');
n_acc1_04_24_00_15_16 = max(acc1_04_24_00_15_16.');

n = int64(length(acc0_04_24_00_15_16) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_15_16)-n
s=sum(n_acc0_04_24_00_15_16(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_15_16(maxindex:maxindex+n-1)./n_acc1_04_24_00_15_16(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_15_16(maxindex:maxindex+n-1)./n_acc0_04_24_00_15_16(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_15\_16');
filename = strcat(path, 'pacc0acc1_04_24_00_15_16.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_15\_16');
filename = strcat(path, 'pacc1acc0_04_24_00_15_16.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_15_16(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_15_16(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_15_16(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_15\_16');
filename = strcat(path, 'acc0_04_24_00_15_16.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_15_16(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_15_16(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_15_16(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_15\_16');
filename = strcat(path, 'acc1_04_24_00_15_16.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_16_51 acc1_04_24_00_16_51------

n_acc0_04_24_00_16_51 = max(acc0_04_24_00_16_51.');
n_acc1_04_24_00_16_51 = max(acc1_04_24_00_16_51.');

n = int64(length(acc0_04_24_00_16_51) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_16_51)-n
s=sum(n_acc0_04_24_00_16_51(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_16_51(maxindex:maxindex+n-1)./n_acc1_04_24_00_16_51(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_16_51(maxindex:maxindex+n-1)./n_acc0_04_24_00_16_51(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_16\_51');
filename = strcat(path, 'pacc0acc1_04_24_00_16_51.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_16\_51');
filename = strcat(path, 'pacc1acc0_04_24_00_16_51.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_16_51(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_16_51(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_16_51(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_16\_51');
filename = strcat(path, 'acc0_04_24_00_16_51.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_16_51(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_16_51(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_16_51(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_16\_51');
filename = strcat(path, 'acc1_04_24_00_16_51.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_25_36 acc1_04_24_00_25_36------

n_acc0_04_24_00_25_36 = max(acc0_04_24_00_25_36.');
n_acc1_04_24_00_25_36 = max(acc1_04_24_00_25_36.');

n = int64(length(acc0_04_24_00_25_36) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_25_36)-n
s=sum(n_acc0_04_24_00_25_36(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_25_36(maxindex:maxindex+n-1)./n_acc1_04_24_00_25_36(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_25_36(maxindex:maxindex+n-1)./n_acc0_04_24_00_25_36(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_25\_36');
filename = strcat(path, 'pacc0acc1_04_24_00_25_36.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_25\_36');
filename = strcat(path, 'pacc1acc0_04_24_00_25_36.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_25_36(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_25_36(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_25_36(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_25\_36');
filename = strcat(path, 'acc0_04_24_00_25_36.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_25_36(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_25_36(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_25_36(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_25\_36');
filename = strcat(path, 'acc1_04_24_00_25_36.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_27_10 acc1_04_24_00_27_10------

n_acc0_04_24_00_27_10 = max(acc0_04_24_00_27_10.');
n_acc1_04_24_00_27_10 = max(acc1_04_24_00_27_10.');

n = int64(length(acc0_04_24_00_27_10) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_27_10)-n
s=sum(n_acc0_04_24_00_27_10(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_27_10(maxindex:maxindex+n-1)./n_acc1_04_24_00_27_10(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_27_10(maxindex:maxindex+n-1)./n_acc0_04_24_00_27_10(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_27\_10');
filename = strcat(path, 'pacc0acc1_04_24_00_27_10.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_27\_10');
filename = strcat(path, 'pacc1acc0_04_24_00_27_10.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_27_10(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_27_10(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_27_10(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_27\_10');
filename = strcat(path, 'acc0_04_24_00_27_10.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_27_10(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_27_10(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_27_10(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_27\_10');
filename = strcat(path, 'acc1_04_24_00_27_10.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_28_50 acc1_04_24_00_28_50------

n_acc0_04_24_00_28_50 = max(acc0_04_24_00_28_50.');
n_acc1_04_24_00_28_50 = max(acc1_04_24_00_28_50.');

n = int64(length(acc0_04_24_00_28_50) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_28_50)-n
s=sum(n_acc0_04_24_00_28_50(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_28_50(maxindex:maxindex+n-1)./n_acc1_04_24_00_28_50(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_28_50(maxindex:maxindex+n-1)./n_acc0_04_24_00_28_50(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_28\_50');
filename = strcat(path, 'pacc0acc1_04_24_00_28_50.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_28\_50');
filename = strcat(path, 'pacc1acc0_04_24_00_28_50.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_28_50(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_28_50(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_28_50(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_28\_50');
filename = strcat(path, 'acc0_04_24_00_28_50.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_28_50(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_28_50(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_28_50(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_28\_50');
filename = strcat(path, 'acc1_04_24_00_28_50.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_32_31 acc1_04_24_00_32_31------

n_acc0_04_24_00_32_31 = max(acc0_04_24_00_32_31.');
n_acc1_04_24_00_32_31 = max(acc1_04_24_00_32_31.');

n = int64(length(acc0_04_24_00_32_31) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_32_31)-n
s=sum(n_acc0_04_24_00_32_31(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_32_31(maxindex:maxindex+n-1)./n_acc1_04_24_00_32_31(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_32_31(maxindex:maxindex+n-1)./n_acc0_04_24_00_32_31(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_32\_31');
filename = strcat(path, 'pacc0acc1_04_24_00_32_31.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_32\_31');
filename = strcat(path, 'pacc1acc0_04_24_00_32_31.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_32_31(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_32_31(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_32_31(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_32\_31');
filename = strcat(path, 'acc0_04_24_00_32_31.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_32_31(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_32_31(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_32_31(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_32\_31');
filename = strcat(path, 'acc1_04_24_00_32_31.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_34_11 acc1_04_24_00_34_11------

n_acc0_04_24_00_34_11 = max(acc0_04_24_00_34_11.');
n_acc1_04_24_00_34_11 = max(acc1_04_24_00_34_11.');

n = int64(length(acc0_04_24_00_34_11) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_34_11)-n
s=sum(n_acc0_04_24_00_34_11(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_34_11(maxindex:maxindex+n-1)./n_acc1_04_24_00_34_11(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_34_11(maxindex:maxindex+n-1)./n_acc0_04_24_00_34_11(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_34\_11');
filename = strcat(path, 'pacc0acc1_04_24_00_34_11.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_34\_11');
filename = strcat(path, 'pacc1acc0_04_24_00_34_11.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_34_11(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_34_11(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_34_11(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_34\_11');
filename = strcat(path, 'acc0_04_24_00_34_11.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_34_11(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_34_11(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_34_11(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_34\_11');
filename = strcat(path, 'acc1_04_24_00_34_11.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_35_57 acc1_04_24_00_35_57------

n_acc0_04_24_00_35_57 = max(acc0_04_24_00_35_57.');
n_acc1_04_24_00_35_57 = max(acc1_04_24_00_35_57.');

n = int64(length(acc0_04_24_00_35_57) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_35_57)-n
s=sum(n_acc0_04_24_00_35_57(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_35_57(maxindex:maxindex+n-1)./n_acc1_04_24_00_35_57(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_35_57(maxindex:maxindex+n-1)./n_acc0_04_24_00_35_57(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_35\_57');
filename = strcat(path, 'pacc0acc1_04_24_00_35_57.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_35\_57');
filename = strcat(path, 'pacc1acc0_04_24_00_35_57.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_35_57(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_35_57(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_35_57(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_35\_57');
filename = strcat(path, 'acc0_04_24_00_35_57.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_35_57(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_35_57(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_35_57(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_35\_57');
filename = strcat(path, 'acc1_04_24_00_35_57.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_41_09 acc1_04_24_00_41_09------

n_acc0_04_24_00_41_09 = max(acc0_04_24_00_41_09.');
n_acc1_04_24_00_41_09 = max(acc1_04_24_00_41_09.');

n = int64(length(acc0_04_24_00_41_09) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_41_09)-n
s=sum(n_acc0_04_24_00_41_09(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_41_09(maxindex:maxindex+n-1)./n_acc1_04_24_00_41_09(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_41_09(maxindex:maxindex+n-1)./n_acc0_04_24_00_41_09(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_41\_09');
filename = strcat(path, 'pacc0acc1_04_24_00_41_09.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_41\_09');
filename = strcat(path, 'pacc1acc0_04_24_00_41_09.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_41_09(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_41_09(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_41_09(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_41\_09');
filename = strcat(path, 'acc0_04_24_00_41_09.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_41_09(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_41_09(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_41_09(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_41\_09');
filename = strcat(path, 'acc1_04_24_00_41_09.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_43_52 acc1_04_24_00_43_52------

n_acc0_04_24_00_43_52 = max(acc0_04_24_00_43_52.');
n_acc1_04_24_00_43_52 = max(acc1_04_24_00_43_52.');

n = int64(length(acc0_04_24_00_43_52) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_43_52)-n
s=sum(n_acc0_04_24_00_43_52(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_43_52(maxindex:maxindex+n-1)./n_acc1_04_24_00_43_52(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_43_52(maxindex:maxindex+n-1)./n_acc0_04_24_00_43_52(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_43\_52');
filename = strcat(path, 'pacc0acc1_04_24_00_43_52.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_43\_52');
filename = strcat(path, 'pacc1acc0_04_24_00_43_52.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_43_52(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_43_52(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_43_52(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_43\_52');
filename = strcat(path, 'acc0_04_24_00_43_52.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_43_52(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_43_52(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_43_52(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_43\_52');
filename = strcat(path, 'acc1_04_24_00_43_52.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_48_49 acc1_04_24_00_48_49------

n_acc0_04_24_00_48_49 = max(acc0_04_24_00_48_49.');
n_acc1_04_24_00_48_49 = max(acc1_04_24_00_48_49.');

n = int64(length(acc0_04_24_00_48_49) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_48_49)-n
s=sum(n_acc0_04_24_00_48_49(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_48_49(maxindex:maxindex+n-1)./n_acc1_04_24_00_48_49(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_48_49(maxindex:maxindex+n-1)./n_acc0_04_24_00_48_49(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_48\_49');
filename = strcat(path, 'pacc0acc1_04_24_00_48_49.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_48\_49');
filename = strcat(path, 'pacc1acc0_04_24_00_48_49.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_48_49(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_48_49(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_48_49(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_48\_49');
filename = strcat(path, 'acc0_04_24_00_48_49.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_48_49(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_48_49(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_48_49(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_48\_49');
filename = strcat(path, 'acc1_04_24_00_48_49.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_50_59 acc1_04_24_00_50_59------

n_acc0_04_24_00_50_59 = max(acc0_04_24_00_50_59.');
n_acc1_04_24_00_50_59 = max(acc1_04_24_00_50_59.');

n = int64(length(acc0_04_24_00_50_59) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_50_59)-n
s=sum(n_acc0_04_24_00_50_59(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_50_59(maxindex:maxindex+n-1)./n_acc1_04_24_00_50_59(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_50_59(maxindex:maxindex+n-1)./n_acc0_04_24_00_50_59(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_50\_59');
filename = strcat(path, 'pacc0acc1_04_24_00_50_59.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_50\_59');
filename = strcat(path, 'pacc1acc0_04_24_00_50_59.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_50_59(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_50_59(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_50_59(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_50\_59');
filename = strcat(path, 'acc0_04_24_00_50_59.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_50_59(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_50_59(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_50_59(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_50\_59');
filename = strcat(path, 'acc1_04_24_00_50_59.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_52_26 acc1_04_24_00_52_26------

n_acc0_04_24_00_52_26 = max(acc0_04_24_00_52_26.');
n_acc1_04_24_00_52_26 = max(acc1_04_24_00_52_26.');

n = int64(length(acc0_04_24_00_52_26) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_52_26)-n
s=sum(n_acc0_04_24_00_52_26(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_52_26(maxindex:maxindex+n-1)./n_acc1_04_24_00_52_26(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_52_26(maxindex:maxindex+n-1)./n_acc0_04_24_00_52_26(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_52\_26');
filename = strcat(path, 'pacc0acc1_04_24_00_52_26.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_52\_26');
filename = strcat(path, 'pacc1acc0_04_24_00_52_26.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_52_26(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_52_26(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_52_26(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_52\_26');
filename = strcat(path, 'acc0_04_24_00_52_26.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_52_26(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_52_26(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_52_26(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_52\_26');
filename = strcat(path, 'acc1_04_24_00_52_26.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_54_06 acc1_04_24_00_54_06------

n_acc0_04_24_00_54_06 = max(acc0_04_24_00_54_06.');
n_acc1_04_24_00_54_06 = max(acc1_04_24_00_54_06.');

n = int64(length(acc0_04_24_00_54_06) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_54_06)-n
s=sum(n_acc0_04_24_00_54_06(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_54_06(maxindex:maxindex+n-1)./n_acc1_04_24_00_54_06(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_54_06(maxindex:maxindex+n-1)./n_acc0_04_24_00_54_06(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_54\_06');
filename = strcat(path, 'pacc0acc1_04_24_00_54_06.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_54\_06');
filename = strcat(path, 'pacc1acc0_04_24_00_54_06.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_54_06(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_54_06(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_54_06(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_54\_06');
filename = strcat(path, 'acc0_04_24_00_54_06.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_54_06(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_54_06(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_54_06(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_54\_06');
filename = strcat(path, 'acc1_04_24_00_54_06.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_04_24_00_55_42 acc1_04_24_00_55_42------

n_acc0_04_24_00_55_42 = max(acc0_04_24_00_55_42.');
n_acc1_04_24_00_55_42 = max(acc1_04_24_00_55_42.');

n = int64(length(acc0_04_24_00_55_42) * 6 / 7);
maxval=0;
maxindex=0;

for m = 1:length(acc0_04_24_00_55_42)-n
s=sum(n_acc0_04_24_00_55_42(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_04_24_00_55_42(maxindex:maxindex+n-1)./n_acc1_04_24_00_55_42(maxindex:maxindex+n-1);
p10 = n_acc1_04_24_00_55_42(maxindex:maxindex+n-1)./n_acc0_04_24_00_55_42(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p01);
ylabel('acc0/acc1');
xlabel('frequency (Hz)');
title('acc0acc1\_04\_24\_00\_55\_42');
filename = strcat(path, 'pacc0acc1_04_24_00_55_42.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),p10);
ylabel('acc1/acc0');
xlabel('frequency (Hz)');
title('acc1acc0\_04\_24\_00\_55\_42');
filename = strcat(path, 'pacc1acc0_04_24_00_55_42.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,1000,n),acc0_04_24_00_55_42(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_55_42(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc0_04_24_00_55_42(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc0\_04\_24\_00\_55\_42');
filename = strcat(path, 'acc0_04_24_00_55_42.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,1000,n),acc1_04_24_00_55_42(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_55_42(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,1000,n),acc1_04_24_00_55_42(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('frequency (Hz)');
title('acc1\_04\_24\_00\_55\_42');
filename = strcat(path, 'acc1_04_24_00_55_42.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

