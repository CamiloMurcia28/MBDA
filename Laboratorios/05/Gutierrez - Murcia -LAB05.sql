/*CICLO 1: Tablas*/

CREATE TABLE Universidad(
    codigo VARCHAR2(3) NOT NULL,
    nombre VARCHAR2(20),
    direccion VARCHAR2(50)
    );

CREATE TABLE Usuario(
    codigo VARCHAR2(10) NOT NULL,
    tid VARCHAR2(3) NOT NULL,
    nid VARCHAR2(10) NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    programa VARCHAR2(20) NOT NULL,
    correo VARCHAR2(50) NOT NULL,
    registro DATE NOT NULL,
    suspension DATE,
    nSuspensiones NUMBER(3) NOT NULL,
    universidad_codigo VARCHAR2(3) NOT NULL
    );
    
CREATE TABLE Califica(
    estrellas NUMBER(1) NOT NULL,
    tid VARCHAR2(3) NOT NULL,
    nid VARCHAR2(10) NOT NULL,
    Articulo_id VARCHAR2(10) NOT NULL
    );

CREATE TABLE Combo_Oferta(
    numero NUMBER(10) NOT NULL,
    fecha DATE NOT NULL,
    precio NUMBER(6)NOT NULL,
    foto VARCHAR2(50) NOT NULL ,
    descripcion VARCHAR2(100),
    estado VARCHAR2(5) NOT NULL,
    trueque VARCHAR2(6),
    tid VARCHAR2(3) NOT NULL,
    nid VARCHAR2(10) NOT NULL
    );

CREATE TABLE Oferta(
    combo_oferta NUMBER(9) NOT NULL, 
    articulo VARCHAR2(10) NOT NULL
    );

CREATE TABLE Articulo(
    id_articulo VARCHAR2(10) NOT NULL,
    descripcion VARCHAR2(20) NOT NULL,
    estado VARCHAR2(5) NOT NULL,
    foto VARCHAR2(50) NOT NULL,
    precio NUMBER (6) NOT NULL,
    disponible VARCHAR2(5) NOT NULL,
    tid VARCHAR2(3) NOT NULL,
    nid VARCHAR2(10) NOT NULL,
    codigo_categoria VARCHAR2(5) NOT NULL
    );

CREATE TABLE Ropa(
    id_articulo VARCHAR2(10) NOT NULL,
    talla VARCHAR2(1) NOT NULL,
    material VARCHAR2(10) NOT NULL,
    color VARCHAR2(10) NOT NULL
    );

CREATE TABLE Perecedero(
    id_articulo VARCHAR2(10) NOT NULL,
    vencimiento DATE NOT NULL
    );
CREATE TABLE caracteristicas(
    caracteristica VARCHAR2(20) NOT NULL,
    id_articulo VARCHAR2(10) NOT NULL
    );
    
CREATE TABLE Categoria(
    codigo VARCHAR2(5) NOT NULL,
    nombre VARCHAR2(20) NOT NULL,
    tipo VARCHAR2(50) NOT NULL,
    minimo NUMBER(6) NOT NULL,
    maximo NUMBER(6) NOT NULL,
    codigopertenecea NUMBER(1) NOT NULL
    );

CREATE TABLE caracteristicas(
    caracteristica VARCHAR2(20) NOT NULL,
    id_articulo VARCHAR2(5) NOT NULL
    );

/*CICLO 1: XTablas*/

DROP TABLE Universidad CASCADE CONSTRAINT;
DROP TABLE Usuario CASCADE CONSTRAINT;
DROP TABLE Combo_Oferta CASCADE CONSTRAINT;
DROP TABLE Articulo CASCADE CONSTRAINT;
DROP TABLE Ropa CASCADE CONSTRAINT;
DROP TABLE Perecedero CASCADE CONSTRAINT;
DROP TABLE Categoria CASCADE CONSTRAINT;
DROP TABLE Califica CASCADE CONSTRAINT;
DROP TABLE OFERTA CASCADE CONSTRAINT;
DROP TABLE CARACTERISTICAS CASCADE CONSTRAINT;

/* CICLO 1: Atributos*/

ALTER TABLE USUARIO ADD CONSTRAINT CK_USUARIO_TID CHECK(tid IN ('CC', 'TI', 'NIT'));
ALTER TABLE USUARIO ADD CONSTRAINT CK_USUARIO CHECK (correo LIKE '%.com');
ALTER TABLE ARTICULO ADD CONSTRAINT CK_ARTICULO_ESTADO CHECK(estado IN('NUEVO','USADO'));
ALTER TABLE ARTICULO ADD CONSTRAINT CK_ARTICULO_PRECIO CHECK(precio IN('50000','100000','200000','250000'));
ALTER TABLE ARTICULO ADD CONSTRAINT CK_ARTICULO_FOTO CHECK(foto LIKE 'www.%.com%');
ALTER TABLE ARTICULO ADD CONSTRAINT CK_ARTICULO_DISPONIBLE CHECK(disponible IN('TRUE','FALSE'));
ALTER TABLE CALIFICA ADD CONSTRAINT CK_CALIFICA_ESTRELLAS CHECK(estrellas > 0 and estrellas <6);
ALTER TABLE ROPA ADD CONSTRAINT CK_ROPA_TALLA CHECK(talla in ('XS', 'S', 'M', 'L', 'XL'));


/* CICLO 1: Primarias */

ALTER TABLE universidad ADD CONSTRAINT PK_UNIVERSIDAD PRIMARY KEY(codigo);
ALTER TABLE usuario ADD CONSTRAINT PK_USUARIO PRIMARY KEY(tid,nid);
ALTER TABLE califica ADD CONSTRAINT PK_calificacion PRIMARY KEY(tid,nid,articulo_id);
ALTER TABLE combo_oferta ADD CONSTRAINT PK_COMBO_OFERTA PRIMARY KEY (numero);
ALTER TABLE oferta ADD CONSTRAINT PK_OFERTA PRIMARY KEY(combo_oferta,articulo);
ALTER TABLE ARTICULO ADD CONSTRAINT PK_ARTICULO PRIMARY KEY (id_articulo);
ALTER TABLE ROPA ADD CONSTRAINT PK_ROPA PRIMARY KEY(id_articulo);
ALTER TABLE PERECEDERO ADD CONSTRAINT PK_PERECEDERO PRIMARY KEY(id_articulo);
ALTER TABLE CARACTERISTICAS ADD CONSTRAINT PK_CARACTERISTICA PRIMARY KEY(id_articulo);
ALTER TABLE CATEGORIA ADD CONSTRAINT PK_CATEGORIA PRIMARY KEY (codigo);

/* CICLO 1: Unicas */

ALTER TABLE ARTICULO ADD CONSTRAINT UK_ARTICULO_foto UNIQUE (foto);

/* CICLO 1: Foraneas */

