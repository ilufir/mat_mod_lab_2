model Lab5
parameter Real a=0.41;
parameter Real b=0.039;
parameter Real c=0.51;
parameter Real d=0.019;
parameter Real x0=7;
parameter Real y0=9;

Real x(start=x0);
Real y(start=y0);

equation
  der(x)=-a*x+b*x*y;
  der(y)=c*y-d*x*y;
end Lab5;
