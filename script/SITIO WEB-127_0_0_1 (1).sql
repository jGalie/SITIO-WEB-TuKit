-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 02:08:45
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gauna_julieta`
--
CREATE DATABASE IF NOT EXISTS `gauna_julieta` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gauna_julieta`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--
-- Creación: 24-09-2023 a las 03:36:07
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripcion`) VALUES
(1, 'admin'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 24-09-2023 a las 03:43:39
-- Última actualización: 08-11-2023 a las 22:20:09
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(1, 'Lucia', 'Cardona', 'lu_cardona17', 'cardona1706@gmail.com', '$2y$10$n7LR1rQ3ZVnLR101PSntbOeBM54QCt1swLW4xa9WucjtfEvJPbRF6', 2, 'NO'),
(2, 'Carla', 'Vallejos', 'vallejosCarla', 'ca-va-lle03@gmail.com', '$2y$10$AMjYNZZjn7LdjCQirV8fjOUWxwyCu4POrO.7LAL8Z8nsHNz0AQOHS', 2, 'NO'),
(3, 'Agustin', 'Fernandez', 'agus_el+kpo', 'aagustinfernandez123@gmail.com', '$2y$10$OivzQtQJsXQfcLSwQL3luO63A5v9w8pus9Sl8PSBwoOoO2PBIrjYS', 2, 'NO'),
(4, 'Damian', 'Fernandez', 'damian_fer1', 'damian123@gmail.com', '$2y$10$qEfbc5Vh8YPNY96Iui6rxuaNJH3yNdVZbt7Vb/U7CTbNRjDiCd9Ru', 2, 'NO'),
(5, 'Julieta Itati', 'Gauna', 'juli.gauna', 'gaunjuli02@gmail.com', '$2y$10$fnZoS5gowS96wy6AnV1RXeJ6nHtqHLC0lXmUcTs1Soh/QwobLxv6S', 2, 'NO'),
(6, 'Lorena', 'Peña', 'peña09', 'lorepea123@gmail.com', '$2y$10$uJ1KdUSJhLhaLlsYeUhLD.xK7.zzAjZXaD6AWvUW7wWeszwd5A/tm', 2, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `perfil_id` (`perfil_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id_perfiles`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
