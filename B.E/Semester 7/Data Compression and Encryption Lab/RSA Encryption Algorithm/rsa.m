clc;
close all;
clear all;
p=input('Enter value of p: ');
q=input('Enter value of q: ');  
n1=p*q;
phi_n=(p-1)*(q-1);
e=7;
phi_n1=(phi_n)-1;
a=e;
x=phi_n1;
n=phi_n;
[ans, b, product]=sqmod(a,x,n);
d=ans;
disp('Public Key')
e
n1
disp('Private Key')
d
n1
m='HI'
l=length(m);
for i=1:l
    p=m(i);
    [encrypted, b, product]=sqmod(p,e,n1);
    y(i)=encrypted;
end
y
for i=1:l
    encrypted=y(i);
    [dencrypted, b, product]=sqmod(encrypted,d,n1);
    z(i)=dencrypted;
end
w=char(z)
