// Tabla necesaria

create table alumnos(
    nombre varchar(50),
    apellido varchar(50),
    direccion varchar(100),
    telefono varchar(15),
    edad int(11)
);

// Ingresar datos a tabla INSERT

INSERT INTO alumnos(nombre, apellido, direccion, telefono, edad) VALUES ('Juan','Martinez','Barrio Duarte','9827221',35);
INSERT INTO alumnos VALUES ('Pedro','Montero','27 de febrero','98109203',15);
INSERT INTO alumnos(nombre, telefono, edad) VALUES ('Miguel','982089783',25);

// Consultar datos SELECT

SELECT * FROM alumnos;
SELECT nombre, edad, direccion FROM alumnos;
SELECT CONCAT(nombre,apellido), telefono FROM alumnos;

// Consulta con condiciones WHERE

SELECT * FROM alumnos WHERE nombre = 'Pedro';
SELECT nombre,edad FROM alumnos WHERE edad = 25;

#Operadores Relacionales
    =
    <
    >
    <>
    >=
    <=

SELECT nombre,edad FROM alumnos WHERE edad >= 15;
SELECT * FROM alumnos WHERE nombre <> 'Pedro';

// Borrar registros DELETE FROM

DELETE FROM alumnos;
#Cuidado con este comando#

DELETE FROM alumnos WHERE nombre = 'Juan';

//Actualizar registros UPDATE SET

UPDATE alumnos SET edad = 22;
#Modifica todos los registros#

UPDATE alumnos SET edad = 25 WHERE nombre = 'Miguel';

UPDATE alumnos SET edad = 99, direccion = 'Cerrada #31' WHERE nombre = 'Pedro';