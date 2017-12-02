clc
clear all
close all

a=imread('cameraman.tif');
c=zeros(256,256);
y=[2 5 10 15 25 50 100]
mse=zeros(1,7)
for k=1:1:7
    
for i=1:8:256
    for j=1:8:256
        a1=a(i:i+7,j:j+7)
        b=dct2(a1)
        thr=max(max(abs(b)))/y(1,k)
        for i1=1:8
            for j1=1:8
                if b(i1,j1)<thr
                    b(i1,j1)=0;
                end
            end
        end
        bo=idct2(b);
        c(i:i+7,j:j+7)=bo;
    end
end
figure(k);
imshow(uint8(c));

e=zeros(256,256);
sum=0;                                                                                                         
for i=1:256
    for j=1:256
        e(i,j)=(a(i,j)-c(i,j));
        sum = sum + e(i,j)*e(i,j);
    end
end
sum
mse(1,k)=(sum/(256*256));
end            
figure(9)
plot(y,mse)
xlabel('thr factor')
ylabel('mse')