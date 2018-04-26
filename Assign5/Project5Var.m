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
E = 1.0;
wref = 1.0;
K = 1.0;
wbase =314;

%%% PLL
alpha_p = alpha_c/10 ; % set in relation to current controller
kp_pll = alpha_p; 
ki_pll = alpha_p^2/2;
alpha_f = 5*alpha_p; % LPF bandwidth. Set so greater than bandwidth of PLL


%%% Current control
alpha_fc = 0.5*alpha_c

%%% DC Link Model
C = 1800/1000*80*10^-6 * Z_base; %pu
alpha_dc = alpha_c/10 ; % set in relation to current controller
kp_dc = alpha_dc;
ki_dc = alpha_dc^2/2;

