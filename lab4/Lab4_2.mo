model Lab4_2
parameter Real w = sqrt(5);
parameter Real g = 4.0;
parameter Real x0 = -1;
parameter Real y0 = 0;

function f
  input Real t;
  output Real F;
algorithm
  F := t*0;
end f;

Real x(start=x0);
Real y(start=y0);

equation
  der(x) = y;
  der(y) = -w*w*x-g*y-f(time);

end Lab4_2;
