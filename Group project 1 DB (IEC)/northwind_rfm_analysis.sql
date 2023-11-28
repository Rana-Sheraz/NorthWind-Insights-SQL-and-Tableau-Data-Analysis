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
-- Table structure for table `rfm_analysis`
--

DROP TABLE IF EXISTS `rfm_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rfm_analysis` (
  `CustomerName` varchar(40),
  `DaysBetweenLastOrders` int(7) DEFAULT NULL,
  `R_Score` bigint(21) unsigned DEFAULT NULL,
  `OrderFrequency` bigint(21) NOT NULL DEFAULT '0',
  `F_Score` bigint(21) unsigned DEFAULT NULL,
  `TotalAmountSpent` decimal(37,4) DEFAULT NULL,
  `M_Score` bigint(21) unsigned DEFAULT NULL,
  `RFM_Cell` varchar(63) DEFAULT NULL,
  `RFM_Score` decimal(27,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfm_analysis`
--

LOCK TABLES `rfm_analysis` WRITE;
/*!40000 ALTER TABLE `rfm_analysis` DISABLE KEYS */;
INSERT INTO `rfm_analysis` VALUES ('Bon app\'',0,5,17,5,23850.9500,5,'555',5.0000),('Rattlesnake Canyon Grocery',0,5,18,5,52245.9000,5,'555',5.0000),('Simons bistro',0,5,7,3,18138.4500,4,'534',4.0000),('Richter Supermarkt',0,5,10,4,20033.2000,4,'544',4.3333),('Pericles Comidas clsicas',1,5,6,2,4242.2000,2,'522',3.0000),('LILA-Supermercado',1,5,14,5,17825.0600,4,'554',4.6667),('Lehmanns Marktstand',1,5,15,5,21282.0200,4,'554',4.6667),('Ernst Handel',1,5,30,5,113236.6800,5,'555',5.0000),('Tortuga Restaurante',2,5,10,4,10812.1500,3,'543',4.0000),('Queen Cozinha',2,5,13,4,30226.1000,5,'545',4.6667),('Drachenblut Delikatessen',2,5,6,2,3763.2100,2,'522',3.0000),('White Clover Markets',5,5,14,5,29073.4500,5,'555',5.0000),('Save-a-lot Markets',5,5,31,5,115673.3900,5,'555',5.0000),('Franchi S.p.A.',6,5,6,2,1545.7000,1,'521',2.6667),('Reggiani Caseifici',6,5,12,4,7555.6000,3,'543',4.0000),('Great Lakes Food Market',6,5,11,4,19711.1300,4,'544',4.3333),('Hungry Owl All-Night Grocers',6,5,19,5,57317.3900,5,'555',5.0000),('Ricardo Adocicados',7,4,11,4,12924.4000,4,'444',4.0000),('North/South',7,4,3,1,649.0000,1,'411',2.0000),('Blauer See Delikatessen',7,4,7,2,3239.8000,2,'422',2.6667),('Cactus Comidas para llevar',8,4,6,2,1814.8000,1,'421',2.3333),('Eastern Connection',8,4,8,3,15033.6600,4,'434',3.6667),('HILARION-Abastos',8,4,18,5,23611.5800,5,'455',4.6667),('Piccolo und mehr',9,4,10,4,26259.9500,5,'445',4.3333),('Folk och f HB',9,4,19,5,32555.5500,5,'455',4.6667),('Hanari Carnes',9,4,14,5,34101.1500,5,'455',4.6667),('La maison d\'Asie',9,4,14,5,10272.3500,3,'453',4.0000),('Gourmet Lanchonetes',12,4,9,3,8702.2300,3,'433',3.3333),('Bottom-Dollar Markets',12,4,14,4,22607.7000,4,'444',4.0000),('Wolski  Zajazd',13,4,7,3,3531.9500,2,'432',3.0000),('Die Wandernde Kuh',13,4,10,4,10653.8500,3,'443',3.6667),('Spcialits du monde',14,4,4,1,2423.3500,1,'411',2.0000),('Comrcio Mineiro',14,4,5,1,3810.7500,2,'412',2.3333),('Chop-suey Chinese',14,4,8,3,12886.3000,4,'434',3.6667),('Godos Cocina Tpica',15,3,10,3,11830.1000,3,'333',3.0000),('LINO-Delicateses',15,3,12,4,17889.5500,4,'344',3.6667),('Suprmes dlices',15,4,12,4,24704.4000,5,'445',4.3333),('Old World Delicatessen',16,3,10,4,16325.1500,4,'344',3.6667),('Kniglich Essen',20,3,14,5,31745.7500,5,'355',4.3333),('Wartian Herkku',21,3,15,5,16617.1000,4,'354',4.0000),('Ottilies Kseladen',22,3,10,4,13157.5000,4,'344',3.6667),('QUICK-Stop',22,3,28,5,117483.3900,5,'355',4.3333),('B\'s Beverages',22,3,10,3,6089.9000,3,'333',3.0000),('Rancho grande',23,3,5,2,2844.1000,1,'321',2.0000),('Lonesome Pine Restaurant',23,3,8,3,4258.6000,2,'332',2.6667),('Sant Gourmet',26,3,6,2,5735.1500,3,'323',2.6667),('Around the Horn',26,3,13,4,13806.5000,4,'344',3.6667),('Romero y tomillo',27,3,5,2,1467.2900,1,'321',2.0000),('Alfreds Futterkiste',27,3,6,2,4596.2000,2,'322',2.3333),('Frankenversand',27,3,15,5,28722.7100,5,'355',4.3333),('Princesa Isabel Vinhos',28,3,5,2,5317.1000,2,'322',2.3333),('Wilman Kala',29,3,7,3,3161.3500,2,'332',2.6667),('Maison Dewey',29,3,7,3,10430.5800,3,'333',3.0000),('The Cracker Box',30,2,3,1,1947.2400,1,'211',1.3333),('Vaffeljernet',34,2,11,4,16643.8000,4,'244',3.3333),('The Big Cheese',35,2,4,1,3361.0000,2,'212',1.6667),('Que Delcia',36,2,9,3,6973.6300,3,'233',2.6667),('Ocano Atlntico Ltda.',37,2,5,2,3460.2000,2,'222',2.0000),('Split Rail Beer & Ale',42,2,9,3,12489.7000,4,'234',3.0000),('La corne d\'abondance',43,2,4,1,1992.0500,1,'211',1.3333),('France restauration',43,2,3,1,3172.1600,2,'212',1.6667),('Blido Comidas preparadas',43,2,3,1,5297.8000,2,'212',1.6667),('Toms Spezialitten',44,2,6,2,4954.0000,2,'222',2.0000),('Furia Bacalhau e Frutos do Mar',48,2,8,3,7151.5500,3,'233',2.6667),('Magazzini Alimentari Riuniti',51,2,10,3,7603.8500,3,'233',2.6667),('Morgenstern Gesundkost',55,2,5,2,5042.2000,2,'222',2.0000),('Wellington Importadora',58,2,9,3,6480.7000,3,'233',2.6667),('Island Trading',61,2,10,3,6146.3000,3,'233',2.6667),('Galera del gastrnomo',62,2,5,2,836.7000,1,'221',1.6667),('Ana Trujillo Emparedados y helados',63,2,4,1,1402.9500,1,'211',1.3333),('Berglunds snabbkp',63,2,18,5,26968.1500,5,'255',4.0000),('Du monde entier',79,1,4,1,1615.9000,1,'111',1.0000),('Let\'s Stop N Shop',83,1,4,1,3490.0200,2,'112',1.3333),('Seven Seas Imports',91,1,9,3,17172.0500,4,'134',2.6667),('Antonio Moreno Taquera',98,1,7,2,7515.3500,3,'123',2.0000),('Consolidated Holdings',103,1,3,1,1719.1000,1,'111',1.0000),('Victuailles en stock',103,1,10,4,9937.1000,3,'143',2.6667),('Tradio Hipermercados',107,1,6,2,7310.6200,3,'123',2.0000),('Blondesddsl pre et fils',114,1,11,4,19088.0000,4,'144',3.0000),('Trail\'s Head Gourmet Provisioners',118,1,3,1,1571.2000,1,'111',1.0000),('Laughing Bacchus Wine Cellars',125,1,3,1,522.5000,1,'111',1.0000),('Folies gourmandes',135,1,5,1,11666.9000,3,'113',1.6667),('GROSELLA-Restaurante',139,1,2,1,1488.7000,1,'111',1.0000),('Vins et alcools Chevalier',175,1,5,2,1480.0000,1,'121',1.3333),('Familia Arquibaldo',187,1,7,3,4438.9000,2,'132',2.0000),('Mre Paillarde',188,1,13,4,32203.9000,5,'145',3.3333),('Hungry Coyote Import Store',240,1,5,2,3063.2000,2,'122',1.6667),('Lazy K Kountry Store',349,1,2,1,357.0000,1,'111',1.0000),('Centro comercial Moctezuma',657,1,1,1,100.8000,1,'111',1.0000);
/*!40000 ALTER TABLE `rfm_analysis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  6:40:31
