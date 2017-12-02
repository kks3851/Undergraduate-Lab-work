clc;
close all;
clear all;
trafficObj= VideoReader('traffic.mj2'); % reads the video
get(trafficObj) % gets the settings for the video
implay('traffic.mj2'); %plays the video
darkCarValue=50;
darkCar=rgb2gray(read(trafficObj,71));
noDarkCar=imextendedmax(darkCar,darkCarValue); % returns a binary value 
                            %that identifies regions with intensity values 
                            %above a specified  thershold
imshow(darkCar)
figure, imshow(noDarkCar)
sedisk=strel('disk',2); % morphological operations
noSmallStructures=imopen(noDarkCar,sedisk);
imshow(noSmallStructures)

nframes=get(trafficObj,'NumberOfFrames')';
I=read(trafficObj,1);
taggedCars=zeros([size(I,1) size(I,2) 3 nframes],class(I));

for k=1:nframes
    singleFrame=read(trafficObj,k);
    %convert to grayscale to do morphological processing
    I=rgb2gray(singleFrame);
    %remove dark cars
    noDarkCar=imextendedmax(I,darkCarValue);
    %remove lane markings and other non disk shaped strucutres
    noSmallStructures=imopen(noDarkCar,sedisk);
    %remove small structures
    noSmallStructures=bwareaopen(noSmallStructures,150);
    %get the area and centroid of each remaining object in the frame
    %the object with the largest area is the light coloured car 
    %create a copy of the original frame and tag the car by changing the
    %centroid pixel value to red
    taggedCars(:,:,:,k)=singleFrame;
    stats=regionprops(noSmallStructures, {'Centroid','Area'});
    if ~isempty([stats.Area]);
        areaArray=[stats.Area];
        [junk,idx]=max(areaArray);
        c=stats(idx).Centroid;
        c=floor(fliplr(c));
        width=2;
        row=c(1)-width:c(1)+width;
        col=c(2)-width:c(2)+width;
        taggedCars(row,col,1,k)=255;
        taggedCars(row,col,2,k)=0;
        taggedCars(row,col,3,k)=0;
    end
end

