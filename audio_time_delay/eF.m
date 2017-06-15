function [e] = eF(fun, x, y)
e = 0.0;
for j = 1 : length(x);
    e = e + (fun(x(j)) - y(j))^2;
end
end