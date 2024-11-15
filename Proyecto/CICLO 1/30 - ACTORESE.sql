/*ACTORESE*/

CREATE OR REPLACE PACKAGE PA_DIRECTIVO AS
    PROCEDURE co_5;
    
    PROCEDURE ad_evento(p_id_evento IN VARCHAR, p_nombre IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_tipo IN VARCHAR);
    
    PROCEDURE upd_evento(p_id_evento IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_tipo IN VARCHAR);
    
    PROCEDURE del_evento(p_id_evento IN VARCHAR);
    
    PROCEDURE ad_noticia(p_id_noticia IN VARCHAR, p_titulo IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_autor IN VARCHAR);
    
    PROCEDURE upd_noticia(p_id_noticia IN VARCHAR, p_titulo IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_autor IN VARCHAR);
    
    PROCEDURE del_noticia(p_id_noticia IN VARCHAR);
    
    PROCEDURE ad_actividad(p_evento IN VARCHAR, p_fecha_inicio IN DATE, p_fecha_fin IN DATE, p_estado IN VARCHAR, p_asistentes IN NUMBER);
    
    PROCEDURE upd_actividad(p_evento IN VARCHAR, p_fecha_inicio IN DATE, p_fecha_fin IN DATE, p_estado IN VARCHAR, p_asistentes IN NUMBER);
    
    PROCEDURE del_actividad(p_evento IN VARCHAR);

    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);
    
    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);
    
    PROCEDURE del_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR);
    
    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR);
    
    PROCEDURE upd_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR);
    
    PROCEDURE ad_curso(p_id_curso IN VARCHAR, p_tipo IN VARCHAR, p_descripcion IN VARCHAR);
    
    PROCEDURE upd_curso(p_id_curso IN VARCHAR, p_tipo IN VARCHAR, p_descripcion IN VARCHAR);

    PROCEDURE del_curso(p_id_curso IN VARCHAR);

    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_persona(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_personal_ad(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_directivo(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_telefonos_persona(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_curso(p_id_curso IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_curso_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;

END PA_DIRECTIVO;
/

CREATE OR REPLACE PACKAGE PA_ESTUDIANTE IS
    PROCEDURE co_4;
    
    PROCEDURE co_2;
    
    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);
    
    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);
    
    PROCEDURE ad_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR,p_fecha IN DATE);
    
    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR,p_idSolicitud IN VARCHAR);
    
    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_curso(p_id_curso IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_curso_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR);

END PA_ESTUDIANTE;
/

CREATE OR REPLACE PACKAGE PA_PROFESOR IS
    PROCEDURE co_1;
    
    PROCEDURE co_6;
    
    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);
    
    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);
    
    PROCEDURE ad_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR,p_fecha IN DATE);
    
    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR,p_idSolicitud IN VARCHAR);
    
    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_curso(p_id_curso IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_curso_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR);
END PA_PROFESOR;
/
CREATE OR REPLACE PACKAGE PA_PERSONAL_AD IS
    PROCEDURE co_3;
    
    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);
    
    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);
    
    PROCEDURE ad_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR,p_fecha IN DATE);
    
    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR,p_idSolicitud IN VARCHAR);
    
    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_personal_ad(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR;
    
    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR);
END PA_PERSONAL_AD;

     