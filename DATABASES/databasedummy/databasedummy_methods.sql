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
-- Table structure for table `methods`
--

DROP TABLE IF EXISTS `methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `methods` (
  `id` int(11) NOT NULL,
  `methodname` varchar(45) DEFAULT NULL,
  `methodnamerefined` varchar(45) DEFAULT NULL,
  `methodabbreviation` varchar(45) DEFAULT NULL,
  `fullmethod` varchar(45) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `classname` varchar(45) DEFAULT NULL,
  `method` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `methods`
--

LOCK TABLES `methods` WRITE;
/*!40000 ALTER TABLE `methods` DISABLE KEYS */;
INSERT INTO `methods` VALUES (1,'m1','m1','m1','m1',1,'c1','m1'),(2,'m2','m2','m2','m2',2,'c2','m2'),(3,'method','method','method','method',3,'c3','method'),(4,'method','method','method','method',4,'c4','method'),(5,'m5','m5','m5','m5',5,'c5','m5'),(6,'method','method','method','method',6,'c6','method'),(7,'method','method','method','method',7,'c7','method'),(8,'m8','m8','m8','m8',8,'c8','m8'),(9,'method','method','method','method',9,'c9','method'),(10,'method','method','method','method',10,'c10','method'),(11,'m11','m11','m11','m11',11,'c11','m11'),(12,'m12','m12','m12','m12',12,'c12','m12'),(13,'method','method','method','method',13,'c13','method'),(14,'method','method','method','method',14,'c14','method'),(15,'method','method','method','method',15,'c15','method'),(16,'method','method','method','method',16,'c16','method'),(17,'method','method','method','method',17,'c17','method'),(18,'method','method','method','method',18,'c18','method'),(19,'m19','m19','m19','m19',19,'c19','m19'),(20,'method','method','method','method',20,'c20','method'),(21,'method','method','method','method',21,'c21','method'),(22,'method','method','method','method',22,'c22','method'),(23,'m23','m23','m23','m23',23,'c23','m23'),(24,'m24','m24','m24','m24',24,'c24','m24'),(25,'method','method','method','method',25,'c25','method'),(26,'method','method','method','method',26,'c26','method'),(27,'m27','m27','m27','m27',27,'c27','m27'),(28,'method','method','method','method',28,'c28','method'),(29,'method','method','method','method',29,'c29','method'),(30,'method','method','method','method',30,'c30','method'),(31,'method','method','method','method',31,'c31','method'),(32,'m32','m32','m32','m32',32,'c32','m32'),(33,'method','method','method','method',33,'c33','method'),(34,'method','method','method','method',34,'c34','method'),(35,'m35','m35','m35','m35',35,'c35','m35'),(36,'m36','m36','m36','m36',36,'c36','m36'),(37,'method','method','method','method',37,'c37','method'),(38,'method','method','method','method',38,'c38','method'),(39,'method','method','method','method',39,'c39','method'),(40,'m40','m40','m40','m40',40,'c40','m40'),(41,'method','method','method','method',41,'c41','method'),(42,'method','method','method','method',42,'c42','method'),(43,'method','method','method','method',43,'c43','method'),(44,'method','method','method','method',44,'c44','method'),(45,'method','method','method','method',45,'c45','method'),(46,'method','method','method','method',46,'c46','method'),(47,'m47','m47','m47','m47',47,'c47','m47'),(48,'method','method','method','method',48,'c48','method'),(49,'method','method','method','method',49,'c49','method'),(50,'method','method','method','method',50,'c50','method'),(51,'m51','m51','m51','m51',51,'c51','m51'),(52,'m52','m52','m52','m52',52,'c52','m52'),(53,'method','method','method','method',53,'c53','method'),(54,'method','method','method','method',54,'c54','method'),(55,'m55','m55','m55','m55',55,'c55','m55'),(56,'method','method','method','method',56,'c56','method'),(57,'method','method','method','method',57,'c57','method'),(58,'method','method','method','method',58,'c58','method'),(59,'method','method','method','method',59,'c59','method'),(60,'m60','m60','m60','m60',60,'c60','m60'),(61,'m61','m61','m61','m61',61,'c61','m61'),(62,'method','method','method','method',62,'c62','method'),(63,'method','method','method','method',63,'c63','method'),(64,'method','method','method','method',64,'c64','method'),(65,'m65','m65','m65','m65',65,'c65','m65'),(66,'method','method','method','method',66,'c66','method'),(67,'method','method','method','method',67,'c67','method'),(68,'method','method','method','method',68,'c68','method'),(69,'method','method','method','method',69,'c69','method'),(70,'method','method','method','method',70,'c70','method'),(71,'method','method','method','method',71,'c71','method'),(72,'m72','m72','m72','m72',72,'c72','m72'),(73,'m73','m73','m73','m73',73,'c73','m73'),(74,'method','method','method','method',74,'c74','method'),(75,'method','method','method','method',75,'c75','method'),(76,'m76','m76','m76','m76',76,'c76','m76'),(77,'method','method','method','method',77,'c77','method'),(78,'method','method','method','method',78,'c78','method'),(79,'method','method','method','method',79,'c79','method'),(80,'method','method','method','method',80,'c80','method'),(81,'m81','m81','m81','m81',81,'c81','m81'),(82,'method','method','method','method',82,'c82','method'),(83,'method','method','method','method',83,'c83','method'),(84,'m84','m84','m84','m84',84,'c84','m84'),(85,'m85','m85','m85','m85',85,'c85','m85'),(86,'method','method','method','method',86,'c86','method'),(87,'method','method','method','method',87,'c87','method'),(88,'method','method','method','method',88,'c88','method'),(89,'m89','m89','m89','m89',89,'c89','m89'),(90,'method','method','method','method',90,'c90','method'),(91,'method','method','method','method',91,'c91','method'),(92,'method','method','method','method',92,'c92','method'),(93,'method','method','method','method',93,'c93','method'),(94,'method','method','method','method',94,'c94','method'),(95,'method','method','method','method',95,'c95','method'),(96,'m96','m96','m96','m96',96,'c96','m96'),(97,'method','method','method','method',97,'c97','method'),(98,'method','method','method','method',98,'c98','method'),(99,'method','method','method','method',99,'c99','method'),(100,'m100','m100','m100','m100',100,'c100','m100');
/*!40000 ALTER TABLE `methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-16 12:09:25
