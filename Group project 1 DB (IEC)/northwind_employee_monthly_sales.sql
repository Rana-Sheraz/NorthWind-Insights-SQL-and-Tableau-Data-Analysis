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
-- Table structure for table `employee_monthly_sales`
--

DROP TABLE IF EXISTS `employee_monthly_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee_monthly_sales` (
  `EmployeeID` int(11) NOT NULL DEFAULT '0',
  `Employee_Name` varchar(31) DEFAULT NULL,
  `year_months` varchar(23) DEFAULT NULL,
  `Sales_BY_Month` decimal(37,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_monthly_sales`
--

LOCK TABLES `employee_monthly_sales` WRITE;
/*!40000 ALTER TABLE `employee_monthly_sales` DISABLE KEYS */;
INSERT INTO `employee_monthly_sales` VALUES (1,'Nancy Davolio','1996-7',2018.6000),(1,'Nancy Davolio','1996-8',6007.1000),(1,'Nancy Davolio','1996-9',6883.7000),(1,'Nancy Davolio','1996-10',4061.4000),(1,'Nancy Davolio','1996-11',10261.2000),(1,'Nancy Davolio','1996-12',9557.0000),(1,'Nancy Davolio','1997-1',7331.6000),(1,'Nancy Davolio','1997-2',2504.6000),(1,'Nancy Davolio','1997-3',5493.9000),(1,'Nancy Davolio','1997-4',240.0000),(1,'Nancy Davolio','1997-5',9168.2500),(1,'Nancy Davolio','1997-6',6112.6500),(1,'Nancy Davolio','1997-7',19997.8800),(1,'Nancy Davolio','1997-8',5119.1000),(1,'Nancy Davolio','1997-9',8461.5000),(1,'Nancy Davolio','1997-10',12920.1500),(1,'Nancy Davolio','1997-11',4106.7000),(1,'Nancy Davolio','1997-12',16077.2500),(1,'Nancy Davolio','1998-1',8712.1300),(1,'Nancy Davolio','1998-2',11586.9000),(1,'Nancy Davolio','1998-3',24847.4500),(1,'Nancy Davolio','1998-4',13620.9000),(1,'Nancy Davolio','1998-5',7053.7500),(2,'Andrew Fuller','1996-7',1176.0000),(2,'Andrew Fuller','1996-8',1814.0000),(2,'Andrew Fuller','1996-9',2950.8000),(2,'Andrew Fuller','1996-10',5725.7000),(2,'Andrew Fuller','1996-11',4759.0000),(2,'Andrew Fuller','1996-12',6409.2000),(2,'Andrew Fuller','1997-1',3150.2000),(2,'Andrew Fuller','1997-2',1584.0000),(2,'Andrew Fuller','1997-3',2905.1000),(2,'Andrew Fuller','1997-4',14019.3000),(2,'Andrew Fuller','1997-5',4589.6000),(2,'Andrew Fuller','1997-6',7058.6000),(2,'Andrew Fuller','1997-7',10320.0000),(2,'Andrew Fuller','1997-8',57.5000),(2,'Andrew Fuller','1997-9',9622.2500),(2,'Andrew Fuller','1997-10',10164.8000),(2,'Andrew Fuller','1997-11',3652.5000),(2,'Andrew Fuller','1997-12',7834.7500),(2,'Andrew Fuller','1998-1',4693.9500),(2,'Andrew Fuller','1998-2',26056.9000),(2,'Andrew Fuller','1998-3',14350.5600),(2,'Andrew Fuller','1998-4',32681.0500),(2,'Andrew Fuller','1998-5',2173.5000),(3,'Janet Leverling','1996-7',2998.2000),(3,'Janet Leverling','1996-8',3557.2000),(3,'Janet Leverling','1996-9',1762.0000),(3,'Janet Leverling','1996-10',4317.6000),(3,'Janet Leverling','1996-11',3838.0000),(3,'Janet Leverling','1996-12',2758.8000),(3,'Janet Leverling','1997-1',7477.9000),(3,'Janet Leverling','1997-2',10581.3000),(3,'Janet Leverling','1997-3',11599.4000),(3,'Janet Leverling','1997-4',10297.3500),(3,'Janet Leverling','1997-5',18639.8000),(3,'Janet Leverling','1997-6',5871.6000),(3,'Janet Leverling','1997-7',1109.1500),(3,'Janet Leverling','1997-8',5881.8000),(3,'Janet Leverling','1997-9',3595.5000),(3,'Janet Leverling','1997-10',8572.7500),(3,'Janet Leverling','1997-11',9668.0600),(3,'Janet Leverling','1997-12',18494.0000),(3,'Janet Leverling','1998-1',27833.3500),(3,'Janet Leverling','1998-2',21540.2400),(3,'Janet Leverling','1998-3',18358.3500),(3,'Janet Leverling','1998-4',14298.9500),(4,'Margaret Peacock','1996-7',12988.9000),(4,'Margaret Peacock','1996-8',3670.5000),(4,'Margaret Peacock','1996-9',3575.1000),(4,'Margaret Peacock','1996-10',14422.1000),(4,'Margaret Peacock','1996-11',12017.4000),(4,'Margaret Peacock','1996-12',6440.8000),(4,'Margaret Peacock','1997-1',25620.1000),(4,'Margaret Peacock','1997-2',13530.3000),(4,'Margaret Peacock','1997-3',5644.8000),(4,'Margaret Peacock','1997-4',14333.1500),(4,'Margaret Peacock','1997-5',7573.2000),(4,'Margaret Peacock','1997-6',4232.4000),(4,'Margaret Peacock','1997-7',6104.8000),(4,'Margaret Peacock','1997-8',16766.7900),(4,'Margaret Peacock','1997-9',8147.6300),(4,'Margaret Peacock','1997-10',10996.5300),(4,'Margaret Peacock','1997-11',7684.7500),(4,'Margaret Peacock','1997-12',18843.2500),(4,'Margaret Peacock','1998-1',21029.3000),(4,'Margaret Peacock','1998-2',11325.0500),(4,'Margaret Peacock','1998-3',8835.3900),(4,'Margaret Peacock','1998-4',10130.2100),(4,'Margaret Peacock','1998-5',6275.0000),(5,'Steven Buchanan','1996-7',1741.2000),(5,'Steven Buchanan','1996-9',1420.0000),(5,'Steven Buchanan','1996-10',1470.0000),(5,'Steven Buchanan','1996-11',4106.4000),(5,'Steven Buchanan','1996-12',13227.6000),(5,'Steven Buchanan','1997-3',2634.4000),(5,'Steven Buchanan','1997-5',5127.5000),(5,'Steven Buchanan','1997-6',3124.9000),(5,'Steven Buchanan','1997-7',6475.4000),(5,'Steven Buchanan','1997-8',3636.7000),(5,'Steven Buchanan','1997-9',2091.7000),(5,'Steven Buchanan','1997-10',8365.2000),(5,'Steven Buchanan','1997-11',509.7500),(5,'Steven Buchanan','1997-12',629.5000),(5,'Steven Buchanan','1998-1',12280.5000),(5,'Steven Buchanan','1998-2',5872.4000),(5,'Steven Buchanan','1998-3',2644.6000),(5,'Steven Buchanan','1998-4',210.0000),(6,'Michael Suyama','1996-7',2587.9000),(6,'Michael Suyama','1996-8',2595.4000),(6,'Michael Suyama','1996-9',4465.6000),(6,'Michael Suyama','1996-11',2299.8000),(6,'Michael Suyama','1996-12',5782.4000),(6,'Michael Suyama','1997-1',1500.0000),(6,'Michael Suyama','1997-2',1351.6000),(6,'Michael Suyama','1997-3',1258.2000),(6,'Michael Suyama','1997-4',9690.7400),(6,'Michael Suyama','1997-5',751.7000),(6,'Michael Suyama','1997-6',4228.3000),(6,'Michael Suyama','1997-7',1301.0000),(6,'Michael Suyama','1997-8',3982.2500),(6,'Michael Suyama','1997-9',671.3500),(6,'Michael Suyama','1997-10',6690.9000),(6,'Michael Suyama','1997-11',6566.0500),(6,'Michael Suyama','1997-12',7999.9100),(6,'Michael Suyama','1998-1',1975.6000),(6,'Michael Suyama','1998-2',1953.4000),(6,'Michael Suyama','1998-3',5206.0000),(6,'Michael Suyama','1998-4',5340.0000),(7,'Robert King','1996-8',479.4000),(7,'Robert King','1996-9',1330.8000),(7,'Robert King','1996-10',4577.2000),(7,'Robert King','1996-11',11717.4000),(7,'Robert King','1997-1',13703.4000),(7,'Robert King','1997-2',3891.0000),(7,'Robert King','1997-3',3867.2000),(7,'Robert King','1997-4',5707.3500),(7,'Robert King','1997-5',6041.2500),(7,'Robert King','1997-6',2082.0000),(7,'Robert King','1997-7',6144.6000),(7,'Robert King','1997-8',7853.0500),(7,'Robert King','1997-9',13839.2900),(7,'Robert King','1997-10',642.0000),(7,'Robert King','1997-11',1990.0000),(7,'Robert King','1997-12',928.0000),(7,'Robert King','1998-1',6610.0000),(7,'Robert King','1998-2',6795.5500),(7,'Robert King','1998-3',7130.8000),(7,'Robert King','1998-4',34792.6500),(7,'Robert King','1998-5',1173.0500),(8,'Laura Callahan','1996-7',1726.0000),(8,'Laura Callahan','1996-8',8485.8000),(8,'Laura Callahan','1996-9',5248.0000),(8,'Laura Callahan','1996-10',385.2000),(8,'Laura Callahan','1996-11',704.8000),(8,'Laura Callahan','1996-12',6611.6000),(8,'Laura Callahan','1997-1',6701.1000),(8,'Laura Callahan','1997-2',7764.4000),(8,'Laura Callahan','1997-3',4806.1000),(8,'Laura Callahan','1997-4',800.5000),(8,'Laura Callahan','1997-5',4792.6000),(8,'Laura Callahan','1997-6',2616.0500),(8,'Laura Callahan','1997-7',3984.1000),(8,'Laura Callahan','1997-8',4756.5000),(8,'Laura Callahan','1997-9',2891.4000),(8,'Laura Callahan','1997-10',11598.1700),(8,'Laura Callahan','1997-11',4337.5000),(8,'Laura Callahan','1997-12',4728.1000),(8,'Laura Callahan','1998-1',12092.7500),(8,'Laura Callahan','1998-2',106.0000),(8,'Laura Callahan','1998-3',20885.7000),(8,'Laura Callahan','1998-4',14055.3000),(8,'Laura Callahan','1998-5',3223.3600),(9,'Anne Dodsworth','1996-7',4955.3000),(9,'Anne Dodsworth','1996-10',6244.4000),(9,'Anne Dodsworth','1996-12',166.0000),(9,'Anne Dodsworth','1997-1',1208.5000),(9,'Anne Dodsworth','1997-3',1770.8000),(9,'Anne Dodsworth','1997-4',611.0000),(9,'Anne Dodsworth','1997-5',139.8000),(9,'Anne Dodsworth','1997-6',3761.5000),(9,'Anne Dodsworth','1997-7',28.0000),(9,'Anne Dodsworth','1997-8',1928.0000),(9,'Anne Dodsworth','1997-9',10412.4000),(9,'Anne Dodsworth','1997-10',378.0000),(9,'Anne Dodsworth','1997-11',7398.0500),(9,'Anne Dodsworth','1997-12',1941.5000),(9,'Anne Dodsworth','1998-1',5627.1400),(9,'Anne Dodsworth','1998-2',19325.5100),(9,'Anne Dodsworth','1998-3',7566.6000),(9,'Anne Dodsworth','1998-4',9501.5000);
/*!40000 ALTER TABLE `employee_monthly_sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:35
