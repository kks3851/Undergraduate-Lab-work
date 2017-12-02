clc
clear all
close all

format long
fprintf('enter symbols : ');
s=input('');
p=input('enter probabilities : ');
fprintf('enter message : ');
m=input('');

l=length(p);

lowR=zeros(1,l);
for i=2:l
    lowR(i)=lowR(i-1)+p(i-1);
end

highR=ones(1,l);
for i=1:l-1
    highR(i)=lowR(i+1);
end

low=0;
high=1;
for i=1:length(m)
    j=find(s==m(i));
   
    newlow=low+(high-low)*lowR(j);
    newhigh=low+(high-low)*highR(j);
    
    low=newlow;
    high=newhigh;
    
end

code=low;
disp('code : ')
disp(code);


%decoding

disp('decoding...')
temp='';

for i=1:length(m)
    
for j=1:l
    if(code>=lowR(j) && code<=highR(j))
        x=j;
        break;
    end
end

temp(i)=s(x);

code=(code-lowR(x))/((highR(x)-lowR(x)));
%code =  code+0.000000000000001;     % try THIS...
                                    % symbols : 'swim '
                                    % probabilities : [0.5 0.1 0.2 0.1 0.1]
                                    % message : 'swiss miss'
                                    % if output is correct, line 59 is not 
                                    % required, it was an issue related to
                                    % my machine,it may work for you..
                                    %   Enjoy :)
                                    
end
disp(temp);                    