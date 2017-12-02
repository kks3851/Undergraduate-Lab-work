N=4;
x=[2 1 1 2];
h=[0 1 2 3];
for m=1:N
    g(m)=0;
      for n=1:N
        k = m-n+1;
            if (k<=0)
                k = N+k;
            end
                g(m)=g(m)+(x(n)*h(k));
        end
end
x1=1:1:N;
subplot(3,1,1);
stem(x1,x);
title('x(n)');
xlabel('n');
ylabel('Amplitude');
axis([0 5 0 3]);
subplot(3,1,2);
stem(x1,h);
title('h(n)');
xlabel('n');
ylabel('Amplitude');
axis([0 5 0 4]);
subplot(3,1,3);
stem(x1,g);
title('g(n)');
xlabel('n');
ylabel('Amplitude');
axis([0 5 0 12]);