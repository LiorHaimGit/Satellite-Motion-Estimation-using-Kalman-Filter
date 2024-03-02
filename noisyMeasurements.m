% Generate noisy measurements
noise_level = 1000;  % Adjust noise level as needed
seed = 3561;
randn('state', seed);
x_meas = x_true + noise_level * randn(size(x_true));
seed = 5677;
randn('state', seed);
y_meas = y_true + noise_level * randn(size(y_true));
