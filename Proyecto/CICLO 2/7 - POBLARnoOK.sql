/*POBLARNoOK*/

--Restricciones PRIMARIAS--
INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10001, 'CC', 'Juan Perez', 'juan1@example.com', 'COD1');

INSERT INTO Directivo (nid, tid, area)VALUES (10009, 'NIP', 'Academica');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10007, 'CC', '222222222');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV1', 'Partido de FUtbol', TO_DATE('21-05-2023', 'DD-MM-YYYY'), 'Partido amistoso de futbol', '1');

--Restricciones UNICAS--
INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10020, 'CC', 'Ana Gutierrez', 'ana@example.com', 'COD20');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10021, 'CC', 'Rodrigo Gutierrez', 'rodri@example.com', 'COD1');

--Restricciones ATRIBUTOS--

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10020, 'KK', 'Ana Gutierrez', 'ana@example.com', 'COD20');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid)
VALUES ('EV1', 'Partido de FUtbol', TO_DATE('21-05-2023', 'DD-MM-YYYY'), 'Partido amistoso de futbol', '9', 10009, 'NIP');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (20001, 'CC', 'Juan Perez', 'juan1111@example.com', 'COD111');

INSERT INTO Directivo (nid, tid, area)VALUES (20001, 'CC', 'RecursosH');

INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(12731212, 'Titulo para la encuesta 1', 'Ejemplo para la descripcion de la encuesta', 'Ludica', 'Activa', '21-FEB-2022','EV1');

INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(12731212, 'Titulo para la encuesta 1', 'Ejemplo para la descripcion de la encuesta', 'Deportivo', 'Borrada', '21-FEB-2022','EV1');

INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(68765, '21-FEB-2023', 'Ejemplo de detalle4', 'No abierta', 43213);

INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta) VALUES('11-AUG-2023', 'Para Contestar', 2, 98731212);

--Persona CD_PERSONAS_TID
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (10022, 'UP', 'Carlos Cortes Loperz', 'carloscortegmailcom','COD22');

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (10022, 'TI', 'Carlos Cortes Loperz', 'NOSE@gmail.com','COD22');
--Evento TEVENTO
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('EV6', 'Ejemplo', '02-04-2022','Ejemplo de descripcion', '7');

--Actividad CD_ACTIVIDAD_TESTADO--
INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV6', 'Torneo de Tenis', '25-05-2023', 'Torneo de tenis amateur', '1');

