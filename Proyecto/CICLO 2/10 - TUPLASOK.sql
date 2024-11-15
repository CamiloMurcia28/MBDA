/* TUPLASOK */

--Directivos--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1013453458', 'NIP', 'Ana Martinez', 'anamartinez@gmail.com', 'jkl101');
INSERT INTO Directivo (nid, tid, area) VALUES ('1013453458', 'NIP', 'Academica');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1013453458', 'NIP', '3108973645');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1013453458', 'NIP', '3118503043');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1023453458', 'PAP', 'Luisa Perez', 'luisaperez@gmail.com', 'mno102');
INSERT INTO Directivo (nid, tid, area) VALUES ('1023453458', 'PAP', 'Academica');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1023453458', 'PAP', '3215748367');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1023453458', 'PAP', '3235740367');

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1032345235', 'CC', 'Santiago Gomez', 'santiagogomez@outlook.com', 'pqr103');
INSERT INTO Directivo (nid, tid, area) VALUES ('1032345235', 'CC', 'Administrativa');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1032345235', 'CC', '3105748367');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1032345235', 'CC', '3105740367');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('33421442', 'CE', 'Carlos Jimenez', 'carloscortes7@gmail.com','8999932401');
INSERT INTO Directivo (nid, tid, area) VALUES ('33421442', 'CE', 'Administrativa');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('33421442', 'CE', '3107865763');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('33421442', 'CE', '3107865723');
INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('33421442', 'CE', '3107865713');

--Se ven afectados por la restriccion de atributo AT_PERSONA_TCORREO

--Eventos--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('o20220402Eje', 'Torneo Basketball', '02-04-2022','Ejemplo de descripcion', '1','1013453458', 'NIP');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('o20230416Con', 'Conferencia de inteligencia artificial', '16-04-2023', 'Conferencia para discutir los avances en inteligencia artificial.', '3', '1023453458', 'PAP');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('e20230504Exp', 'Feria de Tecnología', '04-05-2023', 'Exposición de tecnología innovadora', '3', '1032345235', 'CC');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('020220115Eve', 'Conferencia de Negocios', '15-01-2022', 'Evento para emprendedores y empresarios', '3', '1032345235', 'CC');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('e20230601Con', 'Festival de Música', '01-07-2023', 'Concierto de artistas locales e internacionales', '2', '1032345235', 'CC');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('o20230404Eje', 'Torneo Volleyball', '04-04-2023','Ejemplo de descripcion', '1', '1032345235', 'CC');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('o03042023Com', 'Torneo matematica', '03-03-2023','Competicion de resolucion de problemas matematicos hasta nivel de calculo integral', '3', '1032345235', 'CC');

--Se ven afectados por la restriccion de atributo AT_EVENTO_TCODIGOEVENTO.
