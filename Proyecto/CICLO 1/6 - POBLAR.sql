/*POBLAR*/
--Estudiantes--

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10007, 'CC', 'Juan Ramirez', 'juan@example.com', 'COD7');

INSERT INTO Estudiante (nid, tid, ciclo_estudiantil, area_educativa, semestre)VALUES (10007, 'CC', 'Pregrado', 'Sistemas', 3);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10007, 'CC', '222222222');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10010, 'PAP', 'Laura Fernández', 'laura@example.com', 'COD10');

INSERT INTO Estudiante (nid, tid, ciclo_estudiantil, area_educativa, semestre)VALUES (10010, 'PAP', 'Posgrado', 'Matematicas', 2);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10010, 'PAP', '777777777');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10011, 'TI', 'Ana García', 'ana@example.com', 'COD11');

INSERT INTO Estudiante (nid, tid, ciclo_estudiantil, area_educativa, semestre)VALUES (10011, 'TI', 'Preuniversitario', 'No disponible', NULL);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10011, 'TI', '888888888');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10012, 'CC', 'Pedro López', 'pedro@example.com', 'COD12');

INSERT INTO Estudiante (nid, tid, ciclo_estudiantil, area_educativa, semestre)VALUES (10012, 'CC', 'Posgrado', 'Economia', 4);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10012, 'CC', '999999999');


--Profesores--

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10001, 'CC', 'Juan Perez', 'juan1@example.com', 'COD1');

INSERT INTO Profesor (nid, tid, anos_experiencia)VALUES (10001, 'CC', 5);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10001, 'CC', '123456789');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10002, 'CC', 'Maria Rodriguez', 'maria2@example.com', 'COD2');

INSERT INTO Profesor (nid, tid, anos_experiencia)VALUES (10002, 'CC', 8);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10002, 'CC', '987654321');



INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10003, 'CE', 'Pedro Gomez', 'pedro3@example.com', 'COD3');

INSERT INTO Profesor (nid, tid, anos_experiencia)VALUES (10003, 'CE', 3);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10003, 'CE', '555555555');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10004, 'NIP', 'Laura Sanchez', 'laura4@example.com', 'COD4');

INSERT INTO Profesor (nid, tid, anos_experiencia)VALUES (10004, 'NIP', 10);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10004, 'NIP', '111111111');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10004, 'NIP', '999999999');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10005, 'PAP', 'Carlos Ramirez', 'carlos5@example.com', 'COD5');

INSERT INTO Profesor (nid, tid, anos_experiencia)VALUES (10005, 'PAP', 6);

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10005, 'PAP', '777777777');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10005, 'PAP', '666666666');


--Curso--

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO1', '1', 'Curso de Fútbol');

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO2', '2', 'Curso de Arte');

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO3', '3', 'Curso de Matemáticas Avanzadas');

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO4', '4', 'Curso de Cocina' );

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO5', '1', 'Curso de Tenis');

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO6', '2', 'Curso de Música');

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO7', '3', 'Curso de Historia del Arte');

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO8', '4', 'Curso de Fotografía');

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO9', '1', 'Curso de Baloncesto');

INSERT INTO Curso (id_curso, tipo, descripcion)VALUES ('CURSO10', '2', 'Curso de Teatro');

--Curso_Profesor--

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10001, 'CC', 'CURSO1');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10002, 'CC', 'CURSO2');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10003, 'CE', 'CURSO3');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10004, 'NIP', 'CURSO4');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10005, 'PAP', 'CURSO5');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10001, 'CC', 'CURSO6');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10002, 'CC', 'CURSO7');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10003, 'CE', 'CURSO8');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10004, 'NIP', 'CURSO9');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10005, 'PAP', 'CURSO10');

INSERT INTO Curso_Profesor (nid, tid, curso)VALUES (10004, 'NIP', 'CURSO10');

--Personal Adicional--

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10008, 'CE', 'Luisa González', 'luisa5@example.com', 'COD8');

