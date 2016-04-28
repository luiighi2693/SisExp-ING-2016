-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2016 a las 14:28:19
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
-- Estructura de tabla para la tabla `basedatoscausas`
--

CREATE TABLE `basedatoscausas` (
  `idPatologia` int(50) NOT NULL,
  `patologia` varchar(100) NOT NULL,
  `numeroCausa` int(50) NOT NULL,
  `posiblesCausasGlobales` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `basedatoscausas`
--

INSERT INTO `basedatoscausas` (`idPatologia`, `patologia`, `numeroCausa`, `posiblesCausasGlobales`) VALUES
(1, 'Retracción Hidraulica Termica', 1, ' Dilatación del elemento que está expuesto'),
(1, 'Retracción Hidraulica Termica', 2, 'Gradiente de temperatura interno y externo.'),
(1, 'Retracción Hidraulica Termica', 3, ' Alta relación agua / cemento'),
(1, 'Retracción Hidraulica Termica', 4, ' Alto calor de hidratación'),
(1, 'Retracción Hidraulica Termica', 5, ' Exceso de vibración'),
(1, 'Retracción Hidraulica Termica', 6, 'Cura mal hecha'),
(2, 'Retracción Hidraulica', 1, 'Secado prematuro del hormigón por curado inadecuado.'),
(2, 'Retracción Hidraulica', 2, '• Alta relación agua - cemento'),
(2, 'Retracción Hidraulica', 3, ' Elemento con escasa cuantía de acero de retracción.'),
(2, 'Retracción Hidraulica', 4, '• Elementos muy coartados.'),
(2, 'Retracción Hidraulica', 5, '• Exceso de cemento o finos.'),
(2, 'Retracción Hidraulica', 6, ' Exceso de vibrado.'),
(3, 'Variacion Termica', 1, 'Variacion del gradiente Termico Ambiente/Estructura'),
(3, 'Variacion Termica', 2, 'Variacion de Humedad por Mojado/Secado'),
(3, 'Variacion Termica', 3, 'Contraccion y Dilatacion Volumetrica'),
(3, 'Variacion Termica', 4, 'Distribucion No lineal de Temperatura'),
(3, 'Variacion Termica', 5, 'Seccion Variable, la zona de menor Seccion seca mas Rapido'),
(3, 'Variacion Termica', 6, 'Gradiente elevado entre hormigon fresco y ambiente'),
(4, 'Movimentacion Termica', 1, 'Gradiente de temperatura interno y externo.'),
(4, 'Movimentacion Termica', 2, 'Dilatacion del Elemento Expuesto ( Coeficiente del Hormigon 9x10-6 m/m/oC)'),
(5, 'Desecacion Superficial', 1, 'Exudación.'),
(5, 'Desecacion Superficial', 2, 'Alta relación agua - cemento'),
(5, 'Desecacion Superficial', 3, 'Evaporación del agua de amasado.'),
(5, 'Desecacion Superficial', 4, 'Exagerada absorción del agua por parte de los áridos o por los encofrados.'),
(5, 'Desecacion Superficial', 5, 'Exceso de vibrado.'),
(6, 'Accion del Fuego', 1, 'Incendios'),
(6, 'Accion del Fuego', 2, 'Accidentes industriales con generacion de Fuego'),
(6, 'Accion del Fuego', 3, '• 20 - 200 °C: Evaporación del agua capilar; color gris; 100 - 95% resistencia residual; Módulo de deformación residual 100 - 70%'),
(6, 'Accion del Fuego', 4, '• 300 - 400 °C: Pérdida de agua de gel, aparecimiento de primeras fisuras superficiales; color rosa; 95 - 88 % resistencia residual; Módulo de deformación residual 50 - 38%'),
(6, 'Accion del Fuego', 5, '• 500 - 600 °C: Hormigon comienza a desagregar; color rosa-rojo; 75 - 55 % resistencia residual; Módulo de deformación residual 20 - 0%'),
(6, 'Accion del Fuego', 6, '• 900 - 1000 °C: Hormigon desagregado, sin ninguna resistencia; color ceniza-rojo - Amarillo-anaranjado; 10 - 0 % resistencia residual; Módulo de deformación residual 0%'),
(6, 'Accion del Fuego', 7, 'Los aceros deformados en frío, presentan una pérdida en su resistencia residual de hasta un 25-30% para temperaturas del orden de los 700º C.'),
(7, 'Ataque de Aguas Puras', 1, ' Agua de lluvia, agua de deshielo, agua de condensación de vapores, aguas industriales destiladas o deionizadas'),
(7, 'Ataque de Aguas Puras', 2, 'Agua corriente o infiltrada sobre la superficie del hormigón'),
(7, 'Ataque de Aguas Puras', 3, 'Disolución o hidrólisis de la cal libre hidratada'),
(7, 'Ataque de Aguas Puras', 4, 'Lixiviación del hidróxido de calcio'),
(7, 'Ataque de Aguas Puras', 5, 'Disolución de los silicatos, aluminatos y ferritos hidratados que son estables en solución de Ca(OH)2'),
(8, 'Corrosion de Armaduras', 1, 'Exceso en la concentracion de Iones Cloruros'),
(8, 'Corrosion de Armaduras', 2, 'Sales de Deshielo'),
(8, 'Corrosion de Armaduras', 3, 'Aditivos con Contenido de Cloruros'),
(8, 'Corrosion de Armaduras', 4, 'Medio Ambiente agresivo ( Ambiente Marino)'),
(8, 'Corrosion de Armaduras', 5, 'Despasivacion del Hormigon por otros agentes ( Carbonatacion)'),
(9, 'Reaccion Alcalis - Agregado / Alcalis - Carbonato', 1, '• Humedad relativa del ambiente > 75% o presencia de fuentes externas de humedad'),
(9, 'Reaccion Alcalis - Agregado / Alcalis - Carbonato', 2, '• Agregado con sílice, silicato o carbonato reactivos'),
(9, 'Reaccion Alcalis - Agregado / Alcalis - Carbonato', 3, '• Reacción entre los álcalis del aglomerante con el árido reactivo'),
(9, 'Reaccion Alcalis - Agregado / Alcalis - Carbonato', 4, '• Absorción del agua por osmosis por el gel'),
(10, 'Ataque de Sulfatos', 1, 'Exposición a aguas residuales industriales.'),
(10, 'Ataque de Sulfatos', 2, '• Interacción del sulfato con los hidróxidos de calcio libre y con los aluminatos de calcio hidratados (1 y 2)'),
(10, 'Ataque de Sulfatos', 3, 'ácido sulfúrico, sulfato de amonio, sulfatos de calcio, de magnesio y de sodio.'),
(10, 'Ataque de Sulfatos', 4, 'Exposición a suelos sulfatados'),
(10, 'Ataque de Sulfatos', 5, 'Exposición al agua de mar'),
(10, 'Ataque de Sulfatos', 6, 'Exposición a lluvia con polución urbana'),
(10, 'Ataque de Sulfatos', 7, 'Presencia de Sulfatos en bloques de arcilla o piedra con mal proceso de fabricacion (Cortos Tiempos en Hornos de fabricacion)'),
(11, 'Ataque de Cloruros', 1, ' - Contaminación de los áridos o del agua de amasado o uso de aditivo acelerador de fraguado de base CaCl2'),
(11, 'Ataque de Cloruros', 2, ' - Ingreso por medio externo marino, uso de sales de deshielo o atmósferas industriales'),
(11, 'Ataque de Cloruros', 3, '• Formación del cloroaluminato o sal de Friedel'),
(11, 'Ataque de Cloruros', 4, '• Tenores de Cl - superiores a 0,4% en relación a la masa de cemento llevan a la despasivación de la armadura'),
(12, 'Carbonatacion', 1, '• Acceso del CO2 en la atmósfera a través de la porosidad y fisuras del hormigón'),
(12, 'Carbonatacion', 2, '• Presencia de humedad en los poros del hormigón'),
(12, 'Carbonatacion', 3, '• Reacción del CO2 de la atmósfera con os componentes alcalinos de la pasta de cemento hidratada'),
(12, 'Carbonatacion', 4, '• Formación de carbonatos'),
(13, 'Ataque de Soluciones Acidas', 1, '• Reacción entre os ácidos y el hidróxido de calcio'),
(13, 'Ataque de Soluciones Acidas', 2, 'Regiones pantanosas o húmedas, donde existe descomposición de materia orgánica.'),
(13, 'Ataque de Soluciones Acidas', 3, 'Zonas Mineras, Terrenos de Relleno, Industria de procesamiento animal'),
(14, 'Ataque de Soluciones Alcalinas', 1, '• Troca iónica entre el agente alcalino con los compuestos del cemento formando sales más solubles (C3A + Na(OH)2 -> Aluminato de Sodio)'),
(14, 'Ataque de Soluciones Alcalinas', 2, '• La penetración de la solución alcalina en los poros del hormigón y cristalización de los subproductos que se acumulan en los poros'),
(14, 'Ataque de Soluciones Alcalinas', 3, 'Presencia de Soluciones Basicas en el entorno ( Hidroxidos de Sodio, etc.)'),
(15, 'Accion de Agua de Mar', 1, '• Impacto de las olas del mar'),
(15, 'Accion de Agua de Mar', 2, '• Contacto directo con el agua de mar con ciclos alternados de mojado y secado'),
(15, 'Accion de Agua de Mar', 3, '• Acción de los cloruros presentes en el Ambiente marino'),
(15, 'Accion de Agua de Mar', 4, '• Acción de los sulfatos presentes en el Ambiente marino'),
(16, 'Eflorescencias', 1, '• Agua infiltrada bajo presión a través de la porosidad del hormigón o fisuras'),
(16, 'Eflorescencias', 2, '• Acumulo de solución saturada de hidróxido de calcio en la superficie del hormigón - eflorescencias'),
(16, 'Eflorescencias', 3, '• Carbonatación del hidróxido de calcio en la superficie del hormigón  Ca(OH)2 + CO2 H2O   CaCO3 + H2O'),
(16, 'Eflorescencias', 4, 'Percolacion del Agua en el hormigon o  Cara del Elemento sometida a Mojado/Secado alternante'),
(17, 'Criptoflorescencia', 1, '• Agua infiltrada bajo presión a través de la porosidad del hormigón o fisuras'),
(17, 'Criptoflorescencia', 2, '• Disolución o hidrólisis de la cal libre hidratada a hidróxido de calcio en la superficie del hormigón – lixiviación'),
(17, 'Criptoflorescencia', 3, '• Acumulo de solución saturada de hidróxido de calcio en la zona interna del hormigón'),
(17, 'Criptoflorescencia', 4, '• Carbonatación del hidróxido de calcio en la zona interna del hormigón  Ca(OH)2 + CO2 H2O   CaCO3 + H2O'),
(18, 'Erosion', 1, '• Desgaste por la acción de fluidos con partículas sólidas en suspensión'),
(18, 'Erosion', 2, '• Colisión de las partículas con el hormigón'),
(18, 'Erosion', 3, '• Cuanto menor la resistencia a la compresión, mayor el efecto de la erosión'),
(19, 'Abrasion', 1, '• Friccion en seco (fricción, arañamiento o percusión)'),
(19, 'Abrasion', 2, 'El arrastre de sedimentos en un canal revestido'),
(19, 'Abrasion', 3, '• Paso de Vehiculos de Carga en caso de Pisos Industriales, Paso de Vehiculos en caso de Tableros de Puentes, Abrasion por particulas sueltas transportadas por Viento o Por Agua)'),
(19, 'Abrasion', 4, '• Desgaste superficial, incluido la pasta y los áridos'),
(20, 'Acciones Biologicas', 1, '• Microorganismos: Bacterias heterotróficas y hongos filamentosos; Hongos. Productos del Metabolismo:  Ácidos orgánicos. Mecanismo de deterioro: Disolución de la portlandita y silicatos hidratados.'),
(20, 'Acciones Biologicas', 2, '• Microorganismos: Bacterias reductoras de sulfato (BRS). Productos del Metabolismo:  ÁGas sulfhídrico (H2S). Mecanismo de deterioro: Disolución de la portlandita'),
(20, 'Acciones Biologicas', 3, '• Microorganismos: Bacterias quimiolitotróficas, Thiobacillus thioparus y otras especies neutrofílicas (10>pH>6) Thiobacillus thiooxidans y otras especies acidofílicas  (pH>5). Productos del Metabolismo:  Ácido sulfhídrico. Mecanismo de deterioro: Disolución de la portlandita y silicatos hidratados.'),
(21, 'Adherencia y Anclaje', 1, '• Actuación de sobrecargas'),
(21, 'Adherencia y Anclaje', 2, '• Hormigón con resistencia inadecuada'),
(21, 'Adherencia y Anclaje', 3, '• Anclaje insuficiente'),
(21, 'Adherencia y Anclaje', 4, '• Exudación en la parte inferior de las armaduras horizontales'),
(21, 'Adherencia y Anclaje', 5, '• Deficiencia de la altura de las nervuras'),
(21, 'Adherencia y Anclaje', 6, '• Pérdida de la adherencia entre armadura y el hormigón'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 1, 'Oquedades superficiales por mal hormigonado en cualquier tipo de estructuras.'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 2, 'Oquedades superficiales por deficiencias en el detalle /o posicionamento de la armadura'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 3, '• Zonas vacías en las caras del elemento, donde en algunos casos pudieran estar los aceros a vista.'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 4, '• Hormigón con dosificación Inadecuada'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 5, '• Dimensión máxima característica de los áridos mayor que el espaciamiento de la armadura'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 6, '• Hormigón vertido de alturas superiores la 2,50 m'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 7, '• Compactación inadecuada: excesiva o deficiente'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 8, '• Errores en el diseño y/o colocación de las barras de acero.'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 9, ''),
(23, 'Deficiencia en Posicionado de Armaduras', 1, '• Falta de colocación de espaciadores'),
(23, 'Deficiencia en Posicionado de Armaduras', 2, '• Armaduras amasadas o dislocadas debido al tránsito de los operarios'),
(23, 'Deficiencia en Posicionado de Armaduras', 3, 'La falta de recubrimiento adecuado'),
(23, 'Deficiencia en Posicionado de Armaduras', 4, '• Armaduras aparentes en el momento de la retirada de los encofrados'),
(23, 'Deficiencia en Posicionado de Armaduras', 5, '• Colocar cercos sin cerrar o con escasa longitud de anclaje.'),
(23, 'Deficiencia en Posicionado de Armaduras', 6, '• Anclaje insuficiente.'),
(23, 'Deficiencia en Posicionado de Armaduras', 7, '• Mala adherencia del acero de refuerzo con el hormigón.'),
(23, 'Deficiencia en Posicionado de Armaduras', 8, '• Sobrecarga no prevista.'),
(23, 'Deficiencia en Posicionado de Armaduras', 9, 'Separacion inadecuada del Acero, formacion de Nidos de Abeja'),
(24, 'Mal Vibrado del Concreto', 1, 'En Columnas: Retracción plástica en cabeza del Elemento.  Cuanto más alta es la columna y más fluido es el hormigón, mayor cantidad de agua se acumula en la parte superior, lo que facilita la aparición de daños'),
(24, 'Mal Vibrado del Concreto', 2, '• Exceso de vibrado.'),
(24, 'Mal Vibrado del Concreto', 3, '• Alta relación agua/cemento.'),
(24, 'Mal Vibrado del Concreto', 4, '• Hormigonado defectuoso en la cabeza de columna.'),
(25, 'Mala Relacion Agua/Cemento', 1, 'Ingreso de agua no contemplado en el diseño durante vaciado'),
(25, 'Mala Relacion Agua/Cemento', 2, 'Negligencia laboral por parte de Mano de Obra o Supervisores'),
(25, 'Mala Relacion Agua/Cemento', 3, 'Ingreso de agua a la mezcla por Lluvia durante Vaciado'),
(25, 'Mala Relacion Agua/Cemento', 4, 'Mala dosificacion en planta '),
(25, 'Mala Relacion Agua/Cemento', 5, 'Mal Diseño de Mezcla '),
(26, 'Remocion del Encofrado', 1, 'La separación excesiva de los puntales en elementos flexados o de los anillos en las columnas origina elementos estructurales con deformaciones iniciales.'),
(26, 'Remocion del Encofrado', 2, 'La remoción de los puntales cuando aún el concreto no alcanzó la resistencia suficiente'),
(26, 'Remocion del Encofrado', 3, 'Se mantienen los puntales en varias plantas sin realizar reapuntalamientos o cuando se colocan cargas importantes sobre los entrepisos en construcción.'),
(27, 'Compresion', 1, '• Cálculo deficiente.'),
(27, 'Compresion', 2, '• Exceso de carga.'),
(27, 'Compresion', 3, '• Sección insuficiente con cuantías muy elevadas de acero en la zona de tracción.'),
(27, 'Compresion', 4, '• Hormigón de menor resistencia con abundante acero en zona de tracción.'),
(28, 'Traccion', 1, 'Las tensiones que puede resistir un hormigón traccionado están en el orden del 10 % de las de compresión.'),
(28, 'Traccion', 2, '• Cálculo deficiente.'),
(28, 'Traccion', 3, '• Exceso de carga.'),
(28, 'Traccion', 4, '• Sección insuficiente con cuantías muy elevadas de acero en la zona de Compresion'),
(28, 'Traccion', 5, '• Hormigón de menor resistencia con abundante acero en zona de Compresion'),
(29, 'Flexion', 1, '• Exceso de carga.'),
(29, 'Flexion', 2, '• Sección insuficiente con cuantias elavadas de Acero de Refuerzo Principal'),
(29, 'Flexion', 3, '• Insuficiencia en el Acero de Refuerzo'),
(29, 'Flexion', 4, '• Cálculo deficiente.'),
(30, 'Flexion - Cortante', 1, '• Actuación de sobrecargas'),
(30, 'Flexion - Cortante', 2, '• Origen de solicitaciones de flexión pura o por la combinación de flexión y cortante'),
(30, 'Flexion - Cortante', 3, 'Punzonamiento, por introducción de una carga concentrada perpendicular a su plano medio.'),
(31, 'Flexion - Cortante ( En Losas)', 1, '• Losa muy flexible en estructuras ejecutadas por el proceso de encofrados tipo túnel.'),
(31, 'Flexion - Cortante ( En Losas)', 2, '• Sobrecargas no previstas;'),
(31, 'Flexion - Cortante ( En Losas)', 3, '• Juntas de hormigonado mal ejecutadas;'),
(31, 'Flexion - Cortante ( En Losas)', 4, '• Armadura insuficiente;'),
(31, 'Flexion - Cortante ( En Losas)', 5, '• Armadura insuficiente o mal posicionada;'),
(31, 'Flexion - Cortante ( En Losas)', 6, '• Anclaje longitudinal insuficiente;'),
(31, 'Flexion - Cortante ( En Losas)', 7, '• Desencofrado antes de tiempo;'),
(32, 'Flexion - Torsion', 1, '• Anclaje insuficiente.'),
(32, 'Flexion - Torsion', 2, '• Acero de refuerzo mal posicionado en el diseño o en la ejecución.'),
(32, 'Flexion - Torsion', 3, '• Sobrecarga no prevista.'),
(32, 'Flexion - Torsion', 4, '• Acero de refuerzo insuficiente.'),
(32, 'Flexion - Torsion', 5, '• No consideración de los esfuerzos de torsión.'),
(32, 'Flexion - Torsion', 6, '• Hormigón de resistencia inadecuada.'),
(33, 'Cortante', 1, '• Sobrecargas no previstas.'),
(33, 'Cortante', 2, '• Sección insuficiente de la viga.'),
(33, 'Cortante', 3, '• Hormigón de resistencia inadecuada.'),
(33, 'Cortante', 4, '• Cuantía de acero longitudinal insuficiente.'),
(33, 'Cortante', 5, '• Desencofre prematuro.'),
(33, 'Cortante', 6, '• Estribos insuficientes, tener menor diámetro del exigido o escasa longitud deanclaje al cerrarlo.'),
(33, 'Cortante', 7, 'Punzonamiento, por introducción de una carga concentrada perpendicular a su plano medio.'),
(34, 'Torsion ( En Losas)', 1, '• Armadura de canto insuficiente;'),
(34, 'Torsion ( En Losas)', 2, '• Protección térmica insuficiente.'),
(35, 'Torsion', 1, '• Actuación de sobrecargas'),
(35, 'Torsion', 2, 'No se ha tenido en cuenta los efectos de la torsión como solicitación secundaria o se ha tratado en forma incorrecta la torsión como solicitación principal.'),
(35, 'Torsion', 3, 'Deficiencia del Acero requerido para dicha solicitacion. Deficiencia en el Calculo'),
(36, 'Impacto - Explosion', 1, 'Impactos de vehículos en columnas o tabiques de estacionamientos, playas de maniobras o depósitos, donde los elementos estructurales son rígidos y las velocidades de circulación son relativamente bajas.'),
(36, 'Impacto - Explosion', 2, 'Impactos producto de ondas expansivas de detonaciones o explosiones cercanas al elemento afectado'),
(37, 'Fluencia de los Elementos', 1, 'Efecto producido por la carga actuante en el elemento de hormigón, sobre el agua contenida en el gel y los capilares.'),
(37, 'Fluencia de los Elementos', 2, 'Implica una transferencia de carga que en determinado momento no pueden soportar y se produce su rotura'),
(37, 'Fluencia de los Elementos', 3, 'Bajos contenidos de humedad y una mayor relación agua/cemento favorecen la fluencia,'),
(37, 'Fluencia de los Elementos', 4, 'Poner en carga la estructura cuando el hormigón cuenta aún con una baja maduración.'),
(38, 'Asentamiento', 1, 'Errores en el proyecto o en la ejecución de las fundaciones.'),
(38, 'Asentamiento', 2, 'Cargas no previstas en el proyecto original.'),
(38, 'Asentamiento', 3, 'Deformación excesiva del suelo de fundación, no considerado en el proyecto'),
(38, 'Asentamiento', 4, 'Deformación excesiva localizada del suelo por la aparición de alteraciones no previstas (inundación, vibración, erosión, socavación, etc.)'),
(38, 'Asentamiento', 5, 'Fundación sobre pozos mal cegados, rellenos mal ejecutados, alteraciones del terreno desconocidas, etc.'),
(38, 'Asentamiento', 6, 'Alteraciones por construcciones vecinas'),
(38, 'Asentamiento', 7, 'Existencia de suelos expansivos.'),
(39, 'Accion Sismica', 1, 'Detalles inadecuados, especialmente de armado y en las uniones de las barras'),
(39, 'Accion Sismica', 2, 'Pobre calidad del trabajo realizado y del hormigón incorporado'),
(39, 'Accion Sismica', 3, 'Sobrecargado de la estructura con cargas gravitatorias'),
(39, 'Accion Sismica', 4, 'Irregularidades Estructurales atacadas inadecuadamente'),
(39, 'Accion Sismica', 5, 'Efecto de Ondas Vibratorias por Sismo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basedatostratamientos`
--

CREATE TABLE `basedatostratamientos` (
  `idPatologia` int(50) NOT NULL,
  `patologia` varchar(100) NOT NULL,
  `numeroTratamiento` int(50) NOT NULL,
  `tratamientoTerapias` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `basedatostratamientos`
--

INSERT INTO `basedatostratamientos` (`idPatologia`, `patologia`, `numeroTratamiento`, `tratamientoTerapias`) VALUES
(1, 'Retracción Hidraulica Termica', 1, 'Sellamiento de fisuras'),
(1, 'Retracción Hidraulica Termica', 2, ' Aislamiento térmico del elemento sujeto a variación térmica.'),
(1, 'Retracción Hidraulica Termica', 3, 'Eliminar cuidadosamente el hormigón comprometido, limpiando bien la superficie.'),
(1, 'Retracción Hidraulica Termica', 4, 'Efectuar protección térmica conveniente'),
(1, 'Retracción Hidraulica Termica', 5, 'Técnicas de inyección de sellantes, base epoxi o cementicia.'),
(1, 'Retracción Hidraulica Termica', 6, '• Tecnica de inyección'),
(2, 'Retracción Hidraulica', 1, 'Analizar la actividad de las fisuras y clasificarlas como vivas o muertas.'),
(2, 'Retracción Hidraulica', 2, 'Reparacion Superficial del Hormigon'),
(2, 'Retracción Hidraulica', 3, 'Colocacion de Malla de Retraccion en la nueva capa de Hormigon'),
(3, 'Variacion Termica', 1, '• Remoción del hormigón desagregado'),
(3, 'Variacion Termica', 2, '• Reparación superficial generalizada'),
(3, 'Variacion Termica', 3, '• Reparación profunda localizada'),
(3, 'Variacion Termica', 4, '• Aislamiento térmico del elemento fisurado'),
(3, 'Variacion Termica', 5, '• Protección superficial'),
(3, 'Variacion Termica', 6, '• Uso simultáneo de - técnica de inyección de fisuras - proyecto de junta de dilatación con mastiques/ sellantes'),
(4, 'Movimentacion Termica', 1, 'Aislamiento térmico del elemento sujeto a variación térmica'),
(4, 'Movimentacion Termica', 2, 'Sellamiento de fisuras'),
(5, 'Desecacion Superficial', 1, '• Eliminar con cuidado el hormigón comprometido, limpiando la superficie'),
(5, 'Desecacion Superficial', 2, '• Efectuar protección térmica conveniente'),
(5, 'Desecacion Superficial', 3, '• Técnicas de inyección de sellantes, base epoxi o cementicia.'),
(5, 'Desecacion Superficial', 4, '• Reparo superficial generalizado con mortero polimérico de base cemento; mortero de base epoxi'),
(6, 'Accion del Fuego', 1, '• Apuntalamiento emergencial'),
(6, 'Accion del Fuego', 2, '• Reparo con grout o micro-concreto fluido'),
(6, 'Accion del Fuego', 3, '• Reparo con mortero tixotrópico en forma manual'),
(6, 'Accion del Fuego', 4, '• Refuerzo con  adición de armadura y  hormigón proyectado'),
(6, 'Accion del Fuego', 5, '• Refuerzo con mortero o micro-concreto proyectado'),
(6, 'Accion del Fuego', 6, '• Refuerzo con grout o micro-concreto fluido'),
(6, 'Accion del Fuego', 7, '• Refuerzo con chapas metálicas o perfiles metálicos'),
(6, 'Accion del Fuego', 8, '• Recuperación del monolitismo de vigas columnas y losas con inyección de epoxi'),
(7, 'Ataque de Aguas Puras', 1, '• Reparación superficial localizada y/o superficial generalizada'),
(7, 'Ataque de Aguas Puras', 2, '• Reparación profunda localizada y/o profunda generalizada'),
(7, 'Ataque de Aguas Puras', 3, '• Protección superficial del hormigón'),
(7, 'Ataque de Aguas Puras', 4, 'Escarificación mecánica del hormigón desagregado'),
(8, 'Corrosion de Armaduras', 1, 'Exposicion de las Armaduras afectadas para evaluar nivel de daños'),
(8, 'Corrosion de Armaduras', 2, 'Remocion de productos de corrosion para determinar la seccion transversal remanente de las barras'),
(8, 'Corrosion de Armaduras', 3, 'En caso de corrosion No severa, limpieza de las barras y formar recubrimiento con Epoxi para proteger Barras en ambiente agresivo'),
(8, 'Corrosion de Armaduras', 4, 'Analisis y remocion de Hormigon contaminado'),
(8, 'Corrosion de Armaduras', 5, 'En casos severos, reforzamiento estructural del elemento y remocion de barras'),
(8, 'Corrosion de Armaduras', 6, 'En casos severos, sustitucion de barras de acero'),
(9, 'Reaccion Alcalis - Agregado / Alcalis - Carbonato', 1, '• Uso de sales de litio'),
(9, 'Reaccion Alcalis - Agregado / Alcalis - Carbonato', 2, '• Confinamento de la reacción'),
(10, 'Ataque de Sulfatos', 1, '• Remoción del hormigón con tenor de sulfatos > 5%'),
(10, 'Ataque de Sulfatos', 2, '• Reparación superficial localizada y/o superficial generalizada'),
(10, 'Ataque de Sulfatos', 3, '• Reparación profunda localizada y/o profunda generalizada'),
(10, 'Ataque de Sulfatos', 4, '• Protección superficial del hormigón'),
(11, 'Ataque de Cloruros', 1, '• Reparación superficial localizada y/o superficial generalizada'),
(11, 'Ataque de Cloruros', 2, '• Reparación profunda localizada y/o profunda generalizada'),
(11, 'Ataque de Cloruros', 3, '• Refuerzo'),
(11, 'Ataque de Cloruros', 4, '• Extracción electroquímica de cloruros'),
(11, 'Ataque de Cloruros', 5, '• Protección catódica materiales y sistemas'),
(11, 'Ataque de Cloruros', 6, '• Protección superficial del hormigón'),
(12, 'Carbonatacion', 1, '• Remoción del hormigón carbonatado'),
(12, 'Carbonatacion', 2, '• Reparación superficial generalizada'),
(12, 'Carbonatacion', 3, '• Refuerzo con armadura extra o por sustitución'),
(12, 'Carbonatacion', 4, '• Realcalinización del hormigón'),
(12, 'Carbonatacion', 5, '• Protección superficial del hormigón'),
(13, 'Ataque de Soluciones Acidas', 1, '• Escarificación mecánica para remoción del hormigón desagregado'),
(13, 'Ataque de Soluciones Acidas', 2, '• Reparación superficial localizada y/o superficial generalizada'),
(13, 'Ataque de Soluciones Acidas', 3, '• Reparación profunda localizada y/o profunda generalizada'),
(13, 'Ataque de Soluciones Acidas', 4, '• Protección superficial del hormigón'),
(14, 'Ataque de Soluciones Alcalinas', 1, '• Escarificación mecánica para remoción del hormigón desagregado'),
(14, 'Ataque de Soluciones Alcalinas', 2, '• Reparación superficial localizada'),
(14, 'Ataque de Soluciones Alcalinas', 3, '• Reparación superficial generalizada'),
(14, 'Ataque de Soluciones Alcalinas', 4, '• Reparación profunda localizada'),
(14, 'Ataque de Soluciones Alcalinas', 5, '• Protección superficial del hormigón'),
(15, 'Accion de Agua de Mar', 1, '• Restauración del monolitismo de la pieza'),
(15, 'Accion de Agua de Mar', 2, '• Remoción del hormigón desagregado y con tenor de cloruros > 0,4% en relación a la masa de cemento'),
(15, 'Accion de Agua de Mar', 3, '• Reparación superficial localizada'),
(15, 'Accion de Agua de Mar', 4, '• Reparación superficial generalizada'),
(15, 'Accion de Agua de Mar', 5, '• Reparación profunda localizada'),
(15, 'Accion de Agua de Mar', 6, '• Aplicación de procedimientos electroquímicos'),
(15, 'Accion de Agua de Mar', 7, '• Protección superficial del hormigón'),
(16, 'Eflorescencias', 1, '• No intervenir en el caso de autocicatrización de fisuras'),
(16, 'Eflorescencias', 2, '• Eliminación de la fuente de agua que penetra en el hormigón'),
(16, 'Eflorescencias', 3, '• Limpieza superficial del hormigón'),
(16, 'Eflorescencias', 4, '• Impermeabilización de la superficie en contacto con la fuente de agua'),
(16, 'Eflorescencias', 5, '• Sellado superficial de fisuras'),
(16, 'Eflorescencias', 6, '• Reparación profunda localizado de regiones con corrosión de armaduras'),
(17, 'Criptoflorescencia', 1, '• No intervenir en el caso de autocicatrización de fisuras'),
(17, 'Criptoflorescencia', 2, '• Eliminación de la fuente de agua que penetra en el hormigón'),
(17, 'Criptoflorescencia', 3, '• Impermeabilización de la superficie en contacto con la fuente de agua'),
(17, 'Criptoflorescencia', 4, '• Remocion del hormigón hasta la zona con presencia del Compuesto'),
(17, 'Criptoflorescencia', 5, '• Sellado superficial de fisuras'),
(17, 'Criptoflorescencia', 6, '• Reparación profunda localizado de regiones con corrosión de armaduras'),
(18, 'Erosion', 1, '• Remoción del hormigón desagregado'),
(18, 'Erosion', 2, '• Reparación superficial generalizada'),
(18, 'Erosion', 3, '• Reparación profunda localizada'),
(18, 'Erosion', 4, '• Protección superficial'),
(19, 'Abrasion', 1, '• Remoción del hormigón desagregado'),
(19, 'Abrasion', 2, '• Reparo superficial localizado y/o superficial generalizado para reconstitución de la sección perdida'),
(19, 'Abrasion', 3, '• Endurecimiento superficial:  silicatización u ocratización'),
(19, 'Abrasion', 4, '-'),
(20, 'Acciones Biologicas', 1, '• Descontaminación de los microrganismos'),
(20, 'Acciones Biologicas', 2, '• Reparación superficial generalizada'),
(20, 'Acciones Biologicas', 3, '• Protección superficial'),
(21, 'Adherencia y Anclaje', 1, '• Eliminación de la sobrecarga'),
(21, 'Adherencia y Anclaje', 2, '• Refuerzo con hormigón convencional y aumento de la sección'),
(21, 'Adherencia y Anclaje', 3, '• Refuerzo con chapas coladas'),
(21, 'Adherencia y Anclaje', 4, '• Refuerzo con hormigón proyectado y aumento de sección'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 1, '• Reparacion superficial localizada con mortero polimerico , o de base epoxica u otros.'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 2, '• Reparacion profunda localizada con mortero de base cemento u hormigón.'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 3, '• Revestimiento de protección'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 4, '• Eliminación del hormigón segregado hasta llegar al hormigón sano'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 5, '• Limpiar bién las superficies.'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 6, '• Reparacion superficial localizada con mortero polimerico , o de base epoxica u otros.'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 7, '• Reparacion profunda localizada con mortero de base cemento u hormigón.'),
(22, 'Fallas Constructivas - Oquedades Superficiales', 8, '• Revestimiento de protección'),
(23, 'Deficiencia en Posicionado de Armaduras', 1, '• Remoción del hormigón desagregado'),
(23, 'Deficiencia en Posicionado de Armaduras', 2, '• Limpieza de la armadura'),
(23, 'Deficiencia en Posicionado de Armaduras', 3, '• Reparación superficial localizada'),
(23, 'Deficiencia en Posicionado de Armaduras', 4, '• Reparación profunda localizada'),
(23, 'Deficiencia en Posicionado de Armaduras', 5, '• Protección superficial'),
(23, 'Deficiencia en Posicionado de Armaduras', 6, '• Reforzar la viga aumentando su rigidez.'),
(23, 'Deficiencia en Posicionado de Armaduras', 7, '• Eventualmente, demoler y reconstruir.'),
(24, 'Mal Vibrado del Concreto', 1, '• Inyección de resina epoxi'),
(24, 'Mal Vibrado del Concreto', 2, '• Calafetación de fisuras con sellantes elásticos de base uretano o polisulfuros'),
(25, 'Mala Relacion Agua/Cemento', 1, 'Evaluar Resistencia del Hormigon Actual'),
(25, 'Mala Relacion Agua/Cemento', 2, 'Reforzamiento del elemento con Hormigon Proyectado ( Aumento de Seccion)'),
(25, 'Mala Relacion Agua/Cemento', 3, 'En casos Severos, Demolicion del elemento'),
(25, 'Mala Relacion Agua/Cemento', 4, 'En casos leves, remocion del hormigon con resistencia deficiente'),
(25, 'Mala Relacion Agua/Cemento', 5, 'Apuntalamiento de la Estructura para Tratamiento'),
(26, 'Remocion del Encofrado', 1, 'Re apuntalamiento del elemento y reparacion localizada'),
(26, 'Remocion del Encofrado', 2, 'Reforzamiento estructural del Elemento'),
(26, 'Remocion del Encofrado', 3, 'En casos extremos y necesarios, demolicion del Elemento afectado'),
(27, 'Compresion', 1, '• Eliminación de la sobrecarga'),
(27, 'Compresion', 2, '• Refuerzo con hormigón convencional y aumento de la sección'),
(27, 'Compresion', 3, '• Refuerzo con hormigón proyectado y aumento de sección'),
(27, 'Compresion', 4, '• Refuerzo con chapas coladas'),
(28, 'Traccion', 1, 'Analisis Estructural de Elemento'),
(28, 'Traccion', 2, 'Apuntalamiento y Reparacion Profunda'),
(28, 'Traccion', 3, 'Evaluar Daño en el Hormigon'),
(28, 'Traccion', 4, 'Reforzamientoc on Hormigon Proyectado para aumentar Seccion'),
(28, 'Traccion', 5, 'Eliminar Sobre-cargas y disipar el esfuerzo de Traccion'),
(28, 'Traccion', 6, 'Casos Severos: Demolicion del Elemento'),
(29, 'Flexion', 1, 'Analisis Estructural del Elemento en el estado afectado'),
(29, 'Flexion', 2, 'Reforzamiento con Planchas o Elementos de Acero '),
(29, 'Flexion', 3, 'Apuntalamiento para proceder con reforzamiento'),
(29, 'Flexion', 4, 'Remocion del Hormigon afectado y re colocacion de Hormigon'),
(29, 'Flexion', 5, 'En casos severos: Demolicion del Elemento'),
(29, 'Flexion', 6, 'Eliminar Sobrecargas'),
(30, 'Flexion - Cortante', 1, '• Eliminación de la sobrecarga'),
(30, 'Flexion - Cortante', 2, '• Refuerzo'),
(30, 'Flexion - Cortante', 3, ' - con hormigón convencional y aumento de la sección'),
(30, 'Flexion - Cortante', 4, ' - con chapas coladas'),
(30, 'Flexion - Cortante', 5, ' - con hormigón proyectado y aumento de sección'),
(31, 'Flexion - Cortante ( En Losas)', 1, '• Eliminación de la sobrecarga'),
(31, 'Flexion - Cortante ( En Losas)', 2, '• Preparar y limpiar adecuadamente la superficie'),
(31, 'Flexion - Cortante ( En Losas)', 3, '• Refuerzo'),
(31, 'Flexion - Cortante ( En Losas)', 4, ' - con hormigón convencional y aumento de la sección'),
(31, 'Flexion - Cortante ( En Losas)', 5, ' - con hormigón proyectado y aumento de sección'),
(31, 'Flexion - Cortante ( En Losas)', 6, ' - con chapas coladas o armaduras embutidas'),
(32, 'Flexion - Torsion', 1, '• Apuntalar el elemento para poder realizar la rehabilitación.'),
(32, 'Flexion - Torsion', 2, '• Reforzar por flexión y torsión'),
(32, 'Flexion - Torsion', 3, '• Eventualmente, demoler y reconstruir.'),
(33, 'Cortante', 1, '• Analizando adecuadamente el elemento estructural podrá ser necesario:'),
(33, 'Cortante', 2, ' - Reforzar vigas por cortante'),
(33, 'Cortante', 3, ' - Apuntalar el elemento para poder realizar la rehabilitación.'),
(34, 'Torsion ( En Losas)', 1, '• Preparar y limpiar adecuadamente la superficie'),
(34, 'Torsion ( En Losas)', 2, 'Analisis Estructural para definir el origen del Momento Torsor'),
(34, 'Torsion ( En Losas)', 3, '• Reforzar cantos con nueva armadura a 45º;'),
(34, 'Torsion ( En Losas)', 4, 'Disipar la accion causante del Momento Torsor'),
(34, 'Torsion ( En Losas)', 5, '• Efectuar protección térmica conveniente.'),
(35, 'Torsion', 1, '• Eliminación de la sobrecarga'),
(35, 'Torsion', 2, '• Refuerzo con hormigón convencional y aumento de la sección'),
(35, 'Torsion', 3, '• Refuerzo con hormigón proyectado y aumento de la sección'),
(35, 'Torsion', 4, '• Refuerzo con chapas coladas'),
(36, 'Impacto - Explosion', 1, '• Colocación de perfiles “L” en las aristas de las estructuras'),
(36, 'Impacto - Explosion', 2, '• Reparación superficial localizada'),
(36, 'Impacto - Explosion', 3, '• Reparación profunda localizada'),
(36, 'Impacto - Explosion', 4, '• Refuerzo'),
(37, 'Fluencia de los Elementos', 1, 'Analisis Estructural en estado actual'),
(37, 'Fluencia de los Elementos', 2, 'Apuntalamiento del Elemento para reforzamiento'),
(37, 'Fluencia de los Elementos', 3, 'Reforzar con Planchas de Acero en casos de bajo riesgo'),
(37, 'Fluencia de los Elementos', 4, 'Eliminar la Carga que se ejerce mientras se procede a la terapia'),
(37, 'Fluencia de los Elementos', 5, 'Casos severos: Demolicion del Elemento'),
(38, 'Asentamiento', 1, 'Inyeccion de lechada de Hormigon para mejorar capacidad del Suelo'),
(38, 'Asentamiento', 2, 'Estabilizar el Suelo de fundacion con Inyecciones '),
(38, 'Asentamiento', 3, 'Eliminar fuentes de agua que causen perdida de Friccion del Suelo o Expansividad del Mismo '),
(38, 'Asentamiento', 4, 'Colocacion de Muros de contencion para empujes laterales'),
(38, 'Asentamiento', 5, 'Adosar sistema de fundaciones con micropilotes '),
(39, 'Accion Sismica', 1, 'Analisis Estructural del Elemento / estructura en estado de Post-Sismo'),
(39, 'Accion Sismica', 2, 'Apuntalamiento de Elementos y zonas severamente afectadas'),
(39, 'Accion Sismica', 3, 'En caso de colapso, estudio de las piezas remanentes para evaluar deficiencias de diseño o mecanismos de falla'),
(39, 'Accion Sismica', 4, 'En casos severos: Deshabilitar o demolar la Estructura afectada');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntasplanillasetapas`
--

CREATE TABLE `preguntasplanillasetapas` (
  `patologia` varchar(50) NOT NULL,
  `elemento` varchar(50) NOT NULL,
  `numeroEtapa` int(10) NOT NULL,
  `numeroPregunta` int(50) NOT NULL,
  `pregunta` varchar(300) NOT NULL,
  `sugerencia` varchar(250) DEFAULT NULL,
  `cantRespuestas` int(10) NOT NULL,
  `respuestas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntasplanillasetapas`
--

INSERT INTO `preguntasplanillasetapas` (`patologia`, `elemento`, `numeroEtapa`, `numeroPregunta`, `pregunta`, `sugerencia`, `cantRespuestas`, `respuestas`) VALUES
('FISURAS', 'COLUMNA', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas? ', 'Se recomienda realizar Ensayo con Fisurometro, Medición con Cinta métrica de Fisuras. ', 2, 'ACTIVAS | PASIVAS'),
('FISURAS', 'COLUMNAS', 1, 2, '¿Las fisuras se presentan en forma de “Mapeo” o “Redes”, entrecruzadas entre sí?', NULL, 3, 'SI, CON  ENTRECRUZAMIENTO | SI, SIN ENTRECRUZAMIENTO | NO'),
('FISURAS', 'COLUMNAS', 1, 3, '¿Las fisuras muestran presencia de Compuestos de tipo “Gel” en ellas?', NULL, 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 4, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', NULL, 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 5, '¿Las fisuras se inclinan en un ángulo cercano a  45°, con 75° como el máximo?', 'Realizar Ensayo de Fisurómetro, Levantamiento Grafico de Fisuras.', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 6, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', NULL, 3, 'DURANTE LAS PRIMERAS HORAS | POSTERIORMENTE | TAL VEZ'),
('FISURAS', 'COLUMNAS', 1, 7, '¿Las fisuras se ubican en el tramo Central de la luz del Elemento o en las zonas de mayor momento (nodos, tramo central de la luz del elemento)?', NULL, 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 8, '¿Las fisuras toman distintas inclinaciones en cada cara del elemento?', 'Realizar ensayo de Fisurómetro, Medición de Fisuras', 8, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 9, '¿Hay fisuras acompañadas de rotura de Elementos Adosados?', NULL, 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 10, '¿El elemento afectado, restringe la dilatación de algún otro Elemento?', 'Realizar Ensayo de Análisis Térmico ( Termografia)', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 11, '¿Hay presencia solo de Micro-fisuras en el elemento afectado?', NULL, 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 12, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Medición de Recubrimiento, Nivelación de Superficies, Escaneo 3D, Plomo de muros y Columnas.', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 13, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento?', NULL, 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 14, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 4, 'VERTICALMENTE | HORIZONTALMENTE | DIAGONALMENTE | SIN DIRECCION DEFINIDA'),
('FISURAS', 'COLUMNAS', 1, 15, '¿Se evidencia Fisuras consecuentes en las distintas caras del elemento (Fisuras Tipo Resorte)?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 1, 16, '¿Las fisuras se Asemejan a algunas de estas Imágenes?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 6, 'A | B | C | D | E | NINGUNA'),
('FISURAS', 'COLUMNAS', 1, 17, '¿Las fisuras se presentan en todas las Caras del Elemento Afectado?', NULL, 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 2, 1, '¿Las fisuras se presentan paralelas a la Armadura Longitudinal del elemento?', 'Realizar Ensayos de Ferroscan, Profometro, Auscultación Magnética, Gammagrafía.', 3, 'SI, CONTINUAS | SI, NO CONTINUAS | NO'),
('FISURAS', 'COLUMNAS', 2, 2, '¿Las fisuras aparecen cerca de la cara del apoyo o en la zona de confinamiento?', 'Realizar Ensayos de Ferroscan, Profometro, Auscultación Magnética, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 2, 3, '¿Las fisuras aparecen paralelas a la armadura transversal del elemento?', 'Realizar Ensayos de Ferroscan, Profometro, Auscultación Magnética, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 2, 4, '¿Hay presencia de fisuras en la zona sometida a compresión del Elemento?', '', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 2, 5, '¿Se evidencia Fisuras perpendiculares a la Armadura Principal del Elemento?', 'Realizar Ensayos de Ferroscan, Profometro, Auscultación Magnética, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 2, 6, '¿Hay presencia de fisuras en la zona sometida a tracción del elemento?', '', 2, 'SI | NO'),
('FISURAS', 'COLUMNAS', 2, 7, '¿Las fisuras que observas son solo superficiales o también las acompañan profundas?', 'Realizar Remoción Friso/Recubrimiento, Ultra-sonido, Gammagrafía.', 3, 'SUPERFICIALES | SUPERFICIALES - PROFUNDAS | PROFUNDAS'),
('FISURAS', 'LOSAS', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas?', 'Realizar Ensayo de Fisurómetro, Medición de Actividad con Testigos.', 2, 'ACTIVAS | PASIVAS'),
('FISURAS', 'LOSAS', 1, 2, '¿Las fisuras se presentan en forma de "Mapeo" o "Redes", entrecruzadas entre sí?', '', 3, 'SI, CON  ENTRECRUZAMIENTO | SI, SIN ENTRECRUZAMIENTO | NO'),
('FISURAS', 'LOSAS', 1, 3, '¿Las fisuras muestran presencia de Compuestos de tipo "Gel" en ellas?', '', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 4, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', '', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 5, '¿Las fisuras se inclinan en un ángulo cercano a  45° respecto al eje longitudinal, con 75° como el máximo?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 6, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', '', 3, 'DURANTE LAS PRIMERAS HORAS | POSTERIORMENTE | NO LO SE'),
('FISURAS', 'LOSAS', 1, 7, '¿Las fisuras se ubican únicamente en las zonas de mayor momento (nodos, tramo central de la luz del elemento)?', '', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 8, '¿Las fisuras toman distintas inclinaciones en cada cara del elemento?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 9, '¿Las fisuras se presentan paralelas a la Armadura Longitudinal del elemento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 10, '¿Las fisuras aparecen paralelas a la armadura transversal del elemento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía..', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 11, '¿Hay fisuras específicamente acompañadas de rotura de Elementos Adosados?', '', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 12, '¿El elemento afectado, podría restringir a un elemento que se esté dilatando?', 'Realizar Análisis Térmico (Termografia)', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 13, '¿Hay presencia solo de Micro-fisuras en el elemento afectado?', '', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 14, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento cercano a éstas?', '', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 1, 15, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras.', 4, 'VERTICALMENTE | HORIZONTALMENTE | DIAGONALMENTE | NINGUNA'),
('FISURAS', 'LOSAS', 2, 1, '¿Las fisuras aparecen progresando verticalmente a la línea neutra del elemento y desapareciendo al aproximarse?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 2, 2, '¿Las fisuras aparecen cerca de la cara del apoyo o en la zona de confinamiento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 2, 3, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Ensayo de Medicion de Recubrimiento, Nivelacion de Superficies, Escaneo 3D', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 2, 4, '¿Hay presencia de fisuras en la zona sometida a compresión del Elemento?', '', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 2, 5, '¿Se evidencia Fisuras perpendiculares a la Armadura Principal del Elemento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 2, 6, '¿Hay presencia de fisuras en la zona sometida a tracción del elemento?', '', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 2, 7, '¿Los elementos que restringen la dilatación del elemento tienen fisuras?', 'Realizar Análisis Térmico (Termografia)', 2, 'SI | NO'),
('FISURAS', 'LOSAS', 2, 8, '¿Las fisuras que observas son solo superficiales o también las acompañan profundas?', 'Realizar Remoción Friso/Recubrimiento, Ultra-Sonido, Gammagrafía', 3, 'SUPERFICIALES | SUPERFICIALES - PROFUNDAS | PROFUNDAS'),
('FISURAS', 'MAMPOSTERIA', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas?', 'Realizar ensayo de Fisurometro, Actividad de Fisuras con Testigo.', 2, 'ACTIVAS | PASIVAS'),
('FISURAS', 'MAMPOSTERIA', 1, 2, '¿Las fisuras se presentan en forma de "Mapeo" o "Redes", entrecruzadas entre sí?', 'Realizar ensayo de Fisurometro, Actividad de Fisuras con Testigo.', 3, 'SI, CON  ENTRECRUZAMIENTO | SI, SIN ENTRECRUZAMIENTO | NO'),
('FISURAS', 'MAMPOSTERIA', 1, 3, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', 'Realizar ensayo de Fisurometro, Actividad de Fisuras con Testigo.', 2, 'SI | NO'),
('FISURAS', 'MAMPOSTERIA', 1, 4, '¿Las fisuras se inclinan en un ángulo cercano a  45° respecto al eje longitudinal, con 75° como el máximo?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI | NO'),
('FISURAS', 'MAMPOSTERIA', 1, 5, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 3, 'DURANTE LAS PRIMERAS HORAS | POSTERIORMENTE | NO LO SE'),
('FISURAS', 'MAMPOSTERIA', 1, 6, '¿Hay fisuras específicamente acompañadas de rotura de Elementos Adosados?', '', 2, 'SI | NO'),
('FISURAS', 'MAMPOSTERIA', 1, 7, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Medición de Recubrimiento, Nivelación de Superficie, Escaneo 3D, Plomo de Muros y Columnas.', 2, 'SI | NO'),
('FISURAS', 'MAMPOSTERIA', 1, 8, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento cercano a éstas?', 'Realizar Medición de Recubrimiento, Nivelación de Superficie, Escaneo 3D, Plomo de Muros y Columnas.', 2, 'SI | NO'),
('FISURAS', 'MAMPOSTERIA', 1, 9, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras.', 4, 'VERTICALMENTE | HORIZONTALMENTE | DIAGONALMENTE | NINGUNA'),
('FISURAS', 'MAMPOSTERIA', 1, 10, '¿Las fisuras se Asemejan a algunas de estas Imágenes?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 6, 'A | B | C | D | E | NINGUNA'),
('FISURAS', 'MAMPOSTERIA', 2, 1, '¿Las fisuras en la mampostería aparecen cerca de la cara del apoyo o en la zona de confinamiento de un elemento Estructural?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Gammagrafía, Ultra-sonido.', 2, 'SI | NO'),
('FISURAS', 'MAMPOSTERIA', 2, 2, '¿Se encuentran fisuras en elementos que restrinjan la dilatación del Elemento Afectado?', 'Realizar Análisis Térmico ( Termografia).', 2, 'SI | NO'),
('FISURAS', 'MAMPOSTERIA', 2, 3, '¿Las fisuras que se observan,  son solo superficiales o también las acompañan profundas?', 'Realizar Remoción de Friso/Recubrimiento, Ultra-sonido, Gammagrafía.', 3, 'SUPERFICIALES | SUPERFICIALES - PROFUNDAS | PROFUNDAS'),
('FISURAS', 'MUROS', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas?', 'Realizar Ensayo de Fisurómetro, Medición de Actividad con Testigos.', 2, 'ACTIVAS | PASIVAS'),
('FISURAS', 'MUROS', 1, 2, '¿Las fisuras se presentan en forma de "Mapeo" o "Redes", entrecruzadas entre sí?', '', 3, 'SI, CON  ENTRECRUZAMIENTO | SI, SIN ENTRECRUZAMIENTO | NO'),
('FISURAS', 'MUROS', 1, 3, '¿Las fisuras muestran presencia de Compuestos de tipo "Gel" en ellas?', '', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 4, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', '', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 5, '¿Las fisuras se inclinan en un ángulo cercano a  45° respecto al eje longitudinal, con 75° como el máximo?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 6, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', '', 3, 'DURANTE LAS PRIMERAS HORAS | POSTERIORMENTE | TAL VEZ'),
('FISURAS', 'MUROS', 1, 7, '¿Las fisuras se ubican únicamente en las zonas de mayor momento (nodos, tramo central de la luz del elemento)?', '', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 8, '¿Las fisuras toman distintas inclinaciones en cada cara del elemento?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 9, '¿Hay fisuras específicamente acompañadas de rotura de Elementos Adosados?', '', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 10, '¿Hay presencia solo de Micro-fisuras en el elemento afectado?', '', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 11, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Medicion de Recubrimiento, Nivelacion de Superficies, Plomo de Muros y Columnas, Escaneo 3D.', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 12, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento cercano a éstas?', '', 2, 'SI | NO'),
('FISURAS', 'MUROS', 1, 13, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras.', 4, 'VERTICALMENTE | HORIZONTALMENTE | DIAGONALMENTE | NINGUNA'),
('FISURAS', 'MUROS', 1, 14, '¿Las fisuras se Asemejan a algunas de estas Imágenes?', 'Realizar ensayo de Fisurómetro, Medición de fisuras, Levantamiento Grafico de Fisuras.', 6, 'A | B | C | D | E | NINGUNA'),
('FISURAS', 'MUROS', 2, 1, '¿Las fisuras aparecen progresando verticalmente a la línea neutra del elemento y desapareciendo al aproximarse?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'MUROS', 2, 2, '¿Las fisuras se presentan paralelas a la Armadura Longitudinal del elemento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 3, 'SI, CONTINUAS | SI, NO CONTINUAS | NO'),
('FISURAS', 'MUROS', 2, 3, '¿Las fisuras aparecen cerca de la cara del apoyo o en la zona de confinamiento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'MUROS', 2, 4, '¿Las fisuras aparecen paralelas a la armadura transversal del elemento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 2, 'SI | NO'),
('FISURAS', 'MUROS', 2, 5, '¿El elemento afectado, podría restringir a un elemento que se esté dilatando?', 'Realizar Análisis Térmico ( Termografia)', 2, 'SI | NO'),
('FISURAS', 'MUROS', 2, 6, '¿Hay presencia de fisuras en la zona sometida a compresión del Elemento?', '', 2, 'SI | NO'),
('FISURAS', 'MUROS', 2, 7, '¿Se evidencia Fisuras perpendiculares a la Armadura Principal del Elemento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía', 2, 'SI | NO'),
('FISURAS', 'MUROS', 2, 8, '¿Hay presencia de fisuras en la zona sometida a tracción del elemento?', '', 2, 'SI | NO'),
('FISURAS', 'MUROS', 2, 9, '¿Los elementos que restringen la dilatación del elemento tienen fisuras?', 'Realizar Análisis Térmico (Termografia)', 2, 'SI | NO'),
('FISURAS', 'MUROS', 2, 10, '¿Las fisuras que observas son solo superficiales o también las acompañan profundas?', 'Realizar remoción de Friso/Recubrimiento, Ultra-Sonido, Gammagrafía.', 3, 'SUPERFICIALES | SUPERFICIALES - PROFUNDAS | PROFUNDAS');

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

--
-- Indices de la tabla `preguntasplanillasetapas`
--
ALTER TABLE `preguntasplanillasetapas`
  ADD PRIMARY KEY (`patologia`,`elemento`,`numeroEtapa`,`numeroPregunta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
