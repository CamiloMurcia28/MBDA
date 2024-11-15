--Ciclo 1 TABLAS--
CREATE TABLE Usuario2(
    codigo VARCHAR(10) NOT NULL,
    tid VARCHAR(2) NOT NULL,
    nid VARCHAR(10)NOT NULL,
    nombre VARCHAR(50)NOT NULL,
    programa VARCHAR(20),
    correo VARCHAR(50)NOT NULL,
    registro DATE NOT NULL,
    suspension DATE,
    nSuspensiones INT
);

CREATE TABLE Califica2(
    usuario VARCHAR(10) NOT NULL,
    articulo INT NOT NULL,
    estrellas INT NOT NULL
);

CREATE TABLE Universidad(
    codigo VARCHAR(10) NOT NULL,
    nombre VARCHAR(20)NOT NULL,
    direccion VARCHAR(50) NOT NULL
);

CREATE TABLE Combo_Oferta(
    numero INT NOT NULL,
    fecha DATE NOT NULL,
    precio REAL NOT NULL,
    foto VARCHAR(200),
    descripcion VARCHAR(500) NOT NULL,
    estado VARCHAR(1) NOT NULL,
    trueque VARCHAR(1) NOT NULL
);

CREATE TABLE Articulo2(
    aid  INT NOT NULL,
    descripcion VARCHAR(20),
    caracteristicas VARCHAR(20),
    estado VARCHAR(1) NOT NULL,
    foto VARCHAR(200),   
    precio INT NOT NULL,
    disponible INT NOT NULL
);

CREATE TABLE Ropa(
    aid INT NOT NULL,
    talla VARCHAR(2) NOT NULL,
    material VARCHAR(10),
    color VARCHAR(10)
);

CREATE TABLE Perecedero(
    aid INT NOT NULL,
    vencimiento DATE NOT NULL
);

CREATE TABLE Categoria(
    codigo VARCHAR(5) NOT NULL,
    nombre VARCHAR(20)NOT NULL,
    tipo VARCHAR(5) NOT NULL,
    minimo REAL NOT NULL, 
    maximo REAL NOT NULL
);

CREATE TABLE Oferta(
    combo_oferta INT NOT NULL,
    articulo INT NOT NULL
);

--CICLO 1: XTABLAS--
DROP TABLE Usuario2;

DROP TABLE Califica2;

DROP TABLE Universidad;

DROP TABLE Combo_oferta;

DROP TABLE Articulo2;

DROP TABLE Ropa;

DROP TABLE Categoria;

DROP TABLE Perecedero;

DROP TABLE Oferta;

--CICLO 1: POBLAROK --

INSERT INTO Usuario (codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones) values ('866895333', 'TI', '946091956', 'RobertBalsom', 'Sistemas', 'rbalsom0@statcounter.com', '12-03-2022', '02-01-2022', '1');
INSERT INTO Usuario (codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones) values ('512471885', 'CC', '487432045', 'MayneVanikov', 'Mecanica', 'mvannikov1@ucla.edu', '21-03-2022', null, null);
INSERT INTO Usuario (codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones) values ('298387443', 'CC', '355496797', 'ChelseaClist', 'Ambiental', 'cclist2@amazon.co.jp', '24-02-2022', '18-06-2022', '3');

INSERT INTO Califica(usuario, articulo, estrellas) values('946091956', '4', '3');
INSERT INTO Califica(usuario, articulo, estrellas) values('512091956', '4', '4');
INSERT INTO Califica(usuario, articulo, estrellas) values('355496797', '2', '5');

INSERT INTO Universidad(codigo, nombre, direccion) values ('866895333','Julio','calle 207#59');
INSERT INTO Universidad(codigo, nombre, direccion) values ('512471885','pedag','calle 72#13');
INSERT INTO Universidad(codigo, nombre, direccion) values ('298387443','nacional','carrera 30');

