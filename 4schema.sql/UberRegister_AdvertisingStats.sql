-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: cs336.chr4rfvfktjm.us-east-1.rds.amazonaws.com    Database: UberRegister
-- ------------------------------------------------------
-- Server version	5.6.27-log

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

--
-- Table structure for table `AdvertisingStats`
--

DROP TABLE IF EXISTS `AdvertisingStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AdvertisingStats` (
  `adId` int(20) DEFAULT NULL,
  `adName` char(20) DEFAULT NULL,
  `totalhits` int(30) DEFAULT NULL,
  `payoutperhit` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdvertisingStats`
--

LOCK TABLES `AdvertisingStats` WRITE;
/*!40000 ALTER TABLE `AdvertisingStats` DISABLE KEYS */;
INSERT INTO `AdvertisingStats` VALUES (1,'j',0,4),(6,'h',0,3),(7,'g',0,5),(6455,'Ayylmao',0,90),(NULL,'null',0,NULL),(NULL,'null',0,NULL),(NULL,'null',0,NULL),(4,'b',0,2),(NULL,'null',0,NULL),(9,'overwatch',0,2),(23,'Jordan',0,45),(NULL,'null',0,NULL),(NULL,'null',0,NULL),(NULL,'null',0,NULL),(14,'Villa',0,4),(NULL,'null',0,NULL),(NULL,'null',0,NULL);
/*!40000 ALTER TABLE `AdvertisingStats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-26 20:13:45
