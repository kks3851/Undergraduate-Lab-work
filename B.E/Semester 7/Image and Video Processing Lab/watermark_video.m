clc
clear all
close all
jay=VideoReader('traffic.mj2');
I=rgb2gray(read(jay,1));
[m n]=size(I);
video=zeros(m,n,jay.numberofframes);
my_file=imread('C:\Users\admin\Desktop\jay_udani.png');
my_file=imresize(my_file,[m n]);
my_file=rgb2gray(my_file);
for i=1:(jay.numberofframes)
    temp=rgb2gray(read(jay,i));
    
    for jay=1:m
        for k=1:n
            t=dec2bin(temp(jay,k),8);
            t1=dec2bin(my_file(jay,k),8);
            t(8)=t1(1);
            t(7)=t1(2);
            t(6)=t1(3);
            t(5)=t1(4);
            
            video(jay,k,i)=bin2dec(t);
        end
    end
    
end

implay(uint8(video));

