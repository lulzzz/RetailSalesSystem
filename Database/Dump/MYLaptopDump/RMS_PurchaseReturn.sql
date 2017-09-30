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
-- Table structure for table `PurchaseReturn`
--

DROP TABLE IF EXISTS `PurchaseReturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PurchaseReturn` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BillId` int(11) DEFAULT NULL,
  `ProductId` mediumint(9) NOT NULL,
  `Quantity` decimal(10,2) NOT NULL,
  `PriceId` mediumint(9) NOT NULL,
  `ReturnReasonCode` int(11) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `FK_ProductIdPR_idx` (`ProductId`),
  KEY `FK_returnCodePR_idx` (`ReturnReasonCode`),
  CONSTRAINT `FK_ProductId_PR` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_returnCode_PR` FOREIGN KEY (`ReturnReasonCode`) REFERENCES `CodeMaster` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PurchaseReturn`
--

LOCK TABLES `PurchaseReturn` WRITE;
/*!40000 ALTER TABLE `PurchaseReturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `PurchaseReturn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26 16:49:13
