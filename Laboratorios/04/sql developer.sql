--Ciclo 1 TABLAS--
CREATE TABLE Usuario(
    codigo VARCHAR(10) NOT NULL,
    tid VARCHAR(2) NOT NULL,
    nid VARCHAR(10)NOT NULL,
    nombre VARCHAR(50)NOT NULL,
    programa VARCHAR(20),
    correo VARCHAR(50)NOT NULL,
    registro DATE NOT NULL,
    suspension DATE,
    nSuspensiones INT
    universidad VARCHAR(20)NOT NULL
);

CREATE TABLE Califica(
    tid VARCHAR(2)NOT NULL,
    nid VARCHAR(2)NOT NULL,
    id NUMBER(16) NOT NULL,
    estrellas NUMBER(1) NOT NULL
);

CREATE TABLE Universidad(
    codigo VARCHAR(10) NOT NULL,
    nombre VARCHAR(20)NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    tid VARCHAR(2)NOT NULL, 
    nid VARCHAR(10)NOT NULL
);

CREATE TABLE Combo_oferta(
    numero NUMBER(9)NOT NULL,
    fecha DATE NOT NULL,
    precio REAL NOT NULL,
    foto VARCHAR(200)NOT NULL,
    descripcion VARCHAR(100),
    estado VARCHAR(1) NOT NULL,
    trueque VARCHAR(1) NOT NULL,
    tid VARCHAR(2)NOT NULL,
    nid VARCHAR(10)NOT NULL
);

CREATE TABLE Combo_oferta_articulo(
    id NUMBER(16) NOT NULL,
    numero NUMBER(9) NOT NULL
);

CREATE TABLE Articulo(
    id NUMBER(16) NOT NULL,
    descripcion VARCHAR(20) NOT NULL,
    estado VARCHAR(1) NOT NULL,
    foto VARCHAR(200)NOT NULL,   
    precio  NUMBER(10) NOT NULL,
    disponible VARCHAR(5) NOT NULL
);

CREATE TABLE Caracteristicas(
    id NUMBER(16) NOT NULL,
    caracteristicas VARCHAR(50) NOT NULL
);

CREATE TABLE Ropa(
    id NUMBER(16) NOT NULL,
    talla VARCHAR(2) NOT NULL,
    material VARCHAR(10) NOT NULL,
    color VARCHAR(10) NOT NULL
);

CREATE TABLE Perecedero(
    id NUMBER(16) NOT NULL,
    vencimiento DATE NOT NULL
);

CREATE TABLE Categoria(
    codigo VARCHAR(5) NOT NULL,
    nombre VARCHAR(20)NOT NULL,
    tipo VARCHAR(5) NOT NULL,
    minimo REAL NOT NULL, 
    maximo REAL NOT NULL
);

--XTABLAS--
DROP TABLE Usuario;

DROP TABLE Califica;

DROP TABLE Universidad;

DROP TABLE Combo_oferta;

DROP TABLE Articulo;

DROP TABLE Ropa;

DROP TABLE Categoria;

DROP TABLE Perecedero;

DROP TABLE Caracteristicas;

DROP TABLE Combo_oferta_articulo

--Construcciones declarativas--

--PK--

ALTER TABLE Universidad ADD CONSTRAINT PK_UNIVERSIDAD PRIMARY KEY(codigo);

ALTER TABLE Usuario ADD CONSTRAINT PK_USUARIO PRIMARY KEY(tid, nid);

ALTER TABLE Califica ADD CONSTRAINT PK_CALIFICA PRIMARY KEY(tid, nid, id);

ALTER TABLE Combo_oferta ADD CONSTRAINT PK_COMBO_OFERTA PRIMARY KEY(numero);

ALTER TABLE Articulo ADD CONSTRAINT PK_Articulo PRIMARY KEY(id);

ALTER TABLE Ropa ADD CONSTRAINT PK_Ropa PRIMARY KEY(id);

ALTER TABLE Categoria ADD CONSTRAINT PK_CATEGORIA PRIMARY KEY(codigo);

ALTER TABLE Perecedero ADD CONSTRAINT PK_Perecedero PRIMARY KEY(id);

ALTER TABLE Caracteristicas ADD CONSTRAINT PK_CARACTERISTICAS PRIMARY KEY(id, caracteristicas);

ALTER TABLE combo_oferta_articulo ADD CONSTRAINT PK_COMBO_OFERTA_ARTICULO PRIMARY KEY(id, numero);


--UK--

