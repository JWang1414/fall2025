% Define the values of h
start = -20;
finish = -1;

% Create an array to store the values of h
h = transpose(10.^(start:finish));

% Define the value of x and its associated expected derivative
expected = 3/2;
x = 1;

% Compute the error in the forward difference
derivatives = ((x+h) .^(3/2) - x.^(3/2)) ./ h;
e1 = abs(derivatives - expected);

% Compute the convergence rate
conv1 = log10(e1(1:end-1) ./ e1(2:end)) ./ log10(h(1:end-1) ./ h(2:end));

% Compute the same thing but with x=0
expected = 0;
x = 0;

derivatives = ((x+h) .^(3/2) - x.^(3/2)) ./ h
e0 = abs(derivatives - expected)

conv0 = log10(e0(1:end-1) ./ e0(2:end)) ./ log10(h(1:end-1) ./ h(2:end));

% Display the results
fprintf("%6.2e %10.2e %10.2e\n", h(1), e1(1), e0(1));

for i = 2:length(h)
    fprintf("%6.2e %10.2e %10.2e %6.2f %6.2f\n", h(i), e1(i), e0(i), conv1(i-1), conv0(i-1));
end

% Plot the error in a loglog plot
loglog(h, e1, 'o-', h, e0, 'x--');
xlabel('h');
ylabel('Error');
legend('x=1', 'x=0');
legend('Location', 'southeast');
set(gca, "fontsize", 20);
title('Error in Forward Difference Approximation of f(x) = x^{3/2}');
grid on;
