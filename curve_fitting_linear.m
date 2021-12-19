format short
clear all;
clc

x = [-2 -1 0 1 2];
y = [15 1 1 3 19];
n = length(x);

plot(x, y, 'r*');
hold on

sumX = sum(x);
sumY = sum(y);
sumXY = sum(x.*y);
sumX2 = sum(x.^2);

A = [n sumX; sumX sumX2];
B = [sumY; sumXY];
X = inv(A)*B;

for i=1:n
    f(i) = X(1) + X(2)*x(i);
end

plot(x, f, 'b');
