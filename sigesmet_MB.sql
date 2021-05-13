-- --------------------------------------------------------
-- Host:                         mboper.cuknxnysfure.us-east-2.rds.amazonaws.com
-- Versión del servidor:         10.4.13-MariaDB-log - Source distribution
-- SO del servidor:              Linux
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para sigesmet_MB
CREATE DATABASE IF NOT EXISTS `sigesmet_MB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `sigesmet_MB`;

-- Volcando estructura para tabla sigesmet_MB.Acumulados
CREATE TABLE IF NOT EXISTS `Acumulados` (
  `idAcum` int(11) NOT NULL,
  `acumulado` double DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idAcum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Acumulados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Acumulados` DISABLE KEYS */;
/*!40000 ALTER TABLE `Acumulados` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Acumulados_Distancias
CREATE TABLE IF NOT EXISTS `Acumulados_Distancias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idAcum` int(11) DEFAULT NULL,
  `AcumuladoIdAcum` int(11) DEFAULT NULL,
  `idDistancias` int(11) DEFAULT NULL,
  `DistanciaIdDistancia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idAcum` (`idAcum`),
  KEY `AcumuladoIdAcum` (`AcumuladoIdAcum`),
  KEY `idDistancias` (`idDistancias`),
  KEY `DistanciaIdDistancia` (`DistanciaIdDistancia`),
  CONSTRAINT `Acumulados_Distancias_ibfk_1` FOREIGN KEY (`idAcum`) REFERENCES `Acumulados` (`idAcum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Acumulados_Distancias_ibfk_2` FOREIGN KEY (`AcumuladoIdAcum`) REFERENCES `Acumulados` (`idAcum`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Acumulados_Distancias_ibfk_3` FOREIGN KEY (`idDistancias`) REFERENCES `Distancias` (`idDistancia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Acumulados_Distancias_ibfk_4` FOREIGN KEY (`DistanciaIdDistancia`) REFERENCES `Distancias` (`idDistancia`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Acumulados_Distancias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Acumulados_Distancias` DISABLE KEYS */;
/*!40000 ALTER TABLE `Acumulados_Distancias` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Acumulado_Estacions
CREATE TABLE IF NOT EXISTS `Acumulado_Estacions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idAcum` int(11) DEFAULT NULL,
  `AcumuladoIdAcum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idAcum` (`idAcum`),
  KEY `AcumuladoIdAcum` (`AcumuladoIdAcum`),
  CONSTRAINT `Acumulado_Estacions_ibfk_1` FOREIGN KEY (`idAcum`) REFERENCES `Acumulados` (`idAcum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Acumulado_Estacions_ibfk_2` FOREIGN KEY (`AcumuladoIdAcum`) REFERENCES `Acumulados` (`idAcum`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Acumulado_Estacions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Acumulado_Estacions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Acumulado_Estacions` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Afectacions
CREATE TABLE IF NOT EXISTS `Afectacions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kilometraje` double DEFAULT NULL,
  `reg_cum_inc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reg_cum_inc` (`reg_cum_inc`),
  CONSTRAINT `Afectacions_ibfk_1` FOREIGN KEY (`reg_cum_inc`) REFERENCES `Cumplimiento_Incumplimientos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Afectacions: ~56 rows (aproximadamente)
/*!40000 ALTER TABLE `Afectacions` DISABLE KEYS */;
INSERT INTO `Afectacions` (`id`, `kilometraje`, `reg_cum_inc`) VALUES
	(1, 39.7, 3),
	(2, 26.64, 4),
	(3, 70.2, 5),
	(4, 15.17, 6),
	(5, 23.74, 11),
	(6, 17.28, 12),
	(7, 105.3, 25),
	(8, 45.24, 26),
	(9, 79.4, 27),
	(10, 25.92, 28),
	(19, 39.7, 66),
	(20, 158.8, 67),
	(21, 35.1, 72),
	(22, 45.54, 73),
	(23, 238.2, 75),
	(24, 80.08, 76),
	(25, 210.6, 91),
	(26, 66.71, 92),
	(29, 140.4, 115),
	(30, 12.52, 116),
	(33, 158.8, 119),
	(34, 10.91, 120),
	(36, 317.6, 122),
	(37, 4.79, 123),
	(38, 238.2, 124),
	(39, 15.9, 125),
	(40, 7.82, 126),
	(41, 15.9, 127),
	(42, 238.2, 133),
	(43, 80.08, 134),
	(44, 5.36, 140),
	(45, 17.28, 141),
	(46, 140.4, 143),
	(47, 140.4, 144),
	(48, 15.36, 145),
	(49, 140.4, 146),
	(50, 25.04, 147),
	(51, 238.2, 148),
	(52, 238.2, 149),
	(53, 2.59, 151),
	(54, 65.28, 152),
	(56, 2.59, 154),
	(57, 36.96, 155),
	(58, 2.59, 159),
	(59, 65.28, 160),
	(88, 140.4, 202),
	(89, 27.42, 203),
	(90, 18.69, 204),
	(96, 317.6, 212),
	(97, 238.2, 216),
	(98, 317.6, 217),
	(99, 107.5, 218),
	(100, 79.4, 221);
/*!40000 ALTER TABLE `Afectacions` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Afectados
CREATE TABLE IF NOT EXISTS `Afectados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sexo` tinyint(1) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `fk_evento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_evento` (`fk_evento`),
  CONSTRAINT `Afectados_ibfk_1` FOREIGN KEY (`fk_evento`) REFERENCES `Eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Afectados: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `Afectados` DISABLE KEYS */;
INSERT INTO `Afectados` (`id`, `sexo`, `edad`, `nombre`, `status`, `created`, `fk_evento`) VALUES
	(9, 1, 23, 'ABC', 1, '2020-09-06 22:27:10', NULL),
	(19, 1, 26, 'Javier Sanchez', 1, '2020-09-18 17:20:52', 45),
	(39, 1, 23, 'PANCHO', 1, '2020-11-19 00:01:06', 47),
	(54, 1, 78, 'md', 1, '2020-11-20 19:40:40', 61),
	(55, 1, 26, 'juan', 0, '2020-11-20 22:29:58', 61),
	(56, 1, 26, 'juan', 0, '2020-11-20 22:36:29', 61),
	(57, 1, 26, 'juan', 0, '2020-11-20 22:38:36', 61),
	(58, 0, 34, 'carlos', 1, '2020-11-20 22:43:27', 61),
	(59, 1, 26, 'juan', 0, '2020-11-20 22:50:32', 61),
	(62, 1, 67, 'asd', 1, '2020-11-23 19:59:03', 61),
	(63, 1, 67, 'nany', 1, '2020-11-23 19:59:26', 61),
	(64, 1, 67, 'nany', 1, '2020-11-23 19:59:46', 61),
	(65, 1, 22, 'Ricardo Tapia', 1, '2020-12-01 21:45:21', 62),
	(70, 0, 20, 'Ramon', 1, '2020-12-10 01:31:50', 69),
	(71, 1, 23, 'Alfio Santos', 1, '2020-12-10 02:16:32', 70),
	(77, 1, 45, 'Rodolfo', 1, '2021-01-14 00:13:05', 79);
/*!40000 ALTER TABLE `Afectados` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Colisions
CREATE TABLE IF NOT EXISTS `Colisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interseccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `latitud` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Colisions: ~43 rows (aproximadamente)
/*!40000 ALTER TABLE `Colisions` DISABLE KEYS */;
INSERT INTO `Colisions` (`id`, `sentido`, `motivo`, `interseccion`, `colonia`, `fecha`, `hora`, `longitud`, `latitud`) VALUES
	(34, 'Oeste-Poniente', 'Particular se pasa el semáforo', '100 Metros y Vallejo', 'Colonia Del Valle', '2020-12-10 00:00:00', '12:00:00', NULL, NULL),
	(35, 'Norte-Poniente', 'Unidad de MB choca por hacer maniobras', '100 Metros y Vallejo', 'San Rafael', '2020-11-08 00:00:00', '17:00:00', NULL, NULL),
	(37, 'Oeste-Poniente', 'Unidad de MB choca por hacer maniobras', '20 De Noviembre y El Salvador', 'Centro', '2020-12-10 00:00:00', '12:00:00', NULL, NULL),
	(38, 'Norte-Poniente', 'Alcance del particular contra unidad de MB', '100 Metros y Vallejo', 'San Rafael', '2020-12-10 00:00:00', '01:53:00', NULL, NULL),
	(39, 'Oeste-Poniente', 'MB se pasa el semáforo', '100 Metros y Vallejo', 'Centro', '2020-12-10 00:00:00', '01:54:00', NULL, NULL),
	(40, 'Sur-Norte', 'Unidad de MB choca por hacer maniobras', '5 De Febrero y Zumarraga', 'Colonia Del Valle', '2020-12-10 00:00:00', '01:55:00', NULL, NULL),
	(41, 'Poniente-Norte', 'Alcance del particular contra unidad de MB', 'Antonio Caso y Av. Insurgentes', 'Centro', '2020-12-10 00:00:00', '01:56:00', NULL, NULL),
	(42, 'Sur-Norte', 'Alcance de unidad de MB hacia el particular', 'Antonio Caso y Av. Insurgentes', 'San Rafael', '2020-12-10 00:00:00', '01:57:00', NULL, NULL),
	(44, 'Norte-Poniente', 'Alcance del particular contra unidad de MB', '5 De Febrero y Zumarraga', 'Centro', '2020-12-10 00:00:00', '01:58:00', NULL, NULL),
	(45, 'Norte-Sur', 'Alcance del particular contra unidad de MB', 'Antonio Caso y Av. Insurgentes', 'San Rafael', '2020-12-10 00:00:00', '01:59:00', NULL, NULL),
	(47, 'Norte-Poniente', 'Unidad de MB choca por hacer maniobras', '20 De Noviembre y El Salvador', 'Centro', '2020-12-10 00:00:00', '12:42:00', NULL, NULL),
	(48, 'Sur-Norte', 'MB se pasa el semáforo', 'Antonio Caso y Av. Insurgentes', 'Colonia Del Valle', '2020-12-10 00:00:00', '12:00:00', NULL, NULL),
	(49, 'Sur-Norte', 'Alcance del particular contra unidad de MB', '100 Metros y Vallejo', 'San Rafael', '2020-12-10 00:00:00', '12:45:00', NULL, NULL),
	(50, 'Norte-Poniente', 'Alcance del particular contra unidad de MB', '5 De Febrero y San Juan De Aragón', 'Centro', '2020-11-17 00:00:00', '11:45:00', NULL, NULL),
	(52, 'Norte-Sur', 'Unidad de MB choca por hacer maniobras', '100 Metros y Vallejo', 'San Rafael', '2020-11-17 00:00:00', '09:45:00', NULL, NULL),
	(54, 'Norte-Sur', 'Unidad de MB choca por hacer maniobras', '20 De Noviembre y El Salvador', 'San Rafael', '2020-11-16 00:00:00', '17:03:00', NULL, NULL),
	(56, 'Oeste-Poniente', 'Alcance del particular contra unidad de MB', 'Antonio Caso y Av. Insurgentes', 'Colonia Del Valle', '2020-11-14 00:00:00', '18:10:00', NULL, NULL),
	(57, 'Norte-Poniente', 'Unidad de MB choca por hacer maniobras', '100 Metros y Vallejo', 'San Rafael', '2020-10-09 00:00:00', '18:10:00', NULL, NULL),
	(59, 'Norte-Sur', 'Alcance del particular contra unidad de MB', 'Antonio Caso y Av. Insurgentes', 'Colonia Del Valle', '2020-11-17 00:00:00', '08:55:00', NULL, NULL),
	(60, 'Norte-Sur', 'Corte de circulación de parte del particular (cuando particular invade carril de MB)', '20 De Noviembre y El Salvador', 'Centro', '2020-09-10 00:00:00', '16:00:00', NULL, NULL),
	(61, 'Norte-Sur', 'Corte de circulación de parte del particular (cuando particular invade carril de MB)', '20 De Noviembre y El Salvador', 'Centro', '2020-09-17 00:00:00', '16:00:00', NULL, NULL),
	(62, 'Norte-Sur', 'Particular se pasa el semáforo', '20 De Noviembre y El Salvador', 'Centro', '2020-09-24 00:00:00', '16:00:00', NULL, NULL),
	(63, 'Norte-Sur', 'Particular se pasa el semáforo', '20 De Noviembre y El Salvador', 'Centro', '2020-10-08 00:00:00', '16:00:00', NULL, NULL),
	(64, 'Norte-Sur', 'Unidad de MB choca por hacer maniobras', '20 De Noviembre y El Salvador', 'San Rafael', '2020-12-10 00:00:00', '12:00:00', NULL, NULL),
	(66, 'Norte-Sur', 'Unidad de MB choca por hacer maniobras', '20 De Noviembre y El Salvador', 'San Rafael', '2020-08-31 00:00:00', '19:00:00', NULL, NULL),
	(67, 'Norte-Sur', 'Alcance del particular contra unidad de MB', '5 De Febrero y San Juan De Aragón', 'San Rafael', '2020-08-04 00:00:00', '12:09:00', NULL, NULL),
	(68, 'Norte-Poniente', 'Alcance del particular contra unidad de MB', '20 De Noviembre y El Salvador', 'San Rafael', '2020-12-10 00:00:00', '12:00:00', NULL, NULL),
	(69, 'PTE', 'Choque por cierre de avenida 2', 'Av Reforma', 'Col del valle', '2021-02-01 00:00:00', '10:10:10', NULL, NULL),
	(70, 'PTE', 'Choque por cierre de avenida 2', 'Av Reforma', 'Col del valle', '2021-02-01 00:00:00', '10:10:10', NULL, NULL),
	(71, 'PTE', 'Choque por cierre de avenida 2', 'Av Reforma', 'Col del valle', '2019-02-01 00:00:00', '10:10:10', NULL, NULL),
	(72, 'Norte-Poniente', 'Corte de circulación de parte del particular (cuando particular invade carril de MB)', '20 De Noviembre y El Salvador', 'Centro', '2022-06-10 00:00:00', '12:00:00', NULL, NULL),
	(73, 'Norte-Poniente', 'Corte de circulación de parte del particular (cuando particular invade carril de MB)', '20 De Noviembre y El Salvador', 'Centro', '2020-12-01 00:00:00', '12:50:00', NULL, NULL),
	(74, 'Poniente-Norte', 'MB se pasa el semáforo', '5 De Febrero y San Juan De Aragón', 'Centro', '2019-12-03 00:00:00', '12:00:00', NULL, NULL),
	(75, 'Poniente-Oeste', 'MB se pasa el semáforo', '5 De Febrero y Zumarraga', 'Centro', '2020-12-03 00:00:00', '12:55:00', NULL, NULL),
	(76, 'Norte-Sur', 'Unidad de MB choca por hacer maniobras', '20 De Noviembre y El Salvador', 'San Rafael', '2020-01-02 00:00:00', '12:00:00', NULL, NULL),
	(77, 'Norte-Sur', 'Unidad de MB choca por hacer maniobras', '20 De Noviembre y El Salvador', 'San Rafael', '2020-01-31 00:00:00', '12:00:00', NULL, NULL),
	(78, 'Norte-Sur', 'Corte de circulación de parte del particular (cuando particular invade carril de MB)', '20 De Noviembre y El Salvador', 'San Rafael', '2021-01-10 00:00:00', '12:00:00', NULL, NULL),
	(79, 'Norte-Poniente', 'Unidad de MB choca por hacer maniobras', '100 Metros y Vallejo', 'San Rafael', '2020-12-09 00:00:00', '10:00:00', NULL, NULL),
	(80, 'Norte-Sur', 'Unidad de MB choca por hacer maniobras', '100 Metros y Vallejo', 'San Rafael', '2020-12-08 00:00:00', '13:00:00', NULL, NULL),
	(87, 'Oeste-Poniente', 'Particular se pasa el semáforo', '100 Metros y Vallejo', 'San Rafael', '2021-01-13 00:00:00', '12:00:00', NULL, NULL),
	(88, 'Norte-Sur', 'Corte de circulación de parte del particular (cuando particular invade carril de MB)', '100 Metros y Vallejo', 'San Rafael', '2020-12-10 00:00:00', '18:14:00', NULL, NULL),
	(90, 'Norte-Sur', 'Corte de circulación de parte del particular (cuando particular invade carril de MB)', '20 De Noviembre y El Salvador', 'Centro', '2020-12-10 00:00:00', '12:00:00', -99.15245682543932, 19.503495154339944),
	(92, 'Norte-Sur', 'Particular se pasa el semáforo', '20 De Noviembre y El Salvador', 'Centro', '2020-12-16 00:00:00', '09:00:00', -99.14567620105024, 19.492936600292637),
	(93, 'Poniente-Norte', 'Particular se pasa el semáforo', '5 De Febrero y San Juan De Aragón', 'Centro', '2021-04-13 00:00:00', '08:00:00', -99.21448415188186, 19.516614669951537);
