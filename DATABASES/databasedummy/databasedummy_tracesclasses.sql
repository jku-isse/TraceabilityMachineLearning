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
-- Table structure for table `tracesclasses`
--

DROP TABLE IF EXISTS `tracesclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracesclasses` (
  `id` int(11) NOT NULL,
  `requirement` varchar(45) DEFAULT NULL,
  `requirementid` int(11) DEFAULT NULL,
  `classname` varchar(45) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `SubjectGold` varchar(45) DEFAULT NULL,
  `goldfinal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracesclasses`
--

LOCK TABLES `tracesclasses` WRITE;
/*!40000 ALTER TABLE `tracesclasses` DISABLE KEYS */;
INSERT INTO `tracesclasses` VALUES (1,'r1',1,'c1',1,'T','T'),(2,'r1',1,'c2',2,'T','T'),(3,'r1',1,'c3',3,'T','T'),(4,'r1',1,'c4',4,'T','T'),(5,'r1',1,'c5',5,'T','T'),(6,'r1',1,'c6',6,'T','T'),(7,'r1',1,'c7',7,'T','T'),(8,'r1',1,'c8',8,'T','T'),(9,'r1',1,'c9',9,'T','T'),(10,'r1',1,'c10',10,'T','T'),(11,'r1',1,'c11',11,'T','T'),(12,'r1',1,'c12',12,'T','T'),(13,'r1',1,'c13',13,'T','T'),(14,'r1',1,'c14',14,'T','T'),(15,'r1',1,'c15',15,'T','T'),(16,'r1',1,'c16',16,'T','T'),(17,'r1',1,'c17',17,'T','T'),(18,'r1',1,'c18',18,'T','T'),(19,'r1',1,'c19',19,'T','T'),(20,'r1',1,'c20',20,'T','T'),(21,'r1',1,'c21',21,'T','T'),(22,'r1',1,'c22',22,'T','T'),(23,'r1',1,'c23',23,'T','T'),(24,'r1',1,'c24',24,'T','T'),(25,'r1',1,'c25',25,'T','T'),(26,'r1',1,'c26',26,'T','T'),(27,'r1',1,'c27',27,'T','T'),(28,'r1',1,'c28',28,'T','T'),(29,'r1',1,'c29',29,'T','T'),(30,'r1',1,'c30',30,'T','T'),(31,'r1',1,'c31',31,'T','T'),(32,'r1',1,'c32',32,'T','T'),(33,'r1',1,'c33',33,'T','T'),(34,'r1',1,'c34',34,'T','T'),(35,'r1',1,'c35',35,'T','T'),(36,'r1',1,'c36',36,'T','T'),(37,'r1',1,'c37',37,'T','T'),(38,'r1',1,'c38',38,'T','T'),(39,'r1',1,'c39',39,'T','T'),(40,'r1',1,'c40',40,'T','T'),(41,'r1',1,'c41',41,'T','T'),(42,'r1',1,'c42',42,'T','T'),(43,'r1',1,'c43',43,'T','T'),(44,'r1',1,'c44',44,'T','T'),(45,'r1',1,'c45',45,'T','T'),(46,'r1',1,'c46',46,'T','T'),(47,'r1',1,'c47',47,'T','T'),(48,'r1',1,'c48',48,'T','T'),(49,'r1',1,'c49',49,'T','T'),(50,'r1',1,'c50',50,'T','T'),(51,'r1',1,'c51',51,'T','T'),(52,'r1',1,'c52',52,'T','T'),(53,'r1',1,'c53',53,'T','T'),(54,'r1',1,'c54',54,'T','T'),(55,'r1',1,'c55',55,'T','T'),(56,'r1',1,'c56',56,'T','T'),(57,'r1',1,'c57',57,'T','T'),(58,'r1',1,'c58',58,'T','T'),(59,'r1',1,'c59',59,'T','T'),(60,'r1',1,'c60',60,'T','T'),(61,'r1',1,'c61',61,'T','T'),(62,'r1',1,'c62',62,'T','T'),(63,'r1',1,'c63',63,'T','T'),(64,'r1',1,'c64',64,'T','T'),(65,'r1',1,'c65',65,'T','T'),(66,'r1',1,'c66',66,'T','T'),(67,'r1',1,'c67',67,'T','T'),(68,'r1',1,'c68',68,'T','T'),(69,'r1',1,'c69',69,'T','T'),(70,'r1',1,'c70',70,'T','T'),(71,'r1',1,'c71',71,'T','T'),(72,'r1',1,'c72',72,'T','T'),(73,'r1',1,'c73',73,'T','T'),(74,'r1',1,'c74',74,'T','T'),(75,'r1',1,'c75',75,'T','T'),(76,'r1',1,'c76',76,'T','T'),(77,'r1',1,'c77',77,'T','T'),(78,'r1',1,'c78',78,'T','T'),(79,'r1',1,'c79',79,'T','T'),(80,'r1',1,'c80',80,'T','T'),(81,'r1',1,'c81',81,'T','T'),(82,'r1',1,'c82',82,'T','T'),(83,'r1',1,'c83',83,'T','T'),(84,'r1',1,'c84',84,'T','T'),(85,'r1',1,'c85',85,'T','T'),(86,'r1',1,'c86',86,'T','T'),(87,'r1',1,'c87',87,'T','T'),(88,'r1',1,'c88',88,'T','T'),(89,'r1',1,'c89',89,'T','T'),(90,'r1',1,'c90',90,'T','T'),(91,'r1',1,'c91',91,'T','T'),(92,'r1',1,'c92',92,'T','T'),(93,'r1',1,'c93',93,'T','T'),(94,'r1',1,'c94',94,'T','T'),(95,'r1',1,'c95',95,'T','T'),(96,'r1',1,'c96',96,'T','T'),(97,'r1',1,'c97',97,'T','T'),(98,'r1',1,'c98',98,'T','T'),(99,'r1',1,'c99',99,'T','T'),(100,'r1',1,'c100',100,'T','T');
/*!40000 ALTER TABLE `tracesclasses` ENABLE KEYS */;
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
