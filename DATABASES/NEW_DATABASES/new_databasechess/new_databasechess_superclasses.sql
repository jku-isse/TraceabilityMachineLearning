-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_databasechess
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `superclassid` longtext,
  `superclassname` longtext,
  `ownerclassid` longtext,
  `ownerclassname` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superclasses`
--

LOCK TABLES `superclasses` WRITE;
/*!40000 ALTER TABLE `superclasses` DISABLE KEYS */;
INSERT INTO `superclasses` VALUES (1,'6','JavaChessAction','4','AboutAction'),(2,'6','JavaChessAction','5','HelpAction'),(3,'6','JavaChessAction','7','LoadGameAction'),(4,'6','JavaChessAction','8','ResetGameAction'),(5,'6','JavaChessAction','9','SaveGameAction'),(6,'9','SaveGameAction','10','SaveGameAsAction'),(7,'6','JavaChessAction','33','LoadOpeningsAction'),(8,'76','PlyImpl','72','CastlingPlyImpl'),(9,'76','PlyImpl','74','EnPassantPlyImpl'),(10,'76','PlyImpl','78','TransformationPlyImpl'),(11,'13','Board','11','BitBoard'),(12,'75','Ply','71','CastlingPly'),(13,'75','Ply','73','EnPassantPly'),(14,'75','Ply','77','TransformationPly');
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

-- Dump completed on 2021-03-09 17:04:48
