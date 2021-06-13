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
-- Table structure for table `musicgroup`
--

DROP TABLE IF EXISTS `musicgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musicgroup` (
  `ModeratorNo` int DEFAULT NULL,
  `Type` varchar(30) NOT NULL,
  `MusicGroupID` int NOT NULL,
  PRIMARY KEY (`MusicGroupID`),
  UNIQUE KEY `MusicGroupID_UNIQUE` (`MusicGroupID`),
  UNIQUE KEY `Type_UNIQUE` (`Type`),
  KEY `ModeratorNo` (`ModeratorNo`),
  CONSTRAINT `musicgroup_ibfk_1` FOREIGN KEY (`ModeratorNo`) REFERENCES `member` (`MemberNo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicgroup`
--

LOCK TABLES `musicgroup` WRITE;
/*!40000 ALTER TABLE `musicgroup` DISABLE KEYS */;
INSERT INTO `musicgroup` VALUES (20013,'Electro',70001),(20002,'Pop',70002),(20014,'leisure',70003),(20018,'Classic',70004),(20011,'Evergreen',70005),(20017,'Electronic dance music (EDM)',70006),(20018,'Hip-hop',70007),(20012,'Indie rock',70008),(20018,'Jazz',70009),(20020,'K-pop',70010),(20009,'Metal',70011),(20013,'Oldies',70012),(20004,'Blues',70013),(20014,'Rap',70014),(20019,'Rhythm & blues (R&B)',70015),(20004,'Rock',70016),(20002,'Techno',70017),(20016,'Country Music',70018),(20001,'Rock and Roll',70019),(20004,'Soul Music',70020);
/*!40000 ALTER TABLE `musicgroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 18:42:37
