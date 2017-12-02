n=4;
l=1;
d=l/2;
d1=l/4;
d2=l;
d3=1.5*l;
k=(2*pi)/l;
t1=0:0.01:360;
sil=(k*d.*(cos(t1)-1));
si1l=k*d1.*(cos(t1)-1);
si2l=k*d2.*(cos(t1)-1);
si3l=k*d3.*(cos(t1)-1);
afl=(sin((n.*sil)./2))./(n.*sin(sil./2));
af3l=(sin((n.*si3l)./2))./(n.*sin(si3l./2));
af1l=(sin((n.*si1l)./2))./(n.*sin(si1l./2));
af2l=(sin((n.*si2l)./2))./(n.*sin(si2l./2));
si=(k*d.*(cos(t1)+1));
si1=k*d1.*(cos(t1)+1);
si2=k*d2.*(cos(t1)+1);
si3=k*d3.*(cos(t1)+1);
af=(sin((n.*si)./2))./(n.*sin(si./2));
af3=(sin((n.*si3)./2))./(n.*sin(si3./2));
af1=(sin((n.*si1)./2))./(n.*sin(si1./2));
af2=(sin((n.*si2)./2))./(n.*sin(si2./2));
figure(1);
subplot(2,2,3)
polar(t1,af);
title('Endfire pattern for d=l/2 for n=4')
hold on;
subplot(2,2,1)
polar(t1,af1);
title('Endfire pattern for d=l/4 for n=4')
hold on;
subplot(2,2,4)
polar(t1,afl);
title('Endfire pattern for d=l/2 for n=4')
hold on;
subplot(2,2,2)
polar(t1,af1l);
title('Endfire pattern for d=l/4 for n=4')
hold on;
figure(2);
subplot(2,2,1)
polar(t1,af2);
title('Endfire pattern for d=l for n=4')
hold on;
subplot(2,2,3)
polar(t1,af3);
title('Endfire pattern for d=3*l/2 for n=4')
hold on;
subplot(2,2,2)
polar(t1,af2l);
title('Endfire pattern for d=l for n=4')
hold on;
subplot(2,2,4)
polar(t1,af3l);
title('Endfire pattern for d=3*l/2 for n=4')
hold on;

n0=2;
l=1;
d=l/2;
d1=l/4;
d2=l;
d3=1.5*l;
k=(2*pi)/l;
t1=0:0.01:360;
sil=(k*d.*(cos(t1)-1));
si1l=k*d1.*(cos(t1)-1);
si2l=k*d2.*(cos(t1)-1);
si3l=k*d3.*(cos(t1)-1);
afl=(sin((n0.*sil)./2))./(n0.*sin(sil./2));
af3l=(sin((n0.*si3l)./2))./(n0.*sin(si3l./2));
af1l=(sin((n0.*si1l)./2))./(n0.*sin(si1l./2));
af2l=(sin((n0.*si2l)./2))./(n0.*sin(si2l./2));
si=(k*d.*(cos(t1)+1));
si1=k*d1.*(cos(t1)+1);
si2=k*d2.*(cos(t1)+1);
si3=k*d3.*(cos(t1)+1);
af=(sin((n0.*si)./2))./(n0.*sin(si./2));
af3=(sin((n0.*si3)./2))./(n0.*sin(si3./2));
af1=(sin((n0.*si1)./2))./(n0.*sin(si1./2));
af2=(sin((n0.*si2)./2))./(n0.*sin(si2./2));
figure(3);
subplot(2,2,3)
polar(t1,af);
title('Endfire pattern for d=l/2 for n=2')
hold on;
subplot(2,2,1)
polar(t1,af1);
title('Endfire pattern for d=l/4 for n=2')
hold on;
subplot(2,2,4)
polar(t1,afl);
title('Endfire pattern for d=l/2 for n=2')
hold on;
subplot(2,2,2)
polar(t1,af1l);
title('Endfire pattern for d=l/4 for n=2')
hold on;
figure(4);
subplot(2,2,1)
polar(t1,af2);
title('Endfire pattern for d=l for n=2')
hold on;
subplot(2,2,3)
polar(t1,af3);
title('Endfire pattern for d=3*l/2 for n=2')
hold on;
subplot(2,2,2)
polar(t1,af2l);
title('Endfire pattern for d=l for n=2')
hold on;
subplot(2,2,4)
polar(t1,af3l);
title('Endfire pattern for d=3*l/2 for n=2')
hold on;

