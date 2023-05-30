-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: module_5
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `useradditionalinfo`
--

DROP TABLE IF EXISTS `useradditionalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradditionalinfo` (
  `userID` int(7) NOT NULL AUTO_INCREMENT,
  `isAClient` bit(1) NOT NULL,
  `purchases` int(11) NOT NULL,
  `signedInWith` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradditionalinfo`
--

LOCK TABLES `useradditionalinfo` WRITE;
/*!40000 ALTER TABLE `useradditionalinfo` DISABLE KEYS */;
INSERT INTO `useradditionalinfo` VALUES (1,'',32,'Google','2023-04-06 20:51:30'),(2,'\0',4,NULL,'2023-04-06 20:51:30'),(3,'',12,'SIGNED UP','2023-04-06 20:51:30'),(4,'',22,'Google','2023-04-06 20:51:30');
/*!40000 ALTER TABLE `useradditionalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradresses`
--

DROP TABLE IF EXISTS `useradresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradresses` (
  `userID` int(7) NOT NULL AUTO_INCREMENT,
  `zipCode` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradresses`
--

LOCK TABLES `useradresses` WRITE;
/*!40000 ALTER TABLE `useradresses` DISABLE KEYS */;
INSERT INTO `useradresses` VALUES (1,'06510','20 Monroe ST','New Haven','Connecticut','USA'),(2,'6313','102 Stradun ST','Gottschalkenberg','Menzingen','Switzerland'),(3,'BD23 4XS','50 Telford ST','Bank Newton','Skipton','UK'),(4,'64001-725','824 Rua Mato Grosso','Teresina','Piau├¡','Brazil');
/*!40000 ALTER TABLE `useradresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercontactinfo`
--

DROP TABLE IF EXISTS `usercontactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercontactinfo` (
  `contactID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `prefixNumber` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercontactinfo`
--

LOCK TABLES `usercontactinfo` WRITE;
/*!40000 ALTER TABLE `usercontactinfo` DISABLE KEYS */;
INSERT INTO `usercontactinfo` VALUES (1,1,'+1','203-564-73-72','jefffman453@gmail.com'),(2,2,'+41','024-454-77-28','mossii@gmail.com'),(3,3,'+44','163-296-06-54','daybid@gmail.com'),(4,4,'+55','352-692-10-02','sullii@gmail.com');
/*!40000 ALTER TABLE `usercontactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(7) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Espinoza','Jeff',''),(2,'Moss','Zarah',NULL),(3,'Elliott','David','Andriel'),(4,'Sullivan','Deeanna','Elson');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 16:40:09
