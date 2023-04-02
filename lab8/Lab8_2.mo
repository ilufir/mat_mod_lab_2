model Lab8_2
parameter Real M10 = 4.8;
parameter Real M20 = 4.3;
parameter Real p_cr = 22.5;
parameter Real N = 35;
parameter Real q = 1;
parameter Real tau1 = 18;
parameter Real tau2 = 28;
parameter Real p1 = 7.8;
parameter Real p2 = 5.7;

parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*p1*p1*tau2*tau2*p2*p2*N*q);
parameter Real c1 = (p_cr - p1)/(tau1*p1);
parameter Real c2 = (p_cr - p2)/(tau2*p2);

Real M1(start=M10);
Real M2(start=M20);

equation
der(M1) = M1-(b/c1+0.0004)*M1*M2-(a1/c1)*M1*M1;
der(M2) = (c2/c1)*M2-(b/c1)*M1*M2-(a2/c1)*M2*M2;
end Lab8_2;
