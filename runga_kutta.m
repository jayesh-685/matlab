format short
clear all;
clc

f = @(x,y) x.*(y.^(1/3));

x = input('Enter initial value of x: ');
y = input('Enter initial value of y: ');
h = input('Enter value of h: ');
X = input('Enter value of x at which you want to calculate y: ');

k=1;
while X>=x
    k1 = h.*f(x,y);
    k2 = h.*f(x+(h/2), y+(k1/2));
    k3 = h.*f(x+(h/2), y+(k2/2));
    k4 = h.*f(x+h, y+k3);
    k = 1/6.*(k1 + 2.*k2 + 2.*k3 + k4);
    x = x+h;
    y = y+k;
end
y


