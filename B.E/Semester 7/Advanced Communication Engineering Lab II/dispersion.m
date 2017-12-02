clc;
clear all;
close all;
s0=0.0970; %ps/nm2km
n2=1.48;
delta=0.002;
V=2.4;
c=300000;
derivative=0.26;
lamda0=1310; %nm
lamda=1250:10:1600;
%material dispersion
s=((lamda0)^(4))./((lamda).^(3));
s1=(lamda-s);
d1=s0.*s1;
d3=d1/4;
plot(lamda,d3,':')
hold on;
%waveguide dispersion
d0=(-(n2*delta*derivative)./(c.*lamda)).*10^(12);
% %subplot(3,1,2)
plot(lamda,d0,'--')
hold on;
 d=d3+d0;
% ubplot(3,1,3)
 plot(lamda,d)
 hold on;