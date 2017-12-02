% clear all;
% clc;
% format long
% fprintf('Input the message to be encoded');
% a=input('');
% l=length(a);
% b=input('Symbols:');
% n=length(b)
% p=input('Enter the probability:');
% for i=1:n
%     array1(i)=b(i);
% end
%  
% for i=1:n
%     j=1;
%     if (i==1)
%         array2(i,j)=0;
%         array2(i,j+1)=p(1,i);
%     else
%         array2(i,j)=array2(i-1,j+1);
%         array2(i,j+1)=p(1,i)+array2(i-1,j+1);
%     end
%     lowr(i)=array2(i,j);
%     highr(i)=array2(i,j+1);
% end
% low=0;
% high=1;
% for i=1:l
%     for j=1:n
%     if(a(i)==b(j))
%         coder=high-low;
%         high=low+((coder)*highr(j));
%         low=low+((coder)*lowr(j));
%     end
%     end
% end
% LOW=low;
% HIGH=high;
% disp('code:')
% disp(LOW)
%  
% %decoding
% code=low;
% disp('decoding...')
% temp='';
% for i=1:l    
% for j=1:n
%     if(code>=lowr(j) && code<=highr(j))
%         x=j;
%         break;
%     end
% end
% temp(i)=b(x);
% code=(code-lowr(x))/((highr(x)-lowr(x)));
% code =  code+0.000000000000001;                                     
% end
% disp(temp); 

clc;
clear all;
close all;
format long
fprintf('the input i');
a=input(' ');
l=length(a);
b=input('symbols');
n=length(b);
p=input('prob=');
for i=1:1:n
    array1(i)=b(i);
end
for i=1:n
    j=1;
    if(i==1)
        array2(i,j)=0;
        array2(i,j+1)=p(1,i);
    else
        array2(i,j)=array2(i-1,j+1);
        array2(i,j+1)=p(1,i)+array2(i-1,j+1);
    end
    lowr(i)=array2(i,j);
    highr(i)=array2(i,j+1);
end
low=0;
high=1;
for i=1:1:l
    for j=1:1:n
        if(a(i)==b(j))
            code=high-low;
             high=low+(code*highr(j));
            low=low+(code*lowr(j));
           
        end
    end
end
disp(low)
%decoding
disp('decoding')
coder=low;
temp=' ';
for i=1:1:l
    for j=1:1:n
    if(coder<=highr(j) && coder>=lowr(j))
        x=j;
        break;
    end
    end

temp(i)=b(x);
coder=(coder-lowr(x))/((highr(x)-lowr(x)));
coder =  coder+0.000000000000001;                                     
end
disp(temp)

