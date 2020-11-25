-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: databasevod
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'MPEGDecoder.BitInputStream'),(2,'MPEGDecoder.Block'),(3,'MPEGDecoder.BlockHeader'),(4,'MPEGDecoder.BorderPanel'),(5,'MPEGDecoder.CONST'),(6,'MPEGDecoder.DataStore'),(7,'MPEGDecoder.Detail'),(8,'MPEGDecoder.Detail$1'),(9,'MPEGDecoder.FrameImage2'),(10,'MPEGDecoder.GOP'),(11,'MPEGDecoder.GOPHeader'),(12,'MPEGDecoder.IDCT'),(13,'MPEGDecoder.ImageButton'),(14,'MPEGDecoder.ListFrame'),(15,'MPEGDecoder.ListFrame$1'),(16,'MPEGDecoder.ListFrame$2'),(17,'MPEGDecoder.ListFrame$3'),(18,'MPEGDecoder.ListFrame$4'),(19,'MPEGDecoder.MacroHeader'),(20,'MPEGDecoder.Movie'),(21,'MPEGDecoder.Picture'),(22,'MPEGDecoder.PictureHeader'),(23,'MPEGDecoder.PlayTimer'),(24,'MPEGDecoder.ScreenPanel'),(25,'MPEGDecoder.SequenceHeader'),(26,'MPEGDecoder.ServerReq'),(27,'MPEGDecoder.ServerSelect'),(28,'MPEGDecoder.ServerSelect$1'),(29,'MPEGDecoder.ServerSelect$2'),(30,'MPEGDecoder.ServerSelect$3'),(31,'MPEGDecoder.Slice'),(32,'MPEGDecoder.Time'),(33,'MPEGDecoder.VODClient'),(34,'MPEGDecoder.VODClient$1'),(35,'MPEGDecoder.VODClient$2'),(36,'MPEGDecoder.VODClient$3'),(37,'MPEGDecoder.Video');
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

-- Dump completed on 2020-11-26  0:21:38
