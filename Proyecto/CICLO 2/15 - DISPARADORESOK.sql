/*Disparadores OK*/

--TR_MOD_PERSONA
--Solo se puede modificar el correo en la tabla Personas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (343434344, 'CE', 'Howards Dumbell', 'hodumbe@gmail.com','ejemplo234');

UPDATE Persona 
SET correo = 'ejemploOOOOOOOOO1@mail.escuelaing.edu.co'
WHERE nid = 343434344 AND tid = 'CE';
SELECT * FROM Persona WHERE correo = 'ejemploOOOOOOOOO1@mail.escuelaing.edu.co';

--TR_AUTO_EVENTOS
--Automatizacion de datos de eventos--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('1', 'Torneo futbol', '04-MAY-2023', 'Ejemplo Automatizacion Evento','3', 343434344, 'CE');
SELECT id_evento, fecha_creacion FROM Evento WHERE descripcion = 'Ejemplo Automatizacion Evento';

--TR_AUTO_EST_SOLICITUD
INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
VALUES(81230, 'Apoyo financiero', 'Ejemplo de descripción', 'Edificio B, segundo piso', 'Lunes a viernes de 9:00 AM 4:00 PM', 343434344, 'CE');
--
INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(73261, NULL, 'Ejemplo de detalle', 'Cerrada', 81230);

SELECT * FROM Solicitudes WHERE id_solicitud = 73261;

--TR_AUTO_EST_ENCUESTA
--
INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(92731212, 'Titulo para la encuesta 1', 'Ejemplo para la descripcion de la encuesta', 'Deportivo', null, '21-FEB-2022','o20230529Eje');

SELECT * FROM Encuestas WHERE id_encuesta= 92731212;

--TR_MODIFICAR_ESTADO_PREGUNTAS
--Solo se puede cambiar el estado y las reacciones de una pregunta, si su fecha es null, se agrega con un sysdate
INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta, detalle) VALUES('21-MAY-2023', 'Contestada', 20, 92731212,'Ejemplo trigger 1');
UPDATE Preguntas
SET reacciones = 50, estado = 'Sin Contestar', fecha_inicio = SYSDATE
WHERE encuesta = 92731212;
SELECT * FROM Preguntas WHERE encuesta = 92731212;

--TR_VIGENCIA_SOLICITUD
--Solo se puede eliminar una solicitud si su estado es Cerrada.
INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(198765, '21-04-2023', 'Ejemplo de detalle', 'Abierta', 13213);
DELETE Solicitudes WHERE id_solicitud = 198765;

INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(178765, '21-04-2023', 'Ejemplo de detalle3', 'Cerrada', 33213);
UPDATE Solicitudes
SET estado = 'Cerrada'
WHERE id_solicitud = 178765;
DELETE Solicitudes WHERE id_solicitud = 178765;
SELECT * FROM Solicitudes WHERE id_solicitud = 178765;

--TR_ELIMINAR_ENCUESTAS
--Solo se puede eliminar una encuesta si su fecha de creacion fue hace mas de 1 año
INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(12731212, 'Titulo para la encuesta 1', 'Ejemplo para la descripcion de la encuesta', 'Deportivo', 'Activa', '21-FEB-2022','EV2');
DELETE Encuestas WHERE id_encuesta = 12731212;
SELECT * FROM Encuestas WHERE id_encuesta = 12731212;
