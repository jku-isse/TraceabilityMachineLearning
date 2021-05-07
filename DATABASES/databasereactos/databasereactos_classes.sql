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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) DEFAULT NULL,
  `classname` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'ResBitmap'),(2,'COMException'),(3,'PropSheetPageDlg'),(4,'StartMenuButton'),(5,'BrowserCallback'),(6,'Button'),(7,'DesktopSettingsDlg'),(8,'SpecialFolderPath'),(9,'TextColor'),(10,'DialogWindow'),(11,'NotifyIconIndex'),(12,'QuickLaunchMap'),(13,'ExplorerGlobals'),(14,'SShellPtr'),(15,'BrowseMenu'),(16,'NotifyIconConfig'),(17,'OleInit'),(18,'CtxMenuInterfaces'),(19,'Bookmark'),(20,'FullScreenParameters'),(21,'FolderBrowser'),(22,'ClockWindow'),(23,'RecentStartMenu'),(24,'DesktopShellView'),(25,'HiddenWindow'),(26,'ShellFolder'),(27,'XMLNode'),(28,'StartMenu'),(29,'COMExceptionBase'),(30,'IShellBrowserImpl'),(31,'EventConnector'),(32,'MDIShellBrowserChild'),(33,'RegistryRoot'),(34,'Entry'),(35,'TrayIcon'),(36,'FavoritesMenu'),(37,'FPDEntry'),(38,'IDataObjectImpl'),(39,'SelectedBitmap'),(40,'SSOThread'),(41,'Directory'),(42,'Context'),(43,'Window'),(44,'EventConnection'),(45,'SimpleComObject'),(46,'ShellBrowser'),(47,'TrayNotifyDlg'),(48,'BookmarkNode'),(49,'ConnectionPoint'),(50,'SpecialFolderFSPath'),(51,'SIfacePtr'),(52,'DWebBrowserEvents2Impl'),(53,'BookmarkFolder'),(54,'StrRetA'),(55,'StartMenuRoot'),(56,'SubclassedWindow'),(57,'IconWindowClass'),(58,'TrayIconControllerTemplate'),(59,'StartMenuHandler'),(60,'Kette'),(61,'ShellLinkPtr'),(62,'ColorStatic'),(63,'SpecialFolder'),(64,'WebChildWndInfo'),(65,'ToolTip'),(66,'BitmapSelection'),(67,'StrRetW'),(68,'ShellPathInfo'),(69,'StartMenuEntry'),(70,'DEntry'),(71,'BStr'),(72,'Dialog'),(73,'DragSourceHelper'),(74,'IconCache'),(75,'RegDirectory'),(76,'ShellEntry'),(77,'SDIMainFrame'),(78,'PreTranslateWindow'),(79,'FindProgramDlg'),(80,'IDropSourceImpl'),(81,'Canvas'),(82,'FATChildWndInfo'),(83,'StartMenuCreateInfo'),(84,'SmallIcon'),(85,'FileChildWndInfo'),(86,'OleInPlaceClient'),(87,'WindowClass'),(88,'dskrwblk'),(89,'ShellPath'),(90,'TaskBarEntry'),(91,'IComSrvQI'),(92,'ExplorerAboutDlg'),(93,'Icon'),(94,'Static'),(95,'Cache'),(96,'PopupMenu'),(97,'WindowCreator'),(98,'WaitCursor'),(99,'ResIconEx'),(100,'UNC'),(101,'BufferCanvas'),(102,'NotifyArea'),(103,'PIDList'),(104,'RtlAnsiString'),(105,'StaticWindowData'),(106,'fdate'),(107,'TaskBarMap'),(108,'WinDirectory'),(109,'DesktopDropTarget'),(110,'BrushSelection'),(111,'QuickLaunchEntry'),(112,'RegEntry'),(113,'ClientRect'),(114,'NotifyInfo'),(115,'op_mask'),(116,'StartMenuSeparator'),(117,'ChildWndInfo'),(118,'PropSheetPage'),(119,'SysCacheIcon'),(120,'FlatButton'),(121,'BufferedPaintCanvas'),(122,'NtObjDirectory'),(123,'DesktopFolder'),(124,'MainFrameBase'),(125,'MDIMainFrame'),(126,'CommonDesktop'),(127,'FmtString'),(128,'DEntry_E'),(129,'RegistryChildWndInfo'),(130,'ShellDirectory'),(131,'BookmarkList'),(132,'BkMode'),(133,'UnixEntry'),(134,'BackgroundWindow'),(135,'FileTypeManager'),(136,'Desktops'),(137,'ShellMalloc'),(138,'StartmenuSettingsDlg'),(139,'MenuInfo'),(140,'DesktopFolderPath'),(141,'SMBtnInfo'),(142,'TypeCheck'),(143,'Buffer'),(144,'Root'),(145,'EditController'),(146,'FileTypeInfo'),(147,'NtObjEntry'),(148,'WindowCreatorInfo'),(149,'ChildWindow'),(150,'DesktopWindow'),(151,'PropertySheetDialog'),(152,'StartButton'),(153,'Variant'),(154,'SearchMenu'),(155,'ExtContextMenuHandlerT'),(156,'NtObjectInfo'),(157,'BufferedCanvas'),(158,'TrayNotifyCDS'),(159,'Favorites'),(160,'MemCanvas'),(161,'FATDrive'),(162,'OpenStruct'),(163,'FontSelection'),(164,'NTDLL'),(165,'DynamicLoadLibFct'),(166,'QuickLaunchBar'),(167,'DesktopBar'),(168,'FileSysShellPath'),(169,'BtnWindowClass'),(170,'ColorButton'),(171,'RtlUnicodeString'),(172,'ShellBrowserChildT'),(173,'BootSector32'),(174,'BrowserNavigator'),(175,'CollectProgramsThread'),(176,'GetWindowHelper'),(177,'PaintCanvas'),(178,'ResizeManager'),(179,'WebChildWindow'),(180,'OwnerDrawParent'),(181,'Lock'),(182,'Thread'),(183,'NotifyHook'),(184,'ListSort'),(185,'WindowCanvas'),(186,'CritSect'),(187,'DynamicFct'),(188,'NtObjChildWndInfo'),(189,'ExplorerCmd'),(190,'PictureButton'),(191,'ShellChildWndInfo'),(192,'DataStorage'),(193,'FileChildWindow'),(194,'UnixDirectory'),(195,'StartMenuDirectory'),(196,'EnumFormatEtcImpl'),(197,'NtObject'),(198,'CommonShellMalloc'),(199,'UnicodeString'),(200,'NotifyIconDlgInfo'),(201,'ResIcon'),(202,'ResizeEntry'),(203,'dirent'),(204,'ExecuteDialog'),(205,'FATEntry'),(206,'DWebBrowserEvents2IF'),(207,'HyperlinkCtrl'),(208,'Pane'),(209,'TaskBar'),(210,'FATDirectory'),(211,'WinEntry'),(212,'TaskbarSettingsDlg'),(213,'ShellItemEnumerator'),(214,'WindowRect'),(215,'StartMenuRootCreateInfo'),(216,'ANS'),(217,'ResizeController'),(218,'dirsecz'),(219,'DesktopThread'),(220,'CtlColorParent'),(221,'ResString'),(222,'WindowHandle'),(223,'CommonControlInit'),(224,'ComInit'),(225,'ftime'),(226,'StartMenuCtrl'),(227,'SettingsMenu'),(228,'BootSector'),(229,'PropertySheetDlg'),(230,'Point'),(231,'IPCtrlWindow'),(232,'Desktop'),(233,'MdiSdiDlg'),(234,'OwnerdrawnButton');
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

-- Dump completed on 2020-03-05 12:34:46
