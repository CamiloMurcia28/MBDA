--A RESTRICCIONES DECLARATIVAS
--1. Modificando los tipos base si es necesario
CREATE TABLE Staff(
    Staff_code VARCHAR(3) NOT NULL, 
    First_name VARCHAR(50),
    Last_name VARCHAR(50), 
    Level_code NUMBER(4) NOT NULL
);
DROP TABLE Staff;

CREATE TABLE Issue(
    call_ref NUMBER(11) NOT NULL,
    call_date DATE NOT NULL,
    detail VARCHAR(255),
    status VARCHAR(6),
    Solutions VARCHAR(10),
    Staff_code VARCHAR(3) NOT NULL, 
    Caller_id NUMBER(4) NOT NULL
);  
DROP TABLE Issue;

CREATE TABLE Solutions(
    solutions_id VARCHAR(10) NOT NULL,
    detalle VARCHAR(50) NOT NULL
);

DROP TABLE Solutions;

CREATE TABLE Caller(
    Caller_id NUMBER(4) NOT NULL,
    Company_ref NUMBER(4),
    First_name VARCHAR(50),
    Last_name VARCHAR(50)
);   
DROP TABLE Caller;

--2. Definir las restricciones declarativas

--PRIMARY KEYS
ALTER TABLE Solutions ADD CONSTRAINT PK_SOLUTIONS PRIMARY KEY (solutions_id);
ALTER TABLE Caller ADD CONSTRAINT PK_CALLER PRIMARY KEY (Caller_id);
ALTER TABLE Staff ADD CONSTRAINT PK_STAFF PRIMARY KEY (Staff_code);
ALTER TABLE Issue ADD CONSTRAINT PK_ISSUE PRIMARY KEY (call_ref);

--FOREIGN KEYS

ALTER TABLE Issue ADD CONSTRAINT FK_ISSUE_STAFF FOREIGN KEY (Staff_code) REFERENCES Staff(Staff_code);
ALTER TABLE Issue ADD CONSTRAINT FK_ISSUE_CALLER FOREIGN KEY (Caller_id) REFERENCES Caller(Caller_id);

--ATTRIBUTES AND TUPLES

ALTER TABLE Issue ADD CONSTRAINT CK_ISSUES_TREF CHECK (call_ref >= 0);
ALTER TABLE Issue ADD CONSTRAINT CK_ISSUE_TSTATUS CHECK (status IN ('Open', 'Closed'));

--3. Validar con casos significativos la protección de la base de datos, adicione comentarios que expliquen 
la condicón que están validando

--AtributosOK
/*Staff_code requiere un varchar de 3 de caracteres*/
INSERT INTO STAFF(Staff_code,First_name,Last_name,Level_code) VALUES ('AB1', 'Samantha', 'Maguire', '1');
/*Se inserta de manera correcta debido a que el staff_code cuenta con la longitud y tipo de dato correcto.*/

/*Verificar que el formato de la fecha se encuentre correcta para el tipo de dato DATE*/
INSERT INTO ISSUE(call_ref, call_date, detail, status, solutions, Staff_code, Caller_id)
VALUES ('2810','02-11-2015', 'How can I vanish a task-based documentation in Adobe Acrobat ?', 'Open', 'With a PK', 'AB1', '1');
/*Se inserta normalmente en la tabla debido a que cumple todas las condiciones*

/*Se valida que Caller_id tenga una longitud maxima de 4 al igual que company_ref*/
INSERT INTO CALLER(Caller_id, Company_ref, First_name, Last_name) VALUES('31', '133', 'Alexis', 'Gritten');
/*Se pueden insertar correctamente debido a que no excede la longitud maxima*/

--AtributosNoOK
/*Staff_code requiere un varchar de 3 de caracteres*/
INSERT INTO STAFF(Staff_code,First_name,Last_name,Level_code) VALUES ('AB11', 'Samantha', 'Maguire', '1');
/*NO se inserta de manera correcta debido a que el staff_code sobrepasa la longitud especificada*/

/*Verificar que el formato de la fecha se encuentre correcta para el tipo de dato DATE*/
INSERT INTO ISSUE(call_ref, call_date, detail, status, solutions, Staff_code, Caller_id)
VALUES ('2810','2015-11-12', 'How can I vanish a task-based documentation in Adobe Acrobat ?', 'Open', 'With a PK', 'AB1', '1');
/*No se puede insertar ya que el formato de la fecha es incorrecto*/

