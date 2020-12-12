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
-- Table structure for table `fieldclasses`
--

DROP TABLE IF EXISTS `fieldclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldname` longtext,
  `fieldtypeclassid` int(11) DEFAULT NULL,
  `fieldtype` longtext,
  `ownerclassid` int(11) DEFAULT NULL,
  `classname` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldclasses`
--

LOCK TABLES `fieldclasses` WRITE;
/*!40000 ALTER TABLE `fieldclasses` DISABLE KEYS */;
INSERT INTO `fieldclasses` VALUES (1,'_game',50,'de.java_chess.javaChess.game.Game',1,'de.java_chess.javaChess.GameController'),(2,'_gameNotation',55,'de.java_chess.javaChess.notation.GameNotation',1,'de.java_chess.javaChess.GameController'),(3,'_engine',23,'de.java_chess.javaChess.engine.ChessEngine',1,'de.java_chess.javaChess.GameController'),(4,'_board',13,'de.java_chess.javaChess.board.Board',1,'de.java_chess.javaChess.GameController'),(5,'_renderer',82,'de.java_chess.javaChess.renderer.ChessBoardRenderer',1,'de.java_chess.javaChess.GameController'),(6,'_gameTimer',99,'de.java_chess.javaChess.timer.GameTimer',1,'de.java_chess.javaChess.GameController'),(7,'_instance',3,'de.java_chess.javaChess.JavaChess',3,'de.java_chess.javaChess.JavaChess'),(8,'jpStatus',96,'de.java_chess.javaChess.renderer2d.StatusPanel',3,'de.java_chess.javaChess.JavaChess'),(9,'jpNotation',92,'de.java_chess.javaChess.renderer2d.NotationPanel',3,'de.java_chess.javaChess.JavaChess'),(10,'jpEngine',89,'de.java_chess.javaChess.renderer2d.EnginePanel',3,'de.java_chess.javaChess.JavaChess'),(11,'jpNavigation',91,'de.java_chess.javaChess.renderer2d.NavigationPanel',3,'de.java_chess.javaChess.JavaChess'),(12,'_game',50,'de.java_chess.javaChess.game.Game',3,'de.java_chess.javaChess.JavaChess'),(13,'_gameNotation',55,'de.java_chess.javaChess.notation.GameNotation',3,'de.java_chess.javaChess.JavaChess'),(14,'_board',11,'de.java_chess.javaChess.bitboard.BitBoard',3,'de.java_chess.javaChess.JavaChess'),(15,'_renderer',82,'de.java_chess.javaChess.renderer.ChessBoardRenderer',3,'de.java_chess.javaChess.JavaChess'),(16,'_engine',23,'de.java_chess.javaChess.engine.ChessEngine',3,'de.java_chess.javaChess.JavaChess'),(17,'_controller',1,'de.java_chess.javaChess.GameController',3,'de.java_chess.javaChess.JavaChess'),(18,'_gameTimer',90,'de.java_chess.javaChess.renderer2d.GameTimerPanel',3,'de.java_chess.javaChess.JavaChess'),(19,'editMenu',54,'de.java_chess.javaChess.menu.EditMenu',3,'de.java_chess.javaChess.JavaChess'),(20,'_gameNotation',55,'de.java_chess.javaChess.notation.GameNotation',9,'de.java_chess.javaChess.action.SaveGameAction'),(21,'_pgnFileFilter',61,'de.java_chess.javaChess.pgn.PGNFileFilter',10,'de.java_chess.javaChess.action.SaveGameAsAction'),(22,'_instance',14,'de.java_chess.javaChess.dialogs.DialogAbout',14,'de.java_chess.javaChess.dialogs.DialogAbout'),(23,'adaptee',14,'de.java_chess.javaChess.dialogs.DialogAbout',15,'de.java_chess.javaChess.dialogs.DialogAbout_CloseButton_keyAdapter'),(24,'setupBoardDialog',18,'de.java_chess.javaChess.dialogs.SetupBoardDialog',16,'de.java_chess.javaChess.dialogs.PieceSelectionPanel'),(25,'_set',86,'de.java_chess.javaChess.renderer2d.ChessSet',16,'de.java_chess.javaChess.dialogs.PieceSelectionPanel'),(26,'bitBoard',12,'de.java_chess.javaChess.bitboard.BitBoardImpl',18,'de.java_chess.javaChess.dialogs.SetupBoardDialog'),(27,'gameController',1,'de.java_chess.javaChess.GameController',18,'de.java_chess.javaChess.dialogs.SetupBoardDialog'),(28,'boardRenderer',85,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',18,'de.java_chess.javaChess.dialogs.SetupBoardDialog'),(29,'_instance',19,'de.java_chess.javaChess.dialogs.TransformationDialog',19,'de.java_chess.javaChess.dialogs.TransformationDialog'),(30,'_board',11,'de.java_chess.javaChess.bitboard.BitBoard',21,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl'),(31,'_game',50,'de.java_chess.javaChess.game.Game',21,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl'),(32,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',21,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl'),(33,'_game',50,'de.java_chess.javaChess.game.Game',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(34,'_board',13,'de.java_chess.javaChess.board.Board',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(35,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(36,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(37,'_permanentBrain',34,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(38,'_hashtable',26,'de.java_chess.javaChess.engine.hashtable.PlyHashtable',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(39,'_openingBook',31,'de.java_chess.javaChess.engine.opening_book.OpeningBook',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(40,'_bestPly',69,'de.java_chess.javaChess.ply.AnalyzedPly',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(41,'_enginePanel',89,'de.java_chess.javaChess.renderer2d.EnginePanel',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(42,'_statusPanel',96,'de.java_chess.javaChess.renderer2d.StatusPanel',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(43,'_lastUserPly',75,'de.java_chess.javaChess.ply.Ply',24,'de.java_chess.javaChess.engine.ChessEngineImpl'),(44,'_game',50,'de.java_chess.javaChess.game.Game',25,'de.java_chess.javaChess.engine.PlyGenerator'),(45,'_hashtable',26,'de.java_chess.javaChess.engine.hashtable.PlyHashtable',25,'de.java_chess.javaChess.engine.PlyGenerator'),(46,'_board',11,'de.java_chess.javaChess.bitboard.BitBoard',25,'de.java_chess.javaChess.engine.PlyGenerator'),(47,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',25,'de.java_chess.javaChess.engine.PlyGenerator'),(48,'_board',13,'de.java_chess.javaChess.board.Board',28,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl'),(49,'_ply',75,'de.java_chess.javaChess.ply.Ply',28,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl'),(50,'_instance',30,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl'),(51,'_notation',55,'de.java_chess.javaChess.notation.GameNotation',32,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl'),(52,'_openingBook',31,'de.java_chess.javaChess.engine.opening_book.OpeningBook',33,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction'),(53,'_engine',23,'de.java_chess.javaChess.engine.ChessEngine',34,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain'),(54,'_ply',69,'de.java_chess.javaChess.ply.AnalyzedPly',36,'de.java_chess.javaChess.engine.permanent_brain.PreComputedPlyImpl'),(55,'_game',50,'de.java_chess.javaChess.game.Game',37,'de.java_chess.javaChess.engine.test.AnalyzerTest1'),(56,'_board',13,'de.java_chess.javaChess.board.Board',37,'de.java_chess.javaChess.engine.test.AnalyzerTest1'),(57,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',37,'de.java_chess.javaChess.engine.test.AnalyzerTest1'),(58,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',37,'de.java_chess.javaChess.engine.test.AnalyzerTest1'),(59,'_game',50,'de.java_chess.javaChess.game.Game',38,'de.java_chess.javaChess.engine.test.AnalyzerTest2'),(60,'_board',13,'de.java_chess.javaChess.board.Board',38,'de.java_chess.javaChess.engine.test.AnalyzerTest2'),(61,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',38,'de.java_chess.javaChess.engine.test.AnalyzerTest2'),(62,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',38,'de.java_chess.javaChess.engine.test.AnalyzerTest2'),(63,'_game',50,'de.java_chess.javaChess.game.Game',39,'de.java_chess.javaChess.engine.test.BoardConsistencyTest1'),(64,'_board',11,'de.java_chess.javaChess.bitboard.BitBoard',39,'de.java_chess.javaChess.engine.test.BoardConsistencyTest1'),(65,'_engine',23,'de.java_chess.javaChess.engine.ChessEngine',39,'de.java_chess.javaChess.engine.test.BoardConsistencyTest1'),(66,'_game',50,'de.java_chess.javaChess.game.Game',41,'de.java_chess.javaChess.engine.test.KingInKnightCheckTest'),(67,'_board',13,'de.java_chess.javaChess.board.Board',41,'de.java_chess.javaChess.engine.test.KingInKnightCheckTest'),(68,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',41,'de.java_chess.javaChess.engine.test.KingInKnightCheckTest'),(69,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',41,'de.java_chess.javaChess.engine.test.KingInKnightCheckTest'),(70,'_game',50,'de.java_chess.javaChess.game.Game',42,'de.java_chess.javaChess.engine.test.MinimaxTest1'),(71,'_board',11,'de.java_chess.javaChess.bitboard.BitBoard',42,'de.java_chess.javaChess.engine.test.MinimaxTest1'),(72,'_engine',23,'de.java_chess.javaChess.engine.ChessEngine',42,'de.java_chess.javaChess.engine.test.MinimaxTest1'),(73,'_game',50,'de.java_chess.javaChess.game.Game',43,'de.java_chess.javaChess.engine.test.MinimaxTest2'),(74,'_board',11,'de.java_chess.javaChess.bitboard.BitBoard',43,'de.java_chess.javaChess.engine.test.MinimaxTest2'),(75,'_engine',23,'de.java_chess.javaChess.engine.ChessEngine',43,'de.java_chess.javaChess.engine.test.MinimaxTest2'),(76,'_game',50,'de.java_chess.javaChess.game.Game',44,'de.java_chess.javaChess.engine.test.PlyGeneratorTest1'),(77,'_board',13,'de.java_chess.javaChess.board.Board',44,'de.java_chess.javaChess.engine.test.PlyGeneratorTest1'),(78,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',44,'de.java_chess.javaChess.engine.test.PlyGeneratorTest1'),(79,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',44,'de.java_chess.javaChess.engine.test.PlyGeneratorTest1'),(80,'_game',50,'de.java_chess.javaChess.game.Game',45,'de.java_chess.javaChess.engine.test.PlyGeneratorTest2'),(81,'_board',13,'de.java_chess.javaChess.board.Board',45,'de.java_chess.javaChess.engine.test.PlyGeneratorTest2'),(82,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',45,'de.java_chess.javaChess.engine.test.PlyGeneratorTest2'),(83,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',45,'de.java_chess.javaChess.engine.test.PlyGeneratorTest2'),(84,'_game',50,'de.java_chess.javaChess.game.Game',46,'de.java_chess.javaChess.engine.test.PlyGeneratorTest3'),(85,'_board',13,'de.java_chess.javaChess.board.Board',46,'de.java_chess.javaChess.engine.test.PlyGeneratorTest3'),(86,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',46,'de.java_chess.javaChess.engine.test.PlyGeneratorTest3'),(87,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',46,'de.java_chess.javaChess.engine.test.PlyGeneratorTest3'),(88,'_game',50,'de.java_chess.javaChess.game.Game',47,'de.java_chess.javaChess.engine.test.PlyGeneratorTest4'),(89,'_board',13,'de.java_chess.javaChess.board.Board',47,'de.java_chess.javaChess.engine.test.PlyGeneratorTest4'),(90,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',47,'de.java_chess.javaChess.engine.test.PlyGeneratorTest4'),(91,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',47,'de.java_chess.javaChess.engine.test.PlyGeneratorTest4'),(92,'_game',50,'de.java_chess.javaChess.game.Game',48,'de.java_chess.javaChess.engine.test.PlyGeneratorTest5'),(93,'_board',13,'de.java_chess.javaChess.board.Board',48,'de.java_chess.javaChess.engine.test.PlyGeneratorTest5'),(94,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',48,'de.java_chess.javaChess.engine.test.PlyGeneratorTest5'),(95,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',48,'de.java_chess.javaChess.engine.test.PlyGeneratorTest5'),(96,'_game',50,'de.java_chess.javaChess.game.Game',49,'de.java_chess.javaChess.engine.test.PlyGeneratorTest6'),(97,'_board',13,'de.java_chess.javaChess.board.Board',49,'de.java_chess.javaChess.engine.test.PlyGeneratorTest6'),(98,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',49,'de.java_chess.javaChess.engine.test.PlyGeneratorTest6'),(99,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',49,'de.java_chess.javaChess.engine.test.PlyGeneratorTest6'),(100,'_ply',75,'de.java_chess.javaChess.ply.Ply',51,'de.java_chess.javaChess.game.GameImpl$GameStatus'),(101,'_gameStatus',104,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',52,'de.java_chess.javaChess.game.GameImpl'),(102,'notationPanel',92,'de.java_chess.javaChess.renderer2d.NotationPanel',54,'de.java_chess.javaChess.menu.EditMenu'),(103,'_notationPanel',92,'de.java_chess.javaChess.renderer2d.NotationPanel',56,'de.java_chess.javaChess.notation.GameNotationImpl'),(104,'_ply',75,'de.java_chess.javaChess.ply.Ply',58,'de.java_chess.javaChess.notation.PlyNotationImpl'),(105,'_piece',67,'de.java_chess.javaChess.piece.Piece',58,'de.java_chess.javaChess.notation.PlyNotationImpl'),(106,'_game',50,'de.java_chess.javaChess.game.Game',59,'de.java_chess.javaChess.pgn.GameLoader'),(107,'_board',13,'de.java_chess.javaChess.board.Board',59,'de.java_chess.javaChess.pgn.GameLoader'),(108,'_plyGenerator',25,'de.java_chess.javaChess.engine.PlyGenerator',59,'de.java_chess.javaChess.pgn.GameLoader'),(109,'_analyzer',20,'de.java_chess.javaChess.engine.BitBoardAnalyzer',59,'de.java_chess.javaChess.pgn.GameLoader'),(110,'_parser',64,'de.java_chess.javaChess.pgn.PGNParser',60,'de.java_chess.javaChess.pgn.PGNFile'),(111,'_notation',55,'de.java_chess.javaChess.notation.GameNotation',64,'de.java_chess.javaChess.pgn.PGNParser'),(112,'_gameLoader',59,'de.java_chess.javaChess.pgn.GameLoader',64,'de.java_chess.javaChess.pgn.PGNParser'),(113,'_origin',80,'de.java_chess.javaChess.position.Position',65,'de.java_chess.javaChess.pgn.PGNPlyFragment'),(114,'_destination',80,'de.java_chess.javaChess.position.Position',65,'de.java_chess.javaChess.pgn.PGNPlyFragment'),(115,'_ply',75,'de.java_chess.javaChess.ply.Ply',70,'de.java_chess.javaChess.ply.AnalyzedPlyImpl'),(116,'_attackedPosition',80,'de.java_chess.javaChess.position.Position',74,'de.java_chess.javaChess.ply.EnPassantPlyImpl'),(117,'_source',80,'de.java_chess.javaChess.position.Position',76,'de.java_chess.javaChess.ply.PlyImpl'),(118,'_destination',80,'de.java_chess.javaChess.position.Position',76,'de.java_chess.javaChess.ply.PlyImpl'),(119,'_piecesLayer',94,'de.java_chess.javaChess.renderer2d.PiecesLayer',83,'de.java_chess.javaChess.renderer2d.AnimationLayer'),(120,'_ply',75,'de.java_chess.javaChess.ply.Ply',83,'de.java_chess.javaChess.renderer2d.AnimationLayer'),(121,'_board',13,'de.java_chess.javaChess.board.Board',85,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D'),(122,'_controlLayer',87,'de.java_chess.javaChess.renderer2d.ControlLayer',85,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D'),(123,'_piecesLayer',94,'de.java_chess.javaChess.renderer2d.PiecesLayer',85,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D'),(124,'_controller',1,'de.java_chess.javaChess.GameController',87,'de.java_chess.javaChess.renderer2d.ControlLayer'),(125,'_piecesLayer',94,'de.java_chess.javaChess.renderer2d.PiecesLayer',87,'de.java_chess.javaChess.renderer2d.ControlLayer'),(126,'_white',97,'de.java_chess.javaChess.renderer2d.TimerPanel',90,'de.java_chess.javaChess.renderer2d.GameTimerPanel'),(127,'_black',97,'de.java_chess.javaChess.renderer2d.TimerPanel',90,'de.java_chess.javaChess.renderer2d.GameTimerPanel'),(128,'_gameNotation',55,'de.java_chess.javaChess.notation.GameNotation',92,'de.java_chess.javaChess.renderer2d.NotationPanel'),(129,'_set',86,'de.java_chess.javaChess.renderer2d.ChessSet',93,'de.java_chess.javaChess.renderer2d.PieceRenderer'),(130,'_board',13,'de.java_chess.javaChess.board.Board',94,'de.java_chess.javaChess.renderer2d.PiecesLayer'),(131,'_set',86,'de.java_chess.javaChess.renderer2d.ChessSet',94,'de.java_chess.javaChess.renderer2d.PiecesLayer'),(132,'_animationLayer',83,'de.java_chess.javaChess.renderer2d.AnimationLayer',94,'de.java_chess.javaChess.renderer2d.PiecesLayer'),(133,'_instance',101,'de.java_chess.javaChess.util.ResourceLoader',101,'de.java_chess.javaChess.util.ResourceLoader');
/*!40000 ALTER TABLE `fieldclasses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 21:29:47