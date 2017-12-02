clc;
close all;
a=imread('C:\Users\djsce.student\Desktop\e2-2 ip\DIP3E_Original_Images_CH03\Fig0316(3)(third_from_top).tif')
[m n]=size(a);
% figure(1);
% imhist(a)
figure(3);
imshow(a)             %original image
% figure(2);
% imhist(histeq(a))

%to find total no of pixelsfor a particular gray level 
x=1:1:256;
for k=1:1:256
    c=0;
    for i=1:500
    for j=1:500
        b=0;
        b=a(i,j);
        if(b==(k-1))
            c=c+1;
            
        end
    end
   end
d(k)=c;
end
figure(4);
bar(d) % histogram 
s=sum(d)
%division of all count by sum
for i=1:256
    e(i)=(d(i)/s);
end
% taking cdf
cdf(1)=e(1);
for i=2:1:255
    cdf(i)=e(i)+cdf(i-1);
end
new=round(cdf*255);
new=new+1; % to eliminate zero
%mapping of image
z=zeros(1,256);
for p=1:1:256
    for q=1:1:256
        temp=(a(p,q)+1);
        b(p,q)=new(temp);
        t=b(p,q);
        z(t)=z(t)+1;
    end
end
b=b-1;
figure(5);
imshow(uint8(b))
figure(6);
bar(z)