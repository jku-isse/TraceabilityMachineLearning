-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: databasechess
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
-- Table structure for table `methodssuperclasses`
--

DROP TABLE IF EXISTS `methodssuperclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methodssuperclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `methodid` varchar(45) DEFAULT NULL,
  `fullmethodname` longtext,
  `fullmethodnameshort` longtext,
  `classid` varchar(45) DEFAULT NULL,
  `classname` longtext,
  `superclassmethodid` varchar(45) DEFAULT NULL,
  `fullsuperclassname` longtext,
  `fullsuperclassnameshort` longtext,
  `superclassid` varchar(45) DEFAULT NULL,
  `superclassname` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `methodssuperclasses`
--

LOCK TABLES `methodssuperclasses` WRITE;
/*!40000 ALTER TABLE `methodssuperclasses` DISABLE KEYS */;
INSERT INTO `methodssuperclasses` VALUES (1,'53','de.java_chess.javaChess.action.SaveGameAsAction.-init-(de.java_chess.javaChess.notation.GameNotation)','de.java_chess.javaChess.action.SaveGameAsAction.-init-','10','de.java_chess.javaChess.action.SaveGameAsAction','49','de.java_chess.javaChess.action.SaveGameAction.-init-(de.java_chess.javaChess.notation.GameNotation)','de.java_chess.javaChess.action.SaveGameAction.-init-','9','de.java_chess.javaChess.action.SaveGameAction'),(2,'54','de.java_chess.javaChess.action.SaveGameAsAction.actionPerformed(java.awt.event.ActionEvent)','de.java_chess.javaChess.action.SaveGameAsAction.actionPerformed','10','de.java_chess.javaChess.action.SaveGameAsAction','51','de.java_chess.javaChess.action.SaveGameAction.actionPerformed(java.awt.event.ActionEvent)','de.java_chess.javaChess.action.SaveGameAction.actionPerformed','9','de.java_chess.javaChess.action.SaveGameAction'),(3,'565','de.java_chess.javaChess.ply.CastlingPlyImpl.toString()','de.java_chess.javaChess.ply.CastlingPlyImpl.toString','72','de.java_chess.javaChess.ply.CastlingPlyImpl','585','de.java_chess.javaChess.ply.PlyImpl.toString()','de.java_chess.javaChess.ply.PlyImpl.toString','76','de.java_chess.javaChess.ply.PlyImpl');
/*!40000 ALTER TABLE `methodssuperclasses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-26  0:20:16
