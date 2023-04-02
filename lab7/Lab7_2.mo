model Lab7_2
parameter Real n0 = 6;
parameter Real N = 667;

Real n(start=n0);

function k 
  input Real t;
  output Real g;
algorithm
  g := 0.00017;
end k;

function p 
  input Real t;
  output Real v;
algorithm
  v := 0.57;
end p;

equation
  der(n) = (k(time)+p(time)*n)*(N-n);
end Lab7_2;
