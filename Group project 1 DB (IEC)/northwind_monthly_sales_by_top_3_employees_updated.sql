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
-- Table structure for table `monthly_sales_by_top_3_employees_updated`
--

DROP TABLE IF EXISTS `monthly_sales_by_top_3_employees_updated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `monthly_sales_by_top_3_employees_updated` (
  `EmployeeId` int(11) NOT NULL DEFAULT '0',
  `EmployeeName` varchar(31) DEFAULT NULL,
  `year_months` varchar(23) DEFAULT NULL,
  `YearOfSale` int(4) DEFAULT NULL,
  `MonthOfSale` int(2) DEFAULT NULL,
  `Sales_BY_Month` decimal(37,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_sales_by_top_3_employees_updated`
--

LOCK TABLES `monthly_sales_by_top_3_employees_updated` WRITE;
/*!40000 ALTER TABLE `monthly_sales_by_top_3_employees_updated` DISABLE KEYS */;
INSERT INTO `monthly_sales_by_top_3_employees_updated` VALUES (4,'Margaret Peacock','1996-7',1996,7,12988.9000),(4,'Margaret Peacock','1996-8',1996,8,3670.5000),(4,'Margaret Peacock','1996-9',1996,9,3575.1000),(4,'Margaret Peacock','1996-10',1996,10,14422.1000),(4,'Margaret Peacock','1996-11',1996,11,12017.4000),(4,'Margaret Peacock','1996-12',1996,12,6440.8000),(4,'Margaret Peacock','1997-1',1997,1,25620.1000),(4,'Margaret Peacock','1997-2',1997,2,13530.3000),(4,'Margaret Peacock','1997-3',1997,3,5644.8000),(4,'Margaret Peacock','1997-4',1997,4,14333.1500),(4,'Margaret Peacock','1997-5',1997,5,7573.2000),(4,'Margaret Peacock','1997-6',1997,6,4232.4000),(4,'Margaret Peacock','1997-7',1997,7,6104.8000),(4,'Margaret Peacock','1997-8',1997,8,16766.7900),(4,'Margaret Peacock','1997-9',1997,9,8147.6300),(4,'Margaret Peacock','1997-10',1997,10,10996.5300),(4,'Margaret Peacock','1997-11',1997,11,7684.7500),(4,'Margaret Peacock','1997-12',1997,12,18843.2500),(4,'Margaret Peacock','1998-1',1998,1,21029.3000),(4,'Margaret Peacock','1998-2',1998,2,11325.0500),(4,'Margaret Peacock','1998-3',1998,3,8835.3900),(4,'Margaret Peacock','1998-4',1998,4,10130.2100),(4,'Margaret Peacock','1998-5',1998,5,6275.0000),(1,'Nancy Davolio','1996-7',1996,7,2018.6000),(1,'Nancy Davolio','1996-8',1996,8,6007.1000),(1,'Nancy Davolio','1996-9',1996,9,6883.7000),(1,'Nancy Davolio','1996-10',1996,10,4061.4000),(1,'Nancy Davolio','1996-11',1996,11,10261.2000),(1,'Nancy Davolio','1996-12',1996,12,9557.0000),(1,'Nancy Davolio','1997-1',1997,1,7331.6000),(1,'Nancy Davolio','1997-2',1997,2,2504.6000),(1,'Nancy Davolio','1997-3',1997,3,5493.9000),(1,'Nancy Davolio','1997-4',1997,4,240.0000),(1,'Nancy Davolio','1997-5',1997,5,9168.2500),(1,'Nancy Davolio','1997-6',1997,6,6112.6500),(1,'Nancy Davolio','1997-7',1997,7,19997.8800),(1,'Nancy Davolio','1997-8',1997,8,5119.1000),(1,'Nancy Davolio','1997-9',1997,9,8461.5000),(1,'Nancy Davolio','1997-10',1997,10,12920.1500),(1,'Nancy Davolio','1997-11',1997,11,4106.7000),(1,'Nancy Davolio','1997-12',1997,12,16077.2500),(1,'Nancy Davolio','1998-1',1998,1,8712.1300),(1,'Nancy Davolio','1998-2',1998,2,11586.9000),(1,'Nancy Davolio','1998-3',1998,3,24847.4500),(1,'Nancy Davolio','1998-4',1998,4,13620.9000),(1,'Nancy Davolio','1998-5',1998,5,7053.7500),(3,'Janet Leverling','1996-7',1996,7,2998.2000),(3,'Janet Leverling','1996-8',1996,8,3557.2000),(3,'Janet Leverling','1996-9',1996,9,1762.0000),(3,'Janet Leverling','1996-10',1996,10,4317.6000),(3,'Janet Leverling','1996-11',1996,11,3838.0000),(3,'Janet Leverling','1996-12',1996,12,2758.8000),(3,'Janet Leverling','1997-1',1997,1,7477.9000),(3,'Janet Leverling','1997-2',1997,2,10581.3000),(3,'Janet Leverling','1997-3',1997,3,11599.4000),(3,'Janet Leverling','1997-4',1997,4,10297.3500),(3,'Janet Leverling','1997-5',1997,5,18639.8000),(3,'Janet Leverling','1997-6',1997,6,5871.6000),(3,'Janet Leverling','1997-7',1997,7,1109.1500),(3,'Janet Leverling','1997-8',1997,8,5881.8000),(3,'Janet Leverling','1997-9',1997,9,3595.5000),(3,'Janet Leverling','1997-10',1997,10,8572.7500),(3,'Janet Leverling','1997-11',1997,11,9668.0600),(3,'Janet Leverling','1997-12',1997,12,18494.0000),(3,'Janet Leverling','1998-1',1998,1,27833.3500),(3,'Janet Leverling','1998-2',1998,2,21540.2400),(3,'Janet Leverling','1998-3',1998,3,18358.3500),(3,'Janet Leverling','1998-4',1998,4,14298.9500);
/*!40000 ALTER TABLE `monthly_sales_by_top_3_employees_updated` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:44
