f=input('Sampling Frequency ');

fp=input('Pass Band Frequency ');

fs=input('Stop Band Frequency ');

rp=input('Pass Band Attenuation ');

rs=input('Stop Band Attenuation ');

wp=2*fp./f;

ws=2*fs./f;

M=(-20*log(sqrt(rp*rs))-13)./(14.6*(fs-fp)./f);

M=abs(M);

M1=ceil(M);

x=rem(M1,2);

if (x==0)

    M1=M1+1;

    N=M1+1;

else

    N=M1+1;

end

y=hamming(N);

b=fir1(M1,wp,y);

freqz(b);