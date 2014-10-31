-- MySQL dump 10.13  Distrib 5.6.17, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: flower
-- ------------------------------------------------------
-- Server version	5.6.17-0ubuntu0.14.04.1

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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) NOT NULL,
  `user_shadow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c0d574c5ab31409d945eb0996a9` (`user_shadow_id`),
  CONSTRAINT `FK_c0d574c5ab31409d945eb0996a9` FOREIGN KEY (`user_shadow_id`) REFERENCES `user_shadow` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES (1,'USER',1),(4,'ADMIN',1),(5,'USER',2),(6,'USER',3),(7,'USER',4);
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (18,'史蒂夫','1231@f'),(19,'d ','3@2'),(20,'','');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_a0f7edb1430142288c77a9b6f8a` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'wanwan@163.com','13515818092','Nether One','130097','user'),(2,NULL,NULL,NULL,NULL,'admin'),(3,NULL,NULL,NULL,NULL,'user1'),(4,NULL,NULL,NULL,NULL,'user2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_shadow`
--

DROP TABLE IF EXISTS `user_shadow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_shadow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_eb763cc58894497f87232eacf97` (`user_id`),
  CONSTRAINT `FK_eb763cc58894497f87232eacf97` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_shadow`
--

LOCK TABLES `user_shadow` WRITE;
/*!40000 ALTER TABLE `user_shadow` DISABLE KEYS */;
INSERT INTO `user_shadow` VALUES (1,1,'a48b87b1670ee7724b3686121d73c69680cde551e866236bb5f93fb97c81f8bb063ba729727afb55',1),(2,1,'85147b83ae8c5b04654c1ac024f80e269f1d667cf9650111afccc661c613d27be6860edc12593231',2),(3,1,'197ebd88d7f02ffa562a154f368efa99260cc92c7847a78c5d48544469ec23ddbc01644e1ef8a50f',3),(4,1,'4e7128f26501185c318654df7958114075109edf0b418ddca24872e91c39591d56fb3c9b339511d1',4);
/*!40000 ALTER TABLE `user_shadow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-31 20:37:01
