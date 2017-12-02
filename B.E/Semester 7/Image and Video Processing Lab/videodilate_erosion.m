clc;
clear all;
close all;



x = VideoReader('traffic.mj2')
get(x);
a = rgb2gray(read(x,50));
nframes = get(x, 'NumberOfFrames');

for k = 1 : nframes
    frame = read(x, k);
    a=im2bw(frame);

b=strel('diamond',3);               
nhood=getnhood(b)
m=floor(size(nhood,1)/2);
n=floor(size(nhood,2/2));
c=padarray(a,[m n],1);
for i=1:size(c,1)-2*m
    for j=1:size(c,2)-2*n
    d(i,j)=min(min(c(i:(i+2*m),j:(j+2*n))));
    end
end
%figure(2)
%imshow(d)

nhood1=getnhood(b)
m1=floor(size(nhood1,1)/2);
n1=floor(size(nhood1,2)/2);
c1=padarray(d,[m1 n1]);
for i=1:size(c1,1)-2*m1
    for j=1:size(c1,2)-2*n1
        for u=1:7
        p(u)=and(c1(i+u-1,j),nhood1(u,1));
        end
    d1(i,j)=max(p);
    end
end
figure(2)
imshow(d1)
end










