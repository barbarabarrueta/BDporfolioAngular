-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2022 a las 02:51:44
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `porfolioangular`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acerca_de`
--

CREATE TABLE `acerca_de` (
  `id` bigint(20) NOT NULL,
  `acerca_de` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acerca_de`
--

INSERT INTO `acerca_de` (`id`, `acerca_de`) VALUES
(1, 'diseñadora grafica, diseño web, front end, back end.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `id` bigint(20) NOT NULL,
  `career` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`id`, `career`, `end`, `school`, `start`, `title`, `img`) VALUES
(1, 'Full Stack Developer Jr', '2022', 'INTI', '2021', 'Plan Argentina Programa', './assets/INTI.jpeg'),
(2, 'Programador de pag web', '2021', 'CFP 401', '2020', 'Centro de Formación Profesional', './assets/CFP.jpg'),
(3, '\"Diseñador Gráfico', '2001', 'UAI', '1998', 'Ciencias de la comunicación', './assets/UAI.jpg'),
(4, 'Diseñador Gráfico asistido por computadora', '1998', 'Instituto Superior Mariano Moreno', '1997', 'Diseño Gráfico', './assets/MARIANOMORENO.jpg'),
(5, 'Perito Mercantil', '1996', 'Escuela Secundaria Media N° 14', '1991', 'Perito Mercantil', './assets/castillo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcion`, `empresa`, `puesto`) VALUES
(1, 'Diseño y maquetado de sitios web - Diseño e impresión de gráfica publicitaria.', 'Grafika del mar', 'Diseño Grafico - Diseño web.'),
(2, 'diseño y armado de sitio web.', 'Miramar Alquila', 'Diseñador y programador web.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `apellido`, `nombre`, `ubicacion`, `img`) VALUES
(1, 'Barrueta', 'Bárbara', 'Miramar, Bs. As., Argentina', './assets/fotoperfil.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `descripcion`, `link`, `titulo`) VALUES
(1, 'Sitio web para alquilar casas, deptos., cabañas por temporada de verano. En la ciudad de Miramar', 'http://www.miramaralquila.com.ar', 'MiramarAlquila sitio web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `rol_nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills_habilidades`
--

CREATE TABLE `skills_habilidades` (
  `id` bigint(20) NOT NULL,
  `habilidades` varchar(255) DEFAULT NULL,
  `porcentaje` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `skills_habilidades`
--

INSERT INTO `skills_habilidades` (`id`, `habilidades`, `porcentaje`) VALUES
(15, 'Manejo del tiempo', 90),
(16, 'Trabajo en equipo', 80),
(17, 'Comunicación', 80),
(18, 'Liderazgo', 75),
(19, 'Pensamiento Lateral', 90),
(21, 'Empatía', 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills_idiomas`
--

CREATE TABLE `skills_idiomas` (
  `id` bigint(20) NOT NULL,
  `idioma` varchar(255) DEFAULT NULL,
  `porcentaje` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `skills_idiomas`
--

INSERT INTO `skills_idiomas` (`id`, `idioma`, `porcentaje`) VALUES
(14, 'Ingles', 50),
(13, 'Portugues', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills_programas`
--

CREATE TABLE `skills_programas` (
  `id` bigint(20) NOT NULL,
  `porcentaje` bigint(20) NOT NULL,
  `programa` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `skills_programas`
--

INSERT INTO `skills_programas` (`id`, `porcentaje`, `programa`) VALUES
(1, 80, 'Corel Draw'),
(2, 75, 'PhotoShop'),
(3, 75, 'HTML'),
(4, 60, 'CSS'),
(5, 50, 'Bootstrap'),
(6, 50, 'javascrip'),
(7, 50, 'Typescript'),
(8, 50, 'Angular'),
(9, 50, 'Laravel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`) VALUES
(4, 'admin@admin.com', 'admin', 'admin', '$2a$10$DvVGi1mcTvX3r//ZaWJmkeUC4H6tUN/js9R5fmGLW7bhWc3A5f.Ki'),
(5, 'user@user.com', 'user', 'user', '$2a$10$xiMulrMb3woG5WyTSrwDre8MyvfvaddFLrK.BWPRsQnOJMnD6Whya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id`, `rol_id`) VALUES
(4, 1),
(4, 2),
(5, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acerca_de`
--
ALTER TABLE `acerca_de`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skills_habilidades`
--
ALTER TABLE `skills_habilidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skills_idiomas`
--
ALTER TABLE `skills_idiomas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skills_programas`
--
ALTER TABLE `skills_programas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_id`,`rol_id`),
  ADD KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
