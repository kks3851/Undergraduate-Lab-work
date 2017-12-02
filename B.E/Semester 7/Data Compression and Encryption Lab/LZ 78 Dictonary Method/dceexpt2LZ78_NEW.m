%CONSTRAINTS
%Maximum horizontal match=no of diff symbols
%maximum vertical length of dict=50
clc
clear all

%initialising the dict as ' ' to avoid matrix overload
for i=1:50
    for j=1:10
        dict(i,j)=' ';
    end
end

% for i=1:50
%         code(i,1)=0;
%         code(i,2)=0;
%     
% end
count=zeros(1,10);
fprintf('Input the message to be encoded\n');
a=input('');
l=length(a);

i=1;
x=1;
while(i<=l)
    
    for iq=1:20                      %initialise matching counter to zero
        count(iq)=0;
    end
    lendict=0;
    %Finding the length of the dictionary
    for z=1:50                  %cal length dict with initial letters
        if(dict(z,1)~=' ')
            lendict=lendict+1;
        end
    end
    
    %Finding the vertical match
    if(lendict==0)
        dict(1,1)=a(i);
        code(1,1)=0;
        code(1,2)=a(1);
    else
    for j=1:lendict
        
        if(a(i)==dict(j,1))   %first letter matches
            count(j)=1;
            
           %Finding the no of horizontal matches if any
            for w=1:5   %max match upto 6 letters 5+1   
                if (i+w)<=l
                if (a(i+w)==dict(j,w+1))
                    count(j)=count(j)+1;% count hw many letters match
                else
                    break;
                end
                end
            end
        end   % no match go to next dict entry
    end
    
    end
    
    y=max(count);
    if(y==0)
        code(x,1)=0;
        code(x,2)=(a(i));
        else
 
        for h=1:lendict+1
            if (y==count(h))
            code(x,1)=h;
            code(x,2)=a(i+y);
            break;
            end
        end
    end    
     
     x=x+1;
     
     %Updation of the dictionary
    for z=1:(y+1)
        dict(lendict+1,z)= a(i+z-1);
    end   
       i=i+y+1;
     
end


dict=dict(1:lendict+1,:);
disp('    dictionary');
disp(dict);

temp=cell(1,2);
temp{1,1}=code(:,1);
temp{1,2}=char(code(:,2));
output=strcat(num2str(temp{1,1}),temp{1,2});
disp('    code');
disp(output);
