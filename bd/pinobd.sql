-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2018 a las 14:48:33
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taxonomia`
--
CREATE DATABASE taxonomia;
USE taxonomia;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pino`
--

CREATE TABLE `pino` (
  `idPino` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_cientifico` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pino`
--

INSERT INTO `pino` (`idPino`, `nombre`, `nombre_cientifico`, `descripcion`, `imagen`) VALUES
(1, 'Pino canario', 'Pinus canariensis', 'El pino canario se considera, según una ley del Gobierno de Canarias, el símbolo natural de la isla de La Palma, conjuntamente con la graja.', './img/pinus_canariensis.jpg'),
(2, 'Pino insigne', 'Pinus radiata', 'En la Península Ibérica desde el siglo XIX se han ido introduciendo sobre todo en la zona norte con el fin de aprovechar su madera para la fabricación de pasta de papel y para labores de entibamiento en minas de carbón. Se encuentra en zonas de baja altitud de las Comunidades Autónomas de Galicia, Asturias, Cantabria, Castilla y León y Euskadi, y excepcionalmente en algunas zonas de Andalucía, como Málaga, Cádiz y Sierra Morena. En las islas Canarias fue introducido en los años 1940-50.', './img/pinus_radiata.jpg'),
(3, 'Pino albar', 'Pinus sylvestris', 'Se distribuye desde Escocia y España por el oeste hasta Siberia y las montañas del Cáucaso por el este, y desde Laponia por el norte hasta Sierra Nevada (España) por el sur.', './img/pinus_sylvestris.jpg'),
(4, 'Pino negro', 'Pinus uncinata', 'Es un árbol poco elevado que raramente supera los 20 metros de altura, con copa generalmente cónica o piramidal y follaje muy denso y oscuro. Tronco derecho, columnar, salvo en situaciones muy expuestas o ventisqueros, en que se arquea por el peso de la nieve, ramificado casi desde la base, con corteza gris oscura o pardo-grisácea. Hojas aciculares, color verde-oscuro, de 3 a 8 cm de largo por 1,5 a 2 mm de grosor, con borde áspero, en disposición muy densa sobre las ramas y agrupadas por parejas; se mantienen de 2 a 5 años y son algo rígidas pero poco punzantes. Piñas casi sentadas, aovadas o aovado-cónicas, asimétricas, de color pardo algo lustroso, con escamas provistas de un escudete, recurvado hacia atrás, ganchudo, miden de 5 a 7 cm por 2 o 3 de ancho. Piñones de color pardo-grisáceo o negruzcos de 4 a 5 mm, largamente alados (con ala de hasta 1,6 cm).', './img/pinus_uncinata.jpg'),
(5, 'Pino carrasco', 'Pinus halepensis', 'Puede alcanzar los 25 m de altura. El tronco es macizo y tortuoso, de corteza gris rojiza y copa irregular. Estróbilos rojizos de forma oval de unos 10 cm de longitud. Acículas largas agrupadas de dos en dos, muy flexibles y ligeramente amarillentas. Piñas pequeñas y pedunculadas. Es muy resistente a la aridez, las ramas y la corteza son grisáceas. Las hojas tienen de 0,7 a 1 mm de anchura y de 3,5 a 7 cm de longitud y son de un verde amarillento. Florece en abril o en mayo y hace muchas piñas, de 5 a 12 cm de longitud, con un claro pedúnculo y con escamas con escudetos poco prominentes. Es un árbol bastante xerófilo y heliófilo. Es el árbol dominante en grandes extensiones del encinar, donde se ha extendido colonizando los cultivos abandonados, puesto que se trata de una especie oportunista. También los incendios favorecen su propagación, puesto que por un lado el fuego hace estallar las piñas y expande las semillas y de otra las altas temperaturas favorecen la apertura de las piñas: es una especie pirófita. En general ocupa la zona de solana.', './img/pinus_halepensis.jpg'),
(6, 'Pino larico', 'Pinus nigra', 'Es una especie moderadamente variable, que aparece por todo el sur de Europa desde España hasta Crimea, y también en Asia Menor, Chipre, y localmente en los montes Atlas del noroeste de África. El grueso de su área de distribución está en Turquía. Se encuentra en alturas que van desde el nivel del mar hasta los 2000 msnm, más frecuentemente desde los 250 hasta los 1600 msnm.3​ El pino salgareño es un árbol de hoja perenne. Prefiere suelos calizos. Su madera es muy elástica y bastante rica en resina.', './img/pinus_nigra.jpg'),
(7, 'Pino piñonero', 'Pinus pinea', 'El pino piñonero es una conífera de hoja perenne que puede exceder los 50 metros de altura, pero las alturas entre 12-20 metros son más típicas. En la juventud, tiene forma de globo redondeado; en su edad media es característica su copa redonda y tronco grueso; finalmente, en la madurez, posee una copa ancha en forma de sombrilla de hasta 8 metros de ancho. La corteza es gruesa, de color marrón rojizo y profundamente fisurada en placas verticales anchas.', './img/pinus_pinea.jpg'),
(8, 'Pino negral o resinero', 'Pinus pinaster', 'Es un árbol de mediano tamaño 20 a 35 metros, de 1,2 m de tronco, excepcionalmente alcanza hasta 1,8 m, con frecuencia enroscado en la base. De corteza5​ rojo anaranjada, gruesa y profundamente agrietada sobre todo en la base. Copa irregular y abierta. Las acículas se encuentran en pares, son gruesas y largas, de 12 a 22 cm de largo,de azul verdoso a amarillo verdoso. Las piñas son cónicas de 10 a 20 cm de largo y 4 a 6 cm de ancho cuando están cerradas. Verdes al principio para pasar a un marrón rojizo a los 24 meses que abren ensanchando hasta unos 8 o 12 cm de ancho. Los piñones son de 8 a 10 mm con un ala de 20 a 25 mm que dispersa el viento.', './img/pinus_pinaster.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pino`
--
ALTER TABLE `pino`
  ADD PRIMARY KEY (`idPino`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pino`
--
ALTER TABLE `pino`
  MODIFY `idPino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
