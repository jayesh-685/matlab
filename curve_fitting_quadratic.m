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
sumX2Y = sum((x.^2).*y);
sumX2 = sum(x.^2);
sumX3 = sum(x.^3);
sumX4 = sum(x.^4);

A = [n sumX sumX2; sumX sumX2 sumX3; sumX2 sumX3 sumX4];
B = [sumY; sumXY; sumX2Y];
X = inv(A)*B;

for i=1:n
    f(i) = X(1) + X(2)*x(i) + X(3)*x(i)*x(i);
end

plot(x, f, 'b');
