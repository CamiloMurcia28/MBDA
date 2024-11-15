--CRUDOK--
SET SERVEROUTPUT ON
--PAQUETE PC_EVENTO

-- Ejemplo de insercion usando el procedimiento ad
BEGIN
    PC_EVENTO.ad('1', 'Evento de prueba', SYSDATE, 'Descripcion del evento', '1');
END;
/
SELECT * FROM Evento WHERE id_evento = 'v20230523Des';
/

-- Ejemplo de actualizacion usando el procedimiento upd
BEGIN
    PC_EVENTO.upd('v20230522Des', 'Nuevo nombre','Nueva descripcion', '2');
END;
/
SELECT * FROM Evento WHERE id_evento = 'v20230522Des';
/

-- Ejemplo de consulta usando la funcion co_1
BEGIN
    PC_EVENTO.co_1;
END;
/
-- Ejemplo de eliminacion usando el procedimiento del
BEGIN
    PC_EVENTO.del_evento('v20230523Des');
END;
/
SELECT * FROM Evento WHERE id_evento = 'v20230523Des';
/

-- Ejemplo de insercion usando el procedimiento ad_actividad
BEGIN
    PC_EVENTO.ad('1', 'Evento de prueba', SYSDATE, 'Descripcion del evento', '1');
END;
/
BEGIN
    PC_EVENTO.ad_actividad('v20230523Des', SYSDATE, SYSDATE + 1, 'Abierta', 10);
END;
/
SELECT * FROM Actividad WHERE evento = 'v20230522Des';
/

-- Ejemplo de actualizacion usando el procedimiento upd_actividad
BEGIN
    PC_EVENTO.upd_actividad('v20230523Des', SYSDATE, SYSDATE + 2, 'Abierta', 8);
END;
/
SELECT * FROM Actividad WHERE evento = 'v20230523Des';
/

-- Ejemplo de consulta usando co_2
BEGIN
    PC_EVENTO.co_2;
END;
/
-- Ejemplo de eliminaciOn usando el procedimiento del_actividad
BEGIN
    PC_EVENTO.del_actividad('v20230523Des');
END;
/
SELECT * FROM Actividad WHERE evento = 'v20230523Des';
/

-- Ejemplo de insercion usando el procedimiento ad_comentario_act
BEGIN
    PC_EVENTO.ad_actividad('v20230523Des', SYSDATE, SYSDATE + 1, 'Abierta', 10);
END;
/
BEGIN
    PC_EVENTO.ad_comentario_act(10007, 'CC', 'v20230523Des', 'Comentario de prueba');
END;
/
SELECT * FROM Comentario_Actividad WHERE Actividad = 'v20230523Des';
/

-- Ejemplo de actualizacion usando el procedimiento upd_comentario_act
BEGIN
    PC_EVENTO.upd_comentario_act(10007, 'CC', 'v20230523Des', 'Nuevo comentario');
END;
/
SELECT * FROM Comentario_Actividad WHERE Actividad = 'v20230523Des';
/

-- Ejemplo de eliminacion usando el procedimiento del_comentario_act
BEGIN
    PC_EVENTO.del_comentario_act(10007, 'CC', 'v20230523Des');
END;
/
SELECT * FROM Comentario_Actividad WHERE Actividad = 'v20230523Des';
/


--PAQUETE PC_PERSONA

--Se verifica el funcionamiento del procedimiento adicionar_evento
BEGIN
    PC_PERSONA.ad(1987, 'CC', 'Hilbert Roberto', 'hilrobt@ejemplo.com', 'EJE123');
END;
/
SELECT * FROM PERSONA WHERE NID = 1987;   
/

--Se verifica el funcionamiento del procedimiento modificar_persona
BEGIN
    PC_PERSONA.upd(1987, 'CC', 'EJEMPLOcrud@crud.com');
END;
/
SELECT * FROM PERSONA WHERE NID = 1987; 
/
--Se verifica el funcionamiento del procedimiento eliminar_persona

BEGIN
    PC_PERSONA.del_persona(1987, 'CC');
END;
/
SELECT * FROM PERSONA WHERE NID = 1987;
/

--Se verifica el funcionamiento del procedimiento ad_suscripcion

BEGIN
    PC_PERSONA.ad_suscripcion(33421442, 'CE', 'v20230523Des', SYSDATE, 1,SYSDATE + 30, 'Activa');
END;
/
SELECT * FROM Suscripcion WHERE actividad = 'v20230523Des';
/

