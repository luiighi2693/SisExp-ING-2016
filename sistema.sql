-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-01-2016 a las 21:26:09
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecesores`
--

CREATE TABLE IF NOT EXISTS `antecesores` (
  `id_actual` int(11) NOT NULL,
  `id_antecesor` int(11) NOT NULL,
  PRIMARY KEY (`id_actual`)
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
(3004, 2002);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `nombre` varchar(20) NOT NULL,
  `nivel` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `data`
--

INSERT INTO `data` (`nombre`, `nivel`, `id`, `descripcion`) VALUES
('prevencion', 1000, 1001, ''),
('diagnostico', 1000, 1002, ''),
('amenazas', 2000, 2001, ''),
('posibles patologias', 2000, 2002, ''),
('plantilla descriptio', 3000, 3001, ''),
('concordancia del lev', 3000, 3002, ''),
('planillas de inspecc', 3000, 3003, ''),
('verificacion del sis', 3000, 3004, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucesores`
--

CREATE TABLE IF NOT EXISTS `sucesores` (
  `id_actual` int(11) NOT NULL,
  `id_sucesor` int(11) NOT NULL,
  PRIMARY KEY (`id_sucesor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucesores`
--

INSERT INTO `sucesores` (`id_actual`, `id_sucesor`) VALUES
(1001, 2001),
(1002, 2002),
(2001, 3001),
(2002, 3002),
(2002, 3003),
(2002, 3004);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
