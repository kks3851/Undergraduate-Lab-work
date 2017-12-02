a=[7 8 9 12 7;1 0 10 11 3;2 4 6 6 4;1 2 3 4 9;15 15 14 13 12]
[m n]=size(a)
x=1:1:5
%to find total no of pixels for a particular gray level 
for k=1:16
   c=0;
    for i=1:m
    for j=1:n
        b=a(i,j);
        if(b==(k-1))
            c=c+1;
            
        end
    end
   end
d(k)=c;
end
figure(4);
plot(x,d)
% % s=sum(d);
% % %division of all count by sum
% % for i=1:256
% %     e(i)=(d(i)/s);
% % end
% % % taking cdf
% % cdf(1)=e(1);
% % for i=2:1:255
% %     cdf(i)=e(i)+cdf(i-1);
% % end
% % new=round(cdf*255);
% % new=new+1; % to eliminate zero
% % %mapping of image
% % z=zeros(1,256);
% % for p=1:1:256
% %     for q=1:1:256
% %         temp=(a(p,q)+1);
% %         b(p,q)=new(temp);
% %         t=b(p,q);
% %         z(t)=z(t)+1;
% %     end
% % end
% % b=b-1;
% % figure(5);
% % imshow(uint8(b))
% % figure(6);
% % bar(z)