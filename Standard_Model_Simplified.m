% Define symbolic variables
syms x t p m real
syms phi pi a_p a_p_dag

% Define the Lagrangian density for a free scalar field
Lagrangian = 0.5 * diff(phi, t)^2 - 0.5 * diff(phi, x)^2 - 0.5 * m^2 * phi^2;

% Display the Lagrangian
disp('Lagrangian density:');
disp(Lagrangian);

% Define the Klein-Gordon equation
KleinGordonEq = (box(phi, t, x) + m^2 * phi);

% Display the Klein-Gordon equation
disp('Klein-Gordon equation:');
disp(KleinGordonEq);

% Define the quantization of the scalar field
quantizedField = int(1/sqrt(2*pi) * (a_p * exp(-i*p*x) + a_p_dag * exp(i*p*x))/sqrt(2), p, -inf, inf);

% Display the quantized field
disp('Quantized scalar field:');
disp(quantizedField);

% Define the commutation relation for creation and annihilation operators
commutationRelation = a_p * a_p_dag - a_p_dag * a_p;

% Display the commutation relation
disp('Commutation relation:');
disp(commutationRelation);

% Define the box operator
function bx = box(f, t, x)
    syms x real
    bx = diff(f, t, 2) - diff(f, x, 2);
end