ALTER TABLE usuario ADD CONSTRAINT FK_USUARIO_CODIGO FOREIGN KEY(universidad_codigo) REFERENCES universidad(codigo);
ALTER TABLE califica ADD CONSTRAINT FK_CALIFICACION_USUARIO FOREIGN KEY(tid,nid) REFERENCES usuario(tid,nid);
ALTER TABLE califica ADD CONSTRAINT FK_CALIFICACION_ARTICULO FOREIGN KEY(articulo_id) REFERENCES articulo(id_articulo);
ALTER TABLE Combo_Oferta ADD CONSTRAINT FK_COMBO_OFERTA_USUARIO FOREIGN KEY(tid,nid) REFERENCES Usuario(tid,nid);
ALTER TABLE oferta ADD CONSTRAINT FK_OFERTA_COMBO_OFERTA FOREIGN KEY(combo_oferta) REFERENCES COMBO_OFERTA(numero);
ALTER TABLE oferta ADD CONSTRAINT FK_OFERTA_ARTICULO FOREIGN KEY(articulo) REFERENCES Articulo(id_articulo);
ALTER TABLE ROPA ADD CONSTRAINT FK_ROPA_ARTICULO FOREIGN KEY(id_articulo) REFERENCES Articulo(id_articulo);
ALTER TABLE Perecedero ADD CONSTRAINT FK_PERECEDERO_ARTICULO FOREIGN KEY(id_articulo) REFERENCES Articulo(id_articulo);
ALTER TABLE caracteristicas ADD CONSTRAINT FK_CARACTERISTICAS_ARTICULO FOREIGN KEY(id_articulo) REFERENCES Articulo(id_articulo);
ALTER TABLE Articulo ADD CONSTRAINT FK_ARTICULO_USUARIO FOREIGN KEY(tid,nid) REFERENCES Usuario(tid,nid);
ALTER TABLE Articulo ADD CONSTRAINT FK_CATEGORIA_ARTICULO FOREIGN KEY(codigo_categoria) REFERENCES Categoria(codigo);

/*PoblarOK*/

/*Universidades*/

INSERT INTO Universidad(Codigo,nombre,direcci n) VALUES ('AE1','ECI','Usaquen');
INSERT INTO Universidad(Codigo,nombre,direcci n) VALUES ('AE2','UNAL','Teusaquillo');
INSERT INTO Universidad(Codigo,nombre,direcci n) VALUES ('AE3','CUN','Santa fe');

/*Usuario*/

INSERT INTO Usuario(codigo,tid,nid,nombre,programa,correo,registro,suspension,nSuspensiones,universidad_codigo) VALUES('AJEOQIWNML','CC','1001297634','JUAN','SISTEMAS','juan.09@gmail.com','10-08-22','10-06-22','3','AE1');
INSERT INTO Usuario(codigo,tid,nid,nombre,programa,correo,registro,suspension,nSuspensiones,universidad_codigo) VALUES('QJISJKCJVJ','TI','1902948578','ALBERTO','ESTADISTICA','albert.1@gmail.com','05-03-21','05-12-20','1','AE2');
INSERT INTO Usuario(codigo,tid,nid,nombre,programa,correo,registro,suspension,nSuspensiones,universidad_codigo) VALUES('KLOIQJKNMA','NIT','2918460987','PABLO','MUSICA','pablo@hotmail.com','09-09-21','09-01-21','0','AE3');

/*ComboOferta*/

INSERT INTO combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('1','01-02-22','250000','imgur.com/awear','sudadera nike','A','NUEVO','CC','2049395862');
INSERT INTO combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('2','02-03-22','250000','imgur.com/sdafq','tennis adidas','C','NUEVO','CC','0494829482');
INSERT INTO combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('3','02-01-22','250000','imgur.com/jodsa','camiseta azul','I','USADO','NIT','1120394859');

/*Califica*/

INSERT INTO Califica(estrellas,usuario,articulo) VALUES('1','AJEOQIWNMLO','1113387598');
INSERT INTO Califica(estrellas,usuario,articulo) VALUES('5','QJISJKCJVJ','1113389839');
INSERT INTO Califica(estrellas,usuario,articulo) VALUES('5','KLOIQJKNMA','11133871200');

/*Articulo*/

INSERT INTO Articulo(id,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria)VALUES('1113387598','camiseta','NUEVO','https://imgur.com/rsr','100000','TRUE','AJEOQIWNMLO','AE123');
INSERT INTO Articulo(id,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria)VALUES('1113389839','camiseta','NUEVO','https://imgur.com/dasdcc','100000','TRUE','QJISJKCJVJ','AE123');
INSERT INTO Articulo(id,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria)VALUES('11133871200','camiseta','USADO','https://imgur.com/sdasd','100000','TRUE','KLOIQJKNMA','AE123');

/*Ropa*/

INSERT INTO Ropa(id,talla, material,color) VALUES('AE123','S','Cuero','Azul');
INSERT INTO Ropa(id,talla, material,color) VALUES('AE123','M','Cuero','Rojo');
INSERT INTO Ropa(id,talla, material,color) VALUES('AE123','L','Cuero','Verde');

/*Perecedero*/

INSERT INTO perecedero(id,vencimiento) VALUES ('AE123','01-02-21');
INSERT INTO perecedero(id,vencimiento) VALUES ('AE123','01-02-22');
INSERT INTO perecedero(id,vencimiento) VALUES ('AE123','02-03-21');

/*categoria*/

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE123','camiseta','ropa','50000','250000','ropa');
INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE123','frijoles','comida','50000','250000','ropa');
INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE123','camiseta','ropa','50000','250000','ropa');



/*Oferta*/

INSERT INTO Oferta(combo_oferta,articulo) VALUES ('1','1113387598');
INSERT INTO Oferta(combo_oferta,articulo) VALUES ('3','1298371829');
INSERT INTO Oferta(combo_oferta,articulo) VALUES ('5','1093819289');

/*Caracteristicas*/

INSERT INTO Caracteristicas(caracteristica,id_articulo) VALUES('Sudadera deportiva','1113387598')
INSERT INTO Caracteristicas(caracteristica,id_articulo) VALUES('Tennis nike blancos','1113389839')
INSERT INTO Caracteristicas(caracteristica,id_articulo) VALUES('Maleta de viaje','11133871200')



/*CICLO 1: PoblarNoOK*(2) */

/*el id es nulo*/
INSERT INTO Usuario(codigo,tid,nid,nombre,programa,correo,registro,suspension,nSuspensiones,universidad_codigo) VALUES('AJEOQIWNML','CC','','JUAN','SISTEMAS','juan.09@gmail.com','10-08-22','10-06-22','3','AE1');


/*el minimo excede el maximo*/
INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE123','camiseta','comida','3000000','250000','ropa');


/*El formato no es de tipo fecha */
INSERT INTO perecedero(id,vencimiento) VALUES ('AE123','01-02-21');


/*un caracter no es un precio */
INSERT INTO combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,usuario_codigo) VALUES('1','01-02-22','50000','www.imgur.com/awear','Pantalon con guayos','A','NUEVO','KLOIQJKNMA');


/* El disponible no es un booleano*/
INSERT INTO articulo(id,descripcion,estado,foto,precio,disponible,usuario_codigo,codigo_categoria) VALUES ('1113387598','camiseta','Usado','www.imgur.com/rsr','100000','TRUE','AE123','AE1');

/*CICLO 1: PoblarNoOK*(3)*/

/* se inserta el usuario no esta en la universidad*/
INSERT INTO Usuario(codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones, universidad_codigo) VALUES ('QJISJKCJVJ','TI','1902948578','Ignacio','ESTADISTICA','albert.1@gmail.com','05-03-21','05-12-20','1','AE1')


/* se inserta la direcci�n no tiene sentido*/

