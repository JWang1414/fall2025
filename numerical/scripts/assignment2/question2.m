% Define the start and end points
start = 2;
finish = 13;

% Define the data vectors
length = finish - start + 1;
c = zeros(length);
e = zeros(length);
r = zeros(length);
v = zeros(length);

for n = start:finish
    % Construct the Hilbert matrix
    hilbert = hilb(n);
    
    % Construct b_n
    x_n = 1:n;
    b_n = hilbert * x_n';
    
    % Solve the system with Gaussian elimination
    x_approx = hilbert \ b_n;
    
    % Calculate the residual to assess the accuracy of the solution
    residual = b_n - hilbert * x_approx;
    norm_residual = norm(residual);
    
    % Condition number of H
    condition_h = cond(hilbert);
    
    % Relative error
    relative_error = norm(x_n - x_approx) / norm(x_n);
    
    % Norm of b_n
    norm_b = norm(b_n);

    % Store results for analysis
    c(n - start + 1) = condition_h;
    e(n - start + 1) = relative_error;
    r(n - start + 1) = norm_residual;
    v(n - start + 1) = norm_b;
end

% Display a table of the data
fprintf(' n  CondNum   RelError  ResNorm   Norm b_n\n');
fprintf('----------------------------------------------\n');
for i = 1:length
    index = i + start - 1;
    fprintf('%2d %9.2e %9.2e %9.2e %9.2e\n', ...
        index, c(i), e(i), r(i), v(i));
end

% Compute c*r/v
result = zeros(length, 1);
for i = 1:length
    result(i) = c(i) * r(i) / v(i);
end

% Plot the data
figure;
ax = semilogy(start:finish, c, '-o', ...
    start:finish, e, '--x', ...
    start:finish, result, ':s');
legend('Condition Number', 'Relative Error', 'c(n)r(n)/v(n)');
set(gca, "fontsize", 14);
xlabel('Matrix Size (n)');
legend('Location', 'northwest');
title('Analysis of Hilbert Matrix Properties');
axis tight;
grid on;
