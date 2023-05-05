-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-05-2023 a las 18:40:05
-- Versión del servidor: 10.5.19-MariaDB-0+deb11u2
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elite_dangerous_database`
--
CREATE DATABASE IF NOT EXISTS `elite_dangerous_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `elite_dangerous_database`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stars`
--
-- Creación: 05-05-2023 a las 13:16:28
-- Última actualización: 05-05-2023 a las 16:08:30
--

DROP TABLE IF EXISTS `stars`;
CREATE TABLE IF NOT EXISTS `stars` (
  `system` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) DEFAULT NULL,
  `mainstar` varchar(50) DEFAULT NULL,
  `spectralclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stations`
--
-- Creación: 05-05-2023 a las 16:25:30
-- Última actualización: 05-05-2023 a las 16:28:49
--

DROP TABLE IF EXISTS `stations`;
CREATE TABLE IF NOT EXISTS `stations` (
  `system` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `distance` decimal(50,15) DEFAULT NULL,
  `allegiance` varchar(50) DEFAULT NULL,
  `government` varchar(50) DEFAULT NULL,
  `economy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`system`,`NAME`),
  KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `systems`
--
-- Creación: 05-05-2023 a las 13:06:24
-- Última actualización: 05-05-2023 a las 15:57:07
--

DROP TABLE IF EXISTS `systems`;
CREATE TABLE IF NOT EXISTS `systems` (
  `name` varchar(50) NOT NULL,
  `allegiance` varchar(50) DEFAULT NULL,
  `government` varchar(50) DEFAULT NULL,
  `economy` varchar(50) DEFAULT NULL,
  `security` enum('High','Medium','Low','Anarchy') DEFAULT NULL,
  `population` bigint(15) DEFAULT NULL,
  `faction` text DEFAULT 'NULL',
  PRIMARY KEY (`name`) USING BTREE,
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
