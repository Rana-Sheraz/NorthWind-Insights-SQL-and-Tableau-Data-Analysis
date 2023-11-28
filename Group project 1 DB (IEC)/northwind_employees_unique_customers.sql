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
-- Table structure for table `employees_unique_customers`
--

DROP TABLE IF EXISTS `employees_unique_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employees_unique_customers` (
  `EmployeeID` int(11) DEFAULT NULL,
  `Employee_Name` varchar(31) DEFAULT NULL,
  `Job_Role` varchar(30) DEFAULT NULL,
  `CustomerCount` bigint(21) NOT NULL DEFAULT '0',
  `RANK` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_unique_customers`
--

LOCK TABLES `employees_unique_customers` WRITE;
/*!40000 ALTER TABLE `employees_unique_customers` DISABLE KEYS */;
INSERT INTO `employees_unique_customers` VALUES (4,'Margaret Peacock','Sales Representative',75,1),(1,'Nancy Davolio','Sales Representative',65,2),(3,'Janet Leverling','Sales Representative',63,3),(2,'Andrew Fuller','Vice President, Sales',59,4),(8,'Laura Callahan','Inside Sales Coordinator',56,5),(7,'Robert King','Sales Representative',45,6),(6,'Michael Suyama','Sales Representative',43,7),(5,'Steven Buchanan','Sales Manager',29,8),(9,'Anne Dodsworth','Sales Representative',29,8);
/*!40000 ALTER TABLE `employees_unique_customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:40
