% Q4: 4th-order Runge-Kutta for dy/dx = -2xy

f = @(x, y) -2*x*y;
x0 = input('Enter initial x: ');
y0 = input('Enter initial y: ');
xn = input('Enter final x: ');
h = input('Enter step size: ');

x = x0:h:xn;
n = length(x);
y = zeros(1, n);
y(1) = y0;

for i = 1:n-1
    k1 = h * f(x(i), y(i));
    k2 = h * f(x(i) + h/2, y(i) + k1/2);
    k3 = h * f(x(i) + h/2, y(i) + k2/2);
    k4 = h * f(x(i) + h, y(i) + k3);
    y(i+1) = y(i) + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
end

plot(x, y, 'r-', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Solution of dy/dx = -2xy using RK4');
grid on;