CREATE OR REPLACE PACKAGE BODY PA_DIRECTIVO_2 IS
    
    PROCEDURE ad_servicios_bienestar(p_id_servicios IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_ubicacion IN VARCHAR, p_horario IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR) IS
    BEGIN
        PC_SERVICIO_BIENESTAR.ad_servicios_bienestar(p_id_servicios, p_nombre, p_descripcion, p_ubicacion, p_horario, p_nid, p_tid);
    END;

    PROCEDURE upd_servicios_bienestar(p_id_servicios IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_ubicacion IN VARCHAR, p_horario IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR) IS
    BEGIN
        PC_SERVICIO_BIENESTAR.upd_servicios_bienestar(p_id_servicios, p_nombre, p_descripcion, p_ubicacion, p_horario, p_nid, p_tid);
    END;
    PROCEDURE del_servicios_bienestar(p_id_servicios IN VARCHAR) IS
    BEGIN
        PC_SERVICIO_BIENESTAR.del_servicios_bienestar(p_id_servicios);
    END;
    PROCEDURE co_servicios_bienestar(p_id_servicios IN VARCHAR) IS
    BEGIN 
        PC_SERVICIO_BIENESTAR.co_servicios_bienestar(p_id_servicios);
    END;
    PROCEDURE ad_clubes_grupos(p_id_miembro IN VARCHAR, p_id_club IN VARCHAR, p_codigo_representante IN VARCHAR, p_fecha_union IN DATE, p_id_servicio IN VARCHAR,p_nombre IN VARCHAR) IS
    BEGIN  
        PC_SERVICIO_BIENESTAR.ad_clubes_grupos(p_id_miembro, p_id_club, p_codigo_representante, p_fecha_union, p_id_servicio, p_nombre);
    END;
    PROCEDURE upd_clubes_grupos(p_id_miembro IN VARCHAR, p_id_club IN VARCHAR, p_codigo_representante IN VARCHAR, p_id_servicio IN VARCHAR,p_nombre IN VARCHAR) IS
    BEGIN 
        PC_SERVICIO_BIENESTAR.upd_clubes_grupos(p_id_miembro, p_id_club, p_codigo_representante, p_id_servicio, p_nombre);
    END;

    PROCEDURE del_clubes_grupos(p_id_club IN VARCHAR) IS
    BEGIN   
        PC_SERVICIO_BIENESTAR.del_clubes_grupos(p_id_club);
    END;

    PROCEDURE co_clubes_grupos(p_id_club IN VARCHAR) IS
    BEGIN
        PC_SERVICIO_BIENESTAR.co_clubes_grupos(p_id_club);
    END;

    PROCEDURE co_1 IS
    BEGIN   
        PC_SERVICIO_BIENESTAR.co_1;
    END;

    PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR) IS
    BEGIN 
        PC_SERVICIO_BIENESTAR.ad_solicitudes(p_id_solicitud, p_fecha_solicitud, p_detalle, estado, p_id_servicio);
    END;

    PROCEDURE upd_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR) IS
    BEGIN 
        PC_SERVICIO_BIENESTAR.upd_solicitudes(p_id_solicitud, p_fecha_solicitud, p_detalle, estado, p_id_servicio);
    END;

    PROCEDURE del_solicitudes(p_id_solicitud IN VARCHAR) IS
    BEGIN   
        PC_SERVICIO_BIENESTAR.del_solicitudes(p_id_solicitud);
    END;

    PROCEDURE co_solicitudes(p_id_solicitud IN VARCHAR) IS
    BEGIN   
        PC_SERVICIO_BIENESTAR.co_solicitudes(p_id_solicitud);
    END;

    PROCEDURE co_2 IS
     BEGIN   
        PC_SERVICIO_BIENESTAR.co_2;
    END;

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.ad_encuesta(p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
    END;

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS

    BEGIN   
        PC_ENCUESTA.upd_encuesta(p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
    END;

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.del_encuesta(p_id_encuesta);
    END;
    
    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.co_encuesta(p_id_encuesta);
    END;

    PROCEDURE co_3 IS
    BEGIN   
        PC_ENCUESTA.co_3;
    END;

    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.ad_pregunta(p_fecha_inicio, p_estado, p_reacciones, p_encuesta, p_detalle);
    END;

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.upd_pregunta(p_estado, p_reacciones, p_encuesta, p_detalle);
    END;

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.del_pregunta(p_encuesta, p_detalle);
    END;

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.co_pregunta(p_encuesta);
    END;

    PROCEDURE co_4 IS
    BEGIN   
        PC_ENCUESTA.co_4;
    END;


END;
/

CREATE OR REPLACE PACKAGE BODY PA_ESTUDIANTE_2 IS

    PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR) IS
    BEGIN 
        PC_SERVICIO_BIENESTAR.ad_solicitudes(p_id_solicitud, p_fecha_solicitud, p_detalle, estado, p_id_servicio);
    END;

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.ad_encuesta(p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
    END;

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS

    BEGIN   
        PC_ENCUESTA.upd_encuesta(p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
    END;

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.del_encuesta(p_id_encuesta);
    END;

    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.co_encuesta(p_id_encuesta);
    END; 

    PROCEDURE co_3 IS
    BEGIN   
        PC_ENCUESTA.co_3;
    END;   
    
    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.ad_pregunta(p_fecha_inicio, p_estado, p_reacciones, p_encuesta, p_detalle);
    END;

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.upd_pregunta(p_estado, p_reacciones, p_encuesta, p_detalle);
    END;

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.del_pregunta(p_encuesta, p_detalle);
    END;

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.co_pregunta(p_encuesta);
    END;

    PROCEDURE co_4 IS
    BEGIN   
        PC_ENCUESTA.co_4;
    END;

END;
/
 
CREATE OR REPLACE PACKAGE BODY PA_PROFESOR_2 IS

    PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR) IS
    BEGIN 
        PC_SERVICIO_BIENESTAR.ad_solicitudes(p_id_solicitud, p_fecha_solicitud, p_detalle, estado, p_id_servicio);
    END;

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.ad_encuesta(p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
    END;

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS

    BEGIN   
        PC_ENCUESTA.upd_encuesta(p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
    END;

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.del_encuesta(p_id_encuesta);
    END;

    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.co_encuesta(p_id_encuesta);
    END; 

    PROCEDURE co_3 IS
    BEGIN   
        PC_ENCUESTA.co_3;
    END;   
    
    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.ad_pregunta(p_fecha_inicio, p_estado, p_reacciones, p_encuesta, p_detalle);
    END;

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.upd_pregunta(p_estado, p_reacciones, p_encuesta, p_detalle);
    END;

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.del_pregunta(p_encuesta, p_detalle);
    END;

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.co_pregunta(p_encuesta);
    END;

    PROCEDURE co_4 IS
    BEGIN   
        PC_ENCUESTA.co_4;
    END;

END;
/
CREATE OR REPLACE PACKAGE BODY PA_PERSONAL_AD_2 IS

    PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR) IS
    BEGIN 
        PC_SERVICIO_BIENESTAR.ad_solicitudes(p_id_solicitud, p_fecha_solicitud, p_detalle, estado, p_id_servicio);
    END;

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.ad_encuesta(p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
    END;

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR) IS

    BEGIN   
        PC_ENCUESTA.upd_encuesta(p_id_encuesta, p_titulo, p_descripcion, p_categoria, p_estado, p_fecha_creacion, p_evento);
    END;

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.del_encuesta(p_id_encuesta);
    END;

    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.co_encuesta(p_id_encuesta);
    END; 

    PROCEDURE co_3 IS
    BEGIN   
        PC_ENCUESTA.co_3;
    END;   
    
    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.ad_pregunta(p_fecha_inicio, p_estado, p_reacciones, p_encuesta, p_detalle);
    END;

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.upd_pregunta(p_estado, p_reacciones, p_encuesta, p_detalle);
    END;

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.del_pregunta(p_encuesta, p_detalle);
    END;

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR) IS
    BEGIN   
        PC_ENCUESTA.co_pregunta(p_encuesta);
    END;

    PROCEDURE co_4 IS
    BEGIN   
        PC_ENCUESTA.co_4;
    END;

END;
/
  
     