-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mydb_pemsi
CREATE DATABASE IF NOT EXISTS `mydb_pemsi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mydb_pemsi`;

-- Dumping structure for table mydb_pemsi.montecarlo
CREATE TABLE IF NOT EXISTS `montecarlo` (
  `Tanggal` date DEFAULT NULL,
  `Jumlah Hari` int(11) DEFAULT NULL,
  `Perkiraan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mydb_pemsi.montecarlo: ~3 rows (approximately)
/*!40000 ALTER TABLE `montecarlo` DISABLE KEYS */;
INSERT INTO `montecarlo` (`Tanggal`, `Jumlah Hari`, `Perkiraan`) VALUES
	('2022-04-13', 5, '2,7'),
	('2022-04-14', 10, '3,7'),
	('2022-04-14', 10, '3,7'),
	('2022-04-14', 20, '6,7');
/*!40000 ALTER TABLE `montecarlo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
