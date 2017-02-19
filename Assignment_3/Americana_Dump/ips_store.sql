CREATE DATABASE  IF NOT EXISTS `ips` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ips`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: ips
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `FedID` varchar(50) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  PRIMARY KEY (`FedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES ('106','Diane von Furstenberg','889 Americana Way, Glendale, CA 91210','8184594637'),('112','Schott NYC','889 Americana Way, Glendale, CA 91210','8185475951'),('116','Kate Spade','889 Americana Way, Glendale, CA 91210','8189561705'),('126','Cole Haan','889 Americana Way, Glendale, CA 91210','8182427424'),('138','Sur La Table','889 Americana Way, Glendale, CA 91210','8182443608'),('210','Barnes & Noble','889 Americana Way, Glendale, CA 91210','8185459146'),('212','Forever21','889 Americana Way, Glendale, CA 91210','8182413241'),('220','RayBan','889 Americana Way, Glendale, CA 91210','818244647'),('230','Sephora','889 Americana Way, Glendale, CA 91210','8185029787'),('250','Calvin Klein','889 Americana Way, Glendale, CA 91210','8186629710'),('260','Urban Outfitters','889 Americana Way, Glendale, CA 91210','8185459208'),('519','Anthropologie','889 Americana Way, Glendale, CA 91210','8185022058'),('529','BCBGMAXAZRIA','889 Americana Way, Glendale, CA 91210','8185462635'),('539','Tesla','889 Americana Way, Glendale, CA 91210','8182547499'),('561','Marciano','889 Americana Way, Glendale, CA 91210','8182414053'),('710','Lululemon Athletica','889 Americana Way, Glendale, CA 91210','8182413251'),('712','UGG Australia','889 Americana Way, Glendale, CA 91210','8187412970'),('716','Madewell','889 Americana Way, Glendale, CA 91210','8182431096'),('718','Kaitlyn','889 Americana Way, Glendale, CA 91210','8185519800'),('720','Kiehls Since 1851','889 Americana Way, Glendale, CA 91210','818'),('728','SEE Eyewear','889 Americana Way, Glendale, CA 91210','8185507888'),('732','Disney Baby','889 Americana Way, Glendale, CA 91210','8186388016'),('775','TOMS','889 Americana Way, Glendale, CA 91210','8186377844'),('777','Tumi','889 Americana Way, Glendale, CA 91210','8186300025'),('779','MAC Cosmetics','889 Americana Way, Glendale, CA 91210','8185533705'),('790','Tory Burch','889 Americana Way, Glendale, CA 91210','8182412642'),('796','Tiffany & Co.','889 Americana Way, Glendale, CA 91210','8182440262'),('798','David Yurman','889 Americana Way, Glendale, CA 91210','8182412836'),('811','Fantastic Sams','889 Americana Way, Glendale, CA 91210','8182404411'),('837','Under Armour Brand House','889 Americana Way, Glendale, CA 91210','7472217832'),('853','Free People','889 Americana Way, Glendale, CA 91210','8182411861'),('857','J.Crew','889 Americana Way, Glendale, CA 91210','8182444975'),('859','Crewcuts','889 Americana Way, Glendale, CA 91210','8182444975'),('863','TOPSHOP TOPMAN','889 Americana Way, Glendale, CA 91210','8183341753'),('869','Barneys New York','889 Americana Way, Glendale, CA 91210','8182543170'),('877','Apple','889 Americana Way, Glendale, CA 91210','8182541070'),('891','H&M','889 Americana Way, Glendale, CA 91210','8185519800');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-14 11:31:20
