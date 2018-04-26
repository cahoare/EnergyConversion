
hold all
figure(1)
x = t/w_base;
plot(x,psi_d)
legend('0.25*T_r','0.5*T_r','T_r','2*T_r','4*T_r');
title('D Axis Rotor Flux - Erroneous R_R and L_M')
ylabel('Flux [p.u]')
xlabel('Time [p.u]');
figure(2)
x = t/w_base;
plot(x,psi_q)
legend('0.25*T_r','0.5*T_r','T_r','2*T_r','4*T_r');
title('Q Axis Rotor Flux - Erroneous R_R and L_M')
ylabel('Flux [p.u]')
xlabel('Time [p.u]');

% ax1 = subplot(2,1,2);
% x = t/w_base;
% plot(ax1,x,i_q,x,i_q_ref)
% legend('i_q', 'i_{q,ref}');
% title(ax1,'Q Axis Stator Current - w_1 = 1 [p.u]')
% ylabel(ax1,'i_q [p.u]')
% xlabel(ax1,'Time [p.u]');


% x = t/w_base;
% plot(x,v_ref,x,v_ref_sat)
% legend('Voltage Vector Reference', 'Saturated Voltage Vector Reference');
% title('Voltage Vector Reference and Saturated Voltage Vector Reference');
% ylabel('Voltage [p.u]');
% xlabel('Time [p.u]');

% ax1 = subplot(2,1,2);
% x = t/w_base;
% plot(ax1,x,v_ref_sat)
% legend('Saturated Voltage Vector Reference');
% title(ax1,'Saturated Voltage Vector Reference')
% ylabel(ax1,'Voltage [p.u]')
% xlabel(ax1,'Time [p.u]');