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
-- Table structure for table `shortlisted`
--

DROP TABLE IF EXISTS `shortlisted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shortlisted` (
  `CandidateNo` int NOT NULL,
  `Category` enum('Audio','Video') NOT NULL,
  PRIMARY KEY (`CandidateNo`),
  CONSTRAINT `shortlisted_ibfk_1` FOREIGN KEY (`CandidateNo`) REFERENCES `candidate` (`CandidateNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortlisted`
--

LOCK TABLES `shortlisted` WRITE;
/*!40000 ALTER TABLE `shortlisted` DISABLE KEYS */;
INSERT INTO `shortlisted` VALUES (20001,'Audio'),(20002,'Video'),(20003,'Audio'),(20004,'Video'),(20005,'Audio'),(20006,'Video'),(20007,'Audio'),(20008,'Video'),(20009,'Video'),(20010,'Audio'),(20011,'Audio'),(20012,'Video'),(20013,'Audio'),(20014,'Video'),(20015,'Audio'),(20016,'Video'),(20017,'Video'),(20018,'Video'),(20019,'Audio'),(20020,'Video'),(20021,'Video'),(20022,'Video'),(20023,'Video'),(20024,'Video'),(20025,'Audio');
/*!40000 ALTER TABLE `shortlisted` ENABLE KEYS */;
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
