clc;
clear all;
close all;
a1=imread('cam.png');
a=imresize(a1,[256 256]);
subplot(1,2,1)
imshow(a)
title('Original Image')

for i=1:8:256
    for j=1:8:256
        b=a(i:i+7,j:j+7);
        b;
        c=b;
        d=dct2(c);
        d1=d;
        thr=max(d1)/10;
        
        for k=1:1:8
        for l=1:1:8
            if d1(k,l)<thr
                d1(k,l)=0;
            elseif d1(k,l)>=thr
                d1(k,l)=d1(k,l);
            end
        end
        end
        m(i:i+7,j:j+7)=idct2(d1);
        m(i:i+7,j:j+7)=m(i:i+7,j:j+7);
    end
end
m=uint8(m);
subplot(1,2,2)
imshow(m)
title('DCT Image')
h=mse(a,m);