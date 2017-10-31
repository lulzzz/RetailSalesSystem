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
-- Table structure for table `Companies`
--

DROP TABLE IF EXISTS `Companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Companies` (
  `Id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `City` varchar(50) DEFAULT NULL,
  `MobileNo` int(11) DEFAULT NULL,
  `LanNo` int(11) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `VATNo` varchar(15) DEFAULT NULL,
  `IsSupplier` tinyint(1) NOT NULL,
  `CategoryTypeId` int(11) DEFAULT NULL,
  `DueAmount` decimal(10,2) DEFAULT NULL,
  `AddedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedOn` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedBy` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Companies`
--

LOCK TABLES `Companies` WRITE;
/*!40000 ALTER TABLE `Companies` DISABLE KEYS */;
INSERT INTO `Companies` (`Id`, `Name`, `Address`, `City`, `MobileNo`, `LanNo`, `Email`, `VATNo`, `IsSupplier`, `CategoryTypeId`, `DueAmount`, `AddedOn`, `ModifiedOn`, `UpdatedBy`) VALUES (1,'RAVINDRA DISTRIBUTOR','NO:26B UPPER LACK ROAD',' NUWARA ELIYA',522051644,523530504,'',NULL,1,7,NULL,'2017-09-21 16:50:39','2017-09-21 16:50:39',NULL),(2,'N/WOODLANDS (PVT) LTD','NO.80 KANDY ROAD   NUWARAELIYA   ',' NUWARA ELIYA',0,522222326,'',NULL,1,10,NULL,'2017-09-21 16:50:39','2017-09-21 16:50:39',NULL),(3,'COCO-COLA BEVERAGES','TEKKAWATTE   ','BIYAGAMA   ',0,112487700,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(4,'NANDANA STORES','NO:92 HATTON ROAD      ','',0,715170614,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(5,'KEELS FOOD PRODUCTUS PLC','NO:16 MINUWANGODO ROAD   ','EKALA   JA-ELA',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(6,'REKHA INDUSTRIES (PVT) LTD','NAMBULUWA   ','PASYALA   ',332285796,332285796,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(7,'RINUSHA DISTRIBUTOR','NA','',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(8,'NEW LEELA STORES','NO:269 CLEMENT GARDEEN      ','',522051018,713735890,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(9,'PRICE CRONTROL','NA','',0,771088917,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(10,'KUMAR DISTRIBUTOR','KANDY      ','KANDY      ',0,772852540,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(11,'LANKA MILK FOODS (CWE) PLC','WELISARA   RAGAMA   ','RAGAMA  ',0,115222600,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(12,'SHAW WALLACE CEYLON LYD','P.O.BOX 130   69 SRIJINARATANA ROAD   ','COLOMBO',0,112675477,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(13,'PLENTY FOODS (PVT) LTD','NO:108/3   SRI JOHN KOTHALAEALA MW   ','KANDWALA',112638846,115004000,'',NULL,1,7,NULL,'2017-09-21 16:50:40','2017-09-21 16:50:40',NULL),(14,'SELAN CANDLE INDUSTRIES','NOORI ROAD   ANHETTIGAMA   ','DERANIYAGALA',0,362230518,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(15,'FONTERRA BRANDS LANKA (PRIVATE','NO:100 DELGODA ROAD   ','BIYAGAMA  ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(16,'PUSHPA TRADERS','NO:50 LAWSON STREET   ','NUWARA ELIYA  ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(17,'A.BAUR&CO.(PVT)LTD','NO.62 JETHAWANA ROAD   ','COLOMBO 14   ',112478680,114728706,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(18,'VIJAYA ICE CORN','NO315   ','MAIANGANA   ',0,714964742,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(19,'HELP FOR THE CHILDREN','RAGALA      ','RAGALA      ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(20,'WIJAYA PRODUCTS (PVT)LTD',' SRI LANKA   ','DODANGODA  ',0,342280092,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(21,'K.S DISTRIBUTOR','NO:18A   VAJARA PORA   ','NUWARA ELIYA',0,773748936,'',NULL,1,10,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(22,'GRASHIA DISTRIBUTOR (PVT) LTD','NO.30 GRASHIA RESTAURANT   NEW BAZAAR STREET   ','NUWARA EILYA',0,775003658,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(23,'KSP MARKETING','NO.98B    AMBAGAMUWA ROAD  ','',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(24,'T M SRIYANI','NO:13 POLICE LANE      ','',0,522235822,'',NULL,1,7,NULL,'2017-09-21 16:50:41','2017-09-21 16:50:41',NULL),(25,'JAR DISTRIBUTOR','NO:16 NUWARA ELIYA ROAD   ','WELIMADA   ',0,777829440,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(26,'HARISCHANDRA MILLS PLC','NA','',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(27,'WEEHENA','NO:193 IHALA MAHAWAEWA   ','MAHAWEWA   ',322253141,322254209,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(28,'A.G.M.RIZVEEN','NO.20/5 CARGILLA   KANDY ROAD   ','NUWARA ELIYA',0,773816723,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(29,'AMBEWELA PRODUCTS (PVT) LTD','AMBEWELA FARM   ','AMBEWELA   ',0,525674447,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(30,'EAST-WEST (PVT) LTD','NO:4 FARM ROAD  ',' COLOMBO 15   ',112521858,112521903,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 17:22:25',NULL),(31,'KOTMALE FOOD PRODUCTS (PVT) LT','NEW TOWN   ','KOTHALE   ',0,522259522,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(32,'HEWAGE HOLDINGS (PVT) LTD','NO:154C KURUEGALA ROAD   KATUGASTOTA ','KANDY      ',812497546,812497547,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(33,'NEW LUCKY GRINDING MILLS','NO:4 ANDREWS DRIVE   ','NUWARA ELIYA   ',0,525672007,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(34,'KANDOS','NO:223 BLOEMENDHAL ROAD   ','COLOMBO 13   ',0,112497500,'',NULL,1,7,NULL,'2017-09-21 16:50:42','2017-09-21 16:50:42',NULL),(35,'VEMAAL CO. (PVT) LTD','NO:72 WOLFENDHAL STREET   ','COLOMBO 12  ',112433781,112431641,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(36,'RECKITT BENCKISER LAKA LTD','COLOMBO      ','COLOMBO      ',0,770402106,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(37,'BALA\'S DISTRIBUTOR','NO:258/B LEWNEWATHAWAHUBA   ','PUSSALLAWA   ',0,812478678,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(38,'DAINTEE LIMITED','NO:72C KANDAWALA ROAD   ','RATMALANA   ',112626012,112635384,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(39,'S&D ASSOCIATES','NO:36 OLD KESBEWA ROAD   RATHTHANAPITIYA   ','COLOMBO',114515545,114515544,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(40,'ALLI COMPANY (PVT) LTD','PASYALA   SRI LANKA   ','PASYALA ',332285003,332285039,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(41,'TALAVAKALA TEA','TALAVAKALA   ','NUWARA ELIYA   ',0,714495436,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(42,'WELIMADA STORES','NO:12 14 NUWARA ELIYA ROA   ','WELIMADA  ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(43,'RUHUNU FOODS (PVT) LTD','NO:16 KUNDASALE      ','KUNDASALE      ',814476296,812422222,'',NULL,1,7,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(44,'RAMCCO TRADERS','198 4TH CROSS STREET   ','COLOMBO-11   ',112444274,112323844,'',NULL,1,10,NULL,'2017-09-21 16:50:43','2017-09-21 16:50:43',NULL),(45,'FALEEL DISTRIBUTURS','NUWARAELIYA      ','NUWARAELIYA      ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(46,'B.H.M','NUWARAELIYA      ','NUWARAELIYA      ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(47,'RUPIKA TRADERS','NO 100 4TH CROSS STREET   ','COLOMBO 11   ',0,114974929,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(48,'NEW KRISHNA DISTRIBUTOURS','NO 64 GONAWALA RAJAWELLA  ',' KANDY  ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(49,'PREEMA','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(50,'RAMS TRADING','PEOPLE.S PARK COMPLEX   PETTAH   ','COLOMBO 11',112335532,112335532,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(51,'SAPUMAL TRADING CO.[PVT] LTD','F19/3 NANKURUGAMA   ','MAWANELLA   ',352246502,352246642,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(52,'HAYLEYS CONSUEMR PRODUCTS LTD','NO.25 FOSTER LANE ','COLOMBO 10',112688971,112166200,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(53,'GAYAMINIMART [PVT] LTD','ROHITHA GEMS BUILDING   PARADISE ','KURUWITA   ',0,452263566,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(54,'ELEPHANT HOUSE ICE CREAM','26B UPPER LAKE ROAD   ','NUWARAELIYA   ',522051644,523530504,'',NULL,1,10,NULL,'2017-09-21 16:50:44','2017-09-21 16:50:44',NULL),(55,'LITTLE LION ASSCOCIATES','NO.105 VIVEKANANDA HILL   ','COLOMBO-13   ',114613860,112347781,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(56,'D.S DISTRIBUTORS','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(57,'SARAWANAS TRADING','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(58,'K.THIYAGARAJ','NO.80 KANDY ROAD   ','NUWARAELIYA   ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(59,'MCSONS ORGANICS [PVT] LTD','672/3 GALL ROAD OFF   MAYURA MAWATHA   ','RATMALANA',112301459,11239426,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(60,'DELMEGE FORSYTH & CO.LTD','NO.101 VINAYALANKARA   MAWATHA   ','COLOMBO.10',112688139,112686838,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(61,'H.E MARKEKETING','NO. 170  ST  JOSEPH STREE   ','COLOMBO 14 ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(62,'YBH DISTRIBUTOR (PVT) LTD','NO.04    WAJIRA MAWATHA  ','HAWA ELIY ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(63,'HERELD DRY FISH STORES (I',' 164 4TH CROSS STREET  COL   ','SRILANKA',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(64,'UTHAYA AGENCY (G M& C. A. F. L','111  FOURTH CROSS STREET    ','COLOMBO 11. ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(65,'JANATHYAA IMPORTERS','IMPORTERS  GENERAL MERCHA   COMMISSION AGENTS NO:230  ','',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:45','2017-09-21 16:50:45',NULL),(66,'ANNACHCHI BABU','ST.ANTRUSE DRIVE   ','NUWARAELIYA   ',0,776746464,'',NULL,1,7,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(67,'AZEEZ BROTHERS','NO 48 KANDY ROAD   ','NUWARA ELIYA   ',0,502234400,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(68,'LION MARKETING (PVT) LTD.','NO.27  HOSPITAL ROAD  ','WEL    ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(69,'CREAMY MILK PRODUCTS','MASIMBULA ROAD  ','GODAKAWEL     ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(70,'INDIKE','WELIMADA      ','WELIMADA      ',0,775004216,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(71,'SENA BAKERY','LABUKKELA      ','LABUKKELA      ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(72,'FREELAN ENTERPRISES (PVT) LTD','NO.38 GUNAWARTHANA MAWATH   ','MATTARA   ',412235121,412222237,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(73,'WOODLANDS','NO 80 KANDY ROAD    ','NUWARA ELIYA ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(74,'SOFTLOGIC','SIRINIWASA   GALABODA E   ','ATTAMPITIYA  ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(75,'J.L.MORISON SON7 & JONES','620 BIYAGAMA ROAD   PETHIYAGODA   ','KELANIYA',0,770654383,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(76,'MILCO [PVT] LTD','NO.23 OLD BUS STAND   ','RAGALA   ',0,773556144,'',NULL,1,10,NULL,'2017-09-21 16:50:46','2017-09-21 16:50:46',NULL),(77,'DHARAMASIRI DISTRIBUTORS','SAPPUKADA JUNCTION   N/ELLYA ROAD   ','WALIMADA',0,572051881,'',NULL,1,10,NULL,'2017-09-21 16:50:47','2017-09-21 16:50:47',NULL),(78,'PRIMA','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:47','2017-09-21 16:50:47',NULL),(79,'FLORA','NO.88 BADULL ROAD   ','ETTAMPITIYA   ',0,773032374,'',NULL,1,10,NULL,'2017-09-21 16:50:47','2017-09-21 16:50:47',NULL),(80,'M.D.K','NO.48   ARMANAGOLLA ','HORANA   SRI LANKA',342265888,344298888,'',NULL,1,10,NULL,'2017-09-21 16:50:47','2017-09-21 16:50:47',NULL),(81,'CHANDANA RAJAPAKSHA','KARAGASWAGURA   ','KEPPETIPOLA   ',0,572280859,'',NULL,1,10,NULL,'2017-09-21 16:50:47','2017-09-21 16:50:47',NULL),(82,'VICTOR DISTRIBUTORS','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:47','2017-09-21 16:50:47',NULL),(83,'RANGIRE','NA','',0,772397597,'',NULL,1,10,NULL,'2017-09-21 16:50:47','2017-09-21 16:50:47',NULL),(84,'ALLI COMPANY','NA','',332285003,332285040,'',NULL,1,10,NULL,'2017-09-21 16:50:47','2017-09-21 16:50:47',NULL),(85,'COCACOLA','DIYAGAMAM      ','DIYAGAMAM      ',0,112487700,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(86,'ZPUSHPA TRADERS','NO.50 LAWSON STREET ','NUWARA ELIYA ',0,522222143,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(87,'Zcash','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(88,'MATHURATA DISTRIBUTORS','NO.6 NATIONAL HOUSING   SCHEME   ','KANDAPOLA',0,522222315,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(89,'K.M.J TRADERS','NO.66 PEPOLES PARK   COMPLEX   ','COLOMBO-11',0,112449611,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(90,'T.F.AGENCY','5/3 HEMACHINDARA   MAWATHA   ','THALAWA',0,773290083,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(91,'MALIBAN MILK PRODUCTS PVT[LTD]','NO.389 GALL ROAD ','RATMALANA',0,112636366,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(92,'PETTAH ESSENCE DISTRIBUTORS','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(93,'COLLINSON P.V.T [LTD]','162.RIVER BANK   ','KANDY   ',0,812492640,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(94,'LAKBIMA RICE MILL','NO.796HATHARNUA ROAD   ETAMAPITIYA   ','POLONNARUWA',272223331,272223745,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(95,'DEMAND PRODUCTS','NO.11BADULUSIRIGAMA   ','BADULLA   ',0,55222942,'',NULL,1,10,NULL,'2017-09-21 16:50:48','2017-09-21 16:50:48',NULL),(96,'SK DISTRIBUTORS','NO.414/3B ST. LEONARDS   BAZZAR   ','HALGRONOYA',0,772521213,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(97,'HARCOURTS COSMETICS [PVT] LTD','NO.55CYRIL C PERARA MAWAT   ','COLOMBO13   ',0,112326284,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(98,'OREL CORPORATION [PVT] LTD','NO.96 RAGALA BAZAAR   ','HALGRONAYA   ',0,773035023,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(99,'M.D','NO45/75 NARAHENPAT ROAD   ','COLOMBO5   ',112368343,112586622,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(100,'NESTLE','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 17:29:47',NULL),(101,'CATER PLAN DISTRIBUTORS','NO.53/B1 WATHURAKUMBURA   ROAD ','KIRIBATHKUMBURA  ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(102,'QUOTATION ORIGINAL','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(103,'SRI SHANMUKHAS','157/2 SRI KATHIRESAN STRE   ','COLOMBO-13   ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(104,'CARGILLS CEYION PLC','CARGILLS FOOD CITY   ','NUWARA ELIYA ',0,522223270,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(105,'NEW RATHNA RICE MILL','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(106,'PARAMOUNT PACKING','NO:05 DEWALA ROAD   PETHIYAGODA   ','KELANIYA',112916770,112912807,'',NULL,1,10,NULL,'2017-09-21 16:50:49','2017-09-21 16:50:49',NULL),(107,'MA\'S TROPICAL FOOD','NO :30  GOTHAMI ROAD  ','COLOMBO',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(108,'UAINWATA','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(109,'D.P.CARBON (PVT) LIMITED','NO.969/C1 SCHOOL LAND   ','BATTTARAMULLA   ',112185300,773380000,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(110,'LINK','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(111,'D S L (PVT) LTD','NO.47/7 ANGULANA STATION   ','MORATUWA   ',0,114963069,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(112,'D.R.DISTRIBUTOR','NO.53 SHAKTHI PURA   ','KOTAGALA   ',0,512244193,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(113,'RASARCO','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(114,'JANASIRI TRADING COMPANY (PVT)','NO36 MAIN STREET   ','YATIYANTHOTA   ',0,2270091,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(115,'SWEET CONES','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(116,'J F DISTRIBUTORS','NO95/2 LADY MC CALLUM\'S D   ','NUWARA ELIYA   ',0,777463539,'',NULL,1,10,NULL,'2017-09-21 16:50:50','2017-09-21 16:50:50',NULL),(117,'MILLERS LIMITED','6TH MILE POST     ','KANDAPOLA  ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(118,'TASTYY (PVT) LTD.','NO:76/1  DE SILVAMAWATHA     ','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(119,'NATHAN TRADERS','NO 164  4TH CROSS STREET    ','COLOMBO.',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(120,'SBN DISTRIBUTORS','NO.25  KATUMANA      ','NUWARA ELIYA',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(121,'GNANAM IMPORTS (PVT) LTD.','NO.79  5TH CROSS STREET     ','COLOMBO',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(122,'HETTIGODA INDUSTRIES (PVT) LTD','NO.33/3  SRI DHARMARAMA R   ','RATMALANA.  ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(123,'UNILIVER','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(124,'C.W.MACKIE PLC','NO 36  D.R.WIJEWARDENA MA   ','COLOMBO',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(125,'CEYLON BISCUTS LIMITED','PANNIPITIYA','COLOMBO',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(126,'RENUZA PHARMACY & GROCERY','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(127,'ZM','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:51','2017-09-21 16:50:51',NULL),(128,'SHANMUGAS','Keyzer street','COLOMBO',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(129,'ZK.THIYAGARAJ','NO.80 KANDY ROAD  ','NUWARA ELIYA',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(130,'INTERNATIONAL COSMETICS (PVT)','LADY MACLUMS DRIVE  ','NUWARA ELIYA',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(131,'AMRO SUGARS','IMPORERS EXPORTERS & GENE   MERCHANTS 187  5TH CROSS ','',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(132,'SANTHOSA TRADE CENTRE','NO.45  PRINCE STREET  COL    ','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(133,'MUMTHAAJ PRODUCTS','LAWSON STREET  ','NUWARA ELIYA',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(134,'SCAN PRODUCTS','NO-36 D.R WIJAYAWARTHANA   COLOMBO - 10   ','',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(135,'R.Ventures','Dedicated Ecanamic Center   ','NUWARA ELIYA',0,728088800,'',NULL,1,10,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(136,'LUCKY GRANDING MILL','ST DRIVE ','NUWARA ELIYA',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(137,'MARINA FOODS (PVT) LTD','627.BASELINE ROAD. ','COLOMBO',112673362,112673338,'',NULL,1,10,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(138,'NATURE\'S SECRETS','NO-20 YALPATHWELA','WELIMADA   ',0,772003861,'',NULL,1,7,NULL,'2017-09-21 16:50:52','2017-09-21 16:50:52',NULL),(139,'VIDUSHKA RICE & SALT SUPPLIERS','NO-64  ALOKAPURA  ','HAMBANTOTA ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(140,'CARGILLS QUALITY DAIRIES','AMASHA DISTRIBUTORS-THALA   GA 03 MIDDLETON BUSINESS   ','TALAWAKELE',0,779194450,'',NULL,1,7,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(141,'UNIQUE FOOD PROFESSIONALS (PVT','NO.53/B1 WATHURAKUMBURA R   ','KIRIBATHKUMBURA',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(142,'LAKMEE EXPORTS LANKA CO;(PVT)L','KEKIRAWA ROAD  ','TALAWAKELE',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(143,'SOLARIZE','NA','',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(144,'RADO TRADERS','NO-91  FOURTH CROSS STREE   ','COLOMBO-11  ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(145,'SUJEEWA HOLDINGS','NO: 401/10  HILL CREST GR   STAGE 2  ','HEERASAGALA ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(146,'PATTIPOLA LIVESTOCK (CO) LTD.','NEW ZEALAND FARM   ','AMBEWELA   ',525670415,523539231,'',NULL,1,7,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(147,'NEW PATANA DISTRIBUTORS','NO 7 A  STATION ROAD ','KOT',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(148,'RUSI MARKETING (INDIAN FOODS)','NO. 8  TALAWAKELA ROAD     ','LINDULLA',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(149,'BOBBY INDUSTRIES (PVT) LTD.','14  1ST LANE  MAWILIMADA    ','KANDY.',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:53','2017-09-21 16:50:53',NULL),(150,'S.P.S AGENCY','NO.13  4TH CROSS STREET     ','COLOMBO -11 ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(151,'MANOHARA DISTRIBUTORS','NO-124 LADY MACCALLUMS   DRIVE ','NUWARAELIYA   ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(152,'S.M. KARUNARATHNA','NA\'','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(153,'MAYA FOODS LANKA','WOODLANDS NO.80  KANDY RO   ','NUWARAELIYA  ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(154,'SWADESHI INDUSRIAL WORKS PLC','NA','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(155,'SONY','PANAUDIO (PVT) LTD   ENERGY DIVISION   ','',0,112574430,'',NULL,1,10,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(156,'PYRAMID WILMAR (PVT) LTD','no04-2/1 lauries place   ','COLOMBO',4542962,524542910,'',NULL,1,7,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(157,'zpyramid wilmar pvt ltd','lauries place      ','COLOMBO',4542962,4542910,'',NULL,1,7,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(158,'RAINBOW DETERGENTS COMPANY (PV','122A  HEKITTA ROAD  ','WATTA    ',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(159,'CEYLON PENCIL COMPANY (PVT) LT','NO 96 PARAKRAMA ROAD  PEL     ','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(160,'GASCO','187A CENTRAL ROAD    ','COLOMBO 12 ',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:54','2017-09-21 16:50:54',NULL),(161,'WORLDWIDE ENTERPRISES [PVT] LT','NO 316 D.S SENANAYAKE STR   ','KANDY.   ',812420435,814472555,'',NULL,1,10,NULL,'2017-09-21 16:50:55','2017-09-21 16:50:55',NULL),(162,'SARAFALLY ABDULALLY','92  OLD MOOR STREET ','COLOMBO',0,0,'sarafally@sltnet.lk ',NULL,1,7,NULL,'2017-09-21 16:50:55','2017-09-21 16:50:55',NULL),(163,'NATURE CARE COSMETICS PVT LTD','NO. 1359  13TH LANE ZONE    MILLENNIUM CITY ATHURUGIRIYA','',0,0,'',NULL,1,7,NULL,'2017-09-21 16:50:55','2017-09-21 16:50:55',NULL),(164,'K.N ENTERPRISES','   NO. 48  HOSPITAL ROAD  DE ','',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:55','2017-09-22 16:18:45',NULL),(165,'OM SARAVANA CO.',' NO: 229 5TH CROSS STREET    ','COLOMBO-11',0,0,'',NULL,1,10,NULL,'2017-09-21 16:50:55','2017-09-21 16:50:55',NULL),(166,'Weehana Farm','Colombo','Colombo',0,0,NULL,NULL,1,10,NULL,'2017-09-21 17:09:16','2017-09-21 17:09:16',NULL),(167,' EDINBOROUGH','Colombo','Colombo',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 17:15:10','2017-09-21 17:15:10',NULL),(168,'RICH LIFE','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 17:16:41','2017-09-21 17:16:41',NULL),(169,'STASSEN','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 17:33:40','2017-09-21 17:33:40',NULL),(170,'VIMAL','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 17:35:30','2017-09-22 16:09:53',NULL),(171,'MDK','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 17:36:34','2017-09-22 16:09:53',NULL),(172,'HEMAS','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 17:45:54','2017-09-21 17:45:54',NULL),(173,'BAG SUPPLIER','NUWARA ELIYA','NUWARA ELIYA',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 17:47:13','2017-09-22 16:09:53',NULL),(174,'RAIGAM','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 17:50:25','2017-09-22 16:09:53',NULL),(175,'EGG SUPPLIER','NUWARA ELIYA','NUWARA ELIYA',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 18:18:06','2017-09-22 16:09:53',NULL),(176,'HELP FOR THE CHILDREN','NUWARA ELIYA','NUWARA ELIYA',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 18:20:19','2017-09-22 16:09:53',NULL),(177,'BLUE ICE','NUWARA ELIYA','NUWARA ELIYA',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-21 18:22:57','2017-09-22 16:09:53',NULL),(178,'DARLY BUTLER','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:24:06','2017-09-22 16:09:53',NULL),(179,'GLAXO SMITH KLINE','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:25:33','2017-09-22 16:09:53',NULL),(180,'SIDDHALEPA','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:29:19','2017-09-22 16:09:53',NULL),(181,'SUN MATCH COMPANY','KANDY','KANDY',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:32:37','2017-09-22 16:09:53',NULL),(182,'VENDOL','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:34:16','2017-09-22 16:09:53',NULL),(183,'SURYAA','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:51:21','2017-09-22 16:09:53',NULL),(184,'MD','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:52:38','2017-09-22 16:09:54',NULL),(185,'BAURS','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:54:38','2017-09-22 16:09:54',NULL),(186,'THISSA RICE','COLOMBO','COLOMBO',0,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:56:22','2017-09-22 16:09:54',NULL),(187,'RANGIRI','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:57:14','2017-09-22 16:09:54',NULL),(188,'ATLAS','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:58:36','2017-09-22 16:09:54',NULL),(189,'KIWI','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 18:59:17','2017-09-22 16:09:54',NULL),(190,'SANJEEWAKA','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 19:01:00','2017-09-22 16:09:54',NULL),(191,'LOCAL SUPPLIER','NUWARA ELIYA','NUWARA ELIYA',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-21 19:29:27','2017-09-22 16:09:54',NULL),(192,'INDIAN ITEMS','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-22 10:23:38','2017-09-22 16:09:54',NULL),(193,'NEW KISHA','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-22 10:26:02','2017-09-22 16:09:54',NULL),(194,'PRIYA','NUWARA ELIYA','NUWARA ELIYA',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-22 10:27:47','2017-09-22 16:09:54',NULL),(195,'PRABHA TRADING','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-22 10:29:08','2017-09-22 16:09:54',NULL),(196,'INDIKA PROPDUCTS','NUWARA ELIYA','NUWARA ELIYA',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 10:31:33','2017-09-22 16:09:54',NULL),(197,'DS DISTRIBUTORS','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 10:32:33','2017-09-22 16:09:54',NULL),(198,'GILLS','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 10:34:24','2017-09-22 16:09:54',NULL),(199,'CREAMY','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 10:35:59','2017-09-22 16:09:54',NULL),(200,'DANTAMUITANG ','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 10:35:59','2017-09-22 16:09:54',NULL),(201,'AB MAURI','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 10:36:55','2017-09-22 16:09:54',NULL),(202,'KVC','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 11:04:13','2017-09-22 16:09:54',NULL),(203,'USWATTE','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 11:07:03','2017-09-22 16:09:54',NULL),(204,'WIJAYA CONES','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 11:40:22','2017-09-22 16:09:54',NULL),(205,'BHAIRA','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 11:44:07','2017-09-22 16:09:54',NULL),(206,'COLOMBO SUPPLIER','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 15:49:43','2017-09-22 16:09:54',NULL),(207,'ORANGE PVT LTD','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 15:50:33','2017-09-22 16:09:54',NULL),(208,'GLASS','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 15:51:31','2017-09-22 16:09:54',NULL),(209,'KANDY TRADERS','KANDY','KANDY',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 15:52:12','2017-09-22 16:09:54',NULL),(210,'DSL ENTERPRISES PVT LTD','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 16:03:21','2017-09-22 16:09:54',NULL),(211,'NIKADO','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-22 16:04:51','2017-09-22 16:09:54',NULL),(212,'TURKEY','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-22 16:05:43','2017-09-22 16:09:54',NULL),(213,'AZEEZ BROTHERS','NUWARA ELIYA','NUWARA ELIYA',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-22 16:06:26','2017-09-22 16:09:54',NULL),(214,'SMITH KLIME BEECHAM','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,7,NULL,'2017-09-22 16:08:35','2017-09-22 16:09:54',NULL),(215,'RIYAASH','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 16:15:19','2017-09-22 16:15:19',NULL),(216,'HELENA','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 16:16:00','2017-09-22 16:16:00',NULL),(217,'FORTUNE','COLOMBO','COLOMBO',NULL,NULL,NULL,'',1,10,NULL,'2017-09-22 16:17:04','2017-09-22 16:17:04',NULL),(218,'VICHY COOKIES PVT LTD','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 16:19:09','2017-09-22 16:19:09',NULL),(219,'S M J DISTRIBUTOR','COLOMBO','COLOMBO',NULL,NULL,NULL,NULL,1,10,NULL,'2017-09-22 16:20:48','2017-09-22 16:20:48',NULL);
/*!40000 ALTER TABLE `Companies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26 16:49:05