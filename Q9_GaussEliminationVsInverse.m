
% Q9: Gaussian Elimination vs Inverse Method

A = [3 2 -1; 2 -2 4; -1 0.5 -1];
b = [1; -2; 0];

% Gaussian Elimination
x1 = A\b;
fprintf('Solution by Gaussian Elimination: x = %.4f, y = %.4f, z = %.4f\n', x1);

% Inverse Method
A_inv = inv(A);
x2 = A_inv * b;
fprintf('Solution by Inverse: x = %.4f, y = %.4f, z = %.4f\n', x2);

% Error
error = norm(x1 - x2);
fprintf('Difference between methods: %.6e\n', error);
