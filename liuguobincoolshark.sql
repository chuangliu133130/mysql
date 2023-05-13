-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (x86_64)
--
-- Host: localhost    Database: cs
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (36,'/2023/05/04/92b0e20e-615a-4ed6-bea3-8c1a81c21f58.png'),(39,'/2023/05/04/7eb95af6-6f76-48cc-b205-b66b771b8798.png'),(40,'/2023/05/04/4ddc6e44-e455-4f69-9814-836880dcb6db.png');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (34,'77'),(35,'88'),(36,'99'),(37,'99'),(38,'faf3'),(39,'2222222'),(40,'888888');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int DEFAULT '1',
  `error` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='用户日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'admin','分页查询商品信息','com.blog.controller.ProductController.doSelectAdmin','[1]',64,'0:0:0:0:0:0:0:1','2023-04-25 19:15:43',0,'\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Table \'cs.product\' doesn\'t exist\n### The error may exist in com/blog/mapper/ProductMapper.java (best guess)\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: SELECT count(0) FROM product\n### Cause: java.sql.SQLSyntaxErrorException: Table \'cs.product\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'cs.product\' doesn\'t exist'),(2,'admin','分页查询商品信息','com.blog.controller.ProductController.doSelectAdmin','[1]',30,'0:0:0:0:0:0:0:1','2023-04-25 19:28:07',0,'\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Table \'cs.product\' doesn\'t exist\n### The error may exist in com/blog/mapper/ProductMapper.java (best guess)\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: SELECT count(0) FROM product\n### Cause: java.sql.SQLSyntaxErrorException: Table \'cs.product\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'cs.product\' doesn\'t exist');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `old_price` double(10,2) DEFAULT NULL,
  `sale_count` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `view_count` int DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (16,'ddd',88.00,88.00,88,88,35,'/2023/05/04/d28102f8-7292-4f95-940c-59307545703c.png',9,'2023-05-04 03:16:32'),(17,'bbb',1.00,1.00,1,1,NULL,'/2023/05/04/4fb1e9e9-7f93-4539-ab80-f189d1ba37f5.png',4,'2023-05-04 02:00:44'),(18,'12',1.00,1.00,1,1,NULL,'/2023/05/04/8dd08c48-aef2-4c9d-b590-5df5dd4df7d1.png',1,'2023-05-04 02:04:26'),(19,'888',888.00,888.00,888,888,NULL,'/2023/05/04/e6e16ec2-a3d6-4ddc-a162-462763b8f2f4.png',1,'2023-05-04 02:18:38'),(20,'99',99.00,99.00,99,99,NULL,'/2023/05/04/469a5016-0951-47c7-abd9-62a72fa86ad6.png',2,'2023-05-04 02:19:32'),(21,'11',11.00,11.00,11,11,NULL,'/2023/05/04/bebd72b0-e4c5-4f1f-8d37-402e376ab756.png',5,'2023-05-04 02:20:23'),(22,'bbcc',11.00,11.00,11,11,39,'/2023/05/04/c43603a9-97dc-47e6-948d-3e806c0efd7a.png',7,'2023-05-04 02:25:19'),(23,'888888',8.00,88.00,888,8888,40,'/2023/05/04/508c2007-3570-418f-9768-293a0f4874bf.png',8,'2023-05-04 03:54:07'),(24,'bbbb',1.00,2.00,2,2,39,'/2023/05/04/33b97a60-9473-40a9-a889-1c6504088556.png',9,'2023-05-04 08:28:23');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nick` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'admin','123456','管理员');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 12:02:26
