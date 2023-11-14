-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 13:13:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedidosdelicia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--
CREATE DATABASE `pedidosdelicia`;

USE `pedidosdelicia`;

CREATE TABLE `pedidos` (
  `id` bigint(250) NOT NULL,
  `id_orden` bigint(250) NOT NULL,
  `fecha` date NOT NULL DEFAULT '2023-05-13',
  `importe` decimal(11,2) NOT NULL,
  `tipo_pago` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL DEFAULT 'A confirmar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_orden`, `fecha`, `importe`, `tipo_pago`, `estado`) VALUES
(47, 341, '2023-07-23', 1890.00, 'Tarjeta', 'A confirmar'),
(30, 342, '2023-05-13', 2125.50, 'Transferencia', 'Entregado'),
(54, 343, '2023-05-13', 1594.75, 'Efectivo', 'A confirmar'),
(27, 344, '2023-05-13', 2250.25, 'Transferencia', 'A confirmar');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_orden`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_orden` bigint(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
