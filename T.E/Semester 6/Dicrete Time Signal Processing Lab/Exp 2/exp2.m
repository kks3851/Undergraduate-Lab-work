%part a
figure(1);
w=(0:1:100)*(pi/100)
H=exp(1i.*w)./(exp(1i.*w)-0.8)
subplot(2,1,1)
plot(w,abs(H))
grid on
xlabel('Frequency')
ylabel('|H|')
title('Magnitude Response') 
subplot(2,1,2)
plot(w,angle(H))
grid on
xlabel('Frequency')
ylabel('Phase')
title('Phase Response')

%part b
figure(2);
n=0:1:100
w=0.05*pi
%H=exp(i*w)/(exp(i*w)-0.8)
a=[1 -0.8]
b=1
x=1*cos(w.*n)
[y]=filter(b,a,x)
subplot(2,1,1)
stem(x)
grid on
xlabel('n')
ylabel('x(n)')
title('Input Sequence')
 %y=4.09*cos(0.05*pi*(n-3.42))
subplot(2,1,2)
stem(y)
grid on
xlabel('n')
ylabel('x(n)')
title('Output Sequence')
