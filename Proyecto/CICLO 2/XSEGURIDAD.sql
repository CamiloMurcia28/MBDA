--XSEGURIDAD--
--Realizamos la eliminacion de los roles 

--Eliminar el rol Directivo_rol
DROP ROLE Directivo_rol_RE;

--Eliminar el rol Estudiante_rol
DROP ROLE Estudiante_rol_RE;

--Eliminar el rol Profesor_rol
DROP ROLE Profesor_rol_RE;

--Eliminar el rol Personal_adicional_rol
DROP ROLE Personal_adicional_rol_RE;

--Eliminaos los paquetes de ROLES

--Eliminar el p_rol Directivo_rol

DROP PACKAGE BODY PA_DIRECTIVO_2;
DROP PACKAGE PA_DIRECTIVO_2;

--Eliminar el p_rol Estudiante_rol

DROP PACKAGE BODY PC_ESTUDIANTE_2;
DROP PACKAGE PC_ESTUDIANTE_2;

--Eliminar el p_rol Profesor_rol

DROP PACKAGE BODY PC_PROFESOR_2;
DROP PACKAGE PC_PROFESOR_2;

--Eliminar el p_rol Personal_adicional_rol

DROP PACKAGE BODY PC_PERSONAL_AD_2;
DROP PACKAGE PC_PERSONAL_AD_2;