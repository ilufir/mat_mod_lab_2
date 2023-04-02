model Lab4_3
parameter Real w = sqrt(7);
parameter Real g = 3.0;
parameter Real x0 = -1;
parameter Real y0 = 0;

function f
  input Real t;
  output Real F;
algorithm
  F := sin(2*t);
end f;

Real x(start=x0);
Real y(start=y0);

equation
  der(x) = y;
  der(y) = -w*w*x-g*y-f(time);


end Lab4_3;
