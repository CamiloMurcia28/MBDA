/*Disparadores NO OK*/

--Solo se puede modificar el correo en la tabla Personas--
UPDATE Persona 
SET  nid = '3434343', tid = 'TI', nombre = 'asdf', codigo = '1'
WHERE nid = '343434344' AND tid = 'CE';
SELECT * FROM Persona WHERE correo = 'ejemploOOOOOOOOO2@mail.escuelaing.edu.co';
--El estado de una actividad es cerrado si su fecha de fin ya "paso"

UPDATE Actividad 
SET estado = 'Cerrada'   
WHERE evento = 'EV5';

-- Solo se puede modificar participantes si su fecha de fin de la actividad no ha pasado--
UPDATE Actividad 
SET asistentes = 67
WHERE evento = 'o20220402Eje';

--Restricciones de Eliminacion

--Solo se puede eliminar una suscripcion si su vigencia ya termino o si esta cancelada

DELETE FROM Suscripcion WHERE estado = 'Activa';
DELETE FROM Suscripcion WHERE vigencia > SYSDATE;

--Restricciones de insert 

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('192837465', 'TI', 'Jeisson Casallas', 'Casallas2341@gmail.com','taque1234');
INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('192837465', 'TI', 'o20220402Eje', 1, '16-05-2023', '12-06-2023', 'Activa');

-- Si el ciclo educativo es posgrado, el semestre estara limitado de 1 hasta 7 

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('192837465', 'TI', 'Posgrado', 'Civil', 10);


