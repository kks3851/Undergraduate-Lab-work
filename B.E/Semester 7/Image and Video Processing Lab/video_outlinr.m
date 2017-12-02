clc
clear all
close all
a=VideoReader('');
get(a)
nframes=a.NumberOfFrames;
video=zeros(m,n,nframes);

for k=1:nframes
    temp=read(a,i)
    %perform the required operation on the whole video 
    vid(i,j,nframes)=
end
implay(uint8(video));

clc
clear all
close all
a=VideoReader('');
get(a)
nframes=a.NumberOfFrames;
singleFrame = read(x, k);
A=imresize(singleFrame,[256 256]);
%then perform the required operation on the frame

