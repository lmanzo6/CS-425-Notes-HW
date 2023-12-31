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
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season` (
  `SeasonID` int NOT NULL,
  `REG_GAMES` int DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `YEAR` int DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `PLAYOFF_GAMES` int DEFAULT NULL,
  PRIMARY KEY (`SeasonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (1,82,'2023-04-09',2023,'2022-10-18',11),(2,82,'2023-04-09',2023,'2022-10-18',11),(3,82,'2023-04-09',2023,'2022-10-18',0),(4,82,'2023-04-09',2023,'2022-10-18',0),(5,82,'2023-04-09',2023,'2022-10-18',6),(6,82,'2023-04-09',2023,'2022-10-18',0),(7,82,'2023-04-09',2023,'2022-10-18',20),(8,82,'2023-04-09',2023,'2022-10-18',0),(9,82,'2023-04-09',2023,'2022-10-18',13),(10,82,'2023-04-09',2023,'2022-10-18',16),(11,82,'2023-04-09',2023,'2022-10-18',0),(12,82,'2023-04-09',2023,'2022-10-18',6),(13,82,'2023-04-09',2023,'2022-10-18',0),(14,82,'2023-04-09',2023,'2022-10-18',4),(15,82,'2023-04-09',2023,'2022-10-18',0),(16,82,'2023-04-09',2023,'2022-10-18',5),(17,82,'2023-04-09',2023,'2022-10-18',0),(18,82,'2023-04-09',2023,'2022-10-18',23),(19,82,'2023-04-09',2023,'2022-10-18',0),(20,82,'2023-04-09',2023,'2022-10-18',5),(21,82,'2023-04-09',2023,'2022-10-18',0),(22,82,'2023-04-09',2023,'2022-10-18',5),(23,82,'2023-04-09',2023,'2022-10-18',11),(24,82,'2023-04-09',2023,'2022-10-18',0),(25,82,'2023-04-09',2023,'2022-10-18',0),(26,82,'2023-04-09',2023,'2022-10-18',5),(27,82,'2023-04-09',2023,'2022-10-18',0),(28,82,'2023-04-09',2023,'2022-10-18',20),(29,82,'2023-04-09',2023,'2022-10-18',0),(30,82,'2023-04-09',2023,'2022-10-18',7);
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
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
