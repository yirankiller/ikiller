-- MySQL dump 10.13  Distrib 5.6.19, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: flower
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

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
-- Dumping data for table `SEQUENCE_TABLE_FLOWER`
--

LOCK TABLES `SEQUENCE_TABLE_FLOWER` WRITE;
/*!40000 ALTER TABLE `SEQUENCE_TABLE_FLOWER` DISABLE KEYS */;
/*!40000 ALTER TABLE `SEQUENCE_TABLE_FLOWER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES (1,'ROLE_USER',1),(2,'ROLE_USER',2),(3,'ROLE_USER',3),(4,'ROLE_USER',4),(5,'ROLE_USER',5),(6,'ROLE_USER',6);
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `base_entity`
--

LOCK TABLES `base_entity` WRITE;
/*!40000 ALTER TABLE `base_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,24,'盆栽花卉绿植绿萝 吊兰 可水培装修房办公室净化空气吸甲醛 吊兰--含盆 土培',54,'绿萝');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item_picture`
--

LOCK TABLES `item_picture` WRITE;
/*!40000 ALTER TABLE `item_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item_properties_option`
--

LOCK TABLES `item_properties_option` WRITE;
/*!40000 ALTER TABLE `item_properties_option` DISABLE KEYS */;
INSERT INTO `item_properties_option` VALUES (1,'红色','1',1),(2,'粉色','2',1);
/*!40000 ALTER TABLE `item_properties_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item_property`
--

LOCK TABLES `item_property` WRITE;
/*!40000 ALTER TABLE `item_property` DISABLE KEYS */;
INSERT INTO `item_property` VALUES (1,'1','红'),(2,'1','粉色');
/*!40000 ALTER TABLE `item_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `item_property_type`
--

LOCK TABLES `item_property_type` WRITE;
/*!40000 ALTER TABLE `item_property_type` DISABLE KEYS */;
INSERT INTO `item_property_type` VALUES (1,'颜色','color');
/*!40000 ALTER TABLE `item_property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,NULL,NULL,'user'),(2,NULL,NULL,NULL,NULL,'user1'),(3,NULL,NULL,NULL,NULL,'user2'),(4,NULL,NULL,NULL,NULL,'user3'),(5,NULL,NULL,NULL,NULL,'user6'),(6,NULL,NULL,NULL,NULL,'user8');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_shadow`
--

LOCK TABLES `user_shadow` WRITE;
/*!40000 ALTER TABLE `user_shadow` DISABLE KEYS */;
INSERT INTO `user_shadow` VALUES (1,1,'3bc21dc5d874aa4179447bde0f7aadc7ff0c9bca35fc62ab0b0fb8611ebc26bd2a1305f90b7b2d38',1),(2,1,'21b4ac5a63679a1d73105990c27e0e45ffee5dd4b72b0fde17ff9a5339aaeec2aaecefe5db990d13',2),(3,1,'fe3776956ec3282f96faea50911ec47f7f86f4635de7f0adc745fdb45ae5db7de00fef61651a2f31',3),(4,1,'c9f73ffa8a944681c1055da12eee5561eb0b9dde97a3abc812ccdca9c78647f61928c7218c7eb8a7',4),(5,1,'5212e08dbab20e60a0724512602be5dd7a14cd87bd831b39ea3edbfea236703e38a4408cc6c550ca',5),(6,1,'44af6c70a6e38a2187314ccfd325696064dd39c22a479974c2892c16127721b0a127dcd6f1260b4f',6);
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

-- Dump completed on 2014-12-26 15:45:41
