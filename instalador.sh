#!/bin/bash
clear
echo "Creando directorios"
sleep 2
sudo groupadd usuarios
mkdir -p /usr/local/sbin/scriptsV2/
mkdir -p /var/mysql/
mkdir -p /var/mysql/DBuser
mkdir -p /var/mysql/DBweb
mkdir -p /var/backups/uex-user
mkdir -p /var/backups/uex-user/user
mkdir -p /var/backups/uex-user/pass
mkdir -p /var/backups/uex-user/group
mkdir -p ~/.config/rclone/
mkdir -p /home/pablo/Descargas/uex-user
sudo mkdir -p /etc/iptables
sudo touch /etc/iptables/rules.v4
sudo touch /home/pablo/uexproyecto.sql





sudo echo "-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2023 a las 18:09:35
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
-- Base de datos: `uruguayexpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiento`
--

CREATE TABLE `asiento` (
  `Num_Asiento` int(11) NOT NULL,
  `Matricula_Unidad` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asiento`
--

INSERT INTO `asiento` (`Num_Asiento`, `Matricula_Unidad`) VALUES
(1, 'MWE 4453'),
(2, 'MWE 4453'),
(3, 'MWE 4453'),
(4, 'MWE 4453'),
(5, 'MWE 4453'),
(6, 'MWE 4453'),
(7, 'MWE 4453'),
(8, 'MWE 4453'),
(9, 'MWE 4453'),
(10, 'MWE 4453'),
(11, 'MWE 4453'),
(12, 'MWE 4453'),
(13, 'MWE 4453'),
(14, 'MWE 4453'),
(15, 'MWE 4453'),
(16, 'MWE 4453'),
(17, 'MWE 4453'),
(18, 'MWE 4453'),
(19, 'MWE 4453'),
(20, 'MWE 4453'),
(21, 'MWE 4453'),
(22, 'MWE 4453'),
(23, 'MWE 4453'),
(24, 'MWE 4453'),
(25, 'MWE 4453'),
(26, 'MWE 4453'),
(27, 'MWE 4453'),
(28, 'MWE 4453'),
(29, 'MWE 4453'),
(30, 'MWE 4453'),
(31, 'MWE 4453'),
(32, 'MWE 4453'),
(33, 'MWE 4453'),
(34, 'MWE 4453'),
(35, 'MWE 4453'),
(36, 'MWE 4453'),
(37, 'MWE 4453'),
(38, 'MWE 4453'),
(39, 'MWE 4453'),
(40, 'MWE 4453'),
(41, 'MWE 4453'),
(42, 'MWE 4453'),
(43, 'MWE 4453'),
(44, 'MWE 4453'),
(45, 'MWE 4453'),
(46, 'MWE 4453'),
(49, 'MWE 4453'),
(1, 'SAD 1490'),
(2, 'SAD 1490'),
(3, 'SAD 1490'),
(4, 'SAD 1490'),
(5, 'SAD 1490'),
(6, 'SAD 1490'),
(7, 'SAD 1490'),
(8, 'SAD 1490'),
(9, 'SAD 1490'),
(10, 'SAD 1490'),
(11, 'SAD 1490'),
(12, 'SAD 1490'),
(13, 'SAD 1490'),
(14, 'SAD 1490'),
(15, 'SAD 1490'),
(16, 'SAD 1490'),
(17, 'SAD 1490'),
(18, 'SAD 1490'),
(19, 'SAD 1490'),
(20, 'SAD 1490'),
(21, 'SAD 1490'),
(22, 'SAD 1490'),
(23, 'SAD 1490'),
(24, 'SAD 1490'),
(25, 'SAD 1490'),
(26, 'SAD 1490'),
(27, 'SAD 1490'),
(28, 'SAD 1490'),
(29, 'SAD 1490'),
(30, 'SAD 1490'),
(31, 'SAD 1490'),
(32, 'SAD 1490'),
(33, 'SAD 1490'),
(34, 'SAD 1490'),
(35, 'SAD 1490'),
(36, 'SAD 1490'),
(37, 'SAD 1490'),
(38, 'SAD 1490'),
(39, 'SAD 1490'),
(40, 'SAD 1490'),
(41, 'SAD 1490'),
(42, 'SAD 1490'),
(43, 'SAD 1490'),
(44, 'SAD 1490'),
(45, 'SAD 1490'),
(46, 'SAD 1490'),
(47, 'SAD 1490'),
(48, 'SAD 1490');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristica`
--

CREATE TABLE `caracteristica` (
  `ID_Carac` int(11) NOT NULL,
  `Matricula_Unidad` varchar(8) DEFAULT NULL,
  `Valor_Carac` tinyint(1) DEFAULT NULL,
  `Nombre_Carac` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caracteristica`
--

INSERT INTO `caracteristica` (`ID_Carac`, `Matricula_Unidad`, `Valor_Carac`, `Nombre_Carac`) VALUES
(1, 'AYC 2001', 1, 'Baño'),
(2, 'FRJ 1934', 1, 'Aire acondicionado'),
(3, 'LEP 1932', 1, 'Baño'),
(4, 'MWE 4453', 1, 'Wifi'),
(5, 'MYW 2002', 1, 'Aire acondicionado'),
(6, 'SAD 1490', 1, 'Baño'),
(7, 'AYC 2001', 1, 'Wifi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `RUT` varchar(9) NOT NULL,
  `Nombre_Empresa` varchar(30) DEFAULT NULL,
  `info_Empresa` varchar(100) DEFAULT NULL,
  `Telefono_Empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`RUT`, `Nombre_Empresa`, `info_Empresa`, `Telefono_Empresa`) VALUES
('123456789', 'Viauy', 'Información Empresa 1', 12345678);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existe`
--

CREATE TABLE `existe` (
  `ID_Horario` int(11) NOT NULL,
  `ID_Reserva` int(11) NOT NULL,
  `Num_Asiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `existe`
--

INSERT INTO `existe` (`ID_Horario`, `ID_Reserva`, `Num_Asiento`) VALUES
(15, 1, 40),
(15, 2, 1),
(15, 3, 24),
(15, 4, 0),
(15, 5, 44),
(15, 6, 4),
(16, 7, 23),
(15, 8, 20),
(16, 9, 47);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea`
--

CREATE TABLE `linea` (
  `ID_Linea` int(1) NOT NULL,
  `Origen_Linea` varchar(50) DEFAULT NULL,
  `Destino_Linea` varchar(50) DEFAULT NULL,
  `Num_Linea` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `linea`
--

INSERT INTO `linea` (`ID_Linea`, `Origen_Linea`, `Destino_Linea`, `Num_Linea`) VALUES
(1, 'Montevideo ', 'Punta del Este', 'V101'),
(2, 'Montevideo', 'Salinas', 'V203'),
(3, 'Montevideo', 'La Floresta', 'V711');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_pago`
--

CREATE TABLE `medio_pago` (
  `ID_Pago` int(11) NOT NULL,
  `ID_Reserva` int(11) DEFAULT NULL,
  `Nombre_Pago` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medio_pago`
--

INSERT INTO `medio_pago` (`ID_Pago`, `ID_Reserva`, `Nombre_Pago`) VALUES
(1, 1, 'Debito'),
(2, 2, 'Debito'),
(3, 3, 'Debito'),
(4, 4, 'Debito'),
(5, 5, 'Credito'),
(6, 6, 'Debito'),
(7, 7, 'Debito'),
(8, 8, 'Efectivo'),
(9, 9, 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `ID_Modulo` int(11) NOT NULL,
  `ID_Rol` int(11) DEFAULT NULL,
  `Nombre_Modulo` varchar(20) DEFAULT NULL,
  `Descripcion_Modulo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parada`
--

CREATE TABLE `parada` (
  `ID_Parada` int(11) NOT NULL,
  `Nombre_Parada` varchar(65) DEFAULT NULL,
  `Comentario_Parada` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parada`
--

INSERT INTO `parada` (`ID_Parada`, `Nombre_Parada`, `Comentario_Parada`) VALUES
(1, 'Terminal Tres Cruces', '11800 Montevideo, Departamento de Montevideo'),
(2, 'Ciudad de la Costa', 'Departamento de Canelones'),
(3, 'Salinas', '15100 Departamento de Canelones'),
(4, 'La Floresta', '15300 Departamento de Canelones'),
(5, 'Jaureguiberry', '15400 Departamento de Canelones'),
(6, 'Ruta 37 y 9', '20300 Departamento de Maldonado'),
(7, 'Punta Ballena', '20000 Departamento de Maldonado'),
(8, 'Terminal de Ómnibus Punta del Este', '20100 Punta del Este, Departamento de Maldonado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro`
--

CREATE TABLE `parametro` (
  `ID_Parametro` int(11) NOT NULL,
  `Nombre_Parametro` varchar(25) DEFAULT NULL,
  `Int_Parametro` int(11) DEFAULT NULL,
  `Varchar_Parametro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parametro`
--

INSERT INTO `parametro` (`ID_Parametro`, `Nombre_Parametro`, `Int_Parametro`, `Varchar_Parametro`) VALUES
(1, 'Calle', 3, 'Valor1'),
(2, 'Ruta', 4, 'Valor2'),
(3, 'Ciudad', 6, 'Valor3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece_a`
--

CREATE TABLE `pertenece_a` (
  `ID_Horario` int(11) NOT NULL,
  `ID_Linea` int(11) DEFAULT NULL,
  `Matricula_Unidad` varchar(8) DEFAULT NULL,
  `Hora_Salida` time DEFAULT NULL,
  `Sentido` varchar(10) DEFAULT NULL,
  `Dia_Salida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pertenece_a`
--

INSERT INTO `pertenece_a` (`ID_Horario`, `ID_Linea`, `Matricula_Unidad`, `Hora_Salida`, `Sentido`, `Dia_Salida`) VALUES
(15, 1, 'MWE 4453', '12:00:00', 'Ida', '2023-11-14'),
(16, 1, 'MWE 4453', '11:00:00', 'Vuelta', '2023-11-14'),
(17, 1, 'MWE 4453', '20:00:00', 'Vuelta', '2023-11-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `ID_Reserva` int(11) NOT NULL,
  `Horario_Reserva` time DEFAULT NULL,
  `Fecha_Reserva` date DEFAULT NULL,
  `Estado_Reserva` varchar(10) DEFAULT NULL,
  `Correo_Usu` varchar(40) DEFAULT NULL,
  `Costo_Reserva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`ID_Reserva`, `Horario_Reserva`, `Fecha_Reserva`, `Estado_Reserva`, `Correo_Usu`, `Costo_Reserva`) VALUES
(1, '10:15:19', '2023-11-12', 'Pendiente', 'joaquinbrusco1@gmail.com', 1324),
(2, '10:16:58', '2023-11-12', 'Confirmado', 'joaquinbrusco1@gmail.com', 1324),
(3, '21:23:57', '2023-11-12', 'Confirmado', 'joaquinbrusco1@gmail.com', 1324),
(4, '21:26:33', '2023-11-12', 'Cancelado', 'joaquinbrusco12@gmail.com', 1324),
(5, '14:07:14', '2023-11-13', 'Confirmado', 'joaquinbrusco1@gmail.com', 1324),
(6, '06:10:25', '2023-11-14', 'Confirmado', 'joaquinbrusco12@gmail.com', 2648),
(7, '06:10:25', '2023-11-14', 'Cancelado', 'joaquinbrusco12@gmail.com', 2648),
(8, '13:44:38', '2023-11-14', 'Pendiente', 'joaquinbrusco12@gmail.com', 2648),
(9, '13:44:38', '2023-11-14', 'Pendiente', 'joaquinbrusco12@gmail.com', 2448);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` int(11) NOT NULL,
  `Usu_Rol` tinyint(1) DEFAULT NULL,
  `Admin_Rol` tinyint(1) DEFAULT NULL,
  `Super_Rol` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_Rol`, `Usu_Rol`, `Admin_Rol`, `Super_Rol`) VALUES
(1, 1, 0, 0),
(2, 0, 1, 0),
(3, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramo`
--

CREATE TABLE `tramo` (
  `ID_Tra` int(11) NOT NULL,
  `Tipo_Tra` int(11) DEFAULT NULL,
  `Tiempo_Tra` varchar(20) DEFAULT NULL,
  `Distancia_Tra` decimal(10,0) DEFAULT NULL,
  `Comentario_Tra` varchar(65) DEFAULT NULL,
  `ID_Parada_Origen` int(11) NOT NULL,
  `ID_Parada_Destino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tramo`
--

INSERT INTO `tramo` (`ID_Tra`, `Tipo_Tra`, `Tiempo_Tra`, `Distancia_Tra`, `Comentario_Tra`, `ID_Parada_Origen`, `ID_Parada_Destino`) VALUES
(1, 1, '10', 12, 'xd', 1, 2),
(2, 1, '20', 123, 's', 2, 3),
(3, 2, '50', 42, 'wda', 3, 8),
(4, NULL, NULL, NULL, NULL, 1, 2),
(5, NULL, NULL, NULL, NULL, 2, 4),
(6, NULL, NULL, NULL, NULL, 4, 8),
(7, NULL, NULL, NULL, NULL, 1, 2),
(8, NULL, NULL, NULL, NULL, 2, 5),
(9, NULL, NULL, NULL, NULL, 5, 8),
(10, NULL, NULL, NULL, NULL, 1, 2),
(11, NULL, NULL, NULL, NULL, 2, 5),
(12, NULL, NULL, NULL, NULL, 5, 8),
(13, NULL, 'Array', 0, 'Array', 1, 2),
(14, NULL, 'Array', 0, 'Array', 2, 5),
(15, NULL, 'Array', 0, 'Array', 5, 8),
(16, 2, '132', 3122321, 'es', 1, 2),
(17, 1, '234', 2234, 'NuevocCOM', 2, 5),
(18, 1, '343', 23423, 'cOMENTER', 5, 8),
(19, 3, '132', 3122321, 'es', 1, 2),
(20, 1, '234', 2234, 'NuevocCOM', 2, 5),
(21, 1, '343', 23423, 'cOMENTER', 5, 8),
(22, 1, '1221', 121, 'asdas', 1, 2),
(23, 1, '13112', 12321, 'weewq', 2, 3),
(24, 1, '1221', 121, 'asdas', 1, 2),
(25, 1, '1221', 121, 'asdas', 1, 2),
(26, 1, '13112', 12321, 'weewq', 2, 3),
(27, 2, '1221', 121, 'asdas', 1, 2),
(28, 1, '12', 121, 'asdas', 1, 2),
(29, 1, '132', 3122321, 'es', 1, 2),
(30, 1, '234', 2234, 'NuevocCOM', 2, 5),
(31, 1, '3', 23423, 'cOMENTER', 5, 8),
(32, 1, '132', 312232, 'es', 1, 2),
(33, 1, '234', 2234, 'NuevocCOM', 2, 5),
(34, 1, '3', 23423, 'cOMENTER', 5, 8),
(35, 1, '132', 3122, 'es', 1, 2),
(36, 1, '234', 2234, 'NuevocCOM', 2, 5),
(37, 1, '3', 23423, 'cOMENTER', 5, 8),
(38, 1, '132', 3122, 'e', 1, 2),
(39, 1, '234', 2234, 'NuevocCOM', 2, 5),
(40, 1, '3', 23423, 'cOMENTER', 5, 8),
(41, 1, '132', 3122, 'e', 1, 2),
(42, 1, '234', 2234, 'NuevocCOM', 2, 5),
(43, 1, '132', 3122, 'e', 1, 2),
(44, 2, '234', 2234, 'NuevocCOM', 2, 5),
(45, 1, '132', 3122, 'e', 1, 2),
(46, 3, '234', 2234, 'NuevocCOM', 2, 5),
(47, 1, '132', 3122, 'e', 1, 2),
(48, 3, '234', 2234, 'NuevocCOM', 2, 5),
(49, 2, '13', 31, 'Comentario', 1, 2),
(50, 2, '233', 300, 'Com', 2, 8),
(51, 2, '12', 32, 'Xd', 1, 2),
(52, 2, '32', 23, 'Ds', 2, 3),
(53, 2, '12', 32, 'Xd', 1, 2),
(54, 2, '32', 23, 'Ds', 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trayecto`
--

CREATE TABLE `trayecto` (
  `ID_Linea` int(11) NOT NULL,
  `ID_Tra` int(11) NOT NULL,
  `Orden_Tramo` int(11) NOT NULL,
  `ID_Trayecto` int(11) NOT NULL,
  `ID_Parada_Origen` int(11) NOT NULL,
  `ID_Parada_Destino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trayecto`
--

INSERT INTO `trayecto` (`ID_Linea`, `ID_Tra`, `Orden_Tramo`, `ID_Trayecto`, `ID_Parada_Origen`, `ID_Parada_Destino`) VALUES
(1, 49, 1, 1, 1, 2),
(1, 50, 2, 2, 2, 8),
(2, 51, 1, 3, 1, 2),
(2, 52, 2, 4, 2, 3),
(3, 53, 1, 5, 1, 2),
(3, 54, 2, 6, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `Matricula_Unidad` varchar(8) NOT NULL,
  `Num_Unidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`Matricula_Unidad`, `Num_Unidad`) VALUES
('AYC 2001', 1),
('FRJ 1934', 2),
('LEP 1932', 3),
('MWE 4453', 4),
('MYW 2002', 5),
('SAD 1490', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usu` int(11) NOT NULL,
  `ID_Rol` int(11) DEFAULT NULL,
  `Nombre_Usu` varchar(40) DEFAULT NULL,
  `Contraseña_Usu` varchar(70) DEFAULT NULL,
  `Correo_Usu` varchar(40) DEFAULT NULL,
  `Telefono_Usu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usu`, `ID_Rol`, `Nombre_Usu`, `Contraseña_Usu`, `Correo_Usu`, `Telefono_Usu`) VALUES
(1, 3, 'Joaquin Brusco', '$2y$10$KYaqvdpNpnM07bdAV8qNA.jBF5v03jzBZmgFBNr4wzunblb1GXU4y', 'joaquinbrusco1@gmail.com', '092348384'),
(2, 1, 'Viauy Contact', '$2y$10$Zn31vAV10o8YFV4e8bg.j.eZJPB9UO3azglBLmNoVMftiVuCBGdD6', 'viauycontact@gmail.com', '092348384'),
(4, 1, 'Pou Rtryrt', '$2y$10$a0y3J5aj8jYMB6VoeGmdfOzM8/X5NTXVvMEWco6tF8qqh3kKpZBfm', 'joaquinbrusco12@gmail.com', '567777777'),
(5, 1, 'Joaquin Brusc', '$2y$10$AxD3.KeGrqn3uFZNukcJPeb7OSIxndGH99qB0qAGbTHin/aHNcNx2', 'joaquinbrusco123@gmail.com', '094166276');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD UNIQUE KEY `Matricula_NumAsiento` (`Matricula_Unidad`,`Num_Asiento`),
  ADD KEY `Matricula_Unidad` (`Matricula_Unidad`);

--
-- Indices de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  ADD PRIMARY KEY (`ID_Carac`),
  ADD KEY `Matricula_Unidad` (`Matricula_Unidad`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`RUT`);

--
-- Indices de la tabla `existe`
--
ALTER TABLE `existe`
  ADD PRIMARY KEY (`ID_Reserva`) USING BTREE,
  ADD KEY `Num_Asiento` (`Num_Asiento`),
  ADD KEY `ID_Horario` (`ID_Horario`) USING BTREE;

--
-- Indices de la tabla `linea`
--
ALTER TABLE `linea`
  ADD PRIMARY KEY (`ID_Linea`);

--
-- Indices de la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  ADD PRIMARY KEY (`ID_Pago`),
  ADD KEY `ID_Reserva` (`ID_Reserva`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`ID_Modulo`),
  ADD KEY `ID_Rol` (`ID_Rol`);

--
-- Indices de la tabla `parada`
--
ALTER TABLE `parada`
  ADD PRIMARY KEY (`ID_Parada`);

--
-- Indices de la tabla `parametro`
--
ALTER TABLE `parametro`
  ADD PRIMARY KEY (`ID_Parametro`);

--
-- Indices de la tabla `pertenece_a`
--
ALTER TABLE `pertenece_a`
  ADD PRIMARY KEY (`ID_Horario`),
  ADD KEY `ID_Linea` (`ID_Linea`),
  ADD KEY `Matricula_Unidad` (`Matricula_Unidad`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`ID_Reserva`),
  ADD KEY `FK_correo_reserva` (`Correo_Usu`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- Indices de la tabla `tramo`
--
ALTER TABLE `tramo`
  ADD PRIMARY KEY (`ID_Tra`),
  ADD KEY `fk_parametro` (`Tipo_Tra`),
  ADD KEY `ID_Parada_Origen` (`ID_Parada_Origen`),
  ADD KEY `ID_Parada_Destino` (`ID_Parada_Destino`);

--
-- Indices de la tabla `trayecto`
--
ALTER TABLE `trayecto`
  ADD PRIMARY KEY (`ID_Trayecto`),
  ADD KEY `ID_Linea` (`ID_Linea`),
  ADD KEY `ID_Tra` (`ID_Tra`) USING BTREE,
  ADD KEY `fk_parada_origen_trayecto` (`ID_Parada_Origen`),
  ADD KEY `fk_parada_destino_trayecto` (`ID_Parada_Destino`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`Matricula_Unidad`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usu`),
  ADD KEY `ID_Rol` (`ID_Rol`),
  ADD KEY `idx_Correo_Usu` (`Correo_Usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  MODIFY `ID_Carac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `ID_Modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `parada`
--
ALTER TABLE `parada`
  MODIFY `ID_Parada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `parametro`
--
ALTER TABLE `parametro`
  MODIFY `ID_Parametro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD CONSTRAINT `asiento_ibfk_1` FOREIGN KEY (`Matricula_Unidad`) REFERENCES `unidad` (`Matricula_Unidad`);

--
-- Filtros para la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  ADD CONSTRAINT `caracteristica_ibfk_1` FOREIGN KEY (`Matricula_Unidad`) REFERENCES `unidad` (`Matricula_Unidad`);

--
-- Filtros para la tabla `existe`
--
ALTER TABLE `existe`
  ADD CONSTRAINT `existe_ibfk_1` FOREIGN KEY (`ID_Horario`) REFERENCES `pertenece_a` (`ID_Horario`),
  ADD CONSTRAINT `existe_ibfk_5` FOREIGN KEY (`ID_Reserva`) REFERENCES `reserva` (`ID_Reserva`);

--
-- Filtros para la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  ADD CONSTRAINT `medio_pago_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `reserva` (`ID_Reserva`);

--
-- Filtros para la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD CONSTRAINT `modulo_ibfk_1` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`);

--
-- Filtros para la tabla `pertenece_a`
--
ALTER TABLE `pertenece_a`
  ADD CONSTRAINT `pertenece_a_ibfk_2` FOREIGN KEY (`ID_Linea`) REFERENCES `linea` (`ID_Linea`),
  ADD CONSTRAINT `pertenece_a_ibfk_3` FOREIGN KEY (`Matricula_Unidad`) REFERENCES `unidad` (`Matricula_Unidad`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FK_correo_reserva` FOREIGN KEY (`Correo_Usu`) REFERENCES `usuario` (`Correo_Usu`);

--
-- Filtros para la tabla `tramo`
--
ALTER TABLE `tramo`
  ADD CONSTRAINT `fk_parametro` FOREIGN KEY (`Tipo_Tra`) REFERENCES `parametro` (`ID_Parametro`),
  ADD CONSTRAINT `tramo_ibfk_1` FOREIGN KEY (`ID_Parada_Origen`) REFERENCES `parada` (`ID_Parada`),
  ADD CONSTRAINT `tramo_ibfk_2` FOREIGN KEY (`ID_Parada_Destino`) REFERENCES `parada` (`ID_Parada`);

--
-- Filtros para la tabla `trayecto`
--
ALTER TABLE `trayecto`
  ADD CONSTRAINT `fk_parada_destino_trayecto` FOREIGN KEY (`ID_Parada_Destino`) REFERENCES `tramo` (`ID_Parada_Destino`),
  ADD CONSTRAINT `fk_parada_origen_trayecto` FOREIGN KEY (`ID_Parada_Origen`) REFERENCES `tramo` (`ID_Parada_Origen`),
  ADD CONSTRAINT `trayecto_ibfk_1` FOREIGN KEY (`ID_Tra`) REFERENCES `tramo` (`ID_Tra`),
  ADD CONSTRAINT `trayecto_ibfk_2` FOREIGN KEY (`ID_Linea`) REFERENCES `linea` (`ID_Linea`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;" > /home/pablo/uexproyecto.sql

echo "Carpetas Creadas"
sleep 2
clear
# Lista de paquetes a instalar
paquetes=(
  "linuxlogo"
  "iptables"
  "iptables-persistent"
  "net-tools"
  "bat"
  "apache2"
  "base-files"
  "base-passwd"
  "bash"
  "bat"
  "cloud-init"
  "dash"
  "diffutils"
  "findutils"
  "firewalld"
  "grep"
  "gzip"
  "hostname"
  "init"
  "libapache2-mod-php"
  "libdebconfclient0"
  "libfwupdplugin1"
  "libsodium23"
  "libxmlb1"
  "linux-generic"
  "lsscsi"
  "mysql-server"
  "ncurses-base"
  "ncurses-bin"
  "net-tools"
  "nmap"
  "openssh-server"
  "php"
  "php-mysql"
  "python3-nacl"
  "python3-pymacaroons"
  "rclone"
  "rsync"
  "sysvinit-utils"
  "tree"
  "ubuntu-minimal"
  "ubuntu-server"
  "ubuntu-standard"
  "x11-xserver-utils"
)

for paquete in "${paquetes[@]}"
do
  sudo apt-get install -y "$paquete"
done
sleep 2

echo "Paquetes instalados"
sleep 2
clear

#Instalador de alias
echo "Creando alias"
echo 'alias scriptsV2="cd /usr/local/sbin/scriptsV2"' >> ~/.bashrc
echo 'alias mysql="cd /var/mysql"' >> ~/.bashrc
echo 'alias backups="cd /var/backups/uex-user"' >> ~/.bashrc
echo 'alias Exmenu="bash /usr/local/sbin/scriptsV2/CETOS.sh"' >> ~/.bashrc
echo "linuxlogo" >> ~/.bashrc
#ESTO SIEMPRE ABAJO DEL TODO DEL BASHRC !!!NO TOCAR!!!!
echo 'export PATH="$PATH:/usr/local/sbin/scriptsV2/*"' >> ~/.bashrc

source ~/.bashrc

sleep 2

echo "Alias creados"
sleep 1

#Instalador del SSH
echo "Instalando y configurando el servicio SSH"
sudo apt-get install openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh
echo 'Port 22' >> /etc/ssh/sshd_config
echo 'Port 30005' >> /etc/ssh/sshd_config
sleep 3
sudo systemctl restart ssh
echo "Servicio SSH instalado"
sleep 1
clear

#Instalador del MYSQL
echo "Instalando y configurando el servicio MYSQL"
sudo apt-get install mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql
sleep 3
echo "Servicio MYSQL instalado"
sleep 1
clear

#Importador rclone
rclone_config="[Respaldos]
type = drive
client_secret = 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
scope = drive
root_folder_id = 1z5ZHeB5dXDjy0jYto86-kvhwfYBpL4mM
token = {\"access_token\":\"ya29.a0AfB_byC85cMxavs9QBej2d1WYeTw8k6WcC0c12LtnwR0T2VyYpiMljpmMvhhDkghv2OJtDHc-WsMhrk_bLVaJts_QcNsD_-zZkUHPTZE2n2d7ECsOXTgNoUm21_hvX4dzVh7Rafx4o8vwXyGfs9b2C1BGNyTu3bUsi_qaCgYKAd8SARESFQGOcNnCP6vq7idyHT8IIKsbr8v>
client_id = 824810420848-1a26jdr7kmmrqkrsq0c5iqa2iuceii4l.apps.googleusercontent.com"

# Verificar si el archivo de configuración de rclone existe
if [ ! -f ~/.config/rclone/rclone.conf ]; then
    echo "Configurando Rclone"
    sleep 2
    mkdir -p ~/.config/rclone/  # Crear el directorio si no existe
    touch ~/.config/rclone/rclone.conf  # Crear el archivo si no existe

    # Agregar la configuración de rclone al archivo
    echo "$rclone_config" >> ~/.config/rclone/rclone.conf

    echo "Rclone configurado"
    sleep 2
else
    echo "El archivo de configuración de Rclone ya existe."
fi







#Lo de la web

clear
echo "Creando la base de datos"

MYSQL_ROOT_PASSWORD="123"  # Añade esta línea para definir la contraseña de root

SQL_FILE=$(mktemp)
cat <<EOF > "$SQL_FILE"
CREATE USER 'AdminDB'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'AdminDB'@'localhost' WITH GRANT OPTION;
CREATE DATABASE uexproyecto;
USE uexproyecto;
SOURCE /home/pablo/uexproyecto.sql;
GRANT SELECT, SHOW VIEW, RELOAD, REPLICATION CLIENT, EVENT, TRIGGER ON *.* TO 'AdminDB'@'localhost';
FLUSH PRIVILEGES;
EOF

mysql -u root -p"$MYSQL_ROOT_PASSWORD" < "$SQL_FILE"

rm "$SQL_FILE"


# La página web
echo "Preparando el sitio Web"
sudo ufw allow in "Apache"
sleep 2
sudo rm -r /var/www/html/
sudo git clone https://github.com/JBrusco27/ProyectoUEX2.0 /var/www/ProyectoUEX2.0
sudo mv /var/www/ProyectoUEX2.0 /var/www/html
sleep 2
sudo chown -R $USER:$USER /var/www/html

sudo a2ensite ProyectoUEX2.0
sudo a2dissite 000-default
sudo systemctl reload apache2

sleep 1
echo "Página web en línea"
sleep 2


#Importador de  Scripts desde github
echo "Importando Scripts"
sleep 1
git clone --depth 1 https://github.com/JeskeTheNigg4Boy/Uex-Server /usr/local/sbin/scriptsV2
echo "Scripts importados"
sleep 2
clear
source ~/.bashrc
echo "Servidor perparado para la utilizacion, porfavor introdusca el siquiente comando para refrescar el PATH source ~/.bashrc y utilize el alias Exmenu para poder utilizar CETOS"
sleep 2

sudo echo "# Generated by iptables-save v1.8.4 on Wed Nov 1 16:32:38 2023 *filter
*filter

:INPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [25:3484]

#para que no nos hagab ping
-A INPUT -p icmp -j DROP

#Trafico limitado en mysql
-A INPUT -p tcp --dport 3306 -m connlimit --connlimit-above 2 -j DROP
-A INPUT -p tcp --dport 3306 -j ACCEPT

#Trafico de drive
-A INPUT -p tcp --dport 1821 -j ACCEPT
#Trafico limitado de SSH
-A INPUT -p tcp --dport 30005 -m conntrack --ctstate NEW -m connlimit --connlimit-above 2 -j DROP
-A INPUT -p tcp --dport 30005 -j ACCEPT

-A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 443 -j ACCEPT

:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [25:3484]
COMMIT" > /etc/iptables/rules.v4

echo "Aplicando ajustes de red"
sudo echo "# Configuracion de la red
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      addresses:
        - 192.168.1.70/24
      gateway4: 192.168.1.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]" > /etc/netplan/00-installer-config.yaml
sudo systemctl restart networking
systemctl restart iptables
netplan apply

sudo echo "<?php

\$servername = \"localhost:3306\"; // Dirección del servidor de la base de datos
\$username = \"adminDB\"; // Nombre de usuario de la base de datos
\$password = \"password\"; // Contraseña de la base de datos
\$dbname = \"uexproyecto\"; // Nombre de la base de datos
echo "Adaptando Base De Datos"
\$conn = new PDO(\"mysql:host=\$servername;dbname=\$dbname\", \$username, \$password);
\$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>" > /var/www/ProyectoUEX2.0/Backend/connect.php

sudo chmod +x /usr/local/sbin/scriptsV2/*
