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
-- Table structure for table `plays`
--

DROP TABLE IF EXISTS `plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plays` (
  `PlayID` int NOT NULL,
  `PlayerID` int DEFAULT NULL,
  `PositionID` int DEFAULT NULL,
  `WEIGHT` varchar(16) DEFAULT NULL,
  `HEIGHT` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`PlayID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `PositionID` (`PositionID`),
  CONSTRAINT `plays_ibfk_1` FOREIGN KEY (`PlayerID`) REFERENCES `player` (`PlayerID`),
  CONSTRAINT `plays_ibfk_2` FOREIGN KEY (`PositionID`) REFERENCES `player_position` (`PositionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays`
--

LOCK TABLES `plays` WRITE;
/*!40000 ALTER TABLE `plays` DISABLE KEYS */;
INSERT INTO `plays` VALUES (1,1,1,'210','6\' 5\"'),(2,2,2,'220','6\' 9\"'),(3,3,3,'216','6\' 7\"'),(4,4,4,'200','6\' 5\"'),(5,5,5,'235','6\' 11\"'),(6,6,6,'240','6 \'9\"'),(7,7,7,'200','6 \'6\"'),(8,8,8,'265','7 \'0\"'),(9,9,9,'254','6 \'9\"'),(10,10,10,'185','6 \'2\"'),(11,11,11,'240','6\' 11\"'),(12,12,12,'220','6\' 5\"'),(13,13,13,'250','6\' 9\"'),(14,14,14,'218','6\' 9\"'),(15,15,15,'250','6\' 10\"'),(16,16,16,'265','7\' 0\"'),(17,17,17,'255','7\' 0\"'),(18,18,18,'228','6\' 8\"'),(19,19,19,'212','6\' 7\"'),(20,20,20,'205','6\' 3\"'),(21,21,21,'235','6\' 7\"'),(22,22,22,'185','6\' 1\"'),(23,23,23,'200','6\' 5\"'),(24,24,24,'245','6\' 9\"'),(25,25,25,'200','6\' 3\"'),(26,26,26,'222','6\' 11\"'),(27,27,27,'200','6\' 8\"'),(28,28,28,'240','6\' 9\"'),(29,29,29,'228','6\' 8\"'),(30,30,30,'240','6\' 7\"');
/*!40000 ALTER TABLE `plays` ENABLE KEYS */;
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
