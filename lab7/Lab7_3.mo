model Lab7_3
parameter Real n0 = 6;
parameter Real N = 667;

Real n(start=n0);

function k 
  input Real t;
  output Real g;
algorithm
  g := 0.7*sin(2*t);
end k;

function p 
  input Real t;
  output Real v;
algorithm
  v := 0.5*cos(4*t);
end p;

equation
  der(n) = (k(time)+p(time)*n)*(N-n);
end Lab7_3;
