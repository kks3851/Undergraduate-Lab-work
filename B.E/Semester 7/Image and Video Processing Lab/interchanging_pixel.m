a=imread('cameraman.tif');
a=imresize(a,[256 256]);
b=imread('pout.tif');
b=imresize(b,[256 256]);
 c=a;
 d=b;
 for i=1:256
     for j=1:256
         if(mod(j,2)==0)
             a(i,j)=d(i,j);
         else
             b(i,j)=c(i,j);
         end
     end
 end
 subplot(2,1,1);
 imshow(a);
 subplot(2,1,2);
 imshow(b);


 a=zeros(256,256);
 b=ones(256,256);
 b=b*255;
 a=mat2gray(a);
 figure(2)
 imshow(a);
 b=mat2gray(b);
 figure(3)
 imshow(b);
 c=a;
 d=b;

 % %    for j=1:256
 %         if(mod(j,2)==0&& mod(i,2)==0)
 %             a(i,j)=d(i,j);
 %         else
 %             b(i,j)=c(i,j);
 %         end
 %     end
 % end
 % figure
 % subplot(2,2,1);
 %
 % imshow(a);
 % subplot(2,2,3);
 % imhist(a);
 % subplot(2,2,2);
 % imshow(b);
 % subplot(2,2,4);
 % imhist(b);

 for i=1:256
     for j=1:256
         if(mod(j,2)==0 && mod(i,2)~=0)
             a(i,j)=d(i,j);

         end
     end
 end
 figure(4)
 subplot(2,2,1);
 imshow(a);
 title('50%');
 a1=histeq(a);
 subplot(2,2,2);
 imshow(uint8(a1));
 title('hist 50%');



 b=zeros(256,256);
 a=ones(256,256);
 b=b*255;
 a=mat2gray(a);
 figure(2)
 imshow(a);
 b=mat2gray(b);
 figure(3)
 imshow(b);
 c=a;
 d=b;
 for i=1:256
     for j=1:256
         if(mod(j,32)==0 && mod(i,32)==0)
             a(i,j)=d(i,j);

         end
     end
 end
 figure(4)
 subplot(2,2,3);
 imshow(a);
 title('25% white');
 a1=histeq(a);
 subplot(2,2,4);
 imshow(uint8(a1));
 title('hist 25% white');