clc;
clear all;
close all;
a=imread('coins.png');
b=fft2(a);
[m,n]=size(a);
for i=1:m
    for j=1:n
        c(i,j)=a(i,j)*(-1)^(i+j);
    end
end
d=20*log(1+abs(fft2(c)));
e=ifft2(b);
subplot(2,2,1);
imshow(a)
title('Original Image')
subplot(2,2,3);
imshow(uint8(d))
title('Spectrum with Dynamic Range Compression')
subplot(2,2,2);
imshow(b)
title('Dft of original Image')
subplot(2,2,4);
imshow(uint8(e))
title('Inverse DFT')
