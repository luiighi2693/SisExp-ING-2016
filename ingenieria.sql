-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2016 a las 06:49:49
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.6.14

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
('reaccionCloruros', 'Reaccion con Cloruros', 'SI'),
('reaccionSulfatos', 'Reaccion con Sulfatos', 'SI'),
('remocionEnconfrado', 'Remocion de Enconfrado', 'SI'),
('retraccionHidraulica', 'Retraccion Hidraulica', 'SI'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica', 'SI'),
('variacionHumedad', 'Variacion de Humedad', 'SI'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)', 'SI');

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
('Planilla N°6 QUIMICAS', 8, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 9, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 10, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 11, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 1, 'NO'),
('Planilla N°6 QUIMICAS', 12, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 13, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 14, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 15, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | CUALQUIERA'),
('Planilla N°6 QUIMICAS', 16, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 17, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 18, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 19, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 20, 'Presencia de Ambiente Agresivo', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 21, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°6 QUIMICAS', 22, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 1, 'NO'),
('Planilla N°7 FISICAS', 2, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 1, 'NO'),
('Planilla N°7 FISICAS', 3, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 1, 'NO'),
('Planilla N°7 FISICAS', 4, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'NO', 'PERDIDA DE SECCION', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'AUMENTO DE VOLUMEN', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 5, 'Variaciones de Volumen antes de la Patologia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 6, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 7, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 8, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 9, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 10, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 11, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 12, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 13, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 2, 'NO | SI'),
('Planilla N°7 FISICAS', 14, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'NO | SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicaslosas_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicaslosas_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL,
  `afectanTodosElementos` enum('SI','NO') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicaslosas_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicaslosas_nombrepatologia` (`idPatologia`, `nombrePatologia`, `afectanTodosElementos`) VALUES
('abrasion', 'Abrasion', 'NO'),
('accionAguaMar', 'Accion de Agua de Mar', 'SI'),
('accionFuego', 'Accion del Fuego', 'SI'),
('accionSismica', 'Accion Sismica', 'NO'),
('adherenciaAnclaje', 'Adherencia y Anclaje', 'SI'),
('asentamiento', 'Asentamiento', 'NO'),
('ataqueAguasPuras', 'Ataque de Aguas Puras', 'NO'),
('ataqueBiologico', 'Ataque Biologico', 'SI'),
('ataqueSolucionAlcalina', 'Ataque de Solucion Alcalina', 'NO'),
('ataqueSolucionesAcidas', 'Ataque de Soluciones Acidas', 'NO'),
('compresionLosas', 'Compresion en Losas', 'NO'),
('corrosionArmaduras', 'Corrosion de Armaduras', 'SI'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion', 'SI'),
('cortanteLosas', 'Cortante en Losas', 'NO'),
('criptoflorescencia', 'Criptoflorescencia', 'NO'),
('deficienciaPosicionadoArmaduras', 'Deficiencia en Posicionado de Armaduras', 'SI'),
('desecacionsuperficial', 'Desecacion Superficial', 'SI'),
('eflorescencia', 'Eflorescencia', 'NO'),
('Erosion', 'Erosion', 'NO'),
('flexionLosas', 'Flexion en Losas', 'NO'),
('fluenciaElementos', 'Fluencia de Elementos', 'SI'),
('impactoExplosion', 'Impacto - Explosion', 'NO'),
('malaReaccionAguaCemento', 'Mala Relacion Agua/Cemento', 'SI'),
('malVibradoConcreto', 'Mal Vibrado del Concreto', 'SI'),
('oquedadesSuperficiales', 'Oquedades Superficiales', 'SI'),
('reaccionAlcalisAgregado', 'Reaccion Alcalis - Agregado', 'SI'),
('reaccionCloruros', 'Reaccion con Cloruros', 'SI'),
('reaccionSulfatos', 'Reaccion con Sulfatos', 'SI'),
('remocionEnconfrado', 'Remocion de Enconfrado', 'SI'),
('retraccionHidraulica', 'Retraccion Hidraulica', 'SI'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica', 'SI'),
('traccionLosas', 'Traccion en Losas', 'NO'),
('variacionHumedad', 'Variacion de Humedad', 'SI'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicaslosas_patologia`
--

CREATE TABLE `matrizrespuestaspatologicaslosas_patologia` (
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
  `malaRelacionAguaCemento` varchar(50) NOT NULL,
  `malVibradoConcreto` varchar(50) NOT NULL,
  `corrosionArmaduras` varchar(50) NOT NULL,
  `ataqueBiologico` varchar(50) NOT NULL,
  `flexionLosas` varchar(50) NOT NULL,
  `ataqueSolucionAlcalina` varchar(50) NOT NULL,
  `ataqueSolucionesAcidas` varchar(50) NOT NULL,
  `criptoflorescencia` varchar(50) NOT NULL,
  `eflorescencia` varchar(50) NOT NULL,
  `asentamiento` varchar(50) NOT NULL,
  `ataqueAguasPuras` varchar(50) NOT NULL,
  `accionSismica` varchar(50) NOT NULL,
  `abrasion` varchar(50) NOT NULL,
  `Erosion` varchar(50) NOT NULL,
  `compresionLosas` varchar(50) NOT NULL,
  `impactoExplosion` varchar(50) NOT NULL,
  `cortanteLosas` varchar(50) NOT NULL,
  `traccionLosas` varchar(50) NOT NULL,
  `numeroValores` int(100) NOT NULL,
  `valores` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicaslosas_patologia`
--

INSERT INTO `matrizrespuestaspatologicaslosas_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `reaccionCloruros`, `corrosionCarbonatacion`, `deficienciaposicionamientoArmaduras`, `adherenciaAnclaje`, `accionAguaMar`, `oquedadesSuperficiales`, `reaccionAlcalisAgregado`, `fluenciaElementos`, `remocionEnconfrado`, `malaRelacionAguaCemento`, `malVibradoConcreto`, `corrosionArmaduras`, `ataqueBiologico`, `flexionLosas`, `ataqueSolucionAlcalina`, `ataqueSolucionesAcidas`, `criptoflorescencia`, `eflorescencia`, `asentamiento`, `ataqueAguasPuras`, `accionSismica`, `abrasion`, `Erosion`, `compresionLosas`, `impactoExplosion`, `cortanteLosas`, `traccionLosas`, `numeroValores`, `valores`) VALUES
('Planilla N°5  FISURAS - LOSAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'NO', 'PASIVAS', 'NO', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 3, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 4, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 5, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 6, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 7, 'Tramo central / Tramo Mayor Momento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 8, 'Inclinaciones Distintas en cada Cara', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 9, 'Vertical hacia la L.N', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 10, 'Paralelas al Acero Longitudinal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'SI, NO CONTINUAS', 'SI (CUALQUIERA)', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 11, 'Proximas a la cara del Apoyo / Confinamiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 12, 'Paralelas al Acero Transversal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 13, 'Con rotura de Elementos Adosados', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 14, 'Restringe Dilatacion de Elementos', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 15, 'Micro-Fisuras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 16, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 17, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 18, 'En la zona de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 19, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'NO', 'DIAGONALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'DIAGONALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'NO', 'VERTICALMENTE', 'VERTICALMENTE', 'DIAGONALMENTE', 'HORIZONTALMENTE', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 20, 'Perpendiculares al Acero Principal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 21, 'En la zona de Traccion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 22, 'Fisuras en Elementos Restringentes', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - LOSAS', 23, 'Superficiales / Profundas', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'NO', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIALES', 'SUPERFICIALES', 'SUPERFICIALES', 'NO', 'PROFUNDA', 'SUPERFICIALES', 'SUPERFICIALES', 'SUPERFICIALES', 'SUPERFICIALES', 'PROFUNDA', 'SUPERFICIALES', 'PROFUNDA', 'SUPERFICIALES', 'SUPERFICIALES', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIALES', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 2, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 3, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 4, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 5, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 6, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 7, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 8, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 9, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 10, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 11, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 12, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 13, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 14, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 15, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 16, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 17, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 18, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 19, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 20, 'Presencia de Ambiente Agresivo', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 21, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 22, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 2, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 3, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 4, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'AUMENTO DE VOLUMEN', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 5, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 6, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 7, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 8, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 9, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 10, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 11, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 12, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 13, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 14, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasmuros_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicasmuros_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL,
  `afectanTodosElementos` enum('SI','NO') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasmuros_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicasmuros_nombrepatologia` (`idPatologia`, `nombrePatologia`, `afectanTodosElementos`) VALUES
('abrasion', 'Abrasion', 'NO'),
('accionAguaMar', 'Accion de Agua de Mar', 'SI'),
('accionFuego', 'Accion del Fuego', 'SI'),
('accionSismica', 'Accion Sismica', 'NO'),
('adherenciaAnclaje', 'Adherencia y Anclaje', 'SI'),
('asentamiento', 'Asentamiento', 'NO'),
('ataqueBiologico', 'Ataque Biologico', 'SI'),
('compresionMuros', 'Compresion en Muros', 'NO'),
('corrosionArmaduras', 'Corrosion de Armaduras', 'SI'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion', 'SI'),
('cortanteMuros', 'Cortante en Muros', 'NO'),
('criptoflorescencia', 'Criptoflorescencia', 'NO'),
('deficienciaPosicionadoArmaduras', 'Deficiencia en Posicionado de Armaduras', 'SI'),
('desecacionsuperficial', 'Desecacion Superficial', 'SI'),
('eflorescencia', 'Eflorescencia', 'NO'),
('erosion', 'Erosion', 'NO'),
('flexionMuros', 'Flexion en Muros', 'NO'),
('fluenciaElementos', 'Fluencia de Elementos', 'SI'),
('impactos', 'Impactos', 'NO'),
('malaReaccionAguaCemento', 'Mala Relacion Agua/Cemento', 'SI'),
('malVibradoConcreto', 'Mal Vibrado del Concreto', 'SI'),
('oquedadesSuperficiales', 'Oquedades Superficiales', 'SI'),
('reaccionAlcalisAgregado', 'Reaccion Alcalis - Agregado', 'SI'),
('reaccionCloruros', 'Reaccion con Cloruros', 'SI'),
('reaccionSulfatos', 'Reaccion con Sulfatos', 'SI'),
('remocionEnconfrado', 'Remocion de Enconfrado', 'SI'),
('retraccionHidraulica', 'Retraccion Hidraulica', 'SI'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica', 'SI'),
('traccionMuros', 'Traccion en Muros', 'NO'),
('variacionHumedad', 'Variacion de Humedad', 'SI'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasmuros_patologia`
--

CREATE TABLE `matrizrespuestaspatologicasmuros_patologia` (
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
  `corrosionArmaduras` varchar(50) NOT NULL,
  `malaRelacionAguaCemento` varchar(50) NOT NULL,
  `ataqueBiologico` varchar(50) NOT NULL,
  `criptoflorescencia` varchar(50) NOT NULL,
  `eflorescencia` varchar(50) NOT NULL,
  `asentamiento` varchar(50) NOT NULL,
  `impactos` varchar(50) NOT NULL,
  `erosion` varchar(50) NOT NULL,
  `abrasion` varchar(50) NOT NULL,
  `compresionMuros` varchar(50) NOT NULL,
  `flexionMuros` varchar(50) NOT NULL,
  `cortanteMuros` varchar(50) NOT NULL,
  `accionSismica` varchar(50) NOT NULL,
  `traccionMuros` varchar(50) NOT NULL,
  `numeroValores` int(100) NOT NULL,
  `valores` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasmuros_patologia`
--

INSERT INTO `matrizrespuestaspatologicasmuros_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `reaccionCloruros`, `corrosionCarbonatacion`, `deficienciaposicionamientoArmaduras`, `adherenciaAnclaje`, `accionAguaMar`, `oquedadesSuperficiales`, `reaccionAlcalisAgregado`, `fluenciaElementos`, `remocionEnconfrado`, `malVibradoConcreto`, `corrosionArmaduras`, `malaRelacionAguaCemento`, `ataqueBiologico`, `criptoflorescencia`, `eflorescencia`, `asentamiento`, `impactos`, `erosion`, `abrasion`, `compresionMuros`, `flexionMuros`, `cortanteMuros`, `accionSismica`, `traccionMuros`, `numeroValores`, `valores`) VALUES
('Planilla N°5 - FISURAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 3, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 4, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 5, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 6, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 7, 'Tramo central / Mayor Momento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 8, 'Inclinaciones Distintas en cada Cara', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 9, 'Vertical hacia la L.N', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 10, 'Paralelas al Acero Longitudinal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'SI, NO CONTINUAS', 'SI (CUALQUIERA)', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 11, 'Proximas a la cara del Apoyo / Confinamiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 12, 'Paralelas al Acero Transversal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 13, 'Con rotura de Elementos Adosados', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 14, 'Restringe Dilatacion de Elementos', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 15, 'Micro-Fisuras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 16, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 17, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 18, 'En la zona de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 19, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE / VERTICALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'CUALQUIERA', 'DIAGONALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'NO', 'NO', 'VERTICALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'CUALQUIERA', 'HORIZONTALMENTE', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 20, 'Perpendiculares al Acero Principal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 21, 'En la zona de Traccion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 22, 'Fisuras de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 23, 'Fisuras en Elementos Restringentes', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 24, 'Profundidad de Fisuras', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDAS', 'PROFUNDAS', 'SUPERFICIAL', 'NO', 'SUPERFICIAL', 'PROFUNDAS', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIALES', 'NO', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDAS', 'SUPERFICIAL', 'NO', 'NO', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 2, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 3, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 4, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 5, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 6, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 7, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 8, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 9, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 10, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 11, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 12, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 13, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 14, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 15, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 16, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 17, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 18, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 19, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 20, 'Presencia de Ambiente Agresivo', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 21, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 22, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 2, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 3, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 4, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'NO', 'PERDIDA DE SECCION', 'NO', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 5, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 6, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 7, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 8, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 9, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 10, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 11, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 12, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 13, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 14, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasparedes_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicasparedes_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL,
  `afectanTodosElementos` enum('SI','NO') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasparedes_patologia`
--

CREATE TABLE `matrizrespuestaspatologicasparedes_patologia` (
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
  `corrosionCarbonatacion` varchar(50) NOT NULL,
  `adherenciaAnclaje` varchar(50) NOT NULL,
  `fluenciaElementos` varchar(50) NOT NULL,
  `remocionEnconfrado` varchar(50) NOT NULL,
  `malaReaccionAguaCemento` varchar(50) NOT NULL,
  `criptoflorescencia` varchar(50) NOT NULL,
  `eflorescencia` varchar(50) NOT NULL,
  `asentamiento` varchar(50) NOT NULL,
  `impactos` varchar(50) NOT NULL,
  `erosion` varchar(50) NOT NULL,
  `abrasion` varchar(50) NOT NULL,
  `compresionMuros` varchar(50) NOT NULL,
  `flexionMuros` varchar(50) NOT NULL,
  `cortanteMuros` varchar(50) NOT NULL,
  `accionSismica` varchar(50) NOT NULL,
  `traccionMuros` varchar(50) NOT NULL,
  `ataqueSolucionAlcalina` varchar(50) NOT NULL,
  `accionAguaMar` varchar(50) NOT NULL,
  `oquedadesSuperficiales` varchar(50) NOT NULL,
  `ataqueBiologico` varchar(50) NOT NULL,
  `numeroValores` int(100) NOT NULL,
  `valores` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasparedes_patologia`
--

INSERT INTO `matrizrespuestaspatologicasparedes_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `corrosionCarbonatacion`, `adherenciaAnclaje`, `fluenciaElementos`, `remocionEnconfrado`, `malaReaccionAguaCemento`, `criptoflorescencia`, `eflorescencia`, `asentamiento`, `impactos`, `erosion`, `abrasion`, `compresionMuros`, `flexionMuros`, `cortanteMuros`, `accionSismica`, `traccionMuros`, `ataqueSolucionAlcalina`, `accionAguaMar`, `oquedadesSuperficiales`, `ataqueBiologico`, `numeroValores`, `valores`) VALUES
('Planilla N°5 - FISURAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'NO', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 3, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 4, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 5, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 6, 'Proximas al Apoyo o Confinamiento de Elementos Estructurales', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 7, 'Con rotura de Elementos Adosados', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 8, 'En Elementos Restringentes', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 9, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 10, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 11, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'DIAGONALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'NO', 'NO', 'VERTICALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'CUALQUIERA', 'HORIZONTALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 12, 'Fisuras de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5 - FISURAS', 13, 'Superficiales / Profundas', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDAS', 'SUPERFICIAL', 'NO', 'NO', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'SUPERFICIAL', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 2, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 3, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 4, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 5, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 6, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 7, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 8, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 9, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 10, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 11, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 12, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 13, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 14, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 15, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 16, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 17, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 18, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 19, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 20, 'Presencia de Ambiente Agresivo', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 21, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 22, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 2, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 3, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 4, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'AUMENTO DE VOLUMEN', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'NO', 'PERDIDA DE SECCION', 'NO', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 5, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 6, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 7, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 8, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 9, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 10, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 11, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 12, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 13, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 14, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 2, 'SI | NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasvigas_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicasvigas_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL,
  `afectanTodosElementos` enum('SI','NO') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasvigas_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicasvigas_nombrepatologia` (`idPatologia`, `nombrePatologia`, `afectanTodosElementos`) VALUES
('accionAguaMar', 'Accion de Agua de Mar', 'SI'),
('accionFuego', 'Accion del Fuego', 'SI'),
('accionSismica', 'Accion Sismica', 'NO'),
('adherenciaAnclaje', 'Adherencia y Anclaje', 'SI'),
('asentamiento', 'Asentamiento', 'NO'),
('ataqueBiologico', 'Ataque Biologico', 'SI'),
('compresionVigas', 'Compresion en Vigas', 'NO'),
('corrimientoAcerosVigas', 'Corrimiento de Aceros en Vigas', 'NO'),
('corrosionArmaduras', 'Corrosion de Armaduras', 'SI'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion', 'SI'),
('CortanteVigtas', 'Cortante en Vigas', 'NO'),
('criptoflorescencia', 'Criptoflorescencia', 'NO'),
('deficienciaPosicionadoArmaduras', 'Deficiencia en Posicionado de Armaduras', 'SI'),
('desecacionsuperficial', 'Desecacion Superficial', 'SI'),
('eflorecencia', 'Eflorescencia', 'NO'),
('flexionCortante', 'Flexion - Cortante ( Vigas)', 'NO'),
('flexionTorsionVigas', 'Flexion - Torsion en Vigas', 'NO'),
('flexionVigas', 'Flexion en Vigas', 'NO'),
('fluenciaElementos', 'Fluencia de Elementos', 'SI'),
('malaReaccionAguaCemento', 'Mala Relacion Agua/Cemento', 'SI'),
('malVibradoConcreto', 'Mal Vibrado del Concreto', 'SI'),
('oquedadesSuperficiales', 'Oquedades Superficiales', 'SI'),
('reaccionAlcalisAgregado', 'Reaccion Alcalis - Agregado', 'SI'),
('reaccionCloruros', 'Reaccion con Cloruros', 'SI'),
('reaccionSulfatos', 'Reaccion con Sulfatos', 'SI'),
('remocionEnconfrado', 'Remocion de Enconfrado', 'SI'),
('retraccionHidraulica', 'Retraccion Hidraulica', 'SI'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica', 'SI'),
('solucionAlcalina', 'Solucion Alcalina', 'NO'),
('torsionVigas', 'Torsion en Vigas', 'NO'),
('traccionVigas', 'Traccion en Vigas', 'NO'),
('variacionHumedad', 'Variacion de Humedad', 'SI'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasvigas_patologia`
--

CREATE TABLE `matrizrespuestaspatologicasvigas_patologia` (
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
  `malaRelacionAguaCemento` varchar(50) NOT NULL,
  `malVibradoConcreto` varchar(50) NOT NULL,
  `corrosionArmaduras` varchar(50) NOT NULL,
  `ataqueBiologico` varchar(50) NOT NULL,
  `solucionAlcalina` varchar(50) NOT NULL,
  `flexionCortante` varchar(50) NOT NULL,
  `flexionVigas` varchar(50) NOT NULL,
  `torsionVigas` varchar(50) NOT NULL,
  `CortanteVigas` varchar(50) NOT NULL,
  `flexionTorsionVigas` varchar(50) NOT NULL,
  `traccionVigas` varchar(50) NOT NULL,
  `compresionVigas` varchar(50) NOT NULL,
  `corrimientoAcerosVigas` varchar(50) NOT NULL,
  `criptoflorescencia` varchar(50) NOT NULL,
  `eflorecencia` varchar(50) NOT NULL,
  `accionSismica` varchar(50) NOT NULL,
  `asentamiento` varchar(50) NOT NULL,
  `numeroValores` int(100) NOT NULL,
  `valores` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasvigas_patologia`
--

INSERT INTO `matrizrespuestaspatologicasvigas_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `reaccionCloruros`, `corrosionCarbonatacion`, `deficienciaposicionamientoArmaduras`, `adherenciaAnclaje`, `accionAguaMar`, `oquedadesSuperficiales`, `reaccionAlcalisAgregado`, `fluenciaElementos`, `remocionEnconfrado`, `malaRelacionAguaCemento`, `malVibradoConcreto`, `corrosionArmaduras`, `ataqueBiologico`, `solucionAlcalina`, `flexionCortante`, `flexionVigas`, `torsionVigas`, `CortanteVigas`, `flexionTorsionVigas`, `traccionVigas`, `compresionVigas`, `corrimientoAcerosVigas`, `criptoflorescencia`, `eflorecencia`, `accionSismica`, `asentamiento`, `numeroValores`, `valores`) VALUES
('Planilla N°5  FISURAS - VIGAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'ACTIVAS', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 3, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 4, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 5, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 6, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 7, 'Tramo central / Tramo Mayor Momento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 8, 'Inclinaciones Distintas en cada Cara', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 9, 'Vertical hacia la L.N', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 10, 'Paralelas al Acero Longitudinal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'SI (CUALQUIERA)', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI (CONTINUAS)', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CONTINUAS)', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 11, 'Proximas a la cara del Apoyo / Confinamiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 12, 'Paralelas al Acero Transversal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 13, 'Con rotura de Elementos Adosados', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 14, 'Restringe Dilatacion de Elementos', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 15, 'Micro-Fisuras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 16, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 17, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 18, 'En la zona de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 19, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'HORIZONTALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE', 'NO', 'CUALQUIERA', 'HORIZONTALMENTE', 'VERTICALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'VERTICALMENTE', 'HORIZONTALMENTE', 'HORIZONTALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'DIAGONALMENTE', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 20, 'Perpendiculares al Acero Principal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 21, 'Fisuras Tipo Resorte', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 22, 'En la zona de Traccion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 23, 'Fisuras de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 24, 'En todas las Caras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 25, 'Viga de Borde / Cantiléver', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 26, 'Fisuras en Elementos Restringentes', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 2, 'SI | NO'),
('Planilla N°5  FISURAS - VIGAS', 27, 'Superficiales / Profundas', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIAL', 'SUPERFICIALES', 'SUPERFICIALES', 'NO', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 2, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 3, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 4, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 5, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 6, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 7, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 8, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 9, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 10, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 11, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 12, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 13, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 14, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 15, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 16, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 17, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 18, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 19, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 20, 'Presencia de Ambiente Agresivo', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 21, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°6 QUIMICAS', 22, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 2, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 3, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 4, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'AUMENTO DE VOLUMEN', 'PERDIDA DE SECCION', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 5, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 6, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 7, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 8, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 9, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 10, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 11, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 12, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 13, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO'),
('Planilla N°7 FISICAS', 14, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 2, 'SI | NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `matrizrespuestaspatologicascolumnas_nombrepatologia`
--
ALTER TABLE `matrizrespuestaspatologicascolumnas_nombrepatologia`
  ADD PRIMARY KEY (`idPatologia`);

--
-- Indices de la tabla `matrizrespuestaspatologicascolumnas_patologia`
--
ALTER TABLE `matrizrespuestaspatologicascolumnas_patologia`
  ADD PRIMARY KEY (`nombre`,`numeroPregunta`);

--
-- Indices de la tabla `matrizrespuestaspatologicaslosas_nombrepatologia`
--
ALTER TABLE `matrizrespuestaspatologicaslosas_nombrepatologia`
  ADD PRIMARY KEY (`idPatologia`);

--
-- Indices de la tabla `matrizrespuestaspatologicaslosas_patologia`
--
ALTER TABLE `matrizrespuestaspatologicaslosas_patologia`
  ADD PRIMARY KEY (`nombre`,`numeroPregunta`);

--
-- Indices de la tabla `matrizrespuestaspatologicasmuros_nombrepatologia`
--
ALTER TABLE `matrizrespuestaspatologicasmuros_nombrepatologia`
  ADD PRIMARY KEY (`idPatologia`);

--
-- Indices de la tabla `matrizrespuestaspatologicasmuros_patologia`
--
ALTER TABLE `matrizrespuestaspatologicasmuros_patologia`
  ADD PRIMARY KEY (`nombre`,`numeroPregunta`);

--
-- Indices de la tabla `matrizrespuestaspatologicasparedes_nombrepatologia`
--
ALTER TABLE `matrizrespuestaspatologicasparedes_nombrepatologia`
  ADD PRIMARY KEY (`idPatologia`);

--
-- Indices de la tabla `matrizrespuestaspatologicasparedes_patologia`
--
ALTER TABLE `matrizrespuestaspatologicasparedes_patologia`
  ADD PRIMARY KEY (`nombre`,`numeroPregunta`);

--
-- Indices de la tabla `matrizrespuestaspatologicasvigas_nombrepatologia`
--
ALTER TABLE `matrizrespuestaspatologicasvigas_nombrepatologia`
  ADD PRIMARY KEY (`idPatologia`);

--
-- Indices de la tabla `matrizrespuestaspatologicasvigas_patologia`
--
ALTER TABLE `matrizrespuestaspatologicasvigas_patologia`
  ADD PRIMARY KEY (`nombre`,`numeroPregunta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