INSERT INTO Universidad(codigo,nombre,direccion) VALUES ('AE1','Oscar','Colombia');


/*la descripcion no concuerda con las caracteristicas*/

INSERT INTO INSERT INTO Articulo(id,descripcion,estado,foto,precio,disponible,usuario_codigo,codigo_categoria)VALUES('1113387598','camiseta','Usado','https://imgur.com/rsr','100000','TRUE','AE123','AE1');


/*No concuerda universidad con la direccion*/

INSERT INTO Universidad(Codigo,nombre,direccion) VALUES ('AE3','CUN','Suba');



/* el estado de la combo oferta no puede ser nulo, pues ya fue publicado*/

INSERT INTO combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,usuario_codigo) VALUES('1','01-02-22','50000','www.imgur.com/awear','Pantalon con guayos','','NUEVO','AE123');

/* CICLO 1: XPoblar */

DELETE FROM Universidad;
DELETE FROM Usuario;
DELETE FROM Combo_oferta;
DELETE FROM Articulo;
DELETE FROM Categoria;
DELETE FROM Califica;
DELETE FROM Ropa;
DELETE FROM Perecedero;
DELETE FROM CARACTERISTICAS;


/*CICLO 1: CRUD: REGISTRAR COMBO-OFERTA*/

/*Atributos */

ALTER TABLE COMBO_OFERTA ADD CONSTRAINT CK_COMBO_OFERTA CHECK( numero>0);
ALTER TABLE COMBO_OFERTA ADD CONSTRAINT CK_COMBO_OFERTA_PRECIO CHECK(precio IN('50000','100000','200000','250000'));
ALTER TABLE COMBO_OFERTA ADD CONSTRAINT CK_COMBO_OFERTA_FOTO CHECK(foto LIKE 'www.%.com%');
ALTER TABLE COMBO_OFERTA ADD CONSTRAINT CK_COMBO_OFERTA_ESTADO CHECK(estado IN('A','C','I','E','R'));
ALTER TABLE COMBO_OFERTA ADD CONSTRAINT CK_COMBO_OFERTA_TRUEQUE CHECK(trueque IN('NUEVO','USADO'));

/*Tuplas*/
-------------------------
/*TuplasOK*/

/*EL NUMERO INICIA EN 1 POR TANTO ES MAYOR A 0*/

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('1','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1001297634');

/*EL PRECIO PERTENECE A UNO DE LOS VALORES DADOS  */

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('2','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1001297634');

/*EL URL DE LA FOTO TERMINA CONTIENE EL COMANDO .COM*/

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('3','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1001297634');

/*EL ESTADO ES ABIERTO*/

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('4','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1001297634');

/* PERTENECE A ALGUNO DE LOS DOS ESTADOS NUEVO Y USADO */

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('5','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1001297634');

/*TuplasNoOK*/
/* EL NUMERO ES 0*/

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('0','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1049395862');

/*EL PRECIO SOBREPASA LOS VALORES*/

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('6','22-01-04','350000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1049395862');

/*EL URL NO CONTIENE LA ESTRUCTURA*/

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('7','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1049395862');

/*TIENE MAS DE 1 CARACTER EL ESTADO*/

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('8','22-01-04','250000','www.imgur.com/awear','sudadera nike','AE','NUEVO','CC','1049395862');

/*SE INSERTA UN CARACTER QUE NO ESTA DETERMINADO EN LOS ATRIBUTOS EN LA PARTE DE TRUEQUES*/

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('5','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','0','CC','1049395862');

/*Acciones*/
ALTER TABLE COMBO_OFERTA DROP CONSTRAINT FK_COMBO_OFERTA_USUARIO;
ALTER TABLE OFERTA DROP CONSTRAINT FK_OFERTA_COMBO_OFERTA;


ALTER TABLE Combo_Oferta ADD CONSTRAINT FK_COMBO_OFERTA_USUARIO FOREIGN KEY(tid,nid) REFERENCES Usuario(tid,nid) ON DELETE CASCADE;
ALTER TABLE oferta ADD CONSTRAINT FK_OFERTA_COMBO_OFERTA FOREIGN KEY(combo_oferta) REFERENCES COMBO_OFERTA(numero) ON DELETE CASCADE;



/*AccionesOK*/

/*se deberian poder insertar datos si estan bien hechas las restricciones*/

INSERT INTO Usuario(codigo,tid,nid,nombre,programa,correo,registro,suspension,nSuspensiones,universidad_codigo) VALUES('KLOIQJKNMA','NIT','2918460988','ROBERTO','Volley','pablo@hotmail.com','09-09-21','09-01-21','0','AE3');

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('10','23-01-04','250000','www.FOTOLACOSTE.COM','CHAQUETA LACOSTE','A','NUEVO','NIT','293455238');

INSERT INTO Oferta(combo_oferta,articulo) VALUES ('10','1093819289');


/*Disparadores*/

/*el numero, fecha y estado de la combo-oferta es autogenerado*/

CREATE OR REPLACE TRIGGER trg_Combo_oferta
BEFORE INSERT ON Combo_oferta
FOR EACH ROW
BEGIN
  SELECT COUNT(*) + 1 INTO :new.numero FROM Combo_oferta;
  :new.fecha := SYSDATE;
  :new.estado := 'A';
END;
/
/*trueque inicia en desconocido*/

CREATE OR REPLACE TRIGGER tr_inicia_trueque
BEFORE INSERT ON Combo_oferta
FOR EACH ROW
BEGIN
  :new.trueque := 'desconocido';
END;
/

/*el estado inicial de una oferta es oculta*/

CREATE OR REPLACE TRIGGER tr_inicia_oculto
BEFORE INSERT ON Combo_oferta
FOR EACH ROW
BEGIN
    :NEW.estado := 'oculta';
END;
/


/*los articulos incluidos deben pertenecer al usuario*/

CREATE OR REPLACE TRIGGER tr_oferta_articulo_usuario
BEFORE INSERT ON Combo_oferta
FOR EACH ROW
DECLARE
    v_usuario_id NUMBER;
BEGIN
    SELECT usuario_id INTO v_usuario_id FROM Articulo WHERE Articulo.id = :NEW.nid;
    IF v_usuario_id != :NEW.tid THEN
        RAISE_APPLICATION_ERROR(-20001, 'El articulo no pertenece al usuario.');
    END IF;
END;
/

/*los articulos incluidos deben estar disponibles*/

CREATE TRIGGER tr_check_disponibilidad
BEFORE INSERT ON Combo_oferta
FOR EACH ROW
DECLARE
    estado_articulo CHAR(1);
BEGIN
    SELECT estado INTO estado_articulo FROM Articulo WHERE id = :NEW.aid;
    IF estado_articulo <> 'D' THEN
        RAISE_APPLICATION_ERROR(-20001, 'El articulo no esta disponible');
    END IF;
END;
/

/*el precio debe ser inferior a la suma de los precios de los articulos*/

CREATE OR REPLACE TRIGGER check_price
BEFORE INSERT ON Combo_oferta
FOR EACH ROW
DECLARE
    total_price NUMBER(10,2);
BEGIN
    SELECT SUM(precio) INTO total_price
    FROM Articulo
    WHERE id_articulo IN (:new.articulo_1, :new.articulo_2, :new.articulo_3);

    IF (:new.precio > total_price) THEN
        RAISE_APPLICATION_ERROR(-20001, 'El precio de la oferta no puede ser mayor que la suma de los precios de los articulos incluidos');
    END IF;
