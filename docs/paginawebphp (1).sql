-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2021 a las 04:38:39
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
  `cur_server` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cur_precio` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso`
--

INSERT INTO `tm_curso` (`cur_id`, `cur_titulo`, `cur_subtitulo`, `cur_img`, `cur_url`, `cur_desta`, `cur_server`, `cur_precio`, `fech_crea`, `est`) VALUES
(1, 'Creación de WebService y consumo con POSTMAN (PHP y MySQL)', 'WebService PHP y MySQL', '1.jpg', 'https://www.udemy.com/course/creacion-de-webservice-y-consumo-con-postman-php-y-mysql/learn/lecture/24810572#overview', 1, 'Udemy', 'Gratis', '2021-02-26 21:15:01', 1),
(2, 'Creación de WebService con Node Js y SQL Server', 'WebService con Node Js y SQL Server', '2.png', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/?referralCode=EF79E0DE13556685D727', 1, 'Udemy', 'Gratis', '2021-02-26 21:15:05', 1),
(3, 'Proyecto Mesa de Partes Online (PHP, MVC y JS)', 'PHP, MVC y JS', '3.png', 'https://www.youtube.com/watch?v=wgcrUISn-6Y', 0, 'Youtube', 'Gratis', '2021-03-01 21:15:08', 1),
(4, 'Tutorial Angular - Portafolio Personal Template HTML', 'Angular y Firebase', '4.png', 'https://www.youtube.com/watch?v=nkc9VXDuOTg&t', 0, 'Youtube', 'Gratis', '2021-02-25 21:15:10', 1),
(5, 'CRUD PHP, MySql y JS con MVC', 'PHP, MSQL, MVC y JS', '5.png', 'https://www.youtube.com/watch?v=zGlVP-sOWbc', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:13', 1),
(6, 'Tutorial - Git y GitHub', 'Tutorial - Git y GitHub', '6.png', 'https://www.udemy.com/course/creacion-de-webservice-con-node-js-y-sql-server/learn/lecture/24922234#overview', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:16', 1),
(7, 'Integrar Template Dashboard HTML5 a Laravel', 'HTML5 y Laravel', '7.png', 'https://www.youtube.com/watch?v=DUxdAESy4rg&t', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:20', 1),
(8, 'Sistema Gestión de Tickets HelpDesk con PHP, Mysql y JS - MVC', 'PHP, MySQL, MVC y JS', '8.png', 'https://www.youtube.com/watch?v=dRh9XUHFCt8', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:22', 1),
(9, 'Portal Búsqueda de Empleo - Maquetación de Template HTML5', 'HTML5', '9.png', 'https://www.youtube.com/watch?v=7c_P3Bi_WcQ', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:22', 1),
(10, 'Las mejores plantillas administrador - Admin Dashboard Templates ', 'HTML5', '10.png', 'https://www.youtube.com/watch?v=7tB21PqcNjc&list=PLpcu5DEXEY4VJj3FiDfqX0N0XnIckB8QI&index=1&t', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:22', 1),
(11, 'Creación de WebService API REST con Laravel', 'Laravel y MySQL', '11.png', 'https://www.udemy.com/course/creacion-de-webservice-api-rest-con-laravel/?referralCode=DB7624E5164F5E575453', 1, 'Udemy', 'Gratis', '2021-02-27 21:15:22', 1),
(12, 'Generar Reporte XML Excel con PHP', 'PHP, EXCEL y XML', '12.png', 'https://www.youtube.com/watch?v=bF-ZmMEWwCA&t', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:22', 1),
(13, 'Instalar y Configurar MySQL Workbench', 'MySQL', '13.png', 'https://www.youtube.com/watch?v=TfJO5dGm3_s&t', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:22', 1),
(14, 'Como Configurar Live Server con Xampp', 'Xampp', '14.png', 'https://www.youtube.com/watch?v=wj4-BJUA_3k&t', 0, 'Youtube', 'Gratis', '2021-02-27 21:15:22', 1);

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
(8, 1, 'PHP', 1),
(9, 1, 'MySQL', 1),
(10, 2, 'NodeJS', 1),
(11, 2, 'MSSQL', 1),
(12, 3, 'PHP', 1),
(13, 3, 'MySQL', 1),
(14, 4, 'Angular', 1),
(15, 4, 'Firebase', 1);

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
(3, 'youtube', 'pt', 'social_youtube', 'https://www.youtube.com/AnderCode', 1),
(4, 'instagram', 'in', 'social_instagram', 'https://www.instagram.com/ander_code/', 1);

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
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tm_curso_detalle`
--
ALTER TABLE `tm_curso_detalle`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
