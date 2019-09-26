-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2019 a las 00:58:26
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `itms_capacitacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id_archivo` int(6) NOT NULL,
  `tipo_archivo` int(2) NOT NULL,
  `archivo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id_archivo`, `tipo_archivo`, `archivo`, `documento`, `nombres`, `apellidos`) VALUES
(1, 3, 'Telemedicina1.pdf', '1030659553', 'Jeferson', 'Fuentes Alcendra'),
(2, 3, 'telemedicina2.pdf', '1030659553', 'Jeferson', 'Fuentes Alcendra'),
(12, 3, 'telemedicina3.pdf', '1030686033', 'Angie Alexandra', 'Guzman Villalba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_archivo`
--

CREATE TABLE `tipo_archivo` (
  `id_tipo_archivo` int(2) NOT NULL,
  `archivo` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_archivo`
--

INSERT INTO `tipo_archivo` (`id_tipo_archivo`, `archivo`) VALUES
(1, 'Audio (.mp3 .wav)'),
(2, 'Video (.mp4 .avi .wmv)'),
(3, 'Multimedia (.pdf .swf .ppsx)'),
(4, 'Documento (.docx .xlsx .txt)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(6) NOT NULL,
  `tipo_documento` varchar(22) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tipo_documento`, `tipo_documento`) VALUES
(1, 'Cédula de ciudadanía'),
(2, 'Tarjeta de identidad'),
(3, 'Cédula de extranjería '),
(4, 'Pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(6) NOT NULL,
  `tipo_documento` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `tipo_documento`, `documento`, `nombres`, `apellidos`, `correo`, `password`) VALUES
(1, '1', '1030659553', 'Jeferson', 'Fuentes Alcendra', 'jefersonfuentes1995@gmail.com', '12345'),
(2, '1', '1030686033', 'Angie Alexandra', 'Guzman Villalba', 'angie@gmail.com', '12345'),
(4, '1', '1234567890', 'Paola Andrea', 'Suarez Perez', 'paola@gmail.com', '12345'),
(7, '1', '0987654321', 'Jose Antonio', 'Rodriguez Lopez', 'jose.antonio@hotmail.com', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `tipo_archivo`
--
ALTER TABLE `tipo_archivo`
  ADD PRIMARY KEY (`id_tipo_archivo`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id_archivo` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipo_documento` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
