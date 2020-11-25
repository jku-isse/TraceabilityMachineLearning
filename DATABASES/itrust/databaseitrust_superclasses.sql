-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: databaseitrust
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superclasses`
--

LOCK TABLES `superclasses` WRITE;
/*!40000 ALTER TABLE `superclasses` DISABLE KEYS */;
INSERT INTO `superclasses` VALUES (1,52,'edu.ncsu.csc.itrust.action.ApptAction',25,'edu.ncsu.csc.itrust.action.AddApptAction'),(2,643,'edu.ncsu.csc.itrust.testutils.ActionTestWithMocks',37,'edu.ncsu.csc.itrust.action.AddHCPActionTest'),(3,643,'edu.ncsu.csc.itrust.testutils.ActionTestWithMocks',39,'edu.ncsu.csc.itrust.action.AddLTActionTest'),(4,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',40,'edu.ncsu.csc.itrust.action.AddOfficeVisitAction'),(5,643,'edu.ncsu.csc.itrust.testutils.ActionTestWithMocks',43,'edu.ncsu.csc.itrust.action.AddPHAActionTest'),(6,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',56,'edu.ncsu.csc.itrust.action.ChronicDiseaseRiskAction'),(7,52,'edu.ncsu.csc.itrust.action.ApptAction',63,'edu.ncsu.csc.itrust.action.EditApptAction'),(8,209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction',67,'edu.ncsu.csc.itrust.action.EditDiagnosesAction'),(9,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',69,'edu.ncsu.csc.itrust.action.EditHealthHistoryAction'),(10,209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction',71,'edu.ncsu.csc.itrust.action.EditImmunizationsAction'),(11,209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction',73,'edu.ncsu.csc.itrust.action.EditLabProceduresAction'),(12,209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction',77,'edu.ncsu.csc.itrust.action.EditOfficeVisitAction'),(13,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',79,'edu.ncsu.csc.itrust.action.EditPHRAction'),(14,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',82,'edu.ncsu.csc.itrust.action.EditPatientAction'),(15,209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction',84,'edu.ncsu.csc.itrust.action.EditPatientInstructionsAction'),(16,212,'edu.ncsu.csc.itrust.action.base.PersonnelBaseAction',86,'edu.ncsu.csc.itrust.action.EditPersonnelAction'),(17,209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction',88,'edu.ncsu.csc.itrust.action.EditPrescriptionsAction'),(18,209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction',90,'edu.ncsu.csc.itrust.action.EditProceduresAction'),(19,209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction',92,'edu.ncsu.csc.itrust.action.EditReferralsAction'),(20,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',94,'edu.ncsu.csc.itrust.action.EditRepresentativesAction'),(21,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',98,'edu.ncsu.csc.itrust.action.EmergencyReportAction'),(22,119,'edu.ncsu.csc.itrust.action.LabProcUAPAction',115,'edu.ncsu.csc.itrust.action.LabProcHCPAction'),(23,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',133,'edu.ncsu.csc.itrust.action.PrescriptionReportAction'),(24,52,'edu.ncsu.csc.itrust.action.ApptAction',172,'edu.ncsu.csc.itrust.action.ViewMyApptsAction'),(25,210,'edu.ncsu.csc.itrust.action.base.OfficeVisitBaseAction',185,'edu.ncsu.csc.itrust.action.ViewOfficeVisitAction'),(26,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',187,'edu.ncsu.csc.itrust.action.ViewPatientInstructionsAction'),(27,210,'edu.ncsu.csc.itrust.action.base.OfficeVisitBaseAction',209,'edu.ncsu.csc.itrust.action.base.EditOfficeVisitBaseAction'),(28,211,'edu.ncsu.csc.itrust.action.base.PatientBaseAction',210,'edu.ncsu.csc.itrust.action.base.OfficeVisitBaseAction'),(29,266,'edu.ncsu.csc.itrust.beans.PatientBean',267,'edu.ncsu.csc.itrust.beans.PatientHistoryBean'),(30,503,'edu.ncsu.csc.itrust.exception.iTrustException',495,'edu.ncsu.csc.itrust.exception.DBException'),(31,503,'edu.ncsu.csc.itrust.exception.iTrustException',500,'edu.ncsu.csc.itrust.exception.NoHealthRecordsException'),(32,503,'edu.ncsu.csc.itrust.exception.iTrustException',501,'edu.ncsu.csc.itrust.exception.PrescriptionFieldException'),(33,503,'edu.ncsu.csc.itrust.exception.iTrustException',502,'edu.ncsu.csc.itrust.exception.PrescriptionWarningException'),(34,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',504,'edu.ncsu.csc.itrust.http.ActivityFeedTest'),(35,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',505,'edu.ncsu.csc.itrust.http.AddNDTylenolTest'),(36,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',506,'edu.ncsu.csc.itrust.http.AddPatientTest'),(37,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',507,'edu.ncsu.csc.itrust.http.AppointmentRequestTest'),(38,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',508,'edu.ncsu.csc.itrust.http.AppointmentTest'),(39,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',509,'edu.ncsu.csc.itrust.http.AppointmentTypeTest'),(40,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',510,'edu.ncsu.csc.itrust.http.BasicHealthInfoTest'),(41,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',511,'edu.ncsu.csc.itrust.http.CalendarTest'),(42,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',512,'edu.ncsu.csc.itrust.http.ComprehensiveReportingTest'),(43,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',513,'edu.ncsu.csc.itrust.http.ConsultationTest'),(44,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',514,'edu.ncsu.csc.itrust.http.CreateHCPSpecTest'),(45,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',515,'edu.ncsu.csc.itrust.http.CreateHCPTest'),(46,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',516,'edu.ncsu.csc.itrust.http.CreateLTSpecTest'),(47,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',517,'edu.ncsu.csc.itrust.http.CreatePHATest'),(48,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',518,'edu.ncsu.csc.itrust.http.CreateUAPTest'),(49,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',519,'edu.ncsu.csc.itrust.http.CreditCardValidatorTest'),(50,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',520,'edu.ncsu.csc.itrust.http.DeactivatePatientTest'),(51,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',521,'edu.ncsu.csc.itrust.http.DesignateAndViewHCPUseCaseTest'),(52,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',522,'edu.ncsu.csc.itrust.http.DetermineOperationalProfileTest'),(53,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',523,'edu.ncsu.csc.itrust.http.DocumentOfficeVisitTest'),(54,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',524,'edu.ncsu.csc.itrust.http.DocumentOfficeVisitUseCaseTest'),(55,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',525,'edu.ncsu.csc.itrust.http.DrugInteractionTest'),(56,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',526,'edu.ncsu.csc.itrust.http.EditApptTest'),(57,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',527,'edu.ncsu.csc.itrust.http.EditDemographicsTest'),(58,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',528,'edu.ncsu.csc.itrust.http.EditDiagnosesTest'),(59,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',529,'edu.ncsu.csc.itrust.http.EditLOINCDataHTTPTest'),(60,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',530,'edu.ncsu.csc.itrust.http.EditPatientTest'),(61,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',531,'edu.ncsu.csc.itrust.http.EmergencyUseCaseTest'),(62,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',532,'edu.ncsu.csc.itrust.http.ExperiencedLHCPsUseCaseTest'),(63,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',533,'edu.ncsu.csc.itrust.http.ExpertHospitalTest'),(64,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',534,'edu.ncsu.csc.itrust.http.FindExpertTest'),(65,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',535,'edu.ncsu.csc.itrust.http.GetPatientIDTest'),(66,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',536,'edu.ncsu.csc.itrust.http.GetVisitRemindersTest'),(67,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',537,'edu.ncsu.csc.itrust.http.GroupReportTest'),(68,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',538,'edu.ncsu.csc.itrust.http.HealthDataChartTest'),(69,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',539,'edu.ncsu.csc.itrust.http.ImmunizationUseCasesTest'),(70,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',540,'edu.ncsu.csc.itrust.http.ImportNDCodesTest'),(71,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',541,'edu.ncsu.csc.itrust.http.LabProceduresTest'),(72,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',543,'edu.ncsu.csc.itrust.http.MaintainStandardsTest'),(73,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',544,'edu.ncsu.csc.itrust.http.MaintainStandardsUseCase'),(74,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',545,'edu.ncsu.csc.itrust.http.ManageHospitalListingTest'),(75,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',546,'edu.ncsu.csc.itrust.http.MessagingUseCaseTest'),(76,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',547,'edu.ncsu.csc.itrust.http.MonitorAdverseEventTest'),(77,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',548,'edu.ncsu.csc.itrust.http.NDCodeTest'),(78,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',549,'edu.ncsu.csc.itrust.http.NotificationAreaTest'),(79,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',550,'edu.ncsu.csc.itrust.http.PHIRecordTest'),(80,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',551,'edu.ncsu.csc.itrust.http.PatientHTTPTest'),(81,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',552,'edu.ncsu.csc.itrust.http.PatientInstructionsUseCaseTest'),(82,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',553,'edu.ncsu.csc.itrust.http.PatientsWithExpiringPrescriptionsTest'),(83,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',554,'edu.ncsu.csc.itrust.http.PendingApptTest'),(84,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',555,'edu.ncsu.csc.itrust.http.PersonalHealthRecordsUseCaseTest'),(85,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',556,'edu.ncsu.csc.itrust.http.PersonnelHTTPTest'),(86,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',557,'edu.ncsu.csc.itrust.http.PersonnelUseCaseTest'),(87,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',558,'edu.ncsu.csc.itrust.http.PhysicianSatisfactionUseCaseTest'),(88,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',559,'edu.ncsu.csc.itrust.http.PrescriptionDateTest'),(89,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',560,'edu.ncsu.csc.itrust.http.PrescriptionInstructionsTest'),(90,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',561,'edu.ncsu.csc.itrust.http.PrescriptionInteractionAndAllergyTest'),(91,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',562,'edu.ncsu.csc.itrust.http.PrescriptionRefactoringUseCaseTest'),(92,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',563,'edu.ncsu.csc.itrust.http.ReferralsTest'),(93,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',564,'edu.ncsu.csc.itrust.http.ReportAdverseImmuEventTest'),(94,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',565,'edu.ncsu.csc.itrust.http.ReportAdversePrescriptionTest'),(95,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',566,'edu.ncsu.csc.itrust.http.SearchUserTest'),(96,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',567,'edu.ncsu.csc.itrust.http.SecureMIDNFRTest'),(97,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',568,'edu.ncsu.csc.itrust.http.SecurePasswordTest'),(98,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',569,'edu.ncsu.csc.itrust.http.SendEmailNotificationTest'),(99,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',570,'edu.ncsu.csc.itrust.http.SurveyUseCaseTest'),(100,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',571,'edu.ncsu.csc.itrust.http.TelemonitoringUseCaseTest'),(101,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',572,'edu.ncsu.csc.itrust.http.UploadPatientFileTest'),(102,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',573,'edu.ncsu.csc.itrust.http.ViewAccessLogTest'),(103,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',574,'edu.ncsu.csc.itrust.http.ViewAllPatientsUseCaseTest'),(104,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',575,'edu.ncsu.csc.itrust.http.ViewDiagnosisStatisticsTest'),(105,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',576,'edu.ncsu.csc.itrust.http.ViewEmergencyReportTest'),(106,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',577,'edu.ncsu.csc.itrust.http.ViewExpiredPrescriptionsTest'),(107,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',578,'edu.ncsu.csc.itrust.http.ViewMyProvidersTest'),(108,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',579,'edu.ncsu.csc.itrust.http.ViewMyRecordsTest'),(109,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',580,'edu.ncsu.csc.itrust.http.ViewMyReportRequestsTest'),(110,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',581,'edu.ncsu.csc.itrust.http.ViewPatientsUseCaseTest'),(111,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',582,'edu.ncsu.csc.itrust.http.ViewRecordsUseCaseTest'),(112,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',583,'edu.ncsu.csc.itrust.http.WardTest'),(113,594,'edu.ncsu.csc.itrust.report.ReportFilter',586,'edu.ncsu.csc.itrust.report.DemographicReportFilter'),(114,594,'edu.ncsu.csc.itrust.report.ReportFilter',589,'edu.ncsu.csc.itrust.report.MedicalReportFilter'),(115,594,'edu.ncsu.csc.itrust.report.ReportFilter',592,'edu.ncsu.csc.itrust.report.PersonnelReportFilter'),(116,599,'edu.ncsu.csc.itrust.risk.RiskChecker',597,'edu.ncsu.csc.itrust.risk.HeartDiseaseRisks'),(117,599,'edu.ncsu.csc.itrust.risk.RiskChecker',600,'edu.ncsu.csc.itrust.risk.Type1DiabetesRisks'),(118,599,'edu.ncsu.csc.itrust.risk.RiskChecker',602,'edu.ncsu.csc.itrust.risk.Type2DiabetesRisks'),(119,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',604,'edu.ncsu.csc.itrust.risk.factors.AgeFactor'),(120,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',606,'edu.ncsu.csc.itrust.risk.factors.ChildhoodInfectionFactor'),(121,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',608,'edu.ncsu.csc.itrust.risk.factors.CholesterolFactor'),(122,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',610,'edu.ncsu.csc.itrust.risk.factors.EthnicityFactor'),(123,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',612,'edu.ncsu.csc.itrust.risk.factors.FamilyHistoryFactor'),(124,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',614,'edu.ncsu.csc.itrust.risk.factors.GenderFactor'),(125,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',616,'edu.ncsu.csc.itrust.risk.factors.HypertensionFactor'),(126,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',620,'edu.ncsu.csc.itrust.risk.factors.PriorDiagnosisFactor'),(127,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',621,'edu.ncsu.csc.itrust.risk.factors.SmokingFactor'),(128,618,'edu.ncsu.csc.itrust.risk.factors.PatientRiskFactor',623,'edu.ncsu.csc.itrust.risk.factors.WeightFactor'),(129,625,'edu.ncsu.csc.itrust.server.GroupReportGeneratorServlet',630,'edu.ncsu.csc.itrust.serverutils.GroupReportGeneratorTest$LittleDelegatorServlet'),(130,627,'edu.ncsu.csc.itrust.server.WardCRUDServlet',636,'edu.ncsu.csc.itrust.serverutils.WardCRUDServletTest$LittleDelegatorServlet'),(131,628,'edu.ncsu.csc.itrust.server.WardRoomCRUDServlet',638,'edu.ncsu.csc.itrust.serverutils.WardRoomCRUDServletTest$LittleDelegatorServlet'),(132,336,'edu.ncsu.csc.itrust.dao.DAOFactory',645,'edu.ncsu.csc.itrust.testutils.EvilDAOFactory'),(133,584,'edu.ncsu.csc.itrust.http.iTrustHTTPTest',646,'edu.ncsu.csc.itrust.testutils.JUnitiTrustUtils'),(134,336,'edu.ncsu.csc.itrust.dao.DAOFactory',650,'edu.ncsu.csc.itrust.testutils.TestDAOFactory'),(135,662,'edu.ncsu.csc.itrust.validate.EMailValidator',669,'edu.ncsu.csc.itrust.validate.MailValidator');
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

-- Dump completed on 2020-11-26  0:20:56