END;
/

/*El estado se puede modificar de oculta a abierta y de abierta a cancelada*/

CREATE OR REPLACE TRIGGER tr_valida_estado_combo
BEFORE UPDATE OF estado ON Combo_oferta
FOR EACH ROW
BEGIN
  IF :NEW.estado = 'OCULTA' AND :OLD.estado <> 'OCULTA' THEN
    RAISE_APPLICATION_ERROR(-20001, 'No se puede cambiar el estado de oculta a otro estado.');
  END IF;
  
  IF :NEW.estado = 'CANCELADA' AND :OLD.estado <> 'ABIERTA' THEN
    RAISE_APPLICATION_ERROR(-20002, 'No se puede cambiar el estado de cancelada a otro estado que no sea abierto.');
  END IF;
END;

/*Solo se pueden modificar todos los datos de la combo-oferta si esta en estado oculta*/

CREATE OR REPLACE TRIGGER check_combo_oferta_update
BEFORE UPDATE ON Combo_oferta
FOR EACH ROW
DECLARE
  estado_actual CHAR(1);
BEGIN
  SELECT estado INTO estado_actual FROM Combo_oferta WHERE numero = :OLD.numero;
  IF estado_actual != 'O' THEN
    RAISE_APPLICATION_ERROR(-20001, 'No se pueden modificar los datos de una combo-oferta que no est? en estado oculta.');
  END IF;
END;
/

/*Solo se puede eliminar las combo-ofertas ocultas*/

CREATE OR REPLACE TRIGGER tr_delete_combo_oferta
BEFORE DELETE ON Combo_oferta
FOR EACH ROW
BEGIN
    IF :OLD.estado != 'oculta' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Solo se pueden eliminar las combo-ofertas ocultas.');
    END IF;
END;
/

/*DisparadoresOK*/

-- el n�mero, fecha y estado de la combo-oferta es autogenerado

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('11','22-03-04','250000','www.imgur.com','sudadera adidas','A','NUEVO','TI','1001297634');

-- trueque inicia en desconocido

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('4','22-06-04','250000','www.imgur.com/awear','sudadera nike','A','Desconocido','CC','100129334');

-- el estado inicial de una oferta es oculta

INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('4','22-010-04','250000','www.imgur.com/awear','sneakers nike','O','NUEVO','CC','1001297634');

-- los art�culos inclu�dos deben pertenecer al usuario

INSERT INTO Usuario(codigo,tid,nid,nombre,programa,correo,registro,suspension,nSuspensiones,universidad_codigo) VALUES('AJEOQIWNML','CC','1001297634','JUAN','SISTEMAS','juan.09@gmail.com','10-08-22','10-06-22','3','AE1');
INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('20','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1001297634');

-- los art�culos inclu�dos deben estar disponibles

INSERT INTO Articulo(id,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria)VALUES('1113387598','camiseta','NUEVO','https://imgur.com/rsr','250000','TRUE','AJEOQIWNMLO','AE123');


-- el precio debe ser inferior a la suma de los precios de los art�culos

INSERT INTO Articulo(id,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria)VALUES('1113387500','camiseta','NUEVO','https://imgur.com/rsr','100000','TRUE','AJEOQIWNMLO','AE123');
INSERT INTO Oferta(combo_oferta,articulo) VALUES ('21','1113387500');
INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('21','22-01-04','100000','www.imgur.com/awear','sudadera nike','A','NUEVO','CC','1001297634');

-- El estado se puede modificar de oculta a abierta y de abierta a cancelada
update on combo_oferta set estado='A' where estado='O'
update on combo_oferta set estado='C' where estado='A'

-- S�lo se pueden modificar todos los datos de la combo-oferta si est� en estado oculta
update on combo_oferta set  fecha='2022-03-01',precio='200000',foto='www.imgur.com' where estado='O'

--S�lo se puede eliminar las combo-ofertas ocultas

DELETE FROM combo_oferta WHERE estado = 'O';

/*DisparadoresNoOK*/

-- el n�mero, fecha y estado de la combo-oferta es autogenerado

/*no tiene que modificar*/
INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('','','250000','www.imgur.com/awear','sudadera nike','','NUEVO','CC','1001297634');

-- trueque inicia en desconocido

/*no tiene un estado para modificar*/
INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('4','22-01-04','250000','www.imgur.com/awear','sudadera nike','A','','CC','1001297634');

-- el estado inicial de una oferta es oculta

/*no inicia en oculta*/
INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('4','22-03-04','250000','www.imgur.com/awear','sudadera nike','O','NUEVO','CC','1001297634');

-- los art�culos inclu�dos deben pertenecer al usuario

/*no pertenece al usuario*/
INSERT INTO Usuario(codigo,tid,nid,nombre,programa,correo,registro,suspension,nSuspensiones,universidad_codigo) VALUES('AJEML','CC','10017000','JUAN','SISTEMAS','juancaballo@gmail.com','10-08-22','10-06-22','3','AE1');
INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('20','22-04-04','250000','www.imgur.com/awear','sneakers nike','A','NUEVO','CC','1001297634');

-- los artículos incluídos deben estar disponibles

/*no esta disponible*/
INSERT INTO Articulo(id,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria)VALUES('111398','camiseta','NUEVO','https://imgur.com/rsr','250000','FALSE','AJEOQIWNMLO','AE123');


-- el precio debe ser inferior a la suma de los precios de los art�culos

/*El precio de la combo_oferta es mayor*/
INSERT INTO Articulo(id,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria)VALUES('113455500','camiseta','NUEVO','https://asdf.com','150000','TRUE','AJsdfsd','AE123');
INSERT INTO Oferta(combo_oferta,articulo) VALUES ('21','1113387500');
INSERT INTO Combo_oferta(numero,fecha,precio,foto,descripcion,estado,trueque,tid,nid) VALUES('21','22-01-04','300000','www.imagen/si','chaqueta','A','NUEVO','CC','1001297634');

-- El estado se puede modificar de oculta a abierta y de abierta a cancelada

/*se esta modificando de cancelada a oculta*/
update on combo_oferta set estado='A' where estado='O'
update on combo_oferta set estado='C' where estado='O'

-- S�lo se pueden modificar todos los datos de la combo-oferta si est� en estado oculta

/*se quiere modificar cuando el estado es abierto*/
update on combo_oferta set  fecha='2022-03-01',precio='200000',foto='www.imgur.com' where estado='A'

--S�lo se puede eliminar las combo-ofertas ocultas

/*Se quiere eliminar las combo_ofertas abiertas*/
DELETE FROM combo_oferta WHERE estado = 'A';

/*Xdisparadores*/

DROP TRIGGER trg_Combo_oferta;
DROP TRIGGER tr_init_trueque;
DROP TRIGGER set_initial_state;
DROP TRIGGER oferta_articulo_usuario;
DROP TRIGGER check_disponibilidad;
DROP TRIGGER check_price;
DROP TRIGGER valida_estado_combo;
DROP TRIGGER check_combo_oferta_update;
DROP TRIGGER tr_delete_combo_oferta;

/*CICLO 2: CRUD: MANTENER CATEGORIA*/

