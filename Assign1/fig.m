subplot(2,1,1); % Divides the figure to two subplots
plot(i.time,i.data); grid on;
%IN = 20; % Rated current
%plot(i.time,i.data/IN); % This would plot the p.u. current
xlabel('Time (s)'); ylabel('Current (A)');
subplot(2,1,2);
plot(wr.time,wr.data); grid on;
xlabel('Time (s)'); ylabel('Speed (rad/s)');
axis( [0 0.5 0 500]);
