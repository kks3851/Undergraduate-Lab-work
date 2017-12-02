n1=1.47; %core
n2=1.46; %cladding
lamda=1550*(10^(-9));
as=3*10^(-6); % radius of single mode
am=25*10^(-6); % radius of multimode
thetai=input('Enter incidence angle in degrees=')

na=sqrt((n1*n1)-(n2*n2)) % numerical aperture
thetaa=asind(na) % acceptance angle
phic=asind(n2/n1) % critical angle
vs=(2*pi*na*as)/lamda %v number for single mode
vm=(2*pi*na*am)/lamda % v number for multi mode
m=(vm*vm)/2 %no of modes
phi=acosd(sind(thetai)/n1)

if(thetai<thetaa)
    if(phi<phic)
    display('Total internal reflection absent')
    else    
    display('Total internal reflection present')
    end
else
    display('Total internal reflection absent')
end

