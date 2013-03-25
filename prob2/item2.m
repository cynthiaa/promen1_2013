1;

source("item1.m");

function graficar_item2(a, Z, nombre)

    plot(Z, f(a, Z));

    print(nombre, '-dpng');

endfunction
