--CALTER TABLE Persona ADD CONSTRAINT CD_PERSONAS_TID CHECK(tid IN('TI','CC','CE','NIP','PAP'));

ALTER TABLE Persona ADD CONSTRAINT CD_PERSONAS_TID CHECK(tid IN('TI','CC','CE','NIP','PAP'));

ALTER TABLE Estudiante ADD CONSTRAINT CD_ESTUDIANTE_CICLO CHECK(ciclo_estudiantil IN ('Pregrado', 'Posgrado', 'Preuniversitario'));

ALTER TABLE Estudiante ADD CONSTRAINT CD_ESTUDIANTE_TAREAEDUC CHECK(area_educativa IN('Sistemas', 'Mecanica', 'Electrica', 'Electronica', 'Civil', 'Ambiental', 'Industrial', 'Biomedica', 'Economia', 'Administracion', 'Matematicas', 'Estadistica', 'No disponible'));

ALTER TABLE Evento ADD CONSTRAINT CD_EVENTO_TEVENTO CHECK(tipo in ('1', '2', '3', '4'));

ALTER TABLE Curso ADD CONSTRAINT CD_CURSO_TCURSO CHECK(tipo in ('1', '2', '3', '4'));

ALTER TABLE Directivo ADD CONSTRAINT CD_DIRECTICO_TAREA CHECK(area in ('Administrativa', 'Academica', 'Deportes'));

ALTER TABLE Personal_Ad ADD CONSTRAINT CD_PERSONALAD_TCARGO CHECK(cargo in ('Seguridad', 'Mantenimiento', 'Otro'));

ALTER TABLE Actividad ADD CONSTRAINT CD_ACTIVIDAD_TESTADO CHECK(estado IN('Abierta', 'Cerrada'));

ALTER TABLE Suscripcion ADD CONSTRAINT CD_SUSCRIPCION_TSUSESTADO CHECK(estado IN('Activa', 'Por renovar', 'Cancelada'));

