clc
clear all
close all
Mu=20;
A=20;
 y = wavread('C:\Users\Karan\Desktop\workshop\extc\sem 7\data_compression_practs\speech\welcome.wav');
 v=max(max(y));
 for i=1:3730
         y1(i,1)=y(i,1);
 end 
 plot(y)
 title('original')
 p=(-v):0.005:v;
 c=(-(v+0.005)):0.005:v;
 [m,n]=quantiz(y1,p,c);
 figure(2);
 plot(n)
 title('quantizied')
 cinput= compand(y1,Mu,v,'mu/compressor');
 figure(3);
 plot(cinput)
 title('compressed')
 [m1,n1]=quantiz(cinput,p,c);
 out= compand(n1,Mu,v,'mu/expander');
 figure(4);
 plot(out)
 title('expanded')
 e1=mse(n,y1)
 e2=mse(out,y1)
%  out1= compand(n1,A,v,'A/compressor');
%  figure(5);
%  plot(out1)
%  out2= compand(n1,A,v,'A/expander');
%  figure(6);
%  plot(out2)
