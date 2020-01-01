-- MySQL dump 10.13  Distrib 5.1.51, for Win32 (ia32)
--
-- Host: localhost    Database: carstore
-- ------------------------------------------------------
-- Server version	5.1.51-community

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
-- Current Database: `carstore`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `carstore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `carstore`;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `username` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `brand` varchar(333) DEFAULT NULL,
  `model` varchar(333) DEFAULT NULL,
  `price` varchar(222) DEFAULT NULL,
  `mileage` varchar(222) DEFAULT NULL,
  `image` varchar(222) DEFAULT NULL,
  `dt` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES ('SANTOSH',NULL,'BMW','Tata Nexon','6.69 Lakhs onwards','17.88 to 23.97 kmpl','tata-altroz.jpg','2019-10-28',NULL),('SANTOSH',NULL,'BMW','Tata Nexon','6.69 Lakhs onwards','17.88 to 23.97 kmpl','tata-altroz.jpg','2019-10-28',NULL),('ashish',NULL,'volkswagen',' Toyota Corolla 2020',' 75.00 Lakh','40','front-left-side-47.jpg','2019-11-19',NULL),('ashish',NULL,'AUDI','Series 321','3.5 Lakh','Petrol 35 Km','bmw.jpg','2019-11-28',NULL);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `username` varchar(500) DEFAULT NULL,
  `brand` varchar(933) DEFAULT NULL,
  `model` varchar(333) DEFAULT NULL,
  `price` varchar(223) DEFAULT NULL,
  `mileage` varchar(332) DEFAULT NULL,
  `image` varchar(769) DEFAULT NULL,
  `fullname` varchar(838) DEFAULT NULL,
  `email` varchar(232) DEFAULT NULL,
  `address` varchar(433) DEFAULT NULL,
  `city` varchar(434) DEFAULT NULL,
  `state` varchar(433) DEFAULT NULL,
  `zip` varchar(34) DEFAULT NULL,
  `cardname` varchar(343) DEFAULT NULL,
  `cardno` varchar(343) DEFAULT NULL,
  `expmonth` varchar(433) DEFAULT NULL,
  `expyear` varchar(433) DEFAULT NULL,
  `cvv` varchar(232) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES ('ashish','volkswagen',' Toyota Corolla 2020',' 75.00 Lakh','40','front-left-side-47.jpg','Malti','malti991136@gmail.com','','','','','','','','',''),('SANTOSH','AUDI','Series 321','3.5 Lakh','Petrol 35 Km','bmw.jpg','Mohit Choubey','rohitchoubey15847@gmail.com','H.NO. V-238','FARIDABAD','Haryana','121001','Mohit','6666-2222-5555-7777','October','2092','232');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `username` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `cnumber` varchar(444) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount` (
  `discount` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('20%'),('29'),('f'),('20% Discount on every car on this Diwali '),('avail upto 20% discount and Claim Insurance');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `username` varchar(500) DEFAULT NULL,
  `brand` varchar(333) DEFAULT NULL,
  `model` varchar(333) DEFAULT NULL,
  `price` varchar(222) DEFAULT NULL,
  `mileage` varchar(222) DEFAULT NULL,
  `image` varchar(222) DEFAULT NULL,
  `feedback` varchar(333) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('ashish','BMW','Series321','41.4Lakhs','30','bmw-i8.jpg','I really Like This car and This website helps me to find out the best car.'),('ashish','volkswagen',' Toyota Corolla 2020',' 75.00 Lakh','40','front-left-side-47.jpg','I don\'t Like This car bikul bhii');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brands` varchar(202) DEFAULT NULL,
  `model` varchar(202) DEFAULT NULL,
  `price` varchar(202) DEFAULT NULL,
  `mileage` varchar(202) DEFAULT NULL,
  `cc` varchar(202) DEFAULT NULL,
  `seating` varchar(202) DEFAULT NULL,
  `status` varchar(202) DEFAULT NULL,
  `image` varchar(2222) DEFAULT NULL,
  `path` varchar(2222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (2,'AUDI','Series 321','3.5 Lakh','Petrol 35 Km','250','6','New','C:\\Users\\User\\workspace\\CarStore\\WebContent\\image','bmw.jpg'),(4,'BMW','Series321','41.4Lakhs','30','300','5','Up Coming','C:\\Users\\User\\workspace\\CarStore\\WebContent\\image','bmw-i8.jpg'),(5,'BMW','Tata Nexon','6.69 Lakhs onwards','17.88 to 23.97 kmpl','220','4','New','C:\\Users\\User\\workspace\\CarStore\\WebContent\\image','tata-altroz.jpg'),(6,'volkswagen',' Toyota Corolla 2020',' 75.00 Lakh','40','230','8','Up Coming','C:\\Users\\User\\workspace\\CarStore\\WebContent\\image','front-left-side-47.jpg'),(7,'Mahindra','Series 223','37 Lakhs','30Kmpl','230','4','Up Coming','C:\\Users\\User\\workspace\\CarStore\\WebContent\\image','maxresdefault.jpg');
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `mobile` varchar(333) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Ashish','akm','akm@gmail.com','3674637'),('SANTOSH','ddsfd','+917503626689','rohitchoubey15847@gmail.com'),('SANTOSH','1234','9910958490','mohitchoubey206@gmail.com'),('Rohit','1234567890','9910958490','mohitchoubey206@gmail.com'),('Shiva','123456','8851692872','shiba@gmal.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-30  0:41:31
