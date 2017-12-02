clc
close all;
clear all;

xyloObj=VideoReader('xylophone.mpg')
nFrames=xyloObj.NumberOfFrames;
vidHeight=xyloObj.Height;
vidWidth=xyloObj.Width;
%Prelloctate movie structure
mov(1:nFrames)=struct('cdata',zeros(vidHeight, vidWidth, 3, 'uint8'),'colormap',[]);
%Read one frame at a time
for k=1:nFrames
    mov(k).cdata=read(xyloObj,142-k);
end
%size a figure based on the video's width and height.
hf=figure;
set(hf,'position',[150 150 vidWidth vidHeight])
%play back the movie once at the video's frame rate.
movie(hf, mov, 1, xyloObj.FrameRate);

%reverse a frame
for k=1:nFrames
    a(k)=mov(nFrames-k+1);
end
hf1=figure(2);
movie(hf1,a,1,xyloObj.FrameRate);

%extract a frame
figure(3)
n=78;
for k=1:nFrames
    if (k==n)
    b=mov(k);
    end
end
im=frame2im(b)
imshow(im)