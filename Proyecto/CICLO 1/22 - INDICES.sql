/*INDICES*/

CREATE INDEX index_actividad_fecha_inicio
ON Actividad(fecha_inicio);

CREATE INDEX index_actividad_fecha_fin
ON Actividad(fecha_fin);

CREATE INDEX index_actividad_estado
ON Actividad(estado);

CREATE INDEX index_suscripcion_estadovigencia
ON Suscripcion(estado, vigencia);

CREATE INDEX index_evento_tipo
ON Evento(tipo);

CREATE INDEX index_nombre_desc
ON Evento(nombre, descripcion);

