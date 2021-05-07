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
-- Table structure for table `superclasses`
--

DROP TABLE IF EXISTS `superclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `superclasses` (
  `id` int(11) DEFAULT NULL,
  `ownerclassid` int(11) DEFAULT NULL,
  `superclassname` text,
  `superclassid` int(11) DEFAULT NULL,
  `childclassname` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superclasses`
--

LOCK TABLES `superclasses` WRITE;
/*!40000 ALTER TABLE `superclasses` DISABLE KEYS */;
INSERT INTO `superclasses` VALUES (1,2,'COMExceptionBase',29,'COMException'),(2,3,'Dialog',72,'PropSheetPageDlg'),(3,4,'OwnerdrawnButton',234,'StartMenuButton'),(4,6,'WindowHandle',222,'Button'),(5,7,'OwnerDrawParent',180,'DesktopSettingsDlg'),(6,8,'ShellPath',89,'SpecialFolderPath'),(7,10,'Window',43,'DialogWindow'),(8,15,'StartMenuHandler',59,'BrowseMenu'),(9,21,'FileSysShellPath',168,'FolderBrowser'),(10,22,'Window',43,'ClockWindow'),(11,23,'StartMenu',28,'RecentStartMenu'),(12,24,'ExtContextMenuHandlerT',155,'DesktopShellView'),(13,25,'WindowHandle',222,'HiddenWindow'),(14,26,'SIfacePtr',51,'ShellFolder'),(15,31,'EventConnection',44,'EventConnector'),(16,32,'ExtContextMenuHandlerT',155,'MDIShellBrowserChild'),(17,33,'RegEntry',112,'RegistryRoot'),(18,33,'Directory',41,'RegistryRoot'),(19,36,'StartMenu',28,'FavoritesMenu'),(20,40,'Thread',182,'SSOThread'),(21,43,'WindowHandle',222,'Window'),(22,46,'IShellBrowserImpl',30,'ShellBrowser'),(23,46,'SimpleComObject',45,'ShellBrowser'),(24,47,'ResizeController',217,'TrayNotifyDlg'),(25,49,'SIfacePtr',51,'ConnectionPoint'),(26,50,'FileSysShellPath',168,'SpecialFolderFSPath'),(27,55,'StartMenuHandler',59,'StartMenuRoot'),(28,56,'Window',43,'SubclassedWindow'),(29,57,'WindowClass',87,'IconWindowClass'),(30,59,'StartMenu',28,'StartMenuHandler'),(31,61,'SIfacePtr',51,'ShellLinkPtr'),(32,62,'SubclassedWindow',56,'ColorStatic'),(33,63,'ShellFolder',26,'SpecialFolder'),(34,64,'FileChildWndInfo',85,'WebChildWndInfo'),(35,65,'WindowHandle',222,'ToolTip'),(36,72,'Window',43,'Dialog'),(37,75,'RegEntry',112,'RegDirectory'),(38,75,'Directory',41,'RegDirectory'),(39,76,'Entry',34,'ShellEntry'),(40,77,'ExtContextMenuHandlerT',155,'SDIMainFrame'),(41,78,'Window',43,'PreTranslateWindow'),(42,79,'ResizeController',217,'FindProgramDlg'),(43,80,'SimpleComObject',45,'IDropSourceImpl'),(44,82,'FileChildWndInfo',85,'FATChildWndInfo'),(45,85,'ChildWndInfo',117,'FileChildWndInfo'),(46,89,'SShellPtr',14,'ShellPath'),(47,92,'CtlColorParent',220,'ExplorerAboutDlg'),(48,94,'WindowHandle',222,'Static'),(49,101,'MemCanvas',160,'BufferCanvas'),(50,102,'Window',43,'NotifyArea'),(51,108,'WinEntry',211,'WinDirectory'),(52,108,'Directory',41,'WinDirectory'),(53,112,'Entry',34,'RegEntry'),(54,114,'NotifyIconIndex',11,'NotifyInfo'),(55,114,'NotifyIconConfig',16,'NotifyInfo'),(56,116,'Static',94,'StartMenuSeparator'),(57,119,'Icon',93,'SysCacheIcon'),(58,120,'OwnerdrawnButton',234,'FlatButton'),(59,121,'PaintCanvas',177,'BufferedPaintCanvas'),(60,121,'BufferedCanvas',157,'BufferedPaintCanvas'),(61,122,'NtObjEntry',147,'NtObjDirectory'),(62,122,'Directory',41,'NtObjDirectory'),(63,123,'ShellFolder',26,'DesktopFolder'),(64,124,'PreTranslateWindow',78,'MainFrameBase'),(65,125,'MainFrameBase',124,'MDIMainFrame'),(66,129,'FileChildWndInfo',85,'RegistryChildWndInfo'),(67,130,'ShellEntry',76,'ShellDirectory'),(68,130,'Directory',41,'ShellDirectory'),(69,133,'Entry',34,'UnixEntry'),(70,134,'SubclassedWindow',56,'BackgroundWindow'),(71,138,'PropSheetPageDlg',3,'StartmenuSettingsDlg'),(72,140,'SpecialFolderPath',8,'DesktopFolderPath'),(73,145,'SubclassedWindow',56,'EditController'),(74,147,'Entry',34,'NtObjEntry'),(75,149,'Window',43,'ChildWindow'),(76,150,'Window',43,'DesktopWindow'),(77,150,'IShellBrowserImpl',30,'DesktopWindow'),(78,152,'PictureButton',190,'StartButton'),(79,154,'StartMenuHandler',59,'SearchMenu'),(80,157,'BufferCanvas',101,'BufferedCanvas'),(81,159,'BookmarkList',131,'Favorites'),(82,160,'Canvas',81,'MemCanvas'),(83,161,'FATDirectory',210,'FATDrive'),(84,166,'ExtContextMenuHandlerT',155,'QuickLaunchBar'),(85,167,'TrayIconControllerTemplate',58,'DesktopBar'),(86,168,'ShellPath',89,'FileSysShellPath'),(87,169,'WindowClass',87,'BtnWindowClass'),(88,170,'OwnerdrawnButton',234,'ColorButton'),(89,172,'BrowserCallback',5,'ShellBrowserChildT'),(90,175,'Thread',182,'CollectProgramsThread'),(91,179,'IPCtrlWindow',231,'WebChildWindow'),(92,179,'DWebBrowserEvents2Impl',52,'WebChildWindow'),(93,184,'WindowHandle',222,'ListSort'),(94,185,'Canvas',81,'WindowCanvas'),(95,188,'FileChildWndInfo',85,'NtObjChildWndInfo'),(96,190,'OwnerdrawnButton',234,'PictureButton'),(97,191,'FileChildWndInfo',85,'ShellChildWndInfo'),(98,193,'ExtContextMenuHandlerT',155,'FileChildWindow'),(99,194,'UnixEntry',133,'UnixDirectory'),(100,194,'Directory',41,'UnixDirectory'),(101,196,'SimpleComObject',45,'EnumFormatEtcImpl'),(102,199,'RtlUnicodeString',171,'UnicodeString'),(103,200,'NotifyIconConfig',16,'NotifyIconDlgInfo'),(104,205,'Entry',34,'FATEntry'),(105,207,'SubclassedWindow',56,'HyperlinkCtrl'),(106,209,'Window',43,'TaskBar'),(107,210,'FATEntry',205,'FATDirectory'),(108,210,'Directory',41,'FATDirectory'),(109,211,'Entry',34,'WinEntry'),(110,212,'PropSheetPageDlg',3,'TaskbarSettingsDlg'),(111,213,'SIfacePtr',51,'ShellItemEnumerator'),(112,219,'Thread',182,'DesktopThread'),(113,226,'Button',6,'StartMenuCtrl'),(114,227,'StartMenuHandler',59,'SettingsMenu'),(115,229,'SubclassedWindow',56,'PropertySheetDlg'),(116,233,'ResizeController',217,'MdiSdiDlg'),(117,234,'SubclassedWindow',56,'OwnerdrawnButton');
/*!40000 ALTER TABLE `superclasses` ENABLE KEYS */;
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