INSERT INTO Combo_Oferta (numero, fecha, precio , foto, descripcion, estado, trueque ) values ('2', '12-03-2022', '150000', 'link', 'descripcion combo oferta 1',�'O', 'A');
INSERT INTO Combo_Oferta (numero, fecha, precio , foto, descripcion, estado, trueque ) values ('2', '21-08-2022', '20000', 'link', 'descripcion combo oferta 2',�'A', 'I');
INSERT INTO Combo_Oferta (numero, fecha, precio , foto, descripcion, estado, trueque ) values ('2', '02-01-2022', '100000', 'link', 'descripcion combo oferta 3',�'C', 'C');

INSERT INTO Articulo2 (aid, descripcion, caracteristicas, estado, foto, precio, disponible) values ('946091956', 'descripcion articulo 1', 'caracteristicas articulo 1','O', 'link',�'50000',�'1');
INSERT INTO Articulo2 (aid, descripcion, caracteristicas, estado, foto, precio, disponible) values ('512091956', 'descripcion articulo 2', 'caracteristicas articulo 2','A', 'link',�'50000',�'1');
INSERT INTO Articulo2 (aid, descripcion, caracteristicas, estado, foto, precio, disponible) values ('355496797', 'descripcion articulo 3', 'caracteristicas articulo 3','A' ,'link',�'50000',�'1');

INSERT INTO Ropa (aid, talla, material, color) values ('946091956', 'XS', 'algodon',�'negro');
INSERT INTO Ropa (aid, talla, material, color) values ('512091956', 'S', 'algodon',�'blanco');
INSERT INTO Ropa (aid, talla, material, color) values ('355496797', 'M', 'algodon',�'negro');

INSERT INTO Perecedero (aid, vencimiento) values ('946091956',�'03-11-2022');
INSERT INTO Perecedero (aid, vencimiento) values ('512091956',�'11-07-2022');
INSERT INTO Perecedero (aid, vencimiento) values ('355496797',�'02-04-2022');

INSERT INTO Categoria (codigo, nombre, tipo) values ('946091956' ,'ropa',�'jum');
INSERT INTO Categoria (codigo, nombre, tipo) values ('512091956' ,'pantalon',�'jum');
INSERT INTO Categoria (codigo, nombre, tipo) values ('355496797' ,'medias',�'jum');

--CICLO 1: POBLARNOOK 2--
INSERT INTO Usuario2(tid, nid, nombre, programa, correo, registro) VALUES('JUK', '100749830367', 'Mlton Gutierrez','Sistemas', 'nosequeponer','12-03-2053');
--Se verifica que la nulalidad de codigo se presente, y la cantidad de caracteres de los atributos nid y tid.

INSERT INTO Universidad(nombre) VALUES('EAFIT');
--Se verifica la nulalidad del codigo--

INSERT INTO Articulo(aid,descripcion, caracteristicas) VALUES('1234', 'SI ES BUENO', 'BUENO Y BARATO');
--Se verifica la nulalidad de los atributos precio, disponible y estado--

INSERT INTO Ropa(aid, talla, material, color) VALUES('423','GFS','algodon','naranja');
--Se verifica que no se sobrepase la cantidad de caracteres para la talla---

INSERT INTO Categoria(codigo,nombre, tipo) VALUES('kahjsd', 'nose:(', 'unicornio');
--Se verifica la nulalidad de los atributos miimo y maximo, ademas de que no se sobrepase la cantidad de caracteres de tipo--


--CICLO 1: POBLARNOOK 3--
INSERT INTO Usuario2(codigo, tid, nid, nombre, programa, correo, registro) VALUES('1000090001','JU', '1007498303', 'Mlton Gutierrez','Sistemas', 'nosequeponer','12-03-2023');
--Aun se puede insertar cualquier tipo de documento y correo siendo esto una de las restricciones del diagrama conceptual. --

INSERT INTO Articulo(aid, estado, foto, precio, disponible) VALUES('123124', '?', 'nourslsdf', '14552', '4');
--El id del articulo, estado, foto precio y disponible no siguen con los requerimientos del diargama.--

