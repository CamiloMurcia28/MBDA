--SEGURIDAD

CREATE ROLE Directivo_Rol_RE;
CREATE ROLE Estudiante_Rol_RE;
CREATE ROLE Profesor_Rol_RE;
CREATE ROLE Personal_adicional_Rol_RE;

GRANT execute ON PA_DIRECTIVO TO Directivo_rol_RE;
GRANT execute ON PA_ESTUDIANTE TO Estudiante_rol_RE;
GRANT execute ON PA_PROFESOR TO Profesor_rol_RE;
GRANT execute ON PA_PERSONAL_AD TO Personal_adicional_rol_RE;