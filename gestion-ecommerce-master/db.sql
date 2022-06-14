CREATE TABLE PRODUCTO(
	codpro int not null AUTO_INCREMENT,
	nompro varchar(50) null,
	despro varchar(100) null,
	prepro decimal(6,2) null,
	estado int null,
	CONSTRAINT pk_producto
	PRIMARY KEY (codpro)
)character set latin1 collate latin1_spanish_ci;

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