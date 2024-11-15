--TUPLAS--

ALTER TABLE Evento ADD CONSTRAINT AT_EVENTO_TCODIGOEVENTO CHECK(REGEXP_LIKE(id_evento, 'substr(nombre,2,1)||cast(fecha_creacion as string)||substr(descripcion,1,3)'));

ALTER TABLE Estudiante ADD CONSTRAINT AT_ESTUDIANTE_TSEMESTRE CHECK(semestre >= 1 AND semestre <= 10);

ALTER TABLE Persona ADD CONSTRAINT AT_PERSONA_TCORREO CHECK(REGEXP_LIKE(correo, '^[^@]+@[^@]+\.[^@\.]+$'));

ALTER TABLE Actividad ADD CONSTRAINT AT_ACTIVIDAD_FECHA CHECK (fecha_inicio <= fecha_fin);

ALTER TABLE Suscripcion ADD CONSTRAINT AT_SUSCRIPCION_VIGENCIA CHECK(vigencia >= fecha_solicitud);

ALTER TABLE Noticia ADD CONSTRAINT AT_NOTICIA_IDNOTICA CHECK(REGEXP_LIKE(id_noticia, 'substr(titulo,1,1)||cast(fecha_creacion as string)||substr(descripcion,1,3)'));
