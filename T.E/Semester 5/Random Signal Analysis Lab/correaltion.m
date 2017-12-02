%discrete
x=rand(1,5)
a=ceil(10*x)
t=1:5
b=fliplr(a)
z=conv(a,b)%cross
z1=conv(a,a) %auto
t1=(1:9)
subplot(2,4,1)
stem(t,a)
subplot(2,4,2)
stem(t,b)
subplot(2,4,3)
stem(t1,z)
subplot(2,4,4)
stem(t1,z1)

%continuous
n=4
w=100
t2=1:0.05:n
c=cos(w*t2)
d=cos(w*(t2-n))
e=conv(c,d)
e1=conv(c,c)
t3=1:0.05:7
subplot(2,4,5)
plot(t2,c)
subplot(2,4,6)
plot(t2,d)
subplot(2,4,7)
plot(t3,e)
subplot(2,4,8)
plot(t3,e1)
 


