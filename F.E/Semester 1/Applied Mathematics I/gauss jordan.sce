A=input('enter matrix element A=')//coefficient matrix
b=input('enter matrix element b=')//column matrix 
disp(A,'A=')
disp(b,'b=')
A_aug=[A b]//augmented matrix
disp([A b],'A_aug')
disp(rref(A_aug),'Reduced A_aug')
c=linsolve(A,-b)//command solves the linear equatiom px+q=0
disp(c,'Ans=')
