
n = -10:10; 
delta = (n == 0);

% Plot the signal
stem(n, delta, 'filled');
xlabel('n');
ylabel('\delta[n]');
title('Discrete Unit Impulse Signal');
grid on;
axis([-10 10 0 1.2]);