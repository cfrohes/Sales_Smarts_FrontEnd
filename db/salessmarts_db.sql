-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: salessmarts
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (10,9,3,1),(11,9,47,1);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'Accessories'),(5,'Mobile Accessories'),(4,'Mobiles'),(2,'Pants'),(1,'Shirts');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jwt_tokens`
--

DROP TABLE IF EXISTS `jwt_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jwt_tokens` (
  `token_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expires_at` timestamp NOT NULL,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `jwt_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwt_tokens`
--

LOCK TABLES `jwt_tokens` WRITE;
/*!40000 ALTER TABLE `jwt_tokens` DISABLE KEYS */;
INSERT INTO `jwt_tokens` VALUES (6,5,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJDaGFuZGFuUyIsInJvbGUiOiJDVVNUT01FUiIsImlhdCI6MTc0MTY3NzAwOSwiZXhwIjoxNzQxNjgwNjA5fQ.ZLOBXhJY_2bqOnUc_lHjRK1xsKTHakMjPuI_sdZ9P04cEJEGAwYtDBipscwHX9QEP3oAHcHbDjx-7nj048Mx9g','2025-03-11 07:10:09','2025-03-11 08:10:09'),(7,6,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzIiwicm9sZSI6IkNVU1RPTUVSIiwiaWF0IjoxNzQyOTY1MTU1LCJleHAiOjE3NDI5Njg3NTV9.VMSbYhJ5SG922NNaAM7IdnkoY_MaM5jLWjqDa3UJd-Dlf5oVhbMBfBQCiZjp2QciuiNkoZvIaVnpaRnEe5pRdw','2025-03-26 04:59:15','2025-03-26 05:59:15'),(11,9,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0Iiwicm9sZSI6IkNVU1RPTUVSIiwiaWF0IjoxNzQzMzQyMzQzLCJleHAiOjE3NDMzNDU5NDN9.l379wPZfnhUDZaIsBWhV1RsWGMfngyXmXU2JluFcYbRi0XvGdwg9pskiqvmM7hC184UP-2opjja6rAM1P38tZQ','2025-03-30 13:45:43','2025-03-30 14:45:43'),(13,10,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJmcm9oZXMiLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NDQwOTM5NjcsImV4cCI6MTc0NDA5NzU2N30.67IrWOFErbq-xzQ2Ojqu3PRUe8DdPjR1tFyh-FsIUy_r9VkfAXbQpCpTZkUeQFv2n1yfsxtksoMorp4kbSFr7A','2025-04-08 06:32:47','2025-04-08 07:32:48'),(19,11,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJxIiwicm9sZSI6IkFETUlOIiwiaWF0IjoxNzQ0NjQxNDU5LCJleHAiOjE3NDQ2NDUwNTl9.fFKkeQUgm9s10zZXrzrDbK5A21mIqW6AWh3Xmc7tIhRfpWDoI_NRU0BAqAW4RT5Nf7pGnCYr49Qe56-xr4VlyQ','2025-04-14 14:37:42','2025-04-14 15:37:42'),(20,12,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhIiwicm9sZSI6IkFETUlOIiwiaWF0IjoxNzQ0NjQxOTcwLCJleHAiOjE3NDQ2NDU1NzB9.dw3Qj0ZLgJzdq7PyeodeEh6JD7KLPrRqV1mLZqC-o6JHo03mtX21nnNUfX2vkI6dUpdLk0lvHLGFYT5-WnV7-Q','2025-04-14 14:46:10','2025-04-14 15:46:10'),(24,7,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ3Iiwicm9sZSI6IkNVU1RPTUVSIiwiaWF0IjoxNzQ1Mzk3MDQ0LCJleHAiOjE3NDU0MDA2NDR9.o017KHMLWFxrEGulTFeJhRGQXYQGsHgiJotDIO_pO3XExKHMuHJSpd0q_VcoZn4-Fhfnz4j4MFssogZ6RTU2rA','2025-04-23 08:30:44','2025-04-23 09:30:44'),(26,13,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ6Iiwicm9sZSI6IkFETUlOIiwiaWF0IjoxNzU3ODQ5OTk1LCJleHAiOjE3NTc4NTM1OTV9.GTPGr9U75_szWmaQhpjrj4dlsBTAGMSa23_xv23W2kt3dFe-F3YMt22FG7o_V0QTn3oEU8OYe5IOqsaGiydQTw','2025-09-14 11:39:56','2025-09-14 12:39:57'),(27,14,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ6MSIsInJvbGUiOiJDVVNUT01FUiIsImlhdCI6MTc1Nzg1MDA0OCwiZXhwIjoxNzU3ODUzNjQ4fQ.kW462sG8WAkanY2qBZP5fenxnx_2b-V6852frB02UpCNtQHjQ9BuOFyxsE4ULZHqId6NivMp0sF7xEjPYP-2Sg','2025-09-14 11:40:48','2025-09-14 12:40:49');
/*!40000 ALTER TABLE `jwt_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,'order_QGSJMzn0fnuqGb',64,3,749.75,2249.25),(2,'order_QGSJMzn0fnuqGb',33,1,29999.00,29999.00),(3,'order_QGSJMzn0fnuqGb',17,1,899.50,899.50),(4,'order_QGSJMzn0fnuqGb',1,1,499.99,499.99),(5,'order_QGTGLacKih0dR8',2,1,599.99,599.99),(6,'order_QGTGLacKih0dR8',3,1,699.99,699.99),(7,'order_QGTPryQ5lHkFEx',17,1,899.50,899.50),(8,'order_QGTPryQ5lHkFEx',20,1,999.99,999.99),(9,'order_QGTPryQ5lHkFEx',6,1,999.99,999.99),(10,'order_QGTPryQ5lHkFEx',62,1,349.50,349.50),(11,'order_QIqGi76bg1g8Nk',1,1,499.99,499.99),(12,'order_QKvJDSW23bYZIJ',2,1,599.99,599.99),(13,'order_QKvJDSW23bYZIJ',48,1,22999.00,22999.00),(14,'order_QMQxQthJzQurYX',3,2,699.99,1399.98),(15,'order_QMQxQthJzQurYX',4,1,799.99,799.99),(16,'order_RHT914EnI6J8Dl',1,1,499.99,499.99);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('PENDING','SUCCESS','FAILED') DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('order_QBJHvgSGeLkEyb',6,1499.97,'PENDING','2025-03-26 05:52:00',NULL),('order_QCfDoviEBEArjP',7,499.99,'PENDING','2025-03-29 15:58:24',NULL),('order_QCfDrGLvfUOQEj',7,499.99,'PENDING','2025-03-29 15:58:25',NULL),('order_QCzn2g9jBZhGOB',7,32148.24,'PENDING','2025-03-30 12:05:35',NULL),('order_QCztDvwb1ARKE4',7,33647.74,'PENDING','2025-03-30 12:11:26',NULL),('order_QD18XS4OewHLXZ',7,33647.74,'PENDING','2025-03-30 13:24:37',NULL),('order_QD1Cbzf5Xgjsrr',7,33647.74,'PENDING','2025-03-30 13:28:29',NULL),('order_QD1MCWaQUJ6LRs',7,33647.74,'PENDING','2025-03-30 13:37:33',NULL),('order_QD1MLAofiFE3Ky',7,33647.74,'PENDING','2025-03-30 13:37:41',NULL),('order_QD1V9mZKNxGQEH',9,9699.49,'PENDING','2025-03-30 13:46:02',NULL),('order_QGSJMzn0fnuqGb',7,33647.74,'SUCCESS','2025-04-08 05:56:37','2025-04-08 05:58:38'),('order_QGTGLacKih0dR8',7,1299.98,'SUCCESS','2025-04-08 06:52:27','2025-04-08 06:52:53'),('order_QGTPryQ5lHkFEx',7,3248.98,'SUCCESS','2025-04-08 07:01:28','2025-04-08 07:01:49'),('order_QIqGi76bg1g8Nk',7,499.99,'SUCCESS','2025-04-14 06:40:45','2025-04-14 06:41:09'),('order_QKvJDSW23bYZIJ',7,23598.99,'SUCCESS','2025-04-19 12:54:36','2025-04-19 12:54:59'),('order_QMQxQthJzQurYX',7,2199.97,'SUCCESS','2025-04-23 08:31:09','2025-04-23 08:31:39'),('order_RHT914EnI6J8Dl',14,499.99,'SUCCESS','2025-09-14 11:42:37','2025-09-14 11:43:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimages`
--

DROP TABLE IF EXISTS `productimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productimages` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image_url` text NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimages`
--

LOCK TABLES `productimages` WRITE;
/*!40000 ALTER TABLE `productimages` DISABLE KEYS */;
INSERT INTO `productimages` VALUES (1,1,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt1.png'),(2,2,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt2.png'),(3,3,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt3.png'),(4,4,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt4.png'),(5,5,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt5.png'),(6,6,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt6.png'),(7,7,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt7.png'),(8,8,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt8.png'),(9,9,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt9.png'),(10,10,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt10.png'),(11,11,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt11.png'),(12,12,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt12.png'),(13,13,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt12.png'),(14,14,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt14.png'),(15,15,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt15.png'),(17,17,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant2.png'),(18,18,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant3.png'),(19,19,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant4.png'),(20,20,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant5.png'),(21,21,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant6.png'),(22,22,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant7.png'),(23,23,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant8.png'),(24,24,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant9.png'),(25,25,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant10.png'),(26,26,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant11.png'),(27,27,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant11.png'),(28,28,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant11.png'),(29,29,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant11.png'),(30,30,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/pant15.png'),(31,31,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv1.png'),(32,32,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv2.png'),(33,33,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv3.png'),(34,34,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv4.png'),(35,35,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv5.png'),(36,36,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv6.png'),(37,37,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv7.png'),(38,38,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv8.png'),(39,39,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv9.png'),(40,40,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv10.png'),(41,41,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv11.png'),(42,42,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv12.png'),(43,43,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv13.png'),(44,44,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv14.png'),(45,45,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/tv15.png'),(46,46,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph1.png'),(47,47,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph2.png'),(48,48,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph3.png'),(49,49,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph4.png'),(50,50,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph5.png'),(51,51,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph6.png'),(53,53,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph8.png'),(54,54,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph9.png'),(56,56,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph11.png'),(57,57,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph12.png'),(58,58,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph13.png'),(59,59,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph14.png'),(60,60,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph1.png'),(61,61,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ph1.png'),(62,62,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma2.png'),(63,63,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma3.png'),(64,64,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma4.png'),(65,65,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma5.png'),(66,66,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma6.png'),(68,68,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma8.png'),(70,70,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/ma10.png'),(72,72,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/newshirt2.png'),(75,75,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/newshirt2.png'),(76,76,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt10.png'),(77,77,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt2.png'),(79,79,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt9.png'),(80,80,'https://kodnest-docs.b-cdn.net/salessavvy/COSTOMER%20IMAGES/shirt9.png');
/*!40000 ALTER TABLE `productimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Shirt1','Stylish Shirt1',499.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(2,'Shirt2','Stylish Shirt2',599.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(3,'Shirt3','Stylish Shirt3',699.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(4,'Shirt4','Stylish Shirt4',799.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(5,'Shirt5','Stylish Shirt5',899.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(6,'Shirt6','Stylish Shirt6',999.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(7,'Shirt7','Stylish Shirt7',1099.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(8,'Shirt8','Stylish Shirt8',1199.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(9,'Shirt9','Stylish Shirt9',1299.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(10,'Shirt10','Stylish Shirt10',1399.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(11,'Shirt11','Stylish Shirt11',1499.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(12,'Shirt12','Best Shirt In the Segment',987.00,200,1,'2025-01-27 09:28:30','2025-02-10 00:05:12'),(13,'Shirt13','Stylish Shirt13',1699.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(14,'Shirt14','Stylish Shirt14',1799.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(15,'Shirt15','Stylish Shirt15',1899.99,100,1,'2025-01-01 06:41:26','2025-01-01 06:41:26'),(16,'Pant1','Stylish Pant1',799.99,50,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(17,'Pant2','Stylish Pant2',899.50,45,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(18,'Pant3','Stylish Pant3',759.99,40,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(19,'Pant4','Stylish Pant4',689.99,55,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(20,'Pant5','Stylish Pant5',999.99,30,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(21,'Pant6','Stylish Pant6',699.99,20,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(22,'Pant7','Stylish Pant7',849.50,35,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(23,'Pant8','Stylish Pant8',799.00,60,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(24,'Pant9','Stylish Pant9',729.99,25,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(25,'Pant10','Stylish Pant10',889.99,50,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(26,'Pant11','Stylish Pant11',819.99,40,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(27,'Shirt Colourful','Best Shirt',750.00,50,1,'2025-01-27 09:28:30','2025-01-27 09:28:30'),(28,'cool shirt','colourful shirt',800.00,50,1,'2025-01-27 09:28:30','2025-01-27 09:28:30'),(29,'Best color Shirt','Cool color shirt',900.00,90,1,'2025-01-27 09:28:30','2025-03-17 06:24:39'),(30,'Pant15','Stylish Pant15',899.99,90,2,'2025-01-04 13:38:11','2025-01-04 13:38:11'),(31,'TV1','Smart TV1 with HD display',18999.99,20,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(32,'TV2','Smart TV2 with Full HD display',21999.50,15,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(33,'TV3','Smart TV3 with 4K display',29999.00,10,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(34,'TV4','Smart TV4 with HDR and Dolby Vision',25999.99,12,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(35,'TV5','Smart TV5 with Ultra HD screen',34999.99,8,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(36,'TV6','Smart TV6 with Alexa Built-in',27999.50,18,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(37,'TV7','Smart TV7 with Android OS',22999.00,22,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(38,'TV8','Smart TV8 with High Refresh Rate',31999.99,14,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(39,'TV9','Smart TV9 with Thin Bezels',24999.99,20,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(40,'TV10','Smart TV10 with AI Upscaling',39999.00,5,3,'2025-01-04 13:58:04','2025-01-04 14:28:22'),(41,'Speaker','Worlds BEst',12999.99,50,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(42,'Nikon DSLR','Indias best',8999.50,75,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(43,'NIK DSLR2','Sales Choice',15999.00,40,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(44,'NIC DSLR3','Capture Nik',19999.99,30,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(45,'LAPTOP','Smart TV15 with AI Upscaling',24999.99,25,3,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(46,'Mobile1','Mobile6 with gaming chipset and high refresh rate',19999.99,50,4,'2025-01-04 14:01:27','2025-01-04 14:42:48'),(47,'Mobile2','Mobile7 with gaming chipset and high refresh rate',8999.50,55,4,'2025-01-04 14:01:27','2025-01-04 14:42:48'),(48,'Mobile3','Mobile8 with gaming chipset and high refresh rate',22999.00,50,4,'2025-01-04 14:01:27','2025-01-04 14:42:48'),(49,'Mobile4','Mobile9 with gaming chipset and high refresh rate',8999.50,55,4,'2025-01-04 14:01:27','2025-01-04 14:42:48'),(50,'Mobile5','Mobile10 with gaming chipset and high refresh rate',39999.00,50,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(51,'Mobile6','Mobile10 with gaming chipset and high refresh rate',48765.00,30,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(53,'Mobile8','Mobile12with gaming chipset and high refresh rate',34598.00,345,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(54,'Mobile9','Mobile13 with gaming chipset and high refresh rate',45673.00,45,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(56,'Mobile11','Mobile15 with gaming chipset and high refresh rate',23412.00,65,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(57,'Mobile12','Mobile12 with gaming chipset and high refresh rate',89765.00,456,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(58,'Mobile13','Mobile14 with gaming chipset and high refresh rate',23456.00,567,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(59,'Mobile14','Mobile11 with gaming chipset and high refresh rate',99990.00,234,4,'2025-01-04 14:01:27','2025-01-04 14:44:51'),(60,'Mobile15','Mobile15 with gaming chipset and high refresh rate',45389.00,225,4,'2025-01-04 14:01:27','2025-01-06 09:41:42'),(61,'Mobile Accessory -1','Durable and practical mobile accessory for everyday use.',999.00,30,5,'2025-01-27 09:28:30','2025-03-17 06:28:55'),(62,'Mobile Accessory 2','Durable and practical mobile accessory for everyday use.',349.50,200,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(63,'Mobile Accessory 3','A versatile mobile accessory with modern features.',899.00,80,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(64,'Mobile Accessory 4','Reliable mobile accessory designed for convenience.',749.75,120,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(65,'Mobile Accessory 5','Mobile accessory offering comfort and durability.',199.99,250,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(66,'Mobile Accessory 6','A stylish and protective mobile accessory.',249.99,500,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(68,'Mobile Accessory 8','An essential mobile accessory designed for convenience.',399.50,350,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(70,'Mobile Accessory 10','Compact and efficient mobile accessory for all your needs.',1099.99,100,5,'2025-01-06 09:53:10','2025-01-06 09:53:10'),(72,'Louies-2','Cool Louies 2.',156.99,321,1,'2025-01-21 09:03:32','2025-01-21 09:03:32'),(74,'spykershirt','best shirt',999.00,100,1,'2025-01-22 13:27:55','2025-01-22 13:27:55'),(75,'Spy shirts','good cool',99.00,200,1,'2025-01-22 14:03:24','2025-01-22 14:03:24'),(76,'spyker hot shirt','best shirt',999.00,100,1,'2025-01-22 14:15:19','2025-01-22 14:15:19'),(77,'louies s[yker','cool hot shirt',854.00,20,1,'2025-01-22 14:18:57','2025-01-22 14:18:57'),(79,'LouiesSpiker','wonderful striped shirt',899.00,200,1,'2025-01-26 23:09:32','2025-01-26 23:09:32'),(80,'spiker','adsjfkhbsjkdf',999.00,200,1,'2025-01-26 23:10:00','2025-01-26 23:10:00'),(81,'spyker12','wednc ewjhcew',999.00,20,1,'2025-01-26 23:56:17','2025-01-26 23:56:17'),(82,'gyshirt','dcjhbSJDHCac',899.00,10,1,'2025-01-27 00:02:17','2025-01-27 00:02:17'),(83,'aKS;JC','ZADJLNSV ',767.00,29,1,'2025-01-27 00:03:04','2025-01-27 00:03:04'),(84,'hgdv','wedjkcwev',644.00,10,1,'2025-01-27 00:11:08','2025-01-27 00:11:08'),(85,'sdfhjb1','sdkjvb',657.00,20,1,'2025-01-27 00:19:07','2025-01-27 00:19:07'),(86,'sdkfjn','sdfkjn',23.00,23,1,'2025-01-27 00:20:27','2025-01-27 00:20:27'),(87,'dsf','sdfb',23.00,23,1,'2025-01-27 00:23:04','2025-01-27 00:23:04'),(88,'dsfbvsdf','sdfb',23.00,21,1,'2025-01-27 00:25:04','2025-01-27 00:25:04'),(89,'shiet','asdvwefg',23.00,23,1,'2025-01-27 00:31:25','2025-01-27 00:31:25'),(90,'zdf','sdfb',23.00,23,1,'2025-01-27 00:33:52','2025-01-27 00:33:52'),(91,'shirtspyker','aschjadc',123.00,23,1,'2025-01-27 08:21:14','2025-01-27 08:21:14'),(92,'asdkjc','wdf',12.00,23,1,'2025-01-27 08:21:32','2025-01-27 08:21:32'),(93,'abc','dfghj',40.00,5,1,'2025-01-27 08:34:08','2025-01-27 08:34:08'),(94,'abc2','gyvhujnkml,',30.00,3,1,'2025-01-27 08:47:25','2025-01-27 08:47:25');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('ADMIN','CUSTOMER') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'heydhar','newuser@example.com','$2a$10$wBOWd5IEq2eQzbPkEdrlo.v5xoaYBFrIjyfH5OTWawXS9eP8hjs76','CUSTOMER',NULL,'2025-04-19 12:32:52'),(2,'hariKraishna','creativepizan@gmail.com','$2a$10$RgR66.I/Cp9gk2e5LKHBZubPIth3ZiUErpcaAtvGIRFSFuoUaeu2K','CUSTOMER','2025-02-21 07:45:37','2025-02-21 07:45:37'),(3,'jaswik_32','ganeshkchavan7777@gmail.com','$2a$10$/iNj3cNpyjB.KXtaXlbfQuZfJeIhjAMx0nmT/3LOB/pmGjug3wXsC','CUSTOMER','2025-02-23 05:27:03','2025-02-23 05:27:03'),(4,'ChandanJ','chandanshangami@gmail.com','$2a$10$KSIEUpb4S7Bm1k3wqsClQeVCREduKfnTUsrWmjOlsNbSvJJ36Fe0i','CUSTOMER','2025-02-27 05:43:41','2025-02-27 05:43:41'),(5,'ChandanS','chandanshanga78mi@gmail.com','$2a$10$NvcQ2ofpFceasHKxqZsd6uIWtYFplCVD2s064hcBnuX3/14MN/TvS','CUSTOMER','2025-03-11 07:09:58','2025-03-11 07:09:58'),(6,'s','chandangami@gmail.com','$2a$10$cx8rcyVG3wkDDeL/z3djb.9E.Vn6lbU6jjylpwzidInELfHcenrwu','CUSTOMER','2025-03-26 04:59:06','2025-03-26 04:59:06'),(7,'w','chandanshangi@gmail.com','$2a$10$FfjgtP3Jk7Cdq/PaTWAg6.TXFm4cZJu6E6tSEffWL7GxNXOc3guLu','CUSTOMER','2025-03-29 15:57:53','2025-03-29 15:57:53'),(8,'admin','admin@example.com','$2a$10$Dow1FjlS2eLKFS1T4MSbcOZu0MKhYIhPLNRhQYYjKZL2xaP8V8KO6','ADMIN','2025-03-30 12:45:01','2025-03-30 12:45:01'),(9,'t','dangami@gmail.com','$2a$10$0Zc4A7AgCSzlFUUx70okq.Bhw/Fhb9oguyw/gbpIarMBPMhM7.gRe','CUSTOMER','2025-03-30 13:45:36','2025-03-30 13:45:36'),(10,'frohes','creativean@gmail.com','$2a$10$FVjUb2WGzBI4OVlfQxcrLuSE3hfrQ9spPz0ei2ZSzpEW9xLRTU72y','ADMIN','2025-04-08 06:32:26','2025-04-08 06:32:26'),(11,'q','q2@gmail.com','$2a$10$BK67JXsExfKzF2ky2Jocp.kEQfBwd7SrWSRULskSGPVLo4h9JRoCa','ADMIN','2025-04-14 04:10:54','2025-04-14 04:10:54'),(12,'a','a@123gmail.com','$2a$10$onIUy0ctfXDgN5EPCuHu2uEx0TiVJZpmoEQDgYOdkWDzNO8kl3w7C','ADMIN','2025-04-14 14:45:32','2025-04-14 14:45:32'),(13,'z','zzz@gmail.com','$2a$10$Cvwx.RkKCNBAlUyUf5fS0ePPal3j8Kl1Hy8uUxID3x1p99X6P2llW','ADMIN','2025-04-19 11:21:59','2025-04-19 11:21:59'),(14,'z1','zzz1@gmail.com','$2a$10$2v7W/plyQ.Wuk5ozh463O.D5jmXfOQOr6L5dCn52fy9vA.EUSAgPe','CUSTOMER','2025-09-14 11:40:40','2025-09-14 11:40:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-14 17:27:21
