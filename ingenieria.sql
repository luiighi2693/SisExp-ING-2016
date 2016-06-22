-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2016 a las 04:25:58
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
-- Estructura de tabla para la tabla `matrizcausas`
--

CREATE TABLE `matrizcausas` (
  `patologia` varchar(100) NOT NULL,
  `causa` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizcausas`
--

INSERT INTO `matrizcausas` (`patologia`, `causa`) VALUES
('Abrasion', 'Desgaste superficial, incluido la pasta y los áridos'),
('Abrasion', 'El arrastre de sedimentos en un canal revestido'),
('Abrasion', 'Friccion en seco (fricción, arañamiento o percusión)'),
('Abrasion', 'Paso de Vehiculos de Carga en caso de Pisos Industriales, Paso de Vehiculos en caso de Tableros de Puentes, Abrasion por particulas sueltas transportadas por Viento o Por Agua)'),
('Accion de Agua de Mar', 'Acción de los cloruros presentes en el Ambiente marino'),
('Accion de Agua de Mar', 'Acción de los sulfatos presentes en el Ambiente marino'),
('Accion de Agua de Mar', 'Contacto directo con el agua de mar con ciclos alternados de mojado y secado'),
('Accion de Agua de Mar', 'Impacto de las olas del mar'),
('Accion del Fuego', '20 - 200 °C: Evaporación del agua capilar; color gris; 100 - 95% resistencia residual; Módulo de deformación residual 100 - 70%'),
('Accion del Fuego', '300 - 400 °C: Pérdida de agua de gel, aparecimiento de primeras fisuras superficiales; color rosa; 95 - 88 % resistencia residual; Módulo de deformación residual 50 - 38%'),
('Accion del Fuego', '500 - 600 °C: Hormigon comienza a desagregar; color rosa-rojo; 75 - 55 % resistencia residual; Módulo de deformación residual 20 - 0%'),
('Accion del Fuego', '900 - 1000 °C: Hormigon desagregado, sin ninguna resistencia; color ceniza-rojo - Amarillo-anaranjado; 10 - 0 % resistencia residual; Módulo de deformación residual 0%'),
('Accion del Fuego', 'Accidentes industriales con generacion de Fuego'),
('Accion del Fuego', 'Incendios'),
('Accion del Fuego', 'Los aceros deformados en frío, presentan una pérdida en su resistencia residual de hasta un 25-30% para temperaturas del orden de los 700º C.'),
('Accion Sismica', '  Detalles inadecuados, especialmente de armado y en las uniones de las barras'),
('Accion Sismica', 'Efecto de Ondas Vibratorias por Sismo'),
('Accion Sismica', 'Irregularidades Estructurales atacadas inadecuadamente'),
('Accion Sismica', 'Pobre calidad del trabajo realizado y del hormigón incorporado'),
('Accion Sismica', 'Sobrecargado de la estructura con cargas gravitatorias'),
('Acciones Biologicas', 'Microorganismos: Bacterias heterotróficas y hongos filamentosos; Hongos. Productos del Metabolismo:  Ácidos orgánicos. Mecanismo de deterioro: Disolución de la portlandita y silicatos hidratados.'),
('Acciones Biologicas', 'Microorganismos: Bacterias quimiolitotróficas, Thiobacillus thioparus y otras especies neutrofílicas (10>pH>6) Thiobacillus thiooxidans y otras especies acidofílicas  (pH>5). Productos del Metabolismo:  Ácido sulfhídrico. Mecanismo de deterioro: Diso'),
('Acciones Biologicas', 'Microorganismos: Bacterias reductoras de sulfato (BRS). Productos del Metabolismo:  ÁGas sulfhídrico (H2S). Mecanismo de deterioro: Disolución de la portlandita'),
('Adherencia y Anclaje', 'Actuación de sobrecargas'),
('Adherencia y Anclaje', 'Anclaje insuficiente'),
('Adherencia y Anclaje', 'Deficiencia de la altura de las nervuras'),
('Adherencia y Anclaje', 'Exudación en la parte inferior de las armaduras horizontales'),
('Adherencia y Anclaje', 'Hormigón con resistencia inadecuada'),
('Adherencia y Anclaje', 'Pérdida de la adherencia entre armadura y el hormigón'),
('Asentamiento', '  Deformación excesiva localizada del suelo por la aparición de alteraciones no previstas (inundación, vibración, erosión, socavación, etc.)'),
('Asentamiento', 'Alteraciones por construcciones vecinas'),
('Asentamiento', 'Cargas no previstas en el proyecto original.'),
('Asentamiento', 'Deformación excesiva del suelo de fundación, no considerado en el proyecto'),
('Asentamiento', 'Errores en el proyecto o en la ejecución de las fundaciones.'),
('Asentamiento', 'Existencia de suelos expansivos.'),
('Asentamiento', 'Fundación sobre pozos mal cegados, rellenos mal ejecutados, alteraciones del terreno desconocidas, etc.'),
('Ataque de Aguas Puras', ' Agua de lluvia, agua de deshielo, agua de condensación de vapores, aguas industriales destiladas o deionizadas'),
('Ataque de Aguas Puras', 'Agua corriente o infiltrada sobre la superficie del hormigón'),
('Ataque de Aguas Puras', 'Disolución de los silicatos, aluminatos y ferritos hidratados que son estables en solución de Ca(OH)2'),
('Ataque de Aguas Puras', 'Disolución o hidrólisis de la cal libre hidratada'),
('Ataque de Aguas Puras', 'Lixiviación del hidróxido de calcio'),
('Ataque de Cloruros', 'Contaminación de los áridos o del agua de amasado o uso de aditivo acelerador de fraguado de base CaCl2'),
('Ataque de Cloruros', 'Formación del cloroaluminato o sal de Friedel'),
('Ataque de Cloruros', 'Ingreso por medio externo marino, uso de sales de deshielo o atmósferas industriales'),
('Ataque de Cloruros', 'Tenores de Cl - superiores a 0,4% en relación a la masa de cemento llevan a la despasivación de la armadura'),
('Ataque de Soluciones Acidas', 'Reacción entre os ácidos y el hidróxido de calcio'),
('Ataque de Soluciones Acidas', 'Regiones pantanosas o húmedas, donde existe descomposición de materia orgánica.'),
('Ataque de Soluciones Acidas', 'Zonas Mineras, Terrenos de Relleno, Industria de procesamiento animal'),
('Ataque de Soluciones Alcalinas', 'La penetración de la solución alcalina en los poros del hormigón y cristalización de los subproductos que se acumulan en los poros'),
('Ataque de Soluciones Alcalinas', 'Presencia de Soluciones Basicas en el entorno ( Hidroxidos de Sodio, etc.)'),
('Ataque de Soluciones Alcalinas', 'Troca iónica entre el agente alcalino con los compuestos del cemento formando sales más solubles (C3A + Na(OH)2 ? Aluminato de Sodio)'),
('Ataque de Sulfatos', 'ácido sulfúrico, sulfato de amonio, sulfatos de calcio, de magnesio y de sodio.'),
('Ataque de Sulfatos', 'Exposición a aguas residuales industriales.'),
('Ataque de Sulfatos', 'Exposición a lluvia con polución urbana'),
('Ataque de Sulfatos', 'Exposición a suelos sulfatados'),
('Ataque de Sulfatos', 'Exposición al agua de mar'),
('Ataque de Sulfatos', 'Interacción del sulfato con los hidróxidos de calcio libre y con los aluminatos de calcio hidratados (1 y 2)'),
('Ataque de Sulfatos', 'Presencia de Sulfatos en bloques de arcilla o piedra con mal proceso de fabricacion (Cortos Tiempos en Hornos de fabricacion)'),
('Carbonatacion', 'Acceso del CO2 en la atmósfera a través de la porosidad y fisuras del hormigón'),
('Carbonatacion', 'Formación de carbonatos'),
('Carbonatacion', 'Presencia de humedad en los poros del hormigón'),
('Carbonatacion', 'Reacción del CO2 de la atmósfera con os componentes alcalinos de la pasta de cemento hidratada'),
('Compresion en Losas', 'Cálculo deficiente.'),
('Compresion en Losas', 'Exceso de carga.'),
('Compresion en Losas', 'Hormigón de menor resistencia con abundante acero en zona de tracción.'),
('Compresion en Losas', 'Sección insuficiente con cuantías muy elevadas de acero en la zona de tracción.'),
('Compresion en Muros', 'Cálculo deficiente.'),
('Compresion en Muros', 'Exceso de carga.'),
('Compresion en Muros', 'Hormigón de menor resistencia con abundante acero en zona de tracción.'),
('Compresion en Muros', 'Sección insuficiente con cuantías muy elevadas de acero en la zona de tracción.'),
('Compresion en Vigas', 'Cálculo deficiente.'),
('Compresion en Vigas', 'Exceso de carga.'),
('Compresion en Vigas', 'Hormigón de menor resistencia con abundante acero en zona de tracción.'),
('Compresion en Vigas', 'Sección insuficiente con cuantías muy elevadas de acero en la zona de tracción.'),
('Corrimiento de Aceros en Vigas', 'Anclaje insuficiente.'),
('Corrimiento de Aceros en Vigas', 'Armaduras amasadas o dislocadas debido al tránsito de los operarios'),
('Corrimiento de Aceros en Vigas', 'Armaduras aparentes en el momento de la retirada de los encofrados'),
('Corrimiento de Aceros en Vigas', 'Colocar cercos sin cerrar o con escasa longitud de anclaje.'),
('Corrimiento de Aceros en Vigas', 'Falta de colocación de espaciadores'),
('Corrimiento de Aceros en Vigas', 'La falta de recubrimiento adecuado'),
('Corrimiento de Aceros en Vigas', 'Mala adherencia del acero de refuerzo con el hormigón.'),
('Corrimiento de Aceros en Vigas', 'Separacion inadecuada del Acero, formacion de   Nidos de Abeja  '),
('Corrimiento de Aceros en Vigas', 'Sobrecarga no prevista.'),
('Corrosion de Armaduras', 'Aditivos con Contenido de Cloruros'),
('Corrosion de Armaduras', 'Despasivacion del Hormigon por otros agentes ( Carbonatacion)'),
('Corrosion de Armaduras', 'Exceso en la concentracion de Iones Cloruros'),
('Corrosion de Armaduras', 'Medio Ambiente agresivo ( Ambiente Marino)'),
('Corrosion de Armaduras', 'Sales de Deshielo'),
('Cortante en Losas', 'Cuantía de acero longitudinal insuficiente.'),
('Cortante en Losas', 'Desencofre prematuro.'),
('Cortante en Losas', 'Estribos insuficientes, tener menor diámetro del exigido o escasa longitud deanclaje al cerrarlo.'),
('Cortante en Losas', 'Hormigón de resistencia inadecuada.'),
('Cortante en Losas', 'Punzonamiento, por introducción de una carga concentrada perpendicular a su plano medio.'),
('Cortante en Losas', 'Sección insuficiente de la viga.'),
('Cortante en Losas', 'Sobrecargas no previstas.'),
('Cortante en Muros', 'Cuantía de acero longitudinal insuficiente.'),
('Cortante en Muros', 'Desencofre prematuro.'),
('Cortante en Muros', 'Estribos insuficientes, tener menor diámetro del exigido o escasa longitud deanclaje al cerrarlo.'),
('Cortante en Muros', 'Hormigón de resistencia inadecuada.'),
('Cortante en Muros', 'Punzonamiento, por introducción de una carga concentrada perpendicular a su plano medio.'),
('Cortante en Muros', 'Sección insuficiente de la viga.'),
('Cortante en Muros', 'Sobrecargas no previstas.'),
('Cortante en Vigas', 'Cuantía de acero longitudinal insuficiente.'),
('Cortante en Vigas', 'Desencofre prematuro.'),
('Cortante en Vigas', 'Estribos insuficientes, tener menor diámetro del exigido o escasa longitud deanclaje al cerrarlo.'),
('Cortante en Vigas', 'Hormigón de resistencia inadecuada.'),
('Cortante en Vigas', 'Punzonamiento, por introducción de una carga concentrada perpendicular a su plano medio.'),
('Cortante en Vigas', 'Sección insuficiente de la viga.'),
('Cortante en Vigas', 'Sobrecargas no previstas.'),
('Criptoflorescencia', 'Acumulo de solución saturada de hidróxido de calcio en la zona interna del hormigón'),
('Criptoflorescencia', 'Agua infiltrada bajo presión a través de la porosidad del hormigón o fisuras'),
('Criptoflorescencia', 'Carbonatación del hidróxido de calcio en la zona interna del hormigón  Ca(OH)2 + CO2 H2O   CaCO3 + H2O'),
('Criptoflorescencia', 'Disolución o hidrólisis de la cal libre hidratada a hidróxido de calcio en la superficie del hormigón – lixiviación'),
('Deficiencia en Posicionado de Armaduras', 'Anclaje insuficiente.'),
('Deficiencia en Posicionado de Armaduras', 'Armaduras amasadas o dislocadas debido al tránsito de los operarios'),
('Deficiencia en Posicionado de Armaduras', 'Armaduras aparentes en el momento de la retirada de los encofrados'),
('Deficiencia en Posicionado de Armaduras', 'Colocar cercos sin cerrar o con escasa longitud de anclaje.'),
('Deficiencia en Posicionado de Armaduras', 'Falta de colocación de espaciadores'),
('Deficiencia en Posicionado de Armaduras', 'La falta de recubrimiento adecuado'),
('Deficiencia en Posicionado de Armaduras', 'Mala adherencia del acero de refuerzo con el hormigón.'),
('Deficiencia en Posicionado de Armaduras', 'Separacion inadecuada del Acero, formacion de   Nidos de Abeja  '),
('Deficiencia en Posicionado de Armaduras', 'Sobrecarga no prevista.'),
('Desecacion Superficial', 'Alta relación agua - cemento'),
('Desecacion Superficial', 'Evaporación del agua de amasado.'),
('Desecacion Superficial', 'Exagerada absorción del agua por parte de los áridos o por los encofrados.'),
('Desecacion Superficial', 'Exceso de vibrado.'),
('Desecacion Superficial', 'Exudación.'),
('Eflorescencias', 'Acumulo de solución saturada de hidróxido de calcio en la superficie del hormigón - eflorescencias'),
('Eflorescencias', 'Agua infiltrada bajo presión a través de la porosidad del hormigón o fisuras'),
('Eflorescencias', 'Carbonatación del hidróxido de calcio en la superficie del hormigón  Ca(OH)2 + CO2 H2O   CaCO3 + H2O'),
('Eflorescencias', 'Percolacion del Agua en el hormigon o  Cara del Elemento sometida a Mojado/Secado alternante'),
('Erosion', 'Colisión de las partículas con el hormigón'),
('Erosion', 'Cuanto menor la resistencia a la compresión, mayor el efecto de la erosión'),
('Erosion', 'Desgaste por la acción de fluidos con partículas sólidas en suspensión'),
('Fallas Constructivas - Oquedades Superficiales', 'Compactación inadecuada: excesiva o deficiente'),
('Fallas Constructivas - Oquedades Superficiales', 'Dimensión máxima característica de los áridos mayor que el espaciamiento de la armadura'),
('Fallas Constructivas - Oquedades Superficiales', 'Errores en el diseño y/o colocación de las barras de acero.'),
('Fallas Constructivas - Oquedades Superficiales', 'Hormigón con dosificación Inadecuada'),
('Fallas Constructivas - Oquedades Superficiales', 'Hormigón vertido de alturas superiores la 2,50 m'),
('Fallas Constructivas - Oquedades Superficiales', 'Oquedades superficiales por deficiencias en el detalle /o posicionamento de la armadura'),
('Fallas Constructivas - Oquedades Superficiales', 'Oquedades superficiales por mal hormigonado en cualquier tipo de estructuras.'),
('Fallas Constructivas - Oquedades Superficiales', 'Zonas vacías en las caras del elemento, donde en algunos casos pudieran estar los aceros a vista.'),
('Fallo por Compresion (Columnas)', 'Cálculo deficiente.'),
('Fallo por Compresion (Columnas)', 'Exceso de carga.'),
('Fallo por Compresion (Columnas)', 'Hormigón de menor resistencia con abundante acero en zona de tracción.'),
('Fallo por Compresion (Columnas)', 'Sección insuficiente con cuantías muy elevadas de acero en la zona de tracción.'),
('Fallo por Cortante ( Columnas)', 'Cuantía de acero longitudinal insuficiente.'),
('Fallo por Cortante ( Columnas)', 'Desencofre prematuro.'),
('Fallo por Cortante ( Columnas)', 'Estribos insuficientes, tener menor diámetro del exigido o escasa longitud deanclaje al cerrarlo.'),
('Fallo por Cortante ( Columnas)', 'Hormigón de resistencia inadecuada.'),
('Fallo por Cortante ( Columnas)', 'Punzonamiento, por introducción de una carga concentrada perpendicular a su plano medio.'),
('Fallo por Cortante ( Columnas)', 'Sección insuficiente de la viga.'),
('Fallo por Cortante ( Columnas)', 'Sobrecargas no previstas.'),
('Fallo por Flexion (Columnas)', 'Cálculo deficiente.'),
('Fallo por Flexion (Columnas)', 'Exceso de carga.'),
('Fallo por Flexion (Columnas)', 'Insuficiencia en el Acero de Refuerzo'),
('Fallo por Flexion (Columnas)', 'Sección insuficiente con cuantias elavadas de Acero de Refuerzo Principal'),
('Fallo por Flexion - Torsion (Columnas)', 'Acero de refuerzo insuficiente.'),
('Fallo por Flexion - Torsion (Columnas)', 'Acero de refuerzo mal posicionado en el diseño o en la ejecución.'),
('Fallo por Flexion - Torsion (Columnas)', 'Anclaje insuficiente.'),
('Fallo por Flexion - Torsion (Columnas)', 'Hormigón de resistencia inadecuada.'),
('Fallo por Flexion - Torsion (Columnas)', 'No consideración de los esfuerzos de torsión.'),
('Fallo por Flexion - Torsion (Columnas)', 'Sobrecarga no prevista.'),
('Fallo por Torsion (Columnas)', 'Actuación de sobrecargas'),
('Fallo por Torsion (Columnas)', 'Deficiencia del Acero requerido para dicha solicitacion. Deficiencia en el Calculo'),
('Fallo por Torsion (Columnas)', 'No se ha tenido en cuenta los efectos de la torsión como solicitación secundaria o se ha tratado en forma incorrecta la torsión como solicitación principal.'),
('Fallo por Traccion (Columnas)', 'Cálculo deficiente.'),
('Fallo por Traccion (Columnas)', 'Exceso de carga.'),
('Fallo por Traccion (Columnas)', 'Hormigón de menor resistencia con abundante acero en zona de Compresion'),
('Fallo por Traccion (Columnas)', 'Las tensiones que puede resistir un hormigón traccionado están en el orden del 10 % de las de compresión.'),
('Fallo por Traccion (Columnas)', 'Sección insuficiente con cuantías muy elevadas de acero en la zona de Compresion'),
('Flexion - Cortante (Vigas)', 'Actuación de sobrecargas'),
('Flexion - Cortante (Vigas)', 'Origen de solicitaciones de flexión pura o por la combinación de flexión y cortante'),
('Flexion - Cortante (Vigas)', 'Punzonamiento, por introducción de una carga concentrada perpendicular a su plano medio.'),
('Flexion - Torsion en Vigas', 'Acero de refuerzo insuficiente.'),
('Flexion - Torsion en Vigas', 'Acero de refuerzo mal posicionado en el diseño o en la ejecución.'),
('Flexion - Torsion en Vigas', 'Anclaje insuficiente.'),
('Flexion - Torsion en Vigas', 'Hormigón de resistencia inadecuada.'),
('Flexion - Torsion en Vigas', 'No consideración de los esfuerzos de torsión.'),
('Flexion - Torsion en Vigas', 'Sobrecarga no prevista.'),
('Flexion en Losas', 'Cálculo deficiente.'),
('Flexion en Losas', 'Exceso de carga.'),
('Flexion en Losas', 'Insuficiencia en el Acero de Refuerzo'),
('Flexion en Losas', 'Sección insuficiente con cuantias elavadas de Acero de Refuerzo Principal'),
('Flexion en Muros', 'Cálculo deficiente.'),
('Flexion en Muros', 'Exceso de carga.'),
('Flexion en Muros', 'Insuficiencia en el Acero de Refuerzo'),
('Flexion en Muros', 'Sección insuficiente con cuantias elavadas de Acero de Refuerzo Principal'),
('Flexion en Vigas', 'Cálculo deficiente.'),
('Flexion en Vigas', 'Exceso de carga.'),
('Flexion en Vigas', 'Insuficiencia en el Acero de Refuerzo'),
('Flexion en Vigas', 'Sección insuficiente con cuantias elavadas de Acero de Refuerzo Principal'),
('Fluencia de los Elementos', '  Bajos contenidos de humedad y una mayor relación agua/cemento favorecen la soportar y se produce su rotura'),
('Fluencia de los Elementos', 'Efecto producido por la carga actuante en el elemento de hormigón, sobre el agua contenida en el gel y los capilares.'),
('Fluencia de los Elementos', 'Implica una transferencia de carga que en determinado momento no pueden'),
('Fluencia de los Elementos', 'Poner en carga la estructura cuando el hormigón cuenta aún con una baja maduración.'),
('Impacto - Explosion', 'Impactos de vehículos en columnas o tabiques de estacionamientos, playas de maniobras o depósitos, donde los elementos estructurales son rígidos y las velocidades de circulación son relativamente bajas.'),
('Impacto - Explosion', 'Impactos producto de ondas expansivas de detonaciones o explosiones cercanas al elemento afectado'),
('Mal Vibrado del Concreto', 'Alta relación agua/cemento.'),
('Mal Vibrado del Concreto', 'En Columnas: Retracción plástica en cabeza del Elemento.  Cuanto más alta es la columna y más fluido es el hormigón, mayor cantidad de agua se acumula en la parte superior, lo que facilita la aparición de daños'),
('Mal Vibrado del Concreto', 'Exceso de vibrado.'),
('Mal Vibrado del Concreto', 'Hormigonado defectuoso en la cabeza de columna.'),
('Mala Relacion Agua/Cemento', 'Ingreso de agua a la mezcla por Lluvia durante Vaciado'),
('Mala Relacion Agua/Cemento', 'Ingreso de agua no contemplado en el diseño durante vaciado'),
('Mala Relacion Agua/Cemento', 'Mal Diseño de Mezcla '),
('Mala Relacion Agua/Cemento', 'Mala dosificacion en planta '),
('Mala Relacion Agua/Cemento', 'Negligencia laboral por parte de Mano de Obra o Supervisores'),
('Movimentacion Termica', 'Dilatacion del Elemento Expuesto ( Coeficiente del Hormigon 9x10-6 m/m/oC)'),
('Movimentacion Termica', 'Gradiente de temperatura interno y externo.'),
('Reaccion Alcalis - Agregado', 'Absorción del agua por osmosis por el gel'),
('Reaccion Alcalis - Agregado', 'Agregado con sílice, silicato o carbonato reactivos'),
('Reaccion Alcalis - Agregado', 'Humedad relativa del ambiente > 75% o presencia de fuentes externas de humedad'),
('Reaccion Alcalis - Agregado', 'Reacción entre los álcalis del aglomerante con el árido reactivo'),
('Remocion del Encofrado', 'La remoción de los puntales cuando aún el concreto no alcanzó la resistencia suficiente'),
('Remocion del Encofrado', 'La separación excesiva de los puntales en elementos flexados o de los anillos en las columnas origina elementos estructurales con deformaciones iniciales.'),
('Remocion del Encofrado', 'Se mantienen los puntales en varias plantas sin realizar reapuntalamientos o cuando se colocan cargas importantes sobre los entrepisos en construcción.'),
('Retracción Hidraulica', 'Alta relación agua - cemento'),
('Retracción Hidraulica', 'Elemento con escasa cuantía de acero de retracción.'),
('Retracción Hidraulica', 'Elementos muy coartados.'),
('Retracción Hidraulica', 'Exceso de cemento o finos.'),
('Retracción Hidraulica', 'Exceso de vibrado.'),
('Retracción Hidraulica', 'Secado prematuro del hormigón por curado inadecuado.'),
('Retracción Hidraulica Termica', ' Alta relación agua / cemento'),
('Retracción Hidraulica Termica', ' Alto calor de hidratación'),
('Retracción Hidraulica Termica', ' Dilatación del elemento que está expuesto'),
('Retracción Hidraulica Termica', ' Exceso de vibración'),
('Retracción Hidraulica Termica', 'Cura mal hecha'),
('Retracción Hidraulica Termica', 'Gradiente de temperatura interno y externo.'),
('Torsion en Vigas', 'Actuación de sobrecargas'),
('Torsion en Vigas', 'Deficiencia del Acero requerido para dicha solicitacion. Deficiencia en el Calculo'),
('Torsion en Vigas', 'No se ha tenido en cuenta los efectos de la torsión como solicitación secundaria o se ha tratado en forma incorrecta la torsión como solicitación principal.'),
('Traccion en Losas', 'Cálculo deficiente.'),
('Traccion en Losas', 'Exceso de carga.'),
('Traccion en Losas', 'Hormigón de menor resistencia con abundante acero en zona de Compresion'),
('Traccion en Losas', 'Las tensiones que puede resistir un hormigón traccionado están en el orden del 10 % de las de compresión.'),
('Traccion en Losas', 'Sección insuficiente con cuantías muy elevadas de acero en la zona de Compresion'),
('Traccion en Muros', 'Cálculo deficiente.'),
('Traccion en Muros', 'Exceso de carga.'),
('Traccion en Muros', 'Hormigón de menor resistencia con abundante acero en zona de Compresion'),
('Traccion en Muros', 'Las tensiones que puede resistir un hormigón traccionado están en el orden del 10 % de las de compresión.'),
('Traccion en Muros', 'Sección insuficiente con cuantías muy elevadas de acero en la zona de Compresion'),
('Traccion en Vigas', 'Cálculo deficiente.'),
('Traccion en Vigas', 'Exceso de carga.'),
('Traccion en Vigas', 'Hormigón de menor resistencia con abundante acero en zona de Compresion'),
('Traccion en Vigas', 'Las tensiones que puede resistir un hormigón traccionado están en el orden del 10 % de las de compresión.'),
('Traccion en Vigas', 'Sección insuficiente con cuantías muy elevadas de acero en la zona de Compresion'),
('Variacion Termica (Movimentacion Termica)', 'Contraccion y Dilatacion Volumetrica'),
('Variacion Termica (Movimentacion Termica)', 'Distribucion No lineal de Temperatura'),
('Variacion Termica (Movimentacion Termica)', 'Gradiente elevado entre hormigon fresco y ambiente'),
('Variacion Termica (Movimentacion Termica)', 'Seccion Variable, la zona de menor Seccion seca mas Rapido'),
('Variacion Termica (Movimentacion Termica)', 'Variacion de Humedad por Mojado/Secado'),
('Variacion Termica (Movimentacion Termica)', 'Variacion del gradiente Termico Ambiente/Estructura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicascolumnas_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicascolumnas_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicascolumnas_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicascolumnas_nombrepatologia` (`idPatologia`, `nombrePatologia`) VALUES
('abrasion', 'Abrasion'),
('accionAguaMar', 'Accion de Agua de Mar'),
('accionFuego', 'Accion del Fuego'),
('accionSismica', 'Accion Sismica'),
('adherenciaAnclaje', 'Adherencia y Anclaje'),
('asentamiento', 'Asentamiento'),
('ataqueBiologico', 'Ataque Biologico'),
('ataqueSolucionAlcalina', 'Ataque de Solucion Alcalina'),
('corrosionArmaduras', 'Corrosion de Armaduras'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion'),
('deficienciaposicionamientoArmaduras', 'Deficiencia en Posicionado de Armaduras'),
('desecacionSuperficial', 'Desecacion Superficial'),
('falloCompresion', 'Fallo por Compresion (Columna)'),
('falloCortante', 'Fallo por Cortante (Columna)'),
('falloFlexion', 'Fallo por Flexion'),
('falloFlexionTorsion', 'Fallo por Flexion - Torsion (Columna)'),
('falloTorsion', 'Fallo por Torsion (Columna)'),
('falloTraccion', 'Fallo por Traccion (Columna)'),
('fluenciaElementos', 'Fluencia de Elementos'),
('impactos', 'Impactos'),
('malaRelacionAguaCemento', 'Mala Relacion Agua/Cemento'),
('malVibradoConcreto', 'Mal Vibrado del Concreto'),
('oquedadesSuperficiales', 'Oquedades Superficiales'),
('reaccionAlcalisAgregado', 'Reaccion Alcalis - Agregado'),
('reaccionCloruros', 'Reaccion con Cloruros'),
('reaccionSulfatos', 'Reaccion con Sulfatos'),
('remocionEnconfrado', 'Remocion de Enconfrado'),
('retraccionHidraulica', 'Retraccion Hidraulica'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica'),
('variacionHumedad', 'Variacion de Humedad'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)');

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
  `ataqueSolucionAlcalina` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicascolumnas_patologia`
--

INSERT INTO `matrizrespuestaspatologicascolumnas_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `reaccionCloruros`, `corrosionCarbonatacion`, `deficienciaposicionamientoArmaduras`, `adherenciaAnclaje`, `accionAguaMar`, `oquedadesSuperficiales`, `reaccionAlcalisAgregado`, `fluenciaElementos`, `remocionEnconfrado`, `malVibradoConcreto`, `malaRelacionAguaCemento`, `corrosionArmaduras`, `ataqueBiologico`, `falloFlexion`, `falloCortante`, `falloFlexionTorsion`, `falloCompresion`, `falloTorsion`, `falloTraccion`, `accionSismica`, `asentamiento`, `impactos`, `abrasion`, `ataqueSolucionAlcalina`) VALUES
('FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO'),
('FISICAS', 2, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('FISICAS', 3, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'NO', 'PERDIDA DE SECCION', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'AUMENTO DE VOLUMEN'),
('FISICAS', 4, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('FISICAS', 5, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO'),
('FISICAS', 6, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 7, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('FISICAS', 8, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 9, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 10, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 11, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO'),
('FISICAS', 12, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 13, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 14, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO'),
('FISURAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS'),
('FISURAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 3, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 4, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('FISURAS', 5, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('FISURAS', 6, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 7, 'Tramo central / Confinamiento (Momento Max.)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 8, 'Inclinaciones Distintas en cada Cara', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 9, 'Con rotura de Elementos Adosados', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO'),
('FISURAS', 10, 'Restringe Dilatacion de Elementos', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 11, 'Micro-Fisuras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 12, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 13, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI'),
('FISURAS', 14, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'VERTICALMENTE', 'VERTICALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'VERTICALMENTE', 'HORIZONTALMENTE', 'VERTICALMENTE', 'NO', 'DIAGONALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'VERTICALMENTE', 'DIAGONALMENTE', 'HORIZONTALMENTE', 'CUALQUIERA', 'DIAGONALMENTE', 'HORIZONTALMENTE', 'NO', 'CUALQUIERA'),
('FISURAS', 15, 'Fisuras Tipo Resorte', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 16, 'Fisuras de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'A,B,C,D,E', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 17, 'En todas las Caras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 18, 'Paralelas al Acero Longitudinal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'SI (CUALQUIERA)', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 19, 'Proximas a la cara del Apoyo / Confinamiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 20, 'Paralelas al Acero Transversal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO'),
('FISURAS', 21, 'En la zona de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 22, 'Perpendiculares al Acero Principal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 23, 'En la zona de Traccion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 24, 'Superficiales / Profundas', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'NO', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIAL', 'SUPERFICIAL'),
('QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 2, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI'),
('QUIMICAS', 3, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 4, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 5, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 6, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 7, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 8, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 9, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('QUIMICAS', 10, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 11, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('QUIMICAS', 12, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 13, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 14, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 15, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 16, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI'),
('QUIMICAS', 17, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 18, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 19, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 20, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 21, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 22, 'Presencia de Ambiente Agresivo', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MARINO / QUIMICO', 'MARINO', 'URBANO / INDUSTRIAL', 'NO', 'NO', 'MARINO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'INDUSTRIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicaslosas_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicaslosas_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicaslosas_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicaslosas_nombrepatologia` (`idPatologia`, `nombrePatologia`) VALUES
('abrasion', 'Abrasion'),
('accionAguaMar', 'Accion de Agua de Mar'),
('accionFuego', 'Accion del Fuego'),
('accionSismica', 'Accion Sismica'),
('adherenciaAnclaje', 'Adherencia y Anclaje'),
('asentamiento', 'Asentamiento'),
('ataqueAguasPuras', 'Ataque de Aguas Puras'),
('ataqueBiologico', 'Ataque Biologico'),
('ataqueSolucionAlcalina', 'Ataque de Solucion Alcalina'),
('ataqueSolucionesAcidas', 'Ataque de Soluciones Acidas'),
('compresionLosas', 'Compresion en Losas'),
('corrosionArmaduras', 'Corrosion de Armaduras'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion'),
('cortanteLosas', 'Cortante en Losas'),
('criptoflorescencia', 'Criptoflorescencia'),
('deficienciaposicionamientoArmaduras', 'Deficiencia en Posicionado de Armaduras'),
('desecacionsuperficial', 'Desecacion Superficial'),
('eflorescencia', 'Eflorescencia'),
('Erosion', 'Erosion'),
('flexionLosas', 'Flexion en Losas'),
('fluenciaElementos', 'Fluencia de Elementos'),
('impactoExplosion', 'Impacto - Explosion'),
('malaRelacionAguaCemento', 'Mala Relacion Agua/Cemento'),
('malVibradoConcreto', 'Mal Vibrado del Concreto'),
('oquedadesSuperficiales', 'Oquedades Superficiales'),
('reaccionAlcalisAgregado', 'Reaccion Alcalis - Agregado'),
('reaccionCloruros', 'Reaccion con Cloruros'),
('reaccionSulfatos', 'Reaccion con Sulfatos'),
('remocionEnconfrado', 'Remocion de Enconfrado'),
('retraccionHidraulica', 'Retraccion Hidraulica'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica'),
('traccionLosas', 'Traccion en Losas'),
('variacionHumedad', 'Variacion de Humedad'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)');

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
  `traccionLosas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicaslosas_patologia`
--

INSERT INTO `matrizrespuestaspatologicaslosas_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `reaccionCloruros`, `corrosionCarbonatacion`, `deficienciaposicionamientoArmaduras`, `adherenciaAnclaje`, `accionAguaMar`, `oquedadesSuperficiales`, `reaccionAlcalisAgregado`, `fluenciaElementos`, `remocionEnconfrado`, `malaRelacionAguaCemento`, `malVibradoConcreto`, `corrosionArmaduras`, `ataqueBiologico`, `flexionLosas`, `ataqueSolucionAlcalina`, `ataqueSolucionesAcidas`, `criptoflorescencia`, `eflorescencia`, `asentamiento`, `ataqueAguasPuras`, `accionSismica`, `abrasion`, `Erosion`, `compresionLosas`, `impactoExplosion`, `cortanteLosas`, `traccionLosas`) VALUES
('FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('FISICAS', 2, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 3, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'AUMENTO DE VOLUMEN', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'NO'),
('FISICAS', 4, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 5, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO'),
('FISICAS', 6, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 7, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 8, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 9, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 10, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 11, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 12, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 13, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 14, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO'),
('FISURAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'NO', 'PASIVAS', 'NO', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS'),
('FISURAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 3, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 4, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 5, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 6, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 7, 'Tramo central / Tramo Mayor Momento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 8, 'Inclinaciones Distintas en cada Cara', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 9, 'Paralelas al Acero Longitudinal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'SI, NO CONTINUAS', 'SI (CUALQUIERA)', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('FISURAS', 10, 'Paralelas al Acero Transversal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI'),
('FISURAS', 11, 'Con rotura de Elementos Adosados', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 12, 'Restringe Dilatacion de Elementos', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 13, 'Micro-Fisuras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 14, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO'),
('FISURAS', 15, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'NO', 'DIAGONALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'DIAGONALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'NO', 'VERTICALMENTE', 'VERTICALMENTE', 'DIAGONALMENTE', 'HORIZONTALMENTE'),
('FISURAS', 16, 'Vertical hacia la L.N', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 17, 'Proximas a la cara del Apoyo / Confinamiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 18, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 19, 'En la zona de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('FISURAS', 20, 'Perpendiculares al Acero Principal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI'),
('FISURAS', 21, 'En la zona de Traccion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 22, 'Fisuras en Elementos Restringentes', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('FISURAS', 23, 'Superficiales / Profundas', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'NO', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIALES', 'SUPERFICIALES', 'SUPERFICIALES', 'NO', 'PROFUNDA', 'SUPERFICIALES', 'SUPERFICIALES', 'SUPERFICIALES', 'SUPERFICIALES', 'PROFUNDA', 'SUPERFICIALES', 'PROFUNDA', 'SUPERFICIALES', 'SUPERFICIALES', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIALES'),
('QUIMICAS', 22, 'Presencia de Ambiente Agresivo', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MARINO / QUIMICO', 'MARINO', 'URBANO / INDUSTRIAL', 'NO', 'NO', 'MARINO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'INDUSTRIAL', 'INDUSTRIAL / QUIMICO', 'NO', 'NO', 'NO', 'INDUSTRIAL', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 2, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 3, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 4, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 5, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 6, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 7, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 8, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 9, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 10, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 11, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 12, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI'),
('QUMICAS', 13, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 14, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 15, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 16, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 17, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 18, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 19, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 20, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUMICAS', 21, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasmuros_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicasmuros_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasmuros_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicasmuros_nombrepatologia` (`idPatologia`, `nombrePatologia`) VALUES
('abrasion', 'Abrasion'),
('accionAguaMar', 'Accion de Agua de Mar'),
('accionFuego', 'Accion del Fuego'),
('accionSismica', 'Accion Sismica'),
('adherenciaAnclaje', 'Adherencia y Anclaje'),
('asentamiento', 'Asentamiento'),
('ataqueBiologico', 'Ataque Biologico'),
('compresionMuros', 'Compresion en Muros'),
('corrosionArmaduras', 'Corrosion de Armaduras'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion'),
('cortanteMuros', 'Cortante en Muros'),
('criptoflorescencia', 'Criptoflorescencia'),
('deficienciaposicionamientoArmaduras', 'Deficiencia en Posicionado de Armaduras'),
('desecacionsuperficial', 'Desecacion Superficial'),
('eflorescencia', 'Eflorescencia'),
('erosion', 'Erosion'),
('flexionMuros', 'Flexion en Muros'),
('fluenciaElementos', 'Fluencia de Elementos'),
('impactos', 'Impactos'),
('malaRelacionAguaCemento', 'Mala Relacion Agua/Cemento'),
('malVibradoConcreto', 'Mal Vibrado del Concreto'),
('oquedadesSuperficiales', 'Oquedades Superficiales'),
('reaccionAlcalisAgregado', 'Reaccion Alcalis - Agregado'),
('reaccionCloruros', 'Reaccion con Cloruros'),
('reaccionSulfatos', 'Reaccion con Sulfatos'),
('remocionEnconfrado', 'Remocion de Enconfrado'),
('retraccionHidraulica', 'Retraccion Hidraulica'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica'),
('traccionMuros', 'Traccion en Muros'),
('variacionHumedad', 'Variacion de Humedad'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)');

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
  `traccionMuros` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasmuros_patologia`
--

INSERT INTO `matrizrespuestaspatologicasmuros_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `reaccionCloruros`, `corrosionCarbonatacion`, `deficienciaposicionamientoArmaduras`, `adherenciaAnclaje`, `accionAguaMar`, `oquedadesSuperficiales`, `reaccionAlcalisAgregado`, `fluenciaElementos`, `remocionEnconfrado`, `malVibradoConcreto`, `corrosionArmaduras`, `malaRelacionAguaCemento`, `ataqueBiologico`, `criptoflorescencia`, `eflorescencia`, `asentamiento`, `impactos`, `erosion`, `abrasion`, `compresionMuros`, `flexionMuros`, `cortanteMuros`, `accionSismica`, `traccionMuros`) VALUES
('FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO'),
('FISICAS', 2, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 3, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'NO', 'PERDIDA DE SECCION', 'NO', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO'),
('FISICAS', 4, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 5, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 6, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 7, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 8, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 9, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 10, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 11, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISICAS', 12, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISICAS', 13, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 14, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS'),
('FISURAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 3, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 4, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 5, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO'),
('FISURAS', 6, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 7, 'Tramo central / Mayor Momento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO'),
('FISURAS', 8, 'Inclinaciones Distintas en cada Cara', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('FISURAS', 9, 'Con rotura de Elementos Adosados', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 10, 'Micro-Fisuras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 11, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 12, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 13, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE / VERTICALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'CUALQUIERA', 'DIAGONALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'NO', 'NO', 'VERTICALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'CUALQUIERA', 'HORIZONTALMENTE'),
('FISURAS', 14, 'Fisuras de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 15, 'Vertical hacia la L.N', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('FISURAS', 16, 'Paralelas al Acero Longitudinal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'SI, NO CONTINUAS', 'SI (CUALQUIERA)', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 17, 'Proximas a la cara del Apoyo / Confinamiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO'),
('FISURAS', 18, 'Paralelas al Acero Transversal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 19, 'Restringe Dilatacion de Elementos', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 20, 'En la zona de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 21, 'Perpendiculares al Acero Principal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('FISURAS', 22, 'En la zona de Traccion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO'),
('FISURAS', 23, 'Fisuras en Elementos Restringentes', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 24, 'Profundidad de Fisuras', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDAS', 'PROFUNDAS', 'SUPERFICIAL', 'NO', 'SUPERFICIAL', 'PROFUNDAS', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIALES', 'NO', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDAS', 'SUPERFICIAL', 'NO', 'NO', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS'),
('QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 2, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 3, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 4, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 5, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 6, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 7, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 8, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 9, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 10, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 11, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 12, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI'),
('QUIMICAS', 13, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 14, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 15, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 16, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('QUIMICAS', 17, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 18, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 19, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 20, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 21, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasparedes_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicasparedes_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasparedes_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicasparedes_nombrepatologia` (`idPatologia`, `nombrePatologia`) VALUES
('abrasion', 'Abrasion'),
('accionAguaMar', 'Accion de Agua de Mar'),
('accionFuego', 'Accion del Fuego'),
('accionSismica', 'Accion Sismica'),
('adherenciaAnclaje', 'Adherencia y Anclaje'),
('asentamiento', 'Asentamiento'),
('ataqueBiologico', 'Ataque Biologico'),
('ataqueSolucionAlcalina', 'Ataque de Solucion Alcalina'),
('compresionMuros', 'Compresion'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion'),
('cortanteMuros', 'Cortante'),
('criptoflorescencia', 'Criptoflorescencia'),
('desecacionSuperficial', 'Desecacion Superficial'),
('eflorescencia', 'Eflorescencia'),
('erosion', 'Erosion'),
('flexionMuros', 'Flexion'),
('fluenciaElementos', 'Fluencia de Elementos'),
('impactos', 'Impactos'),
('malaReaccionAguaCemento', 'Mala Relacion Agua/Cemento'),
('oquedadesSuperficiales', 'Oquedades Superficiales'),
('reaccionSulfatos', 'Reaccion con Sulfatos'),
('remocionEnconfrado', 'Remocion de Enconfrado'),
('retraccionHidraulica', 'Retraccion Hidraulica'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica'),
('traccionMuros', 'Traccion en Muros'),
('variacionHumedad', 'Variacion de Humedad'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)');

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
  `ataqueBiologico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasparedes_patologia`
--

INSERT INTO `matrizrespuestaspatologicasparedes_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `corrosionCarbonatacion`, `adherenciaAnclaje`, `fluenciaElementos`, `remocionEnconfrado`, `malaReaccionAguaCemento`, `criptoflorescencia`, `eflorescencia`, `asentamiento`, `impactos`, `erosion`, `abrasion`, `compresionMuros`, `flexionMuros`, `cortanteMuros`, `accionSismica`, `traccionMuros`, `ataqueSolucionAlcalina`, `accionAguaMar`, `oquedadesSuperficiales`, `ataqueBiologico`) VALUES
('FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 2, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO'),
('FISICAS', 3, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'AUMENTO DE VOLUMEN', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'NO', 'PERDIDA DE SECCION', 'NO', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO'),
('FISICAS', 4, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('FISICAS', 5, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 6, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('FISICAS', 7, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI'),
('FISICAS', 8, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 9, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISICAS', 10, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO'),
('FISICAS', 11, '1', 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 12, '2', 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 13, '3', 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 14, '4', 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'NO', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'NO'),
('FISURAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 3, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('FISURAS', 4, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 5, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 6, 'Con rotura de Elementos Adosados', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 7, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO'),
('FISURAS', 8, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('FISURAS', 9, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'DIAGONALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'NO', 'NO', 'VERTICALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'CUALQUIERA', 'HORIZONTALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'NO'),
('FISURAS', 10, 'Fisuras de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 11, 'Proximas al Apoyo o Confinamiento de Elementos Estructurales', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 12, 'En Elementos Restringentes', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 13, 'Superficiales / Profundas', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDAS', 'SUPERFICIAL', 'NO', 'NO', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'PROFUNDAS', 'SUPERFICIAL', 'NO', 'NO', 'NO'),
('QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 2, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('QUIMICAS', 3, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO'),
('QUIMICAS', 4, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 5, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 6, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 7, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 8, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('QUIMICAS', 9, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('QUIMICAS', 10, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA'),
('QUIMICAS', 11, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO'),
('QUIMICAS', 12, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO'),
('QUIMICAS', 13, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 14, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 15, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 16, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'SI'),
('QUIMICAS', 17, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO'),
('QUIMICAS', 18, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO'),
('QUIMICAS', 19, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 20, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 21, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizrespuestaspatologicasvigas_nombrepatologia`
--

CREATE TABLE `matrizrespuestaspatologicasvigas_nombrepatologia` (
  `idPatologia` varchar(50) NOT NULL,
  `nombrePatologia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasvigas_nombrepatologia`
--

INSERT INTO `matrizrespuestaspatologicasvigas_nombrepatologia` (`idPatologia`, `nombrePatologia`) VALUES
('accionAguaMar', 'Accion de Agua de Mar'),
('accionFuego', 'Accion del Fuego'),
('accionSismica', 'Accion Sismica'),
('adherenciaAnclaje', 'Adherencia y Anclaje'),
('asentamiento', 'Asentamiento'),
('ataqueBiologico', 'Ataque Biologico'),
('compresionVigas', 'Compresion en Vigas'),
('corrimientoAcerosVigas', 'Corrimiento de Aceros en Vigas'),
('corrosionArmaduras', 'Corrosion de Armaduras'),
('corrosionCarbonatacion', 'Corrosion por Carbonatacion'),
('CortanteVigas', 'Cortante en Vigas'),
('criptoflorescencia', 'Criptoflorescencia'),
('deficienciaposicionamientoArmaduras', 'Deficiencia en Posicionado de Armaduras'),
('desecacionsuperficial', 'Desecacion Superficial'),
('eflorecencia', 'Eflorescencia'),
('flexionCortante', 'Flexion - Cortante ( Vigas)'),
('flexionTorsionVigas', 'Flexion - Torsion en Vigas'),
('flexionVigas', 'Flexion en Vigas'),
('fluenciaElementos', 'Fluencia de Elementos'),
('malaRelacionAguaCemento', 'Mala Relacion Agua/Cemento'),
('malVibradoConcreto', 'Mal Vibrado del Concreto'),
('oquedadesSuperficiales', 'Oquedades Superficiales'),
('reaccionAlcalisAgregado', 'Reaccion Alcalis - Agregado'),
('reaccionCloruros', 'Reaccion con Cloruros'),
('reaccionSulfatos', 'Reaccion con Sulfatos'),
('remocionEnconfrado', 'Remocion de Enconfrado'),
('retraccionHidraulica', 'Retraccion Hidraulica'),
('retraccionHidraulicaTermica', 'Retraccion Hidraulica y Termica'),
('solucionAlcalina', 'Solucion Alcalina'),
('torsionVigas', 'Torsion en Vigas'),
('traccionVigas', 'Traccion en Vigas'),
('variacionHumedad', 'Variacion de Humedad'),
('variacionTermica', 'Variacion Termica (Movimentacion Termica)');

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
  `asentamiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizrespuestaspatologicasvigas_patologia`
--

INSERT INTO `matrizrespuestaspatologicasvigas_patologia` (`nombre`, `numeroPregunta`, `descripcion`, `variacionTermica`, `variacionHumedad`, `retraccionHidraulicaTermica`, `retraccionHidraulica`, `desecacionSuperficial`, `accionFuego`, `reaccionSulfatos`, `reaccionCloruros`, `corrosionCarbonatacion`, `deficienciaposicionamientoArmaduras`, `adherenciaAnclaje`, `accionAguaMar`, `oquedadesSuperficiales`, `reaccionAlcalisAgregado`, `fluenciaElementos`, `remocionEnconfrado`, `malaRelacionAguaCemento`, `malVibradoConcreto`, `corrosionArmaduras`, `ataqueBiologico`, `solucionAlcalina`, `flexionCortante`, `flexionVigas`, `torsionVigas`, `CortanteVigas`, `flexionTorsionVigas`, `traccionVigas`, `compresionVigas`, `corrimientoAcerosVigas`, `criptoflorescencia`, `eflorecencia`, `accionSismica`, `asentamiento`) VALUES
('FISICAS', 1, 'Deformaciones en el Elemento', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI'),
('FISICAS', 2, 'Perdida de recubrimiento', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('FISICAS', 3, 'Aumento de Volumen / Perdida de Seccion', 'NO', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'NO', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'PERDIDA DE SECCION', 'PERDIDA DE SECCION', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'AUMENTO DE VOLUMEN', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'AUMENTO DE VOLUMEN', 'AUMENTO DE VOLUMEN', 'PERDIDA DE SECCION', 'NO'),
('FISICAS', 4, 'Variaciones de Volumen antes de la Patologia', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 5, 'Armaduras expuestas', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 6, 'Evidencia de Lixiviacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('FISICAS', 7, 'Desagregacion de los Aridos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 8, 'Aplastamiento en el Elemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 9, 'Formacion de Grandes Fallos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 10, 'Picaduras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 11, 'Spalling', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISICAS', 12, 'Deformacion de Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'SI', 'NO'),
('FISICAS', 13, 'Perdida de Seccion de las Barras de Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISICAS', 14, 'Desgaste Superficial', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 1, 'Fisuras Activas / Pasivas', 'ACTIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'ACTIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'NO', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'PASIVAS', 'ACTIVAS', 'ACTIVAS'),
('FISURAS', 2, 'Fisuras en Mapeo', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, SIN ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI, CON ENTRECRUZAMIENTO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 3, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 4, 'Fisuras Aleatorias', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 5, 'Fisuras entre 45°-75°', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI'),
('FISURAS', 6, 'Durante Primeras Horas', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'DURANTE PRIMERAS HORAS', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 7, 'Tramo central / Tramo Mayor Momento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 8, 'Inclinaciones Distintas en cada Cara', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 9, 'Paralelas al Acero Longitudinal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'SI (CUALQUIERA)', 'SI, CONTINUAS', 'NO', 'NO', 'NO', 'SI (CUALQUIERA)', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI (CONTINUAS)', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI (CONTINUAS)', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 10, 'Paralelas al Acero Transversal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 11, 'Con rotura de Elementos Adosados', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI'),
('FISURAS', 12, 'Restringe Dilatacion de Elementos', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 13, 'Micro-Fisuras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 14, 'Con Desprendimiento de Recubrimiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('FISURAS', 15, 'Direccion de Fisuras', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE', 'HORIZONTALMENTE / VERTICALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'NO', 'CUALQUIERA', 'HORIZONTALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'HORIZONTALMENTE', 'HORIZONTALMENTE', 'NO', 'CUALQUIERA', 'HORIZONTALMENTE', 'VERTICALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'DIAGONALMENTE', 'VERTICALMENTE', 'HORIZONTALMENTE', 'HORIZONTALMENTE', 'CUALQUIERA', 'CUALQUIERA', 'CUALQUIERA', 'DIAGONALMENTE'),
('FISURAS', 16, 'Perpendiculares al Acero Principal', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 17, 'Fisuras Tipo Resorte', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 18, 'Fisuras de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 19, 'Viga de Borde / Cantiléver', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 20, 'Fisuras en Elementos Restringentes', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI'),
('FISURAS', 21, 'Vertical hacia la L.N', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 22, 'Proximas a la cara del Apoyo / Confinamiento', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO'),
('FISURAS', 23, 'Con expansion de Volumen', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('FISURAS', 24, 'En la zona de Compresion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 25, 'En la zona de Traccion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 26, 'En todas las Caras', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('FISURAS', 27, 'Superficiales / Profundas', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIAL', 'SUPERFICIALES', 'SUPERFICIALES', 'NO', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'PROFUNDA', 'SUPERFICIAL', 'SUPERFICIAL', 'SUPERFICIAL', 'PROFUNDA', 'PROFUNDA'),
('QUIMICAS', 1, 'Exudacion del Cemento', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 2, 'Aridos en Superficie', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 3, 'Manchas de Oxido', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 4, 'Productos de Corrosion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 5, 'Aumento de Humedad y Conductividad', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 6, 'Presencia de Gel', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 7, 'Manchas de Coloracion Blanca', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('QUIMICAS', 8, 'Lixiviacion Blanca ( Estalactitas)', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('QUIMICAS', 9, 'Expulsion / Desintegracion de pasta de Cemento', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 10, 'Coloracion Rosacea, Amarillenta, etc.', 'NO', 'NO', 'NO', 'NO', 'NO', 'CUALQUIERA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'MUY OSCURA', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 11, 'Aumento de Porosidad', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('QUIMICAS', 12, 'Presencia de Medios para transportar Agentes (Fisuras, Oquedades, etc.)', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO'),
('QUIMICAS', 13, 'Cambios de Humedad constantes', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 14, 'Alto % de Humedad prolongado', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 15, 'Manchas de Carbonatacion', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 16, 'Disminucion de Dureza / Resistencia', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'SI', 'NO', 'SI', 'NO', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO'),
('QUIMICAS', 17, 'Reduccion de Ph ( <8)', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO', 'SI', 'SI', 'SI', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'NO', 'NO'),
('QUIMICAS', 18, 'Presencia de Iones Cloruro', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 19, 'Perdida de Cohesion entre Cemento y Agregados /Acero', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 20, 'Presencia de Sulfatos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO'),
('QUIMICAS', 21, 'Presencia de Microorganismos', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizsintomas`
--

CREATE TABLE `matrizsintomas` (
  `patologia` varchar(100) NOT NULL,
  `sintoma` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizsintomas`
--

INSERT INTO `matrizsintomas` (`patologia`, `sintoma`) VALUES
('Abrasion', 'Desagregación del árido y de la pasta de cemento'),
('Abrasion', 'Exposición de la armadura'),
('Abrasion', 'Formación de grandes fallos'),
('Accion de Agua de Mar', 'Corrosión de la armadura inducida por cloruros'),
('Accion de Agua de Mar', 'Expansión, fisuración y desagregación debido a la acción de los sulfatos'),
('Accion de Agua de Mar', 'Impactos provocan erosión y abrasión superficial del hormigón'),
('Accion de Agua de Mar', 'Lixiviación y corrosión de la armadura debido a la acción de los cloruros'),
('Accion del Fuego', 'Deformación del acero'),
('Accion del Fuego', 'Deformación del hormigón'),
('Accion del Fuego', 'Fisuración superficial'),
('Accion del Fuego', 'Lascamiento del recubrimiento'),
('Accion Sismica', 'Daños en elementos no estructurales: instalaciones, elementos de cierre y de division, etc.'),
('Accion Sismica', 'Fisuras en centros de tramos de elementos, y conexión Nodo - Columna'),
('Accion Sismica', 'Fisuras Verticales en Vigas en la proximidad de los nodos'),
('Accion Sismica', 'Superacion de la ductilidad'),
('Adherencia y Anclaje', 'Carbonatación'),
('Adherencia y Anclaje', 'Corrosión de las armaduras'),
('Adherencia y Anclaje', 'Fisuración ( Paralelas a la direccion del Acero, continuas)'),
('Adherencia y Anclaje', 'Transporte de agentes agresivos'),
('Asentamiento', 'Cuadro de fisuras no deseado e incluso la rotura de algún elemento ya sea estructural o de cerramiento'),
('Asentamiento', 'Las fisuras se presentan Perpendiculares al Esfuerzo de Traccion ( Este esfuerzo en la diagonal que se alarga, a 45°)'),
('Ataque Biologico', 'Corrosión de la armadura'),
('Ataque Biologico', 'Desagregación del hormigón'),
('Ataque Biologico', 'Desprendimiento del hormigón'),
('Ataque Biologico', 'Disolución del Ca(OH)2 y de los silicatos hidratados - Lixiviación-'),
('Ataque de Aguas Puras', 'Aumento de la porosidad'),
('Ataque de Aguas Puras', 'Disminución de la alcalinidad del hormigón y corrosión de la armadura'),
('Ataque de Aguas Puras', 'Disminución de la resistencia'),
('Ataque de Aguas Puras', 'Exposición de los áridos en la superficie del hormigón'),
('Ataque de Solucion Alcalina', 'Exposición de los áridos'),
('Ataque de Solucion Alcalina', 'Fisuración superficial'),
('Ataque de Solucion Alcalina', 'Lixiviación de la pasta'),
('Ataque de Solucion Alcalina', 'Pérdida de la adherencia entre la pasta de cemento y las partículas de agregado'),
('Ataque de Soluciones Acidas', ' Aumento de la porosidad del hormigón'),
('Ataque de Soluciones Acidas', ' Desagregación de los áridos calcáreos o dolomíticos'),
('Ataque de Soluciones Acidas', ' Disminución del pH del hormigón y corrosión de la armadura'),
('Ataque de Soluciones Acidas', 'Remoción de la pasta de cemento y exposición de los áridos'),
('Compresion en Losas', 'Deformaciónes del elemento'),
('Compresion en Losas', 'Fisuras en la zona de compresión'),
('Compresion en Losas', 'Fisuras paralelas al acero longitudinal'),
('Compresion en Losas', 'Fisuras profundas, pasivas'),
('Compresion en Muros', 'Colapso de la estructura  en Muros / Mampostería'),
('Compresion en Muros', 'Corrosión de las armaduras  en Muro '),
('Compresion en Muros', 'Fisuración en Muro ( Paralelas a la direccion del esfuerzo, irregulares)'),
('Compresion en Muros', 'Transporte de agentes agresivos  en Muro / Mampostería'),
('Compresion en Vigas', 'Se presentan fisuras en la zona de compresión por aplastamiento delhormigón, aunque tienen apariencias inofensivas, son muy peligrosas.'),
('Corrimiento de Aceros en Vigas', 'Aparición de fisuras cerca del apoyo a causa de un agarre insuficiente de los cercos al tener una longitud de anclaje pequeña.'),
('Corrosion de Armaduras', '1- Fisuras en el hormigón paralelas a la dirección de los refuerzos.'),
('Corrosion de Armaduras', '2-Delaminación y/o desprendimientos del recubrimiento.'),
('Corrosion de Armaduras', '3-En elementos de elevado contenido de humedad, manchas de óxido en la superficie del hormigón.'),
('Corrosion por Carbonatacion', 'Aumento de la espesura de la frente de carbonatación'),
('Corrosion por Carbonatacion', 'Despasivación de la armadura'),
('Corrosion por Carbonatacion', 'Desplacamiento del recubrimiento'),
('Corrosion por Carbonatacion', 'Fisuración en Direccion de la armadura principal del hormigón'),
('Corrosion por Carbonatacion', 'Reducción del pH del hormigón'),
('Cortante en Losas', ' • La fisura o grieta toma una inclinación comprendida entre 45° y 75°, dirigiéndose al apoyo y seccionando la losa en su cara lateral y en la inferior. La mayor abertura estará en la zona de tracción.'),
('Cortante en Losas', 'Las fisuras originadas dependerán de la cuantía de acero longitudinal, la cantidad del mismo que llegue al apoyo y del número de cercos, espaciamiento y forma de elaboración.'),
('Cortante en Muros', 'La fisura o grieta toma una inclinación comprendida entre 45° y 75°, '),
('Cortante en Vigas', ' • La fisura o grieta toma una inclinación comprendida entre 45° y 75°, dirigiéndose al apoyo y seccionando la viga en su cara lateral y en la inferior. La mayor abertura estará en la zona de tracción.'),
('Cortante en Vigas', 'Las fisuras originadas dependerán de la cuantía de acero longitudinal, la cantidad del mismo que llegue al apoyo y del número de cercos, espaciamiento y forma de elaboración.'),
('Criptoflorescencia', 'A diferencia de la Eflorescencia, la formacion de los productos Carbonatos y sales se genera internamente. No se observa la Eflorescencia hasta descubrir la zona interna afectada'),
('Criptoflorescencia', 'Corrosión de la armadura'),
('Criptoflorescencia', 'Disminución del pH del hormigón'),
('Criptoflorescencia', 'Formación de estalactitas - lixiviación - en las zonas de mayor porosidad'),
('Deficiencia en Posicionado de Armaduras', 'Ausencia de recubrimiento o pequeño recubrimiento'),
('Deficiencia en Posicionado de Armaduras', 'Carbonatación'),
('Deficiencia en Posicionado de Armaduras', 'Corrosión'),
('Deficiencia en Posicionado de Armaduras', 'Desprendimiento del recubrimiento'),
('Deficiencia en Posicionado de Armaduras', 'Fisuración paralela a las armaduras'),
('Desecacion Superficial', 'En caso de pisos de industriales, ocurrencia de pérdida de recubrimiento y consecuente disminución del camino de los agentes agresivos a las armaduras: Aumento de la porosidad, transporte de agentes agresivos, corrosión de las armaduras, colapso de l'),
('Desecacion Superficial', 'Fisuras superficiales y pasivas;'),
('Desecacion Superficial', 'No ocurrencia de problemas estructurales;'),
('Eflorescencia', 'Corrosión de la armadura'),
('Eflorescencia', 'Disminución del pH del hormigón'),
('Eflorescencia', 'Formación de estalactitas - lixiviación - en las zonas de mayor porosidad'),
('Eflorescencia', 'Formación de manchas blancas – eflorescencias - por acúmulo de carbonatos en la superficie del hormigón'),
('Erosion', 'Aparecimiento de grandes fallos'),
('Erosion', 'Desagregación del árido y de la pasta de cemento'),
('Erosion', 'Desgaste superficial del hormigón'),
('Erosion', 'Exposición de la armadura'),
('Fallo por Compresion (Columna)', 'Corrosión de las armaduras  en Columna'),
('Fallo por Compresion (Columna)', 'Fisuración en Columnas ( Paralelas a la direccion del esfuerzo, irregulares)'),
('Fallo por Compresion (Columna)', 'Transporte de agentes agresivos  en Columna'),
('Fallo por Cortante (Columna)', 'La fisura o grieta toma una inclinación comprendida entre 45° y 75°, '),
('Fallo por Cortante (Columna)', 'Las fisuras originadas dependerán de la cuantía de acero longitudinal, la cantidad del mismo que llegue al apoyo y del número de cercos, espaciamiento y forma de elaboración.'),
('Fallo por Flexion - Torsion (Columna)', 'Fallo muy grave, la rotura puede ser rápida.'),
('Fallo por Flexion - Torsion (Columna)', 'Las fisuras toman distintas inclinaciones en cada cara de la columna, se  presentan en elementos que se sometan a fuertes momentos flectores y torsores.'),
('Fallo por Flexion en Columnas', 'No afectan a toda la altura de la pieza, sino que llegan aproximadamente hasta el eje neutro.'),
('Fallo por Torsion (Columna)', 'Carbonatación'),
('Fallo por Torsion (Columna)', 'Corrosión de las armaduras'),
('Fallo por Torsion (Columna)', 'Fisuración (45° de inclinacion en todas las caras del elemento)'),
('Fallo por Torsion (Columna)', 'Transporte de agentes agresivos'),
('Fallo por Traccion (Columna)', 'Numerosas e importantes fisuras, de configuración perpendicular a las barras de acero principales'),
('Flexion - Cortante ( Vigas)', 'Carbonatación en Viga'),
('Flexion - Cortante ( Vigas)', 'Corrosión de las armaduras en Viga'),
('Flexion - Cortante ( Vigas)', 'Fisuración en Viga ( En la armadura sometida a Traccion, progresando verticalmente hacia la linea neutra del elemento, desapareciendo a medida que se aproximan)'),
('Flexion - Cortante ( Vigas)', 'Transporte de agentes agresivos en Viga'),
('Flexion - Torsion en Vigas', 'Fallo muy grave, la rotura puede ser rápida.'),
('Flexion - Torsion en Vigas', 'Las fisuras toman distintas inclinaciones en cada cara de la viga, se  presentan en elementos que pueden ser vigas de borde, vigas en voladizo que se sometan a fuertes momentos flectores y torsores.'),
('Flexion en Losas', 'Carbonatación en Losa'),
('Flexion en Losas', 'Corrosión de las armaduras en Losa'),
('Flexion en Losas', 'Fisuración en Losa ( En el centro de la luz del elemento, progresando hacia la linea neutra y desapareciendo a medida que se aproxima)'),
('Flexion en Losas', 'Transporte de agentes agresivos en Losa'),
('Flexion en Muros', ' • Fisuras Diagonales o de otra forma'),
('Flexion en Muros', 'Las fisuras originadas dependerán de la cuantía de acero longitudinal, la cantidad del mismo que llegue al apoyo y del número de cercos, espaciamiento y forma de elaboración.'),
('Flexion en Vigas', 'No afectan a toda la altura de la pieza, sino que llegan aproximadamente hasta el eje neutro.'),
('Fluencia de Elementos', 'En ciertos casos la fisuración de las vigas y/o las losas así como roturas en los cerramientos adosados'),
('Fluencia de Elementos', 'Esto origina deformaciones elásticas y diferidas marcadamente distintas en ambos elementos estructurales'),
('Fluencia de Elementos', 'Se presenten daños en edificios de altura, al cabo de un cierto tiempo se produce la rotura de los tabiques de ladrillo.'),
('Impactos', 'Corrosión de armaduras'),
('Impactos', 'En caso de explosiones, fisuraciones paralelas a la armadura transversal en direccion del punto de detonacion'),
('Impactos', 'Exposición de la armadura'),
('Impactos', 'Pérdida de sección del hormigón'),
('Mal Vibrado del Concreto', 'Corrosión de las armaduras'),
('Mal Vibrado del Concreto', 'Deformaciones plásticas de la cabeza de la columna.'),
('Mal Vibrado del Concreto', 'Se puede producir el aplastamiento de la cabeza de la columna al no tener el hormigón la resistencia adecuada.'),
('Mala Relacion Agua/Cemento', 'Corrosión de las armaduras'),
('Mala Relacion Agua/Cemento', 'Deformaciones plásticas de la cabeza de la columna.'),
('Mala Relacion Agua/Cemento', 'Se puede producir el aplastamiento de la cabeza de la columna al no tener el hormigón la resistencia adecuada.'),
('Oquedades Superficiales', 'Áridos gruesos sin cohesión y aparentes'),
('Oquedades Superficiales', 'Armaduras aparentes'),
('Oquedades Superficiales', 'Disminución de la resistencia del hormigón'),
('Oquedades Superficiales', 'Hormigón poroso'),
('Reaccion Alcalis - Agregado', 'Aparecimiento de fisuras en la superficie del hormigón en la forma de redes'),
('Reaccion Alcalis - Agregado', 'Aumento de las micro-fisuras por el acumulo del gel'),
('Reaccion Alcalis - Agregado', 'Aumento de volumen de los elementos de hormigón'),
('Reaccion Alcalis - Agregado', 'Movimentación del gel de sílice del árido para las regiones microfisuradas'),
('Reaccion con Cloruros', 'Aumento de la humedad interna y de la conductividad eléctrica del hormigón'),
('Reaccion con Cloruros', 'Desprendimiento irregular del recubrimiento'),
('Reaccion con Cloruros', 'Fisuración en Direccion de la armadura principal del hormigón'),
('Reaccion con Cloruros', 'Formación de productos de corrosión'),
('Reaccion con Cloruros', 'Producción de tensiones internas'),
('Reaccion con Sulfatos', 'Exfoliación superficial'),
('Reaccion con Sulfatos', 'Fisuras aleatorias en la superficie'),
('Reaccion con Sulfatos', 'Reducción del pH del extracto acuoso de los poros superficiales'),
('Reaccion con Sulfatos', 'Reducción significativa de la dureza y de la resistencia superficial'),
('Remocion de Enconfrado', 'generan deformaciones iniciales y/o fisuración de la estructura.'),
('Remocion de Enconfrado', 'puede originar sobretensiones, fisuración y aún el colapso de la estructura.'),
('Retraccion Hidraulica', 'Corrosión de armaduras'),
('Retraccion Hidraulica', 'Fisuras que surgen durante las primeras horas, después del hormigonado, producto de la perdida de su agua por evaporación. Esta disminución de volumen se produce en el hormigón aun en estado plástico, sin que haya finalizado el proceso de fraguado.'),
('Retraccion Hidraulica y Termica', 'Aumento de la porosidad'),
('Retraccion Hidraulica y Termica', 'Carbonatación,'),
('Retraccion Hidraulica y Termica', 'Colapso de la estructura'),
('Retraccion Hidraulica y Termica', 'Corrosión de las armaduras'),
('Torsion en Vigas', 'Carbonatación'),
('Torsion en Vigas', 'Corrosión de las armaduras'),
('Torsion en Vigas', 'Fisuración en Viga ( 45° de inclinacion en todas las caras del elemento)'),
('Torsion en Vigas', 'Transporte de agentes agresivos'),
('Traccion en Losas', 'Numerosas e importantes fisuras, de configuración perpendicular a las barras de acero principales'),
('Traccion en Muros', 'Numerosas e importantes fisuras, de configuración perpendicular a las barras de acero principales'),
('Traccion en Vigas', 'Numerosas e importantes fisuras, de configuración perpendicular a las barras de acero principales'),
('Variacion de Humedad', 'El hormigón se “hincha” cuando se humedece y se contrae a medida que se seca.'),
('Variacion de Humedad', 'Movimentación de las fisuras'),
('Variacion de Humedad', '“Mapeo” o “cuarteado” de superficies hormigonadas, en las que el ancho de fisuras es muy pequeño pero abarcan prácticamente toda la superficie.'),
('Variacion Termica (Movimentacion Termica)', 'Carbonatación, deterioro del hormigón'),
('Variacion Termica (Movimentacion Termica)', 'Colapso parcial o total de la estructura'),
('Variacion Termica (Movimentacion Termica)', 'Corrosión de armaduras '),
('Variacion Termica (Movimentacion Termica)', 'Fisuración de los elementos que restringen el aumento de la dilatación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrizterapias`
--

CREATE TABLE `matrizterapias` (
  `patologia` varchar(100) NOT NULL,
  `terapia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `matrizterapias`
--

INSERT INTO `matrizterapias` (`patologia`, `terapia`) VALUES
('Abrasion', 'Endurecimiento superficial:  silicatización u ocratización'),
('Abrasion', 'Remoción del hormigón desagregado'),
('Abrasion', 'Reparo superficial localizado y/o superficial generalizado para reconstitución de la sección perdida'),
('Accion de Agua de Mar', 'Aplicación de procedimientos electroquímicos'),
('Accion de Agua de Mar', 'Protección superficial del hormigón'),
('Accion de Agua de Mar', 'Remoción del hormigón desagregado y con tenor de cloruros > 0,4% en relación a la masa de cemento'),
('Accion de Agua de Mar', 'Reparación profunda localizada'),
('Accion de Agua de Mar', 'Reparación superficial generalizada'),
('Accion de Agua de Mar', 'Reparación superficial localizada'),
('Accion de Agua de Mar', 'Restauración del monolitismo de la pieza'),
('Accion del Fuego', 'Apuntalamiento emergencial'),
('Accion del Fuego', 'Recuperación del monolitismo de vigas columnas y losas con inyección de epoxi'),
('Accion del Fuego', 'Refuerzo con  adición de armadura y  hormigón proyectado'),
('Accion del Fuego', 'Refuerzo con chapas metálicas o perfiles metálicos'),
('Accion del Fuego', 'Refuerzo con grout o micro-concreto fluido'),
('Accion del Fuego', 'Refuerzo con mortero o micro-concreto proyectado'),
('Accion del Fuego', 'Reparo con grout o micro-concreto fluido'),
('Accion del Fuego', 'Reparo con mortero tixotrópico en forma manual'),
('Accion Sismica', 'Analisis Estructural del Elemento / estructura en estado de Post-Sismo'),
('Accion Sismica', 'Apuntalamiento de Elementos y zonas severamente afectadas'),
('Accion Sismica', 'En caso de colapso, estudio de las piezas remanentes para evaluar deficiencias de diseño o mecanismos de falla'),
('Accion Sismica', 'En casos severos: Deshabilitar o demolar la Estructura afectada'),
('Acciones Biologicas', 'Descontaminación de los microrganismos'),
('Acciones Biologicas', 'Protección superficial'),
('Acciones Biologicas', 'Reparación superficial generalizada'),
('Adherencia y Anclaje', 'Eliminación de la sobrecarga'),
('Adherencia y Anclaje', 'Refuerzo con chapas coladas'),
('Adherencia y Anclaje', 'Refuerzo con hormigón convencional y aumento de la sección'),
('Adherencia y Anclaje', 'Refuerzo con hormigón proyectado y aumento de sección'),
('Asentamiento', 'Adosar sistema de fundaciones con micropilotes '),
('Asentamiento', 'Colocacion de Muros de contencion para empujes laterales'),
('Asentamiento', 'Eliminar fuentes de agua que causen perdida de Friccion del Suelo o Expansividad del Mismo '),
('Asentamiento', 'Estabilizar el Suelo de fundacion con Inyecciones '),
('Asentamiento', 'Inyeccion de lechada de Hormigon para mejorar capacidad del Suelo'),
('Ataque de Aguas Puras', 'Escarificación mecánica del hormigón desagregado'),
('Ataque de Aguas Puras', 'Protección superficial del hormigón'),
('Ataque de Aguas Puras', 'Reparación profunda localizada y/o profunda generalizada'),
('Ataque de Aguas Puras', 'Reparación superficial localizada y/o superficial generalizada'),
('Ataque de Cloruros', 'Extracción electroquímica de cloruros'),
('Ataque de Cloruros', 'Protección catódica materiales y sistemas'),
('Ataque de Cloruros', 'Protección superficial del hormigón'),
('Ataque de Cloruros', 'Refuerzo'),
('Ataque de Cloruros', 'Reparación profunda localizada y/o profunda generalizada'),
('Ataque de Cloruros', 'Reparación superficial localizada y/o superficial generalizada'),
('Ataque de Soluciones Acidas', 'Escarificación mecánica para remoción del hormigón desagregado'),
('Ataque de Soluciones Acidas', 'Protección superficial del hormigón'),
('Ataque de Soluciones Acidas', 'Reparación profunda localizada y/o profunda generalizada'),
('Ataque de Soluciones Acidas', 'Reparación superficial localizada y/o superficial generalizada'),
('Ataque de Soluciones Alcalinas', 'Escarificación mecánica para remoción del hormigón desagregado'),
('Ataque de Soluciones Alcalinas', 'Protección superficial del hormigón'),
('Ataque de Soluciones Alcalinas', 'Reparación profunda localizada'),
('Ataque de Soluciones Alcalinas', 'Reparación superficial generalizada'),
('Ataque de Soluciones Alcalinas', 'Reparación superficial localizada'),
('Ataque de Sulfatos', 'Protección superficial del hormigón'),
('Ataque de Sulfatos', 'Remoción del hormigón con tenor de sulfatos > 5%'),
('Ataque de Sulfatos', 'Reparación profunda localizada y/o profunda generalizada'),
('Ataque de Sulfatos', 'Reparación superficial localizada y/o superficial generalizada'),
('Carbonatacion', 'Protección superficial del hormigón'),
('Carbonatacion', 'Realcalinización del hormigón'),
('Carbonatacion', 'Refuerzo con armadura extra o por sustitución'),
('Carbonatacion', 'Remoción del hormigón carbonatado'),
('Carbonatacion', 'Reparación superficial generalizada'),
('Compresion en Losas', 'Eliminación de la sobrecarga'),
('Compresion en Losas', 'Refuerzo con chapas coladas'),
('Compresion en Losas', 'Refuerzo con hormigón convencional y aumento de la sección'),
('Compresion en Losas', 'Refuerzo con hormigón proyectado y aumento de sección'),
('Compresion en Muros', 'Eliminación de la sobrecarga'),
('Compresion en Muros', 'Refuerzo con chapas coladas'),
('Compresion en Muros', 'Refuerzo con hormigón convencional y aumento de la sección'),
('Compresion en Muros', 'Refuerzo con hormigón proyectado y aumento de sección'),
('Compresion en Vigas', 'Eliminación de la sobrecarga'),
('Compresion en Vigas', 'Refuerzo con chapas coladas'),
('Compresion en Vigas', 'Refuerzo con hormigón convencional y aumento de la sección'),
('Compresion en Vigas', 'Refuerzo con hormigón proyectado y aumento de sección'),
('Corrimiento de Aceros en Vigas', 'Eventualmente, demoler y reconstruir.'),
('Corrimiento de Aceros en Vigas', 'Limpieza de la armadura'),
('Corrimiento de Aceros en Vigas', 'Protección superficial'),
('Corrimiento de Aceros en Vigas', 'Reforzar la viga aumentando su rigidez.'),
('Corrimiento de Aceros en Vigas', 'Remoción del hormigón desagregado'),
('Corrimiento de Aceros en Vigas', 'Reparación profunda localizada'),
('Corrimiento de Aceros en Vigas', 'Reparación superficial localizada'),
('Corrosion de Armaduras', 'Analisis y remocion de Hormigon contaminado'),
('Corrosion de Armaduras', 'En caso de corrosion No severa, limpieza de las barras y formar recubrimiento con Epoxi para proteger Barras en ambiente agresivo'),
('Corrosion de Armaduras', 'En casos severos, reforzamiento estructural del elemento y remocion de barras'),
('Corrosion de Armaduras', 'En casos severos, sustitucion de barras de acero'),
('Corrosion de Armaduras', 'Exposicion de las Armaduras afectadas para evaluar nivel de daños'),
('Corrosion de Armaduras', 'Remocion de productos de corrosion para determinar la seccion transversal remanente de las barras'),
('Cortante en Losas', '- Apuntalar el elemento para poder realizar la rehabilitación.'),
('Cortante en Losas', '- Reforzar vigas por cortante'),
('Cortante en Losas', 'Analizando adecuadamente el elemento estructural podrá ser necesario:'),
('Cortante en Muros', '- Apuntalar el elemento para poder realizar la rehabilitación.'),
('Cortante en Muros', '- Reforzar vigas por cortante'),
('Cortante en Muros', 'Analizando adecuadamente el elemento estructural podrá ser necesario:'),
('Cortante en Vigas', 'Analizando adecuadamente el elemento estructural podrá ser necesario:'),
('Cortante en Vigas', 'Apuntalar el elemento para poder realizar la rehabilitación.'),
('Cortante en Vigas', 'Reforzar vigas por cortante'),
('Criptoflorescencia', 'Eliminación de la fuente de agua que penetra en el hormigón'),
('Criptoflorescencia', 'Impermeabilización de la superficie en contacto con la fuente de agua'),
('Criptoflorescencia', 'No intervenir en el caso de autocicatrización de fisuras'),
('Criptoflorescencia', 'Remocion del hormigón hasta la zona con presencia del Compuesto'),
('Criptoflorescencia', 'Reparación profunda localizado de regiones con corrosión de armaduras'),
('Criptoflorescencia', 'Sellado superficial de fisuras'),
('Deficiencia en Posicionado de Armaduras', 'Eventualmente, demoler y reconstruir.'),
('Deficiencia en Posicionado de Armaduras', 'Limpieza de la armadura'),
('Deficiencia en Posicionado de Armaduras', 'Protección superficial'),
('Deficiencia en Posicionado de Armaduras', 'Reforzar la viga aumentando su rigidez.'),
('Deficiencia en Posicionado de Armaduras', 'Remoción del hormigón desagregado'),
('Deficiencia en Posicionado de Armaduras', 'Reparación profunda localizada'),
('Deficiencia en Posicionado de Armaduras', 'Reparación superficial localizada'),
('Desecacion Superficial', 'Efectuar protección térmica conveniente'),
('Desecacion Superficial', 'Eliminar con cuidado el hormigón comprometido, limpiando la superficie'),
('Desecacion Superficial', 'Reparo superficial generalizado con mortero polimérico de base cemento; mortero de base epoxi'),
('Desecacion Superficial', 'Técnicas de inyección de sellantes, base epoxi o cementicia.'),
('Eflorescencias', 'Eliminación de la fuente de agua que penetra en el hormigón'),
('Eflorescencias', 'Impermeabilización de la superficie en contacto con la fuente de agua'),
('Eflorescencias', 'Limpieza superficial del hormigón'),
('Eflorescencias', 'No intervenir en el caso de autocicatrización de fisuras'),
('Eflorescencias', 'Reparación profunda localizado de regiones con corrosión de armaduras'),
('Eflorescencias', 'Sellado superficial de fisuras'),
('Erosion', 'Protección superficial'),
('Erosion', 'Remoción del hormigón desagregado'),
('Erosion', 'Reparación profunda localizada'),
('Erosion', 'Reparación superficial generalizada'),
('Fallas Constructivas - Oquedades Superficiales', 'Eliminación del hormigón segregado hasta llegar al hormigón sano'),
('Fallas Constructivas - Oquedades Superficiales', 'Limpiar bién las superficies.'),
('Fallas Constructivas - Oquedades Superficiales', 'Reparacion profunda localizada con mortero de base cemento u hormigón.'),
('Fallas Constructivas - Oquedades Superficiales', 'Reparacion superficial localizada con mortero polimerico , o de base epoxica u otros.'),
('Fallas Constructivas - Oquedades Superficiales', 'Revestimiento de protección'),
('Fallo por Compresion (Columnas)', 'Eliminación de la sobrecarga'),
('Fallo por Compresion (Columnas)', 'Refuerzo con chapas coladas'),
('Fallo por Compresion (Columnas)', 'Refuerzo con hormigón convencional y aumento de la sección'),
('Fallo por Compresion (Columnas)', 'Refuerzo con hormigón proyectado y aumento de sección'),
('Fallo por Cortante ( Columnas)', '- Apuntalar el elemento para poder realizar la rehabilitación.'),
('Fallo por Cortante ( Columnas)', '- Reforzar vigas por cortante'),
('Fallo por Cortante ( Columnas)', 'Analizando adecuadamente el elemento estructural podrá ser necesario:'),
('Fallo por Flexion (Columnas)', 'Analisis Estructural del Elemento en el estado afectado'),
('Fallo por Flexion (Columnas)', 'Apuntalamiento para proceder con reforzamiento'),
('Fallo por Flexion (Columnas)', 'Eliminar Sobrecargas'),
('Fallo por Flexion (Columnas)', 'En casos severos: Demolicion del Elemento'),
('Fallo por Flexion (Columnas)', 'Reforzamiento con Planchas o Elementos de Acero '),
('Fallo por Flexion (Columnas)', 'Remocion del Hormigon afectado y re colocacion de Hormigon'),
('Fallo por Flexion - Torsion (Columnas)', 'Apuntalar el elemento para poder realizar la rehabilitación.'),
('Fallo por Flexion - Torsion (Columnas)', 'Eventualmente, demoler y reconstruir.'),
('Fallo por Flexion - Torsion (Columnas)', 'Reforzar por flexión y torsión'),
('Fallo por Torsion (Columnas)', 'Eliminación de la sobrecarga'),
('Fallo por Torsion (Columnas)', 'Refuerzo con chapas coladas'),
('Fallo por Torsion (Columnas)', 'Refuerzo con hormigón convencional y aumento de la sección'),
('Fallo por Torsion (Columnas)', 'Refuerzo con hormigón proyectado y aumento de la sección'),
('Fallo por Traccion (Columnas)', 'Analisis Estructural de Elemento'),
('Fallo por Traccion (Columnas)', 'Apuntalamiento y Reparacion Profunda'),
('Fallo por Traccion (Columnas)', 'Casos Severos: Demolicion del Elemento'),
('Fallo por Traccion (Columnas)', 'Eliminar Sobre-cargas y disipar el esfuerzo de Traccion'),
('Fallo por Traccion (Columnas)', 'Evaluar Daño en el Hormigon'),
('Fallo por Traccion (Columnas)', 'Reforzamientoc on Hormigon Proyectado para aumentar Seccion'),
('Flexion - Cortante (Vigas)', '- con chapas coladas'),
('Flexion - Cortante (Vigas)', '- con hormigón convencional y aumento de la sección'),
('Flexion - Cortante (Vigas)', '- con hormigón proyectado y aumento de sección'),
('Flexion - Cortante (Vigas)', 'Eliminación de la sobrecarga'),
('Flexion - Cortante (Vigas)', 'Refuerzo'),
('Flexion - Torsion en Vigas', 'Apuntalar el elemento para poder realizar la rehabilitación.'),
('Flexion - Torsion en Vigas', 'Eventualmente, demoler y reconstruir.'),
('Flexion - Torsion en Vigas', 'Reforzar por flexión y torsión'),
('Flexion en Losas', 'Analisis Estructural del Elemento en el estado afectado'),
('Flexion en Losas', 'Apuntalamiento para proceder con reforzamiento'),
('Flexion en Losas', 'Eliminar Sobrecargas'),
('Flexion en Losas', 'En casos severos: Demolicion del Elemento'),
('Flexion en Losas', 'Reforzamiento con Planchas o Elementos de Acero '),
('Flexion en Losas', 'Remocion del Hormigon afectado y re colocacion de Hormigon'),
('Flexion en Muros', 'Analisis Estructural del Elemento en el estado afectado'),
('Flexion en Muros', 'Apuntalamiento para proceder con reforzamiento'),
('Flexion en Muros', 'Eliminar Sobrecargas'),
('Flexion en Muros', 'En casos severos: Demolicion del Elemento'),
('Flexion en Muros', 'Reforzamiento con Planchas o Elementos de Acero '),
('Flexion en Muros', 'Remocion del Hormigon afectado y re colocacion de Hormigon'),
('Flexion en Vigas', 'Analisis Estructural del Elemento en el estado afectado'),
('Flexion en Vigas', 'Apuntalamiento para proceder con reforzamiento'),
('Flexion en Vigas', 'Eliminar Sobrecargas'),
('Flexion en Vigas', 'En casos severos: Demolicion del Elemento'),
('Flexion en Vigas', 'Reforzamiento con Planchas o Elementos de Acero '),
('Flexion en Vigas', 'Remocion del Hormigon afectado y re colocacion de Hormigon'),
('Fluencia de los Elementos', 'Analisis Estructural en estado actual'),
('Fluencia de los Elementos', 'Apuntalamiento del Elemento para reforzamiento'),
('Fluencia de los Elementos', 'Casos severos: Demolicion del Elemento'),
('Fluencia de los Elementos', 'Eliminar la Carga que se ejerce mientras se procede a la terapia'),
('Fluencia de los Elementos', 'Reforzar con Planchas de Acero en casos de bajo riesgo'),
('Impacto - Explosion', 'Colocación de perfiles “L” en las aristas de las estructuras'),
('Impacto - Explosion', 'Refuerzo'),
('Impacto - Explosion', 'Reparación profunda localizada'),
('Impacto - Explosion', 'Reparación superficial localizada'),
('Mal Vibrado del Concreto', 'Calafetación de fisuras con sellantes elásticos de base uretano o polisulfuros'),
('Mal Vibrado del Concreto', 'Inyección de resina epoxi'),
('Mala Relacion Agua/Cemento', 'Apuntalamiento de la Estructura para Tratamiento'),
('Mala Relacion Agua/Cemento', 'En casos leves, remocion del hormigon con resistencia deficiente'),
('Mala Relacion Agua/Cemento', 'En casos Severos, Demolicion del elemento'),
('Mala Relacion Agua/Cemento', 'Evaluar Resistencia del Hormigon Actual'),
('Mala Relacion Agua/Cemento', 'Reforzamiento del elemento con Hormigon Proyectado ( Aumento de Seccion)'),
('Movimentacion Termica', 'Aislamiento térmico del elemento sujeto a variación térmica'),
('Movimentacion Termica', 'Sellamiento de fisuras'),
('Reaccion Alcalis - Agregado', 'Confinamento de la reacción'),
('Reaccion Alcalis - Agregado', 'Uso de sales de litio'),
('Remocion del Encofrado', 'En casos extremos y necesarios, demolicion del Elemento afectado'),
('Remocion del Encofrado', 'Re apuntalamiento del elemento y reparacion localizada'),
('Remocion del Encofrado', 'Reforzamiento estructural del Elemento'),
('Retracción Hidraulica', 'Analizar la actividad de las fisuras y clasificarlas como vivas o muertas.'),
('Retracción Hidraulica', 'Colocacion de Malla de Retraccion en la nueva capa de Hormigon'),
('Retracción Hidraulica', 'Reparacion Superficial del Hormigon'),
('Retracción Hidraulica Termica', 'Aislamiento térmico del elemento sujeto a variación térmica.'),
('Retracción Hidraulica Termica', 'Efectuar protección térmica conveniente'),
('Retracción Hidraulica Termica', 'Eliminar cuidadosamente el hormigón comprometido, limpiando bien la superficie.'),
('Retracción Hidraulica Termica', 'Sellamiento de fisuras'),
('Retracción Hidraulica Termica', 'Tecnica de inyección'),
('Retracción Hidraulica Termica', 'Técnicas de inyección de sellantes, base epoxi o cementicia.'),
('Torsion en Vigas', 'Eliminación de la sobrecarga'),
('Torsion en Vigas', 'Refuerzo con chapas coladas'),
('Torsion en Vigas', 'Refuerzo con hormigón convencional y aumento de la sección'),
('Torsion en Vigas', 'Refuerzo con hormigón proyectado y aumento de la sección'),
('Traccion en Losas', 'Analisis Estructural de Elemento'),
('Traccion en Losas', 'Apuntalamiento y Reparacion Profunda'),
('Traccion en Losas', 'Casos Severos: Demolicion del Elemento'),
('Traccion en Losas', 'Eliminar Sobre-cargas y disipar el esfuerzo de Traccion'),
('Traccion en Losas', 'Evaluar Daño en el Hormigon'),
('Traccion en Losas', 'Reforzamientoc on Hormigon Proyectado para aumentar Seccion'),
('Traccion en Muros', 'Analisis Estructural de Elemento'),
('Traccion en Muros', 'Apuntalamiento y Reparacion Profunda'),
('Traccion en Muros', 'Casos Severos: Demolicion del Elemento'),
('Traccion en Muros', 'Eliminar Sobre-cargas y disipar el esfuerzo de Traccion'),
('Traccion en Muros', 'Evaluar Daño en el Hormigon'),
('Traccion en Muros', 'Reforzamientoc on Hormigon Proyectado para aumentar Seccion'),
('Traccion en Vigas', 'Analisis Estructural de Elemento'),
('Traccion en Vigas', 'Apuntalamiento y Reparacion Profunda'),
('Traccion en Vigas', 'Casos Severos: Demolicion del Elemento'),
('Traccion en Vigas', 'Eliminar Sobre-cargas y disipar el esfuerzo de Traccion'),
('Traccion en Vigas', 'Evaluar Daño en el Hormigon'),
('Traccion en Vigas', 'Reforzamientoc on Hormigon Proyectado para aumentar Seccion'),
('Variacion Termica (Movimentacion Termica)', 'Aislamiento térmico del elemento fisurado'),
('Variacion Termica (Movimentacion Termica)', 'Protección superficial'),
('Variacion Termica (Movimentacion Termica)', 'Remoción del hormigón desagregado'),
('Variacion Termica (Movimentacion Termica)', 'Reparación profunda localizada'),
('Variacion Termica (Movimentacion Termica)', 'Reparación superficial generalizada'),
('Variacion Termica (Movimentacion Termica)', 'Uso simultáneo de - técnica de inyección de fisuras - proyecto de junta de dilatación con mastiques/ sellantes');

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
  `sugerencia` varchar(300) DEFAULT NULL,
  `cantRespuestas` int(10) NOT NULL,
  `respuestas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntasplanillasetapas`
--

INSERT INTO `preguntasplanillasetapas` (`patologia`, `elemento`, `numeroEtapa`, `numeroPregunta`, `pregunta`, `sugerencia`, `cantRespuestas`, `respuestas`) VALUES
('FISURAS', 'COLUMNAS', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas? ', 'Se recomienda realizar Ensayo con Fisurometro, Medición con Cinta métrica de Fisuras. ', 2, 'ACTIVAS-PASIVAS'),
('FISURAS', 'COLUMNAS', 1, 2, '¿Las fisuras se presentan en forma de “Mapeo” o “Redes”, entrecruzadas entre sí?', 'Realizar inspección Visual.', 3, 'SI, CON  ENTRECRUZAMIENTO-SI, SIN ENTRECRUZAMIENTO-NO'),
('FISURAS', 'COLUMNAS', 1, 3, '¿Las fisuras muestran presencia de Compuestos de tipo “Gel” en ellas?', 'Realizar inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 4, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', 'Realizar inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 5, '¿Las fisuras se inclinan en un ángulo cercano a  45°, con 75° como el máximo?', 'Realizar Ensayo de Fisurómetro, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 6, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', 'Obtener respuesta del historial de la edificación.', 3, 'DURANTE LAS PRIMERAS HORAS-POSTERIORMENTE-TAL VEZ'),
('FISURAS', 'COLUMNAS', 1, 7, '¿Las fisuras se ubican en el tramo Central de la luz del Elemento o en las zonas de mayor momento (nodos, tramo central de la luz del elemento)?', 'Realizar inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 8, '¿Las fisuras toman distintas inclinaciones en cada cara del elemento?', 'Realizar ensayo de Fisurómetro, Medición de Fisuras', 8, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 9, '¿Hay fisuras acompañadas de rotura de Elementos Adosados?', NULL, 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 10, '¿El elemento afectado, restringe la dilatación de algún otro Elemento?', 'Realizar Ensayo de Análisis Térmico ( Termografia)', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 11, '¿Hay presencia solo de Micro-fisuras en el elemento afectado?', 'Realizar Levantamiento grafico de fisuras, medición de fisuras o fisurometro.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 12, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Medición de Recubrimiento, Nivelación de Superficies, Escaneo 3D, Plomo de muros y Columnas.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 13, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento?', 'Ensayos recomendados; ensayo con pachómetro (Ferroscan, Profometro) acompañado de la inspección visual o medición de recubrimiento', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 14, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 4, 'VERTICALMENTE-HORIZONTALMENTE-DIAGONALMENTE-SIN DIRECCION DEFINIDA'),
('FISURAS', 'COLUMNAS', 1, 15, '¿Se evidencia Fisuras consecuentes en las distintas caras del elemento (Fisuras Tipo Resorte)?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 1, 16, '¿Las fisuras se Asemejan a algunas de estas Imágenes?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 6, 'A-B-C-D-E-NINGUNA'),
('FISURAS', 'COLUMNAS', 1, 17, '¿Las fisuras se presentan en todas las Caras del Elemento Afectado?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 2, 1, '¿Las fisuras se presentan paralelas a la Armadura Longitudinal del elemento?', 'Realizar Ensayos de Ferroscan, Profometro, Auscultación Magnética, Gammagrafía.', 3, 'SI, CONTINUAS-SI, NO CONTINUAS-NO'),
('FISURAS', 'COLUMNAS', 2, 2, '¿Las fisuras aparecen cerca de la cara del apoyo o en la zona de confinamiento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 2, 3, '¿Las fisuras aparecen paralelas a la armadura transversal del elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía).', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 2, 4, '¿Hay presencia de fisuras en la zona sometida a compresión del Elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 2, 5, '¿Se evidencia Fisuras perpendiculares a la Armadura Principal del Elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 2, 6, '¿Hay presencia de fisuras en la zona sometida a tracción del elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'COLUMNAS', 2, 7, '¿Las fisuras que observas son solo superficiales o también las acompañan profundas?', 'Realizar Remoción Friso/Recubrimiento, Ultra-sonido, Radiografía  (Auscultación Magnética, Gammagrafía)', 3, 'SUPERFICIAL-SUPERFICIAL y PROFUNDA-PROFUNDA'),
('FISURAS', 'LOSAS', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas?', 'Realizar Ensayo de Fisurómetro, Medición de Actividad con Testigos.', 2, 'ACTIVAS-PASIVAS'),
('FISURAS', 'LOSAS', 1, 2, '¿Las fisuras se presentan en forma de "Mapeo" o "Redes", entrecruzadas entre sí?', 'Realizar inspección Visual.', 3, 'SI, CON  ENTRECRUZAMIENTO-SI, SIN ENTRECRUZAMIENTO-NO'),
('FISURAS', 'LOSAS', 1, 3, '¿Las fisuras muestran presencia de Compuestos de tipo "Gel" en ellas?', 'Realizar inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 4, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', 'Realizar inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 5, '¿Las fisuras se inclinan en un ángulo cercano a  45° respecto al eje longitudinal, con 75° como el máximo?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 6, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', 'Consultar historial de la edificación', 3, 'DURANTE LAS PRIMERAS HORAS-POSTERIORMENTE-NO LO SE'),
('FISURAS', 'LOSAS', 1, 7, '¿Las fisuras se ubican únicamente en las zonas de mayor momento (nodos, tramo central de la luz del elemento)?', 'Determinar por inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 8, '¿Las fisuras toman distintas inclinaciones en cada cara del elemento?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 9, '¿Las fisuras se presentan paralelas a la Armadura Longitudinal del elemento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 10, '¿Las fisuras aparecen paralelas a la armadura transversal del elemento?', 'Realizar ensayo de Ferroscan, Auscultación Magnética, Profometro, Gammagrafía..', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 11, '¿Hay fisuras específicamente acompañadas de rotura de Elementos Adosados?', 'Determinar por inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 12, '¿El elemento afectado, podría restringir a un elemento que se esté dilatando?', 'Realizar Análisis Térmico (Termografia)', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 13, '¿Hay presencia solo de Micro-fisuras en el elemento afectado?', 'Realizar medición de fisuras, levantamiento gráfico de síntomas, inspección visual.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 14, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento cercano a éstas?', 'Determinar por inspección Visual,  Ensayo con Pachómetro (Ferroscan, Profometro)', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 1, 15, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras.', 4, 'VERTICALMENTE-HORIZONTALMENTE-DIAGONALMENTE-NINGUNA'),
('FISURAS', 'LOSAS', 2, 1, '¿Las fisuras aparecen progresando verticalmente a la línea neutra del elemento y desapareciendo al aproximarse?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 2, 2, '¿Las fisuras aparecen cerca de la cara del apoyo o en la zona de confinamiento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 2, 3, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Ensayo de Medicion de Recubrimiento, Nivelacion de Superficies, Escaneo 3D', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 2, 4, '¿Hay presencia de fisuras en la zona sometida a compresión del Elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 2, 5, '¿Se evidencia Fisuras perpendiculares a la Armadura Principal del Elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 2, 6, '¿Hay presencia de fisuras en la zona sometida a tracción del elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 2, 7, '¿Los elementos que restringen la dilatación del elemento tienen fisuras?', 'Realizar Análisis Térmico (Termografia)', 2, 'SI-NO'),
('FISURAS', 'LOSAS', 2, 8, '¿Las fisuras que observas son solo superficiales o también las acompañan profundas?', 'Realizar Remoción Friso/Recubrimiento, Ultra-Sonido,  Radiografía  (Auscultación Magnética, Gammagrafía)', 3, 'SUPERFICIAL-SUPERFICIAL y PROFUNDA-PROFUNDA'),
('FISURAS', 'MAMPOSTERIA', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas?', 'Realizar ensayo de Fisurometro, Actividad de Fisuras con Testigo.', 2, 'ACTIVAS-PASIVAS'),
('FISURAS', 'MAMPOSTERIA', 1, 2, '¿Las fisuras se presentan en forma de "Mapeo" o "Redes", entrecruzadas entre sí?', 'Determinar por Inspección Visual.', 3, 'SI, CON  ENTRECRUZAMIENTO-SI, SIN ENTRECRUZAMIENTO-NO'),
('FISURAS', 'MAMPOSTERIA', 1, 3, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'MAMPOSTERIA', 1, 4, '¿Las fisuras se inclinan en un ángulo cercano a  45° respecto al eje longitudinal, con 75° como el máximo?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'MAMPOSTERIA', 1, 5, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', 'Consultar Historial de la edificación', 3, 'DURANTE LAS PRIMERAS HORAS-POSTERIORMENTE-NO LO SE'),
('FISURAS', 'MAMPOSTERIA', 1, 6, '¿Hay fisuras específicamente acompañadas de rotura de Elementos Adosados?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'MAMPOSTERIA', 1, 7, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Medición de Recubrimiento, Nivelación de Superficie, Escaneo 3D, Plomo de Muros y Columnas.', 2, 'SI-NO'),
('FISURAS', 'MAMPOSTERIA', 1, 8, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento cercano a éstas?', 'Determinar por inspección Visual', 2, 'SI-NO'),
('FISURAS', 'MAMPOSTERIA', 1, 9, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras.', 4, 'VERTICALMENTE-HORIZONTALMENTE-DIAGONALMENTE-NINGUNA'),
('FISURAS', 'MAMPOSTERIA', 1, 10, '¿Las fisuras se Asemejan a algunas de estas Imágenes?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 6, 'A-B-C-D-E-NINGUNA'),
('FISURAS', 'MAMPOSTERIA', 2, 1, '¿Las fisuras en la mampostería aparecen cerca de la cara del apoyo o en la zona de confinamiento de un elemento Estructural?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía), Ultra-sonido.', 2, 'SI-NO'),
('FISURAS', 'MAMPOSTERIA', 2, 2, '¿Se encuentran fisuras en elementos que restrinjan la dilatación del Elemento Afectado?', 'Realizar Análisis Térmico ( Termografia).', 2, 'SI-NO'),
('FISURAS', 'MAMPOSTERIA', 2, 3, '¿Las fisuras que se observan,  son solo superficiales o también las acompañan profundas?', 'Realizar Remoción de Friso/Recubrimiento, Ultra-sonido, Radiografía  (Auscultación Magnética, Gammagrafía)', 3, 'SUPERFICIAL-SUPERFICIAL y PROFUNDA-PROFUNDA'),
('FISURAS', 'MUROS', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas?', 'Realizar Ensayo de Fisurómetro, Medición de Actividad con Testigos.', 2, 'ACTIVAS-PASIVAS'),
('FISURAS', 'MUROS', 1, 2, '¿Las fisuras se presentan en forma de "Mapeo" o "Redes", entrecruzadas entre sí?', 'Determinar por Inspección Visual.', 3, 'SI, CON  ENTRECRUZAMIENTO-SI, SIN ENTRECRUZAMIENTO-NO'),
('FISURAS', 'MUROS', 1, 3, '¿Las fisuras muestran presencia de Compuestos de tipo "Gel" en ellas?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 4, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 5, '¿Las fisuras se inclinan en un ángulo cercano a  45° respecto al eje longitudinal, con 75° como el máximo?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 6, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', 'Consultar el historial de la Edificación.', 3, 'DURANTE LAS PRIMERAS HORAS-POSTERIORMENTE-TAL VEZ'),
('FISURAS', 'MUROS', 1, 7, '¿Las fisuras se ubican únicamente en las zonas de mayor momento (nodos, tramo central de la luz del elemento)?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 8, '¿Las fisuras toman distintas inclinaciones en cada cara del elemento?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 9, '¿Hay fisuras específicamente acompañadas de rotura de Elementos Adosados?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 10, '¿Hay presencia solo de Micro-fisuras en el elemento afectado?', 'Realizar medición de fisuras, fisurometro, levantamiento grafico de síntomas.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 11, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Medicion de Recubrimiento, Nivelacion de Superficies, Plomo de Muros y Columnas, Escaneo 3D.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 12, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento cercano a éstas?', 'Determinar por Inspección Visual,  Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'MUROS', 1, 13, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras.', 4, 'VERTICALMENTE-HORIZONTALMENTE-DIAGONALMENTE-NINGUNA'),
('FISURAS', 'MUROS', 1, 14, '¿Las fisuras se Asemejan a algunas de estas Imágenes?', 'Realizar ensayo de Fisurómetro, Medición de fisuras, Levantamiento Grafico de Fisuras.', 6, 'A-B-C-D-E-NINGUNA'),
('FISURAS', 'MUROS', 2, 1, '¿Las fisuras aparecen progresando verticalmente a la línea neutra del elemento y desapareciendo al aproximarse?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'MUROS', 2, 2, '¿Las fisuras se presentan paralelas a la Armadura Longitudinal del elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 3, 'SI, CONTINUAS-SI, NO CONTINUAS-NO'),
('FISURAS', 'MUROS', 2, 3, '¿Las fisuras aparecen cerca de la cara del apoyo o en la zona de confinamiento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'MUROS', 2, 4, '¿Las fisuras aparecen paralelas a la armadura transversal del elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'MUROS', 2, 5, '¿El elemento afectado, podría restringir a un elemento que se esté dilatando?', 'Realizar Análisis Térmico ( Termografia)', 2, 'SI-NO'),
('FISURAS', 'MUROS', 2, 6, '¿Hay presencia de fisuras en la zona sometida a compresión del Elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 2, 7, '¿Se evidencia Fisuras perpendiculares a la Armadura Principal del Elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'MUROS', 2, 8, '¿Hay presencia de fisuras en la zona sometida a tracción del elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'MUROS', 2, 9, '¿Los elementos que restringen la dilatación del elemento tienen fisuras?', 'Realizar Análisis Térmico (Termografia)', 2, 'SI-NO'),
('FISURAS', 'MUROS', 2, 10, '¿Las fisuras que observas son solo superficiales o también las acompañan profundas?', 'Realizar remoción de Friso/Recubrimiento, Ultra-Sonido, Radiografía  (Auscultación Magnética, Gammagrafía)', 3, 'SUPERFICIAL-SUPERFICIAL y PROFUNDA-PROFUNDA'),
('FISURAS', 'VIGAS', 1, 1, '¿Las fisuras se presentan como Activas (Movimentación, cambios de ancho o longitud) o Pasivas?', 'Realizar ensayos de Fisurometro, Medición de Actividad con Testigo.', 2, 'ACTIVAS-PASIVAS'),
('FISURAS', 'VIGAS', 1, 2, '¿Las fisuras se presentan en forma de "Mapeo" o "Redes", entrecruzadas entre sí?', 'Realizar inspección visual.', 3, 'SI, CON ENTRECRUZAMIENTO-SI, SIN ENTRECRUZAMIENTO-NO'),
('FISURAS', 'VIGAS', 1, 3, '¿ Las fisuras muestran presencia de Compuestos de tipo "Gel" en ellas?', 'Realizar inspección visual.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 4, '¿Las fisuras se manifiestan de forma Aleatoria sin ningún patrón aparente?', 'Realizar inspección visual.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 5, '¿Las fisuras se inclinan en un ángulo cercano a  45° respecto al eje longitudinal, con 75° como el máximo?', 'Realizar ensayos de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 6, '¿Las fisuras surgen durante las primeras horas luego del Vaciado del Hormigón, o posterior?', 'Evaluar historial de la edificación.', 3, 'DURANTE LAS PRIMERAS HORAS-POSTERIORMENTE-NO LO SE'),
('FISURAS', 'VIGAS', 1, 7, '¿Las fisuras se ubican únicamente en las zonas de mayor momento (nodos, tramo central de la luz del elemento)?', 'Realizar inspección visual.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 8, '¿Las fisuras toman distintas inclinaciones en cada cara del elemento?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 9, '¿Las fisuras se presentan paralelas a la Armadura Longitudinal del elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 3, 'SI, CONTINUAS-SI, NO CONTINUAS-NO'),
('FISURAS', 'VIGAS', 1, 10, '¿Las fisuras aparecen paralelas a la armadura transversal del elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 11, '¿Hay fisuras específicamente acompañadas de rotura de Elementos Adosados?', '', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 12, '¿El elemento afectado, podría restringir a un elemento que se esté dilatando?', 'Realizar Análisis Térmico ( Termografia )', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 13, '¿Hay presencia solo de Micro-fisuras en el elemento afectado?', 'Realizar Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 14, '¿Se observan Fisuras, acompañadas de Desprendimiento del Recubrimiento cercano a éstas?', 'Realizar inspección visual, Ensayo con pachómetro (Ferroscan, profometro)', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 15, '¿Las fisuras se presentan Verticalmente, Horizontalmente o Diagonalmente?', 'Realizar ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 4, 'VERTICALMENTE-HORIZONTALMENTE-DIAGONALMENTE-NINGUNA'),
('FISURAS', 'VIGAS', 1, 16, '¿Se evidencia Fisuras perpendiculares a la Armadura Principal del Elemento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 17, '¿Se evidencia Fisuras consecuentes en las distintas caras del elemento (Fisuras Tipo Resorte)?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 18, '¿Son fisuras grandes con alguna configuración de las siguientes?', 'Realizar Ensayo de Fisurometro, Medición de Fisuras, Levantamiento Grafico de Fisuras.', 6, 'A-B-C-D-E-NINGUNA'),
('FISURAS', 'VIGAS', 1, 19, '¿La viga es de borde o se encuentra en cantiléver?', 'Realizar Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 1, 20, '¿Los elementos que restringen su dilatación tienen fisuras?', 'Realizar Análisis Térmico ( Termografia )', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 2, 1, '¿Las fisuras aparecen progresando verticalmente a la línea neutra del elemento y desapareciendo al aproximarse?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 2, 2, '¿Las fisuras aparecen cerca de la cara del apoyo o en la zona de confinamiento?', 'Realizar Ensayo con Pachómetro (Ferroscan, Profometro), Radiografía  (Auscultación Magnética, Gammagrafía)', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 2, 3, '¿Se evidencia presencia de fisuras, acompañadas de Expansión en Volumen del elemento Afectado?', 'Realizar Ensayo de Medicion de Recubrimiento, Escaneo 3D, Nivelacion de Superficies.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 2, 4, '¿Hay presencia de fisuras en la zona sometida a compresión del Elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 2, 5, '¿Hay presencia de fisuras en la zona sometida a tracción del elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 2, 6, '¿Las fisuras se presentan en todas las Caras del Elemento Afectado?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('FISURAS', 'VIGAS', 2, 7, '¿Las fisuras que observas son solo superficiales o también las acompañan profundas?', 'Realizar Remoción de Friso/Recubrimiento, Radiografía  (Auscultación Magnética, Gammagrafía), Ultra-Sonido', 3, 'SUPERFICIAL-SUPERFICIAL y PROFUNDA-PROFUNDA'),
('MANIFESTACION FISICA', 'TODOS', 1, 1, '¿Se aprecian deformaciones en el Elemento Afectado?', 'Realizar ensayos de Nivelación de Superficies, Escaneo 3D, Plomo de Muros y Columnas.', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 1, 2, '¿Se observa perdida recubrimiento en el Elemento Afectado?', 'Se recomienda determinar a través de inspección visual; para mayor precisión el ensayo de Velocidad de Pulsos Ultrasónicos o algún ensayo de medición de recubrimiento', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 1, 3, '¿Se observan aumentos en el volumen, o  pérdida en la sección del hormigón del Elemento Afectado?', 'Para esta pregunta, realizar ensayo de Medición del Recubrimiento, Nivelacion de Superficies, Escaneo 3D.', 3, 'AUMENTO DE VOLUMEN-PERDIDA DE SECCION-NINGUNA'),
('MANIFESTACION FISICA', 'TODOS', 1, 4, '¿Existieron cambios de volumen en el pasado?', 'Evaluar historial de edificación y dimensiones con planos existentes.', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 1, 5, '¿Se observaron armaduras aparentes en el Elemento Afectado? (Armaduras Expuestas)?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 1, 6, '¿El Elemento Afectado se encontró en procesos de lixiviación?', 'Evaluar por Inspección Visual. Para mayor precisión, es recomendado verificar a través del ensayo de Lixiviación In Situ (Requiere ensayo de Core-Drill).', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 1, 7, '¿Se observó desagregación de los áridos?', 'Llevar a cabo Prueba Manual de Pulverización (Sobre Muestras desprendidas o desprendibles)', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 1, 8, '¿Se localizó aplastamiento en el Elemento Afectado?', 'Para esta pregunta, es recomendado realizar ensayo de Medición del Recubrimiento, Nivelación de Superficies, Escaneo 3D.', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 1, 9, '¿Hay formación de Grandes fallos (Oquedades / Huecos / Cangrejeras) en el Elemento Afectado?', 'Determinar a través de la inspección visual y de ser necesario realizar ensayo de Velocidad de Pulso Ultrasónico o de Auscultación Magnética.', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 1, 10, '¿Hay presencia de Oquedades tipo "Picaduras"  En el elemento?', '', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 2, 1, '¿Se evidenció rotura brusca (Spalling) del  Elemento Afectado?', 'Se recomienda verificar en el historial de la edificación y en la inspección visual.', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 2, 2, '¿Se encontró una deformación notoria de las barras de acero en el Elemento Afectado?', 'Para este caso, Realizar Radiografía (Auscultación Magnética, Gammagrafía)  del elemento, Remoción de Friso/Recubrimiento para Exponer Barra, ensayo con Pachometrto (Ferroscan, Profometro)', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 2, 3, '¿Hubo presencia de reducción de la sección transversal del acero de refuerzo en el Elemento Afectado?', 'Realizar Gammagrafía, Pachometro ( Ferroscan, Profometro, Remoción Friso/Recubrimiento para Exponer Barras.', 2, 'SI-NO'),
('MANIFESTACION FISICA', 'TODOS', 2, 4, '¿Se evidencia desgaste Superficial del Hormigón?', 'Realizar ensayo de Discos Giratorios para evaluar estado actual ante el Desgaste, en caso afirmativo.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 1, '¿Existe la presencia de exudación, masa de cemento en la superficie del elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 2, '¿Se observan los áridos en la superficie del elemento?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 3, '¿Se presentan manchas de óxido en la superficie del hormigón?', 'Realizar ensayo de Conductividad Eléctrica y Media Celda de Cobre para evaluar Estado Actual, Inspección Visual en caso de ser Suficiente.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 4, '¿Se observa presencia de Productos de Corrosión en el Elemento Afectado (Sales, óxidos, etc.)?', '*Realizar Ensayo de Mapa Electroquímica, Conductividad Eléctrica y Media Celda de Cobre. *Para evaluar grado de Corrosión, Realizar ensayo de Velocidad de Corrosión, Espectroscopia de Impedancia Electroquímica (EIS), Resistencia a la Polarización (Rp)  o Voltametria Cíclica.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 5, '¿Se observan aumentos en la Humedad interna y de la conductividad Eléctrica del Hormigón?', 'Para esta pregunta, realizar ensayo de Prueba de Humedad Relativa, Potencial de media celda o Auscultación magnética (Radiografía- Gammagrafía).', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 6, '¿Hay presencia de un Gel en el Elemento Afectado?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 7, '¿Se observan Manchas, de coloración blanca en la superficie del Hormigón (Eflorescencias)?', 'Determinar por Inspección Visual.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 8, '¿Se evidencia Lixiviación de color blanca, en forma de Estalactitas?', 'Para esta pregunta, realizar ensayo de Porosidad para analizar alteraciones en la estructura interna del Hormigón. De ser necesario realizar Lixiviación In-Situ (LIS) (Requiere de Ensayo de Core-Drill).', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 9, '¿La pasta de cemento de alguna u otra manera terminó expulsada o desintegrada?', 'Realizar ensayo Manual de Pulverización , lixiviación in situ (Requiere ensayo de Core-Drill)  o una inspección visual. ', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 10, '¿Se observa Coloración o Manchas Rosácea, gris claro, blanca o amarillenta en el Hormigón?', 'Determinar por Inspección Visual.', 6, 'ROSALEA-GRIS CLARO-BLANCA-AMARILLENTA-MUY OSCURA (TIENDE A NEGRO)-NINGUNA'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 11, '¿Se evidencia Aumento de la Porosidad del Elemento Afectado?', 'Realizar ensayos de Porosidad para esta pregunta.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 12, '¿Hay presencia de alguna oquedad, fisura o medio a través del cual se puedan trasladar agentes agresivos?', 'Realizar ensayo de Ultra-sonido, Gammagrafía para detectar profundidad de Medios o Medios internos.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 13, '¿Existen cambios de humedad seguidos en el elemento?', 'Realizar ensayos de Gammagrafía o Humedad Relativa de forma periódica.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 1, 14, '¿Permanece un alto contenido de humedad durante tiempo prolongado?', 'Llevar a cabo ensayos de Gammagrafía , Termografia, Humedad relativa de forma Periódica', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 2, 1, '¿Se presentan manchas por Carbonatación en el elemento afectado?', 'Realizar Prueba de Lixiviacion In-Situ (LIS), Fenolftaleina, Prueba de Carbonatacion. Requiere de Extraccion de Nucleos (Core-Drill)', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 2, 2, '¿Se presenta una Dureza y Resistencia superficial del Elemento Afectado por debajo de lo esperado?', 'Para esta pregunta, realizar ensayo de Pistola de Windsor, Esclerometro de Schmidt, Ultra-Sonido o Core-Drill.', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 2, 3, '¿Se presenta reducción del PH (?8)  del hormigón en el elemento afectado?', 'Para este caso, se recomienda hacer ensayo con Electrodo de Calomelanos, medición de Ph por Prueba (LIS). Este Ensayo requiere de la extracción de Núcleos  (Core-Drill).', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 2, 4, '¿Existe la presencia de iones cloruros en el Hormigón?', 'Realizar ensayos de Perfil de Penetración de Cloruro, Prueba de Contenido de Cloruros, Análisis Petrográfico del Hormigón, Conductividad Eléctrica, Potencial de media Celda.  Este Ensayo requiere de la Extracción de Núcleos (Core-Drill)', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 2, 5, '¿La pasta de cemento perdió su cohesión con los agregados o barras de acero?', 'Se recomiendan los ensayos de Voltametria cíclica, Espectroscopia de Impedancia Electroquímica (EIS)', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 2, 6, '¿Hay presencia de iones Sulfatos?', 'Espectrofotómetro para Detección de Sulfatos, Microscopia Electrónica de Barrido Ambiental (ESEM). Requiere Extracción de Núcleos ( Core-Drill).', 2, 'SI-NO'),
('MANIFESTACION QUIMICA', 'TODOS', 2, 7, '¿Hay Presencia de Microorganismos en el Hormigón?', 'Realizar Análisis Petrográfico al Hormigón. Requiere de Extracción de Núcleos (Core-Drill)', 2, 'SI-NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `matrizcausas`
--
ALTER TABLE `matrizcausas`
  ADD PRIMARY KEY (`patologia`,`causa`);

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
-- Indices de la tabla `matrizsintomas`
--
ALTER TABLE `matrizsintomas`
  ADD PRIMARY KEY (`patologia`,`sintoma`);

--
-- Indices de la tabla `matrizterapias`
--
ALTER TABLE `matrizterapias`
  ADD PRIMARY KEY (`patologia`,`terapia`);

--
-- Indices de la tabla `preguntasplanillasetapas`
--
ALTER TABLE `preguntasplanillasetapas`
  ADD PRIMARY KEY (`patologia`,`elemento`,`numeroEtapa`,`numeroPregunta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
