Rs=50;
Rp=0.5;
Wp=0.4;
Ws=0.6;
%butterworth lpf
figure(1)
[n1,Wn1] = buttord(Wp,Ws,Rp,Rs);
[b1,a1]=butter(n1,Wn1,'low');
[h1,w1]=freqz(b1,a1);
subplot(3,1,1)
plot(abs(h1))
title('Magnitude');
subplot(3,1,2)
plot(angle(h1))
title('Angle');
y1=impulse(b1,a1,n1)
subplot(3,1,3)
stem(y1)
title('Impulse');
% 
% butterworth hpf
figure(2)
[n2,Wn2] = buttord(Wp,Ws,Rp,Rs);
[b2,a2]=butter(n2,Wn2,'high');
[h2,w2]=freqz(b2,a2);
subplot(3,1,1)
plot(abs(h2))
title('Magnitude');
subplot(3,1,2)
plot(angle(h2))
title('Angle');
y2=impulse(b2,a2,n2)
subplot(3,1,3)
stem(y2)
title('Impulse');

%chebyshev1 lpf
figure(3)
[n3,Wp3]=cheb1ord(Wp,Ws,Rp,Rs)
[b3,a3]=cheby1(n3,Rp,Wp3,'low')
[h3,w3]=freqz(b3,a3);
subplot(3,1,1)
plot(abs(h3))
title('Magnitude');
subplot(3,1,2)
plot(angle(h3))
title('Angle');
y3=impulse(b3,a3,n3)
subplot(3,1,3)
stem(y3)
title('Impulse');

% chebyshev2 hpf
figure(4)
[n4,Wp4]=cheb2ord(Wp,Ws,Rp,Rs)
[b4,a4]=cheby2(n4,Rp,Wp4,'high')
[h4,w4]=freqz(b4,a4);
subplot(3,1,1)
plot(abs(h4))
title('Magnitude');
subplot(3,1,2)
plot(angle(h4))
title('Angle');
y4=impulse(b4,a4,n4)
subplot(3,1,3)
stem(y4)
title('Impulse');