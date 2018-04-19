subplot(2,1,1); % Divides the figure to two subplots
%plot(i.time,i.data); grid on;
IN = 20; % Rated current
plot(i.time,i.data/IN); grid on; % This would plot the p.u. current
xlabel('Time (s)'); ylabel('Current (pu)');
subplot(2,1,2);
WN = 3000*2*pi/60; % Rated speed
%plot(wr.time,wr.data); grid on;
plot(wr.time,wr.data/WN); grid on;
xlabel('Time (s)'); ylabel('Speed (pu)');