/*Se valida que Caller_id tenga una longitud maxima de 4 al igual que company_ref*/
INSERT INTO CALLER(Caller_id, Company_ref, First_name, Last_name) VALUES('31111', '13333', 'Alexis', 'Gritten');
/*NO se pueden insertar correctamente debido a que se excede la longitud maxima para ambos atributos*/

--Tuplas OK

INSERT INTO Staff(Staff_code,First_name,Last_name,Level_code) VALUES ('AW1', 'Alyssa', 'White', '1');
INSERT INTO Staff(Staff_code,First_name,Last_name,Level_code) VALUES ('AL1', 'David ', 'Jones', '2');
INSERT INTO Staff(Staff_code,First_name,Last_name,Level_code) VALUES ('BJ1', 'Logan', 'Butler', '4');

INSERT INTO Issue(call_ref, call_date, detail, status, solutions, Staff_code, Caller_id)
VALUES ('1238','12-03-2019', 'How can I skip a aspect ratio in Oracle ?', 'Closed', 'deleting', 'AB2', '2');
INSERT INTO Issue(call_ref, call_date, detail, status, solutions, Staff_code, Caller_id)
VALUES ('1239','02-04-2020', 'How can I remind a vocabulary list in Microsoft Excel ?', 'Open', 'validemail', 'AE1', '3');
INSERT INTO Issue(call_ref, call_date, detail, status, solutions, Staff_code, Caller_id)
VALUES ('1240','10-01-2015', 'How can I scare a training needs analysis in Camtasia Studio ?', 'Closed', 'ViewOption', 'AL1', '4');

INSERT INTO Caller(Caller_id, Company_ref, First_name, Last_name) VALUES('2', '108', 'Noah', 'Evans');
INSERT INTO Caller(Caller_id, Company_ref, First_name, Last_name) VALUES('3', '136', 'Alex', 'Davis');
INSERT INTO Caller(Caller_id, Company_ref, First_name, Last_name) VALUES('4', '129', 'Ava', 'Clarke');


--Tuplas NoOK

INSERT INTO Staff(Staff_code,First_name,Last_name,Level_code) VALUES ('AW111', 'Alyssa', 'White', '1');
INSERT INTO Staff(Staff_code,First_name,Last_name,Level_code) VALUES ('AL111', 'David ', 'Jones', '2');
INSERT INTO Staff(Staff_code,First_name,Last_name,Level_code) VALUES ('BJ221', 'Logan', 'Butler', '4');

INSERT INTO Issue(call_ref, call_date, detail, status, solutions, Staff_code, Caller_id)
VALUES ('1238','2019-03-19', 'How can I skip a aspect ratio in Oracle ?', 'Closed', 'deleting', 'AB2', '2');
INSERT INTO Issue(call_ref, call_date, detail, status, solutions, Staff_code, Caller_id)
VALUES ('1239','2020-04-20', 'How can I remind a vocabulary list in Microsoft Excel ?', 'Open', 'validemail', 'AE1', '3');
INSERT INTO Issue(call_ref, call_date, detail, status, solutions, Staff_code, Caller_id)
VALUES ('1240','1200-01-25', 'How can I scare a training needs analysis in Camtasia Studio ?', 'Closed', 'ViewOption', 'AL1', '4');

INSERT INTO Caller(Caller_id, Company_ref, First_name, Last_name) VALUES('2', '10338', 'Noah', 'Evans');
INSERT INTO Caller(Caller_id, Company_ref, First_name, Last_name) VALUES('3', '13336', 'Alex', 'Davis');
INSERT INTO Caller(Caller_id, Company_ref, First_name, Last_name) VALUES('4', '12339', 'Ava', 'Clarke');

--B. ADICIONANDO ACCIONES DE REFERENCIA

--1. DEFINIR ACCIONES DE REFERENCIA

ALTER TABLE Issue DROP CONSTRAINT FK_ISSUE_CALLER;
ALTER TABLE Issue ADD CONSTRAINT FK_ISSUE_CALLER FOREIGN KEY (Caller_id) REFERENCES CALLER(Caller_id) ON UPDATE CASCADE;

ALTER TABLE Issue DROP CONSTRAINT FK_ISSUE_STAFF;
ALTER TABLE Issue ADD CONSTRAINT FK_ISSUE_STAFF FOREIGN KEY (Staff_code) REFERENCES STAFF(Staff_code) ON DELETE CASCADE;

--Se elimina staff_code como FK debido a qe no figura en otras tablas del modelo

--Se elimina caller_id como FK debido a qe no figura en otras tablas del modelo

