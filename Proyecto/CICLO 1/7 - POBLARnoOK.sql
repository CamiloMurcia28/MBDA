/*POBLARNoOK*/

--Restricciones PRIMARIAS--
INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10001, 'CC', 'Juan Perez', 'juan1@example.com', 'COD1');

INSERT INTO Directivo (nid, tid, area)VALUES (10009, 'NIP', 'Academica');

INSERT INTO Personal_Ad (nid, tid, cargo)VALUES (10016, 'TI', 'Otro');

INSERT INTO Profesor (nid, tid, anos_experiencia)VALUES (10005, 'PAP', 6);

INSERT INTO Estudiante (nid, tid, ciclo_estudiantil, area_educativa, semestre)VALUES (10012, 'CC', 'Posgrado', 'Economia', 4);

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO1', '1', 'Curso de Fútbol');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10001, 'CC', 'CURSO1');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10007, 'CC', '222222222');

INSERT INTO Noticia (id_noticia, titulo, fecha_creacion, descripcion, autor)VALUES ('N3', 'Nuevas instalaciones deportivas', '10-05-2023', 'La universidad ha inaugurado nuevas instalaciones deportivas para beneficio de los estudiantes.', 'Universidad XYZ');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10010, 'PAP', 'EV2', 'Mis amigos y yo nos divertimos mucho.');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV1', 'Partido de FUtbol', TO_DATE('21-05-2023', 'DD-MM-YYYY'), 'Partido amistoso de futbol', '1');

INSERT INTO Actividad (evento, fecha_inicio, fecha_fin, asistentes, estado)VALUES ('EV1', '28-05-2023', '28-05-2023', 50, 'Abierta');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10017, 'CC', 'EV5', 3, '17-06-2023', '20-06-2023', 'Activa');

INSERT INTO Comentario_Noticia (nid, tid, noticia, detalle, fecha)VALUES (10006, 'CC', 'N3', '¿Los estudiantes podrán acceder a estas instalaciones fuera de los horarios de clase?', '12-05-2023');

--Restricciones UNICAS--
INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10020, 'CC', 'Ana Gutierrez', 'ana@example.com', 'COD20');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10021, 'CC', 'Rodrigo Gutierrez', 'rodri@example.com', 'COD1');

--Restricciones ATRIBUTOS--

--Persona CD_PERSONAS_TID
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (10022, 'UP', 'Carlos Cortes Loperz', 'carloscortegmailcom','COD22');

--Estudiante CD_ESTUDIANTE_CICLO--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (10022, 'TI', 'Carlos Cortes Loperz', 'NOSE@gmail.com','COD22');

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES (10022, 'TI', 'Maestria', 'Mecanica', 9);

--Estudiante CD_ESTUDIANTE_TAREAEDUC--
INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES (10022, 'TI', 'Posgrado', 'Psicologia', 9);

--Evento TEVENTO
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('EV6', 'Ejemplo', '02-04-2022','Ejemplo de descripcion', '7');

--Curso CD_CURSO_TCURSO--
INSERT INTO Curso (id_curso, tipo, descripcion, nid, tid)VALUES ('CURSO11', '7', 'Curso de Teatro', 10005, 'PAP');

--Actividad CD_ACTIVIDAD_TESTADO--
INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV6', 'Torneo de Tenis', '25-05-2023', 'Torneo de tenis amateur', '1');

INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado)VALUES ('EV6', '15-06-2024', '18-06-2023', 0, 'No sé');

--Suscripcion CD_SUSCRIPCION_TSUSESTADO--
INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10006, 'CC', 'EV1', 7, '22-06-2023', '25-06-2023', 'No se');

