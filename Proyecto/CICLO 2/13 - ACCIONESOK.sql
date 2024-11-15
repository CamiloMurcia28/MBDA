/*AccionesOK*/

--Persona con Directivo--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (3456346212, 'CC','Rosita Camelo', 'rosisc@gmail.com','345249');
INSERT INTO Directivo(nid, tid, area) VALUES (3456346212, 'CC', 'Deportes');

DELETE FROM Persona WHERE nid = 3456346212;
SELECT * FROM Directivo WHERE nid = 3456346212;

--Persona con Telefonos Persona--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (3456346212, 'CC','Rosita Camelo', 'rosisc@gmail.com','345249');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES (3456346212, 'CC','3104433434');

DELETE FROM Persona WHERE nid = 3456346212;
SELECT * FROM Telefonos_Persona WHERE nid = 3456346212;

--Persona con Servicios--
--Se verifica que se borre columnas--

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (3456346212, 'CC','Rosita Camelo', 'rosisc@gmail.com','345249');
INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES(513213, 'Apoyo financiero', 'Ejemplo de descripcion', 'Edificio A, segundo piso', 'Lunes a viernes de 7:00 AM 4:00 PM', 3456346212, 'CC');

DELETE FROM Persona WHERE nid = 3456346212;
SELECT * FROM Servicios_Binestar WHERE nid = 3456346212;

--Persona con Clubes
--Se verifica que se borren todas las columnas--

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10009, 'CC', 'Juan Ramirez', 'juan213@example.com', 'COD217');
INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union,id_servicio, nombre)
VALUES('Le280523', '45345', 'COD217', SYSDATE, 13213, 'Lectura critica FC');

DELETE FROM Persona WHERE nid = 10009 and tid = 'CC';
SELECT * FROM Clubes_Grupos WHERE codigo_representante = 'COD217';

--Servicios con Clubes
--Se verifica que se borren todas las columnas--

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (3456346212, 'CC','Rosita Camelo', 'rosisc@gmail.com','345249');
INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES(513213, 'Apoyo financiero', 'Ejemplo de descripcion', 'Edificio A, segundo piso', 'Lunes a viernes de 7:00 AM 4:00 PM', 3456346212, 'CC');
INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union,id_servicio, nombre)
VALUES('Le280523', '12345', '345249', SYSDATE, 513213, 'Lectura critica FC');

DELETE FROM Servicios_Binestar WHERE id_servicio =  513213;
SELECT * FROM Clubes_Grupos WHERE id_servicio =  513213;

--Servicios con Solicitudes--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (1234532, 'CC','Rosita Camelo', 'rosisc23@gmail.com','GO12');
INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES(513213, 'Apoyo financiero', 'Ejemplo de descripcion', 'Edificio A, segundo piso', 'Lunes a viernes de 7:00 AM 4:00 PM', 1234532, 'CC');
INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(56734, '21-04-2023', 'Ejemplo de detalle', 'Abierta', 513213);

DELETE FROM Servicios WHERE id_servicio = 513213;
SELECT * FROM Solicitudes WHERE id_servicio = 513213;

--Persona con Evento--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10007, 'CC', 'Juan Ramirez', 'juan213@example.com', 'COD217');
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) 
VALUES ('r20220402Eje', 'Presentación Banda Sinfonica', '02-04-2022','Ejemplo de descripcion', '1',10007, 'CC');

DELETE FROM Persona WHERE nid = 10007;
SELECT * FROM Evento WHERE id_evento ='r20220402Eje' ;


--Evento con Encuesta--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10007, 'CC', 'Juan Ramirez', 'juan213@example.com', 'COD217');
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) 
VALUES ('r20220402Eje', 'Presentación Banda Sinfonica', '02-04-2022','Ejemplo de descripcion', '1',10007, 'CC');
INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(12731212, 'Titulo para la encuesta 1', 'Ejemplo para la descripcion de la encuesta', 'Deportivo', 'Activa', '21-04-2022','r20220402Eje');

DELETE FROM Evento WHERE id_evento = 'r20220402Eje';
SELECT * FROM Encuestas WHERE evento = 'r20220402Eje';

--Encuestas con preguntas--
--Se verifica que no se pueda borrar la pregunta de la Encuesta--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) 
VALUES ('r20220402Eje', 'Presentación Banda Sinfonica', '02-04-2022','Ejemplo de descripcion', '1',10007, 'CC');
INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(12731212, 'Titulo para la encuesta 1', 'Ejemplo para la descripcion de la encuesta', 'Deportivo', 'Activa', '21-04-2022','r20220402Eje');
INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta, detalle) VALUES('21-02-2023', 'Contestada', 20, 12731212, 'Ejemplo acciones 1');

DELETE FROM Encuestas WHERE id_encuesta = 12731212;
SELECT * FROM Preguntas WHERE encuesta = 12731212;










