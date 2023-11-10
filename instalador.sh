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
echo "Carpetas Creadas"
sleep 2
clear
# Lista de paquetes a instalar
paquetes=(
  "iptables"
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

#Crear la base a "mano"
echo "Creando la base de datos"
sleep 2

echo "-- phpMyAdmin SQL Dump" > uexproyecto.sql
echo "-- version 5.2.1" >> uexproyecto.sql
echo "-- https://www.phpmyadmin.net/" >> uexproyecto.sql
echo "--" >> uexproyecto.sql
echo "-- Servidor: 127.0.0.1:3306" >> uexproyecto.sql
echo "-- Tiempo de generaciÃ³n: 25-09-2023 a las 03:01:43" >> uexproyecto.sql
echo "-- VersiÃ³n del servidor: 8.1.0" >> uexproyecto.sql
echo "-- VersiÃ³n de PHP: 7.4.3-4ubuntu2.19" >> uexproyecto.sql
echo "" >> uexproyecto.sql

# Copiar el contenido del coddigo SQL
cat << 'EOF' >> uexproyecto.sql
-- Copia y pega aquÃ­ el contenido del cÃ³digo SQL
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generaciÃ³n: 25-09-2023 a las 03:01:43
-- VersiÃ³n del servidor: 8.1.0
-- VersiÃ³n de PHP: 7.4.3-4ubuntu2.19

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
  `Num_Asiento` int NOT NULL,
  `Matricula_Unidad` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `ID_Carac` int NOT NULL,
  `Matricula_Unidad` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Valor_Carac` tinyint(1) DEFAULT NULL,
  `Nombre_Carac` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caracteristica`
--

INSERT INTO `caracteristica` (`ID_Carac`, `Matricula_Unidad`, `Valor_Carac`, `Nombre_Carac`) VALUES
(1, 'AYC 2001', 1, 'BaÃ±o'),
(2, 'FRJ 1934', 1, 'Aire acondicionado'),
(3, 'LEP 1932', 1, 'BaÃ±o'),
(4, 'MWE 4453', 1, 'Wifi'),
(5, 'MYW 2002', 1, 'Aire acondicionado'),
(6, 'SAD 1490', 1, 'BaÃ±o'),
(7, 'AYC 2001', 1, 'Wifi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `RUT` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `Nombre_Empresa` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `info_Empresa` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono_Empresa` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`RUT`, `Nombre_Empresa`, `info_Empresa`, `Telefono_Empresa`) VALUES
('123456789', 'Viauy', 'InformaciÃ³n Empresa 1', 12345678);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existe`
--

CREATE TABLE `existe` (
  `ID_Horario` int NOT NULL,
  `ID_Reserva` int NOT NULL,
  `Num_Asiento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `existe`
--

INSERT INTO `existe` (`ID_Horario`, `ID_Reserva`, `Num_Asiento`) VALUES
(5, 1, 44),
(5, 2, 43),
(5, 3, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea`
--

CREATE TABLE `linea` (
  `ID_Linea` int NOT NULL,
  `Origen_Linea` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Destino_Linea` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Num_Linea` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `linea`
--

INSERT INTO `linea` (`ID_Linea`, `Origen_Linea`, `Destino_Linea`, `Num_Linea`) VALUES
(1, 'Montevideo ', 'Punta del Este', 'V101'),
(2, 'Montevideo ', 'Colonia del Sacramento', 'V302'),
(3, 'Montevideo', 'Salto', 'V415'),
(4, 'Montevideo', 'TacuarembÃ³', 'V520'),
(5, 'Montevideo', 'Rocha', 'V633'),
(6, 'Montevideo', 'Rivera', 'V744'),
(7, 'Montevideo', 'Mercedes', 'V857'),
(8, 'Montevideo', 'Durazno', 'V968'),
(9, 'Montevideo', 'PaysandÃº', 'V1079'),
(10, 'Montevideo', 'Treinta y Tres', 'V1210');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medio_pago`
--

CREATE TABLE `medio_pago` (
  `ID_Pago` int NOT NULL,
  `ID_Reserva` int DEFAULT NULL,
  `Nombre_Pago` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `ID_Modulo` int NOT NULL,
  `ID_Rol` int DEFAULT NULL,
  `Nombre_Modulo` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Descripcion_Modulo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parada`
--

CREATE TABLE `parada` (
  `ID_Parada` int NOT NULL,
  `Nombre_Parada` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Comentario_Parada` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
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
(8, 'Terminal de Ã“mnibus Punta del Este', '20100 Punta del Este, Departamento de Maldonado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro`
--

CREATE TABLE `parametro` (
  `ID_Parametro` int NOT NULL,
  `Nombre_Parametro` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Int_Parametro` int DEFAULT NULL,
  `Varchar_Parametro` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `ID_Horario` int NOT NULL,
  `ID_Linea` int DEFAULT NULL,
  `Matricula_Unidad` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Hora_Salida` time DEFAULT NULL,
  `Sentido` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Dia_Salida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pertenece_a`
--

INSERT INTO `pertenece_a` (`ID_Horario`, `ID_Linea`, `Matricula_Unidad`, `Hora_Salida`, `Sentido`, `Dia_Salida`) VALUES
(5, 1, 'MWE 4453', '13:00:00', 'Ida', '2023-09-25'),
(6, 1, 'SAD 1490', '16:00:00', 'Vuelta', '2023-09-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `ID_Reserva` int NOT NULL,
  `Horario_Reserva` time DEFAULT NULL,
  `Fecha_Reserva` date DEFAULT NULL,
  `Estado_Reserva` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Correo_Usu` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`ID_Reserva`, `Horario_Reserva`, `Fecha_Reserva`, `Estado_Reserva`, `Correo_Usu`) VALUES
(1, '16:34:47', '2023-09-25', 'Pendiente', 'joaquinbrusco1@gmail.com'),
(2, '17:45:42', '2023-09-25', 'Pendiente', 'joaquinbrusco1@gmail.com'),
(3, '17:45:42', '2023-09-25', 'Pendiente', 'joaquinbrusco1@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` int NOT NULL,
  `Usu_Rol` tinyint(1) DEFAULT NULL,
  `Admin_Rol` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_Rol`, `Usu_Rol`, `Admin_Rol`) VALUES
(1, 1, 0),
(2, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramo`
--

CREATE TABLE `tramo` (
  `ID_Tra` int NOT NULL,
  `Tipo_Tra` int DEFAULT NULL,
  `Tiempo_Tra` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Distancia_Tra` decimal(10,0) DEFAULT NULL,
  `Comentario_Tra` varchar(65) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ID_Parada_Origen` int NOT NULL,
  `ID_Parada_Destino` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tramo`
--

INSERT INTO `tramo` (`ID_Tra`, `Tipo_Tra`, `Tiempo_Tra`, `Distancia_Tra`, `Comentario_Tra`, `ID_Parada_Origen`, `ID_Parada_Destino`) VALUES
(1, 3, '30', 18, NULL, 1, 2),
(2, 2, '23', 17, NULL, 2, 3),
(3, 2, '17', 16, NULL, 3, 4),
(4, 2, '19', 26, NULL, 4, 5),
(5, 1, '13', 18, NULL, 5, 6),
(6, 1, '19', 24, NULL, 6, 7),
(7, 2, '18', 14, NULL, 7, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trayecto`
--

CREATE TABLE `trayecto` (
  `ID_Linea` int NOT NULL,
  `ID_Tra` int NOT NULL,
  `Orden_Tramo` int NOT NULL,
  `ID_Trayecto` int NOT NULL,
  `ID_Parada_Origen` int NOT NULL,
  `ID_Parada_Destino` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trayecto`
--

INSERT INTO `trayecto` (`ID_Linea`, `ID_Tra`, `Orden_Tramo`, `ID_Trayecto`, `ID_Parada_Origen`, `ID_Parada_Destino`) VALUES
(1, 1, 1, 1, 1, 2),
(1, 2, 2, 2, 2, 3),
(1, 3, 3, 3, 3, 4),
(1, 4, 4, 4, 4, 5),
(1, 5, 5, 5, 5, 6),
(1, 6, 6, 6, 6, 7),
(1, 7, 7, 7, 7, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `Matricula_Unidad` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `Num_Unidad` int DEFAULT NULL
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
  `ID_Usu` int NOT NULL,
  `ID_Rol` int DEFAULT NULL,
  `Nombre_Usu` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ContraseÃ±a_Usu` varchar(70) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Correo_Usu` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono_Usu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usu`, `ID_Rol`, `Nombre_Usu`, `ContraseÃ±a_Usu`, `Correo_Usu`, `Telefono_Usu`) VALUES
(1, 1, 'Joaquin Brusco', '$2y$10$KYaqvdpNpnM07bdAV8qNA.jBF5v03jzBZmgFBNr4wzunblb1GXU4y', 'joaquinbrusco1@gmail.com', 941662780);

--
-- Ãndices para tablas volcadas
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
  MODIFY `ID_Carac` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `linea`
--
ALTER TABLE `linea`
  MODIFY `ID_Linea` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `medio_pago`
--
ALTER TABLE `medio_pago`
  MODIFY `ID_Pago` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `ID_Modulo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `parada`
--
ALTER TABLE `parada`
  MODIFY `ID_Parada` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `parametro`
--
ALTER TABLE `parametro`
  MODIFY `ID_Parametro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pertenece_a`
--
ALTER TABLE `pertenece_a`
  MODIFY `ID_Horario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_Rol` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tramo`
--
ALTER TABLE `tramo`
  MODIFY `ID_Tra` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `trayecto`
--
ALTER TABLE `trayecto`
  MODIFY `ID_Trayecto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Fin del contenido del cÃ³digo SQL
EOF








#La base para la web
# Asigna la contraseña de root
MYSQL_ROOT_PASSWORD="123"
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



#Ajusted de red
echo "Aplicnado agustes de red"
sudo echo "# This is the network config written by 'subiquity'
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      addresses:
        - 192.168.1.69/24
      gateway4: 192.168.1.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]" > /etc/netplan/00-installer-config.yaml
sudo netplan apply
echo "Red Configurada"
sleep 2

#La pagina web
echo "Preparando el sitio Web"
sleep 2
sudo git clone https://github.com/JBrusco27/ProyectoUEX2.0 /var/www/
sudo chown -R $USER:$USER /var/www/ProyectoUEX2.0
sudo touch /etc/apache2/sites-available/ProyectoUEX2.0.conf
echo "<VirtualHost *:80>
    ServerName ProyectoUEX2.0
    ServerAlias www.ProyectoUEX2.0
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/ProyectoUEX2.0
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
" > /etc/apache2/sites-available/ProyectoUEX2.0.conf
sudo a2ensite ProyectoUEX2.0
sudo a2dissite 000-default
sudo systemctl reload apache2
sudo echo "<?php

\$servername = \"localhost:3306\"; // Dirección del servidor de la base de datos
\$username = \"adminDB\"; // Nombre de usuario de la base de datos
\$password = \"password\"; // Contraseña de la base de datos
\$dbname = \"uexproyecto\"; // Nombre de la base de datos
echo "Adaptando Base De Datos"
\$conn = new PDO(\"mysql:host=\$servername;dbname=\$dbname\", \$username, \$password);
\$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>" > /var/www/ProyectoUEX2.0/Backend/connect.php
sleep 1
echo "Pagina Web en linea"
sleep 2

#Instalador de alias
echo "Creando alias"
echo 'alias scriptsV2="cd /usr/local/sbin/scriptsV2"' >> ~/.bashrc
echo 'alias mysql="cd /var/mysql"' >> ~/.bashrc
echo 'alias backups="cd /var/backups/uex-user"' >> ~/.bashrc
echo 'alias Exmenu="bash /usr/local/sbin/scriptsV2/CETOS.sh"' >> ~/.bashrc

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
echo 'Port 30005' >> /etc/ssh/sshd_config
sleep 3
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
#Iptables tener al usar esto ya no anda el github
echo "Configurando IPTABLES"
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
sleep 1
clear
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
