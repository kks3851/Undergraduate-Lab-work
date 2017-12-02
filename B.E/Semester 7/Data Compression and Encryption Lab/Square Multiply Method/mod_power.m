function [d,b,c] = mod_power(a,x,n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x1=dec2bin(x);
l1=length(x1);
temp=a;
b(1)=mod(temp,n);
for i=2:l1
    temp=(b(i-1)*b(i-1));
    b(i)=mod(temp,n);
end
k=1;
c=0;
for j=1:l1
    e(1,j)=x1(1,(l1-j+1));
end

for i=1:l1
    if(e(i)== '1')
        c=k*b(i);
        k=c;
    end
end
d=mod(c,n);

end

