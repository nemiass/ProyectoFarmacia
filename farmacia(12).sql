-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2020 a las 18:23:08
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_usuario`, `nombre`, `apellido`, `dni`, `telefono`) VALUES
(3, 'Admin', 'Admin', '12345678', '12345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `id_catalogo` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`id_catalogo`, `nombre`, `descripcion`) VALUES
(1, 'calculo 4', 'asdfssss'),
(3, 'medicina', 'productos para el malestar'),
(4, 'belleza', 'asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf'),
(5, 'vitaminas y suplementos', 'asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf'),
(6, 'asdf', 'asdf'),
(7, 'leostyle', 'leostyle'),
(8, 'asdf', 'asdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `telefono` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `dni`, `telefono`) VALUES
(24, 'Jaime nehemias', 'Ponce Villaverde', '73546902', '12345678'),
(25, 'princesa', 'diana', '78562358', '12365489'),
(26, 'Andy cesar', 'Perez Gomez', '73586925', '12356845');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_departamento`, `nombre`) VALUES
(1, 'Huanuco'),
(7, 'Callao'),
(8, 'Tacna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos`
--

CREATE TABLE `distritos` (
  `id_distrito` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `distritos`
--

INSERT INTO `distritos` (`id_distrito`, `nombre`, `id_provincia`) VALUES
(11, 'amarilis', 1),
(17, 'huanuco', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_pedido`
--

CREATE TABLE `empleado_pedido` (
  `id_emp_pedido` int(11) NOT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `nombre_farmacia` varchar(30) DEFAULT NULL,
  `precio_total` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `farmacia`
--

CREATE TABLE `farmacia` (
  `id_farmacia` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `id_admin` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `farmacia`
--

INSERT INTO `farmacia` (`id_farmacia`, `nombre`, `ubicacion`, `telefono`, `correo`, `id_admin`) VALUES
(1, 'farmavida', 'leoncio Prado', '912456789', 'farmavida@hotmail.co', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `departamento` varchar(100) NOT NULL,
  `provincia` varchar(250) NOT NULL,
  `distrito` varchar(250) NOT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `monto` double NOT NULL,
  `mensaje` varchar(250) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `fecha`, `fecha_entrega`, `departamento`, `provincia`, `distrito`, `direccion`, `estado`, `monto`, `mensaje`, `id_cliente`) VALUES
(182, '2020-08-28', '2020-09-04', 'Huanuco', 'Huanuco', 'Leoncio Prado', 'jr mi casa', 'entregado', 239, NULL, 24),
(184, '2020-08-28', '2020-08-21', 'Huanuco', 'Huanuco', 'Amarilis', 'jr mi casa ', 'entregado', 15, NULL, 24),
(190, '2020-08-28', '2020-08-29', 'Huanuco', 'Huanuco', 'Huanuco', 'jr arequipa', 'entregado', 140, NULL, 24),
(191, '2020-08-28', '2020-08-29', 'Huanuco', 'Huanuco', 'Amarilis', 'jr casa de andy', 'entregado', 362, NULL, 26),
(192, '2020-08-28', '2020-09-01', 'Huanuco', 'Huanuco', 'Pillco Marca', 'jr arequipa', 'entregado', 140, NULL, 24),
(194, '2020-08-28', '2020-08-29', 'Huanuco', 'Huanuco', 'Amarilis', 'jr mi casa 2020', 'cancelado!', 290, 'se cancela porque quiero', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `id_ped_prod` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido_producto`
--

INSERT INTO `pedido_producto` (`id_ped_prod`, `cantidad`, `id_prod`, `id_pedido`, `id_producto`) VALUES
(147, 1, 19, 182, 19),
(148, 1, 18, 182, 18),
(150, 1, 2, 184, 2),
(172, 1, 1, 190, 1),
(173, 1, 2, 190, 2),
(174, 1, 17, 191, 17),
(175, 1, 18, 191, 18),
(176, 1, 19, 191, 19),
(177, 1, 1, 192, 1),
(178, 1, 2, 192, 2),
(182, 1, 4, 194, 4),
(183, 1, 3, 194, 3),
(184, 3, 2, 194, 2),
(185, 1, 1, 194, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `caracteristicas` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `id_catalogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `caracteristicas`, `img`, `id_catalogo`) VALUES
(1, 'dust1', 125, 'dust', 'public/img/a.jpg', 1),
(2, 'teemo2', 15, 'cdsfsdfsdfsadfsadfsadfsadfs', 'public/img/Derecho-1-1.jpg', 1),
(3, 'teemo3', 20, 'dfassadfsdfsdfasdfsdafsdfdsfgfdgdfsgasdfsdfasdfsfa', 'public/img/teemo3.jpg', 1),
(4, 'teemo4', 100, 'sdfdsfsadfasdfasdf', 'public/img/teemo4.jpg', 1),
(5, 'wuckong', 500, 'fsdfsadfsafsdafsdfsdafsdfsadfsdfsdfsdfsdfsdfsdfsdfsdfsdafdsfds', 'public/img/wuckong.jpg', 1),
(17, 'asdf', 123, 'asdf', 'public/img/a.jpg', 3),
(18, 'shaker', 114, 'asdfasdf', 'public/img/shaker.png', 3),
(19, 'wks', 125, 'asdfasdf', 'public/img/wk.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id_provincia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id_provincia`, `nombre`, `id_departamento`) VALUES
(1, 'Huanuco', 1),
(2, 'Leoncio Prado', 1),
(3, 'Dos de Mayo', 1),
(24, '1111', 7),
(25, '111', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `contrasenia` varchar(72) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `contrasenia`, `tipo`, `dni`) VALUES
(29, 'nemias', '$2y$10$0FBvpQSmY5S1/ocILAok5ujIWXeIWtjmAKjT7OQTRkmkDRtjzPgc6', 'cliente', '12345689'),
(36, 'cora', '$2y$10$ogZ2Zsib7rQzv5aDCyfi9utLiRux.eQOVFvGbB5luugY7teKylTIy', 'empleado', '45689'),
(39, 'sharon', '$2y$10$PVVXBz4Sx8zjfp849n/L7uuBliV9kTBoTXuLCdEuM4zUmadfAauGa', 'cliente', '88888888'),
(52, 'nemiass', '$2y$10$ZDA97Ix1octwLqd68LQfhesLZby87iQlhNyHLCb3nJq3V1/9BDbmq', 'cliente', '73546902'),
(54, 'diana', '$2y$10$khhOuKEC8OtIheq5Rs13HukYSDgZ4AWiybAPYxZPnSOyhSEiB62HW', 'cliente', '78562358'),
(57, 'andy', '$2y$10$/OYodiR0ncNt1ceoDXGyguHZb3hXgSYJVi8UYdVyZ9p6AOG4kmb1e', 'cliente', '73586925'),
(58, 'admin', '$2y$10$uwiGvw7bb3xMOyyagJIjgOT5Ni99xTRcWRFJwNYlalQ3jOyXCIHf2', 'administrador', '12345678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`id_catalogo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD PRIMARY KEY (`id_distrito`),
  ADD KEY `fk_dist_prov` (`id_provincia`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `empleado_pedido`
--
ALTER TABLE `empleado_pedido`
  ADD PRIMARY KEY (`id_emp_pedido`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `farmacia`
--
ALTER TABLE `farmacia`
  ADD PRIMARY KEY (`id_farmacia`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD PRIMARY KEY (`id_ped_prod`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_catalogo` (`id_catalogo`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id_provincia`),
  ADD KEY `fk_prov_dep` (`id_departamento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `id_catalogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `distritos`
--
ALTER TABLE `distritos`
  MODIFY `id_distrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `empleado_pedido`
--
ALTER TABLE `empleado_pedido`
  MODIFY `id_emp_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `farmacia`
--
ALTER TABLE `farmacia`
  MODIFY `id_farmacia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id_ped_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD CONSTRAINT `fk_dist_prov` FOREIGN KEY (`id_provincia`) REFERENCES `provincias` (`id_provincia`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleado_pedido`
--
ALTER TABLE `empleado_pedido`
  ADD CONSTRAINT `empleado_pedido_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE,
  ADD CONSTRAINT `empleado_pedido_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`) ON DELETE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`);

--
-- Filtros para la tabla `farmacia`
--
ALTER TABLE `farmacia`
  ADD CONSTRAINT `farmacia_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `administrador` (`id_usuario`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD CONSTRAINT `pedido_producto_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedido_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogo` (`id_catalogo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD CONSTRAINT `fk_prov_dep` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
