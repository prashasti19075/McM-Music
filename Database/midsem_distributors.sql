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
-- Table structure for table `distributors`
--

DROP TABLE IF EXISTS `distributors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributors` (
  `DistributorNo` varchar(30) NOT NULL,
  `DistributorName` varchar(30) NOT NULL,
  PRIMARY KEY (`DistributorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributors`
--

LOCK TABLES `distributors` WRITE;
/*!40000 ALTER TABLE `distributors` DISABLE KEYS */;
INSERT INTO `distributors` VALUES ('A0G 5dfwl','Nec Urna Foundation'),('A0P 7rltr','Quisque Foundation'),('A2J 8mrbc','Libero At Auctor Limited'),('A4M 1yizp','Cum Sociuus Corporation'),('E0T 2awdd','Auctor Company'),('E1T 9ksbc','Mus Limited'),('E2X 8oukj','Bibendum Ltd'),('E5S 4vrtz','Urna Et Institute'),('E7X 3cczb','Pretium Aliquet Company'),('I0R 3tksl','Euismod Urna Consulting'),('I0V 4xlsb','Eu Institute'),('I2C 6ucyh','Nunc Corporation'),('I3D 1jodq','Convallis Dolor Quisque LLP'),('I8S 2iexq','Sit Amet Institute'),('I9N 7hkcm','In Consulting'),('O0B 4yhzt','Purus Ltd'),('O0F 5lxpz','Accumsan PC'),('O0S 3idqc','Egestas Foundation'),('O1D 1kftd','Turpis Vitae Purus Foundation'),('O2M 9kxmf','Arcu LLP'),('O3G 7klsh','Sem Institute'),('O4M 1vgdh','At Nisi Cum Ltd'),('O5C 3fzbw','Nulla Associates'),('O5D 5vmlt','Eget Ipsum Limited'),('U1Y 1dfnn','Lectus LLC'),('U2L 2xhqh','Dolor Fusce Mi Corporation'),('U5F 3arfr','Sapien Corp.'),('U8Y 9tvvj','Mattis Inc.'),('U9X 9dutm','Integer In Magna Incorporated');
/*!40000 ALTER TABLE `distributors` ENABLE KEYS */;
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
