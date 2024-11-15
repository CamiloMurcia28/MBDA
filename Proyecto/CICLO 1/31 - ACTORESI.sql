CREATE OR REPLACE PACKAGE BODY PA_DIRECTIVO IS
    PROCEDURE co_5 IS
    BEGIN 
        PC_NOTICIA.co_5;
    END;
    
    PROCEDURE ad_evento(p_id_evento IN VARCHAR, p_nombre IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_tipo IN VARCHAR) IS
    BEGIN 
        PC_EVENTO.ad(p_id_evento, p_nombre, p_fecha_creacion, p_descripcion, p_tipo);
    END;

    PROCEDURE upd_evento(p_id_evento IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_tipo IN VARCHAR) IS
    BEGIN 
        PC_EVENTO.upd(p_id_evento, p_nombre, p_descripcion, p_tipo);
    END;

    PROCEDURE del_evento(p_id_evento IN VARCHAR) IS
    BEGIN
        PC_EVENTO.del_evento(p_id_evento);
    END;

    PROCEDURE ad_noticia(p_id_noticia IN VARCHAR, p_titulo IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_autor IN VARCHAR) IS
    BEGIN
        PC_NOTICIA.ad_noticia(p_id_noticia, p_titulo, p_fecha_creacion, p_descripcion, p_autor);
    END;

    PROCEDURE upd_noticia(p_id_noticia IN VARCHAR, p_titulo IN VARCHAR, p_fecha_creacion IN DATE, p_descripcion IN VARCHAR, p_autor IN VARCHAR) IS
    BEGIN   
        PC_NOTICIA.upd_noticia(p_id_noticia, p_titulo, p_fecha_creacion , p_descripcion, p_autor);
    END;

    PROCEDURE del_noticia(p_id_noticia IN VARCHAR) IS
    BEGIN 
        PC_NOTICIA.del_noticia(p_id_noticia);
    END;

    PROCEDURE ad_actividad(p_evento IN VARCHAR, p_fecha_inicio IN DATE, p_fecha_fin IN DATE, p_estado IN VARCHAR, p_asistentes IN NUMBER) IS
    BEGIN
        PC_EVENTO.ad_actividad(p_evento, p_fecha_inicio, p_fecha_fin , p_estado , p_asistentes);
    END;

    PROCEDURE upd_actividad(p_evento IN VARCHAR, p_fecha_inicio IN DATE, p_fecha_fin IN DATE, p_estado IN VARCHAR, p_asistentes IN NUMBER) IS
    BEGIN
        PC_EVENTO.upd_actividad(p_evento, p_fecha_inicio, p_fecha_fin, p_estado, p_asistentes);
    END;

    PROCEDURE del_actividad(p_evento IN VARCHAR) IS
    BEGIN
        PC_EVENTO.del_actividad(p_evento);
    END;

    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)IS
        BEGIN
        PC_EVENTO.ad_comentario_act(p_nid, p_tid, p_actividad, p_detalle);
    END;
        
    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)IS
        BEGIN
        PC_EVENTO.upd_comentario_act(p_nid, p_tid, p_actividad, p_detalle);
    END;

    PROCEDURE del_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) IS
    BEGIN
        PC_EVENTO.del_comentario_act(p_nid, p_tid, p_actividad);
    END;

    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR) IS
    BEGIN
        PC_PERSONA.ad_suscripcion(p_nid, p_tid, p_actividad, p_fecha_solicitud, p_idSolicitud, p_vigencia, p_estado);
    END;

    PROCEDURE upd_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR) IS 
    BEGIN
        PC_PERSONA.upd_suscripcion(p_nid, p_tid, p_actividad, p_fecha_solicitud, p_idSolicitud, p_vigencia, p_estado);
    END;

    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR,        p_idSolicitud IN VARCHAR)IS
    BEGIN
        PC_PERSONA.del_suscripcion(p_nid, p_tid, p_actividad, p_idSolicitud);
    END;

    PROCEDURE ad_curso(p_id_curso IN VARCHAR, p_tipo IN VARCHAR, p_descripcion IN VARCHAR)IS
        BEGIN
        PC_CURSO.ad_curso(p_id_curso, p_tipo, p_descripcion);
    END;
    
    PROCEDURE upd_curso(p_id_curso IN VARCHAR, p_tipo IN VARCHAR, p_descripcion IN VARCHAR)IS
        BEGIN
        PC_CURSO.upd_curso(p_id_curso, p_tipo, p_descripcion);
    END;
    
    PROCEDURE del_curso(p_id_curso IN VARCHAR)IS
    BEGIN
        PC_CURSO.del_curso(p_id_curso);
    END;
    

    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR IS cu_eve_return  SYS_REFCURSOR;
    BEGIN
        cu_eve_return := PC_EVENTO.co_evento(p_id_evento);
            RETURN cu_eve_return;
    END;
    
    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR IS cu_act_return SYS_REFCURSOR;
    BEGIN
        cu_act_return := PC_EVENTO.co_actividad(p_evento);
            RETURN cu_act_return;
    END;

    FUNCTION co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_com_act_return SYS_REFCURSOR;
    BEGIN
        cu_com_act_return := PC_EVENTO.co_comentario_actividad(p_nid, p_tid , p_actividad);
            RETURN cu_com_act_return;
    END;

    FUNCTION  co_persona(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR 
    IS cu_per_return SYS_REFCURSOR;
    BEGIN
        cu_per_return := PC_PERSONA.co_persona(p_nid, p_nid);
            RETURN cu_per_return;
    END;

    FUNCTION  co_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_est_return SYS_REFCURSOR;
    BEGIN 
        cu_est_return := PC_PERSONA.co_estudiante(p_nid, p_nid);
            RETURN cu_est_return;
    END;

    FUNCTION  co_personal_ad(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_per_ad_return SYS_REFCURSOR;
    BEGIN 
        cu_per_ad_return := PC_PERSONA.co_personal_ad(p_nid, p_nid);
            RETURN cu_per_ad_return;
    END;

    FUNCTION  co_directivo(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_dir_return SYS_REFCURSOR;
    BEGIN 
        cu_dir_return := PC_PERSONA.co_directivo(p_nid, p_nid);
            RETURN cu_dir_return;
    END;

    FUNCTION  co_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_pro_return SYS_REFCURSOR;
    BEGIN
        cu_pro_return := PC_PERSONA.co_profesor(p_nid, p_nid);
            RETURN cu_pro_return;
    END;

    FUNCTION  co_telefonos_persona(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_tel_return SYS_REFCURSOR;
    BEGIN
        cu_tel_return := PC_PERSONA.co_telefonos_Persona(p_nid, p_nid);
            RETURN cu_tel_return;
    END;

    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_sus_return SYS_REFCURSOR;
    BEGIN
        cu_sus_return := PC_PERSONA.co_suscripcion(p_nid, p_nid, p_actividad);
            RETURN cu_sus_return;
    END;

    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_not_return SYS_REFCURSOR;
    BEGIN
        cu_not_return := PC_NOTICIA.co_noticia(p_id_noticia);
            RETURN cu_not_return;
    END;

    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_com_not_return SYS_REFCURSOR;
    BEGIN
        cu_com_not_return := PC_NOTICIA.co_comentario_noticia(p_nid,p_tid,p_noticia);
            RETURN cu_com_not_return;
    END;

    FUNCTION  co_curso(p_id_curso IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_cur_return SYS_REFCURSOR;
    BEGIN
        cu_cur_return := PC_CURSO.co_curso(p_id_curso);
            RETURN cu_cur_return;
    END;

    FUNCTION  co_curso_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_cur_pro_return SYS_REFCURSOR;
    BEGIN
        cu_cur_pro_return := PC_CURSO.co_curso_profesor(p_nid, p_tid);
            RETURN cu_cur_pro_return;
    END;

END PA_DIRECTIVO;
/

CREATE OR REPLACE PACKAGE BODY PA_ESTUDIANTE IS
    PROCEDURE co_4 IS
    BEGIN
         PC_PERSONA.co_4;
    END;
        
    PROCEDURE co_2 IS
    BEGIN
        PC_EVENTO.co_2;
    END; 
    
    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)IS
        BEGIN
        PC_EVENTO.ad_comentario_act(p_nid, p_tid, p_actividad, p_detalle);
    END;
        
    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)IS
        BEGIN
        PC_EVENTO.upd_comentario_act(p_nid, p_tid, p_actividad, p_detalle);
    END;
    
    PROCEDURE ad_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR,p_fecha IN DATE)IS
        BEGIN
        PC_NOTICIA.ad_comentario_noticia(p_nid, p_tid, p_notica, p_detalle,p_fecha);
    END;
    
    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR,p_idSolicitud IN VARCHAR)IS
        BEGIN
        PC_PERSONA.del_suscripcion(p_nid, p_tid, p_actividad, p_idSolicitud);
    END;

    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR IS cu_eve_return  SYS_REFCURSOR;
    BEGIN
        cu_eve_return := PC_EVENTO.co_evento(p_id_evento);
            RETURN cu_eve_return;
    END;
    
    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR IS cu_act_return SYS_REFCURSOR;
    BEGIN
        cu_act_return := PC_EVENTO.co_actividad(p_evento);
            RETURN cu_act_return;
    END;

    FUNCTION co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_com_act_return SYS_REFCURSOR;
    BEGIN
        cu_com_act_return := PC_EVENTO.co_comentario_actividad(p_nid, p_tid , p_actividad);
            RETURN cu_com_act_return;
    END;

    FUNCTION  co_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_est_return SYS_REFCURSOR;
    BEGIN
        cu_est_return := PC_PERSONA.co_estudiante(p_nid, p_nid);
            RETURN cu_est_return;
    END;

    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_sus_return SYS_REFCURSOR;
    BEGIN
        cu_sus_return := PC_PERSONA.co_suscripcion(p_nid, p_nid, p_actividad);
            RETURN cu_sus_return;
    END;

    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_not_return SYS_REFCURSOR;
    BEGIN
        cu_not_return := PC_NOTICIA.co_noticia(p_id_noticia);
            RETURN cu_not_return;
    END;

    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_com_not_return SYS_REFCURSOR;
    BEGIN
        cu_com_not_return := PC_NOTICIA.co_comentario_noticia(p_nid,p_tid,p_noticia);
            RETURN cu_com_not_return;
    END;

    FUNCTION  co_curso(p_id_curso IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_cur_return SYS_REFCURSOR;
    BEGIN
        cu_cur_return := PC_CURSO.co_curso(p_id_curso);
            RETURN cu_cur_return;
    END;

    FUNCTION  co_curso_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_cur_pro_return SYS_REFCURSOR;
    BEGIN
        cu_cur_pro_return := PC_CURSO.co_curso_profesor(p_nid, p_tid);
            RETURN cu_cur_pro_return;
    END;

    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR) IS
    BEGIN
        PC_PERSONA.ad_suscripcion(p_nid, p_tid, p_actividad, p_fecha_solicitud, p_idSolicitud, p_vigencia, p_estado);
    END;

END PA_ESTUDIANTE;
/

CREATE OR REPLACE PACKAGE BODY PA_PROFESOR IS
    PROCEDURE co_1 IS
    BEGIN
        PC_EVENTO.co_1;
    END;
    
    PROCEDURE co_6 IS
    BEGIN
        PC_CURSO.co_6;
    END;
    
    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)IS
        BEGIN
        PC_EVENTO.ad_comentario_act(p_nid, p_tid, p_actividad, p_detalle);
        END;
        
    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)IS
        BEGIN
        PC_EVENTO.upd_comentario_act(p_nid, p_tid, p_actividad, p_detalle);
        END;
    
    
    PROCEDURE ad_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR,p_fecha IN DATE)IS
        BEGIN
        PC_NOTICIA.ad_comentario_noticia(p_nid, p_tid, p_notica, p_detalle,p_fecha);
    END;
    
    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR,p_idSolicitud IN VARCHAR)IS
        BEGIN
        PC_PERSONA.del_suscripcion(p_nid, p_tid, p_actividad, p_idSolicitud);
        END;

    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR IS cu_eve_return  SYS_REFCURSOR;
    BEGIN
        cu_eve_return := PC_EVENTO.co_evento(p_id_evento);
            RETURN cu_eve_return;
    END;
    
    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR IS cu_act_return SYS_REFCURSOR;
    BEGIN
        cu_act_return := PC_EVENTO.co_actividad(p_evento);
            RETURN cu_act_return;
    END;

    FUNCTION co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_com_act_return SYS_REFCURSOR;
    BEGIN
        cu_com_act_return := PC_EVENTO.co_comentario_actividad(p_nid, p_tid , p_actividad);
            RETURN cu_com_act_return;
    END;

    FUNCTION  co_estudiante(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_est_return SYS_REFCURSOR;
    BEGIN
        cu_est_return := PC_PERSONA.co_estudiante(p_nid, p_nid);
            RETURN cu_est_return;
    END;

    FUNCTION  co_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_pro_return SYS_REFCURSOR;
    BEGIN
        cu_pro_return := PC_PERSONA.co_profesor(p_nid, p_nid);
            RETURN cu_pro_return;
    END;

    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_sus_return SYS_REFCURSOR;
    BEGIN
        cu_sus_return := PC_PERSONA.co_suscripcion(p_nid, p_nid, p_actividad);
            RETURN cu_sus_return;
    END;

    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_not_return SYS_REFCURSOR;
    BEGIN
        cu_not_return := PC_NOTICIA.co_noticia(p_id_noticia);
            RETURN cu_not_return;
    END;

    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_com_not_return SYS_REFCURSOR;
    BEGIN
        cu_com_not_return := PC_NOTICIA.co_comentario_noticia(p_nid,p_tid,p_noticia);
            RETURN cu_com_not_return;
    END;

    FUNCTION  co_curso(p_id_curso IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_cur_return SYS_REFCURSOR;
    BEGIN
        cu_cur_return := PC_CURSO.co_curso(p_id_curso);
            RETURN cu_cur_return;
    END;

    FUNCTION  co_curso_profesor(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_cur_pro_return SYS_REFCURSOR;
    BEGIN
        cu_cur_pro_return := PC_CURSO.co_curso_profesor(p_nid, p_tid);
            RETURN cu_cur_pro_return;
    END;

    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR) IS
    BEGIN
        PC_PERSONA.ad_suscripcion(p_nid, p_tid, p_actividad, p_fecha_solicitud, p_idSolicitud, p_vigencia, p_estado);
    END;

END PA_PROFESOR;

/
CREATE OR REPLACE PACKAGE BODY PA_PERSONAL_AD IS
    PROCEDURE co_3 IS
    BEGIN
        PC_EVENTO.co_3;
    END;
        
    PROCEDURE ad_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)IS
        BEGIN
        PC_EVENTO.ad_comentario_act(p_nid, p_tid, p_actividad, p_detalle);
    END;
        
    PROCEDURE upd_comentario_act(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_detalle IN VARCHAR)IS
        BEGIN
        PC_EVENTO.upd_comentario_act(p_nid, p_tid, p_actividad, p_detalle);
    END;
    
    PROCEDURE ad_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_notica IN VARCHAR, p_detalle IN VARCHAR,p_fecha IN DATE)IS
        BEGIN
        PC_NOTICIA.ad_comentario_noticia(p_nid, p_tid, p_notica, p_detalle,p_fecha);
    END;

        
    PROCEDURE del_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR,p_idSolicitud IN VARCHAR)IS
        BEGIN
        PC_PERSONA.del_suscripcion(p_nid, p_tid, p_actividad, p_idSolicitud);
    END;
    
    FUNCTION  co_personal_ad(p_nid IN NUMBER, p_tid IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_per_ad_return SYS_REFCURSOR;
    BEGIN 
        cu_per_ad_return := PC_PERSONA.co_personal_ad(p_nid, p_nid);
            RETURN cu_per_ad_return;
    END;

    FUNCTION  co_evento(p_id_evento IN VARCHAR) RETURN SYS_REFCURSOR IS cu_eve_return  SYS_REFCURSOR;
    BEGIN
        cu_eve_return := PC_EVENTO.co_evento(p_id_evento);
            RETURN cu_eve_return;
    END;
    
    FUNCTION  co_actividad(p_evento IN VARCHAR) RETURN SYS_REFCURSOR IS cu_act_return SYS_REFCURSOR;
    BEGIN
        cu_act_return := PC_EVENTO.co_actividad(p_evento);
            RETURN cu_act_return;
    END;

    FUNCTION co_comentario_actividad(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_com_act_return SYS_REFCURSOR;
    BEGIN
        cu_com_act_return := PC_EVENTO.co_comentario_actividad(p_nid, p_tid , p_actividad);
            RETURN cu_com_act_return;
    END;

    FUNCTION  co_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_sus_return SYS_REFCURSOR;
    BEGIN
        cu_sus_return := PC_PERSONA.co_suscripcion(p_nid, p_nid, p_actividad);
            RETURN cu_sus_return;
    END;

    FUNCTION  co_noticia(p_id_noticia IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_not_return SYS_REFCURSOR;
    BEGIN
        cu_not_return := PC_NOTICIA.co_noticia(p_id_noticia);
            RETURN cu_not_return;
    END;

    FUNCTION  co_comentario_noticia(p_nid IN NUMBER, p_tid IN VARCHAR, p_noticia IN VARCHAR) RETURN SYS_REFCURSOR
    IS cu_com_not_return SYS_REFCURSOR;
    BEGIN
        cu_com_not_return := PC_NOTICIA.co_comentario_noticia(p_nid,p_tid,p_noticia);
            RETURN cu_com_not_return;
    END;

    PROCEDURE ad_suscripcion(p_nid IN NUMBER, p_tid IN VARCHAR, p_actividad IN VARCHAR, p_fecha_solicitud IN DATE, p_idSolicitud IN NUMBER,p_vigencia IN DATE, p_estado IN VARCHAR) IS
    BEGIN
        PC_PERSONA.ad_suscripcion(p_nid, p_tid, p_actividad, p_fecha_solicitud, p_idSolicitud, p_vigencia, p_estado);
    END;

END PA_PERSONAL_AD;
/
 

     