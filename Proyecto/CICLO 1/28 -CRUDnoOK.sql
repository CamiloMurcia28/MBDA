--CRUDnoOK--
SET SERVEROUTPUT ON
--PAQUETE PC_EVENTO

--Se verifica que no permita la insercion de datos incompletos
BEGIN 
    PC_EVENTO.ad('1', 'Descripcion Deportiva', '13-05-2023', 'Deportes es'); 
END;
/
--Se verifica que no permita la modificacion de datos incompletos
BEGIN 
    PC_EVENTO.upd('e20230513ght', 'Deportivo descricpcion', '13-05-2023', 'Es deporte', '3'); 
END;
/
--Se verifica que no permita la eliminacion de datos inexistentes

BEGIN 
    PC_EVENTO.del_evento(); 
END;
/
-- Se verifica el mal uso del procedimiento co_3

BEGIN
   PC_EVENTO.co_3('sdf');
END;
/


--PAQUETE PC_PERSONA

--Se verifica que no permita la insercion de datos incompletos
BEGIN
    PC_PERSONA.ad(75684934, 'CC', 'Julian Albert', 'codigo1');
END;
/

--Se verifica que no permita la modificacion de datos incompletos

BEGIN
    PC_PERSONA.upd(10100, 'juan1233@example.com');
END;
/
--Se verifica que no permita la eliminacion de datos inexistentes

BEGIN
    PC_PERSONA.del_persona(773465773, 'CC', 'Rodolfo', 'sdfgsdf@gmail.com', 'asd1');
END;
/
-- Se verifica el mal uso del procedimiento co_4

BEGIN
    PC_PERSONA.co_3('sdf');
END;
/

--PAQUETE PC_NOTICIA

--Se verifica que no permita la insercion de datos incompletos o en orden erroneo

BEGIN
    PC_NOTICIA.ad_noticia('1', '01-01-2001', 'DESCRIPCION NOTICIA', 'ANDRES GUTIERREZ');
END;
/

--Se verifica que no permita la modificacion de datos incompletos

BEGIN
    PC_NOTICIA.upd_noticia('N13052023DES', '01-01-2023', 'NOTICIA DESCRIPCION', 'ANDRES LOPEZ');
END;
/

--Se verifica que no permita la eliminacion de datos incompletos o inexistentes

BEGIN
    PC_NOTICIA.del_noticia();
END;
/

-- Se verifica el mal uso del procedimiento co_5

BEGIN
    PC_NOTICIA.co_5('sdf');
END;
/

--PAQUETE PC_CURSO

--Se verifica que no permita la insercion de datos incompletos

BEGIN
    PC_CURSO.ad_curso('CURSO20', '2');
END;
/

--Se verifica que no permita la modificacion de datos incompletos

BEGIN
    PC_CURSO.upd_curso('ANDRES LOPEZ');
END;
/

--Se verifica que no permita la eliminacion de datos incompletos o inexistentes

BEGIN
    PC_CURSO_del_curso();
END;
/

BEGIN
    PC_CURSO.ad_curso_profesor('CURSO20', '2');
END;
/

BEGIN
    PC_CURSO_del_curso_profesor(2344234,'cc');
END;
/

-- Se verifica el mal uso del procedimiento co_6

BEGIN
    PC_NOTICIA.co_6('sdf');
END;
/

--Consultas--

--Se verifica que no permita la buscque de consultas a las que no tiene permisos.

--PC_EVENTO
SELECT
    PC_EVENTO.co_persona(1020423421, 'CC')
FROM DUAL;
/

--PC_PERSONA
SELECT
    PC_PERSONA.co_comentario_actividad(1020423421, 'CC', 'o20220402Eje')
FROM DUAL;
/

--PC_NOTICIA
/
SELECT
    PC_NOTICIA.co_personal_ad('19421442', 'CC')
FROM DUAL;

--PC_CURSO
/
SELECT
    PC_CURSO.co_comentario_noticia(10001, 'CC', 'N1')
FROM DUAL;


