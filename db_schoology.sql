-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2017 a las 12:47:48
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_schoology`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_accesos`
--

CREATE TABLE `tbl_accesos` (
  `CODIGO_ACCESO` int(11) NOT NULL,
  `NOMBRE_ACCESO` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_accesos`
--

INSERT INTO `tbl_accesos` (`CODIGO_ACCESO`, `NOMBRE_ACCESO`) VALUES
(1, 'Público');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_actualizaciones`
--

CREATE TABLE `tbl_actualizaciones` (
  `CODIGO_ACTUALIZACION` int(11) NOT NULL,
  `CONTENIDO_ACTUALIZACION` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_actualizaciones`
--

INSERT INTO `tbl_actualizaciones` (`CODIGO_ACTUALIZACION`, `CONTENIDO_ACTUALIZACION`) VALUES
(341, 'Saludos a mis alumnos'),
(361, 'Hola Buenas :D ¿qué ondas?.\nÉste es el curso más otro rollo que puede existir.\n#MeraCream'),
(382, 'jgjgjgjgjgjgjgjggjg'),
(401, 'io'),
(321, 'HOla profe'),
(402, 'RAIOZ!'),
(441, 'We did it :D yaju'),
(461, ':D creo que funciona ya'),
(481, 'yaju :D'),
(482, 'yaju :D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_adjuntos_x_act`
--

CREATE TABLE `tbl_adjuntos_x_act` (
  `CODIGO_ACTUALIZACION` int(11) NOT NULL,
  `ARCHIVO` blob,
  `URL` varchar(200) DEFAULT NULL,
  `TITULO_ENLACE` varchar(200) DEFAULT NULL,
  `OPCION_ENCUESTA` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_albumes`
--

CREATE TABLE `tbl_albumes` (
  `CODIGO_ALBUM` int(11) NOT NULL,
  `TITULO_ALBUM` varchar(200) DEFAULT NULL,
  `DESCRIPCION_ALBUM` varchar(800) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_alcance`
--

CREATE TABLE `tbl_alcance` (
  `CODIGO_ALCANCE` int(11) NOT NULL,
  `NOMBRE_ALCANCE` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_archivos`
--

CREATE TABLE `tbl_archivos` (
  `CODIGO_ARCHIVO` int(11) NOT NULL,
  `ARCHIVO` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_areas_tematicas`
--

CREATE TABLE `tbl_areas_tematicas` (
  `CODIGO_AREA_TEMATICA` int(11) NOT NULL,
  `NOMBRE_AREA_TEMATICA` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_areas_tematicas`
--

INSERT INTO `tbl_areas_tematicas` (`CODIGO_AREA_TEMATICA`, `NOMBRE_AREA_TEMATICA`) VALUES
(120, 'Otros'),
(121, 'Educación física y salud'),
(122, 'Lengua y literatura'),
(123, 'Matemáticas'),
(124, 'Desarrollo profesional'),
(125, 'Ciencia'),
(126, 'Ciencias sociales'),
(127, 'Educación especial'),
(128, 'Tecnología'),
(129, 'Arte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_asistencias_x_usuarios`
--

CREATE TABLE `tbl_asistencias_x_usuarios` (
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_ESTRUCTURA` int(11) NOT NULL,
  `CODIGO_TIPO_ASISTENCIA` int(11) NOT NULL,
  `FECHA_ASISTENCIA` date DEFAULT NULL,
  `COMENTARIO` varchar(4000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_atributos_privacidad`
--

CREATE TABLE `tbl_atributos_privacidad` (
  `CODIGO_ATRIBUTO` int(11) NOT NULL,
  `NOMBRE_ATRIBUTO` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bancos_preguntas`
--

CREATE TABLE `tbl_bancos_preguntas` (
  `CODIGO_BANCO_PREGUNTAS` int(11) NOT NULL,
  `NOMBRE_BANCO_PREGUNTAS` varchar(200) NOT NULL,
  `DESCRIPCION` varchar(800) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_blog_posts`
--

CREATE TABLE `tbl_blog_posts` (
  `CODIGO_BLOG_POST` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `TITULO_BLOG_POST` varchar(200) DEFAULT NULL,
  `CONTENIDO_BLOG_POST` varchar(800) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_carpetas`
--

CREATE TABLE `tbl_carpetas` (
  `CODIGO_CARPETA` int(11) NOT NULL,
  `NOMBRE_CARPETA` varchar(200) DEFAULT NULL,
  `COLOR_CARPETA` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias_calificacion`
--

CREATE TABLE `tbl_categorias_calificacion` (
  `CODIGO_CATEGORIA_CALIFICACION` int(11) NOT NULL,
  `CODIGO_TIPO_CALCULO` int(11) NOT NULL,
  `CODIGO_PUNTAJE_BAJO` int(11) NOT NULL,
  `NOMBRE_CATEGORIA` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_categorias_calificacion`
--

INSERT INTO `tbl_categorias_calificacion` (`CODIGO_CATEGORIA_CALIFICACION`, `CODIGO_TIPO_CALCULO`, `CODIGO_PUNTAJE_BAJO`, `NOMBRE_CATEGORIA`) VALUES
(1, 3, 3, 'Categoria 1'),
(2, 2, 1, 'Categoria 2'),
(3, 1, 2, 'Categoria 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categorias_grupos`
--

CREATE TABLE `tbl_categorias_grupos` (
  `CODIGO_CATEGORIA` int(11) NOT NULL,
  `NOMBRE_CATEGORIA` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_categorias_grupos`
--

INSERT INTO `tbl_categorias_grupos` (`CODIGO_CATEGORIA`, `NOMBRE_CATEGORIA`) VALUES
(1, 'Grupo profesional'),
(2, 'Grupo musical'),
(3, 'Compañeros'),
(4, 'Grupo tareas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comentarios`
--

CREATE TABLE `tbl_comentarios` (
  `CODIGO_COMENTARIO` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_TAREA` int(11) DEFAULT NULL,
  `CODIGO_PRUEBA` int(11) DEFAULT NULL,
  `CODIGO_DISCUSION` int(11) DEFAULT NULL,
  `CODIGO_FOTO` int(11) DEFAULT NULL,
  `CODIGO_ACTUALIZACION` int(11) DEFAULT NULL,
  `CODIGO_COMENTARIO_PADRE` int(11) DEFAULT NULL,
  `CONTENIDO_COMENTARIO` varchar(1000) DEFAULT NULL,
  `FECHA_COMENTARIO` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_comentarios`
--

INSERT INTO `tbl_comentarios` (`CODIGO_COMENTARIO`, `CODIGO_USUARIO`, `CODIGO_TAREA`, `CODIGO_PRUEBA`, `CODIGO_DISCUSION`, `CODIGO_FOTO`, `CODIGO_ACTUALIZACION`, `CODIGO_COMENTARIO_PADRE`, `CONTENIDO_COMENTARIO`, `FECHA_COMENTARIO`) VALUES
(41, 665, NULL, NULL, NULL, NULL, 321, NULL, 'Hola alumno', '2017-05-03'),
(42, 665, NULL, NULL, NULL, NULL, 321, NULL, '¿Por qué no fue a clase hoy?', '2017-05-03'),
(43, 665, NULL, NULL, NULL, NULL, 341, NULL, '¿Alguien allí?', '2017-05-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_configuraciones`
--

CREATE TABLE `tbl_configuraciones` (
  `CODIGO_CONFIGURACION` int(11) NOT NULL,
  `CLAVE` varchar(200) NOT NULL,
  `VALOR` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_conf_x_materiales`
--

CREATE TABLE `tbl_conf_x_materiales` (
  `CODIGO_MATERIAL` int(11) NOT NULL,
  `CODIGO_CONFIGURACION` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_criterios`
--

CREATE TABLE `tbl_criterios` (
  `CODIGO_CRITERIO` int(11) NOT NULL,
  `CODIGO_RUBRICA` int(11) NOT NULL,
  `CODIGO_ESCALA` int(11) NOT NULL,
  `NOMBRE_CRITERIO` varchar(200) NOT NULL,
  `DESCRIPCION_CRITERIO` varchar(800) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cursos`
--

CREATE TABLE `tbl_cursos` (
  `CODIGO_CURSO` int(11) NOT NULL,
  `CODIGO_AREA_TEMATICA` int(11) NOT NULL,
  `CODIGO_NIVEL_EDUCATIVO` int(11) NOT NULL,
  `NOMBRE_CURSO` varchar(200) DEFAULT NULL,
  `NOMBRE_SECCION` varchar(200) DEFAULT NULL,
  `UBICACION` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_cursos`
--

INSERT INTO `tbl_cursos` (`CODIGO_CURSO`, `CODIGO_AREA_TEMATICA`, `CODIGO_NIVEL_EDUCATIVO`, `NOMBRE_CURSO`, `NOMBRE_SECCION`, `UBICACION`) VALUES
(342, 125, 142, 'Electromagnetismo', '1400', NULL),
(360, 123, 142, 'Ecuaciones diferenciales no ordinarias', '1400', NULL),
(380, 128, 142, 'Redes III', '1500', NULL),
(400, 125, 142, 'Cambio climático', '8000', NULL),
(401, 125, 142, 'Cambio climático', '8000', NULL),
(402, 125, 142, 'Cambio climático', '8000', NULL),
(403, 125, 142, 'Cambio climático', '8000', NULL),
(420, 125, 142, 'Cambio climático', '8000', NULL),
(421, 125, 142, 'Cambio climático 3', '8000', NULL),
(440, 125, 142, 'Cambio climático 4', '8000', NULL),
(460, 120, 142, 'Administración 1', '1900', NULL),
(480, 123, 143, 'Estadística 4', '700', NULL),
(500, 121, 143, 'Super Curso', '11:00', NULL),
(580, 128, 142, 'POO', '1300', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cursos_x_dias`
--

CREATE TABLE `tbl_cursos_x_dias` (
  `CODIGO_CURSO` int(11) NOT NULL,
  `CODIGO_DIA` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_dias`
--

CREATE TABLE `tbl_dias` (
  `CODIGO_DIA` int(11) NOT NULL,
  `NOMBRE_DIA` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_dias`
--

INSERT INTO `tbl_dias` (`CODIGO_DIA`, `NOMBRE_DIA`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miércoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sábado'),
(7, 'Domingo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_discusiones`
--

CREATE TABLE `tbl_discusiones` (
  `CODIGO_DISCUSION` int(11) NOT NULL,
  `CODIGO_CATEGORIA_CALIFICACION` int(11) DEFAULT NULL,
  `CODIGO_PERIODO` int(11) DEFAULT NULL,
  `CODIGO_ESCALA` int(11) DEFAULT NULL,
  `TITULO_DISCUSION` varchar(200) DEFAULT NULL,
  `DESCRIPCION_DISCUSION` varchar(500) DEFAULT NULL,
  `FECHA_LIMITE` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_discusiones`
--

INSERT INTO `tbl_discusiones` (`CODIGO_DISCUSION`, `CODIGO_CATEGORIA_CALIFICACION`, `CODIGO_PERIODO`, `CODIGO_ESCALA`, `TITULO_DISCUSION`, `DESCRIPCION_DISCUSION`, `FECHA_LIMITE`) VALUES
(121, 1, 1, 1, 'El subdesarrollo en Honduras', 'Subir sus comentarios sobre el capítulo 3 del libro', NULL),
(141, 1, 1, 1, 'La importancia del asdfasd en as', 'asdaj  asdj \nasdja \nas ajjjdjd \nas jd as\n j jdasjdjdjjdjd', '2017-05-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_enlaces`
--

CREATE TABLE `tbl_enlaces` (
  `CODIGO_ENLACE` int(11) NOT NULL,
  `CODIGO_VISUALIZACION` int(11) NOT NULL,
  `URL` varchar(200) NOT NULL,
  `TITULO_ENLACE` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_enlaces`
--

INSERT INTO `tbl_enlaces` (`CODIGO_ENLACE`, `CODIGO_VISUALIZACION`, `URL`, `TITULO_ENLACE`) VALUES
(101, 1, 'google.com', 'Google'),
(161, 1, 'https://trello.com/b/vLpUVFeT/is510-proyectos-grupo-3', 'Trello');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_entregas_tareas`
--

CREATE TABLE `tbl_entregas_tareas` (
  `CODIGO_ENTREGA` int(11) NOT NULL,
  `CODIGO_ESTADO_ENTREGA` int(11) NOT NULL,
  `CODIGO_TAREA` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CONTENIDO_ENTREGA` varchar(300) DEFAULT NULL,
  `ARCHIVO` blob,
  `FECHA_ENTREGA` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_escalas`
--

CREATE TABLE `tbl_escalas` (
  `CODIGO_ESCALA` int(11) NOT NULL,
  `NOMBRE_ESCALA` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_escalas`
--

INSERT INTO `tbl_escalas` (`CODIGO_ESCALA`, `NOMBRE_ESCALA`) VALUES
(1, 'Numerica'),
(2, 'Escala 2'),
(3, 'Escala 3'),
(4, 'Escala 4'),
(5, 'Escala 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_escuelas`
--

CREATE TABLE `tbl_escuelas` (
  `CODIGO_ESCUELA` int(11) NOT NULL,
  `NOMBRE_ESCUELA` varchar(200) NOT NULL,
  `CODIGO_POSTAL` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_escuelas`
--

INSERT INTO `tbl_escuelas` (`CODIGO_ESCUELA`, `NOMBRE_ESCUELA`, `CODIGO_POSTAL`) VALUES
(100, 'Default', '00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estados_entregas`
--

CREATE TABLE `tbl_estados_entregas` (
  `CODIGO_ESTADO_ENTREGA` int(11) NOT NULL,
  `NOMBRE_ESTADO_ENTREGA` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estados_entregas`
--

INSERT INTO `tbl_estados_entregas` (`CODIGO_ESTADO_ENTREGA`, `NOMBRE_ESTADO_ENTREGA`) VALUES
(1, 'Puntual'),
(2, 'Retraso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estados_materiales`
--

CREATE TABLE `tbl_estados_materiales` (
  `CODIGO_ESTADO` int(11) NOT NULL,
  `NOMBRE_ESTADO` varchar(200) NOT NULL,
  `DESCRIPCION` varchar(800) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estados_materiales`
--

INSERT INTO `tbl_estados_materiales` (`CODIGO_ESTADO`, `NOMBRE_ESTADO`, `DESCRIPCION`) VALUES
(1, 'ACTIVO', 'Descripcion material 1'),
(2, 'INACTIVO', 'Descripcion material 2'),
(3, 'EN PAPELERA', 'Descripcion material 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estados_mensajes`
--

CREATE TABLE `tbl_estados_mensajes` (
  `CODIGO_ESTADO` int(11) NOT NULL,
  `NOMBRE_ESTADO` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estados_mensajes`
--

INSERT INTO `tbl_estados_mensajes` (`CODIGO_ESTADO`, `NOMBRE_ESTADO`) VALUES
(1, 'Leído'),
(2, 'No leído'),
(3, 'Enviado'),
(4, 'Sin enviar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estados_notificaciones`
--

CREATE TABLE `tbl_estados_notificaciones` (
  `CODIGO_ESTADO_NOTIFICACION` int(11) NOT NULL,
  `ESTADO_NOTIFICACION` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estados_notificaciones`
--

INSERT INTO `tbl_estados_notificaciones` (`CODIGO_ESTADO_NOTIFICACION`, `ESTADO_NOTIFICACION`) VALUES
(1, 'Activadas'),
(2, 'Desactivadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estructuras_usuarios`
--

CREATE TABLE `tbl_estructuras_usuarios` (
  `CODIGO_ESTRUCTURA` int(11) NOT NULL,
  `CODIGO_ACCESO` varchar(200) NOT NULL,
  `DESCRIPCION` varchar(800) DEFAULT NULL,
  `MODERACION` varchar(800) DEFAULT NULL,
  `ICONO_ESTRUCTURA` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estructuras_usuarios`
--

INSERT INTO `tbl_estructuras_usuarios` (`CODIGO_ESTRUCTURA`, `CODIGO_ACCESO`, `DESCRIPCION`, `MODERACION`, `ICONO_ESTRUCTURA`) VALUES
(342, 'Z6Z1M-1QM5A', NULL, NULL, NULL),
(343, 'JME8U-8ASUG', 'fafafafa', NULL, NULL),
(360, 'J307B-F6FRS', NULL, NULL, NULL),
(380, '31583-0OAF8', NULL, NULL, NULL),
(400, '1WSUZ-GKOGJ', NULL, NULL, NULL),
(401, 'LXH0W-FYBDN', NULL, NULL, NULL),
(402, 'WKGCE-158H9', NULL, NULL, NULL),
(403, 'HZWG8-E0RGK', NULL, NULL, NULL),
(420, 'BB7E5-TY9VG', NULL, NULL, NULL),
(421, 'CRQIH-TTXKS', NULL, NULL, NULL),
(440, 'O30TZ-WAQNE', NULL, NULL, NULL),
(460, 'MTDGJ-74GM5', NULL, NULL, NULL),
(480, 'QDPBJ-SS89V', NULL, NULL, NULL),
(500, 'V1QP1-0KGMH', NULL, NULL, NULL),
(540, '62DZS-IFU4E', 'asdasdasd', NULL, NULL),
(560, 'W0AGA-U1TAR', 'Grupo que trabaja en el proyecto "SCHOOLOGY"', NULL, NULL),
(580, 'UASOA-GP1SW', NULL, NULL, NULL),
(600, '05YFL-IUB9F', 'Clase de bases de datos', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estudiantes`
--

CREATE TABLE `tbl_estudiantes` (
  `CODIGO_ESTUDIANTE` int(11) NOT NULL,
  `CODIGO_PARA_PADRE` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_estudiantes`
--

INSERT INTO `tbl_estudiantes` (`CODIGO_ESTUDIANTE`, `CODIGO_PARA_PADRE`) VALUES
(740, 'NQC4O-QA7NF'),
(760, 'ERPX4-1EQ2Q');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estudiantes_x_padres`
--

CREATE TABLE `tbl_estudiantes_x_padres` (
  `CODIGO_ESTUDIANTE` int(11) NOT NULL,
  `CODIGO_PADRE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_fotos`
--

CREATE TABLE `tbl_fotos` (
  `CODIGO_FOTO` int(11) NOT NULL,
  `ARCHIVO_FOTO` blob,
  `PIE_IMAGEN` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_fotos_x_albumes`
--

CREATE TABLE `tbl_fotos_x_albumes` (
  `CODIGO_FOTO` int(11) NOT NULL,
  `CODIGO_ALBUM` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_generos`
--

CREATE TABLE `tbl_generos` (
  `CODIGO_GENERO` int(11) NOT NULL,
  `NOMBRE_GENERO` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_generos`
--

INSERT INTO `tbl_generos` (`CODIGO_GENERO`, `NOMBRE_GENERO`) VALUES
(1, 'Femenino'),
(2, 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_grupos`
--

CREATE TABLE `tbl_grupos` (
  `CODIGO_GRUPO` int(11) NOT NULL,
  `CODIGO_ACCESO` int(11) NOT NULL,
  `CODIGO_CATEGORIA` int(11) NOT NULL,
  `NOMBRE_GRUPO` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_grupos`
--

INSERT INTO `tbl_grupos` (`CODIGO_GRUPO`, `CODIGO_ACCESO`, `CODIGO_CATEGORIA`, `NOMBRE_GRUPO`) VALUES
(343, 1, 1, 'Grupo 3'),
(540, 1, 2, 'Estudio a las 3'),
(560, 1, 2, 'Los schoology\'s'),
(600, 1, 1, 'Compañeros Bases');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_instructores`
--

CREATE TABLE `tbl_instructores` (
  `CODIGO_INSTRUCTOR` int(11) NOT NULL,
  `CODIGO_TITULO` int(11) DEFAULT NULL,
  `CODIGO_ESCUELA` int(11) NOT NULL,
  `MATERIA_IMPARTIDAS` varchar(500) DEFAULT NULL,
  `NIVELES_ENSENADOS` varchar(200) DEFAULT NULL,
  `CARGO` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_instructores`
--

INSERT INTO `tbl_instructores` (`CODIGO_INSTRUCTOR`, `CODIGO_TITULO`, `CODIGO_ESCUELA`, `MATERIA_IMPARTIDAS`, `NIVELES_ENSENADOS`, `CARGO`) VALUES
(660, NULL, 100, NULL, NULL, NULL),
(661, NULL, 100, NULL, NULL, NULL),
(662, NULL, 100, NULL, NULL, NULL),
(663, NULL, 100, NULL, NULL, NULL),
(664, NULL, 100, NULL, NULL, NULL),
(665, NULL, 100, NULL, NULL, NULL),
(680, NULL, 100, NULL, NULL, NULL),
(700, NULL, 100, NULL, NULL, NULL),
(720, NULL, 100, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_likes`
--

CREATE TABLE `tbl_likes` (
  `CODIGO_COMENTARIO` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `FECHA_LIKE` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_materiales`
--

CREATE TABLE `tbl_materiales` (
  `CODIGO_MATERIAL` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_ESTADO` int(11) NOT NULL,
  `FECHA_PUBLICACION` date DEFAULT NULL,
  `ICONO_MATERIAL` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_materiales`
--

INSERT INTO `tbl_materiales` (`CODIGO_MATERIAL`, `CODIGO_USUARIO`, `CODIGO_ESTADO`, `FECHA_PUBLICACION`, `ICONO_MATERIAL`) VALUES
(1, 660, 1, '2017-05-02', NULL),
(21, 660, 1, '2017-05-02', NULL),
(41, 660, 1, '2017-05-02', NULL),
(61, 665, 1, '2017-05-02', NULL),
(81, 660, 1, '2017-05-03', NULL),
(101, 660, 1, '2017-05-03', NULL),
(121, 660, 1, '2017-05-03', NULL),
(141, 660, 1, '2017-05-03', NULL),
(161, 660, 1, '2017-05-03', NULL),
(181, 660, 1, '2017-05-03', NULL),
(201, 660, 1, '2017-05-03', NULL),
(221, 660, 1, '2017-05-03', NULL),
(261, 660, 1, '2017-05-03', NULL),
(281, 660, 1, '2017-05-03', NULL),
(282, 660, 1, '2017-05-03', NULL),
(301, 660, 1, '2017-05-03', NULL),
(321, 660, 1, '2017-05-03', NULL),
(341, 665, 1, '2017-05-03', NULL),
(361, 663, 1, '2017-05-03', NULL),
(381, 665, 1, '2017-05-03', NULL),
(382, 665, 1, '2017-05-03', NULL),
(401, 665, 1, '2017-05-03', NULL),
(402, 663, 1, '2017-05-03', NULL),
(421, 661, 1, '2017-05-03', NULL),
(441, 663, 1, '2017-05-03', NULL),
(461, 663, 1, '2017-05-03', NULL),
(481, 663, 1, '2017-05-04', NULL),
(482, 663, 1, '2017-05-04', NULL),
(501, 661, 1, '2017-05-04', NULL),
(521, 660, 1, '2017-05-04', NULL),
(541, 665, 1, '2017-05-04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_materiales_x_carpeta`
--

CREATE TABLE `tbl_materiales_x_carpeta` (
  `CODIGO_MATERIAL` int(11) NOT NULL,
  `CODIGO_CARPETA` int(11) NOT NULL,
  `FECHA_AGREGADO` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_materiales_x_usuarios`
--

CREATE TABLE `tbl_materiales_x_usuarios` (
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_MATERIAL` int(11) NOT NULL,
  `PUNTAJE_OBTENIDO` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mat_x_estruc`
--

CREATE TABLE `tbl_mat_x_estruc` (
  `CODIGO_MATERIAL` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_ESTRUCTURA` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_mat_x_estruc`
--

INSERT INTO `tbl_mat_x_estruc` (`CODIGO_MATERIAL`, `CODIGO_USUARIO`, `CODIGO_ESTRUCTURA`) VALUES
(21, 660, 360),
(41, 660, 360),
(61, 665, 460),
(81, 660, 380),
(101, 660, 380),
(121, 660, 380),
(141, 660, 380),
(161, 660, 380),
(181, 660, 380),
(201, 660, 380);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_medallas`
--

CREATE TABLE `tbl_medallas` (
  `CODIGO_MAEDALLA` int(11) NOT NULL,
  `TITULO` varchar(200) NOT NULL,
  `MENSAJE` varchar(800) NOT NULL,
  `IMAGEN` blob NOT NULL,
  `FORMA` blob NOT NULL,
  `COLOR` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_medallas_x_usuarios`
--

CREATE TABLE `tbl_medallas_x_usuarios` (
  `CODIGO_MAEDALLA` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_USUARIO_ASIGNADOR` int(11) NOT NULL,
  `FECHA_ASIGNACION` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mensajes`
--

CREATE TABLE `tbl_mensajes` (
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_REMITENTE` int(11) NOT NULL,
  `CODIGO_ESTADO` int(11) NOT NULL,
  `ASUNTO` varchar(200) NOT NULL,
  `CONTENIDO_MENSAJE` varchar(800) NOT NULL,
  `FECHA_HORA_MENSAJE` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_mensajes`
--

INSERT INTO `tbl_mensajes` (`CODIGO_USUARIO`, `CODIGO_REMITENTE`, `CODIGO_ESTADO`, `ASUNTO`, `CONTENIDO_MENSAJE`, `FECHA_HORA_MENSAJE`) VALUES
(665, 660, 2, 'Saludos', 'Hola profe', '2017-04-28'),
(665, 660, 2, 'Hola :)', 'asdasdasdasdd ad a lolem  asd', '2017-04-28'),
(660, 665, 2, 'Re Saludos', 'jajaja', '2017-04-28'),
(665, 660, 2, 'Tarea', 'zxczxc.zxc.zxc..xczxc', '2017-04-28'),
(665, 660, 2, 'Fiesta', 'asdjhashdjas ashdj jhzxc voqa qjjn zj zx \n\n\nAdiós.', '2017-04-30'),
(660, 700, 2, 'Saludos', 'ahsdhjashdahsb ashd hasjuqwueu as mbnxcqa\n\nAdiós.', '2017-04-30'),
(661, 660, 2, 'Hola!', 'zwzwzw\n\ntr.qttpqb7', '2017-04-30'),
(662, 660, 2, 'Saludos', 'Hola', '2017-05-01'),
(663, 660, 2, 'Saludo', 'Hola', '2017-05-01'),
(660, 662, 2, 'Hola', 'Hola, si funciona', '2017-05-01'),
(661, 663, 2, 'Holis', 'Hola buenas,ud es muy guapa :*', '2017-05-03'),
(660, 663, 2, 'Saludo', 'Hola,¿cómo está?', '2017-05-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nivel_escala`
--

CREATE TABLE `tbl_nivel_escala` (
  `CODIGO_NIVEL` int(11) NOT NULL,
  `CODIGO_ESCALA` int(11) NOT NULL,
  `DESCRIPCION` varchar(800) DEFAULT NULL,
  `PUNTOS` varchar(200) DEFAULT NULL,
  `LETRA_CALIFICACION` varchar(100) DEFAULT NULL,
  `INICIO_RANGO` varchar(100) DEFAULT NULL,
  `FIN_RANGO` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nivles_educativos`
--

CREATE TABLE `tbl_nivles_educativos` (
  `CODIGO_NIVEL_EDUCATIVO` int(11) NOT NULL,
  `NOMBRE_NIVEL_EDUCATIVO` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_nivles_educativos`
--

INSERT INTO `tbl_nivles_educativos` (`CODIGO_NIVEL_EDUCATIVO`, `NOMBRE_NIVEL_EDUCATIVO`) VALUES
(130, '1'),
(131, '2'),
(132, '3'),
(133, '4'),
(134, '5'),
(135, '6'),
(136, '7'),
(137, '8'),
(138, '9'),
(139, '10'),
(140, '11'),
(141, '12'),
(142, 'Educación superior'),
(143, 'Educación de posgrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notificaciones`
--

CREATE TABLE `tbl_notificaciones` (
  `CODIGO_TIPO_NOTIFICACION` int(11) NOT NULL,
  `CODIGO_ESTADO_NOTIFICACION` int(11) NOT NULL,
  `CODIGO_ESTRUCTURA` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_MATERIAL` int(11) DEFAULT NULL,
  `CODIGO_COMENTARIO` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_padres`
--

CREATE TABLE `tbl_padres` (
  `CODIGO_PADRE` int(11) NOT NULL,
  `PRIMER_NOMBRE_PREFERIDO` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paginas`
--

CREATE TABLE `tbl_paginas` (
  `CODIGO_PAGINA` int(11) NOT NULL,
  `CODIGO_VISUALIZACION` int(11) NOT NULL,
  `TITULO_PAGINA` varchar(200) DEFAULT NULL,
  `CONTENIDO_PAGINA` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_periodos_evaluacion`
--

CREATE TABLE `tbl_periodos_evaluacion` (
  `CODIGO_PERIODO` int(11) NOT NULL,
  `NOMBRE_PERIODO` varchar(200) NOT NULL,
  `FECHA_INICIO_PERIODO` date DEFAULT NULL,
  `FECHA_FINALIZACION_PERIODO` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_periodos_evaluacion`
--

INSERT INTO `tbl_periodos_evaluacion` (`CODIGO_PERIODO`, `NOMBRE_PERIODO`, `FECHA_INICIO_PERIODO`, `FECHA_FINALIZACION_PERIODO`) VALUES
(1, 'Periodo 1', '2015-01-26', '2015-03-26'),
(2, 'Periodo 2', '2015-03-27', '2015-06-28'),
(3, 'Periodo 3', '2015-03-28', '2015-09-30'),
(4, 'Periodo 4', '2015-10-31', '2015-12-31'),
(5, 'Periodo 5', '2016-01-26', '2016-03-26'),
(6, 'Periodo 6', '2016-03-27', '2016-06-28'),
(7, 'Periodo 7', '2016-03-28', '2016-09-30'),
(8, 'Periodo 8', '2016-01-26', '2016-12-31'),
(9, 'Periodo 9', '2017-10-26', '2017-03-26'),
(10, 'Periodo 10', '2017-03-27', '2017-06-28'),
(11, 'Periodo 11', '2017-03-28', '2017-09-30'),
(12, 'Periodo 12', '2017-10-26', '2017-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntas`
--

CREATE TABLE `tbl_preguntas` (
  `CODIGO_PREGUNTA` int(11) NOT NULL,
  `CODIGO_TIPO_PREGUNTA` int(11) NOT NULL,
  `CODIGO_PRUEBA` int(11) NOT NULL,
  `PREGUNTA` varchar(500) DEFAULT NULL,
  `RESPUESTA_USUARIO` varchar(500) DEFAULT NULL,
  `PUNTAJE_OBTENIDO` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preguntas_x_bancos`
--

CREATE TABLE `tbl_preguntas_x_bancos` (
  `CODIGO_PREGUNTA` int(11) NOT NULL,
  `CODIGO_BANCO_PREGUNTAS` int(11) NOT NULL,
  `FECHA_AGREGADA` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_privacidades`
--

CREATE TABLE `tbl_privacidades` (
  `CODIGO_ATRIBUTO` int(11) NOT NULL,
  `CODIGO_ALCANCE` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) DEFAULT NULL,
  `CODIGO_ESTRUCTURA` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pruebas`
--

CREATE TABLE `tbl_pruebas` (
  `CODIGO_PRUEBA` int(11) NOT NULL,
  `CODIGO_CATEGORIA_CALIFICACION` int(11) NOT NULL,
  `CODIGO_PERIODO` int(11) NOT NULL,
  `CODIGO_ESCALA` int(11) NOT NULL,
  `NOMBRE_PRUEBA` varchar(200) DEFAULT NULL,
  `FECHA_LIMITE` date DEFAULT NULL,
  `VALOR_PUNTAJE` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_pruebas`
--

INSERT INTO `tbl_pruebas` (`CODIGO_PRUEBA`, `CODIGO_CATEGORIA_CALIFICACION`, `CODIGO_PERIODO`, `CODIGO_ESCALA`, `NOMBRE_PRUEBA`, `FECHA_LIMITE`, `VALOR_PUNTAJE`) VALUES
(81, 1, 1, 1, 'Examen I Parcial', '2017-05-04', '50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_puntajes_bajos`
--

CREATE TABLE `tbl_puntajes_bajos` (
  `CODIGO_PUNTAJE_BAJO` int(11) NOT NULL,
  `PUNTAJE_BAJO` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_puntajes_bajos`
--

INSERT INTO `tbl_puntajes_bajos` (`CODIGO_PUNTAJE_BAJO`, `PUNTAJE_BAJO`) VALUES
(1, '0'),
(2, '1'),
(3, '2'),
(4, '3'),
(5, '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_respuestas`
--

CREATE TABLE `tbl_respuestas` (
  `CODIGO_RESPUESTA` int(11) NOT NULL,
  `CODIGO_PREGUNTA` int(11) NOT NULL,
  `RESPUESTA` varchar(200) DEFAULT NULL,
  `ES_CORRECTA` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `CODIGO_ROL` int(11) NOT NULL,
  `NOMBRE_ROL` varchar(200) NOT NULL,
  `DESCRIPCION_ROL` varchar(800) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_roles`
--

INSERT INTO `tbl_roles` (`CODIGO_ROL`, `NOMBRE_ROL`, `DESCRIPCION_ROL`) VALUES
(1, 'Administador', NULL),
(2, 'Miembro', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rubricas`
--

CREATE TABLE `tbl_rubricas` (
  `CODIGO_RUBRICA1` int(11) NOT NULL,
  `NOMBRE_RUBRICA` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_rubricas`
--

INSERT INTO `tbl_rubricas` (`CODIGO_RUBRICA1`, `NOMBRE_RUBRICA`) VALUES
(1, 'Numerica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tareas`
--

CREATE TABLE `tbl_tareas` (
  `CODIGO_TAREA` int(11) NOT NULL,
  `CODIGO_CATEGORIA_CALIFICACION` int(11) NOT NULL,
  `CODIGO_PERIODO` int(11) NOT NULL,
  `CODIGO_RUBRICA1` int(11) NOT NULL,
  `NOMBRE_TAREA` varchar(200) DEFAULT NULL,
  `DESCRIPCION_TAREA` varchar(500) DEFAULT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `FECHA_LIMITE` date DEFAULT NULL,
  `VALOR_PUNTAJE` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tareas`
--

INSERT INTO `tbl_tareas` (`CODIGO_TAREA`, `CODIGO_CATEGORIA_CALIFICACION`, `CODIGO_PERIODO`, `CODIGO_RUBRICA1`, `NOMBRE_TAREA`, `DESCRIPCION_TAREA`, `FECHA_INICIO`, `FECHA_LIMITE`, `VALOR_PUNTAJE`) VALUES
(21, 1, 1, 1, 'Tarea 1', 'Subir el archivo .eqs', '2017-05-02', '2017-05-03', '40'),
(41, 2, 1, 1, 'Diagrama CPU', '4521', '2017-05-02', '2017-05-07', '10'),
(61, 1, 1, 1, 'Informe final', 'Subir el informe final', '2017-05-02', '2017-05-15', '0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_asistencias`
--

CREATE TABLE `tbl_tipos_asistencias` (
  `CODIGO_TIPO_ASISTENCIA` int(11) NOT NULL,
  `NOMBRE_TIPO_ASISTENCIA` varchar(4000) DEFAULT NULL,
  `ICONO_TIPO_ASISTENCIA` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipos_asistencias`
--

INSERT INTO `tbl_tipos_asistencias` (`CODIGO_TIPO_ASISTENCIA`, `NOMBRE_TIPO_ASISTENCIA`, `ICONO_TIPO_ASISTENCIA`) VALUES
(1, 'Asistencia', NULL),
(2, 'Falta', NULL),
(3, 'Retardo', NULL),
(4, 'Falta justificada', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_calculos_evaluacion`
--

CREATE TABLE `tbl_tipos_calculos_evaluacion` (
  `CODIGO_TIPO_CALCULO` int(11) NOT NULL,
  `NOMBRE_TIPO_CALCULO` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipos_calculos_evaluacion`
--

INSERT INTO `tbl_tipos_calculos_evaluacion` (`CODIGO_TIPO_CALCULO`, `NOMBRE_TIPO_CALCULO`) VALUES
(1, 'Tipo Calculo 1'),
(2, 'Tipo Calculo 2'),
(3, 'Tipo Calculo 3'),
(4, 'Tipo Calculo 4'),
(5, 'Tipo Calculo 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_estudiantes`
--

CREATE TABLE `tbl_tipos_estudiantes` (
  `CODIGO_TIPO_ESTUDIANTE` int(11) NOT NULL,
  `NOMBRE_TIPO_ESTUDIANTE` varchar(200) NOT NULL,
  `DESCRIPCION` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipos_estudiantes`
--

INSERT INTO `tbl_tipos_estudiantes` (`CODIGO_TIPO_ESTUDIANTE`, `NOMBRE_TIPO_ESTUDIANTE`, `DESCRIPCION`) VALUES
(1, 'Auditivo', 'Me encanta hablar y escuchar. Me gusta explicarles a los demás. Memorizo las cosas fácilmente y entiendo mejor los conceptos cuando hablo sobre ellos.'),
(2, 'Visual', 'Presto mucha atención en clase y aprendo mejor si veo demostraciones o videos. Me engancho mucho más cuando hay cuadros, diagramas u otras ayudas visuales que puedo seguir.'),
(3, 'Proactivo', 'Soy un estudiante proactivo y me gusta experimentar las cosas a través de actividades físicas. Tengo buena coordinación en general y trabajo bien con las manos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_notificaciones`
--

CREATE TABLE `tbl_tipos_notificaciones` (
  `CODIGO_TIPO_NOTIFICACION` int(11) NOT NULL,
  `TIPO_NOTIFICACION` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipos_notificaciones`
--

INSERT INTO `tbl_tipos_notificaciones` (`CODIGO_TIPO_NOTIFICACION`, `TIPO_NOTIFICACION`) VALUES
(1, 'Actualización Publicada del Curso'),
(2, 'Comentarios sobre actualizaciones del curso, tareas o temas de discusión'),
(3, 'Comentarios en mis publicaciones'),
(4, 'Entregas de tareas'),
(5, 'Entregas de pruebas/cuestionarios'),
(6, 'Usuario se une a tu curso'),
(7, 'Contenido creado del Curso'),
(8, 'Materiales del curso atrasados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_preguntas`
--

CREATE TABLE `tbl_tipos_preguntas` (
  `CODIGO_TIPO_PREGUNTA` int(11) NOT NULL,
  `NOMBRE_TIPO_PREGUNTA` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipos_preguntas`
--

INSERT INTO `tbl_tipos_preguntas` (`CODIGO_TIPO_PREGUNTA`, `NOMBRE_TIPO_PREGUNTA`) VALUES
(1, 'Tipo de pregunta 1'),
(2, 'Tipo de pregunta 2'),
(3, 'Tipo de pregunta 3'),
(4, 'Tipo de pregunta 4'),
(5, 'Tipo de pregunta 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_usuarios`
--

CREATE TABLE `tbl_tipos_usuarios` (
  `CODIGO_TIPO_USUARIO` int(11) NOT NULL,
  `NOMBRE_TIPO_USUARIO` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipos_usuarios`
--

INSERT INTO `tbl_tipos_usuarios` (`CODIGO_TIPO_USUARIO`, `NOMBRE_TIPO_USUARIO`) VALUES
(140, 'Estudiante'),
(141, 'Instructor'),
(142, 'Padre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_titulos`
--

CREATE TABLE `tbl_titulos` (
  `CODIGO_TITULO` int(11) NOT NULL,
  `NOMBRE_TITULO` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_titulos`
--

INSERT INTO `tbl_titulos` (`CODIGO_TITULO`, `NOMBRE_TITULO`) VALUES
(1, 'Sr.'),
(2, 'Srta.'),
(3, 'Sra.'),
(4, 'Señorita'),
(5, 'Dr.'),
(6, 'Rev.'),
(7, 'De'),
(8, 'Profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_ZONA_HORARIA` int(11) NOT NULL,
  `CODIGO_GENERO` int(11) DEFAULT NULL,
  `CODIGO_TIPO_ESTUDIANTE` int(11) DEFAULT NULL,
  `CODIGO_TIPO_USUARIO` int(11) NOT NULL,
  `PRIMER_NOMBRE` varchar(500) NOT NULL,
  `SEGUNDO_NOMBRE` varchar(500) DEFAULT NULL,
  `APELLIDO` varchar(500) NOT NULL,
  `NOMBRE_USUARIO` varchar(500) DEFAULT NULL,
  `CORREO_ELECTRONICO_PRINCIPAL` varchar(500) NOT NULL,
  `CORREO_ELECTRONICO_ALTERNATIVO` varchar(500) DEFAULT NULL,
  `CONTRASENA` varchar(100) NOT NULL,
  `BIOGRAFIA` varchar(800) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL,
  `ACTIVIDADES` varchar(800) DEFAULT NULL,
  `INTERESES` varchar(800) DEFAULT NULL,
  `TELEFONO` varchar(200) DEFAULT NULL,
  `SITIO_WEB` varchar(200) DEFAULT NULL,
  `DIRECCION` varchar(500) DEFAULT NULL,
  `IMAGEN_PERFIL` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`CODIGO_USUARIO`, `CODIGO_ZONA_HORARIA`, `CODIGO_GENERO`, `CODIGO_TIPO_ESTUDIANTE`, `CODIGO_TIPO_USUARIO`, `PRIMER_NOMBRE`, `SEGUNDO_NOMBRE`, `APELLIDO`, `NOMBRE_USUARIO`, `CORREO_ELECTRONICO_PRINCIPAL`, `CORREO_ELECTRONICO_ALTERNATIVO`, `CONTRASENA`, `BIOGRAFIA`, `FECHA_NACIMIENTO`, `ACTIVIDADES`, `INTERESES`, `TELEFONO`, `SITIO_WEB`, `DIRECCION`, `IMAGEN_PERFIL`) VALUES
(660, 140, NULL, NULL, 141, 'Marlon', NULL, 'Calderón', NULL, 'MARLON@XMAIL.HN', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 140, NULL, NULL, 141, 'Gissel', NULL, 'Lanza', NULL, 'GISSEL@XMAIL.HN', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 140, NULL, NULL, 141, 'Nohelia', NULL, 'Euceda', NULL, 'NOHELIA@XMAIL.HN', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 140, NULL, NULL, 141, 'Lidis', NULL, 'Hernandez', NULL, 'LIDIS@XMAIL.HN', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 140, NULL, NULL, 141, 'Kevin', NULL, 'Elvir', NULL, 'KEVIN@XMAIL.HN', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 140, NULL, NULL, 141, 'Julio', NULL, 'Profe', NULL, 'JULIOPROFE@GMAIL.COM', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 140, NULL, NULL, 141, 'Pedro', NULL, 'Kraft', NULL, 'PEDRO@GMAIL.COM', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 140, NULL, NULL, 141, 'Keila', NULL, 'Álvarez', NULL, 'KEILA@YAHOO.COM', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 140, NULL, NULL, 141, 'Nohe', NULL, 'Euceda', NULL, 'NEUCEDA@XMAIL.COM', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 140, NULL, NULL, 140, 'lis', NULL, 'cordon', NULL, 'LIS@XMAIL.COM', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, 140, NULL, NULL, 140, 'Marlon', NULL, 'Álvarez', NULL, 'MARLON@A.COM', NULL, 'D878C5C3848427AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios_x_estructuras`
--

CREATE TABLE `tbl_usuarios_x_estructuras` (
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_ESTRUCTURA` int(11) NOT NULL,
  `CODIGO_ROL` int(11) NOT NULL,
  `ID_MATRICULA` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuarios_x_estructuras`
--

INSERT INTO `tbl_usuarios_x_estructuras` (`CODIGO_USUARIO`, `CODIGO_ESTRUCTURA`, `CODIGO_ROL`, `ID_MATRICULA`) VALUES
(660, 342, 1, 'S7NFF-PYO51'),
(660, 343, 1, 'MU2TT-GR5AB'),
(665, 360, 1, '3HPOZ-ZCIFF'),
(700, 360, 2, 'FW1XL-I6LOK'),
(660, 360, 2, 'TRACP-9K9PE'),
(660, 380, 1, 'UMU9D-YSUH1'),
(665, 343, 2, 'OJFNX-P5DIT'),
(665, 400, 1, 'GX4ST-JO6DZ'),
(665, 401, 1, 'SJ32K-ODF8B'),
(665, 402, 1, 'S53Q5-G5NWW'),
(665, 403, 1, '8PHUE-6JLF4'),
(665, 420, 1, 'EJUTE-L439Y'),
(665, 421, 1, 'JPKFA-UZSG4'),
(665, 440, 1, '9HZYF-0W8PW'),
(665, 460, 1, 'TW0JV-M20OT'),
(660, 480, 1, 'ANQ78-8UNTK'),
(662, 500, 1, 'LQUOA-MNN8L'),
(665, 540, 1, 'UJVX4-C0D12'),
(660, 560, 1, 'QSU0Y-XHAV4'),
(665, 480, 2, 'EMCAH-550Y7'),
(660, 460, 2, 'JZGZN-JOW12'),
(663, 580, 1, '9X4DM-V1VI0'),
(663, 600, 1, 'VYFHC-K7FDZ'),
(760, 360, 2, '1PNN4-QTRWR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_zonas_horarias`
--

CREATE TABLE `tbl_zonas_horarias` (
  `CODIGO_ZONA_HORARIA` int(11) NOT NULL,
  `NOMBRE_ZONA_HORARIA` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_zonas_horarias`
--

INSERT INTO `tbl_zonas_horarias` (`CODIGO_ZONA_HORARIA`, `NOMBRE_ZONA_HORARIA`) VALUES
(140, 'GTM-6'),
(141, 'GTM-5'),
(142, 'GTM+1'),
(143, 'GTM+5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_accesos`
--
ALTER TABLE `tbl_accesos`
  ADD PRIMARY KEY (`CODIGO_ACCESO`);

--
-- Indices de la tabla `tbl_actualizaciones`
--
ALTER TABLE `tbl_actualizaciones`
  ADD PRIMARY KEY (`CODIGO_ACTUALIZACION`);

--
-- Indices de la tabla `tbl_adjuntos_x_act`
--
ALTER TABLE `tbl_adjuntos_x_act`
  ADD KEY `TBL_ADJ_X_ACT_TBL_ACT_FK` (`CODIGO_ACTUALIZACION`);

--
-- Indices de la tabla `tbl_albumes`
--
ALTER TABLE `tbl_albumes`
  ADD PRIMARY KEY (`CODIGO_ALBUM`);

--
-- Indices de la tabla `tbl_alcance`
--
ALTER TABLE `tbl_alcance`
  ADD PRIMARY KEY (`CODIGO_ALCANCE`);

--
-- Indices de la tabla `tbl_archivos`
--
ALTER TABLE `tbl_archivos`
  ADD PRIMARY KEY (`CODIGO_ARCHIVO`);

--
-- Indices de la tabla `tbl_areas_tematicas`
--
ALTER TABLE `tbl_areas_tematicas`
  ADD PRIMARY KEY (`CODIGO_AREA_TEMATICA`);

--
-- Indices de la tabla `tbl_asistencias_x_usuarios`
--
ALTER TABLE `tbl_asistencias_x_usuarios`
  ADD KEY `IS_X_US_TBL_US_FK` (`CODIGO_USUARIO`),
  ADD KEY `X_US_TBL_ESTR_US_FK` (`CODIGO_ESTRUCTURA`),
  ADD KEY `_US_TBL_TIP_ASIS_FK` (`CODIGO_TIPO_ASISTENCIA`);

--
-- Indices de la tabla `tbl_atributos_privacidad`
--
ALTER TABLE `tbl_atributos_privacidad`
  ADD PRIMARY KEY (`CODIGO_ATRIBUTO`);

--
-- Indices de la tabla `tbl_bancos_preguntas`
--
ALTER TABLE `tbl_bancos_preguntas`
  ADD PRIMARY KEY (`CODIGO_BANCO_PREGUNTAS`);

--
-- Indices de la tabla `tbl_blog_posts`
--
ALTER TABLE `tbl_blog_posts`
  ADD PRIMARY KEY (`CODIGO_BLOG_POST`),
  ADD KEY `TBL_BLOG_POSTS_TBL_USUARIO_FK` (`CODIGO_USUARIO`);

--
-- Indices de la tabla `tbl_carpetas`
--
ALTER TABLE `tbl_carpetas`
  ADD PRIMARY KEY (`CODIGO_CARPETA`);

--
-- Indices de la tabla `tbl_categorias_calificacion`
--
ALTER TABLE `tbl_categorias_calificacion`
  ADD PRIMARY KEY (`CODIGO_CATEGORIA_CALIFICACION`),
  ADD KEY `IF_TBL_PUNT_BAJ_FK` (`CODIGO_PUNTAJE_BAJO`),
  ADD KEY `L_TIP_CALC_EVAL_FK` (`CODIGO_TIPO_CALCULO`);

--
-- Indices de la tabla `tbl_categorias_grupos`
--
ALTER TABLE `tbl_categorias_grupos`
  ADD PRIMARY KEY (`CODIGO_CATEGORIA`);

--
-- Indices de la tabla `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  ADD PRIMARY KEY (`CODIGO_COMENTARIO`),
  ADD KEY `BL_ACTUALIZACIONES_FK` (`CODIGO_ACTUALIZACION`),
  ADD KEY `NTARIOS_TBL_PRUEBAS_FK` (`CODIGO_PRUEBA`),
  ADD KEY `OMENTARIOS_TBL_TAREAS_FK` (`CODIGO_TAREA`),
  ADD KEY `RIOS_TBL_DISCUSIONES_FK` (`CODIGO_DISCUSION`),
  ADD KEY `S_TBL_COMENTARIOS_FK` (`CODIGO_COMENTARIO_PADRE`),
  ADD KEY `TBL_COMENTARIOS_TBL_FOTOS_FK` (`CODIGO_FOTO`),
  ADD KEY `TBL_COMENT_TBL_USS_FK` (`CODIGO_USUARIO`);

--
-- Indices de la tabla `tbl_configuraciones`
--
ALTER TABLE `tbl_configuraciones`
  ADD PRIMARY KEY (`CODIGO_CONFIGURACION`);

--
-- Indices de la tabla `tbl_conf_x_materiales`
--
ALTER TABLE `tbl_conf_x_materiales`
  ADD KEY `NF_X_MAT_TBL_CONF_FK` (`CODIGO_CONFIGURACION`),
  ADD KEY `ONF_X_MAT_TBL_MAT_FK` (`CODIGO_MATERIAL`);

--
-- Indices de la tabla `tbl_criterios`
--
ALTER TABLE `tbl_criterios`
  ADD PRIMARY KEY (`CODIGO_CRITERIO`),
  ADD KEY `TBL_CRITERIOS_TBL_ESCALAS_FK` (`CODIGO_ESCALA`),
  ADD KEY `TBL_CRITERIOS_TBL_RUBRICAS_FK` (`CODIGO_RUBRICA`);

--
-- Indices de la tabla `tbl_cursos`
--
ALTER TABLE `tbl_cursos`
  ADD PRIMARY KEY (`CODIGO_CURSO`),
  ADD KEY `SOS_TBL_AREAS_TEMATICAS_FK` (`CODIGO_AREA_TEMATICA`),
  ADD KEY `_TBL_NIVLES_EDUCATIVOS_FK` (`CODIGO_NIVEL_EDUCATIVO`);

--
-- Indices de la tabla `tbl_cursos_x_dias`
--
ALTER TABLE `tbl_cursos_x_dias`
  ADD PRIMARY KEY (`CODIGO_DIA`,`CODIGO_CURSO`),
  ADD KEY `RSOS_X_DIAS_TBL_CURSOS_FK` (`CODIGO_CURSO`);

--
-- Indices de la tabla `tbl_dias`
--
ALTER TABLE `tbl_dias`
  ADD PRIMARY KEY (`CODIGO_DIA`);

--
-- Indices de la tabla `tbl_discusiones`
--
ALTER TABLE `tbl_discusiones`
  ADD PRIMARY KEY (`CODIGO_DISCUSION`),
  ADD KEY `TBL_DISCUSIONES_TBL_ESCALAS_FK` (`CODIGO_ESCALA`),
  ADD KEY `TBL_DISC_TBL_CAT_CALIF_FK` (`CODIGO_CATEGORIA_CALIFICACION`),
  ADD KEY `USIONES_TBL_PERI_EVAL_FK` (`CODIGO_PERIODO`);

--
-- Indices de la tabla `tbl_enlaces`
--
ALTER TABLE `tbl_enlaces`
  ADD PRIMARY KEY (`CODIGO_ENLACE`);

--
-- Indices de la tabla `tbl_entregas_tareas`
--
ALTER TABLE `tbl_entregas_tareas`
  ADD PRIMARY KEY (`CODIGO_ENTREGA`),
  ADD KEY `AREAS_TBL_TAREAS_FK` (`CODIGO_TAREA`),
  ADD KEY `NTR_TAR_TBL_EST_ENTR_FK` (`CODIGO_ESTADO_ENTREGA`),
  ADD KEY `REAS_TBL_USUARIO_FK` (`CODIGO_USUARIO`);

--
-- Indices de la tabla `tbl_escalas`
--
ALTER TABLE `tbl_escalas`
  ADD PRIMARY KEY (`CODIGO_ESCALA`);

--
-- Indices de la tabla `tbl_escuelas`
--
ALTER TABLE `tbl_escuelas`
  ADD PRIMARY KEY (`CODIGO_ESCUELA`);

--
-- Indices de la tabla `tbl_estados_entregas`
--
ALTER TABLE `tbl_estados_entregas`
  ADD PRIMARY KEY (`CODIGO_ESTADO_ENTREGA`);

--
-- Indices de la tabla `tbl_estados_materiales`
--
ALTER TABLE `tbl_estados_materiales`
  ADD PRIMARY KEY (`CODIGO_ESTADO`);

--
-- Indices de la tabla `tbl_estados_mensajes`
--
ALTER TABLE `tbl_estados_mensajes`
  ADD PRIMARY KEY (`CODIGO_ESTADO`);

--
-- Indices de la tabla `tbl_estados_notificaciones`
--
ALTER TABLE `tbl_estados_notificaciones`
  ADD PRIMARY KEY (`CODIGO_ESTADO_NOTIFICACION`);

--
-- Indices de la tabla `tbl_estructuras_usuarios`
--
ALTER TABLE `tbl_estructuras_usuarios`
  ADD PRIMARY KEY (`CODIGO_ESTRUCTURA`);

--
-- Indices de la tabla `tbl_estudiantes`
--
ALTER TABLE `tbl_estudiantes`
  ADD PRIMARY KEY (`CODIGO_ESTUDIANTE`);

--
-- Indices de la tabla `tbl_estudiantes_x_padres`
--
ALTER TABLE `tbl_estudiantes_x_padres`
  ADD PRIMARY KEY (`CODIGO_ESTUDIANTE`,`CODIGO_PADRE`),
  ADD KEY `_PAD_TBL_PAD_FK` (`CODIGO_PADRE`);

--
-- Indices de la tabla `tbl_fotos`
--
ALTER TABLE `tbl_fotos`
  ADD PRIMARY KEY (`CODIGO_FOTO`);

--
-- Indices de la tabla `tbl_fotos_x_albumes`
--
ALTER TABLE `tbl_fotos_x_albumes`
  ADD PRIMARY KEY (`CODIGO_ALBUM`,`CODIGO_FOTO`),
  ADD KEY `UMES_TBL_FOTOS_FK` (`CODIGO_FOTO`);

--
-- Indices de la tabla `tbl_generos`
--
ALTER TABLE `tbl_generos`
  ADD PRIMARY KEY (`CODIGO_GENERO`);

--
-- Indices de la tabla `tbl_grupos`
--
ALTER TABLE `tbl_grupos`
  ADD PRIMARY KEY (`CODIGO_GRUPO`),
  ADD KEY `ATEGORIAS_GRUPOS_FK` (`CODIGO_CATEGORIA`),
  ADD KEY `TBL_GRUPOS_TBL_ACCESOS_FK` (`CODIGO_ACCESO`);

--
-- Indices de la tabla `tbl_instructores`
--
ALTER TABLE `tbl_instructores`
  ADD PRIMARY KEY (`CODIGO_INSTRUCTOR`),
  ADD KEY `TBL_INSTRUCTOR_TBL_ESCUELAS_FK` (`CODIGO_ESCUELA`),
  ADD KEY `TBL_INSTRUCTOR_TBL_TITULOS_FK` (`CODIGO_TITULO`);

--
-- Indices de la tabla `tbl_likes`
--
ALTER TABLE `tbl_likes`
  ADD PRIMARY KEY (`CODIGO_COMENTARIO`,`CODIGO_USUARIO`),
  ADD KEY `TBL_LIKES_TBL_USUARIO_FK` (`CODIGO_USUARIO`);

--
-- Indices de la tabla `tbl_materiales`
--
ALTER TABLE `tbl_materiales`
  ADD PRIMARY KEY (`CODIGO_MATERIAL`),
  ADD KEY `TBL_MATERIALES_TBL_ESTADOS_FK` (`CODIGO_ESTADO`),
  ADD KEY `TBL_MATERIALES_TBL_USUARIO_FK` (`CODIGO_USUARIO`);

--
-- Indices de la tabla `tbl_materiales_x_carpeta`
--
ALTER TABLE `tbl_materiales_x_carpeta`
  ADD PRIMARY KEY (`CODIGO_MATERIAL`,`CODIGO_CARPETA`),
  ADD KEY `T_X_CARP_TBL_CARP_FK` (`CODIGO_CARPETA`);

--
-- Indices de la tabla `tbl_materiales_x_usuarios`
--
ALTER TABLE `tbl_materiales_x_usuarios`
  ADD PRIMARY KEY (`CODIGO_USUARIO`,`CODIGO_MATERIAL`),
  ADD KEY `_X_US_TBL_MAT_FK` (`CODIGO_MATERIAL`);

--
-- Indices de la tabla `tbl_mat_x_estruc`
--
ALTER TABLE `tbl_mat_x_estruc`
  ADD UNIQUE KEY `TBL_MAT_X_ESTRUC__UN` (`CODIGO_MATERIAL`,`CODIGO_ESTRUCTURA`,`CODIGO_USUARIO`),
  ADD KEY `L_MAT_X_ESTRUC_TBL_ESTR_US_FK` (`CODIGO_ESTRUCTURA`),
  ADD KEY `_MAT_X_ESTRUC_TBL_USUARIO_FK` (`CODIGO_USUARIO`);

--
-- Indices de la tabla `tbl_medallas`
--
ALTER TABLE `tbl_medallas`
  ADD PRIMARY KEY (`CODIGO_MAEDALLA`);

--
-- Indices de la tabla `tbl_medallas_x_usuarios`
--
ALTER TABLE `tbl_medallas_x_usuarios`
  ADD PRIMARY KEY (`CODIGO_USUARIO`,`CODIGO_USUARIO_ASIGNADOR`,`CODIGO_MAEDALLA`),
  ADD KEY `L_MED_X_US_TBL_US_FK` (`CODIGO_USUARIO_ASIGNADOR`),
  ADD KEY `MED_X_USU_TBL_MED_FK` (`CODIGO_MAEDALLA`);

--
-- Indices de la tabla `tbl_mensajes`
--
ALTER TABLE `tbl_mensajes`
  ADD KEY `TBL_MENSAJES_TBL_EST_MsjS_FK` (`CODIGO_ESTADO`),
  ADD KEY `TBL_MENSAJES_TBL_USUARIO_FK` (`CODIGO_USUARIO`),
  ADD KEY `TBL_MENSAJES_TBL_USUARIO_FKv1` (`CODIGO_REMITENTE`);

--
-- Indices de la tabla `tbl_nivel_escala`
--
ALTER TABLE `tbl_nivel_escala`
  ADD PRIMARY KEY (`CODIGO_NIVEL`),
  ADD KEY `ESCALA_TBL_ESCALAS_FK` (`CODIGO_ESCALA`);

--
-- Indices de la tabla `tbl_nivles_educativos`
--
ALTER TABLE `tbl_nivles_educativos`
  ADD PRIMARY KEY (`CODIGO_NIVEL_EDUCATIVO`);

--
-- Indices de la tabla `tbl_notificaciones`
--
ALTER TABLE `tbl_notificaciones`
  ADD KEY `F_CUR_TBL_EST_NOTIF_FK` (`CODIGO_ESTADO_NOTIFICACION`),
  ADD KEY `TBL_NOTIFICACIONES_TBL_US_FK` (`CODIGO_USUARIO`),
  ADD KEY `TBL_NOTIF_CU_TBL_NOTIF_FK` (`CODIGO_TIPO_NOTIFICACION`),
  ADD KEY `TBL_NOTIF_TBL_COMENT_FK` (`CODIGO_COMENTARIO`),
  ADD KEY `TBL_NOTIF_TBL_ESTR_US_FK` (`CODIGO_ESTRUCTURA`),
  ADD KEY `TBL_NOTIF_TBL_MAT_FK` (`CODIGO_MATERIAL`);

--
-- Indices de la tabla `tbl_padres`
--
ALTER TABLE `tbl_padres`
  ADD PRIMARY KEY (`CODIGO_PADRE`);

--
-- Indices de la tabla `tbl_paginas`
--
ALTER TABLE `tbl_paginas`
  ADD PRIMARY KEY (`CODIGO_PAGINA`);

--
-- Indices de la tabla `tbl_periodos_evaluacion`
--
ALTER TABLE `tbl_periodos_evaluacion`
  ADD PRIMARY KEY (`CODIGO_PERIODO`);

--
-- Indices de la tabla `tbl_preguntas`
--
ALTER TABLE `tbl_preguntas`
  ADD PRIMARY KEY (`CODIGO_PREGUNTA`),
  ADD KEY `TBL_PREGUNTAS_TBL_PRUEBAS_FK` (`CODIGO_PRUEBA`),
  ADD KEY `TBL_PREG_TBL_TIP_PREG_FK` (`CODIGO_TIPO_PREGUNTA`);

--
-- Indices de la tabla `tbl_preguntas_x_bancos`
--
ALTER TABLE `tbl_preguntas_x_bancos`
  ADD PRIMARY KEY (`CODIGO_PREGUNTA`,`CODIGO_BANCO_PREGUNTAS`),
  ADD KEY `TBL_BAN_PREG_FK` (`CODIGO_BANCO_PREGUNTAS`);

--
-- Indices de la tabla `tbl_privacidades`
--
ALTER TABLE `tbl_privacidades`
  ADD UNIQUE KEY `TBL_PRIVACIDADES__UN` (`CODIGO_ATRIBUTO`,`CODIGO_ALCANCE`,`CODIGO_USUARIO`,`CODIGO_ESTRUCTURA`),
  ADD KEY `TBL_ATRS_PRIV_TBL_USUARIO_FK` (`CODIGO_USUARIO`),
  ADD KEY `TBL_ATR_PRIV_TBL_ESTR_US_FK` (`CODIGO_ESTRUCTURA`),
  ADD KEY `TBL_ATR_PRIv_TBL_ALCANCE_FK` (`CODIGO_ALCANCE`);

--
-- Indices de la tabla `tbl_pruebas`
--
ALTER TABLE `tbl_pruebas`
  ADD PRIMARY KEY (`CODIGO_PRUEBA`),
  ADD KEY `BAS_TBL_PERIODOS_EVALUACION_FK` (`CODIGO_PERIODO`),
  ADD KEY `TBL_PRUEBAS_TBL_CAT_CALIF_FK` (`CODIGO_CATEGORIA_CALIFICACION`),
  ADD KEY `TBL_PRUEBAS_TBL_ESCALAS_FK` (`CODIGO_ESCALA`);

--
-- Indices de la tabla `tbl_puntajes_bajos`
--
ALTER TABLE `tbl_puntajes_bajos`
  ADD PRIMARY KEY (`CODIGO_PUNTAJE_BAJO`);

--
-- Indices de la tabla `tbl_respuestas`
--
ALTER TABLE `tbl_respuestas`
  ADD PRIMARY KEY (`CODIGO_RESPUESTA`),
  ADD KEY `PUESTAS_TBL_PREGUNTAS_FK` (`CODIGO_PREGUNTA`);

--
-- Indices de la tabla `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`CODIGO_ROL`);

--
-- Indices de la tabla `tbl_rubricas`
--
ALTER TABLE `tbl_rubricas`
  ADD PRIMARY KEY (`CODIGO_RUBRICA1`);

--
-- Indices de la tabla `tbl_tareas`
--
ALTER TABLE `tbl_tareas`
  ADD PRIMARY KEY (`CODIGO_TAREA`),
  ADD KEY `BL_CATEGORIAS_CALIFICACION_FK` (`CODIGO_CATEGORIA_CALIFICACION`),
  ADD KEY `L_PERIODOS_EVALUACION_FK` (`CODIGO_PERIODO`),
  ADD KEY `TBL_TAREAS_TBL_RUBRICAS_FK` (`CODIGO_RUBRICA1`);

--
-- Indices de la tabla `tbl_tipos_asistencias`
--
ALTER TABLE `tbl_tipos_asistencias`
  ADD PRIMARY KEY (`CODIGO_TIPO_ASISTENCIA`);

--
-- Indices de la tabla `tbl_tipos_calculos_evaluacion`
--
ALTER TABLE `tbl_tipos_calculos_evaluacion`
  ADD PRIMARY KEY (`CODIGO_TIPO_CALCULO`);

--
-- Indices de la tabla `tbl_tipos_estudiantes`
--
ALTER TABLE `tbl_tipos_estudiantes`
  ADD PRIMARY KEY (`CODIGO_TIPO_ESTUDIANTE`);

--
-- Indices de la tabla `tbl_tipos_notificaciones`
--
ALTER TABLE `tbl_tipos_notificaciones`
  ADD PRIMARY KEY (`CODIGO_TIPO_NOTIFICACION`);

--
-- Indices de la tabla `tbl_tipos_preguntas`
--
ALTER TABLE `tbl_tipos_preguntas`
  ADD PRIMARY KEY (`CODIGO_TIPO_PREGUNTA`);

--
-- Indices de la tabla `tbl_tipos_usuarios`
--
ALTER TABLE `tbl_tipos_usuarios`
  ADD PRIMARY KEY (`CODIGO_TIPO_USUARIO`);

--
-- Indices de la tabla `tbl_titulos`
--
ALTER TABLE `tbl_titulos`
  ADD PRIMARY KEY (`CODIGO_TITULO`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`CODIGO_USUARIO`),
  ADD KEY `IO_TBL_ZONAS_HORARIAS_FK` (`CODIGO_ZONA_HORARIA`),
  ADD KEY `RIO_TBL_TIPOS_USUARIOS_FK` (`CODIGO_TIPO_USUARIO`),
  ADD KEY `TBL_USUARIO_TBL_GENEROS_FK` (`CODIGO_GENERO`),
  ADD KEY `_TBL_TIPOS_ESTUDIANTES_FK` (`CODIGO_TIPO_ESTUDIANTE`);

--
-- Indices de la tabla `tbl_usuarios_x_estructuras`
--
ALTER TABLE `tbl_usuarios_x_estructuras`
  ADD KEY `R_TBL_ROLES_FK` (`CODIGO_ROL`),
  ADD KEY `TBL_ESTR_US_FK` (`CODIGO_ESTRUCTURA`),
  ADD KEY `CUR_TBL_US_FK` (`CODIGO_USUARIO`);

--
-- Indices de la tabla `tbl_zonas_horarias`
--
ALTER TABLE `tbl_zonas_horarias`
  ADD PRIMARY KEY (`CODIGO_ZONA_HORARIA`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
