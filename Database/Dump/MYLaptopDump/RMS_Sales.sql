-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: goku-pc    Database: RMS
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sales` (
  `BillId` mediumint(9) NOT NULL AUTO_INCREMENT,
  `CustomerId` mediumint(9) NOT NULL,
  `Discount` decimal(10,2) DEFAULT NULL,
  `TransportCharges` decimal(10,2) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `IsCancelled` bit(1) DEFAULT NULL,
  `CustomerOrderNo` varchar(30) DEFAULT NULL,
  `AddedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedBy` mediumint(9) DEFAULT NULL,
  `RunningBillNo` mediumint(9) NOT NULL,
  `PaymentMode` char(1) NOT NULL,
  PRIMARY KEY (`BillId`),
  KEY `FK_Sales_Cust_idx` (`CustomerId`),
  CONSTRAINT `FK_Sales_Cust` FOREIGN KEY (`CustomerId`) REFERENCES `Customers` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales`
--

LOCK TABLES `Sales` WRITE;
/*!40000 ALTER TABLE `Sales` DISABLE KEYS */;
INSERT INTO `Sales` (`BillId`, `CustomerId`, `Discount`, `TransportCharges`, `TotalAmount`, `IsCancelled`, `CustomerOrderNo`, `AddedOn`, `ModifiedOn`, `UpdatedBy`, `RunningBillNo`, `PaymentMode`) VALUES (1,1,21.56,0.00,1078.00,NULL,'12','2017-09-24 10:12:48','2017-09-24 10:12:48',NULL,1,'0'),(2,1,66.98,0.00,1339.50,NULL,NULL,'2017-09-24 10:17:07','2017-09-24 10:17:07',NULL,2,'0'),(3,1,30.88,0.00,617.50,NULL,NULL,'2017-09-24 10:36:48','2017-09-24 10:36:48',NULL,3,'0'),(4,47,NULL,0.00,212.50,NULL,NULL,'2017-09-24 11:19:18','2017-09-24 11:19:18',NULL,4,'1'),(5,91,NULL,NULL,21675.00,NULL,NULL,'2017-09-24 12:07:09','2017-09-24 12:13:09',NULL,1,'1'),(6,21,NULL,0.00,23650.00,NULL,'0006023','2017-09-24 12:26:05','2017-09-24 12:26:05',NULL,5,'1'),(7,4,NULL,0.00,2120.00,NULL,'12','2017-09-24 19:01:04','2017-09-24 19:01:04',NULL,6,'1'),(8,94,NULL,NULL,45400.00,NULL,NULL,'2017-09-24 20:07:48','2017-09-24 20:07:48',NULL,2,'0'),(9,91,63.31,150.00,1266.25,NULL,NULL,'2017-09-26 13:29:57','2017-09-26 13:29:57',NULL,3,'0');
/*!40000 ALTER TABLE `Sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26 16:49:06
