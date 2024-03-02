% Plotting orbit and Earth
figure(1);
plot(x_true, y_true,'LineWidth',2, 'DisplayName', 'True Final Position');
hold on;

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

% Add Legend
legend(...
'Satellite true location',...
'Satellite''s final position',...
'Earth','FontSize', 12);

axis equal;
xlim([min(x_meas) max(x_meas)]*1.1);
ylim([min(y_meas) max(y_meas)]*1.1);
