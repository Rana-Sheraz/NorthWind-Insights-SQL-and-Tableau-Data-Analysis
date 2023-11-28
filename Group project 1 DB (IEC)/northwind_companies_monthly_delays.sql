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
-- Table structure for table `companies_monthly_delays`
--

DROP TABLE IF EXISTS `companies_monthly_delays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `companies_monthly_delays` (
  `ShipperID` int(11) DEFAULT '0',
  `CompanyName` varchar(40),
  `YearOfOrder` int(4) DEFAULT NULL,
  `MonthOfOrder` int(2) DEFAULT NULL,
  `YearMonths` varchar(7) DEFAULT NULL,
  `TotalDelayedOrders` bigint(21) NOT NULL DEFAULT '0',
  `MonthlyTotalOrders` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_monthly_delays`
--

LOCK TABLES `companies_monthly_delays` WRITE;
/*!40000 ALTER TABLE `companies_monthly_delays` DISABLE KEYS */;
INSERT INTO `companies_monthly_delays` VALUES (1,'Speedy Express',1996,7,'1996-7',0,7),(1,'Speedy Express',1996,8,'1996-8',1,9),(1,'Speedy Express',1996,9,'1996-9',1,3),(1,'Speedy Express',1996,10,'1996-10',0,6),(1,'Speedy Express',1996,11,'1996-11',0,6),(1,'Speedy Express',1996,12,'1996-12',0,7),(1,'Speedy Express',1997,1,'1997-1',0,14),(1,'Speedy Express',1997,2,'1997-2',0,7),(1,'Speedy Express',1997,3,'1997-3',0,5),(1,'Speedy Express',1997,4,'1997-4',1,10),(1,'Speedy Express',1997,5,'1997-5',0,9),(1,'Speedy Express',1997,6,'1997-6',0,10),(1,'Speedy Express',1997,7,'1997-7',1,12),(1,'Speedy Express',1997,8,'1997-8',0,10),(1,'Speedy Express',1997,9,'1997-9',1,14),(1,'Speedy Express',1997,10,'1997-10',0,13),(1,'Speedy Express',1997,11,'1997-11',2,13),(1,'Speedy Express',1997,12,'1997-12',1,16),(1,'Speedy Express',1998,1,'1998-1',1,17),(1,'Speedy Express',1998,2,'1998-2',0,18),(1,'Speedy Express',1998,3,'1998-3',3,19),(1,'Speedy Express',1998,4,'1998-4',0,20),(1,'Speedy Express',1998,5,'1998-5',0,4),(2,'United Package',1996,7,'1996-7',0,6),(2,'United Package',1996,8,'1996-8',1,8),(2,'United Package',1996,9,'1996-9',1,15),(2,'United Package',1996,10,'1996-10',0,10),(2,'United Package',1996,11,'1996-11',0,9),(2,'United Package',1996,12,'1996-12',0,8),(2,'United Package',1997,1,'1997-1',1,11),(2,'United Package',1997,2,'1997-2',0,15),(2,'United Package',1997,3,'1997-3',1,14),(2,'United Package',1997,4,'1997-4',0,11),(2,'United Package',1997,5,'1997-5',2,14),(2,'United Package',1997,6,'1997-6',0,11),(2,'United Package',1997,7,'1997-7',1,13),(2,'United Package',1997,8,'1997-8',0,9),(2,'United Package',1997,9,'1997-9',2,17),(2,'United Package',1997,10,'1997-10',1,13),(2,'United Package',1997,11,'1997-11',1,9),(2,'United Package',1997,12,'1997-12',2,16),(2,'United Package',1998,1,'1998-1',2,22),(2,'United Package',1998,2,'1998-2',0,21),(2,'United Package',1998,3,'1998-3',1,32),(2,'United Package',1998,4,'1998-4',0,32),(2,'United Package',1998,5,'1998-5',0,10),(3,'Federal Shipping',1996,7,'1996-7',1,9),(3,'Federal Shipping',1996,8,'1996-8',0,8),(3,'Federal Shipping',1996,9,'1996-9',0,5),(3,'Federal Shipping',1996,10,'1996-10',1,10),(3,'Federal Shipping',1996,11,'1996-11',0,10),(3,'Federal Shipping',1996,12,'1996-12',1,16),(3,'Federal Shipping',1997,1,'1997-1',1,8),(3,'Federal Shipping',1997,2,'1997-2',2,7),(3,'Federal Shipping',1997,3,'1997-3',0,11),(3,'Federal Shipping',1997,4,'1997-4',0,10),(3,'Federal Shipping',1997,5,'1997-5',0,9),(3,'Federal Shipping',1997,6,'1997-6',1,9),(3,'Federal Shipping',1997,7,'1997-7',0,8),(3,'Federal Shipping',1997,8,'1997-8',0,14),(3,'Federal Shipping',1997,9,'1997-9',0,6),(3,'Federal Shipping',1997,10,'1997-10',1,12),(3,'Federal Shipping',1997,11,'1997-11',0,12),(3,'Federal Shipping',1997,12,'1997-12',0,16),(3,'Federal Shipping',1998,1,'1998-1',1,16),(3,'Federal Shipping',1998,2,'1998-2',0,15),(3,'Federal Shipping',1998,3,'1998-3',0,22),(3,'Federal Shipping',1998,4,'1998-4',0,22);
/*!40000 ALTER TABLE `companies_monthly_delays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:43
