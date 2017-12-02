% 2^n*u(n)
n=-3:3
for i=1:length(n)
    if i<4
        x(i)=0;
    else
        x(i)=1;
    end
end
y=(2.^n).*x
subplot(5,1,1)
stem(n,y);

% 2^n*u(n-1)
n=-3:3
for i=1:length(n)
    if i<5
        x(i)=0;
    else
        x(i)=1;
    end
end
y1=(2.^n).*x
subplot(5,1,2)
stem(n,y1);

% 2^n*u(n+1)
n=-3:3
for i=1:length(n)
    if i<3
        x(i)=0;
    else
        x(i)=1;
    end
end
y2=(2.^n).*x
subplot(5,1,3)
stem(n,y2);

% 2^n*u(-n-1)
n=-3:3
for i=1:length(n)
    if i>3
        x(i)=0;
    else
        x(i)=1;
    end
end
y3=(2.^n).*x
subplot(5,1,4)
stem(n,y3);

% 2^n*u(-n+1)
n=-3:3
for i=1:length(n)
    if i>5
        x(i)=0;
    else
        x(i)=1;
    end
end
y4=(2.^n).*x
subplot(5,1,5)
stem(n,y4);