
hold all

% ax1 = subplot(2,1,1);
% x = t/w_base;
% plot(ax1,x,psi_d,x,psi_q)
% legend('\psi_d', '\psi_q');
% title(ax1,'D and Q Axis Rotor Flux')
% ylabel(ax1,'\psi [p.u]')
% xlabel(ax1,'Time [s]');
% 
% ax1 = subplot(2,1,2);
% x = t/w_base;
% plot(ax1,x,wm)
% legend('\omega^{ref}_m=0.75 p.u');
% title(ax1,'Speed')
% ylabel(ax1,'\omega_m [p.u]')
% xlabel(ax1,'Time [s]');

% ax1 = subplot(3,1,3);
% x = t/w_base;
% plot(ax1,x,i_q,x,i_q_ref)
% legend('i_q', 'i_{q,ref}');
% title(ax1,'Q Axis Stator Current - w_1 = 1 [p.u]')
% ylabel(ax1,'i_q [p.u]')
% xlabel(ax1,'Time [p.u]');


x = Vdc.time/w_base;
plot(x,Vdc.data)
legend('V_{dc}');
grid on
title('Test of the DC-link Voltage Controller');
ylabel('Voltage [p.u]');
xlabel('Time [s]');

% ax1 = subplot(2,1,2);
% x = t/w_base;
% plot(ax1,x,v_ref_sat)
% legend('Saturated Voltage Vector Reference');
% title(ax1,'Saturated Voltage Vector Reference')
% ylabel(ax1,'Voltage [p.u]')
% xlabel(ax1,'Time [p.u]');