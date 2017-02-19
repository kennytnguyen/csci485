CREATE DATABASE  IF NOT EXISTS `ips` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ips`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: ips
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `beacon`
--

DROP TABLE IF EXISTS `beacon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon` (
  `MAC` varchar(20) NOT NULL,
  `UUID` varchar(20) NOT NULL,
  `Major` varchar(100) NOT NULL,
  `Minor` varchar(100) NOT NULL,
  `Behavior` varchar(100) NOT NULL,
  PRIMARY KEY (`MAC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon`
--

LOCK TABLES `beacon` WRITE;
/*!40000 ALTER TABLE `beacon` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_department`
--

DROP TABLE IF EXISTS `beacon_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_department` (
  `MAC` varchar(20) NOT NULL,
  `DeptName` varchar(50) NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`DeptName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_department`
--

LOCK TABLES `beacon_department` WRITE;
/*!40000 ALTER TABLE `beacon_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_department_annotation`
--

DROP TABLE IF EXISTS `beacon_department_annotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_department_annotation` (
  `MAC` varchar(20) NOT NULL,
  `DeptName` varchar(50) NOT NULL,
  `NewDeptName` varchar(50) NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`DeptName`,`NewDeptName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_department_annotation`
--

LOCK TABLES `beacon_department_annotation` WRITE;
/*!40000 ALTER TABLE `beacon_department_annotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_department_annotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_entrance`
--

DROP TABLE IF EXISTS `beacon_entrance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_entrance` (
  `MAC` varchar(20) NOT NULL,
  `EntranceGPS` varchar(50) NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`EntranceGPS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_entrance`
--

LOCK TABLES `beacon_entrance` WRITE;
/*!40000 ALTER TABLE `beacon_entrance` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_entrance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_entrance_annotation`
--

DROP TABLE IF EXISTS `beacon_entrance_annotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_entrance_annotation` (
  `MAC` varchar(20) NOT NULL,
  `EntranceGPS` varchar(50) NOT NULL,
  `NewEntranceGPS` varchar(50) NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`EntranceGPS`,`NewEntranceGPS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_entrance_annotation`
--

LOCK TABLES `beacon_entrance_annotation` WRITE;
/*!40000 ALTER TABLE `beacon_entrance_annotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_entrance_annotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_lift`
--

DROP TABLE IF EXISTS `beacon_lift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_lift` (
  `MAC` varchar(20) NOT NULL,
  `LiftId` float NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`LiftId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_lift`
--

LOCK TABLES `beacon_lift` WRITE;
/*!40000 ALTER TABLE `beacon_lift` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_lift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_lift_annotation`
--

DROP TABLE IF EXISTS `beacon_lift_annotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_lift_annotation` (
  `MAC` varchar(20) NOT NULL,
  `LiftId` float NOT NULL,
  `NewLiftId` float NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`LiftId`,`NewLiftId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_lift_annotation`
--

LOCK TABLES `beacon_lift_annotation` WRITE;
/*!40000 ALTER TABLE `beacon_lift_annotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_lift_annotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_merchandise`
--

DROP TABLE IF EXISTS `beacon_merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_merchandise` (
  `MAC` varchar(20) NOT NULL,
  `SKU` varchar(20) NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_merchandise`
--

LOCK TABLES `beacon_merchandise` WRITE;
/*!40000 ALTER TABLE `beacon_merchandise` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_merchandise_annotation`
--

DROP TABLE IF EXISTS `beacon_merchandise_annotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_merchandise_annotation` (
  `MAC` varchar(20) NOT NULL,
  `SKU` varchar(20) NOT NULL,
  `NewSKU` varchar(20) NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`SKU`,`NewSKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_merchandise_annotation`
--

LOCK TABLES `beacon_merchandise_annotation` WRITE;
/*!40000 ALTER TABLE `beacon_merchandise_annotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_merchandise_annotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_store`
--

DROP TABLE IF EXISTS `beacon_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_store` (
  `MAC` varchar(20) NOT NULL,
  `FedID` varchar(50) NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`FedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_store`
--

LOCK TABLES `beacon_store` WRITE;
/*!40000 ALTER TABLE `beacon_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beacon_store_annotation`
--

DROP TABLE IF EXISTS `beacon_store_annotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beacon_store_annotation` (
  `MAC` varchar(20) NOT NULL,
  `FedID` varchar(50) NOT NULL,
  `NewFedID` varchar(50) NOT NULL,
  `Strength` float NOT NULL,
  `Time` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`MAC`,`FedID`,`NewFedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beacon_store_annotation`
--

LOCK TABLES `beacon_store_annotation` WRITE;
/*!40000 ALTER TABLE `beacon_store_annotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `beacon_store_annotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('Apothecary Sundries'),('Beauty & Personal Care'),('Childrens Apparel & Toys'),('Fashion Jewelry and Eyewear'),('Footwear'),('Gems and Fine Jewelry'),('Gift Books, Stationery & Music'),('Handbags & Luggage'),('Home Furnishings & Accessories'),('Maternity'),('Mens Apparel'),('Technology & Electronics'),('Womens Apparel');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_store`
--

DROP TABLE IF EXISTS `department_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_store` (
  `FedID` varchar(50) NOT NULL,
  `DeptName` varchar(50) NOT NULL,
  `Floor` float NOT NULL,
  PRIMARY KEY (`FedID`,`DeptName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_store`
--

LOCK TABLES `department_store` WRITE;
/*!40000 ALTER TABLE `department_store` DISABLE KEYS */;
INSERT INTO `department_store` VALUES ('106','Womens Apparel',0),('250','Womens Apparel',0),('260','Footwear',0),('260','Mens Apparel',0),('260','Womens Apparel',0),('710','Mens Apparel',0),('710','Womens Apparel',0),('718','Womens Apparel',0),('869','Beauty & Personal Care',0),('869','Footwear',0),('869','Mens Apparel',0),('869','Womens Apparel',0),('891','Womens Apparel',0);
/*!40000 ALTER TABLE `department_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elevator`
--

DROP TABLE IF EXISTS `elevator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elevator` (
  `Id` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elevator`
--

LOCK TABLES `elevator` WRITE;
/*!40000 ALTER TABLE `elevator` DISABLE KEYS */;
/*!40000 ALTER TABLE `elevator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrance`
--

DROP TABLE IF EXISTS `entrance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrance` (
  `GPS` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `MallId` float NOT NULL,
  PRIMARY KEY (`GPS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrance`
--

LOCK TABLES `entrance` WRITE;
/*!40000 ALTER TABLE `entrance` DISABLE KEYS */;
INSERT INTO `entrance` VALUES ('34.143555, -118.255165','889 Americana Way Glendale, CA 91210',2001030),('34.144390, -118.257761','889 Americana Way Glendale, CA 91210',2001030),('34.144399, -118.255186','889 Americana Way Glendale, CA 91210',2001030),('34.145189, -118.257815','889 Americana Way Glendale, CA 91210',2001030);
/*!40000 ALTER TABLE `entrance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrance_floor`
--

DROP TABLE IF EXISTS `entrance_floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrance_floor` (
  `FloorId` float NOT NULL,
  `EntranceGPS` varchar(50) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`FloorId`,`EntranceGPS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrance_floor`
--

LOCK TABLES `entrance_floor` WRITE;
/*!40000 ALTER TABLE `entrance_floor` DISABLE KEYS */;
INSERT INTO `entrance_floor` VALUES (0,'1',34.1436,-118.255),(0,'2',34.1444,-118.255),(0,'3',34.1444,-118.258),(0,'4',34.1452,-118.258);
/*!40000 ALTER TABLE `entrance_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalator`
--

DROP TABLE IF EXISTS `escalator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalator` (
  `Id` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalator`
--

LOCK TABLES `escalator` WRITE;
/*!40000 ALTER TABLE `escalator` DISABLE KEYS */;
/*!40000 ALTER TABLE `escalator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floor` (
  `Id` float NOT NULL,
  `Map` blob,
  `MallId` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
INSERT INTO `floor` VALUES (0,NULL,2001030);
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor_hallway`
--

DROP TABLE IF EXISTS `floor_hallway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floor_hallway` (
  `FloorId` float NOT NULL,
  `X1` float NOT NULL,
  `Y1` float NOT NULL,
  `X2` float NOT NULL,
  `Y2` float NOT NULL,
  PRIMARY KEY (`FloorId`,`X1`,`Y1`,`X2`,`Y2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor_hallway`
--

LOCK TABLES `floor_hallway` WRITE;
/*!40000 ALTER TABLE `floor_hallway` DISABLE KEYS */;
INSERT INTO `floor_hallway` VALUES (0,34.1435,-118.257,34.1452,-118.258),(0,34.1436,-118.255,34.1444,-118.255),(0,34.1444,-118.255,34.1435,-118.257),(0,34.1452,-118.258,34.1436,-118.255);
/*!40000 ALTER TABLE `floor_hallway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor_store`
--

DROP TABLE IF EXISTS `floor_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floor_store` (
  `FloorId` float NOT NULL,
  `FedID` varchar(50) NOT NULL,
  PRIMARY KEY (`FloorId`,`FedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor_store`
--

LOCK TABLES `floor_store` WRITE;
/*!40000 ALTER TABLE `floor_store` DISABLE KEYS */;
INSERT INTO `floor_store` VALUES (0,'106'),(0,'112'),(0,'116'),(0,'126'),(0,'138'),(0,'210'),(0,'212'),(0,'220'),(0,'230'),(0,'250'),(0,'260'),(0,'519'),(0,'529'),(0,'539'),(0,'561'),(0,'710'),(0,'712'),(0,'716'),(0,'718'),(0,'720'),(0,'728'),(0,'732'),(0,'775'),(0,'777'),(0,'779'),(0,'790'),(0,'796'),(0,'798'),(0,'811'),(0,'837'),(0,'853'),(0,'857'),(0,'859'),(0,'863'),(0,'869'),(0,'877'),(0,'891');
/*!40000 ALTER TABLE `floor_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hallway`
--

DROP TABLE IF EXISTS `hallway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hallway` (
  `X1` float NOT NULL,
  `Y1` float NOT NULL,
  `X2` float NOT NULL,
  `Y2` float NOT NULL,
  PRIMARY KEY (`X1`,`Y1`,`X2`,`Y2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hallway`
--

LOCK TABLES `hallway` WRITE;
/*!40000 ALTER TABLE `hallway` DISABLE KEYS */;
INSERT INTO `hallway` VALUES (34.1435,-118.257,34.1452,-118.258),(34.1436,-118.255,34.1444,-118.255),(34.1444,-118.255,34.1435,-118.257),(34.1452,-118.258,34.1436,-118.255);
/*!40000 ALTER TABLE `hallway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hallway_hallway_lift`
--

DROP TABLE IF EXISTS `hallway_hallway_lift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hallway_hallway_lift` (
  `LiftId` float NOT NULL,
  `HW1_X1` float NOT NULL,
  `HW1_Y1` float NOT NULL,
  `HW1_X2` float NOT NULL,
  `HW1_Y2` float NOT NULL,
  `HW2_X1` float NOT NULL,
  `HW2_Y1` float NOT NULL,
  `HW2_X2` float NOT NULL,
  `HW2_Y2` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`LiftId`,`HW1_X1`,`HW1_Y1`,`HW1_X2`,`HW1_Y2`,`HW2_X1`,`HW2_Y1`,`HW2_X2`,`HW2_Y2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hallway_hallway_lift`
--

LOCK TABLES `hallway_hallway_lift` WRITE;
/*!40000 ALTER TABLE `hallway_hallway_lift` DISABLE KEYS */;
/*!40000 ALTER TABLE `hallway_hallway_lift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lift`
--

DROP TABLE IF EXISTS `lift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lift` (
  `Id` float NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lift`
--

LOCK TABLES `lift` WRITE;
/*!40000 ALTER TABLE `lift` DISABLE KEYS */;
/*!40000 ALTER TABLE `lift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lift_entrance_hallway`
--

DROP TABLE IF EXISTS `lift_entrance_hallway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lift_entrance_hallway` (
  `EntranceGPS` varchar(50) NOT NULL,
  `LiftId` float NOT NULL,
  `HW_X1` float NOT NULL,
  `HW_Y1` float NOT NULL,
  `HW_X2` float NOT NULL,
  `HW_Y2` float NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`EntranceGPS`,`LiftId`,`HW_X1`,`HW_Y1`,`HW_X2`,`HW_Y2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lift_entrance_hallway`
--

LOCK TABLES `lift_entrance_hallway` WRITE;
/*!40000 ALTER TABLE `lift_entrance_hallway` DISABLE KEYS */;
/*!40000 ALTER TABLE `lift_entrance_hallway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall`
--

DROP TABLE IF EXISTS `mall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall` (
  `Id` float NOT NULL,
  `URL` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall`
--

LOCK TABLES `mall` WRITE;
/*!40000 ALTER TABLE `mall` DISABLE KEYS */;
INSERT INTO `mall` VALUES (200101,'http://www.americanaatbrand.com/','889 Americana Way Glendale, CA 91210','The Americana at Brand','8186378982');
/*!40000 ALTER TABLE `mall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchandise`
--

DROP TABLE IF EXISTS `merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchandise` (
  `SKU` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  PRIMARY KEY (`SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchandise`
--

LOCK TABLES `merchandise` WRITE;
/*!40000 ALTER TABLE `merchandise` DISABLE KEYS */;
INSERT INTO `merchandise` VALUES ('1632163','Black t shirt','Lacoste'),('1736181','Red t shirt','Lacoste'),('1827163','Red low top sneakers','Converse'),('1827175','White low top sneakers','Converse'),('1827181','Black low top sneakers','Converse'),('1934175','White t shirt','Lacoste');
/*!40000 ALTER TABLE `merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchandise_department`
--

DROP TABLE IF EXISTS `merchandise_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchandise_department` (
  `DeptName` varchar(50) NOT NULL,
  `SKU` varchar(20) NOT NULL,
  `QTY` float NOT NULL,
  PRIMARY KEY (`DeptName`,`SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchandise_department`
--

LOCK TABLES `merchandise_department` WRITE;
/*!40000 ALTER TABLE `merchandise_department` DISABLE KEYS */;
INSERT INTO `merchandise_department` VALUES ('Footwear','1827163',10),('Footwear','1827175',14),('Footwear','1827181',12),('Mens Apparel','1632163',11),('Mens Apparel','1736181',8),('Mens Apparel','1934175',9),('Womens Apparel','1632163',11),('Womens Apparel','1736181',8),('Womens Apparel','1934175',9);
/*!40000 ALTER TABLE `merchandise_department` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2017-02-14 10:47:10
