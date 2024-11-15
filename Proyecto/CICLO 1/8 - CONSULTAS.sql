/*CONSULTAS*/
--Consultar las noticias m�s recientes.
SELECT Noticia.id_noticia, Noticia.titulo, Noticia.descripcion, Noticia.fecha_creacion FROM Noticia
WHERE Noticia.fecha_creacion <= SYSDATE
ORDER BY Noticia.fecha_creacion DESC;

--Consultar los comentarios para las actividades cuyo tipo de evento sea  'educativo'

SELECT Actividad.evento, Actividad.fecha_fin, Actividad.estado, Comentario_Actividad.detalle
FROM Actividad JOIN Comentario_Actividad ON (actividad.evento = Comentario_Actividad.actividad)
                   JOIN Evento ON (Comentario_Actividad.actividad = Evento.id_evento)
WHERE Evento.tipo = '3'
ORDER BY Actividad.fecha_fin DESC;
                    

--Consultar las suscripciones de las activades cuyo estado sea abierto

SELECT Suscripcion.fecha_solicitud, Suscripcion.vigencia, Suscripcion.estado, Actividad.evento,
Evento.nombre, Evento.descripcion
FROM Suscripcion JOIN Actividad ON (Suscripcion.actividad = Actividad.evento) 
JOIN Evento ON (Evento.id_evento = Actividad = evento)
WHERE Actividad.estado = 'Abierta'
ORDER BY Suscripcion.vigencia ASC;

--Conocer las actividades mas proximos a la fecha

SELECT Evento.nombre, Evento.descripcion, Evento.tipo, Actividad.fecha_fin
FROM Evento JOIN Actividad ON(Evento.id_evento = Actividad.evento)
WHERE fecha_fin > SYSDATE;


--Consultar los asistentes de las actividades que ya finalizaron

SELECT Actividad.asistentes, Actividad.fecha_inicio, Actividad.fecha_fin, Evento.nombre, Evento.descripcion
FROM Actividad JOIN Evento ON (Evento.id_evento = Actividad.evento)
WHERE Actividad.fecha_fin < SYSDATE;

--Consultar los profesores con mayor cantidad de cursos y su experiencia.
SELECT Persona.nombre, Profesor.anos_experiencia, COUNT(Curso_Profesor.curso) AS Cursos
FROM Persona JOIN Profesor ON Persona.nid = Profesor.nid
             JOIN Curso_Profesor ON Profesor.nid = Curso_Profesor.nid
GROUP BY Persona.nombre, Profesor.anos_experiencia
HAVING COUNT(Curso_Profesor.curso) >= 1
ORDER BY Cursos DESC;

--Consultar el id_del evento cuyo tipo sea educativo u otra

SELECT id_evento, tipo FROM EVENTO WHERE tipo = '3' or tipo = '4';