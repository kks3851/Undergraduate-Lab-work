clc
close all
clear all
%Dilation 
x = VideoReader('traffic.mj2');
get(x);
nframes = get(x, 'NumberOfFrames');
I = read(x, 1);
imshow(I)
for k = 1 : nframes
    singleFrame = read(x, k);
    A=im2bw(singleFrame);

% A = im2bw(read(x,71));
% figure(1)
% imshow(A)

a=strel('diamond',3);
B2=getnhood(a);
m=floor(size(B2,1)/2);
n=floor(size(B2,2)/2);
c=padarray(A,[m n]);
D=false(size(A));

for i=1:size(c,1)-2*m

    for j=1:size(c,2)-2*n

        D(i,j)=max(max(B2&c(i:(i+(2*m)),j:(j+(2*n)))));

    end

end
figure(2)
imshow(D)
end

