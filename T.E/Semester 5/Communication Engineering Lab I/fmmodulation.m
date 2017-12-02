%frequency modulation of a single tone signal
%frequency deviation=5*fm
%low carrier frequency

fc=1000; %carrier frequency
fs=10000; %sampling frequency(fs>2*[fc+bw])

fm=100; %modulating signal frequency
A=1; %amplitude of modulating signal
dev=5*fm; %frequency deviation

t=0:1/fs:(2/fm)-(1/fs); %time
w=2*pi*fm*t; %angular frequency
v=A*sin(w); %modulating signal

y=fmmod(v,fc,fs,dev); %modulate
z=fmdemod(y,fc,fs,dev); %demodulate

subplot(3,1,1);
plot(v);
title('Modulating signal');

subplot(3,1,2);
plot(y);
title('Modulated signal');

subplot(3,1,3);
plot(z);
title('Demodulated signal');