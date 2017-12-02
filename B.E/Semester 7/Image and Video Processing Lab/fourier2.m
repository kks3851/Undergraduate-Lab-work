clc
clear all
close all
im=imread('cam.png');
 
% im =rgb2gray(im);
k=imresize(im,[256,256]);
for i=1:1:256
    for j=1:1:256
        a(i,j)=(  (-1)^(i+j) )*  k(i,j) ;
    end
end
f=fft2(a);
for u=1:1:256
    for v=1:1:256
d(u,v)=sqrt(((u-128)^2)+((v-128)^2));
h(u,v)=1+(d(u,v)/100)^50;
h(u,v)=1/(h(u,v));
% m(u,v)=h(u,v)*f(u,v);
    end
end
subplot(1,3,1)
 imshow(h)
for u=1:1:256
    for v=1:1:256
d(u,v)=sqrt(((u-128)^2)+((v-128)^2));
h1(u,v)=1+(12/d(u,v))^50;
 h1(u,v)=1/(h1(u,v));
% m1(u,v)=h1(u,v)*m(u,v);
    end
end
subplot(1,3,2)
imshow(h1)
h2=h1.*h;
m1=h2.*f;
m2=ifft2(m1);
m2=abs(m2);
subplot(1,3,3)
imshow((m2));
