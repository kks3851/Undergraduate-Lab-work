clc;
clear all;
p=7;
flag=0;
for i=1:p-1
[ ans, b, product]=sqmod(i,p-1,p)
if(ans ~=1)
    flag= 1;
    break;
end
end
if(flag==0)
    disp('prime')
else if(flag ==1)
        disp('not prime')
    end
end



