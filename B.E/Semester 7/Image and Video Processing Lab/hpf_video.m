clc
trafficObj = mmreader('traffic.mj2');
a = rgb2gray(read(trafficObj,65));
imshow(a);
a=imresize(a,[256 256]);
subplot(1,3,1)
[m n]=size(a)

do=50;
n=2;for i=1:256
    for j=1:256
        d(i,j)=sqrt((i-(128))^2+(j-(128))^2);
        if d(i,j)>do
            h(i,j)=0;
        else
             h(i,j)=1;
        end
    end
end


figure();
imshow((h));




b=fft2(a);
c=fftshift(b);
z=c.*h;
figure();
imshow(uint8(20*log(1+abs(ifft2(z)))));


mh=[-1 -1 -1;-1 8 -1;-1]

% 
% for u=1:1:256
% for v=1:1:256
% D(u,v)=sqrt(((u-128)^2)+((v-128)^2));
% H1(u,v)=1+(do/d(u,v))^4;
% H1(u,v)=1./(H1(u,v));
% end
% end
% subplot(1,3,2)
% imshow(H1)
% H2=H1.*c;
% 
% M2=ifft2(H2);
% m2=abs(M2)
% subplot(1,3,3)
% imshow((m2));
