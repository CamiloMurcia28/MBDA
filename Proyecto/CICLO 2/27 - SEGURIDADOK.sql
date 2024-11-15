/*SEGURIDADOK*/

SET SERVEROUTPUT ON

--SE PROBARAN 5 CASOS DE CADA ACTOR SE COMPROBARA EL CRUD--

--DIRECTIVO--

--CREATE
EXECUTE PA_DIRECTIVO_2.ad_servicios_bienestar(002345, 'Seguridad PAQUETE', 'descripcion PAQUETE', 'Edificio A, segundo piso', 'Lunes a viernes de 7:00 AM 4:00 PM', 10010, 'PAP');

EXECUTE PA_DIRECTIVO_2.co_servicios_bienestar(002345);

--READ
EXECUTE PA_DIRECTIVO_2.co_servicios_bienestar(002345);

EXECUTE PA_DIRECTIVO_2.co_4;

--UPDATE
EXECUTE PA_DIRECTIVO_2.upd_servicios_bienestar(002345, 'Seguridad UPDATE', 'PAQUETE SEGURIDAD', 'Edificio A, segundo piso', 'Lunes a viernes de 8:00 AM 4:00 PM', 10010, 'PAP');

EXECUTE PA_DIRECTIVO_2.co_servicios_bienestar(002345);

--DELETE
EXECUTE PA_DIRECTIVO_2.del_servicios_bienestar(002345);

EXECUTE PA_DIRECTIVO_2.co_servicios_bienestar(002345);

--ESTUDIANTE--

--CREATE
EXECUTE PA_ESTUDIANTE_2.ad_pregunta(SYSDATE, 'Contestada', 0, 809001, 'Pregunta SEGURIDAD');

EXECUTE PA_ESTUDIANTE_2.co_pregunta(809001);

--READ
EXECUTE PA_ESTUDIANTE_2.co_3;

EXECUTE PA_ESTUDIANTE_2.co_pregunta(809001);

--UPDATE
EXECUTE PA_ESTUDIANTE_2.upd_pregunta('Contestada', 1, 809001, 'Pregunta SEGURIDAD');

EXECUTE PA_ESTUDIANTE_2.co_pregunta(809001);

--DELETE
EXECUTE PA_ESTUDIANTE_2.del_pregunta(809001, 'Pregunta SEGURIDAD');

EXECUTE PA_ESTUDIANTE_2.co_pregunta(809001);

--PROFESOR--

--CREATE
EXECUTE PA_PROFESOR_2.ad_encuesta(809002, 'Titulo para la encuesta SEGURIDAD', 'Ejemplo para la descripcion de la encuesta SEGURIDAD', 'Deportivo', 'Activa', SYSDATE,'EV2');

EXECUTE PA_PROFESOR_2.co_encuesta(809002);

--READ
EXECUTE PA_PROFESOR_2.co_3;

EXECUTE PA_PROFESOR_2.co_encuesta(809002);

--UPDATE
EXECUTE PA_PROFESOR_2.upd_encuesta(809002, 'SEGURIDAD update', 'Ejemplo SEGURIDAD', 'Deportivo', 'Activa', SYSDATE,'EV2');

EXECUTE PA_PROFESOR_2.co_encuesta(809002); 

--DELETE
EXECUTE PA_PROFESOR_2.del_encuesta(809002);

EXECUTE PA_PROFESOR_2.co_encuesta(809002); 

--PERSONAL_AD--

--CREATE
EXECUTE PA_PERSONAL_AD_2.ad_encuesta(809003, 'Titulo para la encuesta SEGURIDAD personal', 'Ejemplo para la descripcion de la encuesta SEGURIDAD personal', 'Deportivo', 'Activa', SYSDATE,'EV2');

EXECUTE PA_PERSONAL_AD_2.co_encuesta(809003);

--READ
EXECUTE PA_PERSONAL_AD_2.co_3;

EXECUTE PA_PERSONAL_AD_2.co_encuesta(809003);

--UPDATE
EXECUTE PA_PERSONAL_AD_2.upd_encuesta(809003, 'SEGURIDAD update 1', 'Ejemplo SEGURIDAD 1', 'Deportivo', 'Activa', SYSDATE,'EV2');

EXECUTE PA_PERSONAL_AD_2.co_encuesta(809003); 

--DELETE
EXECUTE PA_PERSONAL_AD_2.del_encuesta(809003);

EXECUTE PA_PERSONAL_AD_2.co_encuesta(809003); 