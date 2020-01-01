-- MySQL dump 10.13  Distrib 5.1.51, for Win32 (ia32)
--
-- Host: localhost    Database: SayariKiDhuniya
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
-- Current Database: `SayariKiDhuniya`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sayarikidhuniya` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `SayariKiDhuniya`;

--
-- Table structure for table `bewafashayari`
--

DROP TABLE IF EXISTS `bewafashayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bewafashayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bewafashayari`
--

LOCK TABLES `bewafashayari` WRITE;
/*!40000 ALTER TABLE `bewafashayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `bewafashayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dardedil`
--

DROP TABLE IF EXISTS `dardedil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dardedil` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dardedil`
--

LOCK TABLES `dardedil` WRITE;
/*!40000 ALTER TABLE `dardedil` DISABLE KEYS */;
/*!40000 ALTER TABLE `dardedil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dardshayari`
--

DROP TABLE IF EXISTS `dardshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dardshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dardshayari`
--

LOCK TABLES `dardshayari` WRITE;
/*!40000 ALTER TABLE `dardshayari` DISABLE KEYS */;
INSERT INTO `dardshayari` VALUES ('Jab chalna nahi aata tha\r\nTab girne nahi dete the log\r\nJab se sabhala hai kud ko\r\nKadam kadam par girane ki Sochte hai log',1,NULL),('Udaas Hoon Par Tujhse Naraz Nahi.. Tere Dil Mein Hoon Par Tere Pass Nahi.. Waise To Sab Kuch Hain Mere Pass.. Par Tere Jaisa Koi Khas',2,NULL);
/*!40000 ALTER TABLE `dardshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duashayari`
--

DROP TABLE IF EXISTS `duashayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duashayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duashayari`
--

LOCK TABLES `duashayari` WRITE;
/*!40000 ALTER TABLE `duashayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `duashayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funnyshayari`
--

DROP TABLE IF EXISTS `funnyshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funnyshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funnyshayari`
--

LOCK TABLES `funnyshayari` WRITE;
/*!40000 ALTER TABLE `funnyshayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `funnyshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghamshayari`
--

DROP TABLE IF EXISTS `ghamshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ghamshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghamshayari`
--

LOCK TABLES `ghamshayari` WRITE;
/*!40000 ALTER TABLE `ghamshayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `ghamshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intezaarshayari`
--

DROP TABLE IF EXISTS `intezaarshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intezaarshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intezaarshayari`
--

LOCK TABLES `intezaarshayari` WRITE;
/*!40000 ALTER TABLE `intezaarshayari` DISABLE KEYS */;
INSERT INTO `intezaarshayari` VALUES ('shambal kar bol baat door tak jayegii...ager ishq h to bol do baby ji nhi to der ho jayegii..',1,NULL);
/*!40000 ALTER TABLE `intezaarshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ishqshayari`
--

DROP TABLE IF EXISTS `ishqshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ishqshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ishqshayari`
--

LOCK TABLES `ishqshayari` WRITE;
/*!40000 ALTER TABLE `ishqshayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `ishqshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judaishayari`
--

DROP TABLE IF EXISTS `judaishayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judaishayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judaishayari`
--

LOCK TABLES `judaishayari` WRITE;
/*!40000 ALTER TABLE `judaishayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `judaishayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `email` varchar(200) DEFAULT NULL,
  `psw` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loveshayari`
--

DROP TABLE IF EXISTS `loveshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loveshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loveshayari`
--

LOCK TABLES `loveshayari` WRITE;
/*!40000 ALTER TABLE `loveshayari` DISABLE KEYS */;
INSERT INTO `loveshayari` VALUES ('kon kaheta hai Taj Mahel banane ke lie dolat nahi milti. \r\nTaj Mahel banane ke lie dolat to milti he magar Mohbatt karne ke lie Mumtaj nahi milti.',2,NULL),('ree',4,'rrr'),('<option value=\"none\">--None--</option>',5,'Kbhi Udaas ho to btana'),('<option value=\"none\">--None--</option>',6,'Kbhi Udaas ho to btana'),('Kabhi udaas ho jayo to btana mujhe fir se apna dil denge tumhe khelne k liye',7,'Kbhi Udaas ho to btana'),('Kabhi udaas ho jayo to btana mujhe fir se apna dil denge tumhe khelne k liye',8,'Kbhi Udaas ho to btana'),('Kabhi udaas ho jayo to btana mujhe fir se apna dil denge tumhe khelne k liye',9,'Kbhi Udaas ho to btana'),('Kabhi udaas ho jayo to btana mujhe fir se apna dil denge tumhe khelne k liye',10,'Kbhi Udaas ho to btana'),('rohit choubey15853737474',11,'rrr'),('hhhhhhgkjyyyyyyyyyyyfffffffffffffff',12,'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb');
/*!40000 ALTER TABLE `loveshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naseebshayari`
--

DROP TABLE IF EXISTS `naseebshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `naseebshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naseebshayari`
--

LOCK TABLES `naseebshayari` WRITE;
/*!40000 ALTER TABLE `naseebshayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `naseebshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poetry`
--

DROP TABLE IF EXISTS `poetry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poetry` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poetry`
--

LOCK TABLES `poetry` WRITE;
/*!40000 ALTER TABLE `poetry` DISABLE KEYS */;
/*!40000 ALTER TABLE `poetry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `romanticshayari`
--

DROP TABLE IF EXISTS `romanticshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `romanticshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `romanticshayari`
--

LOCK TABLES `romanticshayari` WRITE;
/*!40000 ALTER TABLE `romanticshayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `romanticshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sadshayari`
--

DROP TABLE IF EXISTS `sadshayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sadshayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sadshayari`
--

LOCK TABLES `sadshayari` WRITE;
/*!40000 ALTER TABLE `sadshayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `sadshayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sayraikidhuniyatable`
--

DROP TABLE IF EXISTS `sayraikidhuniyatable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sayraikidhuniyatable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SayariTableName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sayraikidhuniyatable`
--

LOCK TABLES `sayraikidhuniyatable` WRITE;
/*!40000 ALTER TABLE `sayraikidhuniyatable` DISABLE KEYS */;
INSERT INTO `sayraikidhuniyatable` VALUES (2,'FunnyShayari'),(3,'SadShayari'),(4,'RomanticShayari'),(5,' BewafaShayari'),(6,'DardShayari'),(7,' DardeDil'),(8,'DuaShayari'),(9,'GhamShayari'),(10,'IntezaarShayari'),(11,'IshqShayari'),(12,'JudaiShayari'),(13,'NaseebShayari'),(14,'SharabiShayari'),(15,'TanhaiShayari'),(16,'Poetry'),(17,'loveshayari');
/*!40000 ALTER TABLE `sayraikidhuniyatable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharabishayari`
--

DROP TABLE IF EXISTS `sharabishayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharabishayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharabishayari`
--

LOCK TABLES `sharabishayari` WRITE;
/*!40000 ALTER TABLE `sharabishayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `sharabishayari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tanhaishayari`
--

DROP TABLE IF EXISTS `tanhaishayari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tanhaishayari` (
  `Sayari` varchar(55535) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tanhaishayari`
--

LOCK TABLES `tanhaishayari` WRITE;
/*!40000 ALTER TABLE `tanhaishayari` DISABLE KEYS */;
/*!40000 ALTER TABLE `tanhaishayari` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-30  0:39:22
