-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: databasejhotdraw
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
  `superclassid` int(11) DEFAULT NULL,
  `superclassname` longtext,
  `ownerclassid` int(11) DEFAULT NULL,
  `childclassname` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superclasses`
--

LOCK TABLES `superclasses` WRITE;
/*!40000 ALTER TABLE `superclasses` DISABLE KEYS */;
INSERT INTO `superclasses` VALUES (1,56,'org.jhotdraw.beans.AbstractBean',1,'org.jhotdraw.app.AbstractApplication'),(2,1,'org.jhotdraw.app.AbstractApplication',5,'org.jhotdraw.app.DefaultAppletApplication'),(3,56,'org.jhotdraw.beans.AbstractBean',6,'org.jhotdraw.app.DefaultApplicationModel'),(4,1,'org.jhotdraw.app.AbstractApplication',7,'org.jhotdraw.app.DefaultMDIApplication'),(5,1,'org.jhotdraw.app.AbstractApplication',8,'org.jhotdraw.app.DefaultOSXApplication'),(6,1,'org.jhotdraw.app.AbstractApplication',9,'org.jhotdraw.app.DefaultSDIApplication'),(7,17,'org.jhotdraw.app.action.AbstractApplicationAction',16,'org.jhotdraw.app.action.AboutAction'),(8,19,'org.jhotdraw.app.action.AbstractViewAction',18,'org.jhotdraw.app.action.AbstractSaveBeforeAction'),(9,18,'org.jhotdraw.app.action.AbstractSaveBeforeAction',22,'org.jhotdraw.app.action.ClearAction'),(10,17,'org.jhotdraw.app.action.AbstractApplicationAction',23,'org.jhotdraw.app.action.ClearRecentFilesAction'),(11,18,'org.jhotdraw.app.action.AbstractSaveBeforeAction',25,'org.jhotdraw.app.action.CloseAction'),(12,17,'org.jhotdraw.app.action.AbstractApplicationAction',30,'org.jhotdraw.app.action.ExitAction'),(13,19,'org.jhotdraw.app.action.AbstractViewAction',31,'org.jhotdraw.app.action.ExportAction'),(14,19,'org.jhotdraw.app.action.AbstractViewAction',32,'org.jhotdraw.app.action.FindAction'),(15,18,'org.jhotdraw.app.action.AbstractSaveBeforeAction',34,'org.jhotdraw.app.action.LoadAction'),(16,34,'org.jhotdraw.app.action.LoadAction',35,'org.jhotdraw.app.action.LoadDirectoryAction'),(17,18,'org.jhotdraw.app.action.AbstractSaveBeforeAction',36,'org.jhotdraw.app.action.LoadRecentAction'),(18,19,'org.jhotdraw.app.action.AbstractViewAction',37,'org.jhotdraw.app.action.MaximizeAction'),(19,19,'org.jhotdraw.app.action.AbstractViewAction',38,'org.jhotdraw.app.action.MinimizeAction'),(20,17,'org.jhotdraw.app.action.AbstractApplicationAction',39,'org.jhotdraw.app.action.NewAction'),(21,17,'org.jhotdraw.app.action.AbstractApplicationAction',40,'org.jhotdraw.app.action.OSXDropOnDockAction'),(22,17,'org.jhotdraw.app.action.AbstractApplicationAction',42,'org.jhotdraw.app.action.OpenAction'),(23,42,'org.jhotdraw.app.action.OpenAction',43,'org.jhotdraw.app.action.OpenDirectoryAction'),(24,17,'org.jhotdraw.app.action.AbstractApplicationAction',44,'org.jhotdraw.app.action.OpenRecentAction'),(25,19,'org.jhotdraw.app.action.AbstractViewAction',46,'org.jhotdraw.app.action.PrintAction'),(26,19,'org.jhotdraw.app.action.AbstractViewAction',47,'org.jhotdraw.app.action.RedoAction'),(27,19,'org.jhotdraw.app.action.AbstractViewAction',48,'org.jhotdraw.app.action.SaveAction'),(28,48,'org.jhotdraw.app.action.SaveAction',49,'org.jhotdraw.app.action.SaveAsAction'),(29,19,'org.jhotdraw.app.action.AbstractViewAction',52,'org.jhotdraw.app.action.ToggleViewPropertyAction'),(30,19,'org.jhotdraw.app.action.AbstractViewAction',54,'org.jhotdraw.app.action.UndoAction'),(31,19,'org.jhotdraw.app.action.AbstractViewAction',55,'org.jhotdraw.app.action.ViewPropertyAction'),(32,56,'org.jhotdraw.beans.AbstractBean',57,'org.jhotdraw.color.AbstractColorSlidersModel'),(33,58,'org.jhotdraw.color.AbstractColorSystem',60,'org.jhotdraw.color.CMYKICCColorSystem'),(34,58,'org.jhotdraw.color.AbstractColorSystem',61,'org.jhotdraw.color.CMYKNominalColorSystem'),(35,57,'org.jhotdraw.color.AbstractColorSlidersModel',73,'org.jhotdraw.color.DefaultColorSliderModel'),(36,71,'org.jhotdraw.color.ColorWheelImageProducer',75,'org.jhotdraw.color.HSLHarmonicColorWheelImageProducer'),(37,58,'org.jhotdraw.color.AbstractColorSystem',76,'org.jhotdraw.color.HSLRGBColorSystem'),(38,58,'org.jhotdraw.color.AbstractColorSystem',77,'org.jhotdraw.color.HSLRYBColorSystem'),(39,71,'org.jhotdraw.color.ColorWheelImageProducer',78,'org.jhotdraw.color.HSVHarmonicColorWheelImageProducer'),(40,58,'org.jhotdraw.color.AbstractColorSystem',79,'org.jhotdraw.color.HSVRGBColorSystem'),(41,58,'org.jhotdraw.color.AbstractColorSystem',80,'org.jhotdraw.color.HSVRYBColorSystem'),(42,85,'org.jhotdraw.color.JColorWheel',88,'org.jhotdraw.color.JHarmonicColorWheel'),(43,58,'org.jhotdraw.color.AbstractColorSystem',89,'org.jhotdraw.color.RGBColorSystem'),(44,59,'org.jhotdraw.color.AbstractHarmonicRule',90,'org.jhotdraw.color.SimpleHarmonicRule'),(45,95,'org.jhotdraw.draw.AbstractCompositeFigure',91,'org.jhotdraw.draw.AbstractAttributedCompositeFigure'),(46,93,'org.jhotdraw.draw.AbstractAttributedFigure',92,'org.jhotdraw.draw.AbstractAttributedDecoratedFigure'),(47,100,'org.jhotdraw.draw.AbstractFigure',93,'org.jhotdraw.draw.AbstractAttributedFigure'),(48,100,'org.jhotdraw.draw.AbstractFigure',95,'org.jhotdraw.draw.AbstractCompositeFigure'),(49,175,'org.jhotdraw.draw.FigureAdapter',94,'org.jhotdraw.draw.AbstractCompositeFigure$EventHandler'),(50,101,'org.jhotdraw.draw.AbstractHandle',96,'org.jhotdraw.draw.AbstractConnectionHandle'),(51,56,'org.jhotdraw.beans.AbstractBean',98,'org.jhotdraw.draw.AbstractConstrainer'),(52,91,'org.jhotdraw.draw.AbstractAttributedCompositeFigure',99,'org.jhotdraw.draw.AbstractDrawing'),(53,56,'org.jhotdraw.beans.AbstractBean',100,'org.jhotdraw.draw.AbstractFigure'),(54,101,'org.jhotdraw.draw.AbstractHandle',105,'org.jhotdraw.draw.AbstractRotateHandle'),(55,56,'org.jhotdraw.beans.AbstractBean',106,'org.jhotdraw.draw.AbstractTool'),(56,103,'org.jhotdraw.draw.AbstractLineDecoration',107,'org.jhotdraw.draw.ArrowTip'),(57,101,'org.jhotdraw.draw.AbstractHandle',117,'org.jhotdraw.draw.BezierControlPointHandle'),(58,93,'org.jhotdraw.draw.AbstractAttributedFigure',118,'org.jhotdraw.draw.BezierFigure'),(59,101,'org.jhotdraw.draw.AbstractHandle',121,'org.jhotdraw.draw.BezierNodeHandle'),(60,101,'org.jhotdraw.draw.AbstractHandle',122,'org.jhotdraw.draw.BezierOutlineHandle'),(61,104,'org.jhotdraw.draw.AbstractLocator',123,'org.jhotdraw.draw.BezierPointLocator'),(62,101,'org.jhotdraw.draw.AbstractHandle',124,'org.jhotdraw.draw.BezierScaleHandle'),(63,106,'org.jhotdraw.draw.AbstractTool',125,'org.jhotdraw.draw.BezierTool'),(64,106,'org.jhotdraw.draw.AbstractTool',126,'org.jhotdraw.draw.BidirectionalConnectionTool'),(65,228,'org.jhotdraw.draw.RectangleFigure',127,'org.jhotdraw.draw.BorderRectangleFigure'),(66,101,'org.jhotdraw.draw.AbstractHandle',128,'org.jhotdraw.draw.BoundsOutlineHandle'),(67,132,'org.jhotdraw.draw.ChopRectangleConnector',129,'org.jhotdraw.draw.ChopBezierConnector'),(68,132,'org.jhotdraw.draw.ChopRectangleConnector',130,'org.jhotdraw.draw.ChopDiamondConnector'),(69,132,'org.jhotdraw.draw.ChopRectangleConnector',131,'org.jhotdraw.draw.ChopEllipseConnector'),(70,97,'org.jhotdraw.draw.AbstractConnector',132,'org.jhotdraw.draw.ChopRectangleConnector'),(71,132,'org.jhotdraw.draw.ChopRectangleConnector',133,'org.jhotdraw.draw.ChopRoundRectangleConnector'),(72,132,'org.jhotdraw.draw.ChopRectangleConnector',134,'org.jhotdraw.draw.ChopTriangleConnector'),(73,216,'org.jhotdraw.draw.LocatorHandle',135,'org.jhotdraw.draw.CloseHandle'),(74,96,'org.jhotdraw.draw.AbstractConnectionHandle',141,'org.jhotdraw.draw.ConnectionEndHandle'),(75,96,'org.jhotdraw.draw.AbstractConnectionHandle',143,'org.jhotdraw.draw.ConnectionStartHandle'),(76,106,'org.jhotdraw.draw.AbstractTool',144,'org.jhotdraw.draw.ConnectionTool'),(77,101,'org.jhotdraw.draw.AbstractHandle',146,'org.jhotdraw.draw.ConnectorHandle'),(78,106,'org.jhotdraw.draw.AbstractTool',148,'org.jhotdraw.draw.CreationTool'),(79,106,'org.jhotdraw.draw.AbstractTool',151,'org.jhotdraw.draw.DefaultDragTracker'),(80,99,'org.jhotdraw.draw.AbstractDrawing',152,'org.jhotdraw.draw.DefaultDrawing'),(81,56,'org.jhotdraw.beans.AbstractBean',153,'org.jhotdraw.draw.DefaultDrawingEditor'),(82,106,'org.jhotdraw.draw.AbstractTool',160,'org.jhotdraw.draw.DefaultHandleTracker'),(83,106,'org.jhotdraw.draw.AbstractTool',161,'org.jhotdraw.draw.DefaultSelectAreaTracker'),(84,248,'org.jhotdraw.draw.SelectionTool',162,'org.jhotdraw.draw.DelegationSelectionTool'),(85,93,'org.jhotdraw.draw.AbstractAttributedFigure',163,'org.jhotdraw.draw.DiamondFigure'),(86,159,'org.jhotdraw.draw.DefaultDrawingViewTransferHandler',164,'org.jhotdraw.draw.DnDDrawingViewTransferHandler'),(87,106,'org.jhotdraw.draw.AbstractTool',165,'org.jhotdraw.draw.DnDTracker'),(88,101,'org.jhotdraw.draw.AbstractHandle',166,'org.jhotdraw.draw.DragHandle'),(89,93,'org.jhotdraw.draw.AbstractAttributedFigure',173,'org.jhotdraw.draw.EllipseFigure'),(90,216,'org.jhotdraw.draw.LocatorHandle',183,'org.jhotdraw.draw.FontSizeHandle'),(91,103,'org.jhotdraw.draw.AbstractLineDecoration',185,'org.jhotdraw.draw.GeneralPathTip'),(92,95,'org.jhotdraw.draw.AbstractCompositeFigure',188,'org.jhotdraw.draw.GraphicalCompositeFigure'),(93,175,'org.jhotdraw.draw.FigureAdapter',187,'org.jhotdraw.draw.GraphicalCompositeFigure$PresentationFigureHandler'),(94,98,'org.jhotdraw.draw.AbstractConstrainer',189,'org.jhotdraw.draw.GridConstrainer'),(95,95,'org.jhotdraw.draw.AbstractCompositeFigure',190,'org.jhotdraw.draw.GroupFigure'),(96,102,'org.jhotdraw.draw.AbstractLayouter',197,'org.jhotdraw.draw.HorizontalLayouter'),(97,92,'org.jhotdraw.draw.AbstractAttributedDecoratedFigure',198,'org.jhotdraw.draw.ImageFigure'),(98,148,'org.jhotdraw.draw.CreationTool',202,'org.jhotdraw.draw.ImageTool'),(99,258,'org.jhotdraw.draw.TextFigure',204,'org.jhotdraw.draw.LabelFigure'),(100,209,'org.jhotdraw.draw.LineConnectionFigure',206,'org.jhotdraw.draw.LabeledLineConnectionFigure'),(101,175,'org.jhotdraw.draw.FigureAdapter',205,'org.jhotdraw.draw.LabeledLineConnectionFigure$ChildHandler'),(102,211,'org.jhotdraw.draw.LineFigure',209,'org.jhotdraw.draw.LineConnectionFigure'),(103,175,'org.jhotdraw.draw.FigureAdapter',208,'org.jhotdraw.draw.LineConnectionFigure$ConnectionHandler'),(104,118,'org.jhotdraw.draw.BezierFigure',211,'org.jhotdraw.draw.LineFigure'),(105,188,'org.jhotdraw.draw.GraphicalCompositeFigure',213,'org.jhotdraw.draw.ListFigure'),(106,97,'org.jhotdraw.draw.AbstractConnector',215,'org.jhotdraw.draw.LocatorConnector'),(107,101,'org.jhotdraw.draw.AbstractHandle',216,'org.jhotdraw.draw.LocatorHandle'),(108,216,'org.jhotdraw.draw.LocatorHandle',218,'org.jhotdraw.draw.MoveHandle'),(109,216,'org.jhotdraw.draw.LocatorHandle',219,'org.jhotdraw.draw.NullHandle'),(110,103,'org.jhotdraw.draw.AbstractLineDecoration',222,'org.jhotdraw.draw.PerpendicularBar'),(111,95,'org.jhotdraw.draw.AbstractCompositeFigure',225,'org.jhotdraw.draw.QuadTreeCompositeFigure'),(112,175,'org.jhotdraw.draw.FigureAdapter',224,'org.jhotdraw.draw.QuadTreeCompositeFigure$FigureHandler'),(113,99,'org.jhotdraw.draw.AbstractDrawing',227,'org.jhotdraw.draw.QuadTreeDrawing'),(114,93,'org.jhotdraw.draw.AbstractAttributedFigure',228,'org.jhotdraw.draw.RectangleFigure'),(115,230,'org.jhotdraw.draw.RelativeLocator',229,'org.jhotdraw.draw.RelativeDecoratorLocator'),(116,104,'org.jhotdraw.draw.AbstractLocator',230,'org.jhotdraw.draw.RelativeLocator'),(117,216,'org.jhotdraw.draw.LocatorHandle',235,'org.jhotdraw.draw.ResizeHandleKit$ResizeHandle'),(118,105,'org.jhotdraw.draw.AbstractRotateHandle',242,'org.jhotdraw.draw.RotateHandle'),(119,93,'org.jhotdraw.draw.AbstractAttributedFigure',244,'org.jhotdraw.draw.RoundRectangleFigure'),(120,101,'org.jhotdraw.draw.AbstractHandle',245,'org.jhotdraw.draw.RoundRectangleRadiusHandle'),(121,106,'org.jhotdraw.draw.AbstractTool',248,'org.jhotdraw.draw.SelectionTool'),(122,132,'org.jhotdraw.draw.ChopRectangleConnector',252,'org.jhotdraw.draw.StickyRectangleConnector'),(123,148,'org.jhotdraw.draw.CreationTool',253,'org.jhotdraw.draw.TextAreaCreationTool'),(124,106,'org.jhotdraw.draw.AbstractTool',254,'org.jhotdraw.draw.TextAreaEditingTool'),(125,92,'org.jhotdraw.draw.AbstractAttributedDecoratedFigure',255,'org.jhotdraw.draw.TextAreaFigure'),(126,148,'org.jhotdraw.draw.CreationTool',256,'org.jhotdraw.draw.TextCreationTool'),(127,106,'org.jhotdraw.draw.AbstractTool',257,'org.jhotdraw.draw.TextEditingTool'),(128,92,'org.jhotdraw.draw.AbstractAttributedDecoratedFigure',258,'org.jhotdraw.draw.TextFigure'),(129,101,'org.jhotdraw.draw.AbstractHandle',261,'org.jhotdraw.draw.TextOverflowHandle'),(130,216,'org.jhotdraw.draw.LocatorHandle',273,'org.jhotdraw.draw.TransformHandleKit$TransformHandle'),(131,93,'org.jhotdraw.draw.AbstractAttributedFigure',277,'org.jhotdraw.draw.TriangleFigure'),(132,101,'org.jhotdraw.draw.AbstractHandle',278,'org.jhotdraw.draw.TriangleRotationHandler'),(133,102,'org.jhotdraw.draw.AbstractLayouter',279,'org.jhotdraw.draw.VerticalLayouter'),(134,283,'org.jhotdraw.draw.action.AbstractSelectedAction',290,'org.jhotdraw.draw.action.AlignAction'),(135,290,'org.jhotdraw.draw.action.AlignAction',284,'org.jhotdraw.draw.action.AlignAction$East'),(136,290,'org.jhotdraw.draw.action.AlignAction',285,'org.jhotdraw.draw.action.AlignAction$Horizontal'),(137,290,'org.jhotdraw.draw.action.AlignAction',286,'org.jhotdraw.draw.action.AlignAction$North'),(138,290,'org.jhotdraw.draw.action.AlignAction',287,'org.jhotdraw.draw.action.AlignAction$South'),(139,290,'org.jhotdraw.draw.action.AlignAction',288,'org.jhotdraw.draw.action.AlignAction$Vertical'),(140,290,'org.jhotdraw.draw.action.AlignAction',289,'org.jhotdraw.draw.action.AlignAction$West'),(141,283,'org.jhotdraw.draw.action.AbstractSelectedAction',291,'org.jhotdraw.draw.action.ApplyAttributesAction'),(142,283,'org.jhotdraw.draw.action.AbstractSelectedAction',292,'org.jhotdraw.draw.action.AttributeAction'),(143,283,'org.jhotdraw.draw.action.AbstractSelectedAction',294,'org.jhotdraw.draw.action.BringToFrontAction'),(144,283,'org.jhotdraw.draw.action.AbstractSelectedAction',299,'org.jhotdraw.draw.action.DefaultAttributeAction'),(145,281,'org.jhotdraw.draw.action.AbstractDrawingViewAction',300,'org.jhotdraw.draw.action.DrawingAttributeAction'),(146,309,'org.jhotdraw.draw.action.EditorColorChooserAction',301,'org.jhotdraw.draw.action.DrawingColorChooserAction'),(147,56,'org.jhotdraw.beans.AbstractBean',304,'org.jhotdraw.draw.action.DrawingEditorProxy'),(148,280,'org.jhotdraw.draw.action.AbstractDrawingEditorAction',305,'org.jhotdraw.draw.action.EditCanvasAction'),(149,280,'org.jhotdraw.draw.action.AbstractDrawingEditorAction',307,'org.jhotdraw.draw.action.EditGridAction'),(150,292,'org.jhotdraw.draw.action.AttributeAction',309,'org.jhotdraw.draw.action.EditorColorChooserAction'),(151,283,'org.jhotdraw.draw.action.AbstractSelectedAction',311,'org.jhotdraw.draw.action.FontChooserHandler'),(152,283,'org.jhotdraw.draw.action.AbstractSelectedAction',314,'org.jhotdraw.draw.action.GroupAction'),(153,283,'org.jhotdraw.draw.action.AbstractSelectedAction',316,'org.jhotdraw.draw.action.IncreaseHandleDetailLevelAction'),(154,283,'org.jhotdraw.draw.action.AbstractSelectedAction',322,'org.jhotdraw.draw.action.MoveAction'),(155,322,'org.jhotdraw.draw.action.MoveAction',318,'org.jhotdraw.draw.action.MoveAction$East'),(156,322,'org.jhotdraw.draw.action.MoveAction',319,'org.jhotdraw.draw.action.MoveAction$North'),(157,322,'org.jhotdraw.draw.action.MoveAction',320,'org.jhotdraw.draw.action.MoveAction$South'),(158,322,'org.jhotdraw.draw.action.MoveAction',321,'org.jhotdraw.draw.action.MoveAction$West'),(159,283,'org.jhotdraw.draw.action.AbstractSelectedAction',327,'org.jhotdraw.draw.action.MoveConstrainedAction'),(160,327,'org.jhotdraw.draw.action.MoveConstrainedAction',323,'org.jhotdraw.draw.action.MoveConstrainedAction$East'),(161,327,'org.jhotdraw.draw.action.MoveConstrainedAction',324,'org.jhotdraw.draw.action.MoveConstrainedAction$North'),(162,327,'org.jhotdraw.draw.action.MoveConstrainedAction',325,'org.jhotdraw.draw.action.MoveConstrainedAction$South'),(163,327,'org.jhotdraw.draw.action.MoveConstrainedAction',326,'org.jhotdraw.draw.action.MoveConstrainedAction$West'),(164,283,'org.jhotdraw.draw.action.AbstractSelectedAction',329,'org.jhotdraw.draw.action.PickAttributesAction'),(165,283,'org.jhotdraw.draw.action.AbstractSelectedAction',330,'org.jhotdraw.draw.action.SelectSameAction'),(166,309,'org.jhotdraw.draw.action.EditorColorChooserAction',331,'org.jhotdraw.draw.action.SelectionColorChooserAction'),(167,175,'org.jhotdraw.draw.FigureAdapter',333,'org.jhotdraw.draw.action.SelectionComponentRepainter'),(168,283,'org.jhotdraw.draw.action.AbstractSelectedAction',334,'org.jhotdraw.draw.action.SendToBackAction'),(169,280,'org.jhotdraw.draw.action.AbstractDrawingEditorAction',336,'org.jhotdraw.draw.action.ToggleGridAction'),(170,314,'org.jhotdraw.draw.action.GroupAction',337,'org.jhotdraw.draw.action.UngroupAction'),(171,281,'org.jhotdraw.draw.action.AbstractDrawingViewAction',339,'org.jhotdraw.draw.action.ZoomAction'),(172,280,'org.jhotdraw.draw.action.AbstractDrawingEditorAction',340,'org.jhotdraw.draw.action.ZoomEditorAction'),(173,347,'org.jhotdraw.geom.DoubleStroke',349,'org.jhotdraw.geom.GrowStroke'),(174,352,'org.jhotdraw.geom.Insets2D',350,'org.jhotdraw.geom.Insets2D$Double'),(175,352,'org.jhotdraw.geom.Insets2D',351,'org.jhotdraw.geom.Insets2D$Float'),(176,357,'org.jhotdraw.geom.Polygon2D',353,'org.jhotdraw.geom.Polygon2D$Double'),(177,357,'org.jhotdraw.geom.Polygon2D',354,'org.jhotdraw.geom.Polygon2D$Float'),(178,175,'org.jhotdraw.draw.FigureAdapter',361,'org.jhotdraw.gui.AbstractAttributeEditorHandler$EventHandler'),(179,381,'org.jhotdraw.gui.JLifeFormattedTextArea',373,'org.jhotdraw.gui.JAttributeTextArea'),(180,383,'org.jhotdraw.gui.JLifeFormattedTextField',375,'org.jhotdraw.gui.JAttributeTextField'),(181,392,'org.jhotdraw.gui.PlacardScrollPaneLayout',391,'org.jhotdraw.gui.PlacardScrollPaneLayout$UIResource'),(182,395,'org.jhotdraw.gui.datatransfer.AbstractTransferable',398,'org.jhotdraw.gui.datatransfer.InputStreamTransferable'),(183,401,'org.jhotdraw.gui.fontchooser.AbstractFontChooserModel',403,'org.jhotdraw.gui.fontchooser.DefaultFontChooserModel'),(184,403,'org.jhotdraw.gui.fontchooser.DefaultFontChooserModel',402,'org.jhotdraw.gui.fontchooser.DefaultFontChooserModel$UIResource'),(185,410,'org.jhotdraw.gui.plaf.palette.BackdropBorder',409,'org.jhotdraw.gui.plaf.palette.BackdropBorder$UIResource'),(186,408,'org.jhotdraw.gui.plaf.FontChooserUI',420,'org.jhotdraw.gui.plaf.palette.PaletteFontChooserUI'),(187,431,'org.jhotdraw.gui.plaf.palette.PaletteToolBarBorder',430,'org.jhotdraw.gui.plaf.palette.PaletteToolBarBorder$UIResource'),(188,412,'org.jhotdraw.gui.plaf.palette.MultiIcon',442,'org.jhotdraw.gui.plaf.palette.SliderThumbIcon'),(189,6,'org.jhotdraw.app.DefaultApplicationModel',454,'org.jhotdraw.samples.draw.DrawApplicationModel'),(190,653,'org.jhotdraw.xml.DefaultDOMFactory',455,'org.jhotdraw.samples.draw.DrawFigureFactory'),(191,2,'org.jhotdraw.app.AbstractView',458,'org.jhotdraw.samples.draw.DrawView'),(192,209,'org.jhotdraw.draw.LineConnectionFigure',480,'org.jhotdraw.samples.mini.SmartConnectionFigureSample$SmartConnectionFigure'),(193,93,'org.jhotdraw.draw.AbstractAttributedFigure',482,'org.jhotdraw.samples.mini.StraightLineFigure'),(194,6,'org.jhotdraw.app.DefaultApplicationModel',486,'org.jhotdraw.samples.net.NetApplicationModel'),(195,653,'org.jhotdraw.xml.DefaultDOMFactory',487,'org.jhotdraw.samples.net.NetFactory'),(196,2,'org.jhotdraw.app.AbstractView',489,'org.jhotdraw.samples.net.NetView'),(197,258,'org.jhotdraw.draw.TextFigure',490,'org.jhotdraw.samples.net.figures.NodeFigure'),(198,6,'org.jhotdraw.app.DefaultApplicationModel',493,'org.jhotdraw.samples.odg.ODGApplicationModel'),(199,116,'org.jhotdraw.draw.AttributeKeys',494,'org.jhotdraw.samples.odg.ODGAttributeKeys'),(200,227,'org.jhotdraw.draw.QuadTreeDrawing',498,'org.jhotdraw.samples.odg.ODGDrawing'),(201,2,'org.jhotdraw.app.AbstractView',503,'org.jhotdraw.samples.odg.ODGView'),(202,125,'org.jhotdraw.draw.BezierTool',504,'org.jhotdraw.samples.odg.PathTool'),(203,314,'org.jhotdraw.draw.action.GroupAction',505,'org.jhotdraw.samples.odg.action.CombineAction'),(204,337,'org.jhotdraw.draw.action.UngroupAction',506,'org.jhotdraw.samples.odg.action.SplitAction'),(205,19,'org.jhotdraw.app.action.AbstractViewAction',507,'org.jhotdraw.samples.odg.action.TogglePropertiesPanelAction'),(206,93,'org.jhotdraw.draw.AbstractAttributedFigure',508,'org.jhotdraw.samples.odg.figures.ODGAttributedFigure'),(207,118,'org.jhotdraw.draw.BezierFigure',509,'org.jhotdraw.samples.odg.figures.ODGBezierFigure'),(208,508,'org.jhotdraw.samples.odg.figures.ODGAttributedFigure',510,'org.jhotdraw.samples.odg.figures.ODGEllipseFigure'),(209,190,'org.jhotdraw.draw.GroupFigure',512,'org.jhotdraw.samples.odg.figures.ODGGroupFigure'),(210,91,'org.jhotdraw.draw.AbstractAttributedCompositeFigure',513,'org.jhotdraw.samples.odg.figures.ODGPathFigure'),(211,101,'org.jhotdraw.draw.AbstractHandle',514,'org.jhotdraw.samples.odg.figures.ODGPathOutlineHandle'),(212,508,'org.jhotdraw.samples.odg.figures.ODGAttributedFigure',515,'org.jhotdraw.samples.odg.figures.ODGRectFigure'),(213,101,'org.jhotdraw.draw.AbstractHandle',516,'org.jhotdraw.samples.odg.figures.ODGRectRadiusHandle'),(214,6,'org.jhotdraw.app.DefaultApplicationModel',527,'org.jhotdraw.samples.pert.PertApplicationModel'),(215,653,'org.jhotdraw.xml.DefaultDOMFactory',528,'org.jhotdraw.samples.pert.PertFactory'),(216,2,'org.jhotdraw.app.AbstractView',530,'org.jhotdraw.samples.pert.PertView'),(217,209,'org.jhotdraw.draw.LineConnectionFigure',531,'org.jhotdraw.samples.pert.figures.DependencyFigure'),(218,211,'org.jhotdraw.draw.LineFigure',532,'org.jhotdraw.samples.pert.figures.SeparatorLineFigure'),(219,188,'org.jhotdraw.draw.GraphicalCompositeFigure',535,'org.jhotdraw.samples.pert.figures.TaskFigure'),(220,175,'org.jhotdraw.draw.FigureAdapter',533,'org.jhotdraw.samples.pert.figures.TaskFigure$DurationAdapter'),(221,175,'org.jhotdraw.draw.FigureAdapter',534,'org.jhotdraw.samples.pert.figures.TaskFigure$NameAdapter'),(222,125,'org.jhotdraw.draw.BezierTool',539,'org.jhotdraw.samples.svg.PathTool'),(223,6,'org.jhotdraw.app.DefaultApplicationModel',542,'org.jhotdraw.samples.svg.SVGApplicationModel'),(224,116,'org.jhotdraw.draw.AttributeKeys',545,'org.jhotdraw.samples.svg.SVGAttributeKeys'),(225,148,'org.jhotdraw.draw.CreationTool',547,'org.jhotdraw.samples.svg.SVGCreateFromFileTool'),(226,2,'org.jhotdraw.app.AbstractView',552,'org.jhotdraw.samples.svg.SVGView'),(227,283,'org.jhotdraw.draw.action.AbstractSelectedAction',553,'org.jhotdraw.samples.svg.action.CombineAction'),(228,553,'org.jhotdraw.samples.svg.action.CombineAction',554,'org.jhotdraw.samples.svg.action.SplitAction'),(229,19,'org.jhotdraw.app.action.AbstractViewAction',555,'org.jhotdraw.samples.svg.action.ViewSourceAction'),(230,101,'org.jhotdraw.draw.AbstractHandle',556,'org.jhotdraw.samples.svg.figures.ConvexHullOutlineHandle'),(231,101,'org.jhotdraw.draw.AbstractHandle',557,'org.jhotdraw.samples.svg.figures.LinkHandle'),(232,93,'org.jhotdraw.draw.AbstractAttributedFigure',558,'org.jhotdraw.samples.svg.figures.SVGAttributedFigure'),(233,118,'org.jhotdraw.draw.BezierFigure',559,'org.jhotdraw.samples.svg.figures.SVGBezierFigure'),(234,558,'org.jhotdraw.samples.svg.figures.SVGAttributedFigure',560,'org.jhotdraw.samples.svg.figures.SVGEllipseFigure'),(235,190,'org.jhotdraw.draw.GroupFigure',562,'org.jhotdraw.samples.svg.figures.SVGGroupFigure'),(236,558,'org.jhotdraw.samples.svg.figures.SVGAttributedFigure',563,'org.jhotdraw.samples.svg.figures.SVGImageFigure'),(237,91,'org.jhotdraw.draw.AbstractAttributedCompositeFigure',564,'org.jhotdraw.samples.svg.figures.SVGPathFigure'),(238,101,'org.jhotdraw.draw.AbstractHandle',565,'org.jhotdraw.samples.svg.figures.SVGPathOutlineHandle'),(239,558,'org.jhotdraw.samples.svg.figures.SVGAttributedFigure',566,'org.jhotdraw.samples.svg.figures.SVGRectFigure'),(240,101,'org.jhotdraw.draw.AbstractHandle',567,'org.jhotdraw.samples.svg.figures.SVGRectRadiusHandle'),(241,558,'org.jhotdraw.samples.svg.figures.SVGAttributedFigure',569,'org.jhotdraw.samples.svg.figures.SVGTextAreaFigure'),(242,558,'org.jhotdraw.samples.svg.figures.SVGAttributedFigure',570,'org.jhotdraw.samples.svg.figures.SVGTextFigure'),(243,377,'org.jhotdraw.gui.JDisclosureToolBar',572,'org.jhotdraw.samples.svg.gui.AbstractToolBar'),(244,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',574,'org.jhotdraw.samples.svg.gui.ActionsToolBar'),(245,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',576,'org.jhotdraw.samples.svg.gui.AlignToolBar'),(246,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',578,'org.jhotdraw.samples.svg.gui.ArrangeToolBar'),(247,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',580,'org.jhotdraw.samples.svg.gui.CanvasToolBar'),(248,175,'org.jhotdraw.draw.FigureAdapter',583,'org.jhotdraw.samples.svg.gui.DrawingComponentRepainter'),(249,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',585,'org.jhotdraw.samples.svg.gui.FigureToolBar'),(250,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',587,'org.jhotdraw.samples.svg.gui.FillToolBar'),(251,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',589,'org.jhotdraw.samples.svg.gui.FontToolBar'),(252,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',591,'org.jhotdraw.samples.svg.gui.LinkToolBar'),(253,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',598,'org.jhotdraw.samples.svg.gui.StrokeToolBar'),(254,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',602,'org.jhotdraw.samples.svg.gui.ToolsToolBar'),(255,572,'org.jhotdraw.samples.svg.gui.AbstractToolBar',604,'org.jhotdraw.samples.svg.gui.ViewToolBar'),(256,612,'org.jhotdraw.samples.svg.io.SVGInputFormat',614,'org.jhotdraw.samples.svg.io.SVGZInputFormat'),(257,613,'org.jhotdraw.samples.svg.io.SVGOutputFormat',615,'org.jhotdraw.samples.svg.io.SVGZOutputFormat'),(258,6,'org.jhotdraw.app.DefaultApplicationModel',620,'org.jhotdraw.samples.teddy.TeddyApplicationModel'),(259,2,'org.jhotdraw.app.AbstractView',622,'org.jhotdraw.samples.teddy.TeddyView'),(260,19,'org.jhotdraw.app.action.AbstractViewAction',624,'org.jhotdraw.samples.teddy.action.ToggleLineNumbersAction'),(261,19,'org.jhotdraw.app.action.AbstractViewAction',625,'org.jhotdraw.samples.teddy.action.ToggleLineWrapAction'),(262,19,'org.jhotdraw.app.action.AbstractViewAction',626,'org.jhotdraw.samples.teddy.action.ToggleStatusBarAction'),(263,15,'org.jhotdraw.app.View',10,'org.jhotdraw.app.DirectoryView'),(264,15,'org.jhotdraw.app.View',12,'org.jhotdraw.app.ExportableView'),(265,15,'org.jhotdraw.app.View',14,'org.jhotdraw.app.PrintableView'),(266,174,'org.jhotdraw.draw.Figure',136,'org.jhotdraw.draw.CompositeFigure'),(267,174,'org.jhotdraw.draw.Figure',142,'org.jhotdraw.draw.ConnectionFigure'),(268,652,'org.jhotdraw.xml.DOMStorable',145,'org.jhotdraw.draw.Connector'),(269,174,'org.jhotdraw.draw.Figure',150,'org.jhotdraw.draw.DecoratedFigure'),(270,262,'org.jhotdraw.draw.Tool',167,'org.jhotdraw.draw.DragTracker'),(271,136,'org.jhotdraw.draw.CompositeFigure',168,'org.jhotdraw.draw.Drawing'),(272,652,'org.jhotdraw.xml.DOMStorable',168,'org.jhotdraw.draw.Drawing'),(273,652,'org.jhotdraw.xml.DOMStorable',174,'org.jhotdraw.draw.Figure'),(274,262,'org.jhotdraw.draw.Tool',196,'org.jhotdraw.draw.HandleTracker'),(275,174,'org.jhotdraw.draw.Figure',199,'org.jhotdraw.draw.ImageHolderFigure'),(276,262,'org.jhotdraw.draw.Tool',247,'org.jhotdraw.draw.SelectAreaTracker'),(277,174,'org.jhotdraw.draw.Figure',259,'org.jhotdraw.draw.TextHolderFigure'),(278,174,'org.jhotdraw.draw.Figure',511,'org.jhotdraw.samples.odg.figures.ODGFigure'),(279,174,'org.jhotdraw.draw.Figure',561,'org.jhotdraw.samples.svg.figures.SVGFigure'),(280,15,'org.jhotdraw.app.View',10,'org.jhotdraw.app.DirectoryView'),(281,15,'org.jhotdraw.app.View',12,'org.jhotdraw.app.ExportableView'),(282,15,'org.jhotdraw.app.View',14,'org.jhotdraw.app.PrintableView'),(283,174,'org.jhotdraw.draw.Figure',136,'org.jhotdraw.draw.CompositeFigure'),(284,174,'org.jhotdraw.draw.Figure',142,'org.jhotdraw.draw.ConnectionFigure'),(285,652,'org.jhotdraw.xml.DOMStorable',145,'org.jhotdraw.draw.Connector'),(286,174,'org.jhotdraw.draw.Figure',150,'org.jhotdraw.draw.DecoratedFigure'),(287,262,'org.jhotdraw.draw.Tool',167,'org.jhotdraw.draw.DragTracker'),(288,136,'org.jhotdraw.draw.CompositeFigure',168,'org.jhotdraw.draw.Drawing'),(289,652,'org.jhotdraw.xml.DOMStorable',168,'org.jhotdraw.draw.Drawing'),(290,652,'org.jhotdraw.xml.DOMStorable',174,'org.jhotdraw.draw.Figure'),(291,262,'org.jhotdraw.draw.Tool',196,'org.jhotdraw.draw.HandleTracker'),(292,174,'org.jhotdraw.draw.Figure',199,'org.jhotdraw.draw.ImageHolderFigure'),(293,262,'org.jhotdraw.draw.Tool',247,'org.jhotdraw.draw.SelectAreaTracker'),(294,174,'org.jhotdraw.draw.Figure',259,'org.jhotdraw.draw.TextHolderFigure'),(295,174,'org.jhotdraw.draw.Figure',511,'org.jhotdraw.samples.odg.figures.ODGFigure'),(296,174,'org.jhotdraw.draw.Figure',561,'org.jhotdraw.samples.svg.figures.SVGFigure');
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

-- Dump completed on 2020-11-29  2:51:06
