% Define the intervals of interest
x1 = [-1, 1];
x2 = [-1, 0, 1];
x = linspace(-1, 1, 100);

% Evaluate the exponential
y1 = exp(-x1);
y2 = exp(-x2);

% Determine the polynomials
p1 = polyfit(x1, y1, 1);
p2 = polyfit(x2, y2, 2);

% Evaluate the polynomial interpolation, Taylor polynomials, and analytic
% function
v1 = polyval(p1, x);
v2 = polyval(p2, x);
u1 = 1 - x;
u2 = 1 - x + (x.^2)./2;
vf = exp(-x);

% Compute the error in the approximations
e1 = vf - v1;
e2 = vf - v2;
e3 = vf - u1;
e4 = vf - u2;

% Compute the max error
maxError1 = max(abs(e1));
maxError2 = max(abs(e2));
maxError3 = max(abs(e3));
maxError4 = max(abs(e4));

% Print the error in a table
errorTable = table({'Linear Interpolation'; 'Quadratic Interpolation'; ...
    'Linear Taylor'; 'Quadratic Taylor'}, ...
    [maxError1; maxError2; maxError3; maxError4], ...
    'VariableNames', {'Method', 'MaxError'});
disp(errorTable);

% Plot all the approximations
figure;
plot(x, v1, 'r-', x, v2, 'g--', x, u1, 'b:', x, u2, 'm-.', x, vf, 'k-');
legend('v1 (Linear Interp)', 'v2 (Quadratic Interp)', ...
    't1 (Linear Taylor)', 't2 (Quadratic Taylor)', 'vf (Exact)');
xlabel('X');
ylabel('Y');
title('Comparison of Approximation Methods');
axis tight;
grid on;

% Plot the error in the approximations
figure;
plot(x, e1, 'r-', x, e2, 'g--', x, e3, 'b:', x, e4, 'm-.');
legend('Error in Linear Interp', 'Error in Quadratic Interp', ...
    'Error in Linear Taylor', 'Error in Quadratic Taylor');
xlabel('X');
ylabel('Error');
title('Error Comparison of Approximation Methods');
axis tight;
grid on;
