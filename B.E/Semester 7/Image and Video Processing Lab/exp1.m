a=imread('C:\Users\djsce.student\Desktop\lena.jpg')
b=imread('C:\Users\djsce.student\Desktop\lena.jpg')
c=imread('C:\Users\djsce.student\Desktop\lena.jpg')
d=imread('C:\Users\djsce.student\Desktop\lena.jpg')
e=imread('C:\Users\djsce.student\Desktop\lena.jpg')
f=imread('C:\Users\djsce.student\Desktop\lena.jpg')
% Digital Negative
figure(1)
b=255-a;
imshow(b);
title('Digital Negative')
[m n]=size(a);

thresholding
figure(2);
T=127;
for i=1:256
    for j=1:256
        if c(i,j)< T
            c(i,j)=0;
        else
            c(i,j)=255;
        end
    end
end
imshow(c)
title('Thresholding')

% Grey Level Slicing without background
figure(3);
L=256;
for i=1:256
    for j=1:256
        if d(i,j)< (L-1)/3
            d(i,j)=0;
        else if d(i,j)> (2*(L-1))/3
            d(i,j)=0;
        else
            d(i,j)=255;
        end
    end
    end
end
subplot(2,1,1)
imshow(d)
title('Grey level slicing without brackground ')
% 
% Grey Level Slicing with background
L=256;
for i=1:256
    for j=1:256
        if (e(i,j)>((L-1)/3) && e(i,j)<(2*(L-1)/3))
            e(i,j)=L-1;
        else
            e(i,j)=e(i,j);
        end
    end
end
subplot(2,1,1)
imshow(e)
title('Grey level slicing with brackground ')

% Bit Plane Slicing
figure(4);
for i=1:8
    a1= bitget(a,i);
    figure(i)
    imshow(logical(a1));
end

% Contrast Streching
figure(5);
L=256;
for i=1:256
    for j=1:256
        if f(i,j)<((L-1)/3)
            f1(i,j)=0.5*f(i,j);
        else if f(i,j)<(2*(L-1)/3)
            f1(i,j)=(0.5*((L-1)/3))+(2*(f(i,j)-((L-1)/3)));
            else
                f1(i,j)=(0.5*(f(i,j)-(2*(L-1)/3)))+(0.5*((L-1)/3))+(2*(((L-1)/3)-(2*(L-1)/3)));
            end
        end
    end
end
imshow(f1)
title('Contrast Streching ')


    
   
