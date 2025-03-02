-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2025 a las 04:58:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tallermecanicok2h`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(24) DEFAULT NULL,
  `Apellido` varchar(24) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Numero_Telefono` int(11) DEFAULT NULL,
  `Tipo_Usuario` varchar(15) DEFAULT NULL,
  `contraseña` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Id_Usuario`, `Nombre`, `Apellido`, `Correo`, `Numero_Telefono`, `Tipo_Usuario`, `contraseña`) VALUES
(1983, 'Eric', 'Avalos', 'avaluzzg@gmail.com', 72217938, 'Cliente', 'avalus123'),
(1984, 'Rodrigo', 'Alizama', 'marial@gmail.com', 72217938, 'Cliente', NULL),
(1985, 'Juan', 'Perez', 'juanp@gmail.com', 72117938, 'Cliente', NULL),
(1986, 'Ana', 'Martinez', 'anam@gmail.com', 73217938, 'Cliente', NULL),
(1987, 'Luis', 'Garcia', 'luisg@hotmail.com', 72217939, 'Cliente', NULL),
(1988, 'Lucia', 'Hernandez', 'luciah@gmail.com', 72217338, 'Cliente', NULL),
(1989, 'Pedro', 'Diaz', 'pedrod@hotmail.com', 72217931, 'Cliente', NULL),
(1990, 'Laura', 'Morales', 'lauram@gmail.com', 72214938, 'Cliente', NULL),
(1991, 'Jorge', 'Ramirez', 'jorger@hotmail.com', 74217938, 'Cliente', NULL),
(1992, 'Sofia', 'Alvarez', 'sofiaal@gmail.com', 72917938, 'Cliente', NULL),
(1993, 'diego ', 'elías', 'eliaslopezdiegojosue@gmail.com', 2147483647, 'Cliente', 'diegoArrupe10'),
(1994, 'Diego', 'Elias', 'eliaslopezdiegojosue@gmail.com', 73151474, 'Cliente', 'diego');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correctivo`
--

