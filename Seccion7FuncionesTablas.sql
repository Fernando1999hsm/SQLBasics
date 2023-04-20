//Columna calculada

Una columna calculada es una columna que no esta declarada en la base de datos pero con el datos de la misma se puede calcular dicho campo al tiempo de realizar una consulta
Ejemplos>>

SELECT nombre, precio, cantidad, precio*cantidad FROM productos;

SELECT nombre, precio, cantidad, precio*0.1, precio-(precio*0.1) FROM productos;

//Funciones de cadenas

SELECT CONCAT('Hola,',' ','Como estas?');
SELECT CONCAT_WS('-','Miguel','Lopez','Martinez');
SELECT LENGTH('Hola a todos');
SELECT LEFT('Buenas noches', 8);
SELECT RIGHT('Buenas noches', 10);
SELECT LTRIM('                UDEMY                ');
SELECT RTRIM('                UDEMY                ');
SELECT TRIM('                UDEMY                ');
SELECT REPLACE('mmm.udemy.com','m','w');
SELECT REPLACE('xxx.udemy.com','x','w');
SELECT REPEAT('SQL',5);
SELECT REVERSE('ANITA LAVA LA TINA');
SELECT LOWER('HOLA, COMO ESTAS?');
SELECT LCASE('HOLA, COMO ESTAS?');
SELECT UPPER('hola como estas?');
SELECT UCASE('hola como estas?');

SELECT CONCAT_WS('/', nombre, precio) FROM productos;

//Funciones Matematicas

SELECT precio FROM productos;
SELECT CEILING(precio) FROM productos;
SELECT FLOOR(precio) FROM productos;
SELECT MOD(10,2);
SELECT POWER(2,3);
SELECT ROUND(20.12);

//Order by

SELECT nombre, descripcion, precio, cantidad FROM productos ORDER BY nombre;
SELECT nombre, descripcion, precio, cantidad FROM productos ORDER BY nombre DESC;
SELECT nombre, descripcion, precio, cantidad FROM productos ORDER BY nombre ASC;

//Operadores logicos AND OR XOR NOT

SELECT * FROM productos WHERE (proveedor = 'HP') AND (precio <= 200);
SELECT * FROM productos WHERE (proveedor = 'HP') OR (precio <= 200);
SELECT * FROM productos WHERE (proveedor = 'HP') XOR (precio <= 200);
SELECT * FROM productos WHERE NOT (proveedor = 'Logitech');

//Operadores relacionales BETWEEN-IN

SELECT * FROM productos WHERE precio>=100 AND <=150;
SELECT * FROM productos WHERE precio BETWEEN 100 AND 150;

SELECT * FROM productos WHERE proveedor = 'HP' or descripcion = 'La mejor laptop';
SELECT * FROM productos WHERE proveedor IN('HP','La mejor laptop');

//Patron de busqueda LIKE-NOTLIKE

SELECT * FROM productos WHERE descripcion = 'laptop';
SELECT * FROM productos WHERE descripcion like '%laptop%';
SELECT * FROM productos WHERE descripcion not like '%laptop%';

SELECT * FROM productos WHERE descripcion = '%l%';

//Patron de busqueda REGEXP-NOT REGEXP

SELECT * FROM productos WHERE proveedor = 'Logitech';
SELECT * FROM productos WHERE proveedor REGEXP 'Logitech';
SELECT * FROM productos WHERE proveedor REGEXP '[p]';
SELECT * FROM productos WHERE proveedor REGEXP '[a-d]';
SELECT * FROM productos WHERE proveedor REGEXP 'o..i';
SELECT * FROM productos WHERE proveedor REGEXP 'a.*a';

//Funcion COUNT

SELECT * FROM productos;
SELECT COUNT(*) FROM productos;
SELECT COUNT(*) FROM productos WHERE proveedor = 'HP';

//Funciones de agrupamiento, MAX-MIN-COUNT-SVG

SELECT SUM(cantidad) from productos;
SELECT SUM(cantidad) from productos WHERE proveedor = 'HP';

SELECT MAX(precio) FROM productos;
SELECT MIN(precio) FROM productos;

SELECT AVG  SVG(precio) FROM productos WHERE nombre like '%laptop%'

//Group by

SELECT nombre, descripcion, precio, cantidad FROM productos GROUP BY proveedor;
SELECT nombre, descripcion, precio, cantidad FROM productos GROUP BY proveedor, nombre;
SELECT nombre, descripcion, precio, cantidad FROM productos GROUP BY nombre DESC;
SELECT nombre, descripcion, precio, cantidad FROM productos GROUP BY nombre ASC;

//Duplicados DISTINCT

SELECT DISTINCT proveedor FROM productos;
SELECT DISTINCT proveedor from productos GROUP BY proveedor ASC;
