--AccionesOK--
--Evento--
--Se verifica que se borren todas las columnas--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('r20220402Eje', 'Presentación Banda Sinfonica', '02-04-2022','Ejemplo de descripcion', '1');
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('r20220402Eje', '04-02-2022', '05-02-2022', 110,'Cerrada');

DELETE FROM Evento WHERE id_evento = 'r20220402Eje';
SELECT evento FROM Actividad WHERE evento = 'r20220402Eje';

--Profesor--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('442123123', 'CC', 'Carlos Rodry', 'rodry@gmail.com','123453');
INSERT INTO Profesor(nid, tid, anos_experiencia) VALUES ('442123123', 'CC', 8);

DELETE FROM Persona WHERE nid = '442123123';
SELECT * FROM Profesor WHERE nid = '442123123';

--Curso_Profesor--
--SI se llega a eliminar el dato del profesor se eliminaran todas la columnas de sus cursos-
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (442123123, 'CC', 'Carlos Rodry', 'rodry@gmail.com','123453');
INSERT INTO Profesor(nid, tid, anos_experiencia) VALUES (442123123, 'CC',8);
INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (442123123, 'CC', 'CURSO3');

DELETE FROM Profesor WHERE nid = 442123123;
SELECT * FROM Curso_Profesor WHERE nid = 442123123;

--Si se elimina el curso se eliminaran todos las columnas de los cursos.
INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO11', '2', 'Curso de Artes Escenicas');
INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10005, 'PAP', 'CURSO11');
INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10004, 'NIP', 'CURSO11');

DELETE FROM Curso WHERE id_curso = 'CURSO11';
SELECT * FROM Curso_Profesor WHERE curso = 'CURSO11';

--Estudiante--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1007498403', 'TI', 'Kevin Makino', 'makinooe@gmail.com','345632');
INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('1007498403', 'TI', 'Pregrado', 'Mecanica', 9);

DELETE FROM Persona WHERE nid = '1007498403';
SELECT * FROM Estudiante WHERE nid = '1007498403';

--Personal_Ad--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('10032342345', 'CC','Daniela Montenegro', 'danielamonteblac@gmail.com','652341');
INSERT INTO Personal_Ad(nid, tid, cargo) VALUES ('10032342345', 'CC', 'Mantenimiento');

DELETE FROM Persona WHERE nid = '10032342345';
SELECT * FROM Personal_Ad WHERE nid = '10032342345';

--Directivo--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('3456346212', 'CC','Rosita Camelo', 'rosisc@gmail.com','345249');
INSERT INTO Directivo(nid, tid, area) VALUES ('3456346212', 'CC', 'Deportes');

DELETE FROM Persona WHERE nid = '3456346212';
SELECT * FROM Directivo WHERE nid = '3456346212';

--Telefonos Persona--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('3456346212', 'CC','Rosita Camelo', 'rosisc@gmail.com','345249');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('3456346212', 'CC','3104433434');

DELETE FROM Persona WHERE nid = '3456346212';
SELECT * FROM Telefonos_Persona WHERE nid = '3456346212';

--Comentario Noticia 1--
--Se verifica que se borren todas las columnas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('3456346212', 'CC','Rosita Camelo', 'rosisc@gmail.com','345249');
INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('30', 'Ejemplo Titulo', '02-05-2023', 'Ejemplo Descripcion', 'Froggie Robbie');
INSERT INTO Comentario_Noticia(nid, tid, noticia, detalle, fecha) VALUES('3456346212', 'CC', '30', 'Ejemplo detalle.', '04-05-2023');

DELETE FROM Noticia WHERE id_noticia = '30';
SELECT * FROM Comentario_noticia WHERE noticia = '30';


--Comentario Noticia 2--
--Se verifica que no se pueda elimninar el dato de persona y por ende no se elimina el comentario--
INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('30', 'Ejemplo Titulo', '02-05-2023', 'Ejemplo Descripcion', 'Froggie Robbie');
INSERT INTO Comentario_Noticia(nid, tid, noticia, detalle, fecha) VALUES('3456346212', 'CC', '30', 'Ejemplo detalle.', '04-05-2023');

DELETE FROM Persona WHERE nid = '3456346212';
SELECT * FROM Comentario_noticia WHERE nid = '3456346212';

--Comentario Actividad 1--
--Se verifica que se borren todas las columnas--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('r20220402Eje', 'Presentación Banda Sinfonica', '02-04-2022','Ejemplo de descripcion', '1');
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('r20220402Eje', '04-02-2022', '05-02-2022', 110,'Cerrada');
INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('3456346212', 'CC', 'r20220402Eje', 'Ejemplo comentario');

DELETE FROM Actividad WHERE evento = 'r20220402Eje';
SELECT * FROM Comentario_Actividad WHERE actividad = 'r20220402Eje';

--Comentario Actividad 2--
--Se verifica que no se pueda elimninar el dato de persona y por ende no se elimina el comentario--
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('r20220402Eje', '04-02-2022', '05-02-2022', 110, 'Cerrada');
INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('3456346212', 'CC', 'r20220402Eje', 'Ejemplo comentario');

DELETE FROM Persona WHERE nid = '3456346212';
SELECT * FROM Comentario_Actividad WHERE nid = '3456346212';

--Suscripcion 1--
--Se verifica que se borren todas las columnas--
INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('3456346212', 'CC', 'r20220402Eje', 40, '04-02-2022', '26-02-2022', 'Cancelada');

DELETE FROM Actividad WHERE evento = 'r20220402Eje';
SELECT * FROM Suscripcion WHERE actividad = 'r20220402Eje';

--Suscripcion 2--
--Se verifica que se borren todas las columnas--
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('r20220402Eje', '04-02-2022', '05-02-2022', 110,'Cerrada');
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('234523', 'CC','Benito De Sosa', 'elbenardo@gmail.com','2341231');
INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('234523', 'CC', 'r20220402Eje', 41, '04-02-2022', '26-02-2022', 'Cancelada');

DELETE FROM PERSONA WHERE nid = '234523';
SELECT * FROM Suscripcion WHERE nid = '234523';
