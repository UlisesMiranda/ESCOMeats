DROP DATABASE IF EXISTS ESCOMeats;
CREATE DATABASE IF NOT EXISTS ESCOMeats;

USE ESCOMeats;

CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro numeric(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
);

alter table PRODUCTO add rutimapro varchar(100) null;

INSERT INTO PRODUCTO (nompro,despro,prepro,estado,rutimapro)
VALUES ('Gomitas','Aciduladitos, gomitas con azucar y gmoitas enchiladas','5.00',1,'gomitas.jpg')
,('Cacahuates','Cacahuates normales, cacahuates enchilados y habas','5.00',1,'cacahuates.jpg')
,('Papas Barcel','Chips, Takis y Runners','14.99',1,'papitas.jpg')
,('Gorditas de nata','Gorditas de nata normales o rellenas de chocolate','19.99',1,'gorditas.jpg')
,('Pay de limon','Delicioso pay de limon','14.99',1,'pay.jpg')
,('Kinder Delice','Delicioso pastelito de chocolate','14.99',1,'kinderd.jpg')
,('Top-Tops','Botana de maiz sabor hot chili y salsa negra','9.99',1,'toptops.jpg')
,('Barritas','Barritas sabor piña y fresa','10.49',1,'barritas.jpg');

CREATE TABLE USUARIO(
	codusu int not null AUTO_INCREMENT,
	nomusu varchar(50) ,
	apeusu varchar(50) ,
	emausu varchar(50) not null,
	pasusu varchar(20) not null,
	estado int not null,
	CONSTRAINT pk_usuario
	PRIMARY KEY (codusu)
);

INSERT INTO USUARIO (nomusu,apeusu,emausu,pasusu,estado)
VALUES ('Usuario','Demo','correo@example.com','123456',1);

create table PEDIDO(
	codped int not null AUTO_INCREMENT,
	codusu int not null,
	codpro int not null,
	fecped datetime not null,
	estado int not null,
	dirusuped varchar(50) not null,
	telusuped varchar(12) not null,
	PRIMARY KEY (codped)
);
alter table PEDIDO add token varchar(30) null;