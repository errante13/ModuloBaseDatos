 CREATE DATABASE banco;

 CREATE TABLE clientes
(
    id int serial primary key,
    nombre varchar(20) not null,
    apellido varchar(20)not null,
    rut varchar(10) not null unique,
    telefono int, 
    email varchar(50) unique
);

 CREATE TABLE cuentas
(
    id int serial primary key,
    nro_cuenta int not null unique,
    fecha date not null,
    balance int not null,
    cliente_id int,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

