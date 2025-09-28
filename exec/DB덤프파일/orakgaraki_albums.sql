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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `is_public` bit(1) NOT NULL,
  `like_count` int NOT NULL,
  `total_duration` int NOT NULL,
  `track_count` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) NOT NULL,
  `upload_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (_binary '',2,509,2,'2025-09-28 14:34:30.632676',1,'2025-09-28 20:32:34.483336',8,1,'울적한날 ','슬픈 오늘 '),(_binary '',0,236,1,'2025-09-28 16:44:26.226698',2,'2025-09-28 20:32:37.217080',26,1,'어제 부른 노래 ','어제 부른 거에요 피드백 좀.'),(_binary '',1,763,3,'2025-09-28 17:18:27.095372',3,'2025-09-28 17:23:48.383242',32,4,'잘불러도 놀라지 마라?','진짜임'),(_binary '',0,314,2,'2025-09-28 17:35:06.180696',4,'2025-09-28 17:35:06.193125',45,3,'내 첫 노래 앨범','열심히 했어요!'),(_binary '',3,268,2,'2025-09-28 17:45:02.931181',5,'2025-09-28 22:01:38.377174',49,2,'?????','이건 . . 첫 번째 레슨'),(_binary '',0,285,1,'2025-09-28 21:31:24.453383',9,'2025-09-28 21:31:24.461179',70,3,'가을 아침 ','아침 좋아요'),(_binary '',0,332,3,'2025-09-28 22:04:47.331261',10,'2025-09-28 22:04:47.342495',73,3,'가시 잘 부르고 싶다','노래 좀 알려주세요');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-28 22:17:22
