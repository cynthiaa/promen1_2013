1;

a = 4;
Z = 0.1:0.0001:30;
Z0 = [0.3:0.3:1.8];
Z2 = [1 4 7 10 14 16 19 22 25 28];
z1 = 1.25;
z2 = 4;
EPS = [10**-3 10**-6];
eps = 10**-6;
A = [0.1 0.5 1 2 10];

% Item 1
source("item1.m");

printf("Grafico Item 1:\n");
graficar_item1(a, Z, 'graf_item1.png');

% Item 2
source("item2.m");

printf("Grafico Item 2:\n");
graficar_item2(a, Z, 'graf_item2.png');

% Item 3
source("item3.m");

printf("\nItem 3:\n\n");
printf("\n\tz0\tz\tn\teps\n");
crear_tabla(a, Z0, EPS)

% Item 4
source("item4.m");

printf("\nItem 4:\n\n");
printf("\n\tz0\tz\n");
crear_tabla_item4(a, Z2, eps)

% Item 5
source("item5.m");

printf("\nItem 5:\n\n");

printf("\nPrimera frecuencia adimensional:\n\n");
printf("\n\talpha\tz\n");
crear_tabla_item5(A, z1, eps)

printf("\nSegunda frecuencia adimensional:\n\n");
printf("\n\talpha\tz\n");
crear_tabla_item5(A, z2, eps)
