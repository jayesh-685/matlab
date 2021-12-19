format short
clear all;
clc

A=[4 1 0;1 20 1;0 1 4];
x=[1; 1; 1];
maxErr = 0.001;
err = 100000;
eigval = Inf;

while all(err>maxErr)
    xOld = x;
    y = A*x;
    eigval = max(abs(y));
    x = y./eigval;
    err = abs(sum(x - xOld));
end

fprintf('Eigen value is %f\n', eigval);
