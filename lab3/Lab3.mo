model Lab3
parameter Real x0=40000;
parameter Real y0=69000;
parameter Real a=0.331;
parameter Real b=0.771;
parameter Real c=0.401;
parameter Real h=0.731;

function p
  input Real t;
  output Real v;
algorithm
  v := sin(t*10)+1;
end p;

function q
  input Real t;
  output Real w;
algorithm
  w := cos(t+20)+1;
end q;

Real x(start=x0);
Real y(start=y0);

equation
  der(x) = -a*x-b*y+p(time);
  der(y) = -c*x-h*y+q(time);
end Lab3;