n1=8;
l=1;
d=l/2;
d1=l/4;
d2=l;
d3=1.5*l;
k=(2*pi)/l;
t1=0:0.01:360;
sil=(k*d.*(cos(t1)-1));
si1l=k*d1.*(cos(t1)-1);
si2l=k*d2.*(cos(t1)-1);
si3l=k*d3.*(cos(t1)-1);
afl=(sin((n1.*sil)./2))./(n1.*sin(sil./2));
af3l=(sin((n1.*si3l)./2))./(n1.*sin(si3l./2));
af1l=(sin((n1.*si1l)./2))./(n1.*sin(si1l./2));
af2l=(sin((n1.*si2l)./2))./(n1.*sin(si2l./2));
si=(k*d.*(cos(t1)+1));
si1=k*d1.*(cos(t1)+1);
si2=k*d2.*(cos(t1)+1);
si3=k*d3.*(cos(t1)+1);
af=(sin((n1.*si)./2))./(n1.*sin(si./2));
af3=(sin((n1.*si3)./2))./(n1.*sin(si3./2));
af1=(sin((n1.*si1)./2))./(n1.*sin(si1./2));
af2=(sin((n1.*si2)./2))./(n1.*sin(si2./2));
figure(5);
subplot(2,2,3)
polar(t1,af);
title('Endfire pattern for d=l/2 for n=8')
hold on;
subplot(2,2,1)
polar(t1,af1);
title('Endfire pattern for d=l/4 for n=8')
hold on;
subplot(2,2,4)
polar(t1,afl);
title('Endfire pattern for d=l/2 for n=8')
hold on;
subplot(2,2,2)
polar(t1,af1l);
title('Endfire pattern for d=l/4 for n=8')
hold on;
figure(6);
subplot(2,2,1)
polar(t1,af2);
title('Endfire pattern for d=l for n=8')
hold on;
subplot(2,2,3)
polar(t1,af3);
title('Endfire pattern for d=3*l/2 for n=8')
hold on;
subplot(2,2,2)
polar(t1,af2l);
title('Endfire pattern for d=l for n=8')
hold on;
subplot(2,2,4)
polar(t1,af3l);
title('Endfire pattern for d=3*l/2 for n=8')
hold on;

n2=12;
l=1;
d=l/2;
d1=l/4;
d2=l;
d3=1.5*l;
k=(2*pi)/l;
t1=0:0.01:360;
sil=(k*d.*(cos(t1)-1));
si1l=k*d1.*(cos(t1)-1);
si2l=k*d2.*(cos(t1)-1);
si3l=k*d3.*(cos(t1)-1);
afl=(sin((n2.*sil)./2))./(n2.*sin(sil./2));
af3l=(sin((n2.*si3l)./2))./(n2.*sin(si3l./2));
af1l=(sin((n2.*si1l)./2))./(n2.*sin(si1l./2));
af2l=(sin((n2.*si2l)./2))./(n2.*sin(si2l./2));
si=(k*d.*(cos(t1)+1));
si1=k*d1.*(cos(t1)+1);
si2=k*d2.*(cos(t1)+1);
si3=k*d3.*(cos(t1)+1);
af=(sin((n2.*si)./2))./(n2.*sin(si./2));
af3=(sin((n2.*si3)./2))./(n2.*sin(si3./2));
af1=(sin((n2.*si1)./2))./(n2.*sin(si1./2));
af2=(sin((n2.*si2)./2))./(n2.*sin(si2./2));
figure(7);
subplot(2,2,3)
polar(t1,af);
title('Endfire pattern for d=l/2 for n=12')
hold on;
subplot(2,2,1)
polar(t1,af1);
title('Endfire pattern for d=l/4 for n=12')
hold on;
subplot(2,2,4)
polar(t1,afl);
title('Endfire pattern for d=l/2 for n=12')
hold on;
subplot(2,2,2)
polar(t1,af1l);
title('Endfire pattern for d=l/4 for n=12')
hold on;
figure(8);
subplot(2,2,1)
polar(t1,af2);
title('Endfire pattern for d=l for n=12')
hold on;
subplot(2,2,3)
polar(t1,af3);
title('Endfire pattern for d=3*l/2 for n=12')
hold on;
subplot(2,2,2)
polar(t1,af2l);
title('Endfire pattern for d=l for n=12')
hold on;
subplot(2,2,4)
polar(t1,af3l);
title('Endfire pattern for d=3*l/2 for n=12')
hold on;

