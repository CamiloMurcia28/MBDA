--TABLAS--
CREATE TABLE Persona(
    nid NUMBER NOT NULL,
    tid VARCHAR(3) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    codigo VARCHAR(20) NOT NULL
);

CREATE TABLE Directivo(
    nid NUMBER NOT NULL,
    tid VARCHAR(3) NOT NULL,
    area VARCHAR(14) NOT NULL
);

CREATE TABLE Servicios_Binestar(
    id_servicio NUMBER NOT NULL,
    nombre VARCHAR(20)NOT NULL,
    descripcion VARCHAR(500)NOT NULL,
    ubicacion VARCHAR(50)NOT NULL,
    horario VARCHAR(100)NOT NULL,
    nid NUMBER NOT NULL,
    tid VARCHAR(3) NOT NULL
);

CREATE TABLE Clubes_Grupos(
    id_miembro VARCHAR(10)NOT NULL,
    id_club VARCHAR(20)NOT NULL,
    codigo_representante VARCHAR(20)NOT NULL,
    fecha_union DATE NOT NULL,
    id_servicio NUMBER NOT NULL, 
    nombre VARCHAR(30) NOT NULL 
);

CREATE TABLE Solicitudes(
    id_solicitud NUMBER NOT NULL,
    fecha_solicitud DATE NOT NULL,
    detalle VARCHAR(200) NOT NULL,
    estado VARCHAR(15) NOT NULL,
    id_servicio NUMBER NOT NULL
);

CREATE TABLE Evento(
    id_evento VARCHAR(20) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fecha_creacion DATE NOT NULL, 
    descripcion VARCHAR(200) NOT NULL,
    tipo VARCHAR(1) NOT NULL,
    nid NUMBER NOT NULL,
    tid VARCHAR(3) NOT NULL
);
CREATE TABLE Encuestas(
    id_encuesta NUMBER NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    descripcion VARCHAR(1000) NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    estado VARCHAR(15) NOT NULL,
    fecha_creacion DATE NOT NULL,
    evento VARCHAR(20) NOT NULL
);

CREATE TABLE Preguntas(
    fecha_inicio DATE NOT NULL,
    estado VARCHAR(15) NOT NULL,
    reacciones NUMBER, 
    encuesta NUMBER NOT NULL,
    detalle VARCHAR(500) NOT NULL
);

CREATE TABLE Telefonos_Persona(
    nid NUMBER NOT NULL,
    tid VARCHAR(3) NOT NULL,
    telefono VARCHAR(30) NOT NULL
);