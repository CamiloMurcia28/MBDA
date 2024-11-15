/*POBLAR*/
--Persona

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10007, 'CC', 'Juan Ramirez', 'juan@example.com', 'COD7');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10007, 'CC', '222222222');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10010, 'PAP', 'Laura Fernández', 'laura@example.com', 'COD10');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10010, 'PAP', '777777777');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10011, 'TI', 'Ana García', 'ana@example.com', 'COD11');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10011, 'TI', '888888888');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10012, 'CC', 'Pedro López', 'pedro@example.com', 'COD12');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10012, 'CC', '999999999');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10001, 'CC', 'Juan Perez', 'juan1@example.com', 'COD1');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10001, 'CC', '123456789');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10002, 'CC', 'Maria Rodriguez', 'maria2@example.com', 'COD2');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10002, 'CC', '987654321');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10003, 'CE', 'Pedro Gomez', 'pedro3@example.com', 'COD3');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10003, 'CE', '555555555');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10004, 'NIP', 'Laura Sanchez', 'laura4@example.com', 'COD4');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10004, 'NIP', '111111111');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10004, 'NIP', '999999999');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10005, 'PAP', 'Carlos Ramirez', 'carlos5@example.com', 'COD5');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10005, 'PAP', '777777777');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10005, 'PAP', '666666666');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10008, 'CE', 'Luisa González', 'luisa5@example.com', 'COD8');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10008, 'CE', '333333333');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10015, 'PAP', 'Sofía Fernández', 'sofia6@example.com', 'COD15');
INSERT INTO Telefonos_Persona (nid, tid, telefono)VALUES (10015, 'PAP', '777788889999');

INSERT INTO Persona (nid, tid, nombre, correo, codigo)VALUES (10016, 'TI', 'Luis Torres', 'luis7@example.com', 'COD16');
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

INSERT INTO Persona (nid, tid, nombre, correo, codigo) VALUES (20021, 'CE', 'Carlos López', 'carlosL@example.com', 'COD21');
INSERT INTO Directivo (nid, tid, area) VALUES (20021, 'CE', 'Administrativa');
INSERT INTO Telefonos_Persona (nid, tid, telefono) VALUES (20021, 'CE', '777788882222');

INSERT INTO Persona (nid, tid, nombre, correo, codigo) VALUES (30042, 'CC', 'Ana Torres', 'anaT@example.com', 'COD42');
INSERT INTO Directivo (nid, tid, area) VALUES (30042, 'CC', 'Deportes');
INSERT INTO Telefonos_Persona (nid, tid, telefono) VALUES (30042, 'CC', '555566667777');

INSERT INTO Persona (nid, tid, nombre, correo, codigo) VALUES (40059, 'NIP', 'Luis García', 'luisG@example.com', 'COD59');
INSERT INTO Directivo (nid, tid, area) VALUES (40059, 'NIP', 'Administrativa');
INSERT INTO Telefonos_Persona (nid, tid, telefono) VALUES (40059, 'NIP', '999922228888');

--Evento--

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid)
VALUES ('EV1', 'Partido de FUtbol', TO_DATE('21-05-2023', 'DD-MM-YYYY'), 'Partido amistoso de futbol', '1', 10009, 'NIP');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid)
VALUES ('EV2', 'Concierto de Jazz', TO_DATE('22-05-2023', 'DD-MM-YYYY'), 'Concierto de mÃºsica jazz en vivo', '2', 10006, 'CC');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid)
VALUES ('EV3', 'Seminario de Programacion', TO_DATE('23-05-2023', 'DD-MM-YYYY'), 'Seminario sobre programacion avanzada', '3', 10017, 'CC');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid)
VALUES ('EV4', 'Feria de Artesans', TO_DATE('24-05-2023', 'DD-MM-YYYY'), 'Feria de artesanias y productos locales', '4', 10018, 'NIP');

INSERT INTO Evento (id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid)
VALUES ('EV5', 'Torneo de Tenis', TO_DATE('25-05-2023', 'DD-MM-YYYY'), 'Torneo de tenis amateur', '1', 30042, 'CC');

--Servicios Bienestar

INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES(13213, 'Apoyo financiero', 'Ejemplo de descripcion', 'Edificio A, segundo piso', 'Lunes a viernes de 7:00 AM 4:00 PM', 10010, 'PAP');
--
INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES(23213, 'Apoyo financiero', 'Ejemplo de descripci�n', 'Edificio B, segundo piso', 'Lunes a viernes de 9:00 AM 4:00 PM', 10011, 'TI');

INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES(33213, 'Apoyo financiero', 'Ejemplo de descripcion', 'Edificio C, segundo piso', 'Lunes a viernes de 7:00 AM 2:00 PM', 10002, 'CC');

INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES(43213, 'Apoyo financiero', 'Ejemplo de descripcion', 'Edificio A, primer piso', 'Lunes a viernes de 8:00 AM 2:00 PM', 10004, 'NIP');

INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES (13880, 'Servicio de Lectura', 'Descripci�n del servicio de lectura', 'Biblioteca Principal', 'Lunes a viernes de 10:00 AM a 6:00 PM', 10001, 'CC');

INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES (23880, 'Servicio de Ajedrez', 'Descripci�n del servicio de ajedrez', 'Sal�n de Juegos', 'Martes y jueves de 2:00 PM a 5:00 PM', 10003, 'CE');

--Clubes o Grupos

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union,id_servicio, nombre)
VALUES('Le280523', '12345', 'COD7', SYSDATE, 13213, 'Lectura critica FC');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union,id_servicio, nombre)
VALUES('Ap280423', '22345', 'COD7', '28-04-2023', 23213, 'Aprendiendo a criticar');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union,id_servicio, nombre)
VALUES('Le100123', '32345', 'COD7', '10-01-2023', 33213, 'EstudiososFC');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union,id_servicio, nombre)
VALUES('Mo280523', '42345', 'COD7', SYSDATE, 43213, 'Monitorias');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
VALUES ('M01', 'C001', 'COD7', '10-01-2023', 23213, 'Club de Lectura1');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
VALUES ('M02', 'C0012', 'COD10', '10-01-2023', 23213, 'Club de Lectura2');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
VALUES ('M03', 'C0013', 'COD7', '11-01-2023', 23213, 'Club de Lectura3');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
VALUES ('M04', 'C0042', 'COD7', '13-01-2023', 13880, 'Club de Ajedrez1');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
VALUES ('M05', 'C0021', 'COD10', '12-01-2023', 13880, 'Club de Ajedrez2');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
VALUES ('M06', 'C00222', 'COD7', '12-01-2023', 13880, 'Club de Ajedrez3');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
VALUES ('M07', 'C0102', 'COD10', '11-01-2023', 13213, 'Club de Ajedrez4');

INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
VALUES ('M08', 'C003', 'COD11', '10-12-2023', 13213, 'Grupo de Yoga');


--Solicitudes

INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(98765, '21-04-2023', 'Ejemplo de detalle', 'Abierta', 13213);

INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(88765, '21-05-2023', 'Ejemplo de detalle2', 'Abierta', 23213);

INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(78765, '21-03-2023', 'Ejemplo de detalle3', 'Cerrada', 33213);

INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(68765, '21-02-2023', 'Ejemplo de detalle4', 'Cerrada', 43213);


--Encuestas

INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(12731212, 'Titulo para la encuesta 1', 'Ejemplo para la descripcion de la encuesta', 'Deportivo', 'Activa', '21-02-2022','EV1');

INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(24731212, 'Titulo para la encuesta 2', 'Ejemplo para la descripcion de la encuesta', 'Cultural', 'Pendiente', '21-01-2022','EV2');

INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(32731212, 'Titulo para la encuesta 3', 'Ejemplo para la descripcion de la encuesta', 'Cultural', 'En revision', '21-12-2022','EV3');

INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(98731212, 'Titulo para la encuesta 4', 'Ejemplo para la descripcion de la encuesta', 'Otro', 'Archivada', '21-11-2022','EV4');

--Preguntas

INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta, detalle) VALUES('21-02-2023', 'Contestada', 20, 12731212, 'Ejemplo pregunta 1');

INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta, detalle) VALUES('15-01-2023', 'Sin Contestar', 30, 32731212, 'Ejemplo pregunta 2');

INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta, detalle) VALUES('21-10-2023', 'Contestada', 110, 24731212, 'Ejemplo pregunta 3');

INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta, detalle) VALUES('11-08-2023', 'Sin Contestar', 2, 98731212, 'Ejemplo pregunta 4');

