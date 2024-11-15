/* TUPLASOK */

INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1020423421', 'CC', 'Carlos Lopez', 'carloscortes3@gmail.com','4999932401');

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('1020423421', 'CC', 'Pregrado', 'Mecanica', 9);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1020423421', 'CC','3143546788');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('2020423421', 'CC', 'Carlos Ochoa', 'carloscortes4@gmail.com','5999932401');

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('2020423421', 'CC', 'Pregrado', 'Civil', 10);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('2020423421', 'CC','3143546345');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('3020423421', 'CC', 'Carlos Sosa', 'carloscortes5@gmail.com','6999932401');

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('3020423421', 'CC', 'Pregrado', 'Ambiental', 2);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('3020423421', 'CC', '3219735543');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('4958674564', 'NIP', 'Roberto Carlos', 'rc3445@gmail.com','1999922401');

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('4958674564', 'NIP', 'Pregrado', 'Sistemas', 1);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('4958674564', 'NIP', '3219734532');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1000323445', 'TI', 'Roberta Lopez', 'robertica09@hotmail.com','1231242234');

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('1000323445', 'TI', 'Posgrado', 'Economia', 2);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1000323445', 'TI', '3143453456');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1232345454', 'CC', 'Hilbert Julss', 'julss234@hotmail.com','HITOSDJ');

INSERT INTO Estudiante(nid, tid, ciclo_estudiantil, area_educativa, semestre) VALUES ('1232345454', 'CC', 'Posgrado', 'Economia', 2);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1232345454', 'CC', '3143453456');

--Se ven afectados por la restriccion de atributo CD_ESTUDIANTE_TSEMESTRE
--Se ven afectados por la restriccion de atributo AT_PERSONA_TCORREO

--Profesores--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('59421442', 'CC', 'Carlos Cortes', 'carloscortes@gmail.com','1999932401');

INSERT INTO Profesor (nid, tid, anos_experiencia) VALUES ('59421442', 'CC', 6);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('59421442', 'CC','3163456789');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('59421482', 'CE', 'Carlos Vargas', 'carloscortes1@gmail.com','2999932401');

INSERT INTO Profesor (nid, tid, anos_experiencia) VALUES ('59421482', 'CE', 5);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('59421482', 'CE','3193546788');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('59499442', 'CC', 'Carlos Goty', 'carloscortes2@gmail.com','3999932401');

INSERT INTO Profesor (nid, tid, anos_experiencia) VALUES ('59499442', 'CC', 3);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('59499442', 'CC','3133546788');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('7893453457', 'CE', 'Pedro Rodriguez', 'pedrorodriguez@yahoo.com', 'ghi789');

INSERT INTO Profesor (nid, tid, anos_experiencia) VALUES ('7893453457', 'CE', 9);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('7893453457', 'CE','3173546788');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1007498545', 'CE', 'Kevin Casallas', 'kevinprofeuni@yahoo.com', '78893423');

INSERT INTO Profesor (nid, tid, anos_experiencia) VALUES ('1007498545', 'CE', 2);

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1007498545', 'CE','3104433434');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1007498545', 'CE','3104564323');

--Se ven afectados por la restriccion de atributo AT_PERSONA_TCORREO


--Personal Adicional--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('19421442', 'CC', 'Carlos Martinez', 'carloscortes6@gmail.com','7999932401');

INSERT INTO Personal_Ad(nid, tid, cargo) VALUES('19421442', 'CC', 'Otro');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('19421442', 'CC', '3108945345');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('4563453546', 'CC', 'Maria Lopez', 'marialopez@hotmail.com', 'def456');

INSERT INTO Personal_Ad(nid, tid, cargo) VALUES('4563453546', 'CC', 'Otro');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('4563453546', 'CC', '3089745345');

--Se ven afectados por la restriccion de atributo AT_PERSONA_TCORREO

--Directivos--
INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1013453458', 'NIP', 'Ana Martinez', 'anamartinez@gmail.com', 'jkl101');

