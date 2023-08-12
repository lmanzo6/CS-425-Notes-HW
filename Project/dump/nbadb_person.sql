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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `PersonID` int DEFAULT NULL,
  `CoachID` int DEFAULT NULL,
  `PlayerID` int DEFAULT NULL,
  `NAME` varchar(64) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  KEY `CoachID` (`CoachID`),
  KEY `PlayerID` (`PlayerID`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`CoachID`) REFERENCES `coach` (`CoachID`),
  CONSTRAINT `person_ibfk_2` FOREIGN KEY (`PlayerID`) REFERENCES `player` (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,1,NULL,'Tom Thibodeau','1958-01-17'),(2,2,NULL,'Jacque Vaughn','1975-02-11'),(3,3,NULL,'Nick Nurse','1967-07-24'),(4,4,NULL,'Darko RajakoviÄ‡','1979-02-22'),(5,5,NULL,'Billy Donovan','1965-05-30'),(6,6,NULL,'J.B. Bickerstaff','1979-03-10'),(7,7,NULL,'Monty Williams','1971-10-08'),(8,8,NULL,'Rick Carlisle','1959-10-27'),(9,9,NULL,'Quin Snyder','1966-10-30'),(10,10,NULL,'Erik Spoelstra','1970-11-01'),(11,11,NULL,'Jamal Mosley','1979-10-25'),(12,12,NULL,'Wes Unseld Jr.','1976-03-03'),(13,13,NULL,'Michael Malone','1971-09-15'),(14,14,NULL,'Chris Finch','1969-11-06'),(15,15,NULL,'Mark Daigneault','1985-11-15'),(16,16,NULL,'Chauncey Billups','1976-09-25'),(17,17,NULL,'Steve Kerr','1965-09-27'),(18,18,NULL,'Tyronn Lue','1977-05-03'),(19,19,NULL,'Darvin Ham','1973-07-23'),(20,20,NULL,'Frank Vogel','1973-06-21'),(21,21,NULL,'Jason Kidd','1973-03-23'),(22,22,NULL,'Ime Udoka','1977-08-09'),(23,23,NULL,'Taylor Jenkins','1984-05-19'),(24,24,NULL,'Willie Green','1981-07-28'),(25,25,NULL,'Gregg Popovich','1949-01-28'),(26,NULL,1,'Arron Afflalo','1985-10-15'),(27,NULL,2,'Lou Amundson','1982-12-07'),(28,NULL,3,'Bojan Bogdanovic','1989-04-18'),(29,NULL,4,'Wayne Ellington','1987-11-29'),(30,NULL,5,'Chris Bosh','1984-03-24'),(31,NULL,6,'Cliff Alexander','1995-11-16'),(32,NULL,7,'Josh Richardson','1993-09-15'),(33,NULL,8,'Steven Adams','1993-07-20'),(34,NULL,9,'Elton Brand','1979-03-11'),(35,NULL,10,'Stephen Curry','1988-03-14'),(36,NULL,11,'Gorgui Dieng','1990-01-18'),(37,NULL,12,'Wesley Matthews','1986-10-14'),(38,NULL,13,'LeBron James','1984-12-30'),(39,NULL,14,'Bruno Caboclo','1995-09-21'),(40,NULL,15,'Nikola Mirotic','1991-02-11'),(41,NULL,16,'Hassan Whiteside','1989-06-13'),(42,NULL,17,'Omer Asik','1986-07-04'),(43,NULL,18,'Kyle Singler','1988-05-04'),(44,NULL,19,'Kyle Korver','1981-03-17'),(45,NULL,20,'Donald Sloan','1988-01-15'),(46,NULL,21,'Derrick Williams','1991-05-25'),(47,NULL,22,'Patrick Beverley','1988-07-12'),(48,NULL,23,'Jamal Crawford','1980-03-20'),(49,NULL,24,'Joel Anthony','1982-08-09'),(50,NULL,25,'Derrick Rose','1988-10-04'),(51,NULL,26,'Giannis Antetokounmpo','1994-12-06'),(52,NULL,27,'Nicolas Batum','1988-12-14'),(53,NULL,28,'Amir Johnson','1987-05-01'),(54,NULL,29,'Trevor Booker','1987-11-25'),(55,NULL,30,'Quincy Acy','1990-08-06'),(56,26,NULL,'Adrian Griffin','1974-06-04'),(57,27,NULL,'Steve Clifford','1961-09-17'),(58,28,NULL,'Joe Mazzulla','1988-06-30'),(59,29,NULL,'Will Hardy','1988-01-21'),(60,30,NULL,'Mike Brown','1970-03-05');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
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
