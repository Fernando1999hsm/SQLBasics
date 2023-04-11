//Borrar base de datos (No aplicable a todos los manejadores)

DROP DATABASE if exist curso;

SHOW databases;

CREATE DATABASE if not exist curso;

use curso;

CREATE TABLE if not exists usuario(
    nombre varchar(50),
    apellido varchar(50),
    correo varchar(100),
    primary key(nombre)
);

DESCRIBE usuario;

INSERT INTO usuario VALUES('Juan','Perez','juan@test.com');

//Esta linea marcara error, porque el campo 'nombre' es llave primaria y no se puede repetir
INSERT INTO usuario VALUES('Juan','Martinez','Carlos@test.com');

CREATE TABLE if not exists producto(
    id int(11) auto_increment,
    producto varchar(50),
    descripcion text,
    precio float(11,2),
    primary key(id)
);

DESCRIBE producto;

//Inserta un producto, se especiica null al id porque en la tabla se le indico que dicho campo era auto incremental, por lo que se asignara automaticamente un valor
INSERT INTO producto VALUES(null,'Laptop','La mejor laptop del mercado',128.68);
INSERT INTO producto VALUES(null,'Mouse','Prende RGB',15.8);
INSERT INTO producto(id, producto, descripcion, precio) VALUES(null,'Laptop','La mejor laptop del mercado',128.6);
INSERT INTO producto(producto, descripcion, precio) VALUES('Mouse','Prende RGB',20.8);

SELECT * FROM producto;

//Truncate es un comando especial, elimina la tabla seleccionada y vuelve a crear la tabla, basicamente vacia la tabla de cualquier registro agregado
TRUNCATE TABLE producto;

//UNSIGNED es un comando que se usa en los campos de las tablas, para aquellos campos que necesitamos que un rango numerico mas grande y que no sea negativo en ningun momento
UNSIGNED 

CREATE TABLE persona(
    id integer unsigned not null,
    nombre varchar(50),
    edad integer unsigned,
    primary key(id)
);
