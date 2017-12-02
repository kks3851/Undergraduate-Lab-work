y = pi./50;
x = 0:.1:360;
U = (cos(y*cos(x))-cos(y))./sin(x);
U = abs(U);
figure(1);
polar(x,U);
title('Radiation Pattern for l=lamda/50');
figure( );
plot(x,U)