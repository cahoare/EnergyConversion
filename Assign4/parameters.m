clear

V_base = 1; %138.2;
I_base = 1;
w_base = 314.59;
K = sqrt(3/2);
LM = 1.301;
Lsigma = 0.2426;
RR = 0.06151;
RRhat = 0.06151;
LMhat = 1.301;
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
t_speed = t_rc*50;
alpha_speed = 2.19722/t_speed;
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

simOut=sim('A4T3_BasicCurrentModel') ;

L=15000
ta(1:L,1) = t(1:L,1)
wma(1:L,1) = wm(1:L,1);
psida(1:L,1) = psi_d(1:L,1);
psiqa(1:L,1) = psi_q(1:L,1);

RRhat = 2*0.06151;

simOut=sim('A4T3_BasicCurrentModel') ;


ta(1:L,2) = t(1:L,1);
wma(1:L,2) = wm(1:L,1);
psida(1:L,2) = psi_d(1:L,1);
psiqa(1:L,2) = psi_q(1:L,1);

RRhat = 0.5*0.06151;

simOut=sim('A4T3_BasicCurrentModel') ;

ta(1:L,3) = t(1:L,1);
wma(1:L,3) = wm(1:L,1);
psida(1:L,3) = psi_d(1:L,1);
psiqa(1:L,3) = psi_q(1:L,1);


%%% Plots 

x = ta./w_base;
figure(1)
plot(x,wma)
legend('R_R','2*R_R','0.5*R_R');
title('\textbf{Speed Reference Tracking - Erroneous $\hat R_R$}','Interpreter','latex')
ylabel('Speed [p.u]');
xlabel('Time [secs]');
axis([0.47 1.5 0  0.8])
%yticks([0.0 0.05 0.1 .15 .2 .25 0.3 0.35])
grid on

figure(2)
subplot(2,1,1)
plot(x,psida)
grid on
legend('R_R','2*R_R','0.5*R_R');
title('\textbf{D Axis Rotor Flux - Erroneous $\hat R_R$}','Interpreter','latex')
ylabel('Flux [p.u]')
xlabel('Time [secs]');
axis([0.47 1.5 -.5  1.2])
%yticks([0.7 0.8 0.9 1 1.1 1.2])
%figure(2)
subplot(2,1,2)
plot(x,psiqa)
grid on
legend('R_R','2*R_R','0.5*R_R');
title('\textbf{Q Axis Rotor Flux - Erroneous $\hat R_R$}','Interpreter','latex')
ylabel('Flux [p.u]')
xlabel('Time [secs]');
axis([0.47 1.5 -1.0  0.8])
%yticks([-0.5 -0.4 -.3 -.2 -.1 0 .1 .2 .3])

