--TUPLAS NO OK--

--Restricciones en PERSONA--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('10004323445', 'PAP', 'Roberta Pez', 'rober@tica09@hotmail.com','12312422534');

--No deja realizar la insercion por la restriccion de tuplas AT_PERSONA_TCORREO

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('9023455345', 'CC', 'Roberta Lopez', 'rober90@hotmail.com', '34875845');
INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('9023455345', 'CC', 'Pregrado', 'Economia', 20);

--No deja realizar la insercion por la restriccion de tuplas AT_ESTUDIANTE_TSEMESTRE

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('e20', 'Feria de Tecnología', '01-05-2023', 'Exposición de tecnología innovadora', '3');

--Deja realizar la insercion por la restriccion de tuplas AT_EVENTO_TCODIGOEVENTO, sin embargo esta si la verifica cuando se implementa el trigger.

INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('o20230416123456', '20-07-2023', '22-05-2023', 0, 'nOSE');

--No deja realizar la insercion por la restriccion de tuplas AT_ACTIVIDAD_FECHA

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1232345454', 'CC', 'e20', 1, '16-07-2023', '01-06-2023', 'Activa');

--No deja realizar la insercion por la restriccion de tuplas AT_ACTIVIDAD_FECHA

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('9', 'Titulo ejemplo noticia', '25-02-2023', 'Descricion ejemplo noticia', 'Julian Rodriguez');

--Deja realizar la insercion por la restriccion de tuplas AT_NOTICIA_IDNOTICA, sin embargo esta si la verifica cuando se implementa el trigger.
