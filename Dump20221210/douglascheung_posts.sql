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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(4096) NOT NULL,
  `thumbnail` varchar(4096) NOT NULL,
  `fk_authorId` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `postauthor_idx` (`fk_authorId`),
  CONSTRAINT `postauthor` FOREIGN KEY (`fk_authorId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'5.2.28 Graph','omni','public\\images\\uploads\\image-1670577021261-278211924.png','public/images/uploads/thumbnail-image-1670577021261-278211924.png',11,'2022-12-09 01:10:21'),(2,'5.2.28 Graph','omni','public\\images\\uploads\\image-1670617855951-318800650.png','public/images/uploads/thumbnail-image-1670617855951-318800650.png',11,'2022-12-09 12:30:56'),(3,'First Week Reflection','omni','public\\images\\uploads\\image-1670617902635-800097210.png','public/images/uploads/thumbnail-image-1670617902635-800097210.png',11,'2022-12-09 12:31:42'),(4,'5.1.34 Graph Recreation','omni','public\\images\\uploads\\image-1670617914857-168973054.png','public/images/uploads/thumbnail-image-1670617914857-168973054.png',11,'2022-12-09 12:31:55'),(5,'5.2.28 Graph','omni','public\\images\\uploads\\image-1670617855951-318800650.png','public/images/uploads/thumbnail-image-1670617855951-318800650.png',11,'2022-12-09 12:30:56'),(6,'First Week Reflection','omni','public\\images\\uploads\\image-1670617902635-800097210.png','public/images/uploads/thumbnail-image-1670617902635-800097210.png',11,'2022-12-09 12:31:42'),(7,'5.1.34 Graph Recreation','omni','public\\images\\uploads\\image-1670617914857-168973054.png','public/images/uploads/thumbnail-image-1670617914857-168973054.png',11,'2022-12-09 12:31:55'),(8,'5.2.28 Graph','omni','public\\images\\uploads\\image-1670617855951-318800650.png','public/images/uploads/thumbnail-image-1670617855951-318800650.png',11,'2022-12-09 12:30:56'),(9,'First Week Reflection','omni','public\\images\\uploads\\image-1670617902635-800097210.png','public/images/uploads/thumbnail-image-1670617902635-800097210.png',11,'2022-12-09 12:31:42'),(10,'5.1.34 Graph Recreation','omni','public\\images\\uploads\\image-1670617914857-168973054.png','public/images/uploads/thumbnail-image-1670617914857-168973054.png',11,'2022-12-09 12:31:55'),(11,'5.2.28 Graph','omni','public\\images\\uploads\\image-1670577021261-278211924.png','public/images/uploads/thumbnail-image-1670577021261-278211924.png',11,'2022-12-09 01:10:21'),(12,'5.2.28 Graph','omni','public\\images\\uploads\\image-1670617855951-318800650.png','public/images/uploads/thumbnail-image-1670617855951-318800650.png',11,'2022-12-09 12:30:56'),(13,'First Week Reflection','omni','public\\images\\uploads\\image-1670617902635-800097210.png','public/images/uploads/thumbnail-image-1670617902635-800097210.png',11,'2022-12-09 12:31:42'),(14,'5.1.34 Graph Recreation','omni','public\\images\\uploads\\image-1670617914857-168973054.png','public/images/uploads/thumbnail-image-1670617914857-168973054.png',11,'2022-12-09 12:31:55'),(15,'5.2.28 Graph','omni','public\\images\\uploads\\image-1670617855951-318800650.png','public/images/uploads/thumbnail-image-1670617855951-318800650.png',11,'2022-12-09 12:30:56'),(16,'First Week Reflection','omni','public\\images\\uploads\\image-1670617902635-800097210.png','public/images/uploads/thumbnail-image-1670617902635-800097210.png',11,'2022-12-09 12:31:42'),(17,'5.1.34 Graph Recreation','omni','public\\images\\uploads\\image-1670617914857-168973054.png','public/images/uploads/thumbnail-image-1670617914857-168973054.png',11,'2022-12-09 12:31:55'),(18,'5.2.28 Graph','omni','public\\images\\uploads\\image-1670617855951-318800650.png','public/images/uploads/thumbnail-image-1670617855951-318800650.png',11,'2022-12-09 12:30:56'),(19,'First Week Reflection','omni','public\\images\\uploads\\image-1670617902635-800097210.png','public/images/uploads/thumbnail-image-1670617902635-800097210.png',11,'2022-12-09 12:31:42'),(20,'5.1.34 Graph Recreation','omni','public\\images\\uploads\\image-1670617914857-168973054.png','public/images/uploads/thumbnail-image-1670617914857-168973054.png',11,'2022-12-09 12:31:55'),(21,'5.1.34 Graph Recreation','omni','public\\images\\uploads\\image-1670617914857-168973054.png','public/images/uploads/thumbnail-image-1670617914857-168973054.png',11,'2022-12-09 12:31:55'),(22,'Reflection for Week 1','omni','public\\images\\uploads\\image-1670628723310-215207459.png','public/images/uploads/thumbnail-image-1670628723310-215207459.png',11,'2022-12-09 15:32:03');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
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
