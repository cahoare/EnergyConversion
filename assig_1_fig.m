%Rated values
I_n = 20;
wr_n = 3000*2*pi/60;

subplot(2,1,1); % Divides the figure to two subplots
plot(i.time,i.data/I_n, i_ref.time, i_ref.data/I_n); grid on;
%IN = 20; % Rated current
%plot(i.time,i.data/IN); % This would plot the p.u. current
xlabel('Time (s)'); ylabel('Normalized Current (p.u)');
subplot(2,1,2);
plot(wr.time,wr.data/wr_n); grid on;
xlabel('Time (s)'); ylabel('Normalized Speed (p.u)');
