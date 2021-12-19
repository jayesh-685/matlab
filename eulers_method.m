format short
clear all;
clc

f = @(x,y) (y-x)./(y+x);

x = input('Enter initial value of x: ');
y = input('Enter initial value of y: ');
h = input('Enter value of h: ');
X = input('Enter value of x at which you want to calculate y: ');

k=1;
while X>=x
    fXY = f(x,y);
    newY = y+h.*fXY;
    res(k,:) = [x, y, fXY, newY];
    k = k+1;
    x = x+h;
    y = newY;
end
res(end, 2)
res

