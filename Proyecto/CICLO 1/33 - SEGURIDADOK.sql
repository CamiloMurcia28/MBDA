/*SEGURIDADOK*/
SET SERVEROUTPUT ON
--SE PROBARAN 5 CASOS DE CADA ACTOR SE COMPROBARA EL CRUD--

--DIRECTIVO--

--CREATE
EXECUTE PA_DIRECTIVO.ad_evento('123123', 'Camilo Murcia', '25-FEB-2020', 'Ejemplo descripcion', '1');
SELECT * FROM evento WHERE Nombre = 'Camilo Murcia'; 

--READ
EXECUTE PA_DIRECTIVO.co_5;

--UPDATE
EXECUTE PA_DIRECTIVO.upd_evento('a20230524Eje', 'Milton Gutierrez', 'Ejemplo SEGURIDAD', '1');
SELECT * FROM evento WHERE Nombre = 'Milton Gutierrez'; 

--DELETE
EXECUTE PA_DIRECTIVO.del_evento('a20230524Eje');
SELECT * FROM evento WHERE id_evento= 'a20230524Eje'; 

--ESTUDIANTE--

--CREATE
EXECUTE PA_ESTUDIANTE.ad_comentario_act(10011, 'TI','EV2', 'Ejemplo SEGURIDAD');
SELECT * FROM Comentario_Actividad WHERE detalle = 'Ejemplo SEGURIDAD'; 

--READ
EXECUTE PA_ESTUDIANTE.co_2;

--UPDATE
EXECUTE PA_ESTUDIANTE.upd_comentario_act(10011, 'PAP','EV2', 'SEGURIDAD Ejemplo');
SELECT * FROM Comentario_Actividad WHERE detalle = 'SEGURIDAD Ejemplo'; 

--DELETE
EXECUTE PA_ESTUDIANTE.del_suscripcion('59421482', 'CE', '020220115Eve', 1 );
SELECT * FROM SUSCRIPCION WHERE nid = 59421482 AND tid = 'CE' AND actividad = '020220115Eve';

--PROFESOR--

--CREATE
EXECUTE PA_PROFESOR.ad_comentario_noticia(10001, 'CC', 'N1', 'Ejemplo SEGURIDAD', SYSDATE);
SELECT * FROM Comentario_Noticia WHERE detalle = 'Ejemplo SEGURIDAD'; 

--READ
EXECUTE PA_PROFESOR.co_1;

--UPDATE
EXECUTE PA_PROFESOR.upd_comentario_act(10006, 'CC', 'EV2', 'Ejemplo SEGURIDAD.');
SELECT * FROM Comentario_Actividad WHERE NID = 10006; 

--DELETE
EXECUTE PA_PROFESOR.del_suscripcion(1013453458, 'NIP', 'o20220402Eje', 4);
SELECT * FROM SUSCRIPCION WHERE nid = 1013453458 AND tid =  'NIP' AND actividad = 'o20220402Eje';


--PERSONAL_AD--

--CREATE
EXECUTE PA_PERSONAL_AD.ad_comentario_act(10016, 'TI', 'EV2', 'Personal_AD SEGURIDAD');
SELECT * FROM Comentario_Actividad WHERE detalle = 'Personal_AD SEGURIDAD'; 

--READ
EXECUTE PA_PERSONAL_AD.co_3;

--UPDATE
EXECUTE PA_PERSONAL_AD.upd_comentario_act(10016, 'TI', 'EV2', 'SEGURIDAD Personal_AD ');
SELECT * FROM Comentario_Actividad WHERE detalle = 'SEGURIDAD Personal_AD '; 

--CONSULTAS

--DIRECTIVO--
SELECT PA_DIRECTIVO.co_evento('e20230504Exp') FROM DUAL;

--ESTUDIANTE--
SELECT PA_ESTUDIANTE.co_curso('CURSO1') FROM DUAL;

--PROFESOR--
SELECT PA_PROFESOR.co_curso_profesor(10001, 'CC') FROM DUAL;

--PERSONAL_MAS--
SELECT PA_PERSONAL_AD.co_noticia('N3') FROM DUAL;
