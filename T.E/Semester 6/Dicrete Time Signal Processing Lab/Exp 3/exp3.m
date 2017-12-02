x=[1 2 3 4];
N=length(x);
X=zeros(1,4);
for k=0:3
 for n=1:4
 X(k+1)=X(k+1)+(x(n)*exp(-1i*2*pi*k*(n-1)/N));
 end
end
k=0:3;
subplot(4,1,1);
stem(k,abs(X),'linewidth',1.5);
title('|X(w)| 4 point DFT');
subplot(4,1,3);
P=atan(imag(X)./real(X));
for i=1:4
if P(i)<0
 P(i)=P(i)+(2*pi);
end
end 
stem(k,P,'linewidth',1.5);
title('<X(w) 4 point DFT');
x=[1 2 3 4 0 0 0 0];
N=length(x);
X=zeros(1,8);
for k=0:7
 for n=1:8
 X(k+1)=X(k+1)+(x(n)*exp(-1i*2*pi*k*(n-1)/N));
 end
end
k=0:(N-1);
subplot(4,1,2);
stem(k,abs(X),'linewidth',1.5);
title('|X(w)| 8 point DFT');
h2(2)=subplot(4,1,4);
P=atan(imag(X)./real(X));
for i=1:8
if P(i)<0
 P(i)=P(i)+(2*pi);
end
end 
stem(k,P,'linewidth',1.5);
title('<X(w) 8 point DFT');