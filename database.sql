-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: tr-database.cgp6e8kzb9z4.eu-west-1.rds.amazonaws.com    Database: developers
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Table structure for table `DeveloperSkills`
--

DROP TABLE IF EXISTS `DeveloperSkills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DeveloperSkills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `developer_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `developer_id` (`developer_id`),
  KEY `skill_id` (`skill_id`),
  CONSTRAINT `DeveloperSkills_ibfk_1` FOREIGN KEY (`developer_id`) REFERENCES `Developers` (`id`),
  CONSTRAINT `DeveloperSkills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `Skills` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeveloperSkills`
--

LOCK TABLES `DeveloperSkills` WRITE;
/*!40000 ALTER TABLE `DeveloperSkills` DISABLE KEYS */;
INSERT INTO `DeveloperSkills` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,5),(7,2,6),(8,3,1),(9,3,2),(10,3,3),(11,3,8),(12,4,7),(13,4,8),(14,4,9);
/*!40000 ALTER TABLE `DeveloperSkills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Developers`
--

DROP TABLE IF EXISTS `Developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Developers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `date_joined` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Developers`
--

LOCK TABLES `Developers` WRITE;
/*!40000 ALTER TABLE `Developers` DISABLE KEYS */;
INSERT INTO `Developers` VALUES (1,'Sitara',1,'2019-12-01'),(2,'Sue',1,'2019-12-03'),(3,'Ena',0,'2019-11-10'),(4,'Carly',0,'2019-12-20');
/*!40000 ALTER TABLE `Developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skills`
--

DROP TABLE IF EXISTS `Skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skills`
--

LOCK TABLES `Skills` WRITE;
/*!40000 ALTER TABLE `Skills` DISABLE KEYS */;
INSERT INTO `Skills` VALUES (1,'HTML'),(2,'CSS'),(3,'JavaScript'),(4,'React'),(5,'Python'),(6,'Ruby'),(7,'Git'),(8,'Agile'),(9,'TDD');
/*!40000 ALTER TABLE `Skills` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-27  0:07:16
