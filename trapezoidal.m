format short
clear all;
clc

f = @(x) 1./(1+x);

a = input('Enter the value of a: ');
b = input('Enter the value of b: ');
n = input('Enter the no of sub-intervals: ');
h = (b-a)./n;
i = 1:1:n-1;
S = f(a+i.*h);
res = h./2.*(f(a) + 2.*sum(S) + f(b));
fprintf('The answer is %f\n', res);
