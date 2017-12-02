function ydot=f(x, y),
ydot=(y-x)/(y+x),
endfunction
    yo=1;xo=0;
    x=0.5;
    y=ode(yo,xo,x,f)
    x=0:.01:.5;
    y=ode(yo,xo,x,f);
    plot(x,y)
    title('dy/dx=(y-x)/(y+x)','fontsize',5);
    disp('y=');disp(y);
