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
-- Table structure for table `t_base_data`
--

DROP TABLE IF EXISTS `t_base_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_base_data` (
  `id` varchar(32) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `zodiac_code` varchar(10) DEFAULT NULL,
  `color_code` varchar(10) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_base_data`
--

LOCK TABLES `t_base_data` WRITE;
/*!40000 ALTER TABLE `t_base_data` DISABLE KEYS */;
INSERT INTO `t_base_data` VALUES ('1',2016,1,'猴','red',1),('10',2016,3,'马','blue',10),('11',2016,15,'马','blue',11),('12',2016,27,'马','green',12),('13',2016,39,'马','green',13),('14',2016,4,'蛇','blue',14),('15',2016,16,'蛇','green',15),('16',2016,28,'蛇','green',16),('17',2016,40,'蛇','red',17),('18',2016,5,'龙','green',18),('19',2016,17,'龙','green',19),('2',2016,13,'猴','red',2),('20',2016,29,'龙','red',20),('21',2016,41,'龙','blue',21),('22',2016,6,'兔','green',22),('23',2016,18,'兔','red',23),('24',2016,30,'兔','red',24),('25',2016,42,'兔','blue',25),('3',2016,25,'猴','blue',3),('4',2016,37,'猴','blue',4),('5',2016,49,'猴','green',5),('6',2016,2,'羊','red',6),('7',2016,14,'羊','blue',7),('8',2016,26,'羊','blue',8),('9',2016,38,'羊','green',9),('ff808181594d5bc301594d86a5630000',2016,7,'虎','red',NULL),('ff808181594d5bc301594d86efef0001',2016,19,'虎','red',NULL),('ff808181594d5bc301594d871ea10002',2016,31,'虎','blue',NULL),('ff808181594d5bc301594d87fe5e0004',2016,43,'虎','green',NULL),('ff808181594d5bc301594d8866800005',2016,8,'牛','red',NULL),('ff808181594d5bc301594d8893a50006',2016,20,'牛','blue',NULL),('ff808181594d5bc301594d88d76a0007',2016,32,'牛','green',NULL),('ff808181594d5bc301594d8911d60008',2016,44,'牛','green',NULL),('ff808181594d5bc301594d8a23350009',2016,9,'鼠','blue',NULL),('ff808181594d5bc301594d8a832e000a',2016,21,'鼠','green',NULL),('ff808181594d5bc301594d8ab395000b',2016,33,'鼠','green',NULL),('ff808181594d5bc301594d8afaed000c',2016,45,'鼠','red',NULL),('ff808181594d5bc301594d8cd287000d',2016,12,'鸡','red',NULL),('ff808181594d5bc301594d8d0f75000e',2016,24,'鸡','red',NULL),('ff808181594d5bc301594d8d4aff000f',2016,36,'鸡','blue',NULL),('ff808181594d5bc301594d8eaea60010',2016,48,'鸡','blue',NULL),('ff808181594d5bc301594d9050760011',2016,11,'狗','green',NULL),('ff808181594d5bc301594d909c400012',2016,23,'狗','red',NULL),('ff808181594d5bc301594d90b7fd0013',2016,35,'狗','red',NULL),('ff808181594d5bc301594d90f0c60014',2016,47,'狗','blue',NULL),('ff808181594d5bc301594d9209f60015',2016,10,'猪','blue',NULL),('ff808181594d5bc301594d922b360016',2016,22,'猪','green',NULL),('ff808181594d5bc301594d926b8e0017',2016,34,'猪','red',NULL),('ff808181594d5bc301594d929f420018',2016,46,'猪','red',NULL),('ff808181596c52cc01596c54fca40000',2017,1,'鸡','red',NULL),('ff808181596c52cc01596c55313e0001',2017,13,'鸡','red',NULL),('ff808181596c52cc01596c5577fd0002',2017,25,'鸡','blue',NULL),('ff808181596c52cc01596c55adfd0003',2017,49,'鸡','green',NULL),('ff808181596c52cc01596c55f2790004',2017,37,'鸡','blue',NULL),('ff808181596c52cc01596c56493c0005',2017,2,'猴','red',NULL),('ff808181596c52cc01596c56744c0006',2017,14,'猴','blue',NULL),('ff808181596c52cc01596c56bdad0007',2017,26,'猴','blue',NULL),('ff808181596c52cc01596c5719fb0008',2017,38,'猴','green',NULL),('ff808181596c52cc01596c576b530009',2017,3,'羊','blue',NULL),('ff808181596c52cc01596c5793f4000a',2017,15,'羊','blue',NULL),('ff808181596c52cc01596c57c28c000b',2017,27,'羊','green',NULL),('ff808181596c52cc01596c57f384000c',2017,39,'羊','green',NULL),('ff808181596c52cc01596c584f9b000d',2017,4,'马','blue',NULL),('ff808181596c52cc01596c58803b000e',2017,16,'马','green',NULL),('ff808181596c52cc01596c58b34d000f',2017,28,'马','green',NULL),('ff808181596c52cc01596c58eb4c0010',2017,40,'马','red',NULL),('ff808181596c52cc01596c592a9c0011',2017,5,'蛇','green',NULL),('ff808181596c52cc01596c5962a40012',2017,17,'蛇','green',NULL),('ff808181596c52cc01596c59956b0013',2017,29,'蛇','red',NULL),('ff808181596c52cc01596c59de1c0014',2017,41,'蛇','blue',NULL),('ff808181596c52cc01596c5a5f680015',2017,6,'龙','green',NULL),('ff808181596c52cc01596c5aace30016',2017,18,'龙','red',NULL),('ff808181596c52cc01596c5ae14c0017',2017,30,'龙','red',NULL),('ff808181596c52cc01596c5b29c30018',2017,42,'龙','blue',NULL),('ff808181596c52cc01596c5b824c0019',2017,7,'兔','red',NULL),('ff808181596c52cc01596c5bbb3c001a',2017,19,'兔','red',NULL),('ff808181596c52cc01596c5bf003001b',2017,31,'兔','blue',NULL),('ff808181596c52cc01596c5c47c0001c',2017,43,'兔','green',NULL),('ff808181596c52cc01596c5c9ed4001d',2017,8,'虎','red',NULL),('ff808181596c52cc01596c5cdbfc001e',2017,20,'虎','blue',NULL),('ff808181596c52cc01596c5d1284001f',2017,32,'虎','green',NULL),('ff808181596c52cc01596c5d46ab0020',2017,44,'虎','green',NULL),('ff808181596c52cc01596c5d91940021',2017,9,'牛','blue',NULL),('ff808181596c52cc01596c5dc71b0022',2017,21,'牛','green',NULL),('ff808181596c52cc01596c5e12840023',2017,33,'牛','green',NULL),('ff808181596c52cc01596c5e51130024',2017,45,'牛','red',NULL),('ff808181596c52cc01596c5e91a30025',2017,10,'鼠','blue',NULL),('ff808181596c52cc01596c5ec2340026',2017,22,'鼠','green',NULL),('ff808181596c52cc01596c5ef3bc0027',2017,34,'鼠','red',NULL),('ff808181596c52cc01596c5f20340028',2017,46,'鼠','red',NULL),('ff808181596c52cc01596c5fc31c0029',2017,11,'猪','green',NULL),('ff808181596c52cc01596c5ff505002a',2017,23,'猪','red',NULL),('ff808181596c52cc01596c601664002b',2017,35,'猪','red',NULL),('ff808181596c52cc01596c604de4002c',2017,47,'猪','blue',NULL),('ff808181596c52cc01596c607d53002d',2017,12,'狗','red',NULL),('ff808181596c52cc01596c60bcac002e',2017,24,'狗','red',NULL),('ff808181596c52cc01596c6107cc002f',2017,36,'狗','blue',NULL),('ff808181596c52cc01596c614d8c0030',2017,48,'狗','blue',NULL);
/*!40000 ALTER TABLE `t_base_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-05 10:12:11
