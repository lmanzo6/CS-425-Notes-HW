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
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `TeamID` int NOT NULL,
  `ConfID` int DEFAULT NULL,
  `TEAM_NAME` varchar(60) DEFAULT NULL,
  `ARENA_LOCATION` varchar(60) DEFAULT NULL,
  `ARENA_NAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`TeamID`),
  KEY `ConfID` (`ConfID`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`ConfID`) REFERENCES `conference` (`ConfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,1,'New York Knicks','New York','Madison Square Garden'),(2,2,'Brooklyn Nets','New York','Barclays Center'),(3,3,'Philadelphia 76ers','Pennsylvania','Wells Fargo Center'),(4,4,'Toronto Raptors','Ontario','Scotiabank Arena'),(5,5,'Chicago Bulls','Illinois','United Center'),(6,6,'Cleveland Cavaliers','Ohio','Rocket Mortgage FieldHouse'),(7,7,'Detroit Pistons','Michigan','Little Caesars Arena'),(8,8,'Indiana Pacers','Indiana','Bankers Life Fieldhouse'),(9,9,'Atlanta Hawks','Georgia','State Farm Arena'),(10,10,'Miami Heat','Florida','AmericanAirlines Arena'),(11,11,'Orlando Magic','Florida','Amway Center'),(12,12,'Washington Wizards','Washington D.C.','Capital One Arena'),(13,13,'Denver Nuggets','Colorado','Ball Arena'),(14,14,'Minnesota Timberwolves','Minnesota','Target Center'),(15,15,'Oklahoma City Thunder','Oklahoma','Paycom Center'),(16,16,'Portland Trail Blazers','Oregon','Moda Center'),(17,17,'Golden State Warriors','California','Chase Center'),(18,18,'Los Angeles Clippers','California','Staples Center'),(19,19,'Los Angeles Lakers','California','Staples Center'),(20,20,'Phoenix Suns','Arizona','Footprint Center'),(21,21,'Dallas Mavericks','Texas','American Airlines Center'),(22,22,'Houston Rockets','Texas','Toyota Center'),(23,23,'Memphis Grizzlies','Tennessee','FedExForum'),(24,24,'New Orleans Pelicans','Louisiana','Smoothie King Center'),(25,25,'San Antonio Spurs','Texas','AT&T Center'),(26,26,'Milwaukee Bucks',' Wisconsin',' Fiserv Forum'),(27,27,'Charlotte Hornets','North Carolina','Spectrum Center'),(28,28,'Boston Celtics','Massachusetts','TD Garden'),(29,29,'Utah Jazz','Utah','Vivint Arena'),(30,30,'Sacramento Kings','California','Golden 1 Center');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-05 11:15:56
