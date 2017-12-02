clear all;
clc;
a=imread('C:\Users\admin\Downloads\lena.jpg')
[m n]=size(a)
%substitution
k1=8;
for i=1:m
    for j=1:n
        c(i,j)=mod((a(i,j)+k1),256);
    end
end
subplot(2,2,1)
imshow(a)
title('Original Image')
subplot(2,2,2)
imshow(uint8(c))
title('Substituted Image')
% transposition
k2=randperm(n)
%row
for i=1:m
    b(i,:)=c(k2(1,i),:);
end
subplot(2,2,3)
imshow(uint8(b))
title('Transposition Image')
%column
for i=1:m
    d(:,i)=b(:,k2(1,i));
end
subplot(2,2,4)
imshow(uint8(d))
title('Encrypted Image')