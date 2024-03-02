% Constants
G = 6.67430e-11;  % Gravitational constant (m^3/kg/s^2)
M = 5.972e24;     % Mass of Earth (kg)
R = 6371e3;       % Radius of Earth (m)
mu = G * M;       % Standard gravitational parameter (m^3/s^2)

% Initial conditions
r0 = R + 500e3;            % Initial altitude above Earth's surface (m)
v0 = sqrt(mu / r0);        % Initial velocity (m/s)
theta0 = deg2rad(0);       % Initial angle (rad)
omega0 = sqrt(mu / r0^3);  % Initial angular velocity (rad/s)
