1;

% Calcula la funcion f1(z) = a * cos(z) / z, donde a = M/m

function Y = f1(a, Z)

    Y =  a * cos(Z) ./ Z;

endfunction


% Calcula la funcion f2(z) = sin(z)

function Y = f2(Z)

    Y = sin(Z);

endfunction


% Calcula la funcion f(z) = a * cos(z) / z - sin(z), donde a = M/m

function Y = f(a, Z)

    Y = f1(a, Z) - f2(Z);

endfunction


% Grafica las funciones f1(z) y f2(z) en un mismo grafico

function graficar_item1(a, Z, nombre)

    plot(Z, f1(a, Z), Z, f2(Z));

    print(nombre, '-dpng');

endfunction
