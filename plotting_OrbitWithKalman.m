figure(3);
plot(x_true, y_true,'LineWidth',2, 'DisplayName', 'True Final Position');
hold on;
% Plot noisy measurements
plot(x_meas, y_meas, '.','MarkerSize', 10);

% Plot Kalman Filter estimation
plot(x_estimate_history(:, 1), x_estimate_history(:, 2), 'LineWidth', 2, 'DisplayName', 'Kalman Filter Estimate');

% Plot satellite's final position
plot(x_true (end), y_true (end), 'kd','MarkerSize', 5,'LineWidth',1);

% Plot Earth
theta = linspace(0, 2*pi, 100);
earth_x = R * cos(theta);
earth_y = R * sin(theta);
fill(earth_x, earth_y, 'b', 'EdgeColor', 'none');
grid on;
xlabel('x (m)');
ylabel('y (m)');
title('Satellite Orbit','FontSize', 16);

legend(...
'Satellite true location',...
'Noisy measurements',...
'Kalman Filter estimation',...
'Satellite''s final position',...
'Earth','FontSize', 12);

##axis equal;
##xlim([min(x_meas) max(x_meas)]*1.1);
##ylim([min(y_meas) max(y_meas)]*1.1);

% option 1
xlim([6.83e+6, 6.874e+6]); ylim([-50000, 8.0e+5]);

% option 1
xlim([-0.6e+6, 0.6e+6]); ylim([-6.96e+6, -6.92e+6]);
legend off
