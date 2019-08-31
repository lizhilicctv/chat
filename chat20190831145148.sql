-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: chat
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','0d89b868429be6158ba1ebc0f7c073de','/user/main.jpg');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg`
--

DROP TABLE IF EXISTS `msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formid` varchar(4) DEFAULT NULL,
  `toid` varchar(4) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1' COMMENT '1代表是，文字，2代表是标签，3代表图片',
  `isread` tinyint(1) DEFAULT '0' COMMENT '0是未读，1是已读',
  `time` datetime DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL COMMENT '文字数据',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`),
  KEY `toid` (`toid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg`
--

LOCK TABLES `msg` WRITE;
/*!40000 ALTER TABLE `msg` DISABLE KEYS */;
INSERT INTO `msg` VALUES (69,'main','1',1,1,'2019-08-31 09:42:48','离线留言'),(70,'2','main',1,1,'2019-08-31 09:49:26','777'),(5,'main','1',1,1,'2019-08-30 17:52:30','777'),(6,'main','1',2,1,'2019-08-30 17:52:32','<span class=\"emoji-picker-image\" style=\"background-position: -40px -18px;\"></span>'),(7,'main','1',3,1,'2019-08-30 17:54:38','/chatimg/190830/055438_29805.jpg'),(8,'2','main',1,1,'2019-08-30 17:57:08','7777'),(9,'main','2',1,1,'2019-08-30 18:02:01','7777'),(10,'main','2',1,1,'2019-08-30 18:02:05','777'),(11,'main','2',1,1,'2019-08-30 18:02:18','8888'),(12,'main','2',1,1,'2019-08-30 18:07:31','444'),(13,'main','2',1,1,'2019-08-30 18:09:11','444'),(14,'2','main',1,1,'2019-08-30 18:09:31','777'),(15,'main','2',1,1,'2019-08-30 18:09:42','777'),(16,'2','main',1,1,'2019-08-30 18:23:27','77'),(17,'2','main',1,1,'2019-08-30 18:23:58','7777'),(18,'2','main',1,1,'2019-08-30 18:24:08','777'),(19,'2','main',1,1,'2019-08-30 18:27:43','77'),(20,'2','main',1,1,'2019-08-30 18:28:33','77'),(21,'2','main',1,1,'2019-08-30 18:28:56','77'),(22,'2','main',1,1,'2019-08-30 18:29:07','77'),(23,'2','main',1,1,'2019-08-30 18:29:20','77'),(24,'2','main',1,1,'2019-08-30 18:29:35','77'),(25,'2','main',1,1,'2019-08-30 18:29:46','77'),(26,'2','main',1,1,'2019-08-30 18:35:14','77'),(27,'2','main',1,1,'2019-08-30 18:35:21','888'),(28,'2','main',1,1,'2019-08-30 18:35:58','999'),(29,'2','main',1,1,'2019-08-30 18:37:49','999'),(30,'2','main',1,1,'2019-08-30 18:38:03','888'),(31,'2','main',1,1,'2019-08-30 18:38:26','88'),(32,'2','main',1,1,'2019-08-30 18:38:51','11'),(33,'2','main',1,1,'2019-08-30 18:41:07','77'),(34,'2','main',1,1,'2019-08-30 18:41:13','22'),(35,'2','main',1,1,'2019-08-30 18:41:36','888'),(36,'2','main',1,1,'2019-08-30 18:42:08','777'),(37,'2','main',1,1,'2019-08-30 18:42:32','7777'),(38,'2','main',1,1,'2019-08-30 18:42:40','888'),(39,'2','main',1,1,'2019-08-30 18:42:49','8787'),(40,'main','2',1,1,'2019-08-30 18:43:26','444'),(41,'2','main',1,1,'2019-08-30 18:43:30','4844'),(42,'2','main',1,1,'2019-08-30 18:43:36','488448'),(43,'2','main',1,1,'2019-08-30 18:44:50','777'),(44,'2','main',1,1,'2019-08-30 18:44:55','777'),(45,'2','main',1,1,'2019-08-30 18:45:05','777'),(46,'2','main',1,1,'2019-08-30 18:45:56','777'),(47,'2','main',1,1,'2019-08-30 18:46:02','888'),(48,'1','main',1,1,'2019-08-30 18:50:23','444'),(49,'1','main',1,1,'2019-08-30 18:50:25','455445'),(50,'2','main',1,1,'2019-08-30 18:50:27','45544'),(51,'2','main',1,1,'2019-08-30 18:50:29','45454'),(52,'1','main',1,1,'2019-08-30 18:53:33','44'),(53,'1','main',1,1,'2019-08-30 18:53:34','55'),(54,'2','main',1,1,'2019-08-30 18:53:37','88'),(55,'2','main',1,1,'2019-08-30 18:53:38','88'),(56,'2','main',1,1,'2019-08-30 18:54:15','呃呃呃呃'),(57,'1','main',1,1,'2019-08-30 18:54:19','呃呃呃'),(58,'2','main',1,1,'2019-08-30 18:54:25','嗯嗯'),(59,'main','2',1,1,'2019-08-30 18:55:06','时代风格'),(60,'main','1',1,1,'2019-08-30 18:55:09','时代风格'),(61,'main','2',1,1,'2019-08-30 18:55:23','111'),(62,'main','1',1,1,'2019-08-30 18:55:27','222'),(63,'2','main',1,1,'2019-08-30 18:55:54','34543'),(64,'2','main',1,1,'2019-08-30 19:00:56','7777'),(65,'2','main',1,1,'2019-08-30 19:01:35','77'),(66,'2','main',1,1,'2019-08-30 19:02:15','77'),(67,'2','main',1,1,'2019-08-30 19:04:49','阿斯达'),(68,'2','main',2,1,'2019-08-30 19:04:51','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(71,'2','main',1,1,'2019-08-31 09:49:29','88'),(72,'2','main',2,1,'2019-08-31 09:49:30','<span class=\"emoji-picker-image\" style=\"background-position: -102px -86px;\"></span>'),(73,'2','main',1,1,'2019-08-31 09:53:44','555'),(74,'2','main',1,1,'2019-08-31 09:57:21','www'),(75,'2','main',1,1,'2019-08-31 09:57:32','444'),(76,'2','main',2,1,'2019-08-31 10:07:45','<span class=\"emoji-picker-image\" style=\"background-position: -71px -52px;\"></span>'),(77,'2','main',3,1,'2019-08-31 10:07:51','/chatimg/190831/100751_27147.jpg'),(78,'2','main',1,1,'2019-08-31 10:07:54','77777'),(79,'2','main',1,1,'2019-08-31 10:42:47','444'),(80,'2','main',1,1,'2019-08-31 10:49:41','11'),(81,'2','main',1,1,'2019-08-31 10:50:18','11'),(82,'2','main',1,1,'2019-08-31 10:51:33','444'),(83,'2','main',1,1,'2019-08-31 10:51:42','4448'),(84,'2','main',1,1,'2019-08-31 10:52:26','44'),(85,'2','main',1,1,'2019-08-31 10:54:12','77'),(86,'2','main',1,1,'2019-08-31 10:54:52','77'),(87,'2','main',1,1,'2019-08-31 11:01:46','77'),(88,'2','main',1,1,'2019-08-31 11:05:43','77'),(89,'2','main',1,1,'2019-08-31 11:06:36','77'),(90,'2','main',1,1,'2019-08-31 11:09:11','77'),(91,'2','main',1,1,'2019-08-31 11:11:00','7'),(92,'2','main',1,1,'2019-08-31 11:11:13','77'),(93,'2','main',1,1,'2019-08-31 11:12:52','77'),(94,'2','main',1,1,'2019-08-31 11:13:22','77'),(95,'2','main',1,1,'2019-08-31 11:19:34','77'),(96,'2','main',2,1,'2019-08-31 11:19:53','<span class=\"emoji-picker-image\" style=\"background-position: -40px -52px;\"></span>'),(97,'2','main',2,1,'2019-08-31 11:22:38','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(98,'2','main',2,1,'2019-08-31 11:22:53','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(99,'main','2',1,1,'2019-08-31 11:24:00','11'),(100,'2','main',2,1,'2019-08-31 11:24:38','<span class=\"emoji-picker-image\" style=\"background-position: -71px -86px;\"></span>'),(101,'2','main',2,1,'2019-08-31 11:25:29','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(102,'1','main',3,1,'2019-08-31 11:54:15','/chatimg/190831/115415_59001.jpg'),(103,'1','main',2,1,'2019-08-31 12:01:31','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(104,'1','main',2,1,'2019-08-31 12:01:37','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(105,'1','main',2,1,'2019-08-31 12:02:04','<span class=\"emoji-picker-image\" style=\"background-position: -71px -86px;\"></span>'),(106,'1','main',2,1,'2019-08-31 12:03:04','<span class=\"emoji-picker-image\" style=\"background-position: -40px -52px;\"></span>'),(107,'1','main',2,1,'2019-08-31 12:03:06','<span class=\"emoji-picker-image\" style=\"background-position: -40px -18px;\"></span>'),(108,'1','main',2,1,'2019-08-31 12:10:32','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(109,'1','main',2,1,'2019-08-31 12:11:45','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(110,'1','main',2,1,'2019-08-31 12:12:14','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(111,'1','main',2,1,'2019-08-31 12:13:18','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(112,'1','main',2,1,'2019-08-31 12:13:40','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(113,'1','main',2,1,'2019-08-31 12:19:01','<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>'),(114,'main','1',1,1,'2019-08-31 12:48:26','11'),(115,'1','main',1,1,'2019-08-31 12:48:44','11');
/*!40000 ALTER TABLE `msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'张三','e10adc3949ba59abbe56e057f20f883e','/user/1.jpg'),(2,'李四','e10adc3949ba59abbe56e057f20f883e','/user/2.jpg'),(3,'王五','e10adc3949ba59abbe56e057f20f883e','/user/3.jpg'),(4,'赵六','e10adc3949ba59abbe56e057f20f883e','/user/4.jpg');
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

-- Dump completed on 2019-08-31 14:51:49
