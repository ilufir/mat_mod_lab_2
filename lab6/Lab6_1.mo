model Lab6_1
parameter Real a = 0.01;
parameter Real b = 0.02;
parameter Real N = 10600;
parameter Real I0 = 133;
parameter Real R0 = 33;
parameter Real S0 = N - I0 - R0;

Real S(start=S0);
Real I(start=I0);
Real R(start=R0);

equation
  der(S) = a*S;
  der(I) = a*S-b*I;
  der(R) = b*I;
end Lab6_1;
