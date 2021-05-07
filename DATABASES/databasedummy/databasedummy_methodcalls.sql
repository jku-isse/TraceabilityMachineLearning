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
-- Table structure for table `methodcalls`
--

DROP TABLE IF EXISTS `methodcalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methodcalls` (
  `id` int(11) NOT NULL,
  `callermethodid` int(11) DEFAULT NULL,
  `callername` varchar(45) DEFAULT NULL,
  `callerclass` varchar(45) DEFAULT NULL,
  `callerclassid` int(11) DEFAULT NULL,
  `fullcaller` varchar(45) DEFAULT NULL,
  `calleemethodid` int(11) DEFAULT NULL,
  `calleename` varchar(45) DEFAULT NULL,
  `calleeclass` varchar(45) DEFAULT NULL,
  `calleeclassid` int(11) DEFAULT NULL,
  `fullcallee` varchar(45) DEFAULT NULL,
  `fullmethod` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `methodcalls`
--

LOCK TABLES `methodcalls` WRITE;
/*!40000 ALTER TABLE `methodcalls` DISABLE KEYS */;
INSERT INTO `methodcalls` VALUES (1,1,'m1','c1',1,'m1',2,'m2','c2',2,'m2',NULL),(2,5,'m5','c5',5,'m5',3,'m3','c3',3,'m3',NULL),(3,8,'m8','c8',8,'m8',7,'m7','c7',7,'m7',NULL),(4,10,'m10','c10',10,'m10',11,'m11','c11',11,'m11',NULL),(5,12,'m12','c12',12,'m12',13,'m13','c13',13,'m13',NULL),(6,19,'m19','c19',19,'m19',17,'m17','c17',17,'m17',NULL),(7,22,'m22','c22',22,'m22',23,'m23','c23',23,'m23',NULL),(8,24,'m24','c24',24,'m24',25,'m25','c25',25,'m25',NULL),(9,27,'m27','c27',27,'m27',28,'m28','c28',28,'m28',NULL),(10,31,'m31','c31',31,'m31',32,'m32','c32',32,'m32',NULL),(11,33,'m33','c33',33,'m33',35,'m35','c35',35,'m35',NULL),(12,36,'m36','c36',36,'m36',37,'m37','c37',37,'m37',NULL),(13,40,'m40','c40',40,'m40',41,'m41','c41',41,'m41',NULL),(16,46,'m46','c46',46,'m46',47,'m47','c47',47,'m47',NULL),(17,48,'m48','c48',48,'m48',51,'m51','c51',51,'m51',NULL),(18,52,'m52','c52',52,'m52',53,'m53','c53',53,'m53',NULL),(19,55,'m55','c55',55,'m55',56,'m56','c56',56,'m56',NULL),(20,59,'m59','c59',59,'m59',60,'m60','c60',60,'m60',NULL),(21,61,'m61','c61',61,'m61',62,'m62','c62',62,'m62',NULL),(22,65,'m65','c65',65,'m65',66,'m66','c66',66,'m66',NULL),(23,71,'m71','c71',71,'m71',72,'m72','c72',72,'m72',NULL),(24,73,'m73','c73',73,'m73',74,'m74','c74',74,'m74',NULL),(25,76,'m76','c76',76,'m76',77,'m77','c77',77,'m77',NULL),(26,80,'m80','c80',80,'m80',81,'m81','c81',81,'m81',NULL),(27,82,'m82','c82',82,'m82',84,'m84','c84',84,'m84',NULL),(28,85,'m85','c85',85,'m85',86,'m86','c86',86,'m86',NULL),(29,89,'m89','c89',89,'m89',90,'m90','c90',90,'m90',NULL),(30,94,'m94','c94',94,'m94',96,'m96','c96',96,'m96',NULL),(31,97,'m97','c97',97,'m97',100,'m100','c100',100,'m100',NULL);
/*!40000 ALTER TABLE `methodcalls` ENABLE KEYS */;
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
