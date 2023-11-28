-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee_ranking`
--

DROP TABLE IF EXISTS `employee_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee_ranking` (
  `EmployeeId` int(11) NOT NULL DEFAULT '0',
  `EmployeeName` varchar(31) DEFAULT NULL,
  `MonthlyAverageSale` decimal(41,8) DEFAULT NULL,
  `UniqueCustomers` bigint(21) NOT NULL DEFAULT '0',
  `MonthlyAverageOrder` decimal(21,0) DEFAULT NULL,
  `Mr_rank` bigint(21) unsigned NOT NULL DEFAULT '0',
  `Cr_Rank` bigint(21) unsigned NOT NULL DEFAULT '0',
  `Or_Rank` bigint(21) unsigned NOT NULL DEFAULT '0',
  `Ranks` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_ranking`
--

LOCK TABLES `employee_ranking` WRITE;
/*!40000 ALTER TABLE `employee_ranking` DISABLE KEYS */;
INSERT INTO `employee_ranking` VALUES (4,'Margaret Peacock',4169.79083333,75,3,1,1,1,1),(1,'Nancy Davolio',2807.55152778,65,2,3,2,2,2),(3,'Janet Leverling',2959.04583333,63,2,2,3,3,3),(8,'Laura Callahan',2666.02060000,56,2,5,5,4,4),(2,'Andrew Fuller',2613.95970588,59,1,6,4,5,5),(7,'Robert King',2717.23057692,45,1,4,6,6,6),(6,'Michael Suyama',1448.11296296,43,1,8,7,7,7),(9,'Anne Dodsworth',2023.51219512,29,1,7,8,8,8),(5,'Steven Buchanan',1399.40277778,29,1,9,9,9,9);
/*!40000 ALTER TABLE `employee_ranking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:32
