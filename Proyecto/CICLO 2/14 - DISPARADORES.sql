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

--Restricciones de insert 

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

CREATE OR REPLACE TRIGGER TR_AUTO_EST_SOLICITUD
BEFORE INSERT ON Solicitudes
FOR EACH ROW
BEGIN
 --El estado de una solicitud inicia como Abierta

    IF :new.estado IS NULL OR :new.estado <> 'Abierta' THEN
        :new.estado := ('Abierta');
    END IF;
    --  Si la fecha de solicitud es nula, se asigna un SYSDATE

    IF :new.fecha_solicitud IS NULL THEN
        :new.fecha_solicitud := SYSDATE;
    END IF;
END;

/

CREATE OR REPLACE TRIGGER TR_AUTO_EST_ENCUESTA
BEFORE INSERT ON Encuestas
FOR EACH ROW
BEGIN
 --El estado de una encuesta inicia como Activa 
    IF :new.estado IS NULL OR :new.estado <> 'Activa' THEN
        :new.estado := 'Activa';
    END IF;
--  Si la fecha de creacion es nula, se asigna un SYSDATE
    IF :new.fecha_creacion IS NULL THEN
        :new.fecha_creacion := SYSDATE;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER TR_MODIFICAR_ESTADO_PREGUNTAS
BEFORE UPDATE ON Preguntas
FOR EACH ROW
DECLARE
BEGIN
    --Solo se puede cambiar el estado y las reacciones de una pregunta
    :new.encuesta := :old.encuesta;
    :new.fecha_inicio := :old.fecha_inicio;
    IF :old.fecha_inicio IS NULL THEN
        :new.fecha_inicio := SYSDATE;
    END IF;
END;
/

--Restricciones de Eliminacion

--Solo se puede eliminar una solicitud si su estado es Cerrada.

CREATE OR REPLACE TRIGGER TR_VIGENCIA_SOLICITUD
BEFORE DELETE ON Solicitudes
FOR EACH ROW
DECLARE
BEGIN
    IF  :old.estado = 'Abierta' THEN
        RAISE_APPLICATION_ERROR(-20002, 'No se puede eliminar una solicitud Abierta');
    END IF;
END;
/
--Solo se puede eliminar una encuesta si su fecha de creacion fue hace mas de 1 año

CREATE OR REPLACE TRIGGER TR_ELIMINAR_ENCUESTAS
BEFORE DELETE ON Encuestas
FOR EACH ROW
DECLARE
BEGIN
    -- Verificar si la fecha de creación fue hace más de 1 año
    IF :old.fecha_creacion >  ADD_MONTHS(SYSDATE, -12) THEN
            RAISE_APPLICATION_ERROR(-20001, 'No se puede eliminar la encuesta. La fecha de creación debe ser hace más de 1 año.');
    END IF;
END;
/
