Drop database if exists bd_minicore;
CREATE DATABASE bd_minicore;

USE bd_minicore;

DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
	id int NOT NULL AUTO_INCREMENT,
    nombre varchar(100) not null,
    CONSTRAINT pk_Cliente PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Contrato;
CREATE TABLE Contrato (
	id int NOT NULL AUTO_INCREMENT,
    nombre varchar(100) not null,
    monto float default 0.0,
    fecha date,
    clienteID int not null,
    CONSTRAINT pk_Contrato PRIMARY KEY (id),
    CONSTRAINT fk_cliente FOREIGN KEY (clienteID) REFERENCES Cliente(id)
);



insert into cliente(nombre) values('Erick Paredes');  
insert into cliente(nombre) values('Diana Cuenca');  
insert into cliente(nombre) values('Yuliana Nuñez');  
insert into cliente(nombre) values('Lissette Alulema');
insert into cliente(nombre) values('Erick Lopez');   

insert into contrato(nombre,monto,fecha,clienteID) values('Contrato Triplepack',120,'2023-03-15',1);
insert into contrato(nombre,monto,fecha,clienteID) values('Contrato Telefonia',20,'2023-04-20',2);
insert into contrato(nombre,monto,fecha,clienteID) values('Contrato Internet',0,'2023-03-10',2);
insert into contrato(nombre,monto,fecha,clienteID) values('Contrato Television',20,'2023-03-26',3);
insert into contrato(nombre,monto,fecha,clienteID) values('Contrato Triplepack',120,'2023-04-10',4);
insert into contrato(nombre,monto,fecha,clienteID) values('Contrato Internet',40,'2023-03-09',5);