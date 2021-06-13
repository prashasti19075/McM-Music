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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `AlbumNo` int NOT NULL,
  `URL` varchar(50) NOT NULL,
  `AlbumName` varchar(30) NOT NULL,
  `AlbumType` enum('Audio','Video') NOT NULL,
  `ApprovalStatus` enum('Approved','Unapproved') NOT NULL,
  `ApprovalDate` date DEFAULT NULL,
  PRIMARY KEY (`AlbumNo`),
  UNIQUE KEY `URL` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (10001,'www.abldefghijk.yom','eu turpis.','Audio','Approved','2022-02-22'),(10002,'www.abtdefghijk.vom','parturient montes,','Video','Unapproved',NULL),(10003,'www.abddefghijk.bom','Class aptent','Video','Unapproved',NULL),(10004,'www.abbdefghijk.pom','sit amet','Video','Unapproved',NULL),(10005,'www.abvdefghijk.tom','ultricies ornare,','Video','Unapproved',NULL),(10006,'www.abqdefghijk.wom','Etiam ligula','Audio','Approved','2021-02-03'),(10007,'www.abxdefghijk.jom','vehicula risus.','Audio','Unapproved',NULL),(10008,'www.abqdefghijk.yom','Mauris vestibulum,','Audio','Approved','2020-09-09'),(10009,'www.absdefghijk.jom','enim mi','Audio','Unapproved',NULL),(10010,'www.abldefghijk.gom','pede. Suspendisse','Audio','Approved','2020-07-14'),(10011,'www.abtdefghijk.som','neque. Morbi','Video','Approved','2021-12-09'),(10012,'www.absdefghijk.xom','lorem eu','Video','Approved','2021-12-26'),(10013,'www.abddefghijk.hom','malesuada fames','Video','Unapproved',NULL),(10014,'www.abcdefghijk.som','tempus, lorem','Video','Unapproved',NULL),(10015,'www.abgdefghijk.yom','Donec at','Audio','Unapproved',NULL),(10016,'www.abjdefghijk.pom','ac, feugiat','Audio','Approved','2020-11-29'),(10017,'www.abvdefghijk.dom','et, rutrum','Audio','Approved','2020-12-19'),(10018,'www.abndefghijk.som','facilisis eget,','Video','Approved','2020-08-09'),(10019,'www.abddefghijk.mom','Cras convallis','Audio','Approved','2020-10-08'),(10020,'www.abpdefghijk.tom','et, euismod','Audio','Unapproved',NULL),(10021,'www.abhdefghijk.rom','lectus convallis','Audio','Approved','2021-01-07'),(10022,'www.abxdefghijk.zom','dolor egestas','Video','Unapproved',NULL),(10023,'www.abvdefghijk.com','ut aliquam','Video','Approved','2020-08-21'),(10024,'www.abcdefghijk.gom','volutpat nunc','Video','Approved','2021-05-07'),(10025,'www.abndefghijk.xom','torquent per','Video','Unapproved',NULL),(10026,'www.abgdefghijk.tom','Curabitur ut','Audio','Approved','2021-09-10'),(10027,'www.abzdefghijk.com','a, enim.','Video','Approved','2021-10-17'),(10028,'www.abrdefghijk.tom','Donec non','Audio','Approved','2021-03-21'),(10029,'www.abzdefghijk.tom','facilisis facilisis,','Video','Unapproved',NULL);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
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
