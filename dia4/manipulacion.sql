-- paso 1: crear data base 
create database comida_tipicas;
--(moverse a la base de datos correspondiente \c Nombre_base_datos)
-- paso 2 : creamos una tabla llamada cocina 
create table cocina_chilena(id int, nombre varchar(50));
-- PASO 3: insertamos 2 registros a la tabla con sus campos 
INSERT into cocina_chilena(id,nombre) values ('1','pastel de choclo');
INSERT into cocina_chilena(id,nombre) values ('2','umitas');
INSERT into cocina_chilena(id,nombre) values ('3','cazuela');
INSERT into cocina_chilena(id,nombre) values ('4','pastel de papa');
INSERT into cocina_chilena(id,nombre) values ('5','carbonada');
-- PASO 4: actualizar un registro utilizamos update
update cocina_chilena set nombre = 'humitas' where id = 2;
update cocina_chilena set nombre = 'porotos' where id = 4;
update cocina_chilena set nombre = 'garbanzos' where id = 5;
-- PASO 5: BORRAR INFORMACIÓN 

delete from cocina_chilena where id = 2


create database registro_mascotas;
\c registro_mascotas
create table mascotas(id int, nombre varchar(50),raza varchar(30),edad int);
SELECT * from MASCOTAS; 

INSERT into mascotas(id,nombre,raza,edad) values ('1','gato','moscu','3');
INSERT into mascotas(id,nombre,raza,edad) values ('2','copito','boxer','13');
INSERT into mascotas(id,nombre,raza,edad) values ('3','perlita','europeo pelo corto','3');
INSERT into mascotas(id,nombre,raza,edad) values ('4','vivaldi','san bernardo','5');
INSERT into mascotas(id,nombre,raza,edad) values ('5','mozart','perro','4');

SELECT * from MASCOTAS;



update mascotas set nombre = 'moscu', raza = 'gatito' where id = 1;

SELECT * from MASCOTAS;

delete from mascotas where id = 2;

SELECT * from MASCOTAS;

update mascotas set raza = 'gato' where id = 1;

SELECT * from MASCOTAS;

ALTER TABLE mascotas ADD PRIMARY KEY (id);
 