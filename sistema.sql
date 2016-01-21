-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2016 a las 05:23:31
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecesores`
--

CREATE TABLE `antecesores` (
  `id_actual` int(11) NOT NULL,
  `id_antecesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `antecesores`
--

INSERT INTO `antecesores` (`id_actual`, `id_antecesor`) VALUES
(1001, 0),
(1002, 0),
(2001, 1001),
(2002, 1002),
(3001, 2001),
(3002, 2002),
(3003, 2002),
(3004, 2002),
(4001, 3001),
(4002, 3001),
(4003, 3001),
(4004, 3002),
(4005, 3002),
(4006, 3003),
(4007, 3003),
(4008, 3003),
(4009, 3004),
(4010, 3004),
(5001, 4002),
(5002, 4002),
(5003, 4004),
(5004, 4004),
(5005, 4006),
(5006, 4007),
(5007, 4008),
(5008, 4008),
(5009, 4009),
(6001, 5007);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data`
--

CREATE TABLE `data` (
  `nombre` varchar(100) NOT NULL,
  `nivel` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `data`
--

INSERT INTO `data` (`nombre`, `nivel`, `id`, `descripcion`) VALUES
('prevencion (etapa Diseño)', 1000, 1001, ''),
('diagnostico (etapa de Servicio)', 1000, 1002, ''),
('amenazas (alcance de investigacion)', 2000, 2001, ''),
('posibles patologias', 2000, 2002, ''),
('plantilla descripcion amenaza y ensayos necesarios', 3000, 3001, ''),
('concordancia del levantamiento altiplainetrico con planes edificacion', 3000, 3002, ''),
('planillas de inspeccion con estudios necesarios a realizar', 3000, 3003, ''),
('verificacion del sistema de fundacion con el tipo de suelo presente', 3000, 3004, ''),
('metodo de fructuacion', 4000, 4001, ''),
('planilla descripcion N° 2', 4000, 4002, ''),
('Conclusion', 4000, 4003, ''),
('calculo estructural', 4000, 4004, ''),
('planillas de inspeccion', 4000, 4005, ''),
('calculo estructural', 4000, 4006, ''),
('planillas inspeccion N°2', 4000, 4007, ''),
('Causas y Consecuencias', 4000, 4008, ''),
('Causas y Consecuencias', 4000, 4009, ''),
('Planillas inspeccion', 4000, 4010, ''),
('Conclusion', 5000, 5001, ''),
('Metodo de Prevencion', 5000, 5002, ''),
('Fallo Elemento', 5000, 5003, ''),
('Planilla Inspeccion', 5000, 5004, ''),
('Derivacion Anterior', 5000, 5005, ''),
('Causas y Consecuencias', 5000, 5006, ''),
('Rehabilitacion', 5000, 5007, ''),
('Conclusion', 5000, 5008, ''),
('Rehabilitacion', 5000, 5009, ''),
('Prevencion y Mantenimiento', 6000, 6001, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucesores`
--

CREATE TABLE `sucesores` (
  `id_actual` int(11) NOT NULL,
  `id_sucesor` int(11) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucesores`
--

INSERT INTO `sucesores` (`id_actual`, `id_sucesor`, `id`) VALUES
(5007, 6001, 0),
(1001, 2001, 1),
(1002, 2002, 2),
(2001, 3001, 3),
(2002, 3002, 4),
(2002, 3003, 5),
(2002, 3004, 6),
(3001, 4001, 7),
(3001, 4002, 8),
(3001, 4003, 9),
(3002, 4004, 10),
(3002, 4005, 11),
(3003, 4006, 12),
(3003, 4007, 13),
(3003, 4008, 14),
(3004, 4009, 15),
(3004, 4010, 16),
(4002, 5001, 17),
(4002, 5002, 18),
(4004, 5003, 19),
(4004, 5004, 20),
(4006, 5005, 21),
(4007, 5006, 22),
(4008, 5007, 23),
(4008, 5008, 24),
(4009, 5009, 25),
(4005, 3003, 26);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `antecesores`
--
ALTER TABLE `antecesores`
  ADD PRIMARY KEY (`id_actual`);

--
-- Indices de la tabla `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucesores`
--
ALTER TABLE `sucesores`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
