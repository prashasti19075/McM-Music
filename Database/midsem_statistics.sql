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
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics` (
  `State` varchar(30) NOT NULL,
  `SubmissionType` enum('Audio','Video') NOT NULL,
  `Age_Interval` varchar(6) DEFAULT NULL,
  `Count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES ('Karnataka','Audio','15-20',4),('Karnataka','Video','15-20',5),('Rajasthan','Audio','26-30',3),('Rajasthan','Video','26-30',2),('Maharastra','Audio','26-30',1),('Maharastra','Video','26-30',4),('Rajasthan','Audio','6-14',2),('Rajasthan','Video','6-14',1),('Kerala','Audio','21-25',3),('Kerala','Video','21-25',4),('Bihar','Audio','26-30',3),('Bihar','Video','26-30',6),('Karnataka','Audio','41-100',2),('Karnataka','Video','41-100',3),('Haryana','Video','26-30',2),('Rajasthan','Audio','31-40',2),('Rajasthan','Video','31-40',7),('Bihar','Audio','21-25',1),('Tamil Nadu','Audio','31-40',3),('Bihar','Audio','31-40',3),('Bihar','Video','31-40',1),('Chhattisgarh','Audio','31-40',2),('Chhattisgarh','Video','31-40',5),('Odisha','Audio','41-100',3),('Odisha','Video','41-100',2),('Andhra Pradesh','Audio','31-40',3),('Andhra Pradesh','Video','31-40',6),('Uttar Pradesh','Audio','15-20',6),('Uttar Pradesh','Video','15-20',7),('Uttar Pradesh','Audio','21-25',2),('Uttar Pradesh','Video','21-25',10),('Bihar','Audio','41-100',3),('Bihar','Video','41-100',2),('Maharastra','Audio','31-40',1),('Maharastra','Video','31-40',7),('Odisha','Audio','15-20',1),('Punjab','Audio','21-25',3),('Punjab','Video','21-25',1),('Gujarat','Video','26-30',1),('Chhattisgarh','Audio','26-30',5),('Uttar Pradesh','Audio','26-30',7),('Uttar Pradesh','Video','26-30',5);
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 18:42:38
