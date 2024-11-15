/*INDICES*/

CREATE INDEX index_id_encuesta_estado
ON Encuestas(id_encuesta,estado);

CREATE INDEX index_preguntas_estado
ON Preguntas(estado);

CREATE INDEX index_id_solicitud_fecha
ON Solicitudes(id_solicitud, fecha_solicitud);

CREATE INDEX index_clubes_rep
ON Clubes_Grupos(codigo_representante);

