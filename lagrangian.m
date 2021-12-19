format short
clear all;
clc

x = [5 7 11 13];
y = [150 392 1452 2366];
X = input('Enter value of X: ');

for i=1:length(x)
    x1 = x;
    x1(i) = [];
    l(i) = prod(X-x1)./prod(x(i)-x1);
end
res = sum(l.*y);
fprintf('Answer is %f\n', res);