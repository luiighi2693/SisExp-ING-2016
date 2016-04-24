-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2016 a las 15:31:33
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ingenieria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicascolumnas_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicascolumnas_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL,
  `afectanTodosElementos` enum('SI','NO') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicascolumnas_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicascolumnas_nombrepatologia` (`idPatologia`, `nombrePatologia`, `afectanTodosElementos`) VALUES
(' fluenciaElementos', 'Fluencia de Elementos', 'SI'),
('abrasion', 'Abrasion', 'NO'),
('accionAguaMar', 'Accion de Agua de Mar', 'SI'),
('accionFuego', 'Accion del Fuego', 'SI'),
('accionSismica', 'Accion Sismica', 'NO'),
('adherenciaAnclaje', 'Adherencia y Anclaje', 'SI'),
('asentamiento', 'Asentamiento', 'NO'),
('ataqueBiologico', 'Ataque Biologico', 'NO'),
('ataqueSolucionAlcalina', 'Ataque de Solucion Alcalina', 'NO'),
('corrosionArmaduras', 'Corrosion de Armaduras', 'SI'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion', 'SI'),
('deficienciaposicionamientoArmaduras', 'Deficiencia en Posicionado de Armaduras', 'SI'),
('desecacionSuperficial', 'Desecacion Superficial', 'SI'),
('falloCompresion', 'Fallo por Compresion (Columna)', 'NO'),
('falloCortante', 'Fallo por Cortante (Columna)', 'NO'),
('falloFlexion', 'Fallo por Flexion', 'NO'),
('falloFlexionTorsion', 'Fallo por Flexion - Torsion (Columna)', 'NO'),
('falloTorsion', 'Fallo por Torsion (Columna)', 'NO'),
('falloTraccion', 'Fallo por Traccion (Columna)', 'NO'),
('impactos', 'Impactos', 'NO'),
('malaRelacionAguaCemento', 'Mala Relacion Agua/Cemento', 'SI'),
('malVibradoConcreto', 'Mal Vibrado del Concreto', 'SI'),
('oquedadesSuperficiales', 'Oquedades Superficiales', 'SI'),
('reaccionAlcalisAgregado', 'Reaccion Alcalis - Agregado', 'SI'),
('reaccionCloruros', 'Reaccion con Cloruros', NULL),
('reaccionSulfatos', 'Reaccion con Sulfatos', 'SI'),
('remocionEnconfrado', 'Remocion de Enconfrado', 'SI'),
('retraccionHidraulica', 'Retraccion Hidraulica', 'SI'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica', 'SI'),
('variacionHumedad', 'Variacion de Humedad', 'SI'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)', 'SI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `matrizrespuestaspatologicascolumnas_nombrepatologia`
--
ALTER TABLE `matrizrespuestaspatologicascolumnas_nombrepatologia`
  ADD PRIMARY KEY (`idPatologia`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
