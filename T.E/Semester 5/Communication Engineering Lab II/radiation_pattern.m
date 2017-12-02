y = pi./50;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(1);
polar(x,U);
title('Radiation Pattern for l=lamda/50');
figure(9);
plot(x,U)

y = pi./20;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(2);
polar(x,U);
title('Radiation Pattern for l=lamda/20');

y = pi./10;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(10);
polar(x,U);
title('Radiation Pattern for l=lamda/10');

y = pi./4;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(3);
polar(x,U);
title('Radiation Pattern for l=lamda/4');

y = pi./2;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(4);
polar(x,U);
title('Radiation Pattern for l=lamda/2');

y = pi;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(5);
polar(x,U);
title('Radiation Pattern for l=lamda');

y = 3*pi./2;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(6);
polar(x,U);
title('Radiation Pattern for l=3*lamda/2');

y = pi*2;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(7);
polar(x,U);
title('Radiation Pattern for l=2*lamda');

y = pi*3;
x = 0:(pi/18):(2*pi);
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(8);
polar(x,U);
title('Radiation Pattern for l=3*lamda');
