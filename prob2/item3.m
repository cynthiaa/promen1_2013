1;

source("item1.m");

% Devuelve la cantidad de iteraciones necesarias para aproximar z
% con error menor a eps utilizando como valor inicial z0

function [z n] = metodo_newton(a, z0, eps)

    z = z_ant = z0;
    n = 0;

    % Realiza el ciclo hasta que el error sea menor que eps

    do

        eval_f = f(a, z_ant);
        eval_f_prima = f_prima(a, z_ant);

        aux = z;
        z = z_ant - eval_f / eval_f_prima;

        error = abs((z - z_ant) / z);

        z_ant = aux;

        n = n + 1;

    until (error < eps)

endfunction


% Calcula la derivada de f evaluada en z, donde a = M/m

function y = f_prima(a, z)

        y = - ((a + z**2) * cos(z) + a * z * sin(z)) / z**2;

endfunction


% Crea una tabla con el numero de iteraciones del metodo de Newton,
% para aproximar el primer cero de f segun la eleccion del valor inicial
% para distintas precisiones y valores para a = M/m

function ret = crear_tabla(A, Z0, EPS)

    ret = [];

    for a = A

        for z0 = Z0

            for eps = EPS

                [z n] = metodo_newton(a, z0, eps);
                ret = [ret transpose([z0 z n eps])];

            endfor

        endfor

    endfor

    ret = transpose(ret);

endfunction