ALTER TABLE ARTICULO ADD CONSTRAINT UK_ARTICULO_foto 
    UNIQUE (foto);

--Consultas--
--CICLO1: CUANTOS ARTICULOS TIENEN EL MISMO PRECIO---
SELECT COUNT(precio) FROM Articulos GROUP BY precio HAVING COUNT(precio) >1;
--CICLO1: Categorias de productos con mas combo ofertas---
SELECT Categorias.nombre, COUNT(*) AS TotalComboOfertas
FROM Categorias.c JOIN Articulo.a ON c.codigo = a.cod_categoria
JOIN Combo_oferta_articulo.ca ON a.id_art = ca.id_coa JOIN Combo_Oferta.co ON ca.numero_co = co.numero
GROUP BY c.nombre ORDER BY TotalComboOfertas DESC;

--PUNTO 2: Preparando CRUDs--

--Tuplas

--TuplasOK

--TuplasNoOk

--Acciones

ALTER TABLE Universidad DROP CONSTRAINT FK_UNIVERSIDAD_USUARIO;
ALTER TABLE Universidad ADD CONSTRAINT FK_UNIVERSIDAD_USUARIO FOREIGN KEY (nombre) REFERENCES Usuario(universidad)[ON DELETE(CASCADE)];

ALTER TABLE Usuario DROP CONSTRAINT FK_USUARIO_UNIVERSIDAD;
ALTER TABLE Usuario ADD CONSTRAINT FK_USUARIO_UNIVERSIDAD FOREIGN KEY (codigo) REFERENCES Universidad(codigo)[ON UPDATE(CASCADE)];

ALTER TABLE Articulo DROP CONSTRAINT FK_ARTICULO_USUARIO;
ALTER TABLE Articulo ADD CONSTRAINT FK_ARTICULO_USUARIO FOREIGN KEY (tid, nid)  REFERENCES Usuario(tid, nid)[ON DELETE(CASCADE)];

ALTER TABLE Articulo DROP CONSTRAINT FK_ARTICULO_CATEGORIA;
ALTER TABLE Articulo ADD CONSTRAINT FK_ARTICULO_CATEGORIA FOREIGN KEY (codigo) REFERENCES Categoria(codigo)[ON UPDATE(CASCADE)];;

ALTER TABLE Caracteristicas DROP CONSTRAINT FK_CARACTERISTICAS_ARTICULO;
ALTER TABLE Caracteristicas ADD CONSTRAINT FK_CARACTERISTICAS_ARTICULO FOREIGN KEY (id) REFERENCES Articulo(id)[ON UPDATE(CASCADE)];;

ALTER TABLE Ropa DROP CONSTRAINT FK_ROPA_ARTICULOO;
ALTER TABLE Ropa ADD CONSTRAINT FK_ROPA_ARTICULO FOREIGN KEY (id) REFERENCES Articulo(id)[ON UPDATE(CASCADE)];;

ALTER TABLE Perecedero DROP CONSTRAINT FK_PERECEDERO_ARTICULO;
ALTER TABLE Perecedero ADD CONSTRAINT FK_PERECEDERO_ARTICULO FOREIGN KEY (id) REFERENCES Articulo(id)[ON UPDATE(CASCADE)];;

ALTER TABLE Combo_oferta DROP CONSTRAINT FK_COMBO_OFERTA_USUARIO;
ALTER TABLE Combo_oferta ADD CONSTRAINT FK_COMBO_OFERTA_USUARIO FOREIGN KEY (tid, nid) REFERENCES Usuario(tid, nid)[ON DELETE(CASCADE)];

ALTER TABLE Combo_oferta_articulo  DROP CONSTRAINT FK_COMBO_OFERTA_ARTICULO_ARTICULO;
ALTER TABLE Combo_oferta_articulo ADD CONSTRAINT FK_COMBO_OFERTA_ARTICULO_ARTICULO FOREIGN KEY (id) REFERENCES Articulo(id)[ON UPDATE(CASCADE)];;

ALTER TABLE Combo_oferta_articulo  DROP CONSTRAINT FK_COMBO_OFERTA_ARTICULO_COMBO_OFERTA;
ALTER TABLE Combo_oferta_articulo ADD CONSTRAINT FK_COMBO_OFERTA_ARTICULO_COMBO_OFERTA FOREIGN KEY (numero) REFERENCES Combo_oferta(numero)[ON UPDATE(CASCADE)];;

