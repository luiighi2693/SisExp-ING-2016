-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2016 a las 15:30:23
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
-- Estructura de tabla para la tabla `matrizrespuestaspatologicascolumnas_patologia`
--

CREATE TABLE `matrizrespuestaspatologicascolumnas_patologia` (
  `nombre` varchar(100) NOT NULL,
  `numeroPregunta` int(100) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `variacionTermica` varchar(50) NOT NULL,
  `variacionHumedad` varchar(50) NOT NULL,
  `retraccionHidraulicaTermica` varchar(50) NOT NULL,
  `retraccionHidraulica` varchar(50) NOT NULL,
  `desecacionSuperficial` varchar(50) NOT NULL,
  `accionFuego` varchar(50) NOT NULL,
  `reaccionSulfatos` varchar(50) NOT NULL,
  `reaccionCloruros` varchar(50) NOT NULL,
  `corrosionCarbonatacion` varchar(50) NOT NULL,
  `deficienciaposicionamientoArmaduras` varchar(50) NOT NULL,
  `adherenciaAnclaje` varchar(50) NOT NULL,
  `accionAguaMar` varchar(50) NOT NULL,
  `oquedadesSuperficiales` varchar(50) NOT NULL,
  `reaccionAlcalisAgregado` varchar(50) NOT NULL,
  `fluenciaElementos` varchar(50) NOT NULL,
  `remocionEnconfrado` varchar(50) NOT NULL,
  `malVibradoConcreto` varchar(50) NOT NULL,
  `malaRelacionAguaCemento` varchar(50) NOT NULL,
  `corrosionArmaduras` varchar(50) NOT NULL,
  `ataqueBiologico` varchar(50) NOT NULL,
  `falloFlexion` varchar(50) NOT NULL,
  `falloCortante` varchar(50) NOT NULL,
  `falloFlexionTorsion` varchar(50) NOT NULL,
  `falloCompresion` varchar(50) NOT NULL,
  `falloTorsion` varchar(50) NOT NULL,
  `falloTraccion` varchar(50) NOT NULL,
  `accionSismica` varchar(50) NOT NULL,
  `asentamiento` varchar(50) NOT NULL,
  `impactos` varchar(50) NOT NULL,
  `abrasion` varchar(50) NOT NULL,
  `ataqueSolucionAlcalina` varchar(50) NOT NULL,
  `numeroValores` int(100) NOT NULL,
  `valores` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicascolumnas_patologia`
--

INSERT INTO `matrizrespuestaspatologicascolumnas_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `reaccionCloruros`, `corrosionCarbonatacion`, `deficienciaposicionamientoArmaduras`, `adherenciaAnclaje`, `accionAguaMar`, `oquedadesSuperficiales`, `reaccionAlcalisAgregado`, `fluenciaElementos`, `remocionEnconfrado`, `malVibradoConcreto`, `malaRelacionAguaCemento`, `corrosionArmaduras`, `ataqueBiologico`, `falloFlexion`, `falloCortante`, `falloFlexionTorsion`, `falloCompresion`, `falloTorsion`, `falloTraccion`, `accionSismica`, `asentamiento`, `impactos`, `abrasion`, `ataqueSolucionAlcalina`, `numeroValores`, `valores`) VALUES
('Planilla N°5 FISURAS - COLUMNAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 3, 'PASIVAS | ACTIVAS | NO'),
('Planilla N°5 FISURAS - COLUMNAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI, CON ENTRECRUZAMIENTO | NO'),
('Planilla N°5 FISURAS - COLUMNAS', 3, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 4, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°5 FISURAS - COLUMNAS', 5, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 6, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'DURANTE PRIMERAS HORAS | NO'),
('Planilla N°5 FISURAS - COLUMNAS', 7, 'Tramo central / Confinamiento (Momento Max.)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 8, 'Inclinaciones Distintas en cada Cara', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO ', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 9, 'Paralelas al Acero Longitudinal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'SI (CUALQUIERA)', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 4, 'SI (CUALQUIERA) | SI, CONTINUAS | SI | NO'),
('Planilla N°5 FISURAS - COLUMNAS', 10, 'Proximas a la cara del Apoyo / Confinamiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 11, 'Paralelas al Acero Transversal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 12, 'Con rotura de Elementos Adosados', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 13, 'Restringe Dilatacion de Elementos', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 14, 'Micro-Fisuras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 15, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 16, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 17, 'En la zona de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 18, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'VERTICALMENTE', 'VERTICALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'VERTICALMENTE', 'HORIZONTALMENTE', 'VERTICALMENTE', 'NO', 'DIAGONALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'VERTICALMENTE', 'DIAGONALMENTE', 'HORIZONTALMENTE', 'CUALQUIERA', 'DIAGONALMENTE', 'HORIZONTALMENTE', 'NO', 'CUALQUIERA', 6, 'CUALQUIERA | NO | DIAGONALMENTE | HORIZONTALMENTE | VERTICALMENTE | HORIZONTALMENTE / VERTICALMENTE'),
('Planilla N°5 FISURAS - COLUMNAS', 19, 'Perpendiculares al Acero Principal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 20, 'Fisuras Tipo Resorte', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 21, 'En la zona de Traccion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 22, 'Fisuras de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'A,B,C,D,E', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 3, 'SI | NO | A,B,C,D,E'),
('Planilla N°5 FISURAS - COLUMNAS', 23, 'En todas las Caras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°5 FISURAS - COLUMNAS', 24, 'Superficiales / Profundas', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'NO', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIAL', 'SUPERFICIAL', 3, 'SUPERFICIAL | PROFUNDA | NO'),
('Planilla N°6 QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 2, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 1, 'NO'),
('Planilla N°6 QUIMICAS', 3, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 4, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 5, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 6, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 7, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 1, 'NO'),
('Planilla N°6 QUIMICAS', 8, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `matrizrespuestaspatologicascolumnas_patologia`
--
ALTER TABLE `matrizrespuestaspatologicascolumnas_patologia`
  ADD PRIMARY KEY (`nombre`,`numeroPregunta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
