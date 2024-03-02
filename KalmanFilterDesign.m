% Kalman filter initialization
x_estimate = [x_meas(1); y_meas(1); 0; 0]; % Initial estimate (position and velocity)
P_estimate = diag([1e3, 1e3, 1e2, 1e2]); % Initial estimate covariance
R_k = diag([1e3, 1e3])*0.1;
Q_k = diag([10, 10, 0.1, 0.1]);

A = [1, 0, dt, 0;
     0, 1, 0, dt;
     0, 0, 1, 0;
     0, 0, 0, 1];

% Kalman filter loop
x_estimate_history = zeros(num_steps, 4);
for i = 1:num_steps
    % Prediction

    x_estimate_predicted = A * x_estimate;
    P_predicted = A * P_estimate * A' + Q_k; % Process noise covariance

    % Measurement update
    z_measurement = [x_meas(i); y_meas(i)];
    H = [1, 0, 0, 0;
         0, 1, 0, 0];
    K = P_predicted * H' * inv(H * P_predicted * H' + R_k); % Measurement noise covariance
    x_estimate = x_estimate_predicted + K * (z_measurement - H * x_estimate_predicted);
    P_estimate = (eye(4) - K * H) * P_predicted;

    % Store estimate
    x_estimate_history(i, :) = x_estimate';
end
