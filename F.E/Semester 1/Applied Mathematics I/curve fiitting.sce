x=input('enter the values x=')//enter the given value of x
y=input('enter the values y=')//enter the given value of y
n=length(x)
sx=sum(x)
sy=sum(y)
sxy=sum(x.*y)
sx2=sum(x^2)
A=[n sx;sx sx2]
B=[sy;sxy]
c=linsolve(A,-B)
disp(x,'x=')
disp(y,'y=')
disp(n,'n=')
disp(c,'for straight line y=a+bx,a and b are respectively')
