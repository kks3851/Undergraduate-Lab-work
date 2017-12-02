% u(n)
n=-3:8
for i=1:length(n)
    if i<4
        x(i)=2;
    else
        x(i)=1;
    end
end
subplot(4,1,1)
stem(n,x)

n=0:5
for i=1:length(n)
    if i<2
        x1(i)=0;
    else
        x1(i)=i;
    end
end
subplot(4,1,2)
stem(n,x1)

n=0:8
for i=1:length(n)
    if i<5
        x2(i)=7-i;
    else
        x2(i)=2;
    end
end
subplot(4,1,3)
stem(n,x2)

n=-3:3
u=[-2 -2 4 4 4 -2 -2]
subplot(4,1,4)
stem(n,u)
