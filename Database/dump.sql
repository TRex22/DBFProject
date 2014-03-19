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
INSERT INTO `LGBRAND` VALUES (0,'Light Sabers','Premium'),(2,'Tatooine Dust','Regular'),(3,'Coruscant Painters','Premium'),(4,'Racer Pod Ballers','Regular');
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
INSERT INTO `LGCUSTOMER` VALUES (0,'John','Doe','1 Yale Road','Johannesburg','Gauteng','0000',1.00),(1,'Pacific','Rim','9 Jager Road','Kaijuland','Western Cape','14785',15000.00),(2,'Iron Man','3','9 Tony Stark Road','California','Gauteng','14785',15700.00),(3,'The Hunger','Games','11 Katniss Everdeen Street','Panem','Limpopo','45678',5000.00),(4,'Incep','Tion','6 9th Street','Panem','Gauteng','45677',50.00);
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
  `Emp_Num` int(5) DEFAULT NULL,
  PRIMARY KEY (`Dept_num`),
  KEY `Emp_Num` (`Emp_Num`),
  CONSTRAINT `LGDEPARTMENT_ibfk_1` FOREIGN KEY (`Emp_Num`) REFERENCES `LGEMPLOYEE` (`Emp_Num`),
  CONSTRAINT `LGDEPARTMENT_ibfk_2` FOREIGN KEY (`Emp_Num`) REFERENCES `LGEMPLOYEE` (`Emp_Num`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGDEPARTMENT`
--

LOCK TABLES `LGDEPARTMENT` WRITE;
/*!40000 ALTER TABLE `LGDEPARTMENT` DISABLE KEYS */;
INSERT INTO `LGDEPARTMENT` VALUES (200,'Admin','500','0111234567',83677),(300,'Sales','250','0117852369',83745),(400,'Marketing','280','0117854589',84039),(500,'Finance','210','0117858989',83649);
/*!40000 ALTER TABLE `LGDEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGEMPLOYEE`
--

DROP TABLE IF EXISTS `LGEMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGEMPLOYEE` (
  `Emp_Num` int(5) NOT NULL DEFAULT '0',
  `Emp_Fname` varchar(20) NOT NULL,
  `Emp_Lname` varchar(20) NOT NULL,
  `Emp_Email` varchar(30) NOT NULL,
  `Emp_Phone` varchar(10) NOT NULL,
  `Emp_Hiredate` date NOT NULL,
  `Emp_Title` varchar(30) NOT NULL,
  `Emp_Comm` double(2,2) NOT NULL,
  `Dept_Num` int(3) DEFAULT NULL,
  PRIMARY KEY (`Emp_Num`),
  KEY `Dept_Num` (`Dept_Num`),
  CONSTRAINT `LGEMPLOYEE_ibfk_1` FOREIGN KEY (`Dept_Num`) REFERENCES `LGDEPARTMENT` (`Dept_num`),
  CONSTRAINT `LGEMPLOYEE_ibfk_2` FOREIGN KEY (`Dept_Num`) REFERENCES `LGDEPARTMENT` (`Dept_num`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGEMPLOYEE`
--

LOCK TABLES `LGEMPLOYEE` WRITE;
/*!40000 ALTER TABLE `LGEMPLOYEE` DISABLE KEYS */;
INSERT INTO `LGEMPLOYEE` VALUES (12345,'John','Doe','jd@gmail.com','0721234567','2014-03-17','Senior Associate',0.10,200),(83649,'Luke','Skywalker','lukesw@hotmail.com','0834567896','2012-12-05','Manager',0.10,500),(83677,'Mace','Windu','mastermace@hotmail.com','0831234568','2011-06-25','Manager',0.60,200),(83745,'Obi Wan','Kenobi','obk@hotmail.com','0837458965','2010-02-05','Manager',0.23,300),(84039,'Annakin','Skywalker','annyskywalker@hotmail.com','0837451215','2010-08-05','Manager',0.23,400),(84564,'Master','Yoda','yodamaster@hotmail.com','0827854123','2010-06-25','Senior Associate',0.60,300),(84756,'Princess','Leiya','PLeiya@hotmail.com','0832547896','2012-05-14','Junior Associate',0.20,400),(84789,'Han','Solo','flyingsolo@hotmail.com','0832544596','2012-06-14','Junior Associate',0.10,500);
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
  CONSTRAINT `LGINVOICE_ibfk_4` FOREIGN KEY (`Employee_ID`) REFERENCES `LGEMPLOYEE` (`Emp_Num`) ON UPDATE CASCADE,
  CONSTRAINT `LGINVOICE_ibfk_1` FOREIGN KEY (`Cust_Code`) REFERENCES `LGCUSTOMER` (`Cust_Code`),
  CONSTRAINT `LGINVOICE_ibfk_2` FOREIGN KEY (`Employee_ID`) REFERENCES `LGEMPLOYEE` (`Emp_Num`),
  CONSTRAINT `LGINVOICE_ibfk_3` FOREIGN KEY (`Cust_Code`) REFERENCES `LGCUSTOMER` (`Cust_Code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGINVOICE`
--

LOCK TABLES `LGINVOICE` WRITE;
/*!40000 ALTER TABLE `LGINVOICE` DISABLE KEYS */;
INSERT INTO `LGINVOICE` VALUES (1,0,'2012-02-05',5000.00,83745),(2,0,'2012-08-06',7500.00,83745),(3,0,'2012-08-06',10000.00,83745),(4,1,'2011-08-06',9800.00,84039),(5,1,'2011-08-10',75000.00,84039),(6,2,'2011-09-10',500.00,84039),(7,2,'2011-01-10',5100.00,83649),(8,2,'2011-06-10',51020.00,83677),(9,3,'2010-06-10',151020.00,83677),(10,4,'2010-08-10',4020.00,83677),(11,4,'2010-08-19',14020.00,83745);
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
  CONSTRAINT `LGLINE_ibfk_4` FOREIGN KEY (`Prod_SKU`) REFERENCES `LGPRODUCT` (`Prod_SKU`) ON UPDATE CASCADE,
  CONSTRAINT `LGLINE_ibfk_1` FOREIGN KEY (`Inv_Num`) REFERENCES `LGINVOICE` (`Inv_Num`),
  CONSTRAINT `LGLINE_ibfk_2` FOREIGN KEY (`Prod_SKU`) REFERENCES `LGPRODUCT` (`Prod_SKU`),
  CONSTRAINT `LGLINE_ibfk_3` FOREIGN KEY (`Inv_Num`) REFERENCES `LGINVOICE` (`Inv_Num`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGLINE`
--

LOCK TABLES `LGLINE` WRITE;
/*!40000 ALTER TABLE `LGLINE` DISABLE KEYS */;
INSERT INTO `LGLINE` VALUES (1,1,1,1,50.00),(1,2,2,1,70.00),(2,1,3,4,700.00),(2,2,4,4,800.00),(3,1,4,4,900.00),(3,2,5,7,3500.00),(4,1,1,2,20.00),(4,2,2,2,200.00),(4,3,3,2,400.00),(5,1,4,2,400.00),(5,2,5,3,500.00),(5,5,4,3,1500.00);
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
  CONSTRAINT `LGPRODUCT_ibfk_2` FOREIGN KEY (`Brand_ID`) REFERENCES `LGBRAND` (`Brand_ID`) ON UPDATE CASCADE,
  CONSTRAINT `LGPRODUCT_ibfk_1` FOREIGN KEY (`Brand_ID`) REFERENCES `LGBRAND` (`Brand_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGPRODUCT`
--

LOCK TABLES `LGPRODUCT` WRITE;
/*!40000 ALTER TABLE `LGPRODUCT` DISABLE KEYS */;
INSERT INTO `LGPRODUCT` VALUES (1,'Cleans like Baus','Turpentine','Water','Cleaner',30.00,100,5,4),(2,'No more holes','Poly Filler','Polystyrene','Filler',90.00,70,7,2),(3,'Best paint Tatooine','Paint','Water','Top Coat',50.95,100,5,3),(4,'Opimus Primer','Shiny','Water','Primer',150.00,5,10,4),(5,'Navy Sealer','Solid','Cement','Sealer',99.95,75,9,0),(6,'Green Seal','Solid','Cement','Sealer',100.00,50,12,3);
/*!40000 ALTER TABLE `LGPRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LGSALARY_HISTORY`
--

DROP TABLE IF EXISTS `LGSALARY_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LGSALARY_HISTORY` (
  `Emp_Num` int(5) NOT NULL,
  `Sal_From` date NOT NULL,
  `Sal_End` date DEFAULT NULL,
  `Sal_Amount` double(8,2) NOT NULL,
  PRIMARY KEY (`Emp_Num`,`Sal_From`),
  CONSTRAINT `LGSALARY_HISTORY_ibfk_1` FOREIGN KEY (`Emp_Num`) REFERENCES `LGEMPLOYEE` (`Emp_Num`),
  CONSTRAINT `LGSALARY_HISTORY_ibfk_2` FOREIGN KEY (`Emp_Num`) REFERENCES `LGEMPLOYEE` (`Emp_Num`) ON UPDATE CASCADE,
  CONSTRAINT `LGSALARY_HISTORY_ibfk_3` FOREIGN KEY (`Emp_Num`) REFERENCES `LGEMPLOYEE` (`Emp_Num`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGSALARY_HISTORY`
--

LOCK TABLES `LGSALARY_HISTORY` WRITE;
/*!40000 ALTER TABLE `LGSALARY_HISTORY` DISABLE KEYS */;
INSERT INTO `LGSALARY_HISTORY` VALUES (12345,'2010-02-01','2011-03-02',12000.00),(12345,'2011-03-03',NULL,97000.00),(83649,'2010-02-01','2011-03-02',1000.00),(83649,'2011-03-03',NULL,87000.00),(83677,'2010-02-01','2011-03-02',12000.00),(83677,'2011-03-03',NULL,123000.00),(83745,'2010-02-01','2011-03-02',121000.00),(83745,'2011-03-03','2013-12-31',12000.00),(84039,'2010-02-01','2011-03-02',4000.00),(84039,'2011-03-03','2013-12-31',40000.00),(84564,'2010-02-01','2011-03-02',41000.00),(84564,'2011-03-03','2013-12-31',11000.00);
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
  CONSTRAINT `LGSUPPLIES_ibfk_4` FOREIGN KEY (`Prod_SKU`) REFERENCES `LGPRODUCT` (`Prod_SKU`) ON UPDATE CASCADE,
  CONSTRAINT `LGSUPPLIES_ibfk_1` FOREIGN KEY (`Vend_ID`) REFERENCES `LGVENDOR` (`Vend_ID`),
  CONSTRAINT `LGSUPPLIES_ibfk_2` FOREIGN KEY (`Prod_SKU`) REFERENCES `LGPRODUCT` (`Prod_SKU`),
  CONSTRAINT `LGSUPPLIES_ibfk_3` FOREIGN KEY (`Vend_ID`) REFERENCES `LGVENDOR` (`Vend_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LGSUPPLIES`
--

LOCK TABLES `LGSUPPLIES` WRITE;
/*!40000 ALTER TABLE `LGSUPPLIES` DISABLE KEYS */;
INSERT INTO `LGSUPPLIES` VALUES (0,1),(1,1),(2,1),(4,1),(0,2),(2,2),(4,2),(0,3),(2,3),(3,3),(4,3),(5,3),(1,4),(3,4),(5,4),(1,5),(3,5),(4,5),(5,5);
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
INSERT INTO `LGVENDOR` VALUES (0,'AB Devillies','47 Bat Road','Johannesburg','Gauteng','21458'),(1,'DW Steyn','47 Ball Road','Pretoria','Gauteng','14785'),(2,'F Du Plessis','47 Field Road','Cape Town','Western Cape','47852'),(3,'S Gerrard','47 Penalty Road','Ceres','Western Cape','41258'),(4,'C Adam','47 8th Road','Roodeport','Gauteng','36985'),(5,'C Crouch','47 10th Road','Northcliff','Gauteng','12345');
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

-- Dump completed on 2014-03-19 18:46:33
