% Define symbolic variables
syms x t p m real
syms phi pi a_p a_p_dag

% Define the Klein-Gordon field profile
phi_profile = exp(-p^2 / (2*m^2)) * cos(p * x);

% Create a function handle for phi_profile
phi_profile_func = matlabFunction(phi_profile, 'Vars', [x, p, m]);

% Plotting Klein-Gordon equation
figure;
subplot(2, 1, 1);
title('Klein-Gordon Equation');
xlabel('x');
ylabel('\phi(x, t)');
grid on;

% Plot the Klein-Gordon field profile
fplot(@(x) phi_profile_func(x, 2, 1), [0, 10], 'LineWidth', 2); % Example with m=2
legend('\phi(x, t)');

% Plotting Commutation Relation
subplot(2, 1, 2);
title('Commutation Relation');
xlabel('a_p');
ylabel('a_p_dag');
grid on;

% Plot the commutation relation
commutation_relation_line = linspace(-5, 5, 100);
plot(commutation_relation_line, commutation_relation_line, 'r', 'LineWidth', 2);
hold on;
plot(commutation_relation_line, -commutation_relation_line, 'b--', 'LineWidth', 2);
legend('a_p a_p_dag - a_p_dag a_p', '- (a_p a_p_dag - a_p_dag a_p)');
hold off;
