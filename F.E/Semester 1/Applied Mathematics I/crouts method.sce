A=input('enter the matrix elements A=')//enter the coefficient matrix
b=input('enter the matrix elements b=')//column matrix of constants
[L U]=lu(A)//U is an upper triangular matrix & L is any matrix
z=L\b
x=U\z
disp(L,'L=')
disp(U,'U=')
disp(z,'z=')
disp(x,'Ans=')
