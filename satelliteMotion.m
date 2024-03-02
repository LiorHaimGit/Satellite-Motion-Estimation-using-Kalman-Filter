% Time settings
dt = 1;  % Time step (seconds)
tspan = [0, 90*60];  % Simulation time span (seconds)
num_steps = diff(tspan) / dt;

% Function to calculate satellite motion
f = @(t, Y) satellite_motion(t, Y, mu);

% Initialize arrays to store results
t = linspace(tspan(1), tspan(2), num_steps);
Y = zeros(num_steps, 4);  % State vector [x, y, vx, vy]

% Initial state vector [x, y, vx, vy]
Y(1, :) = [r0*cos(theta0), r0*sin(theta0), -v0*sin(theta0), v0*cos(theta0)]';

% Perform numerical integration using Euler's method
for i = 2:num_steps
    Y(i, :) = Y(i-1, :) + dt * f(t(i-1), Y(i-1, :)')';
end

% Extracting position
x_true = Y(:, 1);
y_true = Y(:, 2);
