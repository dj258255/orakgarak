-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: j13c103.p.ssafy.io    Database: orakgaraki
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `album_tracks`
--

DROP TABLE IF EXISTS `album_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_tracks` (
  `track_order` int NOT NULL,
  `album_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `record_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKhfusbnh02ipi5uu5qs8l30l2h` (`album_id`,`track_order`),
  UNIQUE KEY `UKayy2fdc8djs5lnusxffeevdon` (`album_id`,`record_id`),
  KEY `FKc28aroo1tk2gfv1tsmuhblku` (`record_id`),
  CONSTRAINT `FKc28aroo1tk2gfv1tsmuhblku` FOREIGN KEY (`record_id`) REFERENCES `records` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKo4h9jsejt47trsyxxbnm27fih` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_tracks`
--

LOCK TABLES `album_tracks` WRITE;
/*!40000 ALTER TABLE `album_tracks` DISABLE KEYS */;
INSERT INTO `album_tracks` VALUES (1,1,'2025-09-28 14:34:30.643100',1,1),(2,1,'2025-09-28 14:34:30.645990',2,2),(2,2,'2025-09-28 16:44:26.231523',5,18),(1,3,'2025-09-28 17:18:27.103772',6,4),(2,3,'2025-09-28 17:18:27.104784',7,5),(3,3,'2025-09-28 17:18:27.105672',8,7),(1,4,'2025-09-28 17:35:06.184466',9,25),(2,4,'2025-09-28 17:35:06.185470',10,26),(1,5,'2025-09-28 17:45:02.936095',11,24),(2,5,'2025-09-28 17:45:02.937104',12,28),(1,9,'2025-09-28 21:31:24.456006',17,40),(1,10,'2025-09-28 22:04:47.333801',18,25),(2,10,'2025-09-28 22:04:47.334741',19,26),(3,10,'2025-09-28 22:04:47.335777',20,43);
/*!40000 ALTER TABLE `album_tracks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-28 22:17:19
