x=[1 2 3 4 5 6];
h=[1 1 1];
n1=length(x);
n2=length(h);
N=n2+n1-1;
y=zeros(1,N);
h1=[h zeros(1,n2-1)];
n3=length(h1);
y=zeros(1,N+n3-n2);
H=fft(h1)
for i=1:n2:n1
    if i<=(n1+n2-1)
        x1=[x(i:i+n3-n2) zeros(1,n3-n2)];
    else
        x1=[x(i:n1) zeros(1,n3-n2)];
    end
    x2=fft(x1);
    x3=x2.*H;
    x4=round(ifft(x3));
    if(i==1)
        y(1:n3)=x4(1:n3);
    else
        y(i:i+n3-1)=y(i:i+n3-1)+x4(1:n3);
    end
end
disp('The output y(n)=');
disp(y(1:N));
stem((y(1:N)));
title('overlap add method');
xlabel('n');
ylabel('y(n)');