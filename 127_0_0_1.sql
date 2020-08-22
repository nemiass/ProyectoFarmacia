-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2020 a las 06:26:33
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(40) NOT NULL,
  `ape_usuario` varchar(40) NOT NULL,
  `contra_usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nom_usuario`, `ape_usuario`, `contra_usuario`) VALUES
(22, 'jordy manco', 'el kcha tias', '123'),
(28, 'jose', 'ty campos', '123'),
(29, 'bill', 'draker', '123'),
(30, 'jose', 'd', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Base de datos: `cursophp`
--
CREATE DATABASE IF NOT EXISTS `cursophp` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `cursophp`;
--
-- Base de datos: `farmacia`
--
CREATE DATABASE IF NOT EXISTS `farmacia` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `farmacia`;

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
(5, 'vitaminas y suplementos', 'asdfasdfasdfasdfasdfasdfasdfasdfasdfasdf');

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
(1, 'cristina', 'dasdasdas', '12345678', '666666666'),
(4, 'nemias', 'ponce', '73546902', '12345678'),
(5, 'nemias', 'nemias', 'nemias', 'nemias'),
(6, 'nemias', 'nemias', '45698', '123456'),
(7, 'cristina', 'rivera', '22222222', '12345678'),
(8, 'hola', 'hola', '789564', '12345678'),
(9, 'go', 'goes', '44444444', '456892'),
(11, 'nemias', 'nemias', '12345689', '12345678'),
(12, 'flor', 'himena', '88956325', '88888569'),
(16, 'sharon', 'sharon', '88888888', '123564');

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

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `apellido`, `dni`, `telefono`) VALUES
(1, 'jordy', 'gomez', '14785236', '91245678'),
(10, 'asdf', 'asdf', '12345678', '123456'),
(11, 'jose', 'alcedo', '66666665', '912456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_pedido`
--

CREATE TABLE `empleado_pedido` (
  `id_emp_pedido` int(11) NOT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado_pedido`
--

INSERT INTO `empleado_pedido` (`id_emp_pedido`, `id_empleado`, `id_pedido`) VALUES
(1, 1, 1),
(9, 11, 133),
(10, 11, 131),
(11, 11, 4);

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
  `direccion` varchar(30) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `fecha`, `fecha_entrega`, `direccion`, `estado`, `id_cliente`) VALUES
(1, '2020-08-06', '2020-08-20', 'fasfasf', 'entregado', 1),
(3, '2020-08-14', '2020-08-15', 'jr asdfasd', 'entregado', 12),
(4, '2020-08-15', '2020-08-16', 'alomilla roblez', 'entregado', 1),
(130, '2020-08-20', '2020-08-25', 'sharon2', 'pendiente', 16),
(131, '2020-08-20', '2020-08-30', 'arcanas', 'entregado', 16),
(132, '2020-08-20', '2020-08-29', 'sharon 2', 'pendiente', 16),
(133, '2020-08-20', '0000-00-00', 'arcanas', 'entregado', 16),
(134, '2020-08-20', '2020-09-11', 'jr aviacion', 'pendiente', 16),
(135, '2020-08-20', '2020-08-30', 'yaaa', 'pendiente', 16);

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
(1, 20, 1, 1, 1),
(2, 4, 1, 3, 1),
(3, 2, 5, 3, 5),
(4, 2, 1, 4, 1),
(68, 1, 1, 130, 1),
(69, 1, 18, 131, 18),
(70, 2, 19, 131, 19),
(71, 2, 2, 132, 2),
(72, 1, 4, 132, 4),
(73, 1, 18, 133, 18),
(74, 1, 19, 133, 19),
(75, 2, 18, 134, 18),
(76, 1, 2, 135, 2),
(77, 1, 3, 135, 3);

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
(33, 'empleado', '$2y$10$JSFSPRS48fAqiLgrVOBfF.d3Xc26tnnQgatx7LF6RVrjbrr0cYZya', 'empleado', '66666665'),
(36, 'cora', '$2y$10$ogZ2Zsib7rQzv5aDCyfi9utLiRux.eQOVFvGbB5luugY7teKylTIy', 'empleado', '45689'),
(39, 'sharon', '$2y$10$PVVXBz4Sx8zjfp849n/L7uuBliV9kTBoTXuLCdEuM4zUmadfAauGa', 'cliente', '88888888'),
(44, 'youtube', '$2y$10$ywPqB9T8JZjixIaEAIlKpeZWlGluiIJ3TQ4NQ17WXIHeD2E9Leb1y', 'administrador', '12345678'),
(45, 'admin', 'admin', 'administrador', '12345678');

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
  MODIFY `id_catalogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `empleado_pedido`
--
ALTER TABLE `empleado_pedido`
  MODIFY `id_emp_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id_ped_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

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
-- Base de datos: `ffff`
--
CREATE DATABASE IF NOT EXISTS `ffff` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ffff`;
--
-- Base de datos: `horario`
--
CREATE DATABASE IF NOT EXISTS `horario` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `horario`;
--
-- Base de datos: `mostrar`
--
CREATE DATABASE IF NOT EXISTS `mostrar` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mostrar`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_usuario`
--

CREATE TABLE `datos_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos_usuario`
--

INSERT INTO `datos_usuario` (`id`, `nombre`, `apellido`, `direccion`) VALUES
(3, 'teresa', 'martin', 'serrano 2'),
(4, 'jose', 'vastis', 'lorez'),
(13, 'bill', 'morales ', 'DAMAZO'),
(18, 'bill', 'asdf', NULL),
(19, 'bill', 'asdf', 'asdf'),
(20, 'elver', 'GA ', 'LARGA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `login` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`login`, `password`) VALUES
('jose', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `edad`) VALUES
(1, 'bill', 'morales', 20),
(2, 'daniel', 'alvarez', 32),
(3, 'jose', 'socas', 25),
(4, 'jose', 'campos', 23);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_usuario`
--
ALTER TABLE `datos_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_usuario`
--
ALTER TABLE `datos_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de datos: `neptuno`
--
CREATE DATABASE IF NOT EXISTS `neptuno` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `neptuno`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `nombrecategoria` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `nombrecategoria`, `descripcion`) VALUES
(1, 'Bebidas', 'Gaseosas, café, té, cervezas y maltas'),
(2, 'Condimentos', 'Salsas dulces y picantes, delicias, comida para untar y aderezos'),
(3, 'Repostería', 'Postres, dulces y pan dulce'),
(4, 'Lácteos', 'Quesos'),
(5, 'Granos/Cereales', 'Pan, galletas, pasta y cereales'),
(6, 'Carnes', 'Carnes preparadas'),
(7, 'Frutas/Verduras', 'Frutas secas y queso de soja'),
(8, 'Pescado/Marisco', 'Pescados, mariscos y algas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` varchar(5) NOT NULL,
  `NombreCompañia` varchar(100) NOT NULL,
  `NombreContacto` varchar(100) DEFAULT NULL,
  `CargoContacto` varchar(100) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Ciudad` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `CodPostal` varchar(100) DEFAULT NULL,
  `Pais` varchar(100) DEFAULT NULL,
  `Telefono` varchar(30) DEFAULT NULL,
  `Fax` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `NombreCompañia`, `NombreContacto`, `CargoContacto`, `Direccion`, `Ciudad`, `Region`, `CodPostal`, `Pais`, `Telefono`, `Fax`) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Representante de ventas', 'Obere Str. 57', 'Berlín', NULL, '12209', 'Alemania', '030-0074321', '030-0076545'),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Propietario', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'México', '(5) 555-4729', '(5) 555-3745'),
('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Propietario', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México', '(5) 555-3932', NULL),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'Representante de ventas', '120 Hanover Sq.', 'Londres', NULL, 'WA1 1DP', 'Reino Unido', '(71) 555-7788', '(71) 555-6750'),
('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Administrador de pedidos', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia', '0921-12 34 65', '0921-12 34 67'),
('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Representante de ventas', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania', '0621-08460', '0621-08924'),
('BLONP', 'Blondel père et fils', 'Frédérique Citeaux', 'Gerente de marketing', '24, place Kléber', 'Estrasburgo', NULL, '67000', 'Francia', '88.60.15.31', '88.60.15.32'),
('BOLID', 'Bólido Comidas preparadas', 'Martín Sommer', 'Propietario', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'España', '(91) 555 22 82', '(91) 555 91 99'),
('BONAP', 'Bon app\'', 'Laurence Lebihan', 'Propietario', '12, rue des Bouchers', 'Marsella', NULL, '13008', 'Francia', '91.24.45.40', '91.24.45.41'),
('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Gerente de contabilidad', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá', '(604) 555-4729', '(604) 555-3745'),
('BSBEV', 'B\'s Beverages', 'Victoria Ashworth', 'Representante de ventas', 'Fauntleroy Circus', 'Londres', NULL, 'EC2 5NT', 'Reino Unido', '(71) 555-1212', NULL),
('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Agente de ventas', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 135-5555', '(1) 135-4892'),
('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Gerente de marketing', 'Sierras de Granada 9993', 'México D.F.', NULL, '05022', 'México', '(5) 555-3392', '(5) 555-7293'),
('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Propietario', 'Hauptstr. 29', 'Berna', NULL, '3012', 'Suiza', '0452-076545', NULL),
('COMMI', 'Comércio Mineiro', 'Pedro Afonso', 'Asistente de ventas', 'Av. dos Lusíadas, 23', 'São Paulo', 'SP', '05432-043', 'Brasil', '(11) 555-7647', NULL),
('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Representante de ventas', 'Berkeley Gardens12  Brewery ', 'Londres', NULL, 'WX1 6LT', 'Reino Unido', '(71) 555-2282', '(71) 555-9199'),
('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Administrador de pedidos', 'Walserweg 21', 'Aachen', NULL, '52066', 'Alemania', '0241-039123', '0241-059428'),
('DUMON', 'Du monde entier', 'Janine Labrune', 'Propietario', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'Francia', '40.67.88.88', '40.67.89.89'),
('EASTC', 'Eastern Connection', 'Ann Devon', 'Agente de ventas', '35 King George', 'Londres', NULL, 'WX3 6FW', 'Reino Unido', '(71) 555-0297', '(71) 555-3373'),
('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Gerente de ventas', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', '7675-3425', '7675-3426'),
('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Asistente de marketing', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil', '(11) 555-9857', NULL),
('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Gerente de contabilidad', 'C/ Moralzarzal, 86', 'Madrid', NULL, '28034', 'España', '(91) 555 94 44', '(91) 555 55 93'),
('FOLIG', 'Folies gourmandes', 'Martine Rancé', 'Asistente de agente de ventas', '184, chaussée de Tournai', 'Lille', NULL, '59000', 'Francia', '20.16.10.16', '20.16.10.17'),
('FOLKO', 'Folk och fä HB', 'Maria Larsson', 'Propietario', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia', '0695-34 67 21', NULL),
('FRANK', 'Frankenversand', 'Peter Franken', 'Gerente de marketing', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania', '089-0877310', '089-0877451'),
('FRANR', 'France restauration', 'Carine Schmitt', 'Gerente de marketing', '54, rue Royale', 'Nantes', NULL, '44000', 'Francia', '40.32.21.21', '40.32.21.20'),
('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Representante de ventas', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia', '011-4988260', '011-4988261'),
('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Gerente de ventas', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535'),
('GALED', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Gerente de marketing', 'Rambla de Cataluña, 23', 'Barcelona', NULL, '08022', 'España', '(93) 203 4560', '(93) 203 4561'),
('GODOS', 'Godos Cocina Típica', 'José Pedro Freyre', 'Gerente de ventas', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'España', '(95) 555 82 82', NULL),
('GOURL', 'Gourmet Lanchonetes', 'André Fonseca', 'Asistente de ventas', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brasil', '(11) 555-9482', NULL),
('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Gerente de marketing', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos', '(503) 555-7555', NULL),
('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Propietario', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397'),
('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Gerente de contabilidad', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brasil', '(21) 555-0091', '(21) 555-8765'),
('HILAA', 'HILARIÓN-Abastos', 'Carlos Hernández', 'Representante de ventas', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948'),
('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Representante de ventas', 'City Center Plaza516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos', '(503) 555-6874', '(503) 555-2376'),
('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Asistente de ventas', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda', '2967 542', '2967 3333'),
('ISLAT', 'Island Trading', 'Helen Bennett', 'Gerente de marketing', 'Garden HouseCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido', '(198) 555-8888', NULL),
('KOENE', 'Königlich Essen', 'Philip Cramer', 'Asistente de ventas', 'Maubelstr. 90', 'Brandenburgo', NULL, '14776', 'Alemania', '0555-09876', NULL),
('LACOR', 'La corne d\'abondance', 'Daniel Tonini', 'Representante de ventas', '67, avenue de l\'Europe', 'Versalles', NULL, '78000', 'Francia', '30.59.84.10', '30.59.85.11'),
('LAMAI', 'La maison d\'Asie', 'Annette Roulet', 'Gerente de ventas', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia', '61.77.61.10', '61.77.61.11'),
('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Asistente de marketing', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá', '(604) 555-3392', '(604) 555-7293'),
('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Gerente de marketing', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'Estados Unidos', '(509) 555-7969', '(509) 555-6221'),
('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Representante de ventas', 'Magazinweg 7', 'Francfurt', NULL, '60528', 'Alemania', '069-0245984', '069-0245874'),
('LETSS', 'Let\'s Stop N Shop', 'Jaime Yorres', 'Propietario', '87 Polk St.Suite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos', '(415) 555-5938', NULL),
('LILAS', 'LILA-Supermercado', 'Carlos González', 'Gerente de contabilidad', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256'),
('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Propietario', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93'),
('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Gerente de ventas', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos', '(503) 555-9573', '(503) 555-9646'),
('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Gerente de marketing', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia', '035-640230', '035-640231'),
('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Agente de ventas', 'Rue Joseph-Bens 532', 'Bruselas', NULL, 'B-1180', 'Bélgica', '(02) 201 24 67', '(02) 201 24 68'),
('MEREP', 'Mère Paillarde', 'Jean Fresnière', 'Asistente de marketing', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá', '(514) 555-8054', '(514) 555-8055'),
('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Asistente de marketing', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Alemania', '0342-023176', NULL),
('NORTS', 'North/South', 'Simon Crowther', 'Asistente de ventas', 'South House300 Queensbridge', 'Londres', NULL, 'SW7 1RZ', 'Reino Unido', '(71) 555-7733', '(71) 555-2530'),
('OCEAN', 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Agente de ventas', 'Ing. Gustavo Moncada 8585Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 135-5333', '(1) 135-5535'),
('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Representante de ventas', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos', '(907) 555-7584', '(907) 555-2880'),
('OTTIK', 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Propietario', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania', '0221-0644327', '0221-0765721'),
('PARIS', 'Paris spécialités', 'Marie Bertrand', 'Propietario', '265, boulevard Charonne', 'París', NULL, '75012', 'Francia', '(1) 42.34.22.66', '(1) 42.34.22.77'),
('PERIC', 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Representante de ventas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México', '(5) 552-3745', '(5) 545-3745'),
('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Gerente de ventas', 'Geislweg 14', 'Salzburgo', NULL, '5020', 'Austria', '6562-9722', '6562-9723'),
('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Representante de ventas', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal', '(1) 356-5634', NULL),
('QUEDE', 'Que Delícia', 'Bernardo Batista', 'Gerente de contabilidad', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brasil', '(21) 555-4252', '(21) 555-4545'),
('QUEEN', 'Queen Cozinha', 'Lúcia Carvalho', 'Asistente de marketing', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil', '(11) 555-1189', NULL),
('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Gerente de contabilidad', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania', '0372-035188', NULL),
('RANCH', 'Rancho grande', 'Sergio Gutiérrez', 'Representante de ventas', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 123-5555', '(1) 123-5556'),
('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Representante agente ventas', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos', '(505) 555-5939', '(505) 555-3620'),
('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Asistente de ventas', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia', '0522-556721', '0522-556722'),
('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Asistente de agente de ventas', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brasil', '(21) 555-3412', NULL),
('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Gerente de ventas', 'Grenzacherweg 237', 'Génova', NULL, '1203', 'Suiza', '0897-034214', NULL),
('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Gerente de contabilidad', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'España', '(91) 745 6200', '(91) 745 6210'),
('SANTG', 'Santé Gourmet', 'Jonas Bergulfsen', 'Propietario', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega', '07-98 92 35', '07-98 92 47'),
('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Representante de ventas', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos', '(208) 555-8097', NULL),
('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Gerente de ventas', '90 Wadhurst Rd.', 'Londres', NULL, 'OX15 4NB', 'Reino Unido', '(71) 555-1717', '(71) 555-5646'),
('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Propietario', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca', '31 12 34 56', '31 13 35 57'),
('SPECD', 'Spécialités du monde', 'Dominique Perrier', 'Gerente de marketing', '25, rue Lauriston', 'París', NULL, '75016', 'Francia', '(1) 47.55.60.10', '(1) 47.55.60.20'),
('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Gerente de ventas', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos', '(307) 555-4680', '(307) 555-6525'),
('SUPRD', 'Suprêmes délices', 'Pascale Cartrain', 'Gerente de contabilidad', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Bélgica', '(071) 23 67 22 20', '(071) 23 67 22 21'),
('THEBI', 'The Big Cheese', 'Liz Nixon', 'Gerente de marketing', '89 Jefferson WaySuite 2', 'Portland', 'OR', '97201', 'Estados Unidos', '(503) 555-3612', NULL),
('THECR', 'The Cracker Box', 'Liu Wong', 'Asistente de marketing', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'Estados Unidos', '(406) 555-5834', '(406) 555-8083'),
('TOMSP', 'Toms Spezialitäten', 'Karin Josephs', 'Gerente de marketing', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania', '0251-031259', '0251-035695'),
('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Propietario', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México', '(5) 555-2933', NULL),
('TRADH', 'Tradição Hipermercados', 'Anabela Domingues', 'Representante de ventas', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil', '(11) 555-2167', '(11) 555-2168'),
('TRAIH', 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', 'Asistente de ventas', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos', '(206) 555-8257', '(206) 555-2174'),
('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Gerente de ventas', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca', '86 21 32 43', '86 22 33 44'),
('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Agente de ventas', '2, rue du Commerce', 'Lion', NULL, '69004', 'Francia', '78.32.54.86', '78.32.54.87'),
('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Gerente de contabilidad', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'Francia', '26.47.15.10', '26.47.15.11'),
('WANDK', 'Die Wandernde Kuh', 'Rita Müller', 'Representante de ventas', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania', '0711-020361', '0711-035428'),
('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Gerente de contabilidad', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia', '981-443655', '981-443655'),
('WELLI', 'Wellington Importadora', 'Paula Parente', 'Gerente de ventas', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil', '(14) 555-8122', NULL),
('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Propietario', '305 - 14th Ave. S.Suite 3B', 'Seattle', 'WA', '98128', 'Estados Unidos', '(206) 555-4112', '(206) 555-4115'),
('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Prop./Asistente marketing', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia', '90-224 8858', '90-224 8858'),
('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Propietario', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Polonia', '(26) 642-7012', '(26) 642-7012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compañiasdeenvios`
--

CREATE TABLE `compañiasdeenvios` (
  `idCompañiaEnvios` int(11) NOT NULL,
  `nombreCompañia` varchar(40) NOT NULL,
  `telefono` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compañiasdeenvios`
--

INSERT INTO `compañiasdeenvios` (`idCompañiaEnvios`, `nombreCompañia`, `telefono`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesdepedidos`
--

CREATE TABLE `detallesdepedidos` (
  `idpedido` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `preciounidad` decimal(10,0) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descuento` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detallesdepedidos`
--

INSERT INTO `detallesdepedidos` (`idpedido`, `idproducto`, `preciounidad`, `cantidad`, `descuento`) VALUES
(10248, 11, '14', 12, '0'),
(10248, 42, '10', 10, '0'),
(10248, 72, '35', 5, '0'),
(10249, 14, '19', 9, '0'),
(10249, 51, '42', 40, '0'),
(10250, 41, '8', 10, '0'),
(10250, 51, '42', 35, '0'),
(10250, 65, '17', 15, '0'),
(10251, 22, '17', 6, '0'),
(10251, 57, '16', 15, '0'),
(10251, 65, '17', 20, '0'),
(10252, 20, '65', 40, '0'),
(10252, 33, '2', 25, '0'),
(10252, 60, '27', 40, '0'),
(10253, 31, '10', 20, '0'),
(10253, 39, '14', 42, '0'),
(10253, 49, '16', 40, '0'),
(10254, 24, '4', 15, '0'),
(10254, 55, '19', 21, '0'),
(10254, 74, '8', 21, '0'),
(10255, 2, '15', 20, '0'),
(10255, 16, '14', 35, '0'),
(10255, 36, '15', 25, '0'),
(10255, 59, '44', 30, '0'),
(10256, 53, '26', 15, '0'),
(10256, 77, '10', 12, '0'),
(10257, 27, '35', 25, '0'),
(10257, 39, '14', 6, '0'),
(10257, 77, '10', 15, '0'),
(10258, 2, '15', 50, '0'),
(10258, 5, '17', 65, '0'),
(10258, 32, '26', 6, '0'),
(10259, 21, '8', 10, '0'),
(10259, 37, '21', 1, '0'),
(10260, 41, '8', 16, '0'),
(10260, 57, '16', 50, '0'),
(10260, 62, '39', 15, '0'),
(10260, 70, '12', 21, '0'),
(10261, 21, '8', 20, '0'),
(10261, 35, '14', 20, '0'),
(10262, 5, '17', 12, '0'),
(10262, 7, '24', 15, '0'),
(10262, 56, '30', 2, '0'),
(10263, 16, '14', 60, '0'),
(10263, 24, '4', 28, '0'),
(10263, 30, '21', 60, '0'),
(10263, 74, '8', 36, '0'),
(10264, 2, '15', 35, '0'),
(10264, 41, '8', 25, '0'),
(10265, 17, '31', 30, '0'),
(10265, 70, '12', 20, '0'),
(10266, 12, '30', 12, '0'),
(10267, 40, '15', 50, '0'),
(10267, 59, '44', 70, '0'),
(10267, 76, '14', 15, '0'),
(10268, 29, '99', 10, '0'),
(10268, 72, '28', 4, '0'),
(10269, 33, '2', 60, '0'),
(10269, 72, '28', 20, '0'),
(10270, 36, '15', 30, '0'),
(10270, 43, '37', 25, '0'),
(10271, 33, '2', 24, '0'),
(10272, 20, '65', 6, '0'),
(10272, 31, '10', 40, '0'),
(10272, 72, '28', 24, '0'),
(10273, 10, '25', 24, '0'),
(10273, 31, '10', 15, '0'),
(10273, 33, '2', 20, '0'),
(10273, 40, '15', 60, '0'),
(10273, 76, '14', 33, '0'),
(10274, 71, '17', 20, '0'),
(10274, 72, '28', 7, '0'),
(10275, 24, '4', 12, '0'),
(10275, 59, '44', 6, '0'),
(10276, 10, '25', 15, '0'),
(10276, 13, '5', 10, '0'),
(10277, 28, '36', 20, '0'),
(10277, 62, '39', 12, '0'),
(10278, 44, '16', 16, '0'),
(10278, 59, '44', 15, '0'),
(10278, 63, '35', 8, '0'),
(10278, 73, '12', 25, '0'),
(10279, 17, '31', 15, '0'),
(10280, 24, '4', 12, '0'),
(10280, 55, '19', 20, '0'),
(10280, 75, '6', 30, '0'),
(10281, 19, '7', 1, '0'),
(10281, 24, '4', 6, '0'),
(10281, 35, '14', 4, '0'),
(10282, 30, '21', 6, '0'),
(10282, 57, '16', 2, '0'),
(10283, 15, '12', 20, '0'),
(10283, 19, '7', 18, '0'),
(10283, 60, '27', 35, '0'),
(10283, 72, '28', 3, '0'),
(10284, 27, '35', 15, '0'),
(10284, 44, '16', 21, '0'),
(10284, 60, '27', 20, '0'),
(10284, 67, '11', 5, '0'),
(10285, 1, '14', 45, '0'),
(10285, 40, '15', 40, '0'),
(10285, 53, '26', 36, '0'),
(10286, 35, '14', 100, '0'),
(10286, 62, '39', 40, '0'),
(10287, 16, '14', 40, '0'),
(10287, 34, '11', 20, '0'),
(10287, 46, '10', 15, '0'),
(10288, 54, '6', 10, '0'),
(10288, 68, '10', 3, '0'),
(10289, 3, '8', 30, '0'),
(10289, 64, '27', 9, '0'),
(10290, 5, '17', 20, '0'),
(10290, 29, '99', 15, '0'),
(10290, 49, '16', 15, '0'),
(10290, 77, '10', 10, '0'),
(10291, 13, '5', 20, '0'),
(10291, 44, '16', 24, '0'),
(10291, 51, '42', 2, '0'),
(10292, 20, '65', 20, '0'),
(10293, 18, '50', 12, '0'),
(10293, 24, '4', 10, '0'),
(10293, 63, '35', 5, '0'),
(10293, 75, '6', 6, '0'),
(10294, 1, '14', 18, '0'),
(10294, 17, '31', 15, '0'),
(10294, 43, '37', 15, '0'),
(10294, 60, '27', 21, '0'),
(10294, 75, '6', 6, '0'),
(10295, 56, '30', 4, '0'),
(10296, 11, '17', 12, '0'),
(10296, 16, '14', 30, '0'),
(10296, 69, '29', 15, '0'),
(10297, 39, '14', 60, '0'),
(10297, 72, '28', 20, '0'),
(10298, 2, '15', 40, '0'),
(10298, 36, '15', 40, '0'),
(10298, 59, '44', 30, '0'),
(10298, 62, '39', 15, '0'),
(10299, 19, '7', 15, '0'),
(10299, 70, '12', 20, '0'),
(10300, 66, '14', 30, '0'),
(10300, 68, '10', 20, '0'),
(10301, 40, '15', 10, '0'),
(10301, 56, '30', 20, '0'),
(10302, 17, '31', 40, '0'),
(10302, 28, '36', 28, '0'),
(10302, 43, '37', 12, '0'),
(10303, 40, '15', 40, '0'),
(10303, 65, '17', 30, '0'),
(10303, 68, '10', 15, '0'),
(10304, 49, '16', 30, '0'),
(10304, 59, '44', 10, '0'),
(10304, 71, '17', 2, '0'),
(10305, 18, '50', 25, '0'),
(10305, 29, '99', 25, '0'),
(10305, 39, '14', 30, '0'),
(10306, 30, '21', 10, '0'),
(10306, 53, '26', 10, '0'),
(10306, 54, '6', 5, '0'),
(10307, 62, '39', 10, '0'),
(10307, 68, '10', 3, '0'),
(10308, 69, '29', 1, '0'),
(10308, 70, '12', 5, '0'),
(10309, 4, '18', 20, '0'),
(10309, 6, '20', 30, '0'),
(10309, 42, '11', 2, '0'),
(10309, 43, '37', 20, '0'),
(10309, 71, '17', 3, '0'),
(10310, 16, '14', 10, '0'),
(10310, 62, '39', 5, '0'),
(10311, 42, '11', 6, '0'),
(10311, 69, '29', 7, '0'),
(10312, 28, '36', 4, '0'),
(10312, 43, '37', 24, '0'),
(10312, 53, '26', 20, '0'),
(10312, 75, '6', 10, '0'),
(10313, 36, '15', 12, '0'),
(10314, 32, '26', 40, '0'),
(10314, 58, '11', 30, '0'),
(10314, 62, '39', 25, '0'),
(10315, 34, '11', 14, '0'),
(10315, 70, '12', 30, '0'),
(10316, 41, '8', 10, '0'),
(10316, 62, '39', 70, '0'),
(10317, 1, '14', 20, '0'),
(10318, 41, '8', 20, '0'),
(10318, 76, '14', 6, '0'),
(10319, 17, '31', 8, '0'),
(10319, 28, '36', 14, '0'),
(10319, 76, '14', 30, '0'),
(10320, 71, '17', 30, '0'),
(10321, 35, '14', 10, '0'),
(10322, 52, '6', 20, '0'),
(10323, 15, '12', 5, '0'),
(10323, 25, '11', 4, '0'),
(10323, 39, '14', 4, '0'),
(10324, 16, '14', 21, '0'),
(10324, 35, '14', 70, '0'),
(10324, 46, '10', 30, '0'),
(10324, 59, '44', 40, '0'),
(10324, 63, '35', 80, '0'),
(10325, 6, '20', 6, '0'),
(10325, 13, '5', 12, '0'),
(10325, 14, '19', 9, '0'),
(10325, 31, '10', 4, '0'),
(10325, 72, '28', 40, '0'),
(10326, 4, '18', 24, '0'),
(10326, 57, '16', 16, '0'),
(10326, 75, '6', 50, '0'),
(10327, 2, '15', 25, '0'),
(10327, 11, '17', 50, '0'),
(10327, 30, '21', 35, '0'),
(10327, 58, '11', 30, '0'),
(10328, 59, '44', 9, '0'),
(10328, 65, '17', 40, '0'),
(10328, 68, '10', 10, '0'),
(10329, 19, '7', 10, '0'),
(10329, 30, '21', 8, '0'),
(10329, 38, '211', 20, '0'),
(10329, 56, '30', 12, '0'),
(10330, 26, '25', 50, '0'),
(10330, 72, '28', 25, '0'),
(10331, 54, '6', 15, '0'),
(10332, 18, '50', 40, '0'),
(10332, 42, '11', 10, '0'),
(10332, 47, '8', 16, '0'),
(10333, 14, '19', 10, '0'),
(10333, 21, '8', 10, '0'),
(10333, 71, '17', 40, '0'),
(10334, 52, '6', 8, '0'),
(10334, 68, '10', 10, '0'),
(10335, 2, '15', 7, '0'),
(10335, 31, '10', 25, '0'),
(10335, 32, '26', 6, '0'),
(10335, 51, '42', 48, '0'),
(10336, 4, '18', 18, '0'),
(10337, 23, '7', 40, '0'),
(10337, 26, '25', 24, '0'),
(10337, 36, '15', 20, '0'),
(10337, 37, '21', 28, '0'),
(10337, 72, '28', 25, '0'),
(10338, 17, '31', 20, '0'),
(10338, 30, '21', 15, '0'),
(10339, 4, '18', 10, '0'),
(10339, 17, '31', 70, '0'),
(10339, 62, '39', 28, '0'),
(10340, 18, '50', 20, '0'),
(10340, 41, '8', 12, '0'),
(10340, 43, '37', 40, '0'),
(10341, 33, '2', 8, '0'),
(10341, 59, '44', 9, '0'),
(10342, 2, '15', 24, '0'),
(10342, 31, '10', 56, '0'),
(10342, 36, '15', 40, '0'),
(10342, 55, '19', 40, '0'),
(10343, 64, '27', 50, '0'),
(10343, 68, '10', 4, '0'),
(10343, 76, '14', 15, '0'),
(10344, 4, '18', 35, '0'),
(10344, 8, '32', 70, '0'),
(10345, 8, '32', 70, '0'),
(10345, 19, '7', 80, '0'),
(10345, 42, '11', 9, '0'),
(10346, 17, '31', 36, '0'),
(10346, 56, '30', 20, '0'),
(10347, 25, '11', 10, '0'),
(10347, 39, '14', 50, '0'),
(10347, 40, '15', 4, '0'),
(10347, 75, '6', 6, '0'),
(10348, 1, '14', 15, '0'),
(10348, 23, '7', 25, '0'),
(10349, 54, '6', 24, '0'),
(10350, 50, '13', 15, '0'),
(10350, 69, '29', 18, '0'),
(10351, 38, '211', 20, '0'),
(10351, 41, '8', 13, '0'),
(10351, 44, '16', 77, '0'),
(10351, 65, '17', 10, '0'),
(10352, 24, '4', 10, '0'),
(10352, 54, '6', 20, '0'),
(10353, 11, '17', 12, '0'),
(10353, 38, '211', 50, '0'),
(10354, 1, '14', 12, '0'),
(10354, 29, '99', 4, '0'),
(10355, 24, '4', 25, '0'),
(10355, 57, '16', 25, '0'),
(10356, 31, '10', 30, '0'),
(10356, 55, '19', 12, '0'),
(10356, 69, '29', 20, '0'),
(10357, 10, '25', 30, '0'),
(10357, 26, '25', 16, '0'),
(10357, 60, '27', 8, '0'),
(10358, 24, '4', 10, '0'),
(10358, 34, '11', 10, '0'),
(10358, 36, '15', 20, '0'),
(10359, 16, '14', 56, '0'),
(10359, 31, '10', 70, '0'),
(10359, 60, '27', 80, '0'),
(10360, 28, '36', 30, '0'),
(10360, 29, '99', 35, '0'),
(10360, 38, '211', 10, '0'),
(10360, 49, '16', 35, '0'),
(10360, 54, '6', 28, '0'),
(10361, 39, '14', 54, '0'),
(10361, 60, '27', 55, '0'),
(10362, 25, '11', 50, '0'),
(10362, 51, '42', 20, '0'),
(10362, 54, '6', 24, '0'),
(10363, 31, '10', 20, '0'),
(10363, 75, '6', 12, '0'),
(10363, 76, '14', 12, '0'),
(10364, 69, '29', 30, '0'),
(10364, 71, '17', 5, '0'),
(10365, 11, '17', 24, '0'),
(10366, 65, '17', 5, '0'),
(10366, 77, '10', 5, '0'),
(10367, 34, '11', 36, '0'),
(10367, 54, '6', 18, '0'),
(10367, 65, '17', 15, '0'),
(10367, 77, '10', 7, '0'),
(10368, 21, '8', 5, '0'),
(10368, 28, '36', 13, '0'),
(10368, 57, '16', 25, '0'),
(10368, 64, '27', 35, '0'),
(10369, 29, '99', 20, '0'),
(10369, 56, '30', 18, '0'),
(10370, 1, '14', 15, '0'),
(10370, 64, '27', 30, '0'),
(10370, 74, '8', 20, '0'),
(10371, 36, '15', 6, '0'),
(10372, 20, '65', 12, '0'),
(10372, 38, '211', 40, '0'),
(10372, 60, '27', 70, '0'),
(10372, 72, '28', 42, '0'),
(10373, 58, '11', 80, '0'),
(10373, 71, '17', 50, '0'),
(10374, 31, '10', 30, '0'),
(10374, 58, '11', 15, '0'),
(10375, 14, '19', 15, '0'),
(10375, 54, '6', 10, '0'),
(10376, 31, '10', 42, '0'),
(10377, 28, '36', 20, '0'),
(10377, 39, '14', 20, '0'),
(10378, 71, '17', 6, '0'),
(10379, 41, '8', 8, '0'),
(10379, 63, '35', 16, '0'),
(10379, 65, '17', 20, '0'),
(10380, 30, '21', 18, '0'),
(10380, 53, '26', 20, '0'),
(10380, 60, '27', 6, '0'),
(10380, 70, '12', 30, '0'),
(10381, 74, '8', 14, '0'),
(10382, 5, '17', 32, '0'),
(10382, 18, '50', 9, '0'),
(10382, 29, '99', 14, '0'),
(10382, 33, '2', 60, '0'),
(10382, 74, '8', 50, '0'),
(10383, 13, '5', 20, '0'),
(10383, 50, '13', 15, '0'),
(10383, 56, '30', 20, '0'),
(10384, 20, '65', 28, '0'),
(10384, 60, '27', 15, '0'),
(10385, 7, '24', 10, '0'),
(10385, 60, '27', 20, '0'),
(10385, 68, '10', 8, '0'),
(10386, 24, '4', 15, '0'),
(10386, 34, '11', 10, '0'),
(10387, 24, '4', 15, '0'),
(10387, 28, '36', 6, '0'),
(10387, 59, '44', 12, '0'),
(10387, 71, '17', 15, '0'),
(10388, 45, '8', 15, '0'),
(10388, 52, '6', 20, '0'),
(10388, 53, '26', 40, '0'),
(10389, 10, '25', 16, '0'),
(10389, 55, '19', 15, '0'),
(10389, 62, '39', 20, '0'),
(10389, 70, '12', 30, '0'),
(10390, 31, '10', 60, '0'),
(10390, 35, '14', 40, '0'),
(10390, 46, '10', 45, '0'),
(10390, 72, '28', 24, '0'),
(10391, 13, '5', 18, '0'),
(10392, 69, '29', 50, '0'),
(10393, 2, '15', 25, '0'),
(10393, 14, '19', 42, '0'),
(10393, 25, '11', 7, '0'),
(10393, 26, '25', 70, '0'),
(10393, 31, '10', 32, '0'),
(10394, 13, '5', 10, '0'),
(10394, 62, '39', 10, '0'),
(10395, 46, '10', 28, '0'),
(10395, 53, '26', 70, '0'),
(10395, 69, '29', 8, '0'),
(10396, 23, '7', 40, '0'),
(10396, 71, '17', 60, '0'),
(10396, 72, '28', 21, '0'),
(10397, 21, '8', 10, '0'),
(10397, 51, '42', 18, '0'),
(10398, 35, '14', 30, '0'),
(10398, 55, '19', 120, '0'),
(10399, 68, '10', 60, '0'),
(10399, 71, '17', 30, '0'),
(10399, 76, '14', 35, '0'),
(10399, 77, '10', 14, '0'),
(10400, 29, '99', 21, '0'),
(10400, 35, '14', 35, '0'),
(10400, 49, '16', 30, '0'),
(10401, 30, '21', 18, '0'),
(10401, 56, '30', 70, '0'),
(10401, 65, '17', 20, '0'),
(10401, 71, '17', 60, '0'),
(10402, 23, '7', 60, '0'),
(10402, 63, '35', 65, '0'),
(10403, 16, '14', 21, '0'),
(10403, 48, '10', 70, '0'),
(10404, 26, '25', 30, '0'),
(10404, 42, '11', 40, '0'),
(10404, 49, '16', 30, '0'),
(10405, 3, '8', 50, '0'),
(10406, 1, '14', 10, '0'),
(10406, 21, '8', 30, '0'),
(10406, 28, '36', 42, '0'),
(10406, 36, '15', 5, '0'),
(10406, 40, '15', 2, '0'),
(10407, 11, '17', 30, '0'),
(10407, 69, '29', 15, '0'),
(10407, 71, '17', 15, '0'),
(10408, 37, '21', 10, '0'),
(10408, 54, '6', 6, '0'),
(10408, 62, '39', 35, '0'),
(10409, 14, '19', 12, '0'),
(10409, 21, '8', 12, '0'),
(10410, 33, '2', 49, '0'),
(10410, 59, '44', 16, '0'),
(10411, 41, '8', 25, '0'),
(10411, 44, '16', 40, '0'),
(10411, 59, '44', 9, '0'),
(10412, 14, '19', 20, '0'),
(10413, 1, '14', 24, '0'),
(10413, 62, '39', 40, '0'),
(10413, 76, '14', 14, '0'),
(10414, 19, '7', 18, '0'),
(10414, 33, '2', 50, '0'),
(10415, 17, '31', 2, '0'),
(10415, 33, '2', 20, '0'),
(10416, 19, '7', 20, '0'),
(10416, 53, '26', 10, '0'),
(10416, 57, '16', 20, '0'),
(10417, 38, '211', 50, '0'),
(10417, 46, '10', 2, '0'),
(10417, 68, '10', 36, '0'),
(10417, 77, '10', 35, '0'),
(10418, 2, '15', 60, '0'),
(10418, 47, '8', 55, '0'),
(10418, 61, '23', 16, '0'),
(10418, 74, '8', 15, '0'),
(10419, 60, '27', 60, '0'),
(10419, 69, '29', 20, '0'),
(10420, 9, '78', 20, '0'),
(10420, 13, '5', 2, '0'),
(10420, 70, '12', 8, '0'),
(10420, 73, '12', 20, '0'),
(10421, 19, '7', 4, '0'),
(10421, 26, '25', 30, '0'),
(10421, 53, '26', 15, '0'),
(10421, 77, '10', 10, '0'),
(10422, 26, '25', 2, '0'),
(10423, 31, '10', 14, '0'),
(10423, 59, '44', 20, '0'),
(10424, 35, '14', 60, '0'),
(10424, 38, '211', 49, '0'),
(10424, 68, '10', 30, '0'),
(10425, 55, '19', 10, '0'),
(10425, 76, '14', 20, '0'),
(10426, 56, '30', 5, '0'),
(10426, 64, '27', 7, '0'),
(10427, 14, '19', 35, '0'),
(10428, 46, '10', 20, '0'),
(10429, 50, '13', 40, '0'),
(10429, 63, '35', 35, '0'),
(10430, 17, '31', 45, '0'),
(10430, 21, '8', 50, '0'),
(10430, 56, '30', 30, '0'),
(10430, 59, '44', 70, '0'),
(10431, 17, '31', 50, '0'),
(10431, 40, '15', 50, '0'),
(10431, 47, '8', 30, '0'),
(10432, 26, '25', 10, '0'),
(10432, 54, '6', 40, '0'),
(10433, 56, '30', 28, '0'),
(10434, 11, '17', 6, '0'),
(10434, 76, '14', 18, '0'),
(10435, 2, '15', 10, '0'),
(10435, 22, '17', 12, '0'),
(10435, 72, '28', 10, '0'),
(10436, 46, '10', 5, '0'),
(10436, 56, '30', 40, '0'),
(10436, 64, '27', 30, '0'),
(10436, 75, '6', 24, '0'),
(10437, 53, '26', 15, '0'),
(10438, 19, '7', 15, '0'),
(10438, 34, '11', 20, '0'),
(10438, 57, '16', 15, '0'),
(10439, 12, '30', 15, '0'),
(10439, 16, '14', 16, '0'),
(10439, 64, '27', 6, '0'),
(10439, 74, '8', 30, '0'),
(10440, 2, '15', 45, '0'),
(10440, 16, '14', 49, '0'),
(10440, 29, '99', 24, '0'),
(10440, 61, '23', 90, '0'),
(10441, 27, '35', 50, '0'),
(10442, 11, '17', 30, '0'),
(10442, 54, '6', 80, '0'),
(10442, 66, '14', 60, '0'),
(10443, 11, '17', 6, '0'),
(10443, 28, '36', 12, '0'),
(10444, 17, '31', 10, '0'),
(10444, 26, '25', 15, '0'),
(10444, 35, '14', 8, '0'),
(10444, 41, '8', 30, '0'),
(10445, 39, '14', 6, '0'),
(10445, 54, '6', 15, '0'),
(10446, 19, '7', 12, '0'),
(10446, 24, '4', 20, '0'),
(10446, 31, '10', 3, '0'),
(10446, 52, '6', 15, '0'),
(10447, 19, '7', 40, '0'),
(10447, 65, '17', 35, '0'),
(10447, 71, '17', 2, '0'),
(10448, 26, '25', 6, '0'),
(10448, 40, '15', 20, '0'),
(10449, 10, '25', 14, '0'),
(10449, 52, '6', 20, '0'),
(10449, 62, '39', 35, '0'),
(10450, 10, '25', 20, '0'),
(10450, 54, '6', 6, '0'),
(10451, 55, '19', 120, '0'),
(10451, 64, '27', 35, '0'),
(10451, 65, '17', 28, '0'),
(10451, 77, '10', 55, '0'),
(10452, 28, '36', 15, '0'),
(10452, 44, '16', 100, '0'),
(10453, 48, '10', 15, '0'),
(10453, 70, '12', 25, '0'),
(10454, 16, '14', 20, '0'),
(10454, 33, '2', 20, '0'),
(10454, 46, '10', 10, '0'),
(10455, 39, '14', 20, '0'),
(10455, 53, '26', 50, '0'),
(10455, 61, '23', 25, '0'),
(10455, 71, '17', 30, '0'),
(10456, 21, '8', 40, '0'),
(10456, 49, '16', 21, '0'),
(10457, 59, '44', 36, '0'),
(10458, 26, '25', 30, '0'),
(10458, 28, '36', 30, '0'),
(10458, 43, '37', 20, '0'),
(10458, 56, '30', 15, '0'),
(10458, 71, '17', 50, '0'),
(10459, 7, '24', 16, '0'),
(10459, 46, '10', 20, '0'),
(10459, 72, '28', 40, '0'),
(10460, 68, '10', 21, '0'),
(10460, 75, '6', 4, '0'),
(10461, 21, '8', 40, '0'),
(10461, 30, '21', 28, '0'),
(10461, 55, '19', 60, '0'),
(10462, 13, '5', 1, '0'),
(10462, 23, '7', 21, '0'),
(10463, 19, '7', 21, '0'),
(10463, 42, '11', 50, '0'),
(10464, 4, '18', 16, '0'),
(10464, 43, '37', 3, '0'),
(10464, 56, '30', 30, '0'),
(10464, 60, '27', 20, '0'),
(10465, 24, '4', 25, '0'),
(10465, 29, '99', 18, '0'),
(10465, 40, '15', 20, '0'),
(10465, 45, '8', 30, '0'),
(10465, 50, '13', 25, '0'),
(10466, 11, '17', 10, '0'),
(10466, 46, '10', 5, '0'),
(10467, 24, '4', 28, '0'),
(10467, 25, '11', 12, '0'),
(10468, 30, '21', 8, '0'),
(10468, 43, '37', 15, '0'),
(10469, 2, '15', 40, '0'),
(10469, 16, '14', 35, '0'),
(10469, 44, '16', 2, '0'),
(10470, 18, '50', 30, '0'),
(10470, 23, '7', 15, '0'),
(10470, 64, '27', 8, '0'),
(10471, 7, '24', 30, '0'),
(10471, 56, '30', 20, '0'),
(10472, 24, '4', 80, '0'),
(10472, 51, '42', 18, '0'),
(10473, 33, '2', 12, '0'),
(10473, 71, '17', 12, '0'),
(10474, 14, '19', 12, '0'),
(10474, 28, '36', 18, '0'),
(10474, 40, '15', 21, '0'),
(10474, 75, '6', 10, '0'),
(10475, 31, '10', 35, '0'),
(10475, 66, '14', 60, '0'),
(10475, 76, '14', 42, '0'),
(10476, 55, '19', 2, '0'),
(10476, 70, '12', 12, '0'),
(10477, 1, '14', 15, '0'),
(10477, 21, '8', 21, '0'),
(10477, 39, '14', 20, '0'),
(10478, 10, '25', 20, '0'),
(10479, 38, '211', 30, '0'),
(10479, 53, '26', 28, '0'),
(10479, 59, '44', 60, '0'),
(10479, 64, '27', 30, '0'),
(10480, 47, '8', 30, '0'),
(10480, 59, '44', 12, '0'),
(10481, 49, '16', 24, '0'),
(10481, 60, '27', 40, '0'),
(10482, 40, '15', 10, '0'),
(10483, 34, '11', 35, '0'),
(10483, 77, '10', 30, '0'),
(10484, 21, '8', 14, '0'),
(10484, 40, '15', 10, '0'),
(10484, 51, '42', 3, '0'),
(10485, 2, '15', 20, '0'),
(10485, 3, '8', 20, '0'),
(10485, 55, '19', 30, '0'),
(10485, 70, '12', 60, '0'),
(10486, 11, '17', 5, '0'),
(10486, 51, '42', 25, '0'),
(10486, 74, '8', 16, '0'),
(10487, 19, '7', 5, '0'),
(10487, 26, '25', 30, '0'),
(10487, 54, '6', 24, '0'),
(10488, 59, '44', 30, '0'),
(10488, 73, '12', 20, '0'),
(10489, 11, '17', 15, '0'),
(10489, 16, '14', 18, '0'),
(10490, 59, '44', 60, '0'),
(10490, 68, '10', 30, '0'),
(10490, 75, '6', 36, '0'),
(10491, 44, '16', 15, '0'),
(10491, 77, '10', 7, '0'),
(10492, 25, '11', 60, '0'),
(10492, 42, '11', 20, '0'),
(10493, 65, '17', 15, '0'),
(10493, 66, '14', 10, '0'),
(10493, 69, '29', 10, '0'),
(10494, 56, '30', 30, '0'),
(10495, 23, '7', 10, '0'),
(10495, 41, '8', 20, '0'),
(10495, 77, '10', 5, '0'),
(10496, 31, '10', 20, '0'),
(10497, 56, '30', 14, '0'),
(10497, 72, '28', 25, '0'),
(10497, 77, '10', 25, '0'),
(10498, 24, '5', 14, '0'),
(10498, 40, '18', 5, '0'),
(10498, 42, '14', 30, '0'),
(10499, 28, '46', 20, '0'),
(10499, 49, '20', 25, '0'),
(10500, 15, '16', 12, '0'),
(10500, 28, '46', 8, '0'),
(10501, 54, '7', 20, '0'),
(10502, 45, '10', 21, '0'),
(10502, 53, '33', 6, '0'),
(10502, 67, '14', 30, '0'),
(10503, 14, '23', 70, '0'),
(10503, 65, '21', 20, '0'),
(10504, 2, '19', 12, '0'),
(10504, 21, '10', 12, '0'),
(10504, 53, '33', 10, '0'),
(10504, 61, '29', 25, '0'),
(10505, 62, '49', 3, '0'),
(10506, 25, '14', 18, '0'),
(10506, 70, '15', 14, '0'),
(10507, 43, '46', 15, '0'),
(10507, 48, '13', 15, '0'),
(10508, 13, '6', 10, '0'),
(10508, 39, '18', 10, '0'),
(10509, 28, '46', 3, '0'),
(10510, 29, '124', 36, '0'),
(10510, 75, '8', 36, '0'),
(10511, 4, '22', 50, '0'),
(10511, 7, '30', 50, '0'),
(10511, 8, '40', 10, '0'),
(10512, 24, '5', 10, '0'),
(10512, 46, '12', 9, '0'),
(10512, 47, '10', 6, '0'),
(10512, 60, '34', 12, '0'),
(10513, 21, '10', 40, '0'),
(10513, 32, '32', 50, '0'),
(10513, 61, '29', 15, '0'),
(10514, 20, '81', 39, '0'),
(10514, 28, '46', 35, '0'),
(10514, 56, '38', 70, '0'),
(10514, 65, '21', 39, '0'),
(10514, 75, '8', 50, '0'),
(10515, 9, '97', 16, '0'),
(10515, 16, '17', 50, '0'),
(10515, 27, '44', 120, '0'),
(10515, 33, '3', 16, '0'),
(10515, 60, '34', 84, '0'),
(10516, 18, '63', 25, '0'),
(10516, 41, '10', 80, '0'),
(10516, 42, '14', 20, '0'),
(10517, 52, '7', 6, '0'),
(10517, 59, '55', 4, '0'),
(10517, 70, '15', 6, '0'),
(10518, 24, '5', 5, '0'),
(10518, 38, '264', 15, '0'),
(10518, 44, '19', 9, '0'),
(10519, 10, '31', 16, '0'),
(10519, 56, '38', 40, '0'),
(10519, 60, '34', 10, '0'),
(10520, 24, '5', 8, '0'),
(10520, 53, '33', 5, '0'),
(10521, 35, '18', 3, '0'),
(10521, 41, '10', 10, '0'),
(10521, 68, '13', 6, '0'),
(10522, 1, '18', 40, '0'),
(10522, 8, '40', 24, '0'),
(10522, 30, '26', 20, '0'),
(10522, 40, '18', 25, '0'),
(10523, 17, '39', 25, '0'),
(10523, 20, '81', 15, '0'),
(10523, 37, '26', 18, '0'),
(10523, 41, '10', 6, '0'),
(10524, 10, '31', 2, '0'),
(10524, 30, '26', 10, '0'),
(10524, 43, '46', 60, '0'),
(10524, 54, '7', 15, '0'),
(10525, 36, '19', 30, '0'),
(10525, 40, '18', 15, '0'),
(10526, 1, '18', 8, '0'),
(10526, 13, '6', 10, '0'),
(10526, 56, '38', 30, '0'),
(10527, 4, '22', 50, '0'),
(10527, 36, '19', 30, '0'),
(10528, 11, '21', 3, '0'),
(10528, 33, '3', 8, '0'),
(10528, 72, '35', 9, '0'),
(10529, 55, '24', 14, '0'),
(10529, 68, '13', 20, '0'),
(10529, 69, '36', 10, '0'),
(10530, 17, '39', 40, '0'),
(10530, 43, '46', 25, '0'),
(10530, 61, '29', 20, '0'),
(10530, 76, '18', 50, '0'),
(10531, 59, '55', 2, '0'),
(10532, 30, '26', 15, '0'),
(10532, 66, '17', 24, '0'),
(10533, 4, '22', 50, '0'),
(10533, 72, '35', 24, '0'),
(10533, 73, '15', 24, '0'),
(10534, 30, '26', 10, '0'),
(10534, 40, '18', 10, '0'),
(10534, 54, '7', 10, '0'),
(10535, 11, '21', 50, '0'),
(10535, 40, '18', 10, '0'),
(10535, 57, '20', 5, '0'),
(10535, 59, '55', 15, '0'),
(10536, 12, '38', 15, '0'),
(10536, 31, '13', 20, '0'),
(10536, 33, '3', 30, '0'),
(10536, 60, '34', 35, '0'),
(10537, 31, '13', 30, '0'),
(10537, 51, '53', 6, '0'),
(10537, 58, '13', 20, '0'),
(10537, 72, '35', 21, '0'),
(10537, 73, '15', 9, '0'),
(10538, 70, '15', 7, '0'),
(10538, 72, '35', 1, '0'),
(10539, 13, '6', 8, '0'),
(10539, 21, '10', 15, '0'),
(10539, 33, '3', 15, '0'),
(10539, 49, '20', 6, '0'),
(10540, 3, '10', 60, '0'),
(10540, 26, '31', 40, '0'),
(10540, 38, '264', 30, '0'),
(10540, 68, '13', 35, '0'),
(10541, 24, '5', 35, '0'),
(10541, 38, '264', 4, '0'),
(10541, 65, '21', 36, '0'),
(10541, 71, '22', 9, '0'),
(10542, 11, '21', 15, '0'),
(10542, 54, '7', 24, '0'),
(10543, 12, '38', 30, '0'),
(10543, 23, '9', 70, '0'),
(10544, 28, '46', 7, '0'),
(10544, 67, '14', 7, '0'),
(10545, 11, '21', 10, '0'),
(10546, 7, '30', 10, '0'),
(10546, 35, '18', 30, '0'),
(10546, 62, '49', 40, '0'),
(10547, 32, '32', 24, '0'),
(10547, 36, '19', 60, '0'),
(10548, 34, '14', 10, '0'),
(10548, 41, '10', 14, '0'),
(10549, 31, '13', 55, '0'),
(10549, 45, '10', 100, '0'),
(10549, 51, '53', 48, '0'),
(10550, 17, '39', 8, '0'),
(10550, 19, '9', 10, '0'),
(10550, 21, '10', 6, '0'),
(10550, 61, '29', 10, '0'),
(10551, 16, '17', 40, '0'),
(10551, 35, '18', 20, '0'),
(10551, 44, '19', 40, '0'),
(10552, 69, '36', 18, '0'),
(10552, 75, '8', 30, '0'),
(10553, 11, '21', 15, '0'),
(10553, 16, '17', 14, '0'),
(10553, 22, '21', 24, '0'),
(10553, 31, '13', 30, '0'),
(10553, 35, '18', 6, '0'),
(10554, 16, '17', 30, '0'),
(10554, 23, '9', 20, '0'),
(10554, 62, '49', 20, '0'),
(10554, 77, '13', 10, '0'),
(10555, 14, '23', 30, '0'),
(10555, 19, '9', 35, '0'),
(10555, 24, '5', 18, '0'),
(10555, 51, '53', 20, '0'),
(10555, 56, '38', 40, '0'),
(10556, 72, '35', 24, '0'),
(10557, 64, '33', 30, '0'),
(10557, 75, '8', 20, '0'),
(10558, 47, '10', 25, '0'),
(10558, 51, '53', 20, '0'),
(10558, 52, '7', 30, '0'),
(10558, 53, '33', 18, '0'),
(10558, 73, '15', 3, '0'),
(10559, 41, '10', 12, '0'),
(10559, 55, '24', 18, '0'),
(10560, 30, '26', 20, '0'),
(10560, 62, '49', 15, '0'),
(10561, 44, '19', 10, '0'),
(10561, 51, '53', 50, '0'),
(10562, 33, '3', 20, '0'),
(10562, 62, '49', 10, '0'),
(10563, 36, '19', 25, '0'),
(10563, 52, '7', 70, '0'),
(10564, 17, '39', 16, '0'),
(10564, 31, '13', 6, '0'),
(10564, 55, '24', 25, '0'),
(10565, 24, '5', 25, '0'),
(10565, 64, '33', 18, '0'),
(10566, 11, '21', 35, '0'),
(10566, 18, '63', 18, '0'),
(10566, 76, '18', 10, '0'),
(10567, 31, '13', 60, '0'),
(10567, 51, '53', 3, '0'),
(10567, 59, '55', 40, '0'),
(10568, 10, '31', 5, '0'),
(10569, 31, '13', 35, '0'),
(10569, 76, '18', 30, '0'),
(10570, 11, '21', 15, '0'),
(10570, 56, '38', 60, '0'),
(10571, 14, '23', 11, '0'),
(10571, 42, '14', 28, '0'),
(10572, 16, '17', 12, '0'),
(10572, 32, '32', 10, '0'),
(10572, 40, '18', 50, '0'),
(10572, 75, '8', 15, '0'),
(10573, 17, '39', 18, '0'),
(10573, 34, '14', 40, '0'),
(10573, 53, '33', 25, '0'),
(10574, 33, '3', 14, '0'),
(10574, 40, '18', 2, '0'),
(10574, 62, '49', 10, '0'),
(10574, 64, '33', 6, '0'),
(10575, 59, '55', 12, '0'),
(10575, 63, '44', 6, '0'),
(10575, 72, '35', 30, '0'),
(10575, 76, '18', 10, '0'),
(10576, 1, '18', 10, '0'),
(10576, 31, '13', 20, '0'),
(10576, 44, '19', 21, '0'),
(10577, 39, '18', 10, '0'),
(10577, 75, '8', 20, '0'),
(10577, 77, '13', 18, '0'),
(10578, 35, '18', 20, '0'),
(10578, 57, '20', 6, '0'),
(10579, 15, '16', 10, '0'),
(10579, 75, '8', 21, '0'),
(10580, 14, '23', 15, '0'),
(10580, 41, '10', 9, '0'),
(10580, 65, '21', 30, '0'),
(10581, 75, '8', 50, '0'),
(10582, 57, '20', 4, '0'),
(10582, 76, '18', 14, '0'),
(10583, 29, '124', 10, '0'),
(10583, 60, '34', 24, '0'),
(10583, 69, '36', 10, '0'),
(10584, 31, '13', 50, '0'),
(10585, 47, '10', 15, '0'),
(10586, 52, '7', 4, '0'),
(10587, 26, '31', 6, '0'),
(10587, 35, '18', 20, '0'),
(10587, 77, '13', 20, '0'),
(10588, 18, '63', 40, '0'),
(10588, 42, '14', 100, '0'),
(10589, 35, '18', 4, '0'),
(10590, 1, '18', 20, '0'),
(10590, 77, '13', 60, '0'),
(10591, 3, '10', 14, '0'),
(10591, 7, '30', 10, '0'),
(10591, 54, '7', 50, '0'),
(10592, 15, '16', 25, '0'),
(10592, 26, '31', 5, '0'),
(10593, 20, '81', 21, '0'),
(10593, 69, '36', 20, '0'),
(10593, 76, '18', 4, '0'),
(10594, 52, '7', 24, '0'),
(10594, 58, '13', 30, '0'),
(10595, 35, '18', 30, '0'),
(10595, 61, '29', 120, '0'),
(10595, 69, '36', 65, '0'),
(10596, 56, '38', 5, '0'),
(10596, 63, '44', 24, '0'),
(10596, 75, '8', 30, '0'),
(10597, 24, '5', 35, '0'),
(10597, 57, '20', 20, '0'),
(10597, 65, '21', 12, '0'),
(10598, 27, '44', 50, '0'),
(10598, 71, '22', 9, '0'),
(10599, 62, '49', 10, '0'),
(10600, 54, '7', 4, '0'),
(10600, 73, '15', 30, '0'),
(10601, 13, '6', 60, '0'),
(10601, 59, '55', 35, '0'),
(10602, 77, '13', 5, '0'),
(10603, 22, '21', 48, '0'),
(10603, 49, '20', 25, '0'),
(10604, 48, '13', 6, '0'),
(10604, 76, '18', 10, '0'),
(10605, 16, '17', 30, '0'),
(10605, 59, '55', 20, '0'),
(10605, 60, '34', 70, '0'),
(10605, 71, '22', 15, '0'),
(10606, 4, '22', 20, '0'),
(10606, 55, '24', 20, '0'),
(10606, 62, '49', 10, '0'),
(10607, 7, '30', 45, '0'),
(10607, 17, '39', 100, '0'),
(10607, 33, '3', 14, '0'),
(10607, 40, '18', 42, '0'),
(10607, 72, '35', 12, '0'),
(10608, 56, '38', 28, '0'),
(10609, 1, '18', 3, '0'),
(10609, 10, '31', 10, '0'),
(10609, 21, '10', 6, '0'),
(10610, 36, '19', 21, '0'),
(10611, 1, '18', 6, '0'),
(10611, 2, '19', 10, '0'),
(10611, 60, '34', 15, '0'),
(10612, 10, '31', 70, '0'),
(10612, 36, '19', 55, '0'),
(10612, 49, '20', 18, '0'),
(10612, 60, '34', 40, '0'),
(10612, 76, '18', 80, '0'),
(10613, 13, '6', 8, '0'),
(10613, 75, '8', 40, '0'),
(10614, 11, '21', 14, '0'),
(10614, 21, '10', 8, '0'),
(10614, 39, '18', 5, '0'),
(10615, 55, '24', 5, '0'),
(10616, 38, '264', 15, '0'),
(10616, 56, '38', 14, '0'),
(10616, 70, '15', 15, '0'),
(10616, 71, '22', 15, '0'),
(10617, 59, '55', 30, '0'),
(10618, 6, '25', 70, '0'),
(10618, 56, '38', 20, '0'),
(10618, 68, '13', 15, '0'),
(10619, 21, '10', 42, '0'),
(10619, 22, '21', 40, '0'),
(10620, 24, '5', 5, '0'),
(10620, 52, '7', 5, '0'),
(10621, 19, '9', 5, '0'),
(10621, 23, '9', 10, '0'),
(10621, 70, '15', 20, '0'),
(10621, 71, '22', 15, '0'),
(10622, 2, '19', 20, '0'),
(10622, 68, '13', 18, '0'),
(10623, 14, '23', 21, '0'),
(10623, 19, '9', 15, '0'),
(10623, 21, '10', 25, '0'),
(10623, 24, '5', 3, '0'),
(10623, 35, '18', 30, '0'),
(10624, 28, '46', 10, '0'),
(10624, 29, '124', 6, '0'),
(10624, 44, '19', 10, '0'),
(10625, 14, '23', 3, '0'),
(10625, 42, '14', 5, '0'),
(10625, 60, '34', 10, '0'),
(10626, 53, '33', 12, '0'),
(10626, 60, '34', 20, '0'),
(10626, 71, '22', 20, '0'),
(10627, 62, '49', 15, '0'),
(10627, 73, '15', 35, '0'),
(10628, 1, '18', 25, '0'),
(10629, 29, '124', 20, '0'),
(10629, 64, '33', 9, '0'),
(10630, 55, '24', 12, '0'),
(10630, 76, '18', 35, '0'),
(10631, 75, '8', 8, '0'),
(10632, 2, '19', 30, '0'),
(10632, 33, '3', 20, '0'),
(10633, 12, '38', 36, '0'),
(10633, 13, '6', 13, '0'),
(10633, 26, '31', 35, '0'),
(10633, 62, '49', 80, '0'),
(10634, 7, '30', 35, '0'),
(10634, 18, '63', 50, '0'),
(10634, 51, '53', 15, '0'),
(10634, 75, '8', 2, '0'),
(10635, 4, '22', 10, '0'),
(10635, 5, '21', 15, '0'),
(10635, 22, '21', 40, '0'),
(10636, 4, '22', 25, '0'),
(10636, 58, '13', 6, '0'),
(10637, 11, '21', 10, '0'),
(10637, 50, '16', 25, '0'),
(10637, 56, '38', 60, '0'),
(10638, 45, '10', 20, '0'),
(10638, 65, '21', 21, '0'),
(10638, 72, '35', 60, '0'),
(10639, 18, '63', 8, '0'),
(10640, 69, '36', 20, '0'),
(10640, 70, '15', 15, '0'),
(10641, 2, '19', 50, '0'),
(10641, 40, '18', 60, '0'),
(10642, 21, '10', 30, '0'),
(10642, 61, '29', 20, '0'),
(10643, 28, '46', 15, '0'),
(10643, 39, '18', 21, '0'),
(10643, 46, '12', 2, '0'),
(10644, 18, '63', 4, '0'),
(10644, 43, '46', 20, '0'),
(10644, 46, '12', 21, '0'),
(10645, 18, '63', 20, '0'),
(10645, 36, '19', 15, '0'),
(10646, 1, '18', 15, '0'),
(10646, 10, '31', 18, '0'),
(10646, 71, '22', 30, '0'),
(10646, 77, '13', 35, '0'),
(10647, 19, '9', 30, '0'),
(10647, 39, '18', 20, '0'),
(10648, 22, '21', 15, '0'),
(10648, 24, '5', 15, '0'),
(10649, 28, '46', 20, '0'),
(10649, 72, '35', 15, '0'),
(10650, 30, '26', 30, '0'),
(10650, 53, '33', 25, '0'),
(10650, 54, '7', 30, '0'),
(10651, 19, '9', 12, '0'),
(10651, 22, '21', 20, '0'),
(10652, 30, '26', 2, '0'),
(10652, 42, '14', 20, '0'),
(10653, 16, '17', 30, '0'),
(10653, 60, '34', 20, '0'),
(10654, 4, '22', 12, '0'),
(10654, 39, '18', 20, '0'),
(10654, 54, '7', 6, '0'),
(10655, 41, '10', 20, '0'),
(10656, 14, '23', 3, '0'),
(10656, 44, '19', 28, '0'),
(10656, 47, '10', 6, '0'),
(10657, 15, '16', 50, '0'),
(10657, 41, '10', 24, '0'),
(10657, 46, '12', 45, '0'),
(10657, 47, '10', 10, '0'),
(10657, 56, '38', 45, '0'),
(10657, 60, '34', 30, '0'),
(10658, 21, '10', 60, '0'),
(10658, 40, '18', 70, '0'),
(10658, 60, '34', 55, '0'),
(10658, 77, '13', 70, '0'),
(10659, 31, '13', 20, '0'),
(10659, 40, '18', 24, '0'),
(10659, 70, '15', 40, '0'),
(10660, 20, '81', 21, '0'),
(10661, 39, '18', 3, '0'),
(10661, 58, '13', 49, '0'),
(10662, 68, '13', 10, '0'),
(10663, 40, '18', 30, '0'),
(10663, 42, '14', 30, '0'),
(10663, 51, '53', 20, '0'),
(10664, 10, '31', 24, '0'),
(10664, 56, '38', 12, '0'),
(10664, 65, '21', 15, '0'),
(10665, 51, '53', 20, '0'),
(10665, 59, '55', 1, '0'),
(10665, 76, '18', 10, '0'),
(10666, 29, '124', 36, '0'),
(10666, 65, '21', 10, '0'),
(10667, 69, '36', 45, '0'),
(10667, 71, '22', 14, '0'),
(10668, 31, '13', 8, '0'),
(10668, 55, '24', 4, '0'),
(10668, 64, '33', 15, '0'),
(10669, 36, '19', 30, '0'),
(10670, 23, '9', 32, '0'),
(10670, 46, '12', 60, '0'),
(10670, 67, '14', 25, '0'),
(10670, 73, '15', 50, '0'),
(10670, 75, '8', 25, '0'),
(10671, 16, '17', 10, '0'),
(10671, 62, '49', 10, '0'),
(10671, 65, '21', 12, '0'),
(10672, 38, '264', 15, '0'),
(10672, 71, '22', 12, '0'),
(10673, 16, '17', 3, '0'),
(10673, 42, '14', 6, '0'),
(10673, 43, '46', 6, '0'),
(10674, 23, '9', 5, '0'),
(10675, 14, '23', 30, '0'),
(10675, 53, '33', 10, '0'),
(10675, 58, '13', 30, '0'),
(10676, 10, '31', 2, '0'),
(10676, 19, '9', 7, '0'),
(10676, 44, '19', 21, '0'),
(10677, 26, '31', 30, '0'),
(10677, 33, '3', 8, '0'),
(10678, 12, '38', 100, '0'),
(10678, 33, '3', 30, '0'),
(10678, 41, '10', 120, '0'),
(10678, 54, '7', 30, '0'),
(10679, 59, '55', 12, '0'),
(10680, 16, '17', 50, '0'),
(10680, 31, '13', 20, '0'),
(10680, 42, '14', 40, '0'),
(10681, 19, '9', 30, '0'),
(10681, 21, '10', 12, '0'),
(10681, 64, '33', 28, '0'),
(10682, 33, '3', 30, '0'),
(10682, 66, '17', 4, '0'),
(10682, 75, '8', 30, '0'),
(10683, 52, '7', 9, '0'),
(10684, 40, '18', 20, '0'),
(10684, 47, '10', 40, '0'),
(10684, 60, '34', 30, '0'),
(10685, 10, '31', 20, '0'),
(10685, 41, '10', 4, '0'),
(10685, 47, '10', 15, '0'),
(10686, 17, '39', 30, '0'),
(10686, 26, '31', 15, '0'),
(10687, 9, '97', 50, '0'),
(10687, 29, '124', 10, '0'),
(10687, 36, '19', 6, '0'),
(10688, 10, '31', 18, '0'),
(10688, 28, '46', 60, '0'),
(10688, 34, '14', 14, '0'),
(10689, 1, '18', 35, '0'),
(10690, 56, '38', 20, '0'),
(10690, 77, '13', 30, '0'),
(10691, 1, '18', 30, '0'),
(10691, 29, '124', 40, '0'),
(10691, 43, '46', 40, '0'),
(10691, 44, '19', 24, '0'),
(10691, 62, '49', 48, '0'),
(10692, 63, '44', 20, '0'),
(10693, 9, '97', 6, '0'),
(10693, 54, '7', 60, '0'),
(10693, 69, '36', 30, '0'),
(10693, 73, '15', 15, '0'),
(10694, 7, '30', 90, '0'),
(10694, 59, '55', 25, '0'),
(10694, 70, '15', 50, '0'),
(10695, 8, '40', 10, '0'),
(10695, 12, '38', 4, '0'),
(10695, 24, '5', 20, '0'),
(10696, 17, '39', 20, '0'),
(10696, 46, '12', 18, '0'),
(10697, 19, '9', 7, '0'),
(10697, 35, '18', 9, '0'),
(10697, 58, '13', 30, '0'),
(10697, 70, '15', 30, '0'),
(10698, 11, '21', 15, '0'),
(10698, 17, '39', 8, '0'),
(10698, 29, '124', 12, '0'),
(10698, 65, '21', 65, '0'),
(10698, 70, '15', 8, '0'),
(10699, 47, '10', 12, '0'),
(10700, 1, '18', 5, '0'),
(10700, 34, '14', 12, '0'),
(10700, 68, '13', 40, '0'),
(10700, 71, '22', 60, '0'),
(10701, 59, '55', 42, '0'),
(10701, 71, '22', 20, '0'),
(10701, 76, '18', 35, '0'),
(10702, 3, '10', 6, '0'),
(10702, 76, '18', 15, '0'),
(10703, 2, '19', 5, '0'),
(10703, 59, '55', 35, '0'),
(10703, 73, '15', 35, '0'),
(10704, 4, '22', 6, '0'),
(10704, 24, '5', 35, '0'),
(10704, 48, '13', 24, '0'),
(10705, 31, '13', 20, '0'),
(10705, 32, '32', 4, '0'),
(10706, 16, '17', 20, '0'),
(10706, 43, '46', 24, '0'),
(10706, 59, '55', 8, '0'),
(10707, 55, '24', 21, '0'),
(10707, 57, '20', 40, '0'),
(10707, 70, '15', 28, '0'),
(10708, 5, '21', 4, '0'),
(10708, 36, '19', 5, '0'),
(10709, 8, '40', 40, '0'),
(10709, 51, '53', 28, '0'),
(10709, 60, '34', 10, '0'),
(10710, 19, '9', 5, '0'),
(10710, 47, '10', 5, '0'),
(10711, 19, '9', 12, '0'),
(10711, 41, '10', 42, '0'),
(10711, 53, '33', 120, '0'),
(10712, 53, '33', 3, '0'),
(10712, 56, '38', 30, '0'),
(10713, 10, '31', 18, '0'),
(10713, 26, '31', 30, '0'),
(10713, 45, '10', 110, '0'),
(10713, 46, '12', 24, '0'),
(10714, 2, '19', 30, '0'),
(10714, 17, '39', 27, '0'),
(10714, 47, '10', 50, '0'),
(10714, 56, '38', 18, '0'),
(10714, 58, '13', 12, '0'),
(10715, 10, '31', 21, '0'),
(10715, 71, '22', 30, '0'),
(10716, 21, '10', 5, '0'),
(10716, 51, '53', 7, '0'),
(10716, 61, '29', 10, '0'),
(10717, 21, '10', 32, '0'),
(10717, 54, '7', 15, '0'),
(10717, 69, '36', 25, '0'),
(10718, 12, '38', 36, '0'),
(10718, 16, '17', 20, '0'),
(10718, 36, '19', 40, '0'),
(10718, 62, '49', 20, '0'),
(10719, 18, '63', 12, '0'),
(10719, 30, '26', 3, '0'),
(10719, 54, '7', 40, '0'),
(10720, 35, '18', 21, '0'),
(10720, 71, '22', 8, '0'),
(10721, 44, '19', 50, '0'),
(10722, 2, '19', 3, '0'),
(10722, 31, '13', 50, '0'),
(10722, 68, '13', 45, '0'),
(10722, 75, '8', 42, '0'),
(10723, 26, '31', 15, '0'),
(10724, 10, '31', 16, '0'),
(10724, 61, '29', 5, '0'),
(10725, 41, '10', 12, '0'),
(10725, 52, '7', 4, '0'),
(10725, 55, '24', 6, '0'),
(10726, 4, '22', 25, '0'),
(10726, 11, '21', 5, '0'),
(10727, 17, '39', 20, '0'),
(10727, 56, '38', 10, '0'),
(10727, 59, '55', 10, '0'),
(10728, 30, '26', 15, '0'),
(10728, 40, '18', 6, '0'),
(10728, 55, '24', 12, '0'),
(10728, 60, '34', 15, '0'),
(10729, 1, '18', 50, '0'),
(10729, 21, '10', 30, '0'),
(10729, 50, '16', 40, '0'),
(10730, 16, '17', 15, '0'),
(10730, 31, '13', 3, '0'),
(10730, 65, '21', 10, '0'),
(10731, 21, '10', 40, '0'),
(10731, 51, '53', 30, '0'),
(10732, 76, '18', 20, '0'),
(10733, 14, '23', 16, '0'),
(10733, 28, '46', 20, '0'),
(10733, 52, '7', 25, '0'),
(10734, 6, '25', 30, '0'),
(10734, 30, '26', 15, '0'),
(10734, 76, '18', 20, '0'),
(10735, 61, '29', 20, '0'),
(10735, 77, '13', 2, '0'),
(10736, 65, '21', 40, '0'),
(10736, 75, '8', 20, '0'),
(10737, 13, '6', 4, '0'),
(10737, 41, '10', 12, '0'),
(10738, 16, '17', 3, '0'),
(10739, 36, '19', 6, '0'),
(10739, 52, '7', 18, '0'),
(10740, 28, '46', 5, '0'),
(10740, 35, '18', 35, '0'),
(10740, 45, '10', 40, '0'),
(10740, 56, '38', 14, '0'),
(10741, 2, '19', 15, '0'),
(10742, 3, '10', 20, '0'),
(10742, 60, '34', 50, '0'),
(10742, 72, '35', 35, '0'),
(10743, 46, '12', 28, '0'),
(10744, 40, '18', 50, '0'),
(10745, 18, '63', 24, '0'),
(10745, 44, '19', 16, '0'),
(10745, 59, '55', 45, '0'),
(10745, 72, '35', 7, '0'),
(10746, 13, '6', 6, '0'),
(10746, 42, '14', 28, '0'),
(10746, 62, '49', 9, '0'),
(10746, 69, '36', 40, '0'),
(10747, 31, '13', 8, '0'),
(10747, 41, '10', 35, '0'),
(10747, 63, '44', 9, '0'),
(10747, 69, '36', 30, '0'),
(10748, 23, '9', 44, '0'),
(10748, 40, '18', 40, '0'),
(10748, 56, '38', 28, '0'),
(10749, 56, '38', 15, '0'),
(10749, 59, '55', 6, '0'),
(10749, 76, '18', 10, '0'),
(10750, 14, '23', 5, '0'),
(10750, 45, '10', 40, '0'),
(10750, 59, '55', 25, '0'),
(10751, 26, '31', 12, '0'),
(10751, 30, '26', 30, '0'),
(10751, 50, '16', 20, '0'),
(10751, 73, '15', 15, '0'),
(10752, 1, '18', 8, '0'),
(10752, 69, '36', 3, '0'),
(10753, 45, '10', 4, '0'),
(10753, 74, '10', 5, '0'),
(10754, 40, '18', 3, '0'),
(10755, 47, '10', 30, '0'),
(10755, 56, '38', 30, '0'),
(10755, 57, '20', 14, '0'),
(10755, 69, '36', 25, '0'),
(10756, 18, '63', 21, '0'),
(10756, 36, '19', 20, '0'),
(10756, 68, '13', 6, '0'),
(10756, 69, '36', 20, '0'),
(10757, 34, '14', 30, '0'),
(10757, 59, '55', 7, '0'),
(10757, 62, '49', 30, '0'),
(10757, 64, '33', 24, '0'),
(10758, 26, '31', 20, '0'),
(10758, 52, '7', 60, '0'),
(10758, 70, '15', 40, '0'),
(10759, 32, '32', 10, '0'),
(10760, 25, '14', 12, '0'),
(10760, 27, '44', 40, '0'),
(10760, 43, '46', 30, '0'),
(10761, 25, '14', 35, '0'),
(10761, 75, '8', 18, '0'),
(10762, 39, '18', 16, '0'),
(10762, 47, '10', 30, '0'),
(10762, 51, '53', 28, '0'),
(10762, 56, '38', 60, '0'),
(10763, 21, '10', 40, '0'),
(10763, 22, '21', 6, '0'),
(10763, 24, '5', 20, '0'),
(10764, 3, '10', 20, '0'),
(10764, 39, '18', 130, '0'),
(10765, 65, '21', 80, '0'),
(10766, 2, '19', 40, '0'),
(10766, 7, '30', 35, '0'),
(10766, 68, '13', 40, '0'),
(10767, 42, '14', 2, '0'),
(10768, 22, '21', 4, '0'),
(10768, 31, '13', 50, '0'),
(10768, 60, '34', 15, '0'),
(10768, 71, '22', 12, '0'),
(10769, 41, '10', 30, '0'),
(10769, 52, '7', 15, '0'),
(10769, 61, '29', 20, '0'),
(10769, 62, '49', 15, '0'),
(10770, 11, '21', 15, '0'),
(10771, 71, '22', 16, '0'),
(10772, 29, '124', 18, '0'),
(10772, 59, '55', 25, '0'),
(10773, 17, '39', 33, '0'),
(10773, 31, '13', 70, '0'),
(10773, 75, '8', 7, '0'),
(10774, 31, '13', 2, '0'),
(10774, 66, '17', 50, '0'),
(10775, 10, '31', 6, '0'),
(10775, 67, '14', 3, '0'),
(10776, 31, '13', 16, '0'),
(10776, 42, '14', 12, '0'),
(10776, 45, '10', 27, '0'),
(10776, 51, '53', 120, '0'),
(10777, 42, '14', 20, '0'),
(10778, 41, '10', 10, '0'),
(10779, 16, '17', 20, '0'),
(10779, 62, '49', 20, '0'),
(10780, 70, '15', 35, '0'),
(10780, 77, '13', 15, '0'),
(10781, 54, '7', 3, '0'),
(10781, 56, '38', 20, '0'),
(10781, 74, '10', 35, '0'),
(10782, 31, '13', 1, '0'),
(10783, 31, '13', 10, '0'),
(10783, 38, '264', 5, '0'),
(10784, 36, '19', 30, '0'),
(10784, 39, '18', 2, '0'),
(10784, 72, '35', 30, '0'),
(10785, 10, '31', 10, '0'),
(10785, 75, '8', 10, '0'),
(10786, 8, '40', 30, '0'),
(10786, 30, '26', 15, '0'),
(10786, 75, '8', 42, '0'),
(10787, 2, '19', 15, '0'),
(10787, 29, '124', 20, '0'),
(10788, 19, '9', 50, '0'),
(10788, 75, '8', 40, '0'),
(10789, 18, '63', 30, '0'),
(10789, 35, '18', 15, '0'),
(10789, 63, '44', 30, '0'),
(10789, 68, '13', 18, '0'),
(10790, 7, '30', 3, '0'),
(10790, 56, '38', 20, '0'),
(10791, 29, '124', 14, '0'),
(10791, 41, '10', 20, '0'),
(10792, 2, '19', 10, '0'),
(10792, 54, '7', 3, '0'),
(10792, 68, '13', 15, '0'),
(10793, 41, '10', 14, '0'),
(10793, 52, '7', 8, '0'),
(10794, 14, '23', 15, '0'),
(10794, 54, '7', 6, '0'),
(10795, 16, '17', 65, '0'),
(10795, 17, '39', 35, '0'),
(10796, 26, '31', 21, '0'),
(10796, 44, '19', 10, '0'),
(10796, 64, '33', 35, '0'),
(10796, 69, '36', 24, '0'),
(10797, 11, '21', 20, '0'),
(10798, 62, '49', 2, '0'),
(10798, 72, '35', 10, '0'),
(10799, 13, '6', 20, '0'),
(10799, 24, '5', 20, '0'),
(10799, 59, '55', 25, '0'),
(10800, 11, '21', 50, '0'),
(10800, 51, '53', 10, '0'),
(10800, 54, '7', 7, '0'),
(10801, 17, '39', 40, '0'),
(10801, 29, '124', 20, '0'),
(10802, 30, '26', 25, '0'),
(10802, 51, '53', 30, '0'),
(10802, 55, '24', 60, '0'),
(10802, 62, '49', 5, '0'),
(10803, 19, '9', 24, '0'),
(10803, 25, '14', 15, '0'),
(10803, 59, '55', 15, '0'),
(10804, 10, '31', 36, '0'),
(10804, 28, '46', 24, '0'),
(10804, 49, '20', 4, '0'),
(10805, 34, '14', 10, '0'),
(10805, 38, '264', 10, '0'),
(10806, 2, '19', 20, '0'),
(10806, 65, '21', 2, '0'),
(10806, 74, '10', 15, '0'),
(10807, 40, '18', 1, '0'),
(10808, 56, '38', 20, '0'),
(10808, 76, '18', 50, '0'),
(10809, 52, '7', 20, '0'),
(10810, 13, '6', 7, '0'),
(10810, 25, '14', 5, '0'),
(10810, 70, '15', 5, '0'),
(10811, 19, '9', 15, '0'),
(10811, 23, '9', 18, '0'),
(10811, 40, '18', 30, '0'),
(10812, 31, '13', 16, '0'),
(10812, 72, '35', 40, '0'),
(10812, 77, '13', 20, '0'),
(10813, 2, '19', 12, '0'),
(10813, 46, '12', 35, '0'),
(10814, 41, '10', 20, '0'),
(10814, 43, '46', 20, '0'),
(10814, 48, '13', 8, '0'),
(10814, 61, '29', 30, '0'),
(10815, 33, '3', 16, '0'),
(10816, 38, '264', 30, '0'),
(10816, 62, '49', 20, '0'),
(10817, 26, '31', 40, '0'),
(10817, 38, '264', 30, '0'),
(10817, 40, '18', 60, '0'),
(10817, 62, '49', 25, '0'),
(10818, 32, '32', 20, '0'),
(10818, 41, '10', 20, '0'),
(10819, 43, '46', 7, '0'),
(10819, 75, '8', 20, '0'),
(10820, 56, '38', 30, '0'),
(10821, 35, '18', 20, '0'),
(10821, 51, '53', 6, '0'),
(10822, 62, '49', 3, '0'),
(10822, 70, '15', 6, '0'),
(10823, 11, '21', 20, '0'),
(10823, 57, '20', 15, '0'),
(10823, 59, '55', 40, '0'),
(10823, 77, '13', 15, '0'),
(10824, 41, '10', 12, '0'),
(10824, 70, '15', 9, '0'),
(10825, 26, '31', 12, '0'),
(10825, 53, '33', 20, '0'),
(10826, 31, '13', 35, '0'),
(10826, 57, '20', 15, '0'),
(10827, 10, '31', 15, '0'),
(10827, 39, '18', 21, '0'),
(10828, 20, '81', 5, '0'),
(10828, 38, '264', 2, '0'),
(10829, 2, '19', 10, '0'),
(10829, 8, '40', 20, '0'),
(10829, 13, '6', 10, '0'),
(10829, 60, '34', 21, '0'),
(10830, 6, '25', 6, '0'),
(10830, 39, '18', 28, '0'),
(10830, 60, '34', 30, '0'),
(10830, 68, '13', 24, '0'),
(10831, 19, '9', 2, '0'),
(10831, 35, '18', 8, '0'),
(10831, 38, '264', 8, '0'),
(10831, 43, '46', 9, '0'),
(10832, 13, '6', 3, '0'),
(10832, 25, '14', 10, '0'),
(10832, 44, '19', 16, '0'),
(10832, 64, '33', 3, '0'),
(10833, 7, '30', 20, '0'),
(10833, 31, '13', 9, '0'),
(10833, 53, '33', 9, '0'),
(10834, 29, '124', 8, '0'),
(10834, 30, '26', 20, '0'),
(10835, 59, '55', 15, '0'),
(10835, 77, '13', 2, '0'),
(10836, 22, '21', 52, '0'),
(10836, 35, '18', 6, '0'),
(10836, 57, '20', 24, '0'),
(10836, 60, '34', 60, '0'),
(10836, 64, '33', 30, '0'),
(10837, 13, '6', 6, '0'),
(10837, 40, '18', 25, '0'),
(10837, 47, '10', 40, '0'),
(10837, 76, '18', 21, '0'),
(10838, 1, '18', 4, '0'),
(10838, 18, '63', 25, '0'),
(10838, 36, '19', 50, '0'),
(10839, 58, '13', 30, '0'),
(10839, 72, '35', 15, '0'),
(10840, 25, '14', 6, '0'),
(10840, 39, '18', 10, '0'),
(10841, 10, '31', 16, '0'),
(10841, 56, '38', 30, '0'),
(10841, 59, '55', 50, '0'),
(10841, 77, '13', 15, '0'),
(10842, 11, '21', 15, '0'),
(10842, 43, '46', 5, '0'),
(10842, 68, '13', 20, '0'),
(10842, 70, '15', 12, '0'),
(10843, 51, '53', 4, '0'),
(10844, 22, '21', 35, '0'),
(10845, 23, '9', 70, '0'),
(10845, 35, '18', 25, '0'),
(10845, 42, '14', 42, '0'),
(10845, 58, '13', 60, '0'),
(10845, 64, '33', 48, '0'),
(10846, 4, '22', 21, '0'),
(10846, 70, '15', 30, '0'),
(10846, 74, '10', 20, '0'),
(10847, 1, '18', 80, '0'),
(10847, 19, '9', 12, '0'),
(10847, 37, '26', 60, '0'),
(10847, 45, '10', 36, '0'),
(10847, 60, '34', 45, '0'),
(10847, 71, '22', 55, '0'),
(10848, 5, '21', 30, '0'),
(10848, 9, '97', 3, '0'),
(10849, 3, '10', 49, '0'),
(10849, 26, '31', 18, '0'),
(10850, 25, '14', 20, '0'),
(10850, 33, '3', 4, '0'),
(10850, 70, '15', 30, '0'),
(10851, 2, '19', 5, '0'),
(10851, 25, '14', 10, '0'),
(10851, 57, '20', 10, '0'),
(10851, 59, '55', 42, '0'),
(10852, 2, '19', 15, '0'),
(10852, 17, '39', 6, '0'),
(10852, 62, '49', 50, '0'),
(10853, 18, '63', 10, '0'),
(10854, 10, '31', 100, '0'),
(10854, 13, '6', 65, '0'),
(10855, 16, '17', 50, '0'),
(10855, 31, '13', 14, '0'),
(10855, 56, '38', 24, '0'),
(10855, 65, '21', 15, '0'),
(10856, 2, '19', 20, '0'),
(10856, 42, '14', 20, '0'),
(10857, 3, '10', 30, '0'),
(10857, 26, '31', 35, '0'),
(10857, 29, '124', 10, '0'),
(10858, 7, '30', 5, '0'),
(10858, 27, '44', 10, '0'),
(10858, 70, '15', 4, '0'),
(10859, 24, '5', 40, '0'),
(10859, 54, '7', 35, '0'),
(10859, 64, '33', 30, '0'),
(10860, 51, '53', 3, '0'),
(10860, 76, '18', 20, '0'),
(10861, 17, '39', 42, '0'),
(10861, 18, '63', 20, '0'),
(10861, 21, '10', 40, '0'),
(10861, 33, '3', 35, '0'),
(10861, 62, '49', 3, '0'),
(10862, 11, '21', 25, '0'),
(10862, 52, '7', 8, '0'),
(10863, 1, '18', 20, '0'),
(10863, 58, '13', 12, '0'),
(10864, 35, '18', 4, '0'),
(10864, 67, '14', 15, '0'),
(10865, 38, '264', 60, '0'),
(10865, 39, '18', 80, '0'),
(10866, 2, '19', 21, '0'),
(10866, 24, '5', 6, '0'),
(10866, 30, '26', 40, '0'),
(10867, 53, '33', 3, '0'),
(10868, 26, '31', 20, '0'),
(10868, 35, '18', 30, '0'),
(10868, 49, '20', 42, '0'),
(10869, 1, '18', 40, '0'),
(10869, 11, '21', 10, '0'),
(10869, 23, '9', 50, '0'),
(10869, 68, '13', 20, '0'),
(10870, 35, '18', 3, '0'),
(10870, 51, '53', 2, '0'),
(10871, 6, '25', 50, '0'),
(10871, 16, '17', 12, '0'),
(10871, 17, '39', 16, '0'),
(10872, 55, '24', 10, '0'),
(10872, 62, '49', 20, '0'),
(10872, 64, '33', 15, '0'),
(10872, 65, '21', 21, '0'),
(10873, 21, '10', 20, '0'),
(10873, 28, '46', 3, '0'),
(10874, 10, '31', 10, '0'),
(10875, 19, '9', 25, '0'),
(10875, 47, '10', 21, '0'),
(10875, 49, '20', 15, '0'),
(10876, 46, '12', 21, '0'),
(10876, 64, '33', 20, '0'),
(10877, 16, '17', 30, '0'),
(10877, 18, '63', 25, '0'),
(10878, 20, '81', 20, '0'),
(10879, 40, '18', 12, '0'),
(10879, 65, '21', 10, '0'),
(10879, 76, '18', 10, '0'),
(10880, 23, '9', 30, '0'),
(10880, 61, '29', 30, '0'),
(10880, 70, '15', 50, '0'),
(10881, 73, '15', 10, '0'),
(10882, 42, '14', 25, '0'),
(10882, 49, '20', 20, '0'),
(10882, 54, '7', 32, '0'),
(10883, 24, '5', 8, '0'),
(10884, 21, '10', 40, '0'),
(10884, 56, '38', 21, '0'),
(10884, 65, '21', 12, '0'),
(10885, 2, '19', 20, '0'),
(10885, 24, '5', 12, '0'),
(10885, 70, '15', 30, '0'),
(10885, 77, '13', 25, '0'),
(10886, 10, '31', 70, '0'),
(10886, 31, '13', 35, '0'),
(10886, 77, '13', 40, '0'),
(10887, 25, '14', 5, '0'),
(10888, 2, '19', 20, '0'),
(10888, 68, '13', 18, '0'),
(10889, 11, '21', 40, '0'),
(10889, 38, '264', 40, '0'),
(10890, 17, '39', 15, '0'),
(10890, 34, '14', 10, '0'),
(10890, 41, '10', 14, '0'),
(10891, 30, '26', 15, '0'),
(10892, 59, '55', 40, '0'),
(10893, 8, '40', 30, '0'),
(10893, 24, '5', 10, '0'),
(10893, 29, '124', 24, '0'),
(10893, 30, '26', 35, '0'),
(10893, 36, '19', 20, '0'),
(10894, 13, '6', 28, '0'),
(10894, 69, '36', 50, '0'),
(10894, 75, '8', 120, '0'),
(10895, 24, '5', 110, '0'),
(10895, 39, '18', 45, '0'),
(10895, 40, '18', 91, '0'),
(10895, 60, '34', 100, '0'),
(10896, 45, '10', 15, '0'),
(10896, 56, '38', 16, '0'),
(10897, 29, '124', 80, '0'),
(10897, 30, '26', 36, '0'),
(10898, 13, '6', 5, '0'),
(10899, 39, '18', 8, '0'),
(10900, 70, '15', 3, '0'),
(10901, 41, '10', 30, '0'),
(10901, 71, '22', 30, '0'),
(10902, 55, '24', 30, '0'),
(10902, 62, '49', 6, '0'),
(10903, 13, '6', 40, '0'),
(10903, 65, '21', 21, '0'),
(10903, 68, '13', 20, '0'),
(10904, 58, '13', 15, '0'),
(10904, 62, '49', 35, '0'),
(10905, 1, '18', 20, '0'),
(10906, 61, '29', 15, '0'),
(10907, 75, '8', 14, '0'),
(10908, 7, '30', 20, '0'),
(10908, 52, '7', 14, '0'),
(10909, 7, '30', 12, '0'),
(10909, 16, '17', 15, '0'),
(10909, 41, '10', 5, '0'),
(10910, 19, '9', 12, '0'),
(10910, 49, '20', 10, '0'),
(10910, 61, '29', 5, '0'),
(10911, 1, '18', 10, '0'),
(10911, 17, '39', 12, '0'),
(10911, 67, '14', 15, '0'),
(10912, 11, '21', 40, '0'),
(10912, 29, '124', 60, '0'),
(10913, 4, '22', 30, '0'),
(10913, 33, '3', 40, '0'),
(10913, 58, '13', 15, '0'),
(10914, 71, '22', 25, '0'),
(10915, 17, '39', 10, '0'),
(10915, 33, '3', 30, '0'),
(10915, 54, '7', 10, '0'),
(10916, 16, '17', 6, '0'),
(10916, 32, '32', 6, '0'),
(10916, 57, '20', 20, '0'),
(10917, 30, '26', 1, '0'),
(10917, 60, '34', 10, '0'),
(10918, 1, '18', 60, '0'),
(10918, 60, '34', 25, '0'),
(10919, 16, '17', 24, '0'),
(10919, 25, '14', 24, '0'),
(10919, 40, '18', 20, '0'),
(10920, 50, '16', 24, '0'),
(10921, 35, '18', 10, '0'),
(10921, 63, '44', 40, '0'),
(10922, 17, '39', 15, '0'),
(10922, 24, '5', 35, '0'),
(10923, 42, '14', 10, '0'),
(10923, 43, '46', 10, '0'),
(10923, 67, '14', 24, '0'),
(10924, 10, '31', 20, '0'),
(10924, 28, '46', 30, '0'),
(10924, 75, '8', 6, '0'),
(10925, 36, '19', 25, '0'),
(10925, 52, '7', 12, '0'),
(10926, 11, '21', 2, '0'),
(10926, 13, '6', 10, '0'),
(10926, 19, '9', 7, '0'),
(10926, 72, '35', 10, '0'),
(10927, 20, '81', 5, '0'),
(10927, 52, '7', 5, '0'),
(10927, 76, '18', 20, '0'),
(10928, 47, '10', 5, '0'),
(10928, 76, '18', 5, '0'),
(10929, 21, '10', 60, '0'),
(10929, 75, '8', 49, '0'),
(10929, 77, '13', 15, '0'),
(10930, 21, '10', 36, '0'),
(10930, 27, '44', 25, '0'),
(10930, 55, '24', 25, '0'),
(10930, 58, '13', 30, '0'),
(10931, 13, '6', 42, '0'),
(10931, 57, '20', 30, '0'),
(10932, 16, '17', 30, '0'),
(10932, 62, '49', 14, '0'),
(10932, 72, '35', 16, '0'),
(10932, 75, '8', 20, '0'),
(10933, 53, '33', 2, '0'),
(10933, 61, '29', 30, '0'),
(10934, 6, '25', 20, '0'),
(10935, 1, '18', 21, '0'),
(10935, 18, '63', 4, '0'),
(10935, 23, '9', 8, '0'),
(10936, 36, '19', 30, '0'),
(10937, 28, '46', 8, '0'),
(10937, 34, '14', 20, '0'),
(10938, 13, '6', 20, '0'),
(10938, 43, '46', 24, '0'),
(10938, 60, '34', 49, '0'),
(10938, 71, '22', 35, '0'),
(10939, 2, '19', 10, '0'),
(10939, 67, '14', 40, '0'),
(10940, 7, '30', 8, '0'),
(10940, 13, '6', 20, '0'),
(10941, 31, '13', 44, '0'),
(10941, 62, '49', 30, '0'),
(10941, 68, '13', 80, '0'),
(10941, 72, '35', 50, '0'),
(10942, 49, '20', 28, '0'),
(10943, 13, '6', 15, '0'),
(10943, 22, '21', 21, '0'),
(10943, 46, '12', 15, '0'),
(10944, 11, '21', 5, '0'),
(10944, 44, '19', 18, '0'),
(10944, 56, '38', 18, '0'),
(10945, 13, '6', 20, '0'),
(10945, 31, '13', 10, '0'),
(10946, 10, '31', 25, '0'),
(10946, 24, '5', 25, '0'),
(10946, 77, '13', 40, '0'),
(10947, 59, '55', 4, '0'),
(10948, 50, '16', 9, '0'),
(10948, 51, '53', 40, '0'),
(10948, 55, '24', 4, '0'),
(10949, 6, '25', 12, '0'),
(10949, 10, '31', 30, '0'),
(10949, 17, '39', 6, '0'),
(10949, 62, '49', 60, '0'),
(10950, 4, '22', 5, '0'),
(10951, 33, '3', 15, '0'),
(10951, 41, '10', 6, '0'),
(10951, 75, '8', 50, '0'),
(10952, 6, '25', 16, '0'),
(10952, 28, '46', 2, '0'),
(10953, 20, '81', 50, '0'),
(10953, 31, '13', 50, '0'),
(10954, 16, '17', 28, '0'),
(10954, 31, '13', 25, '0'),
(10954, 45, '10', 30, '0'),
(10954, 60, '34', 24, '0'),
(10955, 75, '8', 12, '0'),
(10956, 21, '10', 12, '0'),
(10956, 47, '10', 14, '0'),
(10956, 51, '53', 8, '0'),
(10957, 30, '26', 30, '0'),
(10957, 35, '18', 40, '0'),
(10957, 64, '33', 8, '0'),
(10958, 5, '21', 20, '0'),
(10958, 7, '30', 6, '0'),
(10958, 72, '35', 5, '0'),
(10959, 75, '8', 20, '0'),
(10960, 24, '5', 10, '0'),
(10960, 41, '10', 24, '0'),
(10961, 52, '7', 6, '0'),
(10961, 76, '18', 60, '0'),
(10962, 7, '30', 45, '0'),
(10962, 13, '6', 77, '0'),
(10962, 53, '33', 20, '0'),
(10962, 69, '36', 9, '0'),
(10962, 76, '18', 44, '0'),
(10963, 60, '34', 2, '0'),
(10964, 18, '63', 6, '0'),
(10964, 38, '264', 5, '0'),
(10964, 69, '36', 10, '0'),
(10965, 51, '53', 16, '0'),
(10966, 37, '26', 8, '0'),
(10966, 56, '38', 12, '0'),
(10966, 62, '49', 12, '0'),
(10967, 19, '9', 12, '0'),
(10967, 49, '20', 40, '0'),
(10968, 12, '38', 30, '0'),
(10968, 24, '5', 30, '0'),
(10968, 64, '33', 4, '0'),
(10969, 46, '12', 9, '0'),
(10970, 52, '7', 40, '0'),
(10971, 29, '124', 14, '0'),
(10972, 17, '39', 6, '0'),
(10972, 33, '3', 7, '0'),
(10973, 26, '31', 5, '0'),
(10973, 41, '10', 6, '0'),
(10973, 75, '8', 10, '0'),
(10974, 63, '44', 10, '0'),
(10975, 8, '40', 16, '0'),
(10975, 75, '8', 10, '0'),
(10976, 28, '46', 20, '0'),
(10977, 39, '18', 30, '0'),
(10977, 47, '10', 30, '0'),
(10977, 51, '53', 10, '0'),
(10977, 63, '44', 20, '0'),
(10978, 8, '40', 20, '0'),
(10978, 21, '10', 40, '0'),
(10978, 40, '18', 10, '0'),
(10978, 44, '19', 6, '0'),
(10979, 7, '30', 18, '0'),
(10979, 12, '38', 20, '0'),
(10979, 24, '5', 80, '0'),
(10979, 27, '44', 30, '0'),
(10979, 31, '13', 24, '0'),
(10979, 63, '44', 35, '0'),
(10980, 75, '8', 40, '0'),
(10981, 38, '264', 60, '0'),
(10982, 7, '30', 20, '0'),
(10982, 43, '46', 9, '0'),
(10983, 13, '6', 84, '0'),
(10983, 57, '20', 15, '0'),
(10984, 16, '17', 55, '0'),
(10984, 24, '5', 20, '0'),
(10984, 36, '19', 40, '0'),
(10985, 16, '17', 36, '0'),
(10985, 18, '63', 8, '0'),
(10985, 32, '32', 35, '0'),
(10986, 11, '21', 30, '0'),
(10986, 20, '81', 15, '0'),
(10986, 76, '18', 10, '0'),
(10986, 77, '13', 15, '0'),
(10987, 7, '30', 60, '0'),
(10987, 43, '46', 6, '0'),
(10987, 72, '35', 20, '0'),
(10988, 7, '30', 60, '0'),
(10988, 62, '49', 40, '0'),
(10989, 6, '25', 40, '0'),
(10989, 11, '21', 15, '0'),
(10989, 41, '10', 4, '0'),
(10990, 21, '10', 65, '0'),
(10990, 34, '14', 60, '0'),
(10990, 55, '24', 65, '0'),
(10990, 61, '29', 66, '0'),
(10991, 2, '19', 50, '0'),
(10991, 70, '15', 20, '0'),
(10991, 76, '18', 90, '0'),
(10992, 72, '35', 2, '0'),
(10993, 29, '124', 50, '0'),
(10993, 41, '10', 35, '0'),
(10994, 59, '55', 18, '0'),
(10995, 51, '53', 20, '0'),
(10995, 60, '34', 4, '0'),
(10996, 42, '14', 40, '0'),
(10997, 32, '32', 50, '0'),
(10997, 46, '12', 20, '0'),
(10997, 52, '7', 20, '0'),
(10998, 24, '5', 12, '0'),
(10998, 61, '29', 7, '0'),
(10998, 74, '10', 20, '0'),
(10998, 75, '8', 30, '0'),
(10999, 41, '10', 20, '0'),
(10999, 51, '53', 15, '0'),
(10999, 77, '13', 21, '0'),
(11000, 4, '22', 25, '0'),
(11000, 24, '5', 30, '0'),
(11000, 77, '13', 30, '0'),
(11001, 7, '30', 60, '0'),
(11001, 22, '21', 25, '0'),
(11001, 46, '12', 25, '0'),
(11001, 55, '24', 6, '0'),
(11002, 13, '6', 56, '0');
INSERT INTO `detallesdepedidos` (`idpedido`, `idproducto`, `preciounidad`, `cantidad`, `descuento`) VALUES
(11002, 35, '18', 15, '0'),
(11002, 42, '14', 24, '0'),
(11002, 55, '24', 40, '0'),
(11003, 1, '18', 4, '0'),
(11003, 40, '18', 10, '0'),
(11003, 52, '7', 10, '0'),
(11004, 26, '31', 6, '0'),
(11004, 76, '18', 6, '0'),
(11005, 1, '18', 2, '0'),
(11005, 59, '55', 10, '0'),
(11006, 1, '18', 8, '0'),
(11006, 29, '124', 2, '0'),
(11007, 8, '40', 30, '0'),
(11007, 29, '124', 10, '0'),
(11007, 42, '14', 14, '0'),
(11008, 28, '46', 70, '0'),
(11008, 34, '14', 90, '0'),
(11008, 71, '22', 21, '0'),
(11009, 24, '5', 12, '0'),
(11009, 36, '19', 18, '0'),
(11009, 60, '34', 9, '0'),
(11010, 7, '30', 20, '0'),
(11010, 24, '5', 10, '0'),
(11011, 58, '13', 40, '0'),
(11011, 71, '22', 20, '0'),
(11012, 19, '9', 50, '0'),
(11012, 60, '34', 36, '0'),
(11012, 71, '22', 60, '0'),
(11013, 23, '9', 10, '0'),
(11013, 42, '14', 4, '0'),
(11013, 45, '10', 20, '0'),
(11013, 68, '13', 2, '0'),
(11014, 41, '10', 28, '0'),
(11015, 30, '26', 15, '0'),
(11015, 77, '13', 18, '0'),
(11016, 31, '13', 15, '0'),
(11016, 36, '19', 16, '0'),
(11017, 3, '10', 25, '0'),
(11017, 59, '55', 110, '0'),
(11017, 70, '15', 30, '0'),
(11018, 12, '38', 20, '0'),
(11018, 18, '63', 10, '0'),
(11018, 56, '38', 5, '0'),
(11019, 46, '12', 3, '0'),
(11019, 49, '20', 2, '0'),
(11020, 10, '31', 24, '0'),
(11021, 2, '19', 11, '0'),
(11021, 20, '81', 15, '0'),
(11021, 26, '31', 63, '0'),
(11021, 51, '53', 44, '0'),
(11021, 72, '35', 35, '0'),
(11022, 19, '9', 35, '0'),
(11022, 69, '36', 30, '0'),
(11023, 7, '30', 4, '0'),
(11023, 43, '46', 30, '0'),
(11024, 26, '31', 12, '0'),
(11024, 33, '3', 30, '0'),
(11024, 65, '21', 21, '0'),
(11024, 71, '22', 50, '0'),
(11025, 1, '18', 10, '0'),
(11025, 13, '6', 20, '0'),
(11026, 18, '63', 8, '0'),
(11026, 51, '53', 10, '0'),
(11027, 24, '5', 30, '0'),
(11027, 62, '49', 21, '0'),
(11028, 55, '24', 35, '0'),
(11028, 59, '55', 24, '0'),
(11029, 56, '38', 20, '0'),
(11029, 63, '44', 12, '0'),
(11030, 2, '19', 100, '0'),
(11030, 5, '21', 70, '0'),
(11030, 29, '124', 60, '0'),
(11030, 59, '55', 100, '0'),
(11031, 1, '18', 45, '0'),
(11031, 13, '6', 80, '0'),
(11031, 24, '5', 21, '0'),
(11031, 64, '33', 20, '0'),
(11031, 71, '22', 16, '0'),
(11032, 36, '19', 35, '0'),
(11032, 38, '264', 25, '0'),
(11032, 59, '55', 30, '0'),
(11033, 53, '33', 70, '0'),
(11033, 69, '36', 36, '0'),
(11034, 21, '10', 15, '0'),
(11034, 44, '19', 12, '0'),
(11034, 61, '29', 6, '0'),
(11035, 1, '18', 10, '0'),
(11035, 35, '18', 60, '0'),
(11035, 42, '14', 30, '0'),
(11035, 54, '7', 10, '0'),
(11036, 13, '6', 7, '0'),
(11036, 59, '55', 30, '0'),
(11037, 70, '15', 4, '0'),
(11038, 40, '18', 5, '0'),
(11038, 52, '7', 2, '0'),
(11038, 71, '22', 30, '0'),
(11039, 28, '46', 20, '0'),
(11039, 35, '18', 24, '0'),
(11039, 49, '20', 60, '0'),
(11039, 57, '20', 28, '0'),
(11040, 21, '10', 20, '0'),
(11041, 2, '19', 30, '0'),
(11041, 63, '44', 30, '0'),
(11042, 44, '19', 15, '0'),
(11042, 61, '29', 4, '0'),
(11043, 11, '21', 10, '0'),
(11044, 62, '49', 12, '0'),
(11045, 33, '3', 15, '0'),
(11045, 51, '53', 24, '0'),
(11046, 12, '38', 20, '0'),
(11046, 32, '32', 15, '0'),
(11046, 35, '18', 18, '0'),
(11047, 1, '18', 25, '0'),
(11047, 5, '21', 30, '0'),
(11048, 68, '13', 42, '0'),
(11049, 2, '19', 10, '0'),
(11049, 12, '38', 4, '0'),
(11050, 76, '18', 50, '0'),
(11051, 24, '5', 10, '0'),
(11052, 43, '46', 30, '0'),
(11052, 61, '29', 10, '0'),
(11053, 18, '63', 35, '0'),
(11053, 32, '32', 20, '0'),
(11053, 64, '33', 25, '0'),
(11054, 33, '3', 10, '0'),
(11054, 67, '14', 20, '0'),
(11055, 24, '5', 15, '0'),
(11055, 25, '14', 15, '0'),
(11055, 51, '53', 20, '0'),
(11055, 57, '20', 20, '0'),
(11056, 7, '30', 40, '0'),
(11056, 55, '24', 35, '0'),
(11056, 60, '34', 50, '0'),
(11057, 70, '15', 3, '0'),
(11058, 21, '10', 3, '0'),
(11058, 60, '34', 21, '0'),
(11058, 61, '29', 4, '0'),
(11059, 13, '6', 30, '0'),
(11059, 17, '39', 12, '0'),
(11059, 60, '34', 35, '0'),
(11060, 60, '34', 4, '0'),
(11060, 77, '13', 10, '0'),
(11061, 60, '34', 15, '0'),
(11062, 53, '33', 10, '0'),
(11062, 70, '15', 12, '0'),
(11063, 34, '14', 30, '0'),
(11063, 40, '18', 40, '0'),
(11063, 41, '10', 30, '0'),
(11064, 17, '39', 77, '0'),
(11064, 41, '10', 12, '0'),
(11064, 53, '33', 25, '0'),
(11064, 55, '24', 4, '0'),
(11064, 68, '13', 55, '0'),
(11065, 30, '26', 4, '0'),
(11065, 54, '7', 20, '0'),
(11066, 16, '17', 3, '0'),
(11066, 19, '9', 42, '0'),
(11066, 34, '14', 35, '0'),
(11067, 41, '10', 9, '0'),
(11068, 28, '46', 8, '0'),
(11068, 43, '46', 36, '0'),
(11068, 77, '13', 28, '0'),
(11069, 39, '18', 20, '0'),
(11070, 1, '18', 40, '0'),
(11070, 2, '19', 20, '0'),
(11070, 16, '17', 30, '0'),
(11070, 31, '13', 20, '0'),
(11071, 7, '30', 15, '0'),
(11071, 13, '6', 10, '0'),
(11072, 2, '19', 8, '0'),
(11072, 41, '10', 40, '0'),
(11072, 50, '16', 22, '0'),
(11072, 64, '33', 130, '0'),
(11073, 11, '21', 10, '0'),
(11073, 24, '5', 20, '0'),
(11074, 16, '17', 14, '0'),
(11075, 2, '19', 10, '0'),
(11075, 46, '12', 30, '0'),
(11075, 76, '18', 2, '0'),
(11076, 6, '25', 20, '0'),
(11076, 14, '23', 20, '0'),
(11076, 19, '9', 10, '0'),
(11077, 2, '19', 24, '0'),
(11077, 3, '10', 4, '0'),
(11077, 4, '22', 1, '0'),
(11077, 6, '25', 1, '0'),
(11077, 7, '30', 1, '0'),
(11077, 8, '40', 2, '0'),
(11077, 10, '31', 1, '0'),
(11077, 12, '38', 2, '0'),
(11077, 13, '6', 4, '0'),
(11077, 14, '23', 1, '0'),
(11077, 16, '17', 2, '0'),
(11077, 20, '81', 1, '0'),
(11077, 23, '9', 2, '0'),
(11077, 32, '32', 1, '0'),
(11077, 39, '18', 2, '0'),
(11077, 41, '10', 3, '0'),
(11077, 46, '12', 3, '0'),
(11077, 52, '7', 2, '0'),
(11077, 55, '24', 2, '0'),
(11077, 60, '34', 2, '0'),
(11077, 64, '33', 2, '0'),
(11077, 66, '17', 1, '0'),
(11077, 73, '15', 2, '0'),
(11077, 75, '8', 4, '0'),
(11077, 77, '13', 2, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` int(11) NOT NULL,
  `Apellidos` varchar(20) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `cargo` varchar(40) DEFAULT NULL,
  `Tratamiento` varchar(40) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `FechaContratacion` date DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `ciudad` varchar(15) DEFAULT NULL,
  `region` varchar(15) DEFAULT NULL,
  `codPostal` varchar(10) DEFAULT NULL,
  `pais` varchar(15) DEFAULT NULL,
  `TelDomicilio` varchar(24) DEFAULT NULL,
  `Extension` varchar(4) DEFAULT NULL,
  `notas` text DEFAULT NULL,
  `Jefe` int(11) DEFAULT NULL,
  `sueldoBasico` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `Apellidos`, `Nombre`, `cargo`, `Tratamiento`, `FechaNacimiento`, `FechaContratacion`, `direccion`, `ciudad`, `region`, `codPostal`, `pais`, `TelDomicilio`, `Extension`, `notas`, `Jefe`, `sueldoBasico`) VALUES
(1, 'Davolio', 'Nancy', 'Representante de ventas', 'Srta.', '1948-12-08', '1992-05-01', '507 - 20th Ave. E.Apt. 2A', 'Seattle', 'WA', '98122', 'EE.UU.', '(206) 555-9857', '5467', 'Su formación incluye una licenciatura en Psicología por la Universidad del Estado de Colorado. en 1970. También completó \"El arte de la llamada fría\". Nancy es miembro de Toastmasters Internacional.', 2, '1000'),
(2, 'Fuller', 'Andrew', 'Vicepresidente comercial', 'Dr.', '1952-02-19', '1992-08-14', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'EE.UU.', '(206) 555-9482', '3457', 'Andrew completó su licenciatura en Comercio en 1974 y un doctorado en Marketing Internacional de la Universidad de Dallas en 1981. Habla con fluidez en francés e italiano y lee el alemán. Ingresó en la empresa como representante de ventas. fue ascendidoen Enero de 1992 y a vicepresidente comercial en Marzo de 1993.Andrew es miembro de la Mesa redonda de administración de Ventas. la Cámara de comercio de Seattle y de la Asociación de importadores Rim del Pacífico.', NULL, NULL),
(3, 'Leverling', 'Janet', 'Representante de ventas', 'Srta.', '1963-08-30', '1992-04-01', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'EE.UU.', '(206) 555-3412', '3355', 'Janet es licenciada en Química por la Universidad de Boston (1984). También ha completado un programa de formación en Gestión de minoristas de alimentación. Janet fue contratada como vendedora asociada en 1991 y fue ascendida a representante de ventas en Febrero de 1992', 2, '1000'),
(4, 'Peacock', 'Margaret', 'Representante de ventas', 'Sra.', '1937-09-19', '1993-05-03', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'EE.UU.', '(206) 555-8122', '5176', 'Margaret es licenciada en Literatura inglesa por el Colegio Universitario Concordia (1958). y tiene un master del Instituto Americano de Artes Culinarias (1966). Estuvo asignada temporalmente a la oficina de Londres desde julio hasta Noviembre de 1992.', 2, '1000'),
(5, 'Buchanan', 'Steven', 'Gerente de ventas', 'Sr.', '1955-03-04', '1993-10-17', '14 Garrett Hill', 'Londres', NULL, 'SW1 8JR', 'Reino Unido', '(71) 555-4848', '3453', 'Steven Buchanan se graduó en la Universidad de St. Andrews. Escocia. en 1976. Tras su ingreso en la empresa. en 1992. dedicó 6 meses a un programa de orientación en la oficina de Seattle y luego volvió a su puesto permanente en Londres.Fue ascendido a gestor de ventas en Marzo de 1993. Ha completado con éxito los cursos de Telemarketing y Gestión de ventas internacional. Habla francés.', 2, '1000'),
(6, 'Suyama', 'Michael', 'Representante de ventas', 'Sr.', '1963-07-02', '1993-10-17', 'Coventry HouseMiner Rd.', 'Londres', NULL, 'EC2 7JR', 'Reino Unido', '(71) 555-7773', '428', 'Michael se graduó en la Universidad de Sussex (MA. economía. 1983) y la Universidad de California en Los Angeles (MBA. marketing. 1986). También ha asistido a cursos de Ventas multiculturales y Administración del tiempo para profesionales de ventas. Hablajaponés y lee y escribe en francés. portugués y español.', 5, NULL),
(7, 'King', 'Robert', 'Representante de ventas', 'Sr.', '1960-05-29', '1994-01-02', 'Edgeham HollowWinchester Way', 'Londres', NULL, 'RG1 9SP', 'Reino Unido', '(71) 555-5598', '465', 'Robert King sirvió en la organización Peace Corps y viajó mucho. antes de completar su licenciatura en inglés en la Universidad de Michigan en 1992. el año en que ingresó en la empresa. Después de completar un curso denominado \"Ventas en Europa\". fuetransferido a la oficina de Londres en Marzo de 1993.', 5, NULL),
(8, 'Callahan', 'Laura', 'Coordinador ventas interno', 'Srta.', '1958-01-09', '1994-03-05', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'EE.UU.', '(206) 555-1189', '2344', 'Laura se graduó en Psicología por la Universidad de Washington. También completó un curso de francés de negocios. Lee y escribe en francés.', 2, '1000'),
(9, 'Dodsworth', 'Anne', 'Representante de ventas', 'Srta.', '1966-01-27', '1994-11-15', '7 Houndstooth Rd.', 'Londres', NULL, 'WG2 7LT', 'Reino Unido', '(71) 555-4444', '452', 'Anne tiene una licenciatura en inglés por el  St. Lawrence College.  Habla con fluidez el francés y el alemán.', 5, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e_ventas`
--

CREATE TABLE `e_ventas` (
  `e_idvta` int(11) DEFAULT NULL,
  `e_prodvta` varchar(100) DEFAULT NULL,
  `evento` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `e_ventas`
--

INSERT INTO `e_ventas` (`e_idvta`, `e_prodvta`, `evento`) VALUES
(1, 'vino', 'insertado'),
(2, 'lapiz', 'insertado'),
(2, 'telefono', 'actualizado'),
(2, 'telefono', 'actualizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `IdPedido` int(11) NOT NULL,
  `IdCliente` varchar(5) NOT NULL,
  `IdEmpleado` int(11) NOT NULL,
  `FechaPedido` date DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `FechaEnvio` date DEFAULT NULL,
  `FormaEnvio` int(11) DEFAULT NULL,
  `Cargo` decimal(10,0) DEFAULT NULL,
  `Destinatario` varchar(60) DEFAULT NULL,
  `DireccionDestinatario` varchar(60) DEFAULT NULL,
  `CiudadDestinatario` varchar(60) DEFAULT NULL,
  `RegionDestinatario` varchar(60) DEFAULT NULL,
  `CodPostalDestinatario` varchar(60) DEFAULT NULL,
  `PaisDestinatario` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`IdPedido`, `IdCliente`, `IdEmpleado`, `FechaPedido`, `FechaEntrega`, `FechaEnvio`, `FormaEnvio`, `Cargo`, `Destinatario`, `DireccionDestinatario`, `CiudadDestinatario`, `RegionDestinatario`, `CodPostalDestinatario`, `PaisDestinatario`) VALUES
(10248, 'WILMK', 5, '1994-08-04', '1994-09-01', '1994-08-16', 3, '32', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10249, 'TOMSP', 6, '1994-08-05', '1994-09-16', '1994-08-10', 1, '12', 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania'),
(10250, 'HANAR', 4, '1994-08-08', '1994-09-05', '1994-08-12', 2, '66', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10251, 'VICTE', 3, '1994-08-08', '1994-09-05', '1994-08-15', 1, '41', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10252, 'SUPRD', 4, '1994-08-09', '1994-09-06', '1994-08-11', 2, '51', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10253, 'HANAR', 3, '1994-08-10', '1994-08-24', '1994-08-16', 2, '58', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10254, 'CHOPS', 5, '1994-08-11', '1994-09-08', '1994-08-23', 2, '23', 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Suiza'),
(10255, 'RICSU', 9, '1994-08-12', '1994-09-09', '1994-08-15', 3, '148', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(10256, 'WELLI', 3, '1994-08-15', '1994-09-12', '1994-08-17', 2, '14', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10257, 'HILAA', 4, '1994-08-16', '1994-09-13', '1994-08-22', 3, '82', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10258, 'ERNSH', 1, '1994-08-17', '1994-09-14', '1994-08-23', 1, '141', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10259, 'CENTC', 4, '1994-08-18', '1994-09-15', '1994-08-25', 3, '3', 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'México D.F.', NULL, '05022', 'México'),
(10260, 'OTTIK', 4, '1994-08-19', '1994-09-16', '1994-08-29', 1, '55', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10261, 'QUEDE', 4, '1994-08-19', '1994-09-16', '1994-08-30', 2, '3', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10262, 'RATTC', 8, '1994-08-22', '1994-09-19', '1994-08-25', 3, '48', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10263, 'ERNSH', 9, '1994-08-23', '1994-09-20', '1994-08-31', 3, '146', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10264, 'FOLKO', 6, '1994-08-24', '1994-09-21', '1994-09-23', 3, '4', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10265, 'BLONP', 2, '1994-08-25', '1994-09-22', '1994-09-12', 1, '55', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10266, 'WARTH', 3, '1994-08-26', '1994-10-07', '1994-08-31', 3, '26', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10267, 'FRANK', 4, '1994-08-29', '1994-09-26', '1994-09-06', 1, '209', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10268, 'GROSR', 8, '1994-08-30', '1994-09-27', '1994-09-02', 3, '66', 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela'),
(10269, 'WHITC', 5, '1994-08-31', '1994-09-14', '1994-09-09', 1, '5', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10270, 'WARTH', 1, '1994-09-01', '1994-09-29', '1994-09-02', 1, '137', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10271, 'SPLIR', 6, '1994-09-01', '1994-09-29', '1994-09-30', 2, '5', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10272, 'RATTC', 6, '1994-09-02', '1994-09-30', '1994-09-06', 2, '98', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10273, 'QUICK', 3, '1994-09-05', '1994-10-03', '1994-09-12', 3, '76', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10274, 'VINET', 6, '1994-09-06', '1994-10-04', '1994-09-16', 1, '6', 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'Francia'),
(10275, 'MAGAA', 1, '1994-09-07', '1994-10-05', '1994-09-09', 1, '27', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10276, 'TORTU', 8, '1994-09-08', '1994-09-22', '1994-09-14', 3, '14', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10277, 'MORGK', 2, '1994-09-09', '1994-10-07', '1994-09-13', 3, '126', 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Alemania'),
(10278, 'BERGS', 8, '1994-09-12', '1994-10-10', '1994-09-16', 2, '93', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10279, 'LEHMS', 8, '1994-09-13', '1994-10-11', '1994-09-16', 2, '26', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10280, 'BERGS', 2, '1994-09-14', '1994-10-12', '1994-10-13', 1, '9', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10281, 'ROMEY', 4, '1994-09-14', '1994-09-28', '1994-09-21', 1, '3', 'Romero y tomillo', 'Gran Vía. 1', 'Madrid', NULL, '28001', 'España'),
(10282, 'ROMEY', 4, '1994-09-15', '1994-10-13', '1994-09-21', 1, '13', 'Romero y tomillo', 'Gran Vía. 1', 'Madrid', NULL, '28001', 'España'),
(10283, 'LILAS', 3, '1994-09-16', '1994-10-14', '1994-09-23', 3, '85', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10284, 'LEHMS', 4, '1994-09-19', '1994-10-17', '1994-09-27', 1, '77', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10285, 'QUICK', 1, '1994-09-20', '1994-10-18', '1994-09-26', 2, '77', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10286, 'QUICK', 8, '1994-09-21', '1994-10-19', '1994-09-30', 3, '229', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10287, 'RICAR', 8, '1994-09-22', '1994-10-20', '1994-09-28', 3, '13', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10288, 'REGGC', 4, '1994-09-23', '1994-10-21', '1994-10-04', 1, '7', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10289, 'BSBEV', 7, '1994-09-26', '1994-10-24', '1994-09-28', 3, '23', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10290, 'COMMI', 8, '1994-09-27', '1994-10-25', '1994-10-04', 1, '80', 'Comércio Mineiro', 'Av. dos Lusíadas. 23', 'São Paulo', 'SP', '05432-043', 'Brasil'),
(10291, 'QUEDE', 6, '1994-09-27', '1994-10-25', '1994-10-05', 2, '6', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10292, 'TRADH', 1, '1994-09-28', '1994-10-26', '1994-10-03', 2, '1', 'Tradição Hipermercados', 'Av. Inês de Castro. 414', 'São Paulo', 'SP', '05634-030', 'Brasil'),
(10293, 'TORTU', 1, '1994-09-29', '1994-10-27', '1994-10-12', 3, '21', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10294, 'RATTC', 4, '1994-09-30', '1994-10-28', '1994-10-06', 2, '147', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10295, 'VINET', 2, '1994-10-03', '1994-10-31', '1994-10-11', 2, '1', 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'Francia'),
(10296, 'LILAS', 6, '1994-10-04', '1994-11-01', '1994-10-12', 1, '0', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10297, 'BLONP', 5, '1994-10-05', '1994-11-16', '1994-10-11', 2, '6', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10298, 'HUNGO', 6, '1994-10-06', '1994-11-03', '1994-10-12', 2, '168', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10299, 'RICAR', 4, '1994-10-07', '1994-11-04', '1994-10-14', 2, '30', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10300, 'MAGAA', 2, '1994-10-10', '1994-11-07', '1994-10-19', 2, '18', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10301, 'WANDK', 8, '1994-10-10', '1994-11-07', '1994-10-18', 2, '45', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10302, 'SUPRD', 4, '1994-10-11', '1994-11-08', '1994-11-09', 2, '6', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10303, 'GODOS', 7, '1994-10-12', '1994-11-09', '1994-10-19', 2, '108', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(10304, 'TORTU', 1, '1994-10-13', '1994-11-10', '1994-10-18', 2, '64', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10305, 'OLDWO', 8, '1994-10-14', '1994-11-11', '1994-11-09', 3, '258', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10306, 'ROMEY', 1, '1994-10-17', '1994-11-14', '1994-10-24', 3, '8', 'Romero y tomillo', 'Gran Vía. 1', 'Madrid', NULL, '28001', 'España'),
(10307, 'LONEP', 2, '1994-10-18', '1994-11-15', '1994-10-26', 2, '1', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10308, 'ANATR', 7, '1994-10-19', '1994-11-16', '1994-10-25', 3, '2', 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'México'),
(10309, 'HUNGO', 3, '1994-10-20', '1994-11-17', '1994-11-23', 1, '47', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10310, 'THEBI', 8, '1994-10-21', '1994-11-18', '1994-10-28', 2, '18', 'The Big Cheese', '89 Jefferson WaySuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10311, 'DUMON', 1, '1994-10-21', '1994-11-04', '1994-10-27', 3, '25', 'Du monde entier', '67. rue des Cinquante Otages', 'Nantes', NULL, '44000', 'Francia'),
(10312, 'WANDK', 2, '1994-10-24', '1994-11-21', '1994-11-03', 2, '40', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10313, 'QUICK', 2, '1994-10-25', '1994-11-22', '1994-11-04', 2, '2', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10314, 'RATTC', 1, '1994-10-26', '1994-11-23', '1994-11-04', 2, '74', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10315, 'ISLAT', 4, '1994-10-27', '1994-11-24', '1994-11-03', 2, '42', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10316, 'RATTC', 1, '1994-10-28', '1994-11-25', '1994-11-08', 3, '150', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10317, 'LONEP', 6, '1994-10-31', '1994-11-28', '1994-11-10', 1, '13', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10318, 'ISLAT', 8, '1994-11-01', '1994-11-29', '1994-11-04', 2, '5', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10319, 'TORTU', 7, '1994-11-02', '1994-11-30', '1994-11-11', 3, '65', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10320, 'WARTH', 5, '1994-11-03', '1994-11-17', '1994-11-18', 3, '35', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10321, 'ISLAT', 3, '1994-11-03', '1994-12-01', '1994-11-11', 2, '3', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10322, 'PERIC', 7, '1994-11-04', '1994-12-02', '1994-11-23', 3, '0', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México'),
(10323, 'KOENE', 4, '1994-11-07', '1994-12-05', '1994-11-14', 1, '5', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10324, 'SAVEA', 9, '1994-11-08', '1994-12-06', '1994-11-10', 1, '214', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10325, 'KOENE', 1, '1994-11-09', '1994-11-23', '1994-11-14', 3, '65', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10326, 'BOLID', 4, '1994-11-10', '1994-12-08', '1994-11-14', 2, '78', 'Bólido Comidas preparadas', 'C/ Araquil. 67', 'Madrid', NULL, '28023', 'España'),
(10327, 'FOLKO', 2, '1994-11-11', '1994-12-09', '1994-11-14', 1, '63', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10328, 'FURIB', 4, '1994-11-14', '1994-12-12', '1994-11-17', 3, '87', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
(10329, 'SPLIR', 4, '1994-11-15', '1994-12-27', '1994-11-23', 2, '192', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10330, 'LILAS', 3, '1994-11-16', '1994-12-14', '1994-11-28', 1, '13', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10331, 'BONAP', 9, '1994-11-16', '1994-12-28', '1994-11-21', 1, '10', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10332, 'MEREP', 3, '1994-11-17', '1994-12-29', '1994-11-21', 2, '53', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10333, 'WARTH', 5, '1994-11-18', '1994-12-16', '1994-11-25', 3, '1', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10334, 'VICTE', 8, '1994-11-21', '1994-12-19', '1994-11-28', 2, '9', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10335, 'HUNGO', 7, '1994-11-22', '1994-12-20', '1994-11-24', 2, '42', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10336, 'PRINI', 7, '1994-11-23', '1994-12-21', '1994-11-25', 2, '16', 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
(10337, 'FRANK', 4, '1994-11-24', '1994-12-22', '1994-11-29', 3, '108', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10338, 'OLDWO', 4, '1994-11-25', '1994-12-23', '1994-11-29', 3, '84', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10339, 'MEREP', 2, '1994-11-28', '1994-12-26', '1994-12-05', 2, '16', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10340, 'BONAP', 1, '1994-11-29', '1994-12-27', '1994-12-09', 3, '166', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10341, 'SIMOB', 7, '1994-11-29', '1994-12-27', '1994-12-06', 3, '27', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(10342, 'FRANK', 4, '1994-11-30', '1994-12-14', '1994-12-05', 2, '55', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10343, 'LEHMS', 4, '1994-12-01', '1994-12-29', '1994-12-07', 1, '110', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10344, 'WHITC', 4, '1994-12-02', '1994-12-30', '1994-12-06', 2, '23', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10345, 'QUICK', 2, '1994-12-05', '1995-01-02', '1994-12-12', 2, '249', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10346, 'RATTC', 3, '1994-12-06', '1995-01-17', '1994-12-09', 3, '142', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10347, 'FAMIA', 4, '1994-12-07', '1995-01-04', '1994-12-09', 3, '3', 'Familia Arquibaldo', 'Rua Orós. 92', 'São Paulo', 'SP', '05442-030', 'Brasil'),
(10348, 'WANDK', 4, '1994-12-08', '1995-01-05', '1994-12-16', 2, '1', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10349, 'SPLIR', 7, '1994-12-09', '1995-01-06', '1994-12-16', 1, '9', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10350, 'LAMAI', 6, '1994-12-12', '1995-01-09', '1995-01-03', 2, '64', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10351, 'ERNSH', 1, '1994-12-12', '1995-01-09', '1994-12-21', 1, '162', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10352, 'FURIB', 3, '1994-12-13', '1994-12-27', '1994-12-19', 3, '1', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
(10353, 'PICCO', 7, '1994-12-14', '1995-01-11', '1994-12-26', 3, '361', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10354, 'PERIC', 8, '1994-12-15', '1995-01-12', '1994-12-21', 3, '54', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México'),
(10355, 'AROUT', 6, '1994-12-16', '1995-01-13', '1994-12-21', 1, '42', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10356, 'WANDK', 6, '1994-12-19', '1995-01-16', '1994-12-28', 2, '37', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10357, 'LILAS', 1, '1994-12-20', '1995-01-17', '1995-01-02', 3, '35', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10358, 'LAMAI', 5, '1994-12-21', '1995-01-18', '1994-12-28', 1, '20', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10359, 'SEVES', 5, '1994-12-22', '1995-01-19', '1994-12-27', 3, '288', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10360, 'BLONP', 4, '1994-12-23', '1995-01-20', '1995-01-02', 3, '132', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10361, 'QUICK', 1, '1994-12-23', '1995-01-20', '1995-01-03', 2, '183', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10362, 'BONAP', 3, '1994-12-26', '1995-01-23', '1994-12-29', 1, '96', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10363, 'DRACD', 4, '1994-12-27', '1995-01-24', '1995-01-04', 3, '31', 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Alemania'),
(10364, 'EASTC', 1, '1994-12-27', '1995-02-07', '1995-01-04', 1, '72', 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'Reino Unido'),
(10365, 'ANTON', 3, '1994-12-28', '1995-01-25', '1995-01-02', 2, '22', 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México'),
(10366, 'GALED', 8, '1994-12-29', '1995-02-09', '1995-01-30', 2, '10', 'Galería del gastronómo', 'Rambla de Cataluña. 23', 'Barcelona', NULL, '8022', 'España'),
(10367, 'VAFFE', 7, '1994-12-29', '1995-01-26', '1995-01-02', 3, '14', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10368, 'ERNSH', 2, '1994-12-30', '1995-01-27', '1995-01-02', 2, '102', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10369, 'SPLIR', 8, '1995-01-02', '1995-01-30', '1995-01-09', 2, '196', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10370, 'CHOPS', 6, '1995-01-03', '1995-01-31', '1995-01-27', 2, '1', 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Suiza'),
(10371, 'LAMAI', 1, '1995-01-03', '1995-01-31', '1995-01-24', 1, '0', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10372, 'QUEEN', 5, '1995-01-04', '1995-02-01', '1995-01-09', 2, '891', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10373, 'HUNGO', 4, '1995-01-05', '1995-02-02', '1995-01-11', 3, '124', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10374, 'WOLZA', 1, '1995-01-05', '1995-02-02', '1995-01-09', 3, '4', 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Polonia'),
(10375, 'HUNGC', 3, '1995-01-06', '1995-02-03', '1995-01-09', 2, '20', 'Hungry Coyote Import Store', 'City Center Plaza516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10376, 'MEREP', 1, '1995-01-09', '1995-02-06', '1995-01-13', 2, '20', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10377, 'SEVES', 1, '1995-01-09', '1995-02-06', '1995-01-13', 3, '22', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10378, 'FOLKO', 5, '1995-01-10', '1995-02-07', '1995-01-19', 3, '5', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10379, 'QUEDE', 2, '1995-01-11', '1995-02-08', '1995-01-13', 1, '45', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10380, 'HUNGO', 8, '1995-01-12', '1995-02-09', '1995-02-16', 3, '35', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10381, 'LILAS', 3, '1995-01-12', '1995-02-09', '1995-01-13', 3, '8', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10382, 'ERNSH', 4, '1995-01-13', '1995-02-10', '1995-01-16', 1, '95', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10383, 'AROUT', 8, '1995-01-16', '1995-02-13', '1995-01-18', 3, '34', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10384, 'BERGS', 3, '1995-01-16', '1995-02-13', '1995-01-20', 3, '169', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10385, 'SPLIR', 1, '1995-01-17', '1995-02-14', '1995-01-23', 2, '31', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10386, 'FAMIA', 9, '1995-01-18', '1995-02-01', '1995-01-25', 3, '14', 'Familia Arquibaldo', 'Rua Orós. 92', 'São Paulo', 'SP', '05442-030', 'Brasil'),
(10387, 'SANTG', 1, '1995-01-18', '1995-02-15', '1995-01-20', 2, '94', 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega'),
(10388, 'SEVES', 2, '1995-01-19', '1995-02-16', '1995-01-20', 1, '35', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10389, 'BOTTM', 4, '1995-01-20', '1995-02-17', '1995-01-24', 2, '47', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10390, 'ERNSH', 6, '1995-01-23', '1995-02-20', '1995-01-26', 1, '126', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10391, 'DRACD', 3, '1995-01-23', '1995-02-20', '1995-01-31', 3, '5', 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Alemania'),
(10392, 'PICCO', 2, '1995-01-24', '1995-02-21', '1995-02-01', 3, '122', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10393, 'SAVEA', 1, '1995-01-25', '1995-02-22', '1995-02-03', 3, '127', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10394, 'HUNGC', 1, '1995-01-25', '1995-02-22', '1995-02-03', 3, '30', 'Hungry Coyote Import Store', 'City Center Plaza516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10395, 'HILAA', 6, '1995-01-26', '1995-02-23', '1995-02-03', 1, '184', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10396, 'FRANK', 1, '1995-01-27', '1995-02-10', '1995-02-06', 3, '135', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10397, 'PRINI', 5, '1995-01-27', '1995-02-24', '1995-02-02', 1, '60', 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
(10398, 'SAVEA', 2, '1995-01-30', '1995-02-27', '1995-02-09', 3, '89', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10399, 'VAFFE', 8, '1995-01-31', '1995-02-14', '1995-02-08', 3, '27', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10400, 'EASTC', 1, '1995-02-01', '1995-03-01', '1995-02-16', 3, '84', 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'Reino Unido'),
(10401, 'RATTC', 1, '1995-02-01', '1995-03-01', '1995-02-10', 1, '13', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10402, 'ERNSH', 8, '1995-02-02', '1995-03-16', '1995-02-10', 2, '68', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10403, 'ERNSH', 4, '1995-02-03', '1995-03-03', '1995-02-09', 3, '74', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10404, 'MAGAA', 2, '1995-02-03', '1995-03-03', '1995-02-08', 1, '156', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10405, 'LINOD', 1, '1995-02-06', '1995-03-06', '1995-02-22', 1, '35', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10406, 'QUEEN', 7, '1995-02-07', '1995-03-21', '1995-02-13', 1, '108', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10407, 'OTTIK', 2, '1995-02-07', '1995-03-07', '1995-03-02', 2, '91', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10408, 'FOLIG', 8, '1995-02-08', '1995-03-08', '1995-02-14', 1, '11', 'Folies gourmandes', '184. chaussée de Tournai', 'Lille', NULL, '59000', 'Francia'),
(10409, 'OCEAN', 3, '1995-02-09', '1995-03-09', '1995-02-14', 1, '30', 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10410, 'BOTTM', 3, '1995-02-10', '1995-03-10', '1995-02-15', 3, '2', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10411, 'BOTTM', 9, '1995-02-10', '1995-03-10', '1995-02-21', 3, '24', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10412, 'WARTH', 8, '1995-02-13', '1995-03-13', '1995-02-15', 2, '4', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10413, 'LAMAI', 3, '1995-02-14', '1995-03-14', '1995-02-16', 2, '96', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10414, 'FAMIA', 2, '1995-02-14', '1995-03-14', '1995-02-17', 3, '21', 'Familia Arquibaldo', 'Rua Orós. 92', 'São Paulo', 'SP', '05442-030', 'Brasil'),
(10415, 'HUNGC', 3, '1995-02-15', '1995-03-15', '1995-02-24', 1, '0', 'Hungry Coyote Import Store', 'City Center Plaza516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10416, 'WARTH', 8, '1995-02-16', '1995-03-16', '1995-02-27', 3, '23', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10417, 'SIMOB', 4, '1995-02-16', '1995-03-16', '1995-02-28', 3, '70', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(10418, 'QUICK', 4, '1995-02-17', '1995-03-17', '1995-02-24', 1, '18', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10419, 'RICSU', 4, '1995-02-20', '1995-03-20', '1995-03-02', 2, '137', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(10420, 'WELLI', 3, '1995-02-21', '1995-03-21', '1995-02-27', 1, '44', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10421, 'QUEDE', 8, '1995-02-21', '1995-04-04', '1995-02-27', 1, '99', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10422, 'FRANS', 2, '1995-02-22', '1995-03-22', '1995-03-03', 1, '3', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia'),
(10423, 'GOURL', 6, '1995-02-23', '1995-03-09', '1995-03-27', 3, '25', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10424, 'MEREP', 7, '1995-02-23', '1995-03-23', '1995-02-27', 2, '371', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10425, 'LAMAI', 6, '1995-02-24', '1995-03-24', '1995-03-17', 2, '8', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10426, 'GALED', 4, '1995-02-27', '1995-03-27', '1995-03-09', 1, '19', 'Galería del gastronómo', 'Rambla de Cataluña. 23', 'Barcelona', NULL, '8022', 'España'),
(10427, 'PICCO', 4, '1995-02-27', '1995-03-27', '1995-04-03', 2, '31', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10428, 'REGGC', 7, '1995-02-28', '1995-03-28', '1995-03-07', 1, '11', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10429, 'HUNGO', 3, '1995-03-01', '1995-04-12', '1995-03-10', 2, '57', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10430, 'ERNSH', 4, '1995-03-02', '1995-03-16', '1995-03-06', 1, '459', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10431, 'BOTTM', 4, '1995-03-02', '1995-03-16', '1995-03-10', 2, '44', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10432, 'SPLIR', 3, '1995-03-03', '1995-03-17', '1995-03-10', 2, '4', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10433, 'PRINI', 3, '1995-03-06', '1995-04-03', '1995-04-04', 3, '74', 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
(10434, 'FOLKO', 3, '1995-03-06', '1995-04-03', '1995-03-16', 2, '18', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10435, 'CONSH', 8, '1995-03-07', '1995-04-18', '1995-03-10', 2, '9', 'Consolidated Holdings', 'Berkeley Gardens12  Brewery ', 'London', NULL, 'WX1 6LT', 'Reino Unido'),
(10436, 'BLONP', 3, '1995-03-08', '1995-04-05', '1995-03-14', 2, '157', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10437, 'WARTH', 8, '1995-03-08', '1995-04-05', '1995-03-15', 1, '20', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10438, 'TOMSP', 3, '1995-03-09', '1995-04-06', '1995-03-17', 2, '8', 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania'),
(10439, 'MEREP', 6, '1995-03-10', '1995-04-07', '1995-03-13', 3, '4', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10440, 'SAVEA', 4, '1995-03-13', '1995-04-10', '1995-03-31', 2, '87', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10441, 'OLDWO', 3, '1995-03-13', '1995-04-24', '1995-04-14', 2, '73', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10442, 'ERNSH', 3, '1995-03-14', '1995-04-11', '1995-03-21', 2, '48', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10443, 'REGGC', 8, '1995-03-15', '1995-04-12', '1995-03-17', 1, '14', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10444, 'BERGS', 3, '1995-03-15', '1995-04-12', '1995-03-24', 3, '4', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10445, 'BERGS', 3, '1995-03-16', '1995-04-13', '1995-03-23', 1, '9', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10446, 'TOMSP', 6, '1995-03-17', '1995-04-14', '1995-03-22', 1, '15', 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania'),
(10447, 'RICAR', 4, '1995-03-17', '1995-04-14', '1995-04-07', 2, '69', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10448, 'RANCH', 4, '1995-03-20', '1995-04-17', '1995-03-27', 2, '39', 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10449, 'BLONP', 3, '1995-03-21', '1995-04-18', '1995-03-30', 2, '53', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10450, 'VICTE', 8, '1995-03-22', '1995-04-19', '1995-04-11', 2, '7', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10451, 'QUICK', 4, '1995-03-22', '1995-04-05', '1995-04-12', 3, '189', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10452, 'SAVEA', 8, '1995-03-23', '1995-04-20', '1995-03-29', 1, '140', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10453, 'AROUT', 1, '1995-03-24', '1995-04-21', '1995-03-29', 2, '25', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10454, 'LAMAI', 4, '1995-03-24', '1995-04-21', '1995-03-28', 3, '3', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10455, 'WARTH', 8, '1995-03-27', '1995-05-08', '1995-04-03', 2, '180', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10456, 'KOENE', 8, '1995-03-28', '1995-05-09', '1995-03-31', 2, '8', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10457, 'KOENE', 2, '1995-03-28', '1995-04-25', '1995-04-03', 1, '12', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10458, 'SUPRD', 7, '1995-03-29', '1995-04-26', '1995-04-04', 3, '147', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10459, 'VICTE', 4, '1995-03-30', '1995-04-27', '1995-03-31', 2, '25', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10460, 'FOLKO', 8, '1995-03-31', '1995-04-28', '1995-04-03', 1, '16', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10461, 'LILAS', 1, '1995-03-31', '1995-04-28', '1995-04-05', 3, '149', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10462, 'CONSH', 2, '1995-04-03', '1995-05-01', '1995-04-18', 1, '6', 'Consolidated Holdings', 'Berkeley Gardens12  Brewery ', 'London', NULL, 'WX1 6LT', 'Reino Unido'),
(10463, 'SUPRD', 5, '1995-04-04', '1995-05-02', '1995-04-06', 3, '15', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10464, 'FURIB', 4, '1995-04-04', '1995-05-02', '1995-04-14', 2, '89', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
(10465, 'VAFFE', 1, '1995-04-05', '1995-05-03', '1995-04-14', 3, '145', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10466, 'COMMI', 4, '1995-04-06', '1995-05-04', '1995-04-13', 1, '12', 'Comércio Mineiro', 'Av. dos Lusíadas. 23', 'São Paulo', 'SP', '05432-043', 'Brasil'),
(10467, 'MAGAA', 8, '1995-04-06', '1995-05-04', '1995-04-11', 2, '5', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10468, 'KOENE', 3, '1995-04-07', '1995-05-05', '1995-04-12', 3, '44', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10469, 'WHITC', 1, '1995-04-10', '1995-05-08', '1995-04-14', 1, '60', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10470, 'BONAP', 4, '1995-04-11', '1995-05-09', '1995-04-14', 2, '65', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10471, 'BSBEV', 2, '1995-04-11', '1995-05-09', '1995-04-18', 3, '46', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10472, 'SEVES', 8, '1995-04-12', '1995-05-10', '1995-04-19', 1, '4', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10473, 'ISLAT', 1, '1995-04-13', '1995-04-27', '1995-04-21', 3, '16', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10474, 'PERIC', 5, '1995-04-13', '1995-05-11', '1995-04-21', 2, '83', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México'),
(10475, 'SUPRD', 9, '1995-04-14', '1995-05-12', '1995-05-05', 1, '69', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10476, 'HILAA', 8, '1995-04-17', '1995-05-15', '1995-04-24', 3, '4', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10477, 'PRINI', 5, '1995-04-17', '1995-05-15', '1995-04-25', 2, '13', 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
(10478, 'VICTE', 2, '1995-04-18', '1995-05-02', '1995-04-26', 3, '5', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10479, 'RATTC', 3, '1995-04-19', '1995-05-17', '1995-04-21', 3, '709', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10480, 'FOLIG', 6, '1995-04-20', '1995-05-18', '1995-04-24', 2, '1', 'Folies gourmandes', '184. chaussée de Tournai', 'Lille', NULL, '59000', 'Francia'),
(10481, 'RICAR', 8, '1995-04-20', '1995-05-18', '1995-04-25', 2, '64', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10482, 'LAZYK', 1, '1995-04-21', '1995-05-19', '1995-05-11', 3, '7', 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'Estados Unidos'),
(10483, 'WHITC', 7, '1995-04-24', '1995-05-22', '1995-05-26', 2, '15', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10484, 'BSBEV', 3, '1995-04-24', '1995-05-22', '1995-05-02', 3, '7', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10485, 'LINOD', 4, '1995-04-25', '1995-05-09', '1995-05-01', 2, '64', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10486, 'HILAA', 1, '1995-04-26', '1995-05-24', '1995-05-03', 2, '31', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10487, 'QUEEN', 2, '1995-04-26', '1995-05-24', '1995-04-28', 2, '71', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10488, 'FRANK', 8, '1995-04-27', '1995-05-25', '1995-05-03', 2, '5', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10489, 'PICCO', 6, '1995-04-28', '1995-05-26', '1995-05-10', 2, '5', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10490, 'HILAA', 7, '1995-05-01', '1995-05-29', '1995-05-04', 2, '210', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10491, 'FURIB', 8, '1995-05-01', '1995-05-29', '1995-05-09', 3, '17', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
(10492, 'BOTTM', 3, '1995-05-02', '1995-05-30', '1995-05-12', 1, '63', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10493, 'LAMAI', 4, '1995-05-03', '1995-05-31', '1995-05-11', 3, '11', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10494, 'COMMI', 4, '1995-05-03', '1995-05-31', '1995-05-10', 2, '66', 'Comércio Mineiro', 'Av. dos Lusíadas. 23', 'São Paulo', 'SP', '05432-043', 'Brasil'),
(10495, 'LAUGB', 3, '1995-05-04', '1995-06-01', '1995-05-12', 3, '5', 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá'),
(10496, 'TRADH', 7, '1995-05-05', '1995-06-02', '1995-05-08', 2, '47', 'Tradição Hipermercados', 'Av. Inês de Castro. 414', 'São Paulo', 'SP', '05634-030', 'Brasil'),
(10497, 'LEHMS', 7, '1995-05-05', '1995-06-02', '1995-05-08', 1, '36', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10498, 'HILAA', 8, '1995-05-08', '1995-06-05', '1995-05-12', 2, '30', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10499, 'LILAS', 4, '1995-05-09', '1995-06-06', '1995-05-17', 2, '102', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10500, 'LAMAI', 6, '1995-05-10', '1995-06-07', '1995-05-18', 1, '43', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10501, 'BLAUS', 9, '1995-05-10', '1995-06-07', '1995-05-17', 3, '9', 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania'),
(10502, 'PERIC', 2, '1995-05-11', '1995-06-08', '1995-05-30', 1, '69', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México'),
(10503, 'HUNGO', 6, '1995-05-12', '1995-06-09', '1995-05-17', 2, '17', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10504, 'WHITC', 4, '1995-05-12', '1995-06-09', '1995-05-19', 3, '59', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10505, 'MEREP', 3, '1995-05-15', '1995-06-12', '1995-05-22', 3, '7', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10506, 'KOENE', 9, '1995-05-16', '1995-06-13', '1995-06-02', 2, '21', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10507, 'ANTON', 7, '1995-05-16', '1995-06-13', '1995-05-23', 1, '47', 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México'),
(10508, 'OTTIK', 1, '1995-05-17', '1995-06-14', '1995-06-13', 2, '5', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10509, 'BLAUS', 4, '1995-05-18', '1995-06-15', '1995-05-30', 1, '0', 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania'),
(10510, 'SAVEA', 6, '1995-05-19', '1995-06-16', '1995-05-29', 3, '368', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10511, 'BONAP', 4, '1995-05-19', '1995-06-16', '1995-05-22', 3, '351', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10512, 'FAMIA', 7, '1995-05-22', '1995-06-19', '1995-05-25', 2, '4', 'Familia Arquibaldo', 'Rua Orós. 92', 'São Paulo', 'SP', '05442-030', 'Brasil'),
(10513, 'WANDK', 7, '1995-05-23', '1995-07-04', '1995-05-29', 1, '106', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10514, 'ERNSH', 3, '1995-05-23', '1995-06-20', '1995-06-16', 2, '790', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10515, 'QUICK', 2, '1995-05-24', '1995-06-07', '1995-06-23', 1, '204', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10516, 'HUNGO', 2, '1995-05-25', '1995-06-22', '1995-06-01', 3, '63', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10517, 'NORTS', 3, '1995-05-25', '1995-06-22', '1995-05-30', 3, '32', 'North/South', 'South House300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'Reino Unido'),
(10518, 'TORTU', 4, '1995-05-26', '1995-06-09', '1995-06-05', 2, '218', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10519, 'CHOPS', 6, '1995-05-29', '1995-06-26', '1995-06-01', 3, '92', 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Suiza'),
(10520, 'SANTG', 7, '1995-05-30', '1995-06-27', '1995-06-01', 1, '13', 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega'),
(10521, 'CACTU', 8, '1995-05-30', '1995-06-27', '1995-06-02', 2, '17', 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10522, 'LEHMS', 4, '1995-05-31', '1995-06-28', '1995-06-06', 1, '45', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10523, 'SEVES', 7, '1995-06-01', '1995-06-29', '1995-06-30', 2, '78', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10524, 'BERGS', 1, '1995-06-01', '1995-06-29', '1995-06-07', 2, '245', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10525, 'BONAP', 1, '1995-06-02', '1995-06-30', '1995-06-23', 2, '11', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10526, 'WARTH', 4, '1995-06-05', '1995-07-03', '1995-06-15', 2, '59', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10527, 'QUICK', 7, '1995-06-05', '1995-07-03', '1995-06-07', 1, '42', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10528, 'GREAL', 6, '1995-06-06', '1995-06-20', '1995-06-09', 2, '3', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(10529, 'MAISD', 5, '1995-06-07', '1995-07-05', '1995-06-09', 2, '67', 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Bélgica'),
(10530, 'PICCO', 3, '1995-06-08', '1995-07-06', '1995-06-12', 2, '339', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10531, 'OCEAN', 7, '1995-06-08', '1995-07-06', '1995-06-19', 1, '8', 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10532, 'EASTC', 7, '1995-06-09', '1995-07-07', '1995-06-12', 3, '74', 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'Reino Unido'),
(10533, 'FOLKO', 8, '1995-06-12', '1995-07-10', '1995-06-22', 1, '188', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10534, 'LEHMS', 8, '1995-06-12', '1995-07-10', '1995-06-14', 2, '28', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10535, 'ANTON', 4, '1995-06-13', '1995-07-11', '1995-06-21', 1, '16', 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México'),
(10536, 'LEHMS', 3, '1995-06-14', '1995-07-12', '1995-07-07', 2, '59', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10537, 'RICSU', 1, '1995-06-14', '1995-06-28', '1995-06-19', 1, '79', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(10538, 'BSBEV', 9, '1995-06-15', '1995-07-13', '1995-06-16', 3, '5', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10539, 'BSBEV', 6, '1995-06-16', '1995-07-14', '1995-06-23', 3, '12', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10540, 'QUICK', 3, '1995-06-19', '1995-07-17', '1995-07-14', 3, '1008', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10541, 'HANAR', 2, '1995-06-19', '1995-07-17', '1995-06-29', 1, '69', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10542, 'KOENE', 1, '1995-06-20', '1995-07-18', '1995-06-26', 3, '11', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10543, 'LILAS', 8, '1995-06-21', '1995-07-19', '1995-06-23', 2, '48', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10544, 'LONEP', 4, '1995-06-21', '1995-07-19', '1995-06-30', 1, '25', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10545, 'LAZYK', 8, '1995-06-22', '1995-07-20', '1995-07-27', 2, '12', 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'Estados Unidos'),
(10546, 'VICTE', 1, '1995-06-23', '1995-07-21', '1995-06-27', 3, '195', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10547, 'SEVES', 3, '1995-06-23', '1995-07-21', '1995-07-03', 2, '178', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10548, 'TOMSP', 3, '1995-06-26', '1995-07-24', '1995-07-03', 2, '1', 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania'),
(10549, 'QUICK', 5, '1995-06-27', '1995-07-11', '1995-06-30', 1, '171', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10550, 'GODOS', 7, '1995-06-28', '1995-07-26', '1995-07-07', 3, '4', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(10551, 'FURIB', 4, '1995-06-28', '1995-08-09', '1995-07-07', 3, '73', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
(10552, 'HILAA', 2, '1995-06-29', '1995-07-27', '1995-07-06', 1, '83', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10553, 'WARTH', 2, '1995-06-30', '1995-07-28', '1995-07-04', 2, '149', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10554, 'OTTIK', 4, '1995-06-30', '1995-07-28', '1995-07-06', 3, '121', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10555, 'SAVEA', 6, '1995-07-03', '1995-07-31', '1995-07-05', 3, '252', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10556, 'SIMOB', 2, '1995-07-04', '1995-08-15', '1995-07-14', 1, '10', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(10557, 'LEHMS', 9, '1995-07-04', '1995-07-18', '1995-07-07', 2, '97', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10558, 'AROUT', 1, '1995-07-05', '1995-08-02', '1995-07-11', 2, '73', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10559, 'BLONP', 6, '1995-07-06', '1995-08-03', '1995-07-14', 1, '8', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10560, 'FRANK', 8, '1995-07-07', '1995-08-04', '1995-07-10', 1, '37', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10561, 'FOLKO', 2, '1995-07-07', '1995-08-04', '1995-07-10', 2, '242', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10562, 'REGGC', 1, '1995-07-10', '1995-08-07', '1995-07-13', 1, '23', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10563, 'RICAR', 2, '1995-07-11', '1995-08-22', '1995-07-25', 2, '60', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10564, 'RATTC', 4, '1995-07-11', '1995-08-08', '1995-07-17', 3, '14', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10565, 'MEREP', 8, '1995-07-12', '1995-08-09', '1995-07-19', 2, '7', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10566, 'BLONP', 9, '1995-07-13', '1995-08-10', '1995-07-19', 1, '88', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10567, 'HUNGO', 1, '1995-07-13', '1995-08-10', '1995-07-18', 1, '34', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10568, 'GALED', 3, '1995-07-14', '1995-08-11', '1995-08-09', 3, '7', 'Galería del gastronómo', 'Rambla de Cataluña. 23', 'Barcelona', NULL, '8022', 'España');
INSERT INTO `pedidos` (`IdPedido`, `IdCliente`, `IdEmpleado`, `FechaPedido`, `FechaEntrega`, `FechaEnvio`, `FormaEnvio`, `Cargo`, `Destinatario`, `DireccionDestinatario`, `CiudadDestinatario`, `RegionDestinatario`, `CodPostalDestinatario`, `PaisDestinatario`) VALUES
(10569, 'RATTC', 5, '1995-07-17', '1995-08-14', '1995-08-11', 1, '59', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10570, 'MEREP', 3, '1995-07-18', '1995-08-15', '1995-07-20', 3, '189', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10571, 'ERNSH', 8, '1995-07-18', '1995-08-29', '1995-08-04', 3, '26', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10572, 'BERGS', 3, '1995-07-19', '1995-08-16', '1995-07-26', 2, '116', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10573, 'ANTON', 7, '1995-07-20', '1995-08-17', '1995-07-21', 3, '85', 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México'),
(10574, 'TRAIH', 4, '1995-07-20', '1995-08-17', '1995-07-31', 2, '38', 'Trail\'s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos'),
(10575, 'MORGK', 5, '1995-07-21', '1995-08-04', '1995-07-31', 1, '127', 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Alemania'),
(10576, 'TORTU', 3, '1995-07-24', '1995-08-07', '1995-07-31', 3, '19', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10577, 'TRAIH', 9, '1995-07-24', '1995-09-04', '1995-07-31', 2, '25', 'Trail\'s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos'),
(10578, 'BSBEV', 4, '1995-07-25', '1995-08-22', '1995-08-25', 3, '30', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10579, 'LETSS', 1, '1995-07-26', '1995-08-23', '1995-08-04', 2, '14', 'Let\'s Stop N Shop', '87 Polk St.Suite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos'),
(10580, 'OTTIK', 4, '1995-07-27', '1995-08-24', '1995-08-01', 3, '76', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10581, 'FAMIA', 3, '1995-07-27', '1995-08-24', '1995-08-02', 1, '3', 'Familia Arquibaldo', 'Rua Orós. 92', 'São Paulo', 'SP', '05442-030', 'Brasil'),
(10582, 'BLAUS', 3, '1995-07-28', '1995-08-25', '1995-08-14', 2, '28', 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania'),
(10583, 'WARTH', 2, '1995-07-31', '1995-08-28', '1995-08-04', 2, '7', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10584, 'BLONP', 4, '1995-07-31', '1995-08-28', '1995-08-04', 1, '59', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10585, 'WELLI', 7, '1995-08-01', '1995-08-29', '1995-08-10', 1, '13', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10586, 'REGGC', 9, '1995-08-02', '1995-08-30', '1995-08-09', 1, '0', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10587, 'QUEDE', 1, '1995-08-02', '1995-08-30', '1995-08-09', 1, '63', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10588, 'QUICK', 2, '1995-08-03', '1995-08-31', '1995-08-10', 3, '195', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10589, 'GREAL', 8, '1995-08-04', '1995-09-01', '1995-08-14', 2, '4', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(10590, 'MEREP', 4, '1995-08-07', '1995-09-04', '1995-08-14', 3, '45', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10591, 'VAFFE', 1, '1995-08-07', '1995-08-21', '1995-08-16', 1, '56', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10592, 'LEHMS', 3, '1995-08-08', '1995-09-05', '1995-08-16', 1, '32', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10593, 'LEHMS', 7, '1995-08-09', '1995-09-06', '1995-09-13', 2, '174', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10594, 'OLDWO', 3, '1995-08-09', '1995-09-06', '1995-08-16', 2, '5', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10595, 'ERNSH', 2, '1995-08-10', '1995-09-07', '1995-08-14', 1, '97', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10596, 'WHITC', 8, '1995-08-11', '1995-09-08', '1995-09-12', 1, '16', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10597, 'PICCO', 7, '1995-08-11', '1995-09-08', '1995-08-18', 3, '35', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10598, 'RATTC', 1, '1995-08-14', '1995-09-11', '1995-08-18', 3, '44', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10599, 'BSBEV', 6, '1995-08-15', '1995-09-26', '1995-08-21', 3, '30', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10600, 'HUNGC', 4, '1995-08-16', '1995-09-13', '1995-08-21', 1, '45', 'Hungry Coyote Import Store', 'City Center Plaza516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10601, 'HILAA', 7, '1995-08-16', '1995-09-27', '1995-08-22', 1, '58', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10602, 'VAFFE', 8, '1995-08-17', '1995-09-14', '1995-08-22', 2, '3', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10603, 'SAVEA', 8, '1995-08-18', '1995-09-15', '1995-09-08', 2, '49', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10604, 'FURIB', 1, '1995-08-18', '1995-09-15', '1995-08-29', 1, '7', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
(10605, 'MEREP', 1, '1995-08-21', '1995-09-18', '1995-08-29', 2, '379', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10606, 'TRADH', 4, '1995-08-22', '1995-09-19', '1995-08-31', 3, '79', 'Tradição Hipermercados', 'Av. Inês de Castro. 414', 'São Paulo', 'SP', '05634-030', 'Brasil'),
(10607, 'SAVEA', 5, '1995-08-22', '1995-09-19', '1995-08-25', 1, '200', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10608, 'TOMSP', 4, '1995-08-23', '1995-09-20', '1995-09-01', 2, '28', 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania'),
(10609, 'DUMON', 7, '1995-08-24', '1995-09-21', '1995-08-30', 2, '2', 'Du monde entier', '67. rue des Cinquante Otages', 'Nantes', NULL, '44000', 'Francia'),
(10610, 'LAMAI', 8, '1995-08-25', '1995-09-22', '1995-09-06', 1, '27', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10611, 'WOLZA', 6, '1995-08-25', '1995-09-22', '1995-09-01', 2, '81', 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Polonia'),
(10612, 'SAVEA', 1, '1995-08-28', '1995-09-25', '1995-09-01', 2, '544', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10613, 'HILAA', 4, '1995-08-29', '1995-09-26', '1995-09-01', 2, '8', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10614, 'BLAUS', 8, '1995-08-29', '1995-09-26', '1995-09-01', 3, '2', 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania'),
(10615, 'WILMK', 2, '1995-08-30', '1995-09-27', '1995-09-06', 3, '1', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10616, 'GREAL', 1, '1995-08-31', '1995-09-28', '1995-09-05', 2, '117', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(10617, 'GREAL', 4, '1995-08-31', '1995-09-28', '1995-09-04', 2, '19', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(10618, 'MEREP', 1, '1995-09-01', '1995-10-13', '1995-09-08', 1, '155', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10619, 'MEREP', 3, '1995-09-04', '1995-10-02', '1995-09-07', 3, '91', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10620, 'LAUGB', 2, '1995-09-05', '1995-10-03', '1995-09-14', 3, '1', 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá'),
(10621, 'ISLAT', 4, '1995-09-05', '1995-10-03', '1995-09-11', 2, '24', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10622, 'RICAR', 4, '1995-09-06', '1995-10-04', '1995-09-11', 3, '51', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10623, 'FRANK', 8, '1995-09-07', '1995-10-05', '1995-09-12', 2, '97', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10624, 'THECR', 4, '1995-09-07', '1995-10-05', '1995-09-19', 2, '95', 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'Estados Unidos'),
(10625, 'ANATR', 3, '1995-09-08', '1995-10-06', '1995-09-14', 1, '44', 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'México'),
(10626, 'BERGS', 1, '1995-09-11', '1995-10-09', '1995-09-20', 2, '139', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10627, 'SAVEA', 8, '1995-09-11', '1995-10-23', '1995-09-21', 3, '107', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10628, 'BLONP', 4, '1995-09-12', '1995-10-10', '1995-09-20', 3, '30', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10629, 'GODOS', 4, '1995-09-12', '1995-10-10', '1995-09-20', 3, '85', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(10630, 'KOENE', 1, '1995-09-13', '1995-10-11', '1995-09-19', 2, '32', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10631, 'LAMAI', 8, '1995-09-14', '1995-10-12', '1995-09-15', 1, '1', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10632, 'WANDK', 8, '1995-09-14', '1995-10-12', '1995-09-19', 1, '41', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10633, 'ERNSH', 7, '1995-09-15', '1995-10-13', '1995-09-18', 3, '478', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10634, 'FOLIG', 4, '1995-09-15', '1995-10-13', '1995-09-21', 3, '487', 'Folies gourmandes', '184. chaussée de Tournai', 'Lille', NULL, '59000', 'Francia'),
(10635, 'MAGAA', 8, '1995-09-18', '1995-10-16', '1995-09-21', 3, '47', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10636, 'WARTH', 4, '1995-09-19', '1995-10-17', '1995-09-26', 1, '1', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10637, 'QUEEN', 6, '1995-09-19', '1995-10-17', '1995-09-26', 1, '201', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10638, 'LINOD', 3, '1995-09-20', '1995-10-18', '1995-10-02', 1, '158', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10639, 'SANTG', 7, '1995-09-20', '1995-10-18', '1995-09-27', 3, '39', 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega'),
(10640, 'WANDK', 4, '1995-09-21', '1995-10-19', '1995-09-28', 1, '24', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10641, 'HILAA', 4, '1995-09-22', '1995-10-20', '1995-09-26', 2, '180', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10642, 'SIMOB', 7, '1995-09-22', '1995-10-20', '1995-10-06', 3, '42', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(10643, 'ALFKI', 6, '1995-09-25', '1995-10-23', '1995-10-03', 2, '29', 'Alfred\'s Futterkiste', 'Obere Str. 57', 'Berlín', NULL, '12209', 'Alemania'),
(10644, 'WELLI', 3, '1995-09-25', '1995-10-23', '1995-10-02', 2, '0', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10645, 'HANAR', 4, '1995-09-26', '1995-10-24', '1995-10-03', 1, '12', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10646, 'HUNGO', 9, '1995-09-27', '1995-11-08', '1995-10-04', 3, '142', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10647, 'QUEDE', 4, '1995-09-27', '1995-10-11', '1995-10-04', 2, '46', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10648, 'RICAR', 5, '1995-09-28', '1995-11-09', '1995-10-10', 2, '14', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10649, 'MAISD', 5, '1995-09-28', '1995-10-26', '1995-09-29', 3, '6', 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Bélgica'),
(10650, 'FAMIA', 5, '1995-09-29', '1995-10-27', '1995-10-04', 3, '177', 'Familia Arquibaldo', 'Rua Orós. 92', 'São Paulo', 'SP', '05442-030', 'Brasil'),
(10651, 'WANDK', 8, '1995-10-02', '1995-10-30', '1995-10-12', 2, '21', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10652, 'GOURL', 4, '1995-10-02', '1995-10-30', '1995-10-09', 2, '7', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10653, 'FRANK', 1, '1995-10-03', '1995-10-31', '1995-10-20', 1, '93', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10654, 'BERGS', 5, '1995-10-03', '1995-10-31', '1995-10-12', 1, '55', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10655, 'REGGC', 1, '1995-10-04', '1995-11-01', '1995-10-12', 2, '4', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10656, 'GREAL', 6, '1995-10-05', '1995-11-02', '1995-10-11', 1, '57', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(10657, 'SAVEA', 2, '1995-10-05', '1995-11-02', '1995-10-16', 2, '353', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10658, 'QUICK', 4, '1995-10-06', '1995-11-03', '1995-10-09', 1, '364', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10659, 'QUEEN', 7, '1995-10-06', '1995-11-03', '1995-10-11', 2, '106', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10660, 'HUNGC', 8, '1995-10-09', '1995-11-06', '1995-11-15', 1, '111', 'Hungry Coyote Import Store', 'City Center Plaza516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos'),
(10661, 'HUNGO', 7, '1995-10-10', '1995-11-07', '1995-10-16', 3, '18', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10662, 'LONEP', 3, '1995-10-10', '1995-11-07', '1995-10-19', 2, '1', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10663, 'BONAP', 2, '1995-10-11', '1995-10-25', '1995-11-03', 2, '113', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10664, 'FURIB', 1, '1995-10-11', '1995-11-08', '1995-10-20', 3, '1', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
(10665, 'LONEP', 1, '1995-10-12', '1995-11-09', '1995-10-18', 2, '26', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10666, 'RICSU', 7, '1995-10-13', '1995-11-10', '1995-10-23', 2, '232', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(10667, 'ERNSH', 7, '1995-10-13', '1995-11-10', '1995-10-20', 1, '78', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10668, 'WANDK', 1, '1995-10-16', '1995-11-13', '1995-10-24', 2, '47', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10669, 'SIMOB', 2, '1995-10-16', '1995-11-13', '1995-10-23', 1, '24', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(10670, 'FRANK', 4, '1995-10-17', '1995-11-14', '1995-10-19', 1, '203', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10671, 'FRANR', 1, '1995-10-18', '1995-11-15', '1995-10-25', 1, '30', 'France restauration', '54. rue Royale', 'Nantes', NULL, '44000', 'Francia'),
(10672, 'BERGS', 9, '1995-10-18', '1995-11-01', '1995-10-27', 2, '96', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10673, 'WILMK', 2, '1995-10-19', '1995-11-16', '1995-10-20', 1, '23', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10674, 'ISLAT', 4, '1995-10-19', '1995-11-16', '1995-10-31', 2, '1', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10675, 'FRANK', 5, '1995-10-20', '1995-11-17', '1995-10-24', 2, '32', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10676, 'TORTU', 2, '1995-10-23', '1995-11-20', '1995-10-30', 2, '2', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10677, 'ANTON', 1, '1995-10-23', '1995-11-20', '1995-10-27', 3, '4', 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México'),
(10678, 'SAVEA', 7, '1995-10-24', '1995-11-21', '1995-11-16', 3, '389', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10679, 'BLONP', 8, '1995-10-24', '1995-11-21', '1995-10-31', 3, '28', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10680, 'OLDWO', 1, '1995-10-25', '1995-11-22', '1995-10-27', 1, '27', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10681, 'GREAL', 3, '1995-10-26', '1995-11-23', '1995-10-31', 3, '76', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(10682, 'ANTON', 3, '1995-10-26', '1995-11-23', '1995-11-01', 2, '36', 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México'),
(10683, 'DUMON', 2, '1995-10-27', '1995-11-24', '1995-11-01', 1, '4', 'Du monde entier', '67. rue des Cinquante Otages', 'Nantes', NULL, '44000', 'Francia'),
(10684, 'OTTIK', 3, '1995-10-27', '1995-11-24', '1995-10-31', 1, '146', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10685, 'GOURL', 4, '1995-10-30', '1995-11-13', '1995-11-03', 2, '34', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10686, 'PICCO', 2, '1995-10-31', '1995-11-28', '1995-11-08', 1, '97', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10687, 'HUNGO', 9, '1995-10-31', '1995-11-28', '1995-11-30', 2, '296', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10688, 'VAFFE', 4, '1995-11-01', '1995-11-15', '1995-11-07', 2, '299', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10689, 'BERGS', 1, '1995-11-01', '1995-11-29', '1995-11-07', 2, '13', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10690, 'HANAR', 1, '1995-11-02', '1995-11-30', '1995-11-03', 1, '16', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10691, 'QUICK', 2, '1995-11-03', '1995-12-15', '1995-11-22', 2, '810', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10692, 'ALFKI', 4, '1995-11-03', '1995-12-01', '1995-11-13', 2, '61', 'Alfred\'s Futterkiste', 'Obere Str. 57', 'Berlín', NULL, '12209', 'Alemania'),
(10693, 'WHITC', 3, '1995-11-06', '1995-11-20', '1995-11-10', 3, '139', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10694, 'QUICK', 8, '1995-11-06', '1995-12-04', '1995-11-09', 3, '398', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10695, 'WILMK', 7, '1995-11-07', '1995-12-19', '1995-11-14', 1, '17', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10696, 'WHITC', 8, '1995-11-08', '1995-12-20', '1995-11-14', 3, '103', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10697, 'LINOD', 3, '1995-11-08', '1995-12-06', '1995-11-14', 1, '46', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10698, 'ERNSH', 4, '1995-11-09', '1995-12-07', '1995-11-17', 1, '272', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10699, 'MORGK', 3, '1995-11-09', '1995-12-07', '1995-11-13', 3, '1', 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Alemania'),
(10700, 'SAVEA', 3, '1995-11-10', '1995-12-08', '1995-11-16', 1, '65', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10701, 'HUNGO', 6, '1995-11-13', '1995-11-27', '1995-11-15', 3, '220', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10702, 'ALFKI', 4, '1995-11-13', '1995-12-25', '1995-11-21', 1, '24', 'Alfred\'s Futterkiste', 'Obere Str. 57', 'Berlín', NULL, '12209', 'Alemania'),
(10703, 'FOLKO', 6, '1995-11-14', '1995-12-12', '1995-11-20', 2, '152', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10704, 'QUEEN', 6, '1995-11-14', '1995-12-12', '1995-12-08', 1, '5', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10705, 'HILAA', 9, '1995-11-15', '1995-12-13', '1995-12-19', 2, '4', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10706, 'OLDWO', 8, '1995-11-16', '1995-12-14', '1995-11-21', 3, '136', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10707, 'AROUT', 4, '1995-11-16', '1995-11-30', '1995-11-23', 3, '22', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10708, 'THEBI', 6, '1995-11-17', '1995-12-29', '1995-12-06', 2, '3', 'The Big Cheese', '89 Jefferson WaySuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10709, 'GOURL', 1, '1995-11-17', '1995-12-15', '1995-12-21', 3, '211', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10710, 'FRANS', 1, '1995-11-20', '1995-12-18', '1995-11-23', 1, '5', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia'),
(10711, 'SAVEA', 5, '1995-11-21', '1996-01-02', '1995-11-29', 2, '52', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10712, 'HUNGO', 3, '1995-11-21', '1995-12-19', '1995-12-01', 1, '90', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10713, 'SAVEA', 1, '1995-11-22', '1995-12-20', '1995-11-24', 1, '167', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10714, 'SAVEA', 5, '1995-11-22', '1995-12-20', '1995-11-27', 3, '24', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10715, 'BONAP', 3, '1995-11-23', '1995-12-07', '1995-11-29', 1, '63', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10716, 'RANCH', 4, '1995-11-24', '1995-12-22', '1995-11-27', 2, '23', 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10717, 'FRANK', 1, '1995-11-24', '1995-12-22', '1995-11-29', 2, '59', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10718, 'KOENE', 1, '1995-11-27', '1995-12-25', '1995-11-29', 3, '171', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10719, 'LETSS', 8, '1995-11-27', '1995-12-25', '1995-12-06', 2, '51', 'Let\'s Stop N Shop', '87 Polk St.Suite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos'),
(10720, 'QUEDE', 8, '1995-11-28', '1995-12-12', '1995-12-06', 2, '10', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10721, 'QUICK', 5, '1995-11-29', '1995-12-27', '1995-12-01', 3, '49', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10722, 'SAVEA', 8, '1995-11-29', '1996-01-10', '1995-12-05', 1, '75', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10723, 'WHITC', 3, '1995-11-30', '1995-12-28', '1995-12-26', 1, '22', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10724, 'MEREP', 8, '1995-11-30', '1996-01-11', '1995-12-06', 2, '58', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10725, 'FAMIA', 4, '1995-12-01', '1995-12-29', '1995-12-06', 3, '11', 'Familia Arquibaldo', 'Rua Orós. 92', 'São Paulo', 'SP', '05442-030', 'Brasil'),
(10726, 'EASTC', 4, '1995-12-04', '1995-12-18', '1996-01-05', 1, '17', 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'Reino Unido'),
(10727, 'REGGC', 2, '1995-12-04', '1996-01-01', '1996-01-05', 1, '90', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10728, 'QUEEN', 4, '1995-12-05', '1996-01-02', '1995-12-12', 2, '58', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10729, 'LINOD', 8, '1995-12-05', '1996-01-16', '1995-12-15', 3, '141', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10730, 'BONAP', 5, '1995-12-06', '1996-01-03', '1995-12-15', 1, '20', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10731, 'CHOPS', 7, '1995-12-07', '1996-01-04', '1995-12-15', 1, '97', 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Suiza'),
(10732, 'BONAP', 3, '1995-12-07', '1996-01-04', '1995-12-08', 1, '17', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10733, 'BERGS', 1, '1995-12-08', '1996-01-05', '1995-12-11', 3, '110', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10734, 'GOURL', 2, '1995-12-08', '1996-01-05', '1995-12-13', 3, '2', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10735, 'LETSS', 6, '1995-12-11', '1996-01-08', '1995-12-22', 2, '46', 'Let\'s Stop N Shop', '87 Polk St.Suite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos'),
(10736, 'HUNGO', 9, '1995-12-12', '1996-01-09', '1995-12-22', 2, '44', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10737, 'VINET', 2, '1995-12-12', '1996-01-09', '1995-12-19', 2, '8', 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'Francia'),
(10738, 'SPECD', 2, '1995-12-13', '1996-01-10', '1995-12-19', 1, '3', 'Spécialités du monde', '25. rue Lauriston', 'Paris', NULL, '75016', 'Francia'),
(10739, 'VINET', 3, '1995-12-13', '1996-01-10', '1995-12-18', 3, '11', 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'Francia'),
(10740, 'WHITC', 4, '1995-12-14', '1996-01-11', '1995-12-26', 2, '82', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10741, 'BERGS', 4, '1995-12-15', '1995-12-29', '1995-12-19', 3, '11', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10742, 'BOTTM', 3, '1995-12-15', '1996-01-12', '1995-12-19', 3, '244', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10743, 'AROUT', 1, '1995-12-18', '1996-01-15', '1995-12-22', 2, '24', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10744, 'VAFFE', 6, '1995-12-18', '1996-01-15', '1995-12-25', 1, '69', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10745, 'QUICK', 9, '1995-12-19', '1996-01-16', '1995-12-28', 1, '4', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10746, 'CHOPS', 1, '1995-12-20', '1996-01-17', '1995-12-22', 3, '31', 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Suiza'),
(10747, 'PICCO', 6, '1995-12-20', '1996-01-17', '1995-12-27', 1, '117', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10748, 'SAVEA', 3, '1995-12-21', '1996-01-18', '1995-12-29', 1, '233', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10749, 'ISLAT', 4, '1995-12-21', '1996-01-18', '1996-01-19', 2, '62', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10750, 'WARTH', 9, '1995-12-22', '1996-01-19', '1995-12-25', 1, '79', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10751, 'RICSU', 3, '1995-12-25', '1996-01-22', '1996-01-03', 3, '131', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(10752, 'NORTS', 2, '1995-12-25', '1996-01-22', '1995-12-29', 3, '1', 'North/South', 'South House300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'Reino Unido'),
(10753, 'FRANS', 3, '1995-12-26', '1996-01-23', '1995-12-28', 1, '8', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia'),
(10754, 'MAGAA', 6, '1995-12-26', '1996-01-23', '1995-12-28', 3, '2', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10755, 'BONAP', 4, '1995-12-27', '1996-01-24', '1995-12-29', 2, '17', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10756, 'SPLIR', 8, '1995-12-28', '1996-01-25', '1996-01-02', 2, '73', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10757, 'SAVEA', 6, '1995-12-28', '1996-01-25', '1996-01-15', 1, '8', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10758, 'RICSU', 3, '1995-12-29', '1996-01-26', '1996-01-04', 3, '138', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(10759, 'ANATR', 3, '1995-12-29', '1996-01-26', '1996-01-12', 3, '12', 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'México'),
(10760, 'MAISD', 4, '1996-01-01', '1996-01-29', '1996-01-10', 1, '156', 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Bélgica'),
(10761, 'RATTC', 5, '1996-01-02', '1996-01-30', '1996-01-08', 2, '19', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10762, 'FOLKO', 3, '1996-01-02', '1996-01-30', '1996-01-09', 1, '329', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10763, 'FOLIG', 3, '1996-01-03', '1996-01-31', '1996-01-08', 3, '37', 'Folies gourmandes', '184. chaussée de Tournai', 'Lille', NULL, '59000', 'Francia'),
(10764, 'ERNSH', 6, '1996-01-03', '1996-01-31', '1996-01-08', 3, '145', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10765, 'QUICK', 3, '1996-01-04', '1996-02-01', '1996-01-09', 3, '43', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10766, 'OTTIK', 4, '1996-01-05', '1996-02-02', '1996-01-09', 1, '158', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10767, 'SUPRD', 4, '1996-01-05', '1996-02-02', '1996-01-15', 3, '2', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10768, 'AROUT', 3, '1996-01-08', '1996-02-05', '1996-01-15', 2, '146', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10769, 'VAFFE', 3, '1996-01-08', '1996-02-05', '1996-01-12', 1, '65', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10770, 'HANAR', 8, '1996-01-09', '1996-02-06', '1996-01-17', 3, '5', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10771, 'ERNSH', 9, '1996-01-10', '1996-02-07', '1996-02-02', 2, '11', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10772, 'LEHMS', 3, '1996-01-10', '1996-02-07', '1996-01-19', 2, '91', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10773, 'ERNSH', 1, '1996-01-11', '1996-02-08', '1996-01-16', 3, '96', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10774, 'FOLKO', 4, '1996-01-11', '1996-01-25', '1996-01-12', 1, '48', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10775, 'THECR', 7, '1996-01-12', '1996-02-09', '1996-01-26', 1, '20', 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'Estados Unidos'),
(10776, 'ERNSH', 1, '1996-01-15', '1996-02-12', '1996-01-18', 3, '352', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10777, 'GOURL', 7, '1996-01-15', '1996-01-29', '1996-02-21', 2, '3', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10778, 'BERGS', 3, '1996-01-16', '1996-02-13', '1996-01-24', 1, '7', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10779, 'MORGK', 3, '1996-01-16', '1996-02-13', '1996-02-14', 2, '58', 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Alemania'),
(10780, 'LILAS', 2, '1996-01-16', '1996-01-30', '1996-01-25', 1, '42', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10781, 'WARTH', 2, '1996-01-17', '1996-02-14', '1996-01-19', 3, '73', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10782, 'CACTU', 9, '1996-01-17', '1996-02-14', '1996-01-22', 3, '1', 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10783, 'HANAR', 4, '1996-01-18', '1996-02-15', '1996-01-19', 2, '125', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10784, 'MAGAA', 4, '1996-01-18', '1996-02-15', '1996-01-22', 3, '70', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10785, 'GROSR', 1, '1996-01-18', '1996-02-15', '1996-01-24', 3, '2', 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela'),
(10786, 'QUEEN', 8, '1996-01-19', '1996-02-16', '1996-01-23', 1, '111', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10787, 'LAMAI', 2, '1996-01-19', '1996-02-02', '1996-01-26', 1, '250', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10788, 'QUICK', 1, '1996-01-22', '1996-02-19', '1996-02-19', 2, '43', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10789, 'FOLIG', 1, '1996-01-22', '1996-02-19', '1996-01-31', 2, '101', 'Folies gourmandes', '184. chaussée de Tournai', 'Lille', NULL, '59000', 'Francia'),
(10790, 'GOURL', 6, '1996-01-22', '1996-02-19', '1996-01-26', 1, '28', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10791, 'FRANK', 6, '1996-01-23', '1996-02-20', '1996-02-01', 2, '17', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10792, 'WOLZA', 1, '1996-01-23', '1996-02-20', '1996-01-31', 3, '24', 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Polonia'),
(10793, 'AROUT', 3, '1996-01-24', '1996-02-21', '1996-02-08', 3, '5', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10794, 'QUEDE', 6, '1996-01-24', '1996-02-21', '1996-02-02', 1, '21', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10795, 'ERNSH', 8, '1996-01-24', '1996-02-21', '1996-02-20', 2, '127', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10796, 'HILAA', 3, '1996-01-25', '1996-02-22', '1996-02-14', 1, '27', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10797, 'DRACD', 7, '1996-01-25', '1996-02-22', '1996-02-05', 2, '33', 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Alemania'),
(10798, 'ISLAT', 2, '1996-01-26', '1996-02-23', '1996-02-05', 1, '2', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10799, 'KOENE', 9, '1996-01-26', '1996-03-08', '1996-02-05', 3, '31', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10800, 'SEVES', 1, '1996-01-26', '1996-02-23', '1996-02-05', 3, '137', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10801, 'BOLID', 4, '1996-01-29', '1996-02-26', '1996-01-31', 2, '97', 'Bólido Comidas preparadas', 'C/ Araquil. 67', 'Madrid', NULL, '28023', 'España'),
(10802, 'SIMOB', 4, '1996-01-29', '1996-02-26', '1996-02-02', 2, '257', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(10803, 'WELLI', 4, '1996-01-30', '1996-02-27', '1996-02-06', 1, '55', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10804, 'SEVES', 6, '1996-01-30', '1996-02-27', '1996-02-07', 2, '27', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10805, 'THEBI', 2, '1996-01-30', '1996-02-27', '1996-02-09', 3, '237', 'The Big Cheese', '89 Jefferson WaySuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10806, 'VICTE', 3, '1996-01-31', '1996-02-28', '1996-02-05', 2, '22', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10807, 'FRANS', 4, '1996-01-31', '1996-02-28', '1996-03-01', 1, '1', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia'),
(10808, 'OLDWO', 2, '1996-02-01', '1996-02-29', '1996-02-09', 3, '46', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10809, 'WELLI', 7, '1996-02-01', '1996-02-29', '1996-02-07', 1, '5', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10810, 'LAUGB', 2, '1996-02-01', '1996-02-29', '1996-02-07', 3, '4', 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá'),
(10811, 'LINOD', 8, '1996-02-02', '1996-03-01', '1996-02-08', 1, '31', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10812, 'REGGC', 5, '1996-02-02', '1996-03-01', '1996-02-12', 1, '60', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10813, 'RICAR', 1, '1996-02-05', '1996-03-04', '1996-02-09', 1, '47', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10814, 'VICTE', 3, '1996-02-05', '1996-03-04', '1996-02-14', 3, '131', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10815, 'SAVEA', 2, '1996-02-05', '1996-03-04', '1996-02-14', 3, '15', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10816, 'GREAL', 4, '1996-02-06', '1996-03-05', '1996-03-06', 2, '720', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(10817, 'KOENE', 3, '1996-02-06', '1996-02-20', '1996-02-13', 2, '306', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10818, 'MAGAA', 7, '1996-02-07', '1996-03-06', '1996-02-12', 3, '65', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10819, 'CACTU', 2, '1996-02-07', '1996-03-06', '1996-02-16', 3, '20', 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10820, 'RATTC', 3, '1996-02-07', '1996-03-06', '1996-02-13', 2, '38', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10821, 'SPLIR', 1, '1996-02-08', '1996-03-07', '1996-02-15', 1, '37', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10822, 'TRAIH', 6, '1996-02-08', '1996-03-07', '1996-02-16', 3, '7', 'Trail\'s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos'),
(10823, 'LILAS', 5, '1996-02-09', '1996-03-08', '1996-02-13', 2, '164', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10824, 'FOLKO', 8, '1996-02-09', '1996-03-08', '1996-03-01', 1, '1', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10825, 'DRACD', 1, '1996-02-09', '1996-03-08', '1996-02-14', 1, '79', 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Alemania'),
(10826, 'BLONP', 6, '1996-02-12', '1996-03-11', '1996-03-08', 1, '7', 'Blondel père et fils', '24. place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10827, 'BONAP', 1, '1996-02-12', '1996-02-26', '1996-03-08', 2, '64', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10828, 'RANCH', 9, '1996-02-13', '1996-02-27', '1996-03-06', 1, '91', 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10829, 'ISLAT', 9, '1996-02-13', '1996-03-12', '1996-02-23', 1, '155', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10830, 'TRADH', 4, '1996-02-13', '1996-03-26', '1996-02-21', 2, '82', 'Tradição Hipermercados', 'Av. Inês de Castro. 414', 'São Paulo', 'SP', '05634-030', 'Brasil'),
(10831, 'SANTG', 3, '1996-02-14', '1996-03-13', '1996-02-23', 2, '72', 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega'),
(10832, 'LAMAI', 2, '1996-02-14', '1996-03-13', '1996-02-19', 2, '43', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10833, 'OTTIK', 6, '1996-02-15', '1996-03-14', '1996-02-23', 2, '71', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10834, 'TRADH', 1, '1996-02-15', '1996-03-14', '1996-02-19', 3, '30', 'Tradição Hipermercados', 'Av. Inês de Castro. 414', 'São Paulo', 'SP', '05634-030', 'Brasil'),
(10835, 'ALFKI', 1, '1996-02-15', '1996-03-14', '1996-02-21', 3, '70', 'Alfred\'s Futterkiste', 'Obere Str. 57', 'Berlín', NULL, '12209', 'Alemania'),
(10836, 'ERNSH', 7, '1996-02-16', '1996-03-15', '1996-02-21', 1, '412', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10837, 'BERGS', 9, '1996-02-16', '1996-03-15', '1996-02-23', 3, '13', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10838, 'LINOD', 3, '1996-02-19', '1996-03-18', '1996-02-23', 3, '59', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10839, 'TRADH', 3, '1996-02-19', '1996-03-18', '1996-02-22', 3, '35', 'Tradição Hipermercados', 'Av. Inês de Castro. 414', 'São Paulo', 'SP', '05634-030', 'Brasil'),
(10840, 'LINOD', 4, '1996-02-19', '1996-04-01', '1996-03-18', 2, '3', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10841, 'SUPRD', 5, '1996-02-20', '1996-03-19', '1996-02-29', 2, '424', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10842, 'TORTU', 1, '1996-02-20', '1996-03-19', '1996-02-29', 3, '54', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10843, 'VICTE', 4, '1996-02-21', '1996-03-20', '1996-02-26', 2, '9', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10844, 'PICCO', 8, '1996-02-21', '1996-03-20', '1996-02-26', 2, '25', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10845, 'QUICK', 8, '1996-02-21', '1996-03-06', '1996-03-01', 1, '213', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10846, 'SUPRD', 2, '1996-02-22', '1996-04-04', '1996-02-23', 3, '56', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10847, 'SAVEA', 4, '1996-02-22', '1996-03-07', '1996-03-12', 3, '488', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10848, 'CONSH', 7, '1996-02-23', '1996-03-22', '1996-02-29', 2, '38', 'Consolidated Holdings', 'Berkeley Gardens12  Brewery ', 'London', NULL, 'WX1 6LT', 'Reino Unido'),
(10849, 'KOENE', 9, '1996-02-23', '1996-03-22', '1996-03-01', 2, '1', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10850, 'VICTE', 1, '1996-02-23', '1996-04-05', '1996-03-01', 1, '49', 'Victuailles en stock', '2. rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10851, 'RICAR', 5, '1996-02-26', '1996-03-25', '1996-03-04', 1, '161', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10852, 'RATTC', 8, '1996-02-26', '1996-03-11', '1996-03-01', 1, '174', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10853, 'BLAUS', 9, '1996-02-27', '1996-03-26', '1996-03-05', 2, '54', 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania'),
(10854, 'ERNSH', 3, '1996-02-27', '1996-03-26', '1996-03-07', 2, '100', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10855, 'OLDWO', 3, '1996-02-27', '1996-03-26', '1996-03-06', 1, '171', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10856, 'ANTON', 3, '1996-02-28', '1996-03-27', '1996-03-12', 2, '58', 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México'),
(10857, 'BERGS', 8, '1996-02-28', '1996-03-27', '1996-03-08', 2, '189', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10858, 'LACOR', 2, '1996-02-29', '1996-03-28', '1996-03-05', 1, '53', 'La corne d\'abondance', '67. avenue de l\'Europe', 'Versailles', NULL, '78000', 'Francia'),
(10859, 'FRANK', 1, '1996-02-29', '1996-03-28', '1996-03-04', 2, '76', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10860, 'FRANR', 3, '1996-02-29', '1996-03-28', '1996-03-06', 3, '19', 'France restauration', '54. rue Royale', 'Nantes', NULL, '44000', 'Francia'),
(10861, 'WHITC', 4, '1996-03-01', '1996-03-29', '1996-03-19', 2, '15', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10862, 'LEHMS', 8, '1996-03-01', '1996-04-12', '1996-03-04', 2, '53', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10863, 'HILAA', 4, '1996-03-04', '1996-04-01', '1996-03-19', 2, '30', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10864, 'AROUT', 4, '1996-03-04', '1996-04-01', '1996-03-11', 2, '3', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10865, 'QUICK', 2, '1996-03-04', '1996-03-18', '1996-03-14', 1, '348', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10866, 'BERGS', 5, '1996-03-05', '1996-04-02', '1996-03-14', 1, '109', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10867, 'LONEP', 6, '1996-03-05', '1996-04-16', '1996-03-13', 1, '2', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10868, 'QUEEN', 7, '1996-03-06', '1996-04-03', '1996-03-25', 2, '191', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10869, 'SEVES', 5, '1996-03-06', '1996-04-03', '1996-03-11', 1, '143', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10870, 'WHITC', 5, '1996-03-06', '1996-04-03', '1996-03-15', 3, '12', 'White Clover Markets', '305 - 14th Ave. S.Suite 3B', 'Seattle', 'WA', '98128', 'Estados Unidos'),
(10871, 'BONAP', 9, '1996-03-07', '1996-04-04', '1996-03-12', 2, '112', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10872, 'GODOS', 5, '1996-03-07', '1996-04-04', '1996-03-11', 2, '175', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(10873, 'WILMK', 4, '1996-03-08', '1996-04-05', '1996-03-11', 1, '1', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10874, 'GODOS', 5, '1996-03-08', '1996-04-05', '1996-03-13', 2, '20', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(10875, 'BERGS', 4, '1996-03-08', '1996-04-05', '1996-04-02', 2, '32', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10876, 'BONAP', 7, '1996-03-11', '1996-04-08', '1996-03-14', 3, '60', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10877, 'RICAR', 1, '1996-03-11', '1996-04-08', '1996-03-21', 1, '38', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10878, 'QUICK', 4, '1996-03-12', '1996-04-09', '1996-03-14', 1, '47', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10879, 'WILMK', 3, '1996-03-12', '1996-04-09', '1996-03-14', 3, '9', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10880, 'FOLKO', 7, '1996-03-12', '1996-04-23', '1996-03-20', 1, '88', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10881, 'CACTU', 4, '1996-03-13', '1996-04-10', '1996-03-20', 1, '3', 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10882, 'SAVEA', 4, '1996-03-13', '1996-04-10', '1996-03-22', 3, '23', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10883, 'LONEP', 8, '1996-03-14', '1996-04-11', '1996-03-22', 3, '1', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10884, 'LETSS', 4, '1996-03-14', '1996-04-11', '1996-03-15', 2, '91', 'Let\'s Stop N Shop', '87 Polk St.Suite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos'),
(10885, 'SUPRD', 6, '1996-03-14', '1996-04-11', '1996-03-20', 3, '6', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10886, 'HANAR', 1, '1996-03-15', '1996-04-12', '1996-04-01', 1, '5', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10887, 'GALED', 8, '1996-03-15', '1996-04-12', '1996-03-18', 3, '1', 'Galería del gastronómo', 'Rambla de Cataluña. 23', 'Barcelona', NULL, '8022', 'España'),
(10888, 'GODOS', 1, '1996-03-18', '1996-04-15', '1996-03-25', 2, '52', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(10889, 'RATTC', 9, '1996-03-18', '1996-04-15', '1996-03-25', 3, '281', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10890, 'DUMON', 7, '1996-03-18', '1996-04-15', '1996-03-20', 1, '33', 'Du monde entier', '67. rue des Cinquante Otages', 'Nantes', NULL, '44000', 'Francia');
INSERT INTO `pedidos` (`IdPedido`, `IdCliente`, `IdEmpleado`, `FechaPedido`, `FechaEntrega`, `FechaEnvio`, `FormaEnvio`, `Cargo`, `Destinatario`, `DireccionDestinatario`, `CiudadDestinatario`, `RegionDestinatario`, `CodPostalDestinatario`, `PaisDestinatario`) VALUES
(10891, 'LEHMS', 7, '1996-03-19', '1996-04-16', '1996-03-21', 2, '20', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10892, 'MAISD', 4, '1996-03-19', '1996-04-16', '1996-03-21', 2, '120', 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Bélgica'),
(10893, 'KOENE', 9, '1996-03-20', '1996-04-17', '1996-03-22', 2, '78', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(10894, 'SAVEA', 1, '1996-03-20', '1996-04-17', '1996-03-22', 1, '116', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10895, 'ERNSH', 3, '1996-03-20', '1996-04-17', '1996-03-25', 1, '163', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10896, 'MAISD', 7, '1996-03-21', '1996-04-18', '1996-03-29', 3, '32', 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Bélgica'),
(10897, 'HUNGO', 3, '1996-03-21', '1996-04-18', '1996-03-27', 2, '604', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10898, 'OCEAN', 4, '1996-03-22', '1996-04-19', '1996-04-05', 2, '1', 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10899, 'LILAS', 5, '1996-03-22', '1996-04-19', '1996-03-28', 3, '1', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10900, 'WELLI', 1, '1996-03-22', '1996-04-19', '1996-04-03', 2, '2', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10901, 'HILAA', 4, '1996-03-25', '1996-04-22', '1996-03-28', 1, '62', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10902, 'FOLKO', 1, '1996-03-25', '1996-04-22', '1996-04-02', 1, '44', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10903, 'HANAR', 3, '1996-03-26', '1996-04-23', '1996-04-03', 3, '37', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10904, 'WHITC', 3, '1996-03-26', '1996-04-23', '1996-03-29', 3, '163', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(10905, 'WELLI', 9, '1996-03-26', '1996-04-23', '1996-04-05', 2, '14', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10906, 'WOLZA', 4, '1996-03-27', '1996-04-10', '1996-04-02', 3, '26', 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Polonia'),
(10907, 'SPECD', 6, '1996-03-27', '1996-04-24', '1996-03-29', 3, '9', 'Spécialités du monde', '25. rue Lauriston', 'Paris', NULL, '75016', 'Francia'),
(10908, 'REGGC', 4, '1996-03-28', '1996-04-25', '1996-04-05', 2, '33', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10909, 'SANTG', 1, '1996-03-28', '1996-04-25', '1996-04-09', 2, '53', 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega'),
(10910, 'WILMK', 1, '1996-03-28', '1996-04-25', '1996-04-03', 3, '38', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10911, 'GODOS', 3, '1996-03-28', '1996-04-25', '1996-04-04', 1, '38', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(10912, 'HUNGO', 2, '1996-03-28', '1996-04-25', '1996-04-17', 2, '581', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10913, 'QUEEN', 4, '1996-03-28', '1996-04-25', '1996-04-03', 1, '33', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10914, 'QUEEN', 6, '1996-03-29', '1996-04-26', '1996-04-01', 1, '21', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10915, 'TORTU', 2, '1996-03-29', '1996-04-26', '1996-04-01', 2, '4', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10916, 'RANCH', 1, '1996-03-29', '1996-04-26', '1996-04-08', 2, '64', 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10917, 'ROMEY', 4, '1996-04-01', '1996-04-29', '1996-04-10', 2, '8', 'Romero y tomillo', 'Gran Vía. 1', 'Madrid', NULL, '28001', 'España'),
(10918, 'BOTTM', 3, '1996-04-01', '1996-04-29', '1996-04-10', 3, '49', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10919, 'LINOD', 2, '1996-04-01', '1996-04-29', '1996-04-03', 2, '20', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10920, 'AROUT', 4, '1996-04-02', '1996-04-30', '1996-04-08', 2, '30', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10921, 'VAFFE', 1, '1996-04-02', '1996-05-14', '1996-04-08', 1, '176', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10922, 'HANAR', 5, '1996-04-02', '1996-04-30', '1996-04-04', 3, '63', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10923, 'LAMAI', 7, '1996-04-02', '1996-05-14', '1996-04-12', 3, '68', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10924, 'BERGS', 3, '1996-04-03', '1996-05-01', '1996-05-08', 2, '152', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10925, 'HANAR', 3, '1996-04-03', '1996-05-01', '1996-04-12', 1, '2', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10926, 'ANATR', 4, '1996-04-03', '1996-05-01', '1996-04-10', 3, '40', 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'México'),
(10927, 'LACOR', 4, '1996-04-04', '1996-05-02', '1996-05-08', 1, '20', 'La corne d\'abondance', '67. avenue de l\'Europe', 'Versailles', NULL, '78000', 'Francia'),
(10928, 'GALED', 1, '1996-04-04', '1996-05-02', '1996-04-17', 1, '1', 'Galería del gastronómo', 'Rambla de Cataluña. 23', 'Barcelona', NULL, '8022', 'España'),
(10929, 'FRANK', 6, '1996-04-04', '1996-05-02', '1996-04-11', 1, '34', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(10930, 'SUPRD', 4, '1996-04-05', '1996-05-17', '1996-04-17', 3, '16', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(10931, 'RICSU', 4, '1996-04-05', '1996-04-19', '1996-04-18', 2, '14', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(10932, 'BONAP', 8, '1996-04-05', '1996-05-03', '1996-04-23', 1, '135', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10933, 'ISLAT', 6, '1996-04-05', '1996-05-03', '1996-04-15', 3, '54', 'Island Trading', 'Garden HouseCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10934, 'LEHMS', 3, '1996-04-08', '1996-05-06', '1996-04-11', 3, '32', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(10935, 'WELLI', 4, '1996-04-08', '1996-05-06', '1996-04-17', 3, '48', 'Wellington Importadora', 'Rua do Mercado. 12', 'Resende', 'SP', '08737-363', 'Brasil'),
(10936, 'GREAL', 3, '1996-04-08', '1996-05-06', '1996-04-17', 2, '34', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(10937, 'CACTU', 7, '1996-04-09', '1996-04-23', '1996-04-12', 3, '32', 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10938, 'QUICK', 3, '1996-04-09', '1996-05-07', '1996-04-15', 2, '32', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10939, 'MAGAA', 2, '1996-04-09', '1996-05-07', '1996-04-12', 2, '76', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10940, 'BONAP', 8, '1996-04-10', '1996-05-08', '1996-04-22', 3, '20', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10941, 'SAVEA', 7, '1996-04-10', '1996-05-08', '1996-04-19', 2, '401', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10942, 'REGGC', 9, '1996-04-10', '1996-05-08', '1996-04-17', 3, '18', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10943, 'BSBEV', 4, '1996-04-10', '1996-05-08', '1996-04-18', 2, '2', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10944, 'BOTTM', 6, '1996-04-11', '1996-04-25', '1996-04-12', 3, '53', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10945, 'MORGK', 4, '1996-04-11', '1996-05-09', '1996-04-17', 1, '10', 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Alemania'),
(10946, 'VAFFE', 1, '1996-04-11', '1996-05-09', '1996-04-18', 2, '27', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10947, 'BSBEV', 3, '1996-04-12', '1996-05-10', '1996-04-15', 2, '3', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10948, 'GODOS', 3, '1996-04-12', '1996-05-10', '1996-04-18', 3, '23', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(10949, 'BOTTM', 2, '1996-04-12', '1996-05-10', '1996-04-16', 3, '74', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10950, 'MAGAA', 1, '1996-04-15', '1996-05-13', '1996-04-22', 2, '3', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bérgamo', NULL, '24100', 'Italia'),
(10951, 'RICSU', 9, '1996-04-15', '1996-05-27', '1996-05-07', 2, '31', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(10952, 'ALFKI', 1, '1996-04-15', '1996-05-27', '1996-04-23', 1, '40', 'Alfred\'s Futterkiste', 'Obere Str. 57', 'Berlín', NULL, '12209', 'Alemania'),
(10953, 'AROUT', 9, '1996-04-15', '1996-04-29', '1996-04-24', 2, '24', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(10954, 'LINOD', 5, '1996-04-16', '1996-05-28', '1996-04-19', 1, '28', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10955, 'FOLKO', 8, '1996-04-16', '1996-05-14', '1996-04-19', 2, '3', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10956, 'BLAUS', 6, '1996-04-16', '1996-05-28', '1996-04-19', 2, '45', 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania'),
(10957, 'HILAA', 8, '1996-04-17', '1996-05-15', '1996-04-26', 3, '105', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10958, 'OCEAN', 7, '1996-04-17', '1996-05-15', '1996-04-26', 2, '50', 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10959, 'GOURL', 6, '1996-04-17', '1996-05-29', '1996-04-22', 2, '5', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(10960, 'HILAA', 3, '1996-04-18', '1996-05-02', '1996-05-08', 1, '2', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10961, 'QUEEN', 8, '1996-04-18', '1996-05-16', '1996-04-29', 1, '104', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10962, 'QUICK', 8, '1996-04-18', '1996-05-16', '1996-04-22', 2, '276', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10963, 'FURIB', 9, '1996-04-18', '1996-05-16', '1996-04-25', 3, '3', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal'),
(10964, 'SPECD', 3, '1996-04-19', '1996-05-17', '1996-04-23', 2, '87', 'Spécialités du monde', '25. rue Lauriston', 'Paris', NULL, '75016', 'Francia'),
(10965, 'OLDWO', 6, '1996-04-19', '1996-05-17', '1996-04-29', 3, '144', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(10966, 'CHOPS', 4, '1996-04-19', '1996-05-17', '1996-05-08', 1, '27', 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Suiza'),
(10967, 'TOMSP', 2, '1996-04-22', '1996-05-20', '1996-05-02', 2, '62', 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania'),
(10968, 'ERNSH', 1, '1996-04-22', '1996-05-20', '1996-05-01', 3, '75', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10969, 'COMMI', 1, '1996-04-22', '1996-05-20', '1996-04-29', 2, '0', 'Comércio Mineiro', 'Av. dos Lusíadas. 23', 'São Paulo', 'SP', '05432-043', 'Brasil'),
(10970, 'BOLID', 9, '1996-04-23', '1996-05-07', '1996-05-24', 1, '16', 'Bólido Comidas preparadas', 'C/ Araquil. 67', 'Madrid', NULL, '28023', 'España'),
(10971, 'FRANR', 2, '1996-04-23', '1996-05-21', '1996-05-02', 2, '122', 'France restauration', '54. rue Royale', 'Nantes', NULL, '44000', 'Francia'),
(10972, 'LACOR', 4, '1996-04-23', '1996-05-21', '1996-04-25', 2, '0', 'La corne d\'abondance', '67. avenue de l\'Europe', 'Versailles', NULL, '78000', 'Francia'),
(10973, 'LACOR', 6, '1996-04-23', '1996-05-21', '1996-04-26', 2, '15', 'La corne d\'abondance', '67. avenue de l\'Europe', 'Versailles', NULL, '78000', 'Francia'),
(10974, 'SPLIR', 3, '1996-04-24', '1996-05-08', '1996-05-03', 3, '13', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos'),
(10975, 'BOTTM', 1, '1996-04-24', '1996-05-22', '1996-04-26', 3, '32', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10976, 'HILAA', 1, '1996-04-24', '1996-06-05', '1996-05-03', 1, '38', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10977, 'FOLKO', 8, '1996-04-25', '1996-05-23', '1996-05-10', 3, '209', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10978, 'MAISD', 9, '1996-04-25', '1996-05-23', '1996-05-23', 2, '33', 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Bélgica'),
(10979, 'ERNSH', 8, '1996-04-25', '1996-05-23', '1996-04-30', 2, '353', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10980, 'FOLKO', 4, '1996-04-26', '1996-06-07', '1996-05-17', 1, '1', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10981, 'HANAR', 1, '1996-04-26', '1996-05-24', '1996-05-02', 2, '193', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10982, 'BOTTM', 2, '1996-04-26', '1996-05-24', '1996-05-08', 1, '14', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10983, 'SAVEA', 2, '1996-04-26', '1996-05-24', '1996-05-06', 2, '658', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10984, 'SAVEA', 1, '1996-04-29', '1996-05-27', '1996-05-03', 3, '211', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(10985, 'HUNGO', 2, '1996-04-29', '1996-05-27', '1996-05-02', 1, '92', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10986, 'OCEAN', 8, '1996-04-29', '1996-05-27', '1996-05-21', 2, '218', 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina'),
(10987, 'EASTC', 8, '1996-04-30', '1996-05-28', '1996-05-06', 1, '185', 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'Reino Unido'),
(10988, 'RATTC', 3, '1996-04-30', '1996-05-28', '1996-05-10', 2, '61', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(10989, 'QUEDE', 2, '1996-04-30', '1996-05-28', '1996-05-02', 1, '35', 'Que Delícia', 'Rua da Panificadora. 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10990, 'ERNSH', 2, '1996-05-01', '1996-06-12', '1996-05-07', 3, '118', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10991, 'QUICK', 1, '1996-05-01', '1996-05-29', '1996-05-07', 1, '39', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10992, 'THEBI', 1, '1996-05-01', '1996-05-29', '1996-05-03', 3, '4', 'The Big Cheese', '89 Jefferson WaySuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10993, 'FOLKO', 7, '1996-05-01', '1996-05-29', '1996-05-10', 3, '9', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(10994, 'VAFFE', 2, '1996-05-02', '1996-05-16', '1996-05-09', 3, '66', 'Vaffeljernet', 'Smagsløget 45', 'Århus', NULL, '8200', 'Dinamarca'),
(10995, 'PERIC', 1, '1996-05-02', '1996-05-30', '1996-05-06', 3, '46', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México'),
(10996, 'QUICK', 4, '1996-05-02', '1996-05-30', '1996-05-10', 2, '1', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10997, 'LILAS', 8, '1996-05-03', '1996-06-14', '1996-05-13', 2, '74', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(10998, 'WOLZA', 8, '1996-05-03', '1996-05-17', '1996-05-17', 2, '20', 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Polonia'),
(10999, 'OTTIK', 6, '1996-05-03', '1996-05-31', '1996-05-10', 2, '96', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(11000, 'RATTC', 2, '1996-05-06', '1996-06-03', '1996-05-14', 3, '55', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos'),
(11001, 'FOLKO', 2, '1996-05-06', '1996-06-03', '1996-05-14', 2, '197', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(11002, 'SAVEA', 4, '1996-05-06', '1996-06-03', '1996-05-16', 1, '141', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(11003, 'THECR', 3, '1996-05-06', '1996-06-03', '1996-05-08', 3, '15', 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'Estados Unidos'),
(11004, 'MAISD', 3, '1996-05-07', '1996-06-04', '1996-05-20', 1, '45', 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Bélgica'),
(11005, 'WILMK', 2, '1996-05-07', '1996-06-04', '1996-05-10', 1, '1', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(11006, 'GREAL', 3, '1996-05-07', '1996-06-04', '1996-05-15', 2, '25', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(11007, 'PRINI', 8, '1996-05-08', '1996-06-05', '1996-05-13', 2, '202', 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal'),
(11008, 'ERNSH', 7, '1996-05-08', '1996-06-05', NULL, 3, '79', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(11009, 'GODOS', 2, '1996-05-08', '1996-06-05', '1996-05-10', 1, '59', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(11010, 'REGGC', 2, '1996-05-09', '1996-06-06', '1996-05-21', 2, '29', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(11011, 'ALFKI', 3, '1996-05-09', '1996-06-06', '1996-05-13', 1, '1', 'Alfred\'s Futterkiste', 'Obere Str. 57', 'Berlín', NULL, '12209', 'Alemania'),
(11012, 'FRANK', 1, '1996-05-09', '1996-05-23', '1996-05-17', 3, '243', 'Frankenversand', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania'),
(11013, 'ROMEY', 2, '1996-05-09', '1996-06-06', '1996-05-10', 1, '33', 'Romero y tomillo', 'Gran Vía. 1', 'Madrid', NULL, '28001', 'España'),
(11014, 'LINOD', 2, '1996-05-10', '1996-06-07', '1996-05-15', 3, '24', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(11015, 'SANTG', 2, '1996-05-10', '1996-05-24', '1996-05-20', 2, '5', 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega'),
(11016, 'AROUT', 9, '1996-05-10', '1996-06-07', '1996-05-13', 2, '34', 'Around the Horn', 'Brook FarmStratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'Reino Unido'),
(11017, 'ERNSH', 9, '1996-05-13', '1996-06-10', '1996-05-20', 2, '754', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(11018, 'LONEP', 4, '1996-05-13', '1996-06-10', '1996-05-16', 2, '12', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(11019, 'RANCH', 6, '1996-05-13', '1996-06-10', NULL, 3, '3', 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina'),
(11020, 'OTTIK', 2, '1996-05-14', '1996-06-11', '1996-05-16', 2, '43', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(11021, 'QUICK', 3, '1996-05-14', '1996-06-11', '1996-05-21', 1, '297', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(11022, 'HANAR', 9, '1996-05-14', '1996-06-11', '1996-06-03', 2, '6', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(11023, 'BSBEV', 1, '1996-05-14', '1996-05-28', '1996-05-24', 2, '124', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(11024, 'EASTC', 4, '1996-05-15', '1996-06-12', '1996-05-20', 1, '74', 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'Reino Unido'),
(11025, 'WARTH', 6, '1996-05-15', '1996-06-12', '1996-05-24', 3, '29', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(11026, 'FRANS', 4, '1996-05-15', '1996-06-12', '1996-05-28', 1, '47', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia'),
(11027, 'BOTTM', 1, '1996-05-16', '1996-06-13', '1996-05-20', 1, '53', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(11028, 'KOENE', 2, '1996-05-16', '1996-06-13', '1996-05-22', 1, '30', 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Alemania'),
(11029, 'CHOPS', 4, '1996-05-16', '1996-06-13', '1996-05-27', 1, '48', 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Suiza'),
(11030, 'SAVEA', 7, '1996-05-17', '1996-06-14', '1996-05-27', 2, '831', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(11031, 'SAVEA', 6, '1996-05-17', '1996-06-14', '1996-05-24', 2, '227', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(11032, 'WHITC', 2, '1996-05-17', '1996-06-14', '1996-05-23', 3, '606', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(11033, 'RICSU', 7, '1996-05-17', '1996-06-14', '1996-05-23', 3, '85', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(11034, 'OLDWO', 8, '1996-05-20', '1996-07-01', '1996-05-27', 1, '40', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'Estados Unidos'),
(11035, 'SUPRD', 2, '1996-05-20', '1996-06-17', '1996-05-24', 2, '0', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(11036, 'DRACD', 8, '1996-05-20', '1996-06-17', '1996-05-22', 3, '149', 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Alemania'),
(11037, 'GODOS', 7, '1996-05-21', '1996-06-18', '1996-05-27', 1, '3', 'Godos Cocina Típica', 'C/ Romero. 33', 'Sevilla', NULL, '41101', 'España'),
(11038, 'SUPRD', 1, '1996-05-21', '1996-06-18', '1996-05-30', 2, '30', 'Suprêmes délices', 'Boulevard Tirou. 255', 'Charleroi', NULL, 'B-6000', 'Bélgica'),
(11039, 'LINOD', 1, '1996-05-21', '1996-06-18', NULL, 2, '65', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(11040, 'GREAL', 4, '1996-05-22', '1996-06-19', NULL, 3, '19', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(11041, 'CHOPS', 3, '1996-05-22', '1996-06-19', '1996-05-28', 2, '48', 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Suiza'),
(11042, 'COMMI', 2, '1996-05-22', '1996-06-05', '1996-05-31', 1, '30', 'Comércio Mineiro', 'Av. dos Lusíadas. 23', 'São Paulo', 'SP', '05432-043', 'Brasil'),
(11043, 'SPECD', 5, '1996-05-22', '1996-06-19', '1996-05-29', 2, '9', 'Spécialités du monde', '25. rue Lauriston', 'Paris', NULL, '75016', 'Francia'),
(11044, 'WOLZA', 4, '1996-05-23', '1996-06-20', '1996-05-31', 1, '9', 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Polonia'),
(11045, 'BOTTM', 6, '1996-05-23', '1996-06-20', NULL, 2, '71', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(11046, 'WANDK', 8, '1996-05-23', '1996-06-20', '1996-05-24', 2, '72', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(11047, 'EASTC', 7, '1996-05-24', '1996-06-21', '1996-05-31', 3, '47', 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'Reino Unido'),
(11048, 'BOTTM', 7, '1996-05-24', '1996-06-21', '1996-05-30', 3, '24', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(11049, 'GOURL', 3, '1996-05-24', '1996-06-21', '1996-06-03', 1, '8', 'Gourmet Lanchonetes', 'Av. Brasil. 442', 'Campinas', 'SP', '04876-786', 'Brasil'),
(11050, 'FOLKO', 8, '1996-05-27', '1996-06-24', '1996-06-04', 2, '59', 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', NULL, 'S-844 67', 'Suecia'),
(11051, 'LAMAI', 7, '1996-05-27', '1996-06-24', NULL, 3, '3', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(11052, 'HANAR', 3, '1996-05-27', '1996-06-24', '1996-05-31', 1, '67', 'Hanari Carnes', 'Rua do Paço. 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(11053, 'PICCO', 2, '1996-05-27', '1996-06-24', '1996-05-29', 2, '53', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(11054, 'CACTU', 8, '1996-05-28', '1996-06-25', NULL, 1, '0', 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina'),
(11055, 'HILAA', 7, '1996-05-28', '1996-06-25', '1996-06-04', 2, '121', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(11056, 'EASTC', 8, '1996-05-28', '1996-06-11', '1996-05-31', 2, '279', 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'Reino Unido'),
(11057, 'NORTS', 3, '1996-05-29', '1996-06-26', '1996-05-31', 3, '4', 'North/South', 'South House300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'Reino Unido'),
(11058, 'BLAUS', 9, '1996-05-29', '1996-06-26', NULL, 3, '31', 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania'),
(11059, 'RICAR', 2, '1996-05-29', '1996-07-10', NULL, 2, '86', 'Ricardo Adocicados', 'Av. Copacabana. 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(11060, 'FRANS', 2, '1996-05-30', '1996-06-27', '1996-06-03', 2, '11', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia'),
(11061, 'GREAL', 4, '1996-05-30', '1996-07-11', NULL, 3, '14', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'Estados Unidos'),
(11062, 'REGGC', 4, '1996-05-30', '1996-06-27', NULL, 2, '30', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(11063, 'HUNGO', 3, '1996-05-30', '1996-06-27', '1996-06-05', 2, '82', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(11064, 'SAVEA', 1, '1996-05-31', '1996-06-28', '1996-06-03', 1, '30', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'Estados Unidos'),
(11065, 'LILAS', 8, '1996-05-31', '1996-06-28', NULL, 1, '13', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(11066, 'WHITC', 7, '1996-05-31', '1996-06-28', '1996-06-03', 2, '45', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(11067, 'DRACD', 1, '1996-06-03', '1996-06-17', '1996-06-05', 2, '8', 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Alemania'),
(11068, 'QUEEN', 8, '1996-06-03', '1996-07-01', NULL, 2, '82', 'Queen Cozinha', 'Alameda dos Canàrios. 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(11069, 'TORTU', 1, '1996-06-03', '1996-07-01', '1996-06-05', 2, '16', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(11070, 'LEHMS', 2, '1996-06-04', '1996-07-02', NULL, 1, '136', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(11071, 'LILAS', 1, '1996-06-04', '1996-07-02', NULL, 1, '1', 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela'),
(11072, 'ERNSH', 4, '1996-06-04', '1996-07-02', NULL, 2, '259', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(11073, 'PERIC', 2, '1996-06-04', '1996-07-02', NULL, 2, '25', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México'),
(11074, 'SIMOB', 7, '1996-06-05', '1996-07-03', NULL, 2, '18', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(11075, 'RICSU', 8, '1996-06-05', '1996-07-03', NULL, 2, '6', 'Richter Supermarkt', 'Starenweg 5', 'Genève', NULL, '1204', 'Suiza'),
(11076, 'BONAP', 4, '1996-06-05', '1996-07-03', NULL, 2, '38', 'Bon app\'', '12. rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(11077, 'RATTC', 1, '1996-06-05', '1996-07-03', NULL, 2, '9', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_totalizados`
--

CREATE TABLE `pedidos_totalizados` (
  `idpedidos` int(11) NOT NULL,
  `nombrecontacto` varchar(100) DEFAULT NULL,
  `tratamiento` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `fecha_envio` date DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `dias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos_totalizados`
--

INSERT INTO `pedidos_totalizados` (`idpedidos`, `nombrecontacto`, `tratamiento`, `nombre`, `apellidos`, `cargo`, `fecha_envio`, `fecha_pedido`, `fecha_entrega`, `dias`) VALUES
(10248, 'Matti Karttunen', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1994-08-16', '1994-08-04', '1994-09-01', 16),
(10249, 'Karin Josephs', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-08-10', '1994-08-05', '1994-09-16', 37),
(10250, 'Mario Pontes', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-08-12', '1994-08-08', '1994-09-05', 24),
(10251, 'Mary Saveley', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-08-15', '1994-08-08', '1994-09-05', 21),
(10252, 'Pascale Cartrain', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-08-11', '1994-08-09', '1994-09-06', 26),
(10253, 'Mario Pontes', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-08-16', '1994-08-10', '1994-08-24', 8),
(10254, 'Yang Wang', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1994-08-23', '1994-08-11', '1994-09-08', 16),
(10255, 'Michael Holz', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1994-08-15', '1994-08-12', '1994-09-09', 25),
(10256, 'Paula Parente', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-08-17', '1994-08-15', '1994-09-12', 26),
(10257, 'Carlos Hernández', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-08-22', '1994-08-16', '1994-09-13', 22),
(10258, 'Roland Mendel', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-08-23', '1994-08-17', '1994-09-14', 22),
(10259, 'Francisco Chang', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-08-25', '1994-08-18', '1994-09-15', 21),
(10260, 'Henriette Pfalzheim', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-08-29', '1994-08-19', '1994-09-16', 18),
(10261, 'Bernardo Batista', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-08-30', '1994-08-19', '1994-09-16', 17),
(10262, 'Paula Wilson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-08-25', '1994-08-22', '1994-09-19', 25),
(10263, 'Roland Mendel', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1994-08-31', '1994-08-23', '1994-09-20', 20),
(10264, 'Maria Larsson', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-09-23', '1994-08-24', '1994-09-21', -2),
(10265, 'Frédérique Citeaux', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-09-12', '1994-08-25', '1994-09-22', 10),
(10266, 'Pirkko Koskitalo', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-08-31', '1994-08-26', '1994-10-07', 37),
(10267, 'Peter Franken', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-09-06', '1994-08-29', '1994-09-26', 20),
(10268, 'Manuel Pereira', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-09-02', '1994-08-30', '1994-09-27', 25),
(10269, 'Karl Jablonski', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1994-09-09', '1994-08-31', '1994-09-14', 5),
(10270, 'Pirkko Koskitalo', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-09-02', '1994-09-01', '1994-09-29', 27),
(10271, 'Art Braunschweiger', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-09-30', '1994-09-01', '1994-09-29', -1),
(10272, 'Paula Wilson', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-09-06', '1994-09-02', '1994-09-30', 24),
(10273, 'Horst Kloss', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-09-12', '1994-09-05', '1994-10-03', 21),
(10274, 'Paul Henriot', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-09-16', '1994-09-06', '1994-10-04', 18),
(10275, 'Giovanni Rovelli', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-09-09', '1994-09-07', '1994-10-05', 26),
(10276, 'Miguel Angel Paolino', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-09-14', '1994-09-08', '1994-09-22', 8),
(10277, 'Alexander Feuer', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-09-13', '1994-09-09', '1994-10-07', 24),
(10278, 'Christina Berglund', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-09-16', '1994-09-12', '1994-10-10', 24),
(10279, 'Renate Messner', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-09-16', '1994-09-13', '1994-10-11', 25),
(10280, 'Christina Berglund', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-10-13', '1994-09-14', '1994-10-12', -1),
(10281, 'Alejandra Camino', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-09-21', '1994-09-14', '1994-09-28', 7),
(10282, 'Alejandra Camino', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-09-21', '1994-09-15', '1994-10-13', 22),
(10283, 'Carlos González', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-09-23', '1994-09-16', '1994-10-14', 21),
(10284, 'Renate Messner', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-09-27', '1994-09-19', '1994-10-17', 20),
(10285, 'Horst Kloss', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-09-26', '1994-09-20', '1994-10-18', 22),
(10286, 'Horst Kloss', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-09-30', '1994-09-21', '1994-10-19', 19),
(10287, 'Janete Limeira', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-09-28', '1994-09-22', '1994-10-20', 22),
(10288, 'Maurizio Moroni', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-10-04', '1994-09-23', '1994-10-21', 17),
(10289, 'Victoria Ashworth', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-09-28', '1994-09-26', '1994-10-24', 26),
(10290, 'Pedro Afonso', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-10-04', '1994-09-27', '1994-10-25', 21),
(10291, 'Bernardo Batista', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-10-05', '1994-09-27', '1994-10-25', 20),
(10292, 'Anabela Domingues', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-10-03', '1994-09-28', '1994-10-26', 23),
(10293, 'Miguel Angel Paolino', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-10-12', '1994-09-29', '1994-10-27', 15),
(10294, 'Paula Wilson', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-10-06', '1994-09-30', '1994-10-28', 22),
(10295, 'Paul Henriot', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-10-11', '1994-10-03', '1994-10-31', 20),
(10296, 'Carlos González', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-10-12', '1994-10-04', '1994-11-01', 20),
(10297, 'Frédérique Citeaux', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1994-10-11', '1994-10-05', '1994-11-16', 36),
(10298, 'Patricia McKenna', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-10-12', '1994-10-06', '1994-11-03', 22),
(10299, 'Janete Limeira', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-10-14', '1994-10-07', '1994-11-04', 21),
(10300, 'Giovanni Rovelli', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-10-19', '1994-10-10', '1994-11-07', 19),
(10301, 'Rita Müller', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-10-18', '1994-10-10', '1994-11-07', 20),
(10302, 'Pascale Cartrain', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-11-09', '1994-10-11', '1994-11-08', -1),
(10303, 'José Pedro Freyre', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-10-19', '1994-10-12', '1994-11-09', 21),
(10304, 'Miguel Angel Paolino', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-10-18', '1994-10-13', '1994-11-10', 23),
(10305, 'Rene Phillips', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-11-09', '1994-10-14', '1994-11-11', 2),
(10306, 'Alejandra Camino', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-10-24', '1994-10-17', '1994-11-14', 21),
(10307, 'Fran Wilson', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-10-26', '1994-10-18', '1994-11-15', 20),
(10308, 'Ana Trujillo', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-10-25', '1994-10-19', '1994-11-16', 22),
(10309, 'Patricia McKenna', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-11-23', '1994-10-20', '1994-11-17', -6),
(10310, 'Liz Nixon', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-10-28', '1994-10-21', '1994-11-18', 21),
(10311, 'Janine Labrune', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-10-27', '1994-10-21', '1994-11-04', 8),
(10312, 'Rita Müller', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-11-03', '1994-10-24', '1994-11-21', 18),
(10313, 'Horst Kloss', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-11-04', '1994-10-25', '1994-11-22', 18),
(10314, 'Paula Wilson', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-11-04', '1994-10-26', '1994-11-23', 19),
(10315, 'Helen Bennett', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-11-03', '1994-10-27', '1994-11-24', 21),
(10316, 'Paula Wilson', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-11-08', '1994-10-28', '1994-11-25', 17),
(10317, 'Fran Wilson', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-11-10', '1994-10-31', '1994-11-28', 18),
(10318, 'Helen Bennett', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-11-04', '1994-11-01', '1994-11-29', 25),
(10319, 'Miguel Angel Paolino', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-11-11', '1994-11-02', '1994-11-30', 19),
(10320, 'Pirkko Koskitalo', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1994-11-18', '1994-11-03', '1994-11-17', -1),
(10321, 'Helen Bennett', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-11-11', '1994-11-03', '1994-12-01', 20),
(10322, 'Guillermo Fernández', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-11-23', '1994-11-04', '1994-12-02', 9),
(10323, 'Philip Cramer', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-11-14', '1994-11-07', '1994-12-05', 21),
(10324, 'Jose Pavarotti', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1994-11-10', '1994-11-08', '1994-12-06', 26),
(10325, 'Philip Cramer', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-11-14', '1994-11-09', '1994-11-23', 9),
(10326, 'Martín Sommer', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-11-14', '1994-11-10', '1994-12-08', 24),
(10327, 'Maria Larsson', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-11-14', '1994-11-11', '1994-12-09', 25),
(10328, 'Lino Rodriguez ', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-11-17', '1994-11-14', '1994-12-12', 25),
(10329, 'Art Braunschweiger', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-11-23', '1994-11-15', '1994-12-27', 34),
(10330, 'Carlos González', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-11-28', '1994-11-16', '1994-12-14', 16),
(10331, 'Laurence Lebihan', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1994-11-21', '1994-11-16', '1994-12-28', 37),
(10332, 'Jean Fresnière', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-11-21', '1994-11-17', '1994-12-29', 38),
(10333, 'Pirkko Koskitalo', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1994-11-25', '1994-11-18', '1994-12-16', 21),
(10334, 'Mary Saveley', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-11-28', '1994-11-21', '1994-12-19', 21),
(10335, 'Patricia McKenna', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-11-24', '1994-11-22', '1994-12-20', 26),
(10336, 'Isabel de Castro', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-11-25', '1994-11-23', '1994-12-21', 26),
(10337, 'Peter Franken', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-11-29', '1994-11-24', '1994-12-22', 23),
(10338, 'Rene Phillips', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-11-29', '1994-11-25', '1994-12-23', 24),
(10339, 'Jean Fresnière', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-12-05', '1994-11-28', '1994-12-26', 21),
(10340, 'Laurence Lebihan', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-12-09', '1994-11-29', '1994-12-27', 18),
(10341, 'Jytte Petersen', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-12-06', '1994-11-29', '1994-12-27', 21),
(10342, 'Peter Franken', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-12-05', '1994-11-30', '1994-12-14', 9),
(10343, 'Renate Messner', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-12-07', '1994-12-01', '1994-12-29', 22),
(10344, 'Karl Jablonski', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-12-06', '1994-12-02', '1994-12-30', 24),
(10345, 'Horst Kloss', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1994-12-12', '1994-12-05', '1995-01-02', 21),
(10346, 'Paula Wilson', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-12-09', '1994-12-06', '1995-01-17', 39),
(10347, 'Aria Cruz', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-12-09', '1994-12-07', '1995-01-04', 26),
(10348, 'Rita Müller', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1994-12-16', '1994-12-08', '1995-01-05', 20),
(10349, 'Art Braunschweiger', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-12-16', '1994-12-09', '1995-01-06', 21),
(10350, 'Annette Roulet', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-01-03', '1994-12-12', '1995-01-09', 6),
(10351, 'Roland Mendel', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1994-12-21', '1994-12-12', '1995-01-09', 19),
(10352, 'Lino Rodriguez ', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-12-19', '1994-12-13', '1994-12-27', 8),
(10353, 'Georg Pipps', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1994-12-26', '1994-12-14', '1995-01-11', 16),
(10354, 'Guillermo Fernández', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1994-12-21', '1994-12-15', '1995-01-12', 22),
(10355, 'Thomas Hardy', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-12-21', '1994-12-16', '1995-01-13', 23),
(10356, 'Rita Müller', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1994-12-28', '1994-12-19', '1995-01-16', 19),
(10357, 'Carlos González', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-02', '1994-12-20', '1995-01-17', 15),
(10358, 'Annette Roulet', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1994-12-28', '1994-12-21', '1995-01-18', 21),
(10359, 'Hari Kumar', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1994-12-27', '1994-12-22', '1995-01-19', 23),
(10360, 'Frédérique Citeaux', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-01-02', '1994-12-23', '1995-01-20', 18),
(10361, 'Horst Kloss', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-03', '1994-12-23', '1995-01-20', 17),
(10362, 'Laurence Lebihan', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1994-12-29', '1994-12-26', '1995-01-23', 25),
(10363, 'Sven Ottlieb', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-01-04', '1994-12-27', '1995-01-24', 20),
(10364, 'Ann Devon', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-04', '1994-12-27', '1995-02-07', 34),
(10365, 'Antonio Moreno', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-01-02', '1994-12-28', '1995-01-25', 23),
(10366, 'Eduardo Saavedra', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-01-30', '1994-12-29', '1995-02-09', 10),
(10367, 'Palle Ibsen', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-01-02', '1994-12-29', '1995-01-26', 24),
(10368, 'Roland Mendel', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-01-02', '1994-12-30', '1995-01-27', 25),
(10369, 'Art Braunschweiger', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-01-09', '1995-01-02', '1995-01-30', 21),
(10370, 'Yang Wang', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-01-27', '1995-01-03', '1995-01-31', 4),
(10371, 'Annette Roulet', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-24', '1995-01-03', '1995-01-31', 7),
(10372, 'Lúcia Carvalho', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-01-09', '1995-01-04', '1995-02-01', 23),
(10373, 'Patricia McKenna', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-01-11', '1995-01-05', '1995-02-02', 22),
(10374, 'Zbyszek Piestrzeniewicz', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-09', '1995-01-05', '1995-02-02', 24),
(10375, 'Yoshi Latimer', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-01-09', '1995-01-06', '1995-02-03', 25),
(10376, 'Jean Fresnière', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-13', '1995-01-09', '1995-02-06', 24),
(10377, 'Hari Kumar', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-13', '1995-01-09', '1995-02-06', 24),
(10378, 'Maria Larsson', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-01-19', '1995-01-10', '1995-02-07', 19),
(10379, 'Bernardo Batista', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-01-13', '1995-01-11', '1995-02-08', 26),
(10380, 'Patricia McKenna', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-02-16', '1995-01-12', '1995-02-09', -7),
(10381, 'Carlos González', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-01-13', '1995-01-12', '1995-02-09', 27),
(10382, 'Roland Mendel', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-01-16', '1995-01-13', '1995-02-10', 25),
(10383, 'Thomas Hardy', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-01-18', '1995-01-16', '1995-02-13', 26),
(10384, 'Christina Berglund', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-01-20', '1995-01-16', '1995-02-13', 24),
(10385, 'Art Braunschweiger', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-23', '1995-01-17', '1995-02-14', 22),
(10386, 'Aria Cruz', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-01-25', '1995-01-18', '1995-02-01', 7),
(10387, 'Jonas Bergulfsen', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-01-20', '1995-01-18', '1995-02-15', 26),
(10388, 'Hari Kumar', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-01-20', '1995-01-19', '1995-02-16', 27),
(10389, 'Elizabeth Lincoln', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-01-24', '1995-01-20', '1995-02-17', 24),
(10390, 'Roland Mendel', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-01-26', '1995-01-23', '1995-02-20', 25),
(10391, 'Sven Ottlieb', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-01-31', '1995-01-23', '1995-02-20', 20),
(10392, 'Georg Pipps', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-02-01', '1995-01-24', '1995-02-21', 20),
(10393, 'Jose Pavarotti', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-02-03', '1995-01-25', '1995-02-22', 19),
(10394, 'Yoshi Latimer', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-02-03', '1995-01-25', '1995-02-22', 19),
(10395, 'Carlos Hernández', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-02-03', '1995-01-26', '1995-02-23', 20),
(10396, 'Peter Franken', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-02-06', '1995-01-27', '1995-02-10', 4),
(10397, 'Isabel de Castro', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-02-02', '1995-01-27', '1995-02-24', 22),
(10398, 'Jose Pavarotti', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-02-09', '1995-01-30', '1995-02-27', 18),
(10399, 'Palle Ibsen', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-02-08', '1995-01-31', '1995-02-14', 6),
(10400, 'Ann Devon', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-02-16', '1995-02-01', '1995-03-01', 13),
(10401, 'Paula Wilson', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-02-10', '1995-02-01', '1995-03-01', 19),
(10402, 'Roland Mendel', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-02-10', '1995-02-02', '1995-03-16', 34),
(10403, 'Roland Mendel', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-02-09', '1995-02-03', '1995-03-03', 22),
(10404, 'Giovanni Rovelli', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-02-08', '1995-02-03', '1995-03-03', 23),
(10405, 'Felipe Izquierdo', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-02-22', '1995-02-06', '1995-03-06', 12),
(10406, 'Lúcia Carvalho', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-02-13', '1995-02-07', '1995-03-21', 36),
(10407, 'Henriette Pfalzheim', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-03-02', '1995-02-07', '1995-03-07', 5),
(10408, 'Martine Rancé', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-02-14', '1995-02-08', '1995-03-08', 22),
(10409, 'Yvonne Moncada', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-02-14', '1995-02-09', '1995-03-09', 23),
(10410, 'Elizabeth Lincoln', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-02-15', '1995-02-10', '1995-03-10', 23),
(10411, 'Elizabeth Lincoln', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-02-21', '1995-02-10', '1995-03-10', 17),
(10412, 'Pirkko Koskitalo', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-02-15', '1995-02-13', '1995-03-13', 26),
(10413, 'Annette Roulet', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-02-16', '1995-02-14', '1995-03-14', 26),
(10414, 'Aria Cruz', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-02-17', '1995-02-14', '1995-03-14', 25),
(10415, 'Yoshi Latimer', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-02-24', '1995-02-15', '1995-03-15', 19),
(10416, 'Pirkko Koskitalo', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-02-27', '1995-02-16', '1995-03-16', 17),
(10417, 'Jytte Petersen', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-02-28', '1995-02-16', '1995-03-16', 16),
(10418, 'Horst Kloss', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-02-24', '1995-02-17', '1995-03-17', 21),
(10419, 'Michael Holz', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-03-02', '1995-02-20', '1995-03-20', 18),
(10420, 'Paula Parente', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-02-27', '1995-02-21', '1995-03-21', 22),
(10421, 'Bernardo Batista', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-02-27', '1995-02-21', '1995-04-04', 36),
(10422, 'Paolo Accorti', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-03-03', '1995-02-22', '1995-03-22', 19),
(10423, 'André Fonseca', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-03-27', '1995-02-23', '1995-03-09', -18),
(10424, 'Jean Fresnière', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-02-27', '1995-02-23', '1995-03-23', 24),
(10425, 'Annette Roulet', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-03-17', '1995-02-24', '1995-03-24', 7),
(10426, 'Eduardo Saavedra', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-03-09', '1995-02-27', '1995-03-27', 18),
(10427, 'Georg Pipps', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-04-03', '1995-02-27', '1995-03-27', -7),
(10428, 'Maurizio Moroni', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-03-07', '1995-02-28', '1995-03-28', 21),
(10429, 'Patricia McKenna', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-10', '1995-03-01', '1995-04-12', 33),
(10430, 'Roland Mendel', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-03-06', '1995-03-02', '1995-03-16', 10),
(10431, 'Elizabeth Lincoln', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-03-10', '1995-03-02', '1995-03-16', 6),
(10432, 'Art Braunschweiger', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-10', '1995-03-03', '1995-03-17', 7),
(10433, 'Isabel de Castro', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-04-04', '1995-03-06', '1995-04-03', -1),
(10434, 'Maria Larsson', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-16', '1995-03-06', '1995-04-03', 18),
(10435, 'Elizabeth Brown', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-03-10', '1995-03-07', '1995-04-18', 39),
(10436, 'Frédérique Citeaux', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-14', '1995-03-08', '1995-04-05', 22),
(10437, 'Pirkko Koskitalo', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-03-15', '1995-03-08', '1995-04-05', 21),
(10438, 'Karin Josephs', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-17', '1995-03-09', '1995-04-06', 20),
(10439, 'Jean Fresnière', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-03-13', '1995-03-10', '1995-04-07', 25),
(10440, 'Jose Pavarotti', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-03-31', '1995-03-13', '1995-04-10', 10),
(10441, 'Rene Phillips', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-04-14', '1995-03-13', '1995-04-24', 10),
(10442, 'Roland Mendel', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-21', '1995-03-14', '1995-04-11', 21),
(10443, 'Maurizio Moroni', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-03-17', '1995-03-15', '1995-04-12', 26),
(10444, 'Christina Berglund', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-24', '1995-03-15', '1995-04-12', 19),
(10445, 'Christina Berglund', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-23', '1995-03-16', '1995-04-13', 21),
(10446, 'Karin Josephs', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-03-22', '1995-03-17', '1995-04-14', 23),
(10447, 'Janete Limeira', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-04-07', '1995-03-17', '1995-04-14', 7),
(10448, 'Sergio Gutiérrez', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-03-27', '1995-03-20', '1995-04-17', 21),
(10449, 'Frédérique Citeaux', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-03-30', '1995-03-21', '1995-04-18', 19),
(10450, 'Mary Saveley', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-04-11', '1995-03-22', '1995-04-19', 8),
(10451, 'Horst Kloss', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-04-12', '1995-03-22', '1995-04-05', -7),
(10452, 'Jose Pavarotti', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-03-29', '1995-03-23', '1995-04-20', 22),
(10453, 'Thomas Hardy', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-03-29', '1995-03-24', '1995-04-21', 23),
(10454, 'Annette Roulet', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-03-28', '1995-03-24', '1995-04-21', 24),
(10455, 'Pirkko Koskitalo', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-04-03', '1995-03-27', '1995-05-08', 35),
(10456, 'Philip Cramer', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-03-31', '1995-03-28', '1995-05-09', 39),
(10457, 'Philip Cramer', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-04-03', '1995-03-28', '1995-04-25', 22),
(10458, 'Pascale Cartrain', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-04-04', '1995-03-29', '1995-04-26', 22),
(10459, 'Mary Saveley', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-03-31', '1995-03-30', '1995-04-27', 27),
(10460, 'Maria Larsson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-04-03', '1995-03-31', '1995-04-28', 25),
(10461, 'Carlos González', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-04-05', '1995-03-31', '1995-04-28', 23),
(10462, 'Elizabeth Brown', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-04-18', '1995-04-03', '1995-05-01', 13),
(10463, 'Pascale Cartrain', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-04-06', '1995-04-04', '1995-05-02', 26),
(10464, 'Lino Rodriguez ', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-04-14', '1995-04-04', '1995-05-02', 18),
(10465, 'Palle Ibsen', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-04-14', '1995-04-05', '1995-05-03', 19),
(10466, 'Pedro Afonso', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-04-13', '1995-04-06', '1995-05-04', 21),
(10467, 'Giovanni Rovelli', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-04-11', '1995-04-06', '1995-05-04', 23),
(10468, 'Philip Cramer', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-04-12', '1995-04-07', '1995-05-05', 23),
(10469, 'Karl Jablonski', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-04-14', '1995-04-10', '1995-05-08', 24),
(10470, 'Laurence Lebihan', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-04-14', '1995-04-11', '1995-05-09', 25),
(10471, 'Victoria Ashworth', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-04-18', '1995-04-11', '1995-05-09', 21),
(10472, 'Hari Kumar', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-04-19', '1995-04-12', '1995-05-10', 21),
(10473, 'Helen Bennett', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-04-21', '1995-04-13', '1995-04-27', 6),
(10474, 'Guillermo Fernández', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-04-21', '1995-04-13', '1995-05-11', 20),
(10475, 'Pascale Cartrain', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-05-05', '1995-04-14', '1995-05-12', 7),
(10476, 'Carlos Hernández', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-04-24', '1995-04-17', '1995-05-15', 21),
(10477, 'Isabel de Castro', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-04-25', '1995-04-17', '1995-05-15', 20),
(10478, 'Mary Saveley', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-04-26', '1995-04-18', '1995-05-02', 6),
(10479, 'Paula Wilson', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-04-21', '1995-04-19', '1995-05-17', 26),
(10480, 'Martine Rancé', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-04-24', '1995-04-20', '1995-05-18', 24),
(10481, 'Janete Limeira', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-04-25', '1995-04-20', '1995-05-18', 23),
(10482, 'John Steel', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-05-11', '1995-04-21', '1995-05-19', 8),
(10483, 'Karl Jablonski', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-05-26', '1995-04-24', '1995-05-22', -4),
(10484, 'Victoria Ashworth', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-05-02', '1995-04-24', '1995-05-22', 20),
(10485, 'Felipe Izquierdo', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-05-01', '1995-04-25', '1995-05-09', 8),
(10486, 'Carlos Hernández', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-05-03', '1995-04-26', '1995-05-24', 21),
(10487, 'Lúcia Carvalho', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-04-28', '1995-04-26', '1995-05-24', 26),
(10488, 'Peter Franken', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-05-03', '1995-04-27', '1995-05-25', 22),
(10489, 'Georg Pipps', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-05-10', '1995-04-28', '1995-05-26', 16),
(10490, 'Carlos Hernández', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-05-04', '1995-05-01', '1995-05-29', 25),
(10491, 'Lino Rodriguez ', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-05-09', '1995-05-01', '1995-05-29', 20),
(10492, 'Elizabeth Lincoln', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-05-12', '1995-05-02', '1995-05-30', 18),
(10493, 'Annette Roulet', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-05-11', '1995-05-03', '1995-05-31', 20),
(10494, 'Pedro Afonso', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-05-10', '1995-05-03', '1995-05-31', 21),
(10495, 'Yoshi Tannamuri', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-05-12', '1995-05-04', '1995-06-01', 20),
(10496, 'Anabela Domingues', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-05-08', '1995-05-05', '1995-06-02', 25),
(10497, 'Renate Messner', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-05-08', '1995-05-05', '1995-06-02', 25),
(10498, 'Carlos Hernández', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-05-12', '1995-05-08', '1995-06-05', 24),
(10499, 'Carlos González', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-05-17', '1995-05-09', '1995-06-06', 20),
(10500, 'Annette Roulet', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-05-18', '1995-05-10', '1995-06-07', 20),
(10501, 'Hanna Moos', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-05-17', '1995-05-10', '1995-06-07', 21),
(10502, 'Guillermo Fernández', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-05-30', '1995-05-11', '1995-06-08', 9),
(10503, 'Patricia McKenna', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-05-17', '1995-05-12', '1995-06-09', 23),
(10504, 'Karl Jablonski', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-05-19', '1995-05-12', '1995-06-09', 21),
(10505, 'Jean Fresnière', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-05-22', '1995-05-15', '1995-06-12', 21),
(10506, 'Philip Cramer', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-06-02', '1995-05-16', '1995-06-13', 11),
(10507, 'Antonio Moreno', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-05-23', '1995-05-16', '1995-06-13', 21),
(10508, 'Henriette Pfalzheim', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-06-13', '1995-05-17', '1995-06-14', 1),
(10509, 'Hanna Moos', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-05-30', '1995-05-18', '1995-06-15', 16),
(10510, 'Jose Pavarotti', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-05-29', '1995-05-19', '1995-06-16', 18),
(10511, 'Laurence Lebihan', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-05-22', '1995-05-19', '1995-06-16', 25),
(10512, 'Aria Cruz', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-05-25', '1995-05-22', '1995-06-19', 25),
(10513, 'Rita Müller', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-05-29', '1995-05-23', '1995-07-04', 36),
(10514, 'Roland Mendel', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-06-16', '1995-05-23', '1995-06-20', 4),
(10515, 'Horst Kloss', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-06-23', '1995-05-24', '1995-06-07', -16),
(10516, 'Patricia McKenna', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-06-01', '1995-05-25', '1995-06-22', 21),
(10517, 'Simon Crowther', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-05-30', '1995-05-25', '1995-06-22', 23),
(10518, 'Miguel Angel Paolino', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-06-05', '1995-05-26', '1995-06-09', 4),
(10519, 'Yang Wang', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-06-01', '1995-05-29', '1995-06-26', 25),
(10520, 'Jonas Bergulfsen', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-06-01', '1995-05-30', '1995-06-27', 26),
(10521, 'Patricio Simpson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-06-02', '1995-05-30', '1995-06-27', 25),
(10522, 'Renate Messner', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-06-06', '1995-05-31', '1995-06-28', 22),
(10523, 'Hari Kumar', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-06-30', '1995-06-01', '1995-06-29', -1),
(10524, 'Christina Berglund', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-06-07', '1995-06-01', '1995-06-29', 22),
(10525, 'Laurence Lebihan', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-06-23', '1995-06-02', '1995-06-30', 7),
(10526, 'Pirkko Koskitalo', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-06-15', '1995-06-05', '1995-07-03', 18),
(10527, 'Horst Kloss', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-06-07', '1995-06-05', '1995-07-03', 26),
(10528, 'Howard Snyder', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-06-09', '1995-06-06', '1995-06-20', 11),
(10529, 'Catherine Dewey', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-06-09', '1995-06-07', '1995-07-05', 26),
(10530, 'Georg Pipps', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-06-12', '1995-06-08', '1995-07-06', 24),
(10531, 'Yvonne Moncada', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-06-19', '1995-06-08', '1995-07-06', 17),
(10532, 'Ann Devon', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-06-12', '1995-06-09', '1995-07-07', 25),
(10533, 'Maria Larsson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-06-22', '1995-06-12', '1995-07-10', 18),
(10534, 'Renate Messner', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-06-14', '1995-06-12', '1995-07-10', 26),
(10535, 'Antonio Moreno', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-06-21', '1995-06-13', '1995-07-11', 20),
(10536, 'Renate Messner', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-07-07', '1995-06-14', '1995-07-12', 5),
(10537, 'Michael Holz', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-06-19', '1995-06-14', '1995-06-28', 9),
(10538, 'Victoria Ashworth', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-06-16', '1995-06-15', '1995-07-13', 27),
(10539, 'Victoria Ashworth', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-06-23', '1995-06-16', '1995-07-14', 21),
(10540, 'Horst Kloss', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-07-14', '1995-06-19', '1995-07-17', 3),
(10541, 'Mario Pontes', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-06-29', '1995-06-19', '1995-07-17', 18),
(10542, 'Philip Cramer', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-06-26', '1995-06-20', '1995-07-18', 22),
(10543, 'Carlos González', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-06-23', '1995-06-21', '1995-07-19', 26),
(10544, 'Fran Wilson', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-06-30', '1995-06-21', '1995-07-19', 19),
(10545, 'John Steel', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-07-27', '1995-06-22', '1995-07-20', -7),
(10546, 'Mary Saveley', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-06-27', '1995-06-23', '1995-07-21', 24),
(10547, 'Hari Kumar', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-07-03', '1995-06-23', '1995-07-21', 18),
(10548, 'Karin Josephs', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-07-03', '1995-06-26', '1995-07-24', 21),
(10549, 'Horst Kloss', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-06-30', '1995-06-27', '1995-07-11', 11),
(10550, 'José Pedro Freyre', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-07-07', '1995-06-28', '1995-07-26', 19),
(10551, 'Lino Rodriguez ', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-07-07', '1995-06-28', '1995-08-09', 33),
(10552, 'Carlos Hernández', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-07-06', '1995-06-29', '1995-07-27', 21),
(10553, 'Pirkko Koskitalo', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-07-04', '1995-06-30', '1995-07-28', 24),
(10554, 'Henriette Pfalzheim', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-07-06', '1995-06-30', '1995-07-28', 22),
(10555, 'Jose Pavarotti', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-07-05', '1995-07-03', '1995-07-31', 26),
(10556, 'Jytte Petersen', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-07-14', '1995-07-04', '1995-08-15', 32),
(10557, 'Renate Messner', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-07-07', '1995-07-04', '1995-07-18', 11),
(10558, 'Thomas Hardy', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-07-11', '1995-07-05', '1995-08-02', 22),
(10559, 'Frédérique Citeaux', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-07-14', '1995-07-06', '1995-08-03', 20),
(10560, 'Peter Franken', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-07-10', '1995-07-07', '1995-08-04', 25),
(10561, 'Maria Larsson', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-07-10', '1995-07-07', '1995-08-04', 25),
(10562, 'Maurizio Moroni', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-07-13', '1995-07-10', '1995-08-07', 25),
(10563, 'Janete Limeira', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-07-25', '1995-07-11', '1995-08-22', 28),
(10564, 'Paula Wilson', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-07-17', '1995-07-11', '1995-08-08', 22),
(10565, 'Jean Fresnière', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-07-19', '1995-07-12', '1995-08-09', 21),
(10566, 'Frédérique Citeaux', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-07-19', '1995-07-13', '1995-08-10', 22),
(10567, 'Patricia McKenna', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-07-18', '1995-07-13', '1995-08-10', 23),
(10568, 'Eduardo Saavedra', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-08-09', '1995-07-14', '1995-08-11', 2),
(10569, 'Paula Wilson', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-08-11', '1995-07-17', '1995-08-14', 3),
(10570, 'Jean Fresnière', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-07-20', '1995-07-18', '1995-08-15', 26),
(10571, 'Roland Mendel', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-08-04', '1995-07-18', '1995-08-29', 25),
(10572, 'Christina Berglund', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-07-26', '1995-07-19', '1995-08-16', 21),
(10573, 'Antonio Moreno', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-07-21', '1995-07-20', '1995-08-17', 27),
(10574, 'Helvetius Nagy', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-07-31', '1995-07-20', '1995-08-17', 17),
(10575, 'Alexander Feuer', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-07-31', '1995-07-21', '1995-08-04', 4),
(10576, 'Miguel Angel Paolino', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-07-31', '1995-07-24', '1995-08-07', 7),
(10577, 'Helvetius Nagy', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-07-31', '1995-07-24', '1995-09-04', 35),
(10578, 'Victoria Ashworth', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-08-25', '1995-07-25', '1995-08-22', -3),
(10579, 'Jaime Yorres', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-08-04', '1995-07-26', '1995-08-23', 19),
(10580, 'Henriette Pfalzheim', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-08-01', '1995-07-27', '1995-08-24', 23),
(10581, 'Aria Cruz', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-08-02', '1995-07-27', '1995-08-24', 22),
(10582, 'Hanna Moos', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-08-14', '1995-07-28', '1995-08-25', 11),
(10583, 'Pirkko Koskitalo', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-08-04', '1995-07-31', '1995-08-28', 24),
(10584, 'Frédérique Citeaux', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-08-04', '1995-07-31', '1995-08-28', 24),
(10585, 'Paula Parente', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-08-10', '1995-08-01', '1995-08-29', 19),
(10586, 'Maurizio Moroni', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-08-09', '1995-08-02', '1995-08-30', 21),
(10587, 'Bernardo Batista', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-08-09', '1995-08-02', '1995-08-30', 21),
(10588, 'Horst Kloss', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-08-10', '1995-08-03', '1995-08-31', 21),
(10589, 'Howard Snyder', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-08-14', '1995-08-04', '1995-09-01', 18),
(10590, 'Jean Fresnière', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-08-14', '1995-08-07', '1995-09-04', 21),
(10591, 'Palle Ibsen', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-08-16', '1995-08-07', '1995-08-21', 5),
(10592, 'Renate Messner', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-08-16', '1995-08-08', '1995-09-05', 20),
(10593, 'Renate Messner', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-09-13', '1995-08-09', '1995-09-06', -7),
(10594, 'Rene Phillips', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-08-16', '1995-08-09', '1995-09-06', 21),
(10595, 'Roland Mendel', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-08-14', '1995-08-10', '1995-09-07', 24),
(10596, 'Karl Jablonski', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-12', '1995-08-11', '1995-09-08', -4),
(10597, 'Georg Pipps', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-08-18', '1995-08-11', '1995-09-08', 21),
(10598, 'Paula Wilson', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-08-18', '1995-08-14', '1995-09-11', 24),
(10599, 'Victoria Ashworth', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-08-21', '1995-08-15', '1995-09-26', 36),
(10600, 'Yoshi Latimer', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-08-21', '1995-08-16', '1995-09-13', 23),
(10601, 'Carlos Hernández', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-08-22', '1995-08-16', '1995-09-27', 36),
(10602, 'Palle Ibsen', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-08-22', '1995-08-17', '1995-09-14', 23),
(10603, 'Jose Pavarotti', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-08', '1995-08-18', '1995-09-15', 7),
(10604, 'Lino Rodriguez ', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-08-29', '1995-08-18', '1995-09-15', 17),
(10605, 'Jean Fresnière', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-08-29', '1995-08-21', '1995-09-18', 20),
(10606, 'Anabela Domingues', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-08-31', '1995-08-22', '1995-09-19', 19),
(10607, 'Jose Pavarotti', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-08-25', '1995-08-22', '1995-09-19', 25),
(10608, 'Karin Josephs', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-01', '1995-08-23', '1995-09-20', 19),
(10609, 'Janine Labrune', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-08-30', '1995-08-24', '1995-09-21', 22),
(10610, 'Annette Roulet', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-06', '1995-08-25', '1995-09-22', 16),
(10611, 'Zbyszek Piestrzeniewicz', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-09-01', '1995-08-25', '1995-09-22', 21),
(10612, 'Jose Pavarotti', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-09-01', '1995-08-28', '1995-09-25', 24),
(10613, 'Carlos Hernández', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-01', '1995-08-29', '1995-09-26', 25),
(10614, 'Hanna Moos', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-01', '1995-08-29', '1995-09-26', 25),
(10615, 'Matti Karttunen', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-09-06', '1995-08-30', '1995-09-27', 21),
(10616, 'Howard Snyder', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-09-05', '1995-08-31', '1995-09-28', 23),
(10617, 'Howard Snyder', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-04', '1995-08-31', '1995-09-28', 24),
(10618, 'Jean Fresnière', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-09-08', '1995-09-01', '1995-10-13', 35),
(10619, 'Jean Fresnière', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-09-07', '1995-09-04', '1995-10-02', 25),
(10620, 'Yoshi Tannamuri', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-09-14', '1995-09-05', '1995-10-03', 19),
(10621, 'Helen Bennett', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-11', '1995-09-05', '1995-10-03', 22),
(10622, 'Janete Limeira', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-11', '1995-09-06', '1995-10-04', 23),
(10623, 'Peter Franken', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-12', '1995-09-07', '1995-10-05', 23),
(10624, 'Liu Wong', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-19', '1995-09-07', '1995-10-05', 16),
(10625, 'Ana Trujillo', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-09-14', '1995-09-08', '1995-10-06', 22),
(10626, 'Christina Berglund', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-09-20', '1995-09-11', '1995-10-09', 19),
(10627, 'Jose Pavarotti', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-21', '1995-09-11', '1995-10-23', 32),
(10628, 'Frédérique Citeaux', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-20', '1995-09-12', '1995-10-10', 20),
(10629, 'José Pedro Freyre', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-20', '1995-09-12', '1995-10-10', 20),
(10630, 'Philip Cramer', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-09-19', '1995-09-13', '1995-10-11', 22),
(10631, 'Annette Roulet', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-15', '1995-09-14', '1995-10-12', 27),
(10632, 'Rita Müller', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-19', '1995-09-14', '1995-10-12', 23),
(10633, 'Roland Mendel', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-09-18', '1995-09-15', '1995-10-13', 25),
(10634, 'Martine Rancé', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-21', '1995-09-15', '1995-10-13', 22),
(10635, 'Giovanni Rovelli', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-09-21', '1995-09-18', '1995-10-16', 25),
(10636, 'Pirkko Koskitalo', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-26', '1995-09-19', '1995-10-17', 21),
(10637, 'Lúcia Carvalho', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-09-26', '1995-09-19', '1995-10-17', 21);
INSERT INTO `pedidos_totalizados` (`idpedidos`, `nombrecontacto`, `tratamiento`, `nombre`, `apellidos`, `cargo`, `fecha_envio`, `fecha_pedido`, `fecha_entrega`, `dias`) VALUES
(10638, 'Felipe Izquierdo', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-10-02', '1995-09-20', '1995-10-18', 16),
(10639, 'Jonas Bergulfsen', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-09-27', '1995-09-20', '1995-10-18', 21),
(10640, 'Rita Müller', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-28', '1995-09-21', '1995-10-19', 21),
(10641, 'Carlos Hernández', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-09-26', '1995-09-22', '1995-10-20', 24),
(10642, 'Jytte Petersen', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-10-06', '1995-09-22', '1995-10-20', 14),
(10643, 'Maria Anders', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-10-03', '1995-09-25', '1995-10-23', 20),
(10644, 'Paula Parente', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-10-02', '1995-09-25', '1995-10-23', 21),
(10645, 'Mario Pontes', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-10-03', '1995-09-26', '1995-10-24', 21),
(10646, 'Patricia McKenna', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-10-04', '1995-09-27', '1995-11-08', 35),
(10647, 'Bernardo Batista', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-10-04', '1995-09-27', '1995-10-11', 7),
(10648, 'Janete Limeira', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-10-10', '1995-09-28', '1995-11-09', 30),
(10649, 'Catherine Dewey', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-09-29', '1995-09-28', '1995-10-26', 27),
(10650, 'Aria Cruz', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-10-04', '1995-09-29', '1995-10-27', 23),
(10651, 'Rita Müller', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-10-12', '1995-10-02', '1995-10-30', 18),
(10652, 'André Fonseca', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-10-09', '1995-10-02', '1995-10-30', 21),
(10653, 'Peter Franken', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-10-20', '1995-10-03', '1995-10-31', 11),
(10654, 'Christina Berglund', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-10-12', '1995-10-03', '1995-10-31', 19),
(10655, 'Maurizio Moroni', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-10-12', '1995-10-04', '1995-11-01', 20),
(10656, 'Howard Snyder', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-10-11', '1995-10-05', '1995-11-02', 22),
(10657, 'Jose Pavarotti', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-10-16', '1995-10-05', '1995-11-02', 17),
(10658, 'Horst Kloss', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-10-09', '1995-10-06', '1995-11-03', 25),
(10659, 'Lúcia Carvalho', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-10-11', '1995-10-06', '1995-11-03', 23),
(10660, 'Yoshi Latimer', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-11-15', '1995-10-09', '1995-11-06', -9),
(10661, 'Patricia McKenna', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-10-16', '1995-10-10', '1995-11-07', 22),
(10662, 'Fran Wilson', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-10-19', '1995-10-10', '1995-11-07', 19),
(10663, 'Laurence Lebihan', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-11-03', '1995-10-11', '1995-10-25', -9),
(10664, 'Lino Rodriguez ', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-10-20', '1995-10-11', '1995-11-08', 19),
(10665, 'Fran Wilson', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-10-18', '1995-10-12', '1995-11-09', 22),
(10666, 'Michael Holz', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-10-23', '1995-10-13', '1995-11-10', 18),
(10667, 'Roland Mendel', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-10-20', '1995-10-13', '1995-11-10', 21),
(10668, 'Rita Müller', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-10-24', '1995-10-16', '1995-11-13', 20),
(10669, 'Jytte Petersen', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-10-23', '1995-10-16', '1995-11-13', 21),
(10670, 'Peter Franken', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-10-19', '1995-10-17', '1995-11-14', 26),
(10671, 'Carine Schmitt', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-10-25', '1995-10-18', '1995-11-15', 21),
(10672, 'Christina Berglund', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-10-27', '1995-10-18', '1995-11-01', 5),
(10673, 'Matti Karttunen', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-10-20', '1995-10-19', '1995-11-16', 27),
(10674, 'Helen Bennett', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-10-31', '1995-10-19', '1995-11-16', 16),
(10675, 'Peter Franken', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-10-24', '1995-10-20', '1995-11-17', 24),
(10676, 'Miguel Angel Paolino', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-10-30', '1995-10-23', '1995-11-20', 21),
(10677, 'Antonio Moreno', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-10-27', '1995-10-23', '1995-11-20', 24),
(10678, 'Jose Pavarotti', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-11-16', '1995-10-24', '1995-11-21', 5),
(10679, 'Frédérique Citeaux', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-10-31', '1995-10-24', '1995-11-21', 21),
(10680, 'Rene Phillips', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-10-27', '1995-10-25', '1995-11-22', 26),
(10681, 'Howard Snyder', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-10-31', '1995-10-26', '1995-11-23', 23),
(10682, 'Antonio Moreno', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-11-01', '1995-10-26', '1995-11-23', 22),
(10683, 'Janine Labrune', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-11-01', '1995-10-27', '1995-11-24', 23),
(10684, 'Henriette Pfalzheim', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-10-31', '1995-10-27', '1995-11-24', 24),
(10685, 'André Fonseca', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-11-03', '1995-10-30', '1995-11-13', 10),
(10686, 'Georg Pipps', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-11-08', '1995-10-31', '1995-11-28', 20),
(10687, 'Patricia McKenna', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-11-30', '1995-10-31', '1995-11-28', -2),
(10688, 'Palle Ibsen', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-11-07', '1995-11-01', '1995-11-15', 8),
(10689, 'Christina Berglund', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-11-07', '1995-11-01', '1995-11-29', 22),
(10690, 'Mario Pontes', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-11-03', '1995-11-02', '1995-11-30', 27),
(10691, 'Horst Kloss', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-11-22', '1995-11-03', '1995-12-15', 23),
(10692, 'Maria Anders', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-11-13', '1995-11-03', '1995-12-01', 18),
(10693, 'Karl Jablonski', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-11-10', '1995-11-06', '1995-11-20', 10),
(10694, 'Horst Kloss', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-11-09', '1995-11-06', '1995-12-04', 25),
(10695, 'Matti Karttunen', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-11-14', '1995-11-07', '1995-12-19', 35),
(10696, 'Karl Jablonski', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-11-14', '1995-11-08', '1995-12-20', 36),
(10697, 'Felipe Izquierdo', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-11-14', '1995-11-08', '1995-12-06', 22),
(10698, 'Roland Mendel', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-11-17', '1995-11-09', '1995-12-07', 20),
(10699, 'Alexander Feuer', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-11-13', '1995-11-09', '1995-12-07', 24),
(10700, 'Jose Pavarotti', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-11-16', '1995-11-10', '1995-12-08', 22),
(10701, 'Patricia McKenna', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-11-15', '1995-11-13', '1995-11-27', 12),
(10702, 'Maria Anders', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-11-21', '1995-11-13', '1995-12-25', 34),
(10703, 'Maria Larsson', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-11-20', '1995-11-14', '1995-12-12', 22),
(10704, 'Lúcia Carvalho', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-12-08', '1995-11-14', '1995-12-12', 4),
(10705, 'Carlos Hernández', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-12-19', '1995-11-15', '1995-12-13', -6),
(10706, 'Rene Phillips', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-11-21', '1995-11-16', '1995-12-14', 23),
(10707, 'Thomas Hardy', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-11-23', '1995-11-16', '1995-11-30', 7),
(10708, 'Liz Nixon', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-12-06', '1995-11-17', '1995-12-29', 23),
(10709, 'André Fonseca', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-12-21', '1995-11-17', '1995-12-15', -6),
(10710, 'Paolo Accorti', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-11-23', '1995-11-20', '1995-12-18', 25),
(10711, 'Jose Pavarotti', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-11-29', '1995-11-21', '1996-01-02', 34),
(10712, 'Patricia McKenna', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-12-01', '1995-11-21', '1995-12-19', 18),
(10713, 'Jose Pavarotti', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-11-24', '1995-11-22', '1995-12-20', 26),
(10714, 'Jose Pavarotti', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-11-27', '1995-11-22', '1995-12-20', 23),
(10715, 'Laurence Lebihan', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-11-29', '1995-11-23', '1995-12-07', 8),
(10716, 'Sergio Gutiérrez', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-11-27', '1995-11-24', '1995-12-22', 25),
(10717, 'Peter Franken', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-11-29', '1995-11-24', '1995-12-22', 23),
(10718, 'Philip Cramer', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-11-29', '1995-11-27', '1995-12-25', 26),
(10719, 'Jaime Yorres', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-12-06', '1995-11-27', '1995-12-25', 19),
(10720, 'Bernardo Batista', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-12-06', '1995-11-28', '1995-12-12', 6),
(10721, 'Horst Kloss', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-12-01', '1995-11-29', '1995-12-27', 26),
(10722, 'Jose Pavarotti', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-12-05', '1995-11-29', '1996-01-10', 36),
(10723, 'Karl Jablonski', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-12-26', '1995-11-30', '1995-12-28', 2),
(10724, 'Jean Fresnière', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-12-06', '1995-11-30', '1996-01-11', 36),
(10725, 'Aria Cruz', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-12-06', '1995-12-01', '1995-12-29', 23),
(10726, 'Ann Devon', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-05', '1995-12-04', '1995-12-18', -18),
(10727, 'Maurizio Moroni', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-01-05', '1995-12-04', '1996-01-01', -4),
(10728, 'Lúcia Carvalho', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-12-12', '1995-12-05', '1996-01-02', 21),
(10729, 'Felipe Izquierdo', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1995-12-15', '1995-12-05', '1996-01-16', 32),
(10730, 'Laurence Lebihan', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1995-12-15', '1995-12-06', '1996-01-03', 19),
(10731, 'Yang Wang', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1995-12-15', '1995-12-07', '1996-01-04', 20),
(10732, 'Laurence Lebihan', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-12-08', '1995-12-07', '1996-01-04', 27),
(10733, 'Christina Berglund', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-12-11', '1995-12-08', '1996-01-05', 25),
(10734, 'André Fonseca', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-12-13', '1995-12-08', '1996-01-05', 23),
(10735, 'Jaime Yorres', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-12-22', '1995-12-11', '1996-01-08', 17),
(10736, 'Patricia McKenna', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-12-22', '1995-12-12', '1996-01-09', 18),
(10737, 'Paul Henriot', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-12-19', '1995-12-12', '1996-01-09', 21),
(10738, 'Dominique Perrier', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-12-19', '1995-12-13', '1996-01-10', 22),
(10739, 'Paul Henriot', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-12-18', '1995-12-13', '1996-01-10', 23),
(10740, 'Karl Jablonski', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-12-26', '1995-12-14', '1996-01-11', 16),
(10741, 'Christina Berglund', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-12-19', '1995-12-15', '1995-12-29', 10),
(10742, 'Elizabeth Lincoln', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-12-19', '1995-12-15', '1996-01-12', 24),
(10743, 'Thomas Hardy', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-12-22', '1995-12-18', '1996-01-15', 24),
(10744, 'Palle Ibsen', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-12-25', '1995-12-18', '1996-01-15', 21),
(10745, 'Horst Kloss', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-12-28', '1995-12-19', '1996-01-16', 19),
(10746, 'Yang Wang', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1995-12-22', '1995-12-20', '1996-01-17', 26),
(10747, 'Georg Pipps', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-12-27', '1995-12-20', '1996-01-17', 21),
(10748, 'Jose Pavarotti', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-12-29', '1995-12-21', '1996-01-18', 20),
(10749, 'Helen Bennett', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-19', '1995-12-21', '1996-01-18', -1),
(10750, 'Pirkko Koskitalo', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1995-12-25', '1995-12-22', '1996-01-19', 25),
(10751, 'Michael Holz', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-03', '1995-12-25', '1996-01-22', 19),
(10752, 'Simon Crowther', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1995-12-29', '1995-12-25', '1996-01-22', 24),
(10753, 'Paolo Accorti', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1995-12-28', '1995-12-26', '1996-01-23', 26),
(10754, 'Giovanni Rovelli', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1995-12-28', '1995-12-26', '1996-01-23', 26),
(10755, 'Laurence Lebihan', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1995-12-29', '1995-12-27', '1996-01-24', 26),
(10756, 'Art Braunschweiger', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-01-02', '1995-12-28', '1996-01-25', 23),
(10757, 'Jose Pavarotti', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-01-15', '1995-12-28', '1996-01-25', 10),
(10758, 'Michael Holz', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-04', '1995-12-29', '1996-01-26', 22),
(10759, 'Ana Trujillo', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-12', '1995-12-29', '1996-01-26', 14),
(10760, 'Catherine Dewey', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-10', '1996-01-01', '1996-01-29', 19),
(10761, 'Paula Wilson', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-01-08', '1996-01-02', '1996-01-30', 22),
(10762, 'Maria Larsson', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-09', '1996-01-02', '1996-01-30', 21),
(10763, 'Martine Rancé', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-08', '1996-01-03', '1996-01-31', 23),
(10764, 'Roland Mendel', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-01-08', '1996-01-03', '1996-01-31', 23),
(10765, 'Horst Kloss', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-09', '1996-01-04', '1996-02-01', 23),
(10766, 'Henriette Pfalzheim', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-09', '1996-01-05', '1996-02-02', 24),
(10767, 'Pascale Cartrain', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-15', '1996-01-05', '1996-02-02', 18),
(10768, 'Thomas Hardy', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-15', '1996-01-08', '1996-02-05', 21),
(10769, 'Palle Ibsen', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-12', '1996-01-08', '1996-02-05', 24),
(10770, 'Mario Pontes', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-01-17', '1996-01-09', '1996-02-06', 20),
(10771, 'Roland Mendel', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-02-02', '1996-01-10', '1996-02-07', 5),
(10772, 'Renate Messner', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-19', '1996-01-10', '1996-02-07', 19),
(10773, 'Roland Mendel', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-01-16', '1996-01-11', '1996-02-08', 23),
(10774, 'Maria Larsson', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-12', '1996-01-11', '1996-01-25', 13),
(10775, 'Liu Wong', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-01-26', '1996-01-12', '1996-02-09', 14),
(10776, 'Roland Mendel', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-01-18', '1996-01-15', '1996-02-12', 25),
(10777, 'André Fonseca', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-02-21', '1996-01-15', '1996-01-29', -23),
(10778, 'Christina Berglund', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-01-24', '1996-01-16', '1996-02-13', 20),
(10779, 'Alexander Feuer', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-14', '1996-01-16', '1996-02-13', -1),
(10780, 'Carlos González', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-01-25', '1996-01-16', '1996-01-30', 5),
(10781, 'Pirkko Koskitalo', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-01-19', '1996-01-17', '1996-02-14', 26),
(10782, 'Patricio Simpson', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-01-22', '1996-01-17', '1996-02-14', 23),
(10783, 'Mario Pontes', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-19', '1996-01-18', '1996-02-15', 27),
(10784, 'Giovanni Rovelli', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-22', '1996-01-18', '1996-02-15', 24),
(10785, 'Manuel Pereira', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-01-24', '1996-01-18', '1996-02-15', 22),
(10786, 'Lúcia Carvalho', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-01-23', '1996-01-19', '1996-02-16', 24),
(10787, 'Annette Roulet', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-01-26', '1996-01-19', '1996-02-02', 7),
(10788, 'Horst Kloss', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-02-19', '1996-01-22', '1996-02-19', 0),
(10789, 'Martine Rancé', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-01-31', '1996-01-22', '1996-02-19', 19),
(10790, 'André Fonseca', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-01-26', '1996-01-22', '1996-02-19', 24),
(10791, 'Peter Franken', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-02-01', '1996-01-23', '1996-02-20', 19),
(10792, 'Zbyszek Piestrzeniewicz', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-01-31', '1996-01-23', '1996-02-20', 20),
(10793, 'Thomas Hardy', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-08', '1996-01-24', '1996-02-21', 13),
(10794, 'Bernardo Batista', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-02-02', '1996-01-24', '1996-02-21', 19),
(10795, 'Roland Mendel', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-02-20', '1996-01-24', '1996-02-21', 1),
(10796, 'Carlos Hernández', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-14', '1996-01-25', '1996-02-22', 8),
(10797, 'Sven Ottlieb', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-02-05', '1996-01-25', '1996-02-22', 17),
(10798, 'Helen Bennett', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-02-05', '1996-01-26', '1996-02-23', 18),
(10799, 'Philip Cramer', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-02-05', '1996-01-26', '1996-03-08', 32),
(10800, 'Hari Kumar', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-02-05', '1996-01-26', '1996-02-23', 18),
(10801, 'Martín Sommer', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-01-31', '1996-01-29', '1996-02-26', 26),
(10802, 'Jytte Petersen', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-02-02', '1996-01-29', '1996-02-26', 24),
(10803, 'Paula Parente', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-02-06', '1996-01-30', '1996-02-27', 21),
(10804, 'Hari Kumar', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-02-07', '1996-01-30', '1996-02-27', 20),
(10805, 'Liz Nixon', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-02-09', '1996-01-30', '1996-02-27', 18),
(10806, 'Mary Saveley', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-05', '1996-01-31', '1996-02-28', 23),
(10807, 'Paolo Accorti', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-01', '1996-01-31', '1996-02-28', -2),
(10808, 'Rene Phillips', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-02-09', '1996-02-01', '1996-02-29', 20),
(10809, 'Paula Parente', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-02-07', '1996-02-01', '1996-02-29', 22),
(10810, 'Yoshi Tannamuri', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-02-07', '1996-02-01', '1996-02-29', 22),
(10811, 'Felipe Izquierdo', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-02-08', '1996-02-02', '1996-03-01', 22),
(10812, 'Maurizio Moroni', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-02-12', '1996-02-02', '1996-03-01', 18),
(10813, 'Janete Limeira', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-02-09', '1996-02-05', '1996-03-04', 24),
(10814, 'Mary Saveley', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-14', '1996-02-05', '1996-03-04', 19),
(10815, 'Jose Pavarotti', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-02-14', '1996-02-05', '1996-03-04', 19),
(10816, 'Howard Snyder', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-06', '1996-02-06', '1996-03-05', -1),
(10817, 'Philip Cramer', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-13', '1996-02-06', '1996-02-20', 7),
(10818, 'Giovanni Rovelli', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-02-12', '1996-02-07', '1996-03-06', 23),
(10819, 'Patricio Simpson', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-02-16', '1996-02-07', '1996-03-06', 19),
(10820, 'Paula Wilson', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-13', '1996-02-07', '1996-03-06', 22),
(10821, 'Art Braunschweiger', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-02-15', '1996-02-08', '1996-03-07', 21),
(10822, 'Helvetius Nagy', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-02-16', '1996-02-08', '1996-03-07', 20),
(10823, 'Carlos González', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-02-13', '1996-02-09', '1996-03-08', 24),
(10824, 'Maria Larsson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-03-01', '1996-02-09', '1996-03-08', 7),
(10825, 'Sven Ottlieb', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-02-14', '1996-02-09', '1996-03-08', 23),
(10826, 'Frédérique Citeaux', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-03-08', '1996-02-12', '1996-03-11', 3),
(10827, 'Laurence Lebihan', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-03-08', '1996-02-12', '1996-02-26', -11),
(10828, 'Sergio Gutiérrez', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-03-06', '1996-02-13', '1996-02-27', -8),
(10829, 'Helen Bennett', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-02-23', '1996-02-13', '1996-03-12', 18),
(10830, 'Anabela Domingues', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-02-21', '1996-02-13', '1996-03-26', 34),
(10831, 'Jonas Bergulfsen', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-23', '1996-02-14', '1996-03-13', 19),
(10832, 'Annette Roulet', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-02-19', '1996-02-14', '1996-03-13', 23),
(10833, 'Henriette Pfalzheim', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-02-23', '1996-02-15', '1996-03-14', 20),
(10834, 'Anabela Domingues', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-02-19', '1996-02-15', '1996-03-14', 24),
(10835, 'Maria Anders', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-02-21', '1996-02-15', '1996-03-14', 22),
(10836, 'Roland Mendel', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-02-21', '1996-02-16', '1996-03-15', 23),
(10837, 'Christina Berglund', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-02-23', '1996-02-16', '1996-03-15', 21),
(10838, 'Felipe Izquierdo', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-23', '1996-02-19', '1996-03-18', 24),
(10839, 'Anabela Domingues', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-02-22', '1996-02-19', '1996-03-18', 25),
(10840, 'Felipe Izquierdo', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-18', '1996-02-19', '1996-04-01', 14),
(10841, 'Pascale Cartrain', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-02-29', '1996-02-20', '1996-03-19', 19),
(10842, 'Miguel Angel Paolino', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-02-29', '1996-02-20', '1996-03-19', 19),
(10843, 'Mary Saveley', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-02-26', '1996-02-21', '1996-03-20', 23),
(10844, 'Georg Pipps', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-02-26', '1996-02-21', '1996-03-20', 23),
(10845, 'Horst Kloss', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-03-01', '1996-02-21', '1996-03-06', 5),
(10846, 'Pascale Cartrain', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-02-23', '1996-02-22', '1996-04-04', 41),
(10847, 'Jose Pavarotti', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-12', '1996-02-22', '1996-03-07', -5),
(10848, 'Elizabeth Brown', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-02-29', '1996-02-23', '1996-03-22', 22),
(10849, 'Philip Cramer', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-03-01', '1996-02-23', '1996-03-22', 21),
(10850, 'Mary Saveley', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-03-01', '1996-02-23', '1996-04-05', 35),
(10851, 'Janete Limeira', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-03-04', '1996-02-26', '1996-03-25', 21),
(10852, 'Paula Wilson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-03-01', '1996-02-26', '1996-03-11', 10),
(10853, 'Hanna Moos', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-03-05', '1996-02-27', '1996-03-26', 21),
(10854, 'Roland Mendel', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-03-07', '1996-02-27', '1996-03-26', 19),
(10855, 'Rene Phillips', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-03-06', '1996-02-27', '1996-03-26', 20),
(10856, 'Antonio Moreno', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-03-12', '1996-02-28', '1996-03-27', 15),
(10857, 'Christina Berglund', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-03-08', '1996-02-28', '1996-03-27', 19),
(10858, 'Daniel Tonini', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-03-05', '1996-02-29', '1996-03-28', 23),
(10859, 'Peter Franken', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-03-04', '1996-02-29', '1996-03-28', 24),
(10860, 'Carine Schmitt', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-03-06', '1996-02-29', '1996-03-28', 22),
(10861, 'Karl Jablonski', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-19', '1996-03-01', '1996-03-29', 10),
(10862, 'Renate Messner', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-03-04', '1996-03-01', '1996-04-12', 39),
(10863, 'Carlos Hernández', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-19', '1996-03-04', '1996-04-01', 13),
(10864, 'Thomas Hardy', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-11', '1996-03-04', '1996-04-01', 21),
(10865, 'Horst Kloss', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-03-14', '1996-03-04', '1996-03-18', 4),
(10866, 'Christina Berglund', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-03-14', '1996-03-05', '1996-04-02', 19),
(10867, 'Fran Wilson', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-03-13', '1996-03-05', '1996-04-16', 34),
(10868, 'Lúcia Carvalho', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-03-25', '1996-03-06', '1996-04-03', 9),
(10869, 'Hari Kumar', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-03-11', '1996-03-06', '1996-04-03', 23),
(10870, 'Karl Jablonski', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-03-15', '1996-03-06', '1996-04-03', 19),
(10871, 'Laurence Lebihan', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-03-12', '1996-03-07', '1996-04-04', 23),
(10872, 'José Pedro Freyre', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-03-11', '1996-03-07', '1996-04-04', 24),
(10873, 'Matti Karttunen', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-11', '1996-03-08', '1996-04-05', 25),
(10874, 'José Pedro Freyre', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-03-13', '1996-03-08', '1996-04-05', 23),
(10875, 'Christina Berglund', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-02', '1996-03-08', '1996-04-05', 3),
(10876, 'Laurence Lebihan', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-03-14', '1996-03-11', '1996-04-08', 25),
(10877, 'Janete Limeira', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-03-21', '1996-03-11', '1996-04-08', 18),
(10878, 'Horst Kloss', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-14', '1996-03-12', '1996-04-09', 26),
(10879, 'Matti Karttunen', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-03-14', '1996-03-12', '1996-04-09', 26),
(10880, 'Maria Larsson', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-03-20', '1996-03-12', '1996-04-23', 34),
(10881, 'Patricio Simpson', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-20', '1996-03-13', '1996-04-10', 21),
(10882, 'Jose Pavarotti', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-22', '1996-03-13', '1996-04-10', 19),
(10883, 'Fran Wilson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-03-22', '1996-03-14', '1996-04-11', 20),
(10884, 'Jaime Yorres', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-15', '1996-03-14', '1996-04-11', 27),
(10885, 'Pascale Cartrain', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-03-20', '1996-03-14', '1996-04-11', 22),
(10886, 'Mario Pontes', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-01', '1996-03-15', '1996-04-12', 11),
(10887, 'Eduardo Saavedra', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-03-18', '1996-03-15', '1996-04-12', 25),
(10888, 'José Pedro Freyre', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-03-25', '1996-03-18', '1996-04-15', 21),
(10889, 'Paula Wilson', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-03-25', '1996-03-18', '1996-04-15', 21),
(10890, 'Janine Labrune', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-03-20', '1996-03-18', '1996-04-15', 26),
(10891, 'Renate Messner', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-03-21', '1996-03-19', '1996-04-16', 26),
(10892, 'Catherine Dewey', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-21', '1996-03-19', '1996-04-16', 26),
(10893, 'Philip Cramer', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-03-22', '1996-03-20', '1996-04-17', 26),
(10894, 'Jose Pavarotti', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-03-22', '1996-03-20', '1996-04-17', 26),
(10895, 'Roland Mendel', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-03-25', '1996-03-20', '1996-04-17', 23),
(10896, 'Catherine Dewey', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-03-29', '1996-03-21', '1996-04-18', 20),
(10897, 'Patricia McKenna', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-03-27', '1996-03-21', '1996-04-18', 22),
(10898, 'Yvonne Moncada', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-05', '1996-03-22', '1996-04-19', 14),
(10899, 'Carlos González', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-03-28', '1996-03-22', '1996-04-19', 22),
(10900, 'Paula Parente', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-03', '1996-03-22', '1996-04-19', 16),
(10901, 'Carlos Hernández', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-03-28', '1996-03-25', '1996-04-22', 25),
(10902, 'Maria Larsson', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-02', '1996-03-25', '1996-04-22', 20),
(10903, 'Mario Pontes', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-03', '1996-03-26', '1996-04-23', 20),
(10904, 'Karl Jablonski', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-03-29', '1996-03-26', '1996-04-23', 25),
(10905, 'Paula Parente', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-04-05', '1996-03-26', '1996-04-23', 18),
(10906, 'Zbyszek Piestrzeniewicz', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-02', '1996-03-27', '1996-04-10', 8),
(10907, 'Dominique Perrier', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-03-29', '1996-03-27', '1996-04-24', 26),
(10908, 'Maurizio Moroni', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-05', '1996-03-28', '1996-04-25', 20),
(10909, 'Jonas Bergulfsen', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-09', '1996-03-28', '1996-04-25', 16),
(10910, 'Matti Karttunen', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-03', '1996-03-28', '1996-04-25', 22),
(10911, 'José Pedro Freyre', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-04', '1996-03-28', '1996-04-25', 21),
(10912, 'Patricia McKenna', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-04-17', '1996-03-28', '1996-04-25', 8),
(10913, 'Lúcia Carvalho', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-03', '1996-03-28', '1996-04-25', 22),
(10914, 'Lúcia Carvalho', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-04-01', '1996-03-29', '1996-04-26', 25),
(10915, 'Miguel Angel Paolino', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-04-01', '1996-03-29', '1996-04-26', 25),
(10916, 'Sergio Gutiérrez', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-08', '1996-03-29', '1996-04-26', 18),
(10917, 'Alejandra Camino', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-10', '1996-04-01', '1996-04-29', 19),
(10918, 'Elizabeth Lincoln', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-10', '1996-04-01', '1996-04-29', 19),
(10919, 'Felipe Izquierdo', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-04-03', '1996-04-01', '1996-04-29', 26),
(10920, 'Thomas Hardy', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-08', '1996-04-02', '1996-04-30', 22),
(10921, 'Palle Ibsen', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-08', '1996-04-02', '1996-05-14', 36),
(10922, 'Mario Pontes', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-04-04', '1996-04-02', '1996-04-30', 26),
(10923, 'Annette Roulet', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-04-12', '1996-04-02', '1996-05-14', 32),
(10924, 'Christina Berglund', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-08', '1996-04-03', '1996-05-01', -7),
(10925, 'Mario Pontes', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-12', '1996-04-03', '1996-05-01', 19),
(10926, 'Ana Trujillo', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-10', '1996-04-03', '1996-05-01', 21),
(10927, 'Daniel Tonini', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-08', '1996-04-04', '1996-05-02', -6),
(10928, 'Eduardo Saavedra', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-17', '1996-04-04', '1996-05-02', 15),
(10929, 'Peter Franken', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-04-11', '1996-04-04', '1996-05-02', 21),
(10930, 'Pascale Cartrain', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-17', '1996-04-05', '1996-05-17', 30),
(10931, 'Michael Holz', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-18', '1996-04-05', '1996-04-19', 1),
(10932, 'Laurence Lebihan', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-04-23', '1996-04-05', '1996-05-03', 10),
(10933, 'Helen Bennett', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-04-15', '1996-04-05', '1996-05-03', 18),
(10934, 'Renate Messner', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-11', '1996-04-08', '1996-05-06', 25),
(10935, 'Paula Parente', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-17', '1996-04-08', '1996-05-06', 19),
(10936, 'Howard Snyder', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-17', '1996-04-08', '1996-05-06', 19),
(10937, 'Patricio Simpson', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-04-12', '1996-04-09', '1996-04-23', 11),
(10938, 'Horst Kloss', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-15', '1996-04-09', '1996-05-07', 22),
(10939, 'Giovanni Rovelli', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-04-12', '1996-04-09', '1996-05-07', 25),
(10940, 'Laurence Lebihan', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-04-22', '1996-04-10', '1996-05-08', 16),
(10941, 'Jose Pavarotti', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-04-19', '1996-04-10', '1996-05-08', 19),
(10942, 'Maurizio Moroni', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-04-17', '1996-04-10', '1996-05-08', 21),
(10943, 'Victoria Ashworth', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-18', '1996-04-10', '1996-05-08', 20),
(10944, 'Elizabeth Lincoln', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-04-12', '1996-04-11', '1996-04-25', 13),
(10945, 'Alexander Feuer', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-17', '1996-04-11', '1996-05-09', 22),
(10946, 'Palle Ibsen', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-18', '1996-04-11', '1996-05-09', 21),
(10947, 'Victoria Ashworth', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-15', '1996-04-12', '1996-05-10', 25),
(10948, 'José Pedro Freyre', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-18', '1996-04-12', '1996-05-10', 22),
(10949, 'Elizabeth Lincoln', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-04-16', '1996-04-12', '1996-05-10', 24),
(10950, 'Giovanni Rovelli', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-22', '1996-04-15', '1996-05-13', 21),
(10951, 'Michael Holz', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-05-07', '1996-04-15', '1996-05-27', 20),
(10952, 'Maria Anders', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-23', '1996-04-15', '1996-05-27', 34),
(10953, 'Thomas Hardy', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-04-24', '1996-04-15', '1996-04-29', 5),
(10954, 'Felipe Izquierdo', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-04-19', '1996-04-16', '1996-05-28', 39),
(10955, 'Maria Larsson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-04-19', '1996-04-16', '1996-05-14', 25),
(10956, 'Hanna Moos', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-04-19', '1996-04-16', '1996-05-28', 39),
(10957, 'Carlos Hernández', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-04-26', '1996-04-17', '1996-05-15', 19),
(10958, 'Yvonne Moncada', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-04-26', '1996-04-17', '1996-05-15', 19),
(10959, 'André Fonseca', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-04-22', '1996-04-17', '1996-05-29', 37),
(10960, 'Carlos Hernández', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-08', '1996-04-18', '1996-05-02', -6),
(10961, 'Lúcia Carvalho', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-04-29', '1996-04-18', '1996-05-16', 17),
(10962, 'Horst Kloss', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-04-22', '1996-04-18', '1996-05-16', 24),
(10963, 'Lino Rodriguez ', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-04-25', '1996-04-18', '1996-05-16', 21),
(10964, 'Dominique Perrier', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-04-23', '1996-04-19', '1996-05-17', 24),
(10965, 'Rene Phillips', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-04-29', '1996-04-19', '1996-05-17', 18),
(10966, 'Yang Wang', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-08', '1996-04-19', '1996-05-17', 9),
(10967, 'Karin Josephs', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-02', '1996-04-22', '1996-05-20', 18),
(10968, 'Roland Mendel', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-01', '1996-04-22', '1996-05-20', 19),
(10969, 'Pedro Afonso', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-29', '1996-04-22', '1996-05-20', 21),
(10970, 'Martín Sommer', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-05-24', '1996-04-23', '1996-05-07', -17),
(10971, 'Carine Schmitt', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-02', '1996-04-23', '1996-05-21', 19),
(10972, 'Daniel Tonini', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-04-25', '1996-04-23', '1996-05-21', 26),
(10973, 'Daniel Tonini', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-04-26', '1996-04-23', '1996-05-21', 25),
(10974, 'Art Braunschweiger', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-03', '1996-04-24', '1996-05-08', 5),
(10975, 'Elizabeth Lincoln', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-04-26', '1996-04-24', '1996-05-22', 26),
(10976, 'Carlos Hernández', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-03', '1996-04-24', '1996-06-05', 33),
(10977, 'Maria Larsson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-10', '1996-04-25', '1996-05-23', 13),
(10978, 'Catherine Dewey', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-05-23', '1996-04-25', '1996-05-23', 0),
(10979, 'Roland Mendel', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-04-30', '1996-04-25', '1996-05-23', 23),
(10980, 'Maria Larsson', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-17', '1996-04-26', '1996-06-07', 21),
(10981, 'Mario Pontes', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-02', '1996-04-26', '1996-05-24', 22),
(10982, 'Elizabeth Lincoln', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-08', '1996-04-26', '1996-05-24', 16),
(10983, 'Jose Pavarotti', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-06', '1996-04-26', '1996-05-24', 18),
(10984, 'Jose Pavarotti', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-03', '1996-04-29', '1996-05-27', 24),
(10985, 'Patricia McKenna', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-02', '1996-04-29', '1996-05-27', 25),
(10986, 'Yvonne Moncada', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-21', '1996-04-29', '1996-05-27', 6),
(10987, 'Ann Devon', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-06', '1996-04-30', '1996-05-28', 22),
(10988, 'Paula Wilson', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-10', '1996-04-30', '1996-05-28', 18),
(10989, 'Bernardo Batista', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-02', '1996-04-30', '1996-05-28', 26),
(10990, 'Roland Mendel', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-07', '1996-05-01', '1996-06-12', 36),
(10991, 'Horst Kloss', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-07', '1996-05-01', '1996-05-29', 22),
(10992, 'Liz Nixon', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-03', '1996-05-01', '1996-05-29', 26),
(10993, 'Maria Larsson', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-05-10', '1996-05-01', '1996-05-29', 19),
(10994, 'Palle Ibsen', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-09', '1996-05-02', '1996-05-16', 7),
(10995, 'Guillermo Fernández', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-06', '1996-05-02', '1996-05-30', 24),
(10996, 'Horst Kloss', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-10', '1996-05-02', '1996-05-30', 20),
(10997, 'Carlos González', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-13', '1996-05-03', '1996-06-14', 32),
(10998, 'Zbyszek Piestrzeniewicz', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-17', '1996-05-03', '1996-05-17', 0),
(10999, 'Henriette Pfalzheim', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-05-10', '1996-05-03', '1996-05-31', 21),
(11000, 'Paula Wilson', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-14', '1996-05-06', '1996-06-03', 20),
(11001, 'Maria Larsson', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-14', '1996-05-06', '1996-06-03', 20),
(11002, 'Jose Pavarotti', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-16', '1996-05-06', '1996-06-03', 18),
(11003, 'Liu Wong', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-08', '1996-05-06', '1996-06-03', 26),
(11004, 'Catherine Dewey', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-20', '1996-05-07', '1996-06-04', 15),
(11005, 'Matti Karttunen', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-10', '1996-05-07', '1996-06-04', 25),
(11006, 'Howard Snyder', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-15', '1996-05-07', '1996-06-04', 20),
(11007, 'Isabel de Castro', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-13', '1996-05-08', '1996-06-05', 23),
(11008, 'Roland Mendel', 'Sr.', 'Robert', 'King', 'Representante de ventas', NULL, '1996-05-08', '1996-06-05', NULL),
(11009, 'José Pedro Freyre', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-10', '1996-05-08', '1996-06-05', 26),
(11010, 'Maurizio Moroni', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-21', '1996-05-09', '1996-06-06', 16),
(11011, 'Maria Anders', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-13', '1996-05-09', '1996-06-06', 24),
(11012, 'Peter Franken', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-17', '1996-05-09', '1996-05-23', 6),
(11013, 'Alejandra Camino', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-10', '1996-05-09', '1996-06-06', 27),
(11014, 'Felipe Izquierdo', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-15', '1996-05-10', '1996-06-07', 23),
(11015, 'Jonas Bergulfsen', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-20', '1996-05-10', '1996-05-24', 4),
(11016, 'Thomas Hardy', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-05-13', '1996-05-10', '1996-06-07', 25),
(11017, 'Roland Mendel', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-05-20', '1996-05-13', '1996-06-10', 21),
(11018, 'Fran Wilson', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-16', '1996-05-13', '1996-06-10', 25),
(11019, 'Sergio Gutiérrez', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', NULL, '1996-05-13', '1996-06-10', NULL),
(11020, 'Henriette Pfalzheim', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-16', '1996-05-14', '1996-06-11', 26),
(11021, 'Horst Kloss', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-21', '1996-05-14', '1996-06-11', 21),
(11022, 'Mario Pontes', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', '1996-06-03', '1996-05-14', '1996-06-11', 8),
(11023, 'Victoria Ashworth', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-24', '1996-05-14', '1996-05-28', 4),
(11024, 'Ann Devon', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-20', '1996-05-15', '1996-06-12', 23),
(11025, 'Pirkko Koskitalo', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-05-24', '1996-05-15', '1996-06-12', 19),
(11026, 'Paolo Accorti', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-28', '1996-05-15', '1996-06-12', 15),
(11027, 'Elizabeth Lincoln', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-20', '1996-05-16', '1996-06-13', 24),
(11028, 'Philip Cramer', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-22', '1996-05-16', '1996-06-13', 22);
INSERT INTO `pedidos_totalizados` (`idpedidos`, `nombrecontacto`, `tratamiento`, `nombre`, `apellidos`, `cargo`, `fecha_envio`, `fecha_pedido`, `fecha_entrega`, `dias`) VALUES
(11029, 'Yang Wang', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-27', '1996-05-16', '1996-06-13', 17),
(11030, 'Jose Pavarotti', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-05-27', '1996-05-17', '1996-06-14', 18),
(11031, 'Jose Pavarotti', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', '1996-05-24', '1996-05-17', '1996-06-14', 21),
(11032, 'Karl Jablonski', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-23', '1996-05-17', '1996-06-14', 22),
(11033, 'Michael Holz', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-05-23', '1996-05-17', '1996-06-14', 22),
(11034, 'Rene Phillips', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-27', '1996-05-20', '1996-07-01', 35),
(11035, 'Pascale Cartrain', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-24', '1996-05-20', '1996-06-17', 24),
(11036, 'Sven Ottlieb', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-22', '1996-05-20', '1996-06-17', 26),
(11037, 'José Pedro Freyre', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-05-27', '1996-05-21', '1996-06-18', 22),
(11038, 'Pascale Cartrain', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-05-30', '1996-05-21', '1996-06-18', 19),
(11039, 'Felipe Izquierdo', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', NULL, '1996-05-21', '1996-06-18', NULL),
(11040, 'Howard Snyder', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', NULL, '1996-05-22', '1996-06-19', NULL),
(11041, 'Yang Wang', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-28', '1996-05-22', '1996-06-19', 22),
(11042, 'Pedro Afonso', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-31', '1996-05-22', '1996-06-05', 5),
(11043, 'Dominique Perrier', 'Sr.', 'Steven', 'Buchanan', 'Gerente de ventas', '1996-05-29', '1996-05-22', '1996-06-19', 21),
(11044, 'Zbyszek Piestrzeniewicz', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', '1996-05-31', '1996-05-23', '1996-06-20', 20),
(11045, 'Elizabeth Lincoln', 'Sr.', 'Michael', 'Suyama', 'Representante de ventas', NULL, '1996-05-23', '1996-06-20', NULL),
(11046, 'Rita Müller', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-24', '1996-05-23', '1996-06-20', 27),
(11047, 'Ann Devon', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-05-31', '1996-05-24', '1996-06-21', 21),
(11048, 'Elizabeth Lincoln', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-05-30', '1996-05-24', '1996-06-21', 22),
(11049, 'André Fonseca', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-06-03', '1996-05-24', '1996-06-21', 18),
(11050, 'Maria Larsson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-06-04', '1996-05-27', '1996-06-24', 20),
(11051, 'Annette Roulet', 'Sr.', 'Robert', 'King', 'Representante de ventas', NULL, '1996-05-27', '1996-06-24', NULL),
(11052, 'Mario Pontes', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-31', '1996-05-27', '1996-06-24', 24),
(11053, 'Georg Pipps', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-05-29', '1996-05-27', '1996-06-24', 26),
(11054, 'Patricio Simpson', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', NULL, '1996-05-28', '1996-06-25', NULL),
(11055, 'Carlos Hernández', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-06-04', '1996-05-28', '1996-06-25', 21),
(11056, 'Ann Devon', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', '1996-05-31', '1996-05-28', '1996-06-11', 11),
(11057, 'Simon Crowther', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-05-31', '1996-05-29', '1996-06-26', 26),
(11058, 'Hanna Moos', 'Srta.', 'Anne', 'Dodsworth', 'Representante de ventas', NULL, '1996-05-29', '1996-06-26', NULL),
(11059, 'Janete Limeira', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', NULL, '1996-05-29', '1996-07-10', NULL),
(11060, 'Paolo Accorti', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', '1996-06-03', '1996-05-30', '1996-06-27', 24),
(11061, 'Howard Snyder', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', NULL, '1996-05-30', '1996-07-11', NULL),
(11062, 'Maurizio Moroni', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', NULL, '1996-05-30', '1996-06-27', NULL),
(11063, 'Patricia McKenna', 'Srta.', 'Janet', 'Leverling', 'Representante de ventas', '1996-06-05', '1996-05-30', '1996-06-27', 22),
(11064, 'Jose Pavarotti', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-06-03', '1996-05-31', '1996-06-28', 25),
(11065, 'Carlos González', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', NULL, '1996-05-31', '1996-06-28', NULL),
(11066, 'Karl Jablonski', 'Sr.', 'Robert', 'King', 'Representante de ventas', '1996-06-03', '1996-05-31', '1996-06-28', 25),
(11067, 'Sven Ottlieb', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-06-05', '1996-06-03', '1996-06-17', 12),
(11068, 'Lúcia Carvalho', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', NULL, '1996-06-03', '1996-07-01', NULL),
(11069, 'Miguel Angel Paolino', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', '1996-06-05', '1996-06-03', '1996-07-01', 26),
(11070, 'Renate Messner', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', NULL, '1996-06-04', '1996-07-02', NULL),
(11071, 'Carlos González', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', NULL, '1996-06-04', '1996-07-02', NULL),
(11072, 'Roland Mendel', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', NULL, '1996-06-04', '1996-07-02', NULL),
(11073, 'Guillermo Fernández', 'Dr.', 'Andrew', 'Fuller', 'Vicepresidente comercial', NULL, '1996-06-04', '1996-07-02', NULL),
(11074, 'Jytte Petersen', 'Sr.', 'Robert', 'King', 'Representante de ventas', NULL, '1996-06-05', '1996-07-03', NULL),
(11075, 'Michael Holz', 'Srta.', 'Laura', 'Callahan', 'Coordinador ventas interno', NULL, '1996-06-05', '1996-07-03', NULL),
(11076, 'Laurence Lebihan', 'Sra.', 'Margaret', 'Peacock', 'Representante de ventas', NULL, '1996-06-05', '1996-07-03', NULL),
(11077, 'Paula Wilson', 'Srta.', 'Nancy', 'Davolio', 'Representante de ventas', NULL, '1996-06-05', '1996-07-03', NULL);

--
-- Disparadores `pedidos_totalizados`
--
DELIMITER $$
CREATE TRIGGER `dias` BEFORE INSERT ON `pedidos_totalizados` FOR EACH ROW begin 
set new.dias= DATEDIFF( new.fecha_entrega,new.fecha_envio )  ;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL,
  `nombreProducto` varchar(40) DEFAULT NULL,
  `idProveedor` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `cantidadPorUnidad` varchar(20) DEFAULT NULL,
  `precioUnidad` decimal(10,0) DEFAULT NULL,
  `unidadesEnExistencia` smallint(6) DEFAULT NULL,
  `unidadesEnPedido` smallint(6) DEFAULT NULL,
  `nivelNuevoPedido` smallint(6) DEFAULT NULL,
  `suspendido` smallint(6) DEFAULT NULL,
  `categoriaProducto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `nombreProducto`, `idProveedor`, `idCategoria`, `cantidadPorUnidad`, `precioUnidad`, `unidadesEnExistencia`, `unidadesEnPedido`, `nivelNuevoPedido`, `suspendido`, `categoriaProducto`) VALUES
(1, 'Té Dharamsala', 1, 1, '10 cajas x 20 bolsas', '18', 39, 0, 10, 0, 'Categoria D'),
(2, 'Cerveza tibetana Barley', 1, 1, '24 - bot. 12 l', '19', 17, 40, 25, 0, 'Categoria D'),
(3, 'Sirope de regaliz', 1, 2, '12 - bot. 550 ml', '10', 13, 70, 25, 0, 'Categoria D'),
(4, 'Especias Cajun del chef Anton', 2, 2, '48 - frascos 6 l', '22', 53, 0, 0, 0, 'Categoria D'),
(5, 'Mezcla Gumbo del chef Anton', 2, 2, '36 cajas', '21', 0, 0, 0, 1, 'Categoria D'),
(6, 'Mermelada de grosellas de la abuela', 3, 2, '12 - frascos 8 l', '25', 120, 0, 25, 0, 'Categoria D'),
(7, 'Peras secas orgánicas del tío Bob', 3, 7, '12 - paq. 1 kg', '30', 15, 0, 10, 0, 'Categoria D'),
(8, 'Salsa de arándanos Northwoods', 3, 2, '12 - frascos 12 l', '40', 6, 0, 0, 0, 'Categoria D'),
(9, 'Buey Mishi Kobe', 4, 6, '18 - paq. 500 g', '97', 29, 0, 0, 1, 'Categoria D'),
(10, 'Pez espada', 4, 8, '12 - frascos 200 ml', '31', 31, 0, 0, 0, 'Categoria D'),
(11, 'Queso Cabrales', 5, 4, 'paq. 1 kg', '21', 22, 30, 30, 0, 'Categoria D'),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - paq. 500 g', '38', 86, 0, 0, 0, 'Categoria D'),
(13, 'Algas Konbu', 6, 8, 'caja 2 kg', '6', 24, 0, 5, 0, 'Categoria D'),
(14, 'Cuajada de judías', 6, 7, '40 - paq. 100 g', '23', 35, 0, 0, 0, 'Categoria D'),
(15, 'Salsa de soja baja en sodio', 6, 2, '24 - bot. 250 ml', '16', 39, 0, 5, 0, NULL),
(16, 'Postre de merengue Pavlova', 7, 3, '32 - cajas 500 g', '17', 29, 0, 10, 0, 'Categoria D'),
(17, 'Cordero Alice Springs', 7, 6, '20 - latas 1 kg', '39', 0, 0, 0, 1, 'Categoria D'),
(18, 'Langostinos tigre Carnarvon', 7, 8, 'paq. 16 kg', '63', 42, 0, 0, 0, 'Categoria D'),
(19, 'Pastas de té de chocolate', 8, 3, '10 cajas x 12 piezas', '9', 25, 0, 5, 0, 'Categoria D'),
(20, 'Mermelada de Sir Rodney\'s', 8, 3, '30 cajas regalo', '81', 40, 0, 0, 0, 'Categoria D'),
(21, 'Bollos de Sir Rodney\'s', 8, 3, '24 paq. x 4 piezas', '10', 3, 40, 5, 0, 'Categoria D'),
(22, 'Pan de centeno crujiente estilo Gustaf\'s', 9, 5, '24 - paq. 500 g', '21', 104, 0, 25, 0, 'Categoria D'),
(23, 'Pan fino', 9, 5, '12 - paq. 250 g', '9', 61, 0, 25, 0, 'Categoria D'),
(24, 'Refresco Guaraná Fantástica', 10, 1, '12 - latas 355 ml', '5', 20, 0, 0, 1, 'Categoria D'),
(25, 'Crema de chocolate y nueces NuNuCa', 11, 3, '20 - vasos  450 g', '14', 76, 0, 30, 0, 'Categoria D'),
(26, 'Ositos de goma Gumbär', 11, 3, '100 - bolsas 250 g', '31', 15, 0, 0, 0, 'Categoria D'),
(27, 'Chocolate Schoggi', 11, 3, '100 - piezas 100 g', '44', 49, 0, 30, 0, 'Categoria D'),
(28, 'Col fermentada Rössle', 12, 7, '25 - latas 825 g', '46', 26, 0, 0, 1, 'Categoria D'),
(29, 'Salchicha Thüringer', 12, 6, '50 bolsas x 30 salch', '124', 0, 0, 0, 1, 'Categoria B'),
(30, 'Arenque blanco del noroeste', 13, 8, '10 - vasos 200 g', '26', 10, 0, 15, 0, 'Categoria D'),
(31, 'Queso gorgonzola Telino', 14, 4, '12 - paq. 100 g', '13', 0, 70, 20, 0, 'Categoria D'),
(32, 'Queso Mascarpone Fabioli', 14, 4, '24 - paq. 200 g', '32', 9, 40, 25, 0, 'Categoria D'),
(33, 'Queso de cabra', 15, 4, '500 g', '3', 112, 0, 20, 0, 'Categoria D'),
(34, 'Cerveza Sasquatch', 16, 1, '24 - bot. 12 l', '14', 111, 0, 15, 0, 'Categoria D'),
(35, 'Cerveza negra Steeleye', 16, 1, '24 - bot. 12 l', '18', 20, 0, 15, 0, 'Categoria D'),
(36, 'Escabeche de arenque', 17, 8, '24 - frascos 250 g', '19', 112, 0, 20, 0, 'Categoria D'),
(37, 'Salmón ahumado Gravad', 17, 8, '12 - paq. 500 g', '26', 11, 50, 25, 0, 'Categoria D'),
(38, 'Vino Côte de Blaye', 18, 1, '12 - bot. 75 cl', '264', 17, 0, 15, 0, 'Categoria A'),
(39, 'Licor verde Chartreuse', 18, 1, '750 cc por bot.', '18', 69, 0, 5, 0, 'Categoria D'),
(40, 'Carne de cangrejo de Boston', 19, 8, '24 - latas 4 l', '18', 123, 0, 30, 0, 'Categoria D'),
(41, 'Crema de almejas estilo Nueva Inglaterra', 19, 8, '12 - latas 12 l', '10', 85, 0, 10, 0, 'Categoria D'),
(42, 'Tallarines de Singapur', 20, 5, '32 - 1 kg paq.', '14', 26, 0, 0, 1, 'Categoria D'),
(43, 'Café de Malasia', 20, 1, '16 - latas 500 g', '46', 17, 10, 25, 0, 'Categoria D'),
(44, 'Azúcar negra Malacca', 20, 2, '20 - bolsas 2 kg', '19', 27, 0, 15, 0, 'Categoria D'),
(45, 'Arenque ahumado', 21, 8, 'paq. 1k', '10', 5, 70, 15, 0, 'Categoria D'),
(46, 'Arenque salado', 21, 8, '4 - vasos 450 g', '12', 95, 0, 0, 0, 'Categoria D'),
(47, 'Galletas Zaanse', 22, 3, '10 - cajas 4 l', '10', 36, 0, 0, 0, 'Categoria D'),
(48, 'Chocolate holandés', 22, 3, '10 paq.', '13', 15, 70, 25, 0, 'Categoria D'),
(49, 'Regaliz', 23, 3, '24 - paq. 50 g', '20', 10, 60, 15, 0, 'Categoria D'),
(50, 'Chocolate blanco', 23, 3, '12 - barras 100 g', '16', 65, 0, 30, 0, 'Categoria D'),
(51, 'Manzanas secas Manjimup', 24, 7, '50 - paq. 300 g', '53', 20, 0, 10, 0, 'Categoria C'),
(52, 'Cereales para Filo', 24, 5, '16 - cajas 2 kg', '7', 38, 0, 25, 0, 'Categoria D'),
(53, 'Empanada de carne', 24, 6, '48 porc.', '33', 0, 0, 0, 1, 'Categoria D'),
(54, 'Empanada de cerdo', 25, 6, '16 tartas', '7', 21, 0, 10, 0, 'Categoria D'),
(55, 'Paté chino', 25, 6, '24 cajas x 2 tartas', '24', 115, 0, 20, 0, 'Categoria D'),
(56, 'Gnocchi de la abuela Alicia', 26, 5, '24 - paq. 250 g', '38', 21, 10, 30, 0, 'Categoria D'),
(57, 'Raviolis Angelo', 26, 5, '24 - paq. 250 g', '20', 36, 0, 20, 0, 'Categoria D'),
(58, 'Caracoles de Borgoña', 27, 8, '24 porc.', '13', 62, 0, 20, 0, 'Categoria D'),
(59, 'Raclet de queso Courdavault', 28, 4, 'paq. 5 kg', '55', 79, 0, 0, 0, 'Categoria C'),
(60, 'Camembert Pierrot', 28, 4, '15 - paq. 300 g', '34', 19, 0, 0, 0, 'Categoria C'),
(61, 'Sirope de arce', 29, 2, '24 - bot. 500 ml', '29', 113, 0, 25, 0, 'Categoria D'),
(62, 'Tarta de azúcar', 29, 3, '48 tartas', '49', 17, 0, 0, 0, 'Categoria C'),
(63, 'Sandwich de vegetales', 7, 2, '15 - frascos 625 g', '44', 24, 0, 5, 0, 'Categoria D'),
(64, 'Bollos de pan de Wimmer', 12, 5, '20 bolsas x 4 porc.', '33', 22, 80, 30, 0, 'Categoria D'),
(65, 'Salsa de pimiento picante de Luisiana', 2, 2, '32 - bot. 8 l', '21', 76, 0, 0, 0, 'Categoria D'),
(66, 'Especias picantes de Luisiana', 2, 2, '24 - frascos 8 l', '17', 4, 100, 20, 0, 'Categoria D'),
(67, 'Cerveza Laughing Lumberjack', 16, 1, '24 - bot. 12 l', '14', 52, 0, 10, 0, 'Categoria D'),
(68, 'Barras de pan de Escocia', 8, 3, '10 cajas x 8 porc.', '13', 6, 10, 15, 0, 'Categoria D'),
(69, 'Queso Gudbrandsdals', 15, 4, 'paq. 10 kg', '36', 26, 0, 15, 0, 'Categoria D'),
(70, 'Cerveza Outback', 7, 1, '24 - bot. 355 ml', '15', 15, 10, 30, 0, 'Categoria D'),
(71, 'Crema de queso Fløtemys', 15, 4, '10 - paq. 500 g', '22', 26, 0, 0, 0, 'Categoria D'),
(72, 'Queso Mozzarella Giovanni', 14, 4, '24 - paq. 200 g', '35', 14, 0, 0, 0, 'Categoria D'),
(73, 'Caviar rojo', 17, 8, '24 - frascos150 g', '15', 101, 0, 5, 0, 'Categoria D'),
(74, 'Queso de soja Longlife', 4, 7, 'paq. 5 kg', '10', 4, 20, 5, 0, 'Categoria D'),
(75, 'Cerveza Klosterbier Rhönbräu', 12, 1, '24 - bot. 0,5 l', '8', 125, 0, 25, 0, 'Categoria D'),
(76, 'Licor Cloudberry', 23, 1, '500 ml', '18', 57, 0, 20, 0, 'Categoria D'),
(77, 'Salsa verde original Frankfurter', 12, 2, '12 cajas', '13', 32, 0, 15, 0, 'Categoria D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int(11) NOT NULL,
  `nombreCompañia` varchar(40) NOT NULL,
  `nombrecontacto` varchar(30) DEFAULT NULL,
  `cargocontacto` varchar(30) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `ciudad` varchar(15) DEFAULT NULL,
  `region` varchar(15) DEFAULT NULL,
  `codPostal` varchar(10) DEFAULT NULL,
  `pais` varchar(15) DEFAULT NULL,
  `telefono` varchar(24) DEFAULT NULL,
  `fax` varchar(24) DEFAULT NULL,
  `paginaprincipal` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `nombreCompañia`, `nombrecontacto`, `cargocontacto`, `direccion`, `ciudad`, `region`, `codPostal`, `pais`, `telefono`, `fax`, `paginaprincipal`) VALUES
(1, 'Exotic Liquids', 'Charlotte Cooper', 'Gerente de compras', '49 Gilbert St.', 'Londres', NULL, 'EC1 4SD', 'Reino Unido', '(171) 555-2222', NULL, NULL),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Administrador de pedidos', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'Estados Unidos', '(100) 555-4822', NULL, 'CAJUN.HTM#CAJUN.HTM#'),
(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', 'Representante de ventas', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'Estados Unidos', '(313) 555-5735', '(313) 555-3349', NULL),
(4, 'Tokyo Traders', 'Yoshi Nagase', 'Gerente de marketing', '9-8 SekimaiMusashino-shi', 'Tokyo', NULL, '100', 'Japón', '(03) 3555-5011', NULL, NULL),
(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra ', 'Administrador de exportaciones', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'España', '(98) 598 76 54', NULL, NULL),
(6, 'Mayumi\'s', 'Mayumi Ohno', 'Representante de marketing', '92 SetsukoChuo-ku', 'Osaka', NULL, '545', 'Japón', '(06) 431-7877', NULL, 'Mayumi\'s (en el World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),
(7, 'Pavlova, Ltd.', 'Ian Devling', 'Gerente de marketing', '74 Rose St.Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', NULL),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Representante de ventas', '29 King\'s Way', 'Manchester', NULL, 'M14 GSD', 'Reino Unido', '(161) 555-4448', NULL, NULL),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Agente de ventas', 'Kaloadagatan 13', 'Göteborg', NULL, 'S-345 67', 'Suecia', '031-987 65 43', '031-987 65 91', NULL),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Gerente de marketing', 'Av. das Americanas 12.890', 'São Paulo', NULL, '5442', 'Brasil', '(11) 555 4640', NULL, NULL),
(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Gerente de ventas', 'Tiergartenstraße 5', 'Berlín', NULL, '10785', 'Alemania', '(010) 9984510', NULL, NULL),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Ger. marketing internacional', 'Bogenallee 51', 'Frankfurt', NULL, '60439', 'Alemania', '(069) 992755', NULL, 'Plutzer (en el World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinador de mercados', 'Frahmredder 112a', 'Cuxhaven', NULL, '27478', 'Alemania', '(04721) 8713', '(04721) 8714', NULL),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Representante de ventas', 'Viale Dante, 75', 'Ravenna', NULL, '48100', 'Italia', '(0544) 60323', '(0544) 60603', 'FORMAGGI.HTM#FORMAGGI.HTM#'),
(15, 'Norske Meierier', 'Beate Vileid', 'Gerente de marketing', 'Hatlevegen 5', 'Sandvika', NULL, '1320', 'Noruega', '(0)2-953010', NULL, NULL),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Repr. de cuentas regional', '3400 - 8th AvenueSuite 210', 'Bend', 'OR', '97101', 'Estados Unidos', '(503) 555-9931', NULL, NULL),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Representante de ventas', 'Brovallavägen 231', 'Stockholm', NULL, 'S-123 45', 'Suecia', '08-123 45 67', NULL, NULL),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Gerente de ventas', '203, Rue des Francs-Bourgeois', 'París', NULL, '75004', 'Francia', '(1) 03.83.00.68', '(1) 03.83.00.62', NULL),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Agente de cuentas al por mayor', 'Order Processing Dept.2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'Estados Unidos', '(617) 555-3267', '(617) 555-3389', NULL),
(20, 'Leka Trading', 'Chandra Leka', 'Propietario', '471 Serangoon Loop, Suite #402', 'Singapore', NULL, '0512', 'Singapur', '555-8787', NULL, NULL),
(21, 'Lyngbysild', 'Niels Petersen', 'Gerente de ventas', 'LyngbysildFiskebakken 10', 'Lyngby', NULL, '2800', 'Dinamarca', '43844108', '43844115', NULL),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Gerente de contabilidad', 'VerkoopRijnweg 22', 'Zaandam', NULL, '9999 ZZ', 'Holanda', '(12345) 1212', '(12345) 1210', NULL),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Gerente de producción', 'Valtakatu 12', 'Lappeenranta', NULL, '53120', 'Finlandia', '(953) 10956', NULL, NULL),
(24, 'G\'day, Mate', 'Wendy Mackenzie', 'Representante de ventas', '170 Prince Edward ParadeHunter\'s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G\'day Mate (en el World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),
(25, 'Ma Maison', 'Jean-Guy Lauzon', 'Gerente de marketing', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá', '(514) 555-9022', NULL, NULL),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Administrador de pedidos', 'Via dei Gelsomini, 153', 'Salerno', NULL, '84100', 'Italia', '(089) 6547665', '(089) 6547667', NULL),
(27, 'Escargots Nouveaux', 'Marie Delamare', 'Gerente de ventas', '22, rue H. Voiron', 'Montceau', NULL, '71300', 'Francia', '85.57.00.07', NULL, NULL),
(28, 'Gai pâturage', 'Eliane Noz', 'Representante de ventas', 'Bat. B3, rue des Alpes', 'Annecy', NULL, '74000', 'Francia', '38.76.98.06', '38.76.98.58', NULL),
(29, 'Forêts d\'érables', 'Chantal Goulet', 'Gerente de contabilidad', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canadá', '(514) 555-2955', '(514) 555-2921', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idvta` int(11) NOT NULL,
  `prodvta` varchar(100) DEFAULT NULL,
  `precprod` float DEFAULT NULL,
  `cantprod` int(11) DEFAULT NULL,
  `impvta` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idvta`, `prodvta`, `precprod`, `cantprod`, `impvta`) VALUES
(1, 'vino', 17.5, 3, 0),
(2, 'telefono', 14, 2, 0);

--
-- Disparadores `ventas`
--
DELIMITER $$
CREATE TRIGGER `insert_importe` BEFORE INSERT ON `ventas` FOR EACH ROW begin
insert into e_ventas(e_idvta,e_prodvta,evento)
values(new.idvta,new.prodvta,'insertado');
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_importe` BEFORE UPDATE ON `ventas` FOR EACH ROW begin
insert into e_ventas(e_idvta,e_prodvta,evento)
values(old.idvta,new.prodvta,'actualizado');
end
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compañiasdeenvios`
--
ALTER TABLE `compañiasdeenvios`
  ADD PRIMARY KEY (`idCompañiaEnvios`);

--
-- Indices de la tabla `detallesdepedidos`
--
ALTER TABLE `detallesdepedidos`
  ADD KEY `fk_1` (`idpedido`),
  ADD KEY `fk_2` (`idproducto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`IdPedido`),
  ADD KEY `fk_4` (`FormaEnvio`),
  ADD KEY `fk_5` (`IdCliente`),
  ADD KEY `fk_6` (`IdEmpleado`);

--
-- Indices de la tabla `pedidos_totalizados`
--
ALTER TABLE `pedidos_totalizados`
  ADD PRIMARY KEY (`idpedidos`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `fk_3` (`idProveedor`),
  ADD KEY `fk_7` (`idCategoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idvta`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallesdepedidos`
--
ALTER TABLE `detallesdepedidos`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`idpedido`) REFERENCES `pedidos` (`IdPedido`),
  ADD CONSTRAINT `fk_2` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_4` FOREIGN KEY (`FormaEnvio`) REFERENCES `compañiasdeenvios` (`idCompañiaEnvios`),
  ADD CONSTRAINT `fk_5` FOREIGN KEY (`IdCliente`) REFERENCES `clientes` (`idCliente`),
  ADD CONSTRAINT `fk_6` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleados` (`IdEmpleado`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_3` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`),
  ADD CONSTRAINT `fk_7` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idcategoria`);
--
-- Base de datos: `new_schema`
--
CREATE DATABASE IF NOT EXISTS `new_schema` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `new_schema`;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"farmacia\",\"table\":\"cliente\"},{\"db\":\"farmacia\",\"table\":\"empleado\"},{\"db\":\"farmacia\",\"table\":\"pedido\"},{\"db\":\"farmacia\",\"table\":\"empleado_pedido\"},{\"db\":\"farmacia\",\"table\":\"usuarios\"},{\"db\":\"farmacia\",\"table\":\"pedido_producto\"},{\"db\":\"farmacia\",\"table\":\"farmacia\"},{\"db\":\"farmacia\",\"table\":\"producto\"},{\"db\":\"farmacia\",\"table\":\"factura\"},{\"db\":\"farmacia\",\"table\":\"administrador\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-08-22 04:26:23', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
