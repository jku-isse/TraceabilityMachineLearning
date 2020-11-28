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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'de.java_chess.javaChess.GameController'),(2,'de.java_chess.javaChess.GameState'),(3,'de.java_chess.javaChess.JavaChess'),(4,'de.java_chess.javaChess.action.AboutAction'),(5,'de.java_chess.javaChess.action.HelpAction'),(6,'de.java_chess.javaChess.action.JavaChessAction'),(7,'de.java_chess.javaChess.action.LoadGameAction'),(8,'de.java_chess.javaChess.action.ResetGameAction'),(9,'de.java_chess.javaChess.action.SaveGameAction'),(10,'de.java_chess.javaChess.action.SaveGameAsAction'),(11,'de.java_chess.javaChess.bitboard.BitBoard'),(12,'de.java_chess.javaChess.bitboard.BitBoardImpl'),(13,'de.java_chess.javaChess.board.Board'),(14,'de.java_chess.javaChess.dialogs.DialogAbout'),(15,'de.java_chess.javaChess.dialogs.DialogAbout_CloseButton_keyAdapter'),(16,'de.java_chess.javaChess.dialogs.PieceSelectionPanel'),(17,'de.java_chess.javaChess.dialogs.PlayerDialog'),(18,'de.java_chess.javaChess.dialogs.SetupBoardDialog'),(19,'de.java_chess.javaChess.dialogs.TransformationDialog'),(20,'de.java_chess.javaChess.engine.BitBoardAnalyzer'),(21,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl'),(22,'de.java_chess.javaChess.engine.BitUtils'),(23,'de.java_chess.javaChess.engine.ChessEngine'),(24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(25,'de.java_chess.javaChess.engine.PlyGenerator'),(26,'de.java_chess.javaChess.engine.hashtable.PlyHashtable'),(27,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntry'),(28,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl'),(29,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl'),(30,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl'),(31,'de.java_chess.javaChess.engine.opening_book.OpeningBook'),(32,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl'),(33,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction'),(34,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain'),(35,'de.java_chess.javaChess.engine.permanent_brain.PreComputedPly'),(36,'de.java_chess.javaChess.engine.permanent_brain.PreComputedPlyImpl'),(37,'de.java_chess.javaChess.engine.test.AnalyzerTest1'),(38,'de.java_chess.javaChess.engine.test.AnalyzerTest2'),(39,'de.java_chess.javaChess.engine.test.BoardConsistencyTest1'),(40,'de.java_chess.javaChess.engine.test.ChessEngineTest'),(41,'de.java_chess.javaChess.engine.test.KingInKnightCheckTest'),(42,'de.java_chess.javaChess.engine.test.MinimaxTest1'),(43,'de.java_chess.javaChess.engine.test.MinimaxTest2'),(44,'de.java_chess.javaChess.engine.test.PlyGeneratorTest1'),(45,'de.java_chess.javaChess.engine.test.PlyGeneratorTest2'),(46,'de.java_chess.javaChess.engine.test.PlyGeneratorTest3'),(47,'de.java_chess.javaChess.engine.test.PlyGeneratorTest4'),(48,'de.java_chess.javaChess.engine.test.PlyGeneratorTest5'),(49,'de.java_chess.javaChess.engine.test.PlyGeneratorTest6'),(50,'de.java_chess.javaChess.game.Game'),(51,'de.java_chess.javaChess.game.GameImpl$GameStatus'),(52,'de.java_chess.javaChess.game.GameImpl'),(53,'de.java_chess.javaChess.listener.EngineStatusListener'),(54,'de.java_chess.javaChess.menu.EditMenu'),(55,'de.java_chess.javaChess.notation.GameNotation'),(56,'de.java_chess.javaChess.notation.GameNotationImpl'),(57,'de.java_chess.javaChess.notation.PlyNotation'),(58,'de.java_chess.javaChess.notation.PlyNotationImpl'),(59,'de.java_chess.javaChess.pgn.GameLoader'),(60,'de.java_chess.javaChess.pgn.PGNFile'),(61,'de.java_chess.javaChess.pgn.PGNFileFilter'),(62,'de.java_chess.javaChess.pgn.PGNLexer'),(63,'de.java_chess.javaChess.pgn.PGNOutputStream'),(64,'de.java_chess.javaChess.pgn.PGNParser'),(65,'de.java_chess.javaChess.pgn.PGNPlyFragment'),(66,'de.java_chess.javaChess.pgn.PGNTokenTypes'),(67,'de.java_chess.javaChess.piece.Piece'),(68,'de.java_chess.javaChess.piece.PieceImpl'),(69,'de.java_chess.javaChess.ply.AnalyzedPly'),(70,'de.java_chess.javaChess.ply.AnalyzedPlyImpl'),(71,'de.java_chess.javaChess.ply.CastlingPly'),(72,'de.java_chess.javaChess.ply.CastlingPlyImpl'),(73,'de.java_chess.javaChess.ply.EnPassantPly'),(74,'de.java_chess.javaChess.ply.EnPassantPlyImpl'),(75,'de.java_chess.javaChess.ply.Ply'),(76,'de.java_chess.javaChess.ply.PlyImpl'),(77,'de.java_chess.javaChess.ply.TransformationPly'),(78,'de.java_chess.javaChess.ply.TransformationPlyImpl'),(79,'de.java_chess.javaChess.position.IllegalPositionException'),(80,'de.java_chess.javaChess.position.Position'),(81,'de.java_chess.javaChess.position.PositionImpl'),(82,'de.java_chess.javaChess.renderer.ChessBoardRenderer'),(83,'de.java_chess.javaChess.renderer2d.AnimationLayer'),(84,'de.java_chess.javaChess.renderer2d.BoardLayer'),(85,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D'),(86,'de.java_chess.javaChess.renderer2d.ChessSet'),(87,'de.java_chess.javaChess.renderer2d.ControlLayer'),(88,'de.java_chess.javaChess.renderer2d.CountdownTimerPanel'),(89,'de.java_chess.javaChess.renderer2d.EnginePanel'),(90,'de.java_chess.javaChess.renderer2d.GameTimerPanel'),(91,'de.java_chess.javaChess.renderer2d.NavigationPanel'),(92,'de.java_chess.javaChess.renderer2d.NotationPanel'),(93,'de.java_chess.javaChess.renderer2d.PieceRenderer'),(94,'de.java_chess.javaChess.renderer2d.PiecesLayer'),(95,'de.java_chess.javaChess.renderer2d.PositionRenderer'),(96,'de.java_chess.javaChess.renderer2d.StatusPanel'),(97,'de.java_chess.javaChess.renderer2d.TimerPanel'),(98,'de.java_chess.javaChess.test.JavaChessTest'),(99,'de.java_chess.javaChess.timer.GameTimer'),(100,'de.java_chess.javaChess.util.ArrayStackIterator'),(101,'de.java_chess.javaChess.util.ResourceLoader'),(102,'de.java_chess.javaChess.util.StringTextDocument'),(103,'de.java_chess.javaChess.util.Tools'),(104,'de.java_chess.javaChess.util.UnsynchronizedArrayStack');
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

-- Dump completed on 2020-11-28 21:29:50
