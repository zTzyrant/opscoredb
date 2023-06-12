-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: ops-db.cf4svyje8ed5.ap-southeast-2.rds.amazonaws.com    Database: opscoredb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressid` int NOT NULL AUTO_INCREMENT,
  `fulladdress` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `longitude` text COLLATE utf8mb4_general_ci,
  `latitude` text COLLATE utf8mb4_general_ci,
  `phoneAddress` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `note` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`addressid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Jl. Raya Puputan No.88, Dangin Puri Klod, Kec. Denpasar Timur','Denpasar Timur','80234','115.22656464548832','-8.673285315817866','082130004043',''),(3,'Jl. Raya Puputan No.86, Dangin Puri Klod, Kec. Denpasar Timur','Denpasar Timur','80234','115.22063824232721','-8.66874697774729','082130004043','Fake2'),(8,'Jl raya','Badung','87953',NULL,NULL,'8768567463',''),(21,'Jl Raya Kedampang','Badung','00000','115.17237488650917','-8.661293838429271','0821303000022','Note'),(25,'Jl raya kedampang','Badung','82199',NULL,NULL,'082130306677','tESt'),(28,'Jl renon samping stikom','Denpasar','80042',NULL,NULL,'78876867876',''),(37,'21','123','1231',NULL,NULL,'23123','12312321'),(39,'Megati, Kec. Selemadeg Tim., Kabupaten Tabanan, Bali 82161','Tabanan','82161','115.05333615548781','-8.497534925133717','082002300450',''),(41,'Jl. Gunung Rinjani No.9, Tegal Harum, Kec. Denpasar Bar.','Denpasar Barat','80119','115.19824519013977','-8.666546999103725','08123945448',''),(42,'Jl. Pulau Biak No.12, Dauh Puri Kauh, Kec. Denpasar Bar., Kota Denpasar, Bali','Denpasar Barat','80113','115.20837131748183','-8.667440574227024','082147114355','-'),(43,'Jl. Tukad Yeh Aya No.35, Renon, Denpasar Selatan, Kota Denpasar, Bali','Denpasar Selatan','80234','115.22869766676581','-8.677384119051247','081999848698',''),(44,'Jl. Waturenggong No.42, Dauh Puri Klod, Kec. Denpasar Bar., Kota Denpasar, Bali','Denpasar Barat','80113','115.21747529324317','-8.677196589557196','0361227720','-'),(45,'Jl. A. Yani No.53, Kaliuntu, Kec. Buleleng, Kabupaten Buleleng, Bali','Buleleng','81114','115.08745691460935','-8.11013066430907','087843053875',''),(46,'Jl. Cok Rai Pudak, MAS, Kecamatan Ubud, Kabupaten Gianyar, Bali','Gianyar','80571','115.27238318137499','-8.530040874708918','0895627433434',''),(47,'Jl. Raya Penelokan, Batur Tengah, Kec. Kintamani, Kabupaten Bangli, Bali','Bangli','80652','115.35435693308644','-8.278228348858743','03665531117','');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminprinting`
--

