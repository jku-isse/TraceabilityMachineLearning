-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: databasereactos
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
-- Table structure for table `fieldmethods`
--

DROP TABLE IF EXISTS `fieldmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldmethods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldaccess` longtext,
  `fieldtypeclassid` int(11) DEFAULT NULL,
  `fieldtypeclassname` longtext,
  `ownerclassname` longtext,
  `ownerclassid` int(11) DEFAULT NULL,
  `ownermethodname` longtext,
  `ownermethodid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idfieldmethods_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldmethods`
--

LOCK TABLES `fieldmethods` WRITE;
/*!40000 ALTER TABLE `fieldmethods` DISABLE KEYS */;
INSERT INTO `fieldmethods` VALUES (1,'value',153,'Variant','WebChildWindow',179,'WebChildWindow::PropertyChange',634),(2,'subfolder',26,'ShellFolder','ShellDirectory',130,'ShellDirectory::ShellDirectory',482),(3,'canvas',177,'PaintCanvas','ExplorerAboutDlg',92,'ExplorerAboutDlg::Paint',198),(4,'ver_txt',127,'FmtString','ExplorerAboutDlg',92,'ExplorerAboutDlg::ExplorerAboutDlg',197),(5,'lock',181,'Lock','Thread',182,'Thread::Stop',568),(6,'v',153,'Variant','BStr',71,'BStr::assign',5),(7,'canvas(_hwnd)',177,'PaintCanvas','ClockWindow',22,'ClockWindow::Paint',53),(8,'ShellDirectory* dir',130,'ShellDirectory','CollectProgramsThread',175,'CollectProgramsThread::collect_programs',57),(9,'Entry*entry',34,'Entry','CollectProgramsThread',175,'CollectProgramsThread::collect_programs',57),(10,'ShellDirectory* dir',130,'ShellDirectory','CollectProgramsThread',175,'CollectProgramsThread::free_dirs',58),(11,'BkMode bk_mode(dis->hDC, TRANSPARENT)',132,'BkMode','ColorButton',170,'ColorButton::DrawItem',61),(12,'DesktopThread* pThread',219,'DesktopThread','Desktops',136,'Desktops::SwitchToDesktop',151),(13,' Entry* entry',34,'Entry','Entry',34,'Entry::sort_directory',186),(14,'Entry** array',34,'Entry','Entry',34,'Entry::sort_directory',186),(15,'**p',34,'Entry','Entry',34,'Entry::sort_directory',186),(16,'ShellPath shell_path',89,'ShellPath','Entry',34,'Entry::do_context_menu',492),(17,' ShellPath shell_path(path)',89,'ShellPath','Entry',34,'Entry::GetUIObjectOf',174),(18,'ShellFolder shell_folder(shell_path)',26,'ShellFolder','Entry',34,'Entry::GetUIObjectOf',174),(19,' Entry* entry',34,'Entry','Entry',34,'Entry::free_subentries',178),(20,'*next',34,'Entry','Entry',34,'Entry::free_subentries',178),(21,'Entry* first_entry',34,'Entry','FATDirectory',210,'FATDirectory::read_directory',212),(22,'Entry* last',34,'Entry','FATDirectory',210,'FATDirectory::read_directory',212),(23,'BookmarkNode& node',48,'BookmarkNode','FavoritesMenu',36,'FavoritesMenu::Command',221),(24,'BookmarkFolder& folder',53,'BookmarkFolder','FavoritesMenu',36,'FavoritesMenu::Command',221),(25,'Entry* entry',34,'Entry','FileChildWindow',193,'FileChildWindow::FileChildWindow',223),(26,'Entry* p',34,'Entry','FileChildWindow',193,'FileChildWindow::collapse_entry',225),(27,'Entry* entry',34,'Entry','FileChildWindow',193,'FileChildWindow::activate_entry',224),(28,'WaitCursor wait',98,'WaitCursor','FileChildWindow',193,'FileChildWindow::activate_entry',224),(29,'entry',34,'Entry','FileChildWindow',193,'FileChildWindow::scan_entry',230),(30,'entry',34,'Entry','FileChildWindow',193,'FileChildWindow::jump_to_int',224),(31,'WaitCursor wait',98,'WaitCursor','FindProgramDlg',79,'FindProgramDlg::Refresh',242),(32,'FindProgramDlg* pThis',79,'FindProgramDlg','FindProgramDlg',79,'FindProgramDlg::collect_programs_callback',245),(33,' Lock lock(_thread._crit_sect)',181,'Lock','FindProgramDlg',79,'FindProgramDlg::LaunchSelected',240);
/*!40000 ALTER TABLE `fieldmethods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-05 12:34:47
