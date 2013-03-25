1;

source("item3.m");

function ret = crear_tabla_item4(a, Z0, eps)

    ret = [];

    for z0 = Z0

        [z n] = metodo_newton(a, z0, eps);
        ret = [ret transpose([z0 z])];

    endfor

    ret = transpose(ret);

endfunction
