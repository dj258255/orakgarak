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
-- Table structure for table `ai_demo_applications`
--

DROP TABLE IF EXISTS `ai_demo_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_demo_applications` (
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `processed_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `admin_note` text,
  `record_ids` json NOT NULL,
  `youtube_links` json DEFAULT NULL,
  `status` enum('APPROVED','COMPLETED','PENDING','REJECTED') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_demo_applications`
--

LOCK TABLES `ai_demo_applications` WRITE;
/*!40000 ALTER TABLE `ai_demo_applications` DISABLE KEYS */;
INSERT INTO `ai_demo_applications` VALUES ('2025-09-28 16:09:19.432046',1,'2025-09-28 18:20:11.542101','2025-09-28 18:20:11.554401',4,'신청하신 ai데모파일 업로드 되었습니다~ 녹음파일 확인해주세요~','[4, 5, 7, 9, 11, 10, 12, 13]','[\"https://www.youtube.com/watch?v=fBB4MaBybyg&list=RDfBB4MaBybyg&start_radio=1\", \"https://www.youtube.com/watch?v=eA8CVQ-kfJA&list=RDeA8CVQ-kfJA&start_radio=1\", \"https://www.youtube.com/watch?v=hTWKbfoikeg&list=RDhTWKbfoikeg&start_radio=1\"]','COMPLETED'),('2025-09-28 18:01:38.286414',2,'2025-09-28 18:30:19.756015','2025-09-28 18:30:19.768218',1,'신청하신 ai데모파일 업로드 되었습니다~ 녹음파일 확인해주세요~','[1, 2, 18, 22, 29, 30]','[\"https://www.youtube.com/watch?v=OHJle2J3RTA\"]','COMPLETED');
/*!40000 ALTER TABLE `ai_demo_applications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-28 22:17:20
