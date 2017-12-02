function [ ans, b, product] = sqmod( a,x,n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n1=dec2bin(x);
product=1;
l1=length(n1);
b=zeros(1,l1);
temp=a;
b(1)=mod(temp,n);
for i=2:l1
temp=b(i-1)*b(i-1);
b(i)=mod(temp,n);
end
for i=1:l1
if(n1(i)=='1')
product=product*b(l1-i+1);
end
end
ans = mod(product,n);
end

