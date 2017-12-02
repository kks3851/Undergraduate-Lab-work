L=[0:0.1:9];
a=length(L);
w=100;
for i=1:1:a
    if L(i)>0 & L(i)<(2*pi)
        f(i)=1/(2*pi);
    else
        f(i)=0;
    end;
end;
t=[1:a];
x=L.*cos(w*t);
y=L.*sin((w*t));
rxx=xcorr2(x);
ryy=xcorr2(y);
rxy=xcorr2(x,y);
cxy=(cov(x,y));
figure(1);
plot(L,f);
xlabel('L');
ylabel('P');
title('Uniformly Distributed Random Variable');
figure(2);
subplot(2,1,1)
plot(x);
xlabel('t');
ylabel('A');
title('Random Variable X');
subplot(2,1,2)
plot(y);
xlabel('t');
ylabel('A');
title('Random Variable Y');
figure(3);
subplot(2,1,1)
plot(rxx);
xlabel('X');
ylabel('Rxx');
title('Autocorrelation of X');
subplot(2,1,2)
plot(ryy);
xlabel('Y');
ylabel('Ryy');
title('Autocorrelation of Y');
figure(4);
subplot(2,1,1)
plot(rxy);
xlabel('XY');
ylabel('Rxy');
title('Crosscorelation of X and Y');
subplot(2,1,2)
plot(cxy);
xlabel('XY');
ylabel('Cxy');
title('Crossvariance of X and Y');
