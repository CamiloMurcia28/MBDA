/*DisparadoresNoOK*/

--TR_MOD_PERSONA
--Solo se puede modificar el correo en la tabla Personas--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES (343434344, 'CE', 'Howards Dumbell', 'hodumbe@gmail.com','ejemplo234');

UPDATE Persona 
SET nombre = 'Pepito perez'
WHERE nid = 343434344 AND tid = 'CE';
SELECT * FROM Persona WHERE correo = 'ejemploOOOOOOOOO1@mail.escuelaing.edu.co';

--TR_MODIFICAR_ESTADO_PREGUNTAS
--Solo se puede cambiar el estado y las reacciones de una pregunta, si su fecha es null, se agrega con un sysdate
INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta) VALUES('21-MAY-2023', 'Contestada', 20, 92731212);
UPDATE Preguntas
SET fecha_inicio = '21-MAY-2023'
WHERE encuesta = 92731212;
SELECT * FROM Preguntas WHERE encuesta = 92731212;

--TR_VIGENCIA_SOLICITUD
--Solo se puede eliminar una solicitud si su estado es Cerrada.
INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
VALUES(198765, '21-APR-2023', 'Ejemplo de detalle', 'Abierta', 13213);
DELETE Solicitudes WHERE id_solicitud = 198765;

--TR_ELIMINAR_ENCUESTAS
--Solo se puede eliminar una encuesta si su fecha de creacion fue hace mas de 1 año
INSERT INTO Encuestas(id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
VALUES(31212, 'Titulo para la encuesta 1', 'Ejemplo para la descripcion de la encuesta', 'Deportivo', 'Activa', '21-FEB-2023','EV1');
DELETE Encuestas WHERE id_encuesta = 31212;

