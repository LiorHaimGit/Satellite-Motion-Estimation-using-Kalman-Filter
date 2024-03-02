% Function defining satellite motion equations
function dYdt = satellite_motion(~, Y, mu)
    r = norm(Y(1:2));  % Radius
    dYdt = [Y(3); Y(4); -mu*Y(1)/(r^3); -mu*Y(2)/(r^3)];
end
