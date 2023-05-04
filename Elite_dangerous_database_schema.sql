-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.11.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para elite_dangerous_database
DROP DATABASE IF EXISTS `elite_dangerous_database`;
CREATE DATABASE IF NOT EXISTS `elite_dangerous_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `elite_dangerous_database`;

-- Volcando estructura para tabla elite_dangerous_database.stars
DROP TABLE IF EXISTS `stars`;
CREATE TABLE IF NOT EXISTS `stars` (
  `system` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `class` varchar(50) DEFAULT NULL,
  `spectralclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla elite_dangerous_database.stations
DROP TABLE IF EXISTS `stations`;
CREATE TABLE IF NOT EXISTS `stations` (
  `system` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `faction` varchar(100) DEFAULT NULL,
  `distance` decimal(50,7) DEFAULT NULL,
  `economy` varchar(50) DEFAULT NULL,
  `allegiance` varchar(50) DEFAULT NULL,
  `government` varchar(50) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`system`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla elite_dangerous_database.systems
DROP TABLE IF EXISTS `systems`;
CREATE TABLE IF NOT EXISTS `systems` (
  `name` varchar(50) NOT NULL,
  `allegiance` varchar(50) DEFAULT NULL,
  `government` varchar(50) DEFAULT NULL,
  `primaryEconomy` varchar(50) DEFAULT NULL,
  `secondaryEconomy` varchar(50) DEFAULT NULL,
  `security` enum('High','Medium','Low','Anarchy') DEFAULT NULL,
  `population` bigint(15) DEFAULT NULL,
  `controllingFaction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
