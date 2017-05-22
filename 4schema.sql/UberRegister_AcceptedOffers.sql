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
-- Table structure for table `AcceptedOffers`
--

DROP TABLE IF EXISTS `AcceptedOffers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AcceptedOffers` (
  `offerer` varchar(15) NOT NULL DEFAULT '',
  `accepter` varchar(15) NOT NULL DEFAULT '',
  `tStart` varchar(5) NOT NULL DEFAULT '',
  `first` varchar(15) DEFAULT NULL,
  `tEnd` varchar(5) DEFAULT NULL,
  `departure` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `car` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tStart`,`offerer`,`accepter`),
  KEY `offerer` (`offerer`),
  KEY `accepter` (`accepter`),
  CONSTRAINT `AcceptedOffers_ibfk_1` FOREIGN KEY (`offerer`) REFERENCES `Users` (`username`),
  CONSTRAINT `AcceptedOffers_ibfk_2` FOREIGN KEY (`accepter`) REFERENCES `Users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcceptedOffers`
--

LOCK TABLES `AcceptedOffers` WRITE;
/*!40000 ALTER TABLE `AcceptedOffers` DISABLE KEYS */;
INSERT INTO `AcceptedOffers` VALUES ('cavsfan','airwoo','4:00','test','5:00','Testington','Testopia','Tesla'),('cavsfan','testtest','4:00','test','5:00','Testington','Testopia','Tesla'),('cavsfan','timothyb','4:00','test','5:00','Testington','Testopia','Tesla'),('cavsfan','turtleblaster','4:00','test','5:00','Testington','Testopia','Tesla'),('turtleblaster','airwoo','4:15','Sean','4:30','ca','mcd','subaru'),('turtleblaster','airwoo','Sean','turtleblaster','4:15','4:30','ca','mcd'),('timothyb','testtest','tim','timothyb','3:20','4:00','busch','livi');
/*!40000 ALTER TABLE `AcceptedOffers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-26 20:13:46