INSERT INTO Califica(usuario, articulo, estrellas) VALUES('123341', '345', '7');
--El id del usurio y del articulo no existen ni tienen sentido, el valor de las estrellas esta fuera del rango--

INSERT INTO Ropa(aid, talla, material, color) VALUES('234', 'g', 'latex', 'unicornio');
--Se permite insertar una caracteristica de un articulo que no se ha creado y una talla que no cumple con el tipo del diagrama conceptual--

INSERT INTO Perecedero(aid, vencimiento) VALUES('234', '04-04-2044');
--Se permite insertar una caracteristica de un ariticulo que no existe y con aid repetido.--


--CICLO 1: XPLOBAR--
DELETE FROM Usuario2;

DELETE FROM Califica;

DELETE FROM Universidad;

DELETE FROM Combo_oferta;

DELETE FROM Articulo;

DELETE FROM Ropa;

DELETE FROM Categoria;

DELETE FROM Perecedero;

DELETE FROM Oferta;

--CICLO 1: PRIMARIAS

ALTER TABLE Universidad ADD CONSTRAINT PK_UNIVERSIDAD PRIMARY KEY(codigo);

ALTER TABLE Usuario2 ADD CONSTRAINT PK_USUARIO PRIMARY KEY(nid);

ALTER TABLE Califica2 ADD CONSTRAINT PK_CALIFICA PRIMARY KEY(articulo);

ALTER TABLE Combo_oferta ADD CONSTRAINT PK_COMBO_OFERTA PRIMARY KEY(numero);

ALTER TABLE Articulo2 ADD CONSTRAINT PK_Articulo PRIMARY KEY(aid);

ALTER TABLE Ropa ADD CONSTRAINT PK_Ropa PRIMARY KEY(aid);

ALTER TABLE Categoria ADD CONSTRAINT PK_CATEGORIA PRIMARY KEY(codigo);

ALTER TABLE Perecedero ADD CONSTRAINT PK_Perecedero PRIMARY KEY(aid);

ALTER TABLE Oferta ADD CONSTRAINT PK_Oferta PRIMARY KEY(articulo);

--UNICAS--

ALTER TABLE Universidad ADD CONSTRAINT UK_UNIVERSIDAD UNIQUE(direccion);

ALTER TABLE Usuario2 ADD CONSTRAINT UK_USUARIO UNIQUE(correo);

ALTER TABLE Combo_oferta ADD CONSTRAINT PK_COMBO_OFERTA PRIMARY KEY(numero);

ALTER TABLE Articulo2 ADD CONSTRAINT PK_Articulo PRIMARY KEY(aid);

ALTER TABLE Ropa ADD CONSTRAINT PK_Ropa PRIMARY KEY(aid);

ALTER TABLE Categoria ADD CONSTRAINT PK_CATEGORIA PRIMARY KEY(codigo);

ALTER TABLE Perecedero ADD CONSTRAINT PK_Perecedero PRIMARY KEY(aid);

--FOREIGN--

ALTER TABLE Usuario ADD CONSTRAINT FK_USUARIO FOREIGN KEY(codigo) REFERENCES Universidad(codigo);
ALTER TABLE Calificacion ADD CONSTRAINT FK_CALIFICACION FOREIGN KEY(usuario) REFERENCES Usuario(Nid);
ALTER TABLE Articulo ADD CONSTRAINT FK_ARTICULO FOREIGN KEY(aid) REFERENCES Calificacion(Articulo);
ALTER TABLE Combo-Oferta ADD CONSTRAINT FK_CO FOREIGN KEY(foto) REFERENCES Articulo(foto);
ALTER TABLE Ropa ADD CONSTRAINT FK_ROPA FOREIGN KEY(aid) REFERENCES Articulo(foto);     
ALTER TABLE Perecedero ADD CONSTRAINT FK_PERECEDERO FOREIGN KEY(aid) REFERENCES Articulo(foto); 
ALTER TABLE Oferta ADD CONSTRAINT FK_OFERTA FOREIGN KEY(aid) REFERENCES Articulo(foto); 


