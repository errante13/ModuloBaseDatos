-- ESCRIP PARA DESFIO 1 -- 

-- 1. Comienza a grabar
-- 2. Entra al terminal
-- 3. Ingresa al cliente de postgreSQL desde el terminal
    psql -U postgres 
-- Crea una base de datos llamada desafio-tuNombre-tuApellido-3digitos
-- (2 Puntos)
    CREATE DATABASE desfio-luis-lagos-111;

-- Ejemplo: desafio-Camila-Fernandez-931
-- 5. Ingresa a la base de datos creada.
-- (1 Punto)
    \c desfio-luis-lagos-111 
-- 6. Crea una tabla llamada clientes, con una columna llamada email de tipo
-- varchar(50), una columna llamada nombre de tipo varchar sin limitación, una
-- columna llamada teléfono de tipo varchar(16), un campo llamado empresa de
-- tipo varchar(50) y una columna de tipo smallint, para indicar la prioridad del
-- cliente. Ahí se debe ingresar un valor entre 1 y 10, donde 10 es más prioritario.
-- (2 Puntos)

CREATE TABLE clientes
(
    email character varying(30),
    nombre character varying(),
    telefono varchar(16),
    empresa varchar(50),
    prioridad smallint

);
-- 7. Ingresa 5 clientes distintos con distintas prioridades, el resto de los valores los
-- puedes inventar.
-- (1 Punto)

INSERT INTO clientes (email,nombre,telefono,empresa,prioridad) values 
('luislagos62@mail.com','luis lagos','956217909','sin_emplo sa',1);

INSERT INTO clientes (email,nombre,telefono,empresa,prioridad) values 
('andy@gmail.com','andy mellado','921456567','microsoft',10);

INSERT INTO clientes (email,nombre,telefono,empresa,prioridad) values 
('roberto@hotmail.com','roberto carlos','9987654321','sony',5);

INSERT INTO clientes (email,nombre,telefono,empresa,prioridad) values 
('brian@correoscalientes.com','brian herrera','912345678','microsoft',10);

INSERT INTO clientes (email,nombre,telefono,empresa,prioridad) values 
('correo@prueba.cl','monbre prueba','1313131313','pruebas',10);

-- 8. Selecciona los tres clientes de mayor prioridad.
-- (2 Puntos)

select * from clientes order by prioridad desc;  
-- 9. Selecciona, de la tabla clientes, una prioridad o una empresa, de forma que el
-- resultado devuelva 2 registros.
-- (2 Puntos)
select * from clientes where prioridad = 10 limit 2;   
-- 10. Sal de postgreSQL.

\q o \quit 

