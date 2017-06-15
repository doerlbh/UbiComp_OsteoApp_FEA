function [e] = eFlsq1(c)

load('data1.mat');

e = 0.0;
for j = 100 : length(ch1)-100;
    e = e + (ch1_fft(j+round(c)) - ch2_fft(j))^2;
end

end