1;

% Calcula la funcion f1(z) = 4 * (1 / cosh(z) + cos(z))

function Y = f1(Z)

    Y =  4 * (1 ./ cosh(Z) + cos(Z));

endfunction


% Calcula la funcion f2(z) = z * (sin(z) - cos(z) * tanh(z))

function Y = f2(Z)

    Y = Z .* (sin(Z) - cos(Z) .* tanh(Z));

endfunction


% Calcula la funcion f(z) = 4 * (1 / cosh(z) + cos(z)) - z * (sin(z) - cos(z) * tanh(z))

function Y = f2(Z)

    Y = f1(Z) - f2(Z);

endfunction


Z = 0:0.1:30;

plot(Z, f1(Z));
plot(Z, f2(Z));
