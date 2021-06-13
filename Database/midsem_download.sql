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
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `download` (
  `DownloadNo` int NOT NULL,
  `DownloadDate` date NOT NULL,
  `DownloadStatus` enum('Successful','Failure') NOT NULL,
  `AlbumNo` int DEFAULT NULL,
  `DistributorNo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`DownloadNo`),
  KEY `FKCheckDownload` (`AlbumNo`,`DistributorNo`),
  CONSTRAINT `FKCheckDownload` FOREIGN KEY (`AlbumNo`, `DistributorNo`) REFERENCES `downloadable` (`AlbumNo`, `DistributorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` VALUES (40001,'2021-02-13','Successful',10001,'O0B 4yhzt'),(40002,'2021-09-08','Failure',10006,'U5F 3arfr'),(40003,'2020-05-10','Successful',10008,'I0R 3tksl'),(40004,'2021-09-26','Successful',10026,'E0T 2awdd'),(40005,'2020-04-08','Failure',10027,'O2M 9kxmf'),(40006,'2022-02-21','Successful',10028,'O5C 3fzbw'),(40007,'2020-10-03','Successful',10001,'I2C 6ucyh'),(40008,'2021-10-16','Successful',10006,'U2L 2xhqh'),(40009,'2020-07-23','Successful',10008,'I0V 4xlsb'),(40010,'2020-03-05','Successful',10026,'E0T 2awdd'),(40011,'2021-12-05','Successful',10027,'O2M 9kxmf'),(40012,'2021-04-04','Successful',10028,'O5C 3fzbw'),(40013,'2020-11-05','Successful',10001,'I2C 6ucyh'),(40014,'2020-02-26','Successful',10006,'U2L 2xhqh'),(40015,'2020-07-22','Successful',10008,'I0V 4xlsb'),(40016,'2020-04-01','Successful',10028,'O5C 3fzbw'),(40017,'2020-07-19','Failure',10001,'I2C 6ucyh'),(40018,'2020-08-28','Successful',10006,'U2L 2xhqh'),(40019,'2020-03-21','Successful',10008,'I0V 4xlsb'),(40020,'2020-11-26','Successful',10026,'E0T 2awdd'),(40021,'2020-05-04','Successful',10027,'O2M 9kxmf'),(40022,'2021-10-14','Successful',10028,'O5C 3fzbw'),(40023,'2022-02-04','Successful',10001,'I2C 6ucyh'),(40024,'2020-06-30','Successful',10006,'U2L 2xhqh'),(40025,'2020-04-13','Successful',10008,'I0V 4xlsb'),(40026,'2020-10-14','Successful',10012,'E7X 3cczb'),(40027,'2021-02-08','Successful',10016,'O5D 5vmlt'),(40028,'2021-01-23','Failure',10017,'A0G 5dfwl'),(40029,'2020-01-01','Successful',10018,'E1T 9ksbc'),(40030,'2021-08-29','Successful',10019,'U8Y 9tvvj'),(40031,'2020-06-24','Successful',10021,'I9N 7hkcm'),(40032,'2021-07-11','Successful',10023,'I8S 2iexq'),(40033,'2020-12-13','Failure',10024,'O1D 1kftd'),(40034,'2020-11-25','Successful',10026,'O0B 4yhzt'),(40035,'2020-10-24','Successful',10027,'U5F 3arfr'),(40036,'2020-05-05','Successful',10028,'I0R 3tksl'),(40037,'2021-02-11','Successful',10001,'A2J 8mrbc'),(40038,'2020-03-19','Failure',10006,'O3G 7klsh'),(40039,'2020-03-11','Successful',10008,'U1Y 1dfnn'),(40040,'2021-06-13','Failure',10027,'U5F 3arfr'),(40041,'2020-10-30','Successful',10028,'I0R 3tksl'),(40042,'2021-07-12','Successful',10001,'A2J 8mrbc'),(40043,'2020-11-07','Successful',10006,'O3G 7klsh'),(40044,'2021-11-24','Successful',10008,'U1Y 1dfnn'),(40045,'2020-05-02','Failure',10016,'O4M 1vgdh'),(40046,'2022-02-07','Successful',10017,'E5S 4vrtz'),(40047,'2020-11-16','Successful',10018,'A4M 1yizp'),(40048,'2020-03-13','Successful',10019,'E2X 8oukj'),(40049,'2020-12-04','Successful',10021,'E0T 2awdd'),(40050,'2020-06-21','Successful',10023,'O2M 9kxmf'),(40051,'2021-02-15','Successful',10024,'O5C 3fzbw'),(40052,'2021-04-04','Successful',10026,'I2C 6ucyh'),(40053,'2022-02-03','Successful',10027,'U2L 2xhqh'),(40054,'2021-02-26','Failure',10028,'I0V 4xlsb'),(40055,'2020-05-12','Successful',10021,'E0T 2awdd'),(40056,'2021-04-24','Successful',10023,'O2M 9kxmf'),(40057,'2020-02-26','Successful',10024,'O5C 3fzbw'),(40058,'2020-08-15','Successful',10026,'I2C 6ucyh'),(40059,'2022-01-16','Successful',10027,'U2L 2xhqh'),(40060,'2020-07-30','Failure',10028,'I0V 4xlsb'),(40061,'2020-07-12','Successful',10026,'I2C 6ucyh'),(40062,'2020-11-21','Successful',10027,'U2L 2xhqh'),(40063,'2020-09-12','Successful',10028,'I0V 4xlsb'),(40064,'2021-04-30','Successful',10010,'A2J 8mrbc'),(40065,'2020-12-28','Successful',10011,'O3G 7klsh'),(40066,'2021-04-23','Failure',10012,'U1Y 1dfnn'),(40067,'2022-02-21','Successful',10016,'O0S 3idqc'),(40068,'2021-07-15','Successful',10017,'U9X 9dutm'),(40069,'2020-01-07','Successful',10018,'A0P 7rltr'),(40070,'2021-09-10','Successful',10019,'O4M 1vgdh'),(40071,'2021-05-15','Successful',10021,'E5S 4vrtz'),(40072,'2022-03-14','Successful',10023,'A4M 1yizp'),(40073,'2020-08-24','Successful',10024,'E2X 8oukj'),(40074,'2020-07-17','Successful',10001,'O0B 4yhzt'),(40075,'2020-03-03','Successful',10006,'U5F 3arfr'),(40076,'2020-10-10','Successful',10008,'I0R 3tksl'),(40077,'2021-12-11','Failure',10010,'A2J 8mrbc'),(40078,'2021-10-30','Successful',10011,'O3G 7klsh'),(40079,'2020-12-18','Successful',10012,'U1Y 1dfnn'),(40080,'2020-06-27','Successful',10016,'O0S 3idqc'),(40081,'2021-10-13','Successful',10017,'U9X 9dutm'),(40082,'2020-10-30','Successful',10018,'A0P 7rltr'),(40083,'2021-04-04','Successful',10019,'O4M 1vgdh'),(40084,'2020-03-25','Successful',10021,'E5S 4vrtz'),(40085,'2020-12-30','Successful',10023,'A4M 1yizp'),(40086,'2020-04-07','Successful',10024,'E2X 8oukj'),(40087,'2021-10-28','Successful',10019,'O4M 1vgdh'),(40088,'2020-09-26','Successful',10021,'E5S 4vrtz'),(40089,'2020-03-16','Successful',10023,'A4M 1yizp'),(40090,'2020-08-25','Successful',10024,'E2X 8oukj'),(40091,'2020-12-21','Failure',10026,'E0T 2awdd'),(40092,'2021-04-12','Successful',10027,'O2M 9kxmf'),(40093,'2020-02-15','Successful',10028,'O5C 3fzbw'),(40094,'2022-03-15','Successful',10001,'I2C 6ucyh'),(40095,'2021-01-14','Failure',10006,'U2L 2xhqh'),(40096,'2021-10-11','Successful',10008,'I0V 4xlsb'),(40097,'2020-09-27','Successful',10010,'O0F 5lxpz'),(40098,'2021-04-19','Failure',10011,'I3D 1jodq'),(40099,'2020-08-12','Successful',10012,'E7X 3cczb'),(40100,'2020-11-22','Successful',10016,'O5D 5vmlt'),(40101,'2021-04-19','Failure',10017,'A0G 5dfwl');
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
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
