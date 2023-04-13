//tipos de datos

#enteros

TINYINT 0 255
numero TINYINT(1)

SMALLINT 0 65,535
numero SMALLINT(11)

MEDIUMINT 0 16,777,215
numero MEDIUMINT(100)

INT O INTEGER 0 4,294,967,295
numero INT(1,000)

BIGINT 0 18,446,744,073,709,551,615
numero BIGINT(10,000)

#decimales
Pueden usar numeros muy grandes para especificarlo, a medida de representacion, usaremos de ejemplo los bytes disponibles
INT -> 4 bytes

FLOAT -> 4 a 8 bytes

DOUBLE -> 8 bytes

DECIMAL > 5 a 17 bytes


#cadenas

CHAR 0 255
nombre CHAR(1)

VARCHAR 0 255
nombre VARCHAR(50)

BINARY / VARBINARY

TEXT 0 65,535

BLOB 0 65,535

TINYBLOB 255/ MEDIUMBLOB / LONGBLOB 4GB

ENUM 0 65,535

SET 0 64

#fecha

DATE
AAAA-MM-DD

DATETIME
AAAA-MM-DD HH:MM:SS

TIME
HH:MM:SS

TIMESTAMP
AAAA-MM-DD
AA-MM-DD

ON UPDATE CURRENT_TIMESTAMP

YEAR

#atributo DEFAULT

#el atributo DEFAULT permite tener un elemento agregado en caso de que no se agrege correctamente dicho elemento

CREATE TABLE if not exists libros(
    id int UNSIGNED auto_increment,
    titulo VARCHAR(40) NOT NULL,
    editorial VARCHAR(15),
    autor VARCHAR(30) default 'Desconocido',
    precio decimal(5,2) UNSIGNED DEFAULT 8.25,
    cantidad MEDIUMINT UNSIGNED NOT NULL,
    primary key(id)
);

#atributo ZEROFILL

#el atributo ZEROFILL es para los campos numericos, rellena el numero con 0, ejemplo: insert(27) -> 000027

CREATE TABLE if not exists libros(
    id int(6) ZEROFILL auto_increment,
    titulo VARCHAR(40) NOT NULL,
    editorial VARCHAR(15),
    autor VARCHAR(30) default 'Desconocido',
    precio decimal(5,2) UNSIGNED DEFAULT 8.25,
    cantidad MEDIUMINT ZEROFILL NOT NULL,
    primary key(id)
);