/*!40000 ALTER TABLE `Colisions` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Cumplimiento_Incumplimientos
CREATE TABLE IF NOT EXISTS `Cumplimiento_Incumplimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruta_referencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_ida` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_vuelta` int(11) DEFAULT NULL,
  `num_ida` int(11) DEFAULT NULL,
  `num_regreso` int(11) DEFAULT NULL,
  `tramo_desde` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tramo_hasta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kilometraje` double DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idDesincorporacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idDesincorporacion` (`idDesincorporacion`),
  CONSTRAINT `Cumplimiento_Incumplimientos_ibfk_1` FOREIGN KEY (`idDesincorporacion`) REFERENCES `Desincorporacions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Cumplimiento_Incumplimientos: ~114 rows (aproximadamente)
/*!40000 ALTER TABLE `Cumplimiento_Incumplimientos` DISABLE KEYS */;
INSERT INTO `Cumplimiento_Incumplimientos` (`id`, `ruta_referencia`, `ref_ida`, `num_vuelta`, `num_ida`, `num_regreso`, `tramo_desde`, `tramo_hasta`, `kilometraje`, `tipo`, `idDesincorporacion`) VALUES
	(1, 'A1', 'I. Verdes - Dr. Gálvez', 1, 0, 0, '-', '-', 39.7, 'Incumplido', NULL),
	(2, 'A30', 'IDV2-Dr-GVZ', 2, 2, 2, '-', '-', 1000000, 'Incumplido', NULL),
	(3, 'A1', 'I. Verdes - Dr. Gálvez', 1, 0, 0, '-', '-', 39.7, 'Incumplido', 3),
	(4, 'A1', 'Dr. Gálvez - I. Verdes', 3, 3, 3, 'Reforma', 'Olivo', 26.64, 'Apoyo', 3),
	(5, 'A20', 'Insurgentes - La Joya', 2, 0, 0, '-', '-', 70.2, 'Incumplido', 4),
	(6, 'A1', 'I. Verdes - Dr. Gálvez', 1, 3, 3, 'Dptvo. 18 Mzo.', 'Francia', 15.17, 'Apoyo', 4),
	(7, 'A1', 'Dr. Gálvez - I. Verdes', 3, 3, 3, 'Dptvo. 18 Mzo.', 'Nápoles', 35.28, 'Apoyo', 5),
	(8, 'A20', 'La Joya - Insurgentes', 1, 1, 1, 'Insurgentes', 'Nápoles', 3.79, 'Apoyo', 6),
	(9, 'A1', 'I. Verdes - Dr. Gálvez', 2, 1, 1, '-', '-', 79.4, 'Incumplido', 7),
	(10, 'A20', 'La Joya - Insurgentes', 1, 1, 1, 'Chilpancingo', 'Nuevo León', 0.52, 'Apoyo', 8),
	(11, 'A1', 'I. Verdes - Dr. Gálvez', 2, 2, 2, 'Reforma', 'Dr. Gálvez', 23.74, 'Incumplido', 9),
	(12, 'A1', 'I. Verdes - Dr. Gálvez', 2, 2, 2, 'I. Verdes', 'Reforma', 17.28, 'Apoyo', 9),
	(14, 'L41', 'Inicio - Destino', 2, 0, 0, '-', '-', 70.2, 'Incumplido', 11),
	(15, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'I. Verdes', 'José María Velasco', 16.63, 'Incumplido', 12),
	(25, 'A20', 'Insurgentes - La Joya', 3, 0, 0, '-', '-', 105.3, 'Incumplido', 20),
	(26, 'A1', 'Dr. Gálvez - I. Verdes', 4, 4, 4, 'Dr. Gálvez', 'Revolución', 45.24, 'Apoyo', 20),
	(27, 'A1', 'I. Verdes - Dr. Gálvez', 2, 0, 0, '-', '-', 79.4, 'Incumplido', 21),
	(28, 'A1', 'I. Verdes - Dr. Gálvez', 3, 3, 3, 'I. Verdes', 'Reforma', 25.92, 'Apoyo', 21),
	(37, 'A1', 'I. Verdes - Dr. Gálvez', 5, 2, 2, '-', '-', 198.5, 'Incumplido', 28),
	(41, 'A20', 'La Joya - Insurgentes', 1, 0, 0, '-', '-', 35.1, 'Incumplido', 32),
	(42, 'A1', 'I. Verdes - Dr. Gálvez', 1, 0, 0, '-', '-', 39.7, 'Incumplido', 33),
	(44, 'A1', 'I. Verdes - Dr. Gálvez', 8, 4, 4, '-', '-', 317.6, 'Apoyo', 35),
	(46, 'A1', 'I. Verdes - Dr. Gálvez', 2, 2, 2, '-', '-', 79.4, 'Apoyo', 37),
	(47, 'A1', 'Dr. Gálvez - I. Verdes', 1, 0, 0, '-', '-', 39.7, 'Incumplido', 38),
	(49, 'A1', 'Dr. Gálvez - I. Verdes', 1, 1, 1, '-', '-', 39.7, 'Apoyo', 40),
	(52, 'A1', 'I. Verdes - Dr. Gálvez', 1, 0, 0, '-', '-', 39.7, 'Apoyo', 42),
	(58, 'A1', 'I. Verdes - Dr. Gálvez', 2, 0, 0, 'Buenavista', 'Revolución', 1.44, 'Apoyo', 47),
	(59, 'A20', 'Insurgentes - La Joya', 0, 0, 0, 'Francia', 'Villa Olimpica', 6.65, 'Incumplido', 48),
	(61, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Manuel Glz.', 'Altavista', 11.97, 'Incumplido', 50),
	(63, 'A1', 'Dr. Gálvez - I. Verdes', 0, 0, 0, 'Euzkaro', 'Sonora', 8.58, 'Incumplido', 52),
	(64, 'A1', 'I. Verdes - Dr. Gálvez', 6, 3, 3, '-', '-', 238.2, 'Incumplido', 53),
	(65, 'A20', 'Insurgentes - La Joya', 9, 1, 5, '-', '-', 315.9, 'Apoyo', 54),
	(66, 'A1', 'I. Verdes - Dr. Gálvez', 1, 0, 0, '-', '-', 39.7, 'Incumplido', 55),
	(67, 'A1', 'I. Verdes - Dr. Gálvez', 4, 4, 4, '-', '-', 158.8, 'Apoyo', 55),
	(68, 'A20', 'Insurgentes - La Joya', 3, 0, 0, '-', '-', 105.3, 'Incumplido', 56),
	(69, 'A1', 'I. Verdes - Dr. Gálvez', 1, 1, 1, '-', '-', 39.7, 'Apoyo', 57),
	(70, 'A20', 'La Joya - Insurgentes', 3, 3, 3, '-', '-', 105.3, 'Apoyo', 58),
	(71, 'A20', 'Insurgentes - La Joya', 5, 0, 0, '-', '-', 175.5, 'Incumplido', 59),
	(72, 'A20', 'Insurgentes - La Joya', 1, 0, 0, '-', '-', 35.1, 'Incumplido', 60),
	(73, 'A20', 'Insurgentes - La Joya', 3, 3, 3, 'Insurgentes', 'Félix Cuevas', 45.54, 'Apoyo', 60),
	(75, 'A1', 'I. Verdes - Dr. Gálvez', 6, 3, 3, '-', '-', 238.2, 'Incumplido', 62),
	(76, 'A1', 'I. Verdes - Dr. Gálvez', 8, 4, 4, 'El Chopo', 'Olivo', 80.08, 'Apoyo', 62),
	(79, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Euzkaro', 'Teatro Insurgentes', 6.05, 'Incumplido', 65),
	(80, 'A1', 'I. Verdes - Dr. Gálvez', 4, 2, 2, '-', '-', 158.8, 'Incumplido', 66),
	(83, 'A1', 'Dr. Gálvez - I. Verdes', 0, 0, 0, 'Manuel Glz.', 'Francia', 11.19, 'Apoyo', 69),
	(87, 'A20', 'La Joya - Insurgentes', 1, 1, 1, 'Chilpancingo', 'Poliforum', 1.48, 'Incumplido', 73),
	(88, 'A20', 'La Joya - Insurgentes', 0, 0, 0, 'Chilpancingo', 'Poliforum', 1.48, 'Incumplido', 74),
	(90, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'El Chopo', 'Cd. de los Deportes', 6.9, 'Apoyo', 76),
	(91, 'A20', 'Insurgentes - La Joya', 6, 3, 3, '-', '-', 210.6, 'Incumplido', 77),
	(92, 'A20', 'Insurgentes - La Joya', 7, 3, 3, 'Nápoles', 'Perisur', 66.71, 'Apoyo', 77),
	(93, 'A1', 'I. Verdes - Dr. Gálvez', 9, 6, 3, '-', '-', 357.3, 'Apoyo', 78),
	(95, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Revolución', 'Francia', 9.23, 'Apoyo', 80),
	(104, 'A1', 'I. Verdes - Dr. Gálvez', 8, 4, 4, '-', '-', 317.6, 'Apoyo', 94),
	(105, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Circuito', 'José María Velasco', 11.61, 'Apoyo', 95),
	(107, 'A20', 'Insurgentes - La Joya', 0, 0, 0, 'Álvaro Obregón', 'Fuentes Brotantes', 15.07, 'Incumplido', 97),
	(108, 'A1', 'I. Verdes - Dr. Gálvez', 2, 1, 1, '-', '-', 79.4, 'Apoyo', 98),
	(109, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Insurgentes', 'La Bombilla', 8.61, 'Apoyo', 99),
	(110, 'A1', 'I. Verdes - Dr. Gálvez', 6, 3, 3, '-', '-', 238.2, 'Apoyo', 100),
	(115, 'A20', 'Insurgentes - La Joya', 4, 2, 2, '-', '-', 140.4, 'Incumplido', 105),
	(116, 'A20', 'Insurgentes - La Joya', 4, 2, 2, 'Sonora', 'Col. del Valle', 12.52, 'Apoyo', 105),
	(119, 'A1', 'I. Verdes - Dr. Gálvez', 4, 2, 2, '-', '-', 158.8, 'Incumplido', 108),
	(120, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'I. Verdes', 'Sonora', 10.91, 'Apoyo', 108),
	(122, 'A1', 'I. Verdes - Dr. Gálvez', 8, 4, 4, '-', '-', 317.6, 'Incumplido', 110),
	(123, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Nuevo León', 'Francia', 4.79, 'Apoyo', 110),
	(124, 'A1', 'Dr. Gálvez - I. Verdes', 6, 2, 2, '-', '-', 238.2, 'Incumplido', 111),
	(125, 'A1', 'Dr. Gálvez - I. Verdes', 6, 3, 3, 'Félix Cuevas', 'Altavista', 15.9, 'Apoyo', 111),
	(126, 'A1', 'Dr. Gálvez - I. Verdes', 0, 0, 0, 'Hamburgo', 'Francia', 7.82, 'Incumplido', 112),
	(127, 'A1', 'Dr. Gálvez - I. Verdes', 6, 3, 3, 'Félix Cuevas', 'Altavista', 15.9, 'Apoyo', 112),
	(128, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'San Simón', 'Altavista', 12.42, 'Apoyo', 113),
	(130, 'A20', 'Insurgentes - La Joya', 6, 3, 3, '-', '-', 210.6, 'Apoyo', 115),
	(131, 'A1', 'I. Verdes - Dr. Gálvez', 6, 2, 2, '-', '-', 238.2, 'Apoyo', 116),
	(133, 'A1', 'I. Verdes - Dr. Gálvez', 6, 3, 3, '-', '-', 238.2, 'Incumplido', 118),
	(134, 'A1', 'I. Verdes - Dr. Gálvez', 8, 4, 4, 'El Chopo', 'Olivo', 80.08, 'Apoyo', 118),
	(135, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Plaza de la República', 'Durango', 1.91, 'Apoyo', 119),
	(137, 'A1', 'I. Verdes - Dr. Gálvez', 2, 2, 2, '-', '-', 79.4, 'Apoyo', 121),
	(138, 'A20', 'Insurgentes - La Joya', 1, 0, 0, '-', '-', 35.1, 'Incumplido', 122),
	(140, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Hamburgo', 'Parque Hundido', 5.36, 'Incumplido', 124),
	(141, 'A1', 'I. Verdes - Dr. Gálvez', 2, 2, 2, 'I. Verdes', 'Reforma', 17.28, 'Apoyo', 124),
	(143, 'A20', 'Insurgentes - La Joya', 4, 2, 2, '-', '-', 140.4, 'Incumplido', 126),
	(144, 'A20', 'Insurgentes - La Joya', 4, 2, 2, '-', '-', 140.4, 'Incumplido', 127),
	(145, 'A20', 'Insurgentes - La Joya', 4, 2, 2, 'Durango', 'Col. del Valle', 15.36, 'Apoyo', 127),
	(146, 'A20', 'Insurgentes - La Joya', 4, 2, 2, '-', '-', 140.4, 'Incumplido', 128),
	(147, 'A20', 'Insurgentes - La Joya', 8, 4, 4, 'Sonora', 'Col. del Valle', 25.04, 'Apoyo', 128),
	(148, 'A1', 'I. Verdes - Dr. Gálvez', 6, 3, 3, '-', '-', 238.2, 'Incumplido', 129),
	(149, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'La Raza', 'Sonora', 6.73, 'Incumplido', 130),
	(150, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Euzkaro', 'Insurgentes', 12.59, 'Apoyo', 131),
	(151, 'A20', 'Insurgentes - La Joya', 0, 0, 0, 'Col. del Valle', 'José María Velasco', 2.59, 'Incumplido', 132),
	(152, 'A20', 'Insurgentes - La Joya', 6, 3, 3, 'Nápoles', 'Corregidora', 65.28, 'Apoyo', 132),
	(154, 'A20', 'Insurgentes - La Joya', 0, 0, 0, 'Col. del Valle', 'José María Velasco', 2.59, 'Incumplido', 134),
	(155, 'A20', 'Insurgentes - La Joya', 6, 3, 3, 'La Bombilla', 'Corregidora', 36.96, 'Apoyo', 134),
	(156, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Dr. Gálvez', 'Altavista', 1.16, 'Incumplido', 135),
	(158, 'A1', 'I. Verdes - Dr. Gálvez', 2, 1, 0, '-', '-', 79.4, 'Incumplido', 137),
	(159, 'A20', 'Insurgentes - La Joya', 0, 0, 0, 'Col. del Valle', 'José María Velasco', 2.59, 'Incumplido', 138),
	(160, 'A20', 'Insurgentes - La Joya', 6, 3, 3, 'Nápoles', 'Corregidora', 65.28, 'Apoyo', 138),
	(161, 'A1', 'Inicio - Destino', 1, 1, 1, '-', '-', 39.7, 'Incumplido', 139),
	(175, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'El Chopo', 'Campeche', 3.89, 'Apoyo', 150),
	(176, 'A1', 'I. Verdes - Dr. Gálvez', 1, 1, 1, '-', '-', 39.7, 'Incumplido', 151),
	(188, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Dptvo. 18 Mzo.', 'Hamburgo', 7.45, 'Incumplido', 162),
	(190, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Buenavista', 'Chilpancingo', 4.63, 'Incumplido', 164),
	(202, 'A20', 'Insurgentes - La Joya', 12, 6, 6, '-', '-', 421.2, 'Incumplido', 174),
	(203, 'A20', 'Insurgentes - La Joya', 6, 3, 3, 'Durango', 'La Joya', 102.72, 'Apoyo', 174),
	(204, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'Dptvo. 18 Mzo.', 'Col. del Valle', 12.22, 'Incumplido', 175),
	(211, 'A1', 'I. Verdes - Dr. Gálvez', 8, 4, 4, 'Buenavista', 'Dr. Gálvez', 107.76, 'Apoyo', 175),
	(212, 'A1', 'I. Verdes - Dr. Gálvez', 8, 4, 4, '-', '-', 317.6, 'Incumplido', 180),
	(213, 'A1', 'I. Verdes - Dr. Gálvez', 8, 4, 4, 'Revolución', 'Nuevo León', 35.52, 'Apoyo', 180),
	(214, 'A20', 'Insurgentes - La Joya', 20, 10, 10, '-', '-', 702, 'Apoyo', 181),
	(215, 'A20', 'Insurgentes - La Joya', 2, 1, 1, '-', '-', 70.2, 'Apoyo', 182),
	(216, 'A1', 'I. Verdes - Dr. Gálvez', 6, 3, 3, '-', '-', 238.2, 'Incumplido', 183),
	(217, 'A1', 'I. Verdes - Dr. Gálvez', 12, 6, 6, '-', '-', 476.4, 'Incumplido', 184),
	(218, 'A1', 'I. Verdes - Dr. Gálvez', 10, 5, 5, 'Manuel Glz.', 'José María Velasco', 107.5, 'Apoyo', 184),
	(219, 'A1', 'I. Verdes - Dr. Gálvez', 2, 2, 1, '-', '-', 79.4, 'Incumplido', 185),
	(220, 'A1', 'I. Verdes - Dr. Gálvez', 2, 1, 1, '-', '-', 79.4, 'Apoyo', 186),
	(221, 'A1', 'I. Verdes - Dr. Gálvez', 2, 2, 2, '-', '-', 79.4, 'Incumplido', 187),
	(234, 'A1', 'I. Verdes - Dr. Gálvez', 0, 0, 0, 'La Raza', 'José María Velasco', 12.45, 'Incumplido', 198),
	(235, 'A20', 'La Joya - Insurgentes', 2, 2, 2, '-', '-', 70.2, 'Incumplido', 199);
/*!40000 ALTER TABLE `Cumplimiento_Incumplimientos` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.DatosAmbulancia
CREATE TABLE IF NOT EXISTS `DatosAmbulancia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tiempoLLegada` time DEFAULT NULL,
  `tiempoRespuesta` time DEFAULT NULL,
  `ambulancia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecoPlaca` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paramedico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnostico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `fk_afectado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_afectado` (`fk_afectado`),
  CONSTRAINT `DatosAmbulancia_ibfk_1` FOREIGN KEY (`fk_afectado`) REFERENCES `Afectados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.DatosAmbulancia: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `DatosAmbulancia` DISABLE KEYS */;
INSERT INTO `DatosAmbulancia` (`id`, `tiempoLLegada`, `tiempoRespuesta`, `ambulancia`, `ecoPlaca`, `paramedico`, `diagnostico`, `created`, `fk_afectado`) VALUES
	(10, '08:30:00', '12:45:00', 'AMBULANCIA 1', 'QWERTY1234', 'RODRIGO', 'MUERTE CEREBRAL', '2020-09-06 21:11:58', NULL),
	(11, '08:30:00', '01:10:00', 'AMBUL', 'QWERTY1234', 'PARA', 'MUERTE', '2020-09-07 00:28:33', NULL),
	(18, '12:00:00', '30:00:00', 'Cruz Roja', 'Eco67', 'Juan', 'Contusion', '2020-09-18 17:21:52', 19),
	(20, '12:00:00', '00:00:00', 'ad', 'asd', 'asd', 'asd', '2020-11-17 22:13:53', NULL),
	(21, '10:10:10', '10:10:10', 'asd', 'qwer', 'polo', 'sadkh', '2020-11-20 19:18:27', NULL),
	(26, '12:00:00', '00:00:00', 'kjhkj', 'ewriuwy', 'iweuryiu', 'ninguno', '2020-11-20 19:39:59', NULL),
	(27, '12:00:00', '00:00:00', 'dsf', 'sdf', 'sdf', 'sdf', '2020-11-20 19:44:02', NULL),
	(28, '12:00:00', '00:00:00', 'asd', 'asd', 'asd', 'asd', '2020-11-20 19:46:53', NULL),
	(30, '04:15:00', '00:05:00', 'Ambulancia 1', '6382940', 'medico 1', 'Pierna fracturada', '2020-12-01 21:47:00', NULL),
	(32, '13:00:00', '00:30:00', 'cruz roja', '34851-a', 'DYANA', 'susto', '2020-12-09 18:13:12', NULL),
	(34, '16:05:00', '00:05:00', 'cruz roja', 'ie83la32', 'Lola Ayala', 'contusión', '2020-12-10 02:17:33', NULL),
	(35, '12:00:00', '00:10:00', 'ambulancia1', 'HD83HF9', 'Sergio', 'Pie fracturado', '2020-12-10 02:46:08', NULL),
	(36, '03:40:00', '00:10:00', 'Ambulancia1', '2245515', 'Paramedico1', 'Pata rota', '2021-01-08 21:40:45', NULL),
	(37, '05:45:00', '00:10:00', 'ambulancia1', '2382JOP', 'paramedico1', 'diagnostico1', '2021-01-08 23:46:16', NULL),
	(39, '18:00:00', '00:05:00', 'ambulancia1', '66790', 'para1', 'diag1', '2021-01-14 00:14:16', NULL),
	(40, '13:10:00', '00:10:00', 'CRuzRoja', '346-ym-32', 'María Rodríguez', 'Fractura expuesta de tibia y peroné', '2021-01-29 00:45:42', NULL);
/*!40000 ALTER TABLE `DatosAmbulancia` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.DatosAutomovils
CREATE TABLE IF NOT EXISTS `DatosAutomovils` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sexo_contuctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submarca` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_colision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_colision` (`fk_colision`),
  CONSTRAINT `DatosAutomovils_ibfk_1` FOREIGN KEY (`fk_colision`) REFERENCES `Colisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.DatosAutomovils: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `DatosAutomovils` DISABLE KEYS */;
INSERT INTO `DatosAutomovils` (`id`, `sexo_contuctor`, `marca`, `submarca`, `color`, `placa`, `fk_colision`) VALUES
	(17, 'Masculino', 'Nissan', 'Versa', 'Empresa Operadora', '123-ANR', 39),
	(19, 'Masculino', 'Toyota', 'Versa', 'Empresa Operadora', '786-hmu', 56),
	(20, 'Masculino', 'Nissan', 'Versa', 'Empresa Operadora', '183-myh', 57),
	(22, 'Masculino', 'VW', 'Vento', 'Blanco', '176-xyq', 57),
	(25, 'Masculino', 'Nissan', 'Versa', 'Azul', '123-rwe', 59),
	(26, 'Masculino', 'Toyota', 'Corolla', 'Empresa Operadora', '786-uio', 56),
	(27, 'Masculino', 'Toyota', 'Versa', 'Empresa Operadora', '102874', 68),
	(28, 'Masculino', 'Nissan', 'Versa', 'Empresa Operadora', '123-ywñ', 73),
	(30, 'Femenino', 'Nissan', 'Versa', 'Empresa Operadora', '339-141', 77),
	(32, 'Femenino', 'Toyota', 'Corolla', 'Azul', '593-738', 77),
	(33, 'Masculino', 'VW', 'Vento', 'Blanco', '839-309', 77),
	(37, 'Femenino', 'Toyota', 'Versa', 'Empresa Operadora', 'hd35', 80),
	(45, 'Masculino', 'Nissan', 'Versa', 'Empresa Operadora', '987-nyo', 80);
/*!40000 ALTER TABLE `DatosAutomovils` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.DatosSeguroColisions
CREATE TABLE IF NOT EXISTS `DatosSeguroColisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_seguro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_seguro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comentarios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.DatosSeguroColisions: ~39 rows (aproximadamente)
/*!40000 ALTER TABLE `DatosSeguroColisions` DISABLE KEYS */;
INSERT INTO `DatosSeguroColisions` (`id`, `nombre_seguro`, `tipo_seguro`, `paga`, `comentarios`) VALUES
	(1, 'QUALITAS', 'Particular', 'Empresa operadora', 'por sus medios paga 4E'),
	(2, 'ffrff', 'dfef', 'ferf', 'fefrfe'),
	(8, 'cbda', 'db', 'bdeg', 'dfbe'),
	(9, 'Mapfre', 'Unidad MB', 'Se da a la fuga el particular', 'sfewef3'),
	(10, 'General de Seguros', 'Particular', 'Se da a la fuga el particular', 'gdbrg'),
	(11, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'sadsadasd'),
	(12, 'Qualitas', 'Unidad MB', 'Empresa Operadora', 'ninguno'),
	(14, 'Mapfre', 'Particular', 'Empresa Operadora', 'uvcuvic'),
	(15, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'asdasdsad'),
	(16, 'Mapfre', 'Particular', 'Cada quién con sus daños', 'jmhcscnmSCCNCBPNP'),
	(17, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'COMENTARIOS'),
	(18, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'cero comentarios'),
	(19, 'General de Seguros', 'Particular', 'Se da a la fuga el particular', 'voló un auto con su rasho láser'),
	(20, 'Mapfre', 'Unidad MB', 'Se da a la fuga el particular', 'fue un cri criminal'),
	(21, 'General de Seguros', 'Unidad MB', 'Empresa Operadora', 'carcacha'),
	(22, 'Mapfre', 'Particular', 'Empresa Operadora', 'segurísimo'),
	(23, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'many manito'),
	(24, 'Qualitas', 'Particular', 'Cada quién con sus daños', 'ho ho hoo ho ho hoo'),
	(26, 'Qualitas', 'Particular', 'Empresa Operadora', 'día lluvioso'),
	(27, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'nada para nadie'),
	(28, 'General de Seguros', 'Particular', 'Cada quién con sus daños', 'ya ya'),
	(29, 'No Arriba', 'Particular', 'Cada quién con sus daños', 'juan el mecánico'),
	(30, 'Qualitas', 'Unidad MB', 'Se da a la fuga el particular', 'agárrenloo que es ratero'),
	(31, 'Qualitas', 'Unidad MB', 'Cada quién con sus daños', 'así se queda'),
	(32, 'Mapfre', 'Particular', 'Cada quién con sus daños', '.'),
	(33, 'Qualitas', 'Unidad MB', 'Empresa Operadora', 'buen trabajjo'),
	(34, 'General de Seguros', 'Unidad MB', 'Cada quién con sus daños', 'con sus mecánicos'),
	(35, 'No Arriba', 'Unidad MB', 'Cada quién con sus daños', 'con sus mecánicos'),
	(36, 'Qualitas', 'Particular', 'Se da a la fuga el particular', 'se echó a correr'),
	(37, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'NINGUNO'),
	(39, 'General de Seguros', 'Unidad MB', 'Se da a la fuga el particular', 'ORTO'),
	(41, 'Mapfre', 'Unidad MB', 'Se da a la fuga el particular', 'ORTO'),
	(43, 'Qualitas', 'Unidad MB', 'Se da a la fuga el particular', 'Se dio a la fuga...'),
	(48, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'NO acepta la colision'),
	(49, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'Comentarios de prueba'),
	(50, 'General de Seguros', 'Particular', 'Cada quién con sus daños', 'Comentario de prueba'),
	(51, 'Mapfre', 'Unidad MB', 'Empresa Operadora', 'ni uno'),
	(52, 'Mapfre', 'Unidad MB', 'Cada quién con sus daños', 'NI UNO SOLO'),
	(53, 'Qualitas', 'Particular', 'Empresa Operadora', 'COMENTARIOASHNW');
/*!40000 ALTER TABLE `DatosSeguroColisions` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.DatosSeguros
CREATE TABLE IF NOT EXISTS `DatosSeguros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horaArribo` time DEFAULT NULL,
  `tiempoRespuesta` time DEFAULT NULL,
  `seguro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corresponde` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombreAjustador` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unidadSeguro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.DatosSeguros: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `DatosSeguros` DISABLE KEYS */;
INSERT INTO `DatosSeguros` (`id`, `horaArribo`, `tiempoRespuesta`, `seguro`, `corresponde`, `nombreAjustador`, `unidadSeguro`, `created`) VALUES
	(2, '07:40:00', '00:50:00', 'IMBURSA', 'EMPRESA OPERADORA', 'ROGELIO DURAN', 'HUNDAY DODGE', '2020-08-28 22:30:21'),
	(4, '00:00:00', '00:00:00', 'GNP', 'EMPRESA OPERADORA', 'FERNANDO MARIO RODRIGUEZ', 'Desconocida', '2020-08-29 00:39:11'),
	(5, '00:00:00', '00:00:00', 'GNP', 'EMPRESA OPERADORA', 'FERNANDO MARIO RODRIGUEZ', 'Desconocida', '2020-08-29 00:40:17'),
	(6, '00:00:00', '00:00:00', 'GNP', 'EMPRESA OPERADORA', 'FERNANDO MARIO RODRIGUEZ', 'Desconocida', '2020-08-29 00:48:54'),
	(7, '00:00:00', '00:00:00', 'GNP', 'EMPRESA OPERADORA', 'KARIM SAUL ORTEGA', 'Desconocida', '2020-08-29 01:09:30'),
	(12, '09:45:00', '12:40:00', 'QUALIAS', 'EMPRESA OPERADORA', 'RODRIGO', 'UNIDAD', '2020-09-06 20:58:44'),
	(13, '08:13:00', '12:56:00', 'IMBURSA', 'EMPRESA OPERADORA', 'RODRIGO', 'IMBURSA', '2020-09-06 21:02:23'),
	(16, '12:00:00', '00:20:00', 'qwerty', 'qwerty', 'qwerty', 'qwerty', '2020-09-11 20:03:11'),
	(17, '12:00:00', '00:00:00', 'dghn', 'hnt', 'nhty', 'nnfg', '2020-09-17 22:57:18'),
	(18, '12:00:00', '00:00:00', 'gg', 'gfg', 'gg', 'gg', '2020-09-17 23:14:57'),
	(19, '12:00:00', '01:00:00', 'mapfre', 'MB', 'Saul', 'ecoseguro', '2020-09-18 17:23:10'),
	(22, '12:00:00', '00:00:00', 'as', 'asd', 'asd', 'asd', '2020-11-19 23:18:23'),
	(24, '12:00:00', '00:00:00', 'asd', 'ad', 'asd', 'asd', '2020-11-20 18:20:58'),
	(26, '04:45:00', '00:30:00', 'seguro 1', 'Vicencio', 'Nicolas Plata', 'unidad 1', '2020-12-01 21:48:03'),
	(27, '14:00:00', '00:10:00', 'huhfytu', 'tuthi', 'juan', 'seguro 2', '2020-12-03 15:44:53'),
	(30, '13:05:00', '00:10:00', 'qualtas', 'Pedro', 'Brenda Nieto', 'coche', '2020-12-09 18:22:08'),
	(31, '12:00:00', '00:00:00', 'Seguro1', 'Nombre1', 'Florinda Mesa', 'Unidad1', '2020-12-10 01:31:23'),
	(32, '16:15:00', '00:15:00', 'mapfre', 'Juanma', 'Yordi Gutiérrez', 'coche', '2020-12-10 02:19:26'),
	(33, '12:00:00', '00:05:00', 'seguro1', 'Giovanni', 'Ivanhova', 'seguro1', '2020-12-10 02:46:39'),
	(34, '12:00:00', '00:00:00', 'seguro 1', 'Juan', 'Bill', 'Unidad1', '2021-01-08 21:41:06'),
	(35, '05:46:00', '00:02:00', 'seguro1', 'Luigi', 'John', 'Unidad1', '2021-01-08 23:46:48'),
	(37, '06:02:00', '00:03:00', 'seguro1', 'Juan', 'Hector', 'unidad1', '2021-01-14 00:15:16'),
	(38, '13:20:00', '00:20:00', 'Qualitas', 'Atropellado', 'Luisa Manjarrez', '89324', '2021-01-29 00:45:38');
/*!40000 ALTER TABLE `DatosSeguros` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Desincorporacions
CREATE TABLE IF NOT EXISTS `Desincorporacions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `linea` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solicita` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `informa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `economico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odometro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credencial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jornada` int(11) DEFAULT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edoFolio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Desincorporacions: ~88 rows (aproximadamente)
/*!40000 ALTER TABLE `Desincorporacions` DISABLE KEYS */;
INSERT INTO `Desincorporacions` (`id`, `fecha`, `hora`, `linea`, `estacion`, `solicita`, `informa`, `empresa`, `economico`, `motivo`, `odometro`, `credencial`, `nombre`, `jornada`, `observaciones`, `tipo`, `edoFolio`) VALUES
	(3, '2020-10-26 00:00:00', '14:45:00', 'Linea 5', 'Estacion 5 LX', 'Mantenimiento E.O', 'ébano 6', 'RTP BI', '2343', 'Motivo 10', '362.39', 'cred3', 'nom3', 4, '', 'Afectación', 'Cerrado sin incorporar'),
	(4, '2020-10-26 00:00:00', '14:45:00', 'Linea 1', 'Estacion 4 L1', 'Operaciones E.O', 'ébano 3', 'CISA', '2313', 'Motivo 4', '962.76', 'cred4', 'nom4', 1, '', 'Afectación', 'Cerrado sin incorporar'),
	(5, '2020-10-26 00:00:00', '14:47:00', 'Linea 2', 'Estacion 7 L2', 'Metrobús mantenimiento', 'ébano 5', 'RECSA BI', '2333', 'Motivo 11', '9937.776', 'cred5', 'nom5', 4, '', 'Apoyo', 'Cerrado sin incorporar'),
	(6, '2020-10-26 00:00:00', '14:48:00', 'Linea 3', 'Estacion 6 LX', 'Mantenimiento E.O', 'arce alfa', 'RTP BI', '2343', 'Motivo 5', '1143.56', 'cred6', 'nom6', 3, '', 'Apoyo', 'Cerrado'),
	(7, '2020-10-27 00:00:00', '16:40:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'ébano 1', 'CISA', '2313', 'Motivo 1', '158.896', 'cred7', 'nom7', 4, '', 'Incumplido', 'Cerrado sin incorporar'),
	(8, '2020-10-27 00:00:00', '16:45:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'ébano 1', 'RTP', '2323', 'Motivo 2', '78.693', 'cred8', 'nom8', 9, '', 'Apoyo', 'Cerrado sin incorporar'),
	(9, '2020-10-27 00:00:00', '16:49:00', 'Linea 1', 'Estacion 2 L1', 'Mantenimiento E.O', 'ébano 1', 'CISA', '2313', 'Motivo 4', '1457.63', 'cred9', 'nom9', 9, '', 'Afectación', 'Cerrado sin incorporar'),
	(11, '2020-10-27 00:00:00', '18:24:00', 'Linea 1', 'Estacion 5 L1', 'Operaciones E.O', 'ébano 5', 'RECSA BI', '2333', 'Motivo 4', '7536.89', 'cred11', 'nom11', 6, '', 'Incumplido', 'Cerrado'),
	(12, '2020-10-27 00:00:00', '18:25:00', 'Linea 2', 'Estacion 4 L2', 'Operaciones E.O', 'ébano 4', 'RTP BI', '2343', 'Baja potencia', '14669.68', 'cred12', 'nom12', 8, '', 'Incumplido', 'Cerrado'),
	(20, '2020-10-27 00:00:00', '18:45:00', 'Linea 2', 'Estacion 6 L2', 'Metrobús mantenimiento', 'ébano 4', 'RECSA BI', '2333', 'Motivo 6', '6893.47', 'cred19', 'nom19', 7, '', 'Afectación', 'Cerrado'),
	(21, '2020-10-28 00:00:00', '11:05:00', 'Linea 2', 'Estacion 7 L2', 'Metrobús mantenimiento', 'ébano 5', 'RTP BI', '2343', 'Motivo 10', '99739.336', 'cred21', 'nom21', 4, '', 'Afectación', 'Cerrado'),
	(28, '2020-10-29 00:00:00', '11:47:00', 'Linea 2', 'Estacion 5 L2', 'Operaciones E.O', 'ébano 5', 'RTP', '2323', 'Motivo 4', '124.457', 'MBCRED', 'Rodrigo', 4, '', 'Incumplido', 'Cerrado'),
	(32, '2020-10-29 00:00:00', '12:30:00', 'Linea 1', 'Estacion 6 L1', 'Metrobús regulación', 'ébano 6', 'RTP BI', '2343', 'Motivo 3', '17834.69', 'cred31', 'nom31', 6, '', 'Incumplido', 'Cerrado sin incorporar'),
	(33, '2020-10-29 00:00:00', '12:30:00', 'Linea 2', 'Estacion 2 L1', 'Operaciones E.O', 'arce alfa', 'CISA', '2313', 'Motivo 1', '17834.69', 'cred33', 'nom33', 2, '', 'Incumplido', 'Cerrado sin incorporar'),
	(35, '2020-10-29 00:00:00', '12:48:00', 'Linea 1', 'Estacion 6 L1', 'Metrobús mantenimiento', 'ébano 6', 'RECSA BI', '2333', 'Motivo 3', '4165.89', 'cred35', 'Fabian', 4, 'UPDATE', 'Apoyo', 'Cerrado sin incorporar'),
	(37, '2020-10-29 00:00:00', '12:53:00', 'Linea 4', 'Estacion 5 LX', 'Operaciones E.O', 'arce alfa', 'CE4-17M BI', '2353', 'Motivo 4', '13.68', 'cred36', 'nom37', 11, '', 'Apoyo', 'Cerrado sin incorporar'),
	(38, '2020-10-29 00:00:00', '12:57:00', 'Linea 2', 'Estacion 4 L2', 'Operaciones E.O', 'ébano 4', 'RTP BI', '2343', 'Motivo 10', '383838.03', 'cred38', 'noom38', 1, '', 'Incumplido', 'Cerrado'),
	(40, '2020-10-29 00:00:00', '13:07:00', 'Linea 1', 'Estacion 1 L1', 'Metrobús mantenimiento', 'ébano 6', 'RTP', '2323', 'Motivo 5', '6597.256', 'credencial40', 'nom40', 5, '', 'Apoyo', 'Cerrado sin incorporar'),
	(42, '2020-10-29 00:00:00', '13:17:00', 'Linea 2', 'Estacion 5 L2', 'Mantenimiento E.O', 'ébano 3', 'CE4-17M BI', '2353', 'Motivo 4', '15.679', 'credencial', 'nombre', 3, '', 'Apoyo', 'Cerrado'),
	(47, '2020-10-29 00:00:00', '13:28:00', 'Linea 3', 'Estacion 1 LX', 'Metrobús regulación', 'ébano 4', 'CISA', '2313', 'Motivo 1', '17689.79', 'credencial47', 'nombre47', 5, '', 'Apoyo', 'Cerrado sin incorporar'),
	(48, '2020-10-29 00:00:00', '15:32:00', 'Linea 7', 'Estacion 6 LX', 'Mantenimiento E.O', 'ébano 4', 'RECSA BI', '2333', 'Motivo 3', '124.457', 'MBCRED', 'Rodrigo', 8, 'TEST', 'Incumplido', 'Cerrado'),
	(50, '2020-11-04 00:00:00', '16:52:00', 'Linea 5', 'Estacion 1 LX', 'Operaciones E.O', 'ébano 1', 'RTP', '2323', 'Llantas', '124.457', 'MBCRED', 'Rodrigo', 10, 'OBSERVACIÓN DE PRUEBA', 'Incumplido', 'Cerrado'),
	(52, '2020-11-05 00:00:00', '09:33:00', 'Linea 3', 'Estacion 2 LX', 'Operaciones E.O', 'ébano 3', 'RECSA BI', '2333', 'Motivo 3', '124.457', 'MBCRED', 'Rodrigo', 2, 'PRUEBA', 'Incumplido', 'Cerrado'),
	(53, '2020-11-05 00:00:00', '16:06:00', 'Linea 2', 'Estacion 4 L2', 'Mantenimiento E.O', 'ébano 1', 'CISA', '2313', 'Motivo 2', '124.457', 'MBCRED', 'Rodrigo', 2, '', 'Incumplido', 'Cerrado sin incorporar'),
	(54, '2020-11-05 00:00:00', '16:11:00', 'Linea 2', 'Estacion 5 L2', 'Mantenimiento E.O', 'ébano 5', 'RTP', '2323', 'Motivo 3', '124.457', 'MBCRED', 'Rodrigo', 5, '', 'Apoyo', 'Cerrado sin incorporar'),
	(55, '2020-11-05 00:00:00', '18:04:00', 'Linea 1', 'Estacion 2 L1', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Motivo 1', '4578.96', 'cred55', 'nom55', 6, '', 'Afectación', 'Cerrado sin incorporar'),
	(56, '2020-11-05 00:00:00', '18:04:00', 'Linea 1', 'Estacion 2 L1', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Motivo 1', '78934.56', 'cred56', 'nom56', 1, 'observacion56', 'Incumplido', 'Cerrado sin incorporar'),
	(57, '2020-11-05 00:00:00', '18:04:00', 'Linea 2', 'Estacion 1 L2', 'Metrobús regulación', 'ébano 2', 'RECSA BI', '2333', 'Motivo 4', '167311.259', 'cred57', 'nom57', 1, 'observacion57', 'Apoyo', 'Cerrado sin incorporar'),
	(58, '2020-11-05 00:00:00', '18:08:00', 'Linea 2', 'Estacion 1 L2', 'Metrobús regulación', 'ébano 2', 'RECSA BI', '2333', 'Motivo 4', '617189.443', 'cred58', 'nom58', 4, 'observacion58', 'Apoyo', 'Cerrado sin incorporar'),
	(59, '2020-11-05 00:00:00', '18:08:00', 'Linea 4', 'Estacion 2 LX', 'Operaciones E.O', 'arce alfa', 'CE4-17M BI', '2353', 'Motivo 7', '617189.443', 'cred59', 'nom59', 14, 'observacion59', 'Incumplido', 'Cerrado sin incorporar'),
	(60, '2020-11-05 00:00:00', '18:10:00', 'Linea 7', 'Estacion 6 LX', 'Metrobús mantenimiento', 'ébano 2', 'RECSA BI', '2333', 'Motivo 13', '645296.447', 'cred60', 'nom60', 9, 'observacion60', 'Afectación', 'Cerrado'),
	(62, '2020-11-08 00:00:00', '19:05:00', 'Linea 2', 'Estacion 4 L2', 'Operaciones E.O', 'ébano 2', 'RTP', '2323', 'Motivo 2', '124.457', 'MBCRED', 'Rodrigo', 3, 'DESINC', 'Afectación', 'Cerrado sin incorporar'),
	(65, '2020-11-12 00:00:00', '10:42:00', 'Linea 3', 'Estacion 2 LX', 'Mantenimiento E.O', 'ébano 2', 'RTP', '2323', 'Motivo 3', '124.457', 'MBCRED', 'Rodrigo', 5, 'PRUEBA 2', 'Incumplido', 'Cerrado sin incorporar'),
	(66, '2020-11-12 00:00:00', '10:56:00', 'Linea 3', 'Estacion 3 LX', 'Mantenimiento E.O', 'ébano 2', 'RECSA BI', '2333', 'Motivo 2', '124.457', 'MBCRED', 'Rodrigo', 3, 'TEST', 'Incumplido', 'Cerrado'),
	(69, '2020-11-12 00:00:00', '16:14:00', 'Linea 2', 'Estacion 2 L2', 'Operaciones E.O', 'ébano 3', 'RECSA BI', '2333', 'Motivo 2', '124.457', 'QWERTY', 'Carlos', 4, 'TEST', 'Apoyo', 'Cerrado'),
	(73, '2020-11-13 00:00:00', '19:00:00', 'Linea 1', 'Estacion 7 L1', 'Operaciones E.O', 'ébano 1', 'RTP', '2323', 'Accidente', '1.36', 'cred1', 'nom1', 4, '', 'Incumplido', 'Cerrado sin incorporar'),
	(74, '2020-11-13 00:00:00', '19:00:00', 'Linea 1', 'Estacion 7 L1', 'Operaciones E.O', 'ébano 1', 'RTP', '2323', 'Accidente', '100', 'cred1', 'nom1', 4, '', 'Incumplido', 'Cerrado sin incorporar'),
	(76, '2020-12-02 00:00:00', '19:15:00', 'Linea 1', 'Estacion 5 L1', 'Metrobús mantenimiento', 'ébano 2', 'CE4-17M BI', '2353', 'Ausencia operador', '124.457', 'MBCRED', 'Rodrigo', 4, 'QWERTY', 'Apoyo', 'Cerrado'),
	(77, '2020-12-02 00:00:00', '19:27:00', 'Linea 2', 'Estacion 3 L2', 'Operaciones E.O', 'ébano 5', 'RECSA BI', '2333', 'Baja potencia', '124.457', 'MBCRED', 'Pepe', 11, 'JHSGDJHGSD', 'Afectación', 'Cerrado'),
	(78, '2020-12-03 00:00:00', '13:59:00', 'Linea 1', 'Estacion 5 L1', 'Operaciones E.O', 'ébano 3', 'CISA', '2313', 'Turbo', '124.457', 'MBCRED', 'Rodrigo', 6, 'jkjkjhkhkh', 'Apoyo', 'Cerrado'),
	(80, '2020-12-03 00:00:00', '18:40:00', 'Linea 1', 'Estacion 7 L1', 'Mantenimiento E.O', 'ébano 1', 'RECSA BI', '2333', 'Letreros', '124.457', 'MBCRED', 'Rodrigo', 3, '', 'Apoyo', 'Cerrado'),
	(94, '2020-12-08 00:00:00', '18:34:00', 'Linea 4', 'Estacion 1 LX', 'Metrobús regulación', 'arce alfa', 'RECSA BI', '2333', 'Calentamiento', '124.457', 'MBCRED', 'Rodrigo', 7, '', 'Apoyo', 'Cerrado'),
	(95, '2020-12-08 00:00:00', '18:34:00', 'Linea 4', 'Estacion 1 LX', 'Metrobús regulación', 'arce alfa', 'RECSA BI', '2333', 'Calentamiento', '124.457', 'MBCRED', 'Rodrigo', 7, '', 'Apoyo', 'Cerrado'),
	(97, '2020-12-08 00:00:00', '18:46:00', 'Linea 1', 'Estacion 1 L1', 'Operaciones E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '124.457', 'MBCRED', 'Rodrigo', 7, '', 'Incumplido', 'Cerrado sin incorporar'),
	(98, '2020-12-08 00:00:00', '18:46:00', 'Linea 1', 'Estacion 1 L1', 'Operaciones E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '124.457', 'MBCRED', 'Rodrigo', 7, '', 'Apoyo', 'Cerrado sin incorporar'),
	(99, '2020-12-08 00:00:00', '18:46:00', 'Linea 1', 'Estacion 1 L1', 'Operaciones E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '124.457', 'MBCRED', 'Rodrigo', 7, '', 'Apoyo', 'Cerrado sin incorporar'),
	(100, '2020-12-08 00:00:00', '19:33:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'RTP', '2323', 'Calentamiento', '124.457', 'MBCRED', 'Rodrigo', 5, '', 'Apoyo', 'Cerrado'),
	(105, '2020-12-09 00:00:00', '14:21:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '12.34', 'MBCRED', 'Rodrigo', 5, 'TEST', 'Afectación', 'Cerrado'),
	(108, '2020-12-09 00:00:00', '14:34:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '993.345', 'MBCRED', 'Rodrigo', 1, '', 'Afectación', 'Cerrado'),
	(110, '2020-12-09 00:00:00', '14:50:00', 'Linea 7', 'Estacion 1 LX', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '567.987', 'MBCRED', 'Rodrigo', 1, '', 'Afectación', 'Cerrado'),
	(111, '2020-12-09 00:00:00', '15:41:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'RTP', '2323', 'Calentamiento', '234.56', 'MBCRED', 'Pepe', 1, '', 'Afectación', 'Cerrado'),
	(112, '2020-12-09 00:00:00', '15:41:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'RTP', '2323', 'Calentamiento', '234.56', 'MBCRED', 'Pepe', 1, '', 'Afectación', 'Cerrado'),
	(113, '2020-12-09 00:00:00', '16:26:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '2349.56', 'MBCRED', 'Rodrigo', 3, 'TEST', 'Apoyo', 'Cerrado'),
	(115, '2020-12-09 00:00:00', '16:58:00', 'Linea 6', 'Estacion 1 LX', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '8765.34', 'MBCRED', 'Rodrigo', 6, 'TEST', 'Apoyo', 'Cerrado'),
	(116, '2020-12-09 00:00:00', '17:43:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'RECSA BI', '2333', 'Calentamiento', '2354.56', 'MBCRED', 'Rodrigo', 5, 'TEST DE AUTOMATIZACIÓN DE FOLIO', 'Apoyo', 'Cerrado'),
	(118, '2020-12-09 00:00:00', '17:58:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '3423.89', 'MBCRED', 'Rodrigo', 7, 'TEST DE AFECTACIÓN', 'Afectación', 'Cerrado'),
	(119, '2020-12-09 00:00:00', '19:02:00', 'Linea 1', 'Estacion 2 L1', 'Operaciones E.O', 'ébano 2', 'RTP BI', '2343', 'Ausencia operador', '124.457', 'cred1', 'Juan', 9, 'Aquí debe haber observaciones', 'Apoyo', 'Cerrado'),
	(121, '2020-12-07 00:00:00', '19:23:00', 'Linea 4', 'Estacion 2 LX', 'Metrobús regulación', 'ébano 1', 'RECSA BI', '2333', 'Fluidos', '8493.44', '93452', 'Ignacio Altamirano', 12, '', 'Apoyo', 'Cerrado'),
	(122, '2020-12-09 00:00:00', '20:27:00', 'Linea 2', 'Estacion 9 L2', 'Mantenimiento E.O', 'ébano 4', 'CE4-17M BI', '2353', 'Baja potencia', '17.5', 'credencial1', 'Jerry', 9, '', 'Incumplido', 'Cerrado sin incorporar'),
	(124, '2020-12-07 00:00:00', '17:40:00', 'Linea 1', 'Estacion 3 L1', 'Metrobús regulación', 'ébano 1', 'RTP BI', '2343', 'Llantas', '823489.345', 'cred56', 'Jorge Muñiz', 3, '', 'Afectación', 'Cerrado'),
	(126, '2020-12-09 00:00:00', '14:21:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '12.34', 'MBCRED', 'Rodrigo', 5, 'TEST', 'Incumplido', 'Cerrado'),
	(127, '2020-12-09 00:00:00', '14:21:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '12.34', 'MBCRED', 'Rodrigo', 5, 'TEST', 'Afectación', 'Cerrado'),
	(128, '2020-12-09 00:00:00', '14:21:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '12.34', 'MBCRED', 'Rodrigo', 5, 'TEST', 'Afectación', 'Cerrado'),
	(129, '2020-12-09 00:00:00', '17:58:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '3423.89', 'MBCRED', 'Rodrigo', 7, 'TEST DE AFECTACIÓN', 'Incumplido', 'Cerrado'),
	(130, '2020-12-09 00:00:00', '17:58:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2313', 'Calentamiento', '3423.89', 'MBCRED', 'Rodrigo', 7, 'TEST DE AFECTACIÓN', 'Incumplido', 'Cerrado'),
	(131, '2020-12-10 00:00:00', '14:25:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'arce alfa', 'RTP', '2323', 'Calentamiento', '23456', 'MBCRED', 'Rodrigo', 4, 'TEST DE APOYO', 'Apoyo', 'Cerrado'),
	(132, '2020-12-10 00:00:00', '14:28:00', 'Linea 3', 'Estacion 1 LX', 'Mantenimiento E.O', 'arce alfa', 'RTP', '2323', 'Calentamiento', '235.34', 'MBCRED', 'Rodrigo', 4, 'TEST DE AFECTACIÓN', 'Afectación', 'Cerrado'),
	(134, '2020-12-10 00:00:00', '14:28:00', 'Linea 3', 'Estacion 1 LX', 'Mantenimiento E.O', 'arce alfa', 'RTP', '2323', 'Calentamiento', '235.34', 'MBCRED', 'Rodrigo', 4, 'TEST DE AFECTACIÓN', 'Afectación', 'Cerrado'),
	(135, '2020-12-10 00:00:00', '15:28:00', 'Linea 2', 'Estacion 1 L2', 'Mantenimiento E.O', 'arce alfa', 'RECSA BI', '2333', 'Fluidos', '2355.34', 'MBCRED', 'Rodrigo', 3, 'PRUEBAS', 'Incumplido', 'Cerrado'),
	(137, '2020-12-21 00:00:00', '13:52:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'ébano 2', 'CISA', '2313', 'Llantas', '121233.22', '12345', 'Prueba 1', 5, '', 'Incumplido', 'Cerrado'),
	(138, '2020-12-10 00:00:00', '14:28:00', 'Linea 3', 'Estacion 1 LX', 'Mantenimiento E.O', 'arce alfa', 'RTP', '2323', 'Calentamiento', '235.34', 'MBCRED', 'Rodrigo', 4, 'TEST DE AFECTACIÓN', 'Afectación', 'Cerrado'),
	(139, '2020-12-30 00:00:00', '00:31:00', 'Linea 3', 'Estacion 2 LX', 'Operaciones E.O', 'ébano 2', 'RECSA BI', '2333', 'Llantas', '2131313', '2245', 'pablo', 2, '', 'Incumplido', 'Cerrado sin incorporar'),
	(150, '2021-01-08 00:00:00', '17:29:00', 'Linea 1', 'Estacion 16 L1', 'Mantenimiento E.O', 'arce alfa', 'CISA', '2393', 'Letreros', '20.9', 'cred2', 'Hugo', 10, 'Prueba Apoyo', 'Apoyo', 'Cerrado'),
	(151, '2021-01-08 00:00:00', '17:30:00', 'Linea 6', 'Estacion 7 LX', 'Operaciones E.O', 'ébano 4', 'RTP', '2323', 'Falta de unidad', '17.6', 'cred3', 'Mario', 11, 'Prueba INCUMPLIMIENTO', 'Incumplido', 'Cerrado sin incorporar'),
	(162, '2021-01-13 00:00:00', '15:54:00', 'Linea 3', 'Estacion 3 LX', 'Metrobús regulación', 'ébano 6', 'RTP', '2323', 'Accidente', '24.6', 'cred2', 'Luis', 9, 'Prueba incumplimiento', 'Incumplido', 'Cerrado'),
	(164, '2021-01-28 00:00:00', '11:06:00', 'Linea 4', 'Estacion 4 LX', 'Mantenimiento E.O', 'ébano 2', 'CISA', '2363', 'Fluidos', '123456.890', 'cred', 'qwerty', 7, 'TEST -INC', 'Incumplido', 'Cerrado sin incorporar'),
	(174, '2021-01-28 00:00:00', '12:27:00', 'Linea 4', 'Estacion 5 LX', 'Operaciones E.O', 'ébano 4', 'RTP', '2323', 'Articulación', '234.3', 'cred', 'qwerty', 4, 'AFE IN AP', 'Afectación', 'Cerrado'),
	(175, '2021-01-28 00:00:00', '12:39:00', 'Linea 2', 'Estacion 3 L2', 'Metrobús regulación', 'ébano 1', 'RTP', '2323', 'Turbo', '234.3', 'DSADSDASD', 'Pepe', 13, 'QWERTY', 'Afectación', 'Cerrado'),
	(180, '2021-01-28 00:00:00', '16:53:00', 'Linea 2', 'Estacion 5 L2', 'Metrobús regulación', 'ébano 3', 'CISA', '2313', 'Puertas', '234.3', 'DSADSDASD', 'Pepe', 2, '', 'Afectación', 'Cerrado'),
	(181, '2021-01-28 00:00:00', '16:59:00', 'Linea 2', 'Estacion 2 L2', 'Operaciones E.O', 'ébano 4', 'RECSA BI', '2333', 'Articulación', '234.3', 'DSADSDASD', 'Pepe', 2, '', 'Apoyo', 'Cerrado'),
	(182, '2021-01-28 00:00:00', '17:28:00', 'Linea 2', 'Estacion 4 L2', 'Operaciones E.O', 'ébano 2', 'CISA', '2312', 'Llantas', '234.3', 'cred', 'qwerty', 7, '', 'Apoyo', 'Cerrado'),
	(183, '2021-01-28 00:00:00', '17:28:00', 'Linea 1', 'Estacion 3 L1', 'Metrobús regulación', 'ébano 2', 'RTP', '2323', 'Baja potencia', '234.3', 'DSADSDASD', 'qwerty', 3, '', 'Afectación', 'Cerrado'),
	(184, '2021-01-28 00:00:00', '17:29:00', 'Linea 3', 'Estacion 3 LX', 'Metrobús mantenimiento', 'arce alfa', 'RTP', '2323', 'Llantas', '234.3', 'DSADSDASD', 'Pepe', 3, '', 'Afectación', 'Cerrado'),
	(185, '2021-01-28 00:00:00', '17:44:00', 'Linea 1', 'Estacion 1 L1', 'Mantenimiento E.O', 'ébano 1', 'RTP', '2323', 'Llantas', '68698.05', 'Credencial1', 'Pablo Neruda', 1, '', 'Incumplido', 'Cerrado'),
	(186, '2021-01-28 00:00:00', '17:48:00', 'Linea 3', 'Estacion 3 LX', 'Mantenimiento E.O', 'ébano 4', 'CISA', '2363', 'Llantas', '989089.78', 'Credencial3', 'Luis Rodriguez', 3, '', 'Apoyo', 'Cerrado'),
	(187, '2021-01-28 00:00:00', '17:51:00', 'Linea 1', 'Estacion 5 L1', 'Metrobús regulación', 'ébano 3', 'CISA', '2373', 'Accidente', '974278.487', 'credencial4', 'Octavio Paz', 3, '', 'Afectación', 'Cerrado'),
	(198, '2021-01-29 00:00:00', '18:14:00', 'Linea 1', 'Estacion 6 L1', 'Metrobús regulación', 'ébano 8', 'RTP', '2323', 'Transmisión', '23421.35', 'CREDFG', 'Pepe', 11, 'Incumplimiento', 'Incumplido', 'Abierto'),
	(199, '2021-02-02 00:00:00', '11:36:00', 'Linea 2', 'Estacion 4 L2', 'Mantenimiento E.O', 'ébano 3', 'RTP BI', '2343', 'Llantas', '2343243', '2132334', 'sefse', 8, '', 'Incumplido', 'Abierto');
/*!40000 ALTER TABLE `Desincorporacions` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Distancias
CREATE TABLE IF NOT EXISTS `Distancias` (
  `idDistancia` int(11) NOT NULL,
  `destinos` double DEFAULT NULL,
  `vuelta_comp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idRuta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RutaIdRuta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDistancia`),
  KEY `idRuta` (`idRuta`),
  KEY `RutaIdRuta` (`RutaIdRuta`),
  CONSTRAINT `Distancias_ibfk_1` FOREIGN KEY (`idRuta`) REFERENCES `Rutas` (`idRuta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Distancias_ibfk_2` FOREIGN KEY (`RutaIdRuta`) REFERENCES `Rutas` (`idRuta`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Distancias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Distancias` DISABLE KEYS */;
/*!40000 ALTER TABLE `Distancias` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.EconomicoColisionados
CREATE TABLE IF NOT EXISTS `EconomicoColisionados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `economico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_colision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_colision` (`fk_colision`),
  CONSTRAINT `EconomicoColisionados_ibfk_1` FOREIGN KEY (`fk_colision`) REFERENCES `Colisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.EconomicoColisionados: ~43 rows (aproximadamente)
/*!40000 ALTER TABLE `EconomicoColisionados` DISABLE KEYS */;
INSERT INTO `EconomicoColisionados` (`id`, `empresa`, `economico`, `fk_colision`) VALUES
	(1, 'RTP', '22356', 59),
	(2, 'CISA', '3421', 59),
	(3, 'RECSA', '0912', 54),
	(4, 'CISA', '7847', 54),
	(6, 'RTP', '1254', 54),
	(7, 'EMPRESA1', 'eco234', 57),
	(9, 'RECSA', '2211', 57),
	(10, 'RECSA', '2231', 60),
	(11, 'RECSA', '1141', 60),
	(12, 'RECSA', '1698', 60),
	(13, 'RECSA', '9800', 61),
	(14, 'RECSA', '3398', 63),
	(15, 'RTP', '3642', 63),
	(16, 'CISA', '1212', 63),
	(17, 'RTP', '6739', 63),
	(18, 'CISA', '3689', 66),
	(19, 'CISA', '2911', 66),
	(23, 'CISA', '2632', 67),
	(24, 'RTP', '5593', 73),
	(26, 'CISA', '1028', 73),
	(27, 'RTP', '2211', 73),
	(28, 'RTP', '7021', 74),
	(29, 'RTP', '5672', 74),
	(30, 'RTP', '6801', 74),
	(31, 'RTP', '1391', 74),
	(32, 'RTP', '1166', 74),
	(33, 'RTP', '3312', 74),
	(34, 'RTP', '8830', 75),
	(35, 'RTP', '4563', 75),
	(36, 'RECSA', '3927', 77),
	(37, 'RTP', '3924', 77),
	(38, 'CISA', '8463', 77),
	(41, 'RTP', '2410', 76),
	(42, 'RECSA', '8240', 78),
	(43, 'CISA', '3420', 78),
	(44, 'RTP', '5427', 78),
	(45, 'RECSA', '3402', 76),
	(46, 'RECSA', '9032', 76),
	(47, 'RTP', '7630', 76),
	(54, 'ARTSA', '9709', 80);
/*!40000 ALTER TABLE `EconomicoColisionados` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Eventos
CREATE TABLE IF NOT EXISTS `Eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `tipo_incidente` tinyint(1) DEFAULT NULL,
  `incidente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tramo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operador` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bitacora` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Eventos: ~34 rows (aproximadamente)
/*!40000 ALTER TABLE `Eventos` DISABLE KEYS */;
INSERT INTO `Eventos` (`id`, `fecha`, `hora`, `tipo_incidente`, `incidente`, `descripcion`, `tramo`, `operador`, `bitacora`) VALUES
	(45, '2020-12-14 00:00:00', '12:00:00', 0, 'Ciclista Atropellado', 'ciclista es impactado por unidad del MB', 'tramo1', 'Juan Perez', 'folio223'),
	(47, '2020-12-10 00:00:00', '12:00:00', 0, 'WED', 'WDE', 'ED', 'WED', 'WDE'),
	(48, '2020-12-10 00:00:00', '12:00:00', 0, 'CHOQUE', 'CHOQUE DE AUTO', 'qwerty', 'FERNANDO', 'asdfghj'),
	(61, '2020-12-10 00:00:00', '12:00:00', 0, 'choque', 'choque', 'sad', 'saf', 'kjasdh'),
	(62, '2020-12-01 00:00:00', '03:40:00', 0, 'incidente 1', 'Lo atropellaron...', 'tramo 1', 'Juan Gomez', 'folio 404'),
	(64, '2020-12-07 00:00:00', '13:00:00', 0, 'atropellado', 'se atravesó un borracho', 'tramote', 'Juan López', '97807'),
	(67, '2020-12-04 00:00:00', '09:30:00', 1, 'rosón', 'se atravesó y el económico le lijó la cara', 'insurgentes', 'Alberto Barros', '8053'),
	(69, '2020-12-10 00:00:00', '12:00:00', 0, 'Ciclista atropellado', 'El ciclista fue golpeado por la unidad', 'Tramo 1', 'Federico', 'HSU33'),
	(70, '2020-12-08 00:00:00', '16:00:00', 0, 'atropellado', 'se metió al carrill confinado', 'glorieta', 'Juan Manuel Márquez', '8486134'),
	(72, '2020-12-10 00:00:00', '12:00:00', 0, '1', '1', '1', '1', '159'),
	(73, '2020-12-10 00:00:00', '12:00:00', 0, '-..-', '-.,-.,', '{,{ñ', ',{ñ.,{.', '123'),
	(76, '2020-12-10 00:00:00', '12:00:00', 0, 'CHOQUE', 'COLISIÓN CON PEATÓN', 'TRAMO', 'OPERADOR', 'QWERTY'),
	(79, '2020-12-10 00:00:00', '12:00:00', 1, 'Ciclista atropellado', 'Fue empujado por la unidad', 'tramo1', 'Luis', '968509'),
	(80, '2020-12-09 00:00:00', '12:56:00', 0, 'atropellado', 'se hizo pomada', 'un tramito', 'lope de vega', '928402'),
	(81, '2020-12-26 00:00:00', '16:56:00', 1, 'atropellado', 'la pata del mameitor', 'un tramote', 'I.M. Altamirano', '749043'),
	(82, '2020-12-23 00:00:00', '09:45:00', 1, 'lesión a vagabundo', 'brincó a carril confinado', 'av. siempre viva', 'Flaubert', '53845'),
	(83, '2021-01-05 00:00:00', '22:45:00', 0, 'se atropelló a una pareja', 'se les cayó un juguete de día de reyes', 'reforma con hidalgo', 'Alan Poe', '034590'),
	(84, '2021-01-06 00:00:00', '08:39:00', 1, 'pisotón de pie con llanta', 'voló su rosca de reyes', 'insurgentes frente a panadería', 'Amado Nervo', '67563'),
	(85, '2021-01-06 00:00:00', '09:39:00', 0, 'skater atropellado', 'se metió al carril confinado', 'parque hundido', 'Marco Fénix', '98498'),
	(86, '2020-12-31 00:00:00', '23:40:00', 1, 'lesión a otro operador', 'iba por las uvas', 'ein Teil', 'Luka Modric', '8406'),
	(87, '2020-12-25 00:00:00', '12:30:00', 0, 'desplazo a transeunte', 'se le dió un aventón', 'caracas', 'Zion Ramirez', '7202'),
	(88, '2021-01-01 00:00:00', '14:30:00', 1, 'golpe en la cara', 'se asomó pasando la raya', 'estación reforma', 'Jorge Muñiz', '9442'),
	(89, '2021-01-01 00:00:00', '15:30:00', 1, 'pisotó de pie', 'aplastó el pie a transeunte', 'reforma con insurgetes', 'Jacinto Ramírez', '9342'),
	(90, '2021-01-08 00:00:00', '18:30:00', 0, 'niño cayó', 'salió volando porque pasó por el escape de unidad', 'tepalcates', 'Pedro Fernández', '0482'),
	(91, '2021-01-08 00:00:00', '19:30:00', 1, 'raspón en brazo', 'pasó corriendo por el carril confinado', 'fábrica de muñecos', 'Peter Keschenat', '0482'),
	(92, '2021-01-05 00:00:00', '07:30:00', 1, 'niño voló', 'se golpeó su mochila y el iño salió volando', 'frente a Ecuela', 'Eduardo Santiago', '7320'),
	(93, '2021-01-04 00:00:00', '06:30:00', 1, 'hombre tirado', 'se golpeó un brazo y se cayó', 'junto al shine', 'Lisa Vicari', '54645'),
	(94, '2020-12-12 00:00:00', '06:30:00', 0, 'peregrino atropellado', 'se aventó al carril confinado', 'frente tepalcates', 'Gina Stiebitz', '6745'),
	(95, '2020-12-12 00:00:00', '20:07:00', 0, 'atropellado de lleno', 'golpe directo', 'frente al rosario', 'Tomás Hollado', '6743'),
	(96, '2020-12-16 00:00:00', '05:07:00', 0, 'corredor lesionado', 'se flasheó con las luces del económico', 'frente al parque hundidp', 'Henry Cavill', '6793'),
	(97, '2020-12-24 00:00:00', '12:00:00', 1, 'caída contra el mb', 'tropezó con el económico', 'frente al parque hundido', 'Luis Carmona', '3924'),
	(99, '2021-01-15 00:00:00', '12:59:00', 1, 'Transeúnte Atropellado', 'Choque de frente con el peatón', 'Junto a las vías', 'Miguel Mancera', '8708');
/*!40000 ALTER TABLE `Eventos` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Evento_Ambulancia
CREATE TABLE IF NOT EXISTS `Evento_Ambulancia` (
  `DatosAmbulanciumId` int(11) NOT NULL,
  `EventoId` int(11) NOT NULL,
  PRIMARY KEY (`DatosAmbulanciumId`,`EventoId`),
  KEY `EventoId` (`EventoId`),
  CONSTRAINT `Evento_Ambulancia_ibfk_1` FOREIGN KEY (`DatosAmbulanciumId`) REFERENCES `DatosAmbulancia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Evento_Ambulancia_ibfk_2` FOREIGN KEY (`EventoId`) REFERENCES `Eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Evento_Ambulancia: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `Evento_Ambulancia` DISABLE KEYS */;
INSERT INTO `Evento_Ambulancia` (`DatosAmbulanciumId`, `EventoId`) VALUES
	(18, 45),
	(26, 61),
	(27, 61),
	(28, 61),
	(30, 62),
	(34, 70),
	(39, 79),
	(40, 99);
/*!40000 ALTER TABLE `Evento_Ambulancia` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Incorporacions
CREATE TABLE IF NOT EXISTS `Incorporacions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `estacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sentido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hra_retrazo` int(11) DEFAULT NULL,
  `min_retrazo` int(11) DEFAULT NULL,
  `seg_retrazo` int(11) DEFAULT NULL,
  `informa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `economico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odometro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credencial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idDesincorporacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idDesincorporacion` (`idDesincorporacion`),
  CONSTRAINT `Incorporacions_ibfk_1` FOREIGN KEY (`idDesincorporacion`) REFERENCES `Desincorporacions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Incorporacions: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `Incorporacions` DISABLE KEYS */;
INSERT INTO `Incorporacions` (`id`, `fecha`, `hora`, `estacion`, `sentido`, `status`, `entrada`, `hra_retrazo`, `min_retrazo`, `seg_retrazo`, `informa`, `empresa`, `economico`, `odometro`, `credencial`, `nombre`, `idDesincorporacion`) VALUES
	(1, '2020-10-27 00:00:00', '18:27:00', 'Estacion 5 L2', 'N-S (118)', 'Reincorporación', 'En tiempo', 0, 0, 0, 'ébano 3', 'Empresa 4', '2373', '189.637', 'cred56', 'nom56', 12),
	(5, '2020-10-27 00:00:00', '18:56:00', 'Estacion 6 L2', 'P-O (122)', 'Reincorporación', 'En tiempo', 0, 0, 0, 'ébano 5', 'Empresa 8', '2373', '1578.96', 'credPan', 'panadero', 20),
	(8, '2020-10-29 00:00:00', '11:48:00', 'Estacion 4 L2', 'S-N (117)', 'Incorporacion', 'En tiempo', 0, 0, 0, 'ébano 5', 'Empresa 5', '2353', '124.457', 'MBCRED', 'Rodrigo', 28),
	(9, '2020-10-29 00:00:00', '13:00:00', 'Estacion 7 L2', 'P-O (122)', 'Reincorporación', 'En tiempo', 0, 0, 0, 'ébano 8', 'Empresa 11', '2393', '38369.8', 'credencial', 'nomvre', 38),
	(10, '2020-10-29 00:00:00', '13:25:00', 'Estacion 8 L1', 'O-P (121)', 'Incorporacion', 'En tiempo', 0, 0, 0, 'ébano 9', 'Empresa 9', '2373', '183793.55', 'credencinal', 'nombresin', 11),
	(11, '2020-10-29 00:00:00', '13:32:00', 'Estacion 5 L2', 'P-O (122)', 'Remplazo', 'Retrazo', 0, 30, 45, 'ébano 5', 'Empresa 4', '2333', '1634.89', 'credencial', 'nombre', 42),
	(12, '2020-10-29 00:00:00', '13:34:00', 'Estacion 5 L2', 'O-P (121)', 'Incorporacion', 'Retrazo', 0, 30, 22, 'ébano 10', 'Empresa 10', '2393', '179.86', 'credencial', 'nombresote', 21),
	(13, '2020-11-04 00:00:00', '16:54:00', 'Estacion 2 LX', 'S-N (117)', 'Reincorporación', 'En tiempo', 0, 0, 0, 'ébano 3', 'Empresa 2', '2333', '124.457', 'MBCRED', 'Rodrigo', 50),
	(15, '2020-11-05 00:00:00', '09:35:00', 'Estacion 3 LX', 'S-N (117)', 'Incorporacion', 'En tiempo', 0, 0, 0, 'ébano 4', 'Empresa 2', '2373', '124.457', 'MBCRED', 'qwerty', 52),
	(16, '2020-11-05 00:00:00', '19:59:00', 'Estacion 3 LX', 'N-S (118)', 'Incorporacion', 'En tiempo', 0, 0, 0, 'ébano 1', 'RECSA BI', '2323', '124.457', 'MBCRED', 'Rodrigo', 60),
	(18, '2020-11-04 00:00:00', '22:07:00', 'Estacion 1 LX', 'S-N (117)', 'Incorporacion', 'En tiempo', 0, 0, 0, 'ébano 1', 'RTP BI', '2323', '123', '123', 'Nicol', 6),
	(21, '2020-11-12 00:00:00', '10:57:00', 'Estacion 3 LX', 'S-N (117)', 'Reincorporación', 'En tiempo', 0, 0, 0, 'ébano 2', 'RECSA BI', '2323', '124.457', 'MBCRED', 'Rodrigo', 66),
	(23, '2020-12-02 00:00:00', '19:30:00', 'Estacion 2 LX', 'N-S (118)', 'Incorporacion', 'En tiempo', 0, 0, 0, 'ébano 3', 'RECSA BI', '2383', '124.457', 'MBCRED', 'Pepe', 48),
	(27, '2020-12-10 00:00:00', '15:31:00', 'Estacion 1 L2', 'S-N (117)', 'Incorporacion', 'Retrazo', 6, 0, 0, 'arce alfa', 'RECSA BI', '2313', '3456.5', 'MBCRED', 'Rodrigo', 135),
	(28, '2020-12-21 00:00:00', '10:00:00', 'Estacion 1 L1', 'S-N (117)', 'Incorporacion', 'Retrazo', 1, 10, 7, 'arce alfa', 'CISA', '2313', '122000', '123abc', 'LUIS', 137),
	(30, '2021-01-13 00:00:00', '15:56:00', 'Estacion 6 LX', 'S-N (117)', 'Reincorporación', 'En tiempo', 0, 0, 0, 'arce alfa', 'RTP', '2353', '20.9', 'cred3', 'Hugo', 162),
	(32, '2021-01-28 00:00:00', '17:46:00', 'Estacion 2 L1', 'S-N (117)', 'Reincorporación', 'Retrazo', 0, 5, 10, 'ébano 2', 'RTP', '2323', '970987.09', 'Credencial2', 'Lope de Vega', 185);
/*!40000 ALTER TABLE `Incorporacions` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Informantes
CREATE TABLE IF NOT EXISTS `Informantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreInformante` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Informantes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Informantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Informantes` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Lesionados
CREATE TABLE IF NOT EXISTS `Lesionados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_lesionado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_colision` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_colision` (`fk_colision`),
  CONSTRAINT `Lesionados_ibfk_1` FOREIGN KEY (`fk_colision`) REFERENCES `Colisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Lesionados: ~38 rows (aproximadamente)
/*!40000 ALTER TABLE `Lesionados` DISABLE KEYS */;
INSERT INTO `Lesionados` (`id`, `sexo`, `tipo_lesionado`, `fk_colision`) VALUES
	(10, '0', 'mh', NULL),
	(11, '0', 'fgb', NULL),
	(12, '0', 'ethn', NULL),
	(13, '0', 'gs h', NULL),
	(14, '0', 'gdhmns', NULL),
	(15, '0', 'wnty', NULL),
	(16, '0', 'ghshn', NULL),
	(17, '0', 'rrng', NULL),
	(18, '1', 'rttg', NULL),
	(19, '0', 'qergv', NULL),
	(20, '1', 'grb', NULL),
	(21, '0', 'wcwd', NULL),
	(22, '0', 'hombre', NULL),
	(23, '1', 'qfew', NULL),
	(24, '0', 'adfv', NULL),
	(25, '0', 'dfbe', NULL),
	(26, '1', 'rfeqf', NULL),
	(27, '1', 'aefv', NULL),
	(86, '1', 'Particular', 35),
	(90, '1', 'Particular', 44),
	(93, '0', 'Particular', 37),
	(94, '1', 'Particular', 56),
	(96, '1', 'Usuario', 54),
	(98, '0', 'Usuario', 54),
	(99, '0', 'Particular', 54),
	(100, '1', 'Particular', 54),
	(101, '1', 'Usuario', 57),
	(108, '1', 'Particular', 59),
	(109, '1', 'Usuario', 59),
	(111, '1', 'Particular', 56),
	(113, '0', 'Usuario', 68),
	(115, '1', 'Usuario', 73),
	(116, '0', 'Usuario', 73),
	(122, '0', 'Usuario', 78),
	(124, '0', 'Particular', 78),
	(125, '0', 'Usuario', 78),
	(137, '1', 'Particular', 80),
	(146, '1', 'Particular', 87),
	(147, '0', 'Usuario', 87),
	(148, '0', 'Particular', 87),
	(149, '0', 'Usuario', 87),
	(150, '1', 'Particular', 80),
	(151, '1', 'Usuario', 80);
/*!40000 ALTER TABLE `Lesionados` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Motivos
CREATE TABLE IF NOT EXISTS `Motivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Motivos: ~45 rows (aproximadamente)
/*!40000 ALTER TABLE `Motivos` DISABLE KEYS */;
INSERT INTO `Motivos` (`id`, `motivo`) VALUES
	(1, 'Calentamiento'),
	(2, 'Puertas'),
	(3, 'Llantas'),
	(4, 'Articulación'),
	(5, 'Fluidos'),
	(6, 'Baja potencia'),
	(7, 'Ausencia operador'),
	(8, 'Falta de combustible'),
	(9, 'Unidad sucia'),
	(10, 'Colisión'),
	(11, 'Accidente'),
	(12, 'Letreros'),
	(13, 'Bolsas de aire'),
	(14, 'Ajuste de corridas'),
	(15, 'Mantenimiento preventivo ( a c4 de Mantenimiento )'),
	(16, 'Turbo'),
	(17, 'Alta emisión de humo'),
	(18, 'Transmisión'),
	(19, 'Vidrio roto'),
	(20, 'Arranque'),
	(21, 'Claxón'),
	(22, 'Alineación'),
	(23, 'Frenos'),
	(24, 'Otros'),
	(25, 'Falta de unidad'),
	(26, 'Sistema eléctrico'),
	(27, 'Luces'),
	(28, 'Pasamanos'),
	(29, 'Compresor'),
	(30, 'Retrovisores'),
	(31, 'Códigos activos'),
	(32, 'Baterías'),
	(33, 'Cinturón de seguridad'),
	(34, 'Registros, tolvas, tapas motor, fallebas'),
	(35, 'Dirección'),
	(36, 'Torreta'),
	(37, 'Ajuste por afectación'),
	(38, 'Limpiadores'),
	(39, 'Motor'),
	(40, 'Apoyo'),
	(41, 'Defroster'),
	(42, 'Despresurización'),
	(43, 'Asientos'),
	(44, 'Goma de articulación'),
	(45, 'Alternador'),
	(46, 'Retardador'),
	(47, 'Ventiladores'),
	(48, 'Sistema Peaje'),
	(49, 'Sistema Videovigilancia'),
	(50, 'Aire acondicionado');
/*!40000 ALTER TABLE `Motivos` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.persona
CREATE TABLE IF NOT EXISTS `persona` (
  `User_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pwd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Apellido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.persona: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`User_ID`, `Nombre`, `Pwd`, `Role`, `Apellido`) VALUES
	('a@metrobus.com', 'Maristin', '$2a$10$6oz3b8Z47edGhNrZE25/huMb0AL2SWawEvVUBEuScMooy1l1PcmRa', 'Operaciones', 'Barbosa'),
	('b@b.com', 'Xavier', '$2a$10$EDcxMU3xn9ksSFVPapqsFOPs7ZPmkUkffCO7PqNOlCHGqz3VJ40ty', 'Operaciones', 'Barbosa'),
	('benigno.glz@educacion.cdmx.gob.mx', 'Benigno', '$2a$10$GU7hL31imaa70vett0F2HeOQu25dCBf.3rk3xJvw9gO.q1CXN.TXq', 'Operaciones', 'Gonzalez'),
	('e@e.com', 'Enruique', '$2a$10$ATdTpGuqWPV90hxU7dAUAuF/k6Y2D8JL1o2ag6Sy4t0ktNwBj5Hb2', 'Operaciones', 'Gava'),
	('erick10@hotmail.com', 'Erick', '$2a$10$L4QwhqfdWeK0nrpQIv5fVOd6Y3WzeLbsg1BIyn/AgCvNaSrMJ8gMG', 'Operaciones', 'Gutierrez'),
	('erick12@hotmail.com', 'Erick', '$2a$10$iiHUcw761a7RtHZbQFOkSei0h7vHf01ju2ZbaYztUjjJ7ZhSTLrie', 'Operaciones', 'Gutiérrez'),
	('erk_guti@yahoo.com', 'Erick', '$2a$10$IecpJk4G7wpXsBBEMsv0RulGK/xquIOr3HitjbGMnRemCuqe9gY32', 'Operaciones', 'Gutierrez'),
	('gaspar514.12gabriel@gmail.com', 'Gabriel', '$2a$10$1Xu3lafGA3jT0C9Km4EcjuHKQf1oUY7Tva0kdf7Dlu9BfhhXxCo6u', 'Operaciones', 'Gaspar'),
	('ggasparg@metrobus.cdmx.gob.mx', 'Gabriel', '$2a$10$W5EEj2.MVPHJ0w9GE//Xf.koCzQtDsaDPAj6jcE6NS08CjUt21jEW', 'Operaciones', 'Gaspar'),
	('ghernandez@metrobus.cdmx.gob.mx', 'GERARDO', '$2a$10$kBFs9UKdJYMi5zxLPBLm3emJYbSfc.RGXGpVOns18tVbfxhqxWJcG', 'Operaciones', 'HERNANDEZ'),
	('javierjavier22@hotmail.com', 'Francisco Javier', '$2a$10$LM9BZZGc/RGIiZKYK5AeNu8Pf3BZajZhHuPrFyejyOkpPMGNj2vHa', 'Operaciones', 'Bruno Sadoval'),
	('javierjavier23@hotmail.com', 'Francisco Javier', '$2a$10$8P1P2tEt7pfHbYGS6w/jRev/umm4c5SNhB3WVHD6e.43h2hZzGMsa', 'Operaciones', 'Bruno'),
	('javierjavier24@hotmail.com', 'Francisco Javier', '$2a$10$nduqhWMTSlRn3.nUbYlh4.4cwsbO8wNBxnx15fh3b32vZc1V9A1ou', 'Operaciones', 'Bruno'),
	('javierjavier25@hotmail.com', 'Francisco Javier', '$2a$10$ZgC6RrdYHIs9N8h9gBLZHueKYDj3051.sluI55PSlBFQ65gWEGRzq', 'Operaciones', 'Bruno'),
	('javierjavier26@hotmail.com', 'Javier', '$2a$10$O0sBIfFvvfDKWp7tftutwOm0X4SR4V5uIDDxpF98oBJfu/h3MlJAe', 'Operaciones', 'Bruno'),
	('javierjavier27@hotmail.com', 'Javier ', '$2a$10$o8T9UTXp0q2Ti1bDdvm2ReTRJFAB5dHCftmzzfaGj7yCnXWi2SArq', 'Operaciones', 'Bruno Sandoval'),
	('pviloria@metrobus.cdmx.gob.mx', 'pablo', '$2a$10$SeQnWZYrPLAKEVbVhkXhBOAeo/7PBtYkqlw/w2Vf.vCIDQGIQJYCG', 'Operaciones', 'viloria'),
	('pviloria2002@hotmail.com', 'pablo', '$2a$10$PYyXijYn2TOu8v3Bkb/VZOG5kI2fTo6bv6/44HMnXfOJjAsgy0Hre', '', 'viloria'),
	('qwerty@qwery.com', 'qwerty', '$2a$10$ZnNg2JxzpyOfSWYtw1tE2OIhYqbowKGRdABXCkyeA9YDfdfcxaXMS', 'Operaciones', 'qwerty'),
	('rodrigogarciaavila2600@gmail.com', 'Rodrigo', '$2a$10$iZKEcl8pOx9AGxYjs8eIPeBFMwqywsCv839Yj5Hyh7kwaI1swirAS', 'Operaciones', 'Garcia'),
	('test@test.com', 'test', '$2a$10$ky6RGEEk/OcgdQcoX2uniOn6wAytmcYjne0g09UvkRpeU739v2Gs2', 'Operaciones', 'test'),
	('test098@gmail.com', 'test', '$2a$10$lUeGkw9YVaEkMsbQ6l9fDeYGZidHToU/oFIhn/hDseCgiRjlK0J3m', 'Operaciones', 'test'),
	('test1001@gmail.com', 'test1001', '$2a$10$ZOALc5/McsMYCHEqGD6a9O7g5fV1/BfSb6X86Simo3GVLUC7hLSEG', 'Operaciones', 'test'),
	('test123@test.com', 'test', '$2a$10$SMX3o0W4OWnV5ooa8YUWcO2S1UlxCoJZ39p1aP0hUExq0nAVoH19q', 'Operaciones', 'test'),
	('test321@test.com', 'test', '$2a$10$shxtzFKs2vs7L/.60Q.8b.oHl08gxHQ5ZBjGSUB7Tw/j0pMtVNxaC', '', 'test');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Rutas
CREATE TABLE IF NOT EXISTS `Rutas` (
  `idRuta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreRuta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destinos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idRuta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Rutas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Rutas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rutas` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Rutas_Estaciones
CREATE TABLE IF NOT EXISTS `Rutas_Estaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Rutas_Estaciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `Rutas_Estaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rutas_Estaciones` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.seguro_colision
CREATE TABLE IF NOT EXISTS `seguro_colision` (
  `DatosSeguroColisionId` int(11) NOT NULL,
  `ColisionId` int(11) NOT NULL,
  PRIMARY KEY (`DatosSeguroColisionId`,`ColisionId`),
  KEY `ColisionId` (`ColisionId`),
  CONSTRAINT `seguro_colision_ibfk_1` FOREIGN KEY (`DatosSeguroColisionId`) REFERENCES `DatosSeguroColisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `seguro_colision_ibfk_2` FOREIGN KEY (`ColisionId`) REFERENCES `Colisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.seguro_colision: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `seguro_colision` DISABLE KEYS */;
INSERT INTO `seguro_colision` (`DatosSeguroColisionId`, `ColisionId`) VALUES
	(15, 35),
	(19, 40),
	(20, 37),
	(21, 38),
	(22, 56),
	(23, 57),
	(24, 57),
	(26, 57),
	(30, 59),
	(31, 56),
	(32, 68),
	(33, 73),
	(34, 73),
	(35, 73),
	(36, 73),
	(37, 75),
	(39, 75),
	(41, 75),
	(51, 87),
	(52, 80);
/*!40000 ALTER TABLE `seguro_colision` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.Seguro_Evento
CREATE TABLE IF NOT EXISTS `Seguro_Evento` (
  `DatosSeguroId` int(11) NOT NULL,
  `EventoId` int(11) NOT NULL,
  PRIMARY KEY (`DatosSeguroId`,`EventoId`),
  KEY `EventoId` (`EventoId`),
  CONSTRAINT `Seguro_Evento_ibfk_1` FOREIGN KEY (`DatosSeguroId`) REFERENCES `DatosSeguros` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Seguro_Evento_ibfk_2` FOREIGN KEY (`EventoId`) REFERENCES `Eventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.Seguro_Evento: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `Seguro_Evento` DISABLE KEYS */;
INSERT INTO `Seguro_Evento` (`DatosSeguroId`, `EventoId`) VALUES
	(19, 45),
	(26, 62),
	(27, 62),
	(31, 69),
	(32, 70),
	(37, 79),
	(38, 99);
/*!40000 ALTER TABLE `Seguro_Evento` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.TrasladoHospitals
CREATE TABLE IF NOT EXISTS `TrasladoHospitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreHospital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paseMedico` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `fk_afectado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_afectado` (`fk_afectado`),
  CONSTRAINT `TrasladoHospitals_ibfk_1` FOREIGN KEY (`fk_afectado`) REFERENCES `Afectados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.TrasladoHospitals: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `TrasladoHospitals` DISABLE KEYS */;
INSERT INTO `TrasladoHospitals` (`id`, `nombreHospital`, `paseMedico`, `created`, `fk_afectado`) VALUES
	(1, 'la raza', 'pase 1', '2020-11-20 22:36:30', 56),
	(2, 'la raza', 'pase 1', '2020-11-20 22:38:37', 57),
	(3, 'GENERAL', 'qwerty', '2020-11-20 22:43:28', 58),
	(4, 'la raza', 'pase 1', '2020-11-20 22:50:34', 59),
	(6, 'no', 'mnb', '2020-11-23 19:59:04', 62),
	(7, 'no', 'mnb', '2020-11-23 19:59:27', 63),
	(8, 'no', 'mnb', '2020-11-23 19:59:47', 64),
	(9, 'La raza', 'pase 1', '2020-12-01 21:45:22', 65),
	(13, 'militar', 'paseMedico', '2020-12-10 02:16:33', 71),
	(19, 'General', 'Pase0', '2021-01-14 00:13:06', 77);
/*!40000 ALTER TABLE `TrasladoHospitals` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.UserNodes
CREATE TABLE IF NOT EXISTS `UserNodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.UserNodes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `UserNodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNodes` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.usuarioMBs
CREATE TABLE IF NOT EXISTS `usuarioMBs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.usuarioMBs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarioMBs` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarioMBs` ENABLE KEYS */;

-- Volcando estructura para tabla sigesmet_MB.UsuarioMBs
CREATE TABLE IF NOT EXISTS `UsuarioMBs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla sigesmet_MB.UsuarioMBs: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `UsuarioMBs` DISABLE KEYS */;
INSERT INTO `UsuarioMBs` (`id`, `first_name`, `last_name`, `email`, `password`, `rol`, `created`) VALUES
	(1, 'nombre1', 'apellido1', 'test@test.com', '$2b$10$XEbhYaJapan2szqTLqqxFe.ChQM5qw48r9gLISdYtQkJ0JC11.IfG', 'JUDE', '2020-08-19 00:48:53'),
	(2, 'nombre1', 'apellido1', 'test3@test.com', '$2b$10$BKYFliA6wSIkgvVCkrKOAeg6xbyCD2On2DrsXTGaSjhaEZQ/Cgi8q', 'JUDE', '2020-08-19 19:38:34'),
	(3, 'nombre3', 'apellido3', 'test4@test.com', '$2b$10$2gRFkWTMga7mHldbPUMR7..Ztd1h50gzrvtsYdc.KIMdWir6NA.B6', 'MantE', '2020-08-19 19:41:10'),
	(4, 'Momito', 'Galicia', 'test5@test.com', '$2b$10$1ZUwDCKSWMWPFBd2sLKM1ua3Aqa0tAcKOWnLi/apFrhwpagHyAWRe', 'JUDE', '2020-08-19 20:05:25'),
	(6, 'Rodrigo', 'Garcia', 'test200@test.com', '$2b$10$1h9ROXoeAuzY..qfDIZBpu4/m5UCdVmn5cEK0ezaqjAaDFs3dQKJ6', 'JUDE', '2020-08-19 21:48:43'),
	(7, 'Rodrigo', 'Garcia', 'test02@test.com', '$2b$10$NjsZmh6giCOSsFAvVdsRLeEO1Ktl7l3UNgOtPX9EHQfpXDE0qwE1S', 'JUDE', '2020-08-19 22:06:48'),
	(8, 'Rodrigo', 'Garcia', 'test03@test.com', '$2b$10$GB10.duvu7/a88rEqybisus7TEsWxV9Kv2IGwAucK6sPJEYC/27Qy', 'JUDE', '2020-08-20 01:20:46'),
	(9, 'Nombre1000', 'Apellido1000', 'test04@test.com', '$2b$10$0Vx0aEz5Tl6giX/.78yDkOezo8xAaB8VUwaNOnlAsTui0B2TeNQ7O', 'JUDE', '2020-08-20 01:37:15'),
	(10, 'test200', 'apellido200', 'test001@test.com', '$2b$10$wn4bANtteJfVijbKfOcKyuq.U0PBRQxX6V7HhuEsnq.KCNzc47kPm', 'JUDE', '2020-08-20 01:42:51'),
	(11, 'Pepito', 'Apellido de pepito', 'pepito1@gmail.com', '$2b$10$1O1fABK8ZYXzhM.lOw58nOQTXXez9.RN4gK.gN6NyFRWVbcfTnEMq', 'JUDE', '2020-08-20 02:07:21'),
	(12, 'NuevoUser', 'apellido', 'newuser@gmail.com', '$2b$10$oc6qR3fn4eRA2HkIzVm7Puv0wRE7DQpbeXFTQiJmG5ArjoRWcrcCq', 'MantE', '2020-08-20 02:37:59'),
	(13, 'Xavier', 'Barbosa', 'xavier@xavier.com', '$2b$10$DWCdm3lMQN30WaNXmwJtBu7k1OB8tcdK7G5UiPCsd.K.yFhJCMO9y', 'MantE', '2020-08-20 16:25:09'),
	(14, 'Miguel', 'Cruz Cruz', 'migue@cruzcruz.com.mx', '$2b$10$v2khLTZCnLk0eVDGV6i45Oc.PD8wq5AdmHZxiO2iQf9bUQqhNmbxK', 'JUDE', '2020-08-20 18:17:45'),
	(15, 'Erik', 'Morales', 'erik@metrobus.com.mx', '$2b$10$QQWNZB3rjRmDQJWpMGVw.OC/OXtlqyDKwJbd6iNapV75EZ1KHsiOC', 'JUDE', '2020-08-20 21:45:43'),
	(16, 'Diego', 'H', 'test11@test.com', '$2b$10$9Yf3WT.oi1XpFt3.mx0M5O2Td0KcpRD5pa/rxkKYVqbkDc1DB44Le', '', '2020-08-21 22:18:16'),
	(17, 'Www', 'Www', 'rga@rga.com', '$2b$10$oag.6pLwBsjhGlJrkp/Cf.zBm5Qd6IPV/Iures/RF4m71cYBPV9Xu', 'JUDE', '2020-08-21 23:44:18'),
	(18, 'Rodrigo', '1', 'rodrigogarciaavila26@gmail.com', '$2b$10$E1yf96f5y//7Z.54NF7IcuDw5PzLaKhI7ZzGF0Fv/1BXbK09YRija', '', '2020-08-22 00:23:53'),
	(19, 'Erik', 'Moral', 'test99@test.com', '$2b$10$lPTqO54EFs1WnkU1EXw2fOPUmhOOhVUvIFJhbVu8cdj2DASaK7psi', 'JUDE', '2020-08-25 20:25:27'),
	(20, 'Mike', 'Arrollo', 'test66@test.com', '$2b$10$IU/SXT8PYtP5iAflf55Fvu4TY5mMBVEPBmK4lV2wBs7a6emAvlf.O', 'JUDE', '2020-08-25 21:59:39');
/*!40000 ALTER TABLE `UsuarioMBs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
