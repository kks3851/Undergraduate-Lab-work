%B. Time Domain
G1=input('Enter generator matrix one: ');
G2=input('Enter generator matrix two: ');
M=input('Enter msg bits: ');
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

Y1 %firr
Y2 %secong

