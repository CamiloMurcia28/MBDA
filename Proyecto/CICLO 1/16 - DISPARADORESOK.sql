/*Disparadores OK*/
--Restricciones de Modificaciones
--Solo se puede modificar el correo en la tabla Personas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('343434344', 'CE', 'Howards Dumbell', 'hodumbe@gmail.com','ejemplo234');

UPDATE Persona 
SET correo = 'ejemploOOOOOOOOO1@mail.escuelaing.edu.co'
WHERE nid = '343434344' AND tid = 'CE';
SELECT * FROM Persona WHERE correo = 'ejemploOOOOOOOOO1@mail.escuelaing.edu.co';

--El estado de una actividad es cerrado si su fecha de fin ya "paso"--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('1', 'Ejemplo1', '03-04-2023','Metamorfosis', '3');
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('j20230512Met', '24-04-2023', '01-05-2023', 0, 'Abierta');

UPDATE Actividad 
SET estado = ('Cerrado')    
WHERE evento = 'j20230512Met';

SELECT estado FROM Actividad WHERE evento = 'j20230512Met';

-- Solo se puede modificar participantes si su fecha de fin de la actividad no ha pasado--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('J20230512Eje', 'EJEMPLO', '03-04-2023','Ejemplo', '3');
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('J20230512Eje', '24-04-2023', '01-07-2023', 0, 'Abierta');

UPDATE Actividad 
SET asistentes = 67
WHERE evento = 'J20230512Eje';

SELECT ASISTENTES FROM Actividad WHERE Evento = 'J20230512Eje';

--Restricciones de Eliminacion
--Solo se puede eliminar una suscripcion si su vigencia ya termino o si esta cancelada--

DELETE Suscripcion WHERE idsolicitud = 1 AND actividad = '020220115Eve'; 
SELECT * FROM suscripcion WHERE idsolicitud = 1 AND actividad = '020220115Eve'; 


-- Automatizacion de datos minimos 

--Actividad 
--Si se inserta una actividad a la cual su fecha_fin ya pasÃ³, su estado pasa a ser 'Cerrada'--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('u20230512Eje', 'AutoActividad', '03-04-2023','Ejemplo', '3');
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('u20230521Eje', '24-04-2023', '01-05-2023', 0, 'Abierta');

SELECT estado FROM Actividad WHERE evento = 'u20230521Eje';

--Automatizacion de datos de eventos--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion,tipo) VALUES ('1', 'Torneo futbol', '04-05-2023', 'Ejemplo Automatizacion Evento','3');

SELECT id_evento, fecha_creacion FROM Evento WHERE descripcion = 'Ejemplo Automatizacion Evento';

--Automatizacion de datos de Estudiante--

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('123456789', 'CE', 'Andres Gutierrez', 'car7@gmail.com','ejemplito123');
INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa,semestre) VALUES ('123456789', 'CE', 'Preuniversitario', 'Mecanica', 4);
SELECT semestre, area_educativa FROM Estudiante WHERE NID = '123456789';

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa,semestre) VALUES ('343434344', 'CE', 'Posgrado', 'Mecanica', 4);
SELECT * FROM Estudiante WHERE NID = '343434344';

--Automatizacion de datos de suscripcion--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('1', 'SUSCRIPCION', '03-04-2023', 'No se ala', '3');
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('U20230521No ', '24-04-2023', '01-06-2023', 0, 'Abierta');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('343434344', 'CE', 'U20230521No ', 30, '05-01-2022', '05-02-2022', 'Cancelada');
SELECT estado, fecha_solicitud, idSolicitud FROM SUSCRIPCION WHERE Actividad = 'U20230521No ';

--Automatizacion de datos de noticia--
INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('1', 'Noticia ejemplo', '01-01-2002', 'Ejemplo de descripcion NOTITRIGGER','Luiem Dorroothel');
SELECT id_noticia, fecha_creacion FROM Noticia WHERE descripcion = 'Ejemplo de descripcion NOTITRIGGER';