INSERT INTO Directivo (nid, tid, area) VALUES ('1013453458', 'NIP', 'Academica');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1013453458', 'NIP', '3108973645');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1013453458', 'NIP', '3118503043');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1023453458', 'PAP', 'Luisa Perez', 'luisaperez@gmail.com', 'mno102');

INSERT INTO Directivo (nid, tid, area) VALUES ('1023453458', 'PAP', 'Academica');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1023453458', 'PAP', '3215748367');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1023453458', 'PAP', '3235740367');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('1032345235', 'CC', 'Santiago Gomez', 'santiagogomez@outlook.com', 'pqr103');

INSERT INTO Directivo (nid, tid, area) VALUES ('1032345235', 'CC', 'Administrativa');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1032345235', 'CC', '3105748367');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('1032345235', 'CC', '3105740367');


INSERT INTO Persona(nid, tid, nombre, correo, codigo) VALUES ('33421442', 'CE', 'Carlos Jimenez', 'carloscortes7@gmail.com','8999932401');

INSERT INTO Directivo (nid, tid, area) VALUES ('33421442', 'CE', 'Administrativa');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('33421442', 'CE', '3107865763');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('33421442', 'CE', '3107865723');

INSERT INTO Telefonos_Persona(nid, tid, telefono) VALUES ('33421442', 'CE', '3107865713');

--Se ven afectados por la restriccion de atributo AT_PERSONA_TCORREO

--Eventos--
INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('o20220402Eje', 'Torneo Basketball', '02-04-2022','Ejemplo de descripcion', '1');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('o20230416Con', 'Conferencia de inteligencia artificial', '16-04-2023', 'Conferencia para discutir los avances en inteligencia artificial.', '3');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('e20230504Exp', 'Feria de Tecnología', '04-05-2023', 'Exposición de tecnología innovadora', '3');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('020220115Eve', 'Conferencia de Negocios', '15-01-2022', 'Evento para emprendedores y empresarios', '3');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('e20230601Con', 'Festival de Música', '01-06-2023', 'Concierto de artistas locales e internacionales', '2');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('o20230404Eje', 'Torneo Volleyball', '04-04-2023','Ejemplo de descripcion', '1');

INSERT INTO Evento(id_evento, nombre, fecha_creacion, descripcion, tipo) VALUES ('o03042023Com', 'Torneo matematica', '03-04-2023','Competicion de resolucion de problemas matematicos hasta nivel de calculo integral', '3');

--Se ven afectados por la restriccion de atributo AT_EVENTO_TCODIGOEVENTO.

--Actividades--
INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('o20220402Eje', '04-01-2022', '04-02-2022', 100,'Cerrada');

INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('o20230416Con', '20-05-2023', '22-05-2023', 0, 'Abierta');

INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('e20230504Exp', '10-05-2023', '11-06-2023', 0, 'Abierta');

INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('020220115Eve', '25-02-2022', '27-02-2022', 60, 'Cerrada');

INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('e20230601Con', '15-06-2023', '18-06-2023', 0, 'Abierta');

INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('o20230404Eje', '24-04-2023', '24-05-2023', 0, 'Abierta');

INSERT INTO Actividad(evento, fecha_inicio, fecha_fin, asistentes, estado) VALUES ('o03042023Com', '24-04-2023', '24-05-2023', 0, 'Abierta');

--Se ven afectados por la restriccion de atributo AT_ACTIVIDAD_FECHA

--Comentarios actividad--
INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1020423421', 'CC','o20220402Eje', '¡Increíble experiencia en el torneo de baloncesto universitario! Me encantó ver a nuestros jugadores en acción y sentir el ambiente de competencia. ¡Felicidades a todos los equipos por su desempeño!');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('19421442', 'CC','o20220402Eje', 'No puedo creer que nuestro equipo haya perdido en el torneo de baloncesto universitario. Fue una gran decepción. ¿Qué salió mal? Necesitamos mejorar nuestra defensa para el próximo año. ¡Ánimo!');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('59421442', 'CC','o20220402Eje', 'El torneo de baloncesto universitario estuvo mal organizado. Había una falta de comunicación y los horarios de los partidos se cambiaban constantemente. Además, la venta de boletos fue caótica. Espero que tomen medidas para mejorar en el futuro.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('59421442', 'CC','o20220402Eje', 'Quiero agradecer a todos los equipos que participaron en el torneo de baloncesto universitario. Fue una competencia intensa y todos los jugadores demostraron habilidad y deportividad. Felicidades al equipo ganador, se lo merecen. Fue una gran experiencia para todos nosotros.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1020423421', 'CC', 'o20230416Con', '¡Increíble experiencia en el torneo de baloncesto universitario! Me encantó ver a nuestros jugadores en acción y sentir el ambiente de competencia. ¡Felicidades a todos los equipos por su desempeño!');


INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('4958674564', 'NIP', 'o20230416Con', '¿Cuál será el enfoque principal de la Conferencia de Inteligencia Artificial? ¿Habrá sesiones específicas para estudiantes que quieran aprender más sobre esta área?');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('7893453457', 'CE', 'o20230416Con', 'Me gustaría saber si habrá talleres prácticos durante la Conferencia de Inteligencia Artificial. ¿Tendremos la oportunidad de aplicar los conocimientos teóricos en ejercicios prácticos?');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1232345454', 'CC', 'o20230416Con', '¿Habrá oportunidades de networking en la Conferencia de Inteligencia Artificial? Me encantaría conectar con otros estudiantes y profesionales que compartan mi interés en esta disciplina.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('59421442', 'CC', 'o20230416Con', '¿Quiénes serán los ponentes destacados en la Conferencia de Inteligencia Artificial? ¿Tendremos la oportunidad de escuchar a expertos reconocidos en el campo?');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('3020423421', 'CC', 'o20230416Con', 'Estoy interesado en asistir a la Conferencia de Inteligencia Artificial, pero no estoy seguro si se requiere algún nivel de conocimiento previo en el tema. ¿Es adecuado para principiantes o está más enfocado en personas con experiencia en el campo?');


INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('59499442', 'CC', 'e20230504Exp', '¿Cuál será la fecha exacta de la Feria Tecnológica? Estoy emocionado por participar y quiero asegurarme de estar disponible para asistir.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('2020423421', 'CC', 'e20230504Exp', '¡Estoy ansioso por presentar mi proyecto en la Feria Tecnológica! Espero recibir comentarios y aprender de otros estudiantes y profesores.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('7893453457', 'CE', 'e20230504Exp', 'Me complace ver el enfoque de la Feria Tecnológica en áreas emergentes como la inteligencia artificial y la robótica. Será una oportunidad valiosa para promover el conocimiento en estos campos.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1020423421', 'CC', 'e20230504Exp', '¿Habrá oportunidades de colaboración en la Feria Tecnológica? Me gustaría trabajar en conjunto con otros estudiantes para ampliar nuestras ideas y crear proyectos innovadores.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('59421482', 'CE', 'e20230504Exp', 'Felicitaciones a los organizadores de la Feria Tecnológica por su dedicación y esfuerzo en la planificación del evento. Espero que sea un gran éxito y que beneficie a toda la comunidad universitaria.');


INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1000323445', 'TI', '020220115Eve', '¿Cuál será el tema principal de la Conferencia de negocios para emprendedores? Estoy ansioso por aprender y obtener información valiosa para mis futuros proyectos.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('59421442', 'CC', '020220115Eve', 'Felicito a los organizadores de la Conferencia de negocios para emprendedores. Es una excelente oportunidad para fomentar el espíritu emprendedor entre nuestros estudiantes y la comunidad universitaria.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1023453458', 'PAP', '020220115Eve', 'Me complace ver el nivel de los ponentes que participarán en la Conferencia de negocios para emprendedores. Será una experiencia enriquecedora para todos los asistentes.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1232345454', 'CC', '020220115Eve', '¿Se ofrecerán talleres prácticos durante la Conferencia de negocios para emprendedores? Me gustaría adquirir habilidades concretas para aplicar en mis futuros emprendimientos.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('59421442', 'CC', '020220115Eve', 'Felicitaciones al equipo de organización por seleccionar temas relevantes y actuales para la Conferencia de negocios para emprendedores. Será una valiosa oportunidad para actualizarnos en las tendencias del mercado.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1013453458', 'NIP', '020220115Eve', 'Lamento que la logística de la Conferencia de negocios para emprendedores haya presentado algunos inconvenientes. Espero que se tomen medidas para mejorar la organización en futuros eventos.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1232345454', 'CC', '020220115Eve', '¿Habrá oportunidades de networking en la Conferencia de negocios para emprendedores? Me gustaría establecer contactos con otros emprendedores y posibles colaboradores.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('59499442', 'CC', '020220115Eve', 'Espero que la Conferencia de negocios para emprendedores inspire a nuestros estudiantes a explorar nuevas ideas y a desarrollar proyectos innovadores.');


INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1007498545', 'CE', 'o03042023Com', '¿Habrá categorías específicas para el Torneo de Matemáticas, según el nivel de dificultad? Sería interesante tener desafíos adaptados tanto para principiantes como para estudiantes avanzados.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('3020423421', 'CC', 'o03042023Com', 'Estoy emocionado por participar en el Torneo de Matemáticas. Espero poner en práctica mis habilidades y resolver problemas desafiantes hasta Cálculo Integral.') ;

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1013453458', 'NIP', 'o03042023Com', 'Felicitaciones a los organizadores del Torneo de Matemáticas por abarcar problemas hasta Cálculo Integral. Es una gran oportunidad para que nuestros estudiantes pongan a prueba sus conocimientos en esta área.');

INSERT INTO Comentario_Actividad(nid, tid, actividad, detalle) VALUES('1007498545', 'CE', 'o03042023Com', 'Lamentablemente, hubo una falta de comunicación en la planificación del Torneo de Matemáticas. Se anunció que abarcaría problemas hasta Cálculo Integral, pero ahora se menciona que solo llegará hasta Cálculo Diferencial. Necesitamos claridad al respecto para que los estudiantes puedan prepararse adecuadamente.');

--No se ven afectados por alguna tupla sin embargo se coloca acá porque la ACTIVIDAD se ve afecta por una restriccion de tupla.

--Subscripciones--

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('7893453457', 'CE', 'o20220402Eje', 1, '05-01-2022', '05-02-2022', 'Cancelada');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421442', 'CC', 'o20220402Eje', 2, '05-01-2022', '05-02-2022', 'Cancelada');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('4563453546', 'CC', 'o20220402Eje', 3, '05-01-2022', '05-02-2022', 'Cancelada');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1013453458', 'NIP', 'o20220402Eje', 4, '05-01-2022', '05-02-2022', 'Cancelada');


INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421482', 'CE', 'o20230416Con', 1, '16-04-2023', '23-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('7893453457', 'CE', 'o20230416Con', 2, '17-04-2023', '23-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('4563453546', 'CC', 'o20230416Con', 3, '17-04-2023', '23-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1232345454', 'CC', 'o20230416Con', 4, '17-04-2023', '23-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1013453458', 'NIP', 'o20230416Con', 5, '17-04-2023', '23-05-2023', 'Activa');


INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421482', 'CE', 'e20230504Exp', 1, '16-05-2023', '12-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('7893453457', 'CE', 'e20230504Exp', 2, '16-05-2023', '12-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('4563453546', 'CC', 'e20230504Exp', 3, '16-05-2023', '12-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421442', 'CC', 'e20230504Exp', 4, '16-05-2023', '12-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1013453458', 'NIP', 'e20230504Exp', 5, '16-05-2023', '12-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('33421442', 'CE', 'e20230504Exp', 6, '16-05-2023', '12-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1032345235', 'CC', 'e20230504Exp', 7, '16-05-2023', '12-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('19421442', 'CC', 'e20230504Exp', 8, '16-05-2023', '12-06-2023', 'Activa');


INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421482', 'CE', '020220115Eve', 1, '16-02-2022', '28-03-2022', 'Cancelada');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421482', 'CE', 'e20230601Con'  , 1, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('7893453457', 'CE', 'e20230601Con'  , 2, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('4563453546', 'CC', 'e20230601Con'  , 3, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421442', 'CC', 'e20230601Con'  , 4, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1013453458', 'NIP', 'e20230601Con'  , 5, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('33421442', 'CE', 'e20230601Con'  , 6, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1032345235', 'CC', 'e20230601Con'  , 7, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('19421442', 'CC', 'e20230601Con'  , 8, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('2020423421', 'CC', 'e20230601Con'  , 9, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59499442', 'CC', 'e20230601Con'  , 10, '16-05-2023', '20-06-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1007498545', 'CE', 'e20230601Con'  , 11, '16-05-2023', '20-06-2023', 'Activa');


INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421482', 'CE', 'o20230404Eje', 1, '16-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('4563453546', 'CC', 'o20230404Eje', 2, '16-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('7893453457', 'CE', 'o20230404Eje', 3, '16-04-2023', '25-05-2023', 'Activa');


INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421482', 'CE', 'o03042023Com', 1, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('7893453457', 'CE', 'o03042023Com', 2, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('4563453546', 'CC', 'o03042023Com', 3, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('59421442', 'CC', 'o03042023Com', 4, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1013453458', 'NIP', 'o03042023Com', 5, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1232345454', 'CC', 'o03042023Com', 6, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('33421442', 'CE', 'o03042023Com', 7, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1032345235', 'CC', 'o03042023Com', 8, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('19421442', 'CC', 'o03042023Com', 9, '30-04-2023', '25-05-2023', 'Activa');

INSERT INTO Suscripcion(nid, tid, actividad, idSolicitud, fecha_solicitud, vigencia, estado)VALUES ('1007498545', 'CE', 'o03042023Com', 10, '30-04-2023', '25-05-2023', 'Activa');


--Se ven afectados por la restriccion de atributo AT_SUSCRIPCION_VIGENCIA-

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('1', 'Equipo de baloncesto de la Universidad gana el campeonato regional', '15-04-2023', 'El equipo de baloncesto de la Universidad logró una victoria impresionante en el campeonato regional', 'Luis González');

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('2', 'Estudiante de la Universidad obtiene beca para investigación en biología marina', '22-03-2023', 'María Torres, estudiante destacada de la Universidad, ha sido premiada con una beca para realizar investigaciones en biología marina', 'Ana Ramírez');

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('3', 'Investigadores de la Universidad descubren nueva especie de planta', '10-02-2023', 'Un equipo de investigadores de la Universidad ha descubierto una nueva especie de planta en la región amazónica', 'Pedro Mendoza');

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('4', 'Estudiante de la Universidad gana concurso de poesía', '18-01-2023', 'Carlos Vargas, estudiante de literatura en la Universidad, se lleva el primer lugar en el prestigioso concurso de poesía', 'Laura Gómez');

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('5', 'Equipo de fútbol de la Universidad clasifica para los playoffs', '02-05-2023', 'El equipo de fútbol de la Universidad ha asegurado su lugar en los playoffs después de una exitosa temporada', 'Roberto Martínez');

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('6', 'Investigadores de la Universidad publican estudio sobre inteligencia artificial', '05-04-2023', 'Un grupo de investigadores de la Universidad ha publicado un estudio innovador sobre el uso de la inteligencia artificial en la medicina', 'María López');

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('7', 'Estudiante de la Universidad gana medalla de plata en olimpiadas de química', '12-03-2023', 'Jorge Hernández, estudiante de química en la Universidad, ha obtenido una destacada medalla de plata en las olimpiadas internacionales de química', 'Luisa Sánchez');

INSERT INTO Noticia(id_noticia, titulo, fecha_creacion, descripcion, autor) VALUES('8', 'Equipo de béisbol de la Universidad gana el campeonato nacional', '25-02-2023', 'El equipo de béisbol de la Universidad ha logrado una emocionante victoria en el campeonato nacional', 'Javier Rodríguez');

--Se ven afectados por la restriccion de atributo AT_NOTICIA_IDNOTICA