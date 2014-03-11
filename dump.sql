-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: 710567_proj
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.1

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
-- Current Database: `710567_proj`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `710567_proj` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `710567_proj`;

--
-- Table structure for table `LGBRAND`
--

DROP TABLE IF EXISTS `LGBRAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGBRAND` (
  `Brand_ID` int(3) NOT NULL,
  `Brand_Name` varchar(20) NOT NULL,
  `Brand_Type` varchar(20) NOT NULL,
  PRIMARY KEY (`Brand_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGBRAND`
--

LOCK TABLES `LGBRAND` WRITE;
/*!40000 ALTER TABLE `LGBRAND` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGBRAND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGCUSTOMER`
--

DROP TABLE IF EXISTS `LGCUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGCUSTOMER` (
  `Cust_Code` int(3) NOT NULL,
  `Cust_Fname` varchar(20) NOT NULL,
  `Cust_Lname` varchar(20) NOT NULL,
  `Cust_Street` varchar(50) NOT NULL,
  `Cust_City` varchar(20) NOT NULL,
  `Cust_Province` varchar(20) NOT NULL,
  `Cust_ZIP` varchar(5) NOT NULL,
  `Cust_Balance` double(8,2) NOT NULL,
  PRIMARY KEY (`Cust_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGCUSTOMER`
--

LOCK TABLES `LGCUSTOMER` WRITE;
/*!40000 ALTER TABLE `LGCUSTOMER` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGCUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGDEPARTMENT`
--

DROP TABLE IF EXISTS `LGDEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGDEPARTMENT` (
  `Dept_num` int(3) NOT NULL,
  `Dept_Name` varchar(20) NOT NULL,
  `Dept_Mail_Box` varchar(3) NOT NULL,
  `Dept_Phone` varchar(10) NOT NULL,
  `Emp_Num` int(3) NOT NULL,
  PRIMARY KEY (`Dept_num`),
  KEY `Emp_Num` (`Emp_Num`),
  CONSTRAINT `LGDEPARTMENT_ibfk_1` FOREIGN KEY (`Emp_Num`) REFERENCES `LGEMPLOYEE` (`Emp_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGDEPARTMENT`
--

LOCK TABLES `LGDEPARTMENT` WRITE;
/*!40000 ALTER TABLE `LGDEPARTMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGDEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGEMPLOYEE`
--

DROP TABLE IF EXISTS `LGEMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGEMPLOYEE` (
  `Emp_Num` int(3) NOT NULL,
  `Emp_Fname` varchar(20) NOT NULL,
  `Emp_Lname` varchar(20) NOT NULL,
  `Emp_Email` varchar(30) NOT NULL,
  `Emp_Phone` varchar(10) NOT NULL,
  `Emp_Hiredate` date NOT NULL,
  `Emp_Title` varchar(10) NOT NULL,
  `Emp_Comm` double(2,2) NOT NULL,
  `Dept_Num` int(3) NOT NULL,
  PRIMARY KEY (`Emp_Num`),
  KEY `Dept_Num` (`Dept_Num`),
  CONSTRAINT `LGEMPLOYEE_ibfk_1` FOREIGN KEY (`Dept_Num`) REFERENCES `LGDEPARTMENT` (`Dept_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGEMPLOYEE`
--

LOCK TABLES `LGEMPLOYEE` WRITE;
/*!40000 ALTER TABLE `LGEMPLOYEE` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGEMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGINVOICE`
--

DROP TABLE IF EXISTS `LGINVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGINVOICE` (
  `Inv_Num` int(3) NOT NULL,
  `Cust_Code` int(3) NOT NULL,
  `Inv_Date` date NOT NULL,
  `Inv_Total` double(8,2) NOT NULL,
  `Employee_ID` int(3) NOT NULL,
  PRIMARY KEY (`Inv_Num`),
  KEY `Cust_Code` (`Cust_Code`),
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `LGINVOICE_ibfk_2` FOREIGN KEY (`Employee_ID`) REFERENCES `LGEMPLOYEE` (`Emp_Num`),
  CONSTRAINT `LGINVOICE_ibfk_1` FOREIGN KEY (`Cust_Code`) REFERENCES `LGCUSTOMER` (`Cust_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGINVOICE`
--

LOCK TABLES `LGINVOICE` WRITE;
/*!40000 ALTER TABLE `LGINVOICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGINVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGLINE`
--

DROP TABLE IF EXISTS `LGLINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGLINE` (
  `Inv_Num` int(3) NOT NULL,
  `Line_Num` int(3) NOT NULL,
  `Prod_SKU` int(3) NOT NULL,
  `Line_Qty` int(3) NOT NULL,
  `Line_Price` double(8,2) NOT NULL,
  PRIMARY KEY (`Inv_Num`,`Line_Num`),
  KEY `Prod_SKU` (`Prod_SKU`),
  CONSTRAINT `LGLINE_ibfk_1` FOREIGN KEY (`Inv_Num`) REFERENCES `LGINVOICE` (`Inv_Num`),
  CONSTRAINT `LGLINE_ibfk_2` FOREIGN KEY (`Prod_SKU`) REFERENCES `LGPRODUCT` (`Prod_SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGLINE`
--

LOCK TABLES `LGLINE` WRITE;
/*!40000 ALTER TABLE `LGLINE` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGLINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGPRODUCT`
--

DROP TABLE IF EXISTS `LGPRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGPRODUCT` (
  `Prod_SKU` int(3) NOT NULL,
  `Prod_Desc` varchar(20) NOT NULL,
  `Prod_Type` varchar(20) NOT NULL,
  `Prod_Base` varchar(20) NOT NULL,
  `Prod_Category` varchar(20) NOT NULL,
  `Prod_Price` double(5,2) NOT NULL,
  `Prod_QOH` int(3) NOT NULL,
  `Prod_Min` int(3) NOT NULL,
  `Brand_ID` int(3) NOT NULL,
  PRIMARY KEY (`Prod_SKU`),
  KEY `Brand_ID` (`Brand_ID`),
  CONSTRAINT `LGPRODUCT_ibfk_1` FOREIGN KEY (`Brand_ID`) REFERENCES `LGBRAND` (`Brand_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGPRODUCT`
--

LOCK TABLES `LGPRODUCT` WRITE;
/*!40000 ALTER TABLE `LGPRODUCT` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGPRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGSALARY_HISTORY`
--

DROP TABLE IF EXISTS `LGSALARY_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGSALARY_HISTORY` (
  `Emp_Num` int(3) NOT NULL,
  `Sal_From` date NOT NULL,
  `Sal_End` date NOT NULL,
  `Sal_Amount` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`Emp_Num`,`Sal_From`),
  CONSTRAINT `LGSALARY_HISTORY_ibfk_1` FOREIGN KEY (`Emp_Num`) REFERENCES `LGEMPLOYEE` (`Emp_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGSALARY_HISTORY`
--

LOCK TABLES `LGSALARY_HISTORY` WRITE;
/*!40000 ALTER TABLE `LGSALARY_HISTORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGSALARY_HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGSUPPLIES`
--

DROP TABLE IF EXISTS `LGSUPPLIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGSUPPLIES` (
  `Vend_ID` int(3) NOT NULL,
  `Prod_SKU` int(3) NOT NULL,
  PRIMARY KEY (`Vend_ID`,`Prod_SKU`),
  KEY `Prod_SKU` (`Prod_SKU`),
  CONSTRAINT `LGSUPPLIES_ibfk_1` FOREIGN KEY (`Vend_ID`) REFERENCES `LGVENDOR` (`Vend_ID`),
  CONSTRAINT `LGSUPPLIES_ibfk_2` FOREIGN KEY (`Prod_SKU`) REFERENCES `LGPRODUCT` (`Prod_SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGSUPPLIES`
--

LOCK TABLES `LGSUPPLIES` WRITE;
/*!40000 ALTER TABLE `LGSUPPLIES` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGSUPPLIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGVENDOR`
--

DROP TABLE IF EXISTS `LGVENDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGVENDOR` (
  `Vend_ID` int(3) NOT NULL,
  `Vend_Name` varchar(20) NOT NULL,
  `Vend_Street` varchar(50) NOT NULL,
  `Vend_City` varchar(20) NOT NULL,
  `Vend_Province` varchar(20) NOT NULL,
  `Vend_ZIP` varchar(5) NOT NULL,
  PRIMARY KEY (`Vend_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGVENDOR`
--

LOCK TABLES `LGVENDOR` WRITE;
/*!40000 ALTER TABLE `LGVENDOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `LGVENDOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-11  9:44:22
