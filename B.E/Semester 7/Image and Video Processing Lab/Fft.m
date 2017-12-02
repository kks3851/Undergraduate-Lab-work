clc;
clear all;
close all;
x=imread('cameraman.tif');
x1=double(x);
x2=imresize(x1,[256 256]);
x3=fft2(x2);
D0=50;

for i=1:1:256
    for j=1:1:256
    x2(i,j)=sqrt((i-128).^2+(j-128).^2);
    if(x2(i,j)>D0)
              h(i,j)=0;
    else if(x2(i,j)<D0)
            h(i,j)=1;
        end
        
    end
    end
end


x4=fftshift(x3);
x5=x4.*h;

x6=abs(ifft2(x5));
subplot(1,2,1);
imshow(uint8(x6))

subplot(1,2,2)
imshow(h)
