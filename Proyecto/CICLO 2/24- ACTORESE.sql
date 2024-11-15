/*ACTORESE*/

CREATE OR REPLACE PACKAGE PA_DIRECTIVO_2 AS

	PROCEDURE ad_servicios_bienestar(p_id_servicios IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_ubicacion IN VARCHAR, p_horario IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR);

    PROCEDURE upd_servicios_bienestar(p_id_servicios IN VARCHAR, p_nombre IN VARCHAR, p_descripcion IN VARCHAR, p_ubicacion IN VARCHAR, p_horario IN VARCHAR, p_nid IN NUMBER, p_tid IN VARCHAR);

    PROCEDURE del_servicios_bienestar(p_id_servicios IN VARCHAR);
        
    PROCEDURE co_servicios_bienestar(p_id_servicios IN VARCHAR); 

    PROCEDURE ad_clubes_grupos(p_id_miembro IN VARCHAR, p_id_club IN VARCHAR, p_codigo_representante IN VARCHAR, p_fecha_union IN DATE, p_id_servicio IN VARCHAR,p_nombre IN VARCHAR);

    PROCEDURE upd_clubes_grupos(p_id_miembro IN VARCHAR, p_id_club IN VARCHAR, p_codigo_representante IN VARCHAR, p_id_servicio IN VARCHAR,p_nombre IN VARCHAR);

    PROCEDURE del_clubes_grupos(p_id_club IN VARCHAR);

    PROCEDURE co_clubes_grupos(p_id_club IN VARCHAR);

    PROCEDURE co_1;

    PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR);

    PROCEDURE upd_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR);

    PROCEDURE del_solicitudes(p_id_solicitud IN VARCHAR);

    PROCEDURE co_solicitudes(p_id_solicitud IN VARCHAR); 

    PROCEDURE co_2;

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR);

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR);

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR);
    
    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR);    

    PROCEDURE co_3;    

    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR );

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR);

    PROCEDURE co_4;

END;

/

CREATE OR REPLACE PACKAGE PA_ESTUDIANTE_2 AS

    PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR);

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR);

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR);

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR);

    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR);   

    PROCEDURE co_3;   
    
    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR);

    PROCEDURE co_4;

END;
/
CREATE OR REPLACE PACKAGE PA_PROFESOR_2 AS

    PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR);

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR);

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR);

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR);

    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR);   

    PROCEDURE co_3;   
    
    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR);

    PROCEDURE co_4;

END;
/
CREATE OR REPLACE PACKAGE PA_PERSONAL_AD_2 AS

    PROCEDURE ad_solicitudes(p_id_solicitud IN VARCHAR, p_fecha_solicitud IN DATE, p_detalle IN VARCHAR, estado IN VARCHAR, p_id_servicio IN VARCHAR);

    PROCEDURE ad_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR, p_fecha_creacion IN DATE, p_evento IN VARCHAR);

    PROCEDURE upd_encuesta(p_id_encuesta IN VARCHAR, p_titulo IN VARCHAR, p_descripcion IN VARCHAR, p_categoria IN VARCHAR, p_estado IN VARCHAR,p_fecha_creacion IN DATE, p_evento IN VARCHAR);

    PROCEDURE del_encuesta(p_id_encuesta IN VARCHAR);

    PROCEDURE co_encuesta(p_id_encuesta IN VARCHAR);   

    PROCEDURE co_3;   
    
    PROCEDURE ad_pregunta(p_fecha_inicio IN DATE, p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE upd_pregunta(p_estado IN VARCHAR, p_reacciones IN NUMBER, p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE del_pregunta(p_encuesta IN VARCHAR, p_detalle IN VARCHAR);

    PROCEDURE co_pregunta(p_encuesta IN VARCHAR);

    PROCEDURE co_4;

END;
/
