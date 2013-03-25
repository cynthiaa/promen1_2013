1;

source("item3.m");

function ret = crear_tabla_item5(A, z0, eps)

    ret = [];

    for a = A

        [z n] = metodo_newton(a, z0, eps);
        ret = [ret transpose([a z])];

    endfor

    ret = transpose(ret);

endfunction

