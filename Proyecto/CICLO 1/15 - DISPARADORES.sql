/* Triggers / Disparadores*/

--Restricciones de Modificaciones

--Solo se puede modificar el correo en la tabla Personas

CREATE OR REPLACE TRIGGER TR_MOD_PERSONA
BEFORE UPDATE ON Persona
FOR EACH ROW
DECLARE
BEGIN
    IF :NEW.correo IS NOT NULL AND (:OLD.nid != :NEW.nid OR :OLD.tid != :NEW.tid OR :OLD.nombre != :NEW.nombre OR :OLD.codigo != :NEW.codigo) THEN

        RAISE_APPLICATION_ERROR(-20001, 'Solo se puede modificar el correo');
    ELSIF :NEW.correo IS NULL AND (:OLD.correo != :NEW.correo) THEN
        RAISE_APPLICATION_ERROR(-20002, 'El atributo "correo" no puede ser nulo.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20002, 'Solo se puede modificar el correo');
END;
/

--El estado de una actividad es cerrado si su fecha de fin ya "paso"

CREATE OR REPLACE TRIGGER TR_ESTADO_ACTIVIDAD
BEFORE UPDATE ON Actividad
FOR EACH ROW
DECLARE
BEGIN
    IF :old.fecha_fin < SYSDATE THEN
        :new.estado := 'Cerrada';
    ELSIF :old.fecha_fin > SYSDATE AND  :new.estado = 'Cerrada' THEN
        RAISE_APPLICATION_ERROR(-20002, 'La fecha fin de la actividad aún no pasado');
    END IF;
END;
/
-- Solo se puede modificar participantes si su fecha de fin de la actividad no ha pasado

CREATE OR REPLACE TRIGGER TR_PART_ACT
BEFORE UPDATE ON Actividad
FOR EACH ROW
DECLARE
BEGIN
    IF :old.fecha_fin > SYSDATE THEN
        :new.asistentes := :new.asistentes;
    ELSIF :old.fecha_fin < SYSDATE AND :new.asistentes <> :old.asistentes THEN
        RAISE_APPLICATION_ERROR(-20002, 'Solo se puede modificar participantes si su fecha de fin de la actividad no ha pasado');
    END IF;
END;

--Restricciones de Eliminacion
/
--Solo se puede eliminar una suscripcion si su vigencia ya termino o si esta cancelada

CREATE OR REPLACE TRIGGER TR_VIGENCIA_SUSCRIPCION
BEFORE DELETE ON Suscripcion
FOR EACH ROW
DECLARE
BEGIN
    IF :old.vigencia > SYSDATE or :old.estado  IN ('Activa')  THEN
        RAISE_APPLICATION_ERROR(-20002, 'La vigencia de la Suscripcion sigue activa');
    END IF;
END;

--Restricciones de insert 
/
CREATE OR REPLACE TRIGGER TR_INSERTSUSCRIPCION
BEFORE INSERT ON SUSCRIPCION
FOR EACH ROW
DECLARE
estado_actividad varchar(15);
BEGIN
    --Solo se pueden insertar suscripciones a actividades que no hayan finalizado
    SELECT estado into estado_actividad FROM Actividad WHERE evento = :new.actividad;
    
    IF estado_actividad in ('Cerrada') THEN
        RAISE_APPLICATION_ERROR(-20001, 'No se puede suscribir a una actividad que ya haya finalizado');
    END IF;
END;
-- Automatizacion de datos minimos 
/
--Actividad 

CREATE OR REPLACE TRIGGER TR_AUTO_ACTIVIDAD
BEFORE INSERT ON Actividad
FOR EACH ROW
DECLARE
BEGIN
    IF :new.fecha_fin < SYSDATE THEN
        :new.estado := ('Cerrada');
    END IF;
END;
/
--Automatizacion de datos de eventos

CREATE OR REPLACE TRIGGER TR_AUTO_EVENTOS
BEFORE INSERT ON Evento
FOR EACH ROW
DECLARE
letra_inicial VARCHAR(1);
letras_finales VARCHAR(3);
fecha_codigo VARCHAR(8);
BEGIN
    --Automatizamos la fecha de la creacion del evento con SYSDATE
    :new.fecha_creacion := SYSDATE;

    --Se genera el numero aleatorio de 6 digitos
    letras_finales := substr(:new.descripcion,1,3);

    --Se asigna la letra inicial del codigo
    letra_inicial := substr(:new.nombre,2,1);

    --Se convierte la fecha en string eliminando los '-'
    fecha_codigo := REPLACE(TO_CHAR(:new.fecha_creacion, 'YYYYMMDD'), '-', '');

    --Se ingresa la concatenacion de las variables que conforma el codigo
    :new.id_evento := letra_inicial || ''|| fecha_codigo || '' || letras_finales;

    DBMS_OUTPUT.PUT_LINE(:new.id_evento);
END;
 /
--Automatizacion de datos de Estudiante

CREATE OR REPLACE TRIGGER TR_AUTO_ESTUDIANTE
BEFORE INSERT ON Estudiante
FOR EACH ROW
DECLARE
BEGIN
-- Si el ciclo educativo es preuniversitario, el semestre quedara como NULL, y el area_educativa como 'No disponible'
    IF :new.ciclo_estudiantil IN('Preuniversitario') THEN
    :new.semestre := NULL;
    :new.area_educativa := 'No disponible';
    END IF;
-- Si el ciclo educativo es posgrado, el semestre estara limitado de 1 hasta 7   
    IF :new.ciclo_estudiantil = 'Posgrado' THEN
        IF :new.semestre < 1 OR :new.semestre > 7 THEN
            RAISE_APPLICATION_ERROR(-20001, 'El semestre debe estar entre 1 y 7 para estudiantes de posgrado.');
        END IF;
    END IF;
END;
/
--Automatizacion de datos de suscripcion

CREATE OR REPLACE TRIGGER TR_AUTO_SUSCRIPCION
BEFORE INSERT ON Suscripcion
FOR EACH ROW
DECLARE
nueva_vigencia VARCHAR(8);
BEGIN
    --Se automatiza el estado de la suscripcion
    :new.estado := ('Activa');

    --Se automatiza la fecha de solicitud
    :new.fecha_solicitud := SYSDATE;

    --Se automatiza la fecha de vigencia (serÃƒÂ¡ hasta un dia despues de la fecha final de la actividad)
    SELECT fecha_fin INTO nueva_vigencia FROM actividad WHERE evento = :new.actividad;
    :new.vigencia := nueva_vigencia;
END;
/
CREATE OR REPLACE TRIGGER TR_AUTO_SUSCRIPCION2
BEFORE INSERT ON Suscripcion
FOR EACH ROW
DECLARE
es_nulo VARCHAR(20);
CONSECUTIVO NUMBER;
BEGIN
  -- Realiza la consulta
  SELECT DISTINCT actividad   
  INTO es_nulo
  FROM Suscripcion
  WHERE actividad = :new.actividad;
  
  -- Si la consulta no devuelve ningún resultado, la excepción NO_DATA_FOUND se levantará.
  -- asignamos explícitamente NULL a la variable.
  
  SELECT MAX(idsolicitud)+1 INTO CONSECUTIVO FROM Suscripcion WHERE actividad = :new.actividad;
        :new.idsolicitud := CONSECUTIVO;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    :new.idSolicitud := 1;
    -- Se automatiza el id_de suscripcion  
END;
/
--Automatizacion de datos de noticia

CREATE OR REPLACE TRIGGER TR_AUTO_NOTICIA
BEFORE INSERT ON Noticia
FOR EACH ROW
DECLARE
letra_inicial VARCHAR(1);
fecha VARCHAR(8);
letras_finales VARCHAR(3);
BEGIN
    --Se automatiza la fecha de creacion de la noticia 
    :new.fecha_creacion := SYSDATE;

    --Se automatiza el id de la noticia 
    --Se toma la letra inicial del titulo
    letra_inicial := substr(:new.titulo,1,1);

    --Se toma la fecha de creacion de la notiica 
    fecha := REPLACE(TO_CHAR(:new.fecha_creacion, 'DDMMYYYY'), '-', '');

    --Se toman las letras de la descripion
    letras_finales := substr(:new.descripcion,1,3);

    --Se unen las variables para formar el id de la noticia
    :new.id_noticia := letra_inicial || fecha || letras_finales;
END;
/
--Automatizacion de datos de Comentario_noticia

CREATE OR REPLACE TRIGGER TR_AUTO_COMENTARIO_NOTICIA
BEFORE INSERT ON Comentario_Noticia
FOR EACH ROW
DECLARE
BEGIN
    :new.fecha := SYSDATE;
END;