INSERT INTO Personal_Ad (nid, tid, cargo)VALUES (10008, 'CE', 'Seguridad');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10008, 'CE', '333333333');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10015, 'PAP', 'Sofía Fernández', 'sofia6@example.com', 'COD15');

INSERT INTO Personal_Ad (nid, tid, cargo)VALUES (10015, 'PAP', 'Mantenimiento');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10015, 'PAP', '777788889999');



INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10016, 'TI', 'Luis Torres', 'luis7@example.com', 'COD16');

INSERT INTO Personal_Ad (nid, tid, cargo)VALUES (10016, 'TI', 'Otro');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10016, 'TI', '222233334444');

--Directivos--

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10009, 'NIP', 'Pedro Martinez', 'pedro8@example.com', 'COD9');

INSERT INTO Directivo (nid, tid, area)VALUES (10009, 'NIP', 'Academica');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10009, 'NIP', '444444444');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10009, 'NIP', '555555555');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10009, 'NIP', '666666666');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10006, 'CC', 'María López', 'maria9@example.com', 'COD6');

INSERT INTO Directivo (nid, tid, area)VALUES (10006, 'CC', 'Administrativa');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10006, 'CC', '111111111');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10017, 'CC', 'Andrés Morales', 'andres0@example.com', 'COD17');

INSERT INTO Directivo (nid, tid, area)VALUES (10017, 'CC', 'Deportes');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10017, 'CC', '555566667777');


INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10018, 'NIP', 'Marta Ramírez', 'martaQ@example.com', 'COD18');

INSERT INTO Directivo (nid, tid, area)VALUES (10018, 'NIP', 'Academica');

INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10018, 'NIP', '888899991111');

--Evento--

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV1', 'Partido de FUtbol', TO_DATE('21-05-2023', 'DD-MM-YYYY'), 'Partido amistoso de futbol', '1');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV2', 'Concierto de Jazz', TO_DATE('22-05-2023', 'DD-MM-YYYY'), 'Concierto de mÃºsica jazz en vivo', '2');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV3', 'Seminario de Programacion', TO_DATE('23-05-2023', 'DD-MM-YYYY'), 'Seminario sobre programacion avanzada', '3');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV4', 'Feria de Artesans', TO_DATE('24-05-2023', 'DD-MM-YYYY'), 'Feria de artesanias y productos locales', '4');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo)VALUES ('EV5', 'Torneo de Tenis', TO_DATE('25-05-2023', 'DD-MM-YYYY'), 'Torneo de tenis amateur', '1');

--Actividad--

INSERT INTO Actividad (evento, fecha_inicio, fecha_fin, asistentes, estado)VALUES ('EV1', '28-05-2023', '28-05-2023', 50, 'Abierta');

INSERT INTO Actividad (evento, fecha_inicio, fecha_fin, asistentes, estado)VALUES ('EV2', '01-06-2023', '01-06-2023', 100, 'Abierta');

INSERT INTO Actividad (evento, fecha_inicio, fecha_fin, asistentes, estado)VALUES ('EV3', '05-06-2023', '05-06-2023', 30, 'Abierta');

INSERT INTO Actividad (evento, fecha_inicio, fecha_fin, asistentes, estado)VALUES ('EV4', '10-06-2023', '10-06-2023', 80, 'Abierta');

INSERT INTO Actividad (evento, fecha_inicio, fecha_fin, asistentes, estado)VALUES ('EV5', '15-06-2023', '15-06-2023', 64, 'Abierta');


--Comentario_Actividad

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10001, 'CC', 'EV1', '¡Excelente partido!');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10002, 'CC', 'EV1', 'La cancha estuvo en malas condiciones.');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10003, 'CE', 'EV1', 'Buena organización del evento.');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10004, 'NIP', 'EV1', 'Los jugadores demostraron mucho talento.');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10005, 'PAP', 'EV1', 'Mis hijos disfrutaron mucho del partido.');


INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10006, 'CC', 'EV2', 'Increíble concierto de jazz.');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10007, 'CC', 'EV2', 'La música estuvo genial.');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10008, 'CE', 'EV2', 'Buena selección de canciones.');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10009, 'NIP', 'EV2', 'El lugar era demasiado pequeño.');

