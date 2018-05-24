Z_base = 17.01;
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
P = 1800 % W . C = 80 uF/kW



%%%%%%%%%%%%%%%%%%
E = 1.0%*sqrt(2); % WHY NOT SQRT(2) *
wref = 1.0;
%K = sqrt(3/2);
wbase =314;

%%% PLL
alpha_p = alpha_c/10 ; % set in relation to current controller
kp_pll = alpha_p; 
ki_pll = alpha_p^2/2;
alpha_f = 5*alpha_p; % LPF bandwidth. Set so IS greater than bandwidth of PLL


%%% Current control
alpha_fc = 0.5*alpha_c

%%% DC Link Model
C = 1.5*1800/1000*80*10^-6 * Z_base *w_base; %pu
alpha_dc = alpha_c/20 ; % set in relation to current controller
kp_dc = alpha_dc;
ki_dc = alpha_dc^2/2;


%Speed Controller
%i_d_ref = 1/LM;
J = 50;
b = 0.5; %Load Torque
t_speed = t_rc*50;
alpha_speed = 2.19722/t_speed*.75; % factor to slow speed controller to stop variation in dc link
kp_speed = alpha_speed*J;
ki_speed = alpha_speed*alpha_speed*J;
Ra_speed = alpha_speed*J-b;


%Improved CM
alpha_l = 4; %eq 9.30
lambda_delta = 0.2*1;
lambda = 1.5;


%FW Controller
%kfw in Simulink
epsilon = (Lsigma+LM)/Lsigma;
