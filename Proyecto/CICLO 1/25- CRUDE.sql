/*CRUDE*/

CREATE OR REPLACE PACKAGE PC_EVENTO IS
    PROCEDURE ad(p_id_evento IN VARCHAR, p_nombre IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_tipo IN VARCHAR);

    PROCEDURE upd(p_id_evento IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_tipo IN VARCHAR);

    PROCEDURE co_1;
    
    PROCEDURE del_evento(p_id_evento IN VARCHAR);

    PROCEDURE ad_actividad(p_evento IN VARCHAR, p_fecha_inicio IN DATE, p_fecha_fin IN DATE, p_estado IN VARCHAR, p_asistentes IN NUMBER);

    PROCEDURE upd_actividad(p_evento IN VARCHAR, p_fecha_inicio IN DATE, p_fecha_fin IN DATE, p_estado IN VARCHAR, p_asistentes IN NUMBER);

    PROCEDURE co_2;

    PROCEDURE co_3;

    PROCEDURE del_actividad(p_evento IN VARCHAR);

    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE del_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR);

    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;
END;
/
CREATE OR REPLACE PACKAGE PC_PERSONA AS
    PROCEDURE ad(p_nid IN NUMBER, p_tid IN VARCHAR, p_nombre IN VARCHAR, p_correo IN VARCHAR, p_codigo IN VARCHAR);
    
    PROCEDURE upd(p_nid IN NUMBER, p_tid IN VARCHAR, p_correo IN VARCHAR);
    
    PROCEDURE del_persona(p_nid IN NUMBER, p_tid IN VARCHAR);

    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR);
    
    PROCEDURE upd_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR);
    
    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_idSolicitud IN NUMBER);

    PROCEDURE co_4;

    PROCEDURE ad_profesor(p_nid IN NUMBER, p_tid IN VARCHAR, p_anos_experiencia IN NUMBER);

    PROCEDURE upd_profesor(p_nid IN NUMBER, p_tid IN VARCHAR, p_anos_experiencia IN NUMBER);
    
    PROCEDURE del_profesor(p_nid IN NUMBER, p_tid IN VARCHAR);
    
    PROCEDURE ad_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR, p_ciclo_estudiantil IN VARCHAR, p_area_educativa IN VARCHAR, p_semestre IN NUMBER);

    PROCEDURE upd_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR, p_ciclo_estudiantil IN VARCHAR, p_area_educativa IN VARCHAR, p_semestre IN NUMBER);

    PROCEDURE del_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR);

    PROCEDURE ad_personal_Ad(p_nid IN NUMBER, p_tid IN VARCHAR, p_cargo IN VARCHAR);
    
    PROCEDURE upd_personal_Ad(p_nid IN NUMBER, p_tid IN VARCHAR, p_cargo IN VARCHAR);
    
    PROCEDURE del_personal_Ad(p_nid IN NUMBER, p_tid IN VARCHAR);

    PROCEDURE ad_directivo(p_nid IN NUMBER, p_tid IN VARCHAR, p_area IN VARCHAR);

    PROCEDURE upd_directivo(p_nid IN NUMBER, p_tid IN VARCHAR, p_area IN VARCHAR);

    PROCEDURE del_directivo(p_nid IN NUMBER, p_tid IN VARCHAR);

    FUNCTION  co_persona(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;
    
    FUNCTION  co_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_personal_ad(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_directivo(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_telefonos_persona(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR;

END;
/
CREATE OR REPLACE PACKAGE PC_NOTICIA AS

    PROCEDURE ad_noticia(p_id_noticia IN VARCHAR, p_titulo IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_autor IN VARCHAR);
    
    PROCEDURE upd_noticia(p_id_noticia IN VARCHAR, p_titulo IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_autor IN VARCHAR);
    
    PROCEDURE del_noticia(p_id_noticia IN VARCHAR);

    PROCEDURE co_5;

    PROCEDURE ad_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR, p_fecha IN DATE);
    
    PROCEDURE del_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR, p_fecha IN DATE);

    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR;

END;
/
CREATE OR REPLACE PACKAGE PC_CURSO AS

    PROCEDURE ad_curso(p_id_curso IN VARCHAR, p_tipo IN VARCHAR, p_descripcion IN VARCHAR);

    PROCEDURE upd_curso(p_id_curso IN VARCHAR, p_tipo IN VARCHAR, p_descripcion IN VARCHAR);

    PROCEDURE del_curso(p_id_curso IN VARCHAR);

    PROCEDURE ad_curso_profesor(p_id_curso IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR);

    PROCEDURE del_curso_profesor(p_id_curso IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR);

    PROCEDURE co_6;

    FUNCTION  co_curso(p_id_curso IN VARCHAR) RETURN SYS_REFCURSOR;

    FUNCTION  co_curso_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR;

END;
/
