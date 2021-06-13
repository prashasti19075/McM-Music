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
-- Temporary view structure for view `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!50001 DROP VIEW IF EXISTS `submissions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `submissions` AS SELECT 
 1 AS `CandidateNo`,
 1 AS `Duration`,
 1 AS `SubmissionDate`,
 1 AS `SubmissionType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `contestant`
--

DROP TABLE IF EXISTS `contestant`;
/*!50001 DROP VIEW IF EXISTS `contestant`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contestant` AS SELECT 
 1 AS `SelectedforMember`,
 1 AS `CandidateNo`,
 1 AS `Duration`,
 1 AS `SubmissionDate`,
 1 AS `SubmissionType`,
 1 AS `firstName`,
 1 AS `LastName`,
 1 AS `DOB`,
 1 AS `PriorExperience`,
 1 AS `Email`,
 1 AS `AdvertisementSeen`,
 1 AS `CategorySelectedFor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `contestant_info`
--

DROP TABLE IF EXISTS `contestant_info`;
/*!50001 DROP VIEW IF EXISTS `contestant_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contestant_info` AS SELECT 
 1 AS `CandidateNo`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `DOB`,
 1 AS `State`,
 1 AS `PriorExperience`,
 1 AS `Email`,
 1 AS `AdvertisementSeen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `distributor_sold_albums`
--

