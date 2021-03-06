Em=1;
Ec=5;
fm=100;
Fc=500;
Fs=8000;
t=0:0.0001:0.2;
am=(Ec.*cos(2*pi*Fc.*t))+(0.5*Em.*cos(2*pi*(Fc+fm).*t))+(0.5*Em.*cos(2*pi*(Fc-fm).*t));
am1=amdemod(am,Fc,Fs,0,5);
subplot(2,1,1)
plot(t,am);
title('DSB-FC')
xlabel('time')
ylabel('Amlitude')
subplot(2,1,2)
plot(t,am1);
title('DSB-SC')
xlabel('time')
ylabel('Amlitude')