clc
clear all
 
p=input('Enter the interpolating point of the polynomial: ');
x=[1 1.5 2 2.5];
y=[2.7183 4.4817 7.3891 12.1825];
n=length(x);
A=zeros(n);
A(:,1)=y;
 
for j=2:n
    for i=j:n
        A(i,j)=(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
 
for i=1:n
    prod(i)=1;
    for j=1:i-1
        prod(i)=prod(i)*(p-x(j));
    end
end
 
sum=0;
for i=1:n
    sum=sum+A(i,i)*prod(i);
end
 
fprintf('The approximate value of function at %f using Newton Divided Difference is %f',p,sum);
