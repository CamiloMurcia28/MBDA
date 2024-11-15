--CRUDnoOK--

SET SERVEROUTPUT ON
/
--Prueba de procedimientos PC_SERVICIOS_BIENESTAR

--Procedimeinto ad_servicios_bienestar no permite añadir registros incompletos
BEGIN
   PC_SERVICIO_BIENESTAR.ad_servicios_bienestar(234523, 'Apoyo PAQUETE');
END;
/
--Procedimeinto upd_servicios_bienestar no permite realizar update a registros inexistentes
BEGIN
   PC_SERVICIO_BIENESTAR.upd_servicios_bienestar(105021223, 'PAQUETE UPDATE', 'PAQUETE UPD', 'Edificio A, segundo piso', 'Lunes a viernes de 8:00 AM 4:00 PM', 10010, 'PAP');
END;
/
--Procedimeinto del_servicios_bienestar no permite realizar delete a registros inexistentes
BEGIN
   PC_SERVICIO_BIENESTAR.del_servicios_bienestar(0);
END;
/

--Procedimeinto ad_clubes_grupos no permite añadir registros incompletos
BEGIN
   PC_SERVICIO_BIENESTAR.ad_clubes_grupos('M100', 'C100', '10-12-2023', 1234567, 'Grupo de voleibol piso');
END;
/

--Procedimeinto upd_clubes_grupos no permite realizar update a registros inexistentes
BEGIN
   PC_SERVICIO_BIENESTAR.upd_clubes_grupos('M101', 'C101', 'COD11', 1234567, 'GrupO VOLEI UPDATE');
END;
/

--Procedimeinto del_clubes_grupos no permite realizar delete a registros inexistentes
BEGIN
   PC_SERVICIO_BIENESTAR.del_clubes_grupos('C');
END;
/


--Procedimiento ad_solicitudes no permite añadir registros incompletos
BEGIN
   PC_SERVICIO_BIENESTAR.ad_solicitudes(10321, 'Detalle CRUD', 'Abierta', 13213);
END;
/
--Procedimiento upd_solicitudes no permite realizar update a registros inexistentes
BEGIN
   PC_SERVICIO_BIENESTAR.upd_solicitudes(10, SYSDATE, 'CRUD Detalle UPD', 'Abierta', 13213);
END;
/

--Procedimiento del_solicitudes no permite realizar delete a registros inexistentes
BEGIN
   PC_SERVICIO_BIENESTAR.del_solicitudes(10);
END;
/

--Prueba de procedimientos PC_ENCUESTAS

--Procedimiento ad_encuesta no permite añadir registros incompletos
BEGIN
   PC_ENCUESTA.ad_encuesta(809001, 'Ejemplo para la descripcion de la encuesta CRUD', 'Deportivo', 'Activa', SYSDATE,'EV1');
END;
/

--Procedimiento upd_encuesta no permite realizar update a registros inexistentes
BEGIN
   PC_ENCUESTA.upd_encuesta(56, 'CRUD update', 'CRUD update', 'Cultural', 'Activa',SYSDATE,'EV1');
END;
/

--Procedimiento del_encuesta no permite realizar delete a registros inexistentes
BEGIN
   PC_ENCUESTA.del_encuesta(89, 'No se');
END;
/

--Procedimiento ad_pregunta no permite añadir registros incompletos
BEGIN
    PC_ENCUESTA.ad_pregunta(SYSDATE, 0, 809001);
END;
/

--Procedimiento upd_pregunta no permite realizar update a registros inexistentes
BEGIN
    PC_ENCUESTA.upd_pregunta('Contestada', 60, 81,'Comentario 2');
END;
/

--Procedimiento del_pregunta no permite realizar delete a registros inexistentes
BEGIN
    PC_ENCUESTA.del_pregunta(81,'detalle');
END;
/