INSERT INTO Comentario_Actividad (nid, tid, actividad, detalle)VALUES (10010, 'PAP', 'EV2', 'Mis amigos y yo nos divertimos mucho.');

--Suscripciones

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10001, 'CC', 'EV1', 4, '20-06-2023', '25-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10017, 'CC', 'EV1', 5, '21-06-2023', '25-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10009, 'NIP', 'EV1', 6, '22-06-2023', '25-06-2023', 'Activa');


INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10001, 'CC', 'EV2', 4, '25-06-2023', '30-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10010, 'PAP', 'EV2', 5, '26-06-2023', '30-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10017, 'CC', 'EV2', 6, '27-06-2023', '30-06-2023', 'Activa');


INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10001, 'CC', 'EV3', 1, '01-06-2023', '10-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10012, 'CC', 'EV3', 2, '02-06-2023', '10-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10006, 'CC', 'EV3', 3, '03-06-2023', '10-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10009, 'NIP', 'EV3', 4, '04-06-2023', '10-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10015, 'PAP', 'EV3', 5, '05-06-2023', '10-06-2023', 'Activa');


INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10001, 'CC', 'EV4', 1, '10-06-2023', '15-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10017, 'CC', 'EV4', 2, '11-06-2023', '15-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10009, 'NIP', 'EV4', 3, '12-06-2023', '15-06-2023', 'Activa');


INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10001, 'CC', 'EV5', 1, '15-06-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10010, 'PAP', 'EV5', 2, '16-06-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion (nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES (10017, 'CC', 'EV5', 3, '17-06-2023', '20-06-2023', 'Activa');

--Noticias--

INSERT INTO Noticia (id_noticia, titulo, fecha_creacion, descripcion, autor)VALUES ('N1', 'Nuevo programa de becas', '01-05-2023', 'La universidad ha lanzado un nuevo programa de becas para estudiantes destacados.', 'Universidad XYZ');

INSERT INTO Noticia (id_noticia, titulo, fecha_creacion, descripcion, autor)VALUES ('N2', 'Conferencia sobre inteligencia artificial', '05-05-2023', 'Próximamente se realizará una conferencia sobre inteligencia artificial en la universidad.', 'Dr. Juan Pérez');

INSERT INTO Noticia (id_noticia, titulo, fecha_creacion, descripcion, autor)VALUES ('N3', 'Nuevas instalaciones deportivas', '10-05-2023', 'La universidad ha inaugurado nuevas instalaciones deportivas para beneficio de los estudiantes.', 'Universidad XYZ');

--Comentario_Noticia

INSERT INTO Comentario_Noticia (nid, tid, noticia, detalle, fecha)VALUES (10001, 'CC', 'N1', 'Excelente iniciativa para apoyar a los estudiantes más talentosos.', '02-05-2023');

INSERT INTO Comentario_Noticia (nid, tid, noticia, detalle, fecha)VALUES (10002, 'CC', 'N1', '¿Cuáles son los requisitos para aplicar a estas becas?', '03-05-2023');

INSERT INTO Comentario_Noticia (nid, tid, noticia, detalle, fecha)VALUES (10003, 'CE', 'N2', 'Estoy emocionado por asistir a esta conferencia. La inteligencia artificial es un tema fascinante.', '06-05-2023');

INSERT INTO Comentario_Noticia (nid, tid, noticia, detalle, fecha)VALUES (10004, 'NIP', 'N2', '¿Habrá algún costo de inscripción para la conferencia?', '07-05-2023');

INSERT INTO Comentario_Noticia (nid, tid, noticia, detalle, fecha)VALUES (10005, 'PAP', 'N3', '¡Las nuevas instalaciones son increíbles! Sin duda, esto mejorará la experiencia deportiva de los estudiantes.', '11-05-2023');

INSERT INTO Comentario_Noticia (nid, tid, noticia, detalle, fecha)VALUES (10006, 'CC', 'N3', '¿Los estudiantes podrán acceder a estas instalaciones fuera de los horarios de clase?', '12-05-2023');
