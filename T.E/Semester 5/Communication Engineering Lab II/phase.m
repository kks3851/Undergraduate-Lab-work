n=4;
l=1;
b=(k.*d.*cos(pi/4));
d=l/2;
d1=l/4;
d2=l;
d3=1.5*l;
k=(2*pi)/l;
t1=0:0.01:360;
si=((k*d.*cos(t1))-b);
si1=((k*d1.*(cos(t1)))-b);
si2=((k*d2.*(cos(t1)))-b);
si3=((k*d3.*(cos(t1)))-b);
af=(sin((n.*si)./2))./(n.*sin(si./2));
af3=(sin((n.*si3)./2))./(n.*sin(si3./2));
af1=(sin((n.*si1)./2))./(n.*sin(si1./2));
af2=(sin((n.*si2)./2))./(n.*sin(si2./2));
figure(1);
subplot(2,2,2)
polar(t1,af);
title('Phase array pattern for d=l/2 for n=4 for theta=45')
hold on;
subplot(2,2,1)
polar(t1,af1);
title('Phase array pattern for d=l/4 for n=4 for theta=45')
hold on;
subplot(2,2,3)
polar(t1,af2);
title('Phase array pattern for d=l for n=4 for theta=45')
hold on;
subplot(2,2,4)
polar(t1,af3);
title('Phase array pattern for d=3*l/2 for n=4 for theta=45')
hold on;

n=4;
l=1;
b=(k.*d.*cos(3*pi/4));
d=l/2;
d1=l/4;
d2=l;
d3=1.5*l;
k=(2*pi)/l;
t1=0:0.01:360;
si=((k*d.*cos(t1))-b);
si1=((k*d1.*(cos(t1)))-b);
si2=((k*d2.*(cos(t1)))-b);
si3=((k*d3.*(cos(t1)))-b);
af=(sin((n.*si)./2))./(n.*sin(si./2));
af3=(sin((n.*si3)./2))./(n.*sin(si3./2));
af1=(sin((n.*si1)./2))./(n.*sin(si1./2));
af2=(sin((n.*si2)./2))./(n.*sin(si2./2));
figure(2);
subplot(2,2,2)
polar(t1,af);
title('Phase array pattern for d=l/2 for n=4 for theta=135')
hold on;
subplot(2,2,1)
polar(t1,af1);
title('Phase array pattern for d=l/4 for n=4 for theta=135')
hold on;
subplot(2,2,3)
polar(t1,af2);
title('Phase array pattern for d=l for n=4 for theta=135')
hold on;
subplot(2,2,4)
polar(t1,af3);
title('Phase array pattern for d=3*l/2 for n=4 fot theta=135')
hold on;

n=4;
l=1;
b=(k.*d.*cos(5*pi/4));
d=l/2;
d1=l/4;
d2=l;
d3=1.5*l;
k=(2*pi)/l;
t1=0:0.01:360;
si=((k*d.*cos(t1))-b);
si1=((k*d1.*(cos(t1)))-b);
si2=((k*d2.*(cos(t1)))-b);
si3=((k*d3.*(cos(t1)))-b);
af=(sin((n.*si)./2))./(n.*sin(si./2));
af3=(sin((n.*si3)./2))./(n.*sin(si3./2));
af1=(sin((n.*si1)./2))./(n.*sin(si1./2));
af2=(sin((n.*si2)./2))./(n.*sin(si2./2));
figure(3);
subplot(2,2,2)
polar(t1,af);
title('Phase array pattern for d=l/2 for n=4 for theta=225')
hold on;
subplot(2,2,1)
polar(t1,af1);
title('Phase array pattern for d=l/4 for n=4 for theta=225')
hold on;
subplot(2,2,3)
polar(t1,af2);
title('Phase array pattern for d=l for n=4 for theta=225')
hold on;
subplot(2,2,4)
polar(t1,af3);
title('Phase array pattern for d=3*l/2 for n=4 for theta=225')
hold on;

n=4;
l=1;
b=(k.*d.*cos(7*pi/4));
d=l/2;
d1=l/4;
d2=l;
d3=1.5*l;
k=(2*pi)/l;
t1=0:0.01:360;
si=((k*d.*cos(t1))-b);
si1=((k*d1.*(cos(t1)))-b);
si2=((k*d2.*(cos(t1)))-b);
si3=((k*d3.*(cos(t1)))-b);
af=(sin((n.*si)./2))./(n.*sin(si./2));
af3=(sin((n.*si3)./2))./(n.*sin(si3./2));
af1=(sin((n.*si1)./2))./(n.*sin(si1./2));
af2=(sin((n.*si2)./2))./(n.*sin(si2./2));
figure(4);
subplot(2,2,2)
polar(t1,af);
title('Phase array pattern for d=l/2 for n=4 for theta=315')
hold on;
subplot(2,2,1)
polar(t1,af1);
title('Phase array pattern for d=l/4 for n=4 for theta=315')
hold on;
subplot(2,2,3)
polar(t1,af2);
title('Phase array pattern for d=l for n=4 for theta=315')
hold on;
subplot(2,2,4)
polar(t1,af3);
title('Phase array pattern for d=3*l/2 for n=4 fot theta=315')
hold on;