/*ATRIBUTOS*/
ALTER TABLE CATEGORIA ADD CONSTRAINT CK_CATEGORIA_MINIMO CHECK( minimo IN('50000','100000','200000','250000'));
ALTER TABLE CATEGORIA ADD CONSTRAINT CK_CATEGORIA_MAXIMO CHECK( maximo IN('50000','100000','200000','250000'));

/*Tuplas*/
----------

/*TuplasOK*/

/*CUMPLE CON EL MINIMO QUE SE PUEDE INSERTAR*/

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE12','corbata','ropa','50000','250000','1');

/*CUMPLE CON EL MAXIMO QUE SE PUEDE INSERTAR*/

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE142','maiz','comida','50000','250000','0');

/*TuplasNoOK*/

/*NO CUMPLE CON LA CONDICION DEL MINIMO*/

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE12','jean','ropa','500000','250000','1');


/*NO CUMPLE CON LA CONDICION DEL MAXIMO*/

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE142','papa','comida','50000','250000','0');


/*Acciones*/

ALTER TABLE ARTICULO DROP CONSTRAINT FK_CATEGORIA_ARTICULO;
ALTER TABLE Articulo ADD CONSTRAINT FK_CATEGORIA_ARTICULO FOREIGN KEY(codigo_categoria) REFERENCES Categoria(codigo) ON DELETE CASCADE;

/*AccionesOK*/

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE150','arroz','comida','20000','250000','0');
INSERT INTO Articulo(id_articulo,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria)VALUES('1113387598','camiseta','NUEVO','www.image.com','100000','TRUE','CC','1001297634','AE150');

/*Disparadores*/

/* El codigo se genera automaticamente con el formato CCCCC. Iniciando en AAAAA y terminando en ZZZZZ.*/

CREATE OR REPLACE TRIGGER TR_generar_codigo
BEFORE INSERT ON categoria
FOR EACH ROW
DECLARE
  ultimo_codigo VARCHAR2(5);
  letraUno number(2);
  letraDos number(2);
  letraTres number(2);
  letraCuatro number(2);
  letraCinco number(2);
BEGIN
  SELECT MAX(codigo) INTO ultimo_codigo FROM categoria;
  IF ultimo_codigo IS NULL THEN
    :NEW.codigo := 'AAAAA';
  ELSE
    IF ultimo_codigo = 'ZZZZZ' THEN
      RAISE_APPLICATION_ERROR(-20001, 'No se pueden insertar más registros.');
    ELSE
        SELECT ASCII(SUBSTR(MAX(codigo), 1, 1)) INTO letraCinco FROM categoria;
        SELECT ASCII(SUBSTR(MAX(codigo), 2, 1)) INTO letraCuatro FROM categoria;
        SELECT ASCII(SUBSTR(MAX(codigo), 3, 1)) INTO letraTres FROM categoria;
        SELECT ASCII(SUBSTR(MAX(codigo), 4, 1)) INTO letraDos FROM categoria;
        SELECT ASCII(SUBSTR(MAX(codigo), 5, 1)) INTO letraUno FROM categoria;
        
        IF letraUno < 90 then 
            :NEW.codigo := CHR(letraCinco) || CHR(letraCuatro) || CHR(letraTres) || CHR(letraDos) || CHR(letraUno+1);
        ELSIF letraUno = 90 then 
            :NEW.codigo := CHR(letraCinco) || CHR(letraCuatro) || CHR(letraTres) || CHR(letraDos+1) || CHR(65);
        ELSIF letraDos = 90 then 
            :NEW.codigo := CHR(letraCinco) || CHR(letraCuatro) || CHR(65) || CHR(65) || CHR(65);
        ELSIF letraTres = 90 then 
            :NEW.codigo := CHR(letraCinco) || CHR(letraCuatro+1) || CHR(65) || CHR(65) || CHR(65);
        ELSIF letraCuatro = 90 then 
            :NEW.codigo := CHR(letraCinco+1) || CHR(65) || CHR(65) || CHR(65) || CHR(65);
        END IF;
    END IF;
  END IF;
END;
/

/*Si no se da el tipo se asume que es libro*/

CREATE TRIGGER tipo_libro BEFORE INSERT ON categoria
FOR EACH ROW
BEGIN
    IF NEW.tipo IS NULL THEN
        SET NEW.tipo = 'libro';
    END IF;
END;

/*Si no se da el precio m?ximo se asume que es 100% del m?nimo*/

CREATE OR REPLACE TRIGGER trg_categoria
BEFORE INSERT OR UPDATE ON categoria
FOR EACH ROW
BEGIN
    IF :NEW.maximo IS NULL THEN
        :NEW.maximo := :NEW.minimo;
    END IF;
END;
/


/*?nicamente se pueden modificar los precios m?ximo y m?nimo.*/

CREATE OR REPLACE TRIGGER trg_categoria_precios
BEFORE UPDATE OF minimo,maximo ON Categoria
FOR EACH ROW
BEGIN
    IF :OLD.minimo <> :NEW.minimo OR :OLD.maximo <> :NEW.maximo THEN
        :NEW.minimo := COALESCE(:NEW.minimo, 0);
        :NEW.maximo := COALESCE(:NEW.maximo, :NEW.minimo);
    ELSE
        raise_application_error(-20001, 'Solo se pueden modificar los precios maximo y minimo');
    END IF;
END;
/

/*Las categorias se pueden eliminar si no tienen articulos asociados. (En caso que tenga subcategorias estas quedar?n sin supercategoria).*/

CREATE OR REPLACE TRIGGER TRG_CATEGORIA_BORRADO
AFTER DELETE ON categoria
FOR EACH ROW
DECLARE
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count
  FROM articulo
  WHERE codigo_categoria = :OLD.codigo_categoria;
  
  IF v_count = 0 THEN
    -- No hay artículos asociados, se permite la eliminaci�n
    NULL;
  ELSE
    -- Hay artículos asociados, se genera un error y se cancela la eliminaci�n
    RAISE_APPLICATION_ERROR(-20001, 'No se puede eliminar la categoría porque tiene artículos asociados.');
  END IF;
END;

/

/*DisparadoresOK*/

--El código se genera automáticamente con el formato CCCCC. Iniciando en AAAAA y terminando en ZZZZZ.

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('ABCDE','camiseta','ropa','50000','250000','ropa');

--Si no se da el tipo se asume que es libro. 

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE123','libro','','50000','250000','libro');

--Si no se da el precio maximo se asume que es 100% del minimo.


INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('AE123','libro','','50000','','libro');

-- Unicamente se pueden modificar los precios maximo y minimo.

UPDATE on Categoria set maximo='200000', minimo='100000';

--Las categorias se pueden eliminar si no tienen articulos asociados. (En caso que tenga subcategorias estas quedaran sin supercategoria).

INSERT INTO Categoria(codigo,nombre,tipo,minimo,maximo,codigopertenecea)VALUES('BE123','libro','','250000','','libro');
DELETE FROM Categoria WHERE codigo = 'BE123';


/*Xdisparadores*/
DROP TRIGGER TR_generar_codigo;
DROP TRIGGER TRG_ASUME_TIPO_LIBRO;
DROP TRIGGER precio_maximo_trigger;
DROP TRIGGER trg_categoria_precios;
DROP TRIGGER trg_eliminar_categoria;

