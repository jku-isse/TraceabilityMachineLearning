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
-- Table structure for table `interfaces`
--

DROP TABLE IF EXISTS `interfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interfaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceclassid` int(11) DEFAULT NULL,
  `interfacename` longtext,
  `ownerclassid` int(11) DEFAULT NULL,
  `classname` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interfaces`
--

LOCK TABLES `interfaces` WRITE;
/*!40000 ALTER TABLE `interfaces` DISABLE KEYS */;
INSERT INTO `interfaces` VALUES (1,53,'de.java_chess.javaChess.listener.EngineStatusListener',3,'de.java_chess.javaChess.JavaChess'),(2,11,'de.java_chess.javaChess.bitboard.BitBoard',12,'de.java_chess.javaChess.bitboard.BitBoardImpl'),(3,67,'de.java_chess.javaChess.piece.Piece',16,'de.java_chess.javaChess.dialogs.PieceSelectionPanel'),(4,20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',21,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl'),(5,23,'de.java_chess.javaChess.engine.ChessEngine',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(6,27,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntry',28,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl'),(7,26,'de.java_chess.javaChess.engine.hashtable.PlyHashtable',29,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl'),(8,31,'de.java_chess.javaChess.engine.opening_book.OpeningBook',32,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl'),(9,35,'de.java_chess.javaChess.engine.permanent_brain.PreComputedPly',36,'de.java_chess.javaChess.engine.permanent_brain.PreComputedPlyImpl'),(10,50,'de.java_chess.javaChess.game.Game',52,'de.java_chess.javaChess.game.GameImpl'),(11,55,'de.java_chess.javaChess.notation.GameNotation',56,'de.java_chess.javaChess.notation.GameNotationImpl'),(12,57,'de.java_chess.javaChess.notation.PlyNotation',58,'de.java_chess.javaChess.notation.PlyNotationImpl'),(13,66,'de.java_chess.javaChess.pgn.PGNTokenTypes',62,'de.java_chess.javaChess.pgn.PGNLexer'),(14,66,'de.java_chess.javaChess.pgn.PGNTokenTypes',64,'de.java_chess.javaChess.pgn.PGNParser'),(15,67,'de.java_chess.javaChess.piece.Piece',68,'de.java_chess.javaChess.piece.PieceImpl'),(16,69,'de.java_chess.javaChess.ply.AnalyzedPly',70,'de.java_chess.javaChess.ply.AnalyzedPlyImpl'),(17,71,'de.java_chess.javaChess.ply.CastlingPly',72,'de.java_chess.javaChess.ply.CastlingPlyImpl'),(18,73,'de.java_chess.javaChess.ply.EnPassantPly',74,'de.java_chess.javaChess.ply.EnPassantPlyImpl'),(19,75,'de.java_chess.javaChess.ply.Ply',76,'de.java_chess.javaChess.ply.PlyImpl'),(20,77,'de.java_chess.javaChess.ply.TransformationPly',78,'de.java_chess.javaChess.ply.TransformationPlyImpl'),(21,80,'de.java_chess.javaChess.position.Position',81,'de.java_chess.javaChess.position.PositionImpl'),(22,82,'de.java_chess.javaChess.renderer.ChessBoardRenderer',85,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D'),(23,99,'de.java_chess.javaChess.timer.GameTimer',90,'de.java_chess.javaChess.renderer2d.GameTimerPanel');
/*!40000 ALTER TABLE `interfaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-07 15:41:53
