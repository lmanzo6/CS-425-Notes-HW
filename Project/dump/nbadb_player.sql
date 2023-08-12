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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `PlayerID` int NOT NULL,
  `TeamID` int DEFAULT NULL,
  `FIRSTNAME` varchar(64) DEFAULT NULL,
  `LASTNAME` varchar(64) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`PlayerID`),
  KEY `TeamID` (`TeamID`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,1,'Arron','Afflalo','1985-10-15'),(2,1,'Lou','Amundson','1982-12-07'),(3,2,'Bojan','Bogdanovic','1989-04-18'),(4,2,'Wayne','Ellington','1987-11-29'),(5,10,'Chris','Bosh','1984-03-24'),(6,16,'Cliff','Alexander','1995-11-16'),(7,10,'Josh','Richardson','1993-09-15'),(8,15,'Steven','Adams','1993-07-20'),(9,3,'Elton','Brand','1979-03-11'),(10,17,'Stephen','Curry','1988-03-14'),(11,14,'Gorgui','Dieng','1990-01-18'),(12,21,'Wesley','Matthews','1986-10-14'),(13,19,'LeBron','James','1984-12-30'),(14,4,'Bruno','Caboclo','1995-09-21'),(15,5,'Nikola','Mirotic','1991-02-11'),(16,10,'Hassan','Whiteside','1989-06-13'),(17,24,'Omer','Asik','1986-07-04'),(18,15,'Kyle','Singler','1988-05-04'),(19,9,'Kyle','Korver','1981-03-17'),(20,2,'Donald','Sloan','1988-01-15'),(21,1,'Derrick','Williams','1991-05-25'),(22,22,'Patrick','Beverley','1988-07-12'),(23,18,'Jamal','Crawford','1980-03-20'),(24,7,'Joel','Anthony','1982-08-09'),(25,5,'Derrick','Rose','1988-10-04'),(26,26,'Giannis','Antetokounmpo','1994-12-06'),(27,27,'Nicolas','Batum','1988-12-14'),(28,28,'Amir','Johnson','1987-05-01'),(29,29,'Trevor','Booker','1987-11-25'),(30,30,'Quincy','Acy','1990-08-06');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
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
