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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `classname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'c1'),(2,'c2'),(3,'c3'),(4,'c4'),(5,'c5'),(6,'c6'),(7,'c7'),(8,'c8'),(9,'c9'),(10,'c10'),(11,'c11'),(12,'c12'),(13,'c13'),(14,'c14'),(15,'c15'),(16,'c16'),(17,'c17'),(18,'c18'),(19,'c19'),(20,'c20'),(21,'c21'),(22,'c22'),(23,'c23'),(24,'c24'),(25,'c25'),(26,'c26'),(27,'c27'),(28,'c28'),(29,'c29'),(30,'c30'),(31,'c31'),(32,'c32'),(33,'c33'),(34,'c34'),(35,'c35'),(36,'c36'),(37,'c37'),(38,'c38'),(39,'c39'),(40,'c40'),(41,'c41'),(42,'c42'),(43,'c43'),(44,'c44'),(45,'c45'),(46,'c46'),(47,'c47'),(48,'c48'),(49,'c49'),(50,'c50'),(51,'c51'),(52,'c52'),(53,'c53'),(54,'c54'),(55,'c55'),(56,'c56'),(57,'c57'),(58,'c58'),(59,'c59'),(60,'c60'),(61,'c61'),(62,'c62'),(63,'c63'),(64,'c64'),(65,'c65'),(66,'c66'),(67,'c67'),(68,'c68'),(69,'c69'),(70,'c70'),(71,'c71'),(72,'c72'),(73,'c73'),(74,'c74'),(75,'c75'),(76,'c76'),(77,'c77'),(78,'c78'),(79,'c79'),(80,'c80'),(81,'c81'),(82,'c82'),(83,'c83'),(84,'c84'),(85,'c85'),(86,'c86'),(87,'c87'),(88,'c88'),(89,'c89'),(90,'c90'),(91,'c91'),(92,'c92'),(93,'c93'),(94,'c94'),(95,'c95'),(96,'c96'),(97,'c97'),(98,'c98'),(99,'c99'),(100,'c100');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
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
