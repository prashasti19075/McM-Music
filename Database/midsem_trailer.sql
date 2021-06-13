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
-- Table structure for table `trailer`
--

DROP TABLE IF EXISTS `trailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trailer` (
  `AlbumNo` int NOT NULL,
  `AlbumName` varchar(30) NOT NULL,
  `DateOfRelease` date NOT NULL,
  `Likes` int DEFAULT '0',
  `Dislikes` int DEFAULT '0',
  `NumberOfVisits` int DEFAULT '0',
  PRIMARY KEY (`AlbumNo`),
  CONSTRAINT `trailer_ibfk_1` FOREIGN KEY (`AlbumNo`) REFERENCES `album` (`AlbumNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CheckDislikes` CHECK ((`Dislikes` >= 0)),
  CONSTRAINT `CheckLikes` CHECK ((`Likes` >= 0)),
  CONSTRAINT `CheckVisits` CHECK (((`Likes` + `Dislikes`) <= `NumberOfVisits`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailer`
--

LOCK TABLES `trailer` WRITE;
/*!40000 ALTER TABLE `trailer` DISABLE KEYS */;
INSERT INTO `trailer` VALUES (10001,'eu turpis.','2020-10-27',150,47,224),(10006,'Etiam ligula','2021-07-16',177,24,217),(10008,'Mauris vestibulum,','2020-08-08',1,29,65),(10010,'pede. Suspendisse','2021-07-16',47,40,126),(10011,'neque. Morbi','2021-03-01',7,29,77),(10012,'lorem eu','2021-08-25',93,40,156),(10016,'ac, feugiat','2021-02-28',31,33,74),(10017,'et, rutrum','2022-01-07',185,4,215),(10018,'facilisis eget,','2021-06-19',294,18,361),(10019,'Cras convallis','2020-04-14',42,16,89),(10021,'lectus convallis','2022-02-04',170,10,195),(10023,'ut aliquam','2020-02-11',217,1,222),(10024,'volutpat nunc','2022-02-22',65,42,145),(10026,'Curabitur ut','2020-03-21',1,10,47),(10027,'a, enim.','2021-11-02',237,6,255),(10028,'Donec non','2022-02-01',88,6,112);
/*!40000 ALTER TABLE `trailer` ENABLE KEYS */;
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
