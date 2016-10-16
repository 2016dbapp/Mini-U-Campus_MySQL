-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: DBAPP
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Current Database: `DBAPP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `DBAPP` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `DBAPP`;

--
-- Table structure for table `courseInfo`
--

DROP TABLE IF EXISTS `courseInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courseInfo` (
  `course_id` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_name` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(2) NOT NULL,
  `prof_id` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats` int(1) NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseInfo`
--

LOCK TABLES `courseInfo` WRITE;
/*!40000 ALTER TABLE `courseInfo` DISABLE KEYS */;
INSERT INTO `courseInfo` VALUES ('C01','데이터베이스응용',1,'P01',3,'안녕하세요'),('C02','캡스톤설계',3,'P01',2,NULL),('C03','굿포유',6,'P02',2,NULL);
/*!40000 ALTER TABLE `courseInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberInfo`
--

DROP TABLE IF EXISTS `memberInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberInfo` (
  `member_id` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` int(1) NOT NULL,
  `member_name` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberInfo`
--

LOCK TABLES `memberInfo` WRITE;
/*!40000 ALTER TABLE `memberInfo` DISABLE KEYS */;
INSERT INTO `memberInfo` VALUES ('P01','1111','CS',0,'김우생'),('P02','2222','PM',0,'남윤도'),('S01','1111','CS',4,'이광진'),('S02','2222','CS',3,'김혜진'),('S03','3333','CS',3,'조휘연'),('S04','4444','CS',3,'민병찬'),('S05','5555','CS',2,'이혜연');
/*!40000 ALTER TABLE `memberInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takeInfo`
--

DROP TABLE IF EXISTS `takeInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takeInfo` (
  `member_id` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `member_id` (`member_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `takeInfo_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `memberInfo` (`member_id`),
  CONSTRAINT `takeInfo_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courseInfo` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takeInfo`
--

LOCK TABLES `takeInfo` WRITE;
/*!40000 ALTER TABLE `takeInfo` DISABLE KEYS */;
INSERT INTO `takeInfo` VALUES ('P01','C01'),('P01','C02'),('P02','C03'),('S01','C01'),('S02','C01'),('S03','C01'),('S01','C02'),('S04','C02'),('S02','C03'),('S03','C03');
/*!40000 ALTER TABLE `takeInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-16 15:55:35