/*DisparadoresNoOk*/



/*Consultas*/

/*Consultar las combo_ofertas cuyo precio es menor  o igual a 100000*/
select numero,fecha,precio, foto,descripcion, estado, trueque from combo_oferta where precio<=100000;

/*Consultar  las categorías de productos con más combo-ofertas*/

SELECT c.nombre, COUNT(DISTINCT co.numero) AS num_combos
FROM categoria c
LEFT JOIN articulo a ON c.codigo= a.codigo_categoria
LEFT JOIN oferta ca ON a.id_articulo = ca.articulo
LEFT JOIN combo_oferta co ON ca.combo_oferta = co.numero
GROUP BY c.nombre
ORDER BY num_combos DESC;

/*Consultar el tipo de categoria que mas se repite.*/

SELECT tipo
FROM categoria
GROUP BY tipo
ORDER BY COUNT(*) DESC
FETCH FIRST 1 ROW ONLY;

--LAB 05--

--1. Consulte la información que actualmente está en la tabla
SELECT * FROM MBDA.DATA;
Select count(distinct(CEDULA)) from mbda.data where nombres is not null;
select count(RAZONSOCIAL) as organizacion from mbda.data where RAZONSOCIAL is not null;


--2. Incluyanse como usuarios (personas)
INSERT INTO MBDA.DATA(codigo, email, cedula, documento, nombres) VALUES(12345, 'milton.andres@mail.escuelaing.edu.co', 10007498444, 1000090512,'Andres Gutierrez Lopez');
INSERT INTO MBDA.DATA(codigo, email, cedula, documento, nombres) VALUES(123456, 'camilo.murcia@mail.escuelaing.edu.co', 10007498333, 1000095123,'Camilo Nicolas Murcia');

--3. Traten de modificarse o borrarse. ¿qué pasa?
UPDATE MBDA.DATA SET codigo = 1234567 WHERE codigo = 12345;
    --Da el siguiente error:  ORA-01031: privilegios insuficientes

--4. Escriban la instrucción necesaria para otorgar los permisos que actualmente tiene esa tabla. �quien la escribio?
GRANT UPDATE
ON MBDA.DATA
TO BD1000090510;

--5. Escriban las instrucciones necesarias para importar los datos de esa tabla a su base de datos. Los datos deben insertados en las tablas de su base de datos, considerando:
    --Todos los usuarios pertenecen al Programa de Ingenieria de Sistemas de la ESCUELA
    --Todos los usuarios tienen como fecha de registro el dia de hoy
    --Todas las personas tienen la cedula como tipo de documento

INSERT INTO USUARIO(codigo, tid, nid, nombre, correo,registro, nsuspensiones, universidad_codigo, programa) (SELECT DISTINCT codigo, 'CC', cedula, nombres, email, SYSDATE, 0, 'ECI', 'ING. SISTEMAS' FROM MBDA.DATA WHERE RAZONSOCIAL IS NULL AND NOMBRES IS NOT NULL AND CODIGO IS NOT NULL);
------------------------------------------------------C. Modelo fisico. Componentes.----------------------------------------------------
/*CRUDE*/
CREATE OR REPLACE PACKAGE PC_COMBO_OFERTAS AS
PROCEDURE adicionar_Combo(p_numero IN NUMBER, p_fecha IN DATE, p_precio IN NUMBER, p_foto IN VARCHAR, p_descripcion IN VARCHAR,
                          p_estado IN VARCHAR, p_trueque IN VARCHAR, p_tid IN VARCHAR, p_nid IN VARCHAR);
PROCEDURE modificar_Combo(p_numero IN NUMBER, p_fecha IN DATE, p_precio IN NUMBER, p_foto IN VARCHAR, p_descripcion IN VARCHAR,
                                   p_estado IN VARCHAR, p_trueque IN VARCHAR, p_tid IN VARCHAR, p_nid IN VARCHAR);

PROCEDURE eliminar_Combo(p_numero IN NUMBER);

PROCEDURE consulta_PrecioMinimo(p_descripcion IN VARCHAR, p_foto IN VARCHAR, p_precio IN NUMBER);

PROCEDURE consulta_estados(p_nombre IN VARCHAR, p_fecha IN DATE, p_estado IN VARCHAR);

PROCEDURE consulta_numero(p_numero IN NUMBER, p_fecha IN DATE, p_precio IN NUMBER);


END;

/*CRUDI*/

CREATE OR REPLACE PACKAGE BODY PC_COMBO_OFERTAS AS
  PROCEDURE adicionar_Combo(p_numero IN NUMBER, p_fecha IN DATE, p_precio IN NUMBER, p_foto IN VARCHAR, p_descripcion IN VARCHAR,
                          p_estado IN VARCHAR, p_trueque IN VARCHAR, p_tid IN VARCHAR, p_nid IN VARCHAR); AS
    v_numero NUMBER(9);
  BEGIN
    INSERT INTO combo_oferta(numero, fecha, precio, foto, descripcion, estado, trueque, tid, nid)
    VALUES (v_numero, p_fecha, p_precio, p_foto, p_descripcion, p_estado, 'A', p_tid, p_nid);
    COMMIT;
  END;

  PROCEDURE modificar_Combo(p_numero IN NUMBER, p_fecha IN DATE, p_precio IN NUMBER, p_foto IN VARCHAR, p_descripcion IN VARCHAR,
                                   p_estado IN VARCHAR, p_trueque IN VARCHAR, p_tid IN VARCHAR, p_nid IN VARCHAR) AS
    v_estado_combo VARCHAR(1);
  BEGIN
    SELECT estado INTO v_estado_combo FROM combo_oferta WHERE numero = p_numero;
    IF v_estado_combo = 'O' THEN
      UPDATE combo_oferta SET fecha = p_fecha, precio = p_precio, foto = p_foto,
        descripcion = p_descripcion, estado = p_estado, trueque = p_trueque,
        tid = p_tid, nid = p_nid WHERE numero = p_numero;
      COMMIT;
    END IF;
  END;

  PROCEDURE ELIMINAR_COMBO_OFERTA(p_estado IN VARCHAR) AS
    v_estado_combo VARCHAR(1);
  BEGIN
    SELECT estado INTO v_estado_combo FROM combo_oferta WHERE numero = p_numero;
    IF v_estado_combo = 'O' THEN
      DELETE FROM combo_oferta WHERE numero = p_numero;
      COMMIT;
    END IF;
  END;

  PROCEDURE consulta_PrecioMinimo(p_descripcion IN VARCHAR, p_foto IN VARCHAR, p_precio IN NUMBER)
  BEGIN 
    SELECT MIN(precio) FROM COMBO_OFERTA;
  END;

  PROCEDURE consulta_estados(p_nombre IN VARCHAR, p_fecha IN DATE, p_estado IN VARCHAR)
  BEGIN 
    SELECT nombre, fecha, precio FROM COMBO_OFERTA
    WHERE estado = 'Oculta' or estado = 'Abierta';
  END;

  PROCEDURE consulta_numero(p_numero IN NUMBER, p_fecha IN DATE, p_precio IN NUMBER)
  BEGIN 
    SELECT numero, fecha, precio FROM COMBO_OFERTA
    WHERE fecha > SYSDATE;

END;

