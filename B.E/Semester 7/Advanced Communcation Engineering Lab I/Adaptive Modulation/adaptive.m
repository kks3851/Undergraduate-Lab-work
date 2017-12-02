clc
close all
clear all
x=[0 3 5 7 10 12 15 17 20 25 30]; %snr
xq=[0 3 5 7 10 12 15 17 20 25 30];
v16=[0.7273 .7273 0.2727 0.1818 0.1818 0.1818 0.0909 0 0 0 0];
v32=[0.9091 0.9091 0.9091 0.8182 0.7273 0.4546 0.3636 0.1818 0 0 0];
v64=[0.9091 0.9091 0.9091 0.7273 0.7273 0.7273 0.5454 0.5454 0.2727 0.09091 0];
v128=[1 1 1 1 1 1 0.8182 0.7273 0.4545 0.2727 0.1818];
vq16=interp1(x,v16,xq,'spline');
vq32=interp1(x,v32,xq,'spline');
vq64=interp1(x,v64,xq,'spline');
vq128=interp1(x,v128,xq,'spline');
figure(1);
plot(xq,vq16,':.',xq,vq32,':.',xq,vq64,':.',xq,vq128,':.')
title('BER vs SNR')
xlabel('SNR')
ylabel('BER')

vf1=zeros(1,11);
vf2=zeros(1,11);
vf3=zeros(1,11);
vf4=zeros(1,11);
thr=0.5;
for xq=1:11
    if (vq16(xq)<thr)
        vf1(1,xq)=vq16(xq);
    end
    if (vq16(xq)>thr)
        vf1(1,xq)=0;
    end
    if (vq32(xq)<thr)
        vf2(1,xq)=vq32(xq);
    end
    if (vq32(xq)>thr)
        vf2(1,xq)=0;
    end
    if (vq64(xq)<thr)
        vf3(1,xq)=vq64(xq);
    end
    if (vq64(xq)>thr)
        vf3(1,xq)=0;
    end
    if (vq128(xq)<thr)
        vf4(1,xq)=vq128(xq);
    end
    if (vq128(xq)>thr)
        vf4(1,xq)=0;
    end
end
for i=1:11
    vtemp1(i)=max(vf1(i),vf2(i));
    vtemp2(i)=max(vtemp1(i),vf3(i));
    vtemp3(i)=max(vtemp2(i),vf4(i));
end

for i=1:11
    if vtemp3(i)==0
        display('No transmission')
    end
     if vtemp3(i)==vq16(i)
        display('16 QAM')
     end
     if vtemp3(i)==vq32(i)
        display('32 QAM')
     end
     if vtemp3(i)==vq64(i)
        display('64 QAM')
     end
     if vtemp3(i)==vq128(i)
        display('128 QAM')
     end
end
figure(2);
plot(x,vtemp3)