
% Q7: Newton Forward Interpolation

x = [1, 2, 3, 4];
y = [2, 8, 18, 32];
n = length(x);
h = x(2) - x(1);
p_x = 2.5;

% Forward differences
diff_table = zeros(n,n);
diff_table(:,1) = y';
for j = 2:n
    for i = 1:n-j+1
        diff_table(i,j) = diff_table(i+1,j-1) - diff_table(i,j-1);
    end
end

% Newton interpolation at x=2.5
p = (p_x - x(1))/h;
interp_val = y(1);
term = 1;
for i = 1:n-1
    term = term * (p - (i-1))/i;
    interp_val = interp_val + term * diff_table(1,i+1);
end
fprintf('Estimated value at x = %.1f is %.4f\n', p_x, interp_val);

% Plot
xx = linspace(min(x), max(x), 100);
yy = polyval(polyfit(x,y,3), xx);
plot(x, y, 'ro', xx, yy, 'b-'); grid on;
legend('Data points','Interpolation'); title('Newton Forward Interpolation');
