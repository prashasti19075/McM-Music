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
-- Table structure for table `downloadable`
--

DROP TABLE IF EXISTS `downloadable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `downloadable` (
  `AlbumNo` int NOT NULL,
  `DistributorNo` varchar(30) NOT NULL,
  `DateOfRelease` date NOT NULL,
  `RetailPrice` int NOT NULL,
  PRIMARY KEY (`AlbumNo`,`DistributorNo`),
  KEY `DistributorNo` (`DistributorNo`),
  CONSTRAINT `downloadable_ibfk_1` FOREIGN KEY (`AlbumNo`) REFERENCES `album` (`AlbumNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `downloadable_ibfk_2` FOREIGN KEY (`DistributorNo`) REFERENCES `distributors` (`DistributorNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadable`
--

LOCK TABLES `downloadable` WRITE;
/*!40000 ALTER TABLE `downloadable` DISABLE KEYS */;
INSERT INTO `downloadable` VALUES (10001,'A2J 8mrbc','2020-06-21',1458),(10001,'I2C 6ucyh','2020-06-07',2827),(10001,'O0B 4yhzt','2021-03-21',6920),(10006,'O3G 7klsh','2022-01-23',9894),(10006,'U2L 2xhqh','2020-11-25',4397),(10006,'U5F 3arfr','2021-10-25',1064),(10008,'I0R 3tksl','2021-03-10',7097),(10008,'I0V 4xlsb','2021-10-02',9214),(10008,'U1Y 1dfnn','2021-03-20',8145),(10010,'A2J 8mrbc','2020-12-13',6844),(10010,'O0F 5lxpz','2021-09-19',851),(10010,'O0S 3idqc','2022-01-30',9758),(10011,'I3D 1jodq','2021-12-22',9688),(10011,'O3G 7klsh','2020-07-28',1302),(10011,'U9X 9dutm','2021-04-25',8890),(10012,'A0P 7rltr','2021-11-20',6233),(10012,'E7X 3cczb','2021-04-20',5149),(10012,'U1Y 1dfnn','2021-03-24',7907),(10016,'O0S 3idqc','2022-03-06',8193),(10016,'O4M 1vgdh','2021-03-21',2435),(10016,'O5D 5vmlt','2020-09-01',6988),(10017,'A0G 5dfwl','2020-06-03',2845),(10017,'E5S 4vrtz','2021-12-31',4990),(10017,'U9X 9dutm','2021-09-25',7428),(10018,'A0P 7rltr','2021-08-25',5107),(10018,'A4M 1yizp','2020-05-14',3303),(10018,'E1T 9ksbc','2021-08-27',1699),(10019,'E2X 8oukj','2021-01-31',9889),(10019,'O4M 1vgdh','2021-03-30',3435),(10019,'U8Y 9tvvj','2021-03-11',7734),(10021,'E0T 2awdd','2022-02-02',1145),(10021,'E5S 4vrtz','2021-01-02',4509),(10021,'I9N 7hkcm','2020-05-22',3976),(10023,'A4M 1yizp','2021-04-07',8068),(10023,'I8S 2iexq','2020-12-03',5741),(10023,'O2M 9kxmf','2020-09-08',6276),(10024,'E2X 8oukj','2021-03-09',1080),(10024,'O1D 1kftd','2021-11-10',2887),(10024,'O5C 3fzbw','2020-11-02',3326),(10026,'E0T 2awdd','2020-06-23',6909),(10026,'I2C 6ucyh','2021-02-14',3194),(10026,'O0B 4yhzt','2021-03-02',8897),(10027,'O2M 9kxmf','2021-07-08',1776),(10027,'U2L 2xhqh','2021-01-31',781),(10027,'U5F 3arfr','2021-06-23',8151),(10028,'I0R 3tksl','2021-09-05',463),(10028,'I0V 4xlsb','2022-01-07',8343),(10028,'O5C 3fzbw','2021-02-25',6246);
/*!40000 ALTER TABLE `downloadable` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `downloadable_BEFORE_INSERT` BEFORE INSERT ON `downloadable` FOR EACH ROW BEGIN
if new.AlbumNo not in (Select AlbumNo from Album where ApprovalStatus = "Approved")
    then signal sqlstate '45000' set message_text = 'Not a valid Number';
    end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 18:42:38
