
% Q6: Finite Difference for BVP: y'' - 2y' + y = x

N = input('Enter number of intervals (N): ');
h = 1/N;
x = linspace(0,1,N+1);
a = 1 + 2/h^2;
b = -2/h^2 - 2/h;
c = 1/h^2;
d = x(2:end-1)';

A = diag(repmat(a,N-1,1)) + diag(repmat(b,N-2,1),1) + diag(repmat(c,N-2,1),-1);
d(1) = d(1) + (1/h^2 + 2/h)*1;
d(end) = d(end) + (1/h^2)*2;

y_inner = A\d;
y = [1; y_inner; 2];

plot(x, y, '-o'); grid on;
xlabel('x'); ylabel('y'); title('Solution using Finite Difference');
