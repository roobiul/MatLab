% Q3: Newton-Raphson Method

f = @(x) x^3 - 6*x^2 + 11*x - 6;
df = @(x) 3*x^2 - 12*x + 11;
x0 = input('Enter initial guess: ');
tol = input('Enter tolerance: ');
max_iter = input('Enter max number of iterations: ');
iter = 0;

while iter < max_iter
    x1 = x0 - f(x0)/df(x0);
    if abs(x1 - x0) < tol
        break;
    end
    x0 = x1;
    iter = iter + 1;
end
fprintf('Root: %.6f found in %d iterations
', x1, iter);