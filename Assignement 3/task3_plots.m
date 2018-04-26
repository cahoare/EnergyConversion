
hold all

% ax1 = subplot(2,1,1);
% x = t/w_base;
% plot(ax1,x,i_d,x,i_d_ref)
% legend('i_d', 'i_{d,ref}');
% title(ax1,'D Axis Stator Current - w_1 = 1 [p.u]')
% ylabel(ax1,'i_d [p.u]')
% xlabel(ax1,'Time [p.u]');
% 
% ax1 = subplot(2,1,2);
% x = t/w_base;
% plot(ax1,x,i_q,x,i_q_ref)
% legend('i_q', 'i_{q,ref}');
% title(ax1,'Q Axis Stator Current - w_1 = 1 [p.u]')
% ylabel(ax1,'i_q [p.u]')
% xlabel(ax1,'Time [p.u]');


x = t/w_base;
plot(x,wm)
legend('0.25*T_r','0.5*T_r','T_r','2*T_r','4*T_r');
title('Speed Reference Tracking - Erroneous R_R and L_M');
ylabel('Speed [p.u]');
xlabel('Time [p.u]');

% ax1 = subplot(2,1,2);
% x = t/w_base;
% plot(ax1,x,v_ref_sat)
% legend('Saturated Voltage Vector Reference');
% title(ax1,'Saturated Voltage Vector Reference')
% ylabel(ax1,'Voltage [p.u]')
% xlabel(ax1,'Time [p.u]');