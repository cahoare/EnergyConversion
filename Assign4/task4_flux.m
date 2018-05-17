
hold all
figure(1)
x = t/w_base;
subplot(2,1,1)
plot(x,psi_d)
grid on
legend('L_R','4*L_R','0.25*L_R');
title('\textbf{D Axis Rotor Flux - Erroneous $\hat L_M$}','Interpreter','latex')
ylabel('Flux [p.u]')
xlabel('Time [secs]');
axis([0.4 0.8 0.7  1.2])
yticks([0.7 0.8 0.9 1 1.1 1.2])
%figure(2)
x = t/w_base;
subplot(2,1,2)
plot(x,psi_q)
grid on
legend('L_R','4*L_R','0.25*L_R');
title('\textbf{Q Axis Rotor Flux - Erroneous $\hat L_M$}','Interpreter','latex')
ylabel('Flux [p.u]')
xlabel('Time [secs]');
axis([0.4 0.8 -0.5  0.3])
yticks([-0.5 -0.4 -.3 -.2 -.1 0 .1 .2 .3])

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