/*CRUDOK*/
BEGIN
  PC_COMBO_OFERTAS.adicionar_Combo(1, SYSDATE, 100, 'www.fotoejemplo.com', 'Camiseta negra', 'U', 'A', 'CC', '1023445467');
END;
BEGIN
  PC_COMBO_OFERTAS.modificar_Combo(1, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 80, 'www.fotoejemplo2.com', 'Camiseta polo azul', 'U', 'A', 'CC', '1021345467');
END;
BEGIN
  PC_COMBO_OFERTAS.modificar_Combo(1, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 200, 'www.fotoejemplo3.com', 'Camiseta polo negra', 'U', 'A', 'CC', '102345467');
END;
BEGIN
  PC_COMBO_OFERTAS.eliminar_Combo(1, 'O');
END;

SELECT PC_COMBO_OFERTAS.consulta_PrecioMinimo(NULL, NULL, NULL) FROM dual;

/*CRUDNoOK*/
EXECUTE PC_COMBO_OFERTAS.adicionar_Combo(123456789, SYSDATE, 100, 'www.fotodfgdfg.com', 'Camiseta polo negra', 'U', 'A', 'CC', '1021312467');

EXECUTE PC_COMBO_OFERTAS.modificar_Combo(999999999, SYSDATE, 100, 'www.fotoe.com', 'Camiseta polo negra', 'U', 'A', 'CC', '1021312467');

EXECUTE PC_COMBO_OFERTAS.eliminar_Combo(999999999);

/*xCRUD*/
DROP PACKAGE PC_COMBO_OFERTAS;
DROP PACKAGE BODY PC_COMBO_OFERTAS;

------------------------------------------------------D. Modelo fisico. Seguridad.----------------------------------------------------
/*ACTORESE*/
CREATE OR REPLACE PACKAGE PA_USUARIO AS
  PROCEDURE crear_usuario(p_codigo IN VARCHAR2, p_tid IN VARCHAR2, p_nid IN VARCHAR2, p_nombre IN VARCHAR2, p_programa IN VARCHAR2, p_correo IN VARCHAR2, p_registro IN DATE, p_suspension IN DATE, p_nSuspensiones IN NUMBER, p_universidad IN VARCHAR2);
  FUNCTION consultar_usuario(p_codigo IN VARCHAR2) RETURN SYS_REFCURSOR;
  PROCEDURE crear_calificacion(p_estrellas IN NUMBER);
  PROCEDURE crear_articulo(p_id_articulo IN VARCHAR2,p_descripcion IN VARCHAR2, p_estado IN VARCHAR2, p_foto IN VARCHAR2,p_precio IN NUMBER, p_disponible IN VARCHAR2, p_tid IN VARCHAR2, p_nid IN VARCHAR2, p_codigo_categoria IN VARCHAR2);
  FUNCTION consultar_articulo (p_id_articulo IN VARCHAR2) RETURN SYS_REFCURSOR;
  PROCEDURE Eliminar_articulo (p_id_articulo IN VARCHAR2,p_descripcion IN VARCHAR2, p_estado IN VARCHAR2, p_foto IN VARCHAR2,p_precio IN NUMBER, p_disponible IN VARCHAR2, p_tid IN VARCHAR2, p_nid IN VARCHAR2, p_codigo_categoria IN VARCHAR2);
  PROCEDURE Modificar_articulo (p_id_articulo IN VARCHAR2,p_descripcion IN VARCHAR2, p_estado IN VARCHAR2, p_foto IN VARCHAR2,p_precio IN NUMBER, p_disponible IN VARCHAR2, p_tid IN VARCHAR2, p_nid IN VARCHAR2, p_codigo_categoria IN VARCHAR2);
  FUNCTION consultar_categoria(p_codigo IN VARCHAR2, p_nombre IN VARCHAR2,p_tipo IN VARCHAR2,p_minimo IN NUMBER,p_maximo IN NUMBER,p_codigopertenecea IN NUMBER) RETURN SYS_REFCURSOR;
  PROCEDURE crear_combo_oferta(p_numero IN NUMBER, p_fecha IN DATE, p_precio NUMBER,p_foto IN VARCHAR2, p_descripcion IN VARCHAR2, p_estado IN VARCHAR2, p_trueque IN VARCHAR2, p_nid IN VARCHAR2, p_tid IN VARCHAR2);
  FUNCTION consultar_combo_oferta(p_numero IN VARCHAR2) RETURN SYS_REFCURSOR;
  PROCEDURE ELIMINAR_COMBO_OFERTA(p_estado IN VARCHAR);
  PROCEDURE modificar_COMBO_OFERTA(p_numero IN NUMBER, p_fecha IN DATE, p_precio IN NUMBER, p_foto IN VARCHAR2, p_descripcion IN VARCHAR2,p_estado IN VARCHAR2, p_trueque IN VARCHAR2, p_tid IN VARCHAR2, p_nid IN VARCHAR2);
END PA_USUARIO;

CREATE OR REPLACE PACKAGE PA_JUNTA AS
  TYPE califica_cursor IS REF CURSOR;
  FUNCTION get_calificaciones RETURN califica_cursor;
END PA_JUNTA;

/*ACTORESI*/
CREATE OR REPLACE PACKAGE BODY PA_USUARIO AS
  PROCEDURE crear_usuario(p_codigo IN VARCHAR2,p_tid IN VARCHAR2,p_nid IN VARCHAR2,p_nombre IN VARCHAR2,p_programa IN VARCHAR2,p_correo IN VARCHAR2,p_registro IN DATE,p_suspension IN DATE,p_nSuspensiones IN NUMBER,p_universidad IN VARCHAR2) AS
  BEGIN
    INSERT INTO USUARIO (codigo, tid, nid, nombre, programa, correo, registro, suspension, nSuspensiones, universidad)
    VALUES (p_codigo, p_tid, p_nid, p_nombre, p_programa, p_correo, p_registro, p_suspension, p_nSuspensiones, p_universidad);
  END;

  FUNCTION consultar_usuario(p_codigo IN VARCHAR2) RETURN SYS_REFCURSOR AS
    c_resultados SYS_REFCURSOR;
  BEGIN
    OPEN c_resultados FOR SELECT * FROM USUARIO WHERE codigo = p_codigo;
    RETURN c_resultados;
  END;

  PROCEDURE crear_calificacion(p_estrellas IN NUMBER) AS
  BEGIN
    INSERT INTO CALIFICA (estrellas) VALUES (p_estrellas);
  END;

  PROCEDURE crear_articulo(p_id_articulo IN VARCHAR2,p_descripcion IN VARCHAR2,p_estado IN VARCHAR2,p_foto IN VARCHAR2,p_precio IN NUMBER,p_disponible IN VARCHAR2,p_tid IN VARCHAR2,p_nid IN VARCHAR2,p_codigo_categoria IN VARCHAR2) AS
  BEGIN
    INSERT INTO ARTICULO (id_articulo,descripcion,estado,foto,precio,disponible,tid,nid,codigo_categoria) 
    VALUES (p_id_articulo,p_descripcion,p_estado,p_foto,p_precio,p_disponible,p_tid,p_nid,p_codigo_categoria);
  END;

  FUNCTION consultar_articulo(p_id_articulo IN VARCHAR2) RETURN SYS_REFCURSOR AS
    c_articulos SYS_REFCURSOR;
  BEGIN
    OPEN c_articulos FOR SELECT * FROM ARTICULO WHERE id_articulo = p_id_articulo;
    RETURN c_articulos;
  END;

  PROCEDURE Eliminar_articulo(p_id_articulo IN VARCHAR2,p_descripcion IN VARCHAR2,p_estado IN VARCHAR2,p_foto IN VARCHAR2,p_precio IN NUMBER,p_disponible IN VARCHAR2,p_tid IN VARCHAR2,p_nid IN VARCHAR2,p_codigo_categoria IN VARCHAR2) AS
  BEGIN
    DELETE FROM ARTICULO WHERE id_articulo = p_id_articulo;
  END;

  PROCEDURE Modificar_articulo(p_id_articulo IN VARCHAR2,p_descripcion IN VARCHAR2,p_estado IN VARCHAR2,p_foto IN VARCHAR2,p_precio IN NUMBER,p_disponible IN VARCHAR2,p_tid IN VARCHAR2,p_nid IN VARCHAR2,p_codigo_categoria IN VARCHAR2) AS
  BEGIN
    UPDATE ARTICULO
    SET descripcion = p_descripcion,
        estado = p_estado,
        foto = p_foto,
        precio = p_precio,
        disponible = p_disponible,
        tid = p_tid,
        nid = p_nid,
        codigo_categoria = p_codigo_categoria
    WHERE id_articulo = p_id_articulo;
  END;

 FUNCTION consultar_categoria(p_codigo IN VARCHAR2) RETURN SYS_REFCURSOR AS
  c_categorias SYS_REFCURSOR;
