clc; clear; close all;

% Function to solve the BVP using Finite Difference Method
function finite_difference_bvp(N)
    a = 0; b = 1; % Domain
    h = (b - a) / (N + 1); % Step size
    x = linspace(a, b, N + 2); % Grid points including boundaries

    % Construct the coefficient matrix A and right-hand side vector B
    A = zeros(N, N);
    B = zeros(N, 1);

    for i = 1:N
        if i > 1
            A(i, i-1) = 1 / h^2 - 1 / (2 * h);
        end
        A(i, i) = -2 / h^2 + 1;
        if i < N
            A(i, i+1) = 1 / h^2 + 1 / (2 * h);
        end

        % Right-hand side B(i) = x(i+1) (corresponding to internal nodes)
        B(i) = x(i + 1);
    end

    % Apply boundary conditions
    B(1) = B(1) - (1 / h^2 - 1 / (2 * h)) * 1; % y(0) = 1
    B(N) = B(N) - (1 / h^2 + 1 / (2 * h)) * 2; % y(1) = 2

    % Solve the system
    Y_internal = A \ B;

    % Construct full solution including boundary points
    Y = zeros(N + 2, 1);
    Y(1) = 1; % y(0) = 1
    Y(end) = 2; % y(1) = 2
    Y(2:end-1) = Y_internal;

    % Plot the solution
    plot(x, Y, '-o', 'DisplayName', sprintf('N = %d', N));
    hold on;
end

% Solve for different values of N and plot results
N_values = [5, 10, 20, 50];
figure; hold on; grid on;
xlabel('x'); ylabel('y(x)');
title('Finite Difference Solution of BVP');

for N = N_values
    finite_difference_bvp(N);
end

legend show;
hold off;
