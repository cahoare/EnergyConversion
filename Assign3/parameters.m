V_base = 1; %138.2;
I_base = 1;
w_base = 314.59;
K = sqrt(3/2);
LM = 1.301;
Lsigma = 0.2426;
RR = 0.06151;
Tr = LM/RR;
Rs = 0.04505;
R = RR + Rs
t_rc = 1/1000*w_base; %Normal VSC rise time
alpha_c = 2.19722/t_rc;
Ra = alpha_c*Lsigma-R
kp = alpha_c*Lsigma
ki = alpha_c*(R+Ra)


%Speed Controller
%i_d_ref = 1/LM;
J = 50;
b = 0.5; %Load Torque
t_speed = t_rc*10;
alpha_speed = 2.19722/t_speed;
kp_speed = alpha_speed*J;
ki_speed = alpha_speed*alpha_speed*J;
Ra_speed = alpha_speed*J-b;

figure
compass(0.1, 0.2)
hold on
compass(0.76, 0)
compass(0, -0.05)