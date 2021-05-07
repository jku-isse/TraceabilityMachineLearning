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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldclasses`
--

LOCK TABLES `fieldclasses` WRITE;
/*!40000 ALTER TABLE `fieldclasses` DISABLE KEYS */;
INSERT INTO `fieldclasses` VALUES (1,'in',1,'MPEGDecoder.BitInputStream',2,'MPEGDecoder.Block'),(2,'store',6,'MPEGDecoder.DataStore',2,'MPEGDecoder.Block'),(3,'header',3,'MPEGDecoder.BlockHeader',2,'MPEGDecoder.Block'),(4,'sequence',25,'MPEGDecoder.SequenceHeader',6,'MPEGDecoder.DataStore'),(5,'gop',11,'MPEGDecoder.GOPHeader',6,'MPEGDecoder.DataStore'),(6,'picture',22,'MPEGDecoder.PictureHeader',6,'MPEGDecoder.DataStore'),(7,'macro',19,'MPEGDecoder.MacroHeader',6,'MPEGDecoder.DataStore'),(8,'screen',4,'MPEGDecoder.BorderPanel',6,'MPEGDecoder.DataStore'),(9,'bevelPanel1',4,'MPEGDecoder.BorderPanel',7,'MPEGDecoder.Detail'),(10,'bevelPanel2',4,'MPEGDecoder.BorderPanel',7,'MPEGDecoder.Detail'),(11,'this$0',7,'MPEGDecoder.Detail',8,'MPEGDecoder.Detail$1'),(12,'idct',12,'MPEGDecoder.IDCT',9,'MPEGDecoder.FrameImage2'),(13,'instream',1,'MPEGDecoder.BitInputStream',10,'MPEGDecoder.GOP'),(14,'picture',21,'MPEGDecoder.Picture',10,'MPEGDecoder.GOP'),(15,'header',11,'MPEGDecoder.GOPHeader',10,'MPEGDecoder.GOP'),(16,'store',6,'MPEGDecoder.DataStore',10,'MPEGDecoder.GOP'),(17,'bevelPanel1',4,'MPEGDecoder.BorderPanel',14,'MPEGDecoder.ListFrame'),(18,'bevelPanel2',4,'MPEGDecoder.BorderPanel',14,'MPEGDecoder.ListFrame'),(19,'server',26,'MPEGDecoder.ServerReq',14,'MPEGDecoder.ListFrame'),(20,'parent',33,'MPEGDecoder.VODClient',14,'MPEGDecoder.ListFrame'),(21,'detail',7,'MPEGDecoder.Detail',14,'MPEGDecoder.ListFrame'),(22,'serverselect',27,'MPEGDecoder.ServerSelect',14,'MPEGDecoder.ListFrame'),(23,'this$0',14,'MPEGDecoder.ListFrame',15,'MPEGDecoder.ListFrame$1'),(24,'this$0',14,'MPEGDecoder.ListFrame',16,'MPEGDecoder.ListFrame$2'),(25,'this$0',14,'MPEGDecoder.ListFrame',17,'MPEGDecoder.ListFrame$3'),(26,'this$0',14,'MPEGDecoder.ListFrame',18,'MPEGDecoder.ListFrame$4'),(27,'instream',1,'MPEGDecoder.BitInputStream',21,'MPEGDecoder.Picture'),(28,'header',22,'MPEGDecoder.PictureHeader',21,'MPEGDecoder.Picture'),(29,'store',6,'MPEGDecoder.DataStore',21,'MPEGDecoder.Picture'),(30,'bevelPanel1',4,'MPEGDecoder.BorderPanel',27,'MPEGDecoder.ServerSelect'),(31,'bevelPanel2',4,'MPEGDecoder.BorderPanel',27,'MPEGDecoder.ServerSelect'),(32,'listframe',14,'MPEGDecoder.ListFrame',27,'MPEGDecoder.ServerSelect'),(33,'this$0',27,'MPEGDecoder.ServerSelect',28,'MPEGDecoder.ServerSelect$1'),(34,'this$0',27,'MPEGDecoder.ServerSelect',29,'MPEGDecoder.ServerSelect$2'),(35,'this$0',27,'MPEGDecoder.ServerSelect',30,'MPEGDecoder.ServerSelect$3'),(36,'instream',1,'MPEGDecoder.BitInputStream',31,'MPEGDecoder.Slice'),(37,'store',6,'MPEGDecoder.DataStore',31,'MPEGDecoder.Slice'),(38,'bevelPanel2',4,'MPEGDecoder.BorderPanel',33,'MPEGDecoder.VODClient'),(39,'bevelPanel3',4,'MPEGDecoder.BorderPanel',33,'MPEGDecoder.VODClient'),(40,'listframe',14,'MPEGDecoder.ListFrame',33,'MPEGDecoder.VODClient'),(41,'server',26,'MPEGDecoder.ServerReq',33,'MPEGDecoder.VODClient'),(42,'curmovie',20,'MPEGDecoder.Movie',33,'MPEGDecoder.VODClient'),(43,'panel1',4,'MPEGDecoder.BorderPanel',33,'MPEGDecoder.VODClient'),(44,'panel2',4,'MPEGDecoder.BorderPanel',33,'MPEGDecoder.VODClient'),(45,'video',37,'MPEGDecoder.Video',33,'MPEGDecoder.VODClient'),(46,'this$0',33,'MPEGDecoder.VODClient',34,'MPEGDecoder.VODClient$1'),(47,'this$0',33,'MPEGDecoder.VODClient',35,'MPEGDecoder.VODClient$2'),(48,'this$0',33,'MPEGDecoder.VODClient',36,'MPEGDecoder.VODClient$3'),(49,'instream',1,'MPEGDecoder.BitInputStream',37,'MPEGDecoder.Video'),(50,'gop',10,'MPEGDecoder.GOP',37,'MPEGDecoder.Video'),(51,'header',25,'MPEGDecoder.SequenceHeader',37,'MPEGDecoder.Video'),(52,'store',6,'MPEGDecoder.DataStore',37,'MPEGDecoder.Video'),(53,'vod',33,'MPEGDecoder.VODClient',37,'MPEGDecoder.Video');
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

-- Dump completed on 2020-03-05 12:35:10
