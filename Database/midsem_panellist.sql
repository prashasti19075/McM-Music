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
-- Table structure for table `panellist`
--

DROP TABLE IF EXISTS `panellist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panellist` (
  `PanellistNo` int NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Industry` varchar(30) DEFAULT NULL,
  `Experience` int DEFAULT '0',
  `AssociationDate` date DEFAULT NULL,
  PRIMARY KEY (`PanellistNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panellist`
--

LOCK TABLES `panellist` WRITE;
/*!40000 ALTER TABLE `panellist` DISABLE KEYS */;
INSERT INTO `panellist` VALUES (30001,'Hari','Jain','Nullam',6,'2019-12-27'),(30002,'Taranga','Khan','semper auctor.',5,'2014-07-14'),(30003,'Narayana','Singh','ac',8,'2005-02-19'),(30004,'Niloufer','Ismail','tortor nibh',8,'2016-04-04'),(30005,'Chetan','Raj','nulla',5,'2008-01-30'),(30006,'Padmal','Jain','faucibus',6,'2015-02-25'),(30007,'Rasesh','Singh','pede ac',5,'2008-08-19'),(30008,'Indrakanta','Raj','a',9,'2008-05-14'),(30009,'Nayantara','Singh','rhoncus.',4,'2006-10-21'),(30010,'Sajala','Singh','ut aliquam',2,'2011-12-31'),(30011,'Kananbala','Jain','fringilla',9,'2015-07-11'),(30012,'Arivali','Kumar','amet metus.',7,'2008-06-11'),(30013,'Yogendra','Jain','elementum',4,'2015-08-02'),(30014,'Taral','Patel','Integer mollis.',6,'2010-11-19');
/*!40000 ALTER TABLE `panellist` ENABLE KEYS */;
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
