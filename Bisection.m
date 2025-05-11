% Bisection Method to find a root of f(x) = x^3 - 6x^2 + 11x - 6

clc; clear; close all;

% Define the function
f = @(x) x.^3 - 6*x.^2 + 11*x - 6;

% Accept user input for interval [a, b], tolerance, and max iterations
a = input('Enter the lower bound (a): ');
b = input('Enter the upper bound (b): ');
tol = input('Enter the tolerance: ');
max_iter = input('Enter the maximum number of iterations: ');

% Check if initial guesses have opposite signs
if f(a) * f(b) > 0
    disp('Error: f(a) and f(b) must have opposite signs. Choose a valid interval.');
else
    % Initialize iteration counter
    iter = 0;
    while (b - a)/2 > tol && iter < max_iter
        c = (a + b) / 2; % Midpoint
        if f(c) == 0
            break; % Exact root found
        elseif f(a) * f(c) < 0
            b = c; % Root is in left subinterval
        else
            a = c; % Root is in right subinterval
        end
        iter = iter + 1;
    end
    
    % Display the result
    root = (a + b) / 2;
    fprintf('Approximate root: %.6f\n', root);
    fprintf('Iterations taken: %d\n', iter);
end
