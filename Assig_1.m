% Used in the saturation blocks
Vbase = 120;   
Ibase = 20;

L = 2.5/1000;
R = 0.5;
J = 0.001;
psi = 0.35;

%Current Controller
a_c = 2197.2245/5;
kp = a_c*L;
ki = a_c*R;

%Speed Controller
a_s = a_c/10; 
kps = a_s*J/psi;
kis = J*(a_s^2)/psi;