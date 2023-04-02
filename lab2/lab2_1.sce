n=3.4;
k=10;
fi=3*%pi/4

function dr=f(tetha,r)
    dr=r/sqrt(n*n-1);
endfunction;

function xt=f2(t)
    xt=cos(fi)*t;
endfunction;

r0=k/(n+1);
tetha0=0;
tetha=0:0.01:2*%pi;
r=ode(r0,tetha0,tetha,f)

t=0:1:800;

plot2d(t,f2(t),style = color('red'));
polarplot(tetha,r,style = color('green'));
