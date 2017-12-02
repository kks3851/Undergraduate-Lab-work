clc;
clear all;
close all;
c=imread('peppers.png');
subplot(2,3,1)
imshow(c);
title('Original Image')
subplot(2,3,2)
a=imrotate(c,90);
imshow(a);
title('Rotate Image')
subplot(2,3,3)
b=imresize(c,[64 64]);
imshow(b);
title('Resize image')
subplot(2,3,4)
d=rgb2gray(c);
imshow(d);
title('Grayscale Image')
[m n]= size(b); 
e=zeros(n,m);
for i=1:1:n
    for j=1:1:m
        e(i,j)=b(j,i);
    end
end
f= mat2gray(e);
subplot(2,3,5)
imshow(f);
title('Matrix Image')
