x=1:5:200;
n=200;
p=0.03;
p1=0.5;
p2=1;
lamb=n*p;
lamb1=n*p1;
lamb2=n*p2;

%binomail function
figure(1)
a=binopdf(x,n,p);
subplot(3,2,1)
stem(a)
grid on;
hold on;
title('Binomial Probability Mass Function with p=0.03')
b=binocdf(x,n,p);
subplot(3,2,2)
stairs(b)
grid on;
hold on;
title('Binomial Cumilative Distribution Function with p=0.03')
a1=binopdf(x,n,p1);
subplot(3,2,3)
stem(a1)
grid on;
hold on;
title('Binomial Probability Mass Function with p=0.5')
b1=binocdf(x,n,p1);
subplot(3,2,4)
stairs(b1)
grid on;
hold on;
title('Binomial Cumilative Distribution Function with p=0.5')
a2=binopdf(x,n,p2);
subplot(3,2,5)
stem(a2)
grid on;
hold on;
title('Binomial Probability Mass Function with p=1')
b2=binocdf(x,n,p2);
subplot(3,2,6)
stairs(b2)
grid on;
hold on;
title('Binomial Cumilative Distribution Function with p=1')

%possion function
figure(2)
c=poisspdf(x,lamb);
subplot(3,2,1)
stem(c)
grid on;
hold on;
title('Poissons Probability Mass Function with p=0.03')
d=poisscdf(x,lamb);
subplot(3,2,2)
stairs(d)
grid on;
hold on;
title('Poissons Cumilative Distribution Function with p=0.03')
c1=poisspdf(x,lamb1);
subplot(3,2,3)
stem(c1)
grid on;
hold on;
title('Poissons Probability Mass Function with p=0.5')
d1=poisscdf(x,lamb1);
subplot(3,2,4)
stairs(d1)
grid on;
hold on;
title('Poissons Cumilative Distribution Function with p=0.5')
c2=poisspdf(x,lamb2);
subplot(3,2,5)
stem(c2)
grid on;
hold on;
title('Poissons Probability Mass Function with p=1')
d2=poisscdf(x,lamb2);
subplot(3,2,6)
stairs(d2)
grid on;
hold on;
title('Poissons Cumilative Distribution Function with p=1')

%geometric function
figure(3)
e=geopdf(x,p);
subplot(3,2,1)
stem(e)
grid on;
hold on;
title('Geometric Probability Mass Function with p=0.03')
f=geopdf(x,p);
subplot(3,2,2)
stairs(f)
grid on;
hold on;
title('Geometric Cumilative Distribution Function with p=0.03')
e1=geopdf(x,p1);
subplot(3,2,3)
stem(e1)
grid on;
hold on;
title('Geometric Probability Mass Function with p=0.5')
f1=geocdf(x,p1);
subplot(3,2,4)
stairs(f1)
grid on;
hold on;
title('Geometric Cumilative Distribution Function with p=0.5')
e2=geopdf(x,p2);
subplot(3,2,5)
stem(e2)
grid on;
hold on;
title('Geometric Probability Mass Function with p=1')
f2=geocdf(x,p2);
subplot(3,2,6)
stairs(f2)
grid on;
hold on;
title('Geometric Cumilative Distribution Function with p=1')
