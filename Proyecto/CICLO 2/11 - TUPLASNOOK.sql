--TUPLAS NO OK--

--Restricciones en PERSONA--
--No deja realizar la insercion por la restriccion de tuplas AT_PERSONA_TCORREO

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('10004323445', 'PAP', 'Roberta Pez', 'rober@tica09@hotmail.com','12312422534');

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('9023455345', 'CC', 'Roberta Lopez', '@0@hotmail.com', '34875845');

--Deja realizar la insercion por la restriccion de tuplas AT_EVENTO_TCODIGOEVENTO, sin embargo esta si la verifica cuando se implementa el trigger.

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo, nid, tid) VALUES ('c212', 'Feria de Tecnologia',SYSDATE,'Exposicion de tecnologia innovadora', '3', '1032345235', 'CC');
