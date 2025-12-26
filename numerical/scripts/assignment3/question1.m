% calculating damped, driven pendulum equations
% 2x2 nonlinear system
% z1 = angle, z2 = velocity

t0 = 0; tf = 40;
z0 = [1; 0];

g = 9.81; mm = 2; l = 1; w = sqrt(g/l);
gam_list = [0, 2, 4, 8]; A_list = [0, 1, 2, 4];

dt = 0.0001; nst = tf/dt;
maxit = 10; tol = 1e-12; % Newton's parameters
tolrest = 1e-8;

% Saves the heights in a matrix
heights = zeros(length(gam_list), length(A_list), nst + 1);

for a = 1:length(gam_list)
    for b = 1:length(A_list)
        % Initialize variables
        gam = gam_list(a);
        A = A_list(b);
        coeff1 = gam / (mm * l^2);
        coeff2 = A / (mm * l^2);

        z = z0;
        nit = zeros(1, nst);
        zi = zeros(2, nst + 1);
        zi(:, 1) = z;
        nlr = 0;

        for i = 1:nst
            tn = i*dt;
            zinit = z; % initial guess for Newton's of the i-th step
        
            for k = 1:maxit
                % define vector f and its inf norm
                step = [-z(2); coeff1*z(2) + (g/l)*sin(z(1)) - coeff2*cos(w*tn)];
                diff = [z(1) - zinit(1); z(2) - zinit(2)];
                f = diff + dt .* step;
                fnorm = norm(f, inf);
                
                % stopping criterion
                if fnorm < tol
                    break;
                end
        
                % define Jacobian matrix
                J_step = [0, -1; (g/l)*cos(z(1)), coeff1];
                J = eye(2) + dt .* J_step;
        
                % apply Newton's iteration to compute new z
                z = z - J \ f;
            end
        
            % Check if the sign of z(1) changes
            if z(1) * zinit(1) < 0
                nlr = nlr + 1;
            end
        
            % Save data
            zi(:, i+1) = z;
            nit(i) = k;
        
            % End if the mass is at rest
            if abs(z(1)) + abs(z(2)) < tolrest
                break;
            end
        end

        % Save the height data
        heights(a, b, :) = -cos(zi(1, :));
        
        % Table heading for (c) and (d)
        fprintf(' gam  ampl trest     nst nlr  nittot  angle     veloc   min max avg\n');
        fprintf('%4.1f %4.1f %7.3f %6d %3d %7d %9.2e %9.2e %2d %2d %4.2f\n', ...
               gam, A, tn, i, nlr, sum(nit), zi(1, i+1), zi(2, i+1), ...
               min(nit), max(nit), sum(nit)/(i+1));
    end
end

% Plot the heights when A = 2
heights1 = squeeze(heights(1, 3, :));
heights2 = squeeze(heights(2, 3, :));
time = linspace(t0, tf, nst + 1);
figure(1);
plot(time, heights1, 'r-', time, heights2, 'b-');
legend('\gamma = 0', '\gamma = 2');
xlabel('Time (s)');
ylabel('Height (m)');
title('Height of the Pendulum for \gamma = 0,2 and A = 2');
axis tight;
grid on;
saveas(figure(1), 'pendulum_A.png');

% Plot the heights when gamma = 2
heights3 = squeeze(heights(2, 4, :));
figure(2);
plot(time, heights2, 'b-', time, heights3, 'k-');
legend('A = 2', 'A = 4');
xlabel('Time (s)');
ylabel('Height (m)');
title('Height of the Pendulum for \gamma = 2 and A = 2, 4');
axis tight;
grid on;
saveas(figure(2), 'pendulum_gamma.png');
