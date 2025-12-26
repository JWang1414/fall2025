% Define the initial function
a = -1; b = 2;
no_points = 1000;
xe = linspace(a, b, no_points);
ye = exp(-xe);

% Turn off polyfit warnings
warning('off', 'MATLAB:polyfit:PolyNotUnique');

% Begin the analysis of the polynomial and linear methods
disp(['interval (' num2str(a) ',' num2str(b), ')'])
disp('  n    err poly   err lin_spl')

for nn = 1:6
    % Setup the interpolating points
    n = 2^nn;
    xi = linspace(a, b, n+1);
    yi = exp(-xi);

    % Compute the interpolants, and evaluate them
    yp = polyval(polyfit(xi, yi, length(xi)), xe);
    yl = interp1(xi, yi, xe, "linear");

    % Approximate error with the infinity norm
    ep = max(abs(yp - ye));
    el = max(abs(yl - ye));

    % Print data
    fprintf('%3d %12.3e %12.3e\n', n, ep, el);
end

% Begin the analysis of the linear and cubic spline methods
fprintf('\n')
disp(['interval (' num2str(a) ',' num2str(b), ')'])
disp('    n   err lin_spl err cub_spl')

for nn = 4:14
    % Setup the interpolating points
    n = 2^nn;
    xi = linspace(a, b, n+1);
    yi = exp(-xi);
    
    % Compute the interpolants, and evaluate them
    yl = interp1(xi, yi, xe, "linear");
    yc = interp1(xi, yi, xe, "spline");

    % Approximate error with the infinity norm
    el(nn) = max(abs(yl - ye));
    ec(nn) = max(abs(yc - ye));

    % Print data
    fprintf('%5d %12.3e %12.3e ', n, el(nn), ec(nn));
    if (nn > 4)
        fprintf('%6.1f %6.1f\n', log(el(nn-1)/el(nn))/log(2), ...
                                 log(ec(nn-1)/ec(nn))/log(2));
    else
        fprintf('\n');
    end
end