BEGIN
  OPEN c_categorias FOR SELECT * FROM CATEGORIA WHERE codigo = p_codigo;
  RETURN c_categorias;
END;

PROCEDURE crear_combo_oferta(p_numero IN NUMBER,p_fecha IN DATE,p_precio NUMBER,p_foto IN VARCHAR2,p_descripcion IN VARCHAR2,p_estado IN VARCHAR2,p_trueque IN VARCHAR2,p_nid IN VARCHAR2,p_tid IN VARCHAR2) AS
BEGIN
  INSERT INTO COMBO_OFERTA (numero,fecha,precio,foto,descripcion,estado,trueque,nid,tid) 
    VALUES (p_numero,p_fecha,p_precio,p_foto,p_descripcion,p_estado,p_trueque,p_nid,p_tid);
END;

FUNCTION consultar_combo_oferta(p_numero IN VARCHAR2) RETURN SYS_REFCURSOR AS
  c_combos SYS_REFCURSOR;
BEGIN
  OPEN c_combos FOR SELECT * FROM COMBO_OFERTA WHERE numero = p_numero;
  RETURN c_combos;
END;

PROCEDURE ELIMINAR_COMBO_OFERTA(p_numero IN NUMBER) AS 
BEGIN
  DELETE FROM COMBO_OFERTA WHERE numero = p_numero;
END;

PROCEDURE modificar_COMBO_OFERTA(p_numero IN NUMBER,p_fecha IN DATE,p_precio IN NUMBER,p_foto IN VARCHAR2,p_descripcion IN VARCHAR2,p_estado IN VARCHAR2,p_trueque IN VARCHAR2,p_tid IN VARCHAR2,p_nid IN VARCHAR2) AS
BEGIN
  UPDATE COMBO_OFERTA SET
    fecha = p_fecha,
    precio = p_precio,
    foto = p_foto,
    descripcion = p_descripcion,
    estado = p_estado,
    trueque = p_trueque,
    tid = p_tid,
    nid = p_nid
  WHERE numero = p_numero;
END;
END PA_USUARIO;


CREATE OR REPLACE PACKAGE BODY PA_JUNTA AS
  FUNCTION get_calificaciones RETURN califica_cursor AS
    c califica_cursor;
  BEGIN
    OPEN c FOR SELECT tid, nid, id, estrellas FROM CALIFICA;
    RETURN c;
  END get_calificaciones;
END PA_JUNTA;

/*SEGURIDAD*/
--Usuario
CREATE ROLE UsuarioBDM;
GRANT EXECUTE ON PA_USUARIO TO UsuarioBDM;
GRANT UsuarioBDM to bd1000001308;

--Analista de experiencia de usuario
CREATE ROLE AnalistaExp;
GRANT EXECUTE ON PA_JUNTA TO AnalistaExp;
GRANT AnalistaExp to bd1000012441;
GRANT AnalistaExp to bd1000092441;

/*XSEGURIDAD*/
DROP ROLE PA_USUARIO;
DROP ROLE PA_JUNTA;

/*SEGURIDADOK*/
--Usuario inserta datos*/
INSERT INTO USUARIO (codigo, tid, nid, nombre, programa, correo, registro, nSuspensiones, universidad)
VALUES ('142141312', 'CC', '1001297634', 'Milton Gutierrez', 'Ingeniería', 'MiltonGutierrez@mail.escuelaing.edu.co', SYSDATE, 0, 'Escuela de ingenieria');

--Usuario consulta información de otros usuarios*/
SELECT * FROM USUARIO;

--Usuario bd1000091081 inserta datos*/
INSERT INTO USUARIO (codigo, tid, nid, nombre, programa, correo, registro, nSuspensiones, universidad)
VALUES ('3123943', 'CC', '1001297633', 'Camilo Murcia', 'Ingeniería', 'camilo.murcia@mail.escuelaing.edu.co', SYSDATE, 0, 'Escuela de ingenieria');

--Usuario bd1000091308 consulta datos de usuario
SELECT * FROM USUARIO;

--Usuario bd1000091052 Consulta calificaciones
SELECT * FROM CALIFICA;


/*SEGURIDADNOOK*/
--Usuario sin permisos que quiere modificar un registro
UPDATE Usuario set codigo='11937' WHERE codigo='10938'

--Usuario intenta eliminar un registro
DELETE FROM Usuario WHERE codigo='10938'

--Usuario sin permisos quiere consultar las calificaciones
SELECT * FROM CALIFICA;



------------------------------------------------------D. Pruebas----------------------------------------------------
--Soy Sara Orjuela de Industrial y deseo saber si alguien intercambia ropa.
SELECT nombre, (SELECT descripcion FROM COMBO_OFERTA WHERE descripcion LIKE %ropa%) FROM USUARIO;

--Como si hay ofertas quisiera saber los precios.
SELECT precio FROM COMBO_OFERTA GROUP BY numero HAVING descripcion LIKE %ropa%;

--Muy bien, siguiendo esto voy a registrar mi combo oferta.
INSERT INTO COMBO_OFERTA VALUES('',sysdate, 1000, 'www.instagram.com/foto1', 'Camiseta color rojo', '', 'A', 'CC', '1021312467');

--Me equivoque con el tipo de ropa quisiera cambiar la descripcion.
UPDATE COMBO_OFERTA SET descripcion = 'Camiseta color negro' WHERE descripcion = 'Camisa color rojo';

--La foto que subí se ve bastante borrosa, voy a cambiarla.
UPDATE COMBO_OFERTA SET foto = 'www.instagram.com/foto2' WHERE foto = 'www.instagram.com/foto1';

--Logré venderla, quisiera eliminar mi oferta. 
DELETE FROM COMBO_OFERTA WHERE nid = '1021312467' AND descripcion = 'Camiseta color negro';









