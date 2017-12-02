figure(1)
x1=[4 3 2 1 2 3 4]
y1=length(x1)
a1=0;
b1=0;
for i=1:(y1)
    if (x1(i) == x1(y1-i+1)) 
      b1=b1+1;
    else 
        a1=a1+1;
    end
end

if a1 >= 1 
    disp('Asymmetric')
else
    disp('symmetric')
end

if (rem(y1,2) == 0)
    disp('even')
else
    disp('odd')
end
freqz(x1)

figure(2)
x2=[4 3 2 1 1 2 3 4]
y2=length(x1)
a2=0;
b2=0;
for i=1:(y2)
    if (x2(i) == x2(y2-i+1)) 
      b2=b2+1;
    else 
        a2=a2+1;
    end
end

if a2 >= 1 
    disp('Asymmetric')
else
    disp('symmetric')
end

if (rem(y2,2) == 0)
    disp('even')
else
    disp('odd')
end
freqz(x2)

figure(3)
x3=[-4 -3 -2 -1 1 2 3 4]
y3=length(x3)
a3=0;
b3=0;
for i=1:(y3)
    if (x3(i) == x3(y3-i+1)) 
      b3=b3+1;
    else 
        a3=a3+1;
    end
end

if a3 >= 1 
    disp('Asymmetric')
else
    disp('symmetric')
end

if (rem(y3,2) == 0)
    disp('even')
else
    disp('odd')
end
freqz(x3)
    
figure(4)
x4=[-4 -3 -2 0 2 3 4]
y4=length(x4)
a4=0;
b4=0;
for i=1:(y4)
    if (x4(i) == x4(y4-i+1)) 
      b4=b4+1;
    else 
        a4=a4+1;
    end
end

if a4 >= 1 
    disp('Asymmetric')
else
    disp('symmetric')
end

if (rem(y4,2) == 0)
    disp('even')
else
    disp('odd')
end
freqz(x4)
    