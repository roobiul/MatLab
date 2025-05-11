% Step a: Take user input
start = input('Enter the start value of x: ');
end_val = input('Enter the end value of x: ');
step = input('Enter the step size: ');

% Step b: Calculate y values
x = start:step:end_val;
y = x.^3 - 6*x.^2 + 11*x - 6;

% Step c: Plot the function
plot(x, y, 'b-o', 'DisplayName', 'f(x) = x^3 - 6x^2 + 11x - 6');
xlabel('x');
ylabel('f(x)');
title('Plot of f(x) = x^3 - 6x^2 + 11x - 6');
legend;
grid on;
