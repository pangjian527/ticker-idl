-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: ticker
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `account` varchar(10) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('ff80818158a004d30158a004d46c0000','pangjian','123','2016-11-26 09:43:40','2016-11-26 09:43:40','admin','EFFECTIVE');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_base_data`
--

DROP TABLE IF EXISTS `t_base_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_base_data` (
  `id` varchar(32) NOT NULL,
  `stage` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `zodiac_code` varchar(10) DEFAULT NULL,
  `color_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_base_data`
--

LOCK TABLES `t_base_data` WRITE;
/*!40000 ALTER TABLE `t_base_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_base_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_consumer`
--

DROP TABLE IF EXISTS `t_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_consumer` (
  `id` varchar(32) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `referee_id` varchar(12) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_consumer`
--

LOCK TABLES `t_consumer` WRITE;
/*!40000 ALTER TABLE `t_consumer` DISABLE KEYS */;
INSERT INTO `t_consumer` VALUES ('1','18922378741',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','0','a','EFFECTIVE'),('10','18922378710',80,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378742','a','EFFECTIVE'),('11','18922378711',1000,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378743','a','EFFECTIVE'),('12','18922378712',5,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378744','a','EFFECTIVE'),('13','18922378713',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('14','18922378714',108,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('15','18922378715',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('16','18922378716',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('2','18922378742',80,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378742','a','EFFECTIVE'),('3','18922378743',1000,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378743','a','EFFECTIVE'),('4','18922378744',5,'2016-12-01 16:00:00','2016-12-01 16:00:00','18922378744','a','EFFECTIVE'),('5','18922378745',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('6','18922378746',108,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('7','18922378747',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('8','18922378748',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','1','a','EFFECTIVE'),('9','18922378749',100,'2016-12-01 16:00:00','2016-12-01 16:00:00','0','a','EFFECTIVE');
/*!40000 ALTER TABLE `t_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lottery_data`
--

DROP TABLE IF EXISTS `t_lottery_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lottery_data` (
  `id` varchar(32) NOT NULL,
  `base_data_id` varchar(32) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lottery_data`
--

LOCK TABLES `t_lottery_data` WRITE;
/*!40000 ALTER TABLE `t_lottery_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_lottery_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_msg`
--

DROP TABLE IF EXISTS `t_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_msg` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_msg`
--

LOCK TABLES `t_msg` WRITE;
/*!40000 ALTER TABLE `t_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` varchar(32) NOT NULL,
  `amount` double DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `topic_id` varchar(32) DEFAULT NULL,
  `result` varchar(1) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_recharge`
--

DROP TABLE IF EXISTS `t_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_recharge` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `give_amount` double DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_recharge`
--

LOCK TABLES `t_recharge` WRITE;
/*!40000 ALTER TABLE `t_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_reply`
--

DROP TABLE IF EXISTS `t_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_reply` (
  `id` varchar(32) NOT NULL,
  `content` blob,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reply`
--

LOCK TABLES `t_reply` WRITE;
/*!40000 ALTER TABLE `t_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_topic`
--

DROP TABLE IF EXISTS `t_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_topic` (
  `id` varchar(32) NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `content` blob,
  `user_id` varchar(32) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `reply_count` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_topic`
--

LOCK TABLES `t_topic` WRITE;
/*!40000 ALTER TABLE `t_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-02 20:58:32
