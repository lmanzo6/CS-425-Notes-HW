CREATE DATABASE  IF NOT EXISTS `nbadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nbadb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: nbadb
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `CoachID` int NOT NULL,
  `TeamID` int DEFAULT NULL,
  `FIRST_NAME` varchar(60) DEFAULT NULL,
  `LAST_NAME` varchar(60) DEFAULT NULL,
  `START_YEAR` date DEFAULT NULL,
  PRIMARY KEY (`CoachID`),
  KEY `TeamID` (`TeamID`),
  CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,1,'Tom','Thibodeau','2020-07-30'),(2,1,'Jacque','Vaughn','2023-06-01'),(3,2,'Nick','Nurse','2023-06-01'),(4,2,'Darko','RajakoviÄ‡','2008-11-29'),(5,10,'Billy','Donovan','2019-06-24'),(6,16,'J.B.','Bickerstaff','2016-11-16'),(7,10,'Monty','Williams','2008-09-15'),(8,15,'Rick','Carlisle','2020-07-20'),(9,3,'Quin','Snyder','2019-03-11'),(10,17,'Erik','Spoelstra','2014-04-14'),(11,14,'Jamal','Mosley','2021-03-18'),(12,21,'Wes','Unseld Jr.','2018-09-14'),(13,19,'Michael','Malone','2019-12-30'),(14,4,'Chris','Finch','2018-09-21'),(15,5,'Mark','Daigneault','2018-02-11'),(16,10,'Chauncey','Billups','2015-07-12'),(17,24,'Steve','Kerr','2018-07-04'),(18,15,'Tyronn','Lue','2020-05-04'),(19,9,'Darvin','Ham','2015-03-17'),(20,2,'Frank','Vogel','2020-01-15'),(21,1,'Jason','Kidd','2021-05-25'),(22,22,'Ime','Udoka','2019-07-12'),(23,18,'Taylor','Jenkins','2020-03-20'),(24,7,'Willie','Green','2020-08-09'),(25,5,'Gregg','Popovich','2022-10-04'),(26,26,'Adrian','Griffin','2023-06-05'),(27,27,'Steve','Clifford','2022-06-24'),(28,28,'Joe','Mazzulla','2022-07-04'),(29,29,'Will','Hardy','2022-06-29'),(30,30,'Mike','Brown','2022-05-04');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-05 11:15:57
