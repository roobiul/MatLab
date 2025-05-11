
% Q5: Simpson's 1/3 Rule for Integral of f(x) = exp(-x^2)

f = @(x) exp(-x.^2);
a = input('Enter lower limit a: ');
b = input('Enter upper limit b: ');
n = input('Enter number of subintervals (even number): ');

if mod(n,2) ~= 0
    error('Number of subintervals must be even');
end

h = (b - a) / n;
x = a:h:b;
y = f(x);

I = h/3 * (y(1) + 2*sum(y(3:2:end-2)) + 4*sum(y(2:2:end)) + y(end));
fprintf('Approximate integral using Simpson''s 1/3 rule: %.6f\n', I);
