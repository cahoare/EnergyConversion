subplot(3,1,1); % Divides the figure to two subplots
%plot(i.time,i.data); grid on;
plot(i.time,i.data/In,iwu.time,iwu.data/In); grid on; % This would plot the p.u. current
xlabel('Time (s)'); ylabel('Current (pu)');
axis( [0.48 0.55 0.8 1.3]);
subplot(3,1,2);
%plot(wr.time,wr.data); grid on;
plot(wr.time,wr.data/wrn,wrwu.time,wrwu.data/wrn); grid on;
xlabel('Time (s)'); ylabel('Speed (pu)');
axis( [0.48 0.55 0.8 1.3]);

subplot(3,1,3);
%plot(wr.time,wr.data); grid on;
plot(v.time,v.data/Vn,vwu.time,vwu.data/Vn); grid on;
xlabel('Time (s)'); ylabel('Voltage (pu)');
axis( [0.48 0.55 0.8 1.3]);


%{
figure
plot(i.time,i.data/In,iref.time,iref.data/In); grid on; % This would plot the p.u. current
xlabel('Time (s)'); ylabel('Current (pu)');
axis( [0 0.5 -.2 1.5]);
legend('Actual', 'Reference')
%}

%{
figure
plot(wr.time,wr.data/wrn,wrba.time,wrba.data/wrn); grid on; % This would plot the p.u. current
xlabel('Time (s)'); ylabel('Speed (pu)');
axis( [0 0.5 -.2 .8]);
legend('b_a=0', 'b_a=a_s J / \psi')
%}


