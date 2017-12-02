% delta modulation of single tone signal
clear;
step=0.1;%step size
fm=10; %modulating signal frequency
fs=1000; % sampling frequency
t=0:1/fs:(2/fm)-(1/fs); %time
x=sin(2*pi*fm*t); %modulating signal

x1(1)=0;
d1(1)=0;
for n=2:length(x),
    dm(n)=sign(x(n)-x1(n-1));
    x1(n)=x1(n-1)+dm(n)*step;
end
subplot(2,1,1);
plot(t,dm,t,x,'--');
axis([0 0.1 -1.2 1.2])
title('Delta Modulation');

%delta demodulation
y=0;
for n=2:length(x),
    y(n)=y(n-1)+dm(n)*step;
end
subplot(2,1,2);
plot(t,y);
axis([0 0.1 -1.2 1.2])
title('Delta Demodulation')