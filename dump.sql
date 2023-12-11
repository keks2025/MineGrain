-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: game
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb7u1

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
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `game_id` int(10) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(32) DEFAULT NULL,
  `game_code` varchar(8) DEFAULT NULL,
  `game_query` varchar(32) DEFAULT NULL,
  `image_url` text NOT NULL,
  `game_min_slots` int(8) DEFAULT NULL,
  `game_max_slots` int(8) DEFAULT NULL,
  `game_min_port` int(8) DEFAULT NULL,
  `game_max_port` int(8) DEFAULT NULL,
  `game_price` decimal(10,2) DEFAULT NULL,
  `game_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (8,'SA:MP 0.3z','samp','samp','',10,1000,1111,60000,0.25,1),(9,'CR:MP 0.3e','crmp','samp','',10,1000,1111,60000,0.25,1),(10,'SA:MP 0.3e','sampe','samp','',10,1000,1111,60000,0.25,1),(11,'SA:MP 0.3x','sampx','samp','',10,1000,1111,60000,0.25,1),(12,'SA:MP 0.3.7','037','samp','',10,1000,1111,60000,0.25,1);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `invoice_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `invoice_ammount` decimal(10,2) DEFAULT NULL,
  `invoice_status` int(1) DEFAULT NULL,
  `invoice_date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1922 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `location_id` int(10) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(32) DEFAULT NULL,
  `location_ip` varchar(15) DEFAULT NULL,
  `location_ip2` varchar(15) DEFAULT NULL,
  `location_user` varchar(32) DEFAULT NULL,
  `location_password` varchar(32) DEFAULT NULL,
  `location_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` varchar(64) NOT NULL,
  `replace` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `skidka` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `server_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `game_id` int(10) DEFAULT NULL,
  `location_id` int(10) DEFAULT NULL,
  `database` int(11) NOT NULL,
  `server_slots` int(8) DEFAULT NULL,
  `server_port` int(8) DEFAULT NULL,
  `server_password` varchar(32) DEFAULT NULL,
  `server_status` int(1) DEFAULT NULL,
  `server_cpu_load` float NOT NULL DEFAULT '0',
  `server_ram_load` float NOT NULL DEFAULT '0',
  `server_date_reg` datetime DEFAULT NULL,
  `server_date_end` datetime DEFAULT NULL,
  `server_quota` int(11) NOT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servers_stats`
--

DROP TABLE IF EXISTS `servers_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers_stats` (
  `server_id` int(11) DEFAULT NULL,
  `server_stats_date` datetime DEFAULT NULL,
  `server_stats_players` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `ticket_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `ticket_name` varchar(32) DEFAULT NULL,
  `ticket_otdel` varchar(32) DEFAULT NULL,
  `ticket_status` int(1) DEFAULT NULL,
  `ticket_date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tickets_messages`
--

DROP TABLE IF EXISTS `tickets_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_messages` (
  `ticket_message_id` int(10) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `ticket_message` text,
  `ticket_message_date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`ticket_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(96) DEFAULT NULL,
  `user_password` varchar(32) DEFAULT NULL,
  `user_firstname` varchar(32) DEFAULT NULL,
  `user_lastname` varchar(32) DEFAULT NULL,
  `user_avatar` text NOT NULL,
  `user_status` int(1) DEFAULT NULL,
  `user_refid` int(1) DEFAULT 0,
  `user_balance` decimal(10,2) DEFAULT NULL,
  `user_refmoney` decimal(10,2) DEFAULT 0,
  `user_restore_key` varchar(32) DEFAULT NULL,
  `user_access_level` int(1) DEFAULT NULL,
  `user_date_reg` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `waste`
--

DROP TABLE IF EXISTS `waste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waste` (
  `waste_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `waste_ammount` decimal(10,2) DEFAULT NULL,
  `waste_status` int(1) DEFAULT NULL,
  `waste_usluga` varchar(120) DEFAULT NULL,
  `waste_date_add` datetime DEFAULT NULL,
  PRIMARY KEY (`waste_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2776 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-14 19:10:05
