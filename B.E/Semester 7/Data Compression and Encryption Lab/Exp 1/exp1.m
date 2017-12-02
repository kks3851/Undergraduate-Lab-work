a1=imread('C:\Users\djsce.student\Desktop\lena.bmp');
a=rgb2gray(a1);
x=size(a);
e1=entropy(a)
imshow(a1)

for i=1:x
    for j=1:(x-1)
        b(i,j)=a(i,j+1)-a(i,j);
    end
end
e2=entropy(b)
figure(2);
imshow(b)
