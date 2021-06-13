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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `CandidateNo` int NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `DOB` date NOT NULL,
  `State` varchar(30) NOT NULL,
  `PriorExperience` int DEFAULT '0',
  `Email` varchar(50) DEFAULT NULL,
  `AdvertisementSeen` enum('Print','Media') NOT NULL,
  PRIMARY KEY (`CandidateNo`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (20001,'Sadiappan','Jain','2004-10-07','Karnataka',6,'Khadjjsafbds@bddjk.rom','Print'),(20002,'Danvir','Singh','1991-08-25','Rajasthan',1,'Ehadjjsafbds@bddjk.mom','Media'),(20003,'Kushala','Patel','1992-08-19','Maharastra',1,'Ghadjjsafbds@bddjk.zom','Print'),(20004,'Indrayani','Raj','2009-09-13','Rajasthan',5,'Whadjjsafbds@bddjk.rom','Media'),(20005,'Dhirendra','Singh','1997-12-25','Kerala',8,'Mhadjjsafbds@bddjk.zom','Print'),(20006,'Pradnaya','Jain','1995-12-06','Bihar',8,'Jhadjjsafbds@bddjk.qom','Media'),(20007,'Lalitmohan','Ismail','1979-04-09','Karnataka',1,'Zhadjjsafbds@bddjk.dom','Media'),(20008,'Chayana','Kumar','1994-01-30','Haryana',8,'Thadjjsafbds@bddjk.hom','Print'),(20009,'Qutub','Jain','1982-01-07','Rajasthan',1,'Hhadjjsafbds@bddjk.xom','Print'),(20010,'Ravi','Kissan','2000-05-03','Bihar',4,'bwedblkergk@bddjk.com','Media'),(20011,'Vidhut','Kumar','1985-10-17','Tamil Nadu',3,'Thadjjsafbds@bddjk.mom','Print'),(20012,'Govind','Raj','1984-06-26','Bihar',6,'Khadjjsafbds@bddjk.nom','Print'),(20013,'Poonam','Khan','1986-12-20','Chhattisgarh',5,'Hhadjjsafbds@bddjk.com','Print'),(20014,'Madhumalati','Singh','1976-09-10','Odisha',7,'Nhadjjsafbds@bddjk.bom','Print'),(20015,'Pakshi','Jain','1988-03-23','Andhra Pradesh',5,'Fhadjjsafbds@bddjk.com','Media'),(20016,'Rupin','Jain','1984-07-20','Andhra Pradesh',3,'Khadjjsafbds@bddjk.bom','Print'),(20017,'Chitrarekha','Ismail','2001-08-01','Uttar Pradesh',5,'Vhadjjsafbds@bddjk.wom','Media'),(20018,'Kamod','Patel','1998-07-29','Uttar Pradesh',1,'Jhadjjsafbds@bddjk.wom','Print'),(20019,'Raghuvir','Raj','1977-08-10','Bihar',5,'Lhadjjsafbds@bddjk.rom','Print'),(20020,'Rustom','Jain','1984-04-05','Maharastra',9,'Hhadjjsafbds@bddjk.nom','Media'),(20021,'Aarohi','Ismail','2002-04-06','Karnataka',2,'Chadjjsafbds@bddjk.rom','Media'),(20022,'Misal','Ismail','1987-11-08','Rajasthan',5,'Ahadjjsafbds@bddjk.qom','Media'),(20023,'Bhojaraja','Khan','2001-11-05','Uttar Pradesh',8,'Shadjjsafbds@bddjk.tom','Print'),(20024,'Rohit','Jain','2006-03-11','Odisha',6,'Khadjjsafbds@bddjk.kom','Media'),(20025,'Sukhdev','Ismail','1997-06-30','Punjab',8,'Whadjjsafbds@bddjk.kom','Print'),(20026,'Palani','Kumar','1991-01-14','Gujarat',3,'Bhadjjsafbds@bddjk.nom','Media'),(20027,'Farukh','Ismail','1992-12-08','Chhattisgarh',8,'Jhadjjsafbds@bddjk.gom','Media'),(20028,'Premanand','Patel','1995-04-05','Uttar Pradesh',5,'Lhadjjsafbds@bddjk.nom','Media'),(20029,'Prabodhan','Singh','1994-08-02','Uttar Pradesh',1,'Mhadjjsafbds@bddjk.hom','Media'),(20030,'Ranita','Jain','2000-06-26','Uttar Pradesh',7,'Dhadjjsafbds@bddjk.tom','Media');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 18:42:39
