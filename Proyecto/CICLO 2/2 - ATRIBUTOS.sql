--CALTER TABLE Persona ADD CONSTRAINT CD_PERSONAS_TID CHECK(tid IN('TI','CC','CE','NIP','PAP'));

ALTER TABLE Persona ADD CONSTRAINT CD_PERSONAS_TID CHECK(tid IN('TI','CC','CE','NIP','PAP'));

ALTER TABLE Evento ADD CONSTRAINT CD_EVENTO_TEVENTO CHECK(tipo in ('1', '2', '3', '4'));

ALTER TABLE Directivo ADD CONSTRAINT CD_DIRECTICO_TAREA CHECK(area in ('Administrativa', 'Academica', 'Deportes'));

--ALTER TABLE Servicios_Binestar ADD CONSTRAINT CD_SERVICIOS_HORARIO CHECK(horario LIKE 'Lunes a viernes de%' AND SUBSTR(horario, 21, 7) >= '7:00 AM' AND SUBSTR(horario, 21, 7) <= '4:00 PM');
--alter table Servicios_Binestar DROP CONSTRAINT CD_SERVICIOS_HORARIO;
ALTER TABLE Encuestas ADD CONSTRAINT CD_ENCUESTAS_CATEGORIA CHECK(categoria IN('Deportivo', 'Cultural', 'Educativo', 'Otro'));

ALTER TABLE Encuestas ADD CONSTRAINT CD_ENCUESTA_ESTADO CHECK(estado IN('Activa', 'Cerrada', 'Pendiente', 'En revision', 'Archivada'));

ALTER TABLE Solicitudes ADD CONSTRAINT CD_SOLICITUDES_ESTADO CHECK(estado IN ('Abierta', 'Cerrada'));

ALTER TABLE Preguntas ADD CONSTRAINT CD_PREGUNTAS_ESTADO CHECK(estado IN('Contestada','Sin Contestar','Sin Contestar'));
--alter table Preguntas DROP CONSTRAINT CD_PREGUNTAS_ESTADO;
