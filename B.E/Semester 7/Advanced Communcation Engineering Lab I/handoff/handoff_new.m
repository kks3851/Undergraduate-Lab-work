clc
clear all
close all

d=0:0.1:50; % Distance of MS from BTS
D=50; % Seperation between BTS1 & BTS2
k1=0;
k2=30;

u1=k1-(k2*log(d)); %Mean 
u2=k1-(k2*log(D-d));

Prmin=input('ENTER Minimum value of Received Power in dB(Prmin) : ');
Prho=input('ENTER Absolute value of received power required for Handoff in dB(Prho) : ');
sigma=input('ENTER Standard deviation of shadow fading (sigma) in dB : ');

Pout=qfunc((u1-Prmin)/sigma).*qfunc((u2-Prmin)/sigma); % Probablity of Outage
plot(d,Pout);
xlabel('Distance (meter)');
ylabel('Probability of outage');
title('Probability of outage vs. distance');


Passg1=qfunc((u1-Prho)/sigma).*qfunc((Prmin-u2)/sigma); % Probability of assignment to BTS1
Passg2=qfunc((u2-Prho)/sigma).*qfunc((Prmin-u1)/sigma); % Probability of assignment to BTS2
figure(2)
plot(d,Passg1);
xlabel('Distance (meter)');
ylabel('Probability of assignment');
title('Probability of assignment to a BTS vs. distance.');
hold on;
plot(d,Passg2,'r');



d=[10 13 16 19];
u1=k1-(k2*log(d));
u2=k1-(k2*log(D-d));
sigma=0:30;

for i=1:4
Pout=qfunc((u1(i)-Prmin)./sigma).*qfunc((u2(i)-Prmin)./sigma);
figure(3)
plot(sigma,Pout);
hold on;
end

xlabel('Standard deviation of shadow fading in dB');
ylabel('Probability of outage');
title('Probability of outage vs. standard deviation of shadow fading');