--Se verifica el funcionamiento del procedimiento upd_suscripcion
BEGIN
    PC_PERSONA.upd_suscripcion(33421442, 'CE', 'v20230523Des', SYSDATE, 1, SYSDATE + 60, 'Activa');
END;
/
SELECT * FROM Suscripcion WHERE NID = 33421442 AND actividad = 'v20230523Des';
/
BEGIN
    PC_PERSONA.del_suscripcion(4563453546, 'CC', 'o20220402Eje', 3);
END;
/
SELECT * FROM Suscripcion WHERE NID = 4563453546 AND actividad = 'o20220402Eje';
/
--Se verifica el funcionamiento de la consulta 4
BEGIN
    PC_PERSONA.co_4;
END;
/
--Se verifica el funcionamiento del procedimiento ad_profesor
BEGIN
    PC_PERSONA.ad(19373622, 'CC', 'John Doe', 'johndoe@example.com', 'A1B2C3');
END;
/
BEGIN
    PC_PERSONA.ad_profesor(19373622, 'CC', 5);
END;
/
SELECT * FROM Profesor WHERE NID = 19373622;
/
--Se verifica el funcionamiento del procedimiento upd_profesor
BEGIN
    PC_PERSONA.upd_profesor(19373622, 'CC', 8);
END;
/
SELECT * FROM Profesor WHERE NID = 19373622;
/
--Se verifica el funcionamiento del procedimiento del_profesor
BEGIN
    PC_PERSONA.del_profesor(19373622, 'CC');
END;
/
SELECT * FROM Profesor WHERE NID = 19373622;
/
--Se verifica el funcionamiento del procedimiento ad_estudiante
BEGIN
    PC_PERSONA.ad_estudiante(19373622, 'CC', 'Posgrado', 'Sistemas', 3);
END;
/
SELECT * FROM Estudiante WHERE NID = '19373622';
/

--Se verifica el funcionamiento del procedimiento upd_estudiante
BEGIN
    PC_PERSONA.upd_estudiante(19373622, 'CC', 'Posgrado', 'Industrial', 1);
END;
/
SELECT * FROM Estudiante WHERE NID = '19373622';
/

--Se verifica el funcionamiento del procedimiento del_estudiante

BEGIN
    PC_PERSONA.del_estudiante(19373622, 'CC');
END;
/
SELECT * FROM Estudiante WHERE NID = '19373622';
/
--Se verifica el funcionamiento del procedimiento ad_personal_Ad

BEGIN
    PC_PERSONA.ad_personal_Ad(19373622, 'CC', 'Mantenimiento');
END;
/
SELECT * FROM Personal_Ad WHERE NID = '19373622';
/
--Se verifica el funcionamiento del procedimiento upd_personal_Ad
BEGIN
    PC_PERSONA.upd_personal_Ad(19373622, 'CC', 'Otro');
END;
/
SELECT * FROM Personal_Ad WHERE NID = '19373622';
/
--Se verifica el funcionamiento del procedimiento del_personal_Ad
BEGIN
    PC_PERSONA.del_personal_Ad(19373622, 'CC');
END;
/
SELECT * FROM Personal_Ad WHERE NID = '19373622';
/
--Se verifica el funcionamiento del procedimiento ad_directivo
BEGIN
    PC_PERSONA.ad_directivo(19373622, 'CC', 'Deportes');
END;
/
SELECT * FROM Directivo WHERE NID = '19373622';
/
--Se verifica el funcionamiento del procedimiento upd_directivo

BEGIN
    PC_PERSONA.upd_directivo(19373622, 'CC', 'Administrativa');
END;
/
SELECT * FROM Directivo WHERE NID = '19373622';
/
--Se verifica el funcionamiento del procedimiento del_directivo
BEGIN
    PC_PERSONA.del_directivo(19373622, 'CC');
END;
/
SELECT * FROM Directivo WHERE NID = '19373622';
/

--PAQUETE PC_NOTICIA

--Se verifica el funcionamiento del procedimiento adicionar_noticia

BEGIN
PC_NOTICIA.ad_noticia('1', 'NOTICIA CRUD', TO_DATE('01-02-2001', 'DD-MM-YYYY'), 'DESCRIPCION NOTICIA', 'ANDRES GUTIERREZ');
END;
/
SELECT * FROM Noticia WHERE descripcion = 'DESCRIPCION NOTICIA';
/
--Se verifica el funcionamiento del procedimiento modificar_noticia

