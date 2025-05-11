
% Q8: Lagrange Interpolation

x = [1, 2, 3, 4];
y = [2, 8, 18, 32];
p_x = 2.5;
n = length(x);
L = zeros(n,1);
for i = 1:n
    L(i) = prod((p_x - x([1:i-1, i+1:end])) ./ (x(i) - x([1:i-1, i+1:end])));
end
interp_val = sum(y .* L);
fprintf('Lagrange interpolation at x = %.1f is %.4f\n', p_x, interp_val);

% Plot
xx = linspace(min(x), max(x), 100);
yy = zeros(size(xx));
for i = 1:n
    Li = ones(size(xx));
    for j = 1:n
        if j ~= i
            Li = Li .* (xx - x(j)) / (x(i) - x(j));
        end
    end
    yy = yy + y(i) * Li;
end
plot(x, y, 'ro', xx, yy, 'b-'); grid on;
legend('Data points','Lagrange Polynomial'); title('Lagrange Interpolation');
