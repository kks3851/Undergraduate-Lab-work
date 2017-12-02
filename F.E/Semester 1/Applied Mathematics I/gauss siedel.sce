a=input('enter matrix element a=')//coefficient matrix
b=input('enter matrix element b=')//column matrix 
i=input('enter initial values i=')//initial values of x,y,z
for j=1:5 //no of iterations
    x=(b(1)-(a(1,2)*i(2))-(a(1,3)*i(3)))/a(1,1)
    i(1)=x
    y=(b(2)-(a(2,1)*i(1))-(a(2,3)*i(3)))/a(2,2)
    i(2)=y
    z=(b(3)-(a(3,1)*i(1))-(a(3,2)*i(2)))/a(3,3)
    i(3)=z
end
disp(a,'a=')
disp(b,'b=')
disp(i,'X=[x,y,z]')
