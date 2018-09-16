-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: imported_sda
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cars` (
  `plate_id` varchar(45) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `engine_cap_dm3` int(11) DEFAULT NULL,
  `power_horse` int(11) DEFAULT NULL,
  `prod_year` int(11) NOT NULL,
  PRIMARY KEY (`plate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES ('ABC 12345','BMW','535i',4,208,2018),('ABC 12374','Chrylser','Concorde',3,153,2014),('ABC 14569','Ford','Festiva',1,63,2007),('ABC 18712','Ford','Festiva',1,63,2004),('ABC 26795','Lexus','ES300',3,185,2013),('ABC 33511','Mazda','626',3,164,2017),('ABC 35689','Ford','Mustang',2,105,2011),('ABC 41234','Ford','Festiva',1,63,2016),('ABC 49254','Honda','Civic',2,102,2005),('ABC 52674','Mazda','626',3,164,2013),('ABC 56432','Chevrolet','Corvette',6,300,2000),('ABC 65243','Mazda','626',3,164,2011),('ABC 74638','Mazda','RX-7',1,255,2001),('ABC 79841','Chrysler','Imperial',3,147,2012),('ABC 84168','Lexus','SC300',3,225,2005),('ABC 93135','Ford','Escort',2,127,2017),('ABC 97438','Honda','Accord',2,140,2009),('ABC 97442','Mazda','RX-7',1,255,2018);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_company`
--

DROP TABLE IF EXISTS `customers_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers_company` (
  `company_id` bigint(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `nip` int(11) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_company`
--

