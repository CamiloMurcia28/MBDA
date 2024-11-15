--CRUDI--

CREATE OR REPLACE PACKAGE BODY PC_EVENTO AS

    PROCEDURE ad(p_id_evento IN VARCHAR, p_nombre IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_tipo IN VARCHAR)
    IS
    BEGIN
        INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) 
        VALUES (p_id_evento, p_nombre, p_fecha_creacion, p_descripcion, p_tipo);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;

    PROCEDURE upd(p_id_evento IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_tipo IN VARCHAR) 
    IS
    BEGIN  
        UPDATE Evento
        SET  nombre = p_nombre, descripcion = p_descripcion, tipo = p_tipo
        WHERE id_evento = p_id_evento;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
         WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;

    PROCEDURE co_1 IS
        v_id_evento Evento.id_evento%TYPE;
        v_tipo Evento.tipo%TYPE;
      BEGIN
        FOR evento_tipo IN (
          SELECT id_evento, tipo
          FROM EVENTO
          WHERE tipo = '3' OR tipo = '4'
        ) LOOP
              v_id_evento := evento_tipo.id_evento;
              v_tipo := evento_tipo.tipo;
              DBMS_OUTPUT.PUT_LINE('ID del Evento: ' || v_id_evento);
              DBMS_OUTPUT.PUT_LINE('Tipo del Evento: ' || v_tipo);
              DBMS_OUTPUT.PUT_LINE('----------------------------');

        END LOOP;
    END;

    PROCEDURE del_evento(p_id_evento IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Evento
        WHERE id_evento = p_id_evento;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;

    PROCEDURE ad_actividad(p_evento IN VARCHAR, p_fecha_inicio IN DATE, p_fecha_fin IN DATE, p_estado IN VARCHAR, p_asistentes IN NUMBER)
    IS
    BEGIN 
        INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, estado, asistentes)
        VALUES(p_evento, p_fecha_inicio, p_fecha_fin,p_estado,p_asistentes);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;
    
    PROCEDURE upd_actividad(p_evento IN VARCHAR, p_fecha_inicio IN DATE, p_fecha_fin IN DATE, p_estado IN VARCHAR, p_asistentes IN NUMBER)
    IS
    BEGIN
        UPDATE Actividad
        SET fecha_inicio = p_fecha_inicio, fecha_fin = p_fecha_fin, estado = p_estado, asistentes = p_asistentes
        WHERE p_evento = evento;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;

    PROCEDURE co_2 IS
        v_nombre Evento.nombre%TYPE;
        v_descripcion Evento.descripcion%TYPE;
        v_tipo Evento.tipo%TYPE;
        v_fecha_fin Actividad.fecha_fin%TYPE;
    BEGIN
        FOR evento_act IN (
        SELECT Evento.nombre, Evento.descripcion, Evento.tipo, Actividad.fecha_fin
        FROM Evento
        JOIN Actividad ON (Evento.id_evento = Actividad.evento)
        WHERE Actividad.fecha_fin > SYSDATE
        )LOOP
            v_nombre := evento_act.nombre;
            v_descripcion := evento_act.descripcion;
            v_tipo := evento_act.tipo;
            v_fecha_fin := evento_act.fecha_fin;
            DBMS_OUTPUT.PUT_LINE('Nombre del Evento: ' || v_nombre);
            DBMS_OUTPUT.PUT_LINE('Descripción: ' || v_descripcion);
            DBMS_OUTPUT.PUT_LINE('Tipo de Evento: ' || v_tipo);
            DBMS_OUTPUT.PUT_LINE('Fecha Fin de Actividad: ' || v_fecha_fin);
            DBMS_OUTPUT.PUT_LINE('----------------------------');
        END LOOP;
    END;

    PROCEDURE co_3 IS
        v_nombre Evento.nombre%TYPE;
        v_descripcion Evento.descripcion%TYPE;
        v_tipo Evento.tipo%TYPE;
        v_fecha_fin Actividad.fecha_fin%TYPE;
    BEGIN
        FOR evento_act IN (
        SELECT Evento.nombre, Evento.descripcion, Evento.tipo, Actividad.fecha_fin
        FROM Evento
        JOIN Actividad ON (Evento.id_evento = Actividad.evento)
        WHERE Actividad.fecha_fin > SYSDATE
        ) LOOP
            v_nombre := evento_act.nombre;
            v_descripcion := evento_act.descripcion;
            v_tipo := evento_act.tipo;
            v_fecha_fin := evento_act.fecha_fin;
            --Impresiones--
            DBMS_OUTPUT.PUT_LINE('Nombre del Evento: ' || v_nombre);
            DBMS_OUTPUT.PUT_LINE('Descripción: ' || v_descripcion);
            DBMS_OUTPUT.PUT_LINE('Tipo de Evento: ' || v_tipo);
            DBMS_OUTPUT.PUT_LINE('Fecha Fin de Actividad: ' || v_fecha_fin);
            DBMS_OUTPUT.PUT_LINE('----------------------------');
        END LOOP;
    END;

    PROCEDURE del_actividad(p_evento IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Actividad
        WHERE evento = p_evento;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;

    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)
    IS
    BEGIN
        INSERT INTO Comentario_Actividad(nid,tid,actividad,detalle)
        VALUES(p_nid, p_tid, p_actividad, p_detalle);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;

    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)
    IS
    BEGIN
        UPDATE Comentario_Actividad
        SET detalle = p_detalle
        WHERE nid = p_nid AND tid = p_tid AND actividad = p_actividad;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;  
    
    PROCEDURE del_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Comentario_Actividad
        WHERE nid = p_nid AND tid = p_tid AND actividad = p_actividad;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifica los errores');
            ROLLBACK;
    END;

    FUNCTION co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR IS evento_cursor SYS_REFCURSOR;
    BEGIN
        OPEN evento_cursor FOR
        SELECT * FROM Evento u WHERE id_evento = p_id_evento;
        RETURN evento_cursor;
    END;

    FUNCTION co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR IS
    actividad_cursor SYS_REFCURSOR;
    BEGIN
        OPEN actividad_cursor FOR
        SELECT * FROM Actividad u WHERE evento = p_evento;
        RETURN actividad_cursor;
    END;

    FUNCTION co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR 
    IS
    comentario_actividad_cursor SYS_REFCURSOR;
    BEGIN
        OPEN comentario_actividad_cursor FOR
        SELECT * FROM Comentario_actividad u WHERE actividad = p_actividad AND nid = p_nid AND tid = p_tid;
        RETURN comentario_actividad_cursor;
    END;
END;

/

CREATE OR REPLACE PACKAGE BODY PC_PERSONA AS

    PROCEDURE ad(p_nid IN NUMBER, p_tid IN VARCHAR, p_nombre IN VARCHAR, p_correo IN VARCHAR, p_codigo IN VARCHAR)
    IS
    BEGIN 
        INSERT INTO Persona(nid, tid, nombre, correo, codigo)
        VALUES(p_nid, p_tid, p_nombre, p_correo, p_codigo);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    PROCEDURE upd(p_nid IN NUMBER, p_tid IN VARCHAR, p_correo IN VARCHAR)
    IS
    BEGIN
        UPDATE Persona
        SET correo = p_correo
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento realizado correctamente');
        COMMIT;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No se encontr� ning�n registro que coincida con los valores proporcionados');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error en el procedimiento, verifique los valores');
            ROLLBACK;
    END;
    
    PROCEDURE del_persona(p_nid IN NUMBER, p_tid IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Persona
        WHERE nid = p_nid  AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR)
    IS
    BEGIN 
        INSERT INTO Suscripcion(nid, tid, actividad, fecha_solicitud, vigencia, estado, idSolicitud) 
        VALUES (p_nid, p_tid, p_actividad, p_fecha_solicitud, p_vigencia, p_estado, p_idSolicitud);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    PROCEDURE upd_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR)
    IS
    BEGIN
        UPDATE Suscripcion
        SET  vigencia = p_vigencia, estado = p_estado
        WHERE nid = p_nid AND tid = p_tid AND idSolicitud = p_idSolicitud AND actividad = p_actividad;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_idSolicitud IN NUMBER)
    IS
    BEGIN
        DELETE FROM Suscripcion
        WHERE nid = p_nid AND tid = p_tid AND actividad = p_actividad AND idSolicitud = p_idSolicitud;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE co_4 IS
        v_fecha_solicitud Suscripcion.fecha_solicitud%TYPE;
        v_vigencia Suscripcion.vigencia%TYPE;
        v_estado Suscripcion.estado%TYPE;
        v_evento Actividad.evento%TYPE;
        v_nombre Evento.nombre%TYPE;
        v_descripcion Evento.descripcion%TYPE;
    BEGIN
        FOR suscripcion_act IN (
        SELECT Suscripcion.fecha_solicitud, Suscripcion.vigencia, Suscripcion.estado, Actividad.evento,
                Evento.nombre, Evento.descripcion
        FROM Suscripcion
        JOIN Actividad ON (Suscripcion.actividad = Actividad.evento)
        JOIN Evento ON (Evento.id_evento = Actividad.evento)
        WHERE Actividad.estado = 'Abierta'
        ORDER BY Suscripcion.vigencia ASC
        ) LOOP
            v_fecha_solicitud := suscripcion_act.fecha_solicitud;
            v_vigencia := suscripcion_act.vigencia;
            v_estado := suscripcion_act.estado;
            v_evento := suscripcion_act.evento;
            v_nombre := suscripcion_act.nombre;
            v_descripcion := suscripcion_act.descripcion;
            --Impresion--
            DBMS_OUTPUT.PUT_LINE('Fecha Solicitud: ' || v_fecha_solicitud);
            DBMS_OUTPUT.PUT_LINE('Vigencia: ' || v_vigencia);
            DBMS_OUTPUT.PUT_LINE('Estado: ' || v_estado);
            DBMS_OUTPUT.PUT_LINE('Evento: ' || v_evento);
            DBMS_OUTPUT.PUT_LINE('Nombre del Evento: ' || v_nombre);
            DBMS_OUTPUT.PUT_LINE('Descripción: ' || v_descripcion);
            DBMS_OUTPUT.PUT_LINE('----------------------------');

        END LOOP;
    END;

    PROCEDURE ad_profesor(p_nid IN NUMBER, p_tid IN VARCHAR, p_anos_experiencia IN NUMBER)
    IS
    BEGIN
        INSERT INTO Profesor(nid, tid, anos_experiencia)
        VALUES (p_nid, p_tid, p_anos_experiencia);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE upd_profesor(p_nid IN NUMBER, p_tid IN VARCHAR, p_anos_experiencia IN NUMBER)
    IS
    BEGIN
        UPDATE Profesor
        SET anos_experiencia = p_anos_experiencia
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    PROCEDURE del_profesor(p_nid IN NUMBER, p_tid IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Profesor
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    PROCEDURE ad_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR, p_ciclo_estudiantil IN VARCHAR, p_area_educativa IN VARCHAR, p_semestre in NUMBER)
    IS
    BEGIN
        INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre)
        VALUES (p_nid, p_tid, p_ciclo_estudiantil, p_area_educativa, p_semestre);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE upd_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR, p_ciclo_estudiantil IN VARCHAR, p_area_educativa IN VARCHAR, p_semestre in NUMBER)
    IS
    BEGIN
        UPDATE Estudiante
        SET ciclo_estudiantil = p_ciclo_estudiantil, area_educativa = p_area_educativa, semestre = p_semestre
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE del_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Estudiante
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE ad_personal_Ad(p_nid IN NUMBER, p_tid IN VARCHAR, p_cargo IN VARCHAR)
    IS
    BEGIN
        INSERT INTO Personal_Ad(nid, tid, cargo)
        VALUES (p_nid, p_tid, p_cargo);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    PROCEDURE upd_personal_Ad(p_nid IN NUMBER, p_tid IN VARCHAR, p_cargo IN VARCHAR)
    IS
    BEGIN
        UPDATE Personal_Ad
        SET cargo = p_cargo
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    PROCEDURE del_personal_Ad(p_nid IN NUMBER, p_tid IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Personal_Ad
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE ad_directivo(p_nid IN NUMBER, p_tid IN VARCHAR, p_area IN VARCHAR)
    IS
    BEGIN
        INSERT INTO Directivo(nid, tid, area)
        VALUES (p_nid, p_tid, p_area);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE upd_directivo(p_nid IN NUMBER, p_tid IN VARCHAR, p_area IN VARCHAR)
    IS
    BEGIN
        UPDATE Directivo
        SET area = p_area
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE del_directivo(p_nid IN NUMBER, p_tid IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Directivo
        WHERE nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    FUNCTION co_persona(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR IS
    persona_cursor SYS_REFCURSOR;
    BEGIN
        OPEN persona_cursor FOR
        SELECT * FROM PERSONA u WHERE nid = p_nid AND tid = p_tid;
        RETURN persona_cursor;
    END;

    FUNCTION co_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR IS
    estudiante_cursor SYS_REFCURSOR;
    BEGIN
        OPEN estudiante_cursor FOR
        SELECT * FROM Estudiante u WHERE nid = p_nid AND tid = p_tid;
        RETURN estudiante_cursor;
    END;

    FUNCTION co_personal_ad(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR IS
    personal_ad_cursor SYS_REFCURSOR;
    BEGIN
        OPEN personal_ad_cursor FOR
        SELECT * FROM Personal_Ad u WHERE nid = p_nid AND tid = p_tid;
        RETURN personal_ad_cursor;
    END;

    FUNCTION co_directivo(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR IS
    directivo_cursor SYS_REFCURSOR;
    BEGIN
        OPEN directivo_cursor FOR
        SELECT * FROM Directivo u WHERE nid = p_nid AND tid = p_tid;
        RETURN directivo_cursor;
    END;

    FUNCTION co_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR IS
    profesor_cursor SYS_REFCURSOR;
    BEGIN
        OPEN profesor_cursor FOR
        SELECT * FROM profesor u WHERE nid = p_nid AND tid = p_tid;
        RETURN profesor_cursor;
    END;

    FUNCTION co_telefonos_persona(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR IS
    telefonos_persona_cursor SYS_REFCURSOR;
    BEGIN
        OPEN telefonos_persona_cursor FOR
        SELECT * FROM Telefonos_Persona u WHERE nid = p_nid AND tid = p_tid;
        RETURN telefonos_persona_cursor;
    END;

    FUNCTION co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad in VARCHAR) RETURN SYS_REFCURSOR IS
    suscripcion_cursor SYS_REFCURSOR;
    BEGIN
        OPEN suscripcion_cursor FOR
        SELECT * FROM Suscripcion u WHERE nid = p_nid AND tid = p_tid AND actividad = p_actividad;
        RETURN suscripcion_cursor;
    END;
END;

/

CREATE OR REPLACE PACKAGE BODY PC_NOTICIA AS 
    PROCEDURE ad_noticia(p_id_noticia IN VARCHAR, p_titulo IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_autor IN VARCHAR)
    IS
    BEGIN 
        INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) 
        VALUES(p_id_noticia, p_titulo, p_fecha_creacion, p_descripcion, p_autor);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
    END;
    
    PROCEDURE upd_noticia(p_id_noticia IN VARCHAR, p_titulo IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_autor IN VARCHAR)
    IS
    BEGIN
        UPDATE Noticia
        SET id_noticia = p_id_noticia, titulo = p_titulo, fecha_creacion = p_fecha_creacion, descripcion = p_descripcion, autor = p_autor
        WHERE id_noticia = p_id_noticia;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
    END;
    
    PROCEDURE del_noticia(p_id_noticia IN VARCHAR)
    IS
    BEGIN
        DELETE FROM Noticia
        WHERE id_noticia = p_id_noticia;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
        END;

    PROCEDURE co_5
    IS
        v_id_noticia Noticia.id_noticia%TYPE;
        v_titulo Noticia.titulo%TYPE;
        v_descripcion Noticia.descripcion%TYPE;
        v_fecha_creacion Noticia.fecha_creacion%TYPE;
    BEGIN
        FOR noticia IN (
        SELECT Noticia.id_noticia, Noticia.titulo, Noticia.descripcion, Noticia.fecha_creacion
        FROM Noticia
        WHERE Noticia.fecha_creacion <= SYSDATE
        ORDER BY Noticia.fecha_creacion DESC
        )   LOOP

        v_id_noticia := noticia.id_noticia;
        v_titulo := noticia.titulo;
        v_descripcion := noticia.descripcion;
        v_fecha_creacion := noticia.fecha_creacion;
        DBMS_OUTPUT.PUT_LINE('ID: ' || v_id_noticia);
        DBMS_OUTPUT.PUT_LINE('Titulo: ' || v_titulo);
        DBMS_OUTPUT.PUT_LINE('Descripcion: ' || v_descripcion);
        DBMS_OUTPUT.PUT_LINE('Fecha Creacion: ' || v_fecha_creacion);
        DBMS_OUTPUT.PUT_LINE('----------------------------');
        END LOOP;
    END;

    PROCEDURE ad_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR, p_fecha IN DATE)
    IS
    BEGIN
        INSERT INTO Comentario_Noticia(nid, tid, noticia, detalle, fecha)
        VALUES (p_nid, p_tid, p_notica, p_detalle, p_fecha);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
    END;

    PROCEDURE del_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR, p_fecha IN DATE)
    IS
    BEGIN
        DELETE FROM Comentario_Noticia
        WHERE nid = p_nid AND tid = p_tid AND noticia = p_notica AND detalle = p_detalle AND fecha = p_fecha;
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
    END;

    FUNCTION co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR IS
    noticia_cursor SYS_REFCURSOR;
    BEGIN
        OPEN noticia_cursor FOR
        SELECT * FROM Noticia u WHERE id_noticia = p_id_noticia;
        RETURN noticia_cursor;
    END;

    FUNCTION co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR IS
    comentario_noticia_cursor SYS_REFCURSOR;
    BEGIN
        OPEN comentario_noticia_cursor FOR
        SELECT * FROM Comentario_noticia u WHERE noticia = p_noticia AND nid = p_nid AND tid = p_tid;
        RETURN comentario_noticia_cursor;
    END;
END;

/

CREATE OR REPLACE PACKAGE BODY PC_CURSO AS

    PROCEDURE ad_curso(p_id_curso IN VARCHAR, p_tipo IN VARCHAR, p_descripcion IN VARCHAR) IS
    BEGIN
        INSERT INTO Curso(id_curso, tipo, descripcion)
        VALUES(p_id_curso, p_tipo, p_descripcion);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto verifique los valores');
    END;

    PROCEDURE upd_curso(p_id_curso IN VARCHAR, p_tipo IN VARCHAR, p_descripcion IN VARCHAR)IS
    BEGIN
        UPDATE Curso
        SET id_curso = p_id_curso, tipo = p_tipo, descripcion = p_descripcion
        WHERE id_curso = p_id_curso;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto verifique los valores');
    END;
    
    PROCEDURE del_curso(p_id_curso IN VARCHAR)IS
    BEGIN
        DELETE FROM Curso
        WHERE id_curso = p_id_curso;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto verifique los valores');
    END;

    PROCEDURE ad_curso_profesor(p_id_curso IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR)IS
    BEGIN
        INSERT INTO Curso_Profesor(nid, tid, curso)
        VALUES(p_nid, p_tid, p_id_curso);
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto verifique los valores');
    END;

    PROCEDURE del_curso_profesor(p_id_curso IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR)IS
    BEGIN
        DELETE FROM Curso_Profesor
        WHERE curso = p_id_curso AND nid = p_nid AND tid = p_tid;
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto verifique los valores');
    END;

    PROCEDURE co_6 IS
        v_nombre Persona.nombre%TYPE;
        v_anos_experiencia Profesor.anos_experiencia%TYPE;
        v_cursos NUMBER;
    BEGIN
        FOR datos_profesor IN (
        SELECT Persona.nombre, Profesor.anos_experiencia, COUNT(Curso_Profesor.curso) AS Cursos
        FROM Persona
        JOIN Profesor ON Persona.nid = Profesor.nid
        JOIN Curso_Profesor ON Profesor.nid = Curso_Profesor.nid
        GROUP BY Persona.nombre, Profesor.anos_experiencia
        HAVING COUNT(Curso_Profesor.curso) >= 1
        ORDER BY Cursos DESC
        ) LOOP
            v_nombre := datos_profesor.nombre;
            v_anos_experiencia := datos_profesor.anos_experiencia;
            v_cursos := datos_profesor.Cursos;
            --Impresion
            DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre);
            DBMS_OUTPUT.PUT_LINE('Años de Experiencia: ' || v_anos_experiencia);
            DBMS_OUTPUT.PUT_LINE('Cantidad de Cursos: ' || v_cursos);
            DBMS_OUTPUT.PUT_LINE('----------------------------');
        END LOOP;
    END;

    FUNCTION co_curso(p_id_curso IN VARCHAR) RETURN SYS_REFCURSOR IS
    curso_cursor SYS_REFCURSOR;
    BEGIN
        OPEN curso_cursor FOR
        SELECT * FROM Curso u WHERE id_curso = p_id_curso;
        RETURN curso_cursor;
    END;

    FUNCTION co_curso_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR IS
    curso_cursor SYS_REFCURSOR;
    BEGIN
        OPEN curso_cursor FOR
        SELECT * FROM Curso_Profesor u WHERE nid = p_nid AND tid = p_tid;
        RETURN curso_cursor;

    END;
END;








