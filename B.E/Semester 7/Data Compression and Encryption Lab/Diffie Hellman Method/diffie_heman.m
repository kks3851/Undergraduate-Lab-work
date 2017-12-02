clc;
close all;
clear all;
p=input('Enter value of p: ');
a=input('Enter value of a: ');
Xa=input('Enter value of Xa: ');
Xb=input('Enter value of Xb: ');
[ans, b, product]=sqmod(a,Xa,p);
Ya=ans
[ans, b, product]=sqmod(a,Xb,p);
Yb=ans
[ans, b, product]=sqmod(Yb,Xa,p);
k1=ans;
[ans, b, product]=sqmod(Ya,Xb,p);
k2=ans;
if(k1==k2)
    disp('Exchange Key')
    k=k1;
    k
end
