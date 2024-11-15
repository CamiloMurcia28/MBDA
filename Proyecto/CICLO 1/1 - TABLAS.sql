--TABLAS--
CREATE TABLE Persona(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    codigo VARCHAR(20) NOT NULL
);

CREATE TABLE Telefonos_Persona(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    telefono VARCHAR(30) NOT NULL
);

CREATE TABLE Profesor(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    anos_experiencia INT NOT NULL
);

CREATE TABLE Curso_Profesor(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    curso VARCHAR(7) NOT NULL
);

CREATE TABLE Curso(
    id_curso VARCHAR(7) NOT NULL,
    tipo VARCHAR(1) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE Estudiante(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    ciclo_estudiantil VARCHAR(50) NOT NULL,
    area_educativa VARCHAR(20) NOT NULL,
    semestre INT
);

CREATE TABLE Directivo(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    area VARCHAR(14) NOT NULL
);

CREATE TABLE Personal_Ad(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    cargo VARCHAR(13) NOT NULL
);

CREATE TABLE Noticia(
    id_noticia VARCHAR(20) NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    fecha_creacion DATE NOT NULL,
    descripcion VARCHAR(1000) NOT NULL,
    autor VARCHAR(50)
);

CREATE TABLE Comentario_Noticia(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    noticia VARCHAR(20) NOT NULL,
    detalle VARCHAR(400) NOT NULL,
    fecha DATE NOT NULL
);

CREATE TABLE Evento(
    id_evento VARCHAR(20) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fecha_creacion DATE NOT NULL, 
    descripcion VARCHAR(1000) NOT NULL,
    tipo VARCHAR(1) NOT NULL
);

CREATE TABLE Actividad(
    evento VARCHAR(20) NOT NULL,
    fecha_inicio DATE NOT NULL, 
    fecha_fin DATE NOT NULL, 
    asistentes INT NOT NULL, 
    estado VARCHAR(8) NOT NULL
);

CREATE TABLE Suscripcion(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    actividad VARCHAR(20) NOT NULL,
    idSolicitud INT NOT NULL,   
    fecha_solicitud DATE NOT NULL,
    vigencia DATE NOT NULL,
    estado VARCHAR(20) NOT NULL
);

CREATE TABLE Comentario_Actividad(
    nid INT NOT NULL,
    tid VARCHAR(3) NOT NULL,
    actividad VARCHAR(20) NOT NULL,
    detalle VARCHAR(400) NOT NULL
);
