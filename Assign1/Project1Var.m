% Motor parameters
R = 0.5;
L = 2.5*10^(-3);
Tl = 7;
J = 0.001;
Vn = 120;
In = 20;
wrn = 3000/60*2*pi;
psi = 0.35;

% Current controller parameters
trc = 0.002;
ac = log(9)/trc;

Ra = ac*L-R;
kp = ac*L;
ki = ac^2*L;

e = (psi/(ac^2*L*J))*(psi*In);

% Speed controller parameters

as = ac /10;
ba = as*J/psi;
kps = as*J/psi;
kis = as^2*J/psi;

% Low pass filter
al = as*100;
