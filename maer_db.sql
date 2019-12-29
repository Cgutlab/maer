-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-07-2019 a las 00:13:15
-- Versión del servidor: 10.2.24-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `maer_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones`
--

CREATE TABLE `aplicaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aplicaciones`
--

INSERT INTO `aplicaciones` (`id`, `nombre`, `imagen`, `descripcion`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Repintado automotor', 'img/aplicaciones/1_1_repintado automotor.jpg', '<p>Repintado Automotor</p>', 'ab', '2018-07-30 07:11:19', '2018-08-08 16:35:56'),
(3, 'Industria del mueble', 'img/aplicaciones/3_3_industria del mueble.jpg', '<p>Industria del mueble</p>', 'dd', '2018-07-30 07:22:35', '2018-08-08 16:35:28'),
(4, 'Retoques y difuminados', 'img/aplicaciones/4_aplicaretoques detalles.jpg', '<p>Retoques y difuminados</p>', 'EB', '2018-08-08 17:56:55', '2018-08-09 20:31:35'),
(5, 'Industria en General.', 'img/aplicaciones/5_aplica industria.jpg', '<p>Industria en General.</p>', 'bb', '2018-08-08 22:25:48', '2018-08-09 20:31:44'),
(6, 'Todo tipo de pinturas', 'img/aplicaciones/6_todos.jpg', '<p>Todo tipo de pinturas</p>', 'cc', '2018-08-08 22:26:30', '2018-08-09 20:32:09'),
(8, 'Aplicación de resinas', 'img/aplicaciones/8_resinas.jpg', '<p>Aplicaci&oacute;n de resinas</p>', 'ab', '2018-08-08 22:27:12', '2018-08-09 20:32:18'),
(9, 'Obra y hogar', 'img/aplicaciones/9_aplica hogar.jpg', '<p>Obra y hogar</p>', 'dg', '2018-08-09 16:28:44', '2018-08-09 20:32:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion_producto`
--

CREATE TABLE `aplicacion_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `aplicacion_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aplicacion_producto`
--

INSERT INTO `aplicacion_producto` (`id`, `producto_id`, `aplicacion_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(4, 2, 3, NULL, NULL),
(5, 1, 3, NULL, NULL),
(6, 1, 1, NULL, NULL),
(7, 4, 1, NULL, NULL),
(8, 5, 1, NULL, NULL),
(9, 6, 4, NULL, NULL),
(10, 7, 1, NULL, NULL),
(12, 9, 5, NULL, NULL),
(14, 10, 9, NULL, NULL),
(15, 11, 9, NULL, NULL),
(16, 12, 6, NULL, NULL),
(17, 13, 9, NULL, NULL),
(18, 13, 6, NULL, NULL),
(19, 14, 6, NULL, NULL),
(20, 15, 6, NULL, NULL),
(21, 16, 6, NULL, NULL),
(22, 21, 1, NULL, NULL),
(23, 22, 5, NULL, NULL),
(24, 23, 3, NULL, NULL),
(25, 23, 5, NULL, NULL),
(26, 24, 1, NULL, NULL),
(27, 26, 5, NULL, NULL),
(28, 27, 3, NULL, NULL),
(29, 27, 5, NULL, NULL),
(30, 28, 8, NULL, NULL),
(31, 28, 3, NULL, NULL),
(32, 28, 5, NULL, NULL),
(33, 29, 8, NULL, NULL),
(34, 29, 3, NULL, NULL),
(35, 29, 5, NULL, NULL),
(36, 30, 5, NULL, NULL),
(37, 31, 5, NULL, NULL),
(38, 45, 5, NULL, NULL),
(39, 48, 6, NULL, NULL),
(40, 43, 9, NULL, NULL),
(42, 50, 5, NULL, NULL),
(43, 51, 3, NULL, NULL),
(45, 21, 3, NULL, NULL),
(46, 20, 3, NULL, NULL),
(47, 20, 5, NULL, NULL),
(48, 20, 1, NULL, NULL),
(49, 51, 5, NULL, NULL),
(50, 51, 1, NULL, NULL),
(51, 12, 9, NULL, NULL),
(52, 14, 9, NULL, NULL),
(53, 8, 3, NULL, NULL),
(54, 8, 5, NULL, NULL),
(55, 7, 3, NULL, NULL),
(56, 7, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `texto`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'COMPROMETIDOS CON EL MEDIO AMBIENTE', 'img/home/banner/bannercalidad.jpg', '2018-07-28 23:46:43', '2018-07-29 03:41:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calidad`
--

CREATE TABLE `calidad` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calidad`
--

INSERT INTO `calidad` (`id`, `nombre`, `descripcion`, `descripcion2`, `imagen`, `contenido`, `created_at`, `updated_at`) VALUES
(1, 'CONCEPTOS EN SISTEMAS DE PINTAR', '<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:36px\">La evoluci&oacute;n</span></span></p>', '<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:24px\"><strong>FUNCIONAMIENTO</strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">La aplicaci&oacute;n de pinturas se fundamenta en la pulverizaci&oacute;n de las mismas, en otras palabras, como consecuencia de la presi&oacute;n y el aire comprimido suministrados por un compresor, se fractura o atomiza la pintura en diminutas part&iacute;culas, la cual ingresa a la pistola por un conducto diferente al del aire comprimido, mezcl&aacute;ndose finalmente en la zona de pulverizaci&oacute;n. Esto se produce gracias a la aplicaci&oacute;n del efecto v&eacute;nturi, principio f&iacute;sico a trav&eacute;s del cual se consigue aumentar la velocidad del aire, al hacerlo pasar por un conducto de &aacute;rea o secci&oacute;n menor, generando baja presi&oacute;n al otro extremo del conducto, provocando que se succione l&iacute;quido del dep&oacute;sito (pintura) y se pulverice en fin&iacute;simas gotas, mezcl&aacute;ndose con el aire.</span></span></strong></p>', '', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">En la aplicaci&oacute;n de pinturas, los procedimientos usados han experimentado una evoluci&oacute;n tan r&aacute;pida que el pintor dispone en la actualidad de una amplia variedad de herramientas para su elecci&oacute;n. Si se cuenta con el conocimiento adecuado en la manipulaci&oacute;n y regulaci&oacute;n de las mismas, se podr&aacute; obtener m&aacute;ximo provecho y resultados de excelente calidad.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">La pistola aerogr&aacute;fica es un equipo imprescindible en el taller, ya que es la principal herramienta de trabajo del pintor, esta requiere de mantenimiento y cuidado constante, as&iacute; como una perfecta limpieza luego de cada uso, lo que garantizar&aacute; la calidad requerida en cada uno de los trabajos asignados. Estos equipos se han actualizado a la par con las pinturas, que en la actualidad se encuentran en presentaciones m&aacute;s ecol&oacute;gicas, lo cual se refleja en un mayor aprovechamiento de los productos y una menor cantidad de compuestos org&aacute;nicos vol&aacute;tiles emitidos a la atm&oacute;sfera. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Podemos encontrar distintas tecnolog&iacute;as de pistolas en el mercado: pistolas convencionales, h&iacute;bridas/media presi&oacute;n y pistolas H.V.L.P.</span></span></p>', '2018-07-30 16:29:48', '2018-08-16 17:52:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

CREATE TABLE `catalogos` (
  `id` int(10) UNSIGNED NOT NULL,
  `pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `catalogos`
--

INSERT INTO `catalogos` (`id`, `pdf`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'file/catalogos/1_LISTA DE PRECIOS 01-07-2019.pdf', 'LISTA DE PRECIOS + REPUESTOS 01/07/2019.', '2018-07-30 19:12:01', '2019-06-27 23:27:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Media presión', 'img/categoria/1_cat1.jpg', 'AA', '2018-07-28 21:25:10', '2018-08-08 17:14:38'),
(2, 'Alta Transferencia', NULL, 'bb', '2018-08-06 05:36:43', '2018-08-08 17:14:54'),
(3, 'HVLP - Alto Volumen Baja Presión.', 'img/categoria/3_454 BUHO HVLP.jpg', 'ab', '2018-08-08 16:18:47', '2018-08-08 17:14:46'),
(4, 'Convencional Directa. Sin válvula.', NULL, 'dd', '2018-08-08 16:20:52', '2018-08-08 16:22:00'),
(5, 'LVLP. Bajo Volumen Baja Presión', NULL, 'dh', '2018-08-08 16:21:33', '2018-08-08 17:15:05'),
(6, 'Mototurbina 2 etapas', NULL, 'ha', '2018-08-08 16:22:27', '2018-08-08 17:15:19'),
(7, 'Mototurbina 3 etapas', NULL, 'hb', '2018-08-08 16:22:57', '2018-08-08 17:15:28'),
(8, 'N/A', NULL, 'zz', '2018-08-08 16:23:30', '2018-08-08 16:23:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_novedades`
--

CREATE TABLE `categoria_novedades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_novedades`
--

INSERT INTO `categoria_novedades` (`id`, `nombre`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Actualidad', 'AA', '2018-08-06 00:38:46', '2018-08-08 07:22:59'),
(2, 'Empresa', 'bb', '2018-08-06 00:39:05', '2018-08-06 00:39:05'),
(3, 'Productos', 'cc', '2018-08-06 00:39:14', '2018-08-06 00:39:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_preguntas`
--

CREATE TABLE `categoria_preguntas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_preguntas`
--

INSERT INTO `categoria_preguntas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'PISTOLAS', '2018-07-30 16:36:26', '2018-08-09 19:47:44'),
(4, 'TURBOS COMPRESORES', '2018-08-09 19:48:07', '2018-08-09 19:48:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_calidades`
--

CREATE TABLE `contenido_calidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenido_calidades`
--

INSERT INTO `contenido_calidades` (`id`, `nombre`, `descripcion`, `descripcion2`, `imagen`, `contenido`, `created_at`, `updated_at`) VALUES
(1, 'SISTEMAS DE APLICACION', '<p>Sistemas en las pistolas aerogr&aacute;ficas</p>', '<p>En MAER asumimos el compromiso de excelencia en la calidad de los productos.</p>', 'km', '<p><strong>Pistolas convencionales:</strong> tambi&eacute;n conocidas como pistolas de alta, se caracterizan por aportar tasas de transferencia entre el 30 y 40%, y manejar unas presiones de aplicaci&oacute;n que var&iacute;an entre los 2.5 y 3.5 bares de presi&oacute;n (37 &ndash; 51 PSI aproximadamente). Sus elevadas presiones de trabajo proporcionan una excelente atomizaci&oacute;n y por consiguiente, muy buena calidad de acabado; sin embargo, esta condici&oacute;n &ndash;alta presi&oacute;n- origina un fuerte rebote de la pintura contra la superficie a pintar, originando una densa niebla de pulverizaci&oacute;n y con ello, una importante p&eacute;rdida o desperdicio de producto, lo cual ha generado la aparici&oacute;n de nuevas tecnolog&iacute;as.</p>\r\n\r\n<p><strong>Pistolas h&iacute;bridas o de media presi&oacute;n:</strong> hicieron su aparici&oacute;n en el mercado debido a las dificultades experimentadas por los pintores respecto de la forma de aplicaci&oacute;n con pistolas HVLP, por las prestaciones requeridas del compresor con esta &uacute;ltimas, dado el elevado volumen de aire que requieren. Su rasgo caracter&iacute;stico es que cumplen con las tasas de transferencia presentes en las pistolas HVLP y estipuladas en la normatividad vigente, adem&aacute;s de consumos de aire y forma de aplicaci&oacute;n similares a las convencionales.</p>\r\n\r\n<p><strong>Pistolas HVLP</strong>: Las pistolas denominadas H.V.L.P (high volume low pressure &ndash; alto volumen baja presi&oacute;n) se caracterizan por pulverizar la pintura a tan s&oacute;lo 0.7 bares de presi&oacute;n en la boquilla, lo que obliga a un mayor consumo de aire (aproximadamente 20% - 30% m&aacute;s que el sistema convencional) para que se produzca una buena atomizaci&oacute;n. Esta menor presi&oacute;n de salida repercute en un mayor aprovechamiento de la pintura (mayor del 65%), ya que, al formar un abanico de proyecci&oacute;n con menos presi&oacute;n, se disminuye el rebote de la pintura y se genera mucha menos nube de pintura en el aire. Adem&aacute;s, esta mayor transferencia de pintura al soporte permite que sea preciso preparar menos cantidad de pintura para cubrir una misma pieza. Lo que contribuye a una disminuci&oacute;n de los compuestos org&aacute;nicos vol&aacute;tiles emitidos a la atm&oacute;sfera y un ambiente m&aacute;s saludable para el operario.</p>', '2018-07-28 20:11:10', '2018-10-04 21:26:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_homes`
--

CREATE TABLE `contenido_homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenido_homes`
--

INSERT INTO `contenido_homes` (`id`, `nombre`, `descripcion`, `contenido`, `imagen`, `link`, `created_at`, `updated_at`) VALUES
(1, 'INDUSTRIA ARGENTINA', '<p>Pasi&oacute;n por lo que hacemos</p>', '<p>Sistemas de Pintar S.A somos una empresa argentina fabricante de productos marca MAER.</p>\r\n\r\n<p>Fundada en el a&ntilde;o 1937, con el objetivo de lograr la fabricaci&oacute;n de sistemas de pintar, tenemos el orgullo de habernos consolidado en el rubro con bandera e industria argentina.</p>', 'img/contenido_home/1_home.png', 'https://www.maer.com.ar/empresa', '2018-07-28 18:40:09', '2018-10-11 20:50:26'),
(2, 'PINTURAS BASE AGUA', '<p>807 AQUA</p>', '<p>La pintura a base de agua permite una aplicaci&oacute;n f&aacute;cil, asegura un resultado perfecto y reduce en m&aacute;s del 90% la emisi&oacute;n de solventes, con lo que se preserva el medio ambiente y la salud del&nbsp;operario. Los resultados respetan los m&aacute;s altos est&aacute;ndares de calidad y se reducen en un 95% los residuos producidos.</p>\r\n\r\n<p>Las nuevas tecnolog&iacute;as de pinturas base agua han llegado y contamos con la pistola ideal&nbsp;alcanzando m&aacute;ximos resultados.</p>', 'img/contenido_home/2_807 AQUA CONTENIDO 4.jpg', 'http://www.osolelaravel.com/maer/productoinfo/4/1', '2018-08-08 20:29:47', '2018-09-27 17:14:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` enum('direccion','telefono','telefono2','email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `tipo`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'direccion', 'Suipacha 3258, Remedios de  Escalada, Buenos Aires, Argentina', '2018-07-28 20:23:57', '2018-07-28 23:26:04'),
(2, 'telefono', '(+5411) 4246-8765', '2018-07-28 20:24:36', '2018-07-28 20:24:36'),
(3, 'telefono2', '(+5411) 4246-5850', '2018-07-28 20:24:56', '2018-08-30 19:42:15'),
(4, 'email', 'ventas@maer.com.ar', '2018-07-28 20:25:17', '2018-11-27 15:11:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `minimo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `porcentaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`id`, `minimo`, `maximo`, `porcentaje`, `created_at`, `updated_at`) VALUES
(2, NULL, '1', '20', '2018-07-30 21:35:27', '2018-09-28 21:20:15'),
(3, '2', '4', '25', '2018-08-02 23:09:36', '2018-08-06 19:43:18'),
(4, '5', '10', '28', '2018-08-06 19:41:17', '2018-08-06 19:43:01'),
(5, '11', '20', '33', '2018-08-06 19:43:31', '2018-08-06 19:43:31'),
(6, '21', NULL, '35', '2018-08-06 19:44:21', '2018-08-10 21:46:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacado_homes`
--

CREATE TABLE `destacado_homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `destacado_homes`
--

INSERT INTO `destacado_homes` (`id`, `nombre`, `link`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'des1', '/', 'img/destacado_home/1_destacado2.jpg', 'aa', '2018-07-28 18:30:06', '2018-07-28 21:34:49'),
(2, 'dest2', '/', '/', 'ab', '2018-07-28 18:30:20', '2018-07-28 18:30:20'),
(3, 'dest3', '/', 'img/destacado_home/3_destacado2.jpg', '/', '2018-07-28 18:30:38', '2018-07-28 21:36:09'),
(4, 'dest4', 'm', 'm', 'm', '2018-07-28 18:30:48', '2018-07-28 18:30:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `descripcion`, `contenido`, `imagen`, `link`, `texto1`, `numero1`, `texto2`, `numero2`, `texto3`, `numero3`, `created_at`, `updated_at`) VALUES
(1, 'Nuestra Historia', 'MAER SISTEMAS DE PINTAR', '<p style=\"text-align:justify\">Sistemas de Pintar S.A somos una empresa argentina fabricante de productos marca MAER. La firma se fund&oacute; en el a&ntilde;o 1937 con el objetivo de lograr la fabricaci&oacute;n de sistemas de pintar con bandera argentina.</p>\r\n\r\n<p style=\"text-align:justify\">Actualmente, la empresa ha alcanzado una posici&oacute;n de liderazgo en el rubro por el desarrollo de una amplia gama de productos. Y a lo largo de 80 a&ntilde;os de vida sigue incorporando los m&aacute;s modernos sistemas para pintar en todos sus conceptos: succi&oacute;n, presi&oacute;n y gravedad, de uso manual y autom&aacute;tico, respetando las normas internacionales de protecci&oacute;n ambiental.</p>\r\n\r\n<p style=\"text-align:justify\">De esta manera, nos ubicamos a la vanguardia tecnol&oacute;gica en sistemas de pintado, garantizando cumplir con las exigencias al cuidado del medio ambiente, desarrollando productos acordes a cada una de las necesidades de nuestros clientes.&nbsp;</p>', 'img/empresa/1_empresa.jpg', NULL, 'nacimiento MAER.', '1937', 'años en el rubro.', '82', 'distribuidores en todo el país.', '+1000', '2018-07-29 02:02:50', '2019-06-10 17:46:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imgproductos`
--

CREATE TABLE `imgproductos` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `imgproductos`
--

INSERT INTO `imgproductos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(123, 38, 'img/producto/38_TAZA ALUMINIO 505 T.jpg', NULL, '2018-08-15 20:31:59', '2018-08-15 20:31:59'),
(124, 39, 'img/producto/39_TAZA SUCCION.jpg', NULL, '2018-08-15 20:35:16', '2018-08-15 20:35:16'),
(198, 6, 'img/producto/6_276 4.jpg', NULL, '2018-08-22 22:26:23', '2018-08-22 22:26:23'),
(206, 20, 'img/producto/20_FR 12 Y 14 2.jpg', NULL, '2018-08-22 22:38:42', '2018-08-22 22:38:42'),
(207, 45, 'img/producto/45_F12 3.jpg', NULL, '2018-08-22 22:39:13', '2018-08-22 22:39:13'),
(217, 24, 'img/producto/24_205 3.jpg', NULL, '2018-08-22 22:48:37', '2018-08-22 22:48:37'),
(218, 30, 'img/producto/30_165 BI 2.jpg', NULL, '2018-08-22 22:48:59', '2018-08-22 22:48:59'),
(228, 28, 'img/producto/28_TAP40 AGIT NEUMATICO 3.jpg', NULL, '2018-08-23 17:34:50', '2018-08-23 17:34:50'),
(229, 29, 'img/producto/29_TAP40 AGIT MANUAL 3.jpg', NULL, '2018-08-23 17:35:21', '2018-08-23 17:35:21'),
(230, 17, 'img/producto/17_R12 4.jpg', NULL, '2018-08-23 17:37:37', '2018-08-23 17:37:37'),
(231, 5, 'img/producto/5_Q13 HVLP 8.jpg', NULL, '2018-08-23 17:38:42', '2018-08-23 17:38:42'),
(232, 5, 'img/producto/5_BOQUILLA Q13 HVLP.jpg', NULL, '2018-08-23 17:38:51', '2018-08-23 17:38:51'),
(233, 5, 'img/producto/5_REGULADOR Q13 HVLP 3.jpg', NULL, '2018-08-23 17:38:57', '2018-08-23 17:38:57'),
(235, 5, 'img/producto/5_REGULADORES Q13 HVLP.jpg', NULL, '2018-08-23 17:39:14', '2018-08-23 17:39:14'),
(236, 5, 'img/producto/5_q13 entera 3.jpg', NULL, '2018-08-23 17:39:26', '2018-08-23 17:39:26'),
(238, 27, 'img/producto/27_5021 4.jpg', NULL, '2018-08-23 17:41:47', '2018-08-23 17:41:47'),
(239, 7, 'img/producto/7_4101 S 4.jpg', NULL, '2018-08-23 17:42:37', '2018-08-23 17:42:37'),
(240, 2, 'img/producto/2_4101 GMP LEON 5.jpg', NULL, '2018-08-23 17:43:47', '2018-08-23 17:43:47'),
(241, 2, 'img/producto/2_BOQUILLA 4101 LEON.jpg', NULL, '2018-08-23 17:43:59', '2018-08-23 17:43:59'),
(242, 2, 'img/producto/2_REGULADOR UNIVERSAL 4101 LEON.jpg', NULL, '2018-08-23 17:44:07', '2018-08-23 17:44:07'),
(243, 2, 'img/producto/2_REGULADORES 4101 LEON.jpg', NULL, '2018-08-23 17:44:13', '2018-08-23 17:44:13'),
(244, 2, 'img/producto/2_LEON.jpg', NULL, '2018-08-23 17:44:21', '2018-08-23 17:44:21'),
(245, 2, 'img/producto/2_4101 leon entera 3.jpg', NULL, '2018-08-23 17:44:35', '2018-08-23 17:44:35'),
(246, 9, 'img/producto/9_4101 B 5.jpg', NULL, '2018-08-23 17:45:29', '2018-08-23 17:45:29'),
(247, 31, 'img/producto/31_4101 B 5.jpg', NULL, '2018-08-23 17:45:48', '2018-08-23 17:45:48'),
(248, 26, 'img/producto/26_4101 A 4.jpg', NULL, '2018-08-23 17:47:05', '2018-08-23 17:47:05'),
(249, 22, 'img/producto/22_454 A HVLP 4.jpg', NULL, '2018-08-23 17:47:25', '2018-08-23 17:47:25'),
(250, 4, 'img/producto/4_807 AQUA 5.jpg', NULL, '2018-08-23 17:48:35', '2018-08-23 17:48:35'),
(251, 4, 'img/producto/4_BOQUILLA 807 AQUA.jpg', NULL, '2018-08-23 17:48:49', '2018-08-23 17:48:49'),
(252, 4, 'img/producto/4_REGULADOR DIGITAL.jpg', NULL, '2018-08-23 17:48:55', '2018-08-23 17:48:55'),
(253, 4, 'img/producto/4_REGULADORES 807 AQUA.jpg', NULL, '2018-08-23 17:49:03', '2018-08-23 17:49:03'),
(254, 4, 'img/producto/4_SIRENA.jpg', NULL, '2018-08-23 17:49:12', '2018-08-23 17:49:12'),
(255, 4, 'img/producto/4_807 aqua entera 3.jpg', NULL, '2018-08-23 17:49:23', '2018-08-23 17:49:23'),
(256, 3, 'img/producto/3_658 JAGUAR 5.jpg', NULL, '2018-08-23 17:51:33', '2018-08-23 17:51:33'),
(262, 8, 'img/producto/8_454 S MAX 6.jpg', NULL, '2018-08-23 17:53:17', '2018-08-23 17:53:17'),
(263, 1, 'img/producto/1_454 HVLP BUHO 5.jpg', NULL, '2018-08-23 17:54:12', '2018-08-23 17:54:12'),
(264, 1, 'img/producto/1_BOQUILLA 454 BUHO.jpg', NULL, '2018-08-23 17:54:17', '2018-08-23 17:54:17'),
(265, 1, 'img/producto/1_REGULADOR 454 BUHO.jpg', NULL, '2018-08-23 17:54:24', '2018-08-23 17:54:24'),
(266, 1, 'img/producto/1_REGULADORES 454 BUHO.jpg', NULL, '2018-08-23 17:54:30', '2018-08-23 17:54:30'),
(267, 1, 'img/producto/1_BUHO 2.jpg', NULL, '2018-08-23 17:54:37', '2018-08-23 17:54:37'),
(268, 1, 'img/producto/1_454 buho entera 3.jpg', NULL, '2018-08-23 17:54:44', '2018-08-23 17:54:44'),
(269, 3, 'img/producto/3_658 DETALLE 2.jpg', NULL, '2018-08-23 17:55:10', '2018-08-23 17:55:10'),
(270, 3, 'img/producto/3_REGULADOR 658 JAGUAR.jpg', NULL, '2018-08-23 17:55:17', '2018-08-23 17:55:17'),
(271, 3, 'img/producto/3_REGULADORES 658 JAGUAR.jpg', NULL, '2018-08-23 17:55:30', '2018-08-23 17:55:30'),
(272, 3, 'img/producto/3_JAGUAR.jpg', NULL, '2018-08-23 17:55:35', '2018-08-23 17:55:35'),
(273, 3, 'img/producto/3_658 jaguar entera 3.jpg', NULL, '2018-08-23 17:55:41', '2018-08-23 17:55:41'),
(274, 23, 'img/producto/23_454 B MAX 3.jpg', NULL, '2018-08-23 17:56:13', '2018-08-23 17:56:13'),
(275, 11, 'img/producto/11_408 GOT 4.jpg', NULL, '2018-08-23 17:57:24', '2018-08-23 17:57:24'),
(276, 10, 'img/producto/10_404 GL 4.jpg', NULL, '2018-08-23 17:58:13', '2018-08-23 17:58:13'),
(277, 21, 'img/producto/21_404 TORO FONDOS 5.jpg', NULL, '2018-08-23 17:59:05', '2018-08-23 17:59:05'),
(278, 21, 'img/producto/21_BOQUILLA 404 toro.jpg', NULL, '2018-08-23 17:59:10', '2018-08-23 17:59:10'),
(279, 21, 'img/producto/21_regulador toro.jpg', NULL, '2018-08-23 17:59:17', '2018-08-23 17:59:17'),
(280, 21, 'img/producto/21_reguladores toro.jpg', NULL, '2018-08-23 17:59:25', '2018-08-23 17:59:25'),
(281, 21, 'img/producto/21_toro 2.jpg', NULL, '2018-08-23 17:59:31', '2018-08-23 17:59:31'),
(282, 21, 'img/producto/21_404 toro entera 3.jpg', NULL, '2018-08-23 17:59:39', '2018-08-23 17:59:39'),
(288, 36, 'img/producto/36_taza para 276.jpg', NULL, '2018-08-23 19:10:33', '2018-08-23 19:10:33'),
(290, 37, 'img/producto/37_deposito 5 litros.jpg', NULL, '2018-08-23 22:32:35', '2018-08-23 22:32:35'),
(292, 13, 'img/producto/13_TC 850 5.jpg', NULL, '2018-08-27 20:25:21', '2018-08-27 20:25:21'),
(294, 14, 'img/producto/14_TC 903 6.jpg', NULL, '2018-08-27 20:46:26', '2018-08-27 20:46:26'),
(295, 12, 'img/producto/12_TC 802 6.jpg', NULL, '2018-08-27 20:47:46', '2018-08-27 20:47:46'),
(296, 15, 'img/producto/15_505 T 7.jpg', NULL, '2018-08-27 20:48:02', '2018-08-27 20:48:02'),
(297, 16, 'img/producto/16_505 Tcr 8.jpg', NULL, '2018-08-27 20:49:09', '2018-08-27 20:49:09'),
(307, 50, 'img/producto/50_404 TORO FONDOS 5.jpg', NULL, '2018-08-30 19:38:49', '2018-08-30 19:38:49'),
(308, 50, 'img/producto/50_BOQUILLA 404 toro.jpg', NULL, '2018-09-11 19:14:46', '2018-09-11 19:14:46'),
(309, 50, 'img/producto/50_regulador toro.jpg', NULL, '2018-09-11 19:15:03', '2018-09-11 19:15:03'),
(310, 50, 'img/producto/50_reguladores toro.jpg', NULL, '2018-09-11 19:15:13', '2018-09-11 19:15:13'),
(311, 50, 'img/producto/50_toro 2.jpg', NULL, '2018-09-11 19:15:25', '2018-09-11 19:15:25'),
(312, 50, 'img/producto/50_404 toro entera 3.jpg', NULL, '2018-09-11 19:15:33', '2018-09-11 19:15:33'),
(313, 40, 'img/producto/40_FILTRO DE DEPOSITO DE GRAVEDAD.jpg', NULL, '2018-09-12 17:24:04', '2018-09-12 17:24:04'),
(314, 41, 'img/producto/41_FILTRO CAÑO DE PESCA.jpg', NULL, '2018-09-12 17:30:41', '2018-09-12 17:30:41'),
(315, 51, 'img/producto/51_FR 12 Y 14 2.jpg', NULL, '2018-09-13 17:29:50', '2018-09-13 17:29:50'),
(316, 48, 'img/producto/48_REGULADOR DIGITAL.jpg', NULL, '2018-10-01 17:47:36', '2018-10-01 17:47:36'),
(317, 49, 'img/producto/49_REGULADOR UNIVERSAL.jpg', NULL, '2018-10-01 17:49:00', '2018-10-01 17:49:00'),
(318, 47, 'img/producto/47_3030.jpg', NULL, '2018-10-01 17:50:38', '2018-10-01 17:50:38'),
(319, 46, 'img/producto/46_REGULADOR Q13.jpg', NULL, '2018-10-01 17:52:28', '2018-10-01 17:52:28'),
(320, 35, 'img/producto/35_TAZA COMPLETA.jpg', NULL, '2018-10-01 18:02:40', '2018-10-01 18:02:40'),
(324, 33, 'img/producto/33_Perno macho maer 1.jpg', NULL, '2018-10-01 18:12:14', '2018-10-01 18:12:14'),
(325, 42, 'img/producto/42_Manguera para turbo 1.jpg', NULL, '2018-10-01 18:12:30', '2018-10-01 18:12:30'),
(326, 43, 'img/producto/43_Manguera para turbo 1.jpg', NULL, '2018-10-01 18:12:51', '2018-10-01 18:12:51'),
(327, 44, 'img/producto/44_Manguera para turbo 1.jpg', NULL, '2018-10-01 18:13:12', '2018-10-01 18:13:12'),
(328, 32, 'img/producto/32_Perno hembra maer 1.jpg', NULL, '2018-10-01 18:15:32', '2018-10-01 18:15:32'),
(329, 25, 'img/producto/25_Acople 3-8 bsp 1.jpg', NULL, '2018-10-01 18:15:52', '2018-10-01 18:15:52'),
(332, 53, 'img/producto/53_IMG_20181003_162234.jpg', NULL, '2018-10-09 22:10:27', '2018-10-09 22:10:27'),
(333, 12, 'img/producto/12_TC 802 - Imagen Caja.jpg', NULL, '2019-01-02 22:24:07', '2019-01-02 22:24:07'),
(334, 13, 'img/producto/13_TC 850 - Imagen Caja.jpg', NULL, '2019-01-02 22:24:27', '2019-01-02 22:24:27'),
(335, 14, 'img/producto/14_TC 903 - Imagen Caja.jpg', NULL, '2019-01-02 22:24:46', '2019-01-02 22:24:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion` enum('home','videos','productos','empresa','calidad','novedades','contacto') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `seccion`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, 'home', 'maer, pistolas, cane, adiabatic, pintar, pintura, sistemas de pintar, sopletes', 'maer', '2018-07-28 20:54:45', '2018-10-04 21:25:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_08_180001_create_producto_relacionado', 1),
(4, '2018_02_09_141320_create_tiempos', 1),
(5, '2018_06_02_184911_add_banners_table', 1),
(6, '2018_06_07_030455_add_metadatos_table', 1),
(7, '2018_06_15_181359_add_catalogos_table', 1),
(8, '2018_06_15_181422_add_categorias_table', 1),
(9, '2018_06_15_181611_add_contenido_homes_table', 1),
(10, '2018_06_15_181641_add_destacado_homes_table', 1),
(11, '2018_06_15_181747_add_empresas_table', 1),
(12, '2018_06_15_182329_add_pedidos_table', 1),
(13, '2018_06_15_182354_add_redes_table', 1),
(14, '2018_06_15_182550_add_sliders_table', 1),
(15, '2018_06_18_130505_add_datos_table', 1),
(16, '2018_07_27_183117_create_contenido_calidad_table', 1),
(17, '2018_07_28_170807_create_rubros_table', 1),
(18, '2018_07_29_195545_create_modelos_table', 1),
(19, '2018_07_29_203430_create_productos_table', 1),
(20, '2018_07_30_012410_create_imgproductos_table', 1),
(21, '2018_07_30_022224_create_aplicaciones_table', 1),
(22, '2018_07_30_114235_create_categoria_preguntas_table', 1),
(23, '2018_07_30_114304_create_preguntas_table', 1),
(24, '2018_07_30_125212_alter_productos_table', 1),
(25, '2018_07_30_132657_create_videos_table', 1),
(26, '2018_07_30_152817_create_calidad_table', 1),
(27, '2018_07_30_153846_create_novedades_table', 1),
(28, '2018_07_30_170753_create_descuentos_table', 1),
(29, '2018_08_02_182825_alter_pedidos_table', 1),
(30, '2018_08_05_192035_create_categoria_novedades_table', 1),
(31, '2018_08_05_192419_alter_novedades_table', 1),
(32, '2018_08_07_181025_alter_relacionados_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medida` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `codigo`, `medida`, `created_at`, `updated_at`) VALUES
(2, '1202', 'Ø 1.4 mm', '2018-07-30 00:23:51', '2018-08-24 20:15:47'),
(3, '1203', 'Ø 1.8 mm', '2018-08-06 05:33:41', '2018-08-24 20:15:54'),
(4, '1212', 'Ø 1.3 mm', '2018-08-08 16:04:37', '2018-08-24 20:16:44'),
(5, '1214', 'Ø 1.4 mm', '2018-08-08 16:04:56', '2018-08-24 20:16:51'),
(6, '1216', 'Ø 1.3 mm', '2018-08-08 16:05:17', '2018-08-24 20:17:00'),
(7, '1218', 'Ø 1.3 mm', '2018-08-08 16:05:32', '2018-08-24 20:17:07'),
(8, '1205', 'Ø 1.4 mm', '2018-08-08 16:06:07', '2018-08-24 20:16:10'),
(9, '1206', 'Ø 1.8 mm', '2018-08-08 16:06:30', '2018-08-24 20:16:18'),
(10, '1207', 'Ø 2.2 mm', '2018-08-08 16:06:41', '2018-08-24 20:16:25'),
(11, '1208', 'Ø 3.0 mm', '2018-08-08 16:06:52', '2018-08-24 20:16:31'),
(12, '1080', 'Ø 1.3 mm', '2018-08-08 16:07:19', '2018-08-24 20:15:38'),
(13, '1037', 'Ø 0.6 mm', '2018-08-08 16:07:35', '2018-08-24 20:12:05'),
(14, '1038', 'Ø 1.0 mm', '2018-08-08 16:07:51', '2018-08-24 20:12:13'),
(15, '1003', 'Ø 1.75 mm', '2018-08-08 16:08:14', '2018-08-24 20:10:50'),
(16, '1008', 'Ø 1.6 mm', '2018-08-08 16:08:29', '2018-08-24 20:11:04'),
(17, '1030', 'Ø 1.00 mm', '2018-08-08 16:08:41', '2018-08-24 20:11:41'),
(18, '1033', 'Ø 1.00 mm', '2018-08-08 16:08:52', '2018-08-24 20:11:53'),
(19, '1026', 'Ø 2.0 mm', '2018-08-08 16:09:21', '2018-08-24 20:11:31'),
(20, '1018', '-', '2018-08-08 16:09:46', '2018-08-24 20:11:19'),
(21, '4002', '-', '2018-08-08 16:09:56', '2018-08-08 16:09:56'),
(22, '4005', '-', '2018-08-08 16:10:07', '2018-08-08 16:10:07'),
(23, '1002', '-', '2018-08-08 16:10:20', '2018-10-18 20:04:20'),
(24, '1070', '-', '2018-08-08 16:10:37', '2018-08-08 16:10:37'),
(25, '2003', '1/2\"', '2018-08-08 16:11:00', '2018-08-24 20:17:41'),
(26, '2001', '1/2\"', '2018-08-08 16:11:12', '2018-08-24 20:17:30'),
(27, '2005', '1/2\"', '2018-08-08 16:11:22', '2018-08-24 20:17:50'),
(28, '2006', '1/4\"', '2018-08-08 16:11:29', '2018-08-24 20:17:58'),
(29, '3002', '-', '2018-08-08 16:11:38', '2018-08-08 16:11:38'),
(30, '3003', '-', '2018-08-08 16:11:58', '2018-08-08 16:11:58'),
(31, '3006', '-', '2018-08-08 16:12:08', '2018-08-08 16:12:08'),
(32, '3005', '-', '2018-08-08 16:12:20', '2018-08-08 16:12:20'),
(33, '3007', '-', '2018-08-08 16:12:28', '2018-08-08 16:12:28'),
(34, '3009', '-', '2018-08-08 16:12:40', '2018-08-08 16:12:40'),
(35, '3010', '-', '2018-08-08 16:12:52', '2018-08-08 16:12:52'),
(36, '3030', '-', '2018-08-08 16:13:02', '2018-08-08 16:13:02'),
(37, '3016', '-', '2018-08-08 16:13:15', '2018-08-08 16:13:15'),
(38, '4003', '-', '2018-08-09 17:40:36', '2018-08-09 17:40:36'),
(39, '3020', '-', '2018-08-15 19:38:54', '2018-08-15 19:38:54'),
(40, '276-032', '-', '2018-08-15 19:39:11', '2018-08-15 19:39:11'),
(41, '408-003', '-', '2018-08-15 19:39:26', '2018-08-15 19:39:26'),
(42, '505-031', '-', '2018-08-15 19:39:44', '2018-08-15 19:39:44'),
(43, '801-001', '-', '2018-08-15 19:39:56', '2018-08-15 19:39:56'),
(44, '3015', '-', '2018-08-15 19:40:09', '2018-08-15 19:40:09'),
(45, '3020', '-', '2018-08-15 19:40:18', '2018-08-15 19:40:18'),
(46, 'TC 021', '-', '2018-08-15 19:40:38', '2018-08-15 19:40:38'),
(47, 'TC 031', '-', '2018-08-15 19:40:45', '2018-08-15 19:40:45'),
(48, 'TC 041', '-', '2018-08-15 19:40:53', '2018-08-15 19:40:53'),
(49, '3070', '-', '2018-08-16 22:19:52', '2018-08-16 22:19:52'),
(50, '1051', 'Ø 1.00 mm', '2018-08-24 20:09:24', '2018-08-24 20:12:27'),
(51, '1031', 'Ø 1.75 mm - Ø 2.50 mm', '2018-08-24 20:19:08', '2018-10-02 22:32:03'),
(52, '1040', 'Ø 1.00 mm', '2018-08-24 20:19:22', '2018-08-24 20:19:22'),
(53, '1041', 'Ø 1.00 mm', '2018-08-24 20:19:38', '2018-08-24 20:19:38'),
(54, '3026', '-', '2018-09-13 22:07:13', '2018-09-13 22:10:16'),
(55, '3028', '-', '2018-09-13 22:08:04', '2018-09-13 22:10:22'),
(56, '3022', '-', '2018-09-13 22:09:51', '2018-09-13 22:10:07'),
(57, '3024', '-', '2018-09-13 22:11:08', '2018-09-13 22:11:08'),
(58, '6001', '10 PRODUCTOS', '2018-10-09 22:09:37', '2018-10-09 22:26:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo_producto`
--

CREATE TABLE `modelo_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `modelo_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modelo_producto`
--

INSERT INTO `modelo_producto` (`id`, `modelo_id`, `producto_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 4, 1, NULL, NULL),
(4, 5, 1, NULL, NULL),
(5, 6, 3, NULL, NULL),
(6, 7, 4, NULL, NULL),
(7, 12, 5, NULL, NULL),
(8, 13, 6, NULL, NULL),
(9, 14, 6, NULL, NULL),
(10, 15, 7, NULL, NULL),
(11, 16, 8, NULL, NULL),
(12, 17, 9, NULL, NULL),
(13, 19, 10, NULL, NULL),
(14, 20, 11, NULL, NULL),
(15, 21, 12, NULL, NULL),
(16, 22, 13, NULL, NULL),
(18, 38, 14, NULL, NULL),
(19, 23, 15, NULL, NULL),
(20, 24, 16, NULL, NULL),
(21, 25, 17, NULL, NULL),
(25, 8, 21, NULL, NULL),
(26, 9, 21, NULL, NULL),
(27, 10, 21, NULL, NULL),
(28, 18, 23, NULL, NULL),
(29, 29, 24, NULL, NULL),
(30, 30, 25, NULL, NULL),
(31, 31, 32, NULL, NULL),
(36, 37, 35, NULL, NULL),
(41, 44, 40, NULL, NULL),
(42, 45, 41, NULL, NULL),
(44, 47, 43, NULL, NULL),
(45, 48, 44, NULL, NULL),
(46, 46, 42, NULL, NULL),
(47, 26, 45, NULL, NULL),
(48, 35, 46, NULL, NULL),
(49, 36, 47, NULL, NULL),
(50, 49, 48, NULL, NULL),
(51, 11, 21, NULL, NULL),
(52, 34, 49, NULL, NULL),
(58, 23, 29, NULL, NULL),
(59, 23, 28, NULL, NULL),
(60, 23, 27, NULL, NULL),
(61, 11, 50, NULL, NULL),
(62, 50, 30, NULL, NULL),
(63, 27, 20, NULL, NULL),
(64, 28, 51, NULL, NULL),
(65, 54, 36, NULL, NULL),
(66, 55, 37, NULL, NULL),
(67, 56, 39, NULL, NULL),
(68, 57, 38, NULL, NULL),
(69, 51, 31, NULL, NULL),
(70, 53, 22, NULL, NULL),
(71, 52, 26, NULL, NULL),
(73, 32, 33, NULL, NULL),
(75, 58, 53, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producto_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoria_novedad_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `nombre`, `fecha`, `descripcion`, `contenido`, `imagen1`, `imagen2`, `orden`, `producto_id`, `created_at`, `updated_at`, `categoria_novedad_id`) VALUES
(2, 'NUEVA LINEA DE PISTOLAS', '2018-10-03', '<p>Pistolas m&aacute;s livianas y ergon&oacute;micas.</p>\r\n\r\n<p>Mecanizadas sobre un mismo eje.</p>\r\n\r\n<p>Mayor precisi&oacute;n y suavidad al trabajo.</p>\r\n\r\n<p>Gatillos de acero inoxidable.</p>\r\n\r\n<p>Prensaestopas autoajustables de acero inoxidable.</p>', '<p>Tenemos la felicidad de presentar la NUEVA linea de pistolas destinadas al rubro automotor.</p>', 'img/novedades/2_1_sliderhome.jpg', 'img/novedades/2_1_sliderhome.jpg', 'aa', 21, '2018-08-06 01:15:52', '2018-10-11 21:28:18', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `iva` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descuento_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `fecha`, `iva`, `subtotal`, `total`, `user_id`, `created_at`, `updated_at`, `descuento_id`) VALUES
(29, '2018-08-13', '4,181.00', '24171.00', '20375.565', 8, '2018-08-13 22:29:51', '2018-08-13 22:29:51', 5),
(41, '2018-08-27', '7,154.10', '68134.31', '75288.41255', 8, '2018-08-27 21:45:10', '2018-08-27 21:45:10', 5),
(42, '2018-08-30', '8,286.44', '78918.45', '87204.88725', 8, '2018-08-30 18:28:46', '2018-08-30 18:28:46', 6),
(43, '2018-08-31', '8,253.81', '78607.75', '86861.56375', 8, '2018-08-31 20:26:50', '2018-08-31 20:26:50', 6),
(44, '2018-09-07', '2,051.71', '19540.08', '21591.7884', 8, '2018-09-07 18:13:39', '2018-09-07 18:13:39', 4),
(45, '2018-09-07', '4,540.31', '39150', '43690.3092', 8, '2018-09-07 18:16:11', '2018-09-07 18:16:11', 4),
(46, '2018-09-07', '611.86', '5827.2', '6439.056', 8, '2018-09-07 18:20:54', '2018-09-07 18:20:54', 2),
(47, '2018-09-07', '611.86', '5827.2', '6439.056', 8, '2018-09-07 18:20:55', '2018-09-07 18:20:55', 2),
(48, '2018-09-10', '611.86', '5827.2', '6439.056', 8, '2018-09-10 18:41:46', '2018-09-10 18:41:46', 2),
(49, '2018-09-11', '757.89', '3609', '4366.89', 8, '2018-09-11 15:58:36', '2018-09-11 15:58:36', NULL),
(50, '2018-09-11', '1,147.23', '10926', '12073.23', 8, '2018-09-11 18:51:04', '2018-09-11 18:51:04', 3),
(51, '2018-09-11', '9,540.60', '90862.85', '100403.44925', 8, '2018-09-12 02:33:23', '2018-09-12 02:33:23', 6),
(52, '2018-09-12', '1,720.85', '16389', '18109.845', 8, '2018-09-12 17:03:51', '2018-09-12 17:03:51', 3),
(55, '2018-09-12', '1,944.57', '18519.75', '20464.32375', 8, '2018-09-12 17:17:08', '2018-09-12 17:17:08', 3),
(57, '2018-09-12', '1,179.83', '11081.25', '12261.0825', 8, '2018-09-12 17:35:57', '2018-09-12 17:35:57', 3),
(58, '2018-09-12', '611.86', '5827.2', '6439.056', 8, '2018-09-12 17:38:46', '2018-09-12 17:38:46', 2),
(59, '2018-09-12', '1,840.23', '17526', '19366.23', 8, '2018-09-12 17:47:58', '2018-09-12 17:47:58', 3),
(60, '2018-09-12', '611.86', '5827.2', '6439.056', 8, '2018-09-12 17:49:34', '2018-09-12 17:49:34', 2),
(61, '2018-09-12', '611.86', '5827.2', '6439.056', 8, '2018-09-12 17:49:34', '2018-09-12 17:49:34', 2),
(76, '2018-09-13', '102.98', '490.4', '593.384', 8, '2018-09-13 16:20:58', '2018-09-13 16:20:58', 2),
(77, '2018-09-13', '8,677.03', '82638.4', '91315.432', 8, '2018-09-13 16:38:51', '2018-09-13 16:38:51', 6),
(78, '2018-09-18', '2,030.57', '19338.75', '21369.31875', 8, '2018-09-18 17:11:07', '2018-09-18 17:11:07', 3),
(79, '2018-09-19', '1,628.71', '15511.5', '17140.2075', 8, '2018-09-19 17:42:33', '2018-09-19 17:42:33', 3),
(80, '2018-09-19', '13,273.67', '116731.55', '130005.2195', 8, '2018-09-19 17:51:38', '2018-09-19 17:51:38', 6),
(81, '2018-09-19', '34,233.18', '326030.25', '360263.42625', 8, '2018-09-19 21:20:25', '2018-09-19 21:20:25', 6),
(105, '2018-09-21', '4,623.62', '44034.48', '48658.1004', 8, '2018-09-21 16:44:35', '2018-09-21 16:44:35', 4),
(113, '2018-09-24', '8,191.91', '78018.15', '86210.05575', 8, '2018-09-24 20:28:48', '2018-09-24 20:28:48', 5),
(116, '2018-09-27', '23,393.17', '194506', '217899.16525', 8, '2018-09-27 21:40:52', '2018-09-27 21:40:52', 6),
(117, '2018-09-27', '3,248.91', '30942', '34190.91', 8, '2018-09-27 22:45:00', '2018-09-27 22:45:00', 4),
(118, '2018-09-28', '1,283.55', '10064.25', '11347.79625', 8, '2018-09-28 16:19:16', '2018-09-28 16:19:16', 3),
(119, '2018-09-28', '3,713.01', '17681', '21394.01', 8, '2018-09-28 20:45:24', '2018-09-28 20:45:24', NULL),
(120, '2018-10-01', '78.79', '375.2', '453.992', 8, '2018-10-01 17:33:03', '2018-10-01 17:33:03', 2),
(123, '2018-10-05', '2,453.45', '23366.16', '25819.6068', 8, '2018-10-06 01:36:38', '2018-10-06 01:36:38', 4),
(126, '2018-10-18', '3,833.30', '36507.6', '40340.898', 8, '2018-10-18 22:36:02', '2018-10-18 22:36:02', 4),
(128, '2018-10-19', '4,804.20', '45754.3', '50558.5015', 8, '2018-10-19 14:50:27', '2018-10-19 14:50:27', 5),
(129, '2018-10-19', '3,694.80', '35188.56', '38883.3588', 8, '2018-10-19 14:53:51', '2018-10-19 14:53:51', 4),
(130, '2018-10-19', '2,583.93', '24608.88', '27192.8124', 8, '2018-10-19 14:56:01', '2018-10-19 14:56:01', 4),
(138, '2018-10-19', '5,511.79', '52493.25', '58005.04125', 8, '2018-10-19 15:56:22', '2018-10-19 15:56:22', 3),
(141, '2018-10-21', '30,570.17', '287947.24', '318517.4104', 35, '2018-10-21 03:05:05', '2018-10-21 03:05:05', 5),
(142, '2018-10-21', '8,974.13', '82270.64', '91244.7674', 35, '2018-10-21 03:14:46', '2018-10-21 03:14:46', 5),
(143, '2018-10-22', '3,106.25', '29583.36', '32689.6128', 104, '2018-10-22 15:59:24', '2018-10-22 15:59:24', 4),
(144, '2018-10-22', '3,106.25', '29583.36', '32689.6128', 104, '2018-10-22 15:59:26', '2018-10-22 15:59:26', 4),
(145, '2018-10-22', '3,106.25', '29583.36', '32689.6128', 104, '2018-10-22 15:59:29', '2018-10-22 15:59:29', 4),
(146, '2018-10-22', '22,079.06', '210276.72', '232355.7756', 8, '2018-10-22 18:14:42', '2018-10-22 18:14:42', 4),
(147, '2018-10-22', '4,786.08', '45581.76', '50367.8448', 8, '2018-10-22 22:50:26', '2018-10-22 22:50:26', 4),
(148, '2018-10-25', '1,962.45', '18690', '20652.45', 4, '2018-10-25 17:14:10', '2018-10-25 17:14:10', 3),
(149, '2018-10-31', '3,242.64', '30882.24', '34124.8752', 221, '2018-10-31 16:14:51', '2018-10-31 16:14:51', 4),
(150, '2018-10-31', '3,242.64', '30882.24', '34124.8752', 221, '2018-10-31 16:14:52', '2018-10-31 16:14:52', 4),
(151, '2018-10-31', '3,242.64', '30882.24', '34124.8752', 221, '2018-10-31 16:14:53', '2018-10-31 16:14:53', 4),
(152, '2018-11-01', '2,469.60', '23520', '25989.6', 19, '2018-11-01 19:49:53', '2018-11-01 19:49:53', 3),
(153, '2018-11-06', '1,066.43', '9237.75', '10304.1825', 45, '2018-11-07 00:03:17', '2018-11-07 00:03:17', 3),
(154, '2018-11-06', '1,066.43', '9237.75', '10304.1825', 45, '2018-11-07 00:03:43', '2018-11-07 00:03:43', 3),
(155, '2018-11-08', '10,311.14', '95221.1', '105532.24175', 357, '2018-11-09 01:14:26', '2018-11-09 01:14:26', 6),
(156, '2018-11-08', '10,311.14', '95221.1', '105532.24175', 357, '2018-11-09 01:18:28', '2018-11-09 01:18:28', 6),
(157, '2018-11-08', '10,311.14', '95221.1', '105532.24175', 357, '2018-11-09 01:18:59', '2018-11-09 01:18:59', 6),
(158, '2018-11-08', '5,157.26', '49116.8', '54274.064', 8, '2018-11-09 01:40:36', '2018-11-09 01:40:36', 2),
(159, '2018-11-08', '15,873.96', '151180.56', '167054.5188', 8, '2018-11-09 01:52:03', '2018-11-09 01:52:03', 4),
(160, '2018-11-08', '5,474.92', '45747.6', '51222.5184', 371, '2018-11-09 02:12:33', '2018-11-09 02:12:33', 5),
(161, '2018-11-08', '5,474.92', '45747.6', '51222.5184', 371, '2018-11-09 02:13:34', '2018-11-09 02:13:34', 5),
(162, '2018-11-09', '721.98', '6876', '7597.98', 377, '2018-11-09 14:57:24', '2018-11-09 14:57:24', 2),
(163, '2018-11-09', '721.98', '6876', '7597.98', 377, '2018-11-09 14:59:00', '2018-11-09 14:59:00', 2),
(164, '2018-11-09', '1,353.71', '12892.5', '14246.2125', 8, '2018-11-09 15:05:23', '2018-11-09 15:05:23', 3),
(165, '2018-11-09', '1,353.71', '12892.5', '14246.2125', 8, '2018-11-09 15:54:50', '2018-11-09 15:54:50', 3),
(166, '2018-11-09', '5,198.26', '49507.2', '54705.456', 8, '2018-11-09 16:10:39', '2018-11-09 16:10:39', 4),
(167, '2018-11-09', '5,157.26', '49116.8', '54274.064', 8, '2018-11-09 16:24:31', '2018-11-09 16:24:31', 2),
(168, '2018-11-09', '6,463.64', '61558.5', '68022.1425', 378, '2018-11-09 16:27:19', '2018-11-09 16:27:19', 3),
(169, '2018-11-09', '4,548.47', '43318.8', '47867.274', 8, '2018-11-09 16:33:52', '2018-11-09 16:33:52', 4),
(170, '2018-11-09', '9,669.87', '92094', '101763.87', 378, '2018-11-09 17:41:10', '2018-11-09 17:41:10', 3),
(171, '2018-11-12', '721.98', '6876', '7597.98', 8, '2018-11-12 14:36:07', '2018-11-12 14:36:07', 2),
(172, '2018-11-12', '9,032.00', '86019.05', '95051.05025', 365, '2018-11-12 18:53:37', '2018-11-12 18:53:37', 6),
(173, '2018-11-12', '14,504.81', '138141', '152645.805', 378, '2018-11-12 21:00:33', '2018-11-12 21:00:33', 3),
(174, '2018-11-13', '1,353.71', '12892.5', '14246.2125', 378, '2018-11-13 19:19:18', '2018-11-13 19:19:18', 3),
(175, '2018-11-13', '1,144.63', '10901.25', '12045.88125', 284, '2018-11-13 20:34:03', '2018-11-13 20:34:03', 3),
(176, '2018-11-13', '367.92', '1752', '2119.92', 265, '2018-11-13 20:35:50', '2018-11-13 20:35:50', 2),
(177, '2018-11-13', '983.90', '9370.5', '10354.4025', 282, '2018-11-13 20:37:48', '2018-11-13 20:37:48', 3),
(178, '2018-11-14', '8,603.88', '81941.67', '90545.54535', 356, '2018-11-14 14:51:17', '2018-11-14 14:51:17', 5),
(179, '2018-11-14', '14,504.81', '138141', '152645.805', 378, '2018-11-14 22:47:32', '2018-11-14 22:47:32', 3),
(180, '2018-11-26', '9,669.87', '92094', '101763.87', 20, '2018-11-26 21:21:35', '2018-11-26 21:21:35', 3),
(181, '2018-11-26', '9,669.87', '92094', '101763.87', 20, '2018-11-26 21:22:41', '2018-11-26 21:22:41', 3),
(182, '2018-11-26', '6,188.65', '58939.5', '65128.1475', 8, '2018-11-26 21:22:55', '2018-11-26 21:22:55', 3),
(183, '2018-11-26', '10,160.48', '96766.5', '106926.9825', 378, '2018-11-26 21:31:40', '2018-11-26 21:31:40', 3),
(184, '2018-11-26', '5,157.26', '49116.8', '54274.064', 8, '2018-11-26 21:34:54', '2018-11-26 21:34:54', 2),
(185, '2018-11-26', '3,962.50', '37738.08', '41700.5784', 383, '2018-11-26 21:41:01', '2018-11-26 21:41:01', 4),
(186, '2018-11-26', '5,157.26', '49116.8', '54274.064', 8, '2018-11-26 22:34:09', '2018-11-26 22:34:09', 2),
(187, '2018-11-27', '9,669.87', '92094', '101763.87', 8, '2018-11-27 14:29:50', '2018-11-27 14:29:50', 3),
(188, '2018-11-27', '28,983.22', '276030.62', '305013.8351', 8, '2018-11-27 15:07:54', '2018-11-27 15:07:54', 5),
(189, '2018-11-27', '4,186.35', '39870', '44056.35', 8, '2018-11-27 15:12:50', '2018-11-27 15:12:50', 4),
(190, '2018-11-27', '2,030.57', '19338.75', '21369.31875', 8, '2018-11-27 16:46:02', '2018-11-27 16:46:02', 3),
(191, '2018-11-27', '2,030.57', '19338.75', '21369.31875', 8, '2018-11-27 17:36:12', '2018-11-27 17:36:12', 3),
(192, '2018-11-27', '9,669.87', '92094', '101763.87', 8, '2018-11-27 17:57:48', '2018-11-27 17:57:48', 3),
(193, '2018-11-27', '1,353.71', '12892.5', '14246.2125', 8, '2018-11-27 17:58:32', '2018-11-27 17:58:32', 3),
(194, '2018-11-27', '2,707.43', '25785', '28492.425', 8, '2018-11-27 18:34:19', '2018-11-27 18:34:19', 3),
(195, '2018-11-27', '2,707.43', '25785', '28492.425', 8, '2018-11-27 18:38:08', '2018-11-27 18:38:08', 3),
(196, '2018-11-27', '2,707.43', '25785', '28492.425', 8, '2018-11-27 18:38:58', '2018-11-27 18:38:58', 3),
(197, '2018-11-27', '2,707.43', '25785', '28492.425', 8, '2018-11-27 18:39:59', '2018-11-27 18:39:59', 3),
(198, '2018-11-27', '2,707.43', '25785', '28492.425', 8, '2018-11-27 18:41:09', '2018-11-27 18:41:09', 3),
(199, '2018-11-27', '5,157.26', '49116.8', '54274.064', 8, '2018-11-27 20:04:46', '2018-11-27 20:04:46', 2),
(200, '2018-11-27', '9,669.87', '92094', '101763.87', 8, '2018-11-27 20:10:06', '2018-11-27 20:10:06', 3),
(201, '2018-11-27', '4,190.28', '39907.4', '44097.677', 8, '2018-11-27 20:56:25', '2018-11-27 20:56:25', 6),
(202, '2018-11-30', '721.98', '6876', '7597.98', 8, '2018-11-30 16:04:06', '2018-11-30 16:04:06', 2),
(203, '2018-12-04', '12,153.89', '98361.9', '110515.79175', 8, '2018-12-04 18:58:23', '2018-12-04 18:58:23', 6),
(204, '2018-12-05', '15,614.37', '148708.3', '164322.6715', 387, '2018-12-06 02:10:09', '2018-12-06 02:10:09', 6),
(205, '2018-12-05', '18,235.72', '173673.5', '191909.2175', 387, '2018-12-06 02:11:54', '2018-12-06 02:11:54', 6),
(206, '2018-12-12', '10,045.92', '95675.45', '105721.37225', 365, '2018-12-12 16:38:05', '2018-12-12 16:38:05', 6),
(207, '2018-12-18', '1,454.99', '13147.5', '14602.485', 360, '2018-12-18 17:04:46', '2018-12-18 17:04:46', 3),
(208, '2018-12-19', '2,143.71', '20416.32', '22560.0336', 218, '2018-12-19 15:22:05', '2018-12-19 15:22:05', 4),
(209, '2018-12-27', '303.91', '2894.4', '3198.312', 273, '2018-12-27 23:16:19', '2018-12-27 23:16:19', 2),
(210, '2019-01-07', '1,656.66', '15777.75', '17434.41375', 265, '2019-01-07 17:02:12', '2019-01-07 17:02:12', 3),
(211, '2019-01-07', '1,837.87', '17503.5', '19341.3675', 298, '2019-01-07 17:03:33', '2019-01-07 17:03:33', 3),
(212, '2019-01-07', '637.09', '6067.5', '6704.5875', 399, '2019-01-07 22:03:02', '2019-01-07 22:03:02', 3),
(213, '2019-01-11', '8,538.62', '81320.2', '89858.821', 365, '2019-01-11 15:23:29', '2019-01-11 15:23:29', 6),
(214, '2019-01-22', '2,288.08', '21791.25', '24079.33125', 365, '2019-01-22 15:26:06', '2019-01-22 15:26:06', 3),
(215, '2019-01-23', '19,494.52', '185662.08', '205156.5984', 332, '2019-01-23 20:20:31', '2019-01-23 20:20:31', 4),
(216, '2019-01-28', '9,000.74', '85721.35', '94722.09175', 365, '2019-01-28 14:46:13', '2019-01-28 14:46:13', 6),
(217, '2019-01-28', '256.70', '1222.4', '1479.104', 365, '2019-01-28 15:32:13', '2019-01-28 15:32:13', 2),
(218, '2019-02-07', '2,066.09', '19677', '21743.085', 96, '2019-02-07 17:54:52', '2019-02-07 17:54:52', 3),
(219, '2019-02-28', '637.09', '6067.5', '6704.5875', 332, '2019-02-28 20:53:24', '2019-02-28 20:53:24', 3),
(220, '2019-03-11', '2,289.24', '21802.32', '24091.5636', 199, '2019-03-11 14:15:47', '2019-03-11 14:15:47', 4),
(221, '2019-03-11', '2,289.24', '21802.32', '24091.5636', 199, '2019-03-11 14:15:48', '2019-03-11 14:15:48', 4),
(222, '2019-03-15', '18,841.37', '161690.1', '180531.468', 73, '2019-03-15 16:29:19', '2019-03-15 16:29:19', 6),
(223, '2019-03-15', '7,159.80', '62548.52', '69708.3209', 221, '2019-03-15 16:48:14', '2019-03-15 16:48:14', 5),
(224, '2019-03-15', '10,798.16', '98747.95', '109546.1122', 341, '2019-03-15 17:17:59', '2019-03-15 17:17:59', 5),
(225, '2019-03-18', '1,140.14', '10858.5', '11998.6425', 265, '2019-03-18 16:04:40', '2019-03-18 16:04:40', 3),
(226, '2019-03-18', '9,938.91', '94656.26', '104595.1673', 341, '2019-03-18 16:05:52', '2019-03-18 16:05:52', 5),
(227, '2019-03-18', '5,546.82', '52826.82', '58373.6361', 308, '2019-03-18 16:06:56', '2019-03-18 16:06:56', 5),
(228, '2019-03-18', '13,877.61', '132167.75', '146045.36375', 73, '2019-03-18 16:11:05', '2019-03-18 16:11:05', 6),
(229, '2019-03-18', '1,828.89', '17418', '19246.89', 32, '2019-03-18 16:11:54', '2019-03-18 16:11:54', 3),
(230, '2019-03-18', '603.96', '5752', '6355.96', 282, '2019-03-18 16:12:25', '2019-03-18 16:12:25', 2),
(231, '2019-03-18', '4,873.63', '46415.52', '51289.1496', 340, '2019-03-18 16:12:51', '2019-03-18 16:12:51', 4),
(232, '2019-03-18', '9,747.26', '92831.04', '102578.2992', 335, '2019-03-18 16:13:29', '2019-03-18 16:13:29', 4),
(233, '2019-03-18', '608.08', '5791.2', '6399.276', 360, '2019-03-18 16:14:28', '2019-03-18 16:14:28', 2),
(234, '2019-03-18', '4,873.63', '46415.52', '51289.1496', 330, '2019-03-18 16:15:22', '2019-03-18 16:15:22', 4),
(235, '2019-03-18', '1,030.37', '9813', '10843.365', 215, '2019-03-18 16:16:18', '2019-03-18 16:16:18', 3),
(236, '2019-03-18', '8,151.88', '77636.92', '85788.7966', 187, '2019-03-18 16:20:12', '2019-03-18 16:20:12', 5),
(237, '2019-03-18', '4,873.63', '46415.52', '51289.1496', 333, '2019-03-18 16:21:00', '2019-03-18 16:21:00', 4),
(238, '2019-03-18', '4,873.63', '46415.52', '51289.1496', 424, '2019-03-18 16:27:49', '2019-03-18 16:27:49', 4),
(239, '2019-04-01', '1,095.10', '10429.5', '11524.5975', 280, '2019-04-01 16:00:18', '2019-04-01 16:00:18', 3),
(240, '2019-04-11', '2,933.13', '27934.56', '30867.6888', 126, '2019-04-11 15:33:44', '2019-04-11 15:33:44', 4),
(241, '2019-04-12', '9,341.51', '88966.8', '98308.314', 284, '2019-04-12 21:42:52', '2019-04-12 21:42:52', 6),
(242, '2019-04-12', '5,117.29', '48736.08', '53853.3684', 309, '2019-04-12 21:43:42', '2019-04-12 21:43:42', 4),
(243, '2019-04-12', '1,204.40', '11470.5', '12674.9025', 123, '2019-04-12 21:44:45', '2019-04-12 21:44:45', 3),
(244, '2019-04-12', '10,234.58', '97472.16', '107706.7368', 334, '2019-04-12 21:45:25', '2019-04-12 21:45:25', 4),
(245, '2019-04-15', '563.64', '5368', '5931.64', 335, '2019-04-15 22:37:41', '2019-04-15 22:37:41', 2),
(246, '2019-04-16', '1,033.36', '9841.5', '10874.8575', 29, '2019-04-16 18:23:36', '2019-04-16 18:23:36', 3),
(247, '2019-04-22', '5,073.64', '48320.4', '53394.042', 365, '2019-04-22 17:44:15', '2019-04-22 17:44:15', 5),
(248, '2019-04-23', '2,844.60', '27091.44', '29936.0412', 340, '2019-04-23 22:48:27', '2019-04-23 22:48:27', 4),
(249, '2019-05-09', '5,683.83', '54131.76', '59815.5948', 341, '2019-05-09 15:54:28', '2019-05-09 15:54:28', 4),
(250, '2019-05-09', '5,683.83', '54131.76', '59815.5948', 341, '2019-05-09 15:54:55', '2019-05-09 15:54:55', 4),
(251, '2019-05-09', '10,234.58', '97472.16', '107706.7368', 326, '2019-05-09 16:47:14', '2019-05-09 16:47:14', 4),
(252, '2019-05-09', '10,234.58', '97472.16', '107706.7368', 326, '2019-05-09 16:51:11', '2019-05-09 16:51:11', 4),
(253, '2019-05-09', '10,234.58', '97472.16', '107706.7368', 326, '2019-05-09 16:57:20', '2019-05-09 16:57:20', 4),
(254, '2019-05-09', '5,683.83', '54131.76', '59815.5948', 341, '2019-05-09 17:02:45', '2019-05-09 17:02:45', 4),
(255, '2019-05-09', '6,142.89', '58503.73', '64646.62165', 217, '2019-05-09 17:04:45', '2019-05-09 17:04:45', 5),
(256, '2019-05-09', '1,200.31', '11431.5', '12631.8075', 349, '2019-05-09 17:06:03', '2019-05-09 17:06:03', 3),
(257, '2019-05-09', '27,772.56', '243783.8', '271556.363', 23, '2019-05-09 17:10:18', '2019-05-09 17:10:18', 6),
(258, '2019-05-09', '3,611.87', '34398.72', '38010.5856', 184, '2019-05-09 17:11:22', '2019-05-09 17:11:22', 4),
(259, '2019-05-10', '8,891.68', '84682.65', '93574.32825', 365, '2019-05-11 01:04:06', '2019-05-11 01:04:06', 6),
(260, '2019-05-13', '8,891.68', '84682.65', '93574.32825', 365, '2019-05-13 15:47:48', '2019-05-13 15:47:48', 6),
(261, '2019-05-13', '9,010.64', '85815.61', '94826.24905', 441, '2019-05-13 17:02:15', '2019-05-13 17:02:15', 5),
(262, '2019-05-21', '1,273.86', '12132', '13405.86', 135, '2019-05-21 16:09:11', '2019-05-21 16:09:11', 3),
(263, '2019-05-21', '5,897.51', '56166.77', '62064.28085', 104, '2019-05-21 16:13:20', '2019-05-21 16:13:20', 5),
(264, '2019-05-21', '3,742.65', '35644.32', '39386.9736', 8, '2019-05-21 18:16:38', '2019-05-21 18:16:38', 4),
(265, '2019-05-21', '15,957.94', '151980.4', '167938.342', 365, '2019-05-21 20:41:07', '2019-05-21 20:41:07', 6),
(266, '2019-05-24', '6,415.26', '53448.48', '59863.7448', 319, '2019-05-24 20:40:25', '2019-05-24 20:40:25', 4),
(267, '2019-05-24', '3,081.30', '29345.76', '32427.0648', 340, '2019-05-24 20:58:45', '2019-05-24 20:58:45', 4),
(268, '2019-06-03', '6,178.70', '58844.76', '65023.4598', 152, '2019-06-03 16:09:22', '2019-06-03 16:09:22', 5),
(269, '2019-06-03', '3,859.23', '35501.76', '39360.9888', 221, '2019-06-03 16:10:44', '2019-06-03 16:10:44', 4),
(270, '2019-06-03', '1,747.38', '16641.75', '18389.13375', 91, '2019-06-03 16:17:25', '2019-06-03 16:17:25', 3),
(271, '2019-06-13', '6,027.80', '57407.61', '63435.40905', 99, '2019-06-13 23:11:43', '2019-06-13 23:11:43', 5),
(272, '2019-06-13', '3,110.47', '29623.5', '32733.9675', 307, '2019-06-13 23:12:43', '2019-06-13 23:12:43', 3),
(273, '2019-06-21', '683.09', '6505.6', '7188.688', 365, '2019-06-21 18:37:39', '2019-06-21 18:37:39', 2),
(274, '2019-06-21', '8,235.10', '73806.53', '82041.63065', 20, '2019-06-21 21:22:23', '2019-06-21 21:22:23', 5),
(275, '2019-06-26', '6,299.14', '59991.8', '66290.939', 99, '2019-06-26 20:58:41', '2019-06-26 20:58:41', 5),
(276, '2019-06-28', '3,882.82', '36979.2', '40862.016', 407, '2019-06-28 16:19:33', '2019-06-28 16:19:33', 4),
(277, '2019-07-05', '11,051.59', '105253.2', '116304.786', 365, '2019-07-05 16:13:27', '2019-07-05 16:13:27', 6),
(278, '2019-07-10', '2,674.58', '25472.16', '28146.7368', 126, '2019-07-10 23:02:21', '2019-07-10 23:02:21', 4),
(279, '2019-07-11', '448.98', '4276', '4724.98', 348, '2019-07-11 16:20:17', '2019-07-11 16:20:17', 2),
(280, '2019-07-11', '1,218.42', '11604', '12822.42', 353, '2019-07-11 16:21:01', '2019-07-11 16:21:01', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `pedido_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medida` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iva` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido_producto`
--

INSERT INTO `pedido_producto` (`id`, `pedido_id`, `producto_id`, `codigo`, `medida`, `cantidad`, `costo`, `iva`, `total`, `created_at`, `updated_at`) VALUES
(62, 29, 4, NULL, NULL, '2', '14568', '3059.2799999999997', '17627.28', NULL, NULL),
(63, 29, 2, NULL, NULL, '9', '1080', '226.79999999999998', '1306.8', NULL, NULL),
(64, 29, 17, NULL, NULL, '3', '8523', '894.915', '9417.915', NULL, NULL),
(83, 41, 4, NULL, NULL, '1', '7284', '764.8199999999999', '8048.82', NULL, NULL),
(84, 41, 3, NULL, NULL, '2', '11684', '1226.82', '12910.82', NULL, NULL),
(85, 41, 1, NULL, NULL, '3', '17409', '1827.945', '19236.945', NULL, NULL),
(86, 41, 1, NULL, NULL, '4', '23212', '2437.2599999999998', '25649.26', NULL, NULL),
(87, 41, 21, NULL, NULL, '5', '26470', '2779.35', '29249.35', NULL, NULL),
(88, 41, 12, NULL, NULL, '2', '15634', '1641.57', '17275.57', NULL, NULL),
(89, 42, 4, NULL, NULL, '1', '7284', '764.8199999999999', '8048.82', NULL, NULL),
(90, 42, 3, NULL, NULL, '2', '11684', '1226.82', '12910.82', NULL, NULL),
(91, 42, 1, NULL, NULL, '2', '11606', '1218.6299999999999', '12824.63', NULL, NULL),
(92, 42, 1, NULL, NULL, '1', '5803', '609.3149999999999', '6412.315', NULL, NULL),
(93, 42, 21, NULL, NULL, '1', '5294', '555.87', '5849.87', NULL, NULL),
(94, 42, 5, NULL, NULL, '8', '32840', '3448.2', '36288.2', NULL, NULL),
(95, 42, 12, NULL, NULL, '6', '46902', '4924.71', '51826.71', NULL, NULL),
(96, 43, 4, NULL, NULL, '4', '29136', '3059.2799999999997', '32195.28', NULL, NULL),
(97, 43, 3, NULL, NULL, '2', '11684', '1226.82', '12910.82', NULL, NULL),
(98, 43, 1, NULL, NULL, '5', '29015', '3046.575', '32061.575', NULL, NULL),
(99, 43, 21, NULL, NULL, '5', '26470', '2779.35', '29249.35', NULL, NULL),
(100, 43, 5, NULL, NULL, '6', '24630', '2586.15', '27216.15', NULL, NULL),
(101, 44, 4, NULL, NULL, '1', '7284', '764.8199999999999', '8048.82', NULL, NULL),
(102, 44, 3, NULL, NULL, '1', '5842', '613.41', '6455.41', NULL, NULL),
(103, 44, 1, NULL, NULL, '1', '5803', '609.3149999999999', '6412.315', NULL, NULL),
(104, 44, 5, NULL, NULL, '2', '8210', '862.05', '9072.05', NULL, NULL),
(105, 45, 4, NULL, NULL, '1', '7284', '764.8199999999999', '8048.82', NULL, NULL),
(106, 45, 3, NULL, NULL, '2', '11684', '1226.82', '12910.82', NULL, NULL),
(107, 45, 21, NULL, NULL, '2', '10588', '1111.74', '11699.74', NULL, NULL),
(108, 45, 5, NULL, NULL, '2', '8210', '862.05', '9072.05', NULL, NULL),
(109, 45, 14, NULL, NULL, '1', '10927', '1147.335', '12074.335', NULL, NULL),
(110, 45, 17, NULL, NULL, '2', '5682', '1193.22', '6875.22', NULL, NULL),
(111, 46, 4, NULL, NULL, '1', '7284', '764.8199999999999', '8048.82', NULL, NULL),
(112, 47, 4, NULL, NULL, '1', '7284', '764.8199999999999', '8048.82', NULL, NULL),
(113, 48, 4, NULL, NULL, '1', '7284', '764.8199999999999', '8048.82', NULL, NULL),
(114, 49, 39, NULL, NULL, '3', '2040', '428.4', '2468.4', NULL, NULL),
(115, 49, 36, NULL, NULL, '3', '1569', '329.49', '1898.49', NULL, NULL),
(116, 50, 4, NULL, NULL, '2', '14568', '1529.6399999999999', '16097.64', NULL, NULL),
(117, 51, 4, NULL, NULL, '5', '36420', '3824.1', '40244.1', NULL, NULL),
(118, 51, 3, NULL, NULL, '2', '11684', '1226.82', '12910.82', NULL, NULL),
(119, 51, 1, NULL, NULL, '1', '5803', '609.3149999999999', '6412.315', NULL, NULL),
(120, 51, 21, NULL, NULL, '2', '10588', '1111.74', '11699.74', NULL, NULL),
(121, 51, 5, NULL, NULL, '2', '8210', '862.05', '9072.05', NULL, NULL),
(122, 51, 12, NULL, NULL, '2', '15634', '1641.57', '17275.57', NULL, NULL),
(123, 51, 13, NULL, NULL, '2', '18726', '1966.23', '20692.23', NULL, NULL),
(124, 51, 14, NULL, NULL, '2', '21854', '2294.67', '24148.67', NULL, NULL),
(125, 51, 6, NULL, NULL, '1', '3803', '399.315', '4202.315', NULL, NULL),
(126, 51, 6, NULL, NULL, '1', '3803', '399.315', '4202.315', NULL, NULL),
(127, 51, 11, NULL, NULL, '1', '3264', '342.71999999999997', '3606.72', NULL, NULL),
(128, 52, 4, NULL, NULL, '3', '21852', '2294.46', '24146.46', NULL, NULL),
(132, 55, 4, NULL, NULL, '1', '7284', '764.8199999999999', '8048.82', NULL, NULL),
(133, 55, 1, NULL, NULL, '3', '17409', '1827.945', '19236.945', NULL, NULL),
(142, 138, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(143, 138, 4, '1218', 'Ø 1.3 mm', '1', '8595', '902.475', '9497.475', NULL, NULL),
(150, 142, 4, '1218', 'Ø 1.3 mm', '1', '8595', '902.475', '9497.475', NULL, NULL),
(151, 142, 3, '1216', 'Ø 1.3 mm', '1', '6894', '723.87', '7617.87', NULL, NULL),
(152, 142, 2, '1202', 'Ø 1.4 mm', '1', '6230', '654.15', '6884.15', NULL, NULL),
(153, 142, 2, '1203', 'Ø 1.8 mm', '1', '6230', '654.15', '6884.15', NULL, NULL),
(154, 142, 1, '1214', 'Ø 1.4 mm', '1', '6848', '719.04', '7567.04', NULL, NULL),
(155, 142, 21, '1206', 'Ø 1.8 mm', '1', '6247', '655.935', '6902.9349999999995', NULL, NULL),
(156, 142, 21, '1207', 'Ø 2.2 mm', '1', '6247', '655.935', '6902.9349999999995', NULL, NULL),
(157, 142, 5, '1080', 'Ø 1.3 mm', '1', '4845', '508.72499999999997', '5353.725', NULL, NULL),
(158, 142, 6, '1038', 'Ø 1.0 mm', '1', '4488', '471.24', '4959.24', NULL, NULL),
(159, 142, 20, '2005', '1/2\"', '1', '4772', '1002.12', '5774.12', NULL, NULL),
(160, 142, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(161, 143, 7, '1003', 'Ø 1.75 mm', '6', '41088', '4314.24', '45402.24', NULL, NULL),
(162, 144, 7, '1003', 'Ø 1.75 mm', '6', '41088', '4314.24', '45402.24', NULL, NULL),
(163, 145, 7, '1003', 'Ø 1.75 mm', '6', '41088', '4314.24', '45402.24', NULL, NULL),
(164, 146, 3, '1216', 'Ø 1.3 mm', '3', '20682', '2171.61', '22853.61', NULL, NULL),
(165, 146, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(166, 146, 53, '6001', '10 PRODUCTOS', '4', '245584', '25786.32', '271370.32', NULL, NULL),
(167, 147, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(168, 147, 21, '1208', 'Ø 3.0 mm', '3', '18741', '1967.8049999999998', '20708.805', NULL, NULL),
(169, 147, 13, '4005', '-', '2', '18782', '1972.11', '20754.11', NULL, NULL),
(170, 148, 2, '1203', 'Ø 1.8 mm', '4', '24920', '2616.6', '27536.6', NULL, NULL),
(171, 149, 3, '1216', 'Ø 1.3 mm', '2', '13788', '1447.74', '15235.74', NULL, NULL),
(172, 149, 1, '1214', 'Ø 1.4 mm', '2', '13696', '1438.08', '15134.08', NULL, NULL),
(173, 149, 10, '1026', 'Ø 2.0 mm', '2', '11790', '1237.95', '13027.95', NULL, NULL),
(174, 149, 24, '3002', '-', '6', '3618', '379.89', '3997.89', NULL, NULL),
(175, 150, 3, '1216', 'Ø 1.3 mm', '2', '13788', '1447.74', '15235.74', NULL, NULL),
(176, 150, 1, '1214', 'Ø 1.4 mm', '2', '13696', '1438.08', '15134.08', NULL, NULL),
(177, 150, 10, '1026', 'Ø 2.0 mm', '2', '11790', '1237.95', '13027.95', NULL, NULL),
(178, 150, 24, '3002', '-', '6', '3618', '379.89', '3997.89', NULL, NULL),
(179, 151, 3, '1216', 'Ø 1.3 mm', '2', '13788', '1447.74', '15235.74', NULL, NULL),
(180, 151, 1, '1214', 'Ø 1.4 mm', '2', '13696', '1438.08', '15134.08', NULL, NULL),
(181, 151, 10, '1026', 'Ø 2.0 mm', '2', '11790', '1237.95', '13027.95', NULL, NULL),
(182, 151, 24, '3002', '-', '6', '3618', '379.89', '3997.89', NULL, NULL),
(183, 152, 12, '4002', '-', '4', '31360', '3292.7999999999997', '34652.8', NULL, NULL),
(184, 153, 21, '1207', 'Ø 2.2 mm', '1', '6247', '655.935', '6902.9349999999995', NULL, NULL),
(185, 153, 35, '3016', '-', '1', '1095', '229.95', '1324.95', NULL, NULL),
(186, 153, 40, '3015', '-', '1', '130', '27.3', '157.3', NULL, NULL),
(187, 153, 5, '1080', 'Ø 1.3 mm', '1', '4845', '508.72499999999997', '5353.725', NULL, NULL),
(188, 154, 21, '1207', 'Ø 2.2 mm', '1', '6247', '655.935', '6902.9349999999995', NULL, NULL),
(189, 154, 35, '3016', '-', '1', '1095', '229.95', '1324.95', NULL, NULL),
(190, 154, 40, '3015', '-', '1', '130', '27.3', '157.3', NULL, NULL),
(191, 154, 5, '1080', 'Ø 1.3 mm', '1', '4845', '508.72499999999997', '5353.725', NULL, NULL),
(192, 155, 3, '1216', 'Ø 1.3 mm', '6', '41364', '4343.22', '45707.22', NULL, NULL),
(193, 155, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(194, 155, 2, '1202', 'Ø 1.4 mm', '6', '37380', '3924.8999999999996', '41304.9', NULL, NULL),
(195, 155, 2, '1203', 'Ø 1.8 mm', '6', '37380', '3924.8999999999996', '41304.9', NULL, NULL),
(196, 155, 35, '3016', '-', '3', '3285', '689.85', '3974.85', NULL, NULL),
(197, 155, 40, '3015', '-', '10', '1300', '273', '1573', NULL, NULL),
(198, 156, 3, '1216', 'Ø 1.3 mm', '6', '41364', '4343.22', '45707.22', NULL, NULL),
(199, 156, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(200, 156, 2, '1202', 'Ø 1.4 mm', '6', '37380', '3924.8999999999996', '41304.9', NULL, NULL),
(201, 156, 2, '1203', 'Ø 1.8 mm', '6', '37380', '3924.8999999999996', '41304.9', NULL, NULL),
(202, 156, 35, '3016', '-', '3', '3285', '689.85', '3974.85', NULL, NULL),
(203, 156, 40, '3015', '-', '10', '1300', '273', '1573', NULL, NULL),
(204, 157, 3, '1216', 'Ø 1.3 mm', '6', '41364', '4343.22', '45707.22', NULL, NULL),
(205, 157, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(206, 157, 2, '1202', 'Ø 1.4 mm', '6', '37380', '3924.8999999999996', '41304.9', NULL, NULL),
(207, 157, 2, '1203', 'Ø 1.8 mm', '6', '37380', '3924.8999999999996', '41304.9', NULL, NULL),
(208, 157, 35, '3016', '-', '3', '3285', '689.85', '3974.85', NULL, NULL),
(209, 157, 40, '3015', '-', '10', '1300', '273', '1573', NULL, NULL),
(210, 158, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(211, 159, 53, '6001', '10 PRODUCTOS', '3', '184188', '19339.739999999998', '203527.74', NULL, NULL),
(212, 159, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(213, 160, 6, '1038', 'Ø 1.0 mm', '2', '8976', '942.48', '9918.48', NULL, NULL),
(214, 160, 3, '1216', 'Ø 1.3 mm', '4', '27576', '2895.48', '30471.48', NULL, NULL),
(215, 160, 5, '1080', 'Ø 1.3 mm', '2', '9690', '1017.4499999999999', '10707.45', NULL, NULL),
(216, 160, 51, '2006', '1/4\"', '2', '9544', '2004.24', '11548.24', NULL, NULL),
(217, 160, 21, '1207', 'Ø 2.2 mm', '2', '12494', '1311.87', '13805.869999999999', NULL, NULL),
(218, 161, 6, '1038', 'Ø 1.0 mm', '2', '8976', '942.48', '9918.48', NULL, NULL),
(219, 161, 3, '1216', 'Ø 1.3 mm', '4', '27576', '2895.48', '30471.48', NULL, NULL),
(220, 161, 5, '1080', 'Ø 1.3 mm', '2', '9690', '1017.4499999999999', '10707.45', NULL, NULL),
(221, 161, 51, '2006', '1/4\"', '2', '9544', '2004.24', '11548.24', NULL, NULL),
(222, 161, 21, '1207', 'Ø 2.2 mm', '2', '12494', '1311.87', '13805.869999999999', NULL, NULL),
(223, 162, 4, '1218', 'Ø 1.3 mm', '1', '8595', '902.475', '9497.475', NULL, NULL),
(224, 163, 4, '1218', 'Ø 1.3 mm', '1', '8595', '902.475', '9497.475', NULL, NULL),
(225, 164, 4, '1218', 'Ø 1.3 mm', '2', '17190', '1804.95', '18994.95', NULL, NULL),
(226, 165, 4, '1218', 'Ø 1.3 mm', '2', '17190', '1804.95', '18994.95', NULL, NULL),
(227, 166, 4, '1218', 'Ø 1.3 mm', '8', '68760', '7219.8', '75979.8', NULL, NULL),
(228, 167, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(229, 168, 3, '1216', 'Ø 1.3 mm', '3', '20682', '2171.61', '22853.61', NULL, NULL),
(230, 168, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(231, 169, 4, '1218', 'Ø 1.3 mm', '7', '60165', '6317.325', '66482.325', NULL, NULL),
(232, 170, 53, '6001', '10 PRODUCTOS', '2', '122792', '12893.16', '135685.16', NULL, NULL),
(233, 171, 4, '1218', 'Ø 1.3 mm', '1', '8595', '902.475', '9497.475', NULL, NULL),
(234, 172, 21, '1205', 'Ø 1.4 mm', '2', '12494', '1311.87', '13805.869999999999', NULL, NULL),
(235, 172, 2, '1202', 'Ø 1.4 mm', '7', '43610', '4579.05', '48189.05', NULL, NULL),
(236, 172, 3, '1216', 'Ø 1.3 mm', '7', '48258', '5067.09', '53325.09', NULL, NULL),
(237, 172, 4, '1218', 'Ø 1.3 mm', '1', '8595', '902.475', '9497.475', NULL, NULL),
(238, 172, 5, '1080', 'Ø 1.3 mm', '4', '19380', '2034.8999999999999', '21414.9', NULL, NULL),
(239, 173, 53, '6001', '10 PRODUCTOS', '3', '184188', '19339.739999999998', '203527.74', NULL, NULL),
(240, 174, 4, '1218', 'Ø 1.3 mm', '2', '17190', '1804.95', '18994.95', NULL, NULL),
(241, 175, 5, '1080', 'Ø 1.3 mm', '3', '14535', '1526.175', '16061.175', NULL, NULL),
(242, 176, 35, '3016', '-', '2', '2190', '459.9', '2649.9', NULL, NULL),
(243, 177, 21, '1208', 'Ø 3.0 mm', '2', '12494', '1311.87', '13805.869999999999', NULL, NULL),
(244, 178, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(245, 178, 3, '1216', 'Ø 1.3 mm', '14', '96516', '10134.18', '106650.18', NULL, NULL),
(246, 179, 53, '6001', '10 PRODUCTOS', '3', '184188', '19339.739999999998', '203527.74', NULL, NULL),
(247, 180, 53, '6001', '10 PRODUCTOS', '2', '122792', '12893.16', '135685.16', NULL, NULL),
(248, 181, 53, '6001', '10 PRODUCTOS', '2', '122792', '12893.16', '135685.16', NULL, NULL),
(249, 182, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(250, 182, 4, '1218', 'Ø 1.3 mm', '2', '17190', '1804.95', '18994.95', NULL, NULL),
(251, 183, 53, '6001', '10 PRODUCTOS', '2', '122792', '12893.16', '135685.16', NULL, NULL),
(252, 183, 2, '1203', 'Ø 1.8 mm', '1', '6230', '654.15', '6884.15', NULL, NULL),
(253, 184, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(254, 185, 2, '1202', 'Ø 1.4 mm', '2', '12460', '1308.3', '13768.3', NULL, NULL),
(255, 185, 3, '1216', 'Ø 1.3 mm', '2', '13788', '1447.74', '15235.74', NULL, NULL),
(256, 185, 6, '1037', 'Ø 0.6 mm', '2', '8976', '942.48', '9918.48', NULL, NULL),
(257, 185, 4, '1218', 'Ø 1.3 mm', '2', '17190', '1804.95', '18994.95', NULL, NULL),
(258, 186, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(259, 187, 53, '6001', '10 PRODUCTOS', '2', '122792', '12893.16', '135685.16', NULL, NULL),
(260, 188, 53, '6001', '10 PRODUCTOS', '6', '368376', '38679.479999999996', '407055.48', NULL, NULL),
(261, 188, 2, '1202', 'Ø 1.4 mm', '7', '43610', '4579.05', '48189.05', NULL, NULL),
(262, 189, 2, '1203', 'Ø 1.8 mm', '5', '31150', '3270.75', '34420.75', NULL, NULL),
(263, 189, 5, '1080', 'Ø 1.3 mm', '5', '24225', '2543.625', '26768.625', NULL, NULL),
(264, 190, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(265, 191, 4, '1218', 'Ø 1.3 mm', '3', '25785', '2707.4249999999997', '28492.425', NULL, NULL),
(266, 192, 53, '6001', '10 PRODUCTOS', '2', '122792', '12893.16', '135685.16', NULL, NULL),
(267, 193, 4, '1218', 'Ø 1.3 mm', '2', '17190', '1804.95', '18994.95', NULL, NULL),
(268, 194, 4, '1218', 'Ø 1.3 mm', '4', '34380', '3609.9', '37989.9', NULL, NULL),
(269, 195, 4, '1218', 'Ø 1.3 mm', '4', '34380', '3609.9', '37989.9', NULL, NULL),
(270, 196, 4, '1218', 'Ø 1.3 mm', '4', '34380', '3609.9', '37989.9', NULL, NULL),
(271, 197, 4, '1218', 'Ø 1.3 mm', '4', '34380', '3609.9', '37989.9', NULL, NULL),
(272, 198, 4, '1218', 'Ø 1.3 mm', '4', '34380', '3609.9', '37989.9', NULL, NULL),
(273, 199, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(274, 200, 53, '6001', '10 PRODUCTOS', '2', '122792', '12893.16', '135685.16', NULL, NULL),
(275, 201, 53, '6001', '10 PRODUCTOS', '1', '61396', '6446.58', '67842.58', NULL, NULL),
(276, 202, 4, '1218', 'Ø 1.3 mm', '1', '8595', '902.475', '9497.475', NULL, NULL),
(277, 203, 4, '1218', 'Ø 1.3 mm', '1', '8595', '902.475', '9497.475', NULL, NULL),
(278, 203, 3, '1216', 'Ø 1.3 mm', '2', '13788', '1447.74', '15235.74', NULL, NULL),
(279, 203, 12, '4002', '-', '5', '46120', '4842.599999999999', '50962.6', NULL, NULL),
(280, 203, 20, '2005', '1/2\"', '4', '19088', '4008.48', '23096.48', NULL, NULL),
(281, 203, 35, '3016', '-', '7', '7665', '1609.6499999999999', '9274.65', NULL, NULL),
(282, 203, 2, '1202', 'Ø 1.4 mm', '9', '56070', '5887.349999999999', '61957.35', NULL, NULL),
(283, 204, 2, '1203', 'Ø 1.8 mm', '5', '31150', '3270.75', '34420.75', NULL, NULL),
(284, 204, 21, '1206', 'Ø 1.8 mm', '5', '31235', '3279.6749999999997', '34514.675', NULL, NULL),
(285, 204, 53, '6001', '10 PRODUCTOS', '2', '122792', '12893.16', '135685.16', NULL, NULL),
(286, 204, 5, '1080', 'Ø 1.3 mm', '9', '43605', '4578.525', '48183.525', NULL, NULL),
(287, 205, 14, '4003', '-', '5', '64470', '6769.349999999999', '71239.35', NULL, NULL),
(288, 205, 13, '4005', '-', '10', '110480', '11600.4', '122080.4', NULL, NULL),
(289, 205, 12, '4002', '-', '10', '92240', '9685.199999999999', '101925.2', NULL, NULL),
(290, 206, 3, '1216', 'Ø 1.3 mm', '6', '41364', '4343.22', '45707.22', NULL, NULL),
(291, 206, 21, '1205', 'Ø 1.4 mm', '2', '12494', '1311.87', '13805.869999999999', NULL, NULL),
(292, 206, 5, '1080', 'Ø 1.3 mm', '9', '43605', '4578.525', '48183.525', NULL, NULL),
(293, 206, 13, '4005', '-', '1', '11048', '1160.04', '12208.04', NULL, NULL),
(294, 206, 14, '4003', '-', '3', '38682', '4061.6099999999997', '42743.61', NULL, NULL),
(295, 207, 3, '1216', 'Ø 1.3 mm', '1', '6894', '723.87', '7617.87', NULL, NULL),
(296, 207, 5, '1080', 'Ø 1.3 mm', '2', '9690', '1017.4499999999999', '10707.45', NULL, NULL),
(297, 207, 39, '3022', '-', '1', '946', '198.66', '1144.66', NULL, NULL),
(298, 208, 5, '1080', 'Ø 1.3 mm', '4', '19380', '2034.8999999999999', '21414.9', NULL, NULL),
(299, 208, 6, '1038', 'Ø 1.0 mm', '2', '8976', '942.48', '9918.48', NULL, NULL),
(300, 209, 24, '3002', '-', '6', '3618', '379.89', '3997.89', NULL, NULL),
(301, 210, 3, '1216', 'Ø 1.3 mm', '2', '14478', '1520.19', '15998.19', NULL, NULL),
(302, 210, 21, '1206', 'Ø 1.8 mm', '1', '6559', '688.6949999999999', '7247.695', NULL, NULL),
(303, 211, 5, '1080', 'Ø 1.3 mm', '1', '5087', '534.135', '5621.135', NULL, NULL),
(304, 211, 14, '4003', '-', '1', '13539', '1421.595', '14960.595', NULL, NULL),
(305, 211, 6, '1038', 'Ø 1.0 mm', '1', '4712', '494.76', '5206.76', NULL, NULL),
(306, 212, 11, '1018', '-', '2', '8090', '849.4499999999999', '8939.45', NULL, NULL),
(307, 213, 4, '1218', 'Ø 1.3 mm', '2', '13538', '1421.49', '14959.49', NULL, NULL),
(308, 213, 3, '1216', 'Ø 1.3 mm', '4', '28956', '3040.38', '31996.38', NULL, NULL),
(309, 213, 1, '1212', 'Ø 1.3 mm', '3', '21570', '2264.85', '23834.85', NULL, NULL),
(310, 213, 5, '1080', 'Ø 1.3 mm', '12', '61044', '6409.62', '67453.62', NULL, NULL),
(311, 214, 12, '4002', '-', '3', '29055', '3050.775', '32105.775', NULL, NULL),
(312, 215, 53, '6001', '10 PRODUCTOS', '4', '257864', '27075.719999999998', '284939.72', NULL, NULL),
(313, 216, 3, '1216', 'Ø 1.3 mm', '6', '43434', '4560.57', '47994.57', NULL, NULL),
(314, 216, 5, '1080', 'Ø 1.3 mm', '11', '55957', '5875.485', '61832.485', NULL, NULL),
(315, 216, 12, '4002', '-', '2', '19370', '2033.85', '21403.85', NULL, NULL),
(316, 216, 21, '1206', 'Ø 1.8 mm', '2', '13118', '1377.3899999999999', '14495.39', NULL, NULL),
(317, 217, 38, '3024', '-', '1', '1528', '320.88', '1848.88', NULL, NULL),
(318, 218, 21, '1208', 'Ø 3.0 mm', '4', '26236', '2754.7799999999997', '28990.78', NULL, NULL),
(319, 219, 11, '1018', '-', '2', '8090', '849.4499999999999', '8939.45', NULL, NULL),
(320, 220, 11, '1018', '-', '1', '4045', '424.72499999999997', '4469.725', NULL, NULL),
(321, 220, 21, '1206', 'Ø 1.8 mm', '3', '19677', '2066.085', '21743.085', NULL, NULL),
(322, 220, 21, '1207', 'Ø 2.2 mm', '1', '6559', '688.6949999999999', '7247.695', NULL, NULL),
(323, 221, 11, '1018', '-', '1', '4045', '424.72499999999997', '4469.725', NULL, NULL),
(324, 221, 21, '1206', 'Ø 1.8 mm', '3', '19677', '2066.085', '21743.085', NULL, NULL),
(325, 221, 21, '1207', 'Ø 2.2 mm', '1', '6559', '688.6949999999999', '7247.695', NULL, NULL),
(326, 222, 15, '1002', '-', '4', '24460', '2568.2999999999997', '27028.3', NULL, NULL),
(327, 222, 21, '1206', 'Ø 1.8 mm', '3', '19677', '2066.085', '21743.085', NULL, NULL),
(328, 222, 4, '1218', 'Ø 1.3 mm', '3', '27075', '2842.875', '29917.875', NULL, NULL),
(329, 222, 2, '1202', 'Ø 1.4 mm', '3', '19626', '2060.73', '21686.73', NULL, NULL),
(330, 222, 11, '1018', '-', '1', '4045', '424.72499999999997', '4469.725', NULL, NULL),
(331, 222, 8, '1008', 'Ø 1.6 mm', '1', '7909', '830.4449999999999', '8739.445', NULL, NULL),
(332, 222, 7, '1003', 'Ø 1.75 mm', '2', '14380', '1509.8999999999999', '15889.9', NULL, NULL),
(333, 222, 24, '3002', '-', '1', '633', '66.465', '699.465', NULL, NULL),
(334, 222, 16, '1070', '-', '1', '7170', '752.85', '7922.85', NULL, NULL),
(335, 222, 1, '1214', 'Ø 1.4 mm', '1', '7190', '754.9499999999999', '7944.95', NULL, NULL),
(336, 222, 5, '1080', 'Ø 1.3 mm', '8', '40696', '4273.08', '44969.08', NULL, NULL),
(337, 222, 9, '1030', 'Ø 1.00 mm', '5', '34105', '3581.025', '37686.025', NULL, NULL),
(338, 222, 3, '1216', 'Ø 1.3 mm', '2', '14478', '1520.19', '15998.19', NULL, NULL),
(339, 222, 35, '3016', '-', '2', '2300', '483', '2783', NULL, NULL),
(340, 222, 45, '2001', '1/2\"', '2', '4966', '1042.86', '6008.86', NULL, NULL),
(341, 222, 51, '2006', '1/4\"', '2', '10022', '2104.62', '12126.619999999999', NULL, NULL),
(342, 222, 20, '2005', '1/2\"', '2', '10022', '2104.62', '12126.619999999999', NULL, NULL),
(343, 223, 40, '3015', '-', '12', '1644', '345.24', '1989.24', NULL, NULL),
(344, 223, 46, '3010', '-', '6', '6774', '1422.54', '8196.54', NULL, NULL),
(345, 223, 24, '3002', '-', '12', '7596', '797.5799999999999', '8393.58', NULL, NULL),
(346, 223, 2, '1202', 'Ø 1.4 mm', '3', '19626', '2060.73', '21686.73', NULL, NULL),
(347, 223, 1, '1214', 'Ø 1.4 mm', '4', '28760', '3019.7999999999997', '31779.8', NULL, NULL),
(348, 223, 3, '1216', 'Ø 1.3 mm', '4', '28956', '3040.38', '31996.38', NULL, NULL),
(349, 224, 53, '6001', '10 PRODUCTOS', '1', '64466', '6768.929999999999', '71234.93', NULL, NULL),
(350, 224, 3, '1216', 'Ø 1.3 mm', '5', '36195', '3800.475', '39995.475', NULL, NULL),
(351, 224, 14, '4003', '-', '3', '40617', '4264.785', '44881.785', NULL, NULL),
(352, 224, 51, '2006', '1/4\"', '1', '5011', '1052.31', '6063.3099999999995', NULL, NULL),
(353, 224, 40, '3015', '-', '8', '1096', '230.16', '1326.16', NULL, NULL),
(354, 225, 3, '1216', 'Ø 1.3 mm', '2', '14478', '1520.19', '15998.19', NULL, NULL),
(355, 226, 53, '6001', '10 PRODUCTOS', '1', '64466', '6768.929999999999', '71234.93', NULL, NULL),
(356, 226, 3, '1216', 'Ø 1.3 mm', '5', '36195', '3800.475', '39995.475', NULL, NULL),
(357, 226, 14, '4003', '-', '3', '40617', '4264.785', '44881.785', NULL, NULL),
(358, 227, 53, '6001', '10 PRODUCTOS', '1', '64466', '6768.929999999999', '71234.93', NULL, NULL),
(359, 227, 7, '1003', 'Ø 1.75 mm', '2', '14380', '1509.8999999999999', '15889.9', NULL, NULL),
(360, 228, 24, '3002', '-', '3', '1899', '199.39499999999998', '2098.395', NULL, NULL),
(361, 228, 8, '1008', 'Ø 1.6 mm', '2', '15818', '1660.8899999999999', '17478.89', NULL, NULL),
(362, 228, 15, '1002', '-', '4', '24460', '2568.2999999999997', '27028.3', NULL, NULL),
(363, 228, 21, '1206', 'Ø 1.8 mm', '3', '19677', '2066.085', '21743.085', NULL, NULL),
(364, 228, 4, '1218', 'Ø 1.3 mm', '3', '27075', '2842.875', '29917.875', NULL, NULL),
(365, 228, 2, '1202', 'Ø 1.4 mm', '3', '19626', '2060.73', '21686.73', NULL, NULL),
(366, 228, 7, '1003', 'Ø 1.75 mm', '2', '14380', '1509.8999999999999', '15889.9', NULL, NULL),
(367, 228, 11, '1018', '-', '1', '4045', '424.72499999999997', '4469.725', NULL, NULL),
(368, 228, 1, '1214', 'Ø 1.4 mm', '1', '7190', '754.9499999999999', '7944.95', NULL, NULL),
(369, 228, 16, '1070', '-', '1', '7170', '752.85', '7922.85', NULL, NULL),
(370, 228, 5, '1080', 'Ø 1.3 mm', '8', '40696', '4273.08', '44969.08', NULL, NULL),
(371, 228, 9, '1030', 'Ø 1.00 mm', '1', '6821', '716.2049999999999', '7537.205', NULL, NULL),
(372, 228, 3, '1216', 'Ø 1.3 mm', '2', '14478', '1520.19', '15998.19', NULL, NULL),
(373, 229, 12, '4002', '-', '1', '9685', '1016.925', '10701.925', NULL, NULL),
(374, 229, 14, '4003', '-', '1', '13539', '1421.595', '14960.595', NULL, NULL),
(375, 230, 1, '1214', 'Ø 1.4 mm', '1', '7190', '754.9499999999999', '7944.95', NULL, NULL),
(376, 231, 53, '6001', '10 PRODUCTOS', '1', '64466', '6768.929999999999', '71234.93', NULL, NULL),
(377, 232, 53, '6001', '10 PRODUCTOS', '2', '128932', '13537.859999999999', '142469.86', NULL, NULL),
(378, 233, 3, '1216', 'Ø 1.3 mm', '1', '7239', '760.095', '7999.095', NULL, NULL),
(379, 234, 53, '6001', '10 PRODUCTOS', '1', '64466', '6768.929999999999', '71234.93', NULL, NULL),
(380, 235, 2, '1202', 'Ø 1.4 mm', '2', '13084', '1373.82', '14457.82', NULL, NULL),
(381, 236, 11, '1018', '-', '1', '4045', '424.72499999999997', '4469.725', NULL, NULL),
(382, 236, 5, '1080', 'Ø 1.3 mm', '2', '10174', '1068.27', '11242.27', NULL, NULL),
(383, 236, 21, '1206', 'Ø 1.8 mm', '1', '6559', '688.6949999999999', '7247.695', NULL, NULL),
(384, 236, 1, '1214', 'Ø 1.4 mm', '2', '14380', '1509.8999999999999', '15889.9', NULL, NULL),
(385, 236, 4, '1218', 'Ø 1.3 mm', '2', '18050', '1895.25', '19945.25', NULL, NULL),
(386, 236, 21, '1208', 'Ø 3.0 mm', '1', '6559', '688.6949999999999', '7247.695', NULL, NULL),
(387, 236, 12, '4002', '-', '2', '19370', '2033.85', '21403.85', NULL, NULL),
(388, 236, 13, '4005', '-', '2', '23200', '2436', '25636', NULL, NULL),
(389, 236, 14, '4003', '-', '1', '13539', '1421.595', '14960.595', NULL, NULL),
(390, 237, 53, '6001', '10 PRODUCTOS', '1', '64466', '6768.929999999999', '71234.93', NULL, NULL),
(391, 238, 53, '6001', '10 PRODUCTOS', '1', '64466', '6768.929999999999', '71234.93', NULL, NULL),
(392, 239, 21, '1206', 'Ø 1.8 mm', '1', '6953', '730.0649999999999', '7683.065', NULL, NULL),
(393, 239, 21, '1208', 'Ø 3.0 mm', '1', '6953', '730.0649999999999', '7683.065', NULL, NULL),
(394, 240, 3, '1216', 'Ø 1.3 mm', '3', '23019', '2416.995', '25435.995', NULL, NULL),
(395, 240, 5, '1080', 'Ø 1.3 mm', '2', '10784', '1132.32', '11916.32', NULL, NULL),
(396, 240, 6, '1038', 'Ø 1.0 mm', '1', '4995', '524.475', '5519.475', NULL, NULL),
(397, 241, 3, '1216', 'Ø 1.3 mm', '8', '61384', '6445.32', '67829.32', NULL, NULL),
(398, 241, 5, '1080', 'Ø 1.3 mm', '14', '75488', '7926.24', '83414.24', NULL, NULL),
(399, 242, 53, '6001', '10 PRODUCTOS', '1', '67689', '7107.344999999999', '74796.345', NULL, NULL),
(400, 243, 3, '1216', 'Ø 1.3 mm', '1', '7673', '805.665', '8478.665', NULL, NULL),
(401, 243, 1, '1214', 'Ø 1.4 mm', '1', '7621', '800.2049999999999', '8421.205', NULL, NULL),
(402, 244, 53, '6001', '10 PRODUCTOS', '2', '135378', '14214.689999999999', '149592.69', NULL, NULL),
(403, 245, 24, '3002', '-', '10', '6710', '704.55', '7414.55', NULL, NULL),
(404, 246, 10, '1026', 'Ø 2.0 mm', '2', '13122', '1377.81', '14499.81', NULL, NULL),
(405, 247, 5, '1080', 'Ø 1.3 mm', '7', '37744', '3963.12', '41707.12', NULL, NULL),
(406, 247, 1, '1212', 'Ø 1.3 mm', '2', '15242', '1600.4099999999999', '16842.41', NULL, NULL),
(407, 247, 4, '1218', 'Ø 1.3 mm', '2', '19134', '2009.07', '21143.07', NULL, NULL),
(408, 248, 3, '1216', 'Ø 1.3 mm', '4', '30692', '3222.66', '33914.66', NULL, NULL),
(409, 248, 2, '1202', 'Ø 1.4 mm', '1', '6935', '728.175', '7663.175', NULL, NULL),
(410, 249, 4, '1218', 'Ø 1.3 mm', '1', '9567', '1004.535', '10571.535', NULL, NULL),
(411, 249, 3, '1216', 'Ø 1.3 mm', '2', '15346', '1611.33', '16957.33', NULL, NULL),
(412, 249, 5, '1080', 'Ø 1.3 mm', '4', '21568', '2264.64', '23832.64', NULL, NULL),
(413, 249, 14, '4003', '-', '2', '28702', '3013.71', '31715.71', NULL, NULL),
(414, 250, 4, '1218', 'Ø 1.3 mm', '1', '9567', '1004.535', '10571.535', NULL, NULL),
(415, 250, 3, '1216', 'Ø 1.3 mm', '2', '15346', '1611.33', '16957.33', NULL, NULL),
(416, 250, 5, '1080', 'Ø 1.3 mm', '4', '21568', '2264.64', '23832.64', NULL, NULL),
(417, 250, 14, '4003', '-', '2', '28702', '3013.71', '31715.71', NULL, NULL),
(418, 251, 53, '6001', '10 PRODUCTOS', '2', '135378', '14214.689999999999', '149592.69', NULL, NULL),
(419, 252, 53, '6001', '10 PRODUCTOS', '2', '135378', '14214.689999999999', '149592.69', NULL, NULL),
(420, 253, 53, '6001', '10 PRODUCTOS', '2', '135378', '14214.689999999999', '149592.69', NULL, NULL),
(421, 254, 5, '1080', 'Ø 1.3 mm', '4', '21568', '2264.64', '23832.64', NULL, NULL),
(422, 254, 4, '1218', 'Ø 1.3 mm', '1', '9567', '1004.535', '10571.535', NULL, NULL),
(423, 254, 3, '1216', 'Ø 1.3 mm', '2', '15346', '1611.33', '16957.33', NULL, NULL),
(424, 254, 14, '4003', '-', '2', '28702', '3013.71', '31715.71', NULL, NULL),
(425, 255, 2, '1203', 'Ø 1.8 mm', '5', '34675', '3640.875', '38315.875', NULL, NULL),
(426, 255, 3, '1216', 'Ø 1.3 mm', '4', '30692', '3222.66', '33914.66', NULL, NULL),
(427, 255, 1, '1214', 'Ø 1.4 mm', '2', '15242', '1600.4099999999999', '16842.41', NULL, NULL),
(428, 255, 24, '3002', '-', '10', '6710', '704.55', '7414.55', NULL, NULL),
(429, 256, 1, '1212', 'Ø 1.3 mm', '1', '7621', '800.2049999999999', '8421.205', NULL, NULL),
(430, 256, 1, '1214', 'Ø 1.4 mm', '1', '7621', '800.2049999999999', '8421.205', NULL, NULL),
(431, 257, 3, '1216', 'Ø 1.3 mm', '6', '46038', '4833.99', '50871.99', NULL, NULL),
(432, 257, 2, '1202', 'Ø 1.4 mm', '8', '55480', '5825.4', '61305.4', NULL, NULL),
(433, 257, 5, '1080', 'Ø 1.3 mm', '6', '32352', '3396.96', '35748.96', NULL, NULL),
(434, 257, 12, '4002', '-', '4', '41064', '4311.72', '45375.72', NULL, NULL),
(435, 257, 14, '4003', '-', '4', '57404', '6027.42', '63431.42', NULL, NULL),
(436, 257, 10, '1026', 'Ø 2.0 mm', '4', '26244', '2755.62', '28999.62', NULL, NULL),
(437, 257, 11, '1018', '-', '10', '42880', '4502.4', '47382.4', NULL, NULL),
(438, 257, 51, '2006', '1/4\"', '6', '31872', '6693.12', '38565.12', NULL, NULL),
(439, 257, 21, '1207', 'Ø 2.2 mm', '6', '41718', '4380.389999999999', '46098.39', NULL, NULL),
(440, 258, 1, '1214', 'Ø 1.4 mm', '3', '22863', '2400.615', '25263.614999999998', NULL, NULL),
(441, 258, 4, '1218', 'Ø 1.3 mm', '1', '9567', '1004.535', '10571.535', NULL, NULL),
(442, 258, 3, '1216', 'Ø 1.3 mm', '2', '15346', '1611.33', '16957.33', NULL, NULL),
(443, 259, 11, '1018', '-', '1', '4288', '450.24', '4738.24', NULL, NULL),
(444, 259, 1, '1212', 'Ø 1.3 mm', '3', '22863', '2400.615', '25263.614999999998', NULL, NULL),
(445, 259, 3, '1216', 'Ø 1.3 mm', '2', '15346', '1611.33', '16957.33', NULL, NULL),
(446, 259, 5, '1080', 'Ø 1.3 mm', '14', '75488', '7926.24', '83414.24', NULL, NULL),
(447, 259, 13, '4005', '-', '1', '12296', '1291.08', '13587.08', NULL, NULL),
(448, 260, 3, '1216', 'Ø 1.3 mm', '2', '15346', '1611.33', '16957.33', NULL, NULL),
(449, 260, 1, '1212', 'Ø 1.3 mm', '3', '22863', '2400.615', '25263.614999999998', NULL, NULL),
(450, 260, 5, '1080', 'Ø 1.3 mm', '14', '75488', '7926.24', '83414.24', NULL, NULL),
(451, 260, 13, '4005', '-', '1', '12296', '1291.08', '13587.08', NULL, NULL),
(452, 260, 11, '1018', '-', '1', '4288', '450.24', '4738.24', NULL, NULL),
(453, 261, 53, '6001', '10 PRODUCTOS', '1', '67689', '7107.344999999999', '74796.345', NULL, NULL),
(454, 261, 3, '1216', 'Ø 1.3 mm', '2', '15346', '1611.33', '16957.33', NULL, NULL),
(455, 261, 12, '4002', '-', '1', '10266', '1077.93', '11343.93', NULL, NULL),
(456, 261, 14, '4003', '-', '1', '14351', '1506.855', '15857.855', NULL, NULL),
(457, 261, 2, '1202', 'Ø 1.4 mm', '2', '13870', '1456.35', '15326.35', NULL, NULL),
(458, 261, 10, '1026', 'Ø 2.0 mm', '1', '6561', '688.905', '7249.905', NULL, NULL),
(459, 262, 5, '1080', 'Ø 1.3 mm', '3', '16176', '1698.48', '17874.48', NULL, NULL),
(460, 263, 7, '1003', 'Ø 1.75 mm', '11', '83831', '8802.255', '92633.255', NULL, NULL),
(461, 264, 4, '1218', 'Ø 1.3 mm', '3', '28701', '3013.605', '31714.605', NULL, NULL),
(462, 264, 2, '1202', 'Ø 1.4 mm', '3', '20805', '2184.525', '22989.525', NULL, NULL),
(463, 265, 21, '1206', 'Ø 1.8 mm', '2', '13906', '1460.1299999999999', '15366.13', NULL, NULL),
(464, 265, 2, '1202', 'Ø 1.4 mm', '1', '6935', '728.175', '7663.175', NULL, NULL),
(465, 265, 3, '1216', 'Ø 1.3 mm', '8', '61384', '6445.32', '67829.32', NULL, NULL),
(466, 265, 4, '1218', 'Ø 1.3 mm', '2', '19134', '2009.07', '21143.07', NULL, NULL),
(467, 265, 5, '1080', 'Ø 1.3 mm', '20', '107840', '11323.199999999999', '119163.2', NULL, NULL),
(468, 265, 14, '4003', '-', '1', '14351', '1506.855', '15857.855', NULL, NULL),
(469, 265, 12, '4002', '-', '1', '10266', '1077.93', '11343.93', NULL, NULL),
(470, 266, 4, '1218', 'Ø 1.3 mm', '2', '19134', '2009.07', '21143.07', NULL, NULL),
(471, 266, 2, '1202', 'Ø 1.4 mm', '1', '6935', '728.175', '7663.175', NULL, NULL),
(472, 266, 1, '1214', 'Ø 1.4 mm', '2', '15242', '1600.4099999999999', '16842.41', NULL, NULL),
(473, 266, 21, '1207', 'Ø 2.2 mm', '1', '6953', '730.0649999999999', '7683.065', NULL, NULL),
(474, 266, 20, '2005', '1/2\"', '2', '10624', '2231.04', '12855.04', NULL, NULL),
(475, 266, 3, '1216', 'Ø 1.3 mm', '2', '15346', '1611.33', '16957.33', NULL, NULL),
(476, 267, 21, '1206', 'Ø 1.8 mm', '2', '13906', '1460.1299999999999', '15366.13', NULL, NULL),
(477, 267, 1, '1214', 'Ø 1.4 mm', '1', '7621', '800.2049999999999', '8421.205', NULL, NULL),
(478, 267, 2, '1202', 'Ø 1.4 mm', '1', '6935', '728.175', '7663.175', NULL, NULL),
(479, 267, 13, '4005', '-', '1', '12296', '1291.08', '13587.08', NULL, NULL),
(480, 268, 3, '1216', 'Ø 1.3 mm', '6', '49260', '5172.3', '54432.3', NULL, NULL),
(481, 268, 2, '1202', 'Ø 1.4 mm', '3', '22260', '2337.2999999999997', '24597.3', NULL, NULL),
(482, 268, 1, '1214', 'Ø 1.4 mm', '2', '16308', '1712.34', '18020.34', NULL, NULL),
(483, 269, 2, '1202', 'Ø 1.4 mm', '2', '14840', '1558.2', '16398.2', NULL, NULL),
(484, 269, 1, '1214', 'Ø 1.4 mm', '2', '16308', '1712.34', '18020.34', NULL, NULL),
(485, 269, 3, '1216', 'Ø 1.3 mm', '2', '16420', '1724.1', '18144.1', NULL, NULL),
(486, 269, 40, '3015', '-', '12', '1740', '365.4', '2105.4', NULL, NULL),
(487, 270, 3, '1216', 'Ø 1.3 mm', '2', '16420', '1724.1', '18144.1', NULL, NULL),
(488, 270, 5, '1080', 'Ø 1.3 mm', '1', '5769', '605.745', '6374.745', NULL, NULL),
(489, 271, 3, '1216', 'Ø 1.3 mm', '5', '41050', '4310.25', '45360.25', NULL, NULL),
(490, 271, 2, '1202', 'Ø 1.4 mm', '1', '7420', '779.1', '8199.1', NULL, NULL),
(491, 271, 21, '1206', 'Ø 1.8 mm', '3', '22320', '2343.6', '24663.6', NULL, NULL),
(492, 271, 5, '1080', 'Ø 1.3 mm', '2', '11538', '1211.49', '12749.49', NULL, NULL),
(493, 271, 24, '3002', '-', '5', '3355', '352.275', '3707.275', NULL, NULL),
(494, 272, 12, '4002', '-', '1', '10985', '1153.425', '12138.425', NULL, NULL),
(495, 272, 13, '4005', '-', '1', '13157', '1381.485', '14538.485', NULL, NULL),
(496, 272, 14, '4003', '-', '1', '15356', '1612.3799999999999', '16968.38', NULL, NULL),
(497, 273, 16, '1070', '-', '1', '8132', '853.86', '8985.86', NULL, NULL),
(498, 274, 3, '1216', 'Ø 1.3 mm', '4', '32840', '3448.2', '36288.2', NULL, NULL),
(499, 274, 2, '1202', 'Ø 1.4 mm', '6', '44520', '4674.599999999999', '49194.6', NULL, NULL),
(500, 274, 5, '1080', 'Ø 1.3 mm', '1', '5769', '605.745', '6374.745', NULL, NULL),
(501, 274, 24, '3002', '-', '30', '20130', '2113.65', '22243.65', NULL, NULL),
(502, 274, 49, '3009', '-', '10', '6900', '1449', '8349', NULL, NULL),
(503, 275, 3, '1216', 'Ø 1.3 mm', '10', '82100', '8620.5', '90720.5', NULL, NULL),
(504, 275, 21, '1206', 'Ø 1.8 mm', '1', '7440', '781.1999999999999', '8221.2', NULL, NULL),
(505, 276, 23, '1033', 'Ø 1.00 mm', '6', '51360', '5392.8', '56752.8', NULL, NULL),
(506, 277, 1, '1212', 'Ø 1.3 mm', '2', '16308', '1712.34', '18020.34', NULL, NULL),
(507, 277, 3, '1216', 'Ø 1.3 mm', '2', '16420', '1724.1', '18144.1', NULL, NULL),
(508, 277, 4, '1218', 'Ø 1.3 mm', '2', '20474', '2149.77', '22623.77', NULL, NULL),
(509, 277, 5, '1080', 'Ø 1.3 mm', '12', '69228', '7268.94', '76496.94', NULL, NULL),
(510, 277, 12, '4002', '-', '1', '10985', '1153.425', '12138.425', NULL, NULL),
(511, 277, 13, '4005', '-', '1', '13157', '1381.485', '14538.485', NULL, NULL),
(512, 277, 14, '4003', '-', '1', '15356', '1612.3799999999999', '16968.38', NULL, NULL),
(513, 278, 3, '1216', 'Ø 1.3 mm', '2', '16420', '1724.1', '18144.1', NULL, NULL),
(514, 278, 5, '1080', 'Ø 1.3 mm', '2', '11538', '1211.49', '12749.49', NULL, NULL),
(515, 278, 2, '1202', 'Ø 1.4 mm', '1', '7420', '779.1', '8199.1', NULL, NULL),
(516, 279, 6, '1038', 'Ø 1.0 mm', '1', '5345', '561.225', '5906.225', NULL, NULL),
(517, 280, 9, '1030', 'Ø 1.00 mm', '2', '15472', '1624.56', '17096.56', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(10) UNSIGNED NOT NULL,
  `pregunta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `respuesta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria_pregunta_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `respuesta`, `categoria_pregunta_id`, `created_at`, `updated_at`) VALUES
(3, '¿Qué significa \"Sistema H.V.L.P\"?', 'Debido a una preocupación acerca del impacto ambiental originado, desde la década del ´80 se establecieron normas estrictas de cumplimiento en los sistemas de pintado con el fin de minorizarlos al máximo.  Así nació el concepto \"HVLP\" (alto volumen a baja presión), cuyas características fundamentales son: la presión de aplicación debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material.  Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en compración de la pulverización a la que está acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presión de aplicación es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y así, eliminando cualquier tipo de suspensión del material en el aire.  Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicación en diferentes elementos:       - mejora el tiempo de trabajo.       - sin exceso de la nube de pulverización (spray).       - más eficacia de transferencia de material (a partir de 65%).       - menor \"rebote\" de material sobre la superficie a aplicar.', 1, '2018-08-09 19:02:34', '2018-08-09 19:02:34'),
(4, '¿Mi compresor es apto para utilizar pistolas H.V.L.P?', '<p>Los sistemas HVLP requieren gran caudal de aire y su aplicaci&oacute;n es a baja presi&oacute;n, por lo tanto su generador de aire (compresor) debe ser de 3 HP en adelante. Si es inferior a la recomendaci&oacute;n, puede utilizar nuestros modelos de pistolas 4101 MP (H&iacute;bridas) de media presi&oacute;n.</p>', 1, '2018-08-09 19:38:47', '2018-09-14 16:34:57'),
(5, 'Nunca he pintado con sistemas H.V.L.P. ¿Cuánto tiempo se tarda en aprenderlo a utilizar?', '<p>Los conceptos de aplicaci&oacute;n van cambiando notablemente, las pistolas HVLP requieren de mayor caudal de aire y su aplicaci&oacute;n en a baja presi&oacute;n. Por lo tanto, debe reducir la distancia de aplicaci&oacute;n (entre 15 y 20 cmt), y al obtener mayor transferencia de producto debe acelarar la velocidad de la mano.&nbsp;</p>', 1, '2018-08-09 19:39:43', '2018-09-14 17:51:19'),
(6, '¿Que pistola recomiendan para la aplicación de fondos sobre automotor?', '<p>Para fondos desarrollamos pistolas exclusivas para la su aplicaci&oacute;n, est&aacute;n equipadas con picos de fluido en distintas versiones, 1.4 mm para fondos h&uacute;medos sobre h&uacute;medos, 1.8 mm para fondos de s&oacute;lidos medios y de 2.2 mm para fondos de altos s&oacute;lidos. Son pistolas de sistema HVLP y su modelo es 404-G TORO. Tambi&eacute;n disponemos como novedad el modelo 4101-GMP de 1.8 mm para aplicar s&oacute;lidos medios con compresores de capacidad inferior a 3 HP.</p>', 1, '2018-08-09 19:41:24', '2018-09-14 17:42:32'),
(7, '¿Que pistola recomiendan para la aplicación lacas sobre automotor?', '<p>Lo mas importante para nosotros es conocer la capacidad y calidad de aire que tiene en su taller, los nuevos conceptos de pistolas para repintado automotor apuntan a los sistemas de alta transferencia (HVLP) los cuales requieren mayor caudal de aire y menor presi&oacute;n en la aplicaci&oacute;n. Si dispone de un generador de aire igual o superior a 3 HP y una buena l&iacute;nea de aire, seguramente dispone de 300 lts/min. por lo tanto puede utilizar toda la l&iacute;nea de nuestras pistolas del sistema HVLP y Alta Transferencia para Base Color, Lacas y Fondos. Si su generador de aire en inferior a 3 HP entonces debe recurrir a las pistolas de Media Presi&oacute;n (H&iacute;bridas) reflejadas en nuestro modelo 4101-G MP de 1.4 mm para terminaci&oacute;n y 1.8 mm para Fondos de S&oacute;lidos Medios.</p>\r\n\r\n<p>&nbsp;</p>', 1, '2018-08-09 19:42:54', '2018-09-14 16:27:07'),
(8, '¿Que pistola recomiendan para la industria del mueble?', '<p>Es muy importante utilizar los nuevos conceptos <span style=\"color:null\">HVLP</span> y su sistema por gravedad, con ellos generar&aacute; un gran ahorro de materiales y un ambiente mas confortable, con menos contaminaci&oacute;n y menores riesgos para el trabajador. La pistola 454-G BUHO con pico de fluido de 1.4 mm es ideal para la aplicaci&oacute;n de lacas poliuret&aacute;nicas y para Fondos la pistola 404-G TORO con pico de fluido de 1.8 mm para s&oacute;lidos medios y de 2.2 mm para altos s&oacute;lidos. Tambi&eacute;n disponemos de pistolas y tanques presurizados para la aplicaci&oacute;n de cemento de contacto sopleteable.</p>', 1, '2018-08-09 19:43:36', '2018-09-14 18:10:42'),
(9, '¿Que me recomiendan para la aplicación de Látex?', '<p>Para la aplicaci&oacute;n de L&aacute;tex, recomendamos los sistemas de Turbos HVLP de Aire Caliente, los modelos TC-850 y TC-903 garantizan una excelente aplicaci&oacute;n con muy bajo nivel de pulverizaci&oacute;n. Son port&aacute;tiles y no requieren de compresor, vienen listos para usar.&nbsp;</p>', 1, '2018-08-09 19:44:14', '2018-09-14 17:01:16'),
(10, '¿Cuál es la pistola más indicada para la aplicación de Recubrimientos Plásticos / Texturados?', '<p>La pistola modelo 408-GOT fue dise&ntilde;ada exclusivamente para la aplicaci&oacute;n de Recubrimientos Pl&aacute;sticos, equipada con 3 boquillas de 2.5 mm - 4.0 mm y 6.0 mm para materiales finos, medianos y gruesos. Tolva de nylon de 5 lts. con manija de agarre. Es una pistola directa (sin v&aacute;lvula) con grifo de cierre en la entrada del aire.</p>', 1, '2018-08-09 19:45:39', '2018-09-14 17:27:11'),
(11, '¿MAER es Industria Argentina?', '<p>As&iacute; es, toda la l&iacute;nea de productos MAER es enteramente (100%) industria argentina.&nbsp;Por ello contamos con el orgullo de garantizar service oficial MAER y todos los repuestos originales en stock permanente.</p>', 1, '2018-08-09 19:46:13', '2018-08-09 19:46:13'),
(12, '¿Qué significa \"Sistema H.V.L.P\"?', '<p>Debido a una preocupaci&oacute;n acerca del impacto ambiental originado, desde la d&eacute;cada del &acute;80 se establecieron normas estrictas de cumplimiento en los sistemas de pintado con el fin de minorizarlos al m&aacute;ximo.</p>\r\n\r\n<p>As&iacute; naci&oacute; el concepto &quot;HVLP&quot; (alto volumen a baja presi&oacute;n), cuyas caracter&iacute;sticas fundamentales son: la presi&oacute;n de aplicaci&oacute;n debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material.</p>\r\n\r\n<p>Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en compraci&oacute;n de la pulverizaci&oacute;n a la que est&aacute; acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presi&oacute;n de aplicaci&oacute;n es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y as&iacute;, eliminando cualquier tipo de suspensi&oacute;n del material en el aire.</p>\r\n\r\n<p>Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicaci&oacute;n en diferentes elementos:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; - mejora el tiempo de trabajo.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; - sin exceso de la nube de pulverizaci&oacute;n (spray).</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; - m&aacute;s eficacia de transferencia de material (a partir de 65%).</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; - menor &quot;rebote&quot; de material sobre la superficie a aplicar.</p>', 4, '2018-08-09 19:48:40', '2018-08-09 19:48:40'),
(13, '¿Cuáles son las ventajas de pintar con el calor del aire producido por las turbinas de los turbos compresores MAER?', '<p>La raz&oacute;n por la cual las turbinas ofrecen aire caliente se puede encontrar en su estructura.&nbsp;Las turbinas giran en torno a los 18.000 a 22.000 rpm, esta gran velocidad provoca que las mol&eacute;culas de aire que ingresan desde el exterior (pasando por un filtrado que elimina todo sedimento posible que haya en el ambiente) entran en contacto unas con otras dando origen a la salida del aire con calor. Y dada la gran fricci&oacute;n y compresi&oacute;n generadas, el resultado es aire caliente, seco y libre de toda humedad posible.</p>\r\n\r\n<p>Permitiendo acelerar notablemente el proceso de secado y evitando la aureola que se podr&iacute;a ver en el producto final al momento del secado ya mencionado.</p>', 4, '2018-08-09 19:49:14', '2018-08-09 19:49:14'),
(14, '¿Por qué utilizar turbos compresores de aire caliente y no una pistola tradicional?', '<p>En primer medida va a lograr una gran libertad de aplicaci&oacute;n. El compresor no supera los 4 kgs, con lo cual podr&aacute; moverse con extrema facilidad.</p>\r\n\r\n<p>Tambi&eacute;n es importante mencionar que de esta manera no deber&aacute; adquirir compresor alguno para realizar los trabajos que necesite ya que cualquier de los tres equipos MAER incluyen todo lo necesario para pintar con la pintura que lo desee.</p>', 4, '2018-08-09 19:49:55', '2018-08-09 19:49:55'),
(15, '¿Qué significa \"etapa\" de un turbo compresor?', '<p>La etapa de una turbina hace referencia espec&iacute;ficamente a la turbina del equipo en cuesti&oacute;n. En MAER ofrecemos equipos de dos y tres turbinas: su elecci&oacute;n depender&aacute; estr&iacute;ctamente de los trabajos que vaya a realizar con el equipo a seleccionar. De esta manera, cuantas m&aacute;s turbinas o etapas haya, mayor ser&aacute; el caudal de aire producido: mayor velocidad de aplicaci&oacute;n y menor tiempo de trabajo.</p>', 4, '2018-08-09 19:50:24', '2018-08-09 19:50:24'),
(16, '¿Cada cuánto tiempo debo cambiar el filtro de aire del turbo compresor?', '<p>Siempre hay que comprobar que el filtro de aire del turbo compresor se encuentre limpio y sin deterioro alguno. Esta comprobaci&oacute;n deber&aacute; realizarla al terminar de realizar el proceso de pintado como tambi&eacute;n antes de iniciar uno nuevo. Si el mismo se encuentra deteriorado o sucio se recomienda sustituir por uno nuevo.</p>\r\n\r\n<p>Cabe destacar que la no sustituci&oacute;n y mantenimiento correcto del filtro de aire mencionado puede provocar que el equipo no &quot;respire&quot; lo suficiente, provocando graves da&ntilde;os al mismo. Y tambi&eacute;n es importante aclarar que nunca se debe utilizar el equipo sin filtro de aire colocado.</p>', 4, '2018-08-09 19:50:46', '2018-08-09 19:50:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ventajas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caracteristicas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `despiece` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen_presentacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio_sin_oferta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` enum('publico','privado','ambos') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('novedad','oferta','ninguna') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `rubro_id` int(10) UNSIGNED DEFAULT NULL,
  `modelo_id` int(10) UNSIGNED DEFAULT NULL,
  `aplica_desc` tinyint(1) NOT NULL,
  `iva` enum('21','10.5','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoria_pregunta_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `contenido`, `ventajas`, `caracteristicas`, `manual`, `despiece`, `orden`, `presentacion`, `imagen_presentacion`, `precio`, `precio_sin_oferta`, `visible`, `tipo`, `categoria_id`, `rubro_id`, `modelo_id`, `aplica_desc`, `iva`, `created_at`, `updated_at`, `categoria_pregunta_id`) VALUES
(1, '454 HVLP BUHO', '<p>Pistola de alta gama profesional</p>', '<p style=\"text-align:justify\">El concepto de aplicaci&oacute;n es por gravedad y su sistema es HVLP (Alto Volumen Baja Presi&oacute;n) cumple con todas las normas internacionales de protecci&oacute;n ambiental.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">La pistola <strong>454&nbsp;BUHO</strong>&nbsp;se desarroll&oacute; bajo el concepto &quot;HVLP&quot; (alto volumen a baja presi&oacute;n), cuyas caracter&iacute;sticas fundamentales son: la presi&oacute;n de aplicaci&oacute;n debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material. Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en comparaci&oacute;n de la pulverizaci&oacute;n a la que est&aacute; acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presi&oacute;n de aplicaci&oacute;n es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y as&iacute;, eliminando cualquier tipo de suspensi&oacute;n del material en el aire. Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicaci&oacute;n en diferentes elementos: - mejora el tiempo de trabajo. - sin exceso de la nube de pulverizaci&oacute;n (spray). - m&aacute;s eficacia de transferencia de material (a partir de 65%). - menor &quot;rebote&quot; de material sobre la superficie a aplicar.</p>', '<p>-Nueva l&iacute;nea: m&aacute;s liviana y ergon&oacute;mica.</p>\r\n\r\n<p>-Mecanizada sobre un mismo eje.</p>\r\n\r\n<p>-Mayor precisi&oacute;n y suavidad al trabajo.</p>\r\n\r\n<p>-Acabados de calidad.</p>\r\n\r\n<p>-Transferencia de producto 65% (trabajando a 2.5 Bar).</p>\r\n\r\n<p>-Ahorro de producto entre 35% y 45%.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>\r\n\r\n<p>-Reduce la contaminaci&oacute;n y los riesgos del trabajador.</p>', '<p>-Cuerpo estampado con tratamiento de anodizado.</p>\r\n\r\n<p>-Gatillo de acero inoxidable.</p>\r\n\r\n<p>-Prensaestopa autoajustable de acero inoxidable.</p>\r\n\r\n<p>-Consumo de aire a 2.0&nbsp;Bar 300 lts/min.</p>\r\n\r\n<p>-Regulador de caudal de aire con man&oacute;metro.</p>\r\n\r\n<p>-Reguladores de fluido y abanico.</p>\r\n\r\n<p>-Pico de fluido y aguja en acero inoxidable.</p>\r\n\r\n<p>-Dep&oacute;sito de 650 cm3 con antigoteo y filtro de producto tipo vaso.</p>\r\n\r\n<p>-Peso 720 grs.</p>\r\n\r\n<p>-C&oacute;digo 1212: &Oslash; 1.3 mm.</p>\r\n\r\n<p>-C&oacute;digo 1214: &Oslash; 1.4 mm.</p>', 'img/producto/manual/52_454 HVLP.pdf', 'img/producto/despiece/52_BUHO 3-4.jpg', 'ad', NULL, 'img/producto/imagen_presentacion/4_presentacion.jpg', '8154', NULL, 'ambos', 'ninguna', 3, 1, 2, 1, '10.5', '2018-07-30 04:36:45', '2019-05-31 17:27:44', 1),
(2, '4101 GMP LEON', '<p>Sistema de Media Presi&oacute;n</p>', '<p style=\"text-align:justify\">El Modelo <strong>4101 GMP</strong> es una pistola profesional, el concepto de aplicaci&oacute;n es por gravedad y su sistema es de media presi&oacute;n. Por su gran abanico y notable ahorro de producto podemos denominar a esta pistola como una herramienta apta por los usuarios m&aacute;s exigentes. Se diferencia con respecto a los sistemas convencionales en ahorro de producto en 10%.</p>\r\n\r\n<p style=\"text-align:justify\">Forma parte de los sistemas de media presi&oacute;n o <strong>pistolas h&iacute;bridas</strong>. Estas pistolas hicieron su aparici&oacute;n en el mercado debio a su bajo consumo de aire. Al manejar menor&nbsp;presi&oacute;n que una pistola convencional, produce menor niebla de pulverizaci&oacute;n, redundando en excelentes acabados aunque con menor tasa de transferencia que los sistemas denominados H.V.L.P.</p>\r\n\r\n<p style=\"text-align:justify\">Sin embargo, la tecnolog&iacute;a de media presi&oacute;n o sistemas h&iacute;bridos, ofrecen transferencias superiores al 50% cumpliendo con la normativa vigente en el mundo y adem&aacute;s permite un gran <strong>aumento en la velocidad del trabajo</strong>.</p>', '<p>-Nueva l&iacute;nea: m&aacute;s liviana y ergon&oacute;mica.</p>\r\n\r\n<p>-Mecanizada sobre un mismo eje.</p>\r\n\r\n<p>-Mayor precisi&oacute;n y suavidad al trabajo.</p>\r\n\r\n<p>-Bajo consumo de aire.</p>\r\n\r\n<p>-Consumo de aire a 2.0 Bar 200 lts/min.</p>\r\n\r\n<p>-Eficiencia de transferencia de producto 50%.</p>\r\n\r\n<p>-Acabados de alta calidad.</p>', '<p>-Cuerpo estampado con tratamiento de anodizado.</p>\r\n\r\n<p>-Boquilla de aire de gran abanico.</p>\r\n\r\n<p>-Gatillo de acero inoxidable.</p>\r\n\r\n<p>-Prensaestopa autoajustable de acero inoxidable.</p>\r\n\r\n<p>-Dep&oacute;sito de 650 cm3 con antigoteo y filtro de producto tipo vaso.</p>\r\n\r\n<p>-Regulador de caudal de aire.</p>\r\n\r\n<p>-Perillas reguladoras de fluido y abanico.</p>\r\n\r\n<p>-Pico de fluido y aguja en acero inoxidable.</p>\r\n\r\n<p>-Peso 690 grs.</p>\r\n\r\n<p>-C&oacute;digo 1202: &Oslash; 1.4 mm.</p>\r\n\r\n<p>-C&oacute;digo 1023: &Oslash; 1.8 mm para FONDOS.</p>', 'img/producto/manual/52_4101 GMP.pdf', 'img/producto/despiece/52_LEON 3-4.jpg', 'ac', NULL, 'img/producto/imagen_presentacion/4_presentacion.jpg', '7420', NULL, 'ambos', 'ninguna', 1, 1, 2, 1, '10.5', '2018-07-30 07:18:43', '2019-05-31 17:26:17', 1),
(3, '658 JAGUAR', '<p>Pistola de alta gama profesional</p>', '<p style=\"text-align:justify\"><strong>MAER&nbsp;</strong>presenta la nueva <strong>658 JAGUAR de envidiable est&eacute;tica, </strong>destinada espec&iacute;ficamente al rubro del repintado automotor. Es una pistola de excelente equilibrio, mecanizada en un solo eje, lo cual garantiza el centrado de la aguja con el pico de fluido y la boquilla.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>658 JAGUAR</strong> incorpora un nuevo prensaestopa autom&aacute;tico de acero inoxidable de simple reemplazo y total seguridad, adem&aacute;s le sumamos un gatillo estampado en acero inoxidable para garantizar por mucho tiempo su durabilidad, el apoyo tambi&eacute;n en acero inoxidable lo cual facilita su desplazamiento logrando mayor suavidad y descanso a la mano del usuario.</p>\r\n\r\n<p style=\"text-align:justify\">El concepto de aplicaci&oacute;n de <strong>658 JAGUAR </strong>es por gravedad y su sistema de alta transferencia cumple con todas las normas internacionales de protecci&oacute;n ambiental.</p>', '<p>-Nueva l&iacute;nea: m&aacute;s liviana y ergon&oacute;mica.</p>\r\n\r\n<p>-Mecanizada sobre un mismo eje.</p>\r\n\r\n<p>-Mayor precisi&oacute;n y suavidad al trabajo.</p>\r\n\r\n<p>-Acabados de alt&iacute;sima calidad.</p>\r\n\r\n<p>-&nbsp;Menor contaminaci&oacute;n del medio ambiente.</p>\r\n\r\n<p>- Ahorro de producto entre 30% y 40%.</p>\r\n\r\n<p>- Baja notablemente la nube de pulverizaci&oacute;n.</p>\r\n\r\n<p>- Reduce la contaminaci&oacute;n y los riesgos del trabajador.</p>', '<p>- Sistema de alta transferencia por gravedad.</p>\r\n\r\n<p>- Cuerpo de aluminio estampado con tratamiento pulido y anodizado.</p>\r\n\r\n<p>- Gatillo de acero inoxidable.</p>\r\n\r\n<p>- Prensaestopa autoajustable de acero inoxidable.</p>\r\n\r\n<p>- Transferencia de producto 65% (trabajando a 2.5 Bar).</p>\r\n\r\n<p>- Regulador de caudal de aire con man&oacute;metro.</p>\r\n\r\n<p>- Perillas reguladoras de fluido y abanico.</p>\r\n\r\n<p>- Pico de fluido y aguja en acero inoxidable de &Oslash; 1,3 mm.</p>\r\n\r\n<p>-Dep&oacute;sito de 650 cm3 con antigoteo y filtro de producto tipo vaso.</p>\r\n\r\n<p>-Consumo de aire a 2.0 Bar 280 lts/min.</p>\r\n\r\n<p>- Peso 680 grs.</p>\r\n\r\n<p>- C&oacute;digo: 1216</p>', 'img/producto/manual/52_658 JAGUAR.pdf', 'img/producto/despiece/52_JAGUAR 3-4.jpg', 'ab', NULL, 'img/producto/imagen_presentacion/4_presentacion.jpg', '8210', NULL, 'ambos', 'ninguna', 2, 1, 2, 1, '10.5', '2018-07-30 07:29:20', '2019-05-31 17:29:45', 1),
(4, '807 AQUA', '<p>Pistola de alta gama profesional</p>', '<p style=\"text-align:justify\"><strong>MAER&nbsp;</strong>presenta la m&aacute;xima calidad en pistolas de pintar argentinas destinada al repintado automotor.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">En <strong>MAER </strong>logramos desarrollar la pistola&nbsp;<strong>807 AQUA&nbsp;</strong>de manera moderna y con un gran mejoramiento en la mecanizaci&oacute;n alcanzando una notable mejor&iacute;a est&eacute;tica y de calidad.</p>\r\n\r\n<p style=\"text-align:justify\">La novedosa boquilla&nbsp;&nbsp;<strong>AQUA </strong>y los innovadores<strong> PICOS EX&nbsp;</strong>logran cubrir todas las nuevas necesidades en la aplicaci&oacute;n de pinturas base agua.</p>\r\n\r\n<p style=\"text-align:justify\">El concepto de aplicaci&oacute;n es por gravedad y su sistema es de alta transferencia, con menor consumo de aire y acabados de m&aacute;xima calidad.</p>\r\n\r\n<p style=\"text-align:justify\">La pistola <strong>807 </strong><strong>AQUA </strong>est&aacute; especialmente dise&ntilde;ada para aplicaciones de las nuevas tecnolog&iacute;as en Pinturas de Base Acuosa.</p>', '<p style=\"text-align:justify\">-Nueva l&iacute;nea: m&aacute;s liviana y ergon&oacute;mica.</p>\r\n\r\n<p style=\"text-align:justify\">-Mayor precisi&oacute;n y suavidad al trabajo.</p>\r\n\r\n<p style=\"text-align:justify\">-Piezas en acero inoxidable que garantizan mayor durabilidad y son &oacute;ptimas para la utilizaci&oacute;n de pinturas base agua.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">-Transferencia de producto 65% (trabajando a 2 Bar 29 psi).</p>\r\n\r\n<p style=\"text-align:justify\">-Acabados de m&aacute;xima calidad.</p>\r\n\r\n<p style=\"text-align:justify\">-Menor contaminaci&oacute;n del medio ambiente.</p>\r\n\r\n<p style=\"text-align:justify\">-Ahorro de producto entre 30% y 40%.</p>\r\n\r\n<p style=\"text-align:justify\">-Reduce la contaminaci&oacute;n y los riesgos del trabajador.</p>\r\n\r\n<p style=\"text-align:justify\">-Baja notablemente la nube de pulverizaci&oacute;n.</p>', '<p style=\"text-align:justify\">-Cuerpo estampado con tratamiento pulido y&nbsp;anodizado.</p>\r\n\r\n<p style=\"text-align:justify\">-Gatillo de acero inoxidable.</p>\r\n\r\n<p>-Prensaestopa autoajustable de acero inoxidable.</p>\r\n\r\n<p style=\"text-align:justify\">-Mecanizada sobre un mismo eje.</p>\r\n\r\n<p style=\"text-align:justify\">-Consumo de aire a 2.0&nbsp;Bar 290 lts/min.</p>\r\n\r\n<p style=\"text-align:justify\">-Dep&oacute;sito de 650 cm3 con antigoteo y filtro de producto.</p>\r\n\r\n<p style=\"text-align:justify\">-Regulador de caudal de aire digital.</p>\r\n\r\n<p style=\"text-align:justify\">-Reguladores de fluido y abanico.</p>\r\n\r\n<p style=\"text-align:justify\">-Pico de fluido y aguja en acero inoxidable de &Oslash; 1.3 mm.</p>\r\n\r\n<p style=\"text-align:justify\">-Peso 680 grs.</p>\r\n\r\n<p style=\"text-align:justify\">-C&oacute;digo 1218.</p>', 'img/producto/manual/52_807 AQUA.pdf', 'img/producto/despiece/52_SIRENA 3-4.jpg', 'aaa', NULL, 'img/producto/imagen_presentacion/4_presentacion.jpg', '10237', NULL, 'ambos', 'ninguna', 2, 1, NULL, 1, '10.5', '2018-08-08 17:40:40', '2019-05-31 17:30:01', 1),
(5, 'Q13 HVLP', '<p>Pistola Profesional</p>', '<p style=\"text-align:justify\">Destinada y especialmente dise&ntilde;ada para la aplicaci&oacute;n de lacas, barnices y bicapas para el repintado automotor y la industria del mueble.</p>\r\n\r\n<p style=\"text-align:justify\">La pistola <strong>Q13 HVLP</strong>&nbsp;se desarroll&oacute; bajo el concepto &quot;HVLP&quot; (alto volumen a baja presi&oacute;n), cuyas caracter&iacute;sticas fundamentales son: la presi&oacute;n de aplicaci&oacute;n debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material. Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en comparaci&oacute;n de la pulverizaci&oacute;n a la que est&aacute; acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presi&oacute;n de aplicaci&oacute;n es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y as&iacute;, eliminando cualquier tipo de suspensi&oacute;n del material en el aire. Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicaci&oacute;n en diferentes elementos: - mejora el tiempo de trabajo. - sin exceso de la nube de pulverizaci&oacute;n (spray). - m&aacute;s eficacia de transferencia de material (a partir de 65%). - menor &quot;rebote&quot; de material sobre la superficie a aplicar.</p>', '<p>-Acabados de alt&iacute;sima calidad.</p>\r\n\r\n<p>-Pistola robusta, ergon&oacute;mica, liviana y balanceada.</p>\r\n\r\n<p>-Transferencia de producto 65% (trabajando a 2.5 Bar).</p>\r\n\r\n<p>-Menor contaminaci&oacute;n del medio ambiente.</p>\r\n\r\n<p>-Ahorro de producto entre 30% y 40%.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>\r\n\r\n<p>-Reduce la contaminaci&oacute;n y los riesgos del trabajador.</p>', '<p>-Cuerpo estampado con tratamiento de anodizado.</p>\r\n\r\n<p>-Consumo de aire a 2.5 Bar 370&nbsp;lts/min.</p>\r\n\r\n<p>-Regulador de caudal de aire con man&oacute;metro.</p>\r\n\r\n<p>-Perillas reguladoras de fluido y abanico.</p>\r\n\r\n<p>-Pico de fluido y aguja en acero inoxidable de &Oslash; 1,3 mm.</p>\r\n\r\n<p>-Dep&oacute;sito de 650 cm3 con antigoteo y filtro de producto tipo vaso.</p>\r\n\r\n<p>-Peso 680 grs.</p>\r\n\r\n<p>-C&oacute;digo 1080.</p>', 'img/producto/manual/52_Q13.pdf', 'img/producto/despiece/52_q13.jpg', 'af', NULL, 'img/producto/imagen_presentacion/5_presentacion.jpg', '5769', NULL, 'ambos', 'ninguna', 3, 1, NULL, 1, '10.5', '2018-08-08 17:45:19', '2019-05-31 17:32:23', 1),
(6, '276', '<p>Pistola profesional para retoques y difuminados.</p>', '<p style=\"text-align:justify\">El modelo <strong>276 </strong>se trata de una pistola de reducidas dimensiones. Ideal para difuminados y retoques, otorgando soluciones de gran precisi&oacute;n para peque&ntilde;as superficies.</p>\r\n\r\n<p style=\"text-align:justify\">El concepto de aplicaci&oacute;n es por gravedad y su sistema es LVLP (Bajo Volumen a Baja Presi&oacute;n) que le permite a los usuarios obtener retoques de calidad con m&iacute;nimo consumo de aire.</p>', '<p><strong>-Acabados de calidad.</strong></p>\r\n\r\n<p><strong>-Bajo consumo de aire.</strong></p>\r\n\r\n<p><strong>-Menor impacto ambiental.</strong></p>\r\n\r\n<p><strong>-Admite trabajar con compresores muy peque&ntilde;os.</strong></p>', '<p><strong>-Cuerpo estampado con tratamiento anodizado.</strong></p>\r\n\r\n<p><strong>-Regulador de abanico.</strong></p>\r\n\r\n<p><strong>-Perilla reguladoras de fluido.</strong></p>\r\n\r\n<p><strong>-Dep&oacute;sito de nylon de 140 cm3 con antigoteo.</strong></p>\r\n\r\n<p><strong>-Consumo de aire a 1.5 BAR 40 lts/min.</strong></p>\r\n\r\n<p><strong>-Peso 290 grs.</strong></p>', 'img/producto/manual/52_276.pdf', 'img/producto/despiece/52_276 2-2.jpg', 'bda', NULL, 'img/producto/imagen_presentacion/6_presentacion.jpg', '5345', NULL, 'ambos', 'ninguna', 5, 1, NULL, 1, '10.5', '2018-08-08 17:59:10', '2019-05-31 17:23:55', 1),
(7, '4101 S', NULL, '<p>La pistola modelo <strong>4101 S</strong> forma parte de los sistemas de media presi&oacute;n o <strong>pistolas h&iacute;bridas</strong>. Estas pistolas hicieron su aparici&oacute;n en el mercado debio a su bajo consumo de aire. Al manejar menor&nbsp;presi&oacute;n que una pistola convencional, produce menor niebla de pulverizaci&oacute;n, redundando en excelentes acabados aunque con menor tasa de transferencia que los sistemas denominados H.V.L.P.</p>\r\n\r\n<p>Sin embargo, la tecnolog&iacute;a de media presi&oacute;n o sistemas h&iacute;bridos, ofrecen transferencias superiores al 50% cumpliendo con la normativa vigente en el mundo y adem&aacute;s permite un gran <strong>aumento en la velocidad del trabajo</strong>.</p>\r\n\r\n<p>El concepto de aplicaci&oacute;n es por succi&oacute;n y su sistema es de media presi&oacute;n. Por su gran abanico y notable ahorro de aire podemos denominar a esta pistola como una herramienta apta para los usuarios m&aacute;s exigentes.</p>\r\n\r\n<p>​Se diferencia con respecto a los sistemas convencionales en ahorro de producto del 10%.</p>', '<p>-Consumo de aire a 2.5 Bar 250 lts/min.</p>\r\n\r\n<p>-Transferencia de producto 50%.</p>\r\n\r\n<p>-Acabados de alta calidad.</p>\r\n\r\n<p>-Bajo consumo de aire.</p>', '<p>-Cuerpo estampado con tratamiento de anodizado.</p>\r\n\r\n<p>-Regulador de caudal de aire.</p>\r\n\r\n<p>-Perillas reguladoras de fluido y abanico.</p>\r\n\r\n<p>-Pico de fluido y aguja en acero inoxidable de &Oslash; 1,75 mm.</p>\r\n\r\n<p>-Dep&oacute;sito de 900 cm3 con membrana antigoteo y filtro de producto.</p>\r\n\r\n<p>-Peso 950 grs.</p>\r\n\r\n<p>-C&oacute;digo 1003.</p>', 'img/producto/manual/52_4101 S.pdf', 'img/producto/despiece/52_4101-S.jpg', 'ca', NULL, 'img/producto/imagen_presentacion/7_presentacion.jpg', '8154', NULL, 'ambos', 'ninguna', 1, 2, NULL, 1, '10.5', '2018-08-08 18:12:51', '2019-05-31 17:27:16', 1),
(8, '454 S MAX HVLP', '<p>Pistola de alta gama profesional</p>', '<p>El concepto de aplicaci&oacute;n es a succi&oacute;n y su sistema HVLP (Alto Volumen Baja Presi&oacute;n) permite generar un gran ahorro de producto con acabados de alta calidad.</p>\r\n\r\n<p>La pistola <strong>454 S HVLP MAX&nbsp;</strong>se desarroll&oacute; bajo el concepto &quot;HVLP&quot; (alto volumen a baja presi&oacute;n), cuyas caracter&iacute;sticas fundamentales son: la presi&oacute;n de aplicaci&oacute;n debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material. Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en comparaci&oacute;n de la pulverizaci&oacute;n a la que est&aacute; acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presi&oacute;n de aplicaci&oacute;n es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y as&iacute;, eliminando cualquier tipo de suspensi&oacute;n del material en el aire. Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicaci&oacute;n en diferentes elementos: - mejora el tiempo de trabajo. - sin exceso de la nube de pulverizaci&oacute;n (spray). - m&aacute;s eficacia de transferencia de material (a partir de 65%). - menor &quot;rebote&quot; de material sobre la superficie a aplicar.</p>', '<p>-Acabados de calidad.</p>\r\n\r\n<p>-Transferencia de producto 65% (trabajando a 2.5 Bar).</p>\r\n\r\n<p>-Cumple con las normas internacionales de protecci&oacute;n ambiental.</p>\r\n\r\n<p>-Ahorro de producto entre 35% y 45%.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>\r\n\r\n<p>-Reduce la contaminaci&oacute;n y los riesgos del trabajador.</p>', '<p>-Cuerpo estampado con tratamiento de anodizado.</p>\r\n\r\n<p>-Consumo de aire a 2.5 Bar 370 lts/min.</p>\r\n\r\n<p>-Regulador de caudal de aire con man&oacute;metro.</p>\r\n\r\n<p>-Dep&oacute;sito de 900 cm3 con membrana antigoteo y filtro de producto.</p>\r\n\r\n<p>-Reguladores de fluido y abanico.</p>\r\n\r\n<p>-Pico de fluido y aguja en acero inoxidable de &Oslash; 1,6 mm.</p>\r\n\r\n<p>-Peso 950 grs.</p>\r\n\r\n<p>-C&oacute;digo 1008.</p>', 'img/producto/manual/52_454 S MAX.pdf', 'img/producto/despiece/52_3-4.jpg', 'cb', NULL, 'img/producto/imagen_presentacion/8_presentacion.jpg', '8971', NULL, 'ambos', 'ninguna', 3, 2, NULL, 1, '10.5', '2018-08-08 22:23:43', '2019-05-31 17:28:25', 1),
(9, '4101 B', '<p>Pistola profesional para alta producci&oacute;n.</p>', '<p style=\"text-align:justify\">El concepto de aplicaci&oacute;n de la pistola <strong>4101 B</strong> es por presi&oacute;n y su sistema es de media presi&oacute;n. Por su gran abanico y notable ahorro de producto podemos denominar a esta pistola como una herramienta apta por los usuarios m&aacute;s exigentes.​</p>\r\n\r\n<p style=\"text-align:justify\">Esta pistola debe ser utilizada con tanques presurizados.</p>\r\n\r\n<p style=\"text-align:justify\">Se diferencia con respecto a los sistemas convencionales en ahorro de producto del 10% y alta calidad de acabados.</p>', '<p>-Consumo de aire a 2.5 Bar 330 lts/min.</p>\r\n\r\n<p>-Eficiencia de transferencia de producto 50%.</p>\r\n\r\n<p>-Acabados de alta calidad.</p>\r\n\r\n<p>-Bajo consumo de aire.</p>', '<p>-Cuerpo estampado con tratamiento de anodizado.</p>\r\n\r\n<p>-Perillas reguladoras de fluido y abanico.</p>\r\n\r\n<p>-Picos de fluido y agujas en acero inoxidable en varias medidas.</p>\r\n\r\n<p>-Peso 590 grs.</p>\r\n\r\n<p>-C&oacute;digo 1030.</p>', 'img/producto/manual/52_4101 B.pdf', 'img/producto/despiece/52_4101B 2-2.jpg', 'da', NULL, 'img/producto/imagen_presentacion/9_presentacion.jpg', '7736', NULL, 'ambos', 'ninguna', 1, 2, NULL, 1, '10.5', '2018-08-08 22:56:55', '2019-05-31 17:26:01', 1),
(10, '404 G LATEX', '<p style=\"text-align:justify\">Dise&ntilde;ada para la aplicaci&oacute;n de pinturas al <strong>LATEX</strong>.</p>', '<p style=\"text-align:justify\">El concepto de aplicaci&oacute;n es por gravedad y su sistema es <strong>HVLP </strong>(Alto Volumen a Baja Presi&oacute;n) que le permite a los usuarios tener una eficiencia de transferencia superior al 72%.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">La pistola <strong>404 GL</strong> se desarroll&oacute; bajo el concepto &quot;HVLP&quot; (alto volumen a baja presi&oacute;n), cuyas caracter&iacute;sticas fundamentales son: la presi&oacute;n de aplicaci&oacute;n debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material. Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en comparaci&oacute;n de la pulverizaci&oacute;n a la que est&aacute; acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presi&oacute;n de aplicaci&oacute;n es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y as&iacute;, eliminando cualquier tipo de suspensi&oacute;n del material en el aire. Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicaci&oacute;n en diferentes elementos: - mejora el tiempo de trabajo. - sin exceso de la nube de pulverizaci&oacute;n (spray). - m&aacute;s eficacia de transferencia de material (a partir de 65%). - menor &quot;rebote&quot; de material sobre la superficie a aplicar.</p>', '<p>-Transferencia de producto 72% (trabajando a 2.5 Bar).</p>\r\n\r\n<p>-Cumple con las normas internacionales de protecci&oacute;n ambiental.</p>\r\n\r\n<p>-Reduce los riesgos del trabajador.</p>\r\n\r\n<p>-Ahorro de producto entre 40% y 50%.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>', '<p>-Reguladores de fluido y abanico.</p>\r\n\r\n<p>-Consumo de aire a 2.5 bar 280 lts/min.</p>\r\n\r\n<p>-Dep&oacute;sito de nylon capacidad 5 lts.</p>\r\n\r\n<p>-Pico de fluido y aguja de &Oslash; 2.0 mm en acero inoxidable.</p>\r\n\r\n<p>-Peso 930 grs.</p>\r\n\r\n<p>-C&oacute;digo 1026.</p>', 'img/producto/manual/52_404 GL LATEX.pdf', 'img/producto/despiece/52_404GL 2-2.jpg', 'be', NULL, 'img/producto/imagen_presentacion/10_presentacion.jpg', '7020', NULL, 'ambos', 'ninguna', 3, 3, NULL, 1, '10.5', '2018-08-09 16:07:03', '2019-05-31 17:23:40', 1),
(11, '408 GOT', '<p style=\"text-align:justify\">Ideal para la aplicaci&oacute;n de revestimientos pl&aacute;sticos / texturados.</p>', '<p style=\"text-align:justify\">Dise&ntilde;ada para la aplicaci&oacute;n de productos de alta viscosidad para la decoraci&oacute;n en hogar y obra.</p>', '<p>-L&iacute;nea ergon&oacute;mica, disminuye la tensi&oacute;n muscular del usuario.</p>\r\n\r\n<p>-Con regulador de aire cont&iacute;nuo, puede regular la presi&oacute;n de aire por la salida de la boquilla de aplicaci&oacute;n, logrando el tipo de aplicaci&oacute;n deseada.</p>', '<p>-Pistola sin v&aacute;lvula, aire directo.</p>\r\n\r\n<p>-Reguladores de aire independiente.</p>\r\n\r\n<p>-Boquillas de &Oslash; 2,5 mm, &Oslash; 4 mm y &Oslash; 6 mm.</p>\r\n\r\n<p>-Dep&oacute;sito de nylon con capacidad 5 lts.</p>\r\n\r\n<p>-Peso 1100 grs.</p>\r\n\r\n<p>-Incorpora llave de corte de aire para utilizar con compresores con tanque.</p>\r\n\r\n<p>-C&oacute;digo 1018.</p>', 'img/producto/manual/52_408.jpg', 'img/producto/despiece/52_408.jpg', 'bf', NULL, 'img/producto/imagen_presentacion/11_presentacion.jpg', '4588', NULL, 'ambos', 'ninguna', 4, 3, NULL, 1, '10.5', '2018-08-09 16:41:48', '2019-05-31 17:25:06', 1),
(12, 'TC 802', '<p style=\"text-align:justify\">Tecnolog&iacute;a HVLP (Alto Volumen a Baja Presi&oacute;n).</p>', '<p style=\"text-align:justify\">El&nbsp;Modelo TC 802&nbsp;se utiliza para pintar sin niebla con productos de base acuosa y/o solventes: lacas, esmaltes epoxis, l&aacute;tex, barnices, tintas, fondos, imprimaciones, selladores para madera, resinas, adhesivos de contacto, sopleteables, sint&eacute;ticos, multicolores para paredes.</p>\r\n\r\n<p style=\"text-align:justify\">Es una turbina de 2 etapas de alto rendimiento para obtener una precisa pulverizaci&oacute;n logrando acabados de calidad.</p>\r\n\r\n<p style=\"text-align:justify\">​Su tecnolog&iacute;a HVLP (Alto Volumen a Baja Presi&oacute;n) implementa un gran volumen de aire a baja presi&oacute;n para atomizar materiales en part&iacute;culas finas. Logrando resultados con un acabado profesional sin exceso de niebla.</p>\r\n\r\n<p style=\"text-align:justify\">El&nbsp;Modelo TC 802&nbsp;le agrega al concepto HVLP aire caliente y seco para alcanzar secados r&aacute;pidos y reducir la nube de pulverizaci&oacute;n. Con aire caliente, seco, libre de aceite, agua y humedad.</p>\r\n\r\n<p style=\"text-align:justify\">Su doble aislaci&oacute;n garantiza que ninguna conexi&oacute;n el&eacute;ctrica del equipo se encuentre en contacto con el chasis del motor que manipula el usuario, garantizando total seguridad.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>INLCUYE EL SIGUIENTE EQUIPAMIENTO:</strong></p>\r\n\r\n<p>-Copa Ford N&ordm;4. Viscos&iacute;metro para determinar densidad del producto a aplicar.</p>\r\n\r\n<p>-Correa para mayor comodidad.</p>\r\n\r\n<p>-Manguera de aire de 2.5 mts con acople r&aacute;pido.</p>\r\n\r\n<p>-3 picos de fluido &Oslash; 1.0 mm., &Oslash; 1.5 mm. y &Oslash; 2.0 mm.</p>', '<p>-Copa Ford N&ordm;4. Viscos&iacute;metro para determinar densidad del producto a aplicar.</p>\r\n\r\n<p>-Correa para mayor comodidad.</p>\r\n\r\n<p>-Manguera de aire de 2.5 mts con acople r&aacute;pido.</p>\r\n\r\n<p>-3 picos de fluido &Oslash; 1.0 mm., &Oslash; 1.5 mm. y &Oslash; 2.0 mm.</p>', '<p>-Ahorro de producto de 40%.</p>\r\n\r\n<p>-220 voltios. Motor 1/2 HP. Potencia: 600 Watts.</p>\r\n\r\n<p>-Peso: 3200 grs.</p>\r\n\r\n<p>-C&oacute;digo 4002.</p>\r\n\r\n<p>-Garant&iacute;a de 1 a&ntilde;o&nbsp;</p>', 'img/producto/manual/52_TC 802.pdf', 'img/producto/despiece/52_505T 3-4.jpg', 'bb', NULL, 'img/producto/imagen_presentacion/12_presentacion.jpg', '10985', NULL, 'ambos', 'ninguna', 3, 3, NULL, 1, '10.5', '2018-08-09 17:17:44', '2019-05-31 17:32:55', 4),
(13, 'TC 850', '<p style=\"text-align:justify\">Para pintar sin niebla con productos de base acuosa y/o solventes: lacas, esmaltes epoxis, l&aacute;tex, barnices, tintas, fondos, imprimaciones, selladores para madera, resinas, adhesivos de contacto, sopleteables, sint&eacute;ticos, multicolores para paredes.</p>', '<p style=\"text-align:justify\">El&nbsp;Modelo <strong>TC 850</strong>&nbsp;se utiliza para pintar sin niebla con productos de base acuosa y/o solventes: lacas, esmaltes epoxis, l&aacute;tex, barnices, tintas, fondos, imprimaciones, selladores para madera, resinas, adhesivos de contacto, sopleteables, sint&eacute;ticos, multicolores para paredes.</p>\r\n\r\n<p style=\"text-align:justify\">Es una turbina de 3 etapas de alto rendimiento para obtener una precisa pulverizaci&oacute;n logrando acabados de calidad.</p>\r\n\r\n<p style=\"text-align:justify\">​Su tecnolog&iacute;a HVLP (Alto Volumen a Baja Presi&oacute;n) implementa un gran volumen de aire a baja presi&oacute;n para atomizar materiales en part&iacute;culas finas. Logrando resultados con un acabado profesional sin exceso de niebla.</p>\r\n\r\n<p style=\"text-align:justify\">El&nbsp;Modelo <strong>TC 850</strong> le agrega al concepto HVLP aire caliente y seco para alcanzar secados r&aacute;pidos y reducir la nube de pulverizaci&oacute;n. Con aire caliente, seco, libre de aceite, agua y humedad.</p>\r\n\r\n<p style=\"text-align:justify\">Su doble aislaci&oacute;n garantiza que ninguna conexi&oacute;n el&eacute;ctrica del equipo se encuentre en contacto con el chasis del motor que manipula el usuario, garantizando total seguridad.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p><strong>INLCUYE EL SIGUIENTE EQUIPAMIENTO:</strong></p>\r\n\r\n<p>-Copa Ford N&ordm;4. Viscos&iacute;metro para determinar densidad del producto a aplicar.</p>\r\n\r\n<p>-Manguera de aire de 3.5 mts con acople r&aacute;pido.</p>\r\n\r\n<p>-3 picos de fluido &Oslash; 1.0 mm., &Oslash; 1.5 mm. y &Oslash; 2.0 mm.</p>', '<p>-Copa Ford N&ordm;4. Viscos&iacute;metro para determinar densidad del producto a aplicar.</p>\r\n\r\n<p>-Manguera de aire de 3.5 mts con acople r&aacute;pido de lat&oacute;n​.</p>\r\n\r\n<p>-3 picos de fluido &Oslash; 1.0 mm., &Oslash; 1.5 mm. y &Oslash; 2.0 mm.</p>', '<p>-Ahorro de producto de 40%.</p>\r\n\r\n<p>-220 voltios. Motor 3/4 HP. Potencia: 800 Watts.</p>\r\n\r\n<p>-Peso: 3200 grs.</p>\r\n\r\n<p>-C&oacute;digo 4005.</p>\r\n\r\n<p>-Garant&iacute;a de 1 a&ntilde;o.</p>', 'img/producto/manual/52_TC 850.pdf', 'img/producto/despiece/52_505T 3-4.jpg', 'bc', NULL, 'img/producto/imagen_presentacion/13_presentacion.jpg', '13157', NULL, 'ambos', 'ninguna', 3, 3, NULL, 1, '10.5', '2018-08-09 17:31:35', '2019-05-31 17:33:04', 4),
(14, 'TC 903', '<p style=\"text-align:justify\">Se utiliza para pintar sin niebla con productos de base acuosa y/o solventes.</p>', '<p style=\"text-align:justify\">El&nbsp;Modelo <strong>TC 903&nbsp;</strong>se utiliza para pintar sin niebla con productos de base acuosa y/o solventes: lacas, esmaltes epoxis, l&aacute;tex, barnices, tintas, fondos, imprimaciones, selladores para madera, resinas, adhesivos de contacto, sopleteables, sint&eacute;ticos, multicolores para paredes.</p>\r\n\r\n<p style=\"text-align:justify\">Es una turbina de 3 etapas de alto rendimiento para obtener una precisa pulverizaci&oacute;n logrando acabados de calidad.</p>\r\n\r\n<p style=\"text-align:justify\">​Su tecnolog&iacute;a HVLP (Alto Volumen a Baja Presi&oacute;n) implementa un gran volumen de aire a baja presi&oacute;n para atomizar materiales en part&iacute;culas finas. Logrando resultados con un acabado profesional sin exceso de niebla.</p>\r\n\r\n<p style=\"text-align:justify\">El&nbsp;Modelo <strong>TC 903&nbsp;</strong>le agrega al concepto HVLP aire caliente y seco para alcanzar secados r&aacute;pidos y reducir la nube de pulverizaci&oacute;n. Con aire caliente, seco, libre de aceite, agua y humedad.</p>\r\n\r\n<p style=\"text-align:justify\">Su doble aislaci&oacute;n garantiza que ninguna conexi&oacute;n el&eacute;ctrica del equipo se encuentre en contacto con el chasis del motor que manipula el usuario, garantizando total seguridad.</p>\r\n\r\n<p><strong>INLCUYE EL SIGUIENTE EQUIPAMIENTO:</strong></p>\r\n\r\n<p>-Copa Ford N&ordm;4. Viscos&iacute;metro para determinar densidad del producto a aplicar.</p>\r\n\r\n<p>-Manguera de aire de 5 mts con acople r&aacute;pido.</p>\r\n\r\n<p>-3 picos de fluido &Oslash; 0.75 mm, &Oslash; 1.0 mm., &Oslash; 1.5 mm. y &Oslash; 2.0 mm.</p>', '<p>-Ahorro de producto de 40%.</p>\r\n\r\n<p>-220 voltios. Motor 1 HP. Potencia: 900 Watts.</p>\r\n\r\n<p>-Peso: 5,4 kg.</p>\r\n\r\n<p>-C&oacute;digo 4003.</p>', '<p>-Colector para utilizar 2 pistolas de manera simult&aacute;nea.</p>\r\n\r\n<p>-Copa Ford N&ordm;4. Viscos&iacute;metro para determinar densidad&nbsp;del producto a aplicar.</p>\r\n\r\n<p>-Manguera de aire de 5 mts con acople r&aacute;pido.</p>\r\n\r\n<p>-4 picos de fluido &Oslash; 0.75 mm, 1.0 mm., 1.5 mm. y 2.0 mm.</p>\r\n\r\n<p>-Garant&iacute;a de 1 a&ntilde;o.</p>', 'img/producto/manual/52_TC 903.pdf', 'img/producto/despiece/52_3-6.jpg', 'bd', NULL, 'img/producto/imagen_presentacion/14_presentacion.jpg', '15356', NULL, 'ambos', 'ninguna', 3, 3, NULL, 1, '10.5', '2018-08-09 17:40:14', '2019-05-31 17:33:13', 4),
(15, '505 T', '<p style=\"text-align:justify\">Pistola para mototurbina TC802 y TC850 con 3 picos de fluido, antigoteo y filtro de producto.</p>', '<p>Es una pistola profesional para pintar con todo tipo de pinturas: lacas, esmaltes epoxis, l&aacute;tex, barnices, tintas, fondos, imprimaciones, selladores para madera, resinas, adhesivos de contacto sepleteables, sint&eacute;ticos, multicolores para paredes.<br />\r\nCon un novedoso dep&oacute;sito de aluminio con INTERIOR C&Oacute;NICO que facilita la aplicaci&oacute;n en distintas posiciones de la pistola con m&iacute;nimo nivel de fluido.<br />\r\nPara usar con Turbo Compresor MAER Modelo TC 802.</p>', '<p>-Ergon&oacute;mica, liviana, confiable y robusta.</p>\r\n\r\n<p>-Ahorro de producto entre 35% y 45%.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>\r\n\r\n<p>-Reduce la contaminaci&oacute;n y los riesgos del trabajador.</p>', '<p>-Cuerpo estampado en aluminio con tratamiento anodizado.</p>\r\n\r\n<p>-Picos de fluido en acero inoxidable de &Oslash; 1.0 mm / &Oslash; 1.5 mm / &Oslash; 2.0 mm.</p>\r\n\r\n<p>-Aguja universal de acero inoxidable.</p>\r\n\r\n<p>-Dep&oacute;sito&nbsp;de aluminio con interior c&oacute;nico que facilita la aplicaci&oacute;n en distintas posiciones con antigoteo&nbsp;y&nbsp;filtro.</p>\r\n\r\n<p>-Peso: 1080 grs.</p>\r\n\r\n<p>-C&oacute;digo 1002.</p>', 'img/producto/manual/52_TC 802.pdf', 'img/producto/despiece/52_505T 3-4.jpg', 'bg', NULL, 'img/producto/imagen_presentacion/15_presentacion.jpg', '6936', NULL, 'ambos', 'ninguna', 6, 3, NULL, 1, '10.5', '2018-08-09 18:09:23', '2019-05-31 17:29:13', 1),
(16, '505 TCR', '<p style=\"text-align:justify\">Pistola para mototurbina TC903 con regulador de caudal de aire, 4 picos de fluido, antigoteo y filtro de producto.</p>', '<p style=\"text-align:justify\">Es una pistola profesional para pintar con todo tipo de pinturas: lacas, esmaltes epoxis, l&aacute;tex, barnices, tintas, fondos, imprimaciones, selladores para madera, resinas, adhesivos de contacto sepleteables, sint&eacute;ticos, multicolores para paredes.<br />\r\nCon un novedoso dep&oacute;sito de aluminio con INTERIOR C&Oacute;NICO que facilita la aplicaci&oacute;n en distintas posiciones de la pistola con m&iacute;nimo nivel de fluido.<br />\r\nPara usar con Turbo Compresor MAER Modelo TC 903.</p>', '<p>-Regulador de caudal de aire.</p>\r\n\r\n<p>-Ergon&oacute;mica, liviana, confiable y robusta.</p>\r\n\r\n<p>-Ahorro de producto entre 35% y 45%.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>\r\n\r\n<p>-Reduce la contaminaci&oacute;n y los riesgos del trabajador.</p>', '<p>-Cuerpo estampado en aluminio con tratamiento anodizado.</p>\r\n\r\n<p>-Picos de fluido en acero inoxidable de &Oslash; 0.75&nbsp;/ &Oslash; 1.0 mm&nbsp;/&nbsp;&Oslash; 1.5 mm / &Oslash; 2.0 mm.</p>\r\n\r\n<p>-Aguja universal de acero inoxidable.</p>\r\n\r\n<p>-Dep&oacute;stio de aluminio con interior c&oacute;nico que facilita la aplicaci&oacute;n en distintas posiciones con antigoteo y filtro&nbsp;de&nbsp;producto.</p>\r\n\r\n<p>-Peso: 1120 grs.</p>\r\n\r\n<p>-C&oacute;digo 1002.</p>', 'img/producto/manual/52_TC 903.pdf', 'img/producto/despiece/52_3-6.jpg', 'bh', NULL, 'img/producto/imagen_presentacion/16_presentacion.jpg', '8132', NULL, 'ambos', 'ninguna', 7, 3, NULL, 1, '10.5', '2018-08-09 18:14:24', '2019-05-31 17:29:26', 1),
(17, 'R 12', '<p>Regulador de presi&oacute;n de 0 a 8 Bar. Entrada y salida de 1/2&quot; BSP.</p>', '<p>Dise&ntilde;ados desde una barra maciza de aluminio de alta calidad.</p>\r\n\r\n<p>Con vaso de policarbonato, protector y despurgue semi autom&aacute;tico.</p>', '<p><strong>-Regulador de presi&oacute;n de 0 a 8 Bar. Entrada y salida de 1/2&quot; BSP.</strong></p>', '<p><strong>-Entrada y salida de 1/2&quot; BSP.<br />\r\n-Caudal de aire 1200 lts/min.<br />\r\n-C&oacute;digo: 2003.</strong></p>', 'img/producto/manual/17_R12X.jpg', 'img/producto/despiece/17_R12X.jpg', 'dbe', NULL, 'img/producto/imagen_presentacion/17_presentacion.jpg', '3992', NULL, 'ambos', 'ninguna', 8, 5, NULL, 1, '21', '2018-08-09 18:25:42', '2019-05-31 17:32:40', 1),
(20, 'FR 12', '<p style=\"text-align:justify\">Filtro de aire con regulador de presi&oacute;n.</p>', '<p style=\"text-align:justify\">Dise&ntilde;ado&nbsp;desde una barra maciza de aluminio de alta calidad.</p>\r\n\r\n<p style=\"text-align:justify\">Triple sistema de filtrado, fricci&oacute;n, centrifugado y&nbsp;bronce sinterizado. Incluye vaso de policarbonato de alta resistencia, protector,&nbsp;despurgue semi autom&aacute;tico y&nbsp;regulador de presi&oacute;n de sistema a v&aacute;lvula de 0 a 8 bar. Alcanzando la excelencia en el sistema de filtrado de aire para talleres e industrias.</p>', '<p>-Constante presi&oacute;n aire limpio, regulado y filtrado.</p>', '<p>-Entrada y salida de 1/2&quot;BSP.</p>\r\n\r\n<p>-Caudal de aire 1200 lts/min.</p>', 'img/producto/manual/20_F12X.jpg', 'img/producto/despiece/20_F12X.jpg', 'dbc', NULL, 'img/producto/imagen_presentacion/20_presentacion.jpg', '5684', NULL, 'ambos', 'ninguna', 8, 1, NULL, 1, '21', '2018-08-09 18:38:28', '2019-05-31 17:31:30', 1),
(21, '404 TORO Fondos', NULL, '<p style=\"text-align:justify\">El&nbsp;Modelo <strong>404 HVLP TORO FONDOS</strong>&nbsp;es una pistola de alta gama profesional en sus diferentes versiones para la aplicaci&oacute;n de productos pesados. El concepto de aplicaci&oacute;n es por gravedad y su sistema es HVLP (Alto Volumen a Baja Presi&oacute;n) que le permite a los usuarios tener una eficiencia de transferencia superior al 85%.</p>\r\n\r\n<p style=\"text-align:justify\">La pistola <strong>404 HVLP TORO FONDOS</strong>&nbsp;se desarroll&oacute; bajo el concepto &quot;HVLP&quot; (alto volumen a baja presi&oacute;n), cuyas caracter&iacute;sticas fundamentales son: la presi&oacute;n de aplicaci&oacute;n debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material. Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en comparaci&oacute;n de la pulverizaci&oacute;n a la que est&aacute; acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presi&oacute;n de aplicaci&oacute;n es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y as&iacute;, eliminando cualquier tipo de suspensi&oacute;n del material en el aire. Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicaci&oacute;n en diferentes elementos: - mejora el tiempo de trabajo. - sin exceso de la nube de pulverizaci&oacute;n (spray). - m&aacute;s eficacia de transferencia de material (a partir de 65%). - menor &quot;rebote&quot; de material sobre la superficie a aplicar.</p>\r\n\r\n<p style=\"text-align:justify\">Sus cuatro versiones son ideales para la aplicaci&oacute;n de materiales pesados y/o fondos.</p>\r\n\r\n<p style=\"text-align:justify\">C&oacute;digo 1205: &Oslash; 1.4 mm: H&uacute;medos sobre h&uacute;medos.</p>\r\n\r\n<p style=\"text-align:justify\">C&oacute;digo 1206: &Oslash; 1.8 mm: S&oacute;lidos medios.</p>\r\n\r\n<p style=\"text-align:justify\">C&oacute;digo 1207: &Oslash; 2.2 mm: Altos s&oacute;lidos.</p>\r\n\r\n<p style=\"text-align:justify\">C&oacute;digo 1208: &Oslash; 3.0 mm: Gel Coats/Resinas.</p>', '<p>-Nueva l&iacute;nea: m&aacute;s liviana y ergon&oacute;mica.</p>\r\n\r\n<p>-Mecanizada sobre el mismo eje.</p>\r\n\r\n<p>-Mayor precisi&oacute;n y suavidad al trabajo.</p>\r\n\r\n<p>-Transferencia de producto 85% (trabajando a 2.0&nbsp;Bar).</p>\r\n\r\n<p>-Cumple con las normas internacionales de protecci&oacute;n ambiental.</p>\r\n\r\n<p>-Reduce los riesgos del trabajador.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>', '<p>-Ahorro de producto entre 40% y 50%.</p>\r\n\r\n<p>-Gatillo de acero inoxidable.</p>\r\n\r\n<p>-Prensaestopa autoajustable de acero inoxidable.</p>\r\n\r\n<p>-Pico de fluido y aguja de acero inoxidable.</p>\r\n\r\n<p>-Consumo de aire a 2.0&nbsp;bar 300 lts/min.</p>\r\n\r\n<p>- Dep&oacute;sito de nylon de 650 cm3 con antigoteo.</p>\r\n\r\n<p>-Peso 720 grs.</p>', 'img/producto/manual/52_404 TORO.pdf', 'img/producto/despiece/52_TORO 3-4.jpg', 'ae', NULL, 'img/producto/imagen_presentacion/21_404 TORO HVLP.jpg', '7440', NULL, 'ambos', 'ninguna', 3, 1, NULL, 1, '10.5', '2018-08-14 18:05:13', '2019-05-31 17:24:21', 1),
(22, '454 A HVLP', NULL, '<p style=\"text-align:justify\">El&nbsp;Modelo <strong>454&nbsp;A MAX</strong>&nbsp;es una pistola autom&aacute;tica de alta gama profesional y su sistema <strong>HVLP </strong>(Alto Volumen Baja Presi&oacute;n) cumple con todas las normas internacionales de protecci&oacute;n ambiental. Este sistema le permite obtener un gran ahorro de producto con acabados de alta calidad.</p>\r\n\r\n<p style=\"text-align:justify\">​Dise&ntilde;ada para sistemas autom&aacute;ticos donde se requiere una armon&iacute;a de ciclos de apertura y cierre.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Opcional:</strong> pico de fluido y aguja en carburo de tungsteno <strong>(Modelo 454 A CT)</strong>.</p>', NULL, '<p>-Pistola Autom&aacute;tica.</p>\r\n\r\n<p>-Cuerpo de aluminio anodizado.</p>\r\n\r\n<p>-Reguladores de fluido y abanico de precisi&oacute;n.</p>\r\n\r\n<p>-Picos de fluido y agujas en acero inoxidable en varias medidas.</p>\r\n\r\n<p>-Consumo de aire a 2.5 Bar (320 lts./min).</p>\r\n\r\n<p>-Entradas de aire independientes, atomizaci&oacute;n y accionamiento de pist&oacute;n.</p>\r\n\r\n<p>-C&oacute;digo 1041.</p>', 'img/producto/manual/52_454 A.pdf', 'img/producto/despiece/52_454-A 2.jpg', 'ddb', NULL, 'img/producto/imagen_presentacion/22_454-A Automatica.jpg', NULL, NULL, 'publico', NULL, 3, 6, NULL, 0, '10.5', '2018-08-14 18:34:16', '2018-10-03 18:10:24', 1),
(23, '454 B MAX', NULL, '<p style=\"text-align:justify\">El&nbsp;Modelo <strong>454&nbsp;B MAX</strong>&nbsp;es una pistola de Alta Gama Profesional, el concepto de aplicaci&oacute;n es por presi&oacute;n y su sistema HVLP (Alto Volumen Baja Presi&oacute;n) cumple con todas las normas internacionales de protecci&oacute;n ambiental. Este sistema le permite obtener un gran ahorro de producto con acabados de alta calidad.</p>\r\n\r\n<p style=\"text-align:justify\">La pistola <strong>454 B MAX&nbsp;</strong>se desarroll&oacute; bajo el concepto &quot;HVLP&quot; (alto volumen a baja presi&oacute;n), cuyas caracter&iacute;sticas fundamentales son: la presi&oacute;n de aplicaci&oacute;n debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material. Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en comparaci&oacute;n de la pulverizaci&oacute;n a la que est&aacute; acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presi&oacute;n de aplicaci&oacute;n es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y as&iacute;, eliminando cualquier tipo de suspensi&oacute;n del material en el aire. Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicaci&oacute;n en diferentes elementos: - mejora el tiempo de trabajo. - sin exceso de la nube de pulverizaci&oacute;n (spray). - m&aacute;s eficacia de transferencia de material (a partir de 65%). - menor &quot;rebote&quot; de material sobre la superficie a aplicar.</p>', '<p>-Transferencia de producto 65% (trabajando a 2.5 Bar).</p>\r\n\r\n<p>-Ahorro de producto entre 35% y 45%.</p>\r\n\r\n<p>-Acabados de alta calidad.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>\r\n\r\n<p>-Reduce la contaminaci&oacute;n y los riesgos del trabajador.</p>', '<p>-Cuerpo estampado con tratamiento de anodizado.</p>\r\n\r\n<p>-Consumo de aire a 2.5 Bar 370 lts/min.</p>\r\n\r\n<p>-Reguladores de fluido y abanico.</p>\r\n\r\n<p>-Peso 560 grs.</p>\r\n\r\n<p>-C&oacute;digo 1032.</p>', 'img/producto/manual/52_454 B MAX.pdf', 'img/producto/despiece/52_2-2.jpg', 'db', NULL, 'img/producto/imagen_presentacion/23_454 B MAX.jpg', '8560', NULL, 'ambos', 'ninguna', 3, 4, NULL, 1, '10.5', '2018-08-14 21:43:34', '2019-05-31 17:27:29', 1),
(24, '205 - Protex', '<p>Modelo 205 - Protex</p>', '<p style=\"text-align:justify\">Especial para la aplicaci&oacute;n de insonorizantes y anticorrosivos en cartuchos.</p>', '<p><strong>-Cuerpo de aluminio con tratamiento epoxi.</strong></p>\r\n\r\n<p><strong>-Con regulador de rigurosidad en la aplicaci&oacute;n.</strong></p>', '<p>-<strong>Peso: 360 grs.</strong></p>\r\n\r\n<p><strong>-C&oacute;digo 3002.</strong></p>', 'img/producto/manual/24_205.jpg', 'img/producto/despiece/24_205.jpg', 'dbb', NULL, 'img/producto/imagen_presentacion/24_205.jpg', '671', NULL, 'ambos', 'ninguna', 4, 1, NULL, 0, '10.5', '2018-08-14 22:14:14', '2019-03-18 18:01:42', 1),
(25, 'Acople rápido 3/8\" gran caudal.', NULL, NULL, NULL, NULL, NULL, NULL, 'dbfa', NULL, NULL, '522', NULL, 'privado', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 15:12:14', '2019-03-18 18:07:04', NULL),
(26, '4101 A', NULL, '<p style=\"text-align:justify\">El&nbsp;Modelo&nbsp;<strong>4101&nbsp;A</strong>&nbsp;es una pistola autom&aacute;tica profesional, el concepto de aplicaci&oacute;n es por presi&oacute;n y su sistema es de media presi&oacute;n. Por su gran abanico y notable ahorro de producto podemos denominar a esta pistola como una herramienta apta por los usuarios m&aacute;s exigentes.</p>\r\n\r\n<p style=\"text-align:justify\">Dise&ntilde;ada para sistemas autom&aacute;ticos donde se requiere una armon&iacute;a de ciclos de apertura y cierre.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Opcional:</strong> pico de fluido y aguja en carburo de tungsteno (<strong>Modelo 4101 A CT</strong>).</p>', NULL, '<p>-Pistola Autom&aacute;tica.</p>\r\n\r\n<p>-Cuerpo anodizado.</p>\r\n\r\n<p>-Reguladores de fluido y abanico de precisi&oacute;n.</p>\r\n\r\n<p>-Eficiencia de transferencia 50%.</p>\r\n\r\n<p>-Consumo de aire a 2.5 Bar (280 lts./min).</p>\r\n\r\n<p>-Picos de fluido y agujas en acero inoxidable en varias medidas.</p>\r\n\r\n<p>-Entradas de aire independientes, atomizaci&oacute;n y accionamiento de pist&oacute;n.</p>\r\n\r\n<p>-C&oacute;digo 1040.</p>', 'img/producto/manual/52_4101 A.pdf', 'img/producto/despiece/52_4101A 2.jpg', 'de', NULL, 'img/producto/imagen_presentacion/26_4101 A 2.jpg', NULL, NULL, 'publico', 'ninguna', 1, 6, NULL, 0, '10.5', '2018-08-15 17:03:25', '2018-10-03 18:12:28', 1),
(27, '5021 Taza Remota', '<p>Para inyectar, proyectar todo tipo de l&iacute;quidos de baja a mediana densidad.</p>\r\n\r\n<p>​Para trabajos de baja y mediana producci&oacute;n.</p>', NULL, NULL, '<p>-Tanque presurizado de 2 lts de capacidad.</p>\r\n\r\n<p>-Soporte para manejo portatil.</p>\r\n\r\n<p>-Regulador de presi&oacute;n con man&oacute;metro, para proyectar el fluido inyectado a la pistola.</p>\r\n\r\n<p>-V&aacute;lvula de seguridad.</p>\r\n\r\n<p>-Peso: 1500 grs.</p>\r\n\r\n<p>-C&oacute;digo 1052.</p>', 'img/producto/manual/52_5021.jpg', 'img/producto/despiece/52_5021.jpg', 'dda', NULL, NULL, NULL, NULL, 'publico', 'ninguna', 8, 2, NULL, 0, '21', '2018-08-15 17:11:51', '2018-10-03 18:44:27', 1),
(28, 'TAP 40 Agit. Neumático', '<p>Para inyectar, proyectar todo tipo de l&iacute;quidos en general: de baja y mediana densidad, inclusive el cemento de contacto sopleteable.</p>\r\n\r\n<p>​</p>', NULL, NULL, '<ul>\r\n	<li>\r\n	<p><strong>Tanque presurizado de 40 lts de capacidad con agitador neum&aacute;tico.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Incluye dep&oacute;sito interno en acero inoxidable.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tap&oacute;n de carga independiente.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Regulador de presi&oacute;n.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>V&aacute;lvula de seguridad.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dimensiones:&nbsp;410 x 325 x 935 mm.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Peso: 26&nbsp;kg.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&oacute;digo 1053.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Con certificaci&oacute;n internacional&nbsp;T&Uuml;V.</strong></p>\r\n	</li>\r\n</ul>', NULL, NULL, 'ec', NULL, NULL, NULL, NULL, 'publico', 'ninguna', 8, 4, NULL, 0, '10.5', '2018-08-15 17:35:41', '2018-10-02 22:20:09', 1);
INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `contenido`, `ventajas`, `caracteristicas`, `manual`, `despiece`, `orden`, `presentacion`, `imagen_presentacion`, `precio`, `precio_sin_oferta`, `visible`, `tipo`, `categoria_id`, `rubro_id`, `modelo_id`, `aplica_desc`, `iva`, `created_at`, `updated_at`, `categoria_pregunta_id`) VALUES
(29, 'TAP 40 Agitador Manual', '<p>Para inyectar, proyectar todo tipo de l&iacute;quidos en general: de baja y mediana densidad, inclusive el cemento de contacto sopleteable.</p>', NULL, NULL, '<ul>\r\n	<li>\r\n	<p><strong>Tanque presurizado de 40 lts de capacidad con agitador manual.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Incluye dep&oacute;sito interno en acero inoxidable.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Tap&oacute;n de carga independiente.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Regulador de presi&oacute;n.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>V&aacute;lvula de seguridad.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Dimensiones:&nbsp;410 x 325 x 935 mm.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Peso: 26&nbsp;kg.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&oacute;digo 1053.</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Con certificaci&oacute;n internacional&nbsp;T&Uuml;V.</strong></p>\r\n	</li>\r\n</ul>', NULL, NULL, 'eb', NULL, NULL, NULL, NULL, 'publico', 'ninguna', 8, 4, NULL, 0, '10.5', '2018-08-15 17:37:24', '2018-10-02 22:19:26', 1),
(30, '165 BI', NULL, '<p style=\"text-align:justify\">El&nbsp;Modelo <strong>165&nbsp;BI</strong>&nbsp;es una pistola autom&aacute;tica dise&ntilde;ada para el marcado de piezas sin ning&uacute;n tipo de contacto. Su apertura y cierre de material se produce en d&eacute;cimas de segundo.</p>\r\n\r\n<p><strong>​Dos versiones disponibles:&nbsp;</strong><br />\r\n&nbsp; - Con una entrada de aire y otra de fluido.<br />\r\n&nbsp; - Con dos entradas de aire independientes: para el pist&oacute;n y la atomizaci&oacute;n y otra para el fluido.&nbsp;</p>', '<p>-Especial marcado</p>\r\n\r\n<p>-Aplicaci&oacute;n de cola vin&iacute;lica en l&iacute;neas y abanicos.</p>\r\n\r\n<p>-Se&ntilde;alizaci&oacute;n de puntos.</p>', '<p>-Pistola Autom&aacute;tica.</p>\r\n\r\n<p>-Cuerpo de acero inoxidable.</p>\r\n\r\n<p>-Con regulador de fluido.</p>\r\n\r\n<p>-Dos boquillas chorro plano y redondo.</p>\r\n\r\n<p>-Pico de fuido en acero inoxidable.</p>\r\n\r\n<p>-Aguja en acero inoxidable.</p>\r\n\r\n<p>-C&oacute;digo 1051.</p>', 'img/producto/manual/52_165 BI.pdf', 'img/producto/despiece/52_165 BI.pdf', 'df', NULL, NULL, '21428', NULL, 'publico', 'ninguna', 8, 6, NULL, 0, '10.5', '2018-08-15 17:41:57', '2019-03-18 18:01:27', 1),
(31, '4101 B CT', NULL, '<p style=\"text-align:justify\">El&nbsp;Modelo <strong>4101&nbsp;B CT&nbsp;(carburo tungsteno) </strong>es una pistola profesional, el concepto de aplicaci&oacute;n es por presi&oacute;n. Est&aacute; dise&ntilde;ada para la aplicaci&oacute;n de productos abrasivos,&nbsp;esmaltes cer&aacute;micos, sanitarios y&nbsp;anticorrosivos, con picos de fluido y aguja encasquillados en&nbsp;<strong>carburo de tungsteno de m&aacute;xima dureza y &oacute;ptimo nivel de resistencia</strong>. Por su gran abanico y notable ahorro de producto podemos denominar a esta pistola como una herramienta apta por los usuarios m&aacute;s exigentes.​</p>\r\n\r\n<p style=\"text-align:justify\">En sus dos versiones:</p>\r\n\r\n<p style=\"text-align:justify\">- &Oslash; 1.75 mm.</p>\r\n\r\n<p style=\"text-align:justify\">- &Oslash; 2.50 mm.</p>', '<p>-Consumo de aire a 2.5 Bar 190 lts/min.</p>\r\n\r\n<p>-Eficiencia de transferencia de producto 50%.</p>\r\n\r\n<p>-Acabados de alta calidad.</p>', '<p>-Cuerpo estampado con tratamiento de anodizado.</p>\r\n\r\n<p>-Perillas reguladoras de fluido y abanico.</p>\r\n\r\n<p>-Picos y agujas en carburo tungsteno de &Oslash; 1.75 mm y &Oslash; 2.5 mm.</p>\r\n\r\n<p>-Peso 590 grs.</p>\r\n\r\n<p>-C&oacute;digo 1031.</p>', 'img/producto/manual/52_4101 B.pdf', 'img/producto/despiece/52_4101BCT.jpg', 'ecb', NULL, NULL, NULL, NULL, 'publico', 'ninguna', 1, 5, NULL, 0, '10.5', '2018-08-15 18:09:47', '2018-10-03 18:15:15', 1),
(32, 'Perno enchufe hembra 1/4 BSP', NULL, NULL, NULL, NULL, NULL, NULL, 'ek', NULL, NULL, '182', NULL, 'privado', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:28:18', '2019-03-18 18:10:25', NULL),
(33, 'Perno enchufe macho 1/4 BSP', NULL, NULL, NULL, NULL, NULL, NULL, 'ek', NULL, NULL, '182', NULL, 'privado', 'ninguna', 8, NULL, NULL, 0, '21', NULL, '2019-03-18 18:10:34', NULL),
(35, '- Depósito de gravedad de 600 cm3.', NULL, NULL, NULL, NULL, NULL, NULL, 'hf', NULL, NULL, '1219', NULL, 'ambos', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:33:56', '2019-03-18 17:55:58', NULL),
(36, '- Depósito gravedad 140 cm3 para modelo 276.', NULL, NULL, NULL, NULL, NULL, NULL, 'hg', NULL, NULL, '1075', NULL, 'ambos', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:44:09', '2019-03-18 17:57:05', NULL),
(37, 'Depósito de gravedad de 5 lts completo para pistolas 404 GL / 408 GOT', NULL, NULL, NULL, NULL, NULL, NULL, 'hf', NULL, NULL, '1414', NULL, 'privado', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:45:34', '2019-03-18 18:07:18', NULL),
(38, '- Depósito de aluminio para pistolas 505 T/TCR.', NULL, NULL, NULL, NULL, NULL, NULL, 'hg', NULL, NULL, '1620', NULL, 'ambos', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:46:05', '2019-03-18 17:55:22', NULL),
(39, '- Depósito de aluminio para pistolas de succión.', NULL, NULL, NULL, NULL, NULL, NULL, 'hh', NULL, NULL, '1053', NULL, 'ambos', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:47:39', '2019-03-18 17:55:47', NULL),
(40, 'Filtro para depósito de gravedad de 600 cm3.', NULL, NULL, NULL, NULL, NULL, NULL, 'hi', NULL, NULL, '145', NULL, 'privado', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:49:02', '2019-03-18 18:09:11', NULL),
(41, 'Filtro caño de pesca para depósito de succión', NULL, NULL, NULL, NULL, NULL, NULL, 'hj', NULL, NULL, '155', NULL, 'privado', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:49:57', '2019-03-18 18:08:57', NULL),
(42, 'Manguera de 2,5 mts completa.', NULL, NULL, NULL, NULL, NULL, NULL, 'em', NULL, NULL, '3205', NULL, 'privado', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:50:48', '2019-03-18 18:09:49', NULL),
(43, 'Manguera de 3,5 mts completa', NULL, NULL, NULL, NULL, NULL, NULL, 'en', NULL, NULL, '3415', NULL, 'privado', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:52:17', '2019-03-18 18:10:01', NULL),
(44, 'Manguera de 5 mts completa.', NULL, NULL, NULL, NULL, NULL, NULL, 'eo', NULL, NULL, '3876', NULL, 'privado', 'ninguna', 8, 7, NULL, 0, '21', '2018-08-15 19:52:52', '2019-03-18 18:10:13', NULL),
(45, 'F 12', NULL, '<p>Gran caudal de aire con sistema de regulaci&oacute;n a v&aacute;lvula de 0 a 8 Bar.</p>\r\n\r\n<p>Dise&ntilde;ados desde una barra maciza de aluminio de alta calidad.</p>\r\n\r\n<p>Con vaso de policarbonato, protector y despurgue semi autom&aacute;tico.</p>', NULL, '<p><strong>-Entrada y salida de 1/2&quot; BSP.<br />\r\n-Caudal de aire 1000 lts/min.<br />\r\n-C&oacute;digo: 2001.</strong></p>', NULL, NULL, 'dbf', NULL, NULL, '2816', NULL, 'ambos', 'ninguna', 8, 4, NULL, 1, '21', '2018-08-15 20:27:50', '2019-05-31 17:31:48', 1),
(46, '- Regulador caudal de aire para modelo Q13.', NULL, NULL, NULL, NULL, NULL, NULL, 'hc', NULL, NULL, '1197', NULL, 'ambos', 'ninguna', 8, NULL, NULL, 0, '21', '2018-08-16 22:16:58', '2019-03-18 17:57:31', 1),
(47, '- Regulador de caudal de aire MAX c/manómetro.', NULL, NULL, NULL, NULL, NULL, NULL, 'hd', NULL, NULL, '1692', NULL, 'ambos', 'ninguna', 8, NULL, NULL, 0, '21', '2018-08-16 22:18:31', '2019-03-18 17:59:12', 1),
(48, '- Regulador de caudal de aire digital.', NULL, NULL, NULL, NULL, NULL, NULL, 'he', NULL, NULL, '2204', NULL, 'ambos', 'ninguna', 8, NULL, NULL, 0, '21', '2018-08-16 22:20:44', '2019-03-18 17:58:58', 1),
(49, '- Regulador de caudal de aire universal.', NULL, NULL, NULL, NULL, NULL, NULL, 'gcb', NULL, NULL, '690', NULL, 'ambos', 'ninguna', 8, NULL, NULL, 0, '21', '2018-08-22 22:46:51', '2019-03-18 17:59:29', 1),
(50, '404 Toro Gel Coats', NULL, '<p style=\"text-align:justify\">El modelo&nbsp;<strong>404 HVLP TORO FONDOS &Oslash; 3.0 mm</strong>&nbsp;es una pistola de alta gama profesional en sus diferentes versiones para la aplicaci&oacute;n de productos pesados <strong>(GEL COATS - RESINAS)</strong>.&nbsp;El concepto de aplicaci&oacute;n es por gravedad y su sistema es HVLP (Alto Volumen a Baja Presi&oacute;n) que le permite a los usuarios tener una eficiencia de transferencia superior al 85%.</p>\r\n\r\n<p style=\"text-align:justify\">La pistola <strong>404 HVLP TORO FONDOS &Oslash; 3.0 mm</strong>&nbsp;se desarroll&oacute; bajo el concepto &quot;HVLP&quot; (alto volumen a baja presi&oacute;n), cuyas caracter&iacute;sticas fundamentales son: la presi&oacute;n de aplicaci&oacute;n debe estar por debajo de 10 psi en la salida de la boquilla (0.70 Bar) y la transferencia al menos de 65% de material. Con los sistemas H.V.L.P va a requerir de una menor cantidad de producto en comparaci&oacute;n de la pulverizaci&oacute;n a la que est&aacute; acostumbrado aplicando con sistemas convencionales de pintado. Esto ocurre debido a que la presi&oacute;n de aplicaci&oacute;n es tan baja que la pintura se aplica suavemente, evitando el rebote de la misma sobre la superficie, y as&iacute;, eliminando cualquier tipo de suspensi&oacute;n del material en el aire. Este nuevo concepto mejora notablemente con respecto a los sistemas convencionales de aplicaci&oacute;n en diferentes elementos: - mejora el tiempo de trabajo. - sin exceso de la nube de pulverizaci&oacute;n (spray). - m&aacute;s eficacia de transferencia de material (a partir de 65%). - menor &quot;rebote&quot; de material sobre la superficie a aplicar.</p>', '<p>-Nueva l&iacute;nea: m&aacute;s liviana y ergon&oacute;mica.</p>\r\n\r\n<p>-Mecanizada sobre un mismo eje.</p>\r\n\r\n<p>-Mayor precisi&oacute;n y suavidad al trabajo.</p>\r\n\r\n<p>-Transferencia de producto 85% (trabajando a 2.0&nbsp;Bar).</p>\r\n\r\n<p>-Cumple con las normas internacionales de protecci&oacute;n ambiental.</p>\r\n\r\n<p>-Reduce los riesgos del trabajador.</p>\r\n\r\n<p>-Baja notablemente la nube de pulverizaci&oacute;n.</p>', '<p>- Ahorro de producto entre 40% y 50%.</p>\r\n\r\n<p>- Aplicaci&oacute;n de Gel Coats (resinas).</p>\r\n\r\n<p>-Gatillo de acero inoxidable.</p>\r\n\r\n<p>-Prensaestopa autoajustable de acero inoxidable.</p>\r\n\r\n<p>- Pico de fluido y aguja de acero inoxidable &Oslash; 3.0 mm.</p>\r\n\r\n<p>- Dep&oacute;sito de nylon de 650 cm3 con antigoteo.</p>\r\n\r\n<p>-Consumo de aire a 2.0&nbsp;bar 300 lts/min.</p>\r\n\r\n<p>-Peso 720 grs.</p>', 'img/producto/manual/52_404 TORO.pdf', 'img/producto/despiece/52_TORO 3-4.jpg', 'daa', NULL, NULL, '7440', NULL, 'publico', 'ninguna', 3, NULL, NULL, 1, '10.5', '2018-08-30 18:32:36', '2019-05-31 17:24:38', 1),
(51, 'FR 14', '<p style=\"text-align:justify\">Dise&ntilde;ado&nbsp;desde una barra maciza de aluminio de alta calidad.</p>\r\n\r\n<p style=\"text-align:justify\">Triple sistema de filtrado, fricci&oacute;n, centrifugado y&nbsp;bronce sinterizado. Incluye vaso de policarbonato de alta resistencia, protector,&nbsp;despurgue semi autom&aacute;tico y&nbsp;regulador de presi&oacute;n de sistema a v&aacute;lvula de 0 a 8 bar. Alcanzando la excelencia en el sistema de filtrado de aire para talleres e industrias.</p>', NULL, '<p>-Constante presi&oacute;n de aire limpio, regulado y filtrado.</p>', '<p>-Entrada y salida de 1/4&quot; BSP.</p>\r\n\r\n<p>-Caudal de aire 1000 lts/min.</p>', NULL, NULL, 'dbca', NULL, NULL, '5684', NULL, 'ambos', 'ninguna', 8, NULL, NULL, 1, '21', '2018-09-13 17:28:24', '2019-05-31 17:32:01', 1),
(53, '¡ EXHIBIDOR DE REGALO !!!', '<p>PROMOCI&Oacute;N EXCLUSIVA ONLINE. EXHIBIDOR 2018 LINEA AUTOMOTOR.</p>\r\n\r\n<p>Constru&iacute;do en melamina.&nbsp; Estantes y&nbsp;puertas de vidrio con cerradura.</p>\r\n\r\n<p>Medidas:&nbsp;100 x&nbsp;60 x&nbsp;25 cms.</p>', '<p style=\"text-align:justify\"><u><strong>INCLUYE</strong></u>: 807 AQUA + 658 JAGUAR + 4101 GMP &Oslash; 1.4 +&nbsp;4101 GMP &Oslash; 1.8 (fondos) + 454 BUHO HVLP + Q13 HVLP + 404 TORO HVLP &Oslash; 1.8 +&nbsp;404 TORO HVLP &Oslash; 2.2 + 276 (aer&oacute;grafo) + FR12 (filtro y regulador de aire con trampa de agua).</p>', NULL, NULL, 'img/producto/manual/52_IMG_20181003_161134.jpg', 'img/producto/despiece/52_IMG_20181003_162234.jpg', 'aa', NULL, NULL, '67689', NULL, 'privado', 'novedad', 8, NULL, NULL, 1, '10.5', '2018-10-09 22:07:14', '2019-04-12 22:06:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_relacionados`
--

CREATE TABLE `producto_relacionados` (
  `producto_a` int(11) NOT NULL,
  `producto_b` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `producto_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `nombre`, `link`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://www.facebook.com/pintaconmaer', '2018-07-28 20:32:31', '2018-07-28 23:37:46'),
(2, 'youtube', 'https://www.youtube.com/channel/UChHYXW8qSRdFWWhZGeGwjkQ', '2018-07-28 20:34:18', '2018-07-28 20:34:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubros`
--

CREATE TABLE `rubros` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rubros`
--

INSERT INTO `rubros` (`id`, `nombre`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'REPINTADO AUTOMOTOR', 'img/rubro/1_cat1.jpg', 'AA', '2018-07-28 21:26:40', '2018-08-14 17:28:38'),
(2, 'INDUSTRIA DEL MUEBLE', NULL, 'BB', '2018-08-08 16:24:50', '2018-08-14 17:28:50'),
(3, 'HOGAR Y OBRA', NULL, 'BC', '2018-08-08 16:25:11', '2018-08-14 17:29:04'),
(4, 'NAUTICA', NULL, 'DD', '2018-08-08 16:25:31', '2018-08-14 17:29:18'),
(5, 'CERAMICA Y ENLOZADO', NULL, 'EE', '2018-08-08 16:25:44', '2018-08-14 18:30:35'),
(6, 'PROCESOS AUTOMATICOS', NULL, 'FF', '2018-08-08 16:25:58', '2018-08-14 17:29:54'),
(7, 'ACCESORIOS', NULL, 'HA', '2018-08-08 16:26:15', '2018-08-14 17:30:01'),
(11, 'INDUSTRIA DEL CUERO', NULL, 'ed', '2018-08-09 15:56:49', '2018-08-14 17:29:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubro_producto`
--

CREATE TABLE `rubro_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `rubro_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rubro_producto`
--

INSERT INTO `rubro_producto` (`id`, `rubro_id`, `producto_id`, `created_at`, `updated_at`) VALUES
(6, 1, 4, NULL, NULL),
(7, 1, 3, NULL, NULL),
(8, 1, 2, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 2, 1, NULL, NULL),
(11, 1, 1, NULL, NULL),
(12, 2, 21, NULL, NULL),
(14, 1, 21, NULL, NULL),
(15, 1, 6, NULL, NULL),
(16, 1, 5, NULL, NULL),
(18, 2, 20, NULL, NULL),
(19, 4, 20, NULL, NULL),
(20, 1, 20, NULL, NULL),
(21, 1, 24, NULL, NULL),
(22, 2, 7, NULL, NULL),
(23, 2, 8, NULL, NULL),
(24, 11, 9, NULL, NULL),
(25, 2, 9, NULL, NULL),
(27, 11, 27, NULL, NULL),
(28, 2, 27, NULL, NULL),
(29, 11, 29, NULL, NULL),
(30, 4, 29, NULL, NULL),
(32, 11, 28, NULL, NULL),
(33, 2, 28, NULL, NULL),
(34, 4, 28, NULL, NULL),
(35, 3, 12, NULL, NULL),
(36, 3, 13, NULL, NULL),
(37, 3, 14, NULL, NULL),
(38, 3, 10, NULL, NULL),
(39, 3, 11, NULL, NULL),
(40, 11, 23, NULL, NULL),
(41, 4, 23, NULL, NULL),
(42, 4, 17, NULL, NULL),
(44, 11, 26, NULL, NULL),
(45, 6, 26, NULL, NULL),
(46, 11, 22, NULL, NULL),
(47, 6, 22, NULL, NULL),
(50, 7, 46, NULL, NULL),
(51, 7, 47, NULL, NULL),
(52, 7, 48, NULL, NULL),
(54, 5, 31, NULL, NULL),
(55, 5, 28, NULL, NULL),
(58, 7, 49, NULL, NULL),
(59, 3, 15, NULL, NULL),
(63, 3, 16, NULL, NULL),
(64, 6, 30, NULL, NULL),
(65, 7, 38, NULL, NULL),
(66, 7, 39, NULL, NULL),
(67, 7, 36, NULL, NULL),
(68, 7, 35, NULL, NULL),
(69, 7, 33, NULL, NULL),
(70, 7, 25, NULL, NULL),
(71, 4, 50, NULL, NULL),
(73, 7, 41, NULL, NULL),
(74, 7, 40, NULL, NULL),
(75, 7, 37, NULL, NULL),
(76, 7, 42, NULL, NULL),
(77, 7, 43, NULL, NULL),
(78, 7, 44, NULL, NULL),
(79, 7, 32, NULL, NULL),
(83, 2, 29, NULL, NULL),
(84, 2, 45, NULL, NULL),
(86, 1, 51, NULL, NULL),
(87, 2, 23, NULL, NULL),
(91, 7, 53, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto2` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seccion` enum('home','empresa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `imagen`, `texto`, `texto2`, `link`, `orden`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'img/slider/1_sliderhome.jpg', 'CALIDAD, TRAYECTORIA Y SERVICIO', 'Fabricantes de  Pistolas de Pintar', '/', 'AA', 'home', '2018-07-28 21:25:55', '2018-12-07 16:04:20'),
(2, 'img/slider/2_ee.jpg', NULL, NULL, '/empresa', 'aa', 'empresa', '2018-08-03 15:26:18', '2018-08-03 15:26:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempos`
--

CREATE TABLE `tiempos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ano` int(11) NOT NULL,
  `parrafo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tiempos`
--

INSERT INTO `tiempos` (`id`, `ano`, `parrafo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1972, 'La empresa se traslada a su nueva estructura edilicia. Los modelos de las pistolas de pintar fueron cambiando, los conceptos de aplicación también evolucionaron y la empresa no se quedó atrás.', NULL, '2018-08-03 16:54:45', '2018-10-05 17:20:58'),
(2, 1983, 'Llegada la democracia a la Argentina se instala un nuevo equipo de trabajo a MAER. Con esta renovación y el empuje de los más jóvenes, MAER lanza nuevas pistolas para pintar en los conceptos de alta y baja presión, respetando la calidad premium de siempre. Este es el momento en que la empresa se posiciona bien alto en el mercado argentino de repintado automotor.', NULL, '2018-08-03 16:56:38', '2018-08-24 17:20:24'),
(3, 2003, 'Pasan unos años difíciles para la industria en Argentina. MAER atraviesa el momento e incorpora maquinaria innovadora. También adquiere conocimiento que lleva a la empresa a la vanguardia en el sector.', NULL, '2018-08-03 14:19:43', '2018-10-05 17:24:57'),
(6, 1937, 'Los señores Miguel Ansinelli (M.A) y Enrique Ravazzi (E.R) fundan la empresa \"Establecimientos MAER\". Con un gran esfuerzo formaron un pequeño taller en el partido de Lanús y comenzaron a fabricar las primeras pistolas para pintar con marca MAER. Sus primeros modelos sorprendieron al mercado por su indiscutible calidad.', NULL, '2018-08-10 20:41:44', '2018-10-05 17:01:58'),
(7, 2007, 'Los conceptos de aplicación cambian notablemente con el paso del tiempo y MAER acompaña estos desafíos con una importante inversión en maquinaria de última generación. Las pistolas de gravedad se imponen en el mercado y MAER produce las primeras pistolas de pintar prensadas. Esta innovación impacta de gran manera en el mercado argentino llevando a las nuevas pistolas MAER a destacarse no sólo por su calidad sino también por ser muy eficientes en la transferencia de las nuevas pinturas.', NULL, '2018-08-24 17:38:29', '2018-10-05 17:25:23'),
(8, 2018, 'MAER renueva todos sus modelos. Nuevos moldes para pistolas más pequeñas, livianas, ergonómicas, con tratamiento de anodizados de protección al aluminio y colores innovadores. Con la llegada al mercado de las pinturas para repintado automotor base agua, nace la pistola 807 AQUA. Lo cual posiciona a MAER a la vanguardia una vez más.\r\n\r\nAsí fue el camino de más de 80 años de MAER. Un camino que seguimos haciendo, como lo hicieron los fundadores Miguel Ansinelli y Enrique Ravazzi. Gusto y pasión por lo que hacemos.', NULL, '2018-08-24 17:42:44', '2018-10-05 17:25:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuit` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel` enum('administrador','usuario','distribuidor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'distribuidor',
  `activo` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `apellido`, `email`, `social`, `cuit`, `telefono`, `direccion`, `postal`, `nivel`, `activo`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'fran', 'fran', NULL, 'fran@gmail.com', NULL, NULL, NULL, NULL, NULL, 'administrador', 0, '$2y$10$FEicitns30xmrTBbsxPJpOF1JQ7FloKYjVE5bGsakL/czFjVjXnjC', 'X7piLM77KWEOxOR5MzK4pEQ87DM8cim1AENK9w2xZEHUFzSZw2vJldAdrVC8', '2018-08-09 22:56:25', '2018-08-09 22:56:25'),
(8, 'nacho', 'nacho', NULL, 'jibarroso@maer.com.ar', NULL, NULL, NULL, NULL, NULL, 'administrador', 0, '$2y$10$fMFMQs6GjzaFUqUUQiFJB.iJobSUiCWH6l8m6kRBibHZE9ShwMQ1a', 'lOWaZ2lKtxTIUK4Sl9QjAatw3ZVo2xdoCsNCHTjEx1VTsW6NFvzAtI4xJuco', '2018-08-10 21:52:39', '2018-09-04 16:39:34'),
(11, '31829269', 'Juan Ignacio', 'Barroso', 'juani.barroso@hotmail.com', 'Juan Ignacio SA', '31829269', '1154632416468', NULL, NULL, 'distribuidor', 1, '$2y$10$j3.KyndfZ5YZNhlS2b5ZveF1ifHn7wrHI3Ztz3rJJWCE/G76MK/5W', NULL, '2018-10-02 23:22:30', '2018-10-08 22:34:44'),
(16, '30708250402', 'ADAN SA', 'ADAN SA', 'compras@pintolindo.com', 'ADAN SA', '30708550402', '02657-15674846', NULL, NULL, 'distribuidor', 1, '$2y$10$lC7pnj5QGjxrF7piTqzTWuL3V0N4c8SmIvYYIGQY3fICzW6G4FnLa', 'K3P6yQ13AmM26m03oDEl7Evy1O0R2U74JFKH0pDPkSE8OMP0diWutI3e3NCf', '2018-10-08 17:51:39', '2018-10-08 17:51:39'),
(17, '20066089437', 'DELACHECA HECTOR', 'DELACHECA HECTOR', 'merplac@speedy.com.ar', 'DELACHECA HECTOR', '20066089437', '02229-443970', NULL, NULL, 'distribuidor', 1, '$2y$10$Y48tbs4DQzX/xRWxVICbx.8k6cZlTu6sjW/p/ju.LCvLEta3YUcsq', 'jbI69y4JRriGzRPXFlRFL2gf1vjgtTCw5vYo42BYqCNjENdye3ghXb5cOzME', '2018-10-08 17:53:59', '2018-10-08 17:53:59'),
(18, '30604760018', 'FERRETERIA ARGENTINA S.R.L.', 'FERRETERIA ARGENTINA S.R.L.', 'ferreargeqadministracion@speedy.com.ar', 'FERRETERIA ARGENTINA S.R.L.', '30604760018', '029454515461371', NULL, NULL, 'distribuidor', 1, '$2y$10$u3RUaG7IOKFjPokwP4/i4eUPU5VGMNw4O1v.EXqETRe0fPqyHpvH2', '8u40IAgqQB0rcSiqbb7pPo3WdE1Z94E6xMp9vlkdKwHDjgtsmRUwKBluyBVi', '2018-10-08 18:05:57', '2019-05-13 15:44:33'),
(19, '30710364350', 'MASTRONARDI SA', 'MASTRONARDI SA', 'facturas@arcoirispinturerias.com.ar', 'MASTRONARDI SA', '30710364350', '0221-427-4401', NULL, NULL, 'distribuidor', 1, '$2y$10$8vlEmMlEglkHQ5m53HhTyOrrUWt0dEGkZFIDyvqa2m/uokcYYsg4u', 'uX8HsmPe6Ge4qYQbfAIP893RgTQfRXvjy8hztr7gENoeNFrCAGIJ77mSK446', '2018-10-08 18:06:04', '2018-11-01 21:24:54'),
(20, '30710238401', 'KUM SA', 'KUM SA', 'gabriel.carlesso@pintureriasgarin.com', 'KUM SA', '30710238401', '03514789510', NULL, NULL, 'distribuidor', 1, '$2y$10$wBwNJFjInYMDH8ybXaiCAey5yqoK.z0i/D/EOpmeQ4FhbF/0SshdC', 'CJtmmzNopuXM0JsEtewSlG4ngIP2cbSramYbEClu6rh4ypoWUMeBfA7o41Wj', '2018-10-08 18:09:10', '2018-10-22 22:02:31'),
(21, '30711855102', 'MILLCAYAC SA', 'MILLCAYAC SA', 'compras@millcayacsa.com.ar', 'MILLCAYAC SA', '30711855102', '02614323593', NULL, NULL, 'distribuidor', 1, '$2y$10$cOxrS8dcndOSoiDIVFBBk.6PVQH3lJWWZ11i2AVF5qXMtsi/42U5m', NULL, '2018-10-08 18:12:08', '2018-10-08 18:12:08'),
(22, '30710308337', 'FERRET INDUSTRIAL  AGUILAR SA', 'FERRET INDUSTRIAL  AGUILAR SA', 'ferreteriaaguilar@ferremat.com.ar', 'FERRET INDUSTRIAL  AGUILAR SA', '30710308337', '0376-4456333', NULL, NULL, 'distribuidor', 1, '$2y$10$SMRTdpE/oDUcB7EW9BUeWe/.6qD7NHrFL0fiySmP0oAhbUtSj5KG6', '5IFsUow8vvZyIEOLjlyOpH4wELShhkAehyLszqaj4YkPm2r6JdfM9JNoIQPz', '2018-10-08 18:12:51', '2018-10-08 18:12:51'),
(23, '30557717400', 'Pinturerías Martel', 'Pinturerías Martel', 'javier@martel.com.ar', 'Fertel SA', '30557717400', '0387-4232566', NULL, NULL, 'distribuidor', 1, '$2y$10$.O9GJ0Ai.tzEsTukNfC8IuTKqh3/lzkviXp7CwY3cKYBJXK9tIv8W', 'qTVrMetrWV2alrUT4Wt89kjR63vwoDW5o6r1EKM7G4ntS4iQjqNZgkMY3OI6', '2018-10-08 18:15:11', '2018-10-08 18:15:11'),
(24, '20127115029', 'MORA LUIS', 'MORA LUIS', 'pintureriamatices@speedy.com.ar', 'MORA LUIS', '20127115029', '0265715603975', NULL, NULL, 'distribuidor', 1, '$2y$10$HpPawWDF.URXQWf/7XSJje.PsKjeY/i1g2sMnYT6blvUmR3ITjDEW', NULL, '2018-10-08 18:18:08', '2018-10-08 18:18:08'),
(25, '30709338583', 'Colorama Pinturas', 'Colorama Pinturas', 'coloramapinturas@wilnet.com.ar', 'Grupo BPG SA', '30709338583', '03492-505858', NULL, NULL, 'distribuidor', 1, '$2y$10$nvx16rP85o/De0laxuIVGO./7UNhWDh4xmkrTqItwA8ov9xwOcvg2', 'YJVq80rHjPxLZ4nEUj8xqF3ckspoQJ5FOXVeEXwklETXDD2tX0RWpTVMVtuP', '2018-10-08 18:18:21', '2018-10-08 18:18:21'),
(26, '30709479543', 'GRUPO FELICE Y MAGNO S.A.', 'GRUPO FELICE Y MAGNO S.A.', 'felice-y-magno@s8.coopenet.com.ar', 'GRUPO FELICE Y MAGNO S.A.', '30709479543', '02923-472356', NULL, NULL, 'distribuidor', 1, '$2y$10$FhAfVijCupsU2lJV4eThkeHfQ7nIO2.6B7xJc.J/WfOLEf.0N7KUe', NULL, '2018-10-08 18:19:33', '2018-10-08 18:19:33'),
(27, '30678524286', 'HERCAL', 'HERCAL', 'drr@hercal.com.ar', 'HERCAL', '30678524286', '4741-7001', NULL, NULL, 'distribuidor', 1, '$2y$10$U.k7Fc/XveeyLpkyeqDEyuNXtsis.k0m3W56lojl6JShhR69lW5FS', NULL, '2018-10-08 18:20:58', '2018-10-08 18:20:58'),
(28, '30682314997', 'PINTECORD SRL', 'PINTECORD SRL', 'compras@pintecord.com.ar', 'PINTECORD SA', '30682314997', '0351-4995910-1', NULL, NULL, 'distribuidor', 1, '$2y$10$yLLyK0f3HoooA/S2rtq0L.YYa7tMLlUgANCsyL2n0JANXsYKMySwK', 'tQNhpopshr3RfnX0ibsIj69ABhV6f88nhhr5NqoWMJ9d6YwabpN1bwS519EB', '2018-10-08 18:21:23', '2019-03-01 16:44:04'),
(29, '30708425725', 'IMPACTO PINTURAS S.R.L.', 'IMPACTO PINTURAS S.R.L.', 'impactocentral@hotmail.com', 'IMPACTO PINTURAS S.R.L.', '30708425725', '02364-429917', NULL, NULL, 'distribuidor', 1, '$2y$10$3Ms.AHLvytJsXsc7blmrZeJmdQ72/tPm2e/RbW0Rus07pbltRmvfq', 'gaDefEp0tYD9es1q17x6ZG0nVMq3u0JeErEj7z9FCaYUhQMkvqkXpZvFmPfN', '2018-10-08 18:22:08', '2018-10-08 18:22:08'),
(30, '20115613244', 'PINTURERIA CEYRA', 'PINTURERIA CEYRA', 'ramonceyra@gmail.com', 'PINTURERIA CEYRA', '20115613244', '0351-4610882', NULL, NULL, 'distribuidor', 1, '$2y$10$KrBjEd.BfvBpWxybpwCqSe2azpvApreUMWYWe3M8It6iZsWe5Q/0m', 'MBVPLenf2XWqqhSm5h6RqLLPEJfqxM3v1Hq5ORYfzfzunlX7Hbrkd9pV6cUo', '2018-10-08 18:25:00', '2018-10-08 18:25:00'),
(31, '33519560009', 'JUAN CARLOS CANELO S.R.L.', 'JUAN CARLOS CANELO S.R.L.', 'compras1@distribuidoracanelo.com.ar', 'JUAN CARLOS CANELO S.R.L.', '33519560009', '02475 462618', NULL, NULL, 'distribuidor', 1, '$2y$10$4ICP0yabqHwmUPYakljRje4qixOdPpTzNwcQMt6IUPem6r1AqPSt2', NULL, '2018-10-08 18:25:04', '2018-10-08 18:25:04'),
(32, '30636990961', 'JUANJO MOTOS S.A.', 'JUANJO MOTOS S.A.', 'compraherramientas@juanjomotos.com.ar', 'JUANJO MOTOS S.A.', '30636990961', '02227-421664', NULL, NULL, 'distribuidor', 1, '$2y$10$283uKDyQO5HyLBlb1ULt/.Lzib/3ZXTvkNMxucM/00z0qWGW.R1.y', 'aACbvhu0VjlbgCnBMkf9DPjyFMEdKGyIGEdWKBZxDnbg5HFJbvZodjkhTB9Q', '2018-10-08 18:26:11', '2018-10-08 18:26:11'),
(33, '30556917694', 'PINTURERIA GIANNONI SA', 'PINTURERIA GIANNONI SA', 'compras@pintureriagiannoni.com', 'PINTURERIA GIANNONI SA', '30556917694', '5083-1000', NULL, NULL, 'distribuidor', 1, '$2y$10$wt/xbbo3kZpwUjU9goTTI.AccBn6TU41KcyNis.FNqU.r1QqsmIgq', NULL, '2018-10-08 18:27:04', '2018-10-08 18:27:04'),
(34, '20083680335', 'Landa Hugo Alfredo', 'Landa Hugo Alfredo', 'sopleteshlanda@hotmail.com', 'Landa Hugo Alfredo', '20083680335', '0261-4370385', NULL, NULL, 'distribuidor', 1, '$2y$10$AkIZGF6b7zvxvix3I9j.YuT6tFsxiAnC3O6OG3h/KlFdKyRln3Hg6', NULL, '2018-10-08 18:28:33', '2018-10-08 18:28:33'),
(35, '30697754063', 'PINTURERIA SAGITARIO SA', 'PINTURERIA SAGITARIO SA', 'cristian@pintureriasagitario.com.ar', 'PINTURERIA SAGITARIO SA', '30697754063', '(02255) 46-3070', NULL, NULL, 'distribuidor', 1, '$2y$10$KOZMxFmh7.UkvxSBZWSb5uQHp1yAnAXZWsshPTeRyX5.gwxVh7dj6', 'GpQO8ETRwcPE4FqI4z9jhR9MQRibCDFqRm01667Mei5tKwK8m2m0gE6ZM5OR', '2018-10-08 18:29:42', '2018-10-08 18:29:42'),
(36, '30712379428', 'LUPATINI L Y LUPATINI A S.H', 'LUPATINI L Y LUPATINI A S.H', 'llupatini@colorshop.com.ar', 'LUPATINI L Y LUPATINI A S.H', '30712379428', '4652-9934', NULL, NULL, 'distribuidor', 1, '$2y$10$Wcy4GFLRt5.0UYT2WDnVtevzMqBAmywbYyiDFCtG1uaZhtjU.fVlC', NULL, '2018-10-08 18:34:46', '2018-10-08 18:34:46'),
(37, '30619760294', 'MARIO TANZI S.A.', 'MARIO TANZI S.A.', 'compras@tanzi.com.ar', 'MARIO TANZI S.A.', '30619760294', '03464-471109', NULL, NULL, 'distribuidor', 1, '$2y$10$HB8mCG7sYt2H6o/q1DVEve4PmH0DN4V692rlBkq7duSpSyPFsQQta', NULL, '2018-10-08 18:36:06', '2018-10-08 18:36:06'),
(38, '30506525418', 'MARTINEZ ESCALADA S.A.', 'MARTINEZ ESCALADA S.A.', 'compras@martinezescalada.com.ar', 'MARTINEZ ESCALADA S.A.', '30506525418', '0249-4425726', NULL, NULL, 'distribuidor', 1, '$2y$10$zC0l6YjckVOhAoJ0NoDo6ekp93le/QCvYhzu8EmsqbMCdtCsJNpMy', NULL, '2018-10-08 18:37:46', '2018-10-08 18:37:46'),
(39, '23129120789', 'ARCASTI DANIEL', 'ARCASTI DANIEL', 'ventas@arcasti.com.ar', 'ARCASTI DANIEL', '23129120789', '47449192', NULL, NULL, 'distribuidor', 1, '$2y$10$8TZhsFBVjJpJjygd2vbzRecgjaf.dOfjEnlF/Yvhf6mPWwsbYoF12', NULL, '2018-10-08 18:43:13', '2018-10-08 18:43:13'),
(40, '30502974749', 'MIGUEL ABAD S.A.', 'MIGUEL ABAD S.A.', 'abad@miguelabad.com.ar', 'MIGUEL ABAD S.A.', '30502974749', '11-4002-3000', NULL, NULL, 'distribuidor', 1, '$2y$10$7H2WvQn922vPhQttJb9A4OGAbtEuYEo3.5O.lm2E2DNA5ItdsbxXe', NULL, '2018-10-08 18:44:38', '2018-10-08 18:44:38'),
(41, '30653127592', 'RUGGIERI ANIBAL', 'RUGGIERI ANIBAL', 'lacasadelsopleteruggieri@hotmail.com', 'RUGGIERI ANIBAL', '30653127592', '0351-4712978', NULL, NULL, 'distribuidor', 1, '$2y$10$TnI6wZaq9KAIT5FElf3bY.nDMT2WvinfmOiFm.xd1YiGx46G1l06q', 'y7gda7wwdtn81vNZrDg2ttnwV3XSJmYaaO8VfSYkroZffNf3bzKbJ5RrYcE6', '2018-10-08 18:44:45', '2018-10-08 18:44:45'),
(42, '30678145366', 'SEGUFER SA', 'SEGUFER SA', 'nbelbruno@segufer.com.ar', 'SEGUFER SA', '30678145366', '5552-5500', NULL, NULL, 'distribuidor', 1, '$2y$10$ySo6X51Wrw52dKWZ4cnHru3VUkyr8hNzdf/yXKytXOXsuPHD5tzzm', NULL, '2018-10-08 18:46:17', '2018-10-08 18:46:17'),
(43, '20181090279', 'ÑAÑEZ PABLO ANDRES', 'ÑAÑEZ PABLO ANDRES', 'retoque-pablonanez@speedy.com.ar', 'ÑAÑEZ PABLO ANDRES', '20181090279', '02983-424098', NULL, NULL, 'distribuidor', 1, '$2y$10$8UL7dfDKE59ZKce6M8ckce6ojZaYIqzxEZpsvLQVIrcc7WhQ54vum', NULL, '2018-10-08 18:48:22', '2018-10-08 18:48:22'),
(44, '20108194430', 'OJEDA CARLOS ALBERTO', 'OJEDA CARLOS ALBERTO', 'losespecialistas@fibertel.com.ar', 'OJEDA CARLOS ALBERTO', '20108194430', '0387-4229174', NULL, NULL, 'distribuidor', 1, '$2y$10$4zmXcrNudofcwjW1lbZfq.76KYJrKEaVm5UPlFqIOuxbniLl7cOJ6', NULL, '2018-10-08 18:53:28', '2018-10-08 18:53:28'),
(45, '30708639008', 'BUENOS AIRES PAINT', 'BUENOS AIRES PAINT', 'paternal@4kpinturerias.com.ar', 'BUENOS AIRES PAINT', '30708639008', '45824568', NULL, NULL, 'distribuidor', 1, '$2y$10$V9R9Pln5h2DiQfpzKNGQ0O29d8Gljp3KhTfRMEp52v/NRHMaNxQNG', '6AVsRVfyz1j8Xxtr5ZrBo4PhiUKux2a8AQAt1ZX5hf144e6gjmmbQtWKmAZ0', '2018-10-08 18:55:03', '2018-10-08 18:55:03'),
(46, '30708044543', 'OXI-MERCEDES S.A.', 'OXI-MERCEDES S.A.', 'alejandro@oximercedes.com.ar', 'OXI-MERCEDES S.A.', '30-70804454-3', '02324-429070', NULL, NULL, 'distribuidor', 1, '$2y$10$6PiPc1WZ0pGQsnpTjgWJr.t52Bp/2Te75uwbneuzBSCf2Ao9KS65O', NULL, '2018-10-08 18:57:43', '2018-10-08 18:57:43'),
(47, '20175145967', 'PANFILI EDGARDO', 'PANFILI EDGARDO', 'altocolor@powervt.com.ar', 'PANFILI EDGARDO', '20-17514596-7', '03462-400333', NULL, NULL, 'distribuidor', 1, '$2y$10$Q6Ni2gF9HQjM1j.Uo3qpteLHoRz/GcolhMr/CMympNIsIeIbgQMZG', NULL, '2018-10-08 19:00:30', '2018-10-08 19:00:30'),
(48, '23210620729', 'DIVISION JP', 'DIVISION JP', 'estudio@divisionjp.com.ar', 'PEREZ ROSSI JAVIER GUSTAVO', '23210620729', '03547-421561', NULL, NULL, 'distribuidor', 1, '$2y$10$4rNkz./yuUEONBD9oa.im.cB.eRiVT/6yl6nzbHEmgVEXC7NSucRO', NULL, '2018-10-08 19:01:25', '2018-10-08 19:01:25'),
(49, '20137182085', 'PERROUD ORLANDO HUMBERTO', 'PERROUD ORLANDO HUMBERTO', 'administracion@universalpinturerias.com', 'PERROUD ORLANDO HUMBERTO', '20-13718208-5', '03447-480447', NULL, NULL, 'distribuidor', 1, '$2y$10$2CdYaz7h8d/gQu0DrusjNugjafcyT6BD9htXJ0bnF8CLjlnPAvZHm', NULL, '2018-10-08 19:02:34', '2018-10-08 19:02:34'),
(51, '20172388303', 'Pichaud - AFP Service', 'Pichaud - AFP Service', 'proveedores@afpservice.com.ar', 'Pichaud - AFP Service', '20172388303', '0298-4430355', NULL, NULL, 'distribuidor', 1, '$2y$10$Uqd4WhALXV39h3BxaMBpuOfJumDQ5Ivq05FI2lGM3catLll0qyTWW', NULL, '2018-10-08 19:04:48', '2018-10-08 19:04:48'),
(52, '33707936539', 'PINTURERIA COLON S.A.', 'PINTURERIA COLON S.A.', 'cbertola@pintureriascolon.com', 'PINTURERIA COLON S.A.', '33-70793653-9', '02657-437373', NULL, NULL, 'distribuidor', 1, '$2y$10$So/5sacKRGFKO0.U8khTlubUJ5xaUHuOUAxR00/njznK2LH1n9ZZ6', NULL, '2018-10-08 19:05:59', '2018-10-08 19:05:59'),
(53, '30711376557', 'PINTURERIA GUIMAR S.R.L.', 'PINTURERIA GUIMAR S.R.L.', 'pintureriaguimar@speedy.com.ar', 'PINTURERIA GUIMAR S.R.L.', '30-71137655-7', '02964-432540', NULL, NULL, 'distribuidor', 1, '$2y$10$.dYH.3HMbCNSeyr5mFQOveK85OwKr8EAJ80aXox76v6PQEB6ZUxyi', NULL, '2018-10-08 19:07:14', '2018-10-08 19:07:14'),
(54, '30707949259', 'PINTURERIA ARCO IRIS S.H.', 'PINTURERIA ARCO IRIS S.H.', 'pintureriaarcoiris@yahoo.com.ar', 'PINTURERIA ARCO IRIS S.H.', '30-70794925-9', '0261-4451855', NULL, NULL, 'distribuidor', 1, '$2y$10$Ul3fPd4z8qSyOOA.V9ZNYujUlUkzmKaIQYuDuH7HAFgy0tVlys8AW', NULL, '2018-10-08 19:08:16', '2018-10-08 19:08:16'),
(55, '20203177187', 'COLUS FERNANDO', 'COLUS FERNANDO', 'fcolus@hotmail.com', 'COLUS FERNANDO', '20203177187', '47492416', NULL, NULL, 'distribuidor', 1, '$2y$10$m9pQkRyGIeZBXnop5kC21uoWMM5pyCxTtxwhZXEHo3XPATiptB4Lq', NULL, '2018-10-08 19:09:04', '2018-10-08 19:09:04'),
(56, '30709826758', 'PINTURERIAS DEL LITORAL SRL', 'PINTURERIAS DEL LITORAL SRL', 'jsmontecarloc1@gmail.com', 'PINTURERIAS DEL LITORAL SRL', '30-70982675-8', '0376-4435072', NULL, NULL, 'distribuidor', 1, '$2y$10$3OrG7sppn0Z8VflE7M4WiuHrwCiknktDf/.pLec9.w6RYvaBwdgJa', NULL, '2018-10-08 19:10:06', '2018-10-22 19:17:13'),
(57, '33707433669', 'PINTURERIAS LA NEUQUINA S.R.L.', 'PINTURERIAS LA NEUQUINA S.R.L.', 'laneuquinasrl@yahoo.com.ar', 'PINTURERIAS LA NEUQUINA S.R.L.', '33-70743366-9', '0299-4782235', NULL, NULL, 'distribuidor', 1, '$2y$10$ZR2Dh1K8dmS9gfVec7o2QOwzt349ymbloZNw9awZ4HCS./k3uo8mi', NULL, '2018-10-08 19:11:57', '2018-10-08 19:11:57'),
(58, '30709006270', 'PINTURERIAS SAN MARTIN S.R.L.', 'PINTURERIAS SAN MARTIN S.R.L.', 'pint_sanmartin@yahoo.com.ar', 'PINTURERIAS SAN MARTIN S.R.L.', '30-70900627-0', '02323-421370', NULL, NULL, 'distribuidor', 1, '$2y$10$Cl0EnpyTbpoSyJnCbYzyg.9sBS96epL8HME2eZLzFZgf4L9ZsPcJS', 'JU8XBMi6yIba3StN79SOfMLZYpA2MVoe1Z6ZCsf1kcUa8uB5ODbv0yk3Jw02', '2018-10-08 19:12:58', '2018-12-18 15:54:43'),
(59, '30662530480', 'ESELE', 'ESELE', 'info@1001ferreteria.com.ar', 'ESELE', '30662530480', '47557887', NULL, NULL, 'distribuidor', 1, '$2y$10$wq81Ak81HPCCU/x6s2Xzmu9eaRfTbU2H3e3Zqb1aFiok297/tGI.W', '9fnQ1kax13gpjB9NYOQy1wdC8pMnlUWrqXUsAVqYWujMXzmVuD6U2u1oBJvu', '2018-10-08 19:13:30', '2018-10-08 19:13:30'),
(60, '30660650039', 'QUIMICA ESSIG S.R.L.', 'QUIMICA ESSIG S.R.L.', 'compras@essig.com.ar', 'QUIMICA ESSIG S.R.L.', '30-66065003-9', '0249-443-0575', NULL, NULL, 'distribuidor', 1, '$2y$10$fiy0cfTEDhjnWUESQdmSE.qVsS1p.Ua2Ua7rXx9fHpHm4iocbbBxO', NULL, '2018-10-08 19:14:00', '2018-10-08 19:14:00'),
(61, '20068694443', 'DE MICHIEL DARIO DANTE', 'DE MICHIEL DARIO DANTE', 'todocolorpinturerias@gmail.com', 'DE MICHIEL DARIO DANTE', '20-06869444-3', '0261-4320900', NULL, NULL, 'distribuidor', 1, '$2y$10$2Xh1WkVNrahv3N4czhVvOurPdkq.faPNWjKsR4RdKiWhPOwvYkBoC', NULL, '2018-10-08 19:15:00', '2018-10-08 21:17:12'),
(62, '30708377887', 'RABAJ DAVID HECTOR Y ABALLAY GABRIEL ALFREDO', 'RABAJ DAVID HECTOR Y ABALLAY GABRIEL ALFREDO', 'madherrajes@hotmail.com', 'RABAJ DAVID HECTOR Y ABALLAY GABRIEL ALFREDO', '30-70837788-7', '11111111', NULL, NULL, 'distribuidor', 1, '$2y$10$vydjWN5IPmZkgHXqcZzjD.QvIMzR9yUDT22MKmOoDMz7FnSMk/yXq', NULL, '2018-10-08 19:16:51', '2018-10-08 19:16:51'),
(63, '20174094161', 'RAMIL GERARDO ANTONIO', 'RAMIL GERARDO ANTONIO', 'centenariocolor@hotmail.com', 'RAMIL GERARDO ANTONIO', '20-17409416-1', '02477-444411', NULL, NULL, 'distribuidor', 1, '$2y$10$K5.zg.JCUN1zCWFd8Yse9uekaRuQypahFop2nWmb/IyzMVyWISyyi', NULL, '2018-10-08 19:18:30', '2018-10-08 19:18:30'),
(64, '20066552269', 'RAVETTA JUAN CARLOS', 'RAVETTA JUAN CARLOS', 'pintureriaravetta@arnet.com.ar', 'RAVETTA JUAN CARLOS', '20-06655226-9', '03582-431212', NULL, NULL, 'distribuidor', 1, '$2y$10$uJqPfAykwNHmTAhhvH7j.OmOFqbJfzvRt.o81n4ssqmnJkiscpScG', NULL, '2018-10-08 19:19:20', '2018-10-08 19:19:20'),
(65, '30710018819', 'ESTACION DE AIRE', 'ESTACION DE AIRE', 'administracion3@estaciondeaire.com.ar', 'ESTACION DE AIRE', '30710018819', '4686-1196', NULL, NULL, 'distribuidor', 1, '$2y$10$bP2xMimsPL4/h9kO3Tzpb.XiaCE6rHEJ6PHCxNIuIF1EJ6WbOmAi2', 'eVMPubQpEQiMnug4gALtaBLz4B6EGS5kHZGczrOWG58FUbsUffwHQSsxiGwR', '2018-10-08 19:19:41', '2018-10-08 19:19:41'),
(66, '33673099799', 'Revecon SRL - Pinturerías Martín', 'Revecon SRL - Pinturerías Martín', 'p_martin@pintureriasmartin.com.ar', 'Revecon SRL - Pinturerías Martín', '33-67309979-9', '0387-4224205', NULL, NULL, 'distribuidor', 1, '$2y$10$.OyBMFiNH0BYzmGNixTGCeBCtUFRb2MDpUx5WH9x4lP5fNJ.x5iJi', NULL, '2018-10-08 19:21:04', '2018-10-08 19:21:04'),
(67, '30708428155', 'REYLAT S.A.', 'REYLAT S.A.', 'roman@reylat.com.ar', 'REYLAT S.A.', '30-70842815-5', '4755-8590', NULL, NULL, 'distribuidor', 1, '$2y$10$JY6eU89qUtvo3GnrFkX1A.r5dmRm..4X6l0l6ycKs7vj5hIgFZKSW', NULL, '2018-10-08 19:22:11', '2018-10-08 19:22:11'),
(68, '30707147349', 'FANTONI C.A.Y GOROSITO M S.H', 'FANTONI C.A.Y GOROSITO M S.H', 'info@maquinariasboedo.com.ar', 'FANTONI C.A.Y GOROSITO M S.H', '30707147349', '49576741', NULL, NULL, 'distribuidor', 1, '$2y$10$wZj6FEoe2MgXND/Dn6XtluZIMCsVlgQluG.WXXkOQUqKMAijZ.B2q', NULL, '2018-10-08 19:23:37', '2018-10-08 19:23:37'),
(69, '30707819754', 'ROBERTO CANO E HIJOS S.R.L.', 'ROBERTO CANO E HIJOS S.R.L.', 'robertovcano@ciudad.com.ar', 'ROBERTO CANO E HIJOS S.R.L.', '30-70781975-4', '0353-4531800', NULL, NULL, 'distribuidor', 1, '$2y$10$kJhCWBOMLz5/jTuisIr/C.vDOYb091b27TYpTYykXh1qpKsW.1oUi', NULL, '2018-10-08 19:23:39', '2018-10-08 19:23:39'),
(70, '20147040408', 'SERV.INT.ROLDAN', 'SERV.INT.ROLDAN', 'jose_luisdc@hotmail.com', 'SERV.INT.ROLDAN', '20-14704040-8', '0341-4967182', NULL, NULL, 'distribuidor', 1, '$2y$10$as90rBQ1/v4qDQDrUnhyp.qd/T37vV4pc0Ugv7uIQXoRLP1xP.r0a', NULL, '2018-10-08 19:24:30', '2018-10-08 19:24:30'),
(71, '30709449989', 'SOLDARSA S.R.L.', 'SOLDARSA S.R.L.', 'soldarsasrl@yahoo.com.ar', 'SOLDARSA S.R.L.', '30-70944998-9', '4208-0557', NULL, NULL, 'distribuidor', 1, '$2y$10$t9sy3hDbLsM4ruzGKYB7CuR/KQA/05qdHZ8hWihsLNEKYzbywWwOu', NULL, '2018-10-08 19:27:05', '2018-10-08 19:27:05'),
(72, '30619839915', 'SUPERMERCADO DE LA PINTURA SRL', 'SUPERMERCADO DE LA PINTURA SRL', 'epellegrino@superdelapintura.com.ar', 'SUPERMERCADO DE LA PINTURA SRL', '30-61983991-5', '03464-424618', NULL, NULL, 'distribuidor', 1, '$2y$10$/4l/3gGonLCkWg1y/Joug.Y7fhIknKcM3WizMJvXVwoHIRwcmBQCe', 'kLUo4os2xnj3ZWDj16vlLVp9GGAJSuh1RJr49Y2CpOKlVIo9TOKdgb6vMMrU', '2018-10-08 19:28:30', '2018-10-08 19:28:30'),
(73, '33590366329', 'SUSFERRIN S.R.L.', 'SUSFERRIN S.R.L.', 'barbara@susferrin.com.ar', 'SUSFERRIN S.R.L.', '33-59036632-9', '4201-3621', NULL, NULL, 'distribuidor', 1, '$2y$10$2llRIRk28WlbwzC5mzFe2OruajHoEnp3BjTx.nXCL.rpENGbSImmO', 'EMw0G9BNJDUIAUGoNWN9H8HlbHWSDud1j4NVmAzA3ahxd3Q7bPJSnEPPu85W', '2018-10-08 19:29:27', '2018-10-08 19:29:27'),
(74, '30503390066', 'TECHNIA S.A.', 'TECHNIA S.A.', 'info@technia.com.ar', 'TECHNIA S.A.', '30-50339006-6', '03489-422707', NULL, NULL, 'distribuidor', 1, '$2y$10$iKjE3XxVsd9amOThI4wr.uJtOK7RhQ2iN5732LOsktYn9M2Vffyou', NULL, '2018-10-08 19:30:29', '2018-10-08 19:30:29'),
(75, '30707840710', 'TOMASETTI PINTURAS Y SERV. SRL', 'TOMASETTI PINTURAS Y SERV. SRL', 'tomapint@tomapint.com.ar', 'TOMASETTI PINTURAS Y SERV. SRL', '30-70784071-0', '0223-4104246', NULL, NULL, 'distribuidor', 1, '$2y$10$GYkEdHaM6NgOiDTsjmXw0u.CBElo7NwYiZxFuito9psK.I7ROFaMG', NULL, '2018-10-08 19:32:16', '2018-10-08 19:32:16'),
(76, '30688605381', 'FERRET.INDUST.DEL CANAL', 'FERRET.INDUST.DEL CANAL', 'delcanal@hotmail.com', 'FERRET.INDUST.DEL CANAL', '30688605381', '47452867', NULL, NULL, 'distribuidor', 1, '$2y$10$MoQXNL3i0UnurelfFhQdv.QVc0zK0vO5Tv/cpvwQlGxbXusEoLarW', NULL, '2018-10-08 19:32:49', '2018-10-08 19:32:49'),
(77, '30667534328', 'TOMATTI DANIEL Y RIVANERA A.', 'TOMATTI DANIEL Y RIVANERA A.', 'chapinto@fibertel.com.ar', 'TOMATTI DANIEL Y RIVANERA A.', '30-66753432-8', '02344-454157', NULL, NULL, 'distribuidor', 1, '$2y$10$A4iL5B8PDt5UtoO/dyrm3.yKq/oxFyf2AtwWQwlzbV270/wDDqbvC', NULL, '2018-10-08 19:33:08', '2018-10-08 19:33:08'),
(78, '20273101161', 'TOSCANO ANDRES JORGE', 'TOSCANO ANDRES JORGE', 'andres@elpinceltravieso.com.ar', 'TOSCANO ANDRES JORGE', '20-27310116-1', '03442 44-3154', NULL, NULL, 'distribuidor', 1, '$2y$10$prPoRjxN7tT9SdEdSk.44OFGoFtrTL9Hd9dtDpuO6dGdpymT3hQSG', NULL, '2018-10-08 19:34:08', '2018-10-08 19:34:08'),
(79, '30707058338', 'FERRET.INDUST.JOTA T S.H.', 'FERRET.INDUST.JOTA T S.H.', 'jotat@jotat.com.ar', 'FERRET.INDUST.JOTA T S.H.', '30707058338', '42409000', NULL, NULL, 'distribuidor', 1, '$2y$10$Hlez3AKyDiM9fpLQ5yd2fuO3piE0w2rjM2KrX9Ip9WY2esvnhB4UO', NULL, '2018-10-08 19:34:42', '2018-10-08 19:34:42'),
(80, '20220967531', 'Ughetti Alberto Luis - Pinturería Albatros', 'Ughetti Alberto Luis - Pinturería Albatros', 'pinturerialbatros@hotmail.com.ar', 'Ughetti Alberto Luis - Pinturería Albatros', '20-22096753-1', '03547-424712', NULL, NULL, 'distribuidor', 1, '$2y$10$FPXaGDFpZHBvGT51TQlQ2elLvleWC/Bj.ATATn6al7acJaYW.K.mq', NULL, '2018-10-08 19:38:10', '2018-10-08 19:38:10'),
(81, '20125249184', 'VALETTO HUGO DANIEL', 'VALETTO HUGO DANIEL', 'compras@hugovaletto.com.ar', 'VALETTO HUGO DANIEL', '20-12524918-4', '0341-4625272', NULL, NULL, 'distribuidor', 1, '$2y$10$KYjcKksqb1NslT4wk1iuHuhX4AgMNyurXafiFgNzmbMKCIN/R751O', NULL, '2018-10-08 19:39:09', '2018-10-08 19:39:09'),
(82, '30711866392', 'FILIBERTO C.D Y GANDINI G.R', 'FILIBERTO C.D Y GANDINI G.R', 'info@pintureriasatelier.com.ar', 'FILIBERTO C.D Y GANDINI G.R', '30711866392', '47263833', NULL, NULL, 'distribuidor', 1, '$2y$10$qV5tI0eqMlZ.PtKvx9Xip.bUxrsHi7jIkYHwCsEsMyrl.eDraSMVm', NULL, '2018-10-08 19:39:16', '2018-10-08 19:39:16'),
(83, '20050324509', 'VALFIORANI NESTOR RUBEN', 'VALFIORANI NESTOR RUBEN', 'pintureriassarmiento@un-toke.com.ar', 'VALFIORANI NESTOR RUBEN', '20-05032450-9', '02355-421971', NULL, NULL, 'distribuidor', 1, '$2y$10$qi3/4I8DyRqWYSHmi7Mlgeg46cYUB2EwCDQTA/OfMdDmaUwhUuCRe', NULL, '2018-10-08 19:40:16', '2018-10-08 22:06:27'),
(84, '27235387900', 'VEGA VERONICA ADRIANA', 'VEGA VERONICA ADRIANA', 'tallerdavid@hotmail.com', 'VEGA VERONICA ADRIANA', '27-23538790-0', '4214-7982', NULL, NULL, 'distribuidor', 1, '$2y$10$KkE2GNtcPi7GyTKfNK4HN.ehhq/DNODpEnalJ5issqi/TaUeV2WMG', NULL, '2018-10-08 19:41:03', '2018-10-08 22:13:52'),
(85, '30710858515', 'FOXER', 'FOXER', 'ventas@foxer.com.ar', 'ventas@foxer.com.ar', '30710858515', '45676381', NULL, NULL, 'distribuidor', 1, '$2y$10$0BtyoJdvi9JkDKjzhSk.Q.A6xhUxE4xrhFWv0ffnV9/vNVdDEgLZy', NULL, '2018-10-08 19:41:51', '2018-10-08 19:41:51'),
(86, '20132832499', 'FRUMBOLI MARIO', 'FRUMBOLI MARIO', 's.t.frumboli@gmail.com', 'FRUMBOLI MARIO', '20132832499', '47095992', NULL, NULL, 'distribuidor', 1, '$2y$10$i1TOQ8IKIHqzA172WkuchOVRc8eTmv9V9Ct4BYskzC0smSQLKxrL2', NULL, '2018-10-08 19:44:25', '2018-10-08 19:44:25'),
(87, '30695127428', 'GHI SRL.', 'GHI SRL.', 'compras@ghisrl.com.ar', 'GHI SRL.', '30695127428', '47662336', NULL, NULL, 'distribuidor', 1, '$2y$10$FKa9rCR4lZZOP/oqAidtcuEf0FtdJrLZ.D..vXc/lkoqkno9RSOKq', NULL, '2018-10-08 19:47:38', '2018-10-08 19:47:38'),
(88, '20082072366', 'MANGIALARDI', 'MANGIALARDI', 'pintureriasancona@gmail.com', 'MANGIALARDI', '20082072366', '47518488', NULL, NULL, 'distribuidor', 1, '$2y$10$AwHA5b/D7D5lPjA7g2F/b.PR10YxfSaBHXRV0rTKXvhrJQGemiOXK', 'zrvUXw9jS1tj9zs2fQgbYHsKn9UJbkSoyjaBay2MAHDgR6CEZsOvHa3Gsdrb', '2018-10-08 19:59:12', '2018-10-08 19:59:12'),
(89, '30643155997', 'MELGON S.A.', 'MELGON S.A.', 'herramientas@melgon.com.ar', 'MELGON S.A.', '30643155997', '42412019', NULL, NULL, 'distribuidor', 1, '$2y$10$11RXaaGwVzsFxoxyio4yluJXrtd9TuSECJ6F2RQ8G4ps.u8ZYbr2u', NULL, '2018-10-08 20:01:07', '2018-10-08 20:01:07'),
(90, '30683676027', 'MOTTO S.A.', 'MOTTO S.A.', 'motto@compresores.com.ar', 'MOTTO S.A.', '30683676027', '47597936', NULL, NULL, 'distribuidor', 1, '$2y$10$qNlM84UNad4mv6okxiE1Yu562Fk.hyeO9nvyJWOU9iPfjSQtZOBaq', NULL, '2018-10-08 20:03:59', '2018-10-08 20:04:48'),
(91, '30558328149', 'MURANO FERRETERIA IND.SRL', 'MURANO FERRETERIA IND.SRL', 'muranosrl@gmail.com', 'MURANO FERRETERIA IND.SRL', '30558328149', '47666200', NULL, NULL, 'distribuidor', 1, '$2y$10$LknfBoeG0hBa67fTvHofwespOmxmOCt/rAEN0E1szPlUWvZ/ug5um', '8IanwIZiUvUn448vTnYhtl3aES9Sb5Hlj9y5Z4x1wT6P3qQofX7pBMKwkiWs', '2018-10-08 20:09:56', '2018-10-08 20:09:56'),
(92, '20296706710', 'PERNA HERNAN ARIEL', 'PERNA HERNAN ARIEL', 'alperbulonera@hotmail.com', 'PERNA HERNAN ARIEL', '20296706710', '47599796', NULL, NULL, 'distribuidor', 1, '$2y$10$/IsI6ENsOkIH.bw2ntl8LurleWFDaKTEMoRemTEhqthCpxjo2HSdC', NULL, '2018-10-08 20:13:54', '2018-10-08 20:13:54'),
(93, '30646127064', 'PINTURERIA DEL FONDO S.A.', 'PINTURERIA DEL FONDO S.A.', 'munro@delfondo.com.ar', 'PINTURERIA DEL FONDO S.A.', '30646127064', '47621197', NULL, NULL, 'distribuidor', 1, '$2y$10$gKEzHdLIrZCR/zCmfz7Gz.x6oZeiuAMxEVGIi5RGjF70L68pm/Msa', NULL, '2018-10-08 20:17:40', '2018-10-08 20:17:40'),
(94, '30708366524', 'PINTE CANAL SRL', 'PINTE CANAL SRL', 'pintecanal@hotmail.com', 'PINTE CANAL SRL', '30708366524', '45492333', NULL, NULL, 'distribuidor', 1, '$2y$10$/6Y0ki6GaB0eOkUs/1848.McKw4anJrRn.hLJZyNotI5R1.hLDad.', NULL, '2018-10-08 20:21:22', '2018-10-08 20:21:22'),
(95, '20064677315', 'TRONCA AGUSTIN', 'TRONCA AGUSTIN', 'ferreteriatronca@arnet.com.ar', 'TRONCA AGUSTIN', '20064677315', '0351-4284118', NULL, NULL, 'distribuidor', 1, '$2y$10$yWN1G9ri/Bgzx95fXXfqguEDyHw7i/QoqZnGGP6WsH0CmV4q2GsL.', 'OaM7Cw73ibn8oz9ekhXzrppSDhwIUkKYBVVZYpjcwxMkBPdBvxWs4kxwb9e4', '2018-10-08 20:27:38', '2018-10-08 20:27:38'),
(96, '20125259252', 'VEGAS NESTOR JOSE', 'VEGAS NESTOR JOSE', 'resinasrosario@live.com', 'VEGAS NESTOR JOSE', '20-12525925-2', '0341 430-5499', NULL, NULL, 'distribuidor', 1, '$2y$10$WOftVTFsnuVkh7KUSsd0AegjELadGwZmSkBWas4sb8pGJsSuuBQHa', '3UmtGoQKDpL2urpg4MO3z46nY8z0iAK2hxzyx5jvcASopWRGdLEMs3NZsJ68', '2018-10-08 20:28:00', '2018-10-08 20:28:00'),
(97, '20170962363', 'WILLINER FABIAN ARMANDO', 'WILLINER FABIAN ARMANDO', 'fabianwilliner@hotmail.com', 'WILLINER FABIAN ARMANDO', '20-17096236-3', '0342-4603058', NULL, NULL, 'distribuidor', 1, '$2y$10$Ix4JZPSr2idWfdHHrO/cKuG5qiTv.by90CiPcPDBTcnmtltMKz3Xu', NULL, '2018-10-08 20:28:58', '2018-10-08 20:28:58'),
(98, '30672000986', 'WINNER SRL', 'WINNER SRL', 'pabloventas@winnersrl.com.ar', 'WINNER SRL', '30-67200098-6', '0261-452-1170', NULL, NULL, 'distribuidor', 1, '$2y$10$tilHYmySfHkOH89M3XXym.G69lJ4gX2hkmgOp1MqLw0LDH7RaQ.I6', NULL, '2018-10-08 20:30:02', '2018-10-08 20:30:02'),
(99, '30708142987', 'PINTURERIA GASTON SRL', 'PINTURERIA GASTON SRL', 'pintgaston@hotmail.com', 'PINTURERIA GASTON SRL', '30708142987', '49217204', NULL, NULL, 'distribuidor', 1, '$2y$10$B8wu1RHUCGJJYOovh9n1G.anORpklcexedy862.QsZ0mGuBr9su0m', 'hEQTtoUebh6p2yPzs3UfaEKZ2i4lg4L1UaXclz8hPshBlgTlOFbWlto5Dhw9', '2018-10-08 20:30:42', '2018-10-08 20:30:42'),
(100, '20042655652', 'GENTILINI HECTOR HUGO', 'GENTILINI HECTOR HUGO', 'el_artesano@ciudad.com.ar', 'GENTILINI HECTOR HUGO', '20-04265565-2', '4612-1598', NULL, NULL, 'distribuidor', 1, '$2y$10$LKzOP334H8LsTClMU7eU1OhsRk6LylHdDOtWV8rt8WjjjzU1blgr6', NULL, '2018-10-08 20:30:50', '2018-10-08 20:30:50'),
(101, '30708591447', 'ANDRES MERINO PINTURERIA SA', 'ANDRES MERINO PINTURERIA SA', 'antonio@andres-merino.com.ar', 'ANDRES MERINO PINTURERIA SA', '30708591447', '0261-4244046', NULL, NULL, 'distribuidor', 1, '$2y$10$S5bVY.fEti1eSKwokQiqluegegP8ZbuikDhwJxmoTeqCRJeLYNt6W', NULL, '2018-10-08 20:30:54', '2018-10-08 20:30:54'),
(102, '30709171204', 'IMPULSO PINTURAS S.R.L.', 'IMPULSO PINTURAS S.R.L.', 'administracion@impulsopinturas.com.ar', 'IMPULSO PINTURAS S.R.L.', '30-70917120-4', '02362-430183', NULL, NULL, 'distribuidor', 1, '$2y$10$.jtGgcjT3RfB5KQscDVlHOSvCCQbqms6RlECGwYyFJufntIXAKdZe', 'nzVhX3LPEUhwaCuiQhwU6njsG7cGEyWcGdU9O6an6rOVQBTcJi7dpegm5e5T', '2018-10-08 20:32:03', '2018-10-08 20:32:03'),
(103, '30570861278', 'PINTURERIA ROSMAR S.A.', 'PINTURERIA ROSMAR S.A.', 'jmicelli@rosmar.com.ar', 'PINTURERIA ROSMAR S.A.', '30570861278', '46723131', NULL, NULL, 'distribuidor', 1, '$2y$10$s6UQ1rHilHFBp00iHlOwG.GE8j6HKHazthv0c3NM49di6wZ3nBWZO', NULL, '2018-10-08 20:33:06', '2018-10-08 20:52:36'),
(104, '30535313241', 'BUSTIN SOLUCIONES IND. SA', 'BUSTIN SOLUCIONES IND. SA', 'mmazzucco@bustin.com.ar', 'BUSTIN SOLUCIONES IND. SA', '30535313241', '4343-7856', NULL, NULL, 'distribuidor', 1, '$2y$10$fwREwzr0o1LkN1jPLKD56OrlTPPTRrrDUzshXy0EOEvJVTjyaNEgG', 'H1BzYqH1j4KbvX3VZ33g5ErWZTH9Ct2JqGFujH7KMZCgjW9c2s8jkxymViYt', '2018-10-08 20:33:21', '2018-10-22 15:19:12'),
(108, '30714585556', 'COMPRESORES FELCAR SRL', 'COMPRESORES FELCAR SRL', 'compresoresfelcar@yahoo.com', 'COMPRESORES', '30714585556', '4911-9501', NULL, NULL, 'distribuidor', 1, '$2y$10$0KLmygT8Bsj2g4b84NZ8Ge.wFHJygRimykSttn4W68k4241N1u7pK', NULL, '2018-10-08 20:44:39', '2018-10-08 20:44:39'),
(109, '30529994393', '3 M ARGENTINA SACIFIA', '3 M ARGENTINA SACIFIA', 'dprieto@mmm.com', '3 M ARGENTINA SACIFIA', '30-52999439-3', '4469-8403', NULL, NULL, 'distribuidor', 1, '$2y$10$VXdoTygXYXRypJgQ8V0KFur9COptVuhQb7uBK4/0ZOZEmPHNdese.', NULL, '2018-10-08 20:44:54', '2018-10-08 20:44:54'),
(110, '30681599793', 'ABRAFER S.R.L.', 'ABRAFER S.R.L.', 'javierl@abrafersrl.com.ar', 'ABRAFER S.R.L.', '30-68159979-3', '02322-426337', NULL, NULL, 'distribuidor', 1, '$2y$10$It3jFzG2PmDeR9yT/ER1uO9MJeePa8ArKFJmfOgoKBBMIiiIZixe6', NULL, '2018-10-08 20:45:29', '2018-10-08 20:45:29'),
(111, '30639111012', 'ALQUILO TODO S.R.L.', 'ALQUILO TODO S.R.L.', 'repuestos@alquilotodo.com.ar', 'ALQUILO TODO S.R.L.', '30-63911101-2', '4730-3976', NULL, NULL, 'distribuidor', 1, '$2y$10$6nrvRwD6mjUag/o3V3Lvtucw9cg4w.S5ErdZnVk22ot.JDRf1.Awi', '006AG1cHBDaWRduSHmQxIqGGCx970bLH8Mxb0XYtAuO3MBan9vV1IP6Z7Dxs', '2018-10-08 20:48:57', '2018-10-08 20:48:57'),
(114, '20160786761', 'ASSELL MEDARDO CHISTIAN', 'ASSELL MEDARDO CHISTIAN', 'pintureriadelsur@huincacoop.com.ar', 'ASSELL MEDARDO CHISTIAN', '20-16078676-1', '02336-442149', NULL, NULL, 'distribuidor', 1, '$2y$10$ZiYuaGlGf.8xJKTsBHojfeyUWFJ/F/d53Itjjk71HkUGiwtfDAg7m', NULL, '2018-10-08 20:53:33', '2018-10-08 20:53:33'),
(115, '30710069693', 'PINTURERIAS MONIMAR', 'PINTURERIAS MONIMAR', 'pintureriasmonimar@gmail.com', 'PINTURERIAS MONIMAR', '30710069693', '44433946', NULL, NULL, 'distribuidor', 1, '$2y$10$3Ga.65HiZ62psB3a/VnkNu1rDCwUjkL0vJDKuFyQnm3TZkfmRedd6', 'xQbQA47dOoMlNrxTwBA6Sy7Lkkj1dJ4pxAQw70zzfsxRLt5GcmSfOTlNMRYo', '2018-10-08 20:54:34', '2018-10-08 20:54:34'),
(116, '20125156798', 'BALDINI HECTOR ANIBAL', 'BALDINI HECTOR ANIBAL', 'pintazul@speedy.com.ar', 'BALDINI HECTOR ANIBAL', '20-12515679-8', '02281-424192', NULL, NULL, 'distribuidor', 1, '$2y$10$IiOjDStRC.058q/BAjQaOedhcPMkFhS8lMSFp/qhc/jVyPMxx1WmS', 'jOOWspN8RRin0e6EOwYXizfKvoW8e620phUzXggg1E28og7pHtLsbjaebiOz', '2018-10-08 20:55:03', '2018-10-08 20:55:03'),
(117, '20263700598', 'BARBERA FACUNDO JESUS', 'BARBERA FACUNDO JESUS', 'cordoba@pintureriasfima.com.ar', 'BARBERA FACUNDO JESUS', '20-26370059-8', '1111111111', NULL, NULL, 'distribuidor', 1, '$2y$10$2eoXU9BAjJTYbRifVlw8HukH7qzbKojpeS8lC1gUq9KwcmG/LEr4m', NULL, '2018-10-08 20:56:04', '2018-10-08 20:56:04'),
(118, '30578876215', 'PINTURERIAS PICCIN HNOS', 'PINTURERIAS PICCIN HNOS', 'adrian@piccinhnos.com.ar', 'PINTURERIAS PICCIN HNOS', '30578876215', '46010958', NULL, NULL, 'distribuidor', 1, '$2y$10$oHYRil5zn7ZURfS4cKPVY.lSVXreTagbirO6ntygEZ5OysaXXV2T.', NULL, '2018-10-08 20:56:54', '2018-10-08 20:56:54'),
(119, '20298326966', 'BLANCO FERNANDO GUSTAVO', 'BLANCO FERNANDO GUSTAVO', 'colorexacto@outlook.com', 'BLANCO FERNANDO GUSTAVO', '20-29832696-6', '02478-451431', NULL, NULL, 'distribuidor', 1, '$2y$10$dp9REJLM7Cm2uwZx8xMEleg4yWN7QISZWgGtt4W0GSt.pkbkQ7BDW', NULL, '2018-10-08 20:56:56', '2018-10-08 20:56:56'),
(120, '20288368148', 'BRINGAS GERMAN ALEJANDRO', 'BRINGAS GERMAN ALEJANDRO', 'pintureriasdelcentro@speedy.com.ar', 'BRINGAS GERMAN ALEJANDRO', '20-28836814-8', '02657-15674846', NULL, NULL, 'distribuidor', 1, '$2y$10$.59DpmNFMp5b6WJdhH/o3OzkEh12XrhN3bJHODIsfqrxw9kjIxygm', NULL, '2018-10-08 20:58:02', '2018-10-08 20:58:02'),
(121, '30709684058', 'BUENO JORGE OMAR S.R.L.', 'BUENO JORGE OMAR S.R.L.', 'pintatlantida@gmail.com', 'BUENO JORGE OMAR S.R.L.', '30-70968405-8', '0353-4527182', NULL, NULL, 'distribuidor', 1, '$2y$10$AhycKmV4ORJ9pyS.RareTeCRXkMU.Uo5KXCOEeFZ6HTqrg/vXJ5iW', 'lX15ms27msCnSiUDjWi2zD99LCYjgo9kGhgYBsQ8OBc062bu95jYTM1ati4x', '2018-10-08 20:58:46', '2018-10-08 20:58:46'),
(122, '20077087983', 'BULACIO SIMON SEGUNDO', 'BULACIO SIMON SEGUNDO', 'mat.ceramicos@vocampo.com.ar', 'BULACIO SIMON SEGUNDO', '20-07708798-3', '03482-466777', NULL, NULL, 'distribuidor', 1, '$2y$10$J/7YfXqlawDjb1qtfEgMQ.mxr2rXWDGBYHzVzBJ.MHEQK..eUjYU6', NULL, '2018-10-08 21:00:34', '2018-10-08 21:00:34'),
(123, '20055286354', 'CURLETTO HUGO JACINTO', 'CURLETTO HUGO JACINTO', 'huguimar@fibertel.com.ar', 'CURLETTO HUGO JACINTO', '20055286354', '0358-4632428', NULL, NULL, 'distribuidor', 1, '$2y$10$Bp2T/mSQKh07SiBtEIR2tevnKBHFoTNtHyGeDqng27GgCIg83IJJW', 'G0c6UKPEha1EJy42DaT6C8BJw1lxmIkrJVLPqGVoQr47QcQHRvjLSaYYMEz9', '2018-10-08 21:01:08', '2018-10-08 21:01:08'),
(124, '20045214932', 'BUSTO RAUL EDGARDO', 'BUSTO RAUL EDGARDO', 'raul_busto@hotmail.com', 'BUSTO RAUL EDGARDO', '20-04521493-2', '4958-1229', NULL, NULL, 'distribuidor', 1, '$2y$10$AGcO3Hz9D3eEzao7L/QxYOtS9jmQ9ZqC2/Oy5SUskMzP1plfvD/R2', NULL, '2018-10-08 21:01:18', '2018-10-08 21:01:18'),
(125, '20200462018', 'CALLES ARNOLDO FABIAN', 'CALLES ARNOLDO FABIAN', 'districalles@live.com.ar', 'CALLES ARNOLDO FABIAN', '20-20046201-8', '02923-15512603', NULL, NULL, 'distribuidor', 1, '$2y$10$sLGAdeWuT/2aNCy3AQED9uKTsoo2vQzCk8V5fM53L2ey66y.l0yTK', NULL, '2018-10-08 21:02:09', '2018-10-08 21:02:09'),
(126, '30604737989', 'ELSENER PINTURAS SA', 'ELSENER PINTURAS SA', 'carlos@elsenerpinturas.com', 'ELSENER PINTURAS SA', '30604737989', '03492-426119', NULL, NULL, 'distribuidor', 1, '$2y$10$t8bXMPazc4iwRZR7YrplKun7iz/OXBFfgcMYGgKs6q3LBtweBSTMK', 'Uy92VMX4YBQ1h24anfu9uUHXjuoIxxRovmR6rgX6KhIQm3OOviVobKqZoyE2', '2018-10-08 21:03:03', '2018-10-08 21:03:03'),
(127, '30714483680', 'CASTILLA DANIELA Y PAZ ROXANA S.H.', 'CASTILLA DANIELA Y PAZ ROXANA S.H.', 'distribuidoraproveesur@gmail.com', 'CASTILLA DANIELA Y PAZ ROXANA S.H.', '30-71448368-0', '5092-2450', NULL, NULL, 'distribuidor', 1, '$2y$10$I/NXezzTM9EE0UZnLHqelOAL.hsvoii2ztMhtrcc85onj/ltZFgBG', NULL, '2018-10-08 21:03:14', '2018-10-08 21:03:14'),
(128, '23311693409', 'CASTRO DIEGO LUIS', 'CASTRO DIEGO LUIS', 'decolormc@yahoo.com.ar', 'CASTRO DIEGO LUIS', '23-31169340-9', '0351-4917980', NULL, NULL, 'distribuidor', 1, '$2y$10$u5LK.2CtFNGqIEDN3idDq.HYYVQuoR5teEtJffAZILJGdAdO0iXJG', NULL, '2018-10-08 21:03:54', '2018-10-08 21:03:54'),
(129, '20103339112', 'CERUTTI HECTOR CARLOS', 'CERUTTI HECTOR CARLOS', 'proveedores@ceruttipinturas.com', 'CERUTTI HECTOR CARLOS', '20-10333911-2', '03564-432322', NULL, NULL, 'distribuidor', 1, '$2y$10$uU5xwj16tlhbPXyqMRqLCuP/x6.AG7IqZfImUGZIi5OgS1JshGjT.', NULL, '2018-10-08 21:04:45', '2018-10-08 21:04:45'),
(130, '30714616001', 'FERRETERIA OXIGENO SALADILLO', 'FERRETERIA OXIGENO SALADILLO', 'oxisaladillo@hotmail.com', 'FERRETERIA OXIGENO SALADILLO', '30714616001', '02344-430108', NULL, NULL, 'distribuidor', 1, '$2y$10$so7T761QoCryloAmlNUqaOajHl8ITCxCCACJyfbDmmD1bUe9r7WI2', NULL, '2018-10-08 21:05:00', '2018-10-08 21:05:00'),
(131, '30708742933', 'CHAPA MERCEDES S.R.L.', 'CHAPA MERCEDES S.R.L.', 'compras@chapamercedes.com.ar', 'CHAPA MERCEDES S.R.L.', '30-70874293-3', '1111111111', NULL, NULL, 'distribuidor', 1, '$2y$10$gAEWl.9ZY6Q2/hf8DX5yN.gAaZ0MWj/HAv3BHf4l9mRtLcUfu3aZ2', NULL, '2018-10-08 21:05:28', '2018-10-08 21:05:28'),
(132, '30709219959', 'H L RODRIGUEZ SRL', 'H L RODRIGUEZ SRL', 'administracion@acerolomas.com.ar', 'H L RODRIGUEZ SRL', '30709219959', '4298-8734', NULL, NULL, 'distribuidor', 1, '$2y$10$QLjrv9zvFns5CU8soWw9KO2q0w.srg0AHPaWwInmK6LAFPADJSOJ2', NULL, '2018-10-08 21:07:29', '2018-10-08 21:07:29'),
(133, '20164158382', 'COLIMEDAGLIA GUSTAVO', 'COLIMEDAGLIA GUSTAVO', 'gcolimedaglia@nobacolor.com.ar', 'COLIMEDAGLIA GUSTAVO', '20-16415838-2', '0336-442-3227', NULL, NULL, 'distribuidor', 1, '$2y$10$rztcZ0WDqmAemYVOSPAVYuxT4Vynh23u0wrC6hBR95FSroAXcAX4y', NULL, '2018-10-08 21:08:33', '2019-03-14 22:42:53'),
(134, '30710775377', 'COLOR BUS S.R.L.', 'COLOR BUS S.R.L.', 'colorbus@hotmail.com', 'COLOR BUS S.R.L.', '30-71077537-7', '4278-6909', NULL, NULL, 'distribuidor', 1, '$2y$10$Vb0LlK8iRMBuZD4XNxbWJ..an0HesOoaF4GrEs3pdXEVf2GvicFB.', 'SC752GfsgfSKJw7U8UVgJNuteLjoZXCCfukGOqHnVjhEvol3Gxz4WJUEwi1J', '2018-10-08 21:09:47', '2018-10-08 21:09:47'),
(135, '30646512952', 'PINTURERIAS REX S.A.', 'PINTURERIAS REX S.A.', 'compras@pintureriasrex.com', 'PINTURERIAS REX S.A.', '30646512952', '49570402', NULL, NULL, 'distribuidor', 1, '$2y$10$qv2clYMoj3zgZw7DNB7oxejvgntqcy.FwHBbc9iJQFQBRwfkrFE.G', 'YGsTaQVTfuMzSOgs33Y5ffGZSIYi24LSS9kTtFnxwjLMrAae50ZgJvx2IU83', '2018-10-08 21:10:21', '2018-10-08 21:10:21'),
(137, '33708565569', 'CORRALON DALMASSO S.R.L.', 'CORRALON DALMASSO S.R.L.', 'central@dalmassoenlinea.com', 'CORRALON DALMASSO S.R.L.', '33-70856556-9', '02657-433628', NULL, NULL, 'distribuidor', 1, '$2y$10$OD6RcXxtoAW/Q6C/9nnq0u8PaL/4Fo9oMYAcxDcBOBTW/XY14jvQO', NULL, '2018-10-08 21:10:57', '2018-10-08 21:10:57'),
(140, '30652671108', 'CRECER S.A.', 'CRECER S.A.', 'carlos.schmidt@crecer-sa.com.ar', 'CRECER S.A.', '30-65267110-8', '0299-4895914', NULL, NULL, 'distribuidor', 1, '$2y$10$oDXWUp4azy2MGakBIj7n4OZm4U6u0K12RbKsNAWjkisUk7WSTt/aK', NULL, '2018-10-08 21:13:12', '2018-10-08 21:13:12'),
(141, '20173963980', 'D ANTONIO CLAUDIO', 'FERROMA', 'ferroma@smandes.com.ar', 'D ANTONIO CLAUDIO', '20-17396398-0', '02972-428387', NULL, NULL, 'distribuidor', 1, '$2y$10$4duCkqCs5YhwgWawqodaQ.IuulS62/SwfLTJZ1q/l5gO7BZICU4ZG', 'SeAjUJshlmNu803o5RC1chFIFCALjGm2ynqjrq0WcQjnSmLLpdfPFYTmLzgd', '2018-10-08 21:13:49', '2018-10-26 16:31:17'),
(142, '30708922079', 'DANIEL A. BASGALL S.R.L.', 'DANIEL A. BASGALL S.R.L.', 'jinda@universopinturerias.com.ar', 'DANIEL A. BASGALL S.R.L.', '30-70892207-9', '0342-4753430', NULL, NULL, 'distribuidor', 1, '$2y$10$UXcHJOr0wtFR/JUXokulc.ptaRGdpbHL1IxlQHt3S6rM8vYWpK94S', 'J3LxcjKt5OOog2cVx8lcLu4tjiwRppr1piUWbm6r5QDi1rMfGysKGttwShAS', '2018-10-08 21:15:03', '2018-10-08 21:15:03'),
(144, '30714827347', 'INSUMOS RAWSON SRL', 'INSUMOS RAWSON SRL', 'madherrajes@hotmail.com.ar', 'INSUMOS RAWSON SRL', '30714827347', '0264-4241317', NULL, NULL, 'distribuidor', 1, '$2y$10$Exlq8e.IY7HWJmk2fq/IDusYPMqnBvFGk2XTWuxtJyypKNwFBWHiS', NULL, '2018-10-08 21:16:51', '2018-10-08 21:16:51'),
(145, '20252975919', 'DELRIVO MARCO LUIS', 'DELRIVO MARCO LUIS', 'marcosdelrivo@hotmail.com', 'DELRIVO MARCO LUIS', '20-25297591-9', '03562-480099', NULL, NULL, 'distribuidor', 1, '$2y$10$SgBQ5YMJVOsNKHQJ28l7wukh1BamAiQnkD/2r1rNiGJVhGj5S.c5.', NULL, '2018-10-08 21:18:03', '2018-10-08 21:18:03'),
(146, '30715630431', 'JRG EQUIPAMIENTO SRL', 'JRG EQUIPAMIENTO SRL', 'contacto@jrgequipamiento.com.ar', 'JRG EQUIPAMIENTO SRL', '30715630431', '0341-155784571', NULL, NULL, 'distribuidor', 1, '$2y$10$RVvrmi2bt.K0P0jnefjgdu5l.3tZpQBZooSNeVnZ2tKL2G0wKys0.', NULL, '2018-10-08 21:18:04', '2018-10-08 21:18:04'),
(147, '20082650211', 'DEMITTI ARIEL ADELQUI', 'DEMITTI ARIEL ADELQUI', 'ventas@arieldemitti.com.ar', 'DEMITTI ARIEL ADELQUI', '20-08265021-1', '4756-0027', NULL, NULL, 'distribuidor', 1, '$2y$10$dVNMv3uDgYPrPPkUgFRs2OGWY7WMjQfh9JUUGA98p.ensWi.C8Ooe', 'ofKB4EmyWStMTJX93pewTksulYwRHGHKqQE1pX6PreOfLy9Vy3s8Py7JbWX0', '2018-10-08 21:18:51', '2018-10-08 21:18:51'),
(148, '30711536414', 'LA INDUSTRIAL SA', 'LA INDUSTRIAL SA', 'mjbuloneria@hotmail.com', 'LA INDUSTRIAL SA', '30711536414', '0280-4422156', NULL, NULL, 'distribuidor', 1, '$2y$10$xUYyqBduB5GGlgXrtNV7RuSqAzPrNIZ31VEHEYjt8ioKff7e0iJcO', NULL, '2018-10-08 21:19:32', '2018-10-08 21:19:32'),
(149, '23220613739', 'DIAZ FABIAN GUSTAVO', 'DIAZ FABIAN GUSTAVO', 'ventas@bulonar.com.ar', 'DIAZ FABIAN GUSTAVO', '23-22061373-9', '4489-1066', NULL, NULL, 'distribuidor', 1, '$2y$10$FsPYgde95nuyOOTr6RSRi.BevFm7lguDdw9zZKFjCKI1fgGHMAjh6', NULL, '2018-10-08 21:19:37', '2018-10-08 21:19:37'),
(150, '27257670916', 'DIEMINGER D. DEL CARMEN E.', 'DIEMINGER D. DEL CARMEN E.', 'rcmiranda.colorshop@gmail.com', 'DIEMINGER D. DEL CARMEN E.', '27-25767091-6', '0376-154678736', NULL, NULL, 'distribuidor', 1, '$2y$10$knKg2vQdhY3btRhipPNTeuoB8IBg09kooShe.zxMw0NaiQBxhvv5K', NULL, '2018-10-08 21:20:02', '2018-10-08 21:20:02'),
(151, '20207766098', 'LATINI SILVIO ANGEL', 'LATINI SILVIO ANGEL', 'silcolor@arnet.com.ar', 'LATINI SILVIO', '20207766098', '0343-4982519', NULL, NULL, 'distribuidor', 1, '$2y$10$NkgArXEm98bPQoSKsKufNuHlsT1L7T44oaNgXU313RmFBlHI4yxWW', NULL, '2018-10-08 21:20:31', '2018-10-08 21:20:31'),
(152, '27058035586', 'DIN-COLOR DE IEZZA ANA', 'DIN-COLOR DE IEZZA ANA', 'dincolor@yahoo.com.ar', 'DIN-COLOR DE IEZZA ANA', '27-05803558-6', '0341-4315643', NULL, NULL, 'distribuidor', 1, '$2y$10$YSxxSqhgkWd/xvQ7v1vBfO6V7oF3CFT7Ez7jUSxmPph5b.vl1/kc6', 'UbNWXykRDlvldEVpnHXms58jm0fHuzwMNc9YlCaJNLDJ6h0Um4DSZvvKA7QG', '2018-10-08 21:22:22', '2018-10-08 21:22:22'),
(153, '30643487515', 'DISTRIB.RIO DE LA PLATA S.R.L.', 'DISTRIB.RIO DE LA PLATA S.R.L.', 'riplata@live.com.ar', 'DISTRIB.RIO DE LA PLATA S.R.L.', '30-64348751-5', '0387-4611751', NULL, NULL, 'distribuidor', 1, '$2y$10$tHwq54ZnLC9YwpyLm5YdD.sA1ua.MihVVjKuJ94c.FWh7DCYcfbkK', NULL, '2018-10-08 21:23:04', '2018-10-08 21:23:04'),
(154, '33651511149', 'DISTRIBUIDORA MEDITERRANEA SRL', 'DISTRIBUIDORA MEDITERRANEA SRL', 'distmediterranea@yahoo.com.ar', 'DISTRIBUIDORA MEDITERRANEA SRL', '33-65151114-9', '0358-4627032', NULL, NULL, 'distribuidor', 1, '$2y$10$uK0xUzaPTckZS1PdJPcdP.AlvHRWGOCeKk9iJVUuZY2L0UE9N6uzK', NULL, '2018-10-08 21:23:43', '2018-10-08 21:23:43'),
(155, '23277453479', 'DOMECQ FERNANDO', 'DOMECQ FERNANDO', 'fd@pinturasnewen.com.ar', 'DOMECQ FERNANDO', '23-27745347-9', '4659-1570', NULL, NULL, 'distribuidor', 1, '$2y$10$//sGwHQwxHBh54bSTjXMY.cL80EtIUmwQ2c1lX7OAHr0CPzEiU9Sm', NULL, '2018-10-08 21:24:19', '2018-10-08 21:24:19'),
(156, '33708531419', 'EL KIMU S.R.L.', 'EL KIMU S.R.L.', 'pintuavenida@hotmail.com', 'EL KIMU S.R.L.', '33-70853141-9', '03584-421495', NULL, NULL, 'distribuidor', 1, '$2y$10$kc71X4rrNcUf/mDS9/GrbO5bq82wReVYpgDXEq5e8Z9rs1vJB1fUS', 'O7S2OMdFS3xbDIrS1ElMBCG9veblKwmomkX6G6glM1wkzw1LiZfhZUTwjOPr', '2018-10-08 21:25:19', '2018-10-08 21:25:19'),
(157, '30550070320', 'LUPATINI Y CIA SA', 'LUPATINI Y CIA SA', 'daniel.lupatini@pintureriasanantonio.com.ar', 'LUPATINI Y CIA SA', '30550070320', '4627-1414', NULL, NULL, 'distribuidor', 1, '$2y$10$KdfvCYblmW.gchNMcBAN8uuipkPps1kfVS.n/u8OYuxAwbMHRqQC.', NULL, '2018-10-08 21:26:20', '2018-10-08 21:26:20'),
(158, '20103630453', 'ETCHART JORGE ORLANDO', 'ETCHART JORGE ORLANDO', 'jorgeoetchart@hotmail.com', 'ETCHART JORGE ORLANDO', '20-10363045-3', '4611-7018', NULL, NULL, 'distribuidor', 1, '$2y$10$351kRtYKLuDR68qjrJP00.d1AYfs04YNgdgThdebYCuE6BTVof6Te', NULL, '2018-10-08 21:26:42', '2018-10-08 21:26:42'),
(159, '30542590145', 'EUSEBIO D. BOUCIGUEZ S.A.', 'EUSEBIO D. BOUCIGUEZ S.A.', 'compras@borealpinturas.com.ar', 'EUSEBIO D. BOUCIGUEZ S.A.', '30-54259014-5', '02284-428121', NULL, NULL, 'distribuidor', 1, '$2y$10$p/b6oBjL8hCQr.fzIB3rveq4nNvd.5rplAx3m.p5B.59aDQSn7kvK', NULL, '2018-10-08 21:27:47', '2018-10-08 21:27:47'),
(161, '30714410748', 'EL PALACIO DE LA PINTURA SA', 'EL PALACIO DE LA PINTURA SA', 'ELPALACIODLAPINTURASA@HOTMAIL.COM', 'EL PALACIO DE LA PINTURA SA', '30-71441074-8', '02994437446', NULL, NULL, 'distribuidor', 1, '$2y$10$I5Zx3G9dpgTYsaiRR2gh9uijzOAq/ZOzPg6Ku8a8WSA7fY7t3ONjS', NULL, '2018-10-08 21:34:57', '2018-10-08 21:34:57'),
(162, '30693890361', 'GILI J.C. Y ALGACIBIUR M. S.H.', 'GILI J.C. Y ALGACIBIUR M. S.H.', 'pintureriasannicolas@intercom.com.ar', 'GILI J.C. Y ALGACIBIUR M. S.H.', '30-69389036-1', '03461-455316', NULL, NULL, 'distribuidor', 1, '$2y$10$68DVgYraGzDsIiolby8vSe5PgzB1.BqUxhCGC82WQsdwZAoIBaRHm', '5Zp23BPALSvnZJfCk6B6lrPlsqRowIZTemspmo5LwuFBe09Ojoyvx90tSJlP', '2018-10-08 21:36:04', '2018-10-08 21:36:04'),
(163, '30707733523', 'GRUPO INVERSOR DEL COLOR SRL', 'GRUPO INVERSOR DEL COLOR SRL', 'grupoparana@arnetbiz.com.ar', 'GRUPO INVERSOR DEL COLOR SRL', '30-70773352-3', '0341-4558057', NULL, NULL, 'distribuidor', 1, '$2y$10$Y.0VDHoZQF3dLbn..WTRPOqylfSvYkLlXtid3jx2NQf6ZSq8DldpO', NULL, '2018-10-08 21:36:53', '2018-10-08 21:36:53'),
(164, '30709151092', 'HECAN S.R.L.', 'HECAN S.R.L.', 'info@rosariocolor.com', 'HECAN S.R.L.', '30-70915109-2', '0341-4812531', NULL, NULL, 'distribuidor', 1, '$2y$10$ZdIzYFCd7mwSjWf5Y74c/.pGnHVvLIJ6bEk81J2LfGg7pnnvbRhJO', NULL, '2018-10-08 21:37:30', '2018-10-08 21:37:30'),
(165, '23200519159', 'LLORENSI MARTIN EMILIO', 'LLORENSI MARTIN EMILIO', 'martin@casamartinrecreo.com.ar', 'LLORENSI MARTIN EMILIO', '23-20051915-9', '0342-4960187', NULL, NULL, 'distribuidor', 1, '$2y$10$6hJNlXFD67xMndyUG9gM6uq0o2sGqzmsLPjjoI9UEHnwIfOhRKsg6', NULL, '2018-10-08 21:38:18', '2018-10-08 21:38:18'),
(166, '30708841702', 'MAFLODI SA', 'MAFLODI SA', 'depositoespana@hotmail.com', 'MAFLODI SA', '30-70884170-2', '03364-503709', NULL, NULL, 'distribuidor', 1, '$2y$10$oO9YrFKMLRhTMYukbZIELezeuGa0r0hGETm0fz5xIlQ4n2CgOrtZu', NULL, '2018-10-08 21:39:27', '2018-10-08 21:39:27'),
(167, '30708512105', 'PINTURERIA MAIPU S.A.', 'PINTURERIA MAIPU S.A.', 'pintureriamaipu@arnet.com.ar', 'PINTURERIA MAIPU S.A.', '30-70851210-5', '03461-426861', NULL, NULL, 'distribuidor', 1, '$2y$10$zzSBFxU/N5OVoW1aRvAAXOVtetoPpTylq0GRE9Q5x3.CUxuK.XOdm', 'lM0BaXbhNHNKJsDvajr4m8zLItKojHCqpdXaOXO4OGNcFMoV1oGn08YbfzUb', '2018-10-08 21:41:03', '2018-10-08 21:41:03'),
(168, '30708524375', 'PROPIMAT S.R.L.', 'PROPIMAT S.R.L.', 'administracion@propimat.com.ar', 'PROPIMAT S.R.L.', '30708524375', '45512077', NULL, NULL, 'distribuidor', 1, '$2y$10$VMSiRJF4EAAQkYFbrUXPcOMSjA4/YhHCHiLhVJiXdJ7mNR8sV7azm', NULL, '2018-10-08 21:44:33', '2018-10-08 21:44:33'),
(169, '20134984695', 'TURDO CARLOS AGUSTIN', 'TURDO CARLOS AGUSTIN', 'proveedores@colorpluspinturerias.com', 'TURDO CARLOS AGUSTIN', '20-13498469-5', '03462-425665', NULL, NULL, 'distribuidor', 1, '$2y$10$phd2c9mvAkErEB/MOtxP7eJZEeTtmgL2FwSDJItt9pUVcxDkNzTaO', 'Lgp5jrG5z6JU5gjszs45ZhWerEiVUcYSHrA48leKhZUzS0LYGEFjJpEOXZR7', '2018-10-08 21:45:00', '2018-10-08 21:45:00'),
(170, '30678438576', 'RAMOS MARCELO Y RAMOS GUILLERMO NESTOR', 'RAMOS MARCELO Y RAMOS GUILLERMO NESTOR', 'marceloramos@ferreteria-pacheco.com.ar', 'RAMOS MARCELO Y RAMOS GUILLERMO NESTOR', '30678438576', '47261132', NULL, NULL, 'distribuidor', 1, '$2y$10$5x3PvopopbaqeoU0PojK0.reaLTbj/MZcnEq4V/yPxv4wYz9rgg6m', NULL, '2018-10-08 21:46:36', '2018-10-08 21:46:36'),
(171, '30712277625', 'MAGIC COLORS SA', 'MAGIC COLORS SA', 'robertorodriguez@mcpinturas.com.ar', 'MAGIC COLORS SA', '30712277625', '21255852', NULL, NULL, 'distribuidor', 1, '$2y$10$uX9E0ZwakMAVhUoshjnaRug8SaeKWyD3hB2601HVp4cYe2pyFEMQO', NULL, '2018-10-08 21:47:50', '2018-10-08 21:47:50'),
(172, '20209119804', 'MEITIN MARCELO GUSTAVO', 'MEITIN MARCELO GUSTAVO', 'pintureriamgm@gmail.com', 'MEITIN MARCELO GUSTAVO', '20209119804', '0222-4470859', NULL, NULL, 'distribuidor', 1, '$2y$10$ISMd/EwbBJTjRySTwI2aauOdhcHYp.OM.TEIJOm.w9eBkm/S.HPOu', NULL, '2018-10-08 21:50:26', '2018-10-08 21:50:26'),
(173, '20171374589', 'NOTARGIACOMO LUIS ALBERTO', 'NOTARGIACOMO LUIS ALBERTO', 'laprimerafederacion@gmail.com', 'NOTARGIACOMO LUIS ALBERTO', '20171374589', '03456-481313', NULL, NULL, 'distribuidor', 1, '$2y$10$Z5Rg7Qrtx01VxRmcJYcwvOgM7Di0VXcHFGNIn13KpCPUMgfp1QI8i', 'B1g50sF3xg3PXoE20iisrR3FHw0uXfwXxeWV92oDXPFXADJA6JkjlmX8Rrq6', '2018-10-08 21:52:10', '2018-10-08 21:52:10'),
(174, '20222289166', 'CARLEVARINO PABLO ATILIO', 'CARLEVARINO PABLO ATILIO', 'colorshopvillaluro@colorshop.com.ar', 'CARLEVARINO PABLO ATILIO', '20-22228916-6', '4635-90602', NULL, NULL, 'distribuidor', 1, '$2y$10$12vuOhbByCEmXJ6vMF6sXuBhzmOepP5LrZ7yCovcit/lH7Z7YRKhy', NULL, '2018-10-08 21:53:11', '2018-10-08 21:53:11'),
(175, '30592190229', 'P.J. SOCIEDAD ANONIMA', 'P.J. SOCIEDAD ANONIMA', 'central@pintureriasagitario.com.ar', 'P.J. SOCIEDAD ANONIMA', '30592190229', '4305-8326', NULL, NULL, 'distribuidor', 1, '$2y$10$ULJFR42K0ZjLChMZtDADE.JOGI2.wG5Zd9Y51MFuyy6aUISb8K5Je', NULL, '2018-10-08 21:53:42', '2018-10-08 21:53:42'),
(176, '30699653868', 'CASA ARCAMONE S.A.', 'CASA ARCAMONE S.A.', 'casaarcamone@yahoo.com.ar', 'CASA ARCAMONE S.A.', '30-69965386-8', '4362-4665', NULL, NULL, 'distribuidor', 1, '$2y$10$oR3LwHmEuUvlREHAHZ.Z2.O/F.kBlIkKRC7M8OXxrwEV7DKe8.LBi', NULL, '2018-10-08 21:53:55', '2018-10-08 21:53:55'),
(177, '30715523422', 'SERVOLINI NORBERTO', 'SERVOLINI NORBERTO', 'pintureriaalhambra@gmail.com', 'SERVOLINI NORBERTO', '30715523422', '45035959', NULL, NULL, 'distribuidor', 1, '$2y$10$aUy9ibWpwwLXJEUj4X2yOOaCjUPJSwZtuPV9isGYjUUKP2oP/YGL2', '0Ji8bBirLbfPOGr5hiGnvalV6gke5UDvxKEkoyJu0wWtbSUd87DaK4n47VbW', '2018-10-08 21:55:25', '2018-10-12 19:57:34'),
(178, '27059722870', 'CHIRICO MARIA SUSANA', 'CHIRICO MARIA SUSANA', 'ferreteriamerica@yahoo.com.ar', 'CHIRICO MARIA SUSANA', '27-05972287-0', '4566-1639', NULL, NULL, 'distribuidor', 1, '$2y$10$BT3DXgZiR.QNy.PA.2MiCuMmLezt0Df8tqcLoQFfhWoW0BnFILPly', NULL, '2018-10-08 21:55:37', '2018-10-08 21:55:37'),
(179, '30710439881', 'PEDRO BRAVIN SA', 'PEDRO BRAVIN SA', 'luciano@pedrobravin.com.ar', 'PEDRO BRAVIN SA', '30710439881', '03401-420820', NULL, NULL, 'distribuidor', 1, '$2y$10$ZLYlDYxTV5MD4LtsnTew2OGIpTqQw8TvOcX.C/D/UHFGjS/L1hap.', NULL, '2018-10-08 21:56:44', '2018-10-30 16:59:41'),
(180, '27117213310', 'COGUL ALICIA MARGARITA', 'COGUL ALICIA MARGARITA', 'serviciotecnico@buldelsur.com.ar', 'COGUL ALICIA MARGARITA', '27-11721331-0', '4250-3798', NULL, NULL, 'distribuidor', 1, '$2y$10$KPhG1AI2UkyL4ibaJtjlB.Sp.TtUPoIwPWBe/1gPf7Ezsk2xLBkTi', NULL, '2018-10-08 21:57:28', '2018-10-08 21:57:28');
INSERT INTO `users` (`id`, `username`, `name`, `apellido`, `email`, `social`, `cuit`, `telefono`, `direccion`, `postal`, `nivel`, `activo`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(181, '30712018387', 'D. MIGLIORE Y C. MIGLIORE S.H', 'D. MIGLIORE Y C. MIGLIORE S.H', 'info@pintureriasmingo.com.ar', 'D. MIGLIORE Y C. MIGLIORE S.H', '30-71201838-7', '4262-1737', NULL, NULL, 'distribuidor', 1, '$2y$10$b94cqX7FoS7KP647XeaQoOFNsHd8Nchc2K4eUNpZufpKFmD3rpre6', NULL, '2018-10-08 21:58:26', '2018-10-08 21:58:26'),
(183, '20045218105', 'ROBLES JULIO ARGENTINO', 'ROBLES JULIO ARGENTINO', 'ferricord@argentina.com', 'ROBLES JULIO ARGENTINO', '20-04521810-5', '4862-0340', NULL, NULL, 'distribuidor', 1, '$2y$10$Dm4b/dEUuIRIMxbC0EVIU.hIDwr0.AXBLwVs71R1iUrj3UTD6qgSm', 'j0XE7wN25VgaF8kej64GL2KDEgL3VpckYjq0jrZhY7LDpDBOhLzeQacpv4ub', '2018-10-08 22:00:27', '2018-10-08 22:00:27'),
(184, '30708499915', 'PINTURERIA SAN GUILLERMO S.A.', 'PINTURERIA SAN GUILLERMO S.A.', 'celestebasualdo@hotmail.com', 'PINTURERIA SAN GUILLERMO S.A.', '30-70849991-5', '03525-466726', NULL, NULL, 'distribuidor', 1, '$2y$10$u6NaLaLNlUSG4nuIsXq0yO7VWbjRgv1jf9.f8yLgvM8CdI.KZEqXq', 'JSr4RL9lr5j4kYoCn2w8DRMOeUSSv0oYvkioorVuo6iQl9nldgi5GmCtoCHF', '2018-10-08 22:01:54', '2018-10-08 22:01:54'),
(185, '20082901249', 'TORESAN JUAN ANGEL', 'TORESAN JUAN ANGEL', 'juan_toresan@hotmail.com', 'TORESAN JUAN ANGEL', '20082901249', '47393559', NULL, NULL, 'distribuidor', 1, '$2y$10$Dewf4uwVmvMQliBS4eVfouVJm8S1uP63BSgzh/cR0oXtC9YBoYsT6', 'Mf2W5xbmoNvfSNnNyVBvXRgGVIzEuaYx0xE2VN9OwB6tnBCPvP376mHkYphH', '2018-10-08 22:03:01', '2018-10-08 22:03:01'),
(186, '20160873370', 'UNAMUNO ANDRES IGNACIO', 'UNAMUNO ANDRES IGNACIO', 'ferreteriaunamuno@yahoo.com.ar', 'UNAMUNO ANDRES IGNACIO', '20160873370', '4237-1079', NULL, NULL, 'distribuidor', 1, '$2y$10$VYuH0z4/PNBx4ZUN6KY0z.YLYVzEysepErPhxhi766CaAFWOMZHBy', 'ioKudQOq8d2iexZMMuWtqWXiKzjOWDqdmltPVhmT02u6OCObfQ7yLsubDbIY', '2018-10-08 22:03:14', '2018-10-08 22:03:14'),
(187, '30681172382', 'DRB DISTRIBUIDORA S.R.L.', 'DRB DISTRIBUIDORA S.R.L.', 'drb@bvconline.com.ar', 'DRB DISTRIBUIDORA S.R.L.', '30-68117238-2', '0291-4557007', NULL, NULL, 'distribuidor', 1, '$2y$10$HeVjSvOUD/Dk94Hh9gAFnu3oNgXELnR/U.8JBeOWTodNmdhjR/AIG', '9OIW947u3UtoL1rcaDYl4hvNycRAWl0cj0lIytRpoGKe3tvRZOzLjyVJdApf', '2018-10-08 22:03:16', '2018-10-08 22:03:16'),
(188, '30500719687', 'SHERWIN WILLIAMS I.C.S.A.', 'SHERWIN WILLIAMS I.C.S.A.', 'leandro.valladares@sherwin.com.ar', 'SHERWIN WILLIAMS I.C.S.A.', '30-50071968-7', '4469-9823', NULL, NULL, 'distribuidor', 1, '$2y$10$ulHZHOMSVZJ.R6t/g9eXGubjNWPi91cgi8LIuPGE/sY3pbA1pULrm', NULL, '2018-10-08 22:04:06', '2018-10-08 22:04:06'),
(189, '20084809919', 'URQUIOLA FERNANDO ANTONIO', 'URQUIOLA FERNANDO ANTONIO', 'urquiolafernando@gmail.com', 'URQUIOLA FERNANDO ANTONIO', '20084809919', '02227-422470', NULL, NULL, 'distribuidor', 1, '$2y$10$zNbopxLIs9YGehVZ1BfzE.uIqmEN.rUayaSkcb8TWUUYUJUdrjWl2', NULL, '2018-10-08 22:04:33', '2018-10-08 22:04:33'),
(190, '30710310390', 'TRIECSA S.R.L', 'TRIECSA S.R.L', 'guillermo@guillermoribeiro.com.ar', 'TRIECSA S.R.L', '30710310390', '47202670', NULL, NULL, 'distribuidor', 1, '$2y$10$ywE8vUCqlGII50jFPps8R.T9LNx4XdQ95hjGAApIKygTsIoWqVf3q', NULL, '2018-10-08 22:04:49', '2018-10-08 22:04:49'),
(191, '30651357329', 'ZAMAR REPRESENTACIONES S.R.L.', 'ZAMAR REPRESENTACIONES S.R.L.', 'zamarsrl@ciudad.com.ar', 'ZAMAR REPRESENTACIONES S.R.L.', '30-65135732-9', '0341 451-7004', NULL, NULL, 'distribuidor', 1, '$2y$10$fPKt13nKpqR0.qKuSDqAjOWatV1IsXCkfw01bHctpRtzGDiuJXWxq', NULL, '2018-10-08 22:04:51', '2018-10-08 22:04:51'),
(192, '30708643757', 'CODAMA SA', 'CODAMA SA', 'pintureriasaladillo@yahoo.com.ar', 'CODAMA SA', '30708643757', '02344454280', NULL, NULL, 'distribuidor', 1, '$2y$10$Lof9DJQEw.B8ZB4s0R5b2Or6R8JSD2HhffQrYO1dnJaXwKJb.DlOG', 'gPZ7hwuD9DC8nrKjTCAf6bJOBTZBkqAFToy1zleP69XRqgwSu3vgN9DDHPW7', '2018-10-08 22:05:34', '2018-10-08 22:05:34'),
(193, '30688785339', 'PINTURERIAS CONCORDIA S.R.L.', 'PINTURERIAS CONCORDIA S.R.L.', 'lux_pinturerias@hotmail.com', 'PINTURERIAS CONCORDIA S.R.L.', '30-68878533-9', '0345-4212821', NULL, NULL, 'distribuidor', 1, '$2y$10$bILBkb61jZxuPuaI3IyG2Ot9MHwgMumno4NxB7dRNLrgbAdAatgju', 'UMf7UhqRIMj6PjTT3g8SJenCahm9yNeI6sfwVCQIbJ3OgA9gDaSQpZyTrXr0', '2018-10-08 22:06:00', '2018-10-08 22:06:00'),
(194, '23261001969', 'TORRES MARTIN ENRIQUE', 'TORRES MARTIN ENRIQUE', 'ferre_met@yahoo.com.ar', 'TORRES MARTIN ENRIQUE', '23261001969', '4244-8092', NULL, NULL, 'distribuidor', 1, '$2y$10$HBsFOgKMInGHPYhzn1zfyOZwdyOSrxUl0JkcXu4mpwqkT6ivXk4.m', NULL, '2018-10-08 22:10:35', '2018-10-08 22:10:35'),
(195, '20251521930', 'DIAZ URIEL ALBERTO', 'DIAZ URIEL ALBERTO', 'ferromar@speedy.com.ar', 'DIAZ URIEL ALBERTO', '20251521930', '02291433070', NULL, NULL, 'distribuidor', 1, '$2y$10$EOiyCblbBXl7bEaEv1LkeepA.de9LmZWIB/prH03iYxg6RhWeKG7G', NULL, '2018-10-08 22:11:40', '2018-10-08 22:11:40'),
(196, '20049707887', 'ROSSA JOSE DANIEL', 'ROSSA JOSE DANIEL', 'patricia@imperialpinturas.com.ar', 'ROSSA JOSE DANIEL', '20049707887', '0236-4423600', NULL, NULL, 'distribuidor', 1, '$2y$10$z6fucP5MoJEwJqDJ1eGTIurYq.IrDOJtfY.GgMyA4E9BLtNYbKmde', NULL, '2018-10-08 22:13:43', '2018-10-08 22:13:43'),
(197, '30710494734', 'AUTORENA SRL', 'AUTORENA SRL', 'renato.montenegro.sgo@gmail.com', 'AUTORENA SRL', '30710494734', '0385-155805542', NULL, NULL, 'distribuidor', 1, '$2y$10$CUHEG.RuyOmAgOlP.mUhFe.JwR4Y9SOq.M7X.pJS5LLdXwdakRgxG', 'rwpXSh0f4Y2HBHWe1yNb8fyUmQ6CG8QHOa99z6gcP2eRq2Aam3sK95PS0gRS', '2018-10-08 22:14:42', '2018-10-08 22:14:42'),
(198, '20177555259', 'FANELLI JUAN JOSE', 'FANELLI JUAN JOSE', 'ferreteriafanelli@speedy.com.ar', 'FANELLI JUAN JOSE', '20177555259', '02214702854', NULL, NULL, 'distribuidor', 1, '$2y$10$vXv.b1RB3sOfx7AFVuByvORdIheZhRzuX.Zo8LW8YIor.aacXTfd2', 'Jp55FHagnG58JgEbXt8O4geH8DiCUa23yQmcVlqsoq8ugN4a52jI3G3l79V4', '2018-10-08 22:15:28', '2018-10-08 22:15:28'),
(199, '20226516019', 'BERONICH NICOLAS ERNESTO', 'BERONICH NICOLAS ERNESTO', 'elastrocentronqn@yahoo.com.ar', 'BERONICH NICOLAS ERNESTO', '20226516019', '0299-4435100', NULL, NULL, 'distribuidor', 1, '$2y$10$EkWrr1LfOvKirANktKD/I.wwBFuZZDSgEcTiRhKbZxl15VR3XPgAG', '1jfWdunipenUnZmjV65aKyDYJ18tmIfC2mArKTvcCehhym3r0unOsl3ygz3Q', '2018-10-08 22:16:26', '2018-10-08 22:16:26'),
(200, '30711432899', 'FIPH SA', 'FIPH SA', 'tandil@fiphsa.com.ar', 'FIPH SA', '30-71143289-9', '0249 444-3304', NULL, NULL, 'distribuidor', 1, '$2y$10$BQUqmj7aj.MjKboJXOhVgeiFVkZpsn6CSTqoE.kTo9y7jV0e7iO5m', NULL, '2018-10-09 16:22:41', '2018-10-09 16:22:41'),
(201, '30710444680', 'FORTIN MAYORISTA SA', 'FORTIN MAYORISTA SA', 'compras@fortinrepublica.com.ar', 'FORTIN MAYORISTA SA', '30-71044468-0', '2804450648', NULL, NULL, 'distribuidor', 1, '$2y$10$2KzdBbEYgibmshXcKwNZvu7UumJ.ODLrW2tJdOL.43Y/03EzEvid2', NULL, '2018-10-09 16:23:51', '2018-10-09 16:23:51'),
(202, '30670487640', 'FORTIN REPUBLICA SA', 'FORTIN REPUBLICA SA', 'dvega@fortinrepublica.com.ar', 'FORTIN REPUBLICA SA', '30-67048764-0', '(0280) 445-1545', NULL, NULL, 'distribuidor', 1, '$2y$10$9qinqT1Ao7veKdwaZTvz5esavDbKWygQu6qWXv1jP.pWbwRzNgypu', NULL, '2018-10-09 16:24:47', '2018-10-09 16:24:47'),
(203, '30686591723', 'LAKONICH SRL', 'LAKONICH SRL', 'lakonich@yahoo.com', 'LAKONICH SRL', '30-68659172-3', '02257 42-3721', NULL, NULL, 'distribuidor', 1, '$2y$10$mcGjKJ0sXkrnu4XT3Bw4w.QPruMKXjap.0tF0MAtryfnwO3yyLbPy', NULL, '2018-10-09 16:25:27', '2018-10-09 16:25:27'),
(204, '23229783394', 'LIENNEN CLAUDIA CELINA', 'LIENNEN CLAUDIA CELINA', 'todocasa_68@hotmail.com', 'LIENNEN CLAUDIA CELINA', '23-22978339-4', '2284414488', NULL, NULL, 'distribuidor', 1, '$2y$10$5JJoFMIXosokOFZRSKA.I.rx45Iyk2HibqhhrOoBGQd0NAg4c9ifC', NULL, '2018-10-09 16:26:32', '2018-10-09 16:26:32'),
(205, '33597418669', 'MAVA SA', 'MAVA SA', 'mava_r36@yahoo.com.ar', 'MAVA SA', '33-59741866-9', '(0221) 472 3943', NULL, NULL, 'distribuidor', 1, '$2y$10$sI9f0cQHXWUPej3OjcihyO/L.HoE2Rh8J2OLfyQm1Z4hYXeZVm5yi', NULL, '2018-10-09 16:27:26', '2018-10-09 16:27:26'),
(206, '20262692141', 'MANSILLACARILLO HECTOR ANDRES', 'MANSILLACARILLO HECTOR ANDRES', 'mansillaehijosconst_sec@hotmail.com', 'MANSILLACARILLO HECTOR ANDRES', '20-26269214-1', '0223-4631503', NULL, NULL, 'distribuidor', 1, '$2y$10$OkKZVoMxBdXtVOpMOynzOeQrk59ix23N2l.NQx26D71St.xoUkTny', NULL, '2018-10-09 16:28:34', '2018-10-19 22:49:06'),
(207, '23168236239', 'MILONE GABRIEL OMAR', 'MILONE GABRIEL OMAR', 'ferreteriaelcacique@hotmail.com', 'MILONE GABRIEL OMAR', '23-16823623-9', '011 4464-0690', NULL, NULL, 'distribuidor', 1, '$2y$10$Lst9EV92nmVc/gIQkxlwou6reDggS14vxbNw.6UiASk603DeXLYwm', NULL, '2018-10-09 16:29:32', '2018-10-09 16:29:32'),
(208, '30710133642', 'NEW ROM SANITARIOS SA', 'NEW ROM SANITARIOS SA', 'sanitariosrom@yahoo.com.ar', 'NEW ROM SANITARIOS SA', '30-71013364-2', '0223 479-9065', NULL, NULL, 'distribuidor', 1, '$2y$10$1QXRxXcE0aKtPwarmx/12.5mzU1fxP2ZbhSoVr1/RPGRz.EXLYR2m', NULL, '2018-10-09 16:30:24', '2018-10-09 16:30:24'),
(209, '30552362655', 'PERREN Y CIA SA', 'PERREN Y CIA SA', 'delveliz@parrenycia.com.ar', 'PERREN Y CIA SA', '30-55236265-5', '0280 442-5472', NULL, NULL, 'distribuidor', 1, '$2y$10$1dMfLod5BOiZGGe2T2HT9eNeSekpdzeOFhPLNOm1fgb/qKC3DFAAq', NULL, '2018-10-09 17:21:41', '2018-10-09 17:21:41'),
(210, '20104380213', 'SUC. DE STRIBING RUBEN JORGE', 'SUC. DE STRIBING RUBEN JORGE', 'elfortin603@gmail.com', 'SUC. DE STRIBING RUBEN JORGE', '20-10438021-3', '2920461255', NULL, NULL, 'distribuidor', 1, '$2y$10$WCH8fJPeoL2koERoI8rcNOivzCJetJukxiYpsH1Cc0ynaQmfQw6La', NULL, '2018-10-09 17:22:24', '2018-10-09 17:22:24'),
(211, '20150989869', 'ABRANTES MENDES CARLOS JOSE', 'ABRANTES MENDES CARLOS JOSE', 'ferreteriaoeste@hotmail.com', 'ABRANTES MENDES CARLOS JOSE', '20-15098986-9', '2202427565', NULL, NULL, 'distribuidor', 1, '$2y$10$3Jf/likBBsiEIk485uKePeYmFU5r7Kdc7c7teT2v6C/jGhcVYh0l6', NULL, '2018-10-09 17:23:03', '2018-10-09 17:23:03'),
(212, '30708170220', 'ARCO DEL INTERIOR S.R.L.', 'ARCO DEL INTERIOR S.R.L.', 'vendo@fibertel.com.ar', 'ARCO DEL INTERIOR S.R.L.', '30-70817022-0', '0351-4265009', NULL, NULL, 'distribuidor', 1, '$2y$10$Q/Y5/ZOZV1D57WWGQTWtL.XF9JwGKMEeZfZgWQKMnyY8JDIjtqEX.', NULL, '2018-10-09 17:24:52', '2018-10-09 17:24:52'),
(213, '30710572336', 'ARCO MAQUINARIAS ALQ Y VTAS SA', 'ARCO MAQUINARIAS ALQ Y VTAS SA', 'pablok@arcomaquinarias.com.ar', 'ARCO MAQUINARIAS ALQ Y VTAS SA', '30-71057233-6', '4583-4477', NULL, NULL, 'distribuidor', 1, '$2y$10$D9y75zbrloi.I0oGtbkB8.y5vJj/G/Oon6jHhKxa4E5iCBapOG9s.', NULL, '2018-10-09 17:25:48', '2018-10-09 17:25:48'),
(214, '20176943360', 'ARGUELLES ALDO DANIEL', 'ARGUELLES ALDO DANIEL', 'danielmaquimax@hotmail.com', 'ARGUELLES ALDO DANIEL', '20-17694336-0', '4450-1400', NULL, NULL, 'distribuidor', 1, '$2y$10$60BfTcul7i3slffeYJNSC.WUi0FSFa3KC/0p7i7ECqzpWV2A1SuGC', NULL, '2018-10-09 17:31:43', '2018-10-09 17:31:43'),
(215, '30709319414', 'COLORMIX SA', 'COLORMIX SA', 'riotercero@colormixpinturerias.com', 'COLORMIX SA', '30709319414', '03571-644338', NULL, NULL, 'distribuidor', 1, '$2y$10$6WFs/uvUWUb2HIKVb05ve.iCIh12Mpf1U5a0spXrqDn9NfQSb/HtG', 'XRZ13pzYKOJ3cNUkr5Knu6TDIZ6kmBPGBGe92t5N8NdiJmakYFDDceV25RsK', '2018-10-09 17:35:44', '2018-10-09 17:35:44'),
(216, '24237278603', 'MONTI GUSTAVO', 'MONTI GUSTAVO', 'dgmonti@mundocolorpinturas.com.ar', 'MONTI GUSTAVO', '24237278603', '02942-15470517', NULL, NULL, 'distribuidor', 1, '$2y$10$ix78krYiYHSEURfd.4yuwuji5pOrEyJc1eomnqKcKHo5wdPYKJqim', 'nWpRt9oPf4D3NTiKvphhCJ9xh7zDQhKWa3SZgNPikXeqDw1Mgn0xuNs3Bfm0', '2018-10-09 17:37:18', '2018-10-09 17:37:18'),
(217, '30710064675', 'PINTURAS PACLIN SA', 'PINTURAS PACLIN SA', 'mariano.rinaldi@pinturaspaclin.com', 'PINTURAS PACLIN SA', '30710064675', '0351-4651187', NULL, NULL, 'distribuidor', 1, '$2y$10$yMdj0m/bSrHnFZBzuJ6A4u9DQ3bbHM4Tw6PtXd6eQX/fZOG/jhI2a', 'VrLz1Rguof1hJNXvf5nunpp5MZM2l1QAZFiiILraQL3DnbQ0PwFjAMsG24gE', '2018-10-09 17:57:36', '2018-10-09 17:57:36'),
(218, '33711203279', 'PINTURERIA JOSE LUIS SH', 'PINTURERIA JOSE LUIS SH', 'compras@pintureriajoseluis.com.ar', 'PINTURERIA JOSE LUIS SH', '33711203279', '02226-430674', NULL, NULL, 'distribuidor', 1, '$2y$10$E4yUiWXfbpNCDo7Ht3QMZOxE1jYpop1lN.9jCbgiTwpRDxYr0Q3ci', 'PmUx4UH6ozPMX6mybpEZ65eWm7MWG5UTmAWn2cf1SlMVoiozAfN6WoJlCddp', '2018-10-09 17:59:46', '2018-10-09 17:59:46'),
(219, '30569724011', 'PINTURERIA DEL CARMEN SA', 'PINTURERIA DEL CARMEN SA', 'pintureriadelcarmen76@yahoo.com.ar', 'PINTURERIA DEL CARMEN SA', '30569724011', '02273-442571', NULL, NULL, 'distribuidor', 1, '$2y$10$nmmMiQMHsPGef9lREE2FgeYLnOJ7S3J/CbIoT6gwiybFKFQZ2rO02', '1BchV0D53HdtlOoApmo8UDDEFGtTD6t9tKQQRaKkjezEita5R7N5pPyoqAvU', '2018-10-09 18:08:42', '2018-10-09 18:08:42'),
(220, '30675767420', 'R.Q SRL', 'R.Q SRL', 'pintureriacasarosales@speedy.com.ar', 'R.Q SRL', '30675767420', '02901-42143', NULL, NULL, 'distribuidor', 1, '$2y$10$.pU70/chKSJ2OVFissLR1uR/6hvcCuRAVth2bx7LBR42Ga8U5WxjO', 'F69jtoJ67U0i06PUhQglBW4fzGewd32qhBWG7ahJTvdw8r5mGPOnB3moOJLU', '2018-10-09 18:19:54', '2018-10-09 18:19:54'),
(221, '30657611936', 'SILVA SRL', 'SILVA SRL', 'gustavoasilva@gruposilva.com.ar', 'SILVA SRL', '30657611936', '0381-4320323', NULL, NULL, 'distribuidor', 1, '$2y$10$9HryArxQ19Ah5r1KKnIoZ.nhTQvz6kNPKyfTs2Ph0Pe363I5Y4l7.', 'on2o1fwTnjV9xfZJY394VTnOtGHykKmaRGmDXHUIEgDnuJ6Y7kWdL9FU5XTW', '2018-10-09 18:21:36', '2019-03-15 17:43:01'),
(222, '20168409827', 'BOETTO RUBEN MIGUEL', 'BOETTO RUBEN MIGUEL', 'pintureriaboetto@arnet.com.ar', 'BOETTO RUBEN MIGUEL', '20168409827', '03564-428036', NULL, NULL, 'distribuidor', 1, '$2y$10$qS8.k0nVMX3ynaycCY3jGOAzUio0scjc7IrkjPa2Tf8F3TPPC6k0S', NULL, '2018-10-09 18:25:58', '2018-10-09 18:25:58'),
(223, '30710595921', 'BOETTO YANINA Y BOETTO JESICA', 'BOETTO YANINA Y BOETTO JESICA', 'roboetto@boettopinturas.com.ar', 'BOETTO YANINA Y BOETTO JESICA', '30710595921', '03564-439600', NULL, NULL, 'distribuidor', 1, '$2y$10$ZisMq6tRZhOALjDcwUe5fuXaJcXJhgvynNBlPucesI1ILbdcnrtw6', NULL, '2018-10-09 18:29:15', '2018-10-09 18:29:15'),
(224, '20215484034', 'URTASUN NICOLAS JOSE', 'URTASUN NICOLAS JOSE', 'nicolas.urtasun@gmail.com', 'URTASUN NICOLAS JOSE', '20215484034', '0299-4934410', NULL, NULL, 'distribuidor', 1, '$2y$10$hasJRG39usNwO1vGKgDLverxOwNf5q0lqGv8yhDy4X6EMXjc/bkD6', 'J3owDnUG8Q2FlAPJDszqoEjlJhAPgVHCp6qZHbPKmaCLcJbDSaIDlrGfVnJV', '2018-10-09 18:31:19', '2018-10-09 18:31:19'),
(225, '20122198465', 'MONASTEROLO RAUL ALBERTO', 'MONASTEROLO RAUL ALBERTO', 'electrorep.monasterolo@gmail.com', 'MONASTEROLO RAUL ALBERTO', '20122198465', '03564-420472', NULL, NULL, 'distribuidor', 1, '$2y$10$L.QOyoWl8/PLIDwrEoMOhe1YLZFDjRoioPxfK7KwgT6Bx4nswMPqq', '96xUGCohKu6MblZOlSE8jMbLRp3n8aZvyWRlpGeR1GX9uGbz5T6ngF4AyLCq', '2018-10-09 18:37:58', '2019-05-07 16:39:45'),
(226, '30541026777', 'PINTURERIAS ASAN SRL', 'PINTURERIAS ASAN SRL', 'pintureriasasan@uolsinectis.com.ar', 'PINTURERIAS ASAN SRL', '30541026777', '03564-424549', NULL, NULL, 'distribuidor', 1, '$2y$10$Qx1jgxy0LCADIJVFRouyD.mbGOYYo5Oo/5MUT4HeMTrK32ilHD9Ge', 'z0rZzsGguQ7Eczjq4KA57zTtfynWHpcqPuVZEA3ikueKSakeRilqtK7XbaPI', '2018-10-09 20:36:12', '2018-10-09 20:36:12'),
(227, '30567363372', 'ALUMETAL SA', 'ALUMETAL SA', 'ventas@enzomaq.com.ar', 'ALUMETAL SA', '30567363372', '0264-4213558', NULL, NULL, 'distribuidor', 1, '$2y$10$xfvL8n/W2y62n7zdHeNl3u9X7quihOFVUW5KwGb647HTqvlbEzXdW', NULL, '2018-10-09 20:37:21', '2018-10-09 20:37:21'),
(228, '20207220249', 'TOUS ANTONIO DANIEL', 'TOUS ANTONIO DANIEL', 'deposito@pintureriastous.com.ar', 'TOUS ANTONIO DANIEL', '20207220249', '02622-489249', NULL, NULL, 'distribuidor', 1, '$2y$10$Xzrkc4Acv4V3t/a4O5priuUEb5tGKi4ayAkLvfLJV.ukuqWNqpVuq', 'GqrWNlSx6vlvEg8lwGdFcT2SKlxTqRdAI9cbo0P5FoNCXQrGl6tuax6Hahyx', '2018-10-09 20:38:32', '2018-10-24 15:38:36'),
(229, '30714755974', 'GAO REPUESTOS Y HERRAMIENTAS', 'GAO REPUESTOS Y HERRAMIENTAS', 'gastonuonvard@hotmail.com', 'GAO REPUESTOS Y HERRAMIENTAS', '30714755974', '4443-1037', NULL, NULL, 'distribuidor', 1, '$2y$10$17jcj45v1mKj6ji1vX80gONKhwN1kSEqSZ6tu1QnJqoq0h2jD6l/y', NULL, '2018-10-09 20:39:57', '2018-10-09 20:39:57'),
(230, '20161188396', 'ALVAREZ WALTER DANIEL', 'ALVAREZ WALTER DANIEL', 'walteralvarez@hotmail.com', 'ALVAREZ WALTER DANIEL', '20161188396', '03388-15460925', NULL, NULL, 'distribuidor', 1, '$2y$10$qJ8PquuqIwQAU6DbDx.eJeDVA9DtJsRsajXNUMv8vv0wOlLArfsK2', 'TkMwPOESkpJY6U521worX4ACnJLKHbOZPnGJt6vmLttxnI3OxSjIRZJyONQA', '2018-10-09 20:42:00', '2018-10-09 20:42:00'),
(231, '20234676823', 'BAGATTI ROBERTO ADRIAN', 'BAGATTI ROBERTO ADRIAN', 'robertobagatti@hotmail.com.ar', 'BAGATTI ROBERTO ADRIAN', '20-23467682-3', '02225-482881', NULL, NULL, 'distribuidor', 1, '$2y$10$tGS9e2wjhqemlYL/6SJPL.I4juyGCXym503sAqKlcIxBe5C60zxAO', NULL, '2018-10-09 22:57:36', '2018-10-09 22:57:36'),
(232, '27227077595', 'BEZIC LILIANA NOEMI', 'BEZIC LILIANA NOEMI', 'liliana@ferreteriapompeya.com', 'BEZIC LILIANA NOEMI', '27-22707759-5', '4919-7391', NULL, NULL, 'distribuidor', 1, '$2y$10$3KCU/5dufePhX.HQsK4wF.WeIb0gpHD4olsM1jIw9IdFHOd2kJkqu', NULL, '2018-10-09 22:59:28', '2018-10-09 22:59:28'),
(233, '30598812701', 'BRITAM S.A.', 'BRITAM S.A.', 'britan@bitamsa.com.ar', 'BRITAM S.A.', '30-59881270-1', '4382-8380', NULL, NULL, 'distribuidor', 1, '$2y$10$YYuc.tkR3gjIWdqXl69xXeYUouVtq3mV6yU1w8/6XTjIeVe8k156S', NULL, '2018-10-10 14:52:17', '2018-10-10 14:52:17'),
(234, '30710548680', 'BULONERA MITRE SA', 'BULONERA MITRE SA', 'buloneramitresa@gmail.com', 'BULONERA MITRE SA', '30-71054868-0', '4451-0551', NULL, NULL, 'distribuidor', 1, '$2y$10$LCofgUtJs9OMVWHXLrUIB.0cCveqkEMYAGO73xr1etpS8zaSuXEk.', NULL, '2018-10-10 14:53:57', '2018-10-10 14:53:57'),
(235, '30622567519', 'BULONERA TORCUATO S.R.L.', 'BULONERA TORCUATO S.R.L.', 'ventastorcuato@buloneratorcuato.com.ar', 'BULONERA TORCUATO S.R.L.', '30-62256751-9', '4741-2488', NULL, NULL, 'distribuidor', 1, '$2y$10$Q.XKR2RaXyo5FJctrPDne.CoP7efuYJXJfjRtAPHzd8e1IvEG9UXC', NULL, '2018-10-10 14:55:21', '2018-10-10 14:55:21'),
(236, '30610037549', 'CATLEY S.A.', 'CATLEY S.A.', 'administracion@catley.com.ar', 'CATLEY S.A.', '30-61003754-9', '4651-8766', NULL, NULL, 'distribuidor', 1, '$2y$10$jaloGfkYT7OTybw5Yr2qQO5uxv/.BQKMeTNt05I7EaslDgSSXthOy', NULL, '2018-10-10 14:56:39', '2018-10-10 14:56:39'),
(237, '30715328131', 'CECOTTI S.R.L', 'CECOTTI S.R.L', 'info@pintureriarotonda.com.ar', 'CECOTTI S.R.L', '30-71532813-1', '4441-6462', NULL, NULL, 'distribuidor', 1, '$2y$10$F3uw8dHuKN.TnEVXmUby8uiL9I/NvsInlOAX435svsJMkgVhevAl2', NULL, '2018-10-10 14:57:25', '2018-10-10 14:57:25'),
(238, '30710802382', 'CONSTRUK S.R.L.', 'CONSTRUK S.R.L.', 'info@pintureriametropolitana.com.ar', 'CONSTRUK S.R.L.', '30-71080238-2', '4566-3425', NULL, NULL, 'distribuidor', 1, '$2y$10$M1XpVHxskbSbNhsUrb03Zu1unSI8xo/AXSjzSHfyQcMwITMn7uOuS', NULL, '2018-10-10 15:00:50', '2018-10-10 15:00:50'),
(239, '30708226536', 'DISTRIBUIDORA DISTOR S.A.', 'DISTRIBUIDORA DISTOR S.A.', 'distor@distor.com.ar', 'DISTRIBUIDORA DISTOR S.A.', '30-70822653-6', '4824-5227', NULL, NULL, 'distribuidor', 1, '$2y$10$WyBWtjVlrQ.d2FU7nCzIXu.WSdaauhII98atHI7X/kOO64ihm3cVm', NULL, '2018-10-10 15:03:30', '2018-10-10 15:03:30'),
(240, '20079169081', 'ECHAVARRIA RAMON OVADIO', 'ECHAVARRIA RAMON OVADIO', 'todoobra2@hotmail.com', 'ECHAVARRIA RAMON OVADIO', '20-07916908-1', '4583-4458', NULL, NULL, 'distribuidor', 1, '$2y$10$CvSm/6FCmwL3hv6sAurdG.umn73sJ2Iq54rxkxAJZZ1i/.7dR6ei.', 'lRjPsI2xUVeqAPo3ZXF5Vn46DHmrMx6FgHk2eQclRMixwunF0mcSnsKTwaWI', '2018-10-10 15:04:47', '2018-10-10 15:04:47'),
(241, '30526638952', 'FERRETERIA SAN TELMO S.R.L.', 'FERRETERIA SAN TELMO S.R.L.', 'jorge.brusco@hotmail.com', 'FERRETERIA SAN TELMO S.R.L.', '30-52663895-2', '4362-4370', NULL, NULL, 'distribuidor', 1, '$2y$10$RB4nCKbq5JWTdvwoB.cHB.E08KS7NxAEkAZvO6SD4MQx/N.kE0ihK', NULL, '2018-10-10 15:05:25', '2018-10-10 15:05:25'),
(242, '30660768927', 'FERRISUR S.R.L.', 'FERRISUR S.R.L.', 'compras@ferrisursrl.com.ar', 'FERRISUR S.R.L.', '30-66076892-7', '4139-0861', NULL, NULL, 'distribuidor', 1, '$2y$10$6J5w3OWlVYicO7u5LiAf4OH9ajuY2LNrZ4Gq1ueDyuPEMAv5gbCg6', NULL, '2018-10-10 15:06:54', '2018-10-10 15:06:54'),
(243, '20116238102', 'GATTI VICTOR JOSE', 'GATTI VICTOR JOSE', 'pinturerias-gatti@hotmail.com.ar', 'GATTI VICTOR JOSE', '20-11623810-2', '4651-0906', NULL, NULL, 'distribuidor', 1, '$2y$10$.jA7vDfSOhI9FrbyR4flVuAyt2R9CNO2j0OELjq6bc.UuUEV5JS1y', '6435q8FnA7DIxXjURT76RBHJ0RLy5gF47yfDpKe2WefRW60BkPbAko2vnN95', '2018-10-10 15:13:15', '2018-10-10 15:13:15'),
(244, '30631752957', 'PGS TOOLS S.R.L.', 'PGS TOOLS S.R.L.', 'ventas@ferreteriascopazzo.com.ar', 'PGS TOOLS S.R.L.', '30-63175295-7', '4773-6149', NULL, NULL, 'distribuidor', 1, '$2y$10$Q8LuXkYKbOwfIWtWOiCpKuurGyMqjwA.undxa9wPu7zts5mdA5Cte', NULL, '2018-10-10 15:16:39', '2018-10-10 15:16:39'),
(245, '20043964810', 'LEDESMA JUAN JOSE', 'LEDESMA JUAN JOSE', 'atencion@pintureriasagitario.com.ar', 'LEDESMA JUAN JOSE', '20-04396481-0', '1111111', NULL, NULL, 'distribuidor', 1, '$2y$10$Ly.JNfU/.ULG7NcsuTXQ2u7jr8TAIQehjrjJez80uX33lG1XO508u', NULL, '2018-10-10 15:22:23', '2018-10-10 15:22:23'),
(246, '20233918548', 'LIMA CAPITAO MARCELO', 'LIMA CAPITAO MARCELO', 'limacapitaosrl@gmail.com', 'LIMA CAPITAO MARCELO', '20-23391854-8', '4625-0362', NULL, NULL, 'distribuidor', 1, '$2y$10$oE8ubIrb2CbEGOQzmeCPdud3kIGu.hO14zVdTZzEFwom3WVyOFEry', 'REFnRrJed4CSufoFYtf8dWADSSf5uxSaiKEowhwSOGU3PFHRQ3uLe6I9jfzJ', '2018-10-10 15:23:37', '2018-10-10 15:23:37'),
(247, '30708760079', 'LORETI EMILIO E HIJOS S.H.', 'LORETI EMILIO E HIJOS S.H.', 'central@loreti.com.ar', 'LORETI EMILIO E HIJOS S.H.', '30-70876007-9', '0237-4871227', NULL, NULL, 'distribuidor', 1, '$2y$10$XS3TIXAyHCNaK4YnM1EL9OcYJOeUZIp74oMScJTfRGu.Y0C2wmJnq', NULL, '2018-10-10 15:25:46', '2018-10-10 15:25:46'),
(248, '30712222499', 'LOS TRILLIZOS PERAZOLI S.R.L.', 'LOS TRILLIZOS PERAZOLI S.R.L.', 'maquinariasperazoli@hotmail.com', 'LOS TRILLIZOS PERAZOLI S.R.L.', '30-71222249-9', '4636-3070', NULL, NULL, 'distribuidor', 1, '$2y$10$fyWIPG//xKMm4Ucgr7/eceyagn7PIzvFbPbXTpKRV48tgxkKP4Vka', NULL, '2018-10-10 15:26:54', '2018-10-10 15:26:54'),
(249, '30547079198', 'MAQUINARIAS LANDAU SACIFEI', 'MAQUINARIAS LANDAU SACIFEI', 'landaumaq@fibertel.com.ar', 'MAQUINARIAS LANDAU SACIFEI', '30-54707919-8', '4921-7875', NULL, NULL, 'distribuidor', 1, '$2y$10$i6D4d31EO46v55GHwvYnH.9LJZhMfIk.ClgVoGBs8IL84ssKw1BD6', NULL, '2018-10-10 15:28:23', '2018-10-10 15:28:23'),
(250, '30699641231', 'MAQUINAS S.A.', 'MAQUINAS S.A.', 'maquinassa@infovia.com.ar', 'MAQUINAS S.A.', '30-69964123-1', '4307-4518', NULL, NULL, 'distribuidor', 1, '$2y$10$3Ip7VsvHsbmRi8b6vjnm6.VL.AaXvqmMXsbC89tFtzpWvKXtzgK1O', NULL, '2018-10-10 15:29:13', '2018-10-10 15:29:13'),
(251, '30710572387', 'MEGAMAQ S.A.', 'MEGAMAQ S.A.', 'ebarbieri@megamaq.com.ar', 'MEGAMAQ S.A.', '30-71057238-7', '4583-0025', NULL, NULL, 'distribuidor', 1, '$2y$10$P3sRmt.pt2G.edQZ3XqbBe.AzKvPb6Y389YVRgBdl409LCyGtnlOe', NULL, '2018-10-10 15:31:05', '2018-10-10 15:31:05'),
(252, '30684092657', 'O ARIAS Y CIA S.A.', 'O ARIAS Y CIA S.A.', 'ventas@oarias.com.ar', 'O ARIAS Y CIA S.A.', '30-68409265-7', '4208-0219', NULL, NULL, 'distribuidor', 1, '$2y$10$PmLMYh5pSvNqu4c2aamQdu.sHiaJqNro3eeWQHt6nRLsY6LQAQHsS', NULL, '2018-10-10 15:32:08', '2018-10-10 15:32:08'),
(253, '20270373608', 'OCCHIUZZI MIGUEL ANGEL', 'OCCHIUZZI MIGUEL ANGEL', 'miguel.occhiuzzi@hotmail.com', 'OCCHIUZZI MIGUEL ANGEL', '20-27037360-8', '4613-4753', NULL, NULL, 'distribuidor', 1, '$2y$10$hJ0lY3EY22DXmsy7fmwLGOFCGh9.6DzwNpRseR2dnW2eaGCjcXlhq', NULL, '2018-10-10 15:34:14', '2018-10-10 15:34:14'),
(254, '20133941127', 'PERAZOLI GUSTAVO ROBERTO', 'PERAZOLI GUSTAVO ROBERTO', 'ferreteriaperazoli@gmail.com', 'PERAZOLI GUSTAVO ROBERTO', '20-13394112-7', '4636-3070', NULL, NULL, 'distribuidor', 1, '$2y$10$CQLP.ABr7vK5gE0tHYRlRu7PsqgFjY/nzuFFC8Qx6Z9knBrXGIgfS', NULL, '2018-10-10 15:35:08', '2018-10-10 15:35:08'),
(255, '30707528008', 'PINTURERIA NORTE S.R.L.', 'PINTURERIA NORTE S.R.L.', 'ventas@pintunorte.com.ar', 'PINTURERIA NORTE S.R.L.', '30-70752800-8', '4762-5517', NULL, NULL, 'distribuidor', 1, '$2y$10$aUPz9ZivbjAN5Y3fWoaUWOEjy9JlzoFCdxOyRIuxWkNbmT3d6ZeB.', NULL, '2018-10-10 15:36:30', '2018-10-10 15:36:30'),
(256, '33710972929', 'PINTURERIAS BRIENZA S.A.', 'PINTURERIAS BRIENZA S.A.', 'quinquelapinturerias@arnetbiz.com.ar', 'PINTURERIAS BRIENZA S.A.', '33-71097292-9', '4771-2032', NULL, NULL, 'distribuidor', 1, '$2y$10$17pynquD.gcItfLoVp0qeOgXVHbcF9kyCv6BAo1LFvjPimhZ5TQJS', NULL, '2018-10-10 15:37:12', '2018-10-10 15:37:12'),
(257, '30553547942', 'PINTURERIAS MAFER S.A.', 'PINTURERIAS MAFER S.A.', 'geronimo@pintureriasmafer.com.ar', 'PINTURERIAS MAFER S.A.', '30-55354794-2', '4730-1053', NULL, NULL, 'distribuidor', 1, '$2y$10$GAanhc2zOQkEQqxieOQNdOKcVS8snGBGJm4liAwwG9EOSHWvuRh3W', NULL, '2018-10-10 15:39:27', '2018-10-10 15:39:52'),
(258, '30521197702', 'PISANO S.A.', 'PISANO S.A.', 'proveedores@pisano.com.ar', 'PISANO S.A.', '30-52119770-2', '4621-4509', NULL, NULL, 'distribuidor', 1, '$2y$10$C9Z27myZO8o5Cf9UY0/kXOkXUPNczNmupRt9.ejMBmRdHEs9.fPYm', NULL, '2018-10-10 15:41:33', '2018-10-10 15:41:33'),
(259, '20239395822', 'PUGLIESE GUSTAVO HERNAN', 'PUGLIESE GUSTAVO HERNAN', 'bulguemes@infovia.com.ar', 'PUGLIESE GUSTAVO HERNAN', '20-23939582-2', '4453-0080', NULL, NULL, 'distribuidor', 1, '$2y$10$F0x5tbidJt8NwhMko5lrluGZR6nOA2V6NargibkdbzwzO72vV7Hby', NULL, '2018-10-10 15:42:07', '2018-10-10 15:42:07'),
(260, '20113576899', 'REINOSO GUSTAVO PABLO', 'REINOSO GUSTAVO PABLO', 'buloneraamerico@gmail.com', 'REINOSO GUSTAVO PABLO', '20-11357689-9', '2056-6047', NULL, NULL, 'distribuidor', 1, '$2y$10$H/GmFG6fO9rga58IPU.R9emiKs98YfUHlfCzxIUQX.pi32dgH/14C', NULL, '2018-10-10 15:42:34', '2018-10-10 15:42:34'),
(261, '20202015159', 'RODRIGUEZ FERNANDO DANIEL', 'RODRIGUEZ FERNANDO DANIEL', 'buloneraalas@yahoo.com', 'RODRIGUEZ FERNANDO DANIEL', '20-20201515-9', '4696-3051', NULL, NULL, 'distribuidor', 1, '$2y$10$AkqemDSGtXNAHKsZQnRgmuzknphOa8cgFZLqSzrkUICGWB056gSHG', NULL, '2018-10-10 15:42:58', '2018-10-10 15:42:58'),
(262, '20055720720', 'TALLARICO CARLOS', 'TALLARICO CARLOS', 'carlostallarico@yahoo.com.ar', 'TALLARICO CARLOS', '20-05572072-0', '4624-3443', NULL, NULL, 'distribuidor', 1, '$2y$10$ECkeSkumE92SpjOEJH7/juS6/.1NU6Ni71pWMOvaL7cWCpuwGQAWa', 'wcDz3M2dDSE1wglJRyu6T76GNX9to6s9oAgFwVx9zqi5w6ztzyWrZ09fEqZ6', '2018-10-10 15:44:08', '2018-10-10 15:44:08'),
(263, '20935828857', 'VILA JORGE', 'VILA JORGE', 'conlachapano@hotmail.com', 'VILA JORGE', '20-93582885-7', '1111111111', NULL, NULL, 'distribuidor', 1, '$2y$10$xSfGSRgwDyrNJerBx/LpIuuiwcC9s2TuaErarh0/Ns9SiSrn6iVE.', 'FBEw0AgHIatnzv1DFXOMt8Mgd93xevN3EtoqN5xrULHk4RTZKdGI8gT7j1s5', '2018-10-10 15:49:17', '2018-10-10 15:49:17'),
(264, '30711955824', 'BAGLIVO RUBEN SH', 'BAGLIVO RUBEN SH', 'buloneralosmellizos@gmail.com', 'BAGLIVO RUBEN SH', '30711955824', '(0221)414-2299', NULL, NULL, 'distribuidor', 1, '$2y$10$u412vWdA20eRYGk2OqiKXuHx9Nb2cW5rQBP.CsLaDVQygmElcm7Vy', NULL, '2018-10-10 15:54:12', '2018-10-10 15:54:12'),
(265, '30708264802', 'BARRIOS AUTOMOTORES SA', 'BARRIOS AUTOMOTORES SA', 'barrios@speedy.com.ar', 'BARRIOS AUTOMOTORES SA', '30708264802', '0221 470-8665', NULL, NULL, 'distribuidor', 1, '$2y$10$88vB/MS.5vfW.r/psAopAOjsX6BjT9XOfTnh9ita5USyMqWulRQ16', 'l29QIkAbqYVEESmuN4yo0dV76xc2cLF7fRJC3TJ0KxrZZRhw0MeZKTdJSqJC', '2018-10-10 15:55:49', '2018-10-10 15:55:49'),
(266, '27051130656', 'BOTTINI MARIA ISABEL', 'BOTTINI MARIA ISABEL', 'crayonpinturas@ceystel.com.ar', 'BOTTINI MARIA ISABEL', '27051130656', '02317-423871', NULL, NULL, 'distribuidor', 1, '$2y$10$F7uBmdSNzWDdNoZSf6WsYOU9.EH48TCz.oMHoPbPZAdQpwjbsKJXW', NULL, '2018-10-10 15:57:12', '2018-10-10 15:57:12'),
(268, '30708385073', 'A TODO COLOR S.R.L.', 'A TODO COLOR S.R.L.', 'atc@atodocolor.com.ar', 'A TODO COLOR S.R.L.', '30-70838507-3', '03498-420536', NULL, NULL, 'distribuidor', 1, '$2y$10$YqftxqMYVHsIsdDebjbHpeUnMDPZ3r6BaeNnA16Ynsq2B4LFxRfa.', NULL, '2018-10-10 15:58:57', '2018-10-10 15:58:57'),
(269, '30699845147', 'BARRIOCANAL M.A Y ZIN EDGARDO', 'BARRIOCANAL M.A Y ZIN EDGARDO', 'santafe_pinturas@arnet.com.ar', 'BARRIOCANAL M.A Y ZIN EDGARDO', '30-69984514-7', '0342-4564400', NULL, NULL, 'distribuidor', 1, '$2y$10$9VyQpdgs7kyVt6NjN4MdK.xhsGxh7Ij2y0cYXGKtTgpfLGYJqJC5S', NULL, '2018-10-10 15:59:26', '2018-10-10 15:59:26'),
(270, '33712420249', 'BRUGUERAS RAFAEL Y AIELLO', 'BRIGUERAS RAFAEL Y AIELLO', 'eltucansa@yahoo.com.ar', 'BRUGUERAS RAFAEL Y AIELLO', '33712420249', '02291-420240', NULL, NULL, 'distribuidor', 1, '$2y$10$rmq5sJl.5l3aIaTfgNlVMOp1FxheZWQzN57wWy6beQR/KiB0OeOAq', NULL, '2018-10-10 16:00:16', '2018-10-10 16:00:16'),
(271, '30710854501', 'COLOR MIX S.R.L.', 'COLOR MIX S.R.L.', 'alfredo@colormixpinturerias.com', 'COLOR MIX S.R.L.', '30-71085450-1', '03476436281', NULL, NULL, 'distribuidor', 1, '$2y$10$9OrqIYjnf8gG6do0ET68fO70pZSo7/cHUkgl7Nt6MRHNuuQGBwj2W', NULL, '2018-10-10 16:02:32', '2018-10-10 16:02:32'),
(272, '30576267033', 'COSENZA ROBERTO Y DI MARCO', 'COSENZA ROBERTO Y DI MARCO', 'pintureriabalcarce@yahoo.com.ar', 'COSENZA ROBERTO Y DI MARCO', '30576267033', '02266-423002', NULL, NULL, 'distribuidor', 1, '$2y$10$vpV.tVkOZ43b8HR1umSJlOINYPYGa0R.i3MOoZmRE3zTu1dcE0Tky', 'C19cAFU82QA9gslKlk3HGxQWE0V1U11cJ45qqyUOTv0m64ZT9CrITOPt3LX6', '2018-10-10 16:04:23', '2018-10-10 16:04:23'),
(273, '30710384335', 'CUETO C. D. Y FERREYRA H.S. S.H.', 'CUETO C. D. Y FERREYRA H.S. S.H.', 'pintarventas@coopvgg.com.ar', 'CUETO C. D. Y FERREYRA H.S. S.H.', '30-71038433-5', '1111111111', NULL, NULL, 'distribuidor', 1, '$2y$10$qGwCB2kKFVtko4RQzgSYSORwGfLKeWsXRStPf.oezn9.q69fJHOa2', '8TlCnegB0e572NaskNtrxXmQkP7bLB9dhSDhBw9oP22Ka4j2LZOBbsHBowvT', '2018-10-10 16:04:39', '2018-10-10 16:04:39'),
(274, '30620734221', 'DRAP SRL', 'DRAP SRL', 'paula@drap.com.ar', 'DRAP SA', '30620734221', '0223-4960178', NULL, NULL, 'distribuidor', 1, '$2y$10$aA7GYvESNK/Qp9Wx3kKLSOQDEhCVIluvHuL8GxGzH9q613PN0n9gC', NULL, '2018-10-10 16:06:37', '2018-10-10 16:06:37'),
(275, '20060525421', 'DO BRITO RUBEN OSCAR', 'DO BRITO RUBEN OSCAR', 'pintureriadobrito@hotmail.com', 'DO BRITO RUBEN OSCAR', '20-06052542-1', '0341-4392208', NULL, NULL, 'distribuidor', 1, '$2y$10$sA4DSnNDxQt32X6I3tKgW.vPYhMGzX.YNQrDKfYZYgoB.ZAXr2UQG', NULL, '2018-10-10 16:07:37', '2018-10-10 16:07:37'),
(276, '23143360849', 'DOGLIOLI SERGIO ANGEL', 'DOGLIOLI SERGIO ANGEL', 'sdoglioli@cablenettv.com.ar', 'DOGLIOLI SERGIO ANGEL', '23-14336084-9', '0349-2470795', NULL, NULL, 'distribuidor', 1, '$2y$10$khJFSuDggUSsnxW1hEYQHeO7DqSZwjjD77jwi2sXFd4Zlum3rZMkm', NULL, '2018-10-10 16:08:04', '2018-10-10 16:08:04'),
(277, '30708737778', 'E.P.S.A.I. S.A.', 'E.P.S.A.I. S.A.', 'epsaisa@yahoo.com.ar', 'E.P.S.A.I. S.A.', '30708737778', '0223-482-8861', NULL, NULL, 'distribuidor', 1, '$2y$10$t7DI70SharNOZgDs5WLccud/zZHnSLwHRs5uDiWBn0F0OUjnbVC8m', NULL, '2018-10-10 16:08:13', '2018-10-10 16:08:13'),
(279, '30714714062', 'PINTURERIAS ESPARRICA', 'PINTURERIAS ESPARRICA', 'esparricapinturerias@gmail.com', 'ESPARRICA RICARDO RAUL', '30-71471406-2', '03400-475717', NULL, NULL, 'distribuidor', 1, '$2y$10$.ishMOMqvz3R0P0UT3AcbOAoTsBGrQqCrrGQljZsl5IAi1YIya1yq', 'brYNrvJlHaZvM04fKheH6MhaeO9znulsvIHa096qxC42yf85spzj90wHvPvE', '2018-10-10 16:10:31', '2019-05-07 16:37:14'),
(280, '20111576921', 'FALCON RUBEN ALBERTO', 'FALCON RUBEN ALBERTO', 'compras@aremet.com.ar', 'FALCON RUBEN ALBERTO', '20111576921', '0221-4701871', NULL, NULL, 'distribuidor', 1, '$2y$10$fV.4ogTjkF.Ww/nOwJa77.cIbIA1C7J7AdyrpIFQBr8ne1rhIxlem', 'NV4iZOlKhMLuzS1uzncgN8bCpPsHlX7BFCzzSH4qfW0o13SViuski8jW5TpM', '2018-10-10 16:10:54', '2019-03-28 17:15:31'),
(281, '20200407963', 'FIORITI EDUARDO CESAR', 'FIORITI EDUARDO CESAR', 'eduardofioriti@yahoo.com.ar', 'FIORITI EDUARDO CESAR', '20200407963', '0223-4781344', NULL, NULL, 'distribuidor', 1, '$2y$10$52410ZBG7RRTchOhrI/bWeFH8V.7UIJGSbMjRqn8YAwL00xTxJMvK', 'jfxhHUNi8Ra3qhLpw7oj8BBrqq0J031P1yelRfVBse0p7890YcOg943173Ay', '2018-10-10 16:15:14', '2018-10-10 16:15:14'),
(282, '20127079863', 'GALLE EDUARDO', 'GALLE EDUARDO', 'galleservice@hotmail.com', 'GALLE EDUARDO', '20127079863', '0221-4521879', NULL, NULL, 'distribuidor', 1, '$2y$10$r97iKvVtxwC/YccVOKdZ2OHOoir1vIzIrNkRHamSy35QnPSaalbE6', 'CgErcnjcf0eW9o3O9bEc2l3txeh8RLf3U3l2gzNuqRkkRyvwMxaMxHlISTcW', '2018-10-10 16:16:39', '2018-10-10 16:16:39'),
(283, '20237880146', 'GARCIA NORBERTO FERNANDO', 'GARCIA NORBERTO FERNANDO', 'norbertogarcia@gmail.com', 'GARCIA NORBERTO FERNANDO', '20237880146', '0221-4791541', NULL, NULL, 'distribuidor', 1, '$2y$10$.xGMWMdMf7Xstqmv1YRLiO0IDGgHBtFDGcNUHQdGxzouLOVFcBy.W', NULL, '2018-10-10 16:19:25', '2018-10-10 16:19:25'),
(284, '30616811920', 'IACONO E HIJO', 'IACONO E HIJO', 'administracion@iaconomdp.com.ar', 'IACONO E HIJO', '30616811920', '0223-4801619', NULL, NULL, 'distribuidor', 1, '$2y$10$OvQgIA7i7vdWLfJTWKl81OjFOa/c0gjIli47o88r8c9kZnxccIXum', 'oJgmcESnK3x46q9qU3keeNrSW1h9Tb2V4Ag1Jkb5SpholLFG23GfoqFZbZBJ', '2018-10-10 16:25:22', '2018-10-10 16:25:22'),
(285, '30714113778', 'LADERA SUR SA', 'LADERA SUR SA', 'juanmanuel.ingacot@gmail.com', 'LADERA SUR', '30714113778', '0223-4729884', NULL, NULL, 'distribuidor', 1, '$2y$10$8ere5h4RJz3y7XygxaToDuUSfIvaTLNvaHiU.5QOEmF6YW0gtXQA6', '3Xv5ttRrPKrV4TEi7pfzE5X4Ah4yB0uG3EMIcRXsDnETuPbSTA12LQ09VXxj', '2018-10-10 16:26:48', '2018-10-10 16:26:48'),
(286, '20106203548', 'ABLATICO JOSE LUIS', 'ABLATICO JOSE LUIS', 'pintureriaablatico@hotmail.com', 'ABLATICO JOSE LUIS', '20-10620354-8', '4743-4353', NULL, NULL, 'distribuidor', 1, '$2y$10$UYRpf2.tLvEKb90UUEtD4Of.R6zieLUc3f/kbI1EDD1XFjlqwAanm', NULL, '2018-10-10 16:35:17', '2018-10-10 16:35:17'),
(287, '20076847259', 'MAIALE LUIS RODOLFO', 'MAIALE LUIS RODOLFO', 'maialeeliana@gmail.com', 'MAIALE LUIS RODOLFO', '20076847259', '02346-427620', NULL, NULL, 'distribuidor', 1, '$2y$10$JD7kvuv/DBXm8chfsqMz/O1upCRTFA8lDHJaw3hZ0XA7ShOHVHeDa', NULL, '2018-10-10 16:51:29', '2018-10-10 16:51:29'),
(288, '33708296339', 'MALELU SRL', 'MALELU SRL', 'ventas@canelapinturerias.com.ar', 'MALELU SRL', '33708296339', '02257-460759', NULL, NULL, 'distribuidor', 1, '$2y$10$Q1HhFvdBOnVINFE8RTjFDeBXW/3vs89r5q/De0UBkwj50XgRiA3Km', NULL, '2018-10-10 16:52:59', '2018-10-10 16:52:59'),
(289, '30712160523', 'MANUEL O.SANCHEZ E HIJOS SRL', 'MANUEL O.SANCHEZ E HIJOS SRL', 'pintureriacachito@yahoo.com.ar', 'MANUEL O.SANCHEZ E HIJOS SRL', '30712160523', '02314-424444', NULL, NULL, 'distribuidor', 1, '$2y$10$CLQ05ue4UtqsKtztvFtvBeO.gCzCwzja5pMCh1wyxFcK4K8CxplJK', NULL, '2018-10-10 16:55:05', '2018-10-10 16:55:05'),
(290, '20087045766', 'MARQUEZ JUAN CARLOS', 'MARQUEZ JUAN CARLOS', 'pintureriascarlitos@hotmail.com', 'MARQUEZ JUAN CARLOS', '20087045766', '0223-4775027', NULL, NULL, 'distribuidor', 1, '$2y$10$jyZSDM8pQu9LtLIbkr3ye.QyPDUbxlCsbtKzD1ztkeZhlT24N7S.S', 'hi8NNMR7nyWxKEILL2DxJYIl1bRdfFPEHL4j4cxJIuri7mvcVDXds2cWWYZx', '2018-10-10 16:56:03', '2018-10-10 16:56:03'),
(291, '20179198445', 'MASSINI JAVIER ARMANDO', 'MASSINI JAVIER ARMANDO', 'javiermassini@hotmail.com', 'MASSINI JAVIER ARMANDO', '20179198445', '(02241)423523', NULL, NULL, 'distribuidor', 1, '$2y$10$AoARSc36m1wLkPGqitBtkOmN.zf5y1ONn4kzx7fPhWpZeNxpaJBcy', NULL, '2018-10-10 16:59:31', '2018-10-10 16:59:31'),
(292, '30677138641', 'MATIKA SRL', 'MATIKA SRL', 'localgonnet@painttec.com.ar', 'MATIKA SRL', '30677138641', '0221-5130157', NULL, NULL, 'distribuidor', 1, '$2y$10$SNJ6wVIOXhKOUO7O0pnkGuh7AfNqGaqkBV1Z31dWAUgcfx1aqnJlu', NULL, '2018-10-10 17:00:33', '2018-10-10 17:00:33'),
(293, '30707682392', 'MERCOPLAST SA', 'MERCOPLAST SA', 'info@mercoplast.com.ar', 'MERCOPLAST SA', '30707682392', '4734 - 5100', NULL, NULL, 'distribuidor', 1, '$2y$10$8rbofTOXmZaIwG/I6RLHY.uMFvKZxoSTxz/LWeQ0gHZdPxBSqbv.a', NULL, '2018-10-10 17:05:07', '2018-10-10 17:05:07'),
(294, '20184872022', 'MORENO VICTOR ALEJANDRO', 'MORENO VICTOR ALEJANDRO', 'herramientasdonhorione@yahoo.com.ar', 'MORENO VICTOR ALEJANDRO', '20184872022', '0223-4820126', NULL, NULL, 'distribuidor', 1, '$2y$10$ntv28266fx6c0C2wuz8OsOVdM8UGklAcvS8KXCsUVgaHJpq3GUGa.', NULL, '2018-10-10 17:10:55', '2018-10-10 17:10:55'),
(295, '30709438340', 'NOUDAL SRL', 'NOUDAL SRL', 'info@pintureriasindigo.com.ar', 'NOUDAL SRL', '30709438340', '0223-4750500', NULL, NULL, 'distribuidor', 1, '$2y$10$omKAvjX.qmyRoiHzY57nXeIQ/zbI1GN2BztqtIyJMG77Sxz6.qhti', NULL, '2018-10-10 17:12:43', '2018-10-10 17:12:43'),
(296, '30714535354', 'NRO 1 EN PINTURAS SA', 'NRO 1 EN PINTURAS SA', 'mirta_vacas@pintureriasambito.com', 'NRO 1 EN PINTURAS SA', '30714535354', '0223-4916384', NULL, NULL, 'distribuidor', 1, '$2y$10$PrYSFenre.ZaJ.ValExD.O5gZ9lSe7XPsx47sy4m2uuBO8uq9oU96', NULL, '2018-10-10 17:13:53', '2018-10-10 17:13:53'),
(297, '30708105313', 'PINTURERIA LOPEZ SA', 'PINTURERIA LOPEZ SA', 'info@pinturerialopez.com.ar', 'PINTURERIA LOPEZ SA', '30708105313', '0223-4958057', NULL, NULL, 'distribuidor', 1, '$2y$10$jtwJDi6GYtaRUe8D5PW0We9JS2WaluiHSPYZ67BQ5gMNHMes/cxmy', NULL, '2018-10-10 17:14:56', '2018-10-10 17:14:56'),
(298, '30711579652', 'PINTURERIA SAUKO SA', 'PINTURERIA SAUKO SA', 'info@pintureriasauko.com.ar', 'PINTURERIA SAUKO SA', '30711579652', '0221 491-7029', NULL, NULL, 'distribuidor', 1, '$2y$10$5uT.YD1PraeLyGO/X3zcKOJORrkJ9YGz5sjvo0/81sjDGw7WdFqlK', 'JZAht9NHpUheQfCU5029TMFKiMxMuYWcyPsi6xCJCrXIrYa1T6PERL7tpm2n', '2018-10-10 17:18:06', '2018-10-10 17:18:06'),
(299, '30667370368', 'PINTURERIA URQUIZA SRL', 'PINTURERIA URQUIZA SRL', 'pintureriaurquisasrl@hotmail.com', 'PINTURERIA URQUIZA SRL', '30667370368', '02392-430490', NULL, NULL, 'distribuidor', 1, '$2y$10$M9ENatyQdZTIZPyBeXbHy.Ia7nHVOVMjJttZBerSwQlAumiAerc9G', NULL, '2018-10-10 17:19:12', '2018-10-10 17:19:12'),
(300, '30677223983', 'PINTURERIA GARCIA SA', 'PINTURERIA GARCIA SA', 'ivana@pintureriasgarcia.com', 'PINTURERIA GARCIA SA', '30677223983', '0221-4711346', NULL, NULL, 'distribuidor', 1, '$2y$10$6pcz.kMbxH.q5GSIqkBgyOciJoGcO5JH/qr35jekSi2UcQV74oA1e', NULL, '2018-10-10 17:22:01', '2018-10-10 17:22:01'),
(301, '30689535646', 'COMERCIAL JOSE FER SRL', 'COMERCIAL JOSE FER SRL', 'joseluisreina@josefer.com.ar', 'COMERCIAL JOSE FER SRL', '30689535646', '0299-491-1141', NULL, NULL, 'distribuidor', 1, '$2y$10$N3O44um.wns/8qaBVcfCV.hqsSRZooNAxMHeB.6VbR9.jXbYhcvOa', NULL, '2018-10-10 17:24:45', '2018-10-10 17:24:45'),
(302, '20237565593', 'MEDICA PERO CESAR', 'MEDICA PEDRO CESAR', 'colorshop9dejulio@hotmail.com', 'MEDICA PEDRO CESAR', '20237565593', '02317-427501', NULL, NULL, 'distribuidor', 1, '$2y$10$OQkz3Gl4tyFV6yKXtkhLq.DiP3C055.KIaL8RCv4MOygom/x5BYJC', 'CqRRqTCUHyeSPa55kD7yfhO8Ta02vKgqYk7dXQGBifdSi1atlggqOGSGDs8K', '2018-10-10 17:25:51', '2018-10-10 17:25:51'),
(303, '30709470139', 'PINTURAS SRL', 'PINTURAS SRL', 'pintureriapatagonia@speedy.com.ar', 'PINTURAS SRL', '30709470139', '02994-430303', NULL, NULL, 'distribuidor', 1, '$2y$10$LIgUOVH4vTr29K45k25Lbu3RSx43Ml97PU0TBArsmp4EZ1utSWU3K', NULL, '2018-10-10 17:26:58', '2018-10-10 17:26:58'),
(304, '20110569409', 'PUGNALONI DANIEL ADOLFO', 'PUGNALONI DANIEL ADOLFO', 'danielpugnaloni@speedy.com.ar', 'PUGNALONI DANIEL ADOLFO', '20110569409', '02396-473701', NULL, NULL, 'distribuidor', 1, '$2y$10$KoQYEViTqNttGL6Kc.Kxru9V7eQrjSvJAVGbUhvb6RcL5ln19ZtcS', NULL, '2018-10-10 17:28:08', '2018-10-10 17:28:08'),
(305, '20147245115', 'SCHROEDER MIGUEL ANGEL', 'SCHROEDER MIGUEL ANGEL', 'soldamet@arnet.com.ar', 'SCHROEDER MIGUEL ANGEL', '20147245115', '03544-422824', NULL, NULL, 'distribuidor', 1, '$2y$10$yj.Ve3OL/PTOlgOm7iRNQ.qMfW4qDEEsYslm2y97tPKk0qSHYe6xu', NULL, '2018-10-10 17:34:22', '2018-10-10 17:34:22'),
(306, '20236414273', 'SEPULVEDA JUAN MANUEL', 'SEPULVEDA JUAN MANUEL', 'siglo21myh@speedy.com.ar', 'SEPULVEDA JUAN MANUEL', '20236414273', '0299-4421961', NULL, NULL, 'distribuidor', 1, '$2y$10$.zBwENHoDZZFNN2suOiQNuRby7JQDn0Hqr4IPerh2V7J5/xsrkag.', '2V8r1oF4MSSYzLLxyWHf4QXPL40smGjSzD2s0I7G9EXqtGxCI1vg6EV2Pb0r', '2018-10-10 17:35:24', '2018-10-10 17:35:24'),
(307, '20286781757', 'VICENTIN GASTON DANIEL', 'VICENTIN GASTON DANIEL', 'singlarconcordia@gmail.com', 'VICENTIN GASTON DANIEL', '20286781757', '0345-4216224', NULL, NULL, 'distribuidor', 1, '$2y$10$FVEDdDDmvsYhxEGcocbgI.USM3IxkbqpVWd9ysKEYxZUuouWXs1nK', NULL, '2018-10-10 17:36:25', '2018-10-10 17:36:25'),
(308, '20339750441', 'BERDEN GERMAN SANTIAGO', 'BERDEN GERMAN SANTIAGO', 'casaberden@hotmail.com', 'BERDEN GERMAN SANTIAGO', '20339750441', '4262-0367', NULL, NULL, 'distribuidor', 1, '$2y$10$20jXOxgaKhpx2sKi2vKuQeat5.34p2s80ZgdBA4l9SO/y57AlRxKS', 'sw5JVSa9t4iPFwQjJNfDvlxfqPnZZM2wJWcr5nDDzhzETy28BGIVwyMLGMwj', '2018-10-10 17:37:24', '2018-10-10 17:37:24'),
(309, '30707002677', 'PINTURERIA TRAVERSA SRL', 'PINTURERIA TRAVERSA SRL', 'pintureriatraversa@hotmail.com', 'PINTURERIA TRAVERSA SRL', '30707002677', '4254-2729', NULL, NULL, 'distribuidor', 1, '$2y$10$EH28AGu2yec7TwjtDM8Mjue9Bo/USpR5u2Wa1zwrBnp7EMezIfLyO', 'qdYRzFj9sGVG5FR8jULqTgJPJpccs5QQgPAVvZcbQx27cQT8AOQOEYNfUyYj', '2018-10-10 17:38:38', '2018-10-10 17:38:38'),
(310, '20219434759', 'RODRIGUEZ RAUL ALBERTO', 'RODRIGUEZ RAUL ALBERTO', 'buloneraburzaco@hotmail.com', 'RODRIGUEZ RAUL ALBERTO', '20219434759', '4299-8585', NULL, NULL, 'distribuidor', 1, '$2y$10$AW1/DrkYl/Gr9MwzEBgUq.kPLqoNq3EC75ZpMG1VUfwZoJ0Hg4Spu', NULL, '2018-10-10 17:39:44', '2018-10-10 17:39:44'),
(311, '27920360535', 'ALACAHAN NADIN', 'ALACAHAN NADIN', 'info@granpinturerias.com.ar', 'ALACAHAN MADIN', '27920360535', '4241-0812', NULL, NULL, 'distribuidor', 1, '$2y$10$tBc0fZnzGMSSBZ7otXuW6.HTu.QcisTNrfRK8K96lpCcQX/2T0s5a', 'J8fby9kOjywZZxU8gIxP5mlVkqysDeB3zyT8Cmh7zwKB084uYrytkGKA1j8v', '2018-10-10 17:40:42', '2018-10-10 17:40:42'),
(312, '30711390185', 'BQ TOOLS SA', 'BQ TOOLS SA', 'admin@bulonquilmes.com', 'BQ TOOLS SA', '30711390185', '4253-2924', NULL, NULL, 'distribuidor', 1, '$2y$10$01l..G4bLuk5T4fP56Dv0.GOv9OS2doDbPrMRSNx7pya7mmT7VDpa', 'kN7k1KlgjMCCNQU0kKYe1cJGY7jluzbyFbzin003qLCptb6SvZuOAb6YVgXy', '2018-10-10 17:42:01', '2018-10-10 17:42:01'),
(313, '30714140643', 'BRUNO BULONES SRL', 'BRUNO BULONES SRL', 'compras@brunobulones.com.ar', 'BRUNO BULONES SRL', '30714140643', '4201-6080', NULL, NULL, 'distribuidor', 1, '$2y$10$e0kyxCYn73nOO2vSgpwbyuCr55r9qAwnFHZd8mHWAZ1BluqT/3W6q', 'VWN6KQ916LZpdJzw5Xy9qQRuHHN5ZFcOMnrYf1i4MtBGFrjSW3vLjRapH9rm', '2018-10-10 17:43:16', '2018-10-10 17:43:16'),
(314, '30663603821', 'BULONES SALERNO SRL', 'BULONES SALERNO SRL', 'info@buloneraberazategui.com.ar', 'BULONES SALERNO SRL', '30663603821', '4288-0312', NULL, NULL, 'distribuidor', 1, '$2y$10$ok.chrKVcsbvXkY.jIXHPejfltj9E/oVIgIzLfI/8ud.sGKpAiBr6', NULL, '2018-10-10 17:45:50', '2018-10-10 17:45:50'),
(315, '30693291158', 'CAYFER SRL', 'CAYFER SRL', 'cayfer@house.com.ar', 'CAYFER SRL', '30693291158', '4283-3331', NULL, NULL, 'distribuidor', 1, '$2y$10$UeYyjHrWGzXEoHmXyJViIeWoz9THid5FdoCqSGj.WWS1/VKtpGvZW', NULL, '2018-10-10 17:46:49', '2018-10-10 17:46:49'),
(316, '20204843172', 'CISNEROS CARLOS ALBERTO', 'CISNEROS CARLOS ALBERTO', 'pinturerialucena@hotmail.com', 'CISNEROS CARLOS ALBERTO', '20204843172', '4245-2451', NULL, NULL, 'distribuidor', 1, '$2y$10$FnRArf5t8dvg89vsfhCl/ek/DblwZL0F9jg5sN11Y6AaZYynfdd0C', NULL, '2018-10-10 17:48:00', '2018-10-10 17:48:00'),
(317, '30710754019', 'CURCIO Y ASOCIADOS SA', 'CURCIO Y ASOCIADOS SA', 'oxidile@yahoo.com.ar', 'CURCIO Y ASOCIADOS SA', '30710754019', '4256-0035', NULL, NULL, 'distribuidor', 1, '$2y$10$m4/mkgeGd0ppc2o8oc1Uj.0l7MYD5cMrlO3OWUk5BWMnF7czo.QeO', NULL, '2018-10-10 17:49:20', '2018-10-10 17:49:20'),
(319, '20170318197', 'DE ROSA JUAN ANTONIO', 'DE ROSA JUAN ANTONIO', 'info@micompresor.com.ar', 'DE ROSA JUAN ANTONIO', '20170318197', '4244-2898', NULL, NULL, 'distribuidor', 1, '$2y$10$PrTRd3AmoO2sGx.xu5QHM.3lfcSeZDlOgdydZbyiJCG8dI8Fd/zEi', 'rHdahbrCtW8y4fGdDTkpn7nsuylVvizEaXVPSmdC6hamh5pMgpaAaSQ1ZPHM', '2018-10-10 17:52:17', '2018-10-10 17:52:17'),
(320, '20109608026', 'DI RUSSO ROBERTO JUAN', 'DI RUSSO ROBERTO JUAN', 'ferreteria.rivera@gmail.com', 'DI RUSSO ROBERTO JUAN', '20109608026', '4282-3902', NULL, NULL, 'distribuidor', 1, '$2y$10$L1h86GQj0pmd1WmdkO6JrOEiRhXgtBLBfvoIhkt018DjHemvkkdgC', NULL, '2018-10-10 17:53:19', '2018-10-10 17:53:19'),
(321, '30709853623', 'DISTR. COMERCIAL SOLFER SA', 'DISTR. COMERCIAL SOLFER SA', 'administracion@solfer.com.ar', 'DISTR. COMERCIAL SOLFER SA', '30709853623', '4208-6880', NULL, NULL, 'distribuidor', 1, '$2y$10$5aqvjdgPeYTTGuoHoLKFAe602feSS2dtF8nfhDWvqDvAQgYUn0ZhC', NULL, '2018-10-10 17:54:34', '2018-10-10 17:54:34'),
(322, '30710387644', 'ESAIRE SA', 'ESAIRE SA', 'info@esturcom.com.ar', 'ESAIRE SA', '30710387644', '4208-1515', NULL, NULL, 'distribuidor', 1, '$2y$10$HEviH1R4dfRHfwytTNhquORI7jZqFBzsRzCKxA.K.79.BvKE7uS4O', NULL, '2018-10-10 17:55:20', '2018-10-10 17:55:20'),
(323, '30707913734', 'FAENA SRL', 'FAENA SRL', 'norma@faenasrl.com.ar', 'FAENA SRL', '30707913734', '4207-0304', NULL, NULL, 'distribuidor', 1, '$2y$10$svCaqgfEkWb26lKw7R5tFOpcGkho38GRx7N1yhHDTv10qckoAOBIG', 'DeuflJmfturLdxBAZCbkFDtDBQg7CaMkxf9uMQC1OVZfqDoaQVzFE4Re0oTy', '2018-10-10 17:56:06', '2018-10-10 17:56:06'),
(324, '30665684101', 'FARANDA HNOS SH', 'FARANDA HNOS SH', 'stock@pintureriasfaranda.com.ar', 'FARANDA HNOS SH', '30665684101', '0221-4711855', NULL, NULL, 'distribuidor', 1, '$2y$10$qqBYILHqPAGrIoMCm6F3Du8awbInox9ofBJG2NipPLvi.BEEae/5C', NULL, '2018-10-10 17:57:06', '2018-10-10 17:57:06'),
(325, '20115537564', 'FEMAR', 'FEMAR', 'compras@ferreteriafemar.com.ar', 'FEMAR', '20115537564', '4262-7890', NULL, NULL, 'distribuidor', 1, '$2y$10$LIYIEZPr5cuGNZgNqHyu6Ocir9voM6CpluUQQpSBXk4qsMMsvQ8da', 'sytqQ5fUaBccn0mbbaWAa8uquLcRPma3zrsdhmLxfP4N1NM7oYwOWGt1viNN', '2018-10-10 17:58:02', '2018-10-10 17:58:02'),
(326, '30708257733', 'GUSTAVO GUZETTI Y CIA SRL', 'GUSTAVO GUZETTI Y CIA SRL', 'gguzzetti@pintureriascrear.com.ar', 'GUSTAVO GUZETTI Y CIA SRL', '30708257733', '4250-1018', NULL, NULL, 'distribuidor', 1, '$2y$10$wU5TnhQ2n3SyJY/qXkJJPOEzFNS8ofSLd4d8tvVHav.6V31dDYTTa', 'xOMCtyu3cBDRoEaLuNaNJg6O86md67jD6hg93GOLAhYGwKoBK2es1sBaJ9ac', '2018-10-10 18:00:35', '2018-10-10 18:00:35'),
(328, '30710864442', 'MINUTILLO HNOS SRL', 'MINUTILLO HNOS SRL', 'dedosferreteria@yahoo.com.ar', 'MINUTILLO HNOS SRL', '30710864442', '42662-3159', NULL, NULL, 'distribuidor', 1, '$2y$10$AQjBq4OQ6i77M/JPajAAfe0xihwYfJFRP83yNGaB60Gs0en0SdzJa', '5qdPe1F4oknbJrX1A6jqyNZ1bgBWhpo3go1VJNLzUMVu2CS0XrZYY4mfiqYJ', '2018-10-10 18:03:39', '2018-10-10 18:03:39'),
(329, '20302365807', 'MOLERO DIEGO', 'MOLERO DIEGO', 'productor75@hotmail.com', 'MOLERO DIEGO', '20302365807', '2117-0191', NULL, NULL, 'distribuidor', 1, '$2y$10$0yA4kDdhmnWjrBUcVnyMQeGnHEyv9aweOxyXxu5ZMMRQMKo1aLz8y', NULL, '2018-10-10 18:04:29', '2018-10-10 18:04:29'),
(330, '20050765866', 'MORAN JOSE ROBERTO', 'MORAN JOSE ROBERTO', 'joserobertomoran@yahoo.com.ar', 'MORAN JOSE ROBERTO', '20050765866', '4205-0996', NULL, NULL, 'distribuidor', 1, '$2y$10$rLfPU4MLFhaNlKnH3WhRpORuX2sZ5WEj3bx4A5dVUpzSJYU2tISeC', 'ZuFZxf5fiXPL7YyURJvHfwdpsYqTkaxRDmdJSvb6yZIAXNyPeVF4NYX4L3kc', '2018-10-10 18:05:23', '2018-10-10 18:05:23'),
(331, '30714077119', 'MUSAFERRI SA', 'MUSAFERRI SA', 'compras@musaferri.com.ar', 'MUSAFERRI SA', '307104077119', '4207-2035', NULL, NULL, 'distribuidor', 1, '$2y$10$nwO7tlcUm.LvQpWy22Vd2.VqBMGEQZjWfghcSjak.n2GY2slzSdfy', NULL, '2018-10-10 18:06:10', '2018-10-10 18:06:10'),
(332, '30702843576', 'OGUS SH DE DI TORO', 'OGUS SH DE DI TORO', 'compras@pintureriasogus.com.ar', 'OGUS SH DE DI TORO', '30702843576', '2078-1160', NULL, NULL, 'distribuidor', 1, '$2y$10$oGuekHSNDkAYU1PE8XkWPO9/AgC/7qBLpxRDAgkQ3ro2GYvsZx/j.', 'YtUZw6rYm2ytQvLkgbk88sSq19Kgg2MefJwtYdOAIazyQw5J5z2cvJ4kva02', '2018-10-10 18:07:17', '2018-10-10 18:07:17'),
(333, '30709422924', 'PINT. Y FERRET. EL SOL SA', 'PINT. Y FERRET. EL SOL SA', 'elsolpinturerias@speedy.com.ar', 'PINT. Y FERRET. EL SOL SA', '30709422924', '4228-6477', NULL, NULL, 'distribuidor', 1, '$2y$10$uDcaxIH40fO3QLp0gUUUI.YFzHQNSKFb9OEw/r5kQsJFv29e7FDc6', '20qx8edLgEjFnWLl3Xq8w0yuYdiF4h8KQXwKE3jiF0fsW3wB7XMMUzPYr1ia', '2018-10-10 18:08:22', '2018-10-10 18:08:22'),
(334, '30707491449', 'PINTURERIA SERRENTINO SRL', 'PINTURERIA SERRENTINO SRL', 'administracionserrentino2@speedy.com.ar', 'PINTURERIA SERRENTINO SRL', '30707491449', '4238-5866', NULL, NULL, 'distribuidor', 1, '$2y$10$chn61zyZFRpaMVXLmDckNOfC5JlTXa4C.UFPx9xYwt6BaVne0D3da', 'UL5zg0AbhZOvwsGzEg2nD6qfa9IajjgDsL2eg2GfrlAAoFyoYmcHssro4Q40', '2018-10-10 18:09:33', '2018-10-10 18:09:33'),
(335, '20107834533', 'PURI FRANCISCO', 'PURI FRANCISCO', 'pintureriaflamingo@yahoo.com.ar', 'PURI FRANCISCO', '20107834533', '4260-0585', NULL, NULL, 'distribuidor', 1, '$2y$10$UMvzHnQ1LfRSw2EEk0nP1O7TtmxB96KKT/VcB2eny6T3s3pBP2kQa', 'qhdcPW3P4iSIL1IbwTd0mF1zqU8tykS4rMfIlJME89n9rxB5ih9sxmhHpGbt', '2018-10-10 18:10:24', '2018-10-10 18:10:24'),
(336, '20269187868', 'QUESADA DAMIAN', 'QUESADA DAMIAN', 'fusionindustrial12@hotmail.com', 'QUESADA DAMIAN', '20269187868', '4271-2005', NULL, NULL, 'distribuidor', 1, '$2y$10$dkaepbNtZFGlENJQhLrwo.RJAeF.5aHaCnAnFtHNClgKwGniT/O5y', NULL, '2018-10-10 18:12:07', '2018-10-10 18:12:07'),
(337, '20110196661', 'RIVERO SILVERIO OSCAR', 'RIVERO SILVERIO OSCAR', 'daci@daci.com.ar', 'RIVERO SILVERIO OSCAR', '2011019666', '4281-4379', NULL, NULL, 'distribuidor', 1, '$2y$10$cOHzJbeww/CDG2zvBYJDFeoydpTCox1CNBBoj5YkDSF6TrcPZ41Fy', NULL, '2018-10-10 18:14:59', '2018-10-10 18:14:59'),
(338, '20219519231', 'ROMERO DIEGO PABLO', 'ROMERO DIEGO PABLO', 'info@colorshoprc.com', 'ROMERO DIEGO PABLO', '20219519231', '4236-8486', NULL, NULL, 'distribuidor', 1, '$2y$10$JixJR5JXfq7HHDaezx0Z0uAx0Bzsx6DjIgFbS0SsZAHU0pgmgvuly', NULL, '2018-10-10 18:16:52', '2018-10-10 18:16:52'),
(339, '30712371834', 'SOLGAS BERDEN SRL', 'SOLGAS BERDEN SRL', 'info@solgasberdensrl.com', 'SOLGAS BERDEN SRL', '30712371834', '1111112', NULL, NULL, 'distribuidor', 1, '$2y$10$owE.SXBAE.OHNvzt3ewNsOWlTUGsC4IDntLl0dLZWhX4YvjJzcqBa', NULL, '2018-10-10 18:18:36', '2018-10-10 18:18:36'),
(340, '30715583506', 'SOUTH COLOR SH', 'SOUTH COLOR SH', 'southcolors@hotmail.com', 'SOUTH COLOR SH', '30715583506', '2080-2042', NULL, NULL, 'distribuidor', 1, '$2y$10$hYY7nad5Bxu/OS6rx8YEw.7DLU0.pPw.ZzZgzsDfZn767JjRhmUJi', 'iPx7MrjENGM0ihE0oAxHm3zG46evRAh3ED4IGDQ5RYMHW3AKTEthQTQdn9L9', '2018-10-10 18:20:06', '2018-10-10 18:20:06'),
(341, '30709837512', 'ULTRACOLOR SRL', 'ULTRACOLOR SRL', 'colorshoplanuseste@colorshop.com.ar', 'ULTRACOLOR SRL', '30709837512', '4241-1909', NULL, NULL, 'distribuidor', 1, '$2y$10$DhBGG8IiudG4i.dylvbSQ.zk15ansqxdWJU8mfCuGTDIWhU/29woa', 'UXVm7hJDQprGkPOFkftDY4x141xRLQJujs8Xqv1TVtWrpbPvWx5MOU37yjQD', '2018-10-10 18:21:26', '2018-10-10 18:21:26');
INSERT INTO `users` (`id`, `username`, `name`, `apellido`, `email`, `social`, `cuit`, `telefono`, `direccion`, `postal`, `nivel`, `activo`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(343, '30682580727', 'AISEMBERG Y CIA SA', 'AISEMBERG Y CIA SA', 'pintureriamarcos@fibertel.com.ar', 'AISEMBERG Y CIA SA', '30682580727', '4854-1980', NULL, NULL, 'distribuidor', 1, '$2y$10$nWEbPlV3DYCpR2X.7phqQecfZSoWqB61XxWboaz6wWNAwd8RsMiYS', NULL, '2018-10-10 18:24:44', '2018-10-10 18:24:44'),
(344, '30643574760', 'ANGRIGIANI SA', 'ANGRIGIANI SA', 'grupoangrigiani@speedy.com.ar', 'ANGRIGIANI SA', '30643574760', '4699-0960', NULL, NULL, 'distribuidor', 1, '$2y$10$t7TmEDpWay7ONH3mFwUK9eZzd8uipcv4o3bff19N3PyrZLyrQf4YC', NULL, '2018-10-10 18:26:20', '2018-10-10 18:26:20'),
(345, '30707508716', 'MACROFER SA', 'MACROFER SA', 'eduardo@macrofer.com', 'MACROFER SA', '30707508716', '0223-478-9601', NULL, NULL, 'distribuidor', 1, '$2y$10$MepedBgcdMpnL4Ml5pNbTuHLJMSQg25BVAPiZrkQSJALFFoyDUbOe', 'latmwdO0IAJ77yJvtU4CniaKS5hWJQu2tXlv2FZe0B4hXQDVmeNjdchb2681', '2018-10-10 19:00:18', '2018-10-10 19:00:18'),
(346, '20084623238', 'BAIGOTTOTEGUI OSVALDO', 'BAIGORROTEGUI OSVALDO', 'baigorrotegui@disben.com.ar', 'BAIGORROTEGUI OSVALDO', '20084623238', '4714-5855', NULL, NULL, 'distribuidor', 1, '$2y$10$EZldVqExnRfif3ZSjVsjUeJ39sw09b1b7KB497tOmdhJEd3va7bqy', NULL, '2018-10-12 19:39:39', '2018-10-12 19:39:39'),
(347, '20140777065', 'MENDELLA RUBEN OMAR', 'MENDELLA RUBEN OMAR', 'mendellaenrique@hotmail.com.ar', 'MENDELLA RUBEN OMAR', '20140777065', '4713-8198', NULL, NULL, 'distribuidor', 1, '$2y$10$Jf/hUMTGo/tlOuOY7b2jNert7v2OkpX.FX6hug6iBB9IjUM0USno2', NULL, '2018-10-12 19:42:29', '2018-10-12 19:42:29'),
(348, '20202018093', 'NATIELLO NORBERTO RAUL', 'NATIELLO NORBERTO RAUL', 'norbertonatiello@gmail.com', 'NATIELLO NORBERTO RAUL', '20202018093', '4717-6465', NULL, NULL, 'distribuidor', 1, '$2y$10$WnhTPySCC8niOGk7H/0H4.A9h3vft/nmZvjPTt5Do7xCwmHayi9Tm', 'tT8DvSx6k6uBb2YkUJPTzxX6VAkEgKPdlX6VfR3P2XxNzIo4kwl5o34qwWJn', '2018-10-12 19:43:52', '2018-10-12 19:43:52'),
(349, '20169491292', 'OJEDA MARCELO DANIEL', 'OJEDA MARCELO DANIEL', 'marceloojeda1490@yahoo.com.ar', 'OJEDA MARCELO DANIEL', '20169491292', '4731-1771', NULL, NULL, 'distribuidor', 1, '$2y$10$f0svR.JTRGsXzUQuxbNty.EnLN0kLqS7Z9JAQ1GL8kY3aT1nllTO2', 'MdURQ6TZyJpnkCeaWHehKaAA6WVR26IadQQxGapJFojQ55JC4073KEYi7za0', '2018-10-12 19:47:03', '2018-10-12 19:47:03'),
(352, '20045595340', 'SOLDEO DE REUSMANN NESTOR', 'SOLDEO DE REUSMANN NESTOR', 'soldep.nr@hotmail.com.ar', 'SOLDEO DE REUSMANN NESTOR', '20045595340', '4752-2896', NULL, NULL, 'distribuidor', 1, '$2y$10$ve5DKvaHktqgqeeqxUno3uVUOAjgtvqOfiav7AmAPOoamk6o8myTi', NULL, '2018-10-12 19:58:52', '2018-10-12 19:58:52'),
(353, '20140107876', 'SUS JORGE JOSE', 'SUS JORGE JOSE', 'jorgesus@improsab.com', 'SUS JORGE JOSE', '20140107876', '11111114', NULL, NULL, 'distribuidor', 1, '$2y$10$l8RnBRFnXa9sGjr0pnPpUu1qPOmiFz2wSAeGCn/a24uZaGkP0SSx.', NULL, '2018-10-12 20:03:04', '2018-10-12 20:03:04'),
(354, '307151079631', 'HERRAMIX DE ARIAS MATIAS', 'HERRAMIX DE ARIAS MATIAS', 'w.ortu@herramix.com.ar', 'HERRAMIX DE ARIAS MATIAS', '30715107631', '1111115', NULL, NULL, 'distribuidor', 1, '$2y$10$Eyfc1JLLcJoAuAt77uTLNOtZAR.5ce0aSMmV6ttSjunabpiv/5vQK', NULL, '2018-10-12 20:04:13', '2018-10-12 20:04:13'),
(356, '30711935297', 'FZ FORCE SRL', 'FZ FORCE SRL', 'INFO@FORCESRL.COM.AR', 'FZ FORCE SRL', '30711935297', '6088-7832', NULL, NULL, 'distribuidor', 1, '$2y$10$Q7Du1SYMywSBTxPbNVO9Dup7ufk5jIX5lTE5hW0RI0PMbhI1N/ccC', 'tQ5OD61uX7s1asBfYGNNdjN1xukOv9HgkiipBQD8g5CIe26RFDbPZs9bZRqu', '2018-10-16 20:43:41', '2018-10-19 15:07:09'),
(357, '20210732021', 'CASTAGNO GUSTAVO HERNAN', 'CASTAGNO GUSTAVO HERNAN', 'cuenta2gustavo@hotmail.com', 'CASTAGNO GUSTAVO HERNAN', '20210732021', '156-2495406', NULL, NULL, 'distribuidor', 1, '$2y$10$fdCZhiVSO75yMOgkqgwUkepuojFDrxvPpxS.9ZA.gCOV8duNX8Iwu', 'WIninvGnKvXkagJiIqxnwNvWvKHmaeXsbk2dARsqDrYQT4jIDfM4fRMNyBBN', '2018-10-18 14:19:18', '2018-10-18 14:19:18'),
(358, '20077862715', 'CESETTI JORGE ALBERTO', 'CESETTI JORGE ALBERTO', 'ferreteriajac@hotmail.com', 'CESETTI JORGE ALBERTO', '20077862715', '46992659', NULL, NULL, 'distribuidor', 1, '$2y$10$..yne3bnuGWbcS5VGU/xNu1t8/fV1hpA36ZcCjSUf5lhh9dNjvVHu', NULL, '2018-10-18 14:23:30', '2018-10-18 14:23:30'),
(359, '30712414339', 'FELTRINO SA', 'FELTRINO SA', 'proveedores@pintureria.com', 'FELTRINO SA', '30712414339', '4723-2030', NULL, NULL, 'distribuidor', 1, '$2y$10$RSCMdSXRDTuciGEaK2ObE.8JZ9pvasmWmZEcchSE7TCwxanGoxABq', NULL, '2018-10-18 14:31:49', '2018-10-18 14:31:49'),
(360, '20073541442', 'ABEL DAVID', 'ANCONETANI', 'centrobulonero@gmail.com', 'ANCONETANI ABEL DAVID', '20073541442', '02302-435866', 'Calle 15 Nro. 1437', '6360', 'distribuidor', 1, '$2y$10$wZyWlDmz/eLdTSop4NjOTuXeF3FwkRVsExjDvDfCHBw54oY4/IXl6', 'Ts73CLgWT5bf5OhoPyDHANdoKX9dud2nFyH97zptLupptCRF5I5MUyJpudfi', '2018-10-19 21:38:16', '2018-10-19 21:38:16'),
(361, '30710798881', 'FRANCHI', 'FRANCHI', 'marielafranchi@live.com.ar', 'FRANCHI RUBEN Y FRANCHI ARIEL.', '30710798881', '4250-1616', NULL, NULL, 'distribuidor', 1, '$2y$10$.m/Q9SDzZcQvauQHwpYI4eo5oJuyN0.84.uCxTts/vO4Ql25bOGkq', 'Me4YVU1s2PtuxrDBBsod1CdEU1Jp0PTFRkJP4wEI3qieNJvyqncrNP64Nfyv', '2018-10-19 22:43:55', '2018-10-19 22:43:55'),
(362, '30707904433', 'Ferretería battello', 'Ferretería battello', 'info@ferreteriabattello.com.ar', 'Ferretería Battello', '30707904433', '0351 428-4728', NULL, NULL, 'distribuidor', 1, '$2y$10$sN3O/90dKNKzXQk5UqWnjOf31mY/7k8B31jAwCSLGzObWEZl3cLBC', 'lioxxge3su5SYQzZzWQtMIpZQgVerhTBAI9gI7815MqPou5KXCbsklXg6OML', '2018-10-21 16:09:49', '2018-10-22 16:34:32'),
(364, '20075875267', 'JS PINTURAS DE SHARP', 'JS PINTURAS DE SHARP', 'jsmontecarloc@gmail.com', 'JS PINTURAS DE SHARP', '20075875267', '03751-480173', NULL, NULL, 'distribuidor', 1, '$2y$10$rTDNeemwCV.XWvXywZWfxuiU2fAeNvRrDDV562SWhfF3SnkfgTO5O', 'GVSdFtezZfK6g5qlDpbYsHVirrts6fPmuXlTA8MKs3DNCfxH3Wq1wajC4B1w', '2018-10-22 19:15:42', '2019-05-28 19:32:01'),
(365, '30710854072', 'TIMARO SRL', 'TIMARO SRL', 'compras@pintureriamm.com.ar', 'TIMARO SRL', '30710854072', '4522-9667', NULL, NULL, 'distribuidor', 1, '$2y$10$4jrQ90cq90kTewvK1V6KTuodTiNm82LrWoUFcGW7ZRuqPvy3l6i5C', 'mngNkdJ8ysiglhlTtPa0qMKl4wkgFjO7oY06NEUvWXysSg8xxP2RiWQepXBS', '2018-10-23 15:14:42', '2018-10-23 15:14:42'),
(368, '30711842809', 'ALQUILO TODO', 'ALQUILO TODO', 'laplataalquilotodo@gmail.com.ar', 'ALQUILO TODO', '30711842809', '0221-4140064', NULL, NULL, 'distribuidor', 1, '$2y$10$DqFAjj5UOHcAzMARitOLO.mLmuTudOqzAZJpVNOlSzeyvLKGuWZGe', '4K7yp3Z7TsFiI7fYuIh6bjnNp7sQCxBtJ2ujWiczifcVTXNttkGFd142D24f', '2018-10-23 17:40:50', '2018-10-23 17:46:16'),
(369, '30708725842', 'BULONES COIRO', 'BULONES COIRO', 'horacio.aguirre@bulonescoiro.com', 'BULONES COIRO', '30708725842', '4292-6686', NULL, NULL, 'distribuidor', 1, '$2y$10$WEtvbGrhStOPs99BXgb8h.vTdo0bdw5hpqiS0i9bRh/wV/q6EOXx2', NULL, '2018-10-24 21:29:57', '2018-10-24 21:29:57'),
(370, '20116345278', 'PIZA MARIO', 'PIZA MARIO', 'pizamario@hotmail.com', 'MARIO PIZA', '20116345278', '1111111', NULL, NULL, 'distribuidor', 1, '$2y$10$smm4k75rMYNnTjRgFsA/IuVESyAAx4mVsd4D5lyFRSTIlq1Ye8/M.', NULL, '2018-10-25 20:42:53', '2018-10-25 20:42:53'),
(371, '27129290728', 'PINTUFER', 'PINTUFER', 'compras@pintuferpinturas.com.ar', 'PINTUFER', '27129290728', '0221 457-4274', NULL, NULL, 'distribuidor', 1, '$2y$10$bsDkTNy9Bz4jUhcJrmZA2.GPAgmg6FZIRxhwbEnhhSj0NwgzZCKiC', 'yKVZo4aJTLdvoM4if9ZsoNy6dmGM2no0SYFc2gSFc6HCCMFHVoE4CLXo2PSj', '2018-10-26 18:07:11', '2018-10-26 18:07:11'),
(372, '20076004286', 'FERRETERIA TORMI', 'FERRETERIA TORMI', 'info@ferreteriatormi.com.ar', 'FERRETERIA TORMI', '20076004286', '4672-9534', NULL, NULL, 'distribuidor', 1, '$2y$10$riNFULO8RabnutPsTsmrA.y.TngbunUVHw.WOiDuJGliA2XZxMhpi', 'nhgXfTtfwk9KOVvB7dS1aT31NIJY5w6IqG8mXnpfbL7L0r6Xcs039bOKwXOf', '2018-11-05 20:17:29', '2018-11-05 20:17:29'),
(373, '27145525727', 'BARON YOLANDA BEATRIZ', 'BARON YOLANDA BEATRIZ', 'alfapintur@yahoo.com.ar', 'BARON YOLANDA BEATRIZ', '27145525727', '03751-15526443', NULL, NULL, 'distribuidor', 1, '$2y$10$A2JFNeVGzds6x1DuuEBoieEbRQRGsBuHzzRPrNzHVmenA.QePqR4G', NULL, '2018-11-06 22:33:31', '2018-11-06 22:33:31'),
(374, '20149878832', 'ABRASIVOS LUJAN', 'ABRASIVOS LUJAN', 'abrasivoslujan@gmail.com', 'ABRASIVOS LUJAN', '20149878832', '15 3784-1394', NULL, NULL, 'distribuidor', 1, '$2y$10$tciFkAPvPciG3dJtibL9Je0hjrXM.U31WveKszBClfH9Yq9.9a9wi', 'XGnP8k3vUEQYKqnSpBEdJPffXiyRHkpuPTe3tQVfPdzHzzOiC4HTYyajWijB', '2018-11-08 20:40:20', '2018-11-08 20:40:20'),
(375, '20193900883', 'HIGINIO GUTTLIEN', 'HIGINIO GUTTLIEN', 'tecnoplastcrespo@gmail.com', 'HIGINIO GUTTLIEN', '20193900883', '1111111', NULL, NULL, 'distribuidor', 1, '$2y$10$NE29dAiQ2DlaVbgTmhvXGuhXp0uy0tENkpslbXSIOaLj0zARRCLSS', NULL, '2018-11-08 22:30:16', '2018-11-08 22:30:16'),
(376, '20163900883', 'Higinio', 'Guttlein', 'tecnoplastoficina@gmail.com', 'Guttlein Higinio Raul', '20163900883', '0343 4953111', 'San Martin 1188', '3116', 'distribuidor', 1, '$2y$10$O/cr28mOOMteraCpaeGhwu8QpdQL6.dpsNGd0UTGlayKADjHLRDWu', NULL, '2018-11-08 23:00:43', '2018-11-08 23:00:43'),
(377, '30711613915', 'ANCONA SRL', 'ANCONA SRL', 'pintureriaancona@gmail.com', 'ANCONA SRL', '30711613915', '111111111', NULL, NULL, 'distribuidor', 1, '$2y$10$x11nrZdYKKAv0S/J8dIqruUyTS4ln4Xm2.3kkdNxkLMRb31RCiTG.', 'MZ2WQnZQQJymhZyuCgNi9tl4CIfUDDslgv03dpCvgnsD6DiTbJtH0tFY20KG', '2018-11-09 14:51:54', '2018-11-09 14:51:54'),
(378, '30707714677', '30707714677', '30707714677', 'info@maer.com.ar', '30707714677', '30707714677', '30707714677', NULL, NULL, 'distribuidor', 1, '$2y$10$ajpNiZD8mPgpYt0NfpTcbuugB6yoP2ql3Mq0mjuOGDmKHVpKW2yfO', 'd4BVXGqD8bjmzaRHCRxIHuLdTcrVhOkdvsbksnF6tGB6L5Sx4UPfUJOzO39Q', '2018-11-09 16:26:55', '2018-11-09 16:26:55'),
(379, '27129086861', 'Ferretería Palermo', 'Ferretería Palermo', 'compras@ferreteriapalermo.com.ar', 'Ferretería Palermo', '27129086861', '42122733', NULL, NULL, 'distribuidor', 1, '$2y$10$CQfmL.R73FnAgE2nV/7U2eiSvBcKi3LyxSgsU8sWXiTch16D9Q.ea', 'upC1vKihSYg1tdDGjaxJ9qHqr9rstSGJHbVfy5IPb4Q7HKlmsOFCHKcJRTq9', '2018-11-12 17:56:49', '2018-11-12 17:56:49'),
(380, '20161620662', 'Moriconi Pinturas', 'Moriconi Pinturas', 'moriconipinturas@dat1.net.ar', 'Moriconi Pinturas', '20161620662', '(03464) 42-0440', NULL, NULL, 'distribuidor', 1, '$2y$10$LRjt7i2H2RfGNhCZ7hQf8.t26ob7MDq1pPidvYYEfRzyAOfYXZaW6', 'zEyjx9fALfE479NvtSOLKTXrQ74OpYyBFVvz8DSaHADisrOqv90hmpGlltIE', '2018-11-13 18:06:31', '2018-11-13 18:06:31'),
(381, '27185594225', 'PALADINI SILVINA ANA', 'PALADINI SILVINA ANA', 'moriconipinturas@dat1.net.a', 'PALADINI SILVINA ANA', '27185594225', '99999999', NULL, NULL, 'distribuidor', 1, '$2y$10$1y3EnKcMJPONRYj5pnid5.P88HMkR8UZcxnedcQjbrxl2svpSmuvC', '1eD52iTTEbVnyypxrQD4AJgfEeROQGnInT6gNvBLqGw6sbYEEoMpDbT76TID', '2018-11-15 15:59:34', '2018-11-15 15:59:34'),
(382, 'aremet', 'ruben', 'falcon', 'damian_jj@hotmail.com.ar', 'Ruben Alberto Falcon', '20111576921', '0221 4703200', '532 Y 26', '1900', 'distribuidor', 1, '$2y$10$ZKWzdbXRMKR8A8j0aUrsk.IlmAfX.r4TyiCQWiOHDc.QYOH8YL1Vy', NULL, '2018-11-23 21:18:22', '2018-11-23 21:18:22'),
(383, '30617734601', 'TESEI HNOS SA', 'TESEI HNOS SA', 'info@pintureriastesei.com.ar', 'TESEI HNOS SA', '30617734601', '111111111', NULL, NULL, 'distribuidor', 1, '$2y$10$Li/hxIBYYYO2roEYyazcg.lFk66zZkYnscnixFxfjsbn8N8oiZv5K', NULL, '2018-11-26 21:12:05', '2018-11-26 21:12:05'),
(384, '20126000015', 'DE LUQUE JORGE', 'DE LUQUE JORGE', 'titan@buloneratitan.com.ar', 'DE LUQUE JORGE', '20126000015', '11111111', NULL, NULL, 'distribuidor', 1, '$2y$10$ipvYWK6N2QWOT0ho5ldl6.AJiOtzlqMiyAWZHxX5qUzm44vRowvFi', NULL, '2018-11-28 16:09:23', '2018-11-28 16:09:23'),
(385, '30710942427', 'ANGEL FERNANDO GOMEZ S.R.L.', 'ANGEL FERNANDO GOMEZ S.R.L.', 'afgfabricio@gmail.com', 'ANGEL FERNANDO GOMEZ S.R.L.', '30710942427', '02923473103', NULL, NULL, 'distribuidor', 1, '$2y$10$8r8c3XbP6dxmrprVmgZDTegx6jgJB3etdBZ/lsusLzWjVFODgBaIa', 'KUrDvtojuVgmJOP10EKvsvLCHA2jhSWZ9YZRpoXJC6yip499Izd1lUHpwdlo', '2018-11-28 16:13:30', '2018-11-28 16:13:30'),
(386, '30712369120', 'PINTURERIA ARGENTINA SH', 'PINTURERIA ARHENTINA SH', 'pintureria_argentina@hotmail.com.ar', 'PINTURERIA ARGENTINA SH', '30712369120', '11111111', NULL, NULL, 'distribuidor', 1, '$2y$10$HExxWaCSJhUesZIurguzzOjqoNOXmwFofiKJBraHvePwgYnPVratq', 'h7N4oaokE7vWwqZpPt3wxKEjW9OQDB6K8uhoNqSZkjAeljslK22DfUJc9HrQ', '2018-11-30 15:21:29', '2018-11-30 15:21:29'),
(387, '20108680769', 'JORGE SANCHEZ', 'JORGE SANCHEZ', 'distri_jas@hotmail.com', 'jorge sanchez', '20108680769', '1111111', NULL, NULL, 'distribuidor', 1, '$2y$10$7I.ZtGL.YgKaNuTlzhHvge/kKsbZX/VlVTqz74woGrqfGIA65WybS', 'nNKWJ7Zr9zwOIA7af6UUZnMrEK7Arigp7c7hhZDtKbB8Fc7G3RmaAlMa9Z4Q', '2018-12-04 18:57:45', '2018-12-04 19:05:13'),
(388, 'PATRY', 'Patricia', 'FERNANDEZ', 'patry-offi@hotmail.com', 'EL KIMU S.A.', '33-70853141-9', '03584-421495', 'DEAN FUNES 480', '2670', 'distribuidor', 1, '$2y$10$C.vEHQzYW6NyN.HWFvrmcONOpw35EROBU3hG.Bgou.2QNvcRgaLH.', 'WQnUjRxK5bo0rfCPLoDUcu44g4tHgidvKZPSp7SgJvTUTl1He2FK17vJOlzC', '2018-12-10 17:14:55', '2018-12-10 17:14:55'),
(389, 'Oxigas', 'Marcelo', 'Dal Molin', 'oxigas1906@gmail.com', 'Alessio Dal Molin y Claudio srl', '30711829101', '46536423', 'Acosta 1906', '1702', 'distribuidor', 1, '$2y$10$B4PNIrkqKPGBjItBJ6oLV.hMmNYdChxxipWZlj7zfyrWa6diUTgRy', NULL, '2018-12-10 22:24:18', '2018-12-10 22:24:18'),
(390, '30671069699', 'COLORMANIA SA', 'COLORMANIA SA', 'colormania67@gmail.com.ar', 'COLORMANIA SA', '30671069699', '03446-43-1100', NULL, NULL, 'distribuidor', 1, '$2y$10$d71QH2FieyR4C19mSDiRz.9H04ChzffXjuBfoXIYCdi12bojESToa', NULL, '2018-12-12 15:28:14', '2018-12-12 15:28:14'),
(391, '30711829101', 'ALESIO DAL MOLIN Y CLAUDIO SRL', 'ALESIO DAL MOLIN Y CLAUDIO SRL', 'ALESIO@DALMOLIN.COM.AR', 'ALESIO DAL MOLIN Y CLAUDIO SRL', '30711829101', '111111112', NULL, NULL, 'distribuidor', 1, '$2y$10$GT9ivZX3YhBEQYMX2sFXR.GQ4RV/WOHWR823iiXGYUdooAWWAIaOS', 'z1ZtA4yJEzFqgdi7dkrYSPCmP0Qa9jrbSChbLNKdztzewk9w490HikALok9y', '2018-12-12 15:32:12', '2018-12-12 15:32:12'),
(392, 'ferrolux', 'Néstor', 'Frizzo', 'ferrolux@radiolux.com.ar', 'Radio Lux S.A.', '30-55159030-1', '03444-425494', 'Cnel.Gonzalez 20', '2840', 'distribuidor', 1, '$2y$10$2HxjXmHqXQBsI6amci56yeiM/ETLUO2sER3UyNLQ3IA8J.ZjJ5Tiq', NULL, '2018-12-12 16:00:55', '2018-12-12 16:00:55'),
(394, '30709347353', 'AFG INGENIERIA SRL', 'AFG INGENIERIA SRL', 'proveedores@afpservice.com', 'AFG INGENIERIA SRL', '30709347353', '0298-4430355', NULL, NULL, 'distribuidor', 1, '$2y$10$x5ck/J2G3IY6tIZhqgVmGeFgJvIOcYye99ag4aoLZ0VKKfl2sHDdi', NULL, '2018-12-17 22:14:46', '2018-12-17 22:14:46'),
(395, 'daci01', 'Damian', 'Rivero', 'buloneradaci@outlook.com', 'Ferreteria Industrial', '20110196661', '42814379', NULL, NULL, 'distribuidor', 1, '$2y$10$/8otYd0fgcgp4E8y8M2qYeydxcoQfxitXPNw7XQUQuI5GChO3MMai', NULL, '2018-12-18 15:34:06', '2018-12-18 15:34:06'),
(396, '30611065694', 'EL CORRALON SRL', 'EL CORRALON SRL', 'elcorralonsrl@copelnet.com.ar', 'EL CORRALON SRL', '30611065694', '0299-154069989', NULL, NULL, 'distribuidor', 1, '$2y$10$Rn81sXGLwiDv7bLpSgXPaO1q7dbTeu7J62nCRnMcVth9Mid6btxIe', '0FGLG1Jr8haeisAtNpPQKEZ2EpMQ2DnPOULArQfuWLicQYwGSBs1Pf2fB0a5', '2018-12-18 20:42:24', '2018-12-18 20:42:24'),
(397, '20147595620', 'Gustavo', 'Mancebo', 'hmherramientas@hotmail.com', 'Mancebo, Gustavo Horacio', '20147595620', '01161304349', 'Malaver, 2855', '1636', 'distribuidor', 1, '$2y$10$uqCfyrBuonAxWA7CRShT1up9Q8LOX5gMEyHarfgH6qUPqQTyRMDtC', 'X222DSpdi4TsOnTzZ0NB5pcfgMCko3dM9sFnqcTxkYXSMutWZiaUTWojb3qw', '2018-12-20 05:49:38', '2019-02-28 19:36:38'),
(398, '30540447175', 'PINTURERIAS RAMOS', 'PINTURERIAS RAMOS', 'pintureriaramos@fibertel.com.ar', 'PINTURERIAS RAMOS', '30540447175', '4253-4700', 'Rodolfo López 360, Quilmes, Buenos Aires', NULL, 'distribuidor', 1, '$2y$10$YAaVf8lNyFSv03kzw6PTr.AnqqcCgkl4JjzI9rYMAA2FG4EzRXvNm', NULL, '2018-12-21 18:51:11', '2018-12-21 18:51:11'),
(399, '20171791198', 'CARNE EDUARDO', 'CARNE EDUARDO', 'eduardocarne@hotmail.com', 'CARNE EDUARDO', '20171791198', '0223-4750501', NULL, NULL, 'distribuidor', 1, '$2y$10$FmNViWXqWxj34/crQbzuuu4w0EALraeKKQWX6ztpzKztw9TZxN/9i', 'fWUOvvpS8o5RBlxVtPvvqiQ7hjEpNaMv9TKpokKKeL5zXF3s8qfFSZ4o6bJS', '2019-01-07 21:50:49', '2019-01-07 21:50:49'),
(400, 'liljabraun\r\nb4', 'liljabraun\r\nb4', 'mxurtuz_65\r\nb4', 'koptevandrey88@gmail.com', 'arbikmur\r\nb4', 'salealge\r\nb4', '84551273185', 'olga45524\r\nb4', NULL, 'distribuidor', 1, '$2y$10$pLWiXknaTwNnjX3EgRe7kORKOM4xKd0y.nAu1WuW2KAeicV5GtuGK', NULL, '2019-01-19 10:56:24', '2019-01-19 10:56:24'),
(402, 'maks.61-19925l', 'maks.61-19925l', 'laska_ya5l', 'shamrykenkokatya@gmail.com', 'pavlov-65ua5l', 'tomsandero5l', '81171342469', 'pasha22885l', NULL, 'distribuidor', 1, '$2y$10$wOxXmRFYaRcr4T8fPp/mJeE8oQ6zdAUkRQLJawdUMK2ytG/RiGw7e', NULL, '2019-01-24 03:40:03', '2019-01-24 03:40:03'),
(403, 'tanya-mozdok7b', 'tanya-mozdok7b', 'zaicev55557b', 'grybovsergey88@gmail.com', 'wowan-ptz7b', 'tole_bi_937b', '88514114168', 'sdjagfds7b', NULL, 'distribuidor', 1, '$2y$10$ML/PgOWMyc6ditk/bSjwSuQVb2ISlEdSU4IaFEAaSBDwb4Ck1V1t.', NULL, '2019-01-29 22:38:26', '2019-01-29 22:38:26'),
(404, 'trofimova_939', 'trofimova_939', 'valya2001_09', 'putyanhinvasya@gmail.com', 'chaika-699', 'fagigi789', '82495892117', 'ublhfpby9', NULL, 'distribuidor', 1, '$2y$10$0in87ltAgsn.Fvqru4JRSuuIxieWeO2SST5zrlYbSB0HsqeLuNDFy', NULL, '2019-01-30 14:56:13', '2019-01-30 14:56:13'),
(405, 'Chato', 'Juan Fernando', 'Bellone', 'juanfernandobellone@gmail.com', 'Chapa y Pintura', '20-29335563-1', '3875380312', 'El Periodista', '4400', 'distribuidor', 1, '$2y$10$QhQmR9Os/xQQjwOjfwviN.bn/DeT34ATjI2gdKv.gkh4xd3jQvrZq', 'G6XBuB19Z6LFwUsWNzfAy1RgCU5rjiNkIYzhhiG9qeiBCRKFyf4gTfdGfwS8', '2019-02-03 19:43:04', '2019-02-03 19:43:04'),
(406, '27283999047', 'Pintureria El Club del Color', 'Pintureria El Club del Color', 'gerenciaelclub@elbolson.com', 'Pintureria El Club del Color', '27283999047', '0294 445-5575', 'Av. San Martín 3142, El Bolsón, Río Negro', '8430', 'distribuidor', 1, '$2y$10$282hXj8lsf1HKVrCHuA0ve1qiH/0ghUQmA6r09PvlxERTcFcacyQK', 'lnaVJgcGmJUCRwgZEf6jZ9VLDD2ruNonUhzr3XQSi8BsAuNV0U8weKpZUNHd', '2019-02-04 18:23:41', '2019-02-04 18:23:41'),
(407, '30715829629', 'LATIN MATERIALS', 'LATIN MATERIALS', 'alfredo@latinmaterials.com', 'LATIN MATERIALS', '30715829629', '11 3174 0860', NULL, NULL, 'distribuidor', 1, '$2y$10$7GCj0BPgLrF2oIXCua.qzuLIrZ4YNW6XHXF3hd0bxBRxj.EPpd4Wq', 'Qkl0vM58GXDdpbiT6kc5kWJbzb8h5471sfFCPbqZmAw7gscNReubj9QrgCiJ', '2019-02-14 23:05:34', '2019-02-14 23:05:34'),
(408, '30556095597', 'PAREX KLAUKOL', 'PAREX KLAUKOL', 'sergio.diaz@parexklaukol.com', 'PAREX KLAUKOL', '30556095597', '1160588599', NULL, NULL, 'distribuidor', 1, '$2y$10$2MJiN4UY2QeYQzZYqmYJFuc5sdSfRWMJ/dz5yHz2t8GMBEluRFsyG', NULL, '2019-02-19 21:43:03', '2019-02-19 21:43:03'),
(409, '23294084029', 'LANZA RODOLFO ADRIAN', 'LANZA RODOLFO ADRIAN', 'lanza@lanza.com.ar', 'LANZA RODOLFO', '23294084029', '1111111', NULL, NULL, 'distribuidor', 1, '$2y$10$B53.VBrDVx7SEARTvENB.uIfj9Lg67BBir511IWK/kYTlAQcm7Agu', 'StyY3X9RarJibB0ojpTar9bLLLqD4E1QuzCwXn1bvVlPsW6YZFossXejEiMg', '2019-02-28 15:23:28', '2019-02-28 15:23:28'),
(410, 'metropint', 'Pinturerias', 'Metropolitana', 'info@pintureriasmetropolitana.com', 'Construk SRL', '30710802382', '45663425', NULL, NULL, 'distribuidor', 1, '$2y$10$56N5wlLlaI67bh2uevYiAev.FaxYTA.fX2uQcu5njqT3BZxZGDYiK', NULL, '2019-02-28 15:25:37', '2019-02-28 15:25:37'),
(411, '27167710102', 'INDACO CLAUDIA', 'INDACO CLAUDIA', 'stmarygui@hotmail.com', 'INDACO CLAUDIA', '27167710102', '0341-156164877', NULL, NULL, 'distribuidor', 1, '$2y$10$4BicjphIK5rk/pmDlKXtpuV1kR8OyzmqVWQ7NDjudiMNL4PgK6seW', 'sdVlVWVS0HSnUV9d1ICN3bQrXuzXMKvNgKNGQ594nbvyaulbIjrh0vNBnzQv', '2019-02-28 19:30:38', '2019-02-28 19:39:50'),
(414, '30532869893', 'CASA BUREU SA', 'CASA BUREU SA', 'gbureu@gmail.com', 'CASA BUREU SA', '30532869893', '222222221', NULL, NULL, 'distribuidor', 1, '$2y$10$Dt0voTXQyan8jNj8C5W1s.v0G/I0BTIYuxSbS1fERqpIT/SB5TA4q', NULL, '2019-02-28 21:13:51', '2019-02-28 21:13:51'),
(415, '33573508829', 'BULONERA PATAGONICA', 'BULONERA PATAGONICA', 'mborean@bulonerapatagonica.com.ar', 'BULONERA PATAGONICA', '33573508829', '02984425370', NULL, NULL, 'distribuidor', 1, '$2y$10$hm5dXXhRhMUrShsQ8bxboO4g/TVufgKH/Hg/.BMZ/ug3bV3s4kSsS', NULL, '2019-03-01 21:10:57', '2019-03-01 21:10:57'),
(416, 'FEMAR', 'MARCELO', 'SCROFANI', 'ventas@ferreteriafemar.com.ar', 'Femar de marcelo Scrofani', '2011553756', '4262-4088', 'av san martin 2045', '1824', 'distribuidor', 1, '$2y$10$rHwQug.X9sv2huSzPRiTFOoJCYSuxJ9G6IWUvPGk.JKmTLB.rNvLy', 'PpcG9vj0OO9wEznx8EHed9JlNB7mfkQRvVBycDjpttM01ypVPh89RXfPGwL8', '2019-03-02 17:11:33', '2019-03-02 17:11:33'),
(417, '20277234727', 'BRUNO MALACRIDA', 'PINTURERIA SAN MARTIN', 'pintureriasm@gmail.com', 'BRUNO MALACRIDA', '20277234727', '03329-426419', 'SAN MARTIN 7898 - SAN PEDRO BS. AS.', '2930', 'distribuidor', 1, '$2y$10$p35zHowUvkFGGbIJKmsxIeiBsIori7Ms9mQ2MG.j/tFm0DNHFM.JG', '5DpT7evMqUT6xAIx2CTOuIEiDWwVWMsHqPRYLlCb468l3LHka9mMEmo6cElw', '2019-03-06 14:37:32', '2019-03-06 16:11:10'),
(418, 'tri763', 'el triangulo', 'aiy', 'maqeltriangulo@yahoo.com.ar', 'maquinarias el triangulo', '20933709125', '4657-6930', 'av. mosconi 763', '1752', 'distribuidor', 1, '$2y$10$suPsG6LibMC0ICjmPkI4ROIymnJKayiVIEub7xiP4TOJlVIylYez.', NULL, '2019-03-06 18:25:49', '2019-03-06 18:25:49'),
(419, '20043015282', 'PEREZ JOSE ANGEL', 'PEREZ JOSE ANGEL', 'ventas@maer.com.ar', 'PEREZ JOSE ANGEL', '20043015282', '46121313', 'MARTI JOSE 1147', NULL, 'distribuidor', 1, '$2y$10$nNMSmO/nHrSgUodZJr.hLOY61cWZgU6mxuXVFXsPmXK3MGMtdj2Kq', 'UHKJaWK5NpIDe0kgNYiHJghAtTtZq7wSrx0up3fTWl6CleW7zMhz4Fy9wNgw', '2019-03-07 17:38:50', '2019-03-07 17:38:50'),
(420, 'chef55', 'Diego', 'Arias', 'diego_arias_5557@hotmail.com', 'Arias', '2023470571', '1149713372', 'RAFAELA, 468', '1407', 'distribuidor', 1, '$2y$10$9lE8DyEQ6R8OV6HP2mNfA.KKAFaAvh.ym21Nu7PFCKNr7tA2mb1M2', NULL, '2019-03-08 08:40:21', '2019-03-08 08:40:21'),
(421, 'colormix', 'Ivana', 'Lovera', 'administracion@colormixpinturerias.com', 'Colormix S.A.', '30709319414', '3571410338', 'Alsina 331', '5850', 'distribuidor', 1, '$2y$10$YpZTVL7sK3V1U33pEyXECO03mD2lusu1Jr4Gz2VSoug52g6Xi0XmO', NULL, '2019-03-12 00:10:08', '2019-03-12 00:10:08'),
(422, 'Jamesreoto', 'Jamesreoto', 'Jamesreoto', 'mouserf6msen@mail.ru', 'Jamesreoto', 'Jamesreoto', '83455282467', 'Jamesreoto', NULL, 'distribuidor', 1, '$2y$10$90dGqCU7hfSMyr9LfkHhyO0WTnoxqQzfvlHQ.uVduZwa58q/LrEPG', NULL, '2019-03-12 07:47:51', '2019-03-12 07:47:51'),
(423, '30711484961', 'LEFARO SRL', 'LEFARO SRL', 'info@lefaro.com.ar', 'LEFARO SRL', '30711484961', '4283-4646', 'Av Frias 1401', NULL, 'distribuidor', 1, '$2y$10$fVCjjt6ZQMv97Cq0ArV7GuwBKfC35uHe0AZ8PftavCSxjnlLsgqdO', NULL, '2019-03-15 20:51:48', '2019-03-15 20:51:48'),
(424, '30712739106', 'LIMA CAPITAO SRL', 'LIMA CAPITAO SRL', 'limacapitao@hotmail.com', 'LIMA CAPITAL SRL', '30712739106', '114917-6042', NULL, NULL, 'distribuidor', 1, '$2y$10$b214.d0AUy/M2duZU4ORM.rQ4POPORb9tjnQlMCrpCijrAArcR.7.', '4dYb3iciFYgqt3TBRuVQeTGkdSGmLQAPjTQdNWmkaNKGI6n3QGne96xnkixw', '2019-03-18 16:27:11', '2019-03-18 16:27:11'),
(425, '30709200433', 'BOMBAS Y MOTORES SRL', 'BOMBAS Y MOTORES SRL', 'bombas@motores.arnetbiz.com.ar', 'BOMBAS Y MOTORES SRL', '30709200433', '0387 4211507', NULL, NULL, 'distribuidor', 1, '$2y$10$K4aN8Wk.1QhONc8uL0qM4OSDl4QVbRYvRusNpxxTBPAAB6fuuhZg2', 'XrvvW61twN4x4KqfxSkVZFDcCbsNrg2h2cvkuJV5moW2FbTjdg6trVtxEMN9', '2019-03-26 17:47:34', '2019-03-26 17:47:34'),
(430, '30714333182', 'KROMACOLOR PINTURERIAS SRL', 'KROMACOLOR PINTURERIAS SRL', 'banlour@hotmail.com', 'KROMACOLOR PINTURERIAS SRL', '30714333182', '1111-1111', '12 DE OCTUBRE COLECTORA PANAMERICANA-PILAR', '1629', 'distribuidor', 1, '$2y$10$CQQJGmKV2ovIV4zgV9euG.hInQMGDoQSQ8jGJYy1Oc0MvTyLT2KF6', 'HnhovWEJzxIaYbEiYTRqyWTy2B2Wa1ycLFHwfXfYlK5sOFakMODQSjuzGRxA', '2019-04-04 16:00:35', '2019-04-04 16:02:24'),
(431, 'Infraredzot', 'Infraredzot', 'Infraredmoc', 'support@vdsina.ru', 'Infraredjia', 'Infraredpgq', '88644992841', 'Infraredqxd', NULL, 'distribuidor', 1, '$2y$10$Uh7G.E6x9AMHhXs59558ZuPNWFyPDL3jVwH7aqBqa/MOhFEl3nV0u', NULL, '2019-04-09 03:35:13', '2019-04-09 03:35:13'),
(432, '30714816493', 'NICOLAS', 'Pascual', 'qualityautomotor@hotmail.com', 'kurabie desarrollos SA', '30714816493', '42446110', 'AV ALSINA 1811', '1832', 'distribuidor', 1, '$2y$10$2U0lMdiPurHmMQojSf4JF.jB9gwLAvM2fpVRDg8liP9DRZhOoo2PW', 'sQq5aI3Ynxj9lmJLAbAe25QAO0Mw5dXFEuIYJ1LueK8hD9aTM9S2GtfqSqzG', '2019-04-11 21:33:17', '2019-07-12 18:48:51'),
(433, 'XenBon', 'XenBon', 'XenBon', '4e7dfdg@yandex.com', 'XenBon', 'XenBon', '88531923961', 'XenBon', NULL, 'distribuidor', 1, '$2y$10$MXyxV3opCqbFNh3Qi6stluuodKYIY7bHn6R1CyyTDDrv.Eq9LFMb2', NULL, '2019-04-26 16:17:48', '2019-04-26 16:17:48'),
(434, 'Blenderzae', 'Blenderzae', 'Blenderrpg', 'tnininugpe@yahoo.com', 'Blenderpmr', 'Blenderdva', '82818521394', 'Blenderngt', NULL, 'distribuidor', 1, '$2y$10$CjTNG8hDIr2.Zj1qP339g.m.89QbKQef9gUjUCkBPs/4su1G8WOSG', NULL, '2019-05-03 07:22:13', '2019-05-03 07:22:13'),
(435, 'Augustevf', 'Augustevf', 'Augustrta', 'director@vdsina.ru', 'Augustrfo', 'Augustevu', '88917432192', 'Augustiay', NULL, 'distribuidor', 1, '$2y$10$dUsd4ebpDew4je9NNql4ruZpalc9fPCBefCQnbSkRYBwQ8EePx3SO', NULL, '2019-05-04 10:22:23', '2019-05-04 10:22:23'),
(436, 'Marshallkhy', 'Marshallkhy', 'Marshallciv', 'bill@vdsina.ru', 'Marshallgtw', 'Marshallnsg', '86895416318', 'Marshallazn', NULL, 'distribuidor', 1, '$2y$10$iU8g5pa7gGjEF3ItYHxdeueHd57jI4XR0ZlGnAd9Yziu8lekgweKO', NULL, '2019-05-06 16:41:16', '2019-05-06 16:41:16'),
(438, '20081122092', 'ESPARRICA RICARDO RAUL', 'ESPARRICA RICARDO RAUL', 'esparricapinturerias@gmail.com.AR', 'ESPARRICA', '20081122092', '111111', NULL, NULL, 'distribuidor', 1, '$2y$10$vFdIDBZrFjC7sXi1iLu6HObA9vQ5NJ1ScqQIkQXYLG./.0DEzNZme', 'zcFQJN4DrbcTYMmIJkOjq49aKltS6mxxc6kjtDUWgyzIkcVoh0BW34Suoj88', '2019-05-07 16:49:08', '2019-05-07 16:51:25'),
(439, 'Independentgtk', 'Independentgtk', 'Independentjvb', 'director@mchost.ru', 'Independentqev', 'Independentwxm', '84711289595', 'Independentgnu', NULL, 'distribuidor', 1, '$2y$10$sRLGPl7gMgiByqs0fz7WzOjyUpiiPisOrYKCg6plKpdB1IH.Nbd9G', NULL, '2019-05-10 16:45:22', '2019-05-10 16:45:22'),
(440, '20235723906', 'Gaston', 'Burnet', 'info@grupofase.com.ar', 'Gaston Kurt Burnet Michaut', '20235723906', '4627-4361', 'carlos casares 979, Castelar', '1712', 'distribuidor', 1, '$2y$10$PKvZN.4RlxMXWICCGXjd1.E3.O1Ij0UWqmBvm7qaH7yKya6.rSxji', NULL, '2019-05-10 16:56:15', '2019-05-10 16:56:15'),
(441, '33504047089', 'LA AGRICOLA REG. COOP LTDA', 'LA AGRICOLA REG. COOP LTDA', 'darioe@laagricolaregional.com.ar', 'LA AGRICOLA REG. COOP LTDA', '33504047089', '0343-4958000', NULL, NULL, 'distribuidor', 1, '$2y$10$EFdvT9.phlgRDU1WlwEmbOnjv06IcAET1KWWYzzr8QNL9zyzi5djK', 'j279HwP1hKfjWhBFRg15t2kQp45Oi3s5Nn2jR5ctRWDFZnWwkf2jFd9Kxduj', '2019-05-13 16:58:23', '2019-05-13 17:00:04'),
(442, '20104715274', 'OXIALE', 'OXIALE', 'chivilcoy@oxiale.com.ar', 'OXIALE', '20104715274', '02346-435641', NULL, NULL, 'distribuidor', 1, '$2y$10$QriKa1ZxRpZH1Vgg0AaEiOGxX.qstwNIZVrCKqNbXlm9Jfvrqzoo6', NULL, '2019-05-13 17:09:29', '2019-05-13 17:09:29'),
(443, 'Clamcasegqk', 'Clamcasegqk', 'Clamcaserrh', 'gaplymale@gmail.com', 'Clamcasehjz', 'Clamcaseawj', '81267184392', 'Clamcasembn', NULL, 'distribuidor', 1, '$2y$10$ZjDWZU7kZ2sibjlWHRCRr.ZXE78W31PKP7x9nnWUmGJ6NlXR4rg1m', NULL, '2019-05-17 02:53:53', '2019-05-17 02:53:53'),
(444, 'Professionaltrh', 'Professionaltrh', 'Professionalkbt', 'craydx@live.com', 'Professionalpyd', 'Professionalczh', '84984738923', 'Professionalhel', NULL, 'distribuidor', 1, '$2y$10$54HxoDASUUbCdoZ9GslR4udLATKWDlTdSlsF8ttfh.jrZp074X63q', NULL, '2019-05-17 06:23:22', '2019-05-17 06:23:22'),
(445, 'Dormanigo', 'Dormanigo', 'Dormanlsq', 'pporth@milwjobs.com', 'Dormanysz', 'Dormanick', '81153635119', 'Dormankqf', NULL, 'distribuidor', 1, '$2y$10$PMEuWvRElA27HznkWQ0FQ.MqnDYcPSA54jPr8sgErL5/tPS014naa', NULL, '2019-05-18 03:36:06', '2019-05-18 03:36:06'),
(446, 'Infraredplm', 'Infraredplm', 'Infraredytu', 'omimproxaj@yahoo.com', 'Infraredvom', 'Infraredoph', '88525675786', 'Infrareddpl', NULL, 'distribuidor', 1, '$2y$10$p1A9M5hrdJ7Z5yOGoxyfQeaJMbQk3mLQ/9rd8f72FVCXgHansZtyS', NULL, '2019-05-18 23:05:36', '2019-05-18 23:05:36'),
(447, 'Fortressiku', 'Fortressiku', 'Fortressnkw', 'rruse@ttlassoc.com', 'Fortressvnb', 'Fortressyek', '84231482673', 'Fortresswle', NULL, 'distribuidor', 1, '$2y$10$hwr.cLl3t6HsQF8Tp5xd9eYXd0sClL.9LFxwR2LXtArD2xoE/aAh.', NULL, '2019-05-19 16:10:54', '2019-05-19 16:10:54'),
(448, 'Cutterozl', 'Cutterozl', 'Cutternnm', 'shinkle@fltg.net', 'Cuttercgc', 'Cuttersdx', '86679344382', 'Cutterbhb', NULL, 'distribuidor', 1, '$2y$10$yeS0kpx4JXZxd7BkQCypuuDB6PsF4sJTK.QgGmHbFrNYbUYKugcFu', NULL, '2019-05-20 12:02:12', '2019-05-20 12:02:12'),
(449, 'Sightdpw', 'Sightdpw', 'Sightxqh', 'gueravaquera89@yahoo.com', 'Sightrqv', 'Sightwja', '82834647515', 'Sightyhl', NULL, 'distribuidor', 1, '$2y$10$HUD2YX3TmYIni9gEegdZZe9hReRbq14QwCvxFEhb5Q9xL8yTuz/sq', NULL, '2019-05-21 02:03:42', '2019-05-21 02:03:42'),
(450, 'Cutterodx', 'Cutterodx', 'Cutterosk', 'eb2327@live.com', 'Cutterlgm', 'Cuttereop', '84139417347', 'Cuttervfp', NULL, 'distribuidor', 1, '$2y$10$1tQ4p.seZVdvfWnM4ftu7uuscYWPAlP2Wosl7lEZAPuIv2rHIDdyy', NULL, '2019-05-21 17:30:32', '2019-05-21 17:30:32'),
(451, 'Fortresswgj', 'Fortresswgj', 'Fortressdoo', 'rdraughn08@gmail.com', 'Fortresskyw', 'Fortresskmy', '81349757843', 'Fortressqtd', NULL, 'distribuidor', 1, '$2y$10$bXeBuIXVtiTh2xSnh7gV0u/iZEozdZeqwcQgTF2q8A1AE3dS5yOoi', NULL, '2019-05-21 20:04:51', '2019-05-21 20:04:51'),
(452, 'Flashpaqlvo', 'Flashpaqlvo', 'Flashpaqdex', 's_gregory65@yahoo.com', 'Flashpaqhde', 'Flashpaqgve', '87917474735', 'Flashpaqfiw', NULL, 'distribuidor', 1, '$2y$10$yB6ANyL/FhVWL/RAC.FDAuWraesP3eO4Bm94wQO6YHi0NEoH6eESS', NULL, '2019-05-21 20:27:26', '2019-05-21 20:27:26'),
(453, 'Sunburstmyc', 'Sunburstmyc', 'Sunburstwle', 'hdbill1969@yahoo.com', 'Sunburstgic', 'Sunburstpkq', '88258897235', 'Sunburstpnf', NULL, 'distribuidor', 1, '$2y$10$nvhSzt.SsZQ4TFx.84Fq/O0by11eOBO283lobO0emWULph3mr5bOy', NULL, '2019-05-22 11:43:40', '2019-05-22 11:43:40'),
(454, 'Amazonnndom', 'Amazonnndom', 'Amazonnnfvh', 'edgar@txqualitypainting.net', 'Amazonnnhna', 'Amazonnnkts', '88186285972', 'Amazonnnbgu', NULL, 'distribuidor', 1, '$2y$10$ouHNGM9d9byaRWHwXT.l2ejbt/2Ex.xA/n1GvHakA06fSIx7rZ1kK', NULL, '2019-05-24 04:13:29', '2019-05-24 04:13:29'),
(457, '20103959013', '20103959013', 'Mauricio', 'decandia.mauricio@gmail.com', '20103959013', '20103959013', '42333341', NULL, NULL, 'distribuidor', 1, '$2y$10$GIbwQLBGRWTrAb.M9GCs5uTViKbVvRHh4ElbpJ7cJMg74WHF8v.Gu', 'rlJ7SAjWJ4wtx63hf4r6UlF0ek3dtoJn34nYE2MoyAfuiNleYmas7ffyxxs1', '2019-05-24 18:05:58', '2019-05-24 18:05:58'),
(458, 'Holographicyeo', 'Holographicyeo', 'Holographicywg', 'todd@precisionfiltration.com', 'Holographiccpd', 'Holographiczmz', '86115642959', 'Holographicyir', NULL, 'distribuidor', 1, '$2y$10$Z4qfHFQFEuGsj8UPkNAsGeAhaVVQ.Sx8VLkVqknxpes10yld3Apta', NULL, '2019-05-24 20:30:46', '2019-05-24 20:30:46'),
(459, 'Ascentrjf', 'Ascentrjf', 'Ascentbin', 'krista.buffaloe@gmail.com', 'Ascentxrw', 'Ascentrcs', '81656921478', 'Ascentvss', NULL, 'distribuidor', 1, '$2y$10$YABdyx7KovQ2vY/V2TAuWu3bFFkFT7AiEtSVLAHmk.gShmYgh61H6', NULL, '2019-05-28 00:33:10', '2019-05-28 00:33:10'),
(460, 'Garminztrx', 'Garminztrx', 'Garminzvcr', 'gradyshock@gmail.com', 'Garminzshf', 'Garminzwmo', '85147688316', 'Garminzxww', NULL, 'distribuidor', 1, '$2y$10$ciDYgMD..Navaq10dkGDJ.pSd58B3yxQcS2QWT7y9uV7kZkhJivNm', NULL, '2019-05-28 17:22:17', '2019-05-28 17:22:17'),
(461, 'Boschvlt', 'Boschvlt', 'Boschqic', 'brettgriffin21@msn.com', 'Boschcvr', 'Boschmzu', '89249297148', 'Boschswr', NULL, 'distribuidor', 1, '$2y$10$ISkH7kU0j/geoMfp6amsL.ezJOh3o0QIP.xoIpqPQfA.MV1yDvH3O', NULL, '2019-05-30 03:05:10', '2019-05-30 03:05:10'),
(462, 'Edelbrockyvh', 'Edelbrockyvh', 'Edelbrockeos', 'michelleengbr@gmail.com', 'Edelbrockjyz', 'Edelbrockzbs', '87169345685', 'Edelbrockbgh', NULL, 'distribuidor', 1, '$2y$10$c8fUwjRvnmTEMY0EPKuF7OzC4.YJRfqzAYhqAHaZR1vnsD8CcFC0K', NULL, '2019-05-30 22:45:05', '2019-05-30 22:45:05'),
(463, 'Stanmoreora', 'Stanmoreora', 'Stanmorekma', 'xelajair@aol.com', 'Stanmoremxk', 'Stanmorehjs', '84999779437', 'Stanmorewxr', NULL, 'distribuidor', 1, '$2y$10$GqAN6v.H1SXtatbfIuyTQeSgWQI3OaZKvw6Rp2IAmuYKrkzOlNzSa', NULL, '2019-05-31 02:29:37', '2019-05-31 02:29:37'),
(464, 'Generationgvz', 'Generationgvz', 'Generationxdd', 'dunlapdeb@yahoo.com', 'Generationhch', 'Generationdyz', '89637245654', 'Generationwpw', NULL, 'distribuidor', 1, '$2y$10$h2hia4pwCXE2MsTl37htXulFa60feIKQ2.uRLjmNjuswQfawOG.3C', NULL, '2019-05-31 04:17:44', '2019-05-31 04:17:44'),
(465, 'Businessaby', 'Businessaby', 'Businesstne', 'shawnherl@gmail.com', 'Businessazx', 'Businessxsv', '88592378611', 'Businesscux', NULL, 'distribuidor', 1, '$2y$10$1KxucBNY5Gfc0Xl17Gr5T.4CM9d9kY8Q83U34pOxJeSJ1nnGb1fpa', NULL, '2019-06-03 17:47:46', '2019-06-03 17:47:46'),
(466, 'Wirelessfus', 'Wirelessfus', 'Wirelessuel', 'ashley.rigter@gmail.com', 'Wirelessegc', 'Wirelesssqd', '81277166692', 'Wirelessxin', NULL, 'distribuidor', 1, '$2y$10$xwkFIur2rAxuVGElmCLC7ODn5FRfOAcx0Uuo3zDOVvVKZbwhYKmFO', NULL, '2019-06-03 22:43:42', '2019-06-03 22:43:42'),
(467, 'Incipiozwz', 'Incipiozwz', 'Incipionsm', 'watson.427@gmail.com', 'Incipiogmt', 'Incipioabb', '84731164365', 'Incipiouea', NULL, 'distribuidor', 1, '$2y$10$EN0l5fE6kY5wooDacszqJufU3l0A2VW5eY9X4C/Hi2txUa/Lx0OLa', NULL, '2019-06-04 07:24:39', '2019-06-04 07:24:39'),
(468, 'WILDKATdmi', 'WILDKATdmi', 'WILDKATcgd', 'solderchecker@yahoo.com', 'WILDKATkpa', 'WILDKATida', '81351741848', 'WILDKATxka', NULL, 'distribuidor', 1, '$2y$10$YOiGE2F1kbAX0RNHdbQHO.RKKRYGuFSdFjE4LeNpJoB3MZL6FqpKq', NULL, '2019-06-05 11:39:19', '2019-06-05 11:39:19'),
(469, 'Extractionwxm', 'Extractionwxm', 'Extractionayy', 'dmcleod4042@yahoo.com', 'Extractionfnp', 'Extractionwqo', '87738866657', 'Extractionpla', NULL, 'distribuidor', 1, '$2y$10$iYXDxaO.1uDUbmMtvw3J5e2DPsdHmMittEcf.qyw4wxLMJvukXeOC', NULL, '2019-06-05 19:23:48', '2019-06-05 19:23:48'),
(470, 'Blenderjfp', 'Blenderjfp', 'Blenderaoa', 'tricitpapa@yahoo.com', 'Blenderrfg', 'Blenderkbk', '87173696545', 'Blenderzjx', NULL, 'distribuidor', 1, '$2y$10$kXVyDTg793zSb0jX2Zg2juyQReTDYpfrJ4dFoO6uSnCqEeNm5gko6', NULL, '2019-06-06 12:27:30', '2019-06-06 12:27:30'),
(471, 'Holographicghu', 'Holographicghu', 'Holographicshn', 'wkheints@gmail.com', 'Holographicfyi', 'Holographicqhs', '84529381445', 'Holographiccph', NULL, 'distribuidor', 1, '$2y$10$uWemIztIMHQAmiPLo/oYL.7MazqONqJQzId8Wqf1BBuPx/Ag7ybEe', NULL, '2019-06-06 13:46:03', '2019-06-06 13:46:03'),
(472, 'Speakeraim', 'Speakeraim', 'Speakernds', 'laine.martemucci@gmail.com', 'Speakerrry', 'Speakerpfq', '89854557978', 'Speakeruff', NULL, 'distribuidor', 1, '$2y$10$Fz5f1sTnye0dCeqA4LmaluFHUxcQuMmh.dUtD9f3bm7YnfPYJHIem', NULL, '2019-06-06 21:31:31', '2019-06-06 21:31:31'),
(473, 'Drywallxpj', 'Drywallxpj', 'Drywallejb', 'imokru6969@yahoo.com', 'Drywallroj', 'Drywallpfq', '85343611938', 'Drywallrjt', NULL, 'distribuidor', 1, '$2y$10$Z4c.UqCkFdtRN/RqyOCJXuuZ7vW4SL37aXjQoBLQXLy.kCunru7r6', NULL, '2019-06-08 12:21:05', '2019-06-08 12:21:05'),
(474, 'Incipiolye', 'Incipiolye', 'Incipiorli', 'vhc66@yahoo.com', 'Incipioflu', 'Incipioicl', '85353322643', 'Incipiolxv', NULL, 'distribuidor', 1, '$2y$10$g39f1EgwaW3AbfhPTSYkK.t1yMKZOMDiacN1HRWcK7IiTfyfH/U5C', NULL, '2019-06-10 10:10:46', '2019-06-10 10:10:46'),
(475, 'Clamcasewrm', 'Clamcasewrm', 'Clamcasepiy', 'marvinrodas_@hotmail.com', 'Clamcaseyxw', 'Clamcasexgn', '84621174464', 'Clamcasenrs', NULL, 'distribuidor', 1, '$2y$10$y6Sw4gXQoAN8FGXVdxmCruWqJE1bhFDQvPj0kExiUrygT9NTusK.y', NULL, '2019-06-11 02:41:05', '2019-06-11 02:41:05'),
(476, 'Edelbrockfqj', 'Edelbrockfqj', 'Edelbrockhfb', 'rcaffulcibers@gmail.com', 'Edelbrockxrq', 'Edelbrockufu', '84196282863', 'Edelbrockszd', NULL, 'distribuidor', 1, '$2y$10$HN5GPYwqsSb/84w3TEA54usjQ7BM9Sg0hRC/CmuQSE8dziAJ0aSTK', NULL, '2019-06-11 07:46:48', '2019-06-11 07:46:48'),
(477, 'Irrigationkif', 'Irrigationkif', 'Irrigationcob', 'kward@eagletreetech.com', 'Irrigationknm', 'Irrigationoez', '81958446393', 'Irrigationiez', NULL, 'distribuidor', 1, '$2y$10$wS18SKjry6y8jh6QchfgPOmcpzDfj/jChvXHUmHhZchov4oVtilhS', NULL, '2019-06-11 12:47:15', '2019-06-11 12:47:15'),
(478, 'Blendertyi', 'Blendertyi', 'Blenderijd', 'dixiemiller49@gmail.com', 'Blenderqgd', 'Blenderzji', '89553774429', 'Blenderste', NULL, 'distribuidor', 1, '$2y$10$JR3GFORgw5hBNWQtXlbF7uUYwM3W3U4slZhe/g7dHaGMZjwq0Vjym', NULL, '2019-06-11 17:53:13', '2019-06-11 17:53:13'),
(479, 'Drywallxga', 'Drywallxga', 'Drywallnek', 'hartig.norbert.andrei@gmail.com', 'Drywalligl', 'Drywallysx', '88375966697', 'Drywallade', NULL, 'distribuidor', 1, '$2y$10$LIzwHzxkCq9fQ9tbENgtt.YfMLYxzFbjmjRXdL5/YY9o6zfvue69a', NULL, '2019-06-14 13:03:54', '2019-06-14 13:03:54'),
(480, 'Artisannsn', 'Artisannsn', 'Artisanbep', 'beltonbernadette@hotmail.com', 'Artisannbz', 'Artisanagc', '87824522117', 'Artisanukk', NULL, 'distribuidor', 1, '$2y$10$6/nidpcSgnNXn209xJLj7O5woYywmIg4qvCFkMcBAMi/j/cJadx8i', NULL, '2019-06-14 15:01:04', '2019-06-14 15:01:04'),
(481, 'Boschakn', 'Boschakn', 'Boscheyq', 'dodger_nation_13@yahoo.com', 'Boschsyv', 'Boschyqr', '88822583652', 'Boschcxs', NULL, 'distribuidor', 1, '$2y$10$Fx5Rh9IkRvclJZUkHNI68.gRCi8BpIYKlcVy8r2mUVjRRcqTq.qRS', NULL, '2019-06-14 18:04:21', '2019-06-14 18:04:21'),
(482, 'Generationivn', 'Generationivn', 'Generationmkj', 'mdwachter@comcast.net', 'Generationogc', 'Generationqqr', '82465213825', 'Generationswt', NULL, 'distribuidor', 1, '$2y$10$T.xljeRZh7Hc7QADuXC2yuruSaVuQspY.cGat2034ZOfNosjKEORm', NULL, '2019-06-14 18:45:22', '2019-06-14 18:45:22'),
(483, 'Carpetrgd', 'Carpetrgd', 'Carpetdtn', 'aakriti.pande@gmail.com', 'Carpetjiq', 'Carpetjwk', '81122768517', 'Carpetckl', NULL, 'distribuidor', 1, '$2y$10$LSO41.8Kts1rRIZBckHo3.CWeNY09ky3BnrUg3UC.N299H8ksRTzS', NULL, '2019-06-14 19:11:17', '2019-06-14 19:11:17'),
(484, 'Arnottnjh', 'Arnottnjh', 'Arnotthxc', 'brocketts01@gmail.com', 'Arnotthkv', 'Arnottubp', '85618574764', 'Arnottdtq', NULL, 'distribuidor', 1, '$2y$10$3Ny.lR3lM4nMWHQheA1ZNOOLiEiYiFDi6MvEWw8YrlgP8FqNNC8yi', NULL, '2019-06-14 20:50:30', '2019-06-14 20:50:30'),
(485, 'Flexibleaeo', 'Flexibleaeo', 'Flexibleloo', 'par31849@gmail.com', 'Flexibleimq', 'Flexiblepes', '84993187879', 'Flexiblelxm', NULL, 'distribuidor', 1, '$2y$10$o3wfIWDrbyGaAnP3a3k0CuqgBkRUlvdwZa/v9VTda3no45lJSdHOO', NULL, '2019-06-16 09:53:24', '2019-06-16 09:53:24'),
(486, 'Marshallpvb', 'Marshallpvb', 'Marshalljag', 'chary.pavankumar@gmail.com', 'Marshallhup', 'Marshallqmj', '86129366543', 'Marshallopn', NULL, 'distribuidor', 1, '$2y$10$1DB8eVLKvNAEQpqU3kOzWOXsoxDcXfiQCtyh6mr8OsHsfHkG9iJPO', NULL, '2019-06-16 16:33:18', '2019-06-16 16:33:18'),
(487, 'Premiumhed', 'Premiumhed', 'Premiumtaf', 'keiisermeno1018@gmail.com', 'Premiumept', 'Premiumash', '89111649867', 'Premiumauz', NULL, 'distribuidor', 1, '$2y$10$LhNlXCu7Ky0Hiew67j44Hu1gl/NHA9nlzen1jbQED7.qmWJvpPUui', NULL, '2019-06-16 20:52:54', '2019-06-16 20:52:54'),
(488, 'Blenderpuo', 'Blenderpuo', 'Blenderkuy', 'd_lanettesue@yahoo.com', 'Blendersns', 'Blenderzmb', '88567325166', 'Blenderfaw', NULL, 'distribuidor', 1, '$2y$10$fYjRcUOBDUU0lRliPhEjqe3E9ZkDw00CH/KjdjWWV159d8CtHX8RK', NULL, '2019-06-17 05:58:17', '2019-06-17 05:58:17'),
(489, 'Bluetoothxoq', 'Bluetoothxoq', 'Bluetoothqdp', 'capa2dave@gmail.com', 'Bluetoothkji', 'Bluetoothopl', '81841633814', 'Bluetoothnjg', NULL, 'distribuidor', 1, '$2y$10$VEc07fFi0.mdjTB27HU6p.dwJOvJ4hQRTv2ZoT08HDLjoUlT47D4a', NULL, '2019-06-17 08:42:23', '2019-06-17 08:42:23'),
(490, 'Businessqyb', 'Businessqyb', 'Businessqrw', 'smur8888@sbcglobal.net', 'Businessoxb', 'Businessugq', '83713972783', 'Businessbat', NULL, 'distribuidor', 1, '$2y$10$94zSgiRswm34PF0KKiW3KudPGuxmeCCnbfkDRAG7EXQ1EPJ.NpsNO', NULL, '2019-06-17 08:55:21', '2019-06-17 08:55:21'),
(491, 'Extractionmun', 'Extractionmun', 'Extractiongcc', 'talylite@yahoo.com', 'Extractionwgb', 'Extractionawi', '85311412521', 'Extractionbrx', NULL, 'distribuidor', 1, '$2y$10$UinbTRlOwn4XKygIJehmou6Z6XZmxevAy0HznyOh/bt5YEmh6MP8q', NULL, '2019-06-17 10:23:44', '2019-06-17 10:23:44'),
(492, 'Vitamixqzs', 'Vitamixqzs', 'Vitamixfvl', 'susanogg@aol.com', 'Vitamixait', 'Vitamixplj', '89439953332', 'Vitamixbgx', NULL, 'distribuidor', 1, '$2y$10$ruSfPxnmq0lBkbdiW75m3.XaCrsq7SEJKRcK.mKQYoTPuK2iIrx0C', NULL, '2019-06-17 14:48:56', '2019-06-17 14:48:56'),
(493, 'Premiumvkg', 'Premiumvkg', 'Premiumxmj', 'chantcaron@videotron.ca', 'Premiumayt', 'Premiumffg', '86875568878', 'Premiummak', NULL, 'distribuidor', 1, '$2y$10$b/CSLa4j1ToLBfqIOCIgbOZYeix2bkBoL8n8rawRTFqZgvOzwkAgO', NULL, '2019-06-17 18:36:01', '2019-06-17 18:36:01'),
(494, 'Focuspzp', 'Focuspzp', 'Focuslgt', 'ksherring89@gmail.com', 'Focusqyd', 'Focusbbd', '88119452721', 'Focusupt', NULL, 'distribuidor', 1, '$2y$10$D4zAlBy0ZD7mfbHILOv6iuQMErLcrzywxGsh8B2SRrPTR5tjts85.', NULL, '2019-06-17 20:15:25', '2019-06-17 20:15:25'),
(495, 'Seriestyt', 'Seriestyt', 'Seriesclo', 'jedi_230866@yahoo.com', 'Seriesewj', 'Seriesfmg', '81689881699', 'Seriesjfy', NULL, 'distribuidor', 1, '$2y$10$Nk59QQHTtLjjeCKTju5LIuBqSorugN5OWedPC1BDNCRsfXDP8HMJa', NULL, '2019-06-18 11:47:19', '2019-06-18 11:47:19'),
(496, 'Augustclm', 'Augustclm', 'Augusteze', 'eddymorgan1963@gmail.com', 'Augustqjw', 'Augustspp', '86933371157', 'Augustfie', NULL, 'distribuidor', 1, '$2y$10$yLxon7E4sP7JZ2tnHBszDe6bR7CSXuZWl7Syoh9HI9R3y.XeUnETG', NULL, '2019-06-18 15:44:38', '2019-06-18 15:44:38'),
(497, 'Irrigationfia', 'Irrigationfia', 'Irrigationpaa', 'pdballiet@gmail.com', 'Irrigationcpr', 'Irrigationipb', '86556959791', 'Irrigationosw', NULL, 'distribuidor', 1, '$2y$10$MJa/59xX1om2VR8S/oyy4OYczwJ8tDVgr2W0UAR1ZVofyGuCD0UOW', NULL, '2019-06-18 16:43:56', '2019-06-18 16:43:56'),
(498, 'Amazonnnpgu', 'Amazonnnpgu', 'Amazonnnvhn', 'vychretien@videotron.ca', 'Amazonnnsjo', 'Amazonnntlw', '82377999845', 'Amazonnnvul', NULL, 'distribuidor', 1, '$2y$10$EUeMkU2Yf4Vyc0P6U7ypY.SsU7Mvacqg.OW3V3ggDEN/SphVLudry', NULL, '2019-06-18 17:56:13', '2019-06-18 17:56:13'),
(499, 'Testerevw', 'Testerevw', 'Testerjqb', 'tweber@aquariumofniagara.org', 'Testerdhp', 'Testerijd', '88712896186', 'Testermib', NULL, 'distribuidor', 1, '$2y$10$eTWVucDoWWpw2d8TWaBpRepwwh.9ibp87Gq2ww2wPn1SlBQMsMbGa', NULL, '2019-06-18 19:06:22', '2019-06-18 19:06:22'),
(500, 'Seriesmiw', 'Seriesmiw', 'Seriesivc', 'russcrowe7@gmail.com', 'Seriesipa', 'Seriesain', '87271811281', 'Seriesgbl', NULL, 'distribuidor', 1, '$2y$10$zK9FNr4NlH3m7tg8SN58/OrPsy1MfqIgQRP8msckkZ0Vdktb2JA6S', NULL, '2019-06-18 22:45:31', '2019-06-18 22:45:31'),
(501, 'Holographiclzy', 'Holographiclzy', 'Holographicyhq', 'ndneese@aol.com', 'Holographictcl', 'Holographicuzb', '82271645574', 'Holographicgpd', NULL, 'distribuidor', 1, '$2y$10$fHL3Ds5NkaB7EKcDvpNir.Pf76rewlYuuQrQBW1PFR.eKbLa2x19q', NULL, '2019-06-18 22:50:47', '2019-06-18 22:50:47'),
(502, 'WILDKATodt', 'WILDKATodt', 'WILDKATgss', 'elijah2@comcast.net', 'WILDKATixi', 'WILDKATito', '85484246167', 'WILDKATnvt', NULL, 'distribuidor', 1, '$2y$10$IiUyjBNszUUlXuT6Nf0HBu/9XXcvddtmaeZ42dZ8wMXu2pdRwPpxe', NULL, '2019-06-19 03:02:27', '2019-06-19 03:02:27'),
(503, 'Linksyszyo', 'Linksyszyo', 'Linksysbkf', 'dharris2012@frontier.com', 'Linksyswpk', 'Linksysyjf', '85636779791', 'Linksysdtf', NULL, 'distribuidor', 1, '$2y$10$d8CwY5fMjMM/MCg/6JzAVOqcl6TJ17hvhUPLUB/Y3ylNMJSlRJipG', NULL, '2019-06-19 09:36:57', '2019-06-19 09:36:57'),
(504, 'Blenderroi', 'Blenderroi', 'Blenderymp', 'sf.morgan@comcast.net', 'Blenderyjw', 'Blenderaxx', '81427182847', 'Blenderdss', NULL, 'distribuidor', 1, '$2y$10$cACwptEMdrijwgCkvkKOuuZCdL.Gsdalp9Iq8NPj3fzTqcbv.TlX.', NULL, '2019-06-19 11:23:51', '2019-06-19 11:23:51'),
(505, 'Milwaukeeqex', 'Milwaukeeqex', 'Milwaukeelnd', 'allenzen0@gmail.com', 'Milwaukeeorf', 'Milwaukeeyib', '87478756249', 'Milwaukeeznc', NULL, 'distribuidor', 1, '$2y$10$aQ0mZ2LgROuB72BJy9MCFOwq/NDntWE/TFQVFww/4pTS.uqclOVsK', NULL, '2019-06-19 12:15:01', '2019-06-19 12:15:01'),
(506, 'Sanderquk', 'Sanderquk', 'Sandergwk', 'fsuadina@hotmail.com', 'Sanderjyc', 'Sanderkvb', '89367139552', 'Sanderfkb', NULL, 'distribuidor', 1, '$2y$10$4RnimBOWhx6H6DXI1VqpN.b6pJxipN0yvet5zLIu6AIoUmsLwI9kC', NULL, '2019-06-19 13:18:17', '2019-06-19 13:18:17'),
(507, 'WILDKATech', 'WILDKATech', 'WILDKATbpt', 'stacey.germaine@yahoo.com', 'WILDKATtau', 'WILDKATwvk', '81318743732', 'WILDKATyep', NULL, 'distribuidor', 1, '$2y$10$HzKxxP85RUKT.JdwJKQexOrI0Qh9Z0qT7ikXiRdm4O0WdoO8uMUkK', NULL, '2019-06-19 17:09:04', '2019-06-19 17:09:04'),
(508, 'Garminzvev', 'Garminzvev', 'Garminzctv', 'imrjw1@gmail.com', 'Garminzbva', 'Garminzkfc', '86465391545', 'Garminznvm', NULL, 'distribuidor', 1, '$2y$10$S6MvuKgIhlSZ6U2XzNFcsea7Ndg9mmpbTPXI4lq5b1Wj7RrrzZ/la', NULL, '2019-06-19 21:02:14', '2019-06-19 21:02:14'),
(509, 'Vitamixksw', 'Vitamixksw', 'Vitamixjjk', 'ag120695@gmail.com', 'Vitamixjfd', 'Vitamixtan', '87364973692', 'Vitamixxly', NULL, 'distribuidor', 1, '$2y$10$qYUgTGwEkodqKBefkBwLKexDLt8XGunSy.yWHjI.OEyrK9DXFZwey', NULL, '2019-06-19 22:01:04', '2019-06-19 22:01:04'),
(510, 'Epiphonejay', 'Epiphonejay', 'Epiphoneqht', 'marvin_rodas13@hotmail.com', 'Epiphoneokm', 'Epiphonejhr', '88758165293', 'Epiphoneocc', NULL, 'distribuidor', 1, '$2y$10$iQGDEVv/iRUybNf/0yCCJ.9kucnhQsOZXvyeqUmn6e3.43STgjlJm', NULL, '2019-06-19 22:35:00', '2019-06-19 22:35:00'),
(511, 'Edelbrocknnc', 'Edelbrocknnc', 'Edelbrockopj', 'tsuarez@cutnfluff.com', 'Edelbrocklhs', 'Edelbrockeuz', '84369155313', 'Edelbrockdgc', NULL, 'distribuidor', 1, '$2y$10$90DqnU06VthReFM75pmF5eT5mJtmFcyDfTO5mGxcF55g8IjGcza5m', NULL, '2019-06-20 02:31:15', '2019-06-20 02:31:15'),
(512, 'Fingerboardkyr', 'Fingerboardkyr', 'Fingerboardzud', 'justbstina@gmail.com', 'Fingerboardqeq', 'Fingerboardlph', '84759871755', 'Fingerboardebc', NULL, 'distribuidor', 1, '$2y$10$vuMWMwelMsliH0XLLm/iV.iNgGfKapBH1BBu.OQeB9Sme29CIrNjy', NULL, '2019-06-20 09:19:00', '2019-06-20 09:19:00'),
(513, 'Wirelessuiq', 'Wirelessuiq', 'Wirelessyuq', 'famurx00@yahoo.com', 'Wirelessuzb', 'Wirelessifm', '87355187957', 'Wirelessssq', NULL, 'distribuidor', 1, '$2y$10$rxLGTlc07EY4cpDKEHGaieef4HrglB8sgSw7coDKn3MccPj4iLPN6', NULL, '2019-06-20 09:42:26', '2019-06-20 09:42:26'),
(514, 'Sightxzq', 'Sightxzq', 'Sightvrk', 'stanusexmac@hotmail.com', 'Sightkpj', 'Sightdwj', '84253448679', 'Sightivf', NULL, 'distribuidor', 1, '$2y$10$D9hy3sbw5yT3R4zCr2vp1O.hUp.U8FeiVSxMIsPrpfuZKDlQm0FKW', NULL, '2019-06-20 14:07:56', '2019-06-20 14:07:56'),
(515, 'RainMachineywa', 'RainMachineywa', 'RainMachinefgj', 'mdahl-jensen@shaw.ca', 'RainMachinetbt', 'RainMachinemhx', '87768939365', 'RainMachineqch', NULL, 'distribuidor', 1, '$2y$10$sUxOdP7TC3lmShOJ9.Awnu4uzQcn9IX36igOtaq88SFimrYzzPYhC', NULL, '2019-06-20 18:37:30', '2019-06-20 18:37:30'),
(516, 'Fenderhaz', 'Fenderhaz', 'Fenderakc', 'jeannette_freeman@yahoo.com', 'Fenderlxb', 'Fendersnf', '86392344848', 'Fenderhiu', NULL, 'distribuidor', 1, '$2y$10$lFeIhtePNPRJWuUjTQd3u.4TwJetzzix3hKFwF8RyJDb7MtIUhH52', NULL, '2019-06-20 21:16:19', '2019-06-20 21:16:19'),
(517, 'Drywallohy', 'Drywallohy', 'Drywallnrg', 'dvnthwkns@yahoo.com', 'Drywallcyz', 'Drywalldxn', '81862517395', 'Drywalljzu', NULL, 'distribuidor', 1, '$2y$10$aQFQralMipANho4IG.EqG.KB7CJOB5JAffvq7ayWvFohfTNfd7MT6', NULL, '2019-06-21 11:13:20', '2019-06-21 11:13:20'),
(518, 'Batteriespkd', 'Batteriespkd', 'Batteriespmz', '30life30@mail.ru', 'Batterieslei', 'Batteriesfml', '89956844477', 'Batterieszeg', NULL, 'distribuidor', 1, '$2y$10$jxMtn1lVJRyOlo4qIfa7E.Ws4zir4J8CLdhKbwAWObgcEIN4sSi62', NULL, '2019-06-21 13:19:43', '2019-06-21 13:19:43'),
(519, 'CHIRPbli', 'CHIRPbli', 'CHIRPbxh', 'kristin.mielke@videotron.ca', 'CHIRPfun', 'CHIRPhkk', '87596837297', 'CHIRPhyy', NULL, 'distribuidor', 1, '$2y$10$YYNlN8QdgjGPhmJQHlpckORUSkYeH/HJpxdVIKsv2W2yosvFrFPrm', NULL, '2019-06-21 15:38:10', '2019-06-21 15:38:10'),
(520, 'Mojavetxf', 'Mojavetxf', 'Mojavegce', 'clove@castaneapartners.com', 'Mojavechg', 'Mojavejzh', '88448255225', 'Mojavegns', NULL, 'distribuidor', 1, '$2y$10$xpuo8sdU5N1bEhu9CXly2.SACQY3uAacvMYhg7TfMU5Jka9kkNCTe', NULL, '2019-06-21 20:12:20', '2019-06-21 20:12:20'),
(521, 'Telecasterqzm', 'Telecasterqzm', 'Telecastervsb', 'gsmith3661@aol.com', 'Telecastergtz', 'Telecasterqaz', '89627263837', 'Telecastereus', NULL, 'distribuidor', 1, '$2y$10$JWpfQoG9gPdiSo41RNtV6OYggbwZm//a/oMarlSfwhHCXNValuwHu', NULL, '2019-06-22 14:46:27', '2019-06-22 14:46:27'),
(522, 'WILDKATfzu', 'WILDKATfzu', 'WILDKATtwt', 'krazyvannah1@yahoo.com', 'WILDKATkxo', 'WILDKAThug', '81215894792', 'WILDKATuhu', NULL, 'distribuidor', 1, '$2y$10$yNzfIj54z9qgQ1xDb7QNQ.57KRdHErcJNhbuKulV7VbNwNK.oDo6O', NULL, '2019-06-22 23:36:11', '2019-06-22 23:36:11'),
(523, 'Serieszoq', 'Serieszoq', 'Seriesolv', 'corvettecat1@yahoo.com', 'Seriesefm', 'Seriesrzi', '82356468272', 'Serieswee', NULL, 'distribuidor', 1, '$2y$10$UDdsPAG/GmpkD3V3kWU4ZuKyQyriZ352j.hNxysIIDVRWfYgZj37.', NULL, '2019-06-23 09:52:14', '2019-06-23 09:52:14'),
(524, 'Feederwet', 'Feederwet', 'Feederrjk', 'hamdanmiga@gmail.com', 'Feederbrm', 'Feederkuk', '89126846328', 'Feederyqw', NULL, 'distribuidor', 1, '$2y$10$VHi7/m6Lp58TLQCLgPwelersKERyEoNABD3nZGXTys.RSGaTFllG2', NULL, '2019-06-23 12:44:37', '2019-06-23 12:44:37'),
(525, 'Fenderqea', 'Fenderqea', 'Fendergji', 'tabmaiporland@hotmail.com', 'Fendercul', 'Fendereou', '89821159261', 'Fenderbmt', NULL, 'distribuidor', 1, '$2y$10$Rh97RL6qqSBpvMe0DgU2ner3GupVtDpXgi1zj3Dd3lbbu4xfplMEG', NULL, '2019-06-23 17:16:31', '2019-06-23 17:16:31'),
(526, 'Leupoldgxh', 'Leupoldgxh', 'Leupoldnrc', 'thomasdjarot@gmail.com', 'Leupoldvit', 'Leupoldbkh', '89197984457', 'Leupoldrrh', NULL, 'distribuidor', 1, '$2y$10$dp7KFBhiYQDYs/Pgan13hOPsJd0ZFYW7Q0K04gAXnMj0TFwG3ZvBG', NULL, '2019-06-23 23:50:11', '2019-06-23 23:50:11'),
(527, 'Fortressepi', 'Fortressepi', 'Fortressapg', 'sparks@meritascare.ca', 'Fortressdvn', 'Fortresshzk', '86579929118', 'Fortressvur', NULL, 'distribuidor', 1, '$2y$10$7giFCvBjXxsDFIGAWkClj.aFyZch95okLHEW5Qqxa3IfpOWy9Gp3a', NULL, '2019-06-24 00:41:17', '2019-06-24 00:41:17');
INSERT INTO `users` (`id`, `username`, `name`, `apellido`, `email`, `social`, `cuit`, `telefono`, `direccion`, `postal`, `nivel`, `activo`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(528, 'Arnottsqo', 'Arnottsqo', 'Arnotttjf', 'alsu@hotmail.it', 'Arnottrck', 'Arnottxta', '81776944751', 'Arnottjsn', NULL, 'distribuidor', 1, '$2y$10$xb0BJq7TNckMCo6tmmySpOnXVVbnKRrRUr2x..cGB5e6usTGFXkVO', NULL, '2019-06-24 04:34:37', '2019-06-24 04:34:37'),
(529, 'KitchenAidfxz', 'KitchenAidfxz', 'KitchenAidcou', 'victor.campbell@q.com', 'KitchenAidhyi', 'KitchenAidxnv', '82799294332', 'KitchenAidhtm', NULL, 'distribuidor', 1, '$2y$10$SlHqfqp4D4dpG7UPxBp4JucYr1pUSYxpZPxR6LvyI.8aF6smGqJpq', NULL, '2019-06-25 00:51:01', '2019-06-25 00:51:01'),
(530, 'Drywallvmk', 'Drywallvmk', 'Drywalldoj', 'celder@doublegatecc.com', 'Drywalllkz', 'Drywallsiq', '88285353227', 'Drywallotc', NULL, 'distribuidor', 1, '$2y$10$r4DKvxfvPbeZJBjdmLY3ue4XJRIMYMyTLNWDow1HObjhLk4HTzcvS', NULL, '2019-06-25 01:02:49', '2019-06-25 01:02:49'),
(531, 'Portablegds', 'Portablegds', 'Portablecve', 'helencassels@yahoo.com', 'Portableqvx', 'Portablewkt', '82248343872', 'Portablealy', NULL, 'distribuidor', 1, '$2y$10$M70chypWnGNC79UCNFRos.3JVdH.qt9rULR3asBnHdH5mQIU1r8zu', NULL, '2019-06-25 04:26:37', '2019-06-25 04:26:37'),
(532, 'Fingerboardspm', 'Fingerboardspm', 'Fingerboardzjw', 'thefellas11@gmail.com', 'Fingerboardbzi', 'Fingerboardjst', '87322427788', 'Fingerboardmgr', NULL, 'distribuidor', 1, '$2y$10$acainx/etrnBSdl2vnc9yOrGjewY1GEjTjB7mXjjcOQHzELJNMNy6', NULL, '2019-06-25 05:50:01', '2019-06-25 05:50:01'),
(533, 'Avalanchevjs', 'Avalanchevjs', 'Avalanchepmq', 'rick.medel@gc.dental', 'Avalanchekqg', 'Avalanchelst', '81651488699', 'Avalanchezjl', NULL, 'distribuidor', 1, '$2y$10$icIfZ/YcgahPNqvlHikVb.O9aRaaXxDSlELDyQkQGeBxstLCFxkWu', NULL, '2019-06-25 05:51:16', '2019-06-25 05:51:16'),
(534, 'EOTechspt', 'EOTechspt', 'EOTechqgx', 'lynn00shi@gmail.com', 'EOTechqlw', 'EOTechflj', '86766966916', 'EOTechmbe', NULL, 'distribuidor', 1, '$2y$10$6fJKKq0vUtPpZ8k3rCIqAuZxELaI8lrBsWIyLg0uSoFRj4SWjNCWy', NULL, '2019-06-25 10:05:26', '2019-06-25 10:05:26'),
(535, 'Sprinkleross', 'Sprinkleross', 'Sprinkleruda', 'joinus@stoney.church', 'Sprinklerrxm', 'Sprinklermfc', '81384687252', 'Sprinklerxdi', NULL, 'distribuidor', 1, '$2y$10$j4kn5iMwByBW8v7maT1B4uPCoxHbA5n1d6ppQdtCNrQBxdJwOqpA6', NULL, '2019-06-25 16:49:12', '2019-06-25 16:49:12'),
(536, 'Nespressobgc', 'Nespressobgc', 'Nespressoutu', 'gregthompson7976@gmail.com', 'Nespressonjj', 'Nespressogjv', '89282881461', 'Nespressoaoj', NULL, 'distribuidor', 1, '$2y$10$tCdDSk2.6wuzKaduxPj9iushfYb.xSufhepR86nADEb39m8TyPwSK', NULL, '2019-06-25 20:22:49', '2019-06-25 20:22:49'),
(537, '20045580262', 'PINTURERIAS DEL CENTRO', 'PINTURERIAS DEL CENTRO', 'administracion@delcentrobariloche.com.ar', 'JUAN CARLOS REZNICK', '20045580262', '0294-442-7986', 'Elflein 1072 - Bariloche', NULL, 'distribuidor', 1, '$2y$10$7/08S47x0I6O.5A7v4tSq..MRlVKcXawJNQeOmUi8WwkcbFF/JVJa', '3STpw5X9a4SpuZuXhXuCYVSNR50PjP9fcCWFlyxNtI4kcHglQ0PW4AttzRbD', '2019-06-25 21:38:08', '2019-06-25 21:38:08'),
(538, 'Vortexqvx', 'Vortexqvx', 'Vortexqrt', 'champagnole@msn.com', 'Vortexriu', 'Vortexyfb', '89655224283', 'Vortexske', NULL, 'distribuidor', 1, '$2y$10$pfuLTsdXOu8QsY8Jxm0yVe8FcaTC7HjwPbe/ItXSHl3uJ4XVbxnLG', NULL, '2019-06-26 00:20:18', '2019-06-26 00:20:18'),
(539, 'KitchenAidxud', 'KitchenAidxud', 'KitchenAiduck', 'dobush.taras95@gmail.com', 'KitchenAiddne', 'KitchenAidmqv', '87417199896', 'KitchenAidbix', NULL, 'distribuidor', 1, '$2y$10$xWv.3u9tCBsLML4t9B2DHuavkAOCtnnuMgko7mYzuGZbGZhgjZfYG', NULL, '2019-06-26 00:37:35', '2019-06-26 00:37:35'),
(540, 'Bluetoothfjj', 'Bluetoothfjj', 'Bluetoothfxg', 'sel@yumatron.de', 'Bluetoothdrj', 'Bluetoothqsh', '85917411882', 'Bluetoothoaf', NULL, 'distribuidor', 1, '$2y$10$5.H57qtaCLw.3HiHVipsDOjTSNHKe8C4nTGdyhrp.IURp8fUjr52a', NULL, '2019-06-26 13:18:04', '2019-06-26 13:18:04'),
(541, 'Flukergq', 'Flukergq', 'Flukeljp', 'dianne1452@sbcglobal.net', 'Flukescf', 'Fluketay', '86516961978', 'Flukeyuf', NULL, 'distribuidor', 1, '$2y$10$1yi82MkHO0iSJPKAL3c6OOCsYbi0zhakl7pFD7KkFsXDuqFVF7Mwy', NULL, '2019-06-26 14:15:47', '2019-06-26 14:15:47'),
(542, 'Weaponbyp', 'Weaponbyp', 'Weaponjzk', 'bassplayer22000@yahoo.com', 'Weaponajf', 'Weaponiio', '89722716779', 'Weaponpos', NULL, 'distribuidor', 1, '$2y$10$TCzDC8xJ30dYE9YBByKar.WOOvabSg/akTaBEKI50tRmTnI/Pa1y.', NULL, '2019-06-26 14:45:59', '2019-06-26 14:45:59'),
(543, 'Zodiaceqd', 'Zodiaceqd', 'Zodiacoit', 'albert.mclaughlin@snet.net', 'Zodiactfc', 'Zodiackww', '88997925147', 'Zodiacqny', NULL, 'distribuidor', 1, '$2y$10$3JwdL.ecstLnHHnD6h586.UC.eaQgyoZOCDUFTGYscbc1UoS8vwS.', NULL, '2019-06-26 16:37:18', '2019-06-26 16:37:18'),
(544, '20140986411', 'PIFLACS ROBERTO ADRIAN', 'PIFLACS ROBERTO ADRIAN', 'rubepintmitre@gmail.com', 'PIFLACS ROBERTO ADRIAN', '20140986411', '0299-5839408', NULL, NULL, 'distribuidor', 1, '$2y$10$Y3CY5GzOONfYPytzkkBTeum81aGf5r2htqhGySRQhuFGoEnijIfny', 'Mwh6oPahPKb74G5mTEjh62VyVE5oJQYtEjLBKCYYqxsRsVyPU4ZQ5aTrp2vV', '2019-06-26 17:26:34', '2019-06-26 17:46:04'),
(545, 'Testerjfw', 'Testerjfw', 'Testerior', 'klwhyte@shaw.ca', 'Testertxg', 'Testerwak', '84346193477', 'Testerefy', NULL, 'distribuidor', 1, '$2y$10$rXoXUAERTjM09goPDWMP4.L90ko3ULSpvumLqa86AoyqmCtVfm0Nu', NULL, '2019-06-26 18:01:20', '2019-06-26 18:01:20'),
(546, 'Rigidups', 'Rigidups', 'Rigidknh', 'feupadhasun@hotmail.com', 'Rigidcus', 'Rigidhni', '82338164679', 'Rigidfgn', NULL, 'distribuidor', 1, '$2y$10$sXotgHz6bXNZuEzyvsexeuuh7rln71pOsOacjej4itD9CJU2cNmie', NULL, '2019-06-26 20:43:59', '2019-06-26 20:43:59'),
(547, 'EOTechofm', 'EOTechofm', 'EOTechxug', 'chantelchambers79@gmail.com', 'EOTechyut', 'EOTechcne', '89227631723', 'EOTechjmd', NULL, 'distribuidor', 1, '$2y$10$V0hlRa02Pybso5gdTCZ2/e4rEBkBgImeSoUYDp84Wbvi0s0K9VWmu', NULL, '2019-06-26 20:48:13', '2019-06-26 20:48:13'),
(548, 'Amazonnnckc', 'Amazonnnckc', 'Amazonnngux', 'midge1121@gmail.com', 'Amazonnnjko', 'Amazonnnxgx', '89755491679', 'Amazonnnvjh', NULL, 'distribuidor', 1, '$2y$10$t1xbGx0.x7I0GjD7cP6/NO5HyN5YB1cUp5j4ss/HpvTSI8dcsPRXa', NULL, '2019-06-26 21:31:05', '2019-06-26 21:31:05'),
(549, 'Scannerzfw', 'Scannerzfw', 'Scannerszu', 'emlabruzzo9296@verizon.net', 'Scannerwaq', 'Scannermrh', '85851278197', 'Scanneryjj', NULL, 'distribuidor', 1, '$2y$10$AV7hMgxTD9NzVuSdxGiJ5eLqcdfgB8PZ4xW542wPh1D6f0qQ6JJDK', NULL, '2019-06-27 00:02:21', '2019-06-27 00:02:21'),
(550, 'Avalancheuxn', 'Avalancheuxn', 'Avalanchedzw', 'jeffrkent@comcast.net', 'Avalanchezej', 'Avalancheixj', '88798131799', 'Avalanchebdx', NULL, 'distribuidor', 1, '$2y$10$wg9YfNJ4QCzGKNWQ6czTTe2k6MG.qWnMioTo2p44.j3Q/tJHUFg3S', NULL, '2019-06-27 00:47:49', '2019-06-27 00:47:49'),
(551, 'Haywardwaf', 'Haywardwaf', 'Haywardvmx', 'den.borin.82@list.ru', 'Haywarditk', 'Haywardfjv', '87996436967', 'Haywardsow', NULL, 'distribuidor', 1, '$2y$10$phKU62g5QBZBUTRElHEY5OJcOEYo55Qm05HTqyV0tR73XgByaa8Fi', NULL, '2019-06-28 16:42:22', '2019-06-28 16:42:22'),
(552, 'Marshallzaw', 'Marshallzaw', 'Marshallznt', 'victorc@deltadatatrust.com', 'Marshallpmj', 'Marshallcfi', '82641933119', 'Marshallaym', NULL, 'distribuidor', 1, '$2y$10$n6w5GzyTKcrjTwukO84NBuTaOqC5DY2CuUKva.LsQjOF6/RB7N0Wu', NULL, '2019-06-29 00:37:33', '2019-06-29 00:37:33'),
(553, 'Nespressoahi', 'Nespressoahi', 'Nespressopov', 'honeytone9@gmail.com', 'Nespressoysa', 'Nespressoanp', '89143758318', 'Nespressotzg', NULL, 'distribuidor', 1, '$2y$10$0LHhHkVC6dJwPr4a/c7rieSCuzdRsYXD0SA6S.AshWKauvg7veAKq', NULL, '2019-06-29 23:04:00', '2019-06-29 23:04:00'),
(554, 'Flexibleeej', 'Flexibleeej', 'Flexiblexlw', 'p110154@aol.com', 'Flexiblecmc', 'Flexiblewqr', '84251741289', 'Flexibletho', NULL, 'distribuidor', 1, '$2y$10$7KWDlMBrQ6GqK4aYkhxPwOZwaw/QraXOV0SxY/WhZeOmMlhSCyGUa', NULL, '2019-06-29 23:19:40', '2019-06-29 23:19:40'),
(555, 'Rigidciq', 'Rigidciq', 'Rigidzza', 'dotarono@yahoo.com', 'Rigidakt', 'Rigideln', '87743497248', 'Rigidvvd', NULL, 'distribuidor', 1, '$2y$10$OMGA3wDu32BcbIQLeOZO8eoH1vISUkVJl3JpcyrNtyQIyFQsUUS6y', NULL, '2019-06-30 00:23:09', '2019-06-30 00:23:09'),
(556, 'Arnottqjq', 'Arnottqjq', 'Arnottpog', 'rahji100@tpg.com.au', 'Arnottmew', 'Arnotttgr', '89675488188', 'Arnottrli', NULL, 'distribuidor', 1, '$2y$10$woGRxtMjSmbWR8ueMqZePOAyaSF.2dd1uBZIAf7SnEHoYT7creiFC', NULL, '2019-07-01 12:22:57', '2019-07-01 12:22:57'),
(557, 'Rachioxdd', 'Rachioxdd', 'Rachiobsa', 'speakingofandygreenberg@comcast.net', 'Rachiongk', 'Rachioxyz', '89633237131', 'Rachioedb', NULL, 'distribuidor', 1, '$2y$10$UiiSRnHxv/qeZmxtawZnSeR2gsUGIFhF5VN34m4Xc3VKprO.1TuI.', NULL, '2019-07-01 15:48:02', '2019-07-01 15:48:02'),
(558, 'Rubberuul', 'Rubberuul', 'Rubberfao', 'dirtmom2@gmail.com', 'Rubberhxb', 'Rubberuud', '85682879454', 'Rubberakg', NULL, 'distribuidor', 1, '$2y$10$HQgaGNOCICL2.CsPQchoeOiVLfM7/d9UGsDX0AqOpQiBRDoB0OSCm', NULL, '2019-07-01 20:29:49', '2019-07-01 20:29:49'),
(559, 'Beaterwgu', 'Beaterwgu', 'Beaterqey', 'contact@geroplex.com', 'Beatergao', 'Beaterdqt', '88539321754', 'Beaterlpj', NULL, 'distribuidor', 1, '$2y$10$NCZY5pN4Z3TCmUaCGNCvae4uB9fvwXfkY/naKAu6p/1IzxkXPCazS', NULL, '2019-07-01 21:25:06', '2019-07-01 21:25:06'),
(560, 'Scanneryst', 'Scanneryst', 'Scanneroqf', 'info@elevationeus.com', 'Scannerawh', 'Scannerjqf', '81449679212', 'Scanneruaz', NULL, 'distribuidor', 1, '$2y$10$WVjwIVgxzBen0WNARWYpLOpCfcdOQ02p8v/al7pQm4ITGrSwcJMzu', NULL, '2019-07-02 01:23:18', '2019-07-02 01:23:18'),
(561, 'Artisanttk', 'Artisanttk', 'Artisanvrg', 'julia@binspiration.net', 'Artisangjq', 'Artisanliz', '83781161535', 'Artisanfzr', NULL, 'distribuidor', 1, '$2y$10$IWpESeO6pmvfk0DAApjfdOVO9YmTpm.FvvFpCl8E2LXGGjQuE/sNK', NULL, '2019-07-02 01:27:32', '2019-07-02 01:27:32'),
(562, 'EOTechwvf', 'EOTechwvf', 'EOTechsdb', 'stmi@sbcglobal.net', 'EOTechfkx', 'EOTechrhk', '84926463388', 'EOTechghd', NULL, 'distribuidor', 1, '$2y$10$2k3hovq9tJXiEpplPZq6DexN1uUc9C3t2HItYIA2xgilLutppKI9O', NULL, '2019-07-02 14:41:57', '2019-07-02 14:41:57'),
(563, 'Stanmorelha', 'Stanmorelha', 'Stanmorerss', 'umarbhatti786@gmail.com', 'Stanmorezck', 'Stanmoreckt', '84581216288', 'Stanmorecif', NULL, 'distribuidor', 1, '$2y$10$CtRCZC1dGPgB3s9QH3hwvudaHR/GXl00TpPB4UT6JYm1lGZC2Us8W', NULL, '2019-07-02 16:39:26', '2019-07-02 16:39:26'),
(564, 'Backlitjim', 'Backlitjim', 'Backlitatk', 'stipank2017@gmail.com', 'Backlitwdd', 'Backlitjgw', '82128426417', 'Backlitwkz', NULL, 'distribuidor', 1, '$2y$10$F.INO6.sVhKyE7DrpBuw5e6RhYLgpkfiGDzdDZFcbgaryK1aVIZdC', NULL, '2019-07-02 18:28:45', '2019-07-02 18:28:45'),
(565, 'Dormanecm', 'Dormanecm', 'Dormanzkv', 'sandishipley@gmail.com', 'Dormandrh', 'Dormanwii', '86483321448', 'Dormanrzg', NULL, 'distribuidor', 1, '$2y$10$Ty0oiIHCid.MJGtSTh2CLed2Y0i7SCOmQorvK482UANy.mWTzPevG', NULL, '2019-07-03 00:21:39', '2019-07-03 00:21:39'),
(566, 'Vintagejzh', 'Vintagejzh', 'Vintagebgu', 'avliflanes@gmail.com', 'Vintageceg', 'Vintagemoi', '87219222734', 'Vintagecgr', NULL, 'distribuidor', 1, '$2y$10$hI.8dxzt6wB7lg.QzaKzJOiGca.XNW8QapDe8QuS2Vv5ylLwUw7Fa', NULL, '2019-07-03 03:05:14', '2019-07-03 03:05:14'),
(567, 'Artisancxu', 'Artisancxu', 'Artisantrq', 'tratbundaades@hotmail.com', 'Artisanpyy', 'Artisangbf', '87276288252', 'Artisanwkg', NULL, 'distribuidor', 1, '$2y$10$ll4KgtQAAUEiUlu9tz3GnO4RyCMrjE6HTMUSF6YYIl7RBejdjE7Ru', NULL, '2019-07-03 13:13:00', '2019-07-03 13:13:00'),
(568, 'Drywallumz', 'Drywallumz', 'Drywallvxs', 'glycapbagour@yahoo.com', 'Drywallwnk', 'Drywalljjt', '86111116365', 'Drywallnix', NULL, 'distribuidor', 1, '$2y$10$DA/656LwbgZt6xq0gRzEJecwTSmKkaDHKXAfW7fLyeZgaiPsEz9K.', NULL, '2019-07-03 15:53:33', '2019-07-03 15:53:33'),
(569, 'Plasticixr', 'Plasticixr', 'Plasticxkl', 'msbudz4u@yahoo.com', 'Plasticcbs', 'Plasticord', '81466513436', 'Plasticcus', NULL, 'distribuidor', 1, '$2y$10$DcAY8HIScbHjjdHqzFDgbuDidUUC4Y9lNpdL7TXfyubST82VAjSEe', NULL, '2019-07-04 10:34:21', '2019-07-04 10:34:21'),
(570, '23278652653', 'jose maria', 'lallana', 'colormik@powervt.com.ar', 'lallana jose maria', '23278652653', '03462 462286', 'dante alighieri 906', '2600', 'distribuidor', 1, '$2y$10$zCWjB7qEivYWmOEa3XiyRuvlQ3wM3lMou3NkZRuUfMCaAhHxmixoW', NULL, '2019-07-04 15:27:30', '2019-07-04 15:27:30'),
(571, 'Visiondeu', 'Visiondeu', 'Visionosx', 'seltirisi@hotmail.com', 'Visionptt', 'Visionvsy', '81681232785', 'Visionfrb', NULL, 'distribuidor', 1, '$2y$10$29NPEVusSRR2Z7LRYEYJ7OgsT6F77A2mq7pgq.W.7X6DuZ/NXah7W', NULL, '2019-07-04 17:08:34', '2019-07-04 17:08:34'),
(572, 'Interfaceamh', 'Interfaceamh', 'Interfaceujp', 'insiomumbhigh@gmail.com', 'Interfacexee', 'Interfacebsy', '82216264813', 'Interfacehdx', NULL, 'distribuidor', 1, '$2y$10$LfsjC1UWWWXom5KnpEULj.zAY21AetaQxIqAqz.yKgTx5SW4vhcG.', NULL, '2019-07-06 11:37:38', '2019-07-06 11:37:38'),
(573, 'Beaterzqf', 'Beaterzqf', 'Beatervug', 'montuorij@gmail.com', 'Beateropp', 'Beateridp', '81317851291', 'Beateriwn', NULL, 'distribuidor', 1, '$2y$10$qFMf4QXcpfx8MwaLtJB0pOdp2ckRfODLqmZ4oIDBXbsGmjAHXIbnK', NULL, '2019-07-09 19:27:22', '2019-07-09 19:27:22'),
(574, 'Dysonpds', 'Dysonpds', 'Dysonebp', 'joemiller@jbmillerassoc.com', 'Dysonumu', 'Dysonghg', '85561349954', 'Dysonlww', NULL, 'distribuidor', 1, '$2y$10$ucKbQ8Lquysg04ZinTixc.zIPpfkvvAo93pecbjT8xVDmRlxwncM2', NULL, '2019-07-09 19:53:49', '2019-07-09 19:53:49'),
(575, '27243531573', 'GEOSUR', 'CERVIÑO MARIA INES', 'geo1sur@gmail.com', 'GEO SUR DE CERVIÑO MARIA INES.', '27243531573', '4231-8198/8133.', NULL, NULL, 'distribuidor', 1, '$2y$10$RGcdgUZkavhMmgC/pidGuuqpL5R/nqX.rCHtHFNnFzIvZ2Zp4HBeK', 'qvECRpgfcFsl0VNM4Ddqbb8bJ7mgT7dN4ety5wjyX3tqoNshoEtyMY14b9fV', '2019-07-11 00:14:20', '2019-07-11 00:14:20'),
(576, 'Vitamixjqj', 'Vitamixjqj', 'Vitamixipr', 'rbachmann@gcc.com', 'Vitamixlcp', 'Vitamixnbd', '84138995367', 'Vitamixrqe', NULL, 'distribuidor', 1, '$2y$10$9sozLZEH1jE7aQankcR4oeSjXfutYYtgPGamwAaVJRT3dn.nrDNJ.', NULL, '2019-07-11 00:40:40', '2019-07-11 00:40:40'),
(577, 'Edelbrockjbz', 'Edelbrockjbz', 'Edelbrocklbm', 'ecchristopher311@gmail.com', 'Edelbrockfry', 'Edelbrockilb', '84784357225', 'Edelbrockbqq', NULL, 'distribuidor', 1, '$2y$10$fYmGAOAzkM/6W5U5Au3cAuhf3flIrKgv2Dbv8IeQivGN2U5IVQDoS', NULL, '2019-07-11 20:35:39', '2019-07-11 20:35:39'),
(578, 'Humminbirduwu', 'Humminbirduwu', 'Humminbirdjbz', 'mattlyns@yahoo.com', 'Humminbirdtuc', 'Humminbirdidw', '84222773637', 'Humminbirddfe', NULL, 'distribuidor', 1, '$2y$10$kNEdpsQTrtSDP52VhPZzFuJ48XaQt5IOTjZ3MbpWpD3ag4I/Yg2rS', NULL, '2019-07-15 22:20:02', '2019-07-15 22:20:02'),
(579, 'Professionalwab', 'Professionalwab', 'Professionalomq', 'damien.patterson@gmail.com', 'Professionalwdv', 'Professionaliup', '81267163687', 'Professionalrpz', NULL, 'distribuidor', 1, '$2y$10$OzLNrA7nLMFWztGkl8tPTOneSTstXVYiuOaGoc15teF39t4bvNUXe', NULL, '2019-07-16 05:50:43', '2019-07-16 05:50:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `nombre`, `descripcion`, `video`, `created_at`, `updated_at`) VALUES
(2, 'Fabricación y desarrollo MAER.', 'Mirá el video con los procesos de desarrollo, fabricación y producción.', 'https://www.youtube.com/embed/eROkQxSmlYM', '2018-08-06 05:58:58', '2018-10-02 21:38:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aplicacion_producto`
--
ALTER TABLE `aplicacion_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aplicacion_producto_aplicacion_id_foreign` (`aplicacion_id`),
  ADD KEY `aplicacion_producto_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calidad`
--
ALTER TABLE `calidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_novedades`
--
ALTER TABLE `categoria_novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_preguntas`
--
ALTER TABLE `categoria_preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenido_calidades`
--
ALTER TABLE `contenido_calidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenido_homes`
--
ALTER TABLE `contenido_homes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destacado_homes`
--
ALTER TABLE `destacado_homes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imgproductos`
--
ALTER TABLE `imgproductos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imgproductos_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelo_producto`
--
ALTER TABLE `modelo_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modelo_producto_modelo_id_foreign` (`modelo_id`),
  ADD KEY `modelo_producto_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novedades_producto_id_foreign` (`producto_id`),
  ADD KEY `novedades_categoria_novedad_id_foreign` (`categoria_novedad_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_user_id_foreign` (`user_id`),
  ADD KEY `pedidos_descuento_id_foreign` (`descuento_id`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_producto_pedido_id_foreign` (`pedido_id`),
  ADD KEY `pedido_producto_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preguntas_categoria_pregunta_id_foreign` (`categoria_pregunta_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`),
  ADD KEY `productos_rubro_id_foreign` (`rubro_id`),
  ADD KEY `productos_categoria_pregunta_id_foreign` (`categoria_pregunta_id`);

--
-- Indices de la tabla `producto_relacionados`
--
ALTER TABLE `producto_relacionados`
  ADD KEY `producto_relacionados_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rubros`
--
ALTER TABLE `rubros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rubro_producto`
--
ALTER TABLE `rubro_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rubro_producto_rubro_id_foreign` (`rubro_id`),
  ADD KEY `rubro_producto_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiempos`
--
ALTER TABLE `tiempos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicaciones`
--
ALTER TABLE `aplicaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `aplicacion_producto`
--
ALTER TABLE `aplicacion_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `calidad`
--
ALTER TABLE `calidad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `categoria_novedades`
--
ALTER TABLE `categoria_novedades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria_preguntas`
--
ALTER TABLE `categoria_preguntas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contenido_calidades`
--
ALTER TABLE `contenido_calidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contenido_homes`
--
ALTER TABLE `contenido_homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `destacado_homes`
--
ALTER TABLE `destacado_homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `imgproductos`
--
ALTER TABLE `imgproductos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `modelo_producto`
--
ALTER TABLE `modelo_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rubros`
--
ALTER TABLE `rubros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `rubro_producto`
--
ALTER TABLE `rubro_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tiempos`
--
ALTER TABLE `tiempos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicacion_producto`
--
ALTER TABLE `aplicacion_producto`
  ADD CONSTRAINT `aplicacion_producto_aplicacion_id_foreign` FOREIGN KEY (`aplicacion_id`) REFERENCES `aplicaciones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aplicacion_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `imgproductos`
--
ALTER TABLE `imgproductos`
  ADD CONSTRAINT `imgproductos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `modelo_producto`
--
ALTER TABLE `modelo_producto`
  ADD CONSTRAINT `modelo_producto_modelo_id_foreign` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `modelo_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD CONSTRAINT `novedades_categoria_novedad_id_foreign` FOREIGN KEY (`categoria_novedad_id`) REFERENCES `categoria_novedades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `novedades_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_descuento_id_foreign` FOREIGN KEY (`descuento_id`) REFERENCES `descuentos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedidos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD CONSTRAINT `pedido_producto_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedido_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_categoria_pregunta_id_foreign` FOREIGN KEY (`categoria_pregunta_id`) REFERENCES `categoria_preguntas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_categoria_pregunta_id_foreign` FOREIGN KEY (`categoria_pregunta_id`) REFERENCES `categoria_preguntas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_rubro_id_foreign` FOREIGN KEY (`rubro_id`) REFERENCES `rubros` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto_relacionados`
--
ALTER TABLE `producto_relacionados`
  ADD CONSTRAINT `producto_relacionados_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rubro_producto`
--
ALTER TABLE `rubro_producto`
  ADD CONSTRAINT `rubro_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rubro_producto_rubro_id_foreign` FOREIGN KEY (`rubro_id`) REFERENCES `rubros` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
