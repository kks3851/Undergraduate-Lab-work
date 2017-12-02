
%%Dilation And Erosion Without using inbuilt function%%%
close all;
clear all;
clc;
A=imread('cameraman.tif');figure();imshow(A);
A=im2bw(A);

%Structuring element
a=strel('diamond',3);
B2=getnhood(a)
%B2=getnhood(strel('line',7,90)); %%%%neighbourhood associated with structuring element
m=floor(size(B2,1)/2); %%%%rounding off
n=floor(size(B2,2)/2);
%Pad array on all the sides
C=padarray(A,[m n])
D=false(size(A))
for i=1:size(C,1)-(2*m)

 for j=1:size(C,2)-(2*n)

Temp=C(i:i+(2*m),j:j+(2*n));

D(i,j)=max(max(Temp&B2));

 end

end
figure(2);
imshow(D)

% erosion
%Structuring element
a1=strel('square',3);
B3=getnhood(a1)
%B2=getnhood(strel('line',7,90)); %%%%neighbourhood associated with structuring element
m1=floor(size(B3,1)/2) %%%%rounding off
n1=floor(size(B3,2)/2);
%Pad array on all the sides
C1=padarray(A,[m1 n1])
D1=false(size(A))
for i=1:size(C1,1)-(2*m1)

 for j=1:size(C1,2)-(2*n1)

Temp1=C1(i:i+(2*m1),j:j+(2*n1));

D1(i,j)=min(min(Temp1&B3));

 end

end
figure(3);
imshow(D1)