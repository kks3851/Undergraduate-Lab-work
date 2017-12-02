deff('[z]=f(x,y)','z=x*y')//Define the function
x0=input('Enter the initial value of x=');
y0=input('Enter the initial value of y=');
xn=input('Enter the final value of xn=');
h=input('Enter the increment of x=');
x=[x0:h:xn]
y=zeros(x)
n=length(y)
y(1)=y0
for j=1:n-1
  y(j+1)=y(j)+h*f(x(j),y(j))
end
ymax=max(y(j+1))
disp(ymax,'ymax=')
