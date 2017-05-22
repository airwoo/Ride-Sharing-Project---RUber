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
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `username` varchar(15) NOT NULL,
  `first` varchar(15) DEFAULT NULL,
  `last` varchar(15) DEFAULT NULL,
  `ruemail` varchar(45) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `confirm` varchar(15) DEFAULT NULL,
  `own` varchar(10) DEFAULT NULL,
  `make1` varchar(20) DEFAULT NULL,
  `seats1` varchar(10) DEFAULT NULL,
  `make2` varchar(20) DEFAULT NULL,
  `seats2` varchar(10) DEFAULT NULL,
  `make3` varchar(20) DEFAULT NULL,
  `seats3` varchar(10) DEFAULT NULL,
  `timesLockout` int(11) DEFAULT '0' COMMENT 'number of times locked out, if 0 it does insert if >0 does update\n',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('airwoo','Brandon','Woo','airwoo@gmail.com','twicetwice','2','2','subaru','2','nissan','4','','',0),('azir101','league','legends','game@gmail.com','league101','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('cavsfan','lebron','james','james@gmail.com','crossover','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('growsgrows','Ashwin','Kadaru','kadaru@gmail.com','kneeknee','kneeknee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('testtest','123','456','123@yahoo.com','abc123','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('timothy','timothy','timothy','timothy','timothy','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('timothyb','tim','t','t','timothyb','timothyb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('TurtleBlaster','Sean','Kim','kim@gmail.com','annie96','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('twicefan','Momo','Nayeon','twice@yahoo.com','chayeon','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-26 20:13:43
