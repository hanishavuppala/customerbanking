# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.11-MariaDB)
# Database: banking
# Generation Time: 2020-05-02 14:03:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table account_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `account_details`;

CREATE TABLE `account_details` (
  `customer_id` bigint(15) unsigned NOT NULL,
  `account_number` bigint(15) DEFAULT NULL,
  `account_type` varchar(25) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `account_number` (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `account_details` WRITE;
/*!40000 ALTER TABLE `account_details` DISABLE KEYS */;

INSERT INTO `account_details` (`customer_id`, `account_number`, `account_type`, `balance`, `currency`)
VALUES
	(1,23500,'SAVINGS',1000,'USD'),
	(2,23501,'SAVINGS',20000,'USD'),
	(3,23502,'CHECKING',4500,'USD'),
	(4,23503,'SAVINGS',8050,'USD'),
	(5,23504,'SAVINGS',86470,'USD'),
	(6,23505,'SAVINGS',2470,'USD');

/*!40000 ALTER TABLE `account_details` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_details`;

CREATE TABLE `customer_details` (
  `customer_id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `account_number` bigint(15) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `account_number` (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `customer_details` WRITE;
/*!40000 ALTER TABLE `customer_details` DISABLE KEYS */;

INSERT INTO `customer_details` (`customer_id`, `first_name`, `last_name`, `email`, `gender`, `account_number`)
VALUES
	(1,'ramya','vuppala','ramya.vuppala@gmail.com','female',23500),
	(2,'chandra hanisha','vuppala','hanisha.vuppala@gmail.com','female',23501),
	(3,'sandhya','gunda','sandhya.gunda@gmail.com','female',23502),
	(4,'sam','ramanujan','sam.ramanujan@ucmo.edu','male',23503),
	(5,'qingxiong','ma','ma@ucmo.edu','male',23504),
	(6,'Anusha','sangem','anusha.sangem@ucmo.edu','female',23505);

/*!40000 ALTER TABLE `customer_details` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