BEGIN
    PC_NOTICIA.upd_noticia('N23052023DES', 'CRUD DESCRIPCION', TO_DATE('01-01-2023', 'DD-MM-YYYY'), 'NOTICIA DESCRIPCION', 'ANDRES LOPEZ');
END;
/
SELECT * FROM Noticia WHERE titulo = 'CRUD DESCRIPCION';
/
--Se verifica el funcionamiento del procedimiento eliminar_noticia

BEGIN
    PC_NOTICIA.del_noticia('N23052023DES');
END;
/
SELECT * FROM Noticia WHERE titulo = 'CRUD DESCRIPCION';
/

--Se verifica el procedimiento co_5

BEGIN
    PC_NOTICIA.co_5;
END;
/

--Se verifica el procedimiento ad_comentario_noticia
BEGIN
PC_NOTICIA.ad_comentario_noticia(10001, 'CC', 'N1', 'Comentario noticia ejemplo', SYSDATE);
END;
/
SELECT * FROM Comentario_Noticia WHERE noticia = 'N1' AND nid = 10001;
/
--Se verifica el procedimiento del_comentario_noticia
BEGIN
PC_NOTICIA.del_comentario_noticia(10001, 'CC', 'N1', 'Comentario noticia ejemplo', SYSDATE);
END;
/
SELECT * FROM Comentario_Noticia WHERE noticia = 'N1' AND nid = 10001;
/

/*PAQUETE PC_CURSO */

--Adicionar curso
BEGIN
    PC_CURSO.ad_curso('123456', '1', 'Ejemplo 1');
END;
/
SELECT * FROM Curso WHERE id_curso = '123456';
/
--Update curso
BEGIN
    PC_CURSO.upd_curso('123456','2','Ejemplo 2');
END;
/
SELECT * FROM Curso WHERE id_curso = '123456';
/
--Delete curso
BEGIN
    PC_CURSO.del_curso('123456');
END;
/
SELECT * FROM Curso WHERE id_curso = '123456';
/
--Adicionar Curso Profesor
BEGIN
    PC_CURSO.ad_curso('123456', '1', 'Ejemplo 1');
END;
/
BEGIN
    PC_CURSO.ad_curso_profesor('123456','10001', 'CC');
END;
/
SELECT * FROM Curso_Profesor WHERE NID = 10001 AND CURSO = '123456';
/
--Delete Curso Profesor
BEGIN
    PC_CURSO.del_curso_profesor('123456','10001', 'CC');
END;
/
SELECT * FROM Curso_Profesor WHERE NID = 10001 AND CURSO = '123456';

--Consulta
/
BEGIN
    PC_CURSO.co_6;
END;
/


--Consultas Tablas 

--PC_EVENTO
SELECT
    PC_EVENTO.co_evento('o20220402Eje')
FROM DUAL;
/
SELECT
    PC_EVENTO.co_actividad('o20220402Eje')
FROM DUAL;
/
SELECT
    PC_EVENTO.co_comentario_actividad(1020423421, 'CC', 'o20220402Eje')
FROM DUAL;
/
--PC_PERSONA
SELECT
    PC_PERSONA.co_persona(1020423421, 'CC')
FROM DUAL;
/
SELECT
    PC_PERSONA.co_estudiante('1020423421', 'CC')
FROM DUAL;
/
SELECT
    PC_PERSONA.co_personal_ad('19421442', 'CC')
FROM DUAL;
/
SELECT
    PC_PERSONA.co_directivo('1013453458', 'NIP')
FROM DUAL;
/
SELECT
    PC_PERSONA.co_profesor('1007498545', 'CE')
FROM DUAL;
/
SELECT
    PC_PERSONA.co_telefonos_persona('59499442', 'CC')
FROM DUAL;
/
SELECT
    PC_PERSONA.co_suscripcion('7893453457', 'CE', 'o20220402Eje')
FROM DUAL;

--PC_NOTICIA
/
SELECT
    PC_NOTICIA.co_noticia('1')
FROM DUAL;
/
SELECT
    PC_NOTICIA.co_comentario_noticia(10001, 'CC', 'N1')
FROM DUAL;
/
--PC_CURSO

SELECT
    PC_CURSO.co_curso('CURSO1')
FROM DUAL;
/
SELECT
    PC_CURSO.co_curso_profesor(10003, 'CE')
FROM DUAL;
/
