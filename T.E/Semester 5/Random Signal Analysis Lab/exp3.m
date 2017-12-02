x=0:0.001:5;
l1=2;
l2=1;
l3=1./1.5;
l4=0.5
y1=exppdf(x,l1);
y2=exppdf(x,l2);
y3=exppdf(x,l3);
y4=exppdf(x,l4);
figure(1)
plot(x,y1,'r')
xlabel('x')
ylabel('Probability')
hold on;
plot(x,y2,'g')
xlabel('x')
ylabel('Probability')
hold on;
plot(x,y3,'b')
xlabel('x')
ylabel('Probability')
hold on;
plot(x,y4,'black')
xlabel('x')
ylabel('Probability')
hold on;
title('Exponential Probability Density Function')

z1=expcdf(x,l1);
z2=expcdf(x,l2);
z3=expcdf(x,l3);
z4=expcdf(x,l4);
figure(2)
plot(x,z1,'r')
xlabel('x')
ylabel('Probability')
hold on;
plot(x,z2,'g')
xlabel('x')
ylabel('Probability')
hold on;
plot(x,z3,'b')
xlabel('x')
ylabel('Probability')
hold on;
plot(x,z4,'black')
xlabel('x')
ylabel('Probability')
hold on;
title('Exponential Cumilative Distribution Function')

figure(3)
x1=-5:0.1:5;
w1=normpdf(x1,0,0.5);
plot(x1,w1,'r')
xlabel('x')
ylabel('Probability')
hold on;
w2=normpdf(x1,0,1);
plot(x1,w2,'g')
xlabel('x')
ylabel('Probability')
hold on;
w3=normpdf(x1,0,2);
plot(x1,w3,'b')
xlabel('x')
ylabel('Probability')
hold on;
w4=normpdf(x1,0,3);
plot(x1,w4,'black')
xlabel('x')
ylabel('Probability')
hold on;
title('Gaussian Probability Density Function')

figure(4)
a1=normcdf(x1,0,0.5);
plot(x1,a1,'r')
xlabel('x')
ylabel('Probability')
hold on;
a2=normcdf(x1,0,1);
plot(x1,a2,'g')
xlabel('x')
ylabel('Probability')
hold on;
a3=normcdf(x1,0,2);
plot(x1,a3,'b')
xlabel('x')
ylabel('Probability')
hold on;
a4=normcdf(x1,0,3);
plot(x1,a4,'black')
xlabel('x')
ylabel('Probability')
hold on;
title('Gaussian Cumilative Distribution Function')
