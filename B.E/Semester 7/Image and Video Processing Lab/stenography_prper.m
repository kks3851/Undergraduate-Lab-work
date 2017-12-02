clc
close all
clear all

a=imread('C:\Users\DELL\Desktop\cam.png')
b=imread('C:\Users\DELL\Desktop\abc.jpg')
c=dec2bin(a);
d=dec2bin(b);
%stenography
for h=1:65536    
c(h,8)=d(h,1);
end
t=bin2dec(c);
f=reshape(t,256,256);
e=uint8(f);
subplot(2,2,1)
imshow(a);
title('Original Image')
subplot(2,2,3)
imshow(e);
title('Stenography')
subplot(2,2,2)
imshow(b);
title('Hidden Image')
k=1;
for i=1:256
    for j=1:256
        if(c(k,8)=='1')
            q(j,i)=255;
        else
            q(j,i)=0;
        end
        k=k+1;
    end
end
q=uint8(q);
subplot(2,2,4)
imshow(q);
title('Restored Image')

figure(2);
a1=imread('C:\Users\DELL\Desktop\cam.png')
b1=imread('C:\Users\DELL\Desktop\abc.jpg')
c1=dec2bin(a1);
d1=dec2bin(b1);
%watermarking
for h1=1:1:65536
    c1(h1,4)=d1(h1,1);
    c1(h1,5)=d1(h1,2);
    c1(h1,6)=d1(h1,3);
end
k=1;
t1=bin2dec(c1);
f1=reshape(t1,256,256);
e1=uint8(f1);
subplot(2,2,1)
imshow(a1);
title('Original Image')
subplot(2,2,3)
imshow(e1);
title('Water Marking')
subplot(2,2,2)
imshow(b1);
title('Hidden Image')
k=1;
for i=1:256
    for j=1:256
        if(c1(k,4)=='1')
            q1(j,i)=255;
        else
            q1(j,i)=0;
        end
        if(c1(k,5)=='1')
            q1(j,i)=255;
        else
            q1(j,i)=0;
        end
        if(c1(k,6)=='1')
            q1(j,i)=255;
        else
            q1(j,i)=0;
        end

        k=k+1;
    end
end
q1=uint8(q1);
subplot(2,2,4)
imshow(q1);
title('Hidden Image')