LOCK TABLES `customers_company` WRITE;
/*!40000 ALTER TABLE `customers_company` DISABLE KEYS */;
INSERT INTO `customers_company` VALUES (1,'Scooby Company','Scooby address',123456789,147258369,'If you have any problem with monsters, ghosts or other creatures just call to them'),(2,'Looney Tunes','Looney Tunes address',456789123,258369147,'If you are sad just call to them'),(3,'Jetsons&Family','Jetsons address',789123456,369147258,'Sorry but I don\'t remember anything about this tale');
/*!40000 ALTER TABLE `customers_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_employee`
--

DROP TABLE IF EXISTS `customers_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers_employee` (
  `customers_employee_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`customers_employee_id`),
  KEY `fk_CUSTOMES_EMPLOEE_CUSTOMERS_COMPANY1_idx` (`company_id`),
  CONSTRAINT `fk_CUSTOMES_EMPLOEE_CUSTOMERS_COMPANY1` FOREIGN KEY (`company_id`) REFERENCES `customers_company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_employee`
--

LOCK TABLES `customers_employee` WRITE;
/*!40000 ALTER TABLE `customers_employee` DISABLE KEYS */;
INSERT INTO `customers_employee` VALUES (1,1,'Scooby','Doo',111111111,'Dog'),(2,1,'Shaggy','Roges',222222222,'guy who is afraid of everything'),(3,1,'Fred','Jones',333333333,'Brave man'),(4,1,'Daphne','Blake',444444444,'The preety girl in pack of frends'),(5,1,'Velma','Dinkley',555555555,'The smartest lady in team'),(6,3,'George','Jetson',666666666,'The Father'),(7,3,'Jane','Jetson',777777777,'The Mother'),(8,3,'Judy','Jetson',888888888,'The Daughter'),(9,3,'Elroy','Jetson',999999999,'The Son'),(10,2,'Daffy','Duck',10101010,'Funny duck'),(11,2,'Porky','Pig',11111111,'Pig whose is afraid of everything'),(12,2,'Bugs','Bunny',12121212,'The main character?'),(13,2,'Lola','Bunny',13131313,'My first love, did you see Space Jam?! :)'),(14,2,'Sylvester','Cat',14141414,'He want to catch Tweety, but he is too smart'),(15,2,'TWEETY','',15151515,'Smart bird');
/*!40000 ALTER TABLE `customers_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_employee_and_cars`
--

DROP TABLE IF EXISTS `customers_employee_and_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers_employee_and_cars` (
  `customers_employee_id` bigint(20) NOT NULL,
  `plate_id` varchar(45) NOT NULL,
  PRIMARY KEY (`customers_employee_id`,`plate_id`),
  KEY `fk_CUSTOMES_EMPLOEE_has_CARS_CARS1_idx` (`plate_id`),
  KEY `fk_CUSTOMES_EMPLOEE_has_CARS_CUSTOMES_EMPLOEE1_idx` (`customers_employee_id`),
  CONSTRAINT `fk_CUSTOMES_EMPLOEE_has_CARS_CARS1` FOREIGN KEY (`plate_id`) REFERENCES `cars` (`plate_id`),
  CONSTRAINT `fk_CUSTOMES_EMPLOEE_has_CARS_CUSTOMES_EMPLOEE1` FOREIGN KEY (`customers_employee_id`) REFERENCES `customers_employee` (`customers_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_employee_and_cars`
--

LOCK TABLES `customers_employee_and_cars` WRITE;
/*!40000 ALTER TABLE `customers_employee_and_cars` DISABLE KEYS */;
INSERT INTO `customers_employee_and_cars` VALUES (1,'ABC 12345'),(1,'ABC 56432'),(2,'ABC 12345'),(2,'ABC 56432'),(3,'ABC 56432'),(4,'ABC 56432'),(5,'ABC 56432'),(6,'ABC 14569'),(7,'ABC 14569'),(8,'ABC 14569'),(9,'ABC 18712'),(9,'ABC 26795'),(9,'ABC 33511'),(9,'ABC 52674'),(9,'ABC 65243'),(9,'ABC 74638'),(9,'ABC 84168'),(9,'ABC 97438'),(9,'ABC 97442'),(10,'ABC 12374'),(11,'ABC 79841'),(12,'ABC 41234'),(13,'ABC 93135'),(14,'ABC 35689'),(15,'ABC 49254');
/*!40000 ALTER TABLE `customers_employee_and_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failures`
--

DROP TABLE IF EXISTS `failures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `failures` (
  `fail_id` bigint(20) NOT NULL,
  `plate_id` varchar(45) NOT NULL,
  `status` enum('WAITING_FOR_DIAGNOSE','WAITING_FOR_PARTS','WAITING_FOR_PICKING_UP','IN_PROGRESS','DONE') DEFAULT NULL,
  `enter_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `part_cost` double DEFAULT NULL,
  PRIMARY KEY (`fail_id`),
  KEY `fk_FAILURES_CARS1_idx` (`plate_id`),
  CONSTRAINT `fk_FAILURES_CARS1` FOREIGN KEY (`plate_id`) REFERENCES `cars` (`plate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failures`
--

LOCK TABLES `failures` WRITE;
/*!40000 ALTER TABLE `failures` DISABLE KEYS */;
INSERT INTO `failures` VALUES (1,'ABC 74638','WAITING_FOR_DIAGNOSE','2016-09-19',NULL,NULL,NULL),(2,'ABC 74638','WAITING_FOR_DIAGNOSE','2017-01-05',NULL,NULL,NULL),(3,'ABC 12345','IN_PROGRESS','2017-01-12',NULL,NULL,20000),(4,'ABC 56432','DONE','2017-03-24','2017-04-24',1985,1000),(5,'ABC 12374','DONE','2017-07-31','2017-09-22',2311,2000),(6,'ABC 79841','DONE','2017-09-01','2017-09-22',2845,1500),(7,'ABC 41234','DONE','2017-09-05','2017-09-19',1740,1365),(8,'ABC 93135','DONE','2017-09-26','2017-10-01',3833,1985),(9,'ABC 35689','DONE','2017-10-04','2017-10-09',1512,1020),(10,'ABC 49254','DONE','2017-10-17','2017-10-17',1338,720),(11,'ABC 97438','DONE','2017-11-08','2017-11-18',621,340),(12,'ABC 26795','DONE','2017-12-12','2017-12-23',1243,660),(13,'ABC 84168','DONE','2018-03-02','2018-03-09',17157,9500),(14,'ABC 33511','DONE','2018-04-10','2018-04-10',2198,1100),(15,'ABC 97442','DONE','2018-05-07','2018-05-08',5283,4200),(16,'ABC 65243','DONE','2018-05-22','2018-05-23',2045,1950),(17,'ABC 74638','DONE','2018-06-22','2018-06-26',3879,3200),(18,'ABC 52674','DONE','2018-07-13','2018-07-19',700,100),(19,'ABC 18712','WAITING_FOR_PARTS','2018-12-10',NULL,NULL,NULL),(20,'ABC 14569','WAITING_FOR_PARTS','2018-12-17',NULL,NULL,NULL);
/*!40000 ALTER TABLE `failures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-16  9:00:50
