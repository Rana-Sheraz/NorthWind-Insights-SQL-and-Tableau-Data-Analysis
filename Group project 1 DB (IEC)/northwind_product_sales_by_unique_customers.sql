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
-- Table structure for table `product_sales_by_unique_customers`
--

DROP TABLE IF EXISTS `product_sales_by_unique_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_sales_by_unique_customers` (
  `ProductID` int(11) DEFAULT '0',
  `ProductName` varchar(40),
  `categoryname` varchar(15),
  `totalsale` decimal(37,4) DEFAULT NULL,
  `unique_customers` bigint(21) NOT NULL DEFAULT '0',
  `rank` bigint(21) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sales_by_unique_customers`
--

LOCK TABLES `product_sales_by_unique_customers` WRITE;
/*!40000 ALTER TABLE `product_sales_by_unique_customers` DISABLE KEYS */;
INSERT INTO `product_sales_by_unique_customers` VALUES (38,'Cte de Blaye','Beverages',149984.2000,19,1),(29,'Thringer Rostbratwurst','Meat/Poultry',87736.4000,27,2),(59,'Raclette Courdavault','Dairy Products',76296.0000,43,3),(60,'Camembert Pierrot','Dairy Products',50286.0000,36,4),(62,'Tarte au sucre','Confections',49827.9000,33,5),(56,'Gnocchi di nonna Alice','Grains/Cereals',45121.2000,34,6),(51,'Manjimup Dried Apples','Produce',44742.6000,32,7),(17,'Alice Mutton','Meat/Poultry',35482.2000,24,8),(18,'Carnarvon Tigers','Seafood',31987.5000,22,9),(28,'Rssle Sauerkraut','Produce',26865.6000,26,10),(72,'Mozzarella di Giovanni','Dairy Products',25738.8000,33,11),(43,'Ipoh Coffee','Beverages',25079.2000,26,12),(69,'Gudbrandsdalsost','Dairy Products',24307.2000,24,13),(20,'Sir Rodney\'s Marmalade','Confections',23635.8000,14,14),(64,'Wimmers gute Semmelkndel','Grains/Cereals',23009.0000,19,15),(7,'Uncle Bob\'s Organic Dried Pears','Produce',22464.0000,20,16),(10,'Ikura','Seafood',22140.2000,26,17),(26,'Gumbr Gummibrchen','Confections',21534.9000,24,18),(53,'Perth Pasties','Meat/Poultry',21510.2000,25,19),(71,'Flotemysost','Dairy Products',20876.5000,27,20),(55,'Pt chinois','Meat/Poultry',19512.0000,26,21),(40,'Boston Crab Meat','Seafood',19048.3000,30,22),(16,'Pavlova','Confections',18748.0500,31,23),(2,'Chang','Beverages',18559.2000,28,24),(63,'Vegie-spread','Condiments',17696.3000,15,25),(76,'Lakkalikri','Beverages',16794.0000,33,26),(61,'Sirop d\'rable','Condiments',16438.8000,22,27),(31,'Gorgonzola Telino','Dairy Products',16172.5000,34,28),(27,'Schoggi Schokolade','Confections',15231.5000,9,29),(30,'Nord-Ost Matjeshering','Seafood',14775.5400,22,30),(65,'Louisiana Fiery Hot Pepper Sauce','Condiments',14607.0000,23,31),(36,'Inlagd Sill','Seafood',14542.6000,23,32),(35,'Steeleye Stout','Beverages',14536.8000,28,33),(1,'Chai','Beverages',14277.6000,31,34),(11,'Queso Cabrales','Dairy Products',13902.0000,32,35),(8,'Northwoods Cranberry Sauce','Condiments',13760.0000,13,36),(39,'Chartreuse verte','Beverages',13150.8000,26,37),(12,'Queso Manchego La Pastora','Dairy Products',12866.8000,12,38),(70,'Outback Lager','Beverages',11472.0000,30,39),(44,'Gula Malacca','Condiments',10524.2000,18,40),(77,'Original Frankfurter grne Soe','Condiments',9685.0000,28,41),(21,'Sir Rodney\'s Scones','Confections',9636.0000,29,42),(49,'Maxilaku','Confections',9500.0000,19,43),(4,'Chef Anton\'s Cajun Seasoning','Condiments',9424.8000,17,44),(68,'Scottish Longbreads','Confections',9362.5000,27,45),(42,'Singaporean Hokkien Fried Mee','Grains/Cereals',9332.4000,21,46),(32,'Mascarpone Fabioli','Dairy Products',9171.2000,12,47),(41,'Jack\'s New England Clam Chowder','Seafood',9098.1000,34,48),(9,'Mishi Kobe Niku','Meat/Poultry',8827.0000,5,49),(75,'Rhnbru Klosterbier','Beverages',8650.5500,33,50),(14,'Tofu','Produce',8630.4000,18,51),(57,'Ravioli Angelo','Grains/Cereals',7807.8000,21,52),(6,'Grandma\'s Boysenberry Spread','Condiments',7345.0000,11,53),(22,'Gustaf\'s Knckebrd','Grains/Cereals',7232.4000,14,54),(34,'Sasquatch Ale','Beverages',6678.0000,14,55),(58,'Escargots de Bourgogne','Seafood',6664.7500,17,56),(19,'Teatime Chocolate Biscuits','Confections',6159.5000,28,57),(46,'Spegesild','Seafood',6144.0000,23,58),(5,'Chef Anton\'s Gumbo Mix','Condiments',5801.1500,9,59),(13,'Konbu','Seafood',5234.4000,30,60),(54,'Tourtire','Meat/Poultry',5121.0000,28,61),(23,'Tunnbrd','Grains/Cereals',4840.2000,17,62),(24,'Guaran Fantstica','Beverages',4782.6000,34,63),(45,'Rogede sild','Seafood',4740.5000,12,64),(47,'Zaanse koeken','Confections',4358.6000,18,65),(73,'Rd Kaviar','Seafood',4200.0000,11,66),(25,'NuNuCa Nu-Nougat-Creme','Confections',4051.6000,16,67),(66,'Louisiana Hot Spiced Okra','Condiments',3519.0000,8,68),(50,'Valkoinen suklaa','Confections',3510.0000,9,69),(52,'Filo Mix','Grains/Cereals',3383.8000,27,70),(3,'Aniseed Syrup','Condiments',3080.0000,10,71),(37,'Gravad lax','Seafood',3047.2000,6,72),(74,'Longlife Tofu','Produce',2566.0000,11,73),(67,'Laughing Lumberjack Lager','Beverages',2562.0000,10,74),(15,'Genen Shouyu','Condiments',1813.5000,6,75),(33,'Geitost','Dairy Products',1713.5000,26,76),(48,'Chocolade','Confections',1542.7500,6,77);
/*!40000 ALTER TABLE `product_sales_by_unique_customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:39
