--IndicesVistasOK--

--Se prueba la vista NoticiasMasRecientes

SELECT titulo FROM NoticiasMasRecientes;

--Se prueba la vista ActividadesEducativas y los indices relacionados a ACTIVIDAD

SELECT evento, evento FROM ActividadesEducativas;

--Se prueba la vista SuscripcionesAbiertas y los indices relacionados a SUSCRIPCION

SELECT evento, estado FROM SuscripcionesAbiertas;

--Se prueba la vista ActividadesFinalizadas y los indices relacionados a ACTVIDAD  y EVENTO

SELECT nombre, asistentes, fecha_fin FROM ActividadesFinalizadas;

--Se prueba la vista ProfesoresMasExperimentados 

SELECT nombre, anos_experiencia FROM ProfesoresMasExperimentados;