ALTER TABLE Califica  DROP CONSTRAINT FK_CALIFICA_USUARIO;
ALTER TABLE Califica ADD CONSTRAINT FK_CALIFICA_USUARIO FOREIGN KEY (tid, nid) REFERENCES Usuario(tid, nid)[ON DELETE(CASCADE)];

ALTER TABLE Califica  DROP CONSTRAINT FK_CALIFICA_ARTICULO;
ALTER TABLE Califica ADD CONSTRAINT FK_CALIFICA_ARTICULO FOREIGN KEY (id) REFERENCES Articulo(id)[ON UPDATE(CASCADE)];;

--AccionesOK

INSERT INTO Usuario(codigo, tid, nid, nombre, programa, correo, registro,suspension,nSuspensionem,universidad) VALUES('1000090001','JU', '1007498303', 'Mlton Gutierrez','Sistemas', 'nosequeponer','12-03-2023','12-03-2023',3,'Universidad 2');
--Aun se puede insertar cualquier tipo de documento y correo siendo esto una de las restricciones del diagrama conceptual. --

INSERT INTO Articulo(id, descipcion, estado, foto, precio, disponible) VALUES('123124', 'dasda', 'A', 'nourslsdf', '14552', '4');
--El id del articulo, estado, foto precio y disponible no siguen con los requerimientos del diargama.--

INSERT INTO Califica(tid, nid, articulo, estrellas) VALUES('CE','123341', '345', '7');
--El id del usurio y del articulo no existen ni tienen sentido, el valor de las estrellas esta fuera del rango--

INSERT INTO Ropa(id, talla, material, color) VALUES('234', 'g', 'latex', 'unicornio');
--Se permite insertar una caracteristica de un articulo que no se ha creado y una talla que no cumple con el tipo del diagrama conceptual--

INSERT INTO Perecedero(id, vencimiento) VALUES('234', '04-04-2044');
--Se permite insertar una caracteristica de un ariticulo que no existe y con id repetido.--


--Disparadores--

--Registrar Combo-Oferta--


--El número Y fecha de la combo-oferta es autogenerado--
CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_NUMERO
BEFORE INSERT ON Combo_Oferta
FOR EACH ROW
BEGIN
    IF :OLD.NUMERO IS NULL THEN
    SELECT MAX(NUMERO) + 1 INTO :NEW.NUMERO FROM Combo_Oferta;
    END IF;
END;

CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_FECHA
AFTER INSERT ON Combo_Oferta
FOR EACH ROW
BEGIN
    UPDATE Combo_Oferta
    SET FECHA = COALESCE(FECHA, SYSDATE());
END;


--Trueque inicia en desconocido--

CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_TRUEQUE
AFTER INSERT ON Combo_Oferta
FOR EACH ROW
BEGIN
    UPDATE Combo_Oferta
    SET TRUEQUE = COALESCE(TRUEQUE, 'DESCONOCIDO');
END;


--El estado inicial de una oferta es oculta--


CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_ESTADO
AFTER INSERT ON Combo_Oferta
FOR EACH ROW
BEGIN
    UPDATE Combo_Oferta
    SET ESTADO = COALESCE(ESTADO, 'OCULTA');
END;

--Los artículos incluídos deben pertenecer al usuario--

CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_ARTICULO 
BEFORE INSERT ON Combo_Oferta
BEGIN
IF SELECT ID FROM combo_oferta_articulo WHERE NUMERO = NEW.NUMERO THEN
    INSERT INTO Combo_Oferta (PRECIO,FOTO,DESCRIPCION,TRUEQUE,TID,NID)
    VALUES (NEW.PRECIO,NEW.FOTO,NEW.DESCRIPCION,NEW.TRUEQUE,NEW.TID,NEW.NID);
    END IF;
END;


--Los artículos incluídos deben estar disponibles --
CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_NUMERO
BEFORE INSERT ON Articulo
FOR EACH ROW
BEGIN
  IF NEW.DISPONIBLE <> 'S' THEN
    RAISE_APLICATION_ERROR(-20001, 'Los articulos deben de estar disponibles');
    END IF;
END;

--El precio debe ser inferior a la suma de los precios de los artículos--
CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_PRECIO
BEFORE INSERT ON Combo_oferta
FOR EACH ROW
DECLARE
    v_precio NUMBER;
BEGIN
    SELECT MAXIMO + MINIMO INTO v_precio FROM Categoria;
    IF :NEW.NUMERO > v_precio THEN
        :NEW.PRECIO := v_precio;
    END IF;
END;