CREATE TABLE `correctivo` (
  `Id_Correctivo` int(11) NOT NULL,
  `Id_Servicio` int(11) DEFAULT NULL,
  `Sistema_Frenos` tinyint(1) DEFAULT NULL,
  `Bomba_Agua` tinyint(1) DEFAULT NULL,
  `Sistema_Electrico` tinyint(1) DEFAULT NULL,
  `Sistema_Direccion` tinyint(1) DEFAULT NULL,
  `Sistema_Transmision` tinyint(1) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `correctivo`
--

INSERT INTO `correctivo` (`Id_Correctivo`, `Id_Servicio`, `Sistema_Frenos`, `Bomba_Agua`, `Sistema_Electrico`, `Sistema_Direccion`, `Sistema_Transmision`, `Id_Usuario`) VALUES
(2000, 1, 1, 0, 1, 1, 0, NULL),
(2001, 2, 1, 1, 0, 1, 1, NULL),
(2003, 3, 0, 1, 1, 0, 1, NULL),
(2004, 4, 1, 0, 1, 1, 1, NULL),
(2005, 5, 0, 1, 1, 0, 0, NULL),
(2006, 6, 1, 1, 0, 1, 1, NULL),
(2007, 7, 1, 1, 1, 0, 1, NULL),
(2008, 8, 0, 1, 1, 1, 0, NULL),
(2009, 9, 1, 0, 1, 1, 1, NULL),
(2010, 10, 1, 1, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerente`
--

CREATE TABLE `gerente` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(24) DEFAULT NULL,
  `Apellido` varchar(24) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Numero_Telefono` int(11) DEFAULT NULL,
  `Tipo_Usuario` varchar(15) DEFAULT NULL,
  `contraseña` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gerente`
--

INSERT INTO `gerente` (`Id_Usuario`, `Nombre`, `Apellido`, `Correo`, `Numero_Telefono`, `Tipo_Usuario`, `contraseña`) VALUES
(100, 'Isabel', 'Ruiz', 'isabelr@gmail.com', 71839391, 'Gerente', '10'),
(101, 'Rodrigo', 'Lemus', 'rodrigud@hotmail.com', 71329391, 'Gerente', '1'),
(202, 'Rodrigo', 'Monge', 'elenao@gmail.com', 71829021, 'Gerente', '2'),
(303, 'Miguel', 'Rojas', 'miguelr@hotmail.com', 71829141, 'Gerente', '3'),
(404, 'Teresa', 'Vega', 'teresav@gmail.com', 71829390, 'Gerente', '4'),
(505, 'David', 'Salas', 'davids@hotmail.com', 71829396, 'Gerente', '5'),
(606, 'Paula', 'Cruz', 'paulac@hotmail.com', 71829394, 'Gerente', '6'),
(707, 'Alejandro', 'Nieto', 'alejandron@hotmail.com', 71819391, 'Gerente', '7'),
(808, 'Veronica', 'Lopez', 'veronical@gmail.com', 71829291, 'Gerente', '8'),
(909, 'Rafael', 'Dominguez', 'rafaeld@gmail.com', 71429391, 'Gerente', '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `precio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preventivo`
--

CREATE TABLE `preventivo` (
  `Id_Preventivo` int(11) NOT NULL,
  `Id_Servicio` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Cambio_Aire` tinyint(1) DEFAULT NULL,
  `Cambio_Aceite` tinyint(1) DEFAULT NULL,
  `Niveles_Fluidos` tinyint(1) DEFAULT NULL,
  `Bateria` tinyint(1) DEFAULT NULL,
  `Cambio_Frenos` tinyint(1) DEFAULT NULL,
  `Modelo_Vehiculo` text DEFAULT NULL,
  `Ruta_Imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preventivo`
--

INSERT INTO `preventivo` (`Id_Preventivo`, `Id_Servicio`, `Id_Usuario`, `Cambio_Aire`, `Cambio_Aceite`, `Niveles_Fluidos`, `Bateria`, `Cambio_Frenos`, `Modelo_Vehiculo`, `Ruta_Imagen`) VALUES
(1001, 2, 1983, 1, 1, 1, 1, 0, NULL, NULL),
(1002, 3, 1990, 0, 1, 1, 1, 1, NULL, NULL),
(1003, 4, 1992, 1, 0, 1, 1, 0, NULL, NULL),
(1004, 5, NULL, 1, 1, 0, 1, 1, NULL, NULL),
(1005, 6, NULL, 0, 1, 1, 0, 1, NULL, NULL),
(1006, 7, NULL, 1, 0, 1, 1, 1, NULL, NULL),
(1007, 8, NULL, 1, 1, 0, 1, 0, NULL, NULL),
(1008, 9, NULL, 0, 1, 1, 1, 1, NULL, NULL),
(1009, 10, NULL, 1, 1, 1, 0, 0, NULL, NULL),
(10000, 1, NULL, 1, 1, 1, 0, 0, NULL, NULL),
(10001, NULL, 1983, 0, 0, 0, 0, 0, 'Hyundai Elantra', '/img/671cb29f37a2a_imprimirandres.jpg'),
(10002, NULL, 1987, 1, 0, 1, 0, 0, 'Santa Fe', '/img/671cc59e0c05f_imprimirandres.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id_Producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `Precio` varchar(6) DEFAULT NULL,
  `Promocion` varchar(3) DEFAULT NULL,
  `Fecha_Produccion` date DEFAULT NULL,
  `Fecha_Vencimiento` date DEFAULT NULL,
  `Cantidad` varchar(6) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Id_Producto`, `nombre`, `Precio`, `Promocion`, `Fecha_Produccion`, `Fecha_Vencimiento`, `Cantidad`, `foto`) VALUES
(10000, NULL, '100.00', '0.1', '2024-07-01', '2025-07-01', '200', NULL),
(10001, NULL, '150.00', '0.1', '2024-07-02', '2025-07-02', '300', NULL),
(10002, NULL, '120.00', '0.1', '2024-07-03', '2025-07-03', '400', NULL),
(10003, NULL, '130.00', '0.2', '2024-07-04', '2025-07-04', '300', NULL),
(10004, NULL, '110.00', '0.1', '2024-07-05', '2025-07-05', '250', NULL),
(10005, NULL, '160.00', '0.0', '2024-07-06', '2025-07-06', '210', NULL),
(10006, NULL, '140.00', '0.1', '2024-07-07', '2025-07-07', '150', NULL),
(10007, NULL, '170.00', '0.2', '2024-07-08', '2025-07-08', '120', NULL),
(10008, NULL, '180.00', '0.1', '2024-07-09', '2025-07-09', '300', NULL),
(10009, NULL, '200.00', '0.1', '2024-07-10', '2025-07-10', '200', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_pedido`
--

CREATE TABLE `producto_pedido` (
  `Id_Pedido` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Producto` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `Id_Promo` int(11) NOT NULL,
  `Reparacion_Frenos` tinyint(1) DEFAULT 0,
  `Reparacion_Electrico` tinyint(1) DEFAULT 0,
  `Cambio_Filtro_Aceite` tinyint(1) DEFAULT 0,
  `Reparacion_Direccion` tinyint(1) DEFAULT 0,
  `Ruta_Imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Id_Servicio` int(11) NOT NULL,
  `Precio` decimal(6,2) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Finalizacion` date DEFAULT NULL,
  `Fecha_Solicitud` date DEFAULT NULL,
  `Promocion` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`Id_Servicio`, `Precio`, `Direccion`, `Fecha_Inicio`, `Fecha_Finalizacion`, `Fecha_Solicitud`, `Promocion`) VALUES
(1, 2500.00, '123 Main St', '2024-08-01', '2024-08-03', '2024-07-28', 0.1),
(2, 3000.00, '456 Elm St', '2024-08-02', '2024-08-04', '2024-07-29', 0.05),
(3, 4500.00, '789 Maple Ave', '2024-08-03', '2024-08-05', '2024-07-30', 0.2),
(4, 5000.00, '101 Oak St', '2024-08-04', '2024-08-06', '2024-07-31', 0.15),
(5, 3500.00, '202 Pine St', '2024-08-05', '2024-08-07', '2024-08-01', 0.1),
(6, 4000.00, '303 Birch St', '2024-08-06', '2024-08-08', '2024-08-02', 0.1),
(7, 2800.00, '404 Cedar St', '2024-08-07', '2024-08-09', '2024-08-03', 0.05),
(8, 2600.00, '505 Ash St', '2024-08-08', '2024-08-10', '2024-08-04', 0.1),
(9, 3200.00, '606 Fir St', '2024-08-09', '2024-08-11', '2024-08-05', 0.1),
(10, 2900.00, '707 Spruce St', '2024-08-10', '2024-08-12', '2024-08-06', 0.05);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnico`
--

CREATE TABLE `tecnico` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(24) DEFAULT NULL,
  `Apellido` varchar(24) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Numero_Telefono` int(11) DEFAULT NULL,
  `Tipo_Usuario` varchar(15) DEFAULT NULL,
  `Activo` tinyint(1) DEFAULT NULL,
  `contraseña` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tecnico`
--

INSERT INTO `tecnico` (`Id_Usuario`, `Nombre`, `Apellido`, `Correo`, `Numero_Telefono`, `Tipo_Usuario`, `Activo`, `contraseña`) VALUES
(978, 'Gabriela', 'Hernandez', 'gabrielah@gmail.com', 2147483647, 'Tecnico', 0, 'gabriela123'),
(979, 'Luis', 'Ramirez', 'luisr@gmail.com', 72934401, 'Tecnico', 0, 'luis123'),
(980, 'Miguel', 'Martinez', 'miguelm@gmail.com', 72134501, 'Tecnico', 0, NULL),
(981, 'Andrea', 'Lopez', 'andreal@gmail.com', 72334501, 'Tecnico', 0, NULL),
(982, 'Fernando', 'Cruz', 'fernandoc@gmail.com', 73934511, 'Tecnico', 0, NULL),
(983, 'Ricardo', 'Torres', 'ricardot@gmail.com', 72934501, 'Tecnico', 0, NULL),
(984, 'Adriana', 'Mendez', 'adrianam@hotmail.com', 72034571, 'Tecnico', 1, NULL),
(985, 'Santiago', 'Gomez', 'santiagog@gmail.com', 72934561, 'Tecnico', 1, NULL),
(986, 'Monica', 'Silva', 'monicas@gmail.com', 72934521, 'Tecnico', 1, NULL),
(987, 'Alejandro', 'Ramirez', 'chepoe123@hotmail.com', 72934501, 'Tecnico', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `correctivo`
--
ALTER TABLE `correctivo`
  ADD PRIMARY KEY (`Id_Correctivo`),
  ADD KEY `Id_Servicio` (`Id_Servicio`),
  ADD KEY `FK_Correctivo_Cliente` (`Id_Usuario`);

--
-- Indices de la tabla `gerente`
--
ALTER TABLE `gerente`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preventivo`
--
ALTER TABLE `preventivo`
  ADD PRIMARY KEY (`Id_Preventivo`),
  ADD KEY `Id_Servicio` (`Id_Servicio`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id_Producto`);

--
-- Indices de la tabla `producto_pedido`
--
ALTER TABLE `producto_pedido`
  ADD PRIMARY KEY (`Id_Pedido`),
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `Id_Producto` (`Id_Producto`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`Id_Promo`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Id_Servicio`);

--
-- Indices de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1995;

--
-- AUTO_INCREMENT de la tabla `correctivo`
--
ALTER TABLE `correctivo`
  MODIFY `Id_Correctivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2011;

--
-- AUTO_INCREMENT de la tabla `gerente`
--
ALTER TABLE `gerente`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preventivo`
--
ALTER TABLE `preventivo`
  MODIFY `Id_Preventivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;

--
-- AUTO_INCREMENT de la tabla `producto_pedido`
--
ALTER TABLE `producto_pedido`
  MODIFY `Id_Pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `Id_Promo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `correctivo`
--
ALTER TABLE `correctivo`
  ADD CONSTRAINT `FK_Correctivo_Cliente` FOREIGN KEY (`Id_Usuario`) REFERENCES `cliente` (`Id_Usuario`),
  ADD CONSTRAINT `correctivo_ibfk_1` FOREIGN KEY (`Id_Servicio`) REFERENCES `servicios` (`Id_Servicio`);

--
-- Filtros para la tabla `preventivo`
--
ALTER TABLE `preventivo`
  ADD CONSTRAINT `preventivo_ibfk_1` FOREIGN KEY (`Id_Servicio`) REFERENCES `servicios` (`Id_Servicio`),
  ADD CONSTRAINT `preventivo_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `cliente` (`Id_Usuario`);

--
-- Filtros para la tabla `producto_pedido`
--
ALTER TABLE `producto_pedido`
  ADD CONSTRAINT `producto_pedido_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `cliente` (`Id_Usuario`),
  ADD CONSTRAINT `producto_pedido_ibfk_2` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`Id_Producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
