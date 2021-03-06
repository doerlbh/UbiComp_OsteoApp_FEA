clear all; close all; clc;

data1x = [0.0000000e+00, 1.0000000e+00, 2.0000000e+00, 3.0000000e+00, 4.0000000e+00, 5.0000000e+00, 6.0000000e+00, 7.0000000e+00, 8.0000000e+00, 9.0000000e+00, 1.0000000e+01];
data1y = [3.4361633e+00, 1.3902810e+01, 1.1359855e+01, 2.5095803e+01, 3.4480801e+01, 5.3356655e+01, 6.6887843e+01, 6.6889248e+01, 8.5610393e+01, 9.3506641e+01, 9.0134306e+01];
x = data1x(1):data1x(length(data1x))/99:data1x(length(data1x));

data2x = [0.0000000e+00, 1.0000000e+00, 2.0000000e+00, 3.0000000e+00, 4.0000000e+00, 5.0000000e+00, 6.0000000e+00, 7.0000000e+00, 8.0000000e+00, 9.0000000e+00, 1.0000000e+01];
data2y = [3.8858954e+00, 8.9006385e-01,-2.7372470e+00,-4.0171729e+00,-1.0835979e+00, 2.2178971e+00, 3.5691387e+00, 1.2847665e+00,-1.9974321e+00,-4.0047838e+00,-2.4565813e+00];

data3x = [0.0000000e+00, 1.0000000e+00, 2.0000000e+00, 3.0000000e+00, 4.0000000e+00, 5.0000000e+00, 6.0000000e+00, 7.0000000e+00, 8.0000000e+00, 9.0000000e+00, 1.0000000e+01];
data3y = [4.6911439e+00, 2.2653577e+00, 8.5217046e+00, 1.1514149e+01, 1.3552068e+01, 2.1525177e+01, 4.3075146e+01, 7.0723943e+01, 1.0747195e+02, 1.8174691e+02, 2.9621277e+02];

%% 8
plot(data2x, data2y);
c1 = [1.0 1.0];
f = @(x, c) c(1) *sin(x + c(2));
f1 = @(x) f(x, c1);
e = eF(f1, data2x, data2y);

%% 9 
% oF = @(c) eF(f(x, c), data2x, data2y);
% c2 = fminsearch('eFsin', c1, [], data2x, data2y);
c2 = fminsearch('eFsin', c1);
y = f(x, c2);
plot(data2x, data2y, 'o', x, y);
ans = y(1:10);

%% 10
plot(data3x, data3y);
c1 = [1.0 1.0];
f = @(x, c) c(1) *exp(x * c(2));
f1 = @(x) f(x, c1);
e = eF(f1, data3x, data3y);

%% 11 
c2 = fminsearch('eFexp', c1);
y = f(x, c2);
plot(data3x, data3y, 'o', x, y);
ans = y(1:10);

