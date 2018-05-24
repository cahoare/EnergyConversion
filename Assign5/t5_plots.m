
hold all

% ax1 = subplot(3,1,1);
% x = t/w_base;
% plot(x,Vdc)
% legend('V_{dc}');
% title('Test of the Tuned DC-link Voltage Controller');
% ylabel('Voltage [p.u]');
% xlabel('Time [s]');
% 
% ax1 = subplot(3,1,2);
% x = t/w_base;
% plot(x,Vdc)
% legend('V_{dc}');
% title('Zoom of the DC-link Voltage');
% ylabel('Voltage [p.u]');
% xlabel('Time [s]');
% 
% ax1 = subplot(3,1,3);
% x = t/w_base;
% plot(ax1,x,wm)
% legend('\omega_m');
% title(ax1,'Speed')
% ylabel(ax1,'Speed [p.u]')
% xlabel(ax1,'Time [s]');
t=tout
ax1 = subplot(3,1,1);
x = t/w_base;
plot(x,Vdc)
legend('V_{dc}');
title('Test of the Tuned DC-link Voltage Controller');
ylabel('Voltage [p.u]');
xlabel('Time [s]');

ax1 = subplot(3,1,2);
x = t/w_base;
plot(x,Vdc)
legend('V_{dc}');
title('Zoom of the DC-link Voltage');
ylabel('Voltage [p.u]');
xlabel('Time [s]');

ax1 = subplot(3,1,3);
x = t/w_base;
plot(ax1,x,wm)
legend('\omega_m');
title(ax1,'Speed')
ylabel(ax1,'Speed [p.u]')
xlabel(ax1,'Time [s]');