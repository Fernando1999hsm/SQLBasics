//Crear
/*Ejemplo*/
create table usuario(
    nombre varchar(50),
    edad int(15)
);
/*Basico*/
create table usuario(
    nombre varchar(50) NOT NULL,
    edad int(15) NULL,
    PRIMARY KEY('nombre')
);

//Mostrar
show tables;
describe usuario;

//Eliminar
drop table usuario;