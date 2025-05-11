% Q2: Bisection Method

f = @(x) x^3 - 6*x^2 + 11*x - 6;
a = input('Enter lower bound a: ');
b = input('Enter upper bound b: ');
tol = input('Enter tolerance: ');
max_iter = input('Enter max number of iterations: ');
iter = 0;

if f(a)*f(b) >= 0
    disp('Invalid interval. f(a)*f(b) must be < 0');
else
    while (b - a)/2 > tol && iter < max_iter
        c = (a + b)/2;
        if f(c) == 0
            break;
        elseif f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end
        iter = iter + 1;
    end
    root = (a + b)/2;
    fprintf('Root: %.6f found in %d iterations
', root, iter);
end