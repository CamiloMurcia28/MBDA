--CRUDOK--
SET SERVEROUTPUT ON
/
--Prueba de procedimientos PC_SERVICIOS_BIENESTAR

--Procedimeinto ad_servicios_bienestar
BEGIN
   PC_SERVICIO_BIENESTAR.ad_servicios_bienestar(234523, 'Apoyo PAQUETE', 'Ejemplo de descripcion PAQUETE', 'Edificio A, segundo piso', 'Lunes a viernes de 7:00 AM 4:00 PM', 10010, 'PAP');
END;
/
BEGIN
    PC_SERVICIO_BIENESTAR.co_servicios_bienestar(234523);
END;
/
--Procedimeinto upd_servicios_bienestar
BEGIN
   PC_SERVICIO_BIENESTAR.upd_servicios_bienestar(234523, 'PAQUETE UPDATE', 'PAQUETE UPD', 'Edificio A, segundo piso', 'Lunes a viernes de 8:00 AM 4:00 PM', 10010, 'PAP');
END;
/
BEGIN
    PC_SERVICIO_BIENESTAR.co_servicios_bienestar(234523);
END;
/
--Procedimeinto del_servicios_bienestar
BEGIN
   PC_SERVICIO_BIENESTAR.del_servicios_bienestar(234523);
END;
/
BEGIN
    PC_SERVICIO_BIENESTAR.co_servicios_bienestar(234523);
END;
/
--Procedimeinto ad_clubes_grupos
BEGIN
   PC_SERVICIO_BIENESTAR.ad_servicios_bienestar(1234567, 'Club ejemplo', 'Ejemplo de descripcion PAQUETE', 'Coliseo, cancha volei', 'Lunes a viernes de 1:00 PM 4:00 PM', 10010, 'PAP');
END;
/

BEGIN
   PC_SERVICIO_BIENESTAR.ad_clubes_grupos('M100', 'C100', 'COD11', '10-12-2023', 1234567, 'Grupo de voleibol piso');
END;
/
BEGIN
    PC_SERVICIO_BIENESTAR.co_clubes_grupos('C100');
END;
/
--Procedimeinto upd_clubes_grupos
BEGIN
   PC_SERVICIO_BIENESTAR.upd_clubes_grupos('M101', 'C100', 'COD11', 1234567, 'GrupO VOLEI UPDATE');
END;
/
BEGIN
    PC_SERVICIO_BIENESTAR.co_clubes_grupos('C100');
END;
/
--Procedimeinto del_clubes_grupos
BEGIN
   PC_SERVICIO_BIENESTAR.del_clubes_grupos('C100');
END;
/
BEGIN
    PC_SERVICIO_BIENESTAR.co_clubes_grupos('C100');
END;
/

--Procedimiento ad_solicitudes
BEGIN
   PC_SERVICIO_BIENESTAR.ad_solicitudes(10321, SYSDATE, 'Detalle CRUD', 'Abierta', 13213);
END;
/
BEGIN
   PC_SERVICIO_BIENESTAR.co_solicitudes(10321);
END;
/
--Procedimiento upd_solicitudes
BEGIN
   PC_SERVICIO_BIENESTAR.upd_solicitudes(10321, SYSDATE, 'CRUD Detalle UPD', 'Abierta', 13213);
END;
/
BEGIN
   PC_SERVICIO_BIENESTAR.co_solicitudes(10321);
END;
/
--Procedimiento del_solicitudes
BEGIN
   PC_SERVICIO_BIENESTAR.del_solicitudes(10321);
END;
/
BEGIN
   PC_SERVICIO_BIENESTAR.co_solicitudes(10321);
END;
/


--Consultas PC_SERVICIOS_BIENESTAR

--Consulta de Servicios Bienestar
BEGIN
    PC_SERVICIO_BIENESTAR.co_servicios_bienestar(13213);
END;
/
--Consultas de Clubes_grupos
BEGIN
    PC_SERVICIO_BIENESTAR.co_clubes_grupos('C003');
END;
/
--Consultas de solicitudes
BEGIN
    PC_SERVICIO_BIENESTAR.co_solicitudes(98765);
END;
/
--Consulta 1
BEGIN
    PC_SERVICIO_BIENESTAR.co_1;
END;
/
--Consulta 2
BEGIN
    PC_SERVICIO_BIENESTAR.co_2;
END;
/

--Prueba de procedimientos PC_ENCUESTAS

--Procedimiento ad_encuesta
BEGIN
   PC_ENCUESTA.ad_encuesta(809001, 'Titulo para la encuesta CRUD', 'Ejemplo para la descripcion de la encuesta CRUD', 'Deportivo', 'Activa', SYSDATE,'EV2');
END;
/
BEGIN
    PC_ENCUESTA.co_encuesta(809001);
END;
/
--Procedimiento upd_encuesta
BEGIN
   PC_ENCUESTA.upd_encuesta(809001, 'CRUD update', 'CRUD update', 'Cultural', 'Cerrada','29-04-22','EV2');
END;
/
BEGIN
    PC_ENCUESTA.co_encuesta(809001);
END;
/
--Procedimiento del_encuesta
BEGIN
   PC_ENCUESTA.del_encuesta(809001);
END;
/
BEGIN
    PC_ENCUESTA.co_encuesta(809001);
END;
/

--Procedimiento ad_pregunta
BEGIN
   PC_ENCUESTA.ad_encuesta(809001, 'Titulo para la encuesta CRUD', 'Ejemplo para la descripcion de la encuesta CRUD', 'Deportivo', 'Activa', SYSDATE,'EV2');
END;
/
BEGIN
    PC_ENCUESTA.ad_pregunta(SYSDATE, 'Contestada', 0, 809001, 'Pregunta 1');
END;
/
BEGIN
    PC_ENCUESTA.ad_pregunta(SYSDATE, 'Contestada', 34, 809001, 'Pregunta 2');
END;
/
BEGIN
    PC_ENCUESTA.co_pregunta(809001);
END;
/
--Procedimiento upd_pregunta
BEGIN
    PC_ENCUESTA.upd_pregunta('Contestada', 60, 809001, 'Pregunta 1');
END;
/
BEGIN
    PC_ENCUESTA.co_pregunta(809001);
END;
/
--Procedimiento del_pregunta
BEGIN
    PC_ENCUESTA.del_pregunta(809001,'Pregunta 1' );
END;
/
BEGIN
    PC_ENCUESTA.co_pregunta(809001);
END;
/

--Consultas PC_ENCUESTAS

BEGIN
    PC_ENCUESTA.co_encuesta(12731212);
END;
/
--Consulta 3
BEGIN
    PC_ENCUESTA.co_3;
END;
/

BEGIN
    PC_ENCUESTA.co_pregunta(809001);
END;
/

--Consulta 4
BEGIN
    PC_ENCUESTA.co_4;
END;





