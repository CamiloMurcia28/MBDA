/*Consultas*/

-- Consultar las encuestas cuyo estado sea cerrado

SELECT id_encuesta, titulo, descripcion, estado 
FROM Encuestas
WHERE estado IN ('Cerrada', 'Pendiente', 'En revision');

-- Consultar las preguntas con mas reacciones de una encuesta

SELECT Preguntas.reacciones, Encuestas.id_encuesta, Encuestas.titulo, Encuestas.descripcion, Preguntas.estado 
FROM Encuestas
JOIN Preguntas ON Encuestas.id_encuesta = Preguntas.encuesta
ORDER BY Preguntas.reacciones DESC;

-- Consultar las solicitudes de los servicios de bienestar cuyo estado sea abierto

SELECT Solicitudes.id_solicitud, Solicitudes.estado, Servicios_Binestar.nombre
FROM Solicitudes JOIN Servicios_Binestar
ON(Solicitudes.id_servicio = Servicios_Binestar.id_servicio)
WHERE Solicitudes.estado = 'Abierta';

-- Consultar cuales son los representantes que mas clubes tienen a cargo

SELECT codigo_representante, COUNT(DISTINCT id_club) AS total_clubes
FROM Clubes_Grupos
GROUP BY codigo_representante
ORDER BY total_clubes DESC;