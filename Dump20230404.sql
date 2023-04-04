-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_portal
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_role_descriptions`
--

DROP TABLE IF EXISTS `auth_role_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_role_descriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_role_descriptions`
--

LOCK TABLES `auth_role_descriptions` WRITE;
/*!40000 ALTER TABLE `auth_role_descriptions` DISABLE KEYS */;
INSERT INTO `auth_role_descriptions` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `auth_role_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_authority`
--

DROP TABLE IF EXISTS `auth_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_authority` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  KEY `FK5kg0gxsdanfkjadfwho3a4nof` (`role_id`),
  KEY `FKjy433oaf2wwxxqn072k4a0qmf` (`user_id`),
  CONSTRAINT `FK5kg0gxsdanfkjadfwho3a4nof` FOREIGN KEY (`role_id`) REFERENCES `auth_role_descriptions` (`id`),
  CONSTRAINT `FKjy433oaf2wwxxqn072k4a0qmf` FOREIGN KEY (`user_id`) REFERENCES `login_credentials_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_authority`
--

LOCK TABLES `auth_user_authority` WRITE;
/*!40000 ALTER TABLE `auth_user_authority` DISABLE KEYS */;
INSERT INTO `auth_user_authority` VALUES (1,1),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(148723,1),(189009,2),(12543,2);
/*!40000 ALTER TABLE `auth_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `title` varchar(255) NOT NULL,
  `banner` longblob,
  `cre_user` varchar(255) DEFAULT NULL,
  `cre_date` datetime(6) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution`
--

DROP TABLE IF EXISTS `batch_job_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`),
  CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution`
--

