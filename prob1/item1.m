1;

% Calcula la funcion f1(z) = a * (1 / cosh(z) + cos(z)), donde a = M/m

function Y = f1(a, Z)

    Y =  a * (1 ./ cosh(Z) + cos(Z));

endfunction


% Calcula la funcion f2(z) = z * (sin(z) - cos(z) * tanh(z))

function Y = f2(Z)

    Y = Z .* (sin(Z) - cos(Z) .* tanh(Z));

endfunction


% Calcula la funcion f(z) = a * (1 / cosh(z) + cos(z)) - z * (sin(z) - cos(z) * tanh(z)),
% donde a = M/m

function Y = f(a, Z)

    Y = f1(a, Z) - f2(Z);

endfunction


% Grafica las funciones f1(z) y f2(z) en un mismo grafico

function graficar_item1(a, Z, nombre)

    plot(Z, f1(a, Z), Z, f2(Z));

    print(nombre, '-dpng');

endfunction
