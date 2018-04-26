
hold all

ax1 = subplot(2,2,1);
x = t/w_base;
y1 = sqrt(i_s_s_alpha.^2+i_s_s_beta.^2);
plot(ax1,x,y1)
title(ax1,'Stator Current - Direct Line Start, b=1.287*w')
ylabel(ax1,'Stator Current Modulus [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,2);
y1 = sqrt(psi_r_s_alpha.^2+psi_r_s_beta.^2);
plot(ax1,x,y1)
title(ax1,'Rotor Flux - Direct Line Start, b=1.287*w')
ylabel(ax1,'Rotor Flux Modulus [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,3);
y1 = Te;
plot(ax1,x,y1)
title(ax1,'Torque - Direct Line Start, b=1.287*w')
ylabel(ax1,'Torque [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,4);
y1 = wr;
y2 = wm;
plot(ax1,x,y1,x,y2)
legend('Electrical Rotor Speed (w_r)', 'Mechanical Rotor Speed (w_m)');
title(ax1,'Speed - Direct Line Start, b=1.287*w')
ylabel(ax1,'Speed [p.u]')
xlabel(ax1,'Time [p.u]');