clc;
close all;
k=imread('C:\Users\djsce.student\Desktop\e2-2 ip\DIP3E_Original_Images_CH03\Fig0316(3)(third_from_top).tif')
l=256;
smin=40;
smax=255;
rmin=0;
rmax=255;
for r=1:256
    s(r)=(((smax-smin)/(rmax-rmin))*((r-1)-rmax))+smax

end
r=1:256
stem(r,s)
figure(2)
imshow(k)
