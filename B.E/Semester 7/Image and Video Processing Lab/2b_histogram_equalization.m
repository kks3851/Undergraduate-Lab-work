a=imread('lena.jpg');
[m n]=size(a);
subplot(2,2,1)
imshow(a)
title('Original Image')
%to find total no of pixels for a particular gray level 
for k=1:256
   c=0;
    for i=1:m
    for j=1:n
        b=a(i,j);
        if(b==(k-1))
            c=c+1;
            
        end
    end
   end
d(k)=c
end
subplot(2,2,3)
bar(d)% histogram 
title('Histogram')
s=sum(d);
%division of all count by sum
for i=1:256
    e(i)=(d(i)/s);
end
% taking cdf
cdf(1)=e(1);
for i=2:1:255
    cdf(i)=e(i)+cdf(i-1);
end
new=round(cdf*255);
new=new+1; % to eliminate zero
%mapping of image
z=zeros(1,256);
for p=1:1:256
    for q=1:1:256
        temp=(a(p,q)+1);
        b(p,q)=new(temp);
        t=b(p,q);
        z(t)=z(t)+1;
    end
end
b=b-1;
subplot(2,2,2)
imshow(uint8(b))
title('Image after Histogram Equalization')
subplot(2,2,4)
bar(z)
title('Histogram Equalized')