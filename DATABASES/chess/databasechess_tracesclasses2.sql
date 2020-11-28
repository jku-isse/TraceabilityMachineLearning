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
-- Table structure for table `tracesclasses2`
--

DROP TABLE IF EXISTS `tracesclasses2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracesclasses2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `requirement` longtext,
  `requirementid` int(11) DEFAULT NULL,
  `classname` longtext,
  `classid` int(11) DEFAULT NULL,
  `gold` longtext,
  `subject` longtext,
  `gold2` longtext,
  `gold3` longtext,
  `gold4` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idtracesclasses_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracesclasses2`
--

LOCK TABLES `tracesclasses2` WRITE;
/*!40000 ALTER TABLE `tracesclasses2` DISABLE KEYS */;
INSERT INTO `tracesclasses2` VALUES (1,'R0',1,'de.java_chess.javaChess.GameController',1,'T','T','N',NULL,NULL),(2,'R1',2,'de.java_chess.javaChess.GameController',1,'N','N','N',NULL,NULL),(3,'R2',3,'de.java_chess.javaChess.GameController',1,'N','N','N',NULL,NULL),(4,'R3',4,'de.java_chess.javaChess.GameController',1,'T','T','N',NULL,NULL),(5,'R4',5,'de.java_chess.javaChess.GameController',1,'N','N','N',NULL,NULL),(6,'R5',6,'de.java_chess.javaChess.GameController',1,'T','T','T',NULL,NULL),(7,'R6',7,'de.java_chess.javaChess.GameController',1,'T','T','T',NULL,NULL),(8,'R7',8,'de.java_chess.javaChess.GameController',1,'N','N','N',NULL,NULL),(9,'R0',1,'de.java_chess.javaChess.JavaChess',3,'T','T','T',NULL,NULL),(10,'R1',2,'de.java_chess.javaChess.JavaChess',3,'N','N','N',NULL,NULL),(11,'R2',3,'de.java_chess.javaChess.JavaChess',3,'N','N','N',NULL,NULL),(12,'R3',4,'de.java_chess.javaChess.JavaChess',3,'N','N','N',NULL,NULL),(13,'R4',5,'de.java_chess.javaChess.JavaChess',3,'T','T','N',NULL,NULL),(14,'R5',6,'de.java_chess.javaChess.JavaChess',3,'N','N','N',NULL,NULL),(15,'R6',7,'de.java_chess.javaChess.JavaChess',3,'T','T','N',NULL,NULL),(16,'R7',8,'de.java_chess.javaChess.JavaChess',3,'N','N','N',NULL,NULL),(17,'R0',1,'de.java_chess.javaChess.action.AboutAction',4,'T','T','T',NULL,NULL),(18,'R1',2,'de.java_chess.javaChess.action.AboutAction',4,'N','N','N',NULL,NULL),(19,'R2',3,'de.java_chess.javaChess.action.AboutAction',4,'N','N','N',NULL,NULL),(20,'R3',4,'de.java_chess.javaChess.action.AboutAction',4,'N','N','N',NULL,NULL),(21,'R4',5,'de.java_chess.javaChess.action.AboutAction',4,'N','N','N',NULL,NULL),(22,'R5',6,'de.java_chess.javaChess.action.AboutAction',4,'N','N','N',NULL,NULL),(23,'R6',7,'de.java_chess.javaChess.action.AboutAction',4,'N','N','N',NULL,NULL),(24,'R7',8,'de.java_chess.javaChess.action.AboutAction',4,'N','N','N',NULL,NULL),(25,'R0',1,'de.java_chess.javaChess.action.HelpAction',5,'T','T','T',NULL,NULL),(26,'R1',2,'de.java_chess.javaChess.action.HelpAction',5,'N','N','N',NULL,NULL),(27,'R2',3,'de.java_chess.javaChess.action.HelpAction',5,'N','N','N',NULL,NULL),(28,'R3',4,'de.java_chess.javaChess.action.HelpAction',5,'N','N','N',NULL,NULL),(29,'R4',5,'de.java_chess.javaChess.action.HelpAction',5,'N','N','N',NULL,NULL),(30,'R5',6,'de.java_chess.javaChess.action.HelpAction',5,'N','N','N',NULL,NULL),(31,'R6',7,'de.java_chess.javaChess.action.HelpAction',5,'N','N','N',NULL,NULL),(32,'R7',8,'de.java_chess.javaChess.action.HelpAction',5,'N','N','N',NULL,NULL),(33,'R0',1,'de.java_chess.javaChess.action.JavaChessAction',6,'T','T','T',NULL,NULL),(34,'R1',2,'de.java_chess.javaChess.action.JavaChessAction',6,'N','N','N',NULL,NULL),(35,'R2',3,'de.java_chess.javaChess.action.JavaChessAction',6,'N','N','N',NULL,NULL),(36,'R3',4,'de.java_chess.javaChess.action.JavaChessAction',6,'N','N','N',NULL,NULL),(37,'R4',5,'de.java_chess.javaChess.action.JavaChessAction',6,'N','N','N',NULL,NULL),(38,'R5',6,'de.java_chess.javaChess.action.JavaChessAction',6,'N','N','N',NULL,NULL),(39,'R6',7,'de.java_chess.javaChess.action.JavaChessAction',6,'N','N','N',NULL,NULL),(40,'R7',8,'de.java_chess.javaChess.action.JavaChessAction',6,'N','N','N',NULL,NULL),(41,'R0',1,'de.java_chess.javaChess.action.LoadGameAction',7,'T','T','T',NULL,NULL),(42,'R1',2,'de.java_chess.javaChess.action.LoadGameAction',7,'N','N','E',NULL,NULL),(43,'R2',3,'de.java_chess.javaChess.action.LoadGameAction',7,'N','N','E',NULL,NULL),(44,'R3',4,'de.java_chess.javaChess.action.LoadGameAction',7,'N','N','E',NULL,NULL),(45,'R4',5,'de.java_chess.javaChess.action.LoadGameAction',7,'N','N','E',NULL,NULL),(46,'R5',6,'de.java_chess.javaChess.action.LoadGameAction',7,'N','N','E',NULL,NULL),(47,'R6',7,'de.java_chess.javaChess.action.LoadGameAction',7,'N','N','E',NULL,NULL),(48,'R7',8,'de.java_chess.javaChess.action.LoadGameAction',7,'N','N','E',NULL,NULL),(49,'R0',1,'de.java_chess.javaChess.action.ResetGameAction',8,'T','T','T',NULL,NULL),(50,'R1',2,'de.java_chess.javaChess.action.ResetGameAction',8,'N','N','E',NULL,NULL),(51,'R2',3,'de.java_chess.javaChess.action.ResetGameAction',8,'N','N','E',NULL,NULL),(52,'R3',4,'de.java_chess.javaChess.action.ResetGameAction',8,'N','N','E',NULL,NULL),(53,'R4',5,'de.java_chess.javaChess.action.ResetGameAction',8,'N','N','E',NULL,NULL),(54,'R5',6,'de.java_chess.javaChess.action.ResetGameAction',8,'N','N','E',NULL,NULL),(55,'R6',7,'de.java_chess.javaChess.action.ResetGameAction',8,'N','N','E',NULL,NULL),(56,'R7',8,'de.java_chess.javaChess.action.ResetGameAction',8,'N','N','E',NULL,NULL),(57,'R0',1,'de.java_chess.javaChess.action.SaveGameAction',9,'T','T','T',NULL,NULL),(58,'R1',2,'de.java_chess.javaChess.action.SaveGameAction',9,'N','N','E',NULL,NULL),(59,'R2',3,'de.java_chess.javaChess.action.SaveGameAction',9,'N','N','E',NULL,NULL),(60,'R3',4,'de.java_chess.javaChess.action.SaveGameAction',9,'N','N','E',NULL,NULL),(61,'R4',5,'de.java_chess.javaChess.action.SaveGameAction',9,'N','N','E',NULL,NULL),(62,'R5',6,'de.java_chess.javaChess.action.SaveGameAction',9,'T','T','E',NULL,NULL),(63,'R6',7,'de.java_chess.javaChess.action.SaveGameAction',9,'T','T','E',NULL,NULL),(64,'R7',8,'de.java_chess.javaChess.action.SaveGameAction',9,'N','N','E',NULL,NULL),(65,'R0',1,'de.java_chess.javaChess.action.SaveGameAsAction',10,'T','T','N',NULL,NULL),(66,'R1',2,'de.java_chess.javaChess.action.SaveGameAsAction',10,'N','N','N',NULL,NULL),(67,'R2',3,'de.java_chess.javaChess.action.SaveGameAsAction',10,'N','N','N',NULL,NULL),(68,'R3',4,'de.java_chess.javaChess.action.SaveGameAsAction',10,'N','N','N',NULL,NULL),(69,'R4',5,'de.java_chess.javaChess.action.SaveGameAsAction',10,'N','N','N',NULL,NULL),(70,'R5',6,'de.java_chess.javaChess.action.SaveGameAsAction',10,'T','T','T',NULL,NULL),(71,'R6',7,'de.java_chess.javaChess.action.SaveGameAsAction',10,'T','T','T',NULL,NULL),(72,'R7',8,'de.java_chess.javaChess.action.SaveGameAsAction',10,'N','N','N',NULL,NULL),(73,'R0',1,'de.java_chess.javaChess.bitboard.BitBoardImpl',12,'T','T','N',NULL,NULL),(74,'R1',2,'de.java_chess.javaChess.bitboard.BitBoardImpl',12,'T','T','N',NULL,NULL),(75,'R2',3,'de.java_chess.javaChess.bitboard.BitBoardImpl',12,'N','N','N',NULL,NULL),(76,'R3',4,'de.java_chess.javaChess.bitboard.BitBoardImpl',12,'T','T','N',NULL,NULL),(77,'R4',5,'de.java_chess.javaChess.bitboard.BitBoardImpl',12,'N','N','N',NULL,NULL),(78,'R5',6,'de.java_chess.javaChess.bitboard.BitBoardImpl',12,'T','T','T',NULL,NULL),(79,'R6',7,'de.java_chess.javaChess.bitboard.BitBoardImpl',12,'T','T','T',NULL,NULL),(80,'R7',8,'de.java_chess.javaChess.bitboard.BitBoardImpl',12,'N','N','N',NULL,NULL),(81,'R0',1,'de.java_chess.javaChess.dialogs.PlayerDialog',17,'E','E','E',NULL,NULL),(82,'R1',2,'de.java_chess.javaChess.dialogs.PlayerDialog',17,'E','E','E',NULL,NULL),(83,'R2',3,'de.java_chess.javaChess.dialogs.PlayerDialog',17,'E','E','E',NULL,NULL),(84,'R3',4,'de.java_chess.javaChess.dialogs.PlayerDialog',17,'E','E','E',NULL,NULL),(85,'R4',5,'de.java_chess.javaChess.dialogs.PlayerDialog',17,'E','E','E',NULL,NULL),(86,'R5',6,'de.java_chess.javaChess.dialogs.PlayerDialog',17,'E','E','E',NULL,NULL),(87,'R6',7,'de.java_chess.javaChess.dialogs.PlayerDialog',17,'E','E','E',NULL,NULL),(88,'R7',8,'de.java_chess.javaChess.dialogs.PlayerDialog',17,'E','E','E',NULL,NULL),(89,'R0',1,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl',21,'T','T','N',NULL,NULL),(90,'R1',2,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl',21,'N','N','N',NULL,NULL),(91,'R2',3,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl',21,'N','N','N',NULL,NULL),(92,'R3',4,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl',21,'T','T','N',NULL,NULL),(93,'R4',5,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl',21,'N','N','N',NULL,NULL),(94,'R5',6,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl',21,'T','T','N',NULL,NULL),(95,'R6',7,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl',21,'T','T','T',NULL,NULL),(96,'R7',8,'de.java_chess.javaChess.engine.BitBoardAnalyzerImpl',21,'N','N','N',NULL,NULL),(97,'R0',1,'de.java_chess.javaChess.engine.BitUtils',22,'E','E','E',NULL,NULL),(98,'R1',2,'de.java_chess.javaChess.engine.BitUtils',22,'E','E','E',NULL,NULL),(99,'R2',3,'de.java_chess.javaChess.engine.BitUtils',22,'E','E','E',NULL,NULL),(100,'R3',4,'de.java_chess.javaChess.engine.BitUtils',22,'E','E','E',NULL,NULL),(101,'R4',5,'de.java_chess.javaChess.engine.BitUtils',22,'E','E','E',NULL,NULL),(102,'R5',6,'de.java_chess.javaChess.engine.BitUtils',22,'E','E','E',NULL,NULL),(103,'R6',7,'de.java_chess.javaChess.engine.BitUtils',22,'E','E','E',NULL,NULL),(104,'R7',8,'de.java_chess.javaChess.engine.BitUtils',22,'E','E','E',NULL,NULL),(105,'R0',1,'de.java_chess.javaChess.engine.ChessEngineImpl',24,'T','T','E',NULL,NULL),(106,'R1',2,'de.java_chess.javaChess.engine.ChessEngineImpl',24,'T','T','E',NULL,NULL),(107,'R2',3,'de.java_chess.javaChess.engine.ChessEngineImpl',24,'N','N','E',NULL,NULL),(108,'R3',4,'de.java_chess.javaChess.engine.ChessEngineImpl',24,'T','T','E',NULL,NULL),(109,'R4',5,'de.java_chess.javaChess.engine.ChessEngineImpl',24,'T','T','E',NULL,NULL),(110,'R5',6,'de.java_chess.javaChess.engine.ChessEngineImpl',24,'T','T','E',NULL,NULL),(111,'R6',7,'de.java_chess.javaChess.engine.ChessEngineImpl',24,'T','T','T',NULL,NULL),(112,'R7',8,'de.java_chess.javaChess.engine.ChessEngineImpl',24,'N','N','E',NULL,NULL),(113,'R0',1,'de.java_chess.javaChess.engine.PlyGenerator',25,'T','T','N',NULL,NULL),(114,'R1',2,'de.java_chess.javaChess.engine.PlyGenerator',25,'N','N','N',NULL,NULL),(115,'R2',3,'de.java_chess.javaChess.engine.PlyGenerator',25,'N','N','N',NULL,NULL),(116,'R3',4,'de.java_chess.javaChess.engine.PlyGenerator',25,'T','T','N',NULL,NULL),(117,'R4',5,'de.java_chess.javaChess.engine.PlyGenerator',25,'N','N','N',NULL,NULL),(118,'R5',6,'de.java_chess.javaChess.engine.PlyGenerator',25,'T','T','T',NULL,NULL),(119,'R6',7,'de.java_chess.javaChess.engine.PlyGenerator',25,'T','T','T',NULL,NULL),(120,'R7',8,'de.java_chess.javaChess.engine.PlyGenerator',25,'N','N','N',NULL,NULL),(121,'R0',1,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl',28,'N','N','N',NULL,NULL),(122,'R1',2,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl',28,'N','N','N',NULL,NULL),(123,'R2',3,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl',28,'N','N','N',NULL,NULL),(124,'R3',4,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl',28,'N','N','N',NULL,NULL),(125,'R4',5,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl',28,'N','N','N',NULL,NULL),(126,'R5',6,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl',28,'T','T','N',NULL,NULL),(127,'R6',7,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl',28,'T','T','T',NULL,NULL),(128,'R7',8,'de.java_chess.javaChess.engine.hashtable.PlyHashtableEntryImpl',28,'N','N','N',NULL,NULL),(129,'R0',1,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl',29,'T','T','T',NULL,NULL),(130,'R1',2,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl',29,'N','N','N',NULL,NULL),(131,'R2',3,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl',29,'N','N','N',NULL,NULL),(132,'R3',4,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl',29,'T','T','N',NULL,NULL),(133,'R4',5,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl',29,'T','T','N',NULL,NULL),(134,'R5',6,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl',29,'T','T','N',NULL,NULL),(135,'R6',7,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl',29,'T','T','T',NULL,NULL),(136,'R7',8,'de.java_chess.javaChess.engine.hashtable.PlyHashtableImpl',29,'N','N','N',NULL,NULL),(137,'R0',1,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'N','N','N',NULL,NULL),(138,'R1',2,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'N','N','N',NULL,NULL),(139,'R2',3,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'N','N','N',NULL,NULL),(140,'R3',4,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'N','N','N',NULL,NULL),(141,'R4',5,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'N','N','N',NULL,NULL),(142,'R5',6,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'T','T','T',NULL,NULL),(143,'R6',7,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'T','T','T',NULL,NULL),(144,'R7',8,'de.java_chess.javaChess.engine.hashtable.ZobristKeyImpl',30,'N','N','N',NULL,NULL),(145,'R0',1,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl',32,'T','T','T',NULL,NULL),(146,'R1',2,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl',32,'N','N','N',NULL,NULL),(147,'R2',3,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl',32,'N','N','N',NULL,NULL),(148,'R3',4,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl',32,'N','N','N',NULL,NULL),(149,'R4',5,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl',32,'N','N','N',NULL,NULL),(150,'R5',6,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl',32,'T','T','T',NULL,NULL),(151,'R6',7,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl',32,'T','T','T',NULL,NULL),(152,'R7',8,'de.java_chess.javaChess.engine.opening_book.OpeningBookImpl',32,'N','N','N',NULL,NULL),(153,'R0',1,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction',33,'T','T','T',NULL,NULL),(154,'R1',2,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction',33,'N','N','N',NULL,NULL),(155,'R2',3,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction',33,'N','N','N',NULL,NULL),(156,'R3',4,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction',33,'N','N','N',NULL,NULL),(157,'R4',5,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction',33,'N','N','N',NULL,NULL),(158,'R5',6,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction',33,'N','N','N',NULL,NULL),(159,'R6',7,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction',33,'N','N','N',NULL,NULL),(160,'R7',8,'de.java_chess.javaChess.engine.opening_book.action.LoadOpeningsAction',33,'N','N','N',NULL,NULL),(161,'R0',1,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',34,'T','T','N',NULL,NULL),(162,'R1',2,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',34,'N','N','N',NULL,NULL),(163,'R2',3,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',34,'N','N','N',NULL,NULL),(164,'R3',4,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',34,'T','T','N',NULL,NULL),(165,'R4',5,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',34,'T','T','N',NULL,NULL),(166,'R5',6,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',34,'T','T','T',NULL,NULL),(167,'R6',7,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',34,'T','T','T',NULL,NULL),(168,'R7',8,'de.java_chess.javaChess.engine.permanent_brain.PermanentBrain',34,'N','N','N',NULL,NULL),(169,'R0',1,'de.java_chess.javaChess.game.GameStatus',52,'N','N','E',NULL,NULL),(170,'R1',2,'de.java_chess.javaChess.game.GameStatus',52,'N','N','E',NULL,NULL),(171,'R2',3,'de.java_chess.javaChess.game.GameStatus',52,'N','N','E',NULL,NULL),(172,'R3',4,'de.java_chess.javaChess.game.GameStatus',52,'N','N','E',NULL,NULL),(173,'R4',5,'de.java_chess.javaChess.game.GameStatus',52,'N','N','E',NULL,NULL),(174,'R5',6,'de.java_chess.javaChess.game.GameStatus',52,'T','T','E',NULL,NULL),(175,'R6',7,'de.java_chess.javaChess.game.GameStatus',52,'T','T','E',NULL,NULL),(176,'R7',8,'de.java_chess.javaChess.game.GameStatus',52,'N','N','E',NULL,NULL),(177,'R0',1,'de.java_chess.javaChess.game.GameImpl',51,'T','T','N',NULL,NULL),(178,'R1',2,'de.java_chess.javaChess.game.GameImpl',51,'N','N','N',NULL,NULL),(179,'R2',3,'de.java_chess.javaChess.game.GameImpl',51,'N','N','N',NULL,NULL),(180,'R3',4,'de.java_chess.javaChess.game.GameImpl',51,'N','N','N',NULL,NULL),(181,'R4',5,'de.java_chess.javaChess.game.GameImpl',51,'N','N','N',NULL,NULL),(182,'R5',6,'de.java_chess.javaChess.game.GameImpl',51,'T','T','T',NULL,NULL),(183,'R6',7,'de.java_chess.javaChess.game.GameImpl',51,'T','T','T',NULL,NULL),(184,'R7',8,'de.java_chess.javaChess.game.GameImpl',51,'N','N','N',NULL,NULL),(185,'R0',1,'de.java_chess.javaChess.menu.EditMenu',54,'T','T','T',NULL,NULL),(186,'R1',2,'de.java_chess.javaChess.menu.EditMenu',54,'N','N','N',NULL,NULL),(187,'R2',3,'de.java_chess.javaChess.menu.EditMenu',54,'N','N','N',NULL,NULL),(188,'R3',4,'de.java_chess.javaChess.menu.EditMenu',54,'N','N','N',NULL,NULL),(189,'R4',5,'de.java_chess.javaChess.menu.EditMenu',54,'N','N','N',NULL,NULL),(190,'R5',6,'de.java_chess.javaChess.menu.EditMenu',54,'N','N','N',NULL,NULL),(191,'R6',7,'de.java_chess.javaChess.menu.EditMenu',54,'N','N','N',NULL,NULL),(192,'R7',8,'de.java_chess.javaChess.menu.EditMenu',54,'N','N','N',NULL,NULL),(193,'R0',1,'de.java_chess.javaChess.notation.GameNotationImpl',56,'T','T','N',NULL,NULL),(194,'R1',2,'de.java_chess.javaChess.notation.GameNotationImpl',56,'N','N','N',NULL,NULL),(195,'R2',3,'de.java_chess.javaChess.notation.GameNotationImpl',56,'N','N','N',NULL,NULL),(196,'R3',4,'de.java_chess.javaChess.notation.GameNotationImpl',56,'N','N','N',NULL,NULL),(197,'R4',5,'de.java_chess.javaChess.notation.GameNotationImpl',56,'N','N','N',NULL,NULL),(198,'R5',6,'de.java_chess.javaChess.notation.GameNotationImpl',56,'T','T','T',NULL,NULL),(199,'R6',7,'de.java_chess.javaChess.notation.GameNotationImpl',56,'T','T','T',NULL,NULL),(200,'R7',8,'de.java_chess.javaChess.notation.GameNotationImpl',56,'N','N','N',NULL,NULL),(201,'R0',1,'de.java_chess.javaChess.notation.PlyNotationImpl',58,'N','N','N',NULL,NULL),(202,'R1',2,'de.java_chess.javaChess.notation.PlyNotationImpl',58,'N','N','N',NULL,NULL),(203,'R2',3,'de.java_chess.javaChess.notation.PlyNotationImpl',58,'N','N','N',NULL,NULL),(204,'R3',4,'de.java_chess.javaChess.notation.PlyNotationImpl',58,'T','T','N',NULL,NULL),(205,'R4',5,'de.java_chess.javaChess.notation.PlyNotationImpl',58,'N','N','N',NULL,NULL),(206,'R5',6,'de.java_chess.javaChess.notation.PlyNotationImpl',58,'T','T','T',NULL,NULL),(207,'R6',7,'de.java_chess.javaChess.notation.PlyNotationImpl',58,'T','T','T',NULL,NULL),(208,'R7',8,'de.java_chess.javaChess.notation.PlyNotationImpl',58,'N','N','N',NULL,NULL),(209,'R0',1,'de.java_chess.javaChess.pgn.GameLoader',59,'N','N','N',NULL,NULL),(210,'R1',2,'de.java_chess.javaChess.pgn.GameLoader',59,'N','N','N',NULL,NULL),(211,'R2',3,'de.java_chess.javaChess.pgn.GameLoader',59,'N','N','N',NULL,NULL),(212,'R3',4,'de.java_chess.javaChess.pgn.GameLoader',59,'T','T','T',NULL,NULL),(213,'R4',5,'de.java_chess.javaChess.pgn.GameLoader',59,'N','N','N',NULL,NULL),(214,'R5',6,'de.java_chess.javaChess.pgn.GameLoader',59,'T','T','N',NULL,NULL),(215,'R6',7,'de.java_chess.javaChess.pgn.GameLoader',59,'T','T','N',NULL,NULL),(216,'R7',8,'de.java_chess.javaChess.pgn.GameLoader',59,'N','N','N',NULL,NULL),(217,'R0',1,'de.java_chess.javaChess.pgn.PGNFile',60,'E','E','E',NULL,NULL),(218,'R1',2,'de.java_chess.javaChess.pgn.PGNFile',60,'E','E','E',NULL,NULL),(219,'R2',3,'de.java_chess.javaChess.pgn.PGNFile',60,'E','E','E',NULL,NULL),(220,'R3',4,'de.java_chess.javaChess.pgn.PGNFile',60,'E','E','E',NULL,NULL),(221,'R4',5,'de.java_chess.javaChess.pgn.PGNFile',60,'E','E','E',NULL,NULL),(222,'R5',6,'de.java_chess.javaChess.pgn.PGNFile',60,'E','E','E',NULL,NULL),(223,'R6',7,'de.java_chess.javaChess.pgn.PGNFile',60,'E','E','E',NULL,NULL),(224,'R7',8,'de.java_chess.javaChess.pgn.PGNFile',60,'E','E','E',NULL,NULL),(225,'R0',1,'de.java_chess.javaChess.pgn.PGNFileFilter',61,'N','N','N',NULL,NULL),(226,'R1',2,'de.java_chess.javaChess.pgn.PGNFileFilter',61,'N','N','N',NULL,NULL),(227,'R2',3,'de.java_chess.javaChess.pgn.PGNFileFilter',61,'N','N','N',NULL,NULL),(228,'R3',4,'de.java_chess.javaChess.pgn.PGNFileFilter',61,'T','T','T',NULL,NULL),(229,'R4',5,'de.java_chess.javaChess.pgn.PGNFileFilter',61,'N','N','N',NULL,NULL),(230,'R5',6,'de.java_chess.javaChess.pgn.PGNFileFilter',61,'N','N','N',NULL,NULL),(231,'R6',7,'de.java_chess.javaChess.pgn.PGNFileFilter',61,'N','N','N',NULL,NULL),(232,'R7',8,'de.java_chess.javaChess.pgn.PGNFileFilter',61,'N','N','N',NULL,NULL),(233,'R0',1,'de.java_chess.javaChess.pgn.PGNLexer',62,'N','N','N',NULL,NULL),(234,'R1',2,'de.java_chess.javaChess.pgn.PGNLexer',62,'N','N','N',NULL,NULL),(235,'R2',3,'de.java_chess.javaChess.pgn.PGNLexer',62,'N','N','N',NULL,NULL),(236,'R3',4,'de.java_chess.javaChess.pgn.PGNLexer',62,'T','T','T',NULL,NULL),(237,'R4',5,'de.java_chess.javaChess.pgn.PGNLexer',62,'N','N','N',NULL,NULL),(238,'R5',6,'de.java_chess.javaChess.pgn.PGNLexer',62,'N','N','N',NULL,NULL),(239,'R6',7,'de.java_chess.javaChess.pgn.PGNLexer',62,'N','N','N',NULL,NULL),(240,'R7',8,'de.java_chess.javaChess.pgn.PGNLexer',62,'N','N','N',NULL,NULL),(241,'R0',1,'de.java_chess.javaChess.pgn.PGNOutputStream',63,'N','N','N',NULL,NULL),(242,'R1',2,'de.java_chess.javaChess.pgn.PGNOutputStream',63,'N','N','N',NULL,NULL),(243,'R2',3,'de.java_chess.javaChess.pgn.PGNOutputStream',63,'N','N','N',NULL,NULL),(244,'R3',4,'de.java_chess.javaChess.pgn.PGNOutputStream',63,'T','T','T',NULL,NULL),(245,'R4',5,'de.java_chess.javaChess.pgn.PGNOutputStream',63,'N','N','N',NULL,NULL),(246,'R5',6,'de.java_chess.javaChess.pgn.PGNOutputStream',63,'N','N','N',NULL,NULL),(247,'R6',7,'de.java_chess.javaChess.pgn.PGNOutputStream',63,'N','N','N',NULL,NULL),(248,'R7',8,'de.java_chess.javaChess.pgn.PGNOutputStream',63,'N','N','N',NULL,NULL),(249,'R0',1,'de.java_chess.javaChess.pgn.PGNParser',64,'N','N','N',NULL,NULL),(250,'R1',2,'de.java_chess.javaChess.pgn.PGNParser',64,'N','N','N',NULL,NULL),(251,'R2',3,'de.java_chess.javaChess.pgn.PGNParser',64,'N','N','N',NULL,NULL),(252,'R3',4,'de.java_chess.javaChess.pgn.PGNParser',64,'T','T','T',NULL,NULL),(253,'R4',5,'de.java_chess.javaChess.pgn.PGNParser',64,'N','N','N',NULL,NULL),(254,'R5',6,'de.java_chess.javaChess.pgn.PGNParser',64,'T','T','N',NULL,NULL),(255,'R6',7,'de.java_chess.javaChess.pgn.PGNParser',64,'T','T','N',NULL,NULL),(256,'R7',8,'de.java_chess.javaChess.pgn.PGNParser',64,'N','N','N',NULL,NULL),(257,'R0',1,'de.java_chess.javaChess.piece.PieceImpl',68,'T','T','T',NULL,NULL),(258,'R1',2,'de.java_chess.javaChess.piece.PieceImpl',68,'T','T','T',NULL,NULL),(259,'R2',3,'de.java_chess.javaChess.piece.PieceImpl',68,'N','N','N',NULL,NULL),(260,'R3',4,'de.java_chess.javaChess.piece.PieceImpl',68,'N','N','N',NULL,NULL),(261,'R4',5,'de.java_chess.javaChess.piece.PieceImpl',68,'N','N','N',NULL,NULL),(262,'R5',6,'de.java_chess.javaChess.piece.PieceImpl',68,'T','T','T',NULL,NULL),(263,'R6',7,'de.java_chess.javaChess.piece.PieceImpl',68,'T','T','T',NULL,NULL),(264,'R7',8,'de.java_chess.javaChess.piece.PieceImpl',68,'N','N','N',NULL,NULL),(265,'R0',1,'de.java_chess.javaChess.ply.AnalyzedPlyImpl',70,'E','E','E',NULL,NULL),(266,'R1',2,'de.java_chess.javaChess.ply.AnalyzedPlyImpl',70,'E','E','E',NULL,NULL),(267,'R2',3,'de.java_chess.javaChess.ply.AnalyzedPlyImpl',70,'E','E','E',NULL,NULL),(268,'R3',4,'de.java_chess.javaChess.ply.AnalyzedPlyImpl',70,'E','E','E',NULL,NULL),(269,'R4',5,'de.java_chess.javaChess.ply.AnalyzedPlyImpl',70,'E','E','E',NULL,NULL),(270,'R5',6,'de.java_chess.javaChess.ply.AnalyzedPlyImpl',70,'E','E','E',NULL,NULL),(271,'R6',7,'de.java_chess.javaChess.ply.AnalyzedPlyImpl',70,'E','E','E',NULL,NULL),(272,'R7',8,'de.java_chess.javaChess.ply.AnalyzedPlyImpl',70,'E','E','E',NULL,NULL),(273,'R0',1,'de.java_chess.javaChess.ply.PlyImpl',76,'E','E','E',NULL,NULL),(274,'R1',2,'de.java_chess.javaChess.ply.PlyImpl',76,'E','E','E',NULL,NULL),(275,'R2',3,'de.java_chess.javaChess.ply.PlyImpl',76,'E','E','E',NULL,NULL),(276,'R3',4,'de.java_chess.javaChess.ply.PlyImpl',76,'E','E','E',NULL,NULL),(277,'R4',5,'de.java_chess.javaChess.ply.PlyImpl',76,'E','E','E',NULL,NULL),(278,'R5',6,'de.java_chess.javaChess.ply.PlyImpl',76,'E','E','E',NULL,NULL),(279,'R6',7,'de.java_chess.javaChess.ply.PlyImpl',76,'E','E','E',NULL,NULL),(280,'R7',8,'de.java_chess.javaChess.ply.PlyImpl',76,'E','E','E',NULL,NULL),(281,'R0',1,'de.java_chess.javaChess.position.PositionImpl',81,'T','T','N',NULL,NULL),(282,'R1',2,'de.java_chess.javaChess.position.PositionImpl',81,'T','T','N',NULL,NULL),(283,'R2',3,'de.java_chess.javaChess.position.PositionImpl',81,'N','N','N',NULL,NULL),(284,'R3',4,'de.java_chess.javaChess.position.PositionImpl',81,'T','T','N',NULL,NULL),(285,'R4',5,'de.java_chess.javaChess.position.PositionImpl',81,'N','N','N',NULL,NULL),(286,'R5',6,'de.java_chess.javaChess.position.PositionImpl',81,'T','T','T',NULL,NULL),(287,'R6',7,'de.java_chess.javaChess.position.PositionImpl',81,'T','T','T',NULL,NULL),(288,'R7',8,'de.java_chess.javaChess.position.PositionImpl',81,'N','N','N',NULL,NULL),(289,'R0',1,'de.java_chess.javaChess.renderer2d.AnimationLayer',83,'T','T','T',NULL,NULL),(290,'R1',2,'de.java_chess.javaChess.renderer2d.AnimationLayer',83,'N','N','N',NULL,NULL),(291,'R2',3,'de.java_chess.javaChess.renderer2d.AnimationLayer',83,'N','N','N',NULL,NULL),(292,'R3',4,'de.java_chess.javaChess.renderer2d.AnimationLayer',83,'N','N','N',NULL,NULL),(293,'R4',5,'de.java_chess.javaChess.renderer2d.AnimationLayer',83,'N','N','N',NULL,NULL),(294,'R5',6,'de.java_chess.javaChess.renderer2d.AnimationLayer',83,'N','N','N',NULL,NULL),(295,'R6',7,'de.java_chess.javaChess.renderer2d.AnimationLayer',83,'N','N','N',NULL,NULL),(296,'R7',8,'de.java_chess.javaChess.renderer2d.AnimationLayer',83,'N','N','N',NULL,NULL),(297,'R0',1,'de.java_chess.javaChess.renderer2d.BoardLayer',84,'T','T','T',NULL,NULL),(298,'R1',2,'de.java_chess.javaChess.renderer2d.BoardLayer',84,'N','N','N',NULL,NULL),(299,'R2',3,'de.java_chess.javaChess.renderer2d.BoardLayer',84,'N','N','N',NULL,NULL),(300,'R3',4,'de.java_chess.javaChess.renderer2d.BoardLayer',84,'N','N','N',NULL,NULL),(301,'R4',5,'de.java_chess.javaChess.renderer2d.BoardLayer',84,'N','N','N',NULL,NULL),(302,'R5',6,'de.java_chess.javaChess.renderer2d.BoardLayer',84,'N','N','N',NULL,NULL),(303,'R6',7,'de.java_chess.javaChess.renderer2d.BoardLayer',84,'N','N','N',NULL,NULL),(304,'R7',8,'de.java_chess.javaChess.renderer2d.BoardLayer',84,'N','N','N',NULL,NULL),(305,'R0',1,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',85,'T','T','T',NULL,NULL),(306,'R1',2,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',85,'T','T','N',NULL,NULL),(307,'R2',3,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',85,'N','N','N',NULL,NULL),(308,'R3',4,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',85,'N','N','N',NULL,NULL),(309,'R4',5,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',85,'N','N','N',NULL,NULL),(310,'R5',6,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',85,'T','T','T',NULL,NULL),(311,'R6',7,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',85,'T','T','T',NULL,NULL),(312,'R7',8,'de.java_chess.javaChess.renderer2d.ChessBoardRenderer2D',85,'N','N','N',NULL,NULL),(313,'R0',1,'de.java_chess.javaChess.renderer2d.ChessSet',86,'T','T','T',NULL,NULL),(314,'R1',2,'de.java_chess.javaChess.renderer2d.ChessSet',86,'N','N','N',NULL,NULL),(315,'R2',3,'de.java_chess.javaChess.renderer2d.ChessSet',86,'N','N','N',NULL,NULL),(316,'R3',4,'de.java_chess.javaChess.renderer2d.ChessSet',86,'N','N','N',NULL,NULL),(317,'R4',5,'de.java_chess.javaChess.renderer2d.ChessSet',86,'N','N','N',NULL,NULL),(318,'R5',6,'de.java_chess.javaChess.renderer2d.ChessSet',86,'N','N','N',NULL,NULL),(319,'R6',7,'de.java_chess.javaChess.renderer2d.ChessSet',86,'N','N','N',NULL,NULL),(320,'R7',8,'de.java_chess.javaChess.renderer2d.ChessSet',86,'N','N','N',NULL,NULL),(321,'R0',1,'de.java_chess.javaChess.renderer2d.ControlLayer',87,'T','T','T',NULL,NULL),(322,'R1',2,'de.java_chess.javaChess.renderer2d.ControlLayer',87,'T','T','N',NULL,NULL),(323,'R2',3,'de.java_chess.javaChess.renderer2d.ControlLayer',87,'N','N','N',NULL,NULL),(324,'R3',4,'de.java_chess.javaChess.renderer2d.ControlLayer',87,'N','N','N',NULL,NULL),(325,'R4',5,'de.java_chess.javaChess.renderer2d.ControlLayer',87,'N','N','N',NULL,NULL),(326,'R5',6,'de.java_chess.javaChess.renderer2d.ControlLayer',87,'T','T','N',NULL,NULL),(327,'R6',7,'de.java_chess.javaChess.renderer2d.ControlLayer',87,'T','T','N',NULL,NULL),(328,'R7',8,'de.java_chess.javaChess.renderer2d.ControlLayer',87,'N','N','N',NULL,NULL),(329,'R0',1,'de.java_chess.javaChess.renderer2d.EnginePanel',89,'T','T','T',NULL,NULL),(330,'R1',2,'de.java_chess.javaChess.renderer2d.EnginePanel',89,'N','N','N',NULL,NULL),(331,'R2',3,'de.java_chess.javaChess.renderer2d.EnginePanel',89,'N','N','N',NULL,NULL),(332,'R3',4,'de.java_chess.javaChess.renderer2d.EnginePanel',89,'N','N','N',NULL,NULL),(333,'R4',5,'de.java_chess.javaChess.renderer2d.EnginePanel',89,'N','N','N',NULL,NULL),(334,'R5',6,'de.java_chess.javaChess.renderer2d.EnginePanel',89,'N','N','N',NULL,NULL),(335,'R6',7,'de.java_chess.javaChess.renderer2d.EnginePanel',89,'T','T','N',NULL,NULL),(336,'R7',8,'de.java_chess.javaChess.renderer2d.EnginePanel',89,'T','T','N',NULL,NULL),(337,'R0',1,'de.java_chess.javaChess.renderer2d.GameTimerPanel',90,'T','T','T',NULL,NULL),(338,'R1',2,'de.java_chess.javaChess.renderer2d.GameTimerPanel',90,'N','N','N',NULL,NULL),(339,'R2',3,'de.java_chess.javaChess.renderer2d.GameTimerPanel',90,'N','N','N',NULL,NULL),(340,'R3',4,'de.java_chess.javaChess.renderer2d.GameTimerPanel',90,'T','T','N',NULL,NULL),(341,'R4',5,'de.java_chess.javaChess.renderer2d.GameTimerPanel',90,'N','N','N',NULL,NULL),(342,'R5',6,'de.java_chess.javaChess.renderer2d.GameTimerPanel',90,'T','T','N',NULL,NULL),(343,'R6',7,'de.java_chess.javaChess.renderer2d.GameTimerPanel',90,'T','T','N',NULL,NULL),(344,'R7',8,'de.java_chess.javaChess.renderer2d.GameTimerPanel',90,'T','T','N',NULL,NULL),(345,'R0',1,'de.java_chess.javaChess.renderer2d.NavigationPanel',91,'T','T','T',NULL,NULL),(346,'R1',2,'de.java_chess.javaChess.renderer2d.NavigationPanel',91,'N','N','N',NULL,NULL),(347,'R2',3,'de.java_chess.javaChess.renderer2d.NavigationPanel',91,'N','N','N',NULL,NULL),(348,'R3',4,'de.java_chess.javaChess.renderer2d.NavigationPanel',91,'N','N','N',NULL,NULL),(349,'R4',5,'de.java_chess.javaChess.renderer2d.NavigationPanel',91,'N','N','N',NULL,NULL),(350,'R5',6,'de.java_chess.javaChess.renderer2d.NavigationPanel',91,'N','N','N',NULL,NULL),(351,'R6',7,'de.java_chess.javaChess.renderer2d.NavigationPanel',91,'N','N','N',NULL,NULL),(352,'R7',8,'de.java_chess.javaChess.renderer2d.NavigationPanel',91,'N','N','N',NULL,NULL),(353,'R0',1,'de.java_chess.javaChess.renderer2d.NotationPanel',92,'T','T','T',NULL,NULL),(354,'R1',2,'de.java_chess.javaChess.renderer2d.NotationPanel',92,'N','N','N',NULL,NULL),(355,'R2',3,'de.java_chess.javaChess.renderer2d.NotationPanel',92,'N','N','N',NULL,NULL),(356,'R3',4,'de.java_chess.javaChess.renderer2d.NotationPanel',92,'N','N','N',NULL,NULL),(357,'R4',5,'de.java_chess.javaChess.renderer2d.NotationPanel',92,'N','N','N',NULL,NULL),(358,'R5',6,'de.java_chess.javaChess.renderer2d.NotationPanel',92,'T','T','N',NULL,NULL),(359,'R6',7,'de.java_chess.javaChess.renderer2d.NotationPanel',92,'T','T','N',NULL,NULL),(360,'R7',8,'de.java_chess.javaChess.renderer2d.NotationPanel',92,'T','T','N',NULL,NULL),(361,'R0',1,'de.java_chess.javaChess.renderer2d.PieceRenderer',93,'T','T','T',NULL,NULL),(362,'R1',2,'de.java_chess.javaChess.renderer2d.PieceRenderer',93,'N','N','N',NULL,NULL),(363,'R2',3,'de.java_chess.javaChess.renderer2d.PieceRenderer',93,'N','N','N',NULL,NULL),(364,'R3',4,'de.java_chess.javaChess.renderer2d.PieceRenderer',93,'N','N','N',NULL,NULL),(365,'R4',5,'de.java_chess.javaChess.renderer2d.PieceRenderer',93,'N','N','N',NULL,NULL),(366,'R5',6,'de.java_chess.javaChess.renderer2d.PieceRenderer',93,'N','N','N',NULL,NULL),(367,'R6',7,'de.java_chess.javaChess.renderer2d.PieceRenderer',93,'N','N','N',NULL,NULL),(368,'R7',8,'de.java_chess.javaChess.renderer2d.PieceRenderer',93,'N','N','N',NULL,NULL),(369,'R0',1,'de.java_chess.javaChess.renderer2d.PiecesLayer',94,'N','N','T',NULL,NULL),(370,'R1',2,'de.java_chess.javaChess.renderer2d.PiecesLayer',94,'T','T','T',NULL,NULL),(371,'R2',3,'de.java_chess.javaChess.renderer2d.PiecesLayer',94,'N','N','N',NULL,NULL),(372,'R3',4,'de.java_chess.javaChess.renderer2d.PiecesLayer',94,'N','N','N',NULL,NULL),(373,'R4',5,'de.java_chess.javaChess.renderer2d.PiecesLayer',94,'N','N','N',NULL,NULL),(374,'R5',6,'de.java_chess.javaChess.renderer2d.PiecesLayer',94,'T','T','N',NULL,NULL),(375,'R6',7,'de.java_chess.javaChess.renderer2d.PiecesLayer',94,'T','T','N',NULL,NULL),(376,'R7',8,'de.java_chess.javaChess.renderer2d.PiecesLayer',94,'N','N','N',NULL,NULL),(377,'R0',1,'de.java_chess.javaChess.renderer2d.PositionRenderer',95,'T','T','T',NULL,NULL),(378,'R1',2,'de.java_chess.javaChess.renderer2d.PositionRenderer',95,'N','N','N',NULL,NULL),(379,'R2',3,'de.java_chess.javaChess.renderer2d.PositionRenderer',95,'N','N','N',NULL,NULL),(380,'R3',4,'de.java_chess.javaChess.renderer2d.PositionRenderer',95,'N','N','N',NULL,NULL),(381,'R4',5,'de.java_chess.javaChess.renderer2d.PositionRenderer',95,'N','N','N',NULL,NULL),(382,'R5',6,'de.java_chess.javaChess.renderer2d.PositionRenderer',95,'T','T','T',NULL,NULL),(383,'R6',7,'de.java_chess.javaChess.renderer2d.PositionRenderer',95,'T','T','T',NULL,NULL),(384,'R7',8,'de.java_chess.javaChess.renderer2d.PositionRenderer',95,'N','N','N',NULL,NULL),(385,'R0',1,'de.java_chess.javaChess.renderer2d.StatusPanel',96,'T','T','T',NULL,NULL),(386,'R1',2,'de.java_chess.javaChess.renderer2d.StatusPanel',96,'N','N','N',NULL,NULL),(387,'R2',3,'de.java_chess.javaChess.renderer2d.StatusPanel',96,'N','N','N',NULL,NULL),(388,'R3',4,'de.java_chess.javaChess.renderer2d.StatusPanel',96,'N','N','N',NULL,NULL),(389,'R4',5,'de.java_chess.javaChess.renderer2d.StatusPanel',96,'T','T','N',NULL,NULL),(390,'R5',6,'de.java_chess.javaChess.renderer2d.StatusPanel',96,'N','N','N',NULL,NULL),(391,'R6',7,'de.java_chess.javaChess.renderer2d.StatusPanel',96,'T','T','N',NULL,NULL),(392,'R7',8,'de.java_chess.javaChess.renderer2d.StatusPanel',96,'N','N','N',NULL,NULL),(393,'R0',1,'de.java_chess.javaChess.renderer2d.TimerPanel',97,'T','T','T',NULL,NULL),(394,'R1',2,'de.java_chess.javaChess.renderer2d.TimerPanel',97,'T','T','N',NULL,NULL),(395,'R2',3,'de.java_chess.javaChess.renderer2d.TimerPanel',97,'N','N','N',NULL,NULL),(396,'R3',4,'de.java_chess.javaChess.renderer2d.TimerPanel',97,'T','T','N',NULL,NULL),(397,'R4',5,'de.java_chess.javaChess.renderer2d.TimerPanel',97,'N','N','N',NULL,NULL),(398,'R5',6,'de.java_chess.javaChess.renderer2d.TimerPanel',97,'T','T','N',NULL,NULL),(399,'R6',7,'de.java_chess.javaChess.renderer2d.TimerPanel',97,'T','T','N',NULL,NULL),(400,'R7',8,'de.java_chess.javaChess.renderer2d.TimerPanel',97,'N','N','N',NULL,NULL),(401,'R0',1,'de.java_chess.javaChess.util.ResourceLoader',101,'T','T','T',NULL,NULL),(402,'R1',2,'de.java_chess.javaChess.util.ResourceLoader',101,'N','N','N',NULL,NULL),(403,'R2',3,'de.java_chess.javaChess.util.ResourceLoader',101,'N','N','N',NULL,NULL),(404,'R3',4,'de.java_chess.javaChess.util.ResourceLoader',101,'N','N','N',NULL,NULL),(405,'R4',5,'de.java_chess.javaChess.util.ResourceLoader',101,'N','N','N',NULL,NULL),(406,'R5',6,'de.java_chess.javaChess.util.ResourceLoader',101,'N','N','N',NULL,NULL),(407,'R6',7,'de.java_chess.javaChess.util.ResourceLoader',101,'N','N','N',NULL,NULL),(408,'R7',8,'de.java_chess.javaChess.util.ResourceLoader',101,'N','N','N',NULL,NULL),(409,'R0',1,'de.java_chess.javaChess.util.Tools',103,'E','E','E',NULL,NULL),(410,'R1',2,'de.java_chess.javaChess.util.Tools',103,'E','E','E',NULL,NULL),(411,'R2',3,'de.java_chess.javaChess.util.Tools',103,'E','E','E',NULL,NULL),(412,'R3',4,'de.java_chess.javaChess.util.Tools',103,'E','E','E',NULL,NULL),(413,'R4',5,'de.java_chess.javaChess.util.Tools',103,'E','E','E',NULL,NULL),(414,'R5',6,'de.java_chess.javaChess.util.Tools',103,'E','E','E',NULL,NULL),(415,'R6',7,'de.java_chess.javaChess.util.Tools',103,'E','E','E',NULL,NULL),(416,'R7',8,'de.java_chess.javaChess.util.Tools',103,'E','E','E',NULL,NULL),(417,'R0',1,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',104,'T','T','N',NULL,NULL),(418,'R1',2,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',104,'N','N','N',NULL,NULL),(419,'R2',3,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',104,'N','N','N',NULL,NULL),(420,'R3',4,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',104,'N','N','N',NULL,NULL),(421,'R4',5,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',104,'N','N','N',NULL,NULL),(422,'R5',6,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',104,'T','T','N',NULL,NULL),(423,'R6',7,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',104,'T','T','T',NULL,NULL),(424,'R7',8,'de.java_chess.javaChess.util.UnsynchronizedArrayStack',104,'N','N','N',NULL,NULL);
/*!40000 ALTER TABLE `tracesclasses2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 21:29:48