DROP TABLE IF EXISTS `distributor_sold_albums`;
/*!50001 DROP VIEW IF EXISTS `distributor_sold_albums`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `distributor_sold_albums` AS SELECT 
 1 AS `DownloadNo`,
 1 AS `DownloadDate`,
 1 AS `DownloadStatus`,
 1 AS `AlbumNo`,
 1 AS `DistributorNo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `approved_albums`
--

DROP TABLE IF EXISTS `approved_albums`;
/*!50001 DROP VIEW IF EXISTS `approved_albums`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `approved_albums` AS SELECT 
 1 AS `AlbumNo`,
 1 AS `URL`,
 1 AS `AlbumName`,
 1 AS `AlbumType`,
 1 AS `ApprovalStatus`,
 1 AS `ApprovalDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memview`
--

DROP TABLE IF EXISTS `memview`;
/*!50001 DROP VIEW IF EXISTS `memview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memview` AS SELECT 
 1 AS `likes`,
 1 AS `dislikes`,
 1 AS `DateOfRelease`,
 1 AS `NumberOfVisits`,
 1 AS `musicgroupid`,
 1 AS `moderatorno`,
 1 AS `type`,
 1 AS `Albumno`,
 1 AS `MemberNo`,
 1 AS `RolePlayed`,
 1 AS `Albumname`,
 1 AS `albumtype`,
 1 AS `approvalstatus`,
 1 AS `approvalDate`,
 1 AS `URL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `trailers_view`
--

DROP TABLE IF EXISTS `trailers_view`;
/*!50001 DROP VIEW IF EXISTS `trailers_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trailers_view` AS SELECT 
 1 AS `AlbumNo`,
 1 AS `AlbumName`,
 1 AS `DateOfRelease`,
 1 AS `Likes`,
 1 AS `Dislikes`,
 1 AS `NumberOfVisits`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `panelist_info`
--

DROP TABLE IF EXISTS `panelist_info`;
/*!50001 DROP VIEW IF EXISTS `panelist_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `panelist_info` AS SELECT 
 1 AS `PanellistNo`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Industry`,
 1 AS `Experience`,
 1 AS `AssociationDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `submssion_info`
--

DROP TABLE IF EXISTS `submssion_info`;
/*!50001 DROP VIEW IF EXISTS `submssion_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `submssion_info` AS SELECT 
 1 AS `CandidateNo`,
 1 AS `Duration`,
 1 AS `SubmissionDate`,
 1 AS `SubmissionType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `distributor_own_albums`
--

DROP TABLE IF EXISTS `distributor_own_albums`;
/*!50001 DROP VIEW IF EXISTS `distributor_own_albums`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `distributor_own_albums` AS SELECT 
 1 AS `AlbumNo`,
 1 AS `DistributorNo`,
 1 AS `DateOfRelease`,
 1 AS `RetailPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `distributor_personal_info`
--

DROP TABLE IF EXISTS `distributor_personal_info`;
/*!50001 DROP VIEW IF EXISTS `distributor_personal_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `distributor_personal_info` AS SELECT 
 1 AS `DistributorNo`,
 1 AS `DistributorName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `visitor_view`
--

DROP TABLE IF EXISTS `visitor_view`;
/*!50001 DROP VIEW IF EXISTS `visitor_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `visitor_view` AS SELECT 
 1 AS `AlbumName`,
 1 AS `DateOfRelease`,
 1 AS `Likes`,
 1 AS `Dislikes`,
 1 AS `NumberOfVisits`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `submissions`
--

/*!50001 DROP VIEW IF EXISTS `submissions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `submissions` AS select `submission`.`CandidateNo` AS `CandidateNo`,`submission`.`Duration` AS `Duration`,`submission`.`SubmissionDate` AS `SubmissionDate`,`submission`.`SubmissionType` AS `SubmissionType` from `submission` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `contestant`
--

/*!50001 DROP VIEW IF EXISTS `contestant`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contestant` AS with `short` (`num`,`CategorySelectedFor`,`SelectedforMember`) as (select `candidate`.`CandidateNo` AS `candidateNo`,`shortlisted`.`Category` AS `category`,(case when `candidate`.`CandidateNo` in (select `member`.`MemberNo` from `member`) then 'YES' when `candidate`.`CandidateNo` not in (select `member`.`MemberNo` from `member`) then 'NO' end) AS `case  when (candidate.candidateNo in (Select MemberNo from Member) ) then "YES"
 when  (candidate.candidateNo not in (Select MemberNo from Member) ) then "NO"
 END` from (`candidate` left join `shortlisted` on((`candidate`.`CandidateNo` = `shortlisted`.`CandidateNo`)))) select `short`.`SelectedforMember` AS `SelectedforMember`,`s`.`CandidateNo` AS `CandidateNo`,`s`.`Duration` AS `Duration`,`s`.`SubmissionDate` AS `SubmissionDate`,`s`.`SubmissionType` AS `SubmissionType`,`c`.`FirstName` AS `firstName`,`c`.`LastName` AS `LastName`,`c`.`DOB` AS `DOB`,`c`.`PriorExperience` AS `PriorExperience`,`c`.`Email` AS `Email`,`c`.`AdvertisementSeen` AS `AdvertisementSeen`,`short`.`CategorySelectedFor` AS `CategorySelectedFor` from ((`candidate` `c` join `submission` `s` on((`c`.`CandidateNo` = `s`.`CandidateNo`))) join `short` on((`s`.`CandidateNo` = `short`.`num`))) where (`s`.`CandidateNo` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `contestant_info`
--

/*!50001 DROP VIEW IF EXISTS `contestant_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contestant_info` AS select `candidate`.`CandidateNo` AS `CandidateNo`,`candidate`.`FirstName` AS `FirstName`,`candidate`.`LastName` AS `LastName`,`candidate`.`DOB` AS `DOB`,`candidate`.`State` AS `State`,`candidate`.`PriorExperience` AS `PriorExperience`,`candidate`.`Email` AS `Email`,`candidate`.`AdvertisementSeen` AS `AdvertisementSeen` from `candidate` where (`candidate`.`CandidateNo` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `distributor_sold_albums`
--

/*!50001 DROP VIEW IF EXISTS `distributor_sold_albums`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `distributor_sold_albums` AS select `download`.`DownloadNo` AS `DownloadNo`,`download`.`DownloadDate` AS `DownloadDate`,`download`.`DownloadStatus` AS `DownloadStatus`,`download`.`AlbumNo` AS `AlbumNo`,`download`.`DistributorNo` AS `DistributorNo` from `download` where (`download`.`DistributorNo` = convert(substring_index(user(),'@',1) using utf8mb4)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `approved_albums`
--

/*!50001 DROP VIEW IF EXISTS `approved_albums`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `approved_albums` AS select `album`.`AlbumNo` AS `AlbumNo`,`album`.`URL` AS `URL`,`album`.`AlbumName` AS `AlbumName`,`album`.`AlbumType` AS `AlbumType`,`album`.`ApprovalStatus` AS `ApprovalStatus`,`album`.`ApprovalDate` AS `ApprovalDate` from `album` where (`album`.`ApprovalStatus` = 'Approved') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memview`
--

/*!50001 DROP VIEW IF EXISTS `memview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `memview` AS with `temp` (`mgid`) as (select `roles`.`MusicGroupID` AS `musicgroupid` from `roles` where (`roles`.`MemberNo` = substring_index(user(),'@',1))) select `trailer`.`Likes` AS `likes`,`trailer`.`Dislikes` AS `dislikes`,`trailer`.`DateOfRelease` AS `DateOfRelease`,`trailer`.`NumberOfVisits` AS `NumberOfVisits`,`m`.`MusicGroupID` AS `musicgroupid`,`m`.`ModeratorNo` AS `moderatorno`,`m`.`Type` AS `type`,`r`.`AlbumNo` AS `Albumno`,`r`.`MemberNo` AS `MemberNo`,`r`.`RolePlayed` AS `RolePlayed`,`album`.`AlbumName` AS `Albumname`,`album`.`AlbumType` AS `albumtype`,`album`.`ApprovalStatus` AS `approvalstatus`,`album`.`ApprovalDate` AS `approvalDate`,`album`.`URL` AS `URL` from (((`musicgroup` `m` join `roles` `r` on(((`m`.`MusicGroupID` = `r`.`MusicGroupID`) and `m`.`MusicGroupID` in (select `temp`.`mgid` from `temp`)))) join `album` on((`r`.`AlbumNo` = `album`.`AlbumNo`))) join `trailer` on((`trailer`.`AlbumNo` = `album`.`AlbumNo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trailers_view`
--

/*!50001 DROP VIEW IF EXISTS `trailers_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trailers_view` AS select `trailer`.`AlbumNo` AS `AlbumNo`,`trailer`.`AlbumName` AS `AlbumName`,`trailer`.`DateOfRelease` AS `DateOfRelease`,`trailer`.`Likes` AS `Likes`,`trailer`.`Dislikes` AS `Dislikes`,`trailer`.`NumberOfVisits` AS `NumberOfVisits` from `trailer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `panelist_info`
--

/*!50001 DROP VIEW IF EXISTS `panelist_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `panelist_info` AS select `panellist`.`PanellistNo` AS `PanellistNo`,`panellist`.`FirstName` AS `FirstName`,`panellist`.`LastName` AS `LastName`,`panellist`.`Industry` AS `Industry`,`panellist`.`Experience` AS `Experience`,`panellist`.`AssociationDate` AS `AssociationDate` from `panellist` where (`panellist`.`PanellistNo` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `submssion_info`
--

/*!50001 DROP VIEW IF EXISTS `submssion_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `submssion_info` AS select `submission`.`CandidateNo` AS `CandidateNo`,`submission`.`Duration` AS `Duration`,`submission`.`SubmissionDate` AS `SubmissionDate`,`submission`.`SubmissionType` AS `SubmissionType` from `submission` where (`submission`.`CandidateNo` = substring_index(user(),'@',1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `distributor_own_albums`
--

/*!50001 DROP VIEW IF EXISTS `distributor_own_albums`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `distributor_own_albums` AS select `downloadable`.`AlbumNo` AS `AlbumNo`,`downloadable`.`DistributorNo` AS `DistributorNo`,`downloadable`.`DateOfRelease` AS `DateOfRelease`,`downloadable`.`RetailPrice` AS `RetailPrice` from `downloadable` where (`downloadable`.`DistributorNo` = convert(substring_index(user(),'@',1) using utf8mb4)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `distributor_personal_info`
--

/*!50001 DROP VIEW IF EXISTS `distributor_personal_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `distributor_personal_info` AS select `distributors`.`DistributorNo` AS `DistributorNo`,`distributors`.`DistributorName` AS `DistributorName` from `distributors` where (`distributors`.`DistributorNo` = convert(substring_index(user(),'@',1) using utf8mb4)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `visitor_view`
--

/*!50001 DROP VIEW IF EXISTS `visitor_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `visitor_view` AS select `trailer`.`AlbumName` AS `AlbumName`,`trailer`.`DateOfRelease` AS `DateOfRelease`,`trailer`.`Likes` AS `Likes`,`trailer`.`Dislikes` AS `Dislikes`,`trailer`.`NumberOfVisits` AS `NumberOfVisits` from `trailer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'midsem'
--

--
-- Dumping routines for database 'midsem'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11 18:42:41
