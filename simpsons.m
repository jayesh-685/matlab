format short
clear all;
clc

f = @(x) cos(x) - log(x) + exp(x);

a = input('Enter the value of a: ');
b = input('Enter the value of b: ');
n = input('Enter the no of sub-intervals: ');
h = (b-a)./n;
i = 1:1:n-1;
S = f(a+i.*h);
sEven = sum(S(2:2:n-1));
sOdd = sum(S(1:2:n-1));
res = (h/3).*(f(a)+f(b)+2.*sOdd+4.*sEven);
fprintf('The answer is %f\n', res);
