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
-- Table structure for table `shipping_report`
--

DROP TABLE IF EXISTS `shipping_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipping_report` (
  `shipperid` int(11) DEFAULT '0',
  `companyname` varchar(40),
  `TotalOrders` bigint(21) NOT NULL DEFAULT '0',
  `OnTimeOrders` bigint(21) NOT NULL DEFAULT '0',
  `PctOnTimeOrders` decimal(28,4) DEFAULT NULL,
  `DelayedOrders` bigint(21) NOT NULL DEFAULT '0',
  `PctDelayedOrders` decimal(27,4) DEFAULT NULL,
  `Avg_Delivery_Days` varchar(21) DEFAULT NULL,
  `AverageFreightCost` decimal(14,8) DEFAULT NULL,
  `number_of_countries` bigint(21) NOT NULL DEFAULT '0',
  `total_regions` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_report`
--

LOCK TABLES `shipping_report` WRITE;
/*!40000 ALTER TABLE `shipping_report` DISABLE KEYS */;
INSERT INTO `shipping_report` VALUES (1,'Speedy Express',245,233,95.1020,12,4.8980,'19 Days Earlier',65.00132530,21,17),(2,'United Package',315,299,94.9206,16,5.0794,'19 Days Earlier',86.64064417,21,18),(3,'Federal Shipping',249,240,96.3855,9,3.6145,'20 Days Earlier',80.44121569,21,18);
/*!40000 ALTER TABLE `shipping_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:38
