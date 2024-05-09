--paso 1 acceder a la base de datos 
psql -U postgres

-- listar bases de datos 

postgres=# \l

-- conectarse a la base de datos  \c nombre_base_datos

\c prueba

-- crear base de datos 
CREATE DATABASE prueba2 

-- creación de tablas 

CREATE TABLE public.clientes
(
    nombre character varying(30),
    apellido character varying(30)
);

-- mostrar lista de tablas 
postgres=# \d o \d+

00000000--mostrar tablas con mayor información(detalles) 

postgres=# \d nombre_tabla

-- agregar datos en las tablas 

INSERT INTO clientes (nombre,apellido) values ('luis','lagos');