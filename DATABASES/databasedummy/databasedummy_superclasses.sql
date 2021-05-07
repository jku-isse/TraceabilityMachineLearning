-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: databasedummy
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
-- Table structure for table `superclasses`
--

DROP TABLE IF EXISTS `superclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `superclasses` (
  `id` int(11) NOT NULL,
  `superclassid` varchar(45) DEFAULT NULL,
  `superclassname` varchar(45) DEFAULT NULL,
  `ownerclassid` varchar(45) DEFAULT NULL,
  `childclassname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superclasses`
--

LOCK TABLES `superclasses` WRITE;
/*!40000 ALTER TABLE `superclasses` DISABLE KEYS */;
INSERT INTO `superclasses` VALUES (1,'25','c25','26','c26'),(2,'29','c29','28','c28'),(3,'30','c30','31','c31'),(4,'33','c33','34','c34'),(5,'37','c37','38','c38'),(6,'37','c37','39','c39'),(7,'43','c43','41','c41'),(8,'43','c43','42','c42'),(9,'44','c44','45','c45'),(10,'44','c44','46','c46'),(11,'48','c48','49','c49'),(12,'48','c48','50','c50'),(13,'74','c74','75','c75'),(14,'78','c78','77','c77'),(15,'79','c79','80','c80'),(16,'82','c82','83','c83'),(17,'86','c86','87','c87'),(18,'86','c86','88','c88'),(19,'91','c91','90','c90'),(20,'91','c91','92','c92'),(21,'95','c95','93','c93'),(22,'95','c95','94','c94'),(23,'97','c97','98','c98'),(24,'97','c97','99','c99');
/*!40000 ALTER TABLE `superclasses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-16 12:09:26
