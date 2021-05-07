-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_databasegantt
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `superclassid` longtext,
  `superclassname` longtext,
  `ownerclassid` longtext,
  `ownerclassname` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superclasses`
--

LOCK TABLES `superclasses` WRITE;
/*!40000 ALTER TABLE `superclasses` DISABLE KEYS */;
INSERT INTO `superclasses` VALUES (1,'646','net.sourceforge.ganttproject.time.gregorian.GregorianCalendar','24','net.sourceforge.ganttproject.GanttCalendar'),(2,'9','net.sourceforge.ganttproject.ChartComponentBase','45','net.sourceforge.ganttproject.GanttGraphicArea'),(3,'109','net.sourceforge.ganttproject.action.GPAction','44','net.sourceforge.ganttproject.GanttGraphicArea$ScrollGanttChartCenterAction'),(4,'57','net.sourceforge.ganttproject.GanttProjectBase','53','net.sourceforge.ganttproject.GanttProject'),(5,'560','net.sourceforge.ganttproject.task.TaskImpl','63','net.sourceforge.ganttproject.GanttTask'),(6,'20','net.sourceforge.ganttproject.GPTreeTableBase','81','net.sourceforge.ganttproject.GanttTreeTable'),(7,'9','net.sourceforge.ganttproject.ChartComponentBase','90','net.sourceforge.ganttproject.ResourceLoadGraphicArea'),(8,'20','net.sourceforge.ganttproject.GPTreeTableBase','94','net.sourceforge.ganttproject.ResourceTreeTable'),(9,'622','net.sourceforge.ganttproject.task.event.TaskListenerAdapter','97','net.sourceforge.ganttproject.TaskModelModificationListener'),(10,'115','net.sourceforge.ganttproject.action.OkAction','102','net.sourceforge.ganttproject.UIFacadeImpl$ProxyOkAction'),(11,'109','net.sourceforge.ganttproject.action.GPAction','104','net.sourceforge.ganttproject.action.AddBlankLineAction'),(12,'109','net.sourceforge.ganttproject.action.GPAction','105','net.sourceforge.ganttproject.action.CalculateCriticalPathAction'),(13,'109','net.sourceforge.ganttproject.action.GPAction','107','net.sourceforge.ganttproject.action.DeleteAssignmentAction'),(14,'118','net.sourceforge.ganttproject.action.ResourceAction','108','net.sourceforge.ganttproject.action.DeleteHumanAction'),(15,'109','net.sourceforge.ganttproject.action.GPAction','112','net.sourceforge.ganttproject.action.NewArtefactAction'),(16,'118','net.sourceforge.ganttproject.action.ResourceAction','113','net.sourceforge.ganttproject.action.NewHumanAction'),(17,'109','net.sourceforge.ganttproject.action.GPAction','116','net.sourceforge.ganttproject.action.RedoAction'),(18,'109','net.sourceforge.ganttproject.action.GPAction','117','net.sourceforge.ganttproject.action.RefreshViewAction'),(19,'109','net.sourceforge.ganttproject.action.GPAction','121','net.sourceforge.ganttproject.action.ScrollGanttChartLeftAction'),(20,'109','net.sourceforge.ganttproject.action.GPAction','122','net.sourceforge.ganttproject.action.ScrollGanttChartRightAction'),(21,'109','net.sourceforge.ganttproject.action.GPAction','124','net.sourceforge.ganttproject.action.UndoAction'),(22,'109','net.sourceforge.ganttproject.action.GPAction','125','net.sourceforge.ganttproject.action.ZoomInAction'),(23,'109','net.sourceforge.ganttproject.action.GPAction','126','net.sourceforge.ganttproject.action.ZoomOutAction'),(24,'109','net.sourceforge.ganttproject.action.GPAction','127','net.sourceforge.ganttproject.action.project.ExitAction'),(25,'109','net.sourceforge.ganttproject.action.GPAction','128','net.sourceforge.ganttproject.action.project.NewProjectAction'),(26,'109','net.sourceforge.ganttproject.action.GPAction','129','net.sourceforge.ganttproject.action.project.OpenProjectAction'),(27,'109','net.sourceforge.ganttproject.action.GPAction','130','net.sourceforge.ganttproject.action.project.OpenURLAction'),(28,'109','net.sourceforge.ganttproject.action.GPAction','131','net.sourceforge.ganttproject.action.project.PrintAction'),(29,'109','net.sourceforge.ganttproject.action.GPAction','133','net.sourceforge.ganttproject.action.project.SaveProjectAction'),(30,'109','net.sourceforge.ganttproject.action.GPAction','134','net.sourceforge.ganttproject.action.project.SaveProjectAsAction'),(31,'109','net.sourceforge.ganttproject.action.GPAction','135','net.sourceforge.ganttproject.action.project.SaveURLAction'),(32,'109','net.sourceforge.ganttproject.action.GPAction','136','net.sourceforge.ganttproject.action.resource.ResourcePropertiesAction'),(33,'138','net.sourceforge.ganttproject.action.task.TaskActionBase','137','net.sourceforge.ganttproject.action.task.LinkTasksAction'),(34,'109','net.sourceforge.ganttproject.action.GPAction','138','net.sourceforge.ganttproject.action.task.TaskActionBase'),(35,'138','net.sourceforge.ganttproject.action.task.TaskActionBase','139','net.sourceforge.ganttproject.action.task.TaskPropertiesAction'),(36,'138','net.sourceforge.ganttproject.action.task.TaskActionBase','140','net.sourceforge.ganttproject.action.task.UnlinkTasksAction'),(37,'148','net.sourceforge.ganttproject.calendar.GPCalendarBase','142','net.sourceforge.ganttproject.calendar.AlwaysWorkingTimeCalendarImpl'),(38,'148','net.sourceforge.ganttproject.calendar.GPCalendarBase','150','net.sourceforge.ganttproject.calendar.WeekendCalendarImpl'),(39,'176','net.sourceforge.ganttproject.chart.ChartRendererBase','155','net.sourceforge.ganttproject.chart.BackgroundRendererImpl'),(40,'176','net.sourceforge.ganttproject.chart.ChartRendererBase','156','net.sourceforge.ganttproject.chart.BottomUnitLineRendererImpl'),(41,'176','net.sourceforge.ganttproject.chart.ChartRendererBase','160','net.sourceforge.ganttproject.chart.ChartGridImpl'),(42,'176','net.sourceforge.ganttproject.chart.ChartRendererBase','162','net.sourceforge.ganttproject.chart.ChartHeaderImpl'),(43,'170','net.sourceforge.ganttproject.chart.ChartModelBase','172','net.sourceforge.ganttproject.chart.ChartModelImpl'),(44,'170','net.sourceforge.ganttproject.chart.ChartModelBase','174','net.sourceforge.ganttproject.chart.ChartModelResource'),(45,'380','net.sourceforge.ganttproject.gui.options.model.DefaultColorOption','173','net.sourceforge.ganttproject.chart.ChartModelResource$ResourceLoadOption'),(46,'389','net.sourceforge.ganttproject.gui.options.model.GPOptionGroup','175','net.sourceforge.ganttproject.chart.ChartOptionGroup'),(47,'386','net.sourceforge.ganttproject.gui.options.model.GPAbstractOption','193','net.sourceforge.ganttproject.chart.LabelPositionOptionImpl'),(48,'109','net.sourceforge.ganttproject.action.GPAction','195','net.sourceforge.ganttproject.chart.OptionsDialogAction'),(49,'206','net.sourceforge.ganttproject.chart.SimpleRenderedImage','199','net.sourceforge.ganttproject.chart.RenderedChartImage'),(50,'199','net.sourceforge.ganttproject.chart.RenderedChartImage','200','net.sourceforge.ganttproject.chart.RenderedGanttChartImage'),(51,'199','net.sourceforge.ganttproject.chart.RenderedChartImage','201','net.sourceforge.ganttproject.chart.RenderedResourceChartImage'),(52,'176','net.sourceforge.ganttproject.chart.ChartRendererBase','204','net.sourceforge.ganttproject.chart.ResourceLoadRenderer'),(53,'176','net.sourceforge.ganttproject.chart.ChartRendererBase','205','net.sourceforge.ganttproject.chart.ResourcesRendererImpl'),(54,'176','net.sourceforge.ganttproject.chart.ChartRendererBase','213','net.sourceforge.ganttproject.chart.TaskGridRendererImpl'),(55,'176','net.sourceforge.ganttproject.chart.ChartRendererBase','219','net.sourceforge.ganttproject.chart.TaskRendererImpl'),(56,'109','net.sourceforge.ganttproject.action.GPAction','222','net.sourceforge.ganttproject.chart.ToggleChartAction'),(57,'224','net.sourceforge.ganttproject.chart.item.ChartItem','225','net.sourceforge.ganttproject.chart.item.TaskBoundaryChartItem'),(58,'224','net.sourceforge.ganttproject.chart.item.ChartItem','226','net.sourceforge.ganttproject.chart.item.TaskProgressChartItem'),(59,'224','net.sourceforge.ganttproject.chart.item.ChartItem','227','net.sourceforge.ganttproject.chart.item.TaskRegularAreaChartItem'),(60,'231','net.sourceforge.ganttproject.document.AbstractDocument','232','net.sourceforge.ganttproject.document.AbstractURLDocument'),(61,'383','net.sourceforge.ganttproject.gui.options.model.DefaultStringOption','234','net.sourceforge.ganttproject.document.DocumentCreator$StringOptionImpl'),(62,'389','net.sourceforge.ganttproject.gui.options.model.GPOptionGroup','236','net.sourceforge.ganttproject.document.DocumentManager$FTPOptions'),(63,'231','net.sourceforge.ganttproject.document.AbstractDocument','239','net.sourceforge.ganttproject.document.FileDocument'),(64,'232','net.sourceforge.ganttproject.document.AbstractURLDocument','240','net.sourceforge.ganttproject.document.FtpDocument'),(65,'232','net.sourceforge.ganttproject.document.AbstractURLDocument','241','net.sourceforge.ganttproject.document.HttpDocument'),(66,'109','net.sourceforge.ganttproject.action.GPAction','258','net.sourceforge.ganttproject.export.ExportFileAction'),(67,'406','net.sourceforge.ganttproject.gui.projectwizard.WizardImpl','262','net.sourceforge.ganttproject.export.ExportFileWizardImpl'),(68,'386','net.sourceforge.ganttproject.gui.options.model.GPAbstractOption','267','net.sourceforge.ganttproject.export.ExporterToImage$FileTypeOption'),(69,'290','net.sourceforge.ganttproject.gui.FileChooserPageBase','269','net.sourceforge.ganttproject.export.FileChooserPage'),(70,'272','net.sourceforge.ganttproject.filter.ExtensionBasedFileFilter','276','net.sourceforge.ganttproject.filter.GanttMSProjectLFileFilter'),(71,'272','net.sourceforge.ganttproject.filter.ExtensionBasedFileFilter','281','net.sourceforge.ganttproject.filter.GanttXMLFileFilter'),(72,'382','net.sourceforge.ganttproject.gui.options.model.DefaultEnumerationOption','333','net.sourceforge.ganttproject.gui.UIConfiguration$AlphaRenderingOption'),(73,'379','net.sourceforge.ganttproject.gui.options.model.DefaultBooleanOption','334','net.sourceforge.ganttproject.gui.UIConfiguration$RedlineOption'),(74,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','341','net.sourceforge.ganttproject.gui.about.AboutAuthorPanel'),(75,'315','net.sourceforge.ganttproject.gui.GeneralDialog','342','net.sourceforge.ganttproject.gui.about.AboutDialog'),(76,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','345','net.sourceforge.ganttproject.gui.about.AboutJavaInfosPanel'),(77,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','348','net.sourceforge.ganttproject.gui.about.AboutLibraryPanel'),(78,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','349','net.sourceforge.ganttproject.gui.about.AboutLicensePanel'),(79,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','350','net.sourceforge.ganttproject.gui.about.AboutPanel'),(80,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','352','net.sourceforge.ganttproject.gui.options.CSVSettingsPanel'),(81,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','355','net.sourceforge.ganttproject.gui.options.ExportSettingsPanel'),(82,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','359','net.sourceforge.ganttproject.gui.options.LanguageSettingsPanel'),(83,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','360','net.sourceforge.ganttproject.gui.options.LnFSettingsPanel'),(84,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','361','net.sourceforge.ganttproject.gui.options.OptionPageProviderPanel'),(85,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','364','net.sourceforge.ganttproject.gui.options.ParametersSettingsPanel'),(86,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','365','net.sourceforge.ganttproject.gui.options.ProjectSettingsPanel'),(87,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','367','net.sourceforge.ganttproject.gui.options.RolesSettingsPanel'),(88,'315','net.sourceforge.ganttproject.gui.GeneralDialog','368','net.sourceforge.ganttproject.gui.options.SettingsDialog'),(89,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','372','net.sourceforge.ganttproject.gui.options.WelcomeSettingsPanel'),(90,'386','net.sourceforge.ganttproject.gui.options.model.GPAbstractOption','379','net.sourceforge.ganttproject.gui.options.model.DefaultBooleanOption'),(91,'386','net.sourceforge.ganttproject.gui.options.model.GPAbstractOption','380','net.sourceforge.ganttproject.gui.options.model.DefaultColorOption'),(92,'386','net.sourceforge.ganttproject.gui.options.model.GPAbstractOption','381','net.sourceforge.ganttproject.gui.options.model.DefaultDateOption'),(93,'386','net.sourceforge.ganttproject.gui.options.model.GPAbstractOption','382','net.sourceforge.ganttproject.gui.options.model.DefaultEnumerationOption'),(94,'386','net.sourceforge.ganttproject.gui.options.model.GPAbstractOption','383','net.sourceforge.ganttproject.gui.options.model.DefaultStringOption'),(95,'406','net.sourceforge.ganttproject.gui.projectwizard.WizardImpl','398','net.sourceforge.ganttproject.gui.projectwizard.NewProjectWizardWindow'),(96,'358','net.sourceforge.ganttproject.gui.options.GeneralOptionPanel','411','net.sourceforge.ganttproject.gui.server.ConnectionPanel'),(97,'315','net.sourceforge.ganttproject.gui.GeneralDialog','412','net.sourceforge.ganttproject.gui.server.ServerDialog'),(98,'413','net.sourceforge.ganttproject.gui.taskproperties.CommonPanel','420','net.sourceforge.ganttproject.gui.taskproperties.TaskAllocationsPanel'),(99,'413','net.sourceforge.ganttproject.gui.taskproperties.CommonPanel','421','net.sourceforge.ganttproject.gui.taskproperties.TaskDependenciesPanel'),(100,'290','net.sourceforge.ganttproject.gui.FileChooserPageBase','426','net.sourceforge.ganttproject.importer.FileChooserPage'),(101,'109','net.sourceforge.ganttproject.action.GPAction','427','net.sourceforge.ganttproject.importer.ImportFileAction'),(102,'406','net.sourceforge.ganttproject.gui.projectwizard.WizardImpl','429','net.sourceforge.ganttproject.importer.ImportFileWizardImpl'),(103,'431','net.sourceforge.ganttproject.importer.ImporterBase','437','net.sourceforge.ganttproject.importer.ImporterFromGanttFile'),(104,'59','net.sourceforge.ganttproject.GanttProjectImpl','434','net.sourceforge.ganttproject.importer.ImporterFromGanttFile$BufferProject'),(105,'431','net.sourceforge.ganttproject.importer.ImporterBase','438','net.sourceforge.ganttproject.importer.ImporterFromTxtFile'),(106,'455','net.sourceforge.ganttproject.io.SaverBase','439','net.sourceforge.ganttproject.io.AssignmentSaver'),(107,'455','net.sourceforge.ganttproject.io.SaverBase','441','net.sourceforge.ganttproject.io.CalendarSaver'),(108,'455','net.sourceforge.ganttproject.io.SaverBase','444','net.sourceforge.ganttproject.io.GanttChartViewSaver'),(109,'455','net.sourceforge.ganttproject.io.SaverBase','452','net.sourceforge.ganttproject.io.GanttXMLSaver'),(110,'455','net.sourceforge.ganttproject.io.SaverBase','453','net.sourceforge.ganttproject.io.HistorySaver'),(111,'455','net.sourceforge.ganttproject.io.SaverBase','454','net.sourceforge.ganttproject.io.ResourceSaver'),(112,'455','net.sourceforge.ganttproject.io.SaverBase','456','net.sourceforge.ganttproject.io.TaskSaver'),(113,'455','net.sourceforge.ganttproject.io.SaverBase','457','net.sourceforge.ganttproject.io.VacationSaver'),(114,'455','net.sourceforge.ganttproject.io.SaverBase','458','net.sourceforge.ganttproject.io.ViewSaver'),(115,'505','net.sourceforge.ganttproject.resource.ProjectResource','499','net.sourceforge.ganttproject.resource.HumanResource'),(116,'578','net.sourceforge.ganttproject.task.algorithm.AlgorithmBase','577','net.sourceforge.ganttproject.task.algorithm.AdjustTaskBoundsAlgorithm'),(117,'578','net.sourceforge.ganttproject.task.algorithm.AlgorithmBase','587','net.sourceforge.ganttproject.task.algorithm.RecalculateTaskScheduleAlgorithm'),(118,'595','net.sourceforge.ganttproject.task.dependency.SearchKey','593','net.sourceforge.ganttproject.task.dependency.RangeSearchFromKey'),(119,'595','net.sourceforge.ganttproject.task.dependency.SearchKey','594','net.sourceforge.ganttproject.task.dependency.RangeSearchToKey'),(120,'612','net.sourceforge.ganttproject.task.dependency.TaskDependencySliceImpl','610','net.sourceforge.ganttproject.task.dependency.TaskDependencySliceAsDependant'),(121,'612','net.sourceforge.ganttproject.task.dependency.TaskDependencySliceImpl','611','net.sourceforge.ganttproject.task.dependency.TaskDependencySliceAsDependee'),(122,'613','net.sourceforge.ganttproject.task.dependency.constraint.ConstraintImpl','615','net.sourceforge.ganttproject.task.dependency.constraint.FinishFinishConstraintImpl'),(123,'613','net.sourceforge.ganttproject.task.dependency.constraint.ConstraintImpl','616','net.sourceforge.ganttproject.task.dependency.constraint.FinishStartConstraintImpl'),(124,'613','net.sourceforge.ganttproject.task.dependency.constraint.ConstraintImpl','617','net.sourceforge.ganttproject.task.dependency.constraint.StartFinishConstraintImpl'),(125,'613','net.sourceforge.ganttproject.task.dependency.constraint.ConstraintImpl','618','net.sourceforge.ganttproject.task.dependency.constraint.StartStartConstraintImpl'),(126,'637','net.sourceforge.ganttproject.time.TimeUnitImpl','631','net.sourceforge.ganttproject.time.TimeUnitDateFrameableImpl'),(127,'631','net.sourceforge.ganttproject.time.TimeUnitDateFrameableImpl','634','net.sourceforge.ganttproject.time.TimeUnitFunctionOfDateImpl'),(128,'641','net.sourceforge.ganttproject.time.gregorian.CachingTextFormatter','642','net.sourceforge.ganttproject.time.gregorian.DayTextFormatter'),(129,'638','net.sourceforge.ganttproject.time.TimeUnitPair','644','net.sourceforge.ganttproject.time.gregorian.GPTimeUnitStack$MyTimeUnitPair'),(130,'641','net.sourceforge.ganttproject.time.gregorian.CachingTextFormatter','648','net.sourceforge.ganttproject.time.gregorian.MonthTextFormatter'),(131,'641','net.sourceforge.ganttproject.time.gregorian.CachingTextFormatter','654','net.sourceforge.ganttproject.time.gregorian.WeekTextFormatter'),(132,'641','net.sourceforge.ganttproject.time.gregorian.CachingTextFormatter','655','net.sourceforge.ganttproject.time.gregorian.YearTextFormatter'),(133,'423','net.sourceforge.ganttproject.gui.zoom.ZoomListener','32','net.sourceforge.ganttproject.GanttGraphicArea$ChartImplementation'),(134,'159','net.sourceforge.ganttproject.chart.Chart','185','net.sourceforge.ganttproject.chart.GanttChart'),(135,'159','net.sourceforge.ganttproject.chart.Chart','202','net.sourceforge.ganttproject.chart.ResourceChart'),(136,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','373','net.sourceforge.ganttproject.gui.options.model.BooleanOption'),(137,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','377','net.sourceforge.ganttproject.gui.options.model.ColorOption'),(138,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','378','net.sourceforge.ganttproject.gui.options.model.DateOption'),(139,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','384','net.sourceforge.ganttproject.gui.options.model.EnumerationOption'),(140,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','391','net.sourceforge.ganttproject.gui.options.model.StringOption'),(141,'538','net.sourceforge.ganttproject.task.MutableResourceAssignmentCollection','541','net.sourceforge.ganttproject.task.ResourceAssignmentCollection'),(142,'538','net.sourceforge.ganttproject.task.MutableResourceAssignmentCollection','547','net.sourceforge.ganttproject.task.ResourceAssignmentMutator'),(143,'539','net.sourceforge.ganttproject.task.MutableTask','548','net.sourceforge.ganttproject.task.Task'),(144,'539','net.sourceforge.ganttproject.task.MutableTask','571','net.sourceforge.ganttproject.task.TaskMutator'),(145,'592','net.sourceforge.ganttproject.task.dependency.MutableTaskDependencyCollection','599','net.sourceforge.ganttproject.task.dependency.TaskDependencyCollection'),(146,'592','net.sourceforge.ganttproject.task.dependency.MutableTaskDependencyCollection','603','net.sourceforge.ganttproject.task.dependency.TaskDependencyCollectionMutator'),(147,'627','net.sourceforge.ganttproject.time.DateFrameable','630','net.sourceforge.ganttproject.time.TimeUnit'),(148,'630','net.sourceforge.ganttproject.time.TimeUnit','632','net.sourceforge.ganttproject.time.TimeUnitFunctionOfDate'),(149,'423','net.sourceforge.ganttproject.gui.zoom.ZoomListener','32','net.sourceforge.ganttproject.GanttGraphicArea$ChartImplementation'),(150,'159','net.sourceforge.ganttproject.chart.Chart','185','net.sourceforge.ganttproject.chart.GanttChart'),(151,'159','net.sourceforge.ganttproject.chart.Chart','202','net.sourceforge.ganttproject.chart.ResourceChart'),(152,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','373','net.sourceforge.ganttproject.gui.options.model.BooleanOption'),(153,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','377','net.sourceforge.ganttproject.gui.options.model.ColorOption'),(154,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','378','net.sourceforge.ganttproject.gui.options.model.DateOption'),(155,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','384','net.sourceforge.ganttproject.gui.options.model.EnumerationOption'),(156,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','391','net.sourceforge.ganttproject.gui.options.model.StringOption'),(157,'538','net.sourceforge.ganttproject.task.MutableResourceAssignmentCollection','541','net.sourceforge.ganttproject.task.ResourceAssignmentCollection'),(158,'538','net.sourceforge.ganttproject.task.MutableResourceAssignmentCollection','547','net.sourceforge.ganttproject.task.ResourceAssignmentMutator'),(159,'539','net.sourceforge.ganttproject.task.MutableTask','548','net.sourceforge.ganttproject.task.Task'),(160,'539','net.sourceforge.ganttproject.task.MutableTask','571','net.sourceforge.ganttproject.task.TaskMutator'),(161,'592','net.sourceforge.ganttproject.task.dependency.MutableTaskDependencyCollection','599','net.sourceforge.ganttproject.task.dependency.TaskDependencyCollection'),(162,'592','net.sourceforge.ganttproject.task.dependency.MutableTaskDependencyCollection','603','net.sourceforge.ganttproject.task.dependency.TaskDependencyCollectionMutator'),(163,'627','net.sourceforge.ganttproject.time.DateFrameable','630','net.sourceforge.ganttproject.time.TimeUnit'),(164,'630','net.sourceforge.ganttproject.time.TimeUnit','632','net.sourceforge.ganttproject.time.TimeUnitFunctionOfDate'),(165,'423','net.sourceforge.ganttproject.gui.zoom.ZoomListener','32','net.sourceforge.ganttproject.GanttGraphicArea$ChartImplementation'),(166,'159','net.sourceforge.ganttproject.chart.Chart','185','net.sourceforge.ganttproject.chart.GanttChart'),(167,'159','net.sourceforge.ganttproject.chart.Chart','202','net.sourceforge.ganttproject.chart.ResourceChart'),(168,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','373','net.sourceforge.ganttproject.gui.options.model.BooleanOption'),(169,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','377','net.sourceforge.ganttproject.gui.options.model.ColorOption'),(170,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','378','net.sourceforge.ganttproject.gui.options.model.DateOption'),(171,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','384','net.sourceforge.ganttproject.gui.options.model.EnumerationOption'),(172,'387','net.sourceforge.ganttproject.gui.options.model.GPOption','391','net.sourceforge.ganttproject.gui.options.model.StringOption'),(173,'538','net.sourceforge.ganttproject.task.MutableResourceAssignmentCollection','541','net.sourceforge.ganttproject.task.ResourceAssignmentCollection'),(174,'538','net.sourceforge.ganttproject.task.MutableResourceAssignmentCollection','547','net.sourceforge.ganttproject.task.ResourceAssignmentMutator'),(175,'539','net.sourceforge.ganttproject.task.MutableTask','548','net.sourceforge.ganttproject.task.Task'),(176,'539','net.sourceforge.ganttproject.task.MutableTask','571','net.sourceforge.ganttproject.task.TaskMutator'),(177,'592','net.sourceforge.ganttproject.task.dependency.MutableTaskDependencyCollection','599','net.sourceforge.ganttproject.task.dependency.TaskDependencyCollection'),(178,'592','net.sourceforge.ganttproject.task.dependency.MutableTaskDependencyCollection','603','net.sourceforge.ganttproject.task.dependency.TaskDependencyCollectionMutator'),(179,'627','net.sourceforge.ganttproject.time.DateFrameable','630','net.sourceforge.ganttproject.time.TimeUnit'),(180,'630','net.sourceforge.ganttproject.time.TimeUnit','632','net.sourceforge.ganttproject.time.TimeUnitFunctionOfDate');
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

-- Dump completed on 2021-03-09 20:11:44