LOCK TABLES `batch_job_execution` WRITE;
/*!40000 ALTER TABLE `batch_job_execution` DISABLE KEYS */;
INSERT INTO `batch_job_execution` VALUES (1,2,1,'2023-02-28 20:36:55.095000','2023-02-28 20:36:55.202000','2023-02-28 20:36:55.358000','FAILED','FAILED','','2023-02-28 20:36:55.360000',NULL),(2,2,2,'2023-02-28 20:48:24.665000','2023-02-28 20:48:24.864000','2023-02-28 20:48:25.203000','FAILED','FAILED','','2023-02-28 20:48:25.203000',NULL),(3,2,3,'2023-02-28 20:51:09.853000','2023-02-28 20:51:09.875000','2023-02-28 20:51:09.976000','FAILED','FAILED','','2023-02-28 20:51:09.977000',NULL),(4,2,4,'2023-02-28 20:53:44.427000','2023-02-28 20:53:44.622000','2023-02-28 20:53:44.837000','FAILED','FAILED','','2023-02-28 20:53:44.839000',NULL),(5,2,5,'2023-03-02 11:43:12.372000','2023-03-02 11:43:12.426000','2023-03-02 11:43:12.503000','FAILED','FAILED','','2023-03-02 11:43:12.504000',NULL),(6,2,6,'2023-03-02 12:02:54.732000','2023-03-02 12:02:54.748000','2023-03-02 12:02:54.810000','FAILED','FAILED','','2023-03-02 12:02:54.810000',NULL),(7,2,7,'2023-03-02 12:23:15.303000','2023-03-02 12:23:15.318000','2023-03-02 12:23:15.397000','FAILED','FAILED','','2023-03-02 12:23:15.397000',NULL),(8,2,8,'2023-03-02 12:30:53.261000','2023-03-02 12:30:53.276000','2023-03-02 12:30:53.343000','FAILED','FAILED','','2023-03-02 12:30:53.343000',NULL),(9,2,9,'2023-03-02 12:32:05.536000','2023-03-02 12:32:05.551000','2023-03-02 12:32:05.676000','FAILED','FAILED','','2023-03-02 12:32:05.676000',NULL),(10,2,10,'2023-03-02 12:33:58.166000','2023-03-02 12:33:58.182000','2023-03-02 12:33:58.245000','FAILED','FAILED','','2023-03-02 12:33:58.245000',NULL),(11,2,11,'2023-03-02 12:36:08.975000','2023-03-02 12:36:08.987000','2023-03-02 12:36:09.069000','FAILED','FAILED','','2023-03-02 12:36:09.070000',NULL),(12,2,12,'2023-03-02 12:36:59.628000','2023-03-02 12:36:59.639000','2023-03-02 12:36:59.763000','COMPLETED','COMPLETED','','2023-03-02 12:36:59.764000',NULL),(13,2,13,'2023-03-02 14:00:01.011000','2023-03-02 14:00:01.023000','2023-03-02 14:00:01.146000','COMPLETED','COMPLETED','','2023-03-02 14:00:01.146000',NULL),(14,2,14,'2023-03-02 14:04:32.602000','2023-03-02 14:04:32.612000','2023-03-02 14:04:32.729000','COMPLETED','COMPLETED','','2023-03-02 14:04:32.729000',NULL),(15,2,15,'2023-03-02 14:22:41.405000','2023-03-02 14:22:41.417000','2023-03-02 14:22:41.560000','COMPLETED','COMPLETED','','2023-03-02 14:22:41.561000',NULL),(16,2,16,'2023-03-02 14:37:23.281000','2023-03-02 14:37:23.291000','2023-03-02 14:37:23.382000','COMPLETED','COMPLETED','','2023-03-02 14:37:23.383000',NULL),(17,2,17,'2023-03-02 14:47:39.205000','2023-03-02 14:47:39.221000','2023-03-02 14:47:39.355000','COMPLETED','COMPLETED','','2023-03-02 14:47:39.355000',NULL),(18,2,18,'2023-03-02 14:53:38.901000','2023-03-02 14:53:38.919000','2023-03-02 14:53:39.030000','FAILED','FAILED','','2023-03-02 14:53:39.031000',NULL),(19,2,19,'2023-03-02 15:04:49.456000','2023-03-02 15:04:49.477000','2023-03-02 15:04:49.680000','FAILED','FAILED','','2023-03-02 15:04:49.681000',NULL),(20,2,20,'2023-03-02 15:51:48.767000','2023-03-02 15:51:48.796000','2023-03-02 15:51:49.102000','COMPLETED','COMPLETED','','2023-03-02 15:51:49.104000',NULL),(21,2,21,'2023-03-02 15:53:16.931000','2023-03-02 15:53:16.947000','2023-03-02 15:53:17.321000','COMPLETED','COMPLETED','','2023-03-02 15:53:17.322000',NULL),(22,2,22,'2023-03-06 18:28:04.637000','2023-03-06 18:28:04.699000','2023-03-06 18:28:05.095000','COMPLETED','COMPLETED','','2023-03-06 18:28:05.096000',NULL),(23,2,23,'2023-03-08 14:30:50.945000','2023-03-08 14:30:50.992000','2023-03-08 14:30:51.168000','FAILED','FAILED','','2023-03-08 14:30:51.169000',NULL),(24,2,24,'2023-03-08 14:39:31.520000','2023-03-08 14:39:31.531000','2023-03-08 14:39:31.680000','FAILED','FAILED','','2023-03-08 14:39:31.681000',NULL),(25,2,25,'2023-03-08 14:42:15.224000','2023-03-08 14:42:15.231000','2023-03-08 14:42:15.452000','COMPLETED','COMPLETED','','2023-03-08 14:42:15.452000',NULL),(26,2,26,'2023-03-08 14:56:01.271000','2023-03-08 14:56:01.280000','2023-03-08 14:56:01.337000','FAILED','FAILED','','2023-03-08 14:56:01.337000',NULL),(27,2,27,'2023-03-08 15:02:48.580000','2023-03-08 15:02:48.590000','2023-03-08 15:02:48.651000','FAILED','FAILED','','2023-03-08 15:02:48.651000',NULL),(28,2,28,'2023-03-08 21:06:03.965000','2023-03-08 21:06:03.975000','2023-03-08 21:06:04.031000','FAILED','FAILED','','2023-03-08 21:06:04.031000',NULL),(29,2,29,'2023-03-08 21:38:21.879000','2023-03-08 21:38:21.920000','2023-03-08 21:38:22.128000','FAILED','FAILED','','2023-03-08 21:38:22.128000',NULL),(30,2,30,'2023-03-09 12:29:07.062000','2023-03-09 12:29:07.085000','2023-03-09 12:29:07.442000','FAILED','FAILED','','2023-03-09 12:29:07.443000',NULL),(31,2,31,'2023-03-09 20:48:38.436000','2023-03-09 20:48:38.499000','2023-03-09 20:48:38.615000','FAILED','FAILED','','2023-03-09 20:48:38.615000',NULL),(32,2,32,'2023-03-09 21:04:46.096000','2023-03-09 21:04:46.108000','2023-03-09 21:04:46.174000','FAILED','FAILED','','2023-03-09 21:04:46.175000',NULL),(33,2,33,'2023-03-09 21:21:11.260000','2023-03-09 21:21:11.299000','2023-03-09 21:21:11.552000','COMPLETED','COMPLETED','','2023-03-09 21:21:11.552000',NULL),(34,2,34,'2023-03-09 21:23:15.956000','2023-03-09 21:23:15.966000','2023-03-09 21:23:16.076000','COMPLETED','COMPLETED','','2023-03-09 21:23:16.076000',NULL),(35,2,35,'2023-03-16 11:50:33.281000','2023-03-16 11:50:33.550000','2023-03-16 11:50:34.600000','COMPLETED','COMPLETED','','2023-03-16 11:50:34.608000',NULL),(36,2,36,'2023-03-16 12:27:14.722000','2023-03-16 12:27:14.759000','2023-03-16 12:27:15.312000','COMPLETED','COMPLETED','','2023-03-16 12:27:15.314000',NULL),(37,2,37,'2023-03-21 16:45:05.218000','2023-03-21 16:45:05.345000','2023-03-21 16:45:05.827000','COMPLETED','COMPLETED','','2023-03-21 16:45:05.827000',NULL),(38,2,38,'2023-03-21 16:47:45.249000','2023-03-21 16:47:45.270000','2023-03-21 16:47:45.634000','COMPLETED','COMPLETED','','2023-03-21 16:47:45.636000',NULL),(39,2,39,'2023-03-21 17:23:59.980000','2023-03-21 17:24:00.062000','2023-03-21 17:24:00.479000','COMPLETED','COMPLETED','','2023-03-21 17:24:00.479000',NULL),(40,2,40,'2023-03-24 14:37:58.145000','2023-03-24 14:37:58.484000','2023-03-24 14:37:59.516000','COMPLETED','COMPLETED','','2023-03-24 14:37:59.519000',NULL);
/*!40000 ALTER TABLE `batch_job_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_context`
--

DROP TABLE IF EXISTS `batch_job_execution_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_context`
--

LOCK TABLES `batch_job_execution_context` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_context` DISABLE KEYS */;
INSERT INTO `batch_job_execution_context` VALUES (1,'{\"@class\":\"java.util.HashMap\"}',NULL),(2,'{\"@class\":\"java.util.HashMap\"}',NULL),(3,'{\"@class\":\"java.util.HashMap\"}',NULL),(4,'{\"@class\":\"java.util.HashMap\"}',NULL),(5,'{\"@class\":\"java.util.HashMap\"}',NULL),(6,'{\"@class\":\"java.util.HashMap\"}',NULL),(7,'{\"@class\":\"java.util.HashMap\"}',NULL),(8,'{\"@class\":\"java.util.HashMap\"}',NULL),(9,'{\"@class\":\"java.util.HashMap\"}',NULL),(10,'{\"@class\":\"java.util.HashMap\"}',NULL),(11,'{\"@class\":\"java.util.HashMap\"}',NULL),(12,'{\"@class\":\"java.util.HashMap\"}',NULL),(13,'{\"@class\":\"java.util.HashMap\"}',NULL),(14,'{\"@class\":\"java.util.HashMap\"}',NULL),(15,'{\"@class\":\"java.util.HashMap\"}',NULL),(16,'{\"@class\":\"java.util.HashMap\"}',NULL),(17,'{\"@class\":\"java.util.HashMap\"}',NULL),(18,'{\"@class\":\"java.util.HashMap\"}',NULL),(19,'{\"@class\":\"java.util.HashMap\"}',NULL),(20,'{\"@class\":\"java.util.HashMap\"}',NULL),(21,'{\"@class\":\"java.util.HashMap\"}',NULL),(22,'{\"@class\":\"java.util.HashMap\"}',NULL),(23,'{\"@class\":\"java.util.HashMap\"}',NULL),(24,'{\"@class\":\"java.util.HashMap\"}',NULL),(25,'{\"@class\":\"java.util.HashMap\"}',NULL),(26,'{\"@class\":\"java.util.HashMap\"}',NULL),(27,'{\"@class\":\"java.util.HashMap\"}',NULL),(28,'{\"@class\":\"java.util.HashMap\"}',NULL),(29,'{\"@class\":\"java.util.HashMap\"}',NULL),(30,'{\"@class\":\"java.util.HashMap\"}',NULL),(31,'{\"@class\":\"java.util.HashMap\"}',NULL),(32,'{\"@class\":\"java.util.HashMap\"}',NULL),(33,'{\"@class\":\"java.util.HashMap\"}',NULL),(34,'{\"@class\":\"java.util.HashMap\"}',NULL),(35,'{\"@class\":\"java.util.HashMap\"}',NULL),(36,'{\"@class\":\"java.util.HashMap\"}',NULL),(37,'{\"@class\":\"java.util.HashMap\"}',NULL),(38,'{\"@class\":\"java.util.HashMap\"}',NULL),(39,'{\"@class\":\"java.util.HashMap\"}',NULL),(40,'{\"@class\":\"java.util.HashMap\"}',NULL);
/*!40000 ALTER TABLE `batch_job_execution_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_params`
--

DROP TABLE IF EXISTS `batch_job_execution_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `TYPE_CD` varchar(6) NOT NULL,
  `KEY_NAME` varchar(100) NOT NULL,
  `STRING_VAL` varchar(250) DEFAULT NULL,
  `DATE_VAL` datetime(6) DEFAULT NULL,
  `LONG_VAL` bigint DEFAULT NULL,
  `DOUBLE_VAL` double DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL,
  KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_params`
--

LOCK TABLES `batch_job_execution_params` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_params` DISABLE KEYS */;
INSERT INTO `batch_job_execution_params` VALUES (1,'LONG','time','','1970-01-01 05:30:00.000000',1677596815048,0,'Y'),(2,'LONG','time','','1970-01-01 05:30:00.000000',1677597504554,0,'Y'),(3,'LONG','time','','1970-01-01 05:30:00.000000',1677597669824,0,'Y'),(4,'LONG','time','','1970-01-01 05:30:00.000000',1677597824326,0,'Y'),(5,'LONG','startAt','','1970-01-01 05:30:00.000000',1677737592327,0,'Y'),(6,'LONG','startAt','','1970-01-01 05:30:00.000000',1677738774715,0,'Y'),(7,'LONG','startAt','','1970-01-01 05:30:00.000000',1677739995290,0,'Y'),(8,'LONG','startAt','','1970-01-01 05:30:00.000000',1677740453246,0,'Y'),(9,'LONG','startAt','','1970-01-01 05:30:00.000000',1677740525519,0,'Y'),(10,'LONG','startAt','','1970-01-01 05:30:00.000000',1677740638151,0,'Y'),(11,'LONG','startAt','','1970-01-01 05:30:00.000000',1677740768960,0,'Y'),(12,'LONG','startAt','','1970-01-01 05:30:00.000000',1677740819616,0,'Y'),(13,'LONG','startAt','','1970-01-01 05:30:00.000000',1677745800994,0,'Y'),(14,'LONG','startAt','','1970-01-01 05:30:00.000000',1677746072589,0,'Y'),(15,'LONG','startAt','','1970-01-01 05:30:00.000000',1677747161391,0,'Y'),(16,'LONG','startAt','','1970-01-01 05:30:00.000000',1677748043271,0,'Y'),(17,'LONG','startAt','','1970-01-01 05:30:00.000000',1677748659190,0,'Y'),(18,'LONG','startAt','','1970-01-01 05:30:00.000000',1677749018880,0,'Y'),(19,'LONG','startAt','','1970-01-01 05:30:00.000000',1677749689433,0,'Y'),(20,'LONG','startAt','','1970-01-01 05:30:00.000000',1677752508729,0,'Y'),(21,'LONG','startAt','','1970-01-01 05:30:00.000000',1677752596910,0,'Y'),(23,'LONG','startAt','','1970-01-01 05:30:00.000000',1678266050929,0,'Y'),(24,'LONG','startAt','','1970-01-01 05:30:00.000000',1678266571511,0,'Y'),(25,'LONG','startAt','','1970-01-01 05:30:00.000000',1678266735203,0,'Y'),(26,'LONG','startAt','','1970-01-01 05:30:00.000000',1678267561263,0,'Y'),(27,'LONG','startAt','','1970-01-01 05:30:00.000000',1678267968564,0,'Y'),(28,'LONG','startAt','','1970-01-01 05:30:00.000000',1678289763954,0,'Y'),(29,'LONG','startAt','','1970-01-01 05:30:00.000000',1678291701864,0,'Y'),(30,'LONG','startAt','','1970-01-01 05:30:00.000000',1678345147031,0,'Y'),(31,'LONG','startAt','','1970-01-01 05:30:00.000000',1678375118412,0,'Y'),(32,'LONG','startAt','','1970-01-01 05:30:00.000000',1678376086080,0,'Y'),(33,'LONG','startAt','','1970-01-01 05:30:00.000000',1678377071230,0,'Y'),(34,'LONG','startAt','','1970-01-01 05:30:00.000000',1678377195935,0,'Y'),(35,'LONG','startAt','','1970-01-01 05:30:00.000000',1678947633151,0,'Y'),(36,'LONG','startAt','','1970-01-01 05:30:00.000000',1678949834679,0,'Y'),(37,'LONG','startAt','','1970-01-01 05:30:00.000000',1679397305161,0,'Y'),(38,'LONG','startAt','','1970-01-01 05:30:00.000000',1679397465224,0,'Y'),(39,'LONG','startAt','','1970-01-01 05:30:00.000000',1679399639942,0,'Y'),(40,'LONG','startAt','','1970-01-01 05:30:00.000000',1679648878012,0,'Y');
/*!40000 ALTER TABLE `batch_job_execution_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_execution_seq`
--

DROP TABLE IF EXISTS `batch_job_execution_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution_seq` (
  `ID` bigint NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_seq`
--

LOCK TABLES `batch_job_execution_seq` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_seq` DISABLE KEYS */;
INSERT INTO `batch_job_execution_seq` VALUES (40,'0');
/*!40000 ALTER TABLE `batch_job_execution_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_instance`
--

DROP TABLE IF EXISTS `batch_job_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint NOT NULL,
  `VERSION` bigint DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL,
  PRIMARY KEY (`JOB_INSTANCE_ID`),
  UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_instance`
--

LOCK TABLES `batch_job_instance` WRITE;
/*!40000 ALTER TABLE `batch_job_instance` DISABLE KEYS */;
INSERT INTO `batch_job_instance` VALUES (1,0,'processJob','eea06b37d6c0d7545605a79c79591da0'),(2,0,'processJob','f5ff3f72117d1941f77aadf1a91407c2'),(3,0,'processJob','4d7d2038d592b13061ec494bc6213137'),(4,0,'processJob','9e3acf64a0d9f70d5d17fa9dcbb8141a'),(5,0,'JobStarted','403f84c6f885272f13ceeff41c34753c'),(6,0,'JobStarted','417b4eae9f6ef7acab57e6237d35f230'),(7,0,'JobStarted','d0de7ad629e7edb1f9d3e895ad6c0166'),(8,0,'JobStarted','47f4060b4b8b2b10589db70bdae0a26b'),(9,0,'JobStarted','46dbbb4af549645914ca23a57be4339d'),(10,0,'JobStarted','7ad2ecbbecfd4c4fa46b2e759bee6b8a'),(11,0,'JobStarted','89cb5fe37610b120fe0d6ec0aa5bcb35'),(12,0,'JobStarted','1cd27cfe9d31db67b159d5ba68c1e88c'),(13,0,'JobStarted','64e0a9bbc5b99da2f7a662a0de68c1ee'),(14,0,'JobStarted','f8ad2b22e00ce71af6bbb53fef2fe14b'),(15,0,'JobStarted','67d7b7a9f411664002106d0b9a0caffe'),(16,0,'JobStarted','a81ce91212f312851867759c642bad63'),(17,0,'JobStarted','e93e1df3829936f42ec14ff18a6e5652'),(18,0,'JobStarted','367257e6e1f4c2c29fb9854abe46009c'),(19,0,'JobStarted','d9dc3c4c47a8f74023aff66795882a1f'),(20,0,'JobStarted','b52739b46e50acb13c2b4e7271f256dc'),(21,0,'JobStarted','f08a840cc01167096eb3cb60afd719bd'),(22,0,'JobStarted','d41d8cd98f00b204e9800998ecf8427e'),(23,0,'JobStarted','0fd7e0088d7da143d3ea426b764f1a01'),(24,0,'JobStarted','765c66c7f3d07e00ab4d430ec71c39e9'),(25,0,'JobStarted','5f2ff9fb2876be9ea2c0fee3e3bd0f0a'),(26,0,'JobStarted','b8359e755fecf8bfa88347144fdcc2ab'),(27,0,'JobStarted','6e4534b40a4ed3b58672efb4ed8bd03a'),(28,0,'JobStarted','1e87eb758b42d125eb91c17651bffcbd'),(29,0,'JobStarted','df9670f75917660a4f8bff38e2a1847a'),(30,0,'JobStarted','853856b1e8105099da02570ee01bbb99'),(31,0,'JobStarted','3d4a28cdfe39f2eabf6dc939ea1051da'),(32,0,'JobStarted','790abda75014d854992a61a2160d4823'),(33,0,'JobStarted','067d0d1a593819a4b81b631e4f14c8b9'),(34,0,'JobStarted','5c71811d569253b3e34c73fd0f1a5b0e'),(35,0,'JobStarted','2f625381c769f60791cfe7560ea678fe'),(36,0,'JobStarted','20998e8c11a19cc469a49ff54405c1e8'),(37,0,'JobStarted','05c93ae438337220ce18a1ad704d5c77'),(38,0,'JobStarted','0f5e0b08a9b5ef6487f911c58e2d3739'),(39,0,'JobStarted','0ec6c77a17214e2ac268f8dfd2db4b41'),(40,0,'JobStarted','14b69c5cd0e0e681b1d262c0fa9db84f');
/*!40000 ALTER TABLE `batch_job_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_job_seq`
--

DROP TABLE IF EXISTS `batch_job_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_seq` (
  `ID` bigint NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_seq`
--

LOCK TABLES `batch_job_seq` WRITE;
/*!40000 ALTER TABLE `batch_job_seq` DISABLE KEYS */;
INSERT INTO `batch_job_seq` VALUES (40,'0');
/*!40000 ALTER TABLE `batch_job_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution`
--

DROP TABLE IF EXISTS `batch_step_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `START_TIME` datetime(6) NOT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint DEFAULT NULL,
  `READ_COUNT` bigint DEFAULT NULL,
  `FILTER_COUNT` bigint DEFAULT NULL,
  `WRITE_COUNT` bigint DEFAULT NULL,
  `READ_SKIP_COUNT` bigint DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint DEFAULT NULL,
  `ROLLBACK_COUNT` bigint DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution`
--

LOCK TABLES `batch_step_execution` WRITE;
/*!40000 ALTER TABLE `batch_step_execution` DISABLE KEYS */;
INSERT INTO `batch_step_execution` VALUES (1,2,'orderStep1',1,'2023-02-28 20:36:55.268000','2023-02-28 20:36:55.338000','FAILED',0,0,0,0,0,0,0,1,'FAILED','java.lang.NullPointerException: Cannot invoke \"com.infy.employeeportal.repository.NotificationSetupRepo.findAll()\" because \"this.setupRepo\" is null\r\n	at com.infy.employeeportal.notification.step.Reader.getEmpIds(Reader.java:31)\r\n	at com.infy.employeeportal.notification.step.Reader.read(Reader.java:40)\r\n	at com.infy.employeeportal.notification.step.Reader.read(Reader.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:152)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.sta','2023-02-28 20:36:55.340000'),(2,2,'orderStep1',2,'2023-02-28 20:48:24.988000','2023-02-28 20:48:25.157000','FAILED',0,0,0,0,0,0,0,1,'FAILED','java.lang.NullPointerException: Cannot invoke \"com.infy.employeeportal.repository.NotificationSetupRepo.findAll()\" because \"this.setupRepo\" is null\r\n	at com.infy.employeeportal.notification.step.Reader.read(Reader.java:31)\r\n	at com.infy.employeeportal.notification.step.Reader.read(Reader.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:152)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.f','2023-02-28 20:48:25.165000'),(3,2,'orderStep1',3,'2023-02-28 20:51:09.922000','2023-02-28 20:51:09.960000','FAILED',0,0,0,0,0,0,0,1,'FAILED','java.lang.NullPointerException: Cannot invoke \"com.infy.employeeportal.repository.NotificationSetupRepo.findAll()\" because \"this.setupRepo\" is null\r\n	at com.infy.employeeportal.notification.step.Reader.read(Reader.java:29)\r\n	at com.infy.employeeportal.notification.step.Reader.read(Reader.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:152)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.f','2023-02-28 20:51:09.961000'),(4,2,'orderStep1',4,'2023-02-28 20:53:44.703000','2023-02-28 20:53:44.807000','FAILED',0,0,0,0,0,0,0,1,'FAILED','java.lang.NullPointerException: Cannot invoke \"com.infy.employeeportal.repository.NotificationSetupRepo.findAll()\" because \"this.setupRepo\" is null\r\n	at com.infy.employeeportal.notification.step.Reader.read(Reader.java:31)\r\n	at com.infy.employeeportal.notification.step.Reader.read(Reader.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:152)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.f','2023-02-28 20:53:44.810000'),(5,2,'Step1',5,'2023-03-02 11:43:12.458000','2023-03-02 11:43:12.492000','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy10.$Proxy257.getSetupId(org.springframework.data.domain.PageRequest)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:256)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:223)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:168)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208','2023-03-02 11:43:12.493000'),(6,2,'Step1',6,'2023-03-02 12:02:54.777000','2023-03-02 12:02:54.800000','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy11.$Proxy279.getSetupId(org.springframework.data.domain.PageRequest)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:256)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:223)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:168)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208','2023-03-02 12:02:54.801000'),(7,2,'Step1',7,'2023-03-02 12:23:15.350000','2023-03-02 12:23:15.390000','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy12.$Proxy301.getSetupId(org.springframework.data.domain.PageRequest)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:256)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:223)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:168)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208','2023-03-02 12:23:15.390000'),(8,2,'Step1',8,'2023-03-02 12:30:53.308000','2023-03-02 12:30:53.332000','FAILED',0,0,0,0,0,0,0,1,'FAILED','org.springframework.batch.item.adapter.DynamicMethodInvocationException: java.lang.NoSuchMethodException: jdk.proxy15.$Proxy365.getSetupId(org.springframework.data.domain.PageRequest)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doInvoke(RepositoryItemReader.java:256)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doPageRead(RepositoryItemReader.java:223)\r\n	at org.springframework.batch.item.data.RepositoryItemReader.doRead(RepositoryItemReader.java:168)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208','2023-03-02 12:30:53.333000'),(9,2,'Step1',9,'2023-03-02 12:32:05.578000','2023-03-02 12:32:05.666000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:276)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:551)\r\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\r\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:152)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:174)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy16/jdk.proxy16.$Proxy388.save(Unknown Source)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.util.MethodInvoker.invoke(MethodInvoker.java:283)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.doInvoke(RepositoryItemWriter.java:153)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.doWrite(RepositoryItemWriter.java:122)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.write(RepositoryItemWriter.java:','2023-03-02 12:32:05.667000'),(10,2,'Step1',10,'2023-03-02 12:33:58.198000','2023-03-02 12:33:58.241000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:276)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:551)\r\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\r\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:152)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:174)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy16/jdk.proxy16.$Proxy388.save(Unknown Source)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.util.MethodInvoker.invoke(MethodInvoker.java:283)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.doInvoke(RepositoryItemWriter.java:153)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.doWrite(RepositoryItemWriter.java:122)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.write(RepositoryItemWriter.java:','2023-03-02 12:33:58.241000'),(11,2,'Step1',11,'2023-03-02 12:36:09.016000','2023-03-02 12:36:09.058000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:276)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:551)\r\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\r\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:152)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:174)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy17/jdk.proxy17.$Proxy410.save(Unknown Source)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.util.MethodInvoker.invoke(MethodInvoker.java:283)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.doInvoke(RepositoryItemWriter.java:153)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.doWrite(RepositoryItemWriter.java:122)\r\n	at org.springframework.batch.item.data.RepositoryItemWriter.write(RepositoryItemWriter.java:','2023-03-02 12:36:09.059000'),(12,5,'Step1',12,'2023-03-02 12:36:59.663000','2023-03-02 12:36:59.755000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-02 12:36:59.756000'),(13,5,'Step1',13,'2023-03-02 14:00:01.049000','2023-03-02 14:00:01.135000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-02 14:00:01.136000'),(14,5,'Step1',14,'2023-03-02 14:04:32.640000','2023-03-02 14:04:32.717000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-02 14:04:32.719000'),(15,5,'Step1',15,'2023-03-02 14:22:41.445000','2023-03-02 14:22:41.551000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-02 14:22:41.551000'),(16,5,'Step1',16,'2023-03-02 14:37:23.315000','2023-03-02 14:37:23.373000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-02 14:37:23.374000'),(17,5,'Step1',17,'2023-03-02 14:47:39.254000','2023-03-02 14:47:39.347000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-02 14:47:39.348000'),(18,2,'Step1',18,'2023-03-02 14:53:38.964000','2023-03-02 14:53:39.013000','FAILED',0,2,0,0,0,0,0,1,'FAILED','java.lang.NullPointerException: Cannot invoke \"com.infy.employeeportal.entity.EmployeeNotification.setNotificationSetupId(java.lang.Integer)\" because \"notification\" is null\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:29)\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:134)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:319)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:210)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:152)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:139)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:320)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.','2023-03-02 14:53:39.014000'),(19,2,'Step1',19,'2023-03-02 15:04:49.544000','2023-03-02 15:04:49.649000','FAILED',0,2,0,0,0,0,0,1,'FAILED','java.lang.NullPointerException: Cannot invoke \"com.infy.employeeportal.entity.EmployeeNotification.setNotificationSetupId(java.lang.Integer)\" because \"notification\" is null\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:30)\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:134)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:319)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:210)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:152)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:139)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:320)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.','2023-03-02 15:04:49.652000'),(20,5,'Step1',20,'2023-03-02 15:51:48.865000','2023-03-02 15:51:49.076000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-02 15:51:49.079000'),(21,5,'Step1',21,'2023-03-02 15:53:16.986000','2023-03-02 15:53:17.307000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-02 15:53:17.308000'),(22,5,'Step1',22,'2023-03-06 18:28:04.750000','2023-03-06 18:28:05.086000','COMPLETED',3,5,0,5,0,0,0,0,'COMPLETED','','2023-03-06 18:28:05.087000'),(23,2,'Step1',23,'2023-03-08 14:30:51.017000','2023-03-08 14:30:51.158000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:276)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at jdk.internal.reflect.GeneratedMethodAccessor320.invoke(Unknown Source)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy9/jdk.proxy9.$Proxy259.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doE','2023-03-08 14:30:51.159000'),(24,2,'Step1',24,'2023-03-08 14:39:31.555000','2023-03-08 14:39:31.668000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:276)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at jdk.internal.reflect.GeneratedMethodAccessor399.invoke(Unknown Source)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy10/jdk.proxy10.$Proxy281.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.d','2023-03-08 14:39:31.669000'),(25,6,'Step1',25,'2023-03-08 14:42:15.250000','2023-03-08 14:42:15.446000','COMPLETED',4,6,0,6,0,0,0,0,'COMPLETED','','2023-03-08 14:42:15.446000'),(26,2,'Step1',26,'2023-03-08 14:56:01.301000','2023-03-08 14:56:01.328000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.hql.internal.QueryExecutionRequestException: Not supported for DML operations [DELETE from com.infy.employeeportal.entity.EmployeeNotification empN WHERE empN.notificationSetupId = :setupId]; nested exception is java.lang.IllegalStateException: org.hibernate.hql.internal.QueryExecutionRequestException: Not supported for DML operations [DELETE from com.infy.employeeportal.entity.EmployeeNotification empN WHERE empN.notificationSetupId = :setupId]\r\n	at org.springframework.orm.jpa.EntityManagerFactoryUtils.convertJpaAccessExceptionIfPossible(EntityManagerFactoryUtils.java:371)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:235)\r\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:551)\r\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\r\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:152)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:145)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy13/jdk.proxy13.$Proxy344.deleteByNotificationSetupId(Unknown Source)\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:33)\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:134)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:319)\r\n	at org.springframework.batch.core.s','2023-03-08 14:56:01.329000'),(27,2,'Step1',27,'2023-03-08 15:02:48.611000','2023-03-08 15:02:48.640000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.hql.internal.QueryExecutionRequestException: Not supported for DML operations [DELETE from com.infy.employeeportal.entity.EmployeeNotification empN WHERE empN.notificationSetupId = :setupId]; nested exception is java.lang.IllegalStateException: org.hibernate.hql.internal.QueryExecutionRequestException: Not supported for DML operations [DELETE from com.infy.employeeportal.entity.EmployeeNotification empN WHERE empN.notificationSetupId = :setupId]\r\n	at org.springframework.orm.jpa.EntityManagerFactoryUtils.convertJpaAccessExceptionIfPossible(EntityManagerFactoryUtils.java:371)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:235)\r\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:551)\r\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\r\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:152)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:145)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy14/jdk.proxy14.$Proxy366.deleteByNotificationSetupId(Unknown Source)\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:33)\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:134)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:319)\r\n	at org.springframework.batch.core.s','2023-03-08 15:02:48.641000'),(28,2,'Step1',28,'2023-03-08 21:06:03.997000','2023-03-08 21:06:04.024000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.hql.internal.QueryExecutionRequestException: Not supported for DML operations [DELETE from com.infy.employeeportal.entity.EmployeeNotification empN WHERE empN.notificationSetupId = :setupId]; nested exception is java.lang.IllegalStateException: org.hibernate.hql.internal.QueryExecutionRequestException: Not supported for DML operations [DELETE from com.infy.employeeportal.entity.EmployeeNotification empN WHERE empN.notificationSetupId = :setupId]\r\n	at org.springframework.orm.jpa.EntityManagerFactoryUtils.convertJpaAccessExceptionIfPossible(EntityManagerFactoryUtils.java:371)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:235)\r\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:551)\r\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\r\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:152)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:145)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy15/jdk.proxy15.$Proxy388.deleteByNotificationSetupId(Unknown Source)\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:33)\r\n	at com.infy.employeeportal.step.Processor.process(Processor.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:134)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:319)\r\n	at org.springframework.batch.core.s','2023-03-08 21:06:04.024000'),(29,2,'Step1',29,'2023-03-08 21:38:21.947000','2023-03-08 21:38:22.116000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:276)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at jdk.internal.reflect.GeneratedMethodAccessor431.invoke(Unknown Source)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy10/jdk.proxy10.$Proxy266.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.d','2023-03-08 21:38:22.117000'),(30,2,'Step1',30,'2023-03-09 12:29:07.136000','2023-03-09 12:29:07.422000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:276)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at jdk.internal.reflect.GeneratedMethodAccessor512.invoke(Unknown Source)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy11/jdk.proxy11.$Proxy288.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.d','2023-03-09 12:29:07.423000'),(31,2,'DeleteStep',31,'2023-03-09 20:48:38.536000','2023-03-09 20:48:38.604000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.DataIntegrityViolationException: could not execute statement; SQL [n/a]; constraint [null]; nested exception is org.hibernate.exception.ConstraintViolationException: could not execute statement\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.convertHibernateAccessException(HibernateJpaDialect.java:276)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:233)\r\n	at org.springframework.orm.jpa.JpaTransactionManager.doCommit(JpaTransactionManager.java:566)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.processCommit(AbstractPlatformTransactionManager.java:743)\r\n	at org.springframework.transaction.support.AbstractPlatformTransactionManager.commit(AbstractPlatformTransactionManager.java:711)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:77)\r\n	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.base/java.lang.reflect.Method.invoke(Method.java:568)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:128)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy14/jdk.proxy14.$Proxy364.commit(Unknown Source)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:152)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.','2023-03-09 20:48:38.605000'),(32,2,'DeleteStep',32,'2023-03-09 21:04:46.132000','2023-03-09 21:04:46.163000','FAILED',0,2,0,0,0,0,0,1,'FAILED','org.springframework.dao.InvalidDataAccessApiUsageException: org.hibernate.hql.internal.QueryExecutionRequestException: Not supported for DML operations [DELETE FROM com.infy.employeeportal.entity.EmployeeNotification empN where empN.notificationSetupId = :setupId]; nested exception is java.lang.IllegalStateException: org.hibernate.hql.internal.QueryExecutionRequestException: Not supported for DML operations [DELETE FROM com.infy.employeeportal.entity.EmployeeNotification empN where empN.notificationSetupId = :setupId]\r\n	at org.springframework.orm.jpa.EntityManagerFactoryUtils.convertJpaAccessExceptionIfPossible(EntityManagerFactoryUtils.java:371)\r\n	at org.springframework.orm.jpa.vendor.HibernateJpaDialect.translateExceptionIfPossible(HibernateJpaDialect.java:235)\r\n	at org.springframework.orm.jpa.AbstractEntityManagerFactoryBean.translateExceptionIfPossible(AbstractEntityManagerFactoryBean.java:551)\r\n	at org.springframework.dao.support.ChainedPersistenceExceptionTranslator.translateExceptionIfPossible(ChainedPersistenceExceptionTranslator.java:61)\r\n	at org.springframework.dao.support.DataAccessUtils.translateIfNecessary(DataAccessUtils.java:242)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:152)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.data.jpa.repository.support.CrudMethodMetadataPostProcessor$CrudMethodMetadataPopulatingMethodInterceptor.invoke(CrudMethodMetadataPostProcessor.java:145)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:215)\r\n	at jdk.proxy17/jdk.proxy17.$Proxy427.deleteBySetupId(Unknown Source)\r\n	at com.infy.employeeportal.step.DeleteProcessor.process(DeleteProcessor.java:22)\r\n	at com.infy.employeeportal.step.DeleteProcessor.process(DeleteProcessor.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:134)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:319)\r\n	at org.springframework.','2023-03-09 21:04:46.164000'),(33,6,'DeleteStep',33,'2023-03-09 21:21:11.329000','2023-03-09 21:21:11.446000','COMPLETED',4,7,1,6,0,0,0,0,'COMPLETED','','2023-03-09 21:21:11.447000'),(34,3,'Step1',33,'2023-03-09 21:21:11.470000','2023-03-09 21:21:11.543000','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2023-03-09 21:21:11.544000'),(35,3,'DeleteStep',34,'2023-03-09 21:23:15.982000','2023-03-09 21:23:15.997000','COMPLETED',1,1,1,0,0,0,0,0,'COMPLETED','','2023-03-09 21:23:16.013000'),(36,3,'Step1',34,'2023-03-09 21:23:16.029000','2023-03-09 21:23:16.076000','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2023-03-09 21:23:16.076000'),(37,4,'DeleteStep',35,'2023-03-16 11:50:33.677000','2023-03-16 11:50:34.132000','COMPLETED',2,2,1,1,0,0,0,0,'COMPLETED','','2023-03-16 11:50:34.137000'),(38,3,'Step1',35,'2023-03-16 11:50:34.245000','2023-03-16 11:50:34.565000','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2023-03-16 11:50:34.566000'),(39,3,'DeleteStep',36,'2023-03-16 12:27:14.849000','2023-03-16 12:27:14.954000','COMPLETED',1,1,1,0,0,0,0,0,'COMPLETED','','2023-03-16 12:27:14.958000'),(40,3,'Step1',36,'2023-03-16 12:27:15.044000','2023-03-16 12:27:15.279000','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2023-03-16 12:27:15.282000'),(41,4,'DeleteStep',37,'2023-03-21 16:45:05.412000','2023-03-21 16:45:05.594000','COMPLETED',2,2,1,1,0,0,0,0,'COMPLETED','','2023-03-21 16:45:05.595000'),(42,3,'Step1',37,'2023-03-21 16:45:05.652000','2023-03-21 16:45:05.806000','COMPLETED',1,1,0,1,0,0,0,0,'COMPLETED','','2023-03-21 16:45:05.808000'),(43,4,'DeleteStep',38,'2023-03-21 16:47:45.319000','2023-03-21 16:47:45.388000','COMPLETED',2,2,2,0,0,0,0,0,'COMPLETED','','2023-03-21 16:47:45.388000'),(44,4,'Step1',38,'2023-03-21 16:47:45.443000','2023-03-21 16:47:45.618000','COMPLETED',2,2,0,2,0,0,0,0,'COMPLETED','','2023-03-21 16:47:45.620000'),(45,4,'DeleteStep',39,'2023-03-21 17:24:00.110000','2023-03-21 17:24:00.219000','COMPLETED',2,2,2,0,0,0,0,0,'COMPLETED','','2023-03-21 17:24:00.221000'),(46,4,'Step1',39,'2023-03-21 17:24:00.266000','2023-03-21 17:24:00.464000','COMPLETED',2,2,0,2,0,0,0,0,'COMPLETED','','2023-03-21 17:24:00.465000'),(47,4,'DeleteStep',40,'2023-03-24 14:37:58.598000','2023-03-24 14:37:58.845000','COMPLETED',2,3,3,0,0,0,0,0,'COMPLETED','','2023-03-24 14:37:58.850000'),(48,4,'Step1',40,'2023-03-24 14:37:58.938000','2023-03-24 14:37:59.475000','COMPLETED',2,3,0,3,0,0,0,0,'COMPLETED','','2023-03-24 14:37:59.480000');
/*!40000 ALTER TABLE `batch_step_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution_context`
--

DROP TABLE IF EXISTS `batch_step_execution_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text,
  PRIMARY KEY (`STEP_EXECUTION_ID`),
  CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `batch_step_execution` (`STEP_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution_context`
--

LOCK TABLES `batch_step_execution_context` WRITE;
/*!40000 ALTER TABLE `batch_step_execution_context` DISABLE KEYS */;
INSERT INTO `batch_step_execution_context` VALUES (1,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(2,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(3,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(4,'{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(5,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(6,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(7,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(8,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(9,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(10,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(11,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(12,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(13,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(14,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(15,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(16,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(17,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(18,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(19,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(20,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(21,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(22,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":6,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(23,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(24,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(25,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":7,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(26,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(27,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(28,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(29,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(30,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(31,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(32,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":0,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(33,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":8,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(34,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":2,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(35,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":2,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(36,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":2,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(37,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(38,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":2,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(39,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":2,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(40,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":2,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(41,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(42,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":2,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(43,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(44,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(45,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(46,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":3,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(47,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":4,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL),(48,'{\"@class\":\"java.util.HashMap\",\"RepositoryItemReader.read.count\":4,\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}',NULL);
/*!40000 ALTER TABLE `batch_step_execution_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_step_execution_seq`
--

DROP TABLE IF EXISTS `batch_step_execution_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_step_execution_seq` (
  `ID` bigint NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL,
  UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_step_execution_seq`
--

LOCK TABLES `batch_step_execution_seq` WRITE;
/*!40000 ALTER TABLE `batch_step_execution_seq` DISABLE KEYS */;
INSERT INTO `batch_step_execution_seq` VALUES (48,'0');
/*!40000 ALTER TABLE `batch_step_execution_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birthdays`
--

DROP TABLE IF EXISTS `birthdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birthdays` (
  `employee_id` int NOT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `seen_unseen` bit(1) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birthdays`
--

LOCK TABLES `birthdays` WRITE;
/*!40000 ALTER TABLE `birthdays` DISABLE KEYS */;
/*!40000 ALTER TABLE `birthdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `country_code` varchar(4) NOT NULL,
  `country_name` varchar(64) NOT NULL,
  `cre_user` varchar(64) NOT NULL,
  `cre_date` datetime(6) NOT NULL,
  `upd_date` datetime(6) NOT NULL,
  `upd_user` varchar(64) NOT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('ARG','Argentina','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('AUS','Australia','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('CHE','Switzerland','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('CHI','China','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('DEU','Germany','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('FRA','France','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('IN','india','Vivek','2023-01-27 17:42:21.472128','2023-01-27 17:42:21.472128','-----'),('JPN','Japan','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('KOR','South Korea','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('MYS','Malaysia','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('NZL','New Zeland','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----'),('SGP','Singapore','yogesh','2023-01-20 07:30:19.162909','2023-01-20 07:30:19.162909','----');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL,
  `allocated_city` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `cre_user` varchar(255) DEFAULT NULL,
  `cre_date` datetime(6) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  `current_country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `line_manager` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `project_code` varchar(255) DEFAULT NULL,
  `project_unit` varchar(255) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (12543,'Pune','2002-03-03','rajiv.S@infosys.com','2023-03-24 14:32:21.755527','Hoff','Germany','amit.k@infosys.com','Amit','System Engineer','Sudhir','Offshore','CPZFSADM','FSADM1','Training','rajiv.S@infosys.com','2023-03-24 14:32:21.756108'),(120144,'Tokyo',NULL,'Vivek','2023-01-27 16:44:39.580472','Tokyo','Japan','akib.a@infosys.com','Akib','System Engineer','Sudhir','Offshore','EQUATFSAD','FSADM1','VDI','Vivek','2023-01-27 16:44:39.580472'),(121308,'pune',NULL,'Vivek','2023-01-27 17:38:47.019401','Hoff','Germany','arjun.j@infosys.com','Arjun jadhav','dev','Sudhir','Offshore','EQUATFS','FSDGC','VDI','Vivek','2023-01-27 17:38:47.019401'),(121310,'Pune','2001-02-12','Vivek','2023-01-27 17:41:11.947843','Pune','IN','vrushali.d@infosys.com','Vrushali Dharpawar','Dev','Sudhir','offshore','CPZAFSADM','FSADM','VDI active','Vivek','2023-01-27 17:41:11.947843'),(148723,'Pune','2002-02-24','Vivek','2023-03-06 09:40:56.201598',NULL,'india','rajiv.s@infosys.com','Rajiv Shukla','Dev','Sudhir','Offshore','FSADM','FSADM1',NULL,'Vivek','2023-03-06 09:40:56.201598'),(189009,'pune','1999-01-18','rajiv.S@infosys.com','2023-03-24 09:36:01.240497','hoff','Germany','himanshi.s@infosys.com','Himanshi Sharma','Senior System Engineer','Sudhir','Offshore','CPZFSADM','FSADM1','Training','rajiv.S@infosys.com','2023-03-24 09:36:01.240497'),(1038392,'Pune','2000-03-20','Vivek','2023-01-27 16:38:26.637098','Nashik','India','bhagyashree.kadam@infosys.com','Bhagyashree Kadam','System Engineer','Sudhir','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.637098'),(1217839,'Pune','1995-03-26','Vivek','2023-01-27 16:38:27.220596','Mumbai','India','ashwini.nikhade@infosys.com','Ashwini','System Engineer','Bhavna','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:27.220596'),(1217892,'Bangalore','1997-03-26','Vivek','2023-01-27 16:38:26.312502','Kanpur','India','mansi.dwivedi01@infosys.com','Mansi Dwivedi','Senior System Engineer','Bhavna','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.312502'),(1217966,'Pune','1997-09-08','Vivek','2023-01-27 16:38:26.182555','Pune','India','yash.gujar@infosys.com','Yash','System Engineer','Sudhir','offshore','CPZ','CPZCAADM',NULL,'Vivek','2023-01-27 16:38:26.182555'),(1218279,'Mumbai','1999-11-09','Vivek','2023-01-27 16:38:27.094769','Mumbai','India','adesh.tapkir@infosys.com','Adesh Tapkir','System Engineer','Bhavna','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:27.094769'),(1220422,'Zurich','1998-12-09','Vivek','2023-01-27 16:38:27.335783','Zurich','Swizerland','dhawal.b@infosys.com','Dhawal','Senior System Engineer','Sudhir','Onsite','FSD','FSDGTL',NULL,'Vivek','2023-01-27 16:38:27.335783'),(1220922,'Indore','1999-01-14','Vivek','2023-01-27 16:38:27.451943','Nashik','India','akshay.sangale@infosys.com','Akshay Sangale','Senior System Engineer','Bhavna','offshore','FSD','FSDGTL',NULL,'Vivek','2023-01-27 16:38:27.451943'),(1223922,'Zurich','1995-10-06','Vivek','2023-01-27 16:38:27.571620','Zurich','Swizerland','sucheta.shinde@infosys.com','Sucheta Shinde','Technology Lead','Sudhir','Onsite','FSD','FSDGTL',NULL,'Vivek','2023-01-27 16:38:27.571620'),(1238492,'Zurich','1998-07-15','Vivek','2023-01-27 16:38:26.978664','Zurich','Swizerland','priya.bhosale@infosys.com','Priya Bhosale','Senior System Engineer','Bhavna','Onsite','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.978664'),(2284729,'Pune','1996-06-28','Vivek','2023-01-27 16:38:26.753554','Pune','India','yogesh.mali01@infosys.com','Yogesh Mali','Technology Lead','Sudhir','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.753554'),(2983922,'Pune','1999-10-22','Vivek','2023-01-27 16:38:26.863849','Pune','India','vivek.chincholi@infosys.com','Vivek','System Engineer','Sudhir','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.863849'),(3901839,'Zurich','1998-09-17','Vivek','2023-01-27 16:38:26.499733','Zurich','Swizerland','krutika.zinjade@infosys.com','Krutika Zinjade','System Engineer','Bhavna','Onsite','FSD','FSDGTL',NULL,'Vivek','2023-01-27 16:38:26.499733');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attributes`
--

DROP TABLE IF EXISTS `employee_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_attributes` (
  `attr_name` varchar(64) NOT NULL,
  `attr_value` varchar(64) NOT NULL,
  `cre_user` varchar(64) NOT NULL,
  `cre_date` datetime(6) NOT NULL,
  `upd_date` datetime(6) NOT NULL,
  `upd_user` varchar(64) NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`attr_name`),
  KEY `FKqmw9e8pffde0hed6vmh5smf76` (`employee_id`),
  CONSTRAINT `FKqmw9e8pffde0hed6vmh5smf76` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attributes`
--

LOCK TABLES `employee_attributes` WRITE;
/*!40000 ALTER TABLE `employee_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_notification`
--

DROP TABLE IF EXISTS `employee_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cre_user` varchar(64) NOT NULL,
  `cre_date` datetime(6) NOT NULL,
  `employee_id` int DEFAULT NULL,
  `upd_date` datetime(6) NOT NULL,
  `upd_user` varchar(64) NOT NULL,
  `notification_setup_id` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5suotbpw1yt4wfu8hsa1b2132` (`notification_setup_id`),
  CONSTRAINT `FK5suotbpw1yt4wfu8hsa1b2132` FOREIGN KEY (`notification_setup_id`) REFERENCES `notification_setup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1045 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_notification`
--

LOCK TABLES `employee_notification` WRITE;
/*!40000 ALTER TABLE `employee_notification` DISABLE KEYS */;
INSERT INTO `employee_notification` VALUES (1040,'rajiv.S@infosys.com','2023-03-24 14:37:59.362701',148723,'2023-04-01 22:59:23.703187','NA',12,'seen'),(1041,'rajiv.S@infosys.com','2023-03-24 14:37:59.362701',148723,'2023-04-02 12:14:12.175713','NA',16,'seen'),(1042,'rajiv.S@infosys.com','2023-03-24 14:37:59.362701',148723,'2023-03-24 15:41:15.614121','NA',17,'unseen');
/*!40000 ALTER TABLE `employee_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_skills`
--

DROP TABLE IF EXISTS `employee_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cre_user` varchar(64) NOT NULL,
  `cre_date` datetime(6) NOT NULL,
  `skills` varchar(64) NOT NULL,
  `upd_date` datetime(6) NOT NULL,
  `upd_user` varchar(64) NOT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnepe51hewn4dd673e3qk1v2qx` (`employee_id`),
  CONSTRAINT `FKnepe51hewn4dd673e3qk1v2qx` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_skills`
--

LOCK TABLES `employee_skills` WRITE;
/*!40000 ALTER TABLE `employee_skills` DISABLE KEYS */;
INSERT INTO `employee_skills` VALUES (1,'Vivek','2023-01-27 16:38:26.204947','Python,Oracle,MongoDB','2023-01-27 16:38:26.204947','----',1217966),(2,'Vivek','2023-01-27 16:38:26.326019','Java,SQL,ANgular,React,Agile','2023-01-27 16:38:26.326019','----',1217892),(3,'Vivek','2023-01-27 16:38:26.511701','Java,SQL,ANgular','2023-01-27 16:38:26.511701','----',3901839),(4,'Vivek','2023-01-27 16:38:26.647739','Python,Oracle,','2023-01-27 16:38:26.647739','----',1038392),(5,'Vivek','2023-01-27 16:38:26.765433','Java,SQL,ANgular,React,Agile,Python,Oracle,MongoDB','2023-01-27 16:38:26.765433','----',2284729),(6,'Vivek','2023-01-27 16:38:26.874955','Java,SQL,ANgular,React,Agile','2023-01-27 16:38:26.874955','----',2983922),(7,'Vivek','2023-01-27 16:38:26.988696','SQL,ANgular,React','2023-01-27 16:38:26.988696','----',1238492),(8,'Vivek','2023-01-27 16:38:27.106614','Python,Oracle,','2023-01-27 16:38:27.106614','----',1218279),(9,'Vivek','2023-01-27 16:38:27.231343','Python,Oracle,MongoDB','2023-01-27 16:38:27.231343','----',1217839),(10,'Vivek','2023-01-27 16:38:27.346226','Java,SQL,ANgular','2023-01-27 16:38:27.346226','----',1220422),(11,'Vivek','2023-01-27 16:38:27.463023','Java,SQL,ANgular,React,Agile,Python,Oracle,MongoDB','2023-01-27 16:38:27.463023','----',1220922),(12,'Vivek','2023-01-27 16:38:27.582734','Java,SQL,ANgular,React,Agile','2023-01-27 16:38:27.582734','----',1223922),(13,'Vivek','2023-01-27 16:44:39.594336','Java,React','2023-01-27 16:44:39.594336','----',120144),(14,'Vivek','2023-01-27 17:38:47.046430','Java,MongoDB,React','2023-01-27 17:38:47.046430','----',121308),(15,'Vivek','2023-01-27 17:41:11.959811','Java','2023-01-27 17:41:11.959811','----',121310),(16,'Vivek','2023-03-06 09:40:56.382841','React','2023-03-06 09:40:56.382841','----',148723),(17,'rajiv.S@infosys.com','2023-03-24 09:36:01.351330','Java,Spring Boot,React,SQL','2023-03-24 09:36:01.351330','----',189009),(18,'rajiv.S@infosys.com','2023-03-24 14:32:21.887003','Java,Oracle DB','2023-03-24 14:32:21.887003','----',12543);
/*!40000 ALTER TABLE `employee_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_banner`
--

DROP TABLE IF EXISTS `event_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_banner` (
  `title` varchar(255) NOT NULL,
  `banner` longblob,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_banner`
--

LOCK TABLES `event_banner` WRITE;
/*!40000 ALTER TABLE `event_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_employee`
--

DROP TABLE IF EXISTS `hist_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hist_employee` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `action` char(1) DEFAULT NULL,
  `allocated_city` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `cre_user` varchar(255) DEFAULT NULL,
  `cre_date` datetime(6) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  `current_country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `line_manager` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `project_code` varchar(255) DEFAULT NULL,
  `project_unit` varchar(255) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_employee`
--

LOCK TABLES `hist_employee` WRITE;
/*!40000 ALTER TABLE `hist_employee` DISABLE KEYS */;
INSERT INTO `hist_employee` VALUES (1,'A','Pune','1997-09-08','Vivek','2023-01-27 16:38:26.191981','Pune','India','yash.gujar@infosys.com',1217966,'Yash','System Engineer','Sudhir','offshore','CPZ','CPZCAADM',NULL,'Vivek','2023-01-27 16:38:26.191981'),(2,'A','Bangalore','1997-03-26','Vivek','2023-01-27 16:38:26.319024','Kanpur','India','mansi.dwivedi01@infosys.com',1217892,'Mansi Dwivedi','Senior System Engineer','Bhavna','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.319024'),(3,'A','Zurich','1998-09-17','Vivek','2023-01-27 16:38:26.505717','Zurich','Swizerland','krutika.zinjade@infosys.com',3901839,'Krutika Zinjade','System Engineer','Bhavna','Onsite','FSD','FSDGTL',NULL,'Vivek','2023-01-27 16:38:26.505717'),(4,'A','Pune','2000-03-20','Vivek','2023-01-27 16:38:26.642765','Nashik','India','bhagyashree.kadam@infosys.com',1038392,'Bhagyashree Kadam','System Engineer','Sudhir','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.642765'),(5,'A','Pune','1996-06-28','Vivek','2023-01-27 16:38:26.758376','Pune','India','yogesh.mali01@infosys.com',2284729,'Yogesh Mali','Technology Lead','Sudhir','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.758376'),(6,'A','Pune','1999-10-22','Vivek','2023-01-27 16:38:26.867813','Pune','India','vivek.chincholi@infosys.com',2983922,'Vivek','System Engineer','Sudhir','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.867813'),(7,'A','Zurich','1998-07-15','Vivek','2023-01-27 16:38:26.983502','Zurich','Swizerland','priya.bhosale@infosys.com',1238492,'Priya Bhosale','Senior System Engineer','Bhavna','Onsite','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:26.983502'),(8,'A','Mumbai','1999-11-09','Vivek','2023-01-27 16:38:27.100430','Mumbai','India','adesh.tapkir@infosys.com',1218279,'Adesh Tapkir','System Engineer','Bhavna','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:27.100430'),(9,'A','Pune','1995-03-26','Vivek','2023-01-27 16:38:27.225257','Mumbai','India','ashwini.nikhade@infosys.com',1217839,'Ashwini','System Engineer','Bhavna','offshore','FSA','FSADM1',NULL,'Vivek','2023-01-27 16:38:27.225257'),(10,'A','Zurich','1998-12-09','Vivek','2023-01-27 16:38:27.340738','Zurich','Swizerland','dhawal.b@infosys.com',1220422,'Dhawal','Senior System Engineer','Sudhir','Onsite','FSD','FSDGTL',NULL,'Vivek','2023-01-27 16:38:27.340738'),(11,'A','Indore','1999-01-14','Vivek','2023-01-27 16:38:27.456907','Nashik','India','akshay.sangale@infosys.com',1220922,'Akshay Sangale','Senior System Engineer','Bhavna','offshore','FSD','FSDGTL',NULL,'Vivek','2023-01-27 16:38:27.456907'),(12,'A','Zurich','1995-10-06','Vivek','2023-01-27 16:38:27.577364','Zurich','Swizerland','sucheta.shinde@infosys.com',1223922,'Sucheta Shinde','Technology Lead','Sudhir','Onsite','FSD','FSDGTL',NULL,'Vivek','2023-01-27 16:38:27.577364'),(13,'A','Tokyo',NULL,'Vivek','2023-01-27 16:44:39.586491','Tokyo','Japan','akib.a@infosys.com',120144,'Akib','System Engineer','Sudhir','Offshore','EQUATFSAD','FSADM1','VDI','Vivek','2023-01-27 16:44:39.586491'),(14,'A','pune',NULL,'Vivek','2023-01-27 17:38:47.035375','Hoff','Germany','arjun.j@infosys.com',121308,'Arjun jadhav','dev','Sudhir','Offshore','EQUATFS','FSDGC','VDI','Vivek','2023-01-27 17:38:47.035375'),(15,'A','Pune','2001-02-12','Vivek','2023-01-27 17:41:11.952828','Pune','IN','vrushali.d@infosys.com',121310,'Vrushali Dharpawar','Dev','Sudhir','offshore','CPZAFSADM','FSADM','VDI active','Vivek','2023-01-27 17:41:11.952828'),(16,'A','Pune','2002-02-24','Vivek','2023-03-06 09:40:56.320101',NULL,'india','rajiv.s@infosys.com',148723,'Rajiv Shukla','Dev','Sudhir','Offshore','FSADM','FSADM1',NULL,'Vivek','2023-03-06 09:40:56.320101'),(17,'A','pune','1999-01-18','rajiv.S@infosys.com','2023-03-24 09:36:01.304734','hoff','Germany','himanshi.s@infosys.com',189009,'Himanshi Sharma','Senior System Engineer','Sudhir','Offshore','CPZFSADM','FSADM1','Training','rajiv.S@infosys.com','2023-03-24 09:36:01.304734'),(18,'A','Pune','2002-03-03','rajiv.S@infosys.com','2023-03-24 14:32:21.829231','Hoff','Germany','amit.k@infosys.com',12543,'Amit','System Engineer','Sudhir','Offshore','CPZFSADM','FSADM1','Training','rajiv.S@infosys.com','2023-03-24 14:32:21.829231');
/*!40000 ALTER TABLE `hist_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_credentials_details`
--

DROP TABLE IF EXISTS `login_credentials_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_credentials_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_iq3qwte17ovwak6m5c4qqmjni` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=189010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_credentials_details`
--

LOCK TABLES `login_credentials_details` WRITE;
/*!40000 ALTER TABLE `login_credentials_details` DISABLE KEYS */;
INSERT INTO `login_credentials_details` VALUES (1,'$2a$10$vAIxS1Up61cJF10odNymz.bAt8.6rjbRqKukIwA2mcTU7ZJBi48XG','Vivek'),(2,'$2a$10$sZaKdvnbuDUFgb5fJSq85OWq86K6HXcuWnKmKamMuTJBUgso9VFhm','yash.gujar'),(3,'$2a$10$.qMAnhg84NvlHjtsa4yFSeiCEBgjM.GTtZCdzkPMWHG6C9XuA1E8a','mansi.dwivedi01'),(4,'$2a$10$X3XYTa4kxICzyxn861K.TOSDBZO5CYEl8EC..N.1wA3gQwsC8X0UC','krutika.zinjade'),(5,'$2a$10$YnZJSo.4MJjp3DOxqxMd4.WrfOAodSc9B7M58H6VgfooKgkBHNO0W','bhagyashree.kadam'),(6,'$2a$10$7WpfpLGLYyqfamlEc1ZE2ONzeDyg3PceBpgARtNVJIW/VKlzWfexy','yogesh.mali01'),(7,'$2a$10$xuZEKqd4N0S1VgkflV9U.OPrq9JyrXlLc3qw0LG/FVSe/sbgOFTzG','vivek.chincholi'),(8,'$2a$10$u7Tdj7ztWm2xfdOBhDu8Wu06L/nvTuLSWDx.e1HkvTzDoohjaGgyW','priya.bhosale'),(9,'$2a$10$5iccQxTrWALz0XziS63fR.CppAwTMcS8DzdOS1FVQvEjvU5GQlKQm','adesh.tapkir'),(10,'$2a$10$40PKO4SM/tIUBw8SfWTRRuyZBjmZg2LnIiaALal24rIbrl8KRaSQu','ashwini.nikhade'),(11,'$2a$10$3oGi720LShWy1X6MJIM..uaiguJ6WtOn76wQ2aHLUTBG397BZr7qa','dhawal.b'),(12,'$2a$10$b6Vlh0jJTGQR4qEstZM.BOALqFPrxbfCxjeS5MUC2K8OS6Z7Br7ve','akshay.sangale'),(13,'$2a$10$02qKks7j1Rmhg4JfsHbPJO70iiRGrn3Wqj2jaUnFjsfn00j2vx01G','sucheta.shinde'),(14,'$2a$10$bv86ANAz4PW.GoS5NsTEl.2JRFjgVNIE3Rz1OIcD5CbEH0/tUU4im','akib.A'),(15,'$2a$10$M3aIC7.32Gp0BXaC4v8td.dDjHH5Sx98AiSTwYrRDBQe5/S9EXhQK','arjun.j'),(16,'$2a$10$Z/xi/Os5ecw0NtqYrgE6eOxs2ehxiIZl5pssvvHLqgIrdZ3rc3KKu','vrushali.d'),(12543,'$2a$10$hGpU3HT3fABTYzaFMJy09OMg9j/0f24FPJ3pi7PWcTkknbWKP/Fn6','amit.K@infosys.com'),(148723,'$2a$10$D1uqL8dyXj.Tfu.kju8mGOO2rqvHBYCpmG83atsn.D3MmPtp19upO','rajiv.S@infosys.com'),(189009,'$2a$10$8L0Jr0b/iyUZK0auRF/lHOZdFYHma50i0mhROYBGw9UPpgz/SddGS','himanshi.S@infosys.com');
/*!40000 ALTER TABLE `login_credentials_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_setup`
--

DROP TABLE IF EXISTS `notification_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_setup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cre_user` varchar(64) NOT NULL,
  `cre_date` datetime(6) NOT NULL,
  `description` varchar(64) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `message` varchar(250) NOT NULL,
  `name` varchar(15) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `target` varchar(250) NOT NULL,
  `upd_date` datetime(6) NOT NULL,
  `upd_user` varchar(64) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `banner` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_setup`
--

LOCK TABLES `notification_setup` WRITE;
/*!40000 ALTER TABLE `notification_setup` DISABLE KEYS */;
INSERT INTO `notification_setup` VALUES (12,'Vivek','2023-03-24 14:28:40.740399','Take ASAP','2024-03-19 00:00:00.000000','Take Pulse Survey in 2024','pulseSurvey1','2020-03-24 00:00:00.000000','select emp.employeeId from Employee emp','2023-03-24 14:28:40.740399','Vivek',NULL,NULL),(16,'Vivek','2023-03-21 16:47:30.160210','Take ASAP','2024-09-09 00:00:00.000000','Take Pulse Survey','pulseSurvey2','2023-08-08 00:00:00.000000','select emp.employeeId from Employee emp','2023-03-21 16:47:30.160210','NA',NULL,NULL),(17,'rajiv.S@infosys.com','2023-03-24 14:36:15.404995','for Awareness','2024-03-27 00:00:00.000000','For Awareness','TakeGCAP','2023-03-24 00:00:00.000000','select emp.employeeId from Employee emp','2023-03-24 14:36:15.404995','NA',NULL,NULL),(20,'rajiv.S@infosys.com','2023-03-27 21:08:14.748870','trst','2024-12-31 00:00:00.000000','dtc','Test','2023-12-31 00:00:00.000000','hb','2023-03-27 21:08:14.748870','NA',NULL,NULL),(21,'rajiv.S@infosys.com','2023-03-30 22:19:40.629774','TestOneTesTestOneTestOneTestOneTestOnetOne','2024-01-01 00:00:00.000000','TestOneTesTestOneTestOneTestOneTestOnetOne','TestONE','2023-03-30 00:00:00.000000','NA','2023-03-30 22:19:40.629774','NA',NULL,NULL);
/*!40000 ALTER TABLE `notification_setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_setup_history`
--

DROP TABLE IF EXISTS `notification_setup_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_setup_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cre_user` varchar(64) NOT NULL,
  `cre_date` datetime(6) NOT NULL,
  `description` varchar(64) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `message` varchar(250) NOT NULL,
  `name` varchar(15) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `target` varchar(250) NOT NULL,
  `upd_date` datetime(6) NOT NULL,
  `upd_user` varchar(64) NOT NULL,
  `action` char(1) DEFAULT NULL,
  `banner` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_setup_history`
--

LOCK TABLES `notification_setup_history` WRITE;
/*!40000 ALTER TABLE `notification_setup_history` DISABLE KEYS */;
INSERT INTO `notification_setup_history` VALUES (1,'Vivek','2023-02-23 17:31:33.102319','Take ASAP','2016-01-25 21:34:55.000000','Take Pulse Survey sh','pulse Survey 5','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-23 17:31:33.102319','Vivek','A',NULL),(2,'Vivek','2023-02-23 17:39:29.085015','Take ASAP dvsdv','2016-01-25 21:34:55.000000','Take Pulse ASAP','pulse Survey 4','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-23 17:39:29.085015','Vivek','U',NULL),(3,'Vivek','2023-02-23 21:24:47.040919','Take ASAP','2016-01-25 21:34:55.000000','Take Pulse Survey','pulse Survey 1','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-23 21:24:47.040919','Vivek','A',NULL),(4,'Vivek','2023-02-23 21:29:49.172918','Take ASAP','2016-01-25 21:34:55.000000','Take Pulse Survey sh','pulse Survey 1','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-23 21:29:49.173919','Vivek','D',NULL),(5,'Vivek','2023-02-23 23:26:18.439151','Take ASAP','2016-01-25 21:34:55.000000','Take Pulse Survey','pulse Survey 1','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-23 23:26:18.439151','Vivek','A',NULL),(6,'Vivek','2023-02-23 23:29:42.203498','Take ASAP','2016-01-25 21:34:55.000000','Take Pulse Survey','pulse Survey 2','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-23 23:29:42.203498','Vivek','A',NULL),(7,'Vivek','2016-01-25 21:34:55.000000','Take ASAP dvsdv','2016-01-25 21:34:55.000000','Take Pulse ASAP From Infosys Laptop','pulse Survey 1','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-23 23:49:36.561162','Vivek','U',NULL),(8,'Vivek','2016-01-25 21:34:55.000000','Take ASAP dvsdv','2016-01-25 21:34:55.000000','Take Pulse Please','pulse Survey 2','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-24 00:18:03.970446','Vivek','U',NULL),(9,'Vivek','2016-01-25 21:34:55.000000','Take ASAP','2016-01-25 21:34:55.000000','Take Pulse Survey sh','pulse Survey 5','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-24 10:21:48.175325','Vivek','D',NULL),(10,'Vivek','2016-01-25 21:34:55.000000','Take ASAP dvsdv','2016-01-25 21:34:55.000000','Take Pulse ASAP','pulse Survey 5','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-27 11:32:19.471291','Vivek','U',NULL),(11,'Vivek','2023-02-27 11:32:38.009814','Take ASAP','2016-01-25 21:34:55.000000','Take Pulse Survey','pulse Survey 6','2016-01-25 21:34:55.000000','select emp.employeeId from Employee emp','2023-02-27 11:32:38.009814','Vivek','A',NULL),(12,'Vivek','2023-03-08 14:28:40.723238','Take ASAP','2024-03-19 00:00:00.000000','Take Pulse Survey in 2024','pulse Survey 3','2020-03-19 00:00:00.000000','select emp.employeeId from Employee emp','2023-03-08 14:28:40.723238','Vivek','A',NULL);
/*!40000 ALTER TABLE `notification_setup_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `employee_id` int NOT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill` varchar(64) NOT NULL,
  `cre_user` varchar(64) NOT NULL,
  `cre_date` datetime(6) NOT NULL,
  `description` varchar(64) NOT NULL,
  `upd_date` datetime(6) NOT NULL,
  `upd_user` varchar(64) NOT NULL,
  PRIMARY KEY (`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES ('Agile','Vivek','2023-01-20 07:30:19.162909','Agile  Methodology','2023-01-27 16:36:30.397606','Vivek'),('DevOps','Vivek','2023-01-20 07:30:19.162909','DevOps ','2023-01-20 07:30:19.162909','----'),('Java','yogesh','2023-01-20 07:30:19.162909','Java All ','2023-01-20 07:30:19.162909','----'),('MongoDB','yogesh','2023-01-20 07:30:19.162909','No SQL database','2023-01-20 07:30:19.162909','----'),('Oracle DB','Vivek','2023-01-20 07:30:19.162909','Oracle Database','2023-01-20 07:30:19.162909','----'),('Python','Vivek','2023-01-20 07:30:19.162909','Programming Language','2023-01-20 07:30:19.162909','----'),('React','Vivek','2023-01-20 07:30:19.162909','Front end skill','2023-01-20 07:30:19.162909','----'),('Spring Boot','Vivek','2023-01-20 07:30:19.162909','Spring framework','2023-01-20 07:30:19.162909','----'),('SQL','Vivek','2023-01-20 07:30:19.162909','SQL ','2023-01-20 07:30:19.162909','----');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team` varchar(64) NOT NULL,
  `cre_user` varchar(64) NOT NULL,
  `cre_date` datetime(6) NOT NULL,
  `description` varchar(64) NOT NULL,
  `upd_date` datetime(6) NOT NULL,
  `upd_user` varchar(64) NOT NULL,
  PRIMARY KEY (`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES ('Training','Vivek','2023-01-27 16:37:20.767217','Under Training','2023-01-27 16:37:20.767217','----'),('VDI','Vivek','2023-01-27 16:37:03.980950','VDI active','2023-01-27 16:37:03.980950','----');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 23:15:29
