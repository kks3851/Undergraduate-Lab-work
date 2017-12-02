%transform domain
syms D
g1=(1+D+D^2); 
G1=sym2poly(1+D+D^2); % first generator matrix

syms D
g2=(1+D^2); 
G2=sym2poly(1+D^2); % second generator matrix

syms D
m=(D^4+D^1+1);
M=sym2poly(m);

m=length(G1);
n=length(M);
l=length(G2);
X=[G1,zeros(1,n-1)];
H=[M,zeros(1,m-1)];
L=[G2,zeros(1,n-1)];
for i=1:n+m-1
    Y1(i)=0;
    Y2(i)=0;
    for j=1:m
        if(i-j+1>0)
            a(i)=X(j)*H(i-j+1);
            b(i)=L(j)*H(i-j+1);
            Y1(i)=xor(Y1(i),a(i));
            Y2(i)=xor(Y2(i),b(i));
        else
        end
    end
end
Y1 %first encoded seq
Y2 %second encoded seq
            