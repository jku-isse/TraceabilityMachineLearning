-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `traces`
--

DROP TABLE IF EXISTS `traces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traces` (
  `id` int(11) NOT NULL,
  `requirement` longtext,
  `requirementid` int(11) DEFAULT NULL,
  `method` longtext,
  `methodname` longtext,
  `fullmethod` longtext,
  `methodid` int(11) DEFAULT NULL,
  `classname` longtext,
  `classid` int(11) DEFAULT NULL,
  `shortmethodname` longtext,
  `goldfinal` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traces`
--

LOCK TABLES `traces` WRITE;
/*!40000 ALTER TABLE `traces` DISABLE KEYS */;
INSERT INTO `traces` VALUES (1,'r1',1,'SetPassengerInfo','SetPassengerInfo','SetPassengerInfo',1,'Passenger',1,'SetPassengerInfo','N'),(2,'r1',1,'BookTicket','BookTicket','BookTicket',2,'Vehicle',2,'BookTicket','N'),(3,'r1',1,'BookTicket','BookTicket','BookTicket',3,'Train',3,'BookTicket','N'),(4,'r1',1,'ReserveSeat','ReserveSeat','ReserveSeat',4,'Seat',6,'ReserveSeat','N'),(5,'r1',1,'Start','Start','Start',5,'Car',4,'Start','N'),(6,'r1',1,'StartGPS','StartGPS','StartGPS',6,'GPS',5,'StartGPS','N'),(7,'r1',1,'Start','Start','Start',7,'Vehicle',2,'Start','N');
/*!40000 ALTER TABLE `traces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15 13:44:55
