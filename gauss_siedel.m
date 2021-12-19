format short 
clear all;
clc

A=[4.63 -1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57];
b=[2.22;-3.17;5.11];

err = Inf;
maxErr = 1e-5;

x = zeros(1, size(A, 1));

while all(err>maxErr)
    xOld = x;
    for i=1:size(A, 1)
        sum = 0;
        for j=1:i-1
            sum = sum + A(i,j).*x(j);
        end
        for j=i+1:size(A, 1)
            sum = sum + A(i,j).*xOld(j);
        end
        x(i) = (1/A(i,i)).*(b(i) - sum);
    end
    err = abs(x - xOld);
end

