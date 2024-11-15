--TUPLAS--

ALTER TABLE Evento ADD CONSTRAINT AT_EVENTO_TCODIGOEVENTO CHECK(REGEXP_LIKE(id_evento, 'substr(nombre,2,1)||cast(fecha_creacion as string)||substr(descripcion,1,3)'));
ALTER TABLE Evento DROP CONSTRAINT AT_EVENTO_TCODIGOEVENTO;
ALTER TABLE Persona ADD CONSTRAINT AT_PERSONA_TCORREO CHECK(REGEXP_LIKE(correo, '^[^@]+@[^@]+\.[^@\.]+$'));




