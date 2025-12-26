% calculating pendulum equations
% 2x2 nonlinear system
% z1 = angle, z2 = velocity

t0 = 0; tf = 40;
z0 = [1; 0];

g = 9.81; mm = 2; l = 1; w = sqrt(g/l);
gam = 0; A = 0;

dt = 0.001; nst = tf/dt;
maxit = 10; tol = 1e-12; % Newton's parameters
tolrest = 1e-8;

z = z0; zi(:, 1) = z; nit = [];
fprintf('tmstp Newtit dt      angle            veloc            normresid\n');
for i = 1:2 % two timesteps
    tn = i*dt;
    zinit = z; % initial guess for Newton's of the i-th step
    for k = 1:maxit
        % define vector f and its inf norm
        step = [-z(2); coeff1*z(2) + (g/l)*sin(z(1)) - coeff2*cos(w*tn)];
        diff = [z(1) - zinit(1); z(2) - zinit(2)];
        f = diff + dt .* step;
        fnorm = norm(f, inf);

        % Print data for (b)
        fprintf('%5d %5d %8.1e %16.12f %16.12f %8.2e\n', ...
             i, k-1, dt, z(1), z(2), fnorm);
        
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
    zi(:, i+1) = z;
    nit(i) = k;
end