CREATE DOMAIN TCOLOR AS VARCHAR(2) CONSTRAINT CHECK (VALUE IN (�CC�,�TI�));
ALTER TABLE USUARIO ADD CONSTRAINT CK_USUARIO correo CHECK (correo LIKE '%.com');

CREATE DOMAIN TConsecutivo AS CLOB CONSTRAINT CHECK (VALUE > 0);
CREATE DOMAIN TPrecio AS CLOB CONSTRAINT CHECK (VALUE IN (50, 100, 150, 200, 250);
ALTER TABLE COMBO_OFERTA ADD CONSTRAINT CK COMBO_OFERTA foto CHECK (foto LIKE �https://%.%/%.pdf�);
CREATE DOMAIN TEstadoUsuario AS VARCHAR(1) CONSTRAINT CHECK( VALUE IN ('O', 'A', 'C'));
CREATE DOMAIN TEstadoTrueque AS VARCHAR(1) CONSTRAINT CHECK( VALUE IN ('A', 'C', 'I', 'E', 'R'));

CREATE DOMAIN TIdArticulo AS CLOB CONSTRAINT CHECK (VALUE > 0 AND VALUE <=16);
CREATE DOMAIN TURL AS VARCHAR CONSTRINT CHECK (TURL LIKE �https://%.%/%.pdf�);
CREATE DOMAIN TModena AS CLOB CONSTRAINT CHECK (VALUE > 0 AND VALUE <= 16);
CREATE DOMAIN TTalla AS VARCHAR(2) CONSTRAINT CHECK (VALUE IN ('XS', 'S', 'M', 'L', 'XL');

CREATE DOMAIN TEstrellas ADD CONSTRAINT CHECK (VALUE >= 1 AND VALUE <=5);


--E)CONSTRUCCION--
---COMO SE RELACION COMBO - OFERTA CON CATEGORIA???
-- SELECCIONAR LOS ARTICULOS CON MAYOR CALIFICACION POSIBLE
SELECT * FROM Articulo JOIN calificacion ON (articulo.aid = calificacion.articulo) WHERE calificacion.estrellas = '5';


--F) CONSTRUCCION: NUEVAMENTE POBLANDO

INSERT INTO Usuario2(codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones) values ('866895333', 'TI', '946091956', 'RobertBalsom', 'Sistemas', 'rbalsom0@statcounter.com', '12-03-2022', '02-01-2022', '1');
INSERT INTO Usuario2(codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones) values ('512471885', 'CC', '487432045', 'MayneVanikov', 'Mecanica', 'mvannikov1@ucla.edu', '21-03-2022', null, null);
INSERT INTO Usuario2(codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones) values ('398387443', 'CC', '355496797', 'ChelseaClist', 'Ambiental', 'cclist2@amazon.co.jp', '24-02-2022', '18-06-2022', '3');
INSERT INTO Usuario2(codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones) values ('698387443', 'CC', '555496797', 'OcarMilen', 'Civil', 'ccarmile@gmail.co.jp', '22-02-2022', '08-06-2022', '2');
INSERT INTO Usuario2(codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones) values ('998387443', 'CC', '155496797', 'HectorRoscon', 'Sistemas', 'roscon@amazon.co.jp', '11-02-2022', '01-06-2022', '3');

INSERT INTO Califica2(usuario, articulo, estrellas) values('946091956', '4', '3');
INSERT INTO Califica2(usuario, articulo, estrellas) values('512091956', '3', '4');
INSERT INTO Califica2(usuario, articulo, estrellas) values('355496797', '2', '5');
INSERT INTO Califica2(usuario, articulo, estrellas) values('255496797', '1', '3');
INSERT INTO Califica2(usuario, articulo, estrellas) values('155496797', '2', '4');

INSERT INTO Universidad(codigo, nombre, direccion) values ('866895333','Julio','calle 207#59');
INSERT INTO Universidad(codigo, nombre, direccion) values ('512471885','pedag','calle 72#13');
INSERT INTO Universidad(codigo, nombre, direccion) values ('298387443','nacional','carrera 30');
INSERT INTO Universidad(codigo, nombre, direccion) values ('298387443','Central','calle 72#14');
INSERT INTO Universidad(codigo, nombre, direccion) values ('298387443','EAFIT','carrera 90');

INSERT INTO Combo_Oferta(numero, fecha, precio , foto, descripcion, estado, trueque) values ('1', '12-03-2022', '150000', 'link1', 'descripcion combo oferta 1', 'A', 'E');
INSERT INTO Combo_Oferta(numero, fecha, precio , foto, descripcion, estado, trueque) values ('2', '21-08-2022', '20000', 'link2', 'descripcion combo oferta 2','A','I');
INSERT INTO Combo_Oferta(numero, fecha, precio , foto, descripcion, estado, trueque) values ('3', '02-01-2022', '100000', 'link3', 'descripcion combo oferta 3','C', 'C');
INSERT INTO Combo_Oferta(numero, fecha, precio , foto, descripcion, estado, trueque) values ('3', '08-04-2022', '150000', 'link1', 'descripcion combo oferta 3','A', 'E');
INSERT INTO Combo_Oferta(numero, fecha, precio , foto, descripcion, estado, trueque) values ('3', '09-10-2022', '20000', 'link2', 'descripcion combo oferta 3','C', 'I');

INSERT INTO Articulo2(aid, descripcion, caracteristicas, estado, foto, precio, disponible) values ('946091956', 'descripcion1', 'caracteristicas1','O', 'link1', '50000', '1');
INSERT INTO Articulo2(aid, descripcion, caracteristicas, estado, foto, precio, disponible) values ('512091956', 'descripcion2', 'caracteristicas2','A', 'link2', '100000', '1');
INSERT INTO Articulo2(aid, descripcion, caracteristicas, estado, foto, precio, disponible) values ('355496797', 'descripcion3', 'caracteristicas3','A' ,'link3','50000', '1');
INSERT INTO Articulo2(aid, descripcion, caracteristicas, estado, foto, precio, disponible) values ('155496794', 'descripcion3', 'caracteristicas3','O' ,'link3','100000', '1');
INSERT INTO Articulo2(aid, descripcion, caracteristicas, estado, foto, precio, disponible) values ('255496796', 'descripcion3', 'caracteristicas3','A' ,'link3','50000', '1');

INSERT INTO Ropa(aid, talla, material, color) values ('946091956', 'XS', 'algodon','negro');
INSERT INTO Ropa(aid, talla, material, color) values ('512091956', 'S', 'algodon','blanco');
INSERT INTO Ropa(aid, talla, material, color) values ('355496797', 'M', 'algodon','blanco');
INSERT INTO Ropa(aid, talla, material, color) values ('155496794', 'XS', 'algodon','negro');
INSERT INTO Ropa(aid, talla, material, color) values ('255496796', 'M', 'algodon','gris');

INSERT INTO Perecedero(aid, vencimiento) values ('946091956','03-11-2022');
INSERT INTO Perecedero(aid, vencimiento) values ('512091956', '02-11-2023');
INSERT INTO Perecedero(aid, vencimiento) values ('355496797','09-10-2022');
INSERT INTO Perecedero(aid, vencimiento) values ('155496794','22-01-2022');
INSERT INTO Perecedero(aid, vencimiento) values ('255496796','01-02-2022');

INSERT INTO Categoria(codigo, nombre, tipo, minimo, maximo) values ('94609' ,'ropa','jum', '20000', '40000');
INSERT INTO Categoria(codigo, nombre, tipo, minimo, maximo) values ('51209' ,'pantalon','jum', '20000', '50000');
INSERT INTO Categoria(codigo, nombre, tipo, minimo, maximo) values ('35549' ,'medias', 'jum', '15000', '45000');
INSERT INTO Categoria(codigo, nombre, tipo, minimo, maximo) values ('11209' ,'zapatos','jum', '20000', '50000');
INSERT INTO Categoria(codigo, nombre, tipo, minimo, maximo) values ('25549' ,'buzo', 'jum', '15000', '45000');

