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
-- Table structure for table `player_college`
--

DROP TABLE IF EXISTS `player_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_college` (
  `PlayerID` int NOT NULL,
  `College` varchar(64) NOT NULL,
  PRIMARY KEY (`PlayerID`,`College`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_college`
--

LOCK TABLES `player_college` WRITE;
/*!40000 ALTER TABLE `player_college` DISABLE KEYS */;
INSERT INTO `player_college` VALUES (1,'UCLA'),(2,'UNLV'),(3,'Croatia'),(4,'UNC'),(5,'Georgia Tech'),(6,'Kansas'),(7,'Tennessee'),(8,'Pittsburgh'),(9,'Duke'),(10,'Davidson'),(11,'Louisville'),(12,'Marquette'),(13,'St. Vincent-St.'),(14,'Pinheiros'),(15,'Montenegro'),(16,'Marshall'),(17,'Turkey'),(18,'Duke'),(19,'Creighton'),(20,'Texas A&M'),(21,'Arizona'),(22,'Arkansas'),(23,'Michigan'),(24,'UNLV'),(25,'Memphis'),(26,'N/A'),(27,'N/A'),(28,'UofL'),(29,'Clemson'),(30,'Baylor');
/*!40000 ALTER TABLE `player_college` ENABLE KEYS */;
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
