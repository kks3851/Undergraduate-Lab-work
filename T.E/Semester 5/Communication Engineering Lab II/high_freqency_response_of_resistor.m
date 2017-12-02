R=       ; %given
C=       ; %given
L1=      ; %from the solved part
f=1000:10000:10000000000;
z1=(1i*2*3.14*f*L1)+(1./((1i*2*3.14*f*C)+(1./R)));
semilogx(f,abs(z1));
grid on;
hold on;
xlabel('Frequency');
ylabel('Impedance');
title(' HIGH FREQUENCY RESPONSE OF RESISTOR');