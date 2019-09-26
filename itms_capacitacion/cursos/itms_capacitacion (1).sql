-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2019 a las 00:35:51
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.27

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
-- Estructura de tabla para la tabla `audios`
--

CREATE TABLE `audios` (
  `id_audio` int(10) NOT NULL,
  `audio` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id_documento` int(10) NOT NULL,
  `documento` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `id_multimedia` int(10) NOT NULL,
  `multimedia` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ndocumento` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`id_multimedia`, `multimedia`, `ndocumento`) VALUES
(1, '1.pdf', '1030'),
(6, '3.pdf', '1030'),
(7, '6.pptx', '1030'),
(12, '6.pptx', 'dsdfsdfss'),
(13, '2.pdf', 'dsdfsdfss'),
(14, '1.pdf', 'asdfgh'),
(15, '2.pdf', 'asdfgh'),
(16, '4.pdf', '10301030'),
(17, '6.pptx', '10300301'),
(18, '4.pdf', '10300301'),
(19, '5.pdf', '1030'),
(20, '2.pdf', '1030'),
(21, '1.pdf', '1030'),
(22, '6.pptx', '1030987654'),
(23, '1.pdf', '1030987654'),
(24, '5.pdf', '1030987654'),
(25, '5.pdf', '1030456765'),
(26, '1.pdf', '10307654331'),
(27, '4.pdf', '10301234'),
(28, '2.pdf', '10301234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(10) NOT NULL,
  `tipo_documento` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tipo_documento`, `tipo_documento`) VALUES
(1, 'Tarjeta de identidad'),
(2, 'Cedula de ciudadania'),
(3, 'Cedula de extrangeria'),
(4, 'Pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(250) NOT NULL,
  `ndocumento` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `primer_nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `segundo_nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `primer_apellido` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `segundo_apellido` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo_documento` int(2) NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `ndocumento`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `email`, `tipo_documento`, `password`) VALUES
(1, '1030', 'JEFERSON', 'andres', 'FUENTES', 'alcendra', 'jefersonfuentes1995@gmail.com', 2, '1030'),
(2, '1030686033', 'ANGIE', 'alexandra', 'GUZMAN', 'villalba', 'angie@gmail.com', 3, '1030'),
(4, '10307654331', 'CRISTIAN', 'camilo', 'RODRIGUEZ', 'casas', 'camilo@gmail.com', 1, '1030'),
(6, '1030123321', 'DANIEL', 'felipe', 'PAEZ', 'rojas', 'daniel@gmail.com', 1, '1030'),
(7, '1030456765', 'LAURA', 'milena', 'PEREZ', 'lopez', 'laura@gmail.com', 4, '1030'),
(8, '1030987654', 'LUIS', 'david', 'RAMIREZ', 'amaya', 'luis@gmail,com', 2, '1030'),
(9, '10301030', 'ALEX', 'felipe', 'ROJAS', 'ramirez', 'alex@gmail.com', 0, '1030'),
(10, '10300301', 'MIGUEL', 'angel', 'ARIAS', 'forero', 'miguel@gmail.com', 3, '1030'),
(15, '1030333', 'VASASAS', 'vasasd', 'AASDASD', 'lkjlkf', 'jashjasd@aksjkas.com', 2, '1030'),
(16, '10304', 'DUAKSJA', 'KJH', 'KJH', 'KJHKHKJHKH', 'KJHKJ@KJHJKH.COM', 1, '1030'),
(17, 'dsdfsdfss', '543543', '23424', '12312', '13212', 'asdas', 2, 'alejandra'),
(18, 'asdfgh', 'Seb4stian', 'benjitez', 'ajsdhj', 'hajsda', 'hjasdhjasd.co,m', 4, 'asdfgh'),
(19, '10301234', 'brayan', 'david', 'perez', 'valencia', 'brayan@gmail.com', 2, '1030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id_video` int(10) NOT NULL,
  `video` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`id_audio`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id_multimedia`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `audios`
--
ALTER TABLE `audios`
  MODIFY `id_audio` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id_documento` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id_multimedia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipo_documento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id_video` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