--El estado se puede modificar de oculta a abierta y de abierta a cancelada--
CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_MODIFICAR_ESTADO
BEFORE UPDATE ON Combo_oferta
FOR EACH ROW
BEGIN
  IF :OLD.ESTADO = 'OCULTA' AND :NEW.ESTADO = 'ABIERTA' THEN
    :NEW.ESTADO := 'ABIERTA';
  ELSIF :OLD.ESTADO = 'ABIERTA' AND :NEW.ESTADO = 'CANCELADA' THEN
    :NEW.ESTADO := 'CANCELADA';
  ELSE
    RAISE_APPLICATION_ERROR(-20001, 'El cambio de estado no es permitido.');
  END IF;
END;

--Sólo se pueden modificar todos los datos de la combo-oferta si está en estado oculta--
CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_MODIFICAR_DATOS
BEFORE UPDATE ON Combo_Oferta
FOR EACH ROW
BEGIN
  IF :OLD.ESTADO = 'OCULTA' THEN
    :NEW.PRECIO := :NEW.PRECIO;
    :NEW.FOTO := :NEW.FOTO;
    :NEW.DESCRIPCION := :NEW.DESCRIPCION;
    :NEW.TID := :NEW.TID;
    :NEW.NID := :NEW.NID;
  ELSE
    RAISE_APPLICATION_ERROR(-20001, 'No se pueden modificar los datos de la combo-oferta porque no está en estado oculta.');
  END IF;
END;

--Sólo se puede eliminar las combo-ofertas ocultas--

CREATE OR REPLACE TRIGGER TG_COMBO_OFERTA_ELIMINAR_DATOS
BEFORE UPDATE ON Combo_Oferta
FOR EACH ROW
BEGIN
  IF OLD.ESTADO <> 'OCULTO' THEN
    RAISE_APPLICATION_ERROR(-20001, 'Solo se pueden eliminar filas con estado oculto');
  END IF;
END;

--Area de intercambios. Mantener Categoria--

/*CICLO 1: CRUD : El código se genera automáticamente con el formato CCCCC. Iniciando en AAAAA y terminando en ZZZZZ.*/

CREATE OR REPLACE TRIGGER TG_GENERAR_CODIGO
BEFORE INSERT ON Categoria
FOR EACH ROW
DECLARE
  ultimo_codigo VARCHAR2(5);
  letraUno number(2);
  letraDos number(2);
  letraTres number(2);
  letraCuatro number(2);
  letraCinco number(2);
BEGIN
  SELECT MAX(codigo) INTO ultimo_codigo FROM categorias;
  IF ultimo_codigo IS NULL THEN
    :NEW.codigo := 'AAAAA';
  ELSE
    IF ultimo_codigo = 'ZZZZZ' THEN
      RAISE_APPLICATION_ERROR(-20001, 'No se pueden insertar más registros.');
    ELSE
        SELECT ASCII(SUBSTR(MAX(codigo), 1, 1)) INTO letraCinco FROM categorias;
        SELECT ASCII(SUBSTR(MAX(codigo), 2, 1)) INTO letraCuatro FROM categorias;
        SELECT ASCII(SUBSTR(MAX(codigo), 3, 1)) INTO letraTres FROM categorias;
        SELECT ASCII(SUBSTR(MAX(codigo), 4, 1)) INTO letraDos FROM categorias;
        SELECT ASCII(SUBSTR(MAX(codigo), 5, 1)) INTO letraUno FROM categorias;
        
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
  END IF;
END;


--Si no se da el tipo se asume que es libro. Si no se da el precio máximo se asume que es 100% del mínimo.--
CREATE OR REPLACE TRIGGER TG_CATEGORIA_TIPO
BEFORE INSERT ON Categoria
FOR EACH ROW
BEGIN
    IF :OLD.TIPO IS NULL THEN
    :NEW.TIPO := 'LIBRO';
    END IF;
END;

CREATE OR REPLACE TRIGGER TG_CATEGORIA_PRECIO
BEFORE INSERT ON Categoria
FOR EACH ROW
BEGIN
IF :NEW.MINIMO IS NULL THEN
 :NEW.MINIMO := :OLD.MAXIMO;
 END IF;
END;

-- Únicamente se pueden modificar los precios máximo y mínimo.* --
CREATE TRIGGER TG_restrict_max_min_prices
ON Categoria
FOR UPDATE
AS
IF UPDATE(max_price) OR UPDATE(min_price)
BEGIN
  IF NOT EXISTS (SELECT * FROM inserted WHERE 
                  (max_price <> deleted.max_price OR max_price IS NULL OR deleted.max_price IS NULL)
                  OR (min_price <> deleted.min_price OR min_price IS NULL OR deleted.min_price IS NULL))
  BEGIN
    RAISERROR('Únicamente permite que se pueden modificar los precios máximos y mínimos', 16, 1);
    ROLLBACK;
  END;
