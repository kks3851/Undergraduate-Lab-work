N=4;
x=[1 1 1 1];
W=exp((j*-2*pi)/N);
G=zeros(1,N/2);
for k=0:1:(N/2)-1
    for n=0:1:(N/2)-1
        g(k+1)=x((2.*n)+1)*W^(2.*n*k);
        G(k+1)=g(k+1)+G(k+1);
    end
end
H=zeros(1,N/2);
for k=0:1:(N/2)-1
    for n=0:1:(N/2)-1
        h(k+1)=x(((2.*n)+1)+1)*W^(2.*n*k);
        H(k+1)=H(k+1)+h(k+1);
    end
end
for k=0:1:(N/2)-1
    X(k+1)=H(k+1)+G(k+1)*(W^k);
end
for k=N/2:1:N-1
    X(k+1)=G((ceil((k+2)/N)))*(W^(k-(N/2)))-H((floor((k+1)/N))+1)
end
