%length=2.5
f=(10^5:10000:10^9);
rs=4.84*(sqrt(f))*10^-6;
a=2.032*(10e-4);
u=1.2*(10e-6);
l1=5*(10e-2);
L1=(u*l1*(log((2*l1)/a)-1))/(2*pi);
c=47*(10e-12);
re=(3.39*(10e+8))./f;
w=2*pi.*f;
z1=1i.*w*L1;
z2=((1i.*w*c)+(1./re));
z3=1./z2;
z4=rs+z1+z3;
loglog(f,abs(z4),'g');
grid on;
hold on;
xlabel('Frequency');
ylabel('Impedance');
title(' HIGH FREQUENCY RESPONSE OF CAPACITOR');


%length=1.25
f1=(10^5:10000:10^9);
l2=2.5*(10e-2);
L2=(u*l2*(log((2*l2)/a)-1))/(2*pi);
c=47*(10e-12);
re1=(3.39*(10e+8))./f1;
rs1=9.68*(sqrt(f1))*10^-6;
w1=2*pi.*f1;
z11=1i.*w1*L2;
z22=((1i.*w1*c)+(1./re1));
z33=1./z22;
z44=rs1+z11+z33;
loglog(f1,abs(z44));
grid on;
hold on;
xlabel('Frequency');
ylabel('Impedance');
title(' HIGH FREQUENCY RESPONSE OF CAPACITOR');