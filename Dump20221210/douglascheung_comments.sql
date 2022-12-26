-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: douglascheung
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `fk_authorId` int NOT NULL,
  `fk_postId` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `commentpost_idx` (`fk_postId`),
  KEY `commentauthor` (`fk_authorId`),
  CONSTRAINT `commentauthor` FOREIGN KEY (`fk_authorId`) REFERENCES `users` (`id`),
  CONSTRAINT `commentpost` FOREIGN KEY (`fk_postId`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'content',11,7,'2022-12-09 23:56:35'),(2,'test',11,7,'2022-12-09 23:56:52'),(3,'test',11,4,'2022-12-10 00:13:28'),(4,'content',11,4,'2022-12-10 00:18:27'),(5,'something',11,4,'2022-12-10 00:30:51'),(6,'intire',11,4,'2022-12-10 00:30:52'),(9,'',11,4,'2022-12-10 00:56:36'),(11,'Test Functions',11,4,'2022-12-10 01:05:14'),(12,'Test Functions',11,4,'2022-12-10 01:05:15'),(13,'Test Functions',11,4,'2022-12-10 01:05:15'),(14,'Test Functions',11,4,'2022-12-10 01:05:15'),(15,'Test Functions',11,4,'2022-12-10 01:05:15'),(16,'Test Functions',11,4,'2022-12-10 01:05:15'),(17,'Test Functions',11,4,'2022-12-10 01:05:15'),(18,'Test Functions',11,4,'2022-12-10 01:05:16'),(19,'Test Functions',11,4,'2022-12-10 01:05:16'),(20,'Tally',11,4,'2022-12-10 01:16:40'),(21,'Dumb',11,4,'2022-12-10 01:17:30'),(22,'all',11,4,'2022-12-10 01:20:10'),(23,'stare',11,4,'2022-12-10 01:21:56'),(24,'Valkyrie',11,4,'2022-12-10 01:25:57'),(25,'Bryn',11,4,'2022-12-10 01:26:26'),(26,'alku',11,4,'2022-12-10 01:31:49');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10  1:48:39
