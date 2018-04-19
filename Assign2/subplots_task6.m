
hold all

ax1 = subplot(2,2,1);
x = t/w_base;
y11 = sqrt(i_s_s_alpha.^2+i_s_s_beta.^2);
plot(ax1,x,y1,x,y11)
legend('Direct Line Start', 'V/f Control');
title(ax1,'Stator Current - Direct Line Start and V/f Control, b=0')
ylabel(ax1,'Stator Current Modulus [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,2);
y22 = sqrt(psi_r_s_alpha.^2+psi_r_s_beta.^2);
plot(ax1,x,y2,x,y22)
legend('Direct Line Start', 'V/f Control');
title(ax1,'Rotor Flux - Direct Line Start and V/f Control, b=0')
ylabel(ax1,'Rotor Flux Modulus [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,3);
y33 = Te;
plot(ax1,x,y3,x,y33)
legend('Direct Line Start', 'V/f Control');
title(ax1,'Torque - Direct Line Start and V/f Control, b=0')
ylabel(ax1,'Torque [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,4);
y44 = wr;
plot(ax1,x,y4,x,y44)
legend('Direct Line Start', 'V/f Control');
title(ax1,'Speed - Direct Line Start and V/f Control, b=0')
ylabel(ax1,'Speed [p.u]')
xlabel(ax1,'Time [p.u]');