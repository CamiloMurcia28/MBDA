--CRUDI--

CREATE OR REPLACE PACKAGE BODY PC_SERVICIO_BIENESTAR IS

    PROCEDURE ad_servicios_bienestar(p_id_servicios IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_ubicacion IN VARCHAR, p_horario IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR) IS
    BEGIN
        -- Insertar un nuevo registro en la tabla Servicios_Binestar
        INSERT INTO Servicios_Binestar(id_servicio, nombre, descripcion, ubicacion, horario, nid, tid)
        VALUES (p_id_servicios, p_nombre, p_descripcion, p_ubicacion, p_horario, p_nid, p_tid);
        -- Si no se produce ninguna excepción, el procedimiento se ejecutó correctamente
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE upd_servicios_bienestar(p_id_servicios IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_ubicacion IN VARCHAR, p_horario IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR) IS
    BEGIN
        -- Actualizar los valores del registro en la tabla Servicios_Binestar
        UPDATE Servicios_Binestar
        SET nombre = p_nombre,
            descripcion = p_descripcion,
            ubicacion = p_ubicacion,
            horario = p_horario,
            nid = p_nid,
            tid = p_tid
        WHERE id_servicio = p_id_servicios;
        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro eL servicio');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE del_servicios_bienestar(p_id_servicios IN VARCHAR) IS
    BEGIN
        -- Eliminar el registro de la tabla Servicios_Binestar
        DELETE FROM Servicios_Binestar
        WHERE id_servicio = p_id_servicios;
        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro eL servicio');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    FUNCTION get_servicios_bienestar(p_id_servicios VARCHAR) RETURN SYS_REFCURSOR 
    IS
        -- Declarar un cursor para almacenar el resultado de la consulta
        co_servicios_cursor SYS_REFCURSOR;
    BEGIN
        OPEN co_servicios_cursor FOR
        SELECT * 
        FROM 
            Servicios_Binestar 
        WHERE 
            id_servicio = p_id_servicios;

        RETURN  co_servicios_cursor;
    END;

    PROCEDURE co_servicios_bienestar(p_id_servicios IN VARCHAR) IS
        -- Declarar variables locales para almacenar los resultados
        consulta SYS_REFCURSOR;
        v_id_servicio Servicios_Binestar.id_servicio%TYPE;
        v_nombre Servicios_Binestar.nombre%TYPE;
        v_descripcion Servicios_Binestar.descripcion%TYPE;
        v_ubicacion Servicios_Binestar.ubicacion%TYPE;
        v_horario Servicios_Binestar.horario%TYPE;
        v_nid Servicios_Binestar.nid%TYPE;  
        v_tid Servicios_Binestar.tid%TYPE;
    BEGIN
        --Conseguimos el cursor de la funcion 

        consulta := get_servicios_bienestar(p_id_servicios);

        --Procesamos la consulta
        LOOP
        FETCH consulta INTO v_id_servicio, v_nombre, v_descripcion, v_ubicacion, v_horario, v_nid, v_tid;
        EXIT WHEN consulta%NOTFOUND;
        -- Imprimimos cada fila
        DBMS_OUTPUT.PUT_LINE('Id del servicio: ' || v_id_servicio);
        DBMS_OUTPUT.PUT_LINE('Nombre del servicio: ' || v_nombre);
        DBMS_OUTPUT.PUT_LINE('Descripcion: ' || v_descripcion);
        DBMS_OUTPUT.PUT_LINE('Ubicacion: ' || v_ubicacion);
        DBMS_OUTPUT.PUT_LINE('Horario: ' || v_horario);
        DBMS_OUTPUT.PUT_LINE('Nid: ' || v_nid);
        DBMS_OUTPUT.PUT_LINE('Tid: ' || v_tid);
        END LOOP;
    END;
    
    PROCEDURE ad_clubes_grupos(p_id_miembro IN VARCHAR, p_id_club IN VARCHAR, p_codigo_representante IN VARCHAR, p_fecha_union IN DATE, p_id_servicio IN VARCHAR, p_nombre IN VARCHAR) IS
    BEGIN
        -- Insertar un nuevo registro en la tabla Clubes_Grupos
        INSERT INTO Clubes_Grupos(id_miembro, id_club, codigo_representante, fecha_union, id_servicio, nombre)
        VALUES (p_id_miembro, p_id_club, p_codigo_representante, p_fecha_union, p_id_servicio, p_nombre);
        -- Si no se produce ninguna excepción, el procedimiento se ejecutó correctamente
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE upd_clubes_grupos(p_id_miembro IN VARCHAR, p_id_club IN VARCHAR, p_codigo_representante IN VARCHAR, p_id_servicio IN VARCHAR, p_nombre IN VARCHAR) IS
    BEGIN
        -- Actualizar los valores del registro en la tabla Clubes_Grupos
        UPDATE Clubes_Grupos
        SET id_miembro = p_id_miembro,
            codigo_representante = p_codigo_representante,
            id_servicio = p_id_servicio,
            nombre = p_nombre
        WHERE id_club = p_id_club;
        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro el club');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE del_clubes_grupos(p_id_club IN VARCHAR) IS
    BEGIN
        -- Eliminar el registro de la tabla Clubes_Grupos
        DELETE FROM Clubes_Grupos
        WHERE id_club = p_id_club;
        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro el club');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    FUNCTION get_clubes_grupos(p_id_club IN VARCHAR) RETURN SYS_REFCURSOR IS
        -- Declarar un cursor para almacenar el resultado de la consulta
        co_clubes_cursor SYS_REFCURSOR;
        
    BEGIN
        OPEN co_clubes_cursor FOR
        SELECT * 
        FROM 
            Clubes_Grupos  
        WHERE 
            id_club = p_id_club;
        RETURN co_clubes_cursor;
    END;

    PROCEDURE co_clubes_grupos(p_id_club IN VARCHAR) IS
        -- Declarar variables locales para almacenar los resultados
        v_id_miembro Clubes_Grupos.id_miembro%TYPE;
        v_id_club Clubes_Grupos.id_club%TYPE;
        v_codigo_representante Clubes_Grupos.codigo_representante%TYPE;
        v_fecha_union Clubes_Grupos.fecha_union%TYPE;
        v_id_servicio Clubes_Grupos.id_servicio%TYPE;
        v_nombre Clubes_Grupos.nombre%TYPE;
        consulta  SYS_REFCURSOR;
    BEGIN
        --Conseguimos la consulta del cursor
        consulta := get_clubes_grupos(p_id_club);
        LOOP
            FETCH consulta INTO v_id_miembro, v_id_club, v_codigo_representante, v_fecha_union, v_id_servicio, v_nombre;
            EXIT WHEN consulta%NOTFOUND;
            --Se imprime cada fila
            DBMS_OUTPUT.PUT_LINE('Id del miembro: ' || v_id_miembro);
            DBMS_OUTPUT.PUT_LINE('Id del club: ' || v_id_club);
            DBMS_OUTPUT.PUT_LINE('Codigo del representante: '  || v_codigo_representante);
            DBMS_OUTPUT.PUT_LINE('Fecha de union: '  || v_fecha_union);
            DBMS_OUTPUT.PUT_LINE('Id del servicio: '  || v_id_servicio);
            DBMS_OUTPUT.PUT_LINE('Nombre del club: '  || v_nombre);
        END LOOP;
    END;

    PROCEDURE co_1 IS
        -- Declarar variables locales para almacenar los resultados de la consulta
        v_codigo_representante Clubes_Grupos.codigo_representante%TYPE;
        v_total_clubes NUMBER;

        -- Declarar un cursor para almacenar el resultado de la consulta
        co_1_cursor SYS_REFCURSOR;
    BEGIN
        -- Se realiza la consulta 
        OPEN co_1_cursor FOR
        SELECT codigo_representante, COUNT(DISTINCT id_club) AS total_clubes
        FROM Clubes_Grupos
        GROUP BY codigo_representante
        ORDER BY total_clubes DESC;

        -- Se evaluan los resultados y se les asigna las variables
        LOOP
            FETCH co_1_cursor INTO v_codigo_representante, v_total_clubes;
            EXIT WHEN co_1_cursor%NOTFOUND;

            -- Imprimir los valores de cada fila
            DBMS_OUTPUT.PUT_LINE('Código Representante: ' || v_codigo_representante || ', Total de Clubes: ' || v_total_clubes);
        END LOOP;
        -- Cerrar el cursor
        CLOSE co_1_cursor;

    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
    END;

     PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR) IS
    BEGIN
        -- Insertar un nuevo registro en la tabla Solicitudes
        INSERT INTO Solicitudes(id_solicitud, fecha_solicitud, detalle, estado, id_servicio)
        VALUES (p_id_solicitud, p_fecha_solicitud, p_detalle, estado, p_id_servicio);
        -- Si no se produce ninguna excepción, el procedimiento se ejecutó correctamente
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE upd_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR) IS
    BEGIN
        -- Actualizar los valores del registro en la tabla Solicitudes
        UPDATE Solicitudes
        SET fecha_solicitud = p_fecha_solicitud,
            detalle = p_detalle,
            estado = estado,
            id_servicio = p_id_servicio
        WHERE id_solicitud = p_id_solicitud;

        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro la solicitud');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE del_solicitudes(p_id_solicitud IN VARCHAR) IS
    BEGIN
        -- Eliminar el registro de la tabla Solicitudes
        DELETE FROM Solicitudes
        WHERE id_solicitud = p_id_solicitud;

        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro la solicitud');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    FUNCTION get_solicitudes(p_id_solicitud IN VARCHAR) RETURN SYS_REFCURSOR IS

        --Se declara el cursor
        co_solicitudes_cursor SYS_REFCURSOR;
    BEGIN
        -- Realizar la consulta para obtener los valores de la tabla Solicitudes
        OPEN co_solicitudes_cursor FOR
        SELECT *
        FROM 
            Solicitudes
        WHERE
            id_solicitud = p_id_solicitud;
        RETURN co_solicitudes_cursor;
       
    END;

    PROCEDURE co_solicitudes(p_id_solicitud IN VARCHAR) IS
        -- Declarar variables locales para almacenar los resultados
        v_id_solicitud Solicitudes.id_solicitud%TYPE;
        v_fecha_solicitud Solicitudes.fecha_solicitud%TYPE;
        v_detalle Solicitudes.detalle%TYPE;
        v_estado Solicitudes.Estado%TYPE;
        v_id_servicio Solicitudes.id_servicio%TYPE;
        consulta SYS_REFCURSOR;
    BEGIN
        consulta := get_solicitudes(p_id_solicitud);
         --Se evaluan los resultados y se les asigna las variables
        LOOP
            FETCH consulta INTO v_id_solicitud, v_fecha_solicitud, v_detalle, v_estado, v_id_servicio;
            EXIT WHEN consulta%NOTFOUND;
            --Se imprime cada fila
            DBMS_OUTPUT.PUT_LINE('Id de la solicitud: ' || v_id_solicitud);
            DBMS_OUTPUT.PUT_LINE('Fecha de la solicitud: ' || v_fecha_solicitud);
            DBMS_OUTPUT.PUT_LINE('Detalle: '  || v_detalle);
            DBMS_OUTPUT.PUT_LINE('Estado: '  || v_estado);
            DBMS_OUTPUT.PUT_LINE('Id del servicio: '  || v_id_servicio);
        END LOOP;
    END;

    PROCEDURE co_2 IS
        -- Declarar variables locales para almacenar los resultados de la consulta
        v_id_solicitud Solicitudes.id_solicitud%TYPE;
        v_estado Solicitudes.estado%TYPE;
        v_nombre_servicio Servicios_Binestar.nombre%TYPE;

        -- Declarar un cursor para almacenar el resultado de la consulta
        c_result SYS_REFCURSOR;
    BEGIN
        -- Realizar la consulta
        OPEN c_result FOR
        SELECT Solicitudes.id_solicitud, Solicitudes.estado, Servicios_Binestar.nombre
        FROM Solicitudes
        JOIN Servicios_Binestar ON (Solicitudes.id_servicio = Servicios_Binestar.id_servicio)
        WHERE Solicitudes.estado = 'Abierta';

        -- Recorrer los resultados del cursor y mostrarlos
        LOOP
            FETCH c_result INTO v_id_solicitud, v_estado, v_nombre_servicio;
            EXIT WHEN c_result%NOTFOUND;

            -- Imprimir los valores de cada fila
            DBMS_OUTPUT.PUT_LINE('ID Solicitud: ' || v_id_solicitud || ', Estado: ' || v_estado || ', Nombre del Servicio: ' || v_nombre_servicio);
        END LOOP;
        CLOSE c_result;
    END;
END;    
/
CREATE OR REPLACE PACKAGE BODY PC_ENCUESTA IS

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS
    BEGIN
        INSERT INTO Encuestas (id_encuesta, titulo, descripcion, categoria, estado, fecha_creacion, evento)
        VALUES (p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
        -- Si se ejecutó la inserción correctamente
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS
    BEGIN
        UPDATE Encuestas
        SET titulo = p_titulo, descripcion = p_descripcion, categoria = p_categoria, estado = p_estado, evento = p_evento, fecha_creacion = p_fecha_creacion
        WHERE id_encuesta = p_id_encuesta;
        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro la encuesta');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN
        DELETE FROM Encuestas
        WHERE id_encuesta = p_id_encuesta;
        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro la encuesta');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    FUNCTION get_encuesta(p_id_encuesta IN VARCHAR) RETURN SYS_REFCURSOR IS
        -- Declarar un cursor para almacenar el resultado de la consulta
        encuesta_cursor SYS_REFCURSOR;
    BEGIN
        OPEN encuesta_cursor FOR
        SELECT *
        FROM 
            Encuestas
        WHERE 
            id_encuesta = p_id_encuesta;
        RETURN encuesta_cursor;
    END;

    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR) IS
        -- Declarar variables locales para almacenar los resultados
        v_id_encuesta Encuestas.id_encuesta%TYPE;
        v_titulo_solicitud Encuestas.titulo%TYPE;
        v_descripcion Encuestas.descripcion%TYPE;
        v_categoria Encuestas.categoria%TYPE;
        v_estado Encuestas.estado%TYPE;
        v_fecha_creacion Encuestas.fecha_creacion%TYPE;
        v_evento Encuestas.evento%TYPE;
        consulta SYS_REFCURSOR;
    BEGIN
        consulta := get_encuesta(p_id_encuesta);
         --Se evaluan los resultados y se les asigna las variables
        LOOP
            FETCH consulta INTO v_id_encuesta, v_titulo_solicitud, v_descripcion, v_categoria, v_estado, v_fecha_creacion,v_evento;
            EXIT WHEN consulta%NOTFOUND;
            --Se imprime cada fila
            DBMS_OUTPUT.PUT_LINE('Id de la encuesta: ' || v_id_encuesta);
            DBMS_OUTPUT.PUT_LINE('Titulo: ' || v_titulo_solicitud);
            DBMS_OUTPUT.PUT_LINE('Descripcion: '  || v_descripcion);
            DBMS_OUTPUT.PUT_LINE('Categoria: '  || v_categoria);
            DBMS_OUTPUT.PUT_LINE('Estado: '  || v_estado);
            DBMS_OUTPUT.PUT_LINE('Fecha de creacion: '  || v_fecha_creacion);
            DBMS_OUTPUT.PUT_LINE('Evento: '  || v_evento);
        END LOOP;
    END;

    PROCEDURE co_3 IS
        -- Declarar variables locales para almacenar los resultados
        v_reacciones Preguntas.reacciones%TYPE;
        v_id_encuesta Encuestas.id_encuesta%TYPE;
        v_titulo Encuestas.titulo%TYPE;
        v_descripcion Encuestas.descripcion%TYPE;
        v_estado Preguntas.estado%TYPE;

        -- Declarar un cursor para almacenar el resultado de la consulta
        co_3_cursor SYS_REFCURSOR;
    BEGIN
        -- Realizar la consulta para obtener los valores requeridos
        OPEN co_3_cursor FOR
        SELECT Preguntas.reacciones, Encuestas.id_encuesta, Encuestas.titulo, Encuestas.descripcion, Preguntas.estado
        FROM Encuestas
        JOIN Preguntas ON Encuestas.id_encuesta = Preguntas.encuesta
        ORDER BY Preguntas.reacciones DESC;

        -- Recorrer y procesar los resultados
        LOOP
            FETCH co_3_cursor INTO v_reacciones, v_id_encuesta, v_titulo, v_descripcion, v_estado;
            EXIT WHEN co_3_cursor%NOTFOUND;
            
            -- Imprimir los valores de cada fila
            DBMS_OUTPUT.PUT_LINE('Reacciones: ' || v_reacciones);
            DBMS_OUTPUT.PUT_LINE('Id de la encuesta: ' || v_id_encuesta);
            DBMS_OUTPUT.PUT_LINE('Título de la encuesta: ' || v_titulo);
            DBMS_OUTPUT.PUT_LINE('Descripción de la encuesta: ' || v_descripcion);
            DBMS_OUTPUT.PUT_LINE('Estado de la pregunta: ' || v_estado);
            
        END LOOP;
        CLOSE co_3_cursor;  
    END;

    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN
        INSERT INTO Preguntas(fecha_inicio, estado, reacciones, encuesta, detalle)
        VALUES (p_fecha_inicio, p_estado, p_reacciones, p_encuesta, p_detalle);
        -- Mensaje de confirmación
        DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            -- Mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END ad_pregunta;

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN
        UPDATE Preguntas
        SET estado = p_estado, reacciones = p_reacciones
        WHERE encuesta = p_encuesta AND detalle = p_detalle;
        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro la pregunta');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN
        DELETE FROM Preguntas
        WHERE encuesta = p_encuesta AND detalle = p_detalle;

        -- Si se ve afectada al menos una fila, el procedimiento se ejecutó correctamente
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento correctamente realizado');
            COMMIT;
        ELSE
            -- Si no se ve afectada ninguna fila, imprimir mensaje de error
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, no se encontro la pregunta');
            ROLLBACK;
        END IF;
    EXCEPTION
        -- Si ocurre una excepción, imprimir mensaje de error
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Procedimiento incorrecto, verifique los valores');
            ROLLBACK;
    END;
    
    FUNCTION get_pregunta(p_encuesta IN VARCHAR) RETURN SYS_REFCURSOR IS
        -- Declarar un cursor para almacenar el resultado de la consulta
        pregunta_cursor SYS_REFCURSOR;
    BEGIN
        OPEN pregunta_cursor FOR
        SELECT *
        FROM Preguntas
        WHERE encuesta = p_encuesta;
        RETURN pregunta_cursor;
    END;

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR) IS
        -- Declarar variables locales para almacenar los resultados
        v_fecha_inicio Preguntas.fecha_inicio%TYPE;
        v_estado Preguntas.estado%TYPE;
        v_reacciones Preguntas.reacciones%TYPE;
        v_encuesta Preguntas.encuesta%TYPE;
        v_detalle Preguntas.detalle%TYPE;
        consulta SYS_REFCURSOR;
    BEGIN
        consulta := get_pregunta(p_encuesta);
         --Se evaluan los resultados y se les asigna las variables
        LOOP
            FETCH consulta INTO v_fecha_inicio, v_estado, v_reacciones, v_encuesta, v_detalle;
            EXIT WHEN consulta%NOTFOUND;
            --Se imprime cada fila
            DBMS_OUTPUT.PUT_LINE('Fecha de creacion: ' || v_fecha_inicio);
            DBMS_OUTPUT.PUT_LINE('Estado ' || v_estado);
            DBMS_OUTPUT.PUT_LINE('Reacciones: '  || v_reacciones);
            DBMS_OUTPUT.PUT_LINE('Encuesta: '  || v_encuesta);
            DBMS_OUTPUT.PUT_LINE('Detalle: '  || v_detalle);
            DBMS_OUTPUT.PUT_LINE('-----------------');
        END LOOP;
    END;
    PROCEDURE co_4 IS
         -- Declarar variables locales para almacenar los resultados
        v_id_encuesta Encuestas.id_encuesta%TYPE;
        v_titulo Encuestas.titulo%TYPE;
        v_descripcion Encuestas.descripcion%TYPE;
        v_estado Encuestas.estado%TYPE;
        
        -- Declarar un cursor para almacenar el resultado de la consulta
        co_encuestas_cursor SYS_REFCURSOR;
    BEGIN
        OPEN co_encuestas_cursor FOR
        SELECT id_encuesta, titulo, descripcion, estado
        FROM Encuestas
        WHERE estado IN ('Cerrada', 'Pendiente', 'En revision');
        
        --Se evalúan los resultados y se les asigna las variables
        LOOP
            FETCH co_encuestas_cursor INTO v_id_encuesta, v_titulo, v_descripcion, v_estado;
            EXIT WHEN co_encuestas_cursor%NOTFOUND;
            
            --Se imprime cada fila
            DBMS_OUTPUT.PUT_LINE('Id de la encuesta: ' || v_id_encuesta);
            DBMS_OUTPUT.PUT_LINE('Título: ' || v_titulo);
            DBMS_OUTPUT.PUT_LINE('Descripción: ' || v_descripcion);
            DBMS_OUTPUT.PUT_LINE('Estado: ' || v_estado);
        END LOOP;
        CLOSE co_encuestas_cursor;
    END co_4;

END PC_ENCUESTA;