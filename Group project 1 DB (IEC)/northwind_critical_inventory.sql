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
-- Table structure for table `critical_inventory`
--

DROP TABLE IF EXISTS `critical_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `critical_inventory` (
  `ProductName` varchar(40) NOT NULL,
  `MonthlyAvgUnitsSold` decimal(28,0) DEFAULT NULL,
  `sum(od.quantity)` decimal(27,0) DEFAULT NULL,
  `ReorderLevel` smallint(2) DEFAULT '0',
  `UnitsinStock` smallint(2) DEFAULT '0',
  `SuggestedUnitsInStock` decimal(29,0) DEFAULT NULL,
  `NewReorderLevel` decimal(28,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critical_inventory`
--

LOCK TABLES `critical_inventory` WRITE;
/*!40000 ALTER TABLE `critical_inventory` DISABLE KEYS */;
INSERT INTO `critical_inventory` VALUES ('Gorgonzola Telino',70,1397,20,0,140,70),('Sir Rodney\'s Scones',53,1016,5,3,106,53),('Longlife Tofu',33,297,5,4,66,33),('Louisiana Hot Spiced Okra',30,239,20,4,60,30),('Rogede sild',42,508,15,5,84,42),('Scottish Longbreads',42,799,15,6,84,42),('Mascarpone Fabioli',23,297,25,9,46,23),('Nord-Ost Matjeshering',29,612,15,10,58,29),('Maxilaku',37,520,15,10,74,37),('Gravad lax',21,125,25,11,42,21),('Aniseed Syrup',30,328,25,13,60,30),('Outback Lager',48,817,30,15,96,48),('Chocolade',23,138,25,15,46,23),('Ipoh Coffee',39,580,25,17,78,39),('Chang',59,1057,25,17,118,59),('Gnocchi di nonna Alice',60,1263,30,21,120,60),('Queso Cabrales',37,706,30,22,74,37),('Wimmers gute Semmelkndel',44,740,30,22,88,44);
/*!40000 ALTER TABLE `critical_inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:42
