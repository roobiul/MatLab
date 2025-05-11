% Q1: Plotting f(x) = x^3 - 6x^2 + 11x - 6

start = input('Enter start of x range: ');
endv = input('Enter end of x range: ');
step = input('Enter step size: ');
x = start:step:endv;
y = x.^3 - 6*x.^2 + 11*x - 6;
plot(x, y, 'b-', 'LineWidth', 2);
xlabel('x');
ylabel('f(x)');
title('Plot of f(x) = x^3 - 6x^2 + 11x - 6');
legend('f(x)');
grid on;