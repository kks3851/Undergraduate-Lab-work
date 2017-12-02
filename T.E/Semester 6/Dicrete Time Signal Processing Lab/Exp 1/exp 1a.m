% cos(0.125*n*pi)
n=-50:50
y=cos(0.125.*n.*pi);
t=2/(0.125)
subplot(2,1,1)
stem(n,y);
title('cos(0.125*n*pi)');

% cos(0.5*n*pi)
n=-25:25
y1=cos(0.5.*n);
t1=(2*pi)./(0.5)
subplot(2,1,2)
stem(n,y1);
title('cos(0.5*n*pi)');
