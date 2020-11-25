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
-- Table structure for table `superclasses`
--

DROP TABLE IF EXISTS `superclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `superclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `superclassid` int(11) DEFAULT NULL,
  `superclassname` longtext,
  `ownerclassid` int(11) DEFAULT NULL,
  `childclassname` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superclasses`
--

LOCK TABLES `superclasses` WRITE;
/*!40000 ALTER TABLE `superclasses` DISABLE KEYS */;
INSERT INTO `superclasses` VALUES (1,6,'de.java_chess.javaChess.action.JavaChessAction',4,'de.java_chess.javaChess.action.AboutAction'),(2,6,'de.java_chess.javaChess.action.JavaChessAction',5,'de.java_chess.javaChess.action.HelpAction'),(3,6,'de.java_chess.javaChess.action.JavaChessAction',7,'de.java_chess.javaChess.action.LoadGameAction'),(4,6,'de.java_chess.javaChess.action.JavaChessAction',8,'de.java_chess.javaChess.action.ResetGameAction'),(5,6,'de.java_chess.javaChess.action.JavaChessAction',9,'de.java_chess.javaChess.action.SaveGameAction'),(6,9,'de.java_chess.javaChess.action.SaveGameAction',10,'de.java_chess.javaChess.action.SaveGameAsAction'),(7,6,'de.java_chess.javaChess.action.JavaChessAction',33,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction'),(8,76,'de.java_chess.javaChess.ply.PlyImpl',72,'de.java_chess.javaChess.ply.CastlingPlyImpl'),(9,76,'de.java_chess.javaChess.ply.PlyImpl',74,'de.java_chess.javaChess.ply.EnPassantPlyImpl'),(10,76,'de.java_chess.javaChess.ply.PlyImpl',78,'de.java_chess.javaChess.ply.TransformationPlyImpl'),(11,13,'de.java_chess.javaChess.board.Board',11,'de.java_chess.javaChess.bitboard.BitBoard'),(12,75,'de.java_chess.javaChess.ply.Ply',71,'de.java_chess.javaChess.ply.CastlingPly'),(13,75,'de.java_chess.javaChess.ply.Ply',73,'de.java_chess.javaChess.ply.EnPassantPly'),(14,75,'de.java_chess.javaChess.ply.Ply',77,'de.java_chess.javaChess.ply.TransformationPly'),(15,13,'de.java_chess.javaChess.board.Board',11,'de.java_chess.javaChess.bitboard.BitBoard'),(16,75,'de.java_chess.javaChess.ply.Ply',71,'de.java_chess.javaChess.ply.CastlingPly'),(17,75,'de.java_chess.javaChess.ply.Ply',73,'de.java_chess.javaChess.ply.EnPassantPly'),(18,75,'de.java_chess.javaChess.ply.Ply',77,'de.java_chess.javaChess.ply.TransformationPly');
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

-- Dump completed on 2020-11-26  0:20:16