DROP TABLE IF EXISTS `adminprinting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminprinting` (
  `adminprintingid` int NOT NULL AUTO_INCREMENT,
  `position` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cardid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `merchantid` int NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`adminprintingid`),
  KEY `userid` (`userid`),
  KEY `merchantid` (`merchantid`),
  CONSTRAINT `adminprinting_ibfk_4` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE,
  CONSTRAINT `adminprinting_ibfk_5` FOREIGN KEY (`merchantid`) REFERENCES `merchant` (`merchantid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminprinting`
--

LOCK TABLES `adminprinting` WRITE;
/*!40000 ALTER TABLE `adminprinting` DISABLE KEYS */;
INSERT INTO `adminprinting` VALUES (27,'Owner','01',18,38),(30,'Owner','54353',2,41),(31,'Owner','432',3,42),(33,'Owner','11002402',23,44),(35,'Owner','01',25,46),(36,'Owner','01',26,47),(37,'Owner','01',27,48),(38,'Owner','01',28,49),(39,'Owner','01',29,50),(40,'Owner','01',30,51),(41,'Owner','01',31,52);
/*!40000 ALTER TABLE `adminprinting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectionaddress`
--

DROP TABLE IF EXISTS `collectionaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collectionaddress` (
  `idcollectionadd` int NOT NULL AUTO_INCREMENT,
  `addressid` int NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`idcollectionadd`),
  KEY `addressid` (`addressid`),
  KEY `consid` (`userid`),
  CONSTRAINT `collectionaddress_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `collectionaddress_ibfk_3` FOREIGN KEY (`addressid`) REFERENCES `address` (`addressid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectionaddress`
--

LOCK TABLES `collectionaddress` WRITE;
/*!40000 ALTER TABLE `collectionaddress` DISABLE KEYS */;
INSERT INTO `collectionaddress` VALUES (1,25,2),(4,28,2);
/*!40000 ALTER TABLE `collectionaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `userid` int NOT NULL,
  `consid` int NOT NULL AUTO_INCREMENT,
  `addressid` int NOT NULL,
  PRIMARY KEY (`consid`),
  KEY `userid` (`userid`),
  KEY `addressid` (`addressid`),
  CONSTRAINT `consumer_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
INSERT INTO `consumer` VALUES (2,2,0),(3,3,0),(6,6,0);
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developer` (
  `devid` int NOT NULL AUTO_INCREMENT,
  `position` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `userid` int NOT NULL,
  PRIMARY KEY (`devid`),
  KEY `userid` (`userid`),
  CONSTRAINT `developer_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES (1,'Full-Stack Developer',1);
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant` (
  `merchantid` int NOT NULL AUTO_INCREMENT,
  `merchantuname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `merchantname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `datecreated` date NOT NULL,
  `opentime` time NOT NULL,
  `closetime` time NOT NULL,
  `merchantlogo` text COLLATE utf8mb4_general_ci NOT NULL,
  `subscription_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ownerid` int NOT NULL,
  `addressid` int NOT NULL,
  PRIMARY KEY (`merchantid`),
  KEY `addressid` (`addressid`),
  KEY `ownerid` (`ownerid`),
  CONSTRAINT `merchant_ibfk_1` FOREIGN KEY (`addressid`) REFERENCES `address` (`addressid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (2,'datayasa','Datayasa','2023-01-28','09:00:00','20:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/ef2919926ea51406add64e3001682825160424.png','Annual',30,1),(3,'renonprint','Renon Printing','2023-01-28','09:00:00','20:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/ef2919926ea51406add64e3001682825160424.png','Monthly',31,3),(18,'ExamPrinting','Exam Print 1','2023-04-06','09:00:00','22:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/b39695bcc5e59adbcfa04ab001684860721285.png','Monthly',27,21),(23,'salamandegpr','Salamandeg Printing Dumy','2023-05-25','08:00:00','22:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/ce6ed1b1b71b98171f858ba001684949404823.png','Monthly',33,39),(25,'rinjani_printing','Rinjani Printing','2023-05-26','07:00:00','10:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/ad81b71877cfa8418c5f67e011685104785282.jpeg','Monthly',35,41),(26,'hartamas','Hartamas Fotocopy & Print','2023-05-26','09:00:00','09:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/ad81b71877cfa8418c5f67e021685106367299.jpeg','Monthly',36,42),(27,'familyfotocopy','Family Fotocopy Yeh Aya','2023-05-28','08:00:00','22:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/1a02965289b22eb499160b1001685239093246.jpeg','Monthly',37,43),(28,'waturenggong_fotocopy','Waturenggong Fotocopy','2023-05-28','08:00:00','20:30:00','https://api.ops-express.site:3000/upload/merchant/images/logo/1a02965289b22eb499160b1011685239751148.png','Monthly',38,44),(29,'BaliStarsSingaraja','Bali Stars Singaraja','2023-06-04','07:00:00','21:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/e5e5690cade149c291dcc6f001685866682858.jpeg','Monthly',39,45),(30,'balistarsubud','Balistars Ubud Digital Printing & Fotocopy','2023-06-05','07:00:00','22:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/fbdc3ded2b2dd1f9ac24924001685921702776.jpeg','Monthly',40,46),(31,'radityaprint','Raditya Print','2023-06-05','08:00:00','21:00:00','https://api.ops-express.site:3000/upload/merchant/images/logo/fbdc3ded2b2dd1f9ac24924081685977892345.png','Monthly',41,47);
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdata`
--

DROP TABLE IF EXISTS `orderdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdata` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `numofcopies` int NOT NULL,
  `pages` int NOT NULL,
  `totalquantity` int NOT NULL,
  `totalcost` double NOT NULL,
  `totalWeight` double NOT NULL,
  `colortype` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `printingquality` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `productype` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fileprintingurl` text COLLATE utf8mb4_general_ci NOT NULL,
  `ordernote` text COLLATE utf8mb4_general_ci NOT NULL,
  `orderStatus` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `shippingreceipt` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `transactionid` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `productid` int NOT NULL,
  `consumerid` int NOT NULL,
  `merchantid` int NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `consumerid` (`consumerid`),
  CONSTRAINT `orderdata_ibfk_1` FOREIGN KEY (`consumerid`) REFERENCES `consumer` (`consid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdata`
--

LOCK TABLES `orderdata` WRITE;
/*!40000 ALTER TABLE `orderdata` DISABLE KEYS */;
INSERT INTO `orderdata` VALUES (12,1,11,11,14300,100,'Full Color','High','A4 80 grams','https://api.ops-express.site:3000/upload/order/document/6093e39ba72746aa929f17f061682849515117.pdf','','Waiting','PENDING','8',3,2,2),(14,1,11,11,25300,100,'Grayscale','Normal','F4 Printing','https://api.ops-express.site:3000/upload/order/document/0bdef692dda7a5a85f086e8011683017310536.pdf','','Waiting','PENDING','8',16,2,18),(19,2,11,22,26400,96.14,'Full Color','High','A4 70 grams','https://api.ops-express.site:3000/upload/order/document/03aabdb342df158ebe8e1be031683272427379.pdf','','Waiting','PENDING','8',3,2,2),(20,1,11,11,13200,68.64,'Grayscale','Draft','A4 100 grams','https://api.ops-express.site:3000/upload/order/document/22adb8272f018f6bc9b4cfd011683425968031.pdf','','Waiting','PENDING','7',3,2,2),(23,1,11,11,23100,68.64,'Grayscale','Normal','A4 100 GRM','https://api.ops-express.site:3000/upload/order/document/598859ea06b5d81c6f7b321011683510219494.pdf','','Done','Done','9',16,2,18),(33,1,11,11,23100,68.64,'Grayscale','Normal','A4 100 GRM','https://api.ops-express.site:3000/upload/order/document/a92bd1a1789529447d40947011683550913624.pdf','','Done','PENDING','12',16,2,18),(34,1,11,11,23100,68.64,'Grayscale','Normal','A4 100 GRM','https://api.ops-express.site:3000/upload/order/document/cbf215fa7c96820ad9ab06a011683561637458.pdf','','Waiting','PENDING','13',16,2,18),(35,1,11,11,23100,68.64,'Grayscale','Normal','A4 100 GRM','https://api.ops-express.site:3000/upload/order/document/f94c576fed1653c4755f180011683781840159.pdf','','Done','PENDING','14',16,2,18),(36,2,1,2,4200,12.48,'Grayscale','Normal','A4 100 GRM','https://api.ops-express.site:3000/upload/order/document/68573f6caf29bf23de3072c011684703495182.pdf','','Waiting','PENDING','15',16,2,18),(37,5,1,5,10500,31.2,'Grayscale','Normal','A4 100 GRM','https://api.ops-express.site:3000/upload/order/document/679ff57097ec135161963f6011684703623679.pdf','','Pending','PENDING','-1',16,2,18),(38,5,347,1735,3643500,10826.4,'Grayscale','Normal','A4 100 GRM','https://api.ops-express.site:3000/upload/order/document/679ff57097ec135161963f6031684703643620.pdf','','Waiting','PENDING','16',16,2,18),(39,1,11,11,77000,137.17,'Full Color Super High Quality','Holographic Printing','A3 Printing 100 gsm','https://api.ops-express.site:3000/upload/order/document/fbf35bb8023803721f5809c011684963357710.pdf','','Pending','PENDING','-1',17,2,23);
/*!40000 ALTER TABLE `orderdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printquality`
--

DROP TABLE IF EXISTS `printquality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `printquality` (
  `printqualityid` int NOT NULL AUTO_INCREMENT,
  `printquality` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `printqualityfee` double NOT NULL,
  `productid` int NOT NULL,
  PRIMARY KEY (`printqualityid`),
  KEY `productid` (`productid`),
  CONSTRAINT `printquality_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printquality`
--

LOCK TABLES `printquality` WRITE;
/*!40000 ALTER TABLE `printquality` DISABLE KEYS */;
INSERT INTO `printquality` VALUES (1,'Draft',100,3),(2,'Normal',200,3),(3,'High',300,3),(8,'Normal',200,5),(9,'High',300,5),(13,'Normal',1000,16),(14,'Cut Side',0,16),(15,'Holographic Printing',4000,17),(16,'Normal Printing',0,17),(17,'Cutting A4',2000,18),(18,'Lamination Doff + Cutting',20000,19),(19,'Lamination Glossy + Cutting',20000,19),(20,'Box Container',30000,20),(21,'No Box Container',0,20),(22,'Laminate',10000,21),(23,'No Laminate',0,21),(24,'Cutting',2500,22),(25,'No Cutting',0,22);
/*!40000 ALTER TABLE `printquality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `producttitle` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `productdescription` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `merchantid` int NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `merchantid` (`merchantid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`merchantid`) REFERENCES `merchant` (`merchantid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'A4 Paper','We provide printing on A4 paper. You can choose the type of A4 paper available. Print your document with the settings according to your wishes, we will print it with the best quality according to your preferences. ','Printing',2),(5,'A4 Paper','We provide printing on A4 paper. You can choose the type of A4 paper available. Print your document with the settings according to your wishes, we will print it with the best quality according to your preferences. ','Printing',3),(16,'A4 Paper','A4 Printing in badung with good quality','Printing',18),(17,'A4 Paper','A4 Printing with cheep price.','Printing',23),(18,'Art Carton Paper Certificate','We provide printing on art carton paper. You can choose the type of art carton paper available. Print your document with the settings according to your wishes, we will print it with the best quality according to your preferences.','Printing',25),(19,'Art Paper Name Card','We provide business card printing. You can choose the type of art paper available. Print your business cards with the settings according to your wishes, we will print them with the best quality according to your wishes.','Printing',26),(20,'Acrylic Plaque','We provide printing on acrylic plaque. You can choose the type of acrylic available. Print your document with the settings according to your wishes, we will print it with the best quality according to your preferences.','Printing',29),(21,'Roll Banner (60x160 cm)','We provide printing on roll banner. You can choose the type of albatros, luster, and grey back available. Print your document with the settings according to your wishes, we will print it with the best quality according to your preferences.','Printing',30),(22,'A3 Poster','We provide printing on art carton poster. You can choose the type of art carton available. Print your document with the settings according to your wishes, we will print it with the best quality according to your preferences.','Printing',31);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcolortype`
--

DROP TABLE IF EXISTS `productcolortype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productcolortype` (
  `colortypeid` int NOT NULL AUTO_INCREMENT,
  `colortype` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `colorfee` double NOT NULL,
  `productid` int NOT NULL,
  PRIMARY KEY (`colortypeid`),
  KEY `productid` (`productid`),
  CONSTRAINT `productcolortype_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcolortype`
--

LOCK TABLES `productcolortype` WRITE;
/*!40000 ALTER TABLE `productcolortype` DISABLE KEYS */;
INSERT INTO `productcolortype` VALUES (1,'Grayscale',100,3),(2,'Full Color',200,3),(5,'Grayscale',100,5),(6,'Full Color',200,5),(10,'Grayscale',100,16),(11,'Full Color Super High Quality',1000,17),(12,'Full Color',2000,18),(13,'Full Color',5000,19),(14,'Full Color',20000,20),(15,'Full Color',10000,21),(16,'Full Color',5000,22);
/*!40000 ALTER TABLE `productcolortype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttype` (
  `productypeid` int NOT NULL AUTO_INCREMENT,
  `productid` int NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `papertype` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `weight` double NOT NULL,
  `quantity` int NOT NULL,
  `paperprice` double NOT NULL,
  `imageurl` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`productypeid`),
  KEY `productid` (`productid`),
  CONSTRAINT `producttype_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` VALUES (3,3,'A4','A4 100 grams',6.24,1000,1000,'https://api.ops-express.site:3000/upload/merchant/images/product/fbdc3ded2b2dd1f9ac24924061685923518495.jpeg'),(4,3,'A4','A4 80 grams',4.99,1000,800,'https://static.bmdstatic.com/pk/product/medium/5e16e787cdcd1.jpg'),(5,3,'A4','A4 70 grams',4.37,1000,700,'https://images.tokopedia.net/img/cache/900/product-1/2020/7/2/9800627/9800627_d62fcee1-aa51-4ea1-ab24-4cb4db87fd13_2048_2048'),(8,5,'A4','A4 80 grams',4.99,1000,800,'https://static.bmdstatic.com/pk/product/medium/5e16e787cdcd1.jpg'),(9,5,'A4','A4 70 grams',4.37,1000,700,'https://images.tokopedia.net/img/cache/900/product-1/2020/7/2/9800627/9800627_d62fcee1-aa51-4ea1-ab24-4cb4db87fd13_2048_2048'),(20,16,'A4','A4 100 GRM',6.24,1000,1000,'https://api.ops-express.site:3000/upload/merchant/images/product/41969ff2a9829cb5e8750f9001680732237962.png'),(21,16,'F4','F4 Printing',6.93,10,1200,'https://api.ops-express.site:3000/upload/merchant/images/product/d0d5ff72ae83f7110c2889d001680734800856.png'),(24,17,'A3','A3 Printing 100 gsm',12.47,1000,2000,'https://api.ops-express.site:3000/upload/merchant/images/product/fbdc3ded2b2dd1f9ac24924071685923546600.jpeg'),(25,18,'A4','A4 210gsm',13.1,500,600,'https://api.ops-express.site:3000/upload/merchant/images/product/1a02965289b22eb499160b1051685273885906.png'),(27,18,'A4','A4 260gsm',16.22,500,900,'https://api.ops-express.site:3000/upload/merchant/images/product/1a02965289b22eb499160b1041685256919980.jpeg'),(28,19,'Letter','150 gsm',0.76,1000,1000,'https://api.ops-express.site:3000/upload/merchant/images/product/1a02965289b22eb499160b1061685275036821.jpeg'),(29,19,'Letter','210 gsm',1.06,1000,1000,'https://api.ops-express.site:3000/upload/merchant/images/product/1a02965289b22eb499160b1071685275173921.jpeg'),(30,20,'Letter','Acrylic',42.84,100,200000,'https://api.ops-express.site:3000/upload/merchant/images/product/e5e5690cade149c291dcc6f011685867580790.jpeg'),(32,21,'Letter','Albatros',576,100,120000,'https://api.ops-express.site:3000/upload/merchant/images/product/fbdc3ded2b2dd1f9ac24924011685922482927.jpeg'),(33,21,'Letter','Luster',576,100,120000,'https://api.ops-express.site:3000/upload/merchant/images/product/fbdc3ded2b2dd1f9ac24924021685922752100.jpeg'),(34,21,'Letter','Grey Back',576,100,145000,'https://api.ops-express.site:3000/upload/merchant/images/product/fbdc3ded2b2dd1f9ac24924031685922831955.jpeg'),(35,22,'A3','260 GSM',41.32,1000,3000,'https://api.ops-express.site:3000/upload/merchant/images/product/fbdc3ded2b2dd1f9ac24924091685987325121.jpeg'),(36,22,'A3','310 GSM',49.26,1000,3000,'https://api.ops-express.site:3000/upload/merchant/images/product/fbdc3ded2b2dd1f9ac249240a1685987357011.jpeg');
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transactionID` int NOT NULL AUTO_INCREMENT,
  `shippingOptions` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `addressid` int NOT NULL,
  `shippingvia` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paymentOptions` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `costs` double NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `transactionStatus` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `response_midtrans` text COLLATE utf8mb4_general_ci NOT NULL,
  `dateTransaction` date NOT NULL,
  `timeTransaction` time NOT NULL,
  `dateDoneTrans` date DEFAULT NULL,
  `timeDoneTrans` time DEFAULT NULL,
  PRIMARY KEY (`transactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (7,'Pick Up',-1,NULL,'bri',13200,'settlement','PENDING','{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"a009f5f9-8c5a-4e51-ac9d-2f886ad28c6e\",\"order_id\":\"1683426482\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"13200.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-07 09:28:05\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bri\",\"va_number\":\"529290001683426482\"}],\"expiry_time\":\"2023-05-08 09:28:04\"}','2023-05-07','10:27:56',NULL,NULL),(8,'Pick Up',-1,NULL,'bca',66000,'expire','PENDING','{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"caca8aaf-ff1e-4c50-ae7f-d2a8af58163d\",\"order_id\":\"16832357050\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"66000.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-08 08:37:25\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683357050\"}],\"expiry_time\":\"2023-05-09 08:37:25\"}','2023-05-08','09:36:59',NULL,NULL),(9,'Pick Up',-1,NULL,'bca',23100,'settlement','DONE','{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"a57a52d2-5565-4b5d-a631-823f96758157\",\"order_id\":\"1683513273\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"23100.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-08 09:34:33\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683513273\"}],\"expiry_time\":\"2023-05-09 09:34:33\"}','2023-05-08','10:34:27','2023-05-09','17:15:10'),(12,'Delivery',25,'YES','bca',31100,'settlement','DONE','{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"43112fc7-7405-4dca-8f0a-f813b043910c\",\"order_id\":\"1683550925\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"31100.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-08 20:02:06\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683550925\"}],\"expiry_time\":\"2023-05-09 20:02:06\"}','2023-05-08','21:00:44','2023-05-24','16:08:22'),(13,'Delivery',25,'REG','bca',31100,'settlement','PENDING','{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"2066c912-931e-48b3-bcd6-c3e6433b8b0f\",\"order_id\":\"1683561653\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"31100.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-08 23:00:54\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683561653\"}],\"expiry_time\":\"2023-05-09 23:00:54\"}','2023-05-08','23:59:56',NULL,NULL),(14,'Delivery',25,'OKE','bca',31100,'settlement','DONE','{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"815147ea-ed25-4619-bb82-f8e7d3b1e946\",\"order_id\":\"1683781880\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"31100.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-11 12:11:21\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683781880\"}],\"expiry_time\":\"2023-05-12 12:11:21\"}','2023-05-11','12:29:41','2023-05-24','16:08:18'),(15,'Pick Up',0,'null','bca',4200,'pending','PENDING','{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"977c2c9b-3d23-4640-9be1-bc0f756be1f6\",\"order_id\":\"1684703505\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"4200.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-22 04:11:43\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291684703505\"}],\"expiry_time\":\"2023-05-23 04:11:43\"}','2023-05-22','05:08:00',NULL,NULL),(16,'Pick Up',0,'null','bca',3643500,'settlement','PENDING','{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"c49388ab-11b9-4a06-8c30-1d6fa78c1449\",\"order_id\":\"1684703658\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"3643500.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-22 04:14:16\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291684703658\"}],\"expiry_time\":\"2023-05-23 04:14:16\"}','2023-05-22','05:14:18',NULL,NULL);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'adminops','NqoGJzvTQOWY9wJEG/GoBGfHUMx2LcNBkLUL/cpqKjU=','Muhammad Zein Akbar','Male','mzeinakbar@aol.com','082130306677'),(2,'uservoid','83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=','Muhammad Zein Akbar','Male','angularkiddie@gmail.com','082130301122'),(3,'takimotoo','83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=','Dioana Kendl','Female','ztzyrant@gmail.com','082130030011'),(6,'testmail','83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=','Test xS','Male','uhack91@gmail.com','049876575667'),(10,'admin1','83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=','Jill Gordon','Female','uhack9191@gmail.com','(874) 384-8214'),(12,'merch1','yALoi1fgHwCMaOrMB1vOk5ftt3aiKA8yurKJuupvusk=','merch1','Male','angularkiddie+merch1@gmail.com','08768567463'),(14,'test2','yALoi1fgHwCMaOrMB1vOk5ftt3aiKA8yurKJuupvusk=','dmwiqfm','Male','ifmewim@fasfsa.css','07532752382'),(38,'examprint1','83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=','Exam Print Owner','Male','examprintowner@ex.ca','082130306678'),(41,'datayasa','83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=','Datayasa Owner','Male','datayasa@example.com','6546456'),(42,'renonprint','83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=','renonprint owner','Male','renonprint@example.com','432432'),(44,'salamandegown','83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=','Salamandeg Owners','Male','ownersalamandegpr@example.com','082002300450'),(46,'desi_','PvPPCg60oO7K5Wmfhiwvicdq8EWBi2A52nH28SsCrQU=','desi','Female','desi@ops.com','08123945448'),(47,'rudy_purnomo','PvPPCg60oO7K5Wmfhiwvicdq8EWBi2A52nH28SsCrQU=','Rudy Purnomo','Male','rudypurnomo@ops.com','082147114355'),(48,'suyatin','PvPPCg60oO7K5Wmfhiwvicdq8EWBi2A52nH28SsCrQU=','Suyatin','Male','suyatin@ops.com','081999848698'),(49,'hani_','PvPPCg60oO7K5Wmfhiwvicdq8EWBi2A52nH28SsCrQU=','hani','Female','hani@ops.com','0361227720'),(50,'balistarssingaraja','PvPPCg60oO7K5Wmfhiwvicdq8EWBi2A52nH28SsCrQU=','bali stars singaraja','Male','balistarssingaraja@ops.com','087843053875'),(51,'balistarsubud','PvPPCg60oO7K5Wmfhiwvicdq8EWBi2A52nH28SsCrQU=','balistars ubud','Male','balistarsubud@ops.com','0895627433434'),(52,'radityaprint','PvPPCg60oO7K5Wmfhiwvicdq8EWBi2A52nH28SsCrQU=','raditya print','Male','radityaprint@ops.com','03665531117');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'opscoredb'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-06 13:48:40
