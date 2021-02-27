-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2021 a las 03:46:44
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paginawebphp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso`
--

CREATE TABLE `tm_curso` (
  `cur_id` int(11) NOT NULL,
  `cur_titulo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cur_subtitulo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `cur_img` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cur_url` varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  `cur_desta` int(11) NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso`
--

INSERT INTO `tm_curso` (`cur_id`, `cur_titulo`, `cur_subtitulo`, `cur_img`, `cur_url`, `cur_desta`, `fech_crea`, `est`) VALUES
(1, 'Creación de WebService y consumo con POSTMAN (PHP y MySQL)', 'WebService PHP y MySQL', '1.jpg', 'https://www.udemy.com/course/creacion-de-webservice-y-consumo-con-postman-php-y-mysql/learn/lecture/24810572#overview', 1, '2021-02-26 21:15:01', 1),
(2, 'Creación de WebService con Node Js y SQL Server', 'WebService con Node Js y SQL Server', '2.jpg', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/learn/lecture/24922234#overview', 1, '2021-02-26 21:15:05', 1),
(3, 'Curso 1', 'Curso 1', '1.jpg', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/learn/lecture/24922234#overview', 0, '2021-03-01 21:15:08', 1),
(4, 'Curso 2', 'Curso 2', '1.jpg', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/learn/lecture/24922234#overview', 0, '2021-02-25 21:15:10', 1),
(5, 'Curso 3 ', 'Curso 3', '1.jpg', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/learn/lecture/24922234#overview', 0, '2021-02-27 21:15:13', 1),
(6, 'Curso 4', 'Curso 4', '1.jpg', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/learn/lecture/24922234#overview', 0, '2021-02-27 21:15:16', 1),
(7, 'Curso 5', 'Curso 5', '1.jpg', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/learn/lecture/24922234#overview', 0, '2021-02-27 21:15:20', 1),
(8, 'Curso 6', 'Curso 6', '1.jpg', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/learn/lecture/24922234#overview', 0, '2021-02-27 21:15:22', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso_detalle`
--

CREATE TABLE `tm_curso_detalle` (
  `det_id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `det_nom` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso_detalle`
--

INSERT INTO `tm_curso_detalle` (`det_id`, `cur_id`, `det_nom`, `est`) VALUES
(1, 1, 'PHP', 1),
(2, 1, 'MySQL', 1),
(3, 2, 'MSSQL', 1),
(4, 3, 'Angular', 1),
(5, 4, 'Angular', 1),
(6, 4, 'React', 1),
(7, 8, 'Ionic', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_lenguajes`
--

CREATE TABLE `tm_lenguajes` (
  `len_id` int(11) NOT NULL,
  `len_nom` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_lenguajes`
--

INSERT INTO `tm_lenguajes` (`len_id`, `len_nom`, `est`) VALUES
(1, 'NodeJS', 1),
(2, 'PHP', 1),
(3, 'Angular', 1),
(4, 'Laravel', 1),
(5, 'SQL SERVER', 1),
(6, 'MySQL', 1),
(7, 'React', 1),
(8, 'Ionic', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_socialmedia`
--

CREATE TABLE `tm_socialmedia` (
  `sm_id` int(11) NOT NULL,
  `sm_nom` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `sm_icon1` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `sm_icon2` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `sm_rutaweb` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_socialmedia`
--

INSERT INTO `tm_socialmedia` (`sm_id`, `sm_nom`, `sm_icon1`, `sm_icon2`, `sm_rutaweb`, `est`) VALUES
(1, 'facebook', 'fb', 'social_facebook', 'https://web.facebook.com/Ander.Codex', 1),
(2, 'twitter', 'tw', 'social_twitter', '#', 0),
(3, 'youtube', 'pt', 'social_youtube', 'https://www.youtube.com/AnderCode', 1),
(4, 'instagram', 'in', 'social_instagram', 'https://github.com/Anders87x', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indices de la tabla `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  ADD PRIMARY KEY (`det_id`);

--
-- Indices de la tabla `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  ADD PRIMARY KEY (`len_id`);

--
-- Indices de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  ADD PRIMARY KEY (`sm_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tm_lenguajes`
--
ALTER TABLE `tm_lenguajes`
  MODIFY `len_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tm_socialmedia`
--
ALTER TABLE `tm_socialmedia`
  MODIFY `sm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
