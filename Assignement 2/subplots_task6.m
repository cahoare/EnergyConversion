
hold all

ax1 = subplot(2,2,1);
x111 = t/w_base;
y111 = sqrt(i_s_s_alpha.^2+i_s_s_beta.^2);
plot(ax1,x1,y1,x11,y11,x111,y111)
legend('w_{ref} = 1','w_{ref} = 0.5','w_{ref} = 0.25');
title(ax1,'Stator Current - V/f Control, b=0')
ylabel(ax1,'Stator Current Modulus [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,2);
y222 = sqrt(psi_r_s_alpha.^2+psi_r_s_beta.^2);
plot(ax1,x1,y2,x11,y22,x111,y222)
legend('w_{ref} = 1','w_{ref} = 0.5','w_{ref} = 0.25');
title(ax1,'Rotor Flux - V/f Control, b=0')
ylabel(ax1,'Rotor Flux Modulus [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,3);
y333 = Te;
plot(ax1,x1,y3,x11,y33,x111,y333)
legend('w_{ref} = 1','w_{ref} = 0.5','w_{ref} = 0.25');
title(ax1,'Torque - V/f Control, b=0')
ylabel(ax1,'Torque [p.u]')
xlabel(ax1,'Time [p.u]');

ax1 = subplot(2,2,4);
y444 = wr;
plot(ax1,x1,y4,x11,y44,x111,y444)
legend('w_{ref} = 1','w_{ref} = 0.5','w_{ref} = 0.25');
title(ax1,'Speed - V/f Control, b=0')
ylabel(ax1,'Speed [p.u]')
xlabel(ax1,'Time [p.u]');