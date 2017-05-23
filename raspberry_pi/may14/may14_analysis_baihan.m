% impact analysis.m for experiment may14 
% Baihan Lin, Apr 2017

clear all; close all;

load('may14.mat')

path=('/Users/DoerLBH/Dropbox/git/UbiComp_OsteoApp_FEA/raspberry_pi/may14/out/');
system(['mkdir ' path]);

%% -----acc0_05_14_20_27_54 acc1_05_14_20_27_54------

time = 70;
n_acc0_05_14_20_27_54 = max(acc0_05_14_20_27_54.');
n_acc1_05_14_20_27_54 = max(acc1_05_14_20_27_54.');

n = int64(length(acc0_05_14_20_27_54));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_14_20_27_54)-n
s=sum(n_acc0_05_14_20_27_54(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_14_20_27_54(maxindex:maxindex+n-1)./n_acc1_05_14_20_27_54(maxindex:maxindex+n-1);
p10 = n_acc1_05_14_20_27_54(maxindex:maxindex+n-1)./n_acc0_05_14_20_27_54(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_14\_20\_27\_54');
filename = strcat(path, 'pacc0acc1_05_14_20_27_54.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_14\_20\_27\_54');
filename = strcat(path, 'pacc1acc0_05_14_20_27_54.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_14_20_27_54(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_14_20_27_54(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_14_20_27_54(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_14\_20\_27\_54');
filename = strcat(path, 'acc0_05_14_20_27_54.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_14_20_27_54(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_14_20_27_54(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_14_20_27_54(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_14\_20\_27\_54');
filename = strcat(path, 'acc1_05_14_20_27_54.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_05_14_20_29_38 acc1_05_14_20_29_38------

time = 70;
n_acc0_05_14_20_29_38 = max(acc0_05_14_20_29_38.');
n_acc1_05_14_20_29_38 = max(acc1_05_14_20_29_38.');

n = int64(length(acc0_05_14_20_29_38));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_14_20_29_38)-n
s=sum(n_acc0_05_14_20_29_38(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_14_20_29_38(maxindex:maxindex+n-1)./n_acc1_05_14_20_29_38(maxindex:maxindex+n-1);
p10 = n_acc1_05_14_20_29_38(maxindex:maxindex+n-1)./n_acc0_05_14_20_29_38(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_14\_20\_29\_38');
filename = strcat(path, 'pacc0acc1_05_14_20_29_38.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_14\_20\_29\_38');
filename = strcat(path, 'pacc1acc0_05_14_20_29_38.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_14_20_29_38(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_14_20_29_38(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_14_20_29_38(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_14\_20\_29\_38');
filename = strcat(path, 'acc0_05_14_20_29_38.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_14_20_29_38(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_14_20_29_38(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_14_20_29_38(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_14\_20\_29\_38');
filename = strcat(path, 'acc1_05_14_20_29_38.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_05_14_20_31_12 acc1_05_14_20_31_12------

time = 70;
n_acc0_05_14_20_31_12 = max(acc0_05_14_20_31_12.');
n_acc1_05_14_20_31_12 = max(acc1_05_14_20_31_12.');

n = int64(length(acc0_05_14_20_31_12));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_14_20_31_12)-n
s=sum(n_acc0_05_14_20_31_12(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_14_20_31_12(maxindex:maxindex+n-1)./n_acc1_05_14_20_31_12(maxindex:maxindex+n-1);
p10 = n_acc1_05_14_20_31_12(maxindex:maxindex+n-1)./n_acc0_05_14_20_31_12(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_14\_20\_31\_12');
filename = strcat(path, 'pacc0acc1_05_14_20_31_12.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_14\_20\_31\_12');
filename = strcat(path, 'pacc1acc0_05_14_20_31_12.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_14_20_31_12(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_14_20_31_12(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_14_20_31_12(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_14\_20\_31\_12');
filename = strcat(path, 'acc0_05_14_20_31_12.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_14_20_31_12(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_14_20_31_12(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_14_20_31_12(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_14\_20\_31\_12');
filename = strcat(path, 'acc1_05_14_20_31_12.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

%% -----acc0_05_14_20_32_44 acc1_05_14_20_32_44------

time = 70;
n_acc0_05_14_20_32_44 = max(acc0_05_14_20_32_44.');
n_acc1_05_14_20_32_44 = max(acc1_05_14_20_32_44.');

n = int64(length(acc0_05_14_20_32_44));
maxval=0;
maxindex=1;

for m = 1:length(acc0_05_14_20_32_44)-n
s=sum(n_acc0_05_14_20_32_44(m:m+n-1));
if(s>maxval)
maxval = s;
maxindex = m;
end
end

p01 = n_acc0_05_14_20_32_44(maxindex:maxindex+n-1)./n_acc1_05_14_20_32_44(maxindex:maxindex+n-1);
p10 = n_acc1_05_14_20_32_44(maxindex:maxindex+n-1)./n_acc0_05_14_20_32_44(maxindex:maxindex+n-1);

figure(1)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p01);
ylabel('acc0/acc1');
xlabel('t (s)');
title('acc0acc1\_05\_14\_20\_32\_44');
filename = strcat(path, 'pacc0acc1_05_14_20_32_44.png');
saveas(gcf, filename,'png');

figure(2)
set(gca,'FontSize',16)
plot(linspace(0,time,n),p10);
ylabel('acc1/acc0');
xlabel('t (s)');
title('acc1acc0\_05\_14\_20\_32\_44');
filename = strcat(path, 'pacc1acc0_05_14_20_32_44.png');
saveas(gcf, filename,'png');

figure(3)
set(gca,'FontSize',16)
plot(linspace(0,time,n),acc0_05_14_20_32_44(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc0_05_14_20_32_44(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc0_05_14_20_32_44(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc0\_05\_14\_20\_32\_44');
filename = strcat(path, 'acc0_05_14_20_32_44.png');
saveas(gcf, filename,'png');

figure(4)
set(gca,'FontSize',16);
plot(linspace(0,time,n),acc1_05_14_20_32_44(maxindex:maxindex+n-1,1)); hold on
plot(linspace(0,time,n),acc1_05_14_20_32_44(maxindex:maxindex+n-1,2)); hold on
plot(linspace(0,time,n),acc1_05_14_20_32_44(maxindex:maxindex+n-1,3));
ylabel('acceleration');
xlabel('t (s)');
title('acc1\_05\_14\_20\_32\_44');
filename = strcat(path, 'acc1_05_14_20_32_44.png');
saveas(gcf, filename,'png');

close(figure(1));close(figure(2));close(figure(3));close(figure(4));