END;

--Las categorias se pueden eliminar si no tienen articulos asociados.--

--No pude :c

--DisparadoresOK--

INSERT INTO Usuario(codigo, tid, nid, nombre, programa, correo, registro,suspension,nSuspensionem,universidad) VALUES('1000090001','JU', '1007498303', 'Mlton Gutierrez','Sistemas', 'nosequeponer','12-03-2023','12-03-2023',3,'Universidad 2');

INSERT INTO Articulo(id, descipcion, estado, foto, precio, disponible) VALUES('123124', 'dasda', 'A', 'nourslsdf', '14552', '4');

INSERT INTO Califica(tid, nid, articulo, estrellas) VALUES('CE','123341', '345', '7');

INSERT INTO Ropa(id, talla, material, color) VALUES('234', 'g', 'latex', 'unicornio');

INSERT INTO Perecedero(id, vencimiento) VALUES('234', '04-04-2044');

INSERT INTO Usuario(codigo, tid, nid, nombre, programa, correo, registro,suspension,nSuspensionem,universidad) VALUES('1000090001','JU', '1007498303', 'Mlton Gutierrez','Sistemas', 'nosequeponer','12-03-2023','12-03-2023',3,'Universidad 2');

INSERT INTO Articulo(id, descipcion, estado, foto, precio, disponible) VALUES('123124', 'dasda', 'A', 'nourslsdf', '14552', '4');

INSERT INTO Califica(tid, nid, articulo, estrellas) VALUES('CE','123341', '345', '7');

INSERT INTO Ropa(id, talla, material, color) VALUES('234', 'g', 'latex', 'unicornio');

INSERT INTO Perecedero(id, vencimiento) VALUES('234', '04-04-2044');

INSERT INTO Categoria(codigo, nombre, tipo, minimo, maximo) values ('25549' ,'buzo', 'jum', '15000', '45000');

--DisparadoresNoOk

INSERT INTO Usuario(codigo, tid, nid, nombre, programa, correo, registro,suspension,nSuspensionem,universidad) VALUES('Mlton Gutierrez','Sistemas', 'nosequeponer','12-03-2023','12-03-2023',3,'Universidad 2');

INSERT INTO Articulo(id) VALUES('123124', 'dasda', 'A', 'nourslsdf', '14552', '4');

INSERT INTO Califica(tid) VALUES('CE','123341', '345', '7');

INSERT INTO Ropa(id, talla, material, color) VALUES('234');

INSERT INTO Perecedero(id, vencimiento) VALUES('234', '054-04-2044');

INSERT INTO Usuario(codigo) VALUES('1000090001','JU', '1007498303', 'Mlton Gutierrez','Sistemas', 'nosequeponer','12-03-2023','12-03-2023',3,'Universidad 2');

INSERT INTO Articulo(id, descipcion, estado, foto, precio, disponible) VALUES('123124');

INSERT INTO Califica(tid) VALUES('CE','123341', '345', '7');

INSERT INTO Ropa(id, talla, material, color) VALUES('234');

INSERT INTO Perecedero(id, vencimiento) VALUES('234', '043-04-2044');

INSERT INTO Categoria(codigo) values ('25549' ,'buzo', 'jum', '15000', '45000');

--XDisparadores--

DROP TRIGGER TG_GENERAR_CODIGO;
DROP TRIGGER TG_COMBO_OFERTA_NUMERO;
DROP TRIGGER TG_COMBO_OFERTA_FECHA;
DROP TRIGGER TG_COMBO_OFERTA_TRUEQUE;
DROP TRIGGER TG_COMBO_OFERTA_ESTADO;
DROP TRIGGER TG_COMBO_OFERTA_ARTICULO;
DROP TRIGGER TG_COMBO_OFERTA_NUMERO;
DROP TRIGGER TG_COMBO_OFERTA_PRECIO;
DROP TRIGGER TG_COMBO_OFERTA_MODIFICAR_DATOS;
DROP TRIGGER TG_COMBO_OFERTA_ELIMINAR_DATOS;
DROP TRIGGER TG_CATEGORIA_TIPO;
DROP TRIGGER TG_CATEGORIA_PRECIO;
DROP TRIGGER TG_restrict_max_min_prices;

