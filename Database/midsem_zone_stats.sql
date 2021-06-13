-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: midsem
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `zone_stats`
--

DROP TABLE IF EXISTS `zone_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone_stats` (
  `Zone` enum('North','South','East','West') DEFAULT NULL,
  `SubmissionType` enum('Audio','Video') NOT NULL,
  `Age_Interval` varchar(6) DEFAULT NULL,
  `Count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_stats`
--

LOCK TABLES `zone_stats` WRITE;
/*!40000 ALTER TABLE `zone_stats` DISABLE KEYS */;
INSERT INTO `zone_stats` VALUES ('South','Audio','15-20',4),('South','Video','15-20',5),('West','Audio','26-30',4),('West','Video','26-30',7),('West','Audio','6-14',2),('West','Video','6-14',1),('South','Audio','21-25',3),('South','Video','21-25',4),('East','Audio','26-30',8),('East','Video','26-30',6),('South','Audio','41-100',2),('South','Video','41-100',3),('North','Video','26-30',7),('West','Audio','31-40',3),('West','Video','31-40',14),('East','Audio','21-25',1),('South','Audio','31-40',6),('East','Audio','31-40',5),('East','Video','31-40',6),('East','Audio','41-100',6),('East','Video','41-100',4),('South','Video','31-40',6),('North','Audio','15-20',6),('North','Video','15-20',7),('North','Audio','21-25',5),('North','Video','21-25',11),('East','Audio','15-20',1),('North','Audio','26-30',7);
/*!40000 ALTER TABLE `zone_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 18:42:36
