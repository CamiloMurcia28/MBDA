--SEGURIDAD
--Se toman los roles del ciclo 1 para darles permisos a estos nuevos paquetes de funciones

--CREATE ROLE Directivo_Rol_RE;
--CREATE ROLE Estudiante_Rol_RE;
--CREATE ROLE Profesor_Rol_RE;
--CREATE ROLE Personal_adicional_Rol_RE;

GRANT execute ON PA_DIRECTIVO_2 TO Directivo_rol_RE;
GRANT execute ON PA_ESTUDIANTE_2 TO Estudiante_rol_RE;
GRANT execute ON PA_PROFESOR_2 TO Profesor_rol_RE;
GRANT execute ON PA_PERSONAL_AD_2 TO Personal_adicional_rol_RE;
