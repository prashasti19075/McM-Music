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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `MusicGroupID` int NOT NULL,
  `AlbumNo` int NOT NULL,
  `MemberNo` int NOT NULL,
  `RolePlayed` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MusicGroupID`,`AlbumNo`,`MemberNo`),
  KEY `roles_ibfk_3_idx` (`AlbumNo`),
  KEY `roles_ibfk_2_idx` (`MemberNo`),
  CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`MusicGroupID`) REFERENCES `musicgroup` (`MusicGroupID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`MemberNo`) REFERENCES `member` (`MemberNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roles_ibfk_3` FOREIGN KEY (`AlbumNo`) REFERENCES `album` (`AlbumNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (70001,10001,20004,'Media Relations'),(70001,10001,20009,'Public Relations'),(70001,10001,20012,'Public Relations'),(70001,10001,20015,'Tech Support'),(70001,10001,20019,'Media Relations'),(70001,10021,20001,'Human Resources'),(70001,10021,20008,'Asset Management'),(70001,10021,20011,'Asset Management'),(70001,10021,20014,''),(70002,10002,20007,'Quality Assurance'),(70002,10002,20008,'Legal Department'),(70002,10002,20010,'Public Relations'),(70002,10002,20014,'Research and Development'),(70002,10002,20016,'Quality Assurance'),(70002,10002,20019,'Legal Department'),(70002,10022,20002,'Payroll'),(70002,10022,20005,'Payroll'),(70002,10022,20009,'Research and Development'),(70003,10003,20011,'Finances'),(70003,10003,20017,'Sales and Marketing'),(70003,10003,20018,'Finances'),(70003,10023,20001,'Media Relations'),(70003,10023,20002,'Human Resources'),(70003,10023,20014,'Media Relations'),(70004,10004,20003,'Payroll'),(70004,10004,20004,'Sales and Marketing'),(70004,10004,20008,'Sales and Marketing'),(70004,10004,20013,'Accounting'),(70004,10004,20016,'Payroll'),(70004,10024,20003,'Human Resources'),(70004,10024,20008,'Human Resources'),(70004,10024,20011,'Human Resources'),(70004,10024,20016,'Human Resources'),(70005,10005,20004,'Payroll'),(70005,10005,20007,'Media Relations'),(70005,10005,20011,'Media Relations'),(70005,10005,20013,'Human Resources'),(70005,10005,20016,'Payroll'),(70005,10005,20017,'Human Resources'),(70005,10025,20012,'Sales and Marketing'),(70005,10025,20016,'Sales and Marketing'),(70005,10025,20018,'Tech Support'),(70005,10025,20020,'Tech Support'),(70006,10006,20008,'Tech Support'),(70006,10006,20012,'Tech Support'),(70006,10006,20015,'Asset Management'),(70006,10006,20018,'Media Relations'),(70006,10006,20019,'Asset Management'),(70006,10026,20005,'Quality Assurance'),(70006,10026,20016,'Quality Assurance'),(70006,10026,20017,'Research and Development'),(70007,10007,20002,'Customer Relations'),(70007,10007,20005,'Public Relations'),(70007,10007,20007,'Public Relations'),(70007,10007,20013,'Finances'),(70007,10007,20014,'Customer Relations'),(70007,10007,20016,'Finances'),(70007,10027,20007,'Asset Management'),(70007,10027,20008,'Asset Management'),(70007,10027,20009,'Quality Assurance'),(70007,10027,20014,'Quality Assurance'),(70008,10008,20008,'Sales and Marketing'),(70008,10008,20012,'Media Relations'),(70008,10008,20019,'Tech Support'),(70008,10008,20020,'Sales and Marketing'),(70008,10028,20001,'Public Relations'),(70008,10028,20002,'Asset Management'),(70008,10028,20009,'Public Relations'),(70008,10028,20016,'Asset Management'),(70009,10009,20001,'Customer Relations'),(70009,10009,20008,'Legal Department'),(70009,10009,20014,'Legal Department'),(70009,10009,20016,'Customer Service'),(70009,10009,20020,'Customer Relations'),(70009,10029,20008,'Legal Department'),(70009,10029,20019,'Customer Relations'),(70009,10029,20020,'Customer Relations'),(70010,10010,20003,''),(70010,10010,20004,'Customer Service'),(70010,10010,20006,'Research and Development'),(70010,10010,20011,'Customer Service'),(70010,10010,20012,'Customer Relations'),(70010,10010,20015,'Customer Relations'),(70011,10011,20002,'Accounting'),(70011,10011,20008,'Public Relations'),(70011,10011,20016,'Public Relations'),(70011,10011,20017,''),(70011,10011,20018,'Accounting'),(70012,10012,20001,'Legal Department'),(70012,10012,20008,'Legal Department'),(70012,10012,20009,'Legal Department'),(70012,10012,20017,'Legal Department'),(70013,10013,20007,'Customer Relations'),(70013,10013,20014,''),(70013,10013,20020,'Sales and Marketing'),(70014,10014,20008,'Asset Management'),(70014,10014,20011,'Public Relations'),(70014,10014,20016,'Public Relations'),(70014,10014,20019,'Asset Management'),(70015,10015,20002,'Human Resources'),(70015,10015,20003,'Human Resources'),(70015,10015,20014,'Human Resources'),(70015,10015,20016,''),(70015,10015,20018,'Human Resources'),(70016,10016,20009,'Tech Support'),(70016,10016,20013,''),(70016,10016,20018,'Tech Support'),(70016,10016,20019,'Public Relations'),(70017,10017,20003,''),(70017,10017,20006,'Customer Relations'),(70017,10017,20012,'Customer Relations'),(70017,10017,20019,'Customer Service'),(70018,10018,20006,'Research and Development'),(70018,10018,20009,'Research and Development'),(70018,10018,20011,'Research and Development'),(70018,10018,20014,'Research and Development'),(70019,10019,20003,'Payroll'),(70019,10019,20009,'Human Resources'),(70019,10019,20014,''),(70019,10019,20019,'Human Resources'),(70020,10020,20001,'Tech Support'),(70020,10020,20004,'Legal Department'),(70020,10020,20011,''),(70020,10020,20018,'Legal Department'),(70020,10020,20019,'Tech Support');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 18:42:40
