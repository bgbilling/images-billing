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

CREATE DATABASE bgbilling DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE bgbilling;

--
-- Table structure for table `address_area`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_area` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cityid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_area`
--

LOCK TABLES `address_area` WRITE;
/*!40000 ALTER TABLE `address_area` DISABLE KEYS */;
INSERT INTO `address_area` VALUES (1,'Октябрьский район',1);
/*!40000 ALTER TABLE `address_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_city`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pos` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_city`
--

LOCK TABLES `address_city` WRITE;
/*!40000 ALTER TABLE `address_city` DISABLE KEYS */;
INSERT INTO `address_city` VALUES (1,1,'Уфа',1);
/*!40000 ALTER TABLE `address_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_config` (
  `table_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(11) NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`table_id`,`record_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_config`
--

LOCK TABLES `address_config` WRITE;
/*!40000 ALTER TABLE `address_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_country`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_country`
--

LOCK TABLES `address_country` WRITE;
/*!40000 ALTER TABLE `address_country` DISABLE KEYS */;
INSERT INTO `address_country` VALUES (1,'Россия');
/*!40000 ALTER TABLE `address_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_house`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `streetid` int(11) NOT NULL DEFAULT '0',
  `house` int(11) NOT NULL DEFAULT '0',
  `frac` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` smallint(5) NOT NULL DEFAULT '0',
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `areaid` int(10) NOT NULL DEFAULT '0',
  `quarterid` int(10) NOT NULL DEFAULT '0',
  `box_index` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt` date DEFAULT NULL,
  `pod_diapazon` text COLLATE utf8_unicode_ci NOT NULL,
  `pod` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `HouseU` (`streetid`,`house`,`frac`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_house`
--

LOCK TABLES `address_house` WRITE;
/*!40000 ALTER TABLE `address_house` DISABLE KEYS */;
INSERT INTO `address_house` VALUES (1,1,10,'/2',140,'',1,0,'450073',NULL,'','');
/*!40000 ALTER TABLE `address_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_quarter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_quarter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gid` int(11) DEFAULT NULL,
  `cityid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_quarter`
--

LOCK TABLES `address_quarter` WRITE;
/*!40000 ALTER TABLE `address_quarter` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_quarter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_street`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_street` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `p_index` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cityid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_street`
--

LOCK TABLES `address_street` WRITE;
/*!40000 ALTER TABLE `address_street` DISABLE KEYS */;
INSERT INTO `address_street` VALUES (1,'Гагарина','',1);
/*!40000 ALTER TABLE `address_street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgs_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgs_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cgr` bigint(20) NOT NULL DEFAULT '0',
  `pids` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cgr_mode` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgs_group`
--

LOCK TABLES `bgs_group` WRITE;
/*!40000 ALTER TABLE `bgs_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgs_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgs_group_action`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgs_group_action` (
  `gid` int(11) NOT NULL DEFAULT '0',
  `mid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `aid` int(11) NOT NULL DEFAULT '0',
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgs_group_action`
--

LOCK TABLES `bgs_group_action` WRITE;
/*!40000 ALTER TABLE `bgs_group_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgs_group_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgs_group_menu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgs_group_menu` (
  `gid` int(11) NOT NULL,
  `menu_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(2) NOT NULL,
  PRIMARY KEY (`gid`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgs_group_menu`
--

LOCK TABLES `bgs_group_menu` WRITE;
/*!40000 ALTER TABLE `bgs_group_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgs_group_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgs_module_action`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgs_module_action` (
  `module` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgs_module_action`
--

LOCK TABLES `bgs_module_action` WRITE;
/*!40000 ALTER TABLE `bgs_module_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgs_module_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgs_user_action`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgs_user_action` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `mid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `aid` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgs_user_action`
--

LOCK TABLES `bgs_user_action` WRITE;
/*!40000 ALTER TABLE `bgs_user_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgs_user_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgs_user_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bgs_user_group` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgs_user_group`
--

LOCK TABLES `bgs_user_group` WRITE;
/*!40000 ALTER TABLE `bgs_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `bgs_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gr` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title_pattern_id` int(11) NOT NULL DEFAULT '0',
  `pswd` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `mode` tinyint(4) NOT NULL DEFAULT '0',
  `closesumma` decimal(10,2) NOT NULL,
  `pgid` int(11) NOT NULL DEFAULT '0',
  `pfid` int(11) NOT NULL DEFAULT '0',
  `fc` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `scid` int(11) NOT NULL DEFAULT '0',
  `sub_list` text COLLATE utf8_unicode_ci NOT NULL,
  `sub_mode` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `status_date` date DEFAULT NULL,
  `last_tariff_change` datetime DEFAULT NULL,
  `crm_customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date1` (`date1`),
  KEY `title` (`title`),
  KEY `del` (`del`),
  KEY `scid` (`scid`),
  KEY `crm_customer_id` (`crm_customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,36028797018963968,'NOAUTH',0,'224828','2015-05-22',NULL,1,100000.00,1,0,0,'Служебный, неаутентифицированные сессии',0,0,'',0,3,'2015-05-01',NULL,0),(2,36028797018963968,'ISG_SERVICE',0,'324750','2015-05-24',NULL,0,-100.00,0,0,0,'Служебный, справочник ISG-сервисов',0,0,'',0,0,'2015-05-24',NULL,0),(3,1,'10000010',1,'123456','2015-05-25',NULL,1,-100.00,1,0,0,'Иванов Петр Сидорович',0,0,'',0,0,'2015-05-25',NULL,0);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_account`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_account` (
  `yy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `summa` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`yy`,`mm`,`cid`,`sid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_account`
--

LOCK TABLES `contract_account` WRITE;
/*!40000 ALTER TABLE `contract_account` DISABLE KEYS */;
INSERT INTO `contract_account` VALUES (2015,5,3,3,1.40279),(2015,6,3,3,5.84635),(2015,8,3,3,11.64002);
/*!40000 ALTER TABLE `contract_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_balance`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_balance` (
  `yy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `summa1` decimal(10,2) NOT NULL,
  `summa2` decimal(10,2) NOT NULL,
  `summa3` decimal(10,2) NOT NULL,
  `summa4` decimal(10,2) NOT NULL,
  PRIMARY KEY (`cid`,`yy`,`mm`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_balance`
--

LOCK TABLES `contract_balance` WRITE;
/*!40000 ALTER TABLE `contract_balance` DISABLE KEYS */;
INSERT INTO `contract_balance` VALUES (2015,5,1,0.00,0.00,0.00,0.00),(2015,5,3,0.00,0.00,1.40,0.00),(2015,6,3,-1.40,100.00,5.85,0.00),(2015,8,3,92.75,0.00,11.64,0.00);
/*!40000 ALTER TABLE `contract_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_charge`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL DEFAULT '0000-00-00',
  `cid` int(11) NOT NULL DEFAULT '0',
  `pt` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `summa` decimal(10,2) NOT NULL,
  `comment` char(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payback` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dt_cid` (`dt`,`cid`),
  KEY `pt` (`pt`),
  KEY `uid` (`uid`),
  KEY `cid_dt` (`cid`,`dt`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_charge`
--

LOCK TABLES `contract_charge` WRITE;
/*!40000 ALTER TABLE `contract_charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_charge_types`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_charge_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `up` int(11) unsigned NOT NULL DEFAULT '0',
  `payback` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_charge_types`
--

LOCK TABLES `contract_charge_types` WRITE;
/*!40000 ALTER TABLE `contract_charge_types` DISABLE KEYS */;
INSERT INTO `contract_charge_types` VALUES (1,'Активация тарифной опции',1,0,0,0);
/*!40000 ALTER TABLE `contract_charge_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_comment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visibled` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_comment`
--

LOCK TABLES `contract_comment` WRITE;
/*!40000 ALTER TABLE `contract_comment` DISABLE KEYS */;
INSERT INTO `contract_comment` VALUES (1,3,1,'Примечание','Тестовый договор. Пароль к личному кабинету 123456.','2015-06-09 19:17:53','');
/*!40000 ALTER TABLE `contract_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_comment_patterns`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_comment_patterns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_comment_patterns`
--

LOCK TABLES `contract_comment_patterns` WRITE;
/*!40000 ALTER TABLE `contract_comment_patterns` DISABLE KEYS */;
INSERT INTO `contract_comment_patterns` VALUES (1,'ФИО','${param_2}');
/*!40000 ALTER TABLE `contract_comment_patterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_delete_money`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_delete_money` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `gr` bigint(20) NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_delete_money`
--

LOCK TABLES `contract_delete_money` WRITE;
/*!40000 ALTER TABLE `contract_delete_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_delete_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_delete_time`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_delete_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `gr` bigint(20) NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_delete_time`
--

LOCK TABLES `contract_delete_time` WRITE;
/*!40000 ALTER TABLE `contract_delete_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_delete_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_error`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL DEFAULT '0000-00-00',
  `hh` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msg_data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dt` (`dt`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_error`
--

LOCK TABLES `contract_error` WRITE;
/*!40000 ALTER TABLE `contract_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_group` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `editable` tinyint(3) NOT NULL DEFAULT '1',
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `enable` (`enable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_group`
--

LOCK TABLES `contract_group` WRITE;
/*!40000 ALTER TABLE `contract_group` DISABLE KEYS */;
INSERT INTO `contract_group` VALUES (0,'Интернет',1,1,''),(1,'Телевидение',1,1,''),(2,'Телефония',1,1,''),(55,'Служебный',1,1,'');
/*!40000 ALTER TABLE `contract_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_limit_manage`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_limit_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `clp_id` int(11) DEFAULT NULL,
  `summ` decimal(10,2) NOT NULL,
  `date1` datetime NOT NULL,
  `date2` date DEFAULT NULL,
  `pids` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rest` float(10,2) NOT NULL DEFAULT '0.00',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `clp_id` (`clp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_limit_manage`
--

LOCK TABLES `contract_limit_manage` WRITE;
/*!40000 ALTER TABLE `contract_limit_manage` DISABLE KEYS */;
INSERT INTO `contract_limit_manage` VALUES (1,3,NULL,10.00,'2015-06-09 19:04:42','2015-06-12',NULL,0.00,3);
/*!40000 ALTER TABLE `contract_limit_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_limit_manage_mode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_limit_manage_mode` (
  `cid` int(11) NOT NULL,
  `mode` int(11) NOT NULL DEFAULT '0',
  `cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_limit_manage_mode`
--

LOCK TABLES `contract_limit_manage_mode` WRITE;
/*!40000 ALTER TABLE `contract_limit_manage_mode` DISABLE KEYS */;
INSERT INTO `contract_limit_manage_mode` VALUES (3,0,1);
/*!40000 ALTER TABLE `contract_limit_manage_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_limit_period`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_limit_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `dt` date DEFAULT NULL,
  `value` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dt` (`dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_limit_period`
--

LOCK TABLES `contract_limit_period` WRITE;
/*!40000 ALTER TABLE `contract_limit_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_limit_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_logon_error`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_logon_error` (
  `lu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dt` datetime NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `error_code` int(11) NOT NULL,
  `request_data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  KEY `cid_dt` (`cid`,`dt`),
  KEY `login_dt` (`login`,`dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_logon_error`
--

LOCK TABLES `contract_logon_error` WRITE;
/*!40000 ALTER TABLE `contract_logon_error` DISABLE KEYS */;
INSERT INTO `contract_logon_error` VALUES ('2016-06-17 07:43:55',0,'TEST','2016-06-17 10:43:55','192.168.184.35',1,'pswd = {123456}');
/*!40000 ALTER TABLE `contract_logon_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_logon_last`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_logon_last` (
  `lu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(11) NOT NULL,
  `dt` datetime NOT NULL,
  `n` int(11) NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_logon_last`
--

LOCK TABLES `contract_logon_last` WRITE;
/*!40000 ALTER TABLE `contract_logon_last` DISABLE KEYS */;
INSERT INTO `contract_logon_last` VALUES ('2016-06-17 07:43:55',0,'2016-06-17 10:43:55',1,'192.168.184.35'),('2016-06-17 09:18:01',3,'2016-06-17 12:18:01',0,'192.168.184.35');
/*!40000 ALTER TABLE `contract_logon_last` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_logon_ok`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_logon_ok` (
  `lu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(11) NOT NULL,
  `dt` datetime NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user` enum('p','c','a') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'c',
  KEY `new_index` (`cid`,`dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_logon_ok`
--

LOCK TABLES `contract_logon_ok` WRITE;
/*!40000 ALTER TABLE `contract_logon_ok` DISABLE KEYS */;
INSERT INTO `contract_logon_ok` VALUES ('2016-06-17 07:57:32',3,'2016-06-17 10:57:32','192.168.184.35','x_ZTEAj4Zw_MD0G5CM-Liv2Dc-ES4U5x','c'),('2016-06-17 08:00:03',3,'2016-06-17 11:00:03','192.168.184.35','5i3i0Ope47po2htnPoTh299YYBBljSpT','c'),('2016-06-17 08:14:19',3,'2016-06-17 11:14:19','192.168.184.35','wBKBOZZl4IhjsXiQxfPC-TknmTg80c_L','c'),('2016-06-17 08:57:45',3,'2016-06-17 11:57:45','192.168.184.35','df87A9lbGug2tN3WnILxyqhIp9k2pgtB','c'),('2016-06-17 09:18:01',3,'2016-06-17 12:18:01','192.168.184.35','9elDuuW_NLyzUjtF7qVM71ewyqKQF3VI','c');
/*!40000 ALTER TABLE `contract_logon_ok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_module`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_module` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_module`
--

LOCK TABLES `contract_module` WRITE;
/*!40000 ALTER TABLE `contract_module` DISABLE KEYS */;
INSERT INTO `contract_module` VALUES (1,1),(2,1),(3,1),(3,5);
/*!40000 ALTER TABLE `contract_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_notification`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_notification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'прочитано или нет',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_notification`
--

LOCK TABLES `contract_notification` WRITE;
/*!40000 ALTER TABLE `contract_notification` DISABLE KEYS */;
INSERT INTO `contract_notification` VALUES (1,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:36',0),(2,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:40',0),(3,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:43',0),(4,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:46',0),(5,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:48',0),(6,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:50',0),(7,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:53',0),(8,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:55',0),(9,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:56',1),(10,3,'Списание абонентской платы','У вас была списана абонентская плата за месяц согласно тарифу.','2015-06-09 19:49:58',1);
/*!40000 ALTER TABLE `contract_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_group` (
  `gid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_group`
--

LOCK TABLES `contract_parameter_group` WRITE;
/*!40000 ALTER TABLE `contract_parameter_group` DISABLE KEYS */;
INSERT INTO `contract_parameter_group` VALUES (1,2),(1,3),(1,4),(1,6),(1,5);
/*!40000 ALTER TABLE `contract_parameter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_group_name`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_group_name` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_group_name`
--

LOCK TABLES `contract_parameter_group_name` WRITE;
/*!40000 ALTER TABLE `contract_parameter_group_name` DISABLE KEYS */;
INSERT INTO `contract_parameter_group_name` VALUES (1,'Физ. лицо');
/*!40000 ALTER TABLE `contract_parameter_group_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_1` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`,`pid`),
  KEY `val` (`val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_1`
--

LOCK TABLES `contract_parameter_type_1` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_1` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_1` VALUES (3,2,'Иванов Петр Сидорович');
/*!40000 ALTER TABLE `contract_parameter_type_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_1_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_1_log` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_1_log`
--

LOCK TABLES `contract_parameter_type_1_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_1_log` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_1_log` VALUES (1,2,NULL,'2015-05-24 18:25:49',1),(3,1,'Иванов Петр Сидорович','2015-05-25 17:00:16',1),(3,1,NULL,'2015-05-25 17:00:27',1),(3,2,'Иванов Петр Сидорович','2015-05-25 17:00:42',1);
/*!40000 ALTER TABLE `contract_parameter_type_1_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_2`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_2` (
  `cid` int(10) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `hid` int(10) unsigned DEFAULT NULL,
  `flat` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pod` int(10) DEFAULT '0',
  `floor` int(10) DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cid`,`pid`),
  KEY `hid` (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_2`
--

LOCK TABLES `contract_parameter_type_2` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_2` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_2` VALUES (3,3,1,'130','',0,0,'450073, Уфа, Октябрьский район, Гагарина, д. 10/2, кв. 130','','');
/*!40000 ALTER TABLE `contract_parameter_type_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_2_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_2_log` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `val` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_2_log`
--

LOCK TABLES `contract_parameter_type_2_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_2_log` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_2_log` VALUES (3,3,'450073, Уфа, Октябрьский район, Гагарина, д. 10/2, кв. 130','2015-05-25 17:01:03',1);
/*!40000 ALTER TABLE `contract_parameter_type_2_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_3`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `email` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_3`
--

LOCK TABLES `contract_parameter_type_3` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_3_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_3_log` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `val` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_3_log`
--

LOCK TABLES `contract_parameter_type_3_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_3_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_3_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_3_mail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_3_mail` (
  `mailid` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL DEFAULT '0',
  KEY `mailid` (`mailid`),
  KEY `eid` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_3_mail`
--

LOCK TABLES `contract_parameter_type_3_mail` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_3_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_3_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_4` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val1` int(11) NOT NULL DEFAULT '0',
  `val2` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `cid_pid_val1` (`cid`,`pid`,`val1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_4`
--

LOCK TABLES `contract_parameter_type_4` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_4_directory`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_4_directory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_4_directory`
--

LOCK TABLES `contract_parameter_type_4_directory` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_4_directory` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_4_directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_4_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_4_log` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `val` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_4_log`
--

LOCK TABLES `contract_parameter_type_4_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_4_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_4_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_5`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_5` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_5`
--

LOCK TABLES `contract_parameter_type_5` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_5_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_5_log` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` int(2) DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_5_log`
--

LOCK TABLES `contract_parameter_type_5_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_5_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_5_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_6`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_6` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` date NOT NULL,
  PRIMARY KEY (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_6`
--

LOCK TABLES `contract_parameter_type_6` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_6` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_6` VALUES (3,5,'2015-05-25');
/*!40000 ALTER TABLE `contract_parameter_type_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_6_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_6_log` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` date DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_6_log`
--

LOCK TABLES `contract_parameter_type_6_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_6_log` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_6_log` VALUES (3,5,'2015-05-25','2015-05-25 17:01:33',1);
/*!40000 ALTER TABLE `contract_parameter_type_6_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_7`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_7` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` int(11) NOT NULL DEFAULT '0',
  `custom_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_7`
--

LOCK TABLES `contract_parameter_type_7` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_7` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_7_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_7_log` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_7_log`
--

LOCK TABLES `contract_parameter_type_7_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_7_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_7_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_7_values`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_7_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_7_values`
--

LOCK TABLES `contract_parameter_type_7_values` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_7_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_7_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_8`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_8` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_8`
--

LOCK TABLES `contract_parameter_type_8` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_8_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_8_log` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `val` int(11) DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_8_log`
--

LOCK TABLES `contract_parameter_type_8_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_8_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_8_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_9` (
  `pid` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format1` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format4` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format5` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_9`
--

LOCK TABLES `contract_parameter_type_9` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_9_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_9_log` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `val` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format1` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm1` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm3` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format4` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm4` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_format5` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_comm5` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cip_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_9_log`
--

LOCK TABLES `contract_parameter_type_9_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_9_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_9_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_multilist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_multilist` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `val` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_multilist`
--

LOCK TABLES `contract_parameter_type_multilist` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_multilist` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_multilist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_multilist_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_multilist_item` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `val` int(11) NOT NULL,
  `custom_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`,`pid`,`val`,`custom_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_multilist_item`
--

LOCK TABLES `contract_parameter_type_multilist_item` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_multilist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_multilist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_multilist_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_multilist_log` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `val` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_multilist_log`
--

LOCK TABLES `contract_parameter_type_multilist_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_multilist_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_multilist_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_multilist_values`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_multilist_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_multilist_values`
--

LOCK TABLES `contract_parameter_type_multilist_values` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_multilist_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_parameter_type_multilist_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_phone`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_phone` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pid`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_phone`
--

LOCK TABLES `contract_parameter_type_phone` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_phone` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_phone` VALUES (4,3,'+7 917 111-22-33');
/*!40000 ALTER TABLE `contract_parameter_type_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_phone_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_phone_item` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `n` tinyint(4) NOT NULL,
  `phone` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pid`,`cid`,`n`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_phone_item`
--

LOCK TABLES `contract_parameter_type_phone_item` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_phone_item` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_phone_item` VALUES (4,3,1,'79171112233',NULL,'');
/*!40000 ALTER TABLE `contract_parameter_type_phone_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameter_type_phone_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameter_type_phone_log` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `val` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `cid_pid` (`cid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameter_type_phone_log`
--

LOCK TABLES `contract_parameter_type_phone_log` WRITE;
/*!40000 ALTER TABLE `contract_parameter_type_phone_log` DISABLE KEYS */;
INSERT INTO `contract_parameter_type_phone_log` VALUES (4,1,'+7 917 123-45-67','phone.1=79171234567  \n','2015-05-22 17:34:36',1),(4,1,NULL,NULL,'2015-05-24 18:26:04',1),(4,3,'+7 917 111-22-33','phone.1=79171112233  \n','2015-05-25 17:01:27',1);
/*!40000 ALTER TABLE `contract_parameter_type_phone_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_parameters_pref`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_parameters_pref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pt` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `script` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `history` tinyint(1) NOT NULL,
  `flags` tinyint(3) NOT NULL DEFAULT '0',
  `lm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_parameters_pref`
--

LOCK TABLES `contract_parameters_pref` WRITE;
/*!40000 ALTER TABLE `contract_parameters_pref` DISABLE KEYS */;
INSERT INTO `contract_parameters_pref` VALUES (1,1,'Наименование организации',1,'',0,1,'0000-00-00 00:00:00'),(2,1,'ФИО',2,'',0,1,'0000-00-00 00:00:00'),(3,2,'Адрес подключения',3,'',0,1,'0000-00-00 00:00:00'),(4,9,'Телефон',4,'',0,1,'0000-00-00 00:00:00'),(5,6,'Дата подключения',7,'',0,1,'0000-00-00 00:00:00'),(6,10,'Дополнительно',6,'',0,0,'0000-00-00 00:00:00'),(7,1,'Телефон (текст)',5,'',0,7,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `contract_parameters_pref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_password_once`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_password_once` (
  `lu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dt` datetime NOT NULL,
  `contract_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_password_once`
--

LOCK TABLES `contract_password_once` WRITE;
/*!40000 ALTER TABLE `contract_password_once` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_password_once` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_pattern`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_pattern` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `closesumma` float NOT NULL DEFAULT '0',
  `tpid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `groups` bigint(20) NOT NULL DEFAULT '0',
  `mode` int(11) NOT NULL DEFAULT '0',
  `pgid` int(11) NOT NULL DEFAULT '0',
  `pfid` int(11) NOT NULL DEFAULT '0',
  `fc` tinyint(2) NOT NULL DEFAULT '0',
  `dtl` int(10) unsigned NOT NULL DEFAULT '0',
  `tgid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `scrid` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name_pattern` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `data` blob,
  `patid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_pattern`
--

LOCK TABLES `contract_pattern` WRITE;
/*!40000 ALTER TABLE `contract_pattern` DISABLE KEYS */;
INSERT INTO `contract_pattern` VALUES (1,'Интернет',-100,'2',1,1,1,0,0,0,'1','1','1${N6}0','<?xml version=\"1.0\" encoding=\"UTF-8\"?><data webMenuId=\"-1\">\n<modules>\n<inet mid=\"1\">\n<addInetServ enable=\"0\" inetServTypeId=\"1\" sessionCountLimit=\"0\" status=\"0\"/>\n</inet>\n</modules>\n<plugins/><general dtl=\"0\" status=\"0\"/></data>',1,0);
/*!40000 ALTER TABLE `contract_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_pattern_modules`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_pattern_modules` (
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_pattern_modules`
--

LOCK TABLES `contract_pattern_modules` WRITE;
/*!40000 ALTER TABLE `contract_pattern_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_pattern_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_pattern_named_numbers`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_pattern_named_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ln` int(10) unsigned NOT NULL,
  `count_number` int(11) DEFAULT '-1',
  `comment` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_pattern_named_numbers`
--

LOCK TABLES `contract_pattern_named_numbers` WRITE;
/*!40000 ALTER TABLE `contract_pattern_named_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_pattern_named_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_pattern_services`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_pattern_services` (
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_pattern_services`
--

LOCK TABLES `contract_pattern_services` WRITE;
/*!40000 ALTER TABLE `contract_pattern_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_pattern_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_payment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL DEFAULT '0000-00-00',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `pt` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `summa` decimal(10,2) NOT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `pt_dt` (`pt`,`dt`),
  KEY `dt_cid` (`dt`,`cid`),
  KEY `uid` (`uid`),
  KEY `cid_dt` (`cid`,`dt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_payment`
--

LOCK TABLES `contract_payment` WRITE;
/*!40000 ALTER TABLE `contract_payment` DISABLE KEYS */;
INSERT INTO `contract_payment` VALUES (1,'2015-06-09',3,2,1,100.00,'','2015-06-09 13:35:47');
/*!40000 ALTER TABLE `contract_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_payment_deleted`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_payment_deleted` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dt` date NOT NULL DEFAULT '0000-00-00',
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `pt` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `summa` decimal(10,2) NOT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `pt_dt` (`pt`,`dt`),
  KEY `dt_cid` (`dt`,`cid`),
  KEY `uid` (`uid`),
  KEY `cid_dt` (`cid`,`dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_payment_deleted`
--

LOCK TABLES `contract_payment_deleted` WRITE;
/*!40000 ALTER TABLE `contract_payment_deleted` DISABLE KEYS */;
INSERT INTO `contract_payment_deleted` VALUES (1,'2015-05-22',1,3,1,100.00,'','2015-05-22 14:54:15');
/*!40000 ALTER TABLE `contract_payment_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_payment_types`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_payment_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `up` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `flag` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `up` (`up`),
  KEY `type` (`type`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_payment_types`
--

LOCK TABLES `contract_payment_types` WRITE;
/*!40000 ALTER TABLE `contract_payment_types` DISABLE KEYS */;
INSERT INTO `contract_payment_types` VALUES (1,'Касса',0,1,0),(2,'Касса',1,0,0),(3,'Заключение договора',1,0,0),(4,'Платежные системы',0,1,0),(5,'Paymaster',4,0,1);
/*!40000 ALTER TABLE `contract_payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_reserve`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_reserve` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `dateCreate` datetime NOT NULL,
  `dateTo` datetime DEFAULT NULL,
  `dateClose` datetime DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_reserve`
--

LOCK TABLES `contract_reserve` WRITE;
/*!40000 ALTER TABLE `contract_reserve` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_reserve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_reserve_total`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_reserve_total` (
  `cid` int(11) NOT NULL,
  `sum` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_reserve_total`
--

LOCK TABLES `contract_reserve_total` WRITE;
/*!40000 ALTER TABLE `contract_reserve_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_reserve_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_reserve_types`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_reserve_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `used` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_reserve_types`
--

LOCK TABLES `contract_reserve_types` WRITE;
/*!40000 ALTER TABLE `contract_reserve_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_reserve_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_script`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_script` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `script_id` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_script`
--

LOCK TABLES `contract_script` WRITE;
/*!40000 ALTER TABLE `contract_script` DISABLE KEYS */;
INSERT INTO `contract_script` VALUES (1,1,'2015-05-22',NULL,1,''),(2,3,'2015-05-25',NULL,1,'');
/*!40000 ALTER TABLE `contract_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_service`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lm` date NOT NULL DEFAULT '0000-00-00',
  `emid` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `date1` (`date1`),
  KEY `date2` (`date2`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_service`
--

LOCK TABLES `contract_service` WRITE;
/*!40000 ALTER TABLE `contract_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_status`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date1` date NOT NULL,
  `date2` date DEFAULT NULL,
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_status`
--

LOCK TABLES `contract_status` WRITE;
/*!40000 ALTER TABLE `contract_status` DISABLE KEYS */;
INSERT INTO `contract_status` VALUES (2,2,0,'2015-05-24',NULL,'Статус установлен сервером'),(3,1,3,'2015-05-01',NULL,''),(4,3,0,'2015-05-25',NULL,'Статус установлен сервером');
/*!40000 ALTER TABLE `contract_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_status_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_status_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `date1` date NOT NULL,
  `date2` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_status_log`
--

LOCK TABLES `contract_status_log` WRITE;
/*!40000 ALTER TABLE `contract_status_log` DISABLE KEYS */;
INSERT INTO `contract_status_log` VALUES (1,0,0,'2015-05-22 14:58:16','Статус установлен сервером',1,'2015-05-01',NULL),(2,0,0,'2015-05-24 17:45:31','Статус установлен сервером',2,'2015-05-24',NULL),(3,3,1,'2015-05-24 19:57:12','',1,'2015-05-01',NULL),(4,0,0,'2015-05-25 16:52:43','Статус установлен сервером',3,'2015-05-25',NULL);
/*!40000 ALTER TABLE `contract_status_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_tariff`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_tariff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `tpid` int(10) unsigned NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `emid` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL DEFAULT '0',
  `replaced_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_tariff`
--

LOCK TABLES `contract_tariff` WRITE;
/*!40000 ALTER TABLE `contract_tariff` DISABLE KEYS */;
INSERT INTO `contract_tariff` VALUES (1,1,3,'2015-05-22',NULL,'','0000-00-00 00:00:00',0,0,0,0),(2,3,2,'2015-05-25',NULL,'','0000-00-00 00:00:00',0,0,0,0);
/*!40000 ALTER TABLE `contract_tariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_tariff_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_tariff_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `comment` char(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_tariff_group`
--

LOCK TABLES `contract_tariff_group` WRITE;
/*!40000 ALTER TABLE `contract_tariff_group` DISABLE KEYS */;
INSERT INTO `contract_tariff_group` VALUES (1,3,'2015-06-09',NULL,1,'');
/*!40000 ALTER TABLE `contract_tariff_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_tariff_option`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_tariff_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `time_from` datetime NOT NULL,
  `time_to` datetime DEFAULT NULL,
  `charge_id` int(11) NOT NULL,
  `summa` decimal(10,2) NOT NULL,
  `activated_mode` int(11) NOT NULL,
  `activated_time` datetime NOT NULL,
  `deactivated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_tariff_option`
--

LOCK TABLES `contract_tariff_option` WRITE;
/*!40000 ALTER TABLE `contract_tariff_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_tariff_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_tree_link`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_tree_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL DEFAULT '0',
  `tree_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `pos` tinyint(4) NOT NULL DEFAULT '0',
  `emid` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_tree_link`
--

LOCK TABLES `contract_tree_link` WRITE;
/*!40000 ALTER TABLE `contract_tree_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_tree_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_web_menu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_web_menu` (
  `contract_id` int(11) NOT NULL DEFAULT '0',
  `web_menu_id` int(11) NOT NULL DEFAULT '0',
  KEY `contract_id` (`contract_id`),
  KEY `web_menu_id` (`web_menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_web_menu`
--

LOCK TABLES `contract_web_menu` WRITE;
/*!40000 ALTER TABLE `contract_web_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_web_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entitySpecId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

LOCK TABLES `entity` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` VALUES (1,0,'Папка: г. Уфа'),(2,0,'Access+Accounting: IPoE'),(3,0,'Cisco ASR: asr-bras [10.0.5.26]'),(4,0,'Ericsson SmartEdge: se-bras [10.0.5.25]'),(5,0,'Папка: Октябрьский район'),(6,0,'D-Link DES-3200-28F: 0a0b0c0d0e0f [10.0.10.1] (450073, Уфа, Октябрьский район, Гагарина, д. 10/2)'),(7,0,'Папка: Служебные'),(8,0,'Папка: Коммутаторы'),(9,0,'Eltex PON OLT LTE-2x 128: 1a1b1c1d1e1f [10.0.11.1] ()'),(10,0,'Access+Accounting: ISGServiceAccess'),(11,0,'Папка: Коммутаторы'),(12,0,'Папка: Октябрьский район'),(13,0,'Папка: Служебные'),(14,0,'Cisco ASR ISG Service: asr-bras [10.0.5.26]'),(15,0,'Access+Accounting'),(16,0,'SNMP Agent: [127.0.0.1]'),(17,0,'Flow Agent: [10.0.5.15]'),(18,0,'MPD: mpd-pppoe [10.0.5.16]'),(19,0,'Cisco ASR: asr-bras [10.0.5.26]'),(20,0,'Cisco ASR ISG Service: asr-bras2 [10.0.6.26]'),(21,0,'MPD: mpd-ppptp [10.0.5.17]'),(22,0,'Папка: Коммутаторы'),(23,0,'Папка: Октябрьский район'),(24,0,'Папка: Служебные'),(25,0,'FreeBSD');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_attr_address`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_attr_address` (
  `entityId` int(11) NOT NULL,
  `entitySpecAttrId` int(11) NOT NULL,
  `houseId` int(10) unsigned DEFAULT NULL,
  `flat` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pod` int(10) DEFAULT '0',
  `floor` int(10) DEFAULT '0',
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format_key` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`entityId`,`entitySpecAttrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_attr_address`
--

LOCK TABLES `entity_attr_address` WRITE;
/*!40000 ALTER TABLE `entity_attr_address` DISABLE KEYS */;
INSERT INTO `entity_attr_address` VALUES (6,2,1,'','',0,0,'450073, Уфа, Октябрьский район, Гагарина, д. 10/2','','0');
/*!40000 ALTER TABLE `entity_attr_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_attr_date`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_attr_date` (
  `entityId` int(11) NOT NULL,
  `entitySpecAttrId` int(11) NOT NULL,
  `value` date NOT NULL,
  PRIMARY KEY (`entityId`,`entitySpecAttrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_attr_date`
--

LOCK TABLES `entity_attr_date` WRITE;
/*!40000 ALTER TABLE `entity_attr_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_attr_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_attr_house`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_attr_house` (
  `entityId` int(11) NOT NULL,
  `entitySpecAttrId` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`entityId`,`entitySpecAttrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_attr_house`
--

LOCK TABLES `entity_attr_house` WRITE;
/*!40000 ALTER TABLE `entity_attr_house` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_attr_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_attr_int`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_attr_int` (
  `entityId` int(11) NOT NULL,
  `entitySpecAttrId` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`entityId`,`entitySpecAttrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_attr_int`
--

LOCK TABLES `entity_attr_int` WRITE;
/*!40000 ALTER TABLE `entity_attr_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_attr_int` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_attr_list`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_attr_list` (
  `entityId` int(11) NOT NULL,
  `entitySpecAttrId` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`entityId`,`entitySpecAttrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_attr_list`
--

LOCK TABLES `entity_attr_list` WRITE;
/*!40000 ALTER TABLE `entity_attr_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_attr_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_attr_text`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_attr_text` (
  `entityId` int(11) NOT NULL,
  `entitySpecAttrId` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`entityId`,`entitySpecAttrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_attr_text`
--

LOCK TABLES `entity_attr_text` WRITE;
/*!40000 ALTER TABLE `entity_attr_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_attr_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_spec`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entitySpecTypeId` int(11) NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '0',
  `entityTitleMacros` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `entity_type_id` (`entitySpecTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_spec`
--

LOCK TABLES `entity_spec` WRITE;
/*!40000 ALTER TABLE `entity_spec` DISABLE KEYS */;
INSERT INTO `entity_spec` VALUES (1,'Коммутатор',0,'',0,'$title ($attr(2))');
/*!40000 ALTER TABLE `entity_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_spec_attr`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_spec_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_spec_attr`
--

LOCK TABLES `entity_spec_attr` WRITE;
/*!40000 ALTER TABLE `entity_spec_attr` DISABLE KEYS */;
INSERT INTO `entity_spec_attr` VALUES (1,'Инвентарный номер',1,''),(2,'Адрес',8,'');
/*!40000 ALTER TABLE `entity_spec_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_spec_attr_link`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_spec_attr_link` (
  `entitySpecId` int(11) NOT NULL,
  `entitySpecAttrId` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  KEY `entity_spec_id` (`entitySpecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_spec_attr_link`
--

LOCK TABLES `entity_spec_attr_link` WRITE;
/*!40000 ALTER TABLE `entity_spec_attr_link` DISABLE KEYS */;
INSERT INTO `entity_spec_attr_link` VALUES (1,1,0),(1,2,1);
/*!40000 ALTER TABLE `entity_spec_attr_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_spec_attr_list`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_spec_attr_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entitySpecAttrId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_spec_attr_id` (`entitySpecAttrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_spec_attr_list`
--

LOCK TABLES `entity_spec_attr_list` WRITE;
/*!40000 ALTER TABLE `entity_spec_attr_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_spec_attr_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_spec_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_spec_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_spec_type`
--

LOCK TABLES `entity_spec_type` WRITE;
/*!40000 ALTER TABLE `entity_spec_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_spec_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_script_link`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_script_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `script_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_script_link`
--

LOCK TABLES `event_script_link` WRITE;
/*!40000 ALTER TABLE `event_script_link` DISABLE KEYS */;
INSERT INTO `event_script_link` VALUES (1,'Тест','ru.provider.bgbilling.kernel.dyn.script.AdditionalAction','0_ru.bitel.bgbilling.kernel.event.events.GetAdditionalActionListEvent',1),(2,'Тест','ru.provider.bgbilling.kernel.dyn.script.AdditionalAction','0_ru.bitel.bgbilling.kernel.event.events.GetAdditionalWebActionListEvent',1),(3,'Тест','ru.provider.bgbilling.kernel.dyn.script.AdditionalAction','0_ru.bitel.bgbilling.kernel.event.events.AdditionalActionEvent',1);
/*!40000 ALTER TABLE `event_script_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firm`
--

LOCK TABLES `firm` WRITE;
/*!40000 ALTER TABLE `firm` DISABLE KEYS */;
/*!40000 ALTER TABLE `firm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_script`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_script` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `script` mediumtext COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `change_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_script`
--

LOCK TABLES `global_script` WRITE;
/*!40000 ALTER TABLE `global_script` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_script_link`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_script_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_script_link`
--

LOCK TABLES `global_script_link` WRITE;
/*!40000 ALTER TABLE `global_script_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_script_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_category_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_category_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_category_9`
--

LOCK TABLES `helpdesk_category_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_category_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_category_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_directory_link_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_directory_link_9` (
  `group` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_directory_link_9`
--

LOCK TABLES `helpdesk_directory_link_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_directory_link_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_directory_link_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_group_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_group_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_group_9`
--

LOCK TABLES `helpdesk_group_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_group_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_group_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_message_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_message_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `date_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_from` int(11) NOT NULL,
  `date_to` datetime DEFAULT NULL,
  `user_to` int(11) NOT NULL,
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `from_to` (`user_from`,`user_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_message_9`
--

LOCK TABLES `helpdesk_message_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_message_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_message_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_package_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_package_9` (
  `lu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'код пакета',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'название пакета',
  `summa` decimal(12,2) NOT NULL DEFAULT '1.00' COMMENT 'стоимость пакета',
  `count` int(11) NOT NULL DEFAULT '1' COMMENT 'количество обращений в пакете',
  `period` int(11) NOT NULL DEFAULT '1' COMMENT 'на сколько дней пакет активируется',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'статус пакета (вкл./выкл.)',
  `charge_id` int(11) NOT NULL DEFAULT '0' COMMENT 'код типа расхода',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_package_9`
--

LOCK TABLES `helpdesk_package_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_package_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_package_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_package_contract_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_package_contract_9` (
  `lu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'код экземпляра пакета',
  `package_id` int(11) NOT NULL COMMENT 'код пакета',
  `cid` int(11) NOT NULL COMMENT 'код договора',
  `date_from` date NOT NULL COMMENT 'дата активации пакета',
  `date_to` date NOT NULL COMMENT 'дата окончания действия пакета',
  `summa` decimal(15,2) NOT NULL COMMENT 'стоимость пакета',
  `count` int(11) NOT NULL COMMENT 'число обращений влюченных в пакет',
  `count_use` int(11) NOT NULL COMMENT 'число использованных обращений',
  `user_id` int(11) NOT NULL COMMENT 'код администратора биллинга, активировавшего пакет или -1 если активировал сам пользователь',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_package_contract_9`
--

LOCK TABLES `helpdesk_package_contract_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_package_contract_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_package_contract_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_param_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_param_9` (
  `cid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_param_9`
--

LOCK TABLES `helpdesk_param_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_param_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_param_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_subcategory_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_subcategory_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_subcategory_9`
--

LOCK TABLES `helpdesk_subcategory_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_subcategory_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_subcategory_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_topic_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_topic_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cid` int(11) NOT NULL,
  `charge_id` int(11) NOT NULL,
  `cost` decimal(7,2) NOT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_close` datetime DEFAULT NULL,
  `comm` tinyint(4) NOT NULL DEFAULT '0',
  `comm_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `contract_package_id` int(11) NOT NULL DEFAULT '-1',
  `autoclose` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_topic_9`
--

LOCK TABLES `helpdesk_topic_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_topic_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_topic_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_topic_manager_change_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_topic_manager_change_9` (
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_topic_manager_change_9`
--

LOCK TABLES `helpdesk_topic_manager_change_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_topic_manager_change_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_topic_manager_change_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_topic_reserve`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_topic_reserve` (
  `topicId` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `reserveId` int(11) DEFAULT NULL,
  PRIMARY KEY (`topicId`),
  KEY `reserveId` (`reserveId`),
  CONSTRAINT `helpdesk_topic_reserve_ibfk_1` FOREIGN KEY (`reserveId`) REFERENCES `contract_reserve` (`id`) ON UPDATE NO ACTION,
  CONSTRAINT `helpdesk_topic_reserve_ibfk_2` FOREIGN KEY (`topicId`) REFERENCES `helpdesk_topic_9` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_topic_reserve`
--

LOCK TABLES `helpdesk_topic_reserve` WRITE;
/*!40000 ALTER TABLE `helpdesk_topic_reserve` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_topic_reserve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_topic_statuses_9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_topic_statuses_9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_topic_statuses_9`
--

LOCK TABLES `helpdesk_topic_statuses_9` WRITE;
/*!40000 ALTER TABLE `helpdesk_topic_statuses_9` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_topic_statuses_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_accounting_period_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_accounting_period_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractId` int(11) NOT NULL,
  `timeFrom` datetime NOT NULL,
  `timeTo` datetime NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contract` (`contractId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_accounting_period_1`
--

LOCK TABLES `inet_accounting_period_1` WRITE;
/*!40000 ALTER TABLE `inet_accounting_period_1` DISABLE KEYS */;
INSERT INTO `inet_accounting_period_1` VALUES (1,3,'2015-05-25 00:00:00','2015-05-31 23:59:59',NULL,NULL,0),(2,3,'2015-06-09 00:00:00','2015-06-30 23:59:59',NULL,NULL,0),(3,3,'2015-08-19 00:00:00','2015-08-31 23:59:59',NULL,NULL,0),(4,3,'2016-06-16 00:00:00','2016-06-30 23:59:59',NULL,NULL,0);
/*!40000 ALTER TABLE `inet_accounting_period_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_accounting_period_1_bak_sec`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_accounting_period_1_bak_sec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractId` int(11) NOT NULL,
  `dateFrom` date NOT NULL,
  `dateTo` date NOT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contract` (`contractId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_accounting_period_1_bak_sec`
--

LOCK TABLES `inet_accounting_period_1_bak_sec` WRITE;
/*!40000 ALTER TABLE `inet_accounting_period_1_bak_sec` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_accounting_period_1_bak_sec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_connection_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_connection_1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parentId` bigint(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `devicePort` int(11) NOT NULL,
  `agentDeviceId` int(11) NOT NULL DEFAULT '0',
  `circuitId` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acctSessionId` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accessCode` smallint(6) NOT NULL,
  `servId` int(11) NOT NULL,
  `calledStationId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callingStationId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipResourceId` int(11) NOT NULL,
  `ipAddress` varbinary(24) DEFAULT NULL,
  `connectionStart` datetime NOT NULL,
  `deviceState` smallint(6) NOT NULL DEFAULT '1',
  `deviceOptions` char(250) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  KEY `id` (`id`),
  KEY `nas` (`deviceId`,`devicePort`),
  KEY `serv` (`servId`),
  KEY `parent` (`parentId`),
  KEY `connectionStart` (`connectionStart`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH (deviceId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_connection_1`
--

LOCK TABLES `inet_connection_1` WRITE;
/*!40000 ALTER TABLE `inet_connection_1` DISABLE KEYS */;
INSERT INTO `inet_connection_1` VALUES (2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16',-1,'',1);
/*!40000 ALTER TABLE `inet_connection_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_connection_1_seq`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_connection_1_seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_connection_1_seq`
--

LOCK TABLES `inet_connection_1_seq` WRITE;
/*!40000 ALTER TABLE `inet_connection_1_seq` DISABLE KEYS */;
INSERT INTO `inet_connection_1_seq` VALUES (1),(2);
/*!40000 ALTER TABLE `inet_connection_1_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_connection_route_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_connection_route_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionId` bigint(20) NOT NULL,
  `subnet` varbinary(24) NOT NULL,
  `mask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `connectionId` (`connectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_connection_route_1`
--

LOCK TABLES `inet_connection_route_1` WRITE;
/*!40000 ALTER TABLE `inet_connection_route_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_connection_route_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_device_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_device_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `deviceTypeId` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `uptime` text COLLATE utf8_unicode_ci NOT NULL,
  `uptimeTime` datetime DEFAULT NULL,
  `host` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `orderManagerDisabled` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_device_1`
--

LOCK TABLES `inet_device_1` WRITE;
/*!40000 ALTER TABLE `inet_device_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_device_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_device_group_link_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_device_group_link_1` (
  `deviceId` int(11) NOT NULL,
  `deviceGroupId` int(11) NOT NULL,
  KEY `device_id` (`deviceId`,`deviceGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_device_group_link_1`
--

LOCK TABLES `inet_device_group_link_1` WRITE;
/*!40000 ALTER TABLE `inet_device_group_link_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_device_group_link_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_device_tree_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_device_tree_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invDeviceId` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `parentId` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `deviceTypeId` int(11) NOT NULL DEFAULT '-1',
  `identifier` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_device_tree_1`
--

LOCK TABLES `inet_device_tree_1` WRITE;
/*!40000 ALTER TABLE `inet_device_tree_1` DISABLE KEYS */;
INSERT INTO `inet_device_tree_1` VALUES (1,'1',0,'Папка: г. Уфа',-1,NULL,NULL,''),(2,'2',1,'Access+Accounting: IPoE',-1,NULL,NULL,''),(3,'3',2,'Cisco ASR: asr-bras [10.0.5.26]',-1,NULL,NULL,''),(4,'4',2,'Ericsson SmartEdge: se-bras [10.0.5.25]',-1,NULL,NULL,''),(5,'5',8,'Папка: Октябрьский район',-1,NULL,NULL,''),(6,'6',5,'D-Link DES-3200-28F: 0a0b0c0d0e0f [10.0.10.1]',-1,NULL,NULL,''),(7,'7',8,'Папка: Служебные',-1,NULL,NULL,''),(8,'8',4,'Папка: Коммутаторы',-1,NULL,NULL,''),(9,'9',7,'Eltex PON OLT LTE-2x 128: 1a1b1c1d1e1f [10.0.11.1]',-1,NULL,NULL,''),(10,'10',1,'Access+Accounting: ISGServiceAccess',-1,NULL,NULL,''),(11,'11',3,'Папка: Коммутаторы',-1,NULL,NULL,''),(12,'12',11,'Папка: Октябрьский район',-1,NULL,NULL,''),(13,'13',11,'Папка: Служебные',-1,NULL,NULL,''),(14,'6',12,'D-Link DES-3200-28F: 0a0b0c0d0e0f [10.0.10.1]',-1,NULL,NULL,''),(15,'9',13,'Eltex PON OLT LTE-2x 128: 1a1b1c1d1e1f [10.0.11.1]',-1,NULL,NULL,''),(16,'14',10,'Cisco ASR ISG Service: asr-bras [10.0.5.26]',-1,NULL,NULL,''),(17,'15',1,'Access+Accounting',-1,NULL,NULL,''),(18,'16',17,'SNMP Agent: [127.0.0.1]',-1,NULL,NULL,''),(19,'17',17,'Flow Agent: [10.0.5.15]',-1,NULL,NULL,''),(20,'18',19,'MPD: mpd-pppoe [10.0.5.16]',-1,NULL,NULL,''),(21,'19',17,'Cisco ASR: asr-bras [10.0.5.26]',-1,NULL,NULL,''),(22,'20',10,'Cisco ASR ISG Service: asr-bras2 [10.0.6.26]',-1,NULL,NULL,''),(23,'21',19,'MPD: mpd-ppptp [10.0.5.17]',-1,NULL,NULL,''),(24,'22',29,'Папка: Коммутаторы',-1,NULL,NULL,''),(25,'23',24,'Папка: Октябрьский район',-1,NULL,NULL,''),(26,'24',24,'Папка: Служебные',-1,NULL,NULL,''),(27,'6',25,'D-Link DES-3200-28F: 0a0b0c0d0e0f [10.0.10.1]',-1,NULL,NULL,''),(28,'9',26,'Eltex PON OLT LTE-2x 128: 1a1b1c1d1e1f [10.0.11.1]',-1,NULL,NULL,''),(29,'25',19,'FreeBSD',-1,NULL,NULL,'');
/*!40000 ALTER TABLE `inet_device_tree_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_device_type_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_device_type_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `configId` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `protocolHandlerClass` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saHandlerClass` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceManagerClass` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniqueInterfaces` tinyint(4) NOT NULL,
  `scriptId` int(11) NOT NULL,
  `saScript` text COLLATE utf8_unicode_ci,
  `eventScript` text COLLATE utf8_unicode_ci,
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `source` tinyint(1) DEFAULT '0',
  `deviceEntitySpecId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_device_type_1`
--

LOCK TABLES `inet_device_type_1` WRITE;
/*!40000 ALTER TABLE `inet_device_type_1` DISABLE KEYS */;
INSERT INTO `inet_device_type_1` VALUES (1,'Access+Accounting',0,'',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(2,'Cisco ASR',0,'#-------------------------------------------\n# Параметры устройства\n#-------------------------------------------\n#хост для отправки PoD и CoA запросов (по умолчанию - хост, заданный в параметрах устройства Хост/порт)\n#radius.host=\n#порт для отправки PoD и CoA запросов (по умолчанию - порт, заданный в параметрах устройства Хост/порт)\nradius.port=1700\n#идентификатор - Nas-Identifier (по умолчанию - значение из поля Идентификатор параметров устройства)\n#radius.identifier=<идентификатор устройства>\n#используемый secret для общения по radius-протоколу (по умолчанию - значение из поля Community/secret параметров устройства)\n#radius.secret=<community/sercret устройства>\n\nradius.vendor=9\n# Из какого атрибута извлекается MAC-адрес\n#radius.macAddress.vendor=9\n# cisco-avpair=\nradius.macAddress.type=1\n# префикс\nradius.macAddress.prefix=client-mac-address=\n\n\n#-------------------------------------------\n# Описание атрибутов\n#-------------------------------------------\n# Атрибуты, выдаваемые при авторизации по реалму default (default - реалм по умолчанию) в Аccess-Accept при обычном доступе.\nradius.realm.default.attributes=Acct-Interim-Interval=900;IP-Interface-Name=CLIENTS;Context-Name=inet;\n# Дополнительные атрибуты (макрос), выдаваемые при авторизации по реалму default (default - реалм по умолчанию) в Аccess-Accept при обычном доступе.\n# IP-Interface-Name соответствует интерфейсу в конфиге RedBack, к которому \"биндится\" абонентская сессия (обязательный параметр).\n#radius.realm.default.attributes.macros=$ipParam(radiusContextName);$ipParam(radiusDefaultAttributes)\n\n\n# Атрибуты, выдаваемые при ответе Access-Accept в состоянии disable\nradius.disable.attributes=Service-Name=RSE-REJECT;Service-Options=1;Acct-Interim-Interval=900;IP-Interface-Name=CLIENTS;Context-Name=inet;\n# Дополнительные атрибуты (макрос), выдаваемые при ответе Access-Accept в состоянии disable\n# Динамическая выдача имени интерфейса привязки абонента на SE100 + динамическая выдача NAT политики из категории IP-Ресурсы.\n#radius.disable.attributes.macros=$ipParam(radiusContextName);$ipParam(radiusDisableAttributes)\n\n# Можно указать отдельный набор атрибутов специально для кода ошибки\n# radius.disable.1,2,3.attributes=\n\n# Переопределить редирект URL c дефолтного no-money.provider.ru в сервисном RSE-REJECT при ошибке 1 - аккаунт абонента не найден\nradius.disable.1.attributes={@radius.disable.attributes};Service-Parameter:1=Url=http://welcome.provider.ru\n\n\n# Темплейты скоростей. Параметры скоростей, указанные здесь через $ описаны в ОПЦИЯХ.\n# Rate в Кбит/с, burst и excess-burst в битах. \n# Burst = Rate*Tc/8, Time commit (Tc) = 1 сек., Burst = 0,125 * Rate * 1000\n# Exceed-burst=Rate*Te/8, Time exceeded (Te) = 1,5 сек., Excess-burst =  0,1875 * Rate * 1000\nradius.inetOption.1.template=Service-Name:1=RSE-SVC-EXT;Service-Options:1=1;Service-Parameter:1=Rate=$rate Burst=$burst Excess-burst=$ex-burst\nradius.inetOption.1.template=cisco-SSG-Account-Info=AISG_$optionTitle\n# Темплейты скоростей для ServiceActivator (см. sa.radius.option.attributesPrefix=sa.radius.inetOption.)\nsa.radius.inetOption.1.template=cisco-SSG-Account-Info=AISG_$optionTitle\n\n# Опция-reject \n# когда нужно через CoA переключить в ограниченный доступ - отправляются атрибуты из sa.radius.inetOption.15.attributes= \n# т.к. эта опция прописана в sa.radius.service.disable.optionIds\nsa.radius.service.disable.optionIds=15\nsa.radius.inetOption.15.attributes=cisco-SSG-Account-Info=AINET_FAKE\n\n# Шаблон (имя ISG/SE-сервиса) по которому Accounting узнает, о том что сессия в состоянии ОТКЛЮЧЕНА (ограниченный доступ).\n# При получении старт/стоп-пакета в сервисной сессии ISG/SE, если имя сервиса ISG/SE совпадает, то состояние сессии disable/enable.\nradius.serviceName.disable=INET_FAKE\n\n\n#-------------------------------------------\n# Параметры для соединения\n#-------------------------------------------\n# Записывать информацию в БД о выданных адресе, опциях и состоянии при Access-Accept\n# Hеобходимо, если используется Reject-To-Accept и по Start-пакету нельзя определить в каком состоянии соединение\nconnection.start.fromAccept=1\n# Бывают ситуации, когда Start-пакет не дошел до Accounting-сервера. В этом случае, при\n# 1 (значение по умолчанию) - сессия создастся от текущего момента,\n# 2 - Accounting проверит, что время сессии из Update/Stop пакета не больше, чем значение connection.close.timeout и создаст сессию от ее начала, иначе,\n# если время сессии больше чем connection.close.timeout, сессия создастся от текущего момента,\n# 0 - сессия без Start-пакета создана не будет.\n#connection.start.fromUpdate=1\n# При создании сессии по Update-пакету нужно ли игнорировать отсутствие IP-адреса сессии (Framed-Ip-Address). По умолчанию сессия\n# по Update-пакету без адреса не создается (0).\n#connection.start.fromUpdate.ignoreFramedIpLack=0\n\n# Таймаут перевода соединения в статус suspended при остутствии радиус пакетов\nconnection.suspend.timeout=1860\n# Таймаут закрытия соединения при остутствии радиус пакетов (не складывается с connection.suspend.timeout)\nconnection.close.timeout=1860\n# При закрытии соединения по таймауту, 0 (по умолчанию) - просто закрыть,\n# 1 - попытаться сбросить также на NAS\'е (вызвать connectionClose у обработчика активации сервисов)\n#connection.close.timeout.forceClose=1\n\n\n\n#---------------------------------------------------------\n# Параметры активации сервисов\n#---------------------------------------------------------\n#длина паузы, если возникла ошибка\nsa.error.pause=20\n#количество заданий за раз\n#sa.batch.size=20\n#время (сек) ожидания завершения всех заданий (при асинхронной работе)\n#sa.batch.wait=5\n#пауза (сек) после обработки заданий\n#sa.batch.pause=0\n#время (сек) ожидания новой задачи перед вызовом disconnect.\n#sa.batch.waitNext=5\n\n\n\n#-----------------------------------------------------------------------------\n# Параметры обработчика активации сервисов\n#-----------------------------------------------------------------------------\n# Логирование CoA/PoD-запросов (контекстное меню сессии - RADIUS-лог)\nsa.radius.log=1\n# 1 - новый режим работы c опциями-сервисами для SmartEdgeServiceActivator\nsa.optionMode=1\n#откуда при отправке CoA брать атрибуты опций (по умолчанию - те же атрибуты, что выдаются при удачной авторизации)\n#sa.radius.option.attributesPrefix=option.\n#sa.radius.option.attributesPrefix=radius.inetOption.\nsa.radius.option.attributesPrefix=sa.radius.inetOption.\nsa.radius.connection.attributes=Acct-Session-Id\n#атрибуты CoA запроса для прекращения доступа (используется при sa.radius.connection.withoutBreak=1)\n# sa.radius.disable.attributes={@redirect.attributes}\n#фиксированные атрибуты, добавляемые в запрос перед отправкой CoA\n#sa.radius.coa.attributes=\n#добавлять ли при отправке CoA атрибуты реалма (для default - из radius.realm.default.attributes)\n#sa.radius.realm.addAttributes=0\n#атрибуты, посылаемые при закрытии сервисов Inet в состоянии СЕРВИС ПОДКЛЮЧЕН. Необходим для реактивации сервисов.\n# sa.radius.service.closeAttributes=Deactivate-Service-Name:1=RSE-SVC-EXT\n#sa.radius.service.closeAttributes=\n#фиксированные атрибуты, добавляемые в запрос перед отправкой PoD\n#sa.radius.pod.attributes=\n# Нужно ли посылать CoA при переводе из disable в enable\nsa.radius.connection.coa.onEnable=1\n# Не выдаем DHCP NaK, не инициируем разрыв из connectionModify.\nsa.radius.connection.withoutBreak=1\n# при значении 1 InetAccess при вызове для изменения состояния метода connectionModify из ServiceActivator\n# поменяет состояние в БД (вызовет e.setConnectionStateModified( true )\n# sa.radius.connection.stateModify=1\n','ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGProtocolHandler','ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGServiceActivator',NULL,0,0,NULL,NULL,'',0,0),(3,'Ericsson SmartEdge',0,'#-------------------------------------------\n# Параметры устройства\n#-------------------------------------------\n#хост для отправки PoD и CoA запросов (по умолчанию - хост, заданный в параметрах устройства Хост/порт)\n#radius.host=\n#порт для отправки PoD и CoA запросов (по умолчанию - порт, заданный в параметрах устройства Хост/порт)\nradius.port=3799\n#идентификатор - Nas-Identifier (по умолчанию - значение из поля Идентификатор параметров устройства)\n#radius.identifier=<идентификатор устройства>\n#используемый secret для общения по radius-протоколу (по умолчанию - значение из поля Community/secret параметров устройства)\n#radius.secret=<community/sercret устройства>\n\nradius.vendor=2352\n# Из какого атрибута извлекается MAC-адрес\n#radius.macAddress.vendor=9\n# Mac-Addr=\nradius.macAddress.type=145\n# префикс\n#radius.macAddress.prefix=\n\n\n#-------------------------------------------\n# Описание атрибутов\n#-------------------------------------------\n# Атрибуты, выдаваемые при авторизации по реалму default (default - реалм по умолчанию) в Аccess-Accept при обычном доступе.\nradius.realm.default.attributes=Acct-Interim-Interval=900;IP-Interface-Name=CLIENTS;Context-Name=inet;\n# Дополнительные атрибуты (макрос), выдаваемые при авторизации по реалму default (default - реалм по умолчанию) в Аccess-Accept при обычном доступе.\n# IP-Interface-Name соответствует интерфейсу в конфиге RedBack, к которому \"биндится\" абонентская сессия (обязательный параметр).\n#radius.realm.default.attributes.macros=$ipParam(radiusContextName);$ipParam(radiusDefaultAttributes)\n\n\n# Атрибуты, выдаваемые при ответе Access-Accept в состоянии disable\nradius.disable.attributes=Service-Name:0=RSE-REJECT;Service-Options:0=1;Acct-Interim-Interval=900;IP-Interface-Name=CLIENTS;Context-Name=inet;\n# Дополнительные атрибуты (макрос), выдаваемые при ответе Access-Accept в состоянии disable\n# Динамическая выдача имени интерфейса привязки абонента на SE100 + динамическая выдача NAT политики из категории IP-Ресурсы.\n#radius.disable.attributes.macros=$ipParam(radiusContextName);$ipParam(radiusDisableAttributes)\n\n# Можно указать отдельный набор атрибутов специально для кода ошибки\n# radius.disable.1,2,3.attributes=\n\n# Переопределить редирект URL c дефолтного no-money.provider.ru в сервисном RSE-REJECT при ошибке 1 - аккаунт абонента не найден\nradius.disable.1.attributes={@radius.disable.attributes};Service-Parameter:1=Url=http://welcome.provider.ru\n\n\n# Темплейты скоростей. Параметры скоростей, указанные здесь через $ описаны в ОПЦИЯХ.\n# Rate в Кбит/с, burst и excess-burst в битах. \n# Burst = Rate*Tc/8, Time commit (Tc) = 1 сек., Burst = 0,125 * Rate * 1000\n# Exceed-burst=Rate*Te/8, Time exceeded (Te) = 1,5 сек., Excess-burst =  0,1875 * Rate * 1000\nradius.inetOption.1.template=Service-Name:1=RSE-SVC-EXT;Service-Options:1=1;Service-Parameter:1=Rate=$rate Burst=$burst Excess-burst=$ex-burst\n# Темплейты скоростей для ServiceActivator (см. sa.radius.option.attributesPrefix=sa.radius.inetOption.)\nsa.radius.inetOption.1.template=Service-Name:1=RSE-SVC-EXT;Service-Options:1=1;Service-Parameter:1=Rate=$rate Burst=$burst Excess-burst=$ex-burst\n\n# Опция-reject \n# когда нужно через CoA переключить в ограниченный доступ - отправляются атрибуты из sa.radius.inetOption.15.attributes= \n# т.к. эта опция прописана в sa.radius.service.disable.optionIds\nsa.radius.service.disable.optionIds=15\nsa.radius.inetOption.15.attributes=Service-Name:0=RSE-REJECT;Service-Options:0=1;\n\n# Шаблон (имя ISG/SE-сервиса) по которому Accounting узнает, о том что сессия в состоянии ОТКЛЮЧЕНА (ограниченный доступ).\n# При получении старт/стоп-пакета в сервисной сессии ISG/SE, если имя сервиса ISG/SE совпадает, то состояние сессии disable/enable.\nradius.serviceName.disable=RSE-REJECT\n\n\n#-------------------------------------------\n# Параметры для соединения\n#-------------------------------------------\n# Записывать информацию в БД о выданных адресе, опциях и состоянии при Access-Accept\n# Hеобходимо, если используется Reject-To-Accept и по Start-пакету нельзя определить в каком состоянии соединение\nconnection.start.fromAccept=1\n# Бывают ситуации, когда Start-пакет не дошел до Accounting-сервера. В этом случае, при\n# 1 (значение по умолчанию) - сессия создастся от текущего момента,\n# 2 - Accounting проверит, что время сессии из Update/Stop пакета не больше, чем значение connection.close.timeout и создаст сессию от ее начала, иначе,\n# если время сессии больше чем connection.close.timeout, сессия создастся от текущего момента,\n# 0 - сессия без Start-пакета создана не будет.\n#connection.start.fromUpdate=1\n# При создании сессии по Update-пакету нужно ли игнорировать отсутствие IP-адреса сессии (Framed-Ip-Address). По умолчанию сессия\n# по Update-пакету без адреса не создается (0).\n#connection.start.fromUpdate.ignoreFramedIpLack=0\n\n# Таймаут перевода соединения в статус suspended при остутствии радиус пакетов\nconnection.suspend.timeout=1860\n# Таймаут закрытия соединения при остутствии радиус пакетов (не складывается с connection.suspend.timeout)\nconnection.close.timeout=1860\n# При закрытии соединения по таймауту, 0 (по умолчанию) - просто закрыть,\n# 1 - попытаться сбросить также на NAS\'е (вызвать connectionClose у обработчика активации сервисов)\n#connection.close.timeout.forceClose=1\n\n\n\n#---------------------------------------------------------\n# Параметры активации сервисов\n#---------------------------------------------------------\n#длина паузы, если возникла ошибка\n#sa.error.pause=60\n#количество заданий за раз\n#sa.batch.size=20\n#время (сек) ожидания завершения всех заданий (при асинхронной работе)\n#sa.batch.wait=5\n#пауза (сек) после обработки заданий\n#sa.batch.pause=0\n#время (сек) ожидания новой задачи перед вызовом disconnect.\n#sa.batch.waitNext=5\n\n\n\n#-----------------------------------------------------------------------------\n# Параметры обработчика активации сервисов\n#-----------------------------------------------------------------------------\n# Логирование CoA/PoD-запросов (контекстное меню сессии - RADIUS-лог)\nsa.radius.log=1\n# 1 - новый режим работы c опциями-сервисами для SmartEdgeServiceActivator\nsa.optionMode=1\n#откуда при отправке CoA брать атрибуты опций (по умолчанию - те же атрибуты, что выдаются при удачной авторизации)\n#sa.radius.option.attributesPrefix=option.\n#sa.radius.option.attributesPrefix=radius.inetOption.\nsa.radius.option.attributesPrefix=sa.radius.inetOption.\nsa.radius.connection.attributes=Acct-Session-Id\n#атрибуты CoA запроса для прекращения доступа (используется при sa.radius.connection.withoutBreak=1)\n# sa.radius.disable.attributes={@redirect.attributes}\n#фиксированные атрибуты, добавляемые в запрос перед отправкой CoA\n#sa.radius.coa.attributes=\n#добавлять ли при отправке CoA атрибуты реалма (для default - из radius.realm.default.attributes)\n#sa.radius.realm.addAttributes=0\n#атрибуты, посылаемые при закрытии сервисов Inet в состоянии СЕРВИС ПОДКЛЮЧЕН. Необходим для реактивации сервисов.\n# sa.radius.service.closeAttributes=Deactivate-Service-Name:1=RSE-SVC-EXT\n#sa.radius.service.closeAttributes=\n#фиксированные атрибуты, добавляемые в запрос перед отправкой PoD\n#sa.radius.pod.attributes=\n# Нужно ли посылать CoA при переводе из disable в enable\nsa.radius.connection.coa.onEnable=1\n# Не выдаем DHCP NaK, не инициируем разрыв из connectionModify.\nsa.radius.connection.withoutBreak=1\n# при значении 1 InetAccess при вызове для изменения состояния метода connectionModify из ServiceActivator\n# поменяет состояние в БД (вызовет e.setConnectionStateModified( true )\n# sa.radius.connection.stateModify=1\n','ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeClipsProtocolHandler','ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeClipsServiceActivator',NULL,0,0,NULL,NULL,'',0,0),(4,'D-Link DES-3200-28F',0,'# См. http://wiki.bitel.ru/index.php/%D0%9D%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0_%D1%80%D0%B0%D0%B7%D0%B1%D0%BE%D1%80%D0%B0_%D0%BE%D0%BF%D1%86%D0%B8%D0%B8_DHCP.82\n\n# Параметры для извлечения из пакета agentRemoteId\n# вид значения в опции agentRemoteId: 0 (по умолчанию) - байты, 1 - строка\ndhcp.option82.agentRemoteId.type=0\n\n# Удаление заголовка, при необходимости, 0 - не удалять, 2 - 2 удалить байта (тип+длина) из значения DHCP-опции.\n# При удалении поля position для agentRemoteId, vlanId, interfaceId нужно уменьшить на тоже кол-во байт\n#dhcp.option82.removeHeader=0\ndhcp.option82.removeHeader=0\n\n# Параметры для извлечения из пакета agentRemoteId\n# вид значения в опции agentRemoteId: 0 (по умолчанию) - байты, 1 - строка\n#dhcp.option82.agentRemoteId.type=0\n# код субопции 82, содержащей идентификатор коммутатора клиента, позиция и длина последовательности идентификатора\n\ndhcp.option82.agentRemoteId.code=2\n#dhcp.option82.agentRemoteId.position=2\n#dhcp.option82.agentRemoteId.length=6\n\n# код субопции 82, содержащей VLAN, позиция и длина в субопции\n#dhcp.82.vlanOptionCode=1\n#dhcp.option82.vlanId.position=3\n#dhcp.option82.vlanId.length=2\n\n# код субопции 82, содержащей интерфейс, позиция и длина в субопции\ndhcp.option82.interfaceId.code=1\n#dhcp.option82.interfaceId.position=5\n#dhcp.option82.interfaceId.length=1',NULL,NULL,NULL,0,0,NULL,NULL,'',0,1),(5,'Eltex PON OLT LTE-2x 128',0,'# См. http://wiki.bitel.ru/index.php/%D0%9D%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0_%D1%80%D0%B0%D0%B7%D0%B1%D0%BE%D1%80%D0%B0_%D0%BE%D0%BF%D1%86%D0%B8%D0%B8_DHCP.82\n\n# Параметры для извлечения из пакета agentRemoteId\n# вид значения в опции agentRemoteId: 0 (по умолчанию) - байты, 1 - строка\ndhcp.option82.agentRemoteId.type=0\n\n# Удаление заголовка, при необходимости, 0 - не удалять, 2 - 2 удалить байта (тип+длина) из значения DHCP-опции.\n# При удалении поля position для agentRemoteId, vlanId, interfaceId нужно уменьшить на тоже кол-во байт\n#dhcp.option82.removeHeader=0\n\ndhcp.option82.removeHeader=0\n\n# Параметры для извлечения из пакета agentRemoteId\n# вид значения в опции agentRemoteId: 0 (по умолчанию) - байты, 1 - строка\n#dhcp.option82.agentRemoteId.type=0\n# код субопции 82, содержащей идентификатор коммутатора клиента, позиция и длина последовательности идентификатора\n\ndhcp.option82.agentRemoteId.code=2\n#dhcp.option82.agentRemoteId.position=2\n#dhcp.option82.agentRemoteId.length=6\n\n# код субопции 82, содержащей VLAN, позиция и длина в субопции\n#dhcp.82.vlanOptionCode=1\n#dhcp.option82.vlanId.position=3\n#dhcp.option82.vlanId.length=2\n\n# код субопции 82, содержащей интерфейс, позиция и длина в субопции\ndhcp.option82.interfaceId.code=1\n#dhcp.option82.interfaceId.position=5\n#dhcp.option82.interfaceId.length=1',NULL,NULL,NULL,0,0,NULL,NULL,'',0,1),(6,'Cisco ASR ISG Service',0,'#-------------------------------------------\n# Описание атрибутов\n#-------------------------------------------\n# Атрибуты, выдаваемые при авторизации по реалму default (default - реалм по умолчанию) в Аccess-Accept при обычном доступе.\nradius.realm.default.attributes=Acct-Interim-Interval=900;IP-Interface-Name=CLIENTS;Context-Name=inet;\n# Дополнительные атрибуты (макрос), выдаваемые при авторизации по реалму default (default - реалм по умолчанию) в Аccess-Accept при обычном доступе.\n# IP-Interface-Name соответствует интерфейсу в конфиге RedBack, к которому \"биндится\" абонентская сессия (обязательный параметр).\n#radius.realm.default.attributes.macros=$ipParam(radiusContextName);$ipParam(radiusDefaultAttributes)\n\n\n# Атрибуты, выдаваемые при ответе Access-Accept в состоянии disable\nradius.disable.attributes=Service-Name=RSE-REJECT;Service-Options=1;Acct-Interim-Interval=900;IP-Interface-Name=CLIENTS;Context-Name=inet;\n# Дополнительные атрибуты (макрос), выдаваемые при ответе Access-Accept в состоянии disable\n# Динамическая выдача имени интерфейса привязки абонента на SE100 + динамическая выдача NAT политики из категории IP-Ресурсы.\n#radius.disable.attributes.macros=$ipParam(radiusContextName);$ipParam(radiusDisableAttributes)\n\n# Можно указать отдельный набор атрибутов специально для кода ошибки\n# radius.disable.1,2,3.attributes=\n\n# Переопределить редирект URL c дефолтного no-money.provider.ru в сервисном RSE-REJECT при ошибке 1 - аккаунт абонента не найден\nradius.disable.1.attributes={@radius.disable.attributes};Service-Parameter:1=Url=http://welcome.provider.ru\n\n\n# Темплейты скоростей. Параметры скоростей, указанные здесь через $ описаны в ОПЦИЯХ.\n# Rate в Кбит/с, burst и excess-burst в битах. \n# Burst = Rate*Tc/8, Time commit (Tc) = 1 сек., Burst = 0,125 * Rate * 1000\n# Exceed-burst=Rate*Te/8, Time exceeded (Te) = 1,5 сек., Excess-burst =  0,1875 * Rate * 1000\nradius.inetOption.1.template=Service-Name:1=RSE-SVC-EXT;Service-Options:1=1;Service-Parameter:1=Rate=$rate Burst=$burst Excess-burst=$ex-burst\nradius.inetOption.1.template=cisco-SSG-Account-Info=AISG_$optionTitle\n# Темплейты скоростей для ServiceActivator (см. sa.radius.option.attributesPrefix=sa.radius.inetOption.)\nsa.radius.inetOption.1.template=cisco-SSG-Account-Info=AISG_$optionTitle\n\n# Опция-reject \n# когда нужно через CoA переключить в ограниченный доступ - отправляются атрибуты из sa.radius.inetOption.15.attributes= \n# т.к. эта опция прописана в sa.radius.service.disable.optionIds\nsa.radius.service.disable.optionIds=15\nsa.radius.inetOption.15.attributes=cisco-SSG-Account-Info=AINET_FAKE\n\n# Шаблон (имя ISG/SE-сервиса) по которому Accounting узнает, о том что сессия в состоянии ОТКЛЮЧЕНА (ограниченный доступ).\n# При получении старт/стоп-пакета в сервисной сессии ISG/SE, если имя сервиса ISG/SE совпадает, то состояние сессии disable/enable.\nradius.serviceName.disable=INET_FAKE\n\n\n#-------------------------------------------\n# Параметры для соединения\n#-------------------------------------------\n# Записывать информацию в БД о выданных адресе, опциях и состоянии при Access-Accept\n# Hеобходимо, если используется Reject-To-Accept и по Start-пакету нельзя определить в каком состоянии соединение\nconnection.start.fromAccept=0',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0),(7,'SNMP Agent',0,'#------------------------------------------------------------------------\n# Netflow\n#------------------------------------------------------------------------\n#Тип источника, netflow, netflow9(IPFIX/NextGenNetFlow) или sflow\n#по умолчанию - netflow\nflow.agent.type=snmp\n\nsnmp.version=2\n#snmp.host=\n#snmp.secret=public',NULL,NULL,'ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpDeviceManager',1,0,NULL,NULL,'',1,0),(8,'Flow Agent',0,'#Тип источника, netflow, netflow9(IPFIX/NextGenNetFlow) или sflow\n#по умолчанию - netflow\nflow.agent.type=netflow\n\n# Устройство является источником flow для всех своих дочерних устройств\nflow.agent.link={@deviceId}:-1',NULL,NULL,NULL,0,0,NULL,NULL,'',1,0),(9,'MPD',0,'#-------------------------------------------\n# Параметры устройства\n#-------------------------------------------\n#хост для отправки PoD и CoA запросов (по умолчанию - хост, заданный в параметрах устройства Хост/порт)\n#radius.host=\n#порт для отправки PoD и CoA запросов (по умолчанию - порт, заданный в параметрах устройства Хост/порт)\nradius.port=3799\n#идентификатор - Nas-Identifier (по умолчанию - значение из поля Идентификатор параметров устройства)\n#radius.identifier=<идентификатор устройства>\n#используемый secret для общения по radius-протоколу (по умолчанию - значение из поля Community/secret параметров устройства)\n#radius.secret=<community/sercret устройства>\n\nradius.vendor=12341\n\n# Из какого атрибута извлекается MAC-адрес\n#radius.macAddress.vendor=\n#radius.macAddress.type=\n# префикс\n#radius.macAddress.prefix=\n\n\n#-------------------------------------------\n# Описание атрибутов\n#-------------------------------------------\n# Атрибуты, выдаваемые при авторизации по реалму default (default - реалм по умолчанию)\nradius.realm.default.attributes=Acct-Interim-Interval=900;\n \n# Атрибуты, выдаваемые при rejectToAccept\nradius.disable.attributes=Acct-Interim-Interval=900;mpd-limit=out#1=all shape 64000 pass;mpd-limit=in#1=all rate-limit 64000 pass\n \n \n# Привязка кодов опций модуля к атрибутам\n# данные атрибуты будут выдаваться в AccessAccept при удачной авторизации и при наличии активных опций в тарифе или сервисе\n# Темплейты скоростей. Параметры скоростей, указанные здесь через $ описаны в ОПЦИЯХ.\nradius.inetOption.1.template=mpd-limit=out#1=all shape $rate()000 pass;mpd-limit=in#1=all rate-limit 10000000 pass\n# Темплейты скоростей для ServiceActivator (см. sa.radius.option.attributesPrefix=sa.radius.inetOption.)\nsa.radius.inetOption.1.template=mpd-limit=out#1=all shape $rate()000 pass;mpd-limit=in#1=all rate-limit 10000000 pass\n\n \n#-------------------------------------------\n# Параметры для соединения\n#-------------------------------------------\n# Записывать информацию в БД о выданных адресе, опциях и состоянии при Access-Accept\n# Hеобходимо, если используется Reject-To-Accept и по Start-пакету нельзя определить в каком состоянии соединение\nconnection.start.fromAccept=1\n# Бывают ситуации, когда Start-пакет не дошел до Accounting-сервера. В этом случае, при\n# 1 (значение по умолчанию) - сессия создастся от текущего момента,\n# 2 - Accounting проверит, что время сессии из Update/Stop пакета не больше, чем значение connection.close.timeout и создаст сессию от ее начала, иначе,\n# если время сессии больше чем connection.close.timeout, сессия создастся от текущего момента,\n# 0 - сессия без Start-пакета создана не будет.\n#connection.start.fromUpdate=1\n# При создании сессии по Update-пакету нужно ли игнорировать отсутствие IP-адреса сессии (Framed-Ip-Address). По умолчанию сессия\n# по Update-пакету без адреса не создается (0).\n#connection.start.fromUpdate.ignoreFramedIpLack=0\n\n# Таймаут перевода соединения в статус suspended при остутствии радиус пакетов\nconnection.suspend.timeout=1860\n# Таймаут закрытия соединения при остутствии радиус пакетов (не складывается с connection.suspend.timeout)\nconnection.close.timeout=1860\n# При закрытии соединения по таймауту, 0 (по умолчанию) - просто закрыть,\n# 1 - попытаться сбросить также на NAS\'е (вызвать connectionClose у обработчика активации сервисов)\n#connection.close.timeout.forceClose=1\n \n \n#---------------------------------------------------------\n# Параметры активации сервисов\n#---------------------------------------------------------\n# длина паузы, если возникла ошибка\nsa.error.pause=30\n# количество заданий за раз\n#sa.batch.size=20\n# время (сек) ожидания завершения всех заданий (при асинхронной работе)\n#sa.batch.wait=5\n# пауза (сек) после обработки заданий\n#sa.batch.pause=0\n# время (сек) ожидания новой задачи перед вызовом disconnect.\n#sa.batch.waitNext=5\n\n\n#-----------------------------------------------------------------------------\n# Параметры обработчика активации сервисов\n#-----------------------------------------------------------------------------\n# Логирование CoA/PoD-запросов (контекстное меню сессии - RADIUS-лог)\nsa.radius.log=1\n#откуда при отправке CoA брать атрибуты опций (по умолчанию - те же атрибуты, что выдаются при удачной авторизации)\n#sa.radius.option.attributesPrefix=radius.inetOption.\nsa.radius.option.attributesPrefix=sa.radius.inetOption.\n#sa.radius.connection.attributes=Acct-Session-Id\n#атрибуты CoA запроса для прекращения доступа (используется при sa.radius.connection.withoutBreak=1)\n# sa.radius.disable.attributes={@redirect.attributes}\n#фиксированные атрибуты, добавляемые в запрос перед отправкой CoA\n#sa.radius.coa.attributes=\n#добавлять ли при отправке CoA атрибуты реалма (для default - из radius.realm.default.attributes)\n#sa.radius.realm.addAttributes=0\n#атрибуты, посылаемые при закрытии сервисов Inet в состоянии СЕРВИС ПОДКЛЮЧЕН. Необходим для реактивации сервисов.\n# sa.radius.service.closeAttributes=Deactivate-Service-Name:1=RSE-SVC-EXT\n#sa.radius.service.closeAttributes=\n#фиксированные атрибуты, добавляемые в запрос перед отправкой PoD\n#sa.radius.pod.attributes=\n# при значении 1 InetAccess при вызове для изменения состояния метода connectionModify из ServiceActivator\n# поменяет состояние в БД (вызовет e.setConnectionStateModified( true )\n sa.radius.connection.stateModify=1','ru.bitel.bgbilling.modules.inet.dyn.device.radius.CoAProtocolHandler','ru.bitel.bgbilling.modules.inet.dyn.device.radius.CoAServiceActivator',NULL,0,0,NULL,NULL,'',1,0),(10,'FreeBSD',0,'',NULL,NULL,NULL,0,0,NULL,NULL,'',0,0);
/*!40000 ALTER TABLE `inet_device_type_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_interface_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_interface_1` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deviceTypeId` int(11) NOT NULL,
  PRIMARY KEY (`id`,`deviceTypeId`),
  KEY `deviceTypeId` (`deviceTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_interface_1`
--

LOCK TABLES `inet_interface_1` WRITE;
/*!40000 ALTER TABLE `inet_interface_1` DISABLE KEYS */;
INSERT INTO `inet_interface_1` VALUES (1,'Порт абонента 1',4),(1,'PON ID 1',5),(2,'Порт абонента 2',4),(2,'PON ID 2',5),(3,'Порт абонента 3',4),(3,'PON ID 3',5),(4,'Порт абонента 4',4),(4,'PON ID 4',5),(5,'Порт абонента 5',4),(5,'PON ID 5',5),(6,'Порт абонента 6',4),(6,'PON ID 6',5),(7,'Порт абонента 7',4),(7,'PON ID 7',5),(8,'Порт абонента 8',4),(8,'PON ID 8',5),(9,'Порт абонента 9',4),(9,'PON ID 9',5),(10,'Порт абонента 10',4),(10,'PON ID 10',5),(11,'Порт абонента 11',4),(11,'PON ID 11',5),(12,'Порт абонента 12',4),(12,'PON ID 12',5),(13,'Порт абонента 13',4),(13,'PON ID 13',5),(14,'Порт абонента 14',4),(14,'PON ID 14',5),(15,'Порт абонента 15',4),(15,'PON ID 15',5),(16,'Порт абонента 16',4),(16,'PON ID 16',5),(17,'Порт абонента 17',4),(17,'PON ID 17',5),(18,'Порт абонента 18',4),(18,'PON ID 18',5),(19,'Порт абонента 19',4),(19,'PON ID 19',5),(20,'Порт абонента 20',4),(20,'PON ID 20',5),(21,'Порт абонента 21',4),(21,'PON ID 21',5),(22,'Порт абонента 22',4),(22,'PON ID 22',5),(23,'Порт абонента 23',4),(23,'PON ID 23',5),(24,'Порт абонента 24',4),(24,'PON ID 24',5),(25,'PON ID 25',5),(26,'PON ID 26',5),(27,'PON ID 27',5),(28,'PON ID 28',5),(29,'PON ID 29',5),(30,'PON ID 30',5),(31,'PON ID 31',5),(32,'PON ID 32',5),(33,'PON ID 33',5),(34,'PON ID 34',5),(35,'PON ID 35',5),(36,'PON ID 36',5),(37,'PON ID 37',5),(38,'PON ID 38',5),(39,'PON ID 39',5),(40,'PON ID 40',5),(41,'PON ID 41',5),(42,'PON ID 42',5),(43,'PON ID 43',5),(44,'PON ID 44',5),(45,'PON ID 45',5),(46,'PON ID 46',5),(47,'PON ID 47',5),(48,'PON ID 48',5),(49,'PON ID 49',5),(50,'PON ID 50',5),(51,'PON ID 51',5),(52,'PON ID 52',5),(53,'PON ID 53',5),(54,'PON ID 54',5),(55,'PON ID 55',5),(56,'PON ID 56',5),(57,'PON ID 57',5),(58,'PON ID 58',5),(59,'PON ID 59',5),(60,'PON ID 60',5),(61,'PON ID 61',5),(62,'PON ID 62',5),(63,'PON ID 63',5),(64,'PON ID 64',5),(65,'PON ID 65',5),(66,'PON ID 66',5),(67,'PON ID 67',5),(68,'PON ID 68',5),(69,'PON ID 69',5),(70,'PON ID 70',5),(71,'PON ID 71',5),(72,'PON ID 72',5),(73,'PON ID 73',5),(74,'PON ID 74',5),(75,'PON ID 75',5),(76,'PON ID 76',5),(77,'PON ID 77',5),(78,'PON ID 78',5),(79,'PON ID 79',5),(80,'PON ID 80',5),(81,'PON ID 81',5),(82,'PON ID 82',5),(83,'PON ID 83',5),(84,'PON ID 84',5),(85,'PON ID 85',5),(86,'PON ID 86',5),(87,'PON ID 87',5),(88,'PON ID 88',5),(89,'PON ID 89',5),(90,'PON ID 90',5),(91,'PON ID 91',5),(92,'PON ID 92',5),(93,'PON ID 93',5),(94,'PON ID 94',5),(95,'PON ID 95',5),(96,'PON ID 96',5),(97,'PON ID 97',5),(98,'PON ID 98',5),(99,'PON ID 99',5),(100,'PON ID 100',5),(101,'PON ID 101',5),(102,'PON ID 102',5),(103,'PON ID 103',5),(104,'PON ID 104',5),(105,'PON ID 105',5),(106,'PON ID 106',5),(107,'PON ID 107',5),(108,'PON ID 108',5),(109,'PON ID 109',5),(110,'PON ID 110',5),(111,'PON ID 111',5),(112,'PON ID 112',5),(113,'PON ID 113',5),(114,'PON ID 114',5),(115,'PON ID 115',5),(116,'PON ID 116',5),(117,'PON ID 117',5),(118,'PON ID 118',5),(119,'PON ID 119',5),(120,'PON ID 120',5),(121,'PON ID 121',5),(122,'PON ID 122',5),(123,'PON ID 123',5),(124,'PON ID 124',5),(125,'PON ID 125',5),(126,'PON ID 126',5),(127,'PON ID 127',5),(128,'PON ID 128',5);
/*!40000 ALTER TABLE `inet_interface_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_option_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_option_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `groupIntersection` tinyint(4) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_option_1`
--

LOCK TABLES `inet_option_1` WRITE;
/*!40000 ALTER TABLE `inet_option_1` DISABLE KEYS */;
INSERT INTO `inet_option_1` VALUES (1,0,'Скорости доступа',0,'',''),(2,0,'Служебные сервисы',0,'',''),(3,1,'256Kbit',0,'optionTitle=256KBPS\nrate=250\nburst=31250\nex-burst=46875',''),(4,1,'512Kbit',0,'optionTitle=512KBPS\nrate=500\nburst=62500\nex-burst=93750',''),(5,1,'1Mbit',0,'optionTitle=1MBPS\nrate=1000\nburst=125000\nex-burst=187500\n',''),(6,1,'2Mbit',0,'optionTitle=2MBPS\nrate=2000\nburst=250000\nex-burst=375000',''),(7,1,'3Mbit',0,'optionTitle=3MBPS\nrate=3000\nburst=375000\nex-burst=562500',''),(8,1,'4Mbit',0,'optionTitle=4MBPS\nrate=4000\nburst=500000\nex-burst=750000',''),(9,1,'5Mbit',0,'optionTitle=5MBPS\nrate=5000\nburst=625000\nex-burst=875000',''),(10,1,'10Mbit',0,'optionTitle=10MBPS\nrate=10000\nburst=1250000\nex-burst=1875000\n',''),(11,1,'25Mbit',0,'',''),(12,1,'50Mbit',0,'optionTitle=50MBPS\nrate=50000\nburst=6250000\nex-burst=9375000',''),(13,1,'100Mbit',0,'optionTitle=100MBPS\nrate=100000\nburst=12500000\nex-burst=18750000',''),(15,2,'Ограничение доступа',0,'','');
/*!40000 ALTER TABLE `inet_option_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_serv_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_serv_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `contractId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `interfaceId` int(11) NOT NULL,
  `vlan` int(11) NOT NULL DEFAULT '-1',
  `identifier` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `macAddress` varbinary(64) DEFAULT NULL,
  `ipResourceId` int(11) DEFAULT NULL,
  `ipResourceSubscriptionId` int(11) NOT NULL,
  `addressFrom` varbinary(24) DEFAULT NULL,
  `addressTo` varbinary(24) DEFAULT NULL,
  `login` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `contractObjectId` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `sessionCountLimit` int(11) NOT NULL,
  `deviceState` int(11) NOT NULL,
  `accessCode` int(11) NOT NULL,
  `config` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceOptions` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  KEY `contractId` (`contractId`),
  KEY `deviceId` (`deviceId`),
  KEY `login` (`login`),
  KEY `contractObjectId` (`contractObjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_serv_1`
--

LOCK TABLES `inet_serv_1` WRITE;
/*!40000 ALTER TABLE `inet_serv_1` DISABLE KEYS */;
INSERT INTO `inet_serv_1` VALUES (1,0,1,5,2,-1,-1,NULL,NULL,0,0,NULL,NULL,'','','2015-05-01',NULL,0,2,1,-1,0,NULL,'','','NOAUTH'),(2,0,1,5,2,-1,-1,NULL,NULL,0,0,NULL,NULL,'','','2015-05-01',NULL,0,2,1,-1,0,NULL,'','','NOAUTH'),(12,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_256KBPS','61Ri2b','2015-05-24',NULL,0,0,0,1,0,NULL,'3','','ISG_256KBPS'),(13,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_512KBPS','cACvEn','2015-05-24',NULL,0,0,0,1,0,NULL,'4','','ISG_512KBPS'),(14,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_1MBPS','u2n2Bi','2015-05-24',NULL,0,0,0,1,0,NULL,'5','','ISG_1MBPS'),(15,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_2MBPS','zQmML0','2015-05-24',NULL,0,0,0,1,0,NULL,'6','','ISG_2MBPS'),(16,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_3MBPS','bJEk9A','2015-05-24',NULL,0,0,0,1,0,NULL,'7','','ISG_3MBPS'),(17,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_4MBPS','2JiQkD','2015-05-24',NULL,0,0,0,1,0,NULL,'8','','ISG_4MBPS'),(18,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_5MBPS','YcMCPq','2015-05-24',NULL,0,0,0,1,0,NULL,'9','','ISG_5MBPS'),(19,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_10MBPS','P5K9Ns','2015-05-24',NULL,0,0,0,1,0,NULL,'10','','ISG_10MBPS'),(20,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_25MBPS','UuyCzA','2015-05-24',NULL,0,0,0,1,0,NULL,'11','','ISG_25MBPS'),(21,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_50MBPS','C5EYFE','2015-05-24',NULL,0,0,0,1,0,NULL,'12','','ISG_50MBPS'),(22,0,2,4,10,-1,-1,NULL,NULL,0,0,NULL,NULL,'ISG_100MBPS','LnnKTQ','2015-05-24',NULL,0,0,0,1,0,NULL,'13','','ISG_100MBPS'),(23,0,3,6,18,2,-1,NULL,NULL,0,0,NULL,NULL,'','','2015-05-25',NULL,0,0,0,1,0,NULL,'','','SNMP [Интерфейс 2]');
/*!40000 ALTER TABLE `inet_serv_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_serv_option_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_serv_option_1` (
  `servId` int(11) NOT NULL,
  `optionId` int(11) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  KEY `servOptIdx` (`servId`,`optionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_serv_option_1`
--

LOCK TABLES `inet_serv_option_1` WRITE;
/*!40000 ALTER TABLE `inet_serv_option_1` DISABLE KEYS */;
INSERT INTO `inet_serv_option_1` VALUES (13,4,'2015-05-24',NULL),(12,3,'2015-05-24',NULL),(14,5,'2015-05-24',NULL),(15,6,'2015-05-24',NULL),(16,7,'2015-05-24',NULL),(17,8,'2015-05-24',NULL),(18,9,'2015-05-24',NULL),(19,10,'2015-05-24',NULL),(20,11,'2015-05-24',NULL),(21,12,'2015-05-24',NULL),(22,13,'2015-05-24',NULL),(1,15,'2015-05-01',NULL),(2,15,'2015-05-01',NULL);
/*!40000 ALTER TABLE `inet_serv_option_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_serv_restriction_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_serv_restriction_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servId` int(11) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `type` int(11) NOT NULL,
  `serviceIds` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `amount` decimal(20,5) NOT NULL DEFAULT '0.00000',
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `servId` (`servId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_serv_restriction_1`
--

LOCK TABLES `inet_serv_restriction_1` WRITE;
/*!40000 ALTER TABLE `inet_serv_restriction_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_serv_restriction_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_serv_type_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_serv_type_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `parentTypeIds` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sessionInitiationType` tinyint(4) NOT NULL,
  `sessionCountLimit` int(11) NOT NULL,
  `sessionCountLimitLock` tinyint(4) NOT NULL DEFAULT '0',
  `addressType` tinyint(4) NOT NULL,
  `addressAllInterface` tinyint(4) NOT NULL DEFAULT '0',
  `trafficTypeLinkId` int(11) NOT NULL,
  `needLogin` tinyint(4) NOT NULL,
  `needDevice` tinyint(4) NOT NULL,
  `needInterface` tinyint(4) NOT NULL,
  `personalInterface` tinyint(4) NOT NULL DEFAULT '1',
  `needVlan` tinyint(4) NOT NULL,
  `needIdentifier` tinyint(4) NOT NULL DEFAULT '0',
  `needMacAddress` tinyint(4) NOT NULL DEFAULT '0',
  `needContractObject` tinyint(4) NOT NULL DEFAULT '0',
  `needRestriction` tinyint(4) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci,
  `personalVlan` tinyint(4) NOT NULL DEFAULT '1',
  `ipFromParentRange` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_serv_type_1`
--

LOCK TABLES `inet_serv_type_1` WRITE;
/*!40000 ALTER TABLE `inet_serv_type_1` DISABLE KEYS */;
INSERT INTO `inet_serv_type_1` VALUES (1,'IPoE порт','',0,1,1,5,0,0,0,1,1,1,0,0,0,0,0,'# Шаблон имени сервиса в договоре\n#title.pattern=Интернет (${deviceIdentifier})@(${interfaceId})\ntitle.pattern=Интернет ((${interfaceTitle}))',1,0),(2,'IPoE VLAN','',0,1,1,5,0,1,0,1,0,1,1,0,0,0,0,'',1,0),(3,'Абонентское устройство','2',0,0,0,5,0,1,0,0,0,1,0,0,1,0,0,'',1,0),(4,'ISG-сервис (ISG_SERVICE)','',0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,'# Постоянный ID устройства для всех сервисов данного типа (ISGServiceAccess)\nconst.device.id=10\n# Шаблон имени сервиса в договоре\ntitle.pattern=(${login})\n# Разрешенные символы в логине\nserv.login.chars=1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_-\n',1,0),(5,'NOAUTH','',0,0,1,0,0,0,0,1,0,1,0,0,0,0,0,'# Шаблон имени сервиса в договоре\ntitle.pattern=NOAUTH',1,0),(6,'SNMP Collector','',1,0,1,0,1,3,0,1,1,1,0,0,0,0,0,'# Шаблон имени сервиса в договоре\ntitle.pattern=SNMP [(${interfaceTitle})]',1,0);
/*!40000 ALTER TABLE `inet_serv_type_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_serv_type_device_group_link_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_serv_type_device_group_link_1` (
  `inetServId` int(11) NOT NULL,
  `deviceGroupId` int(11) NOT NULL,
  KEY `inetServId` (`inetServId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_serv_type_device_group_link_1`
--

LOCK TABLES `inet_serv_type_device_group_link_1` WRITE;
/*!40000 ALTER TABLE `inet_serv_type_device_group_link_1` DISABLE KEYS */;
INSERT INTO `inet_serv_type_device_group_link_1` VALUES (2,1),(1,1);
/*!40000 ALTER TABLE `inet_serv_type_device_group_link_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_serv_type_device_type_link_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_serv_type_device_type_link_1` (
  `inetServId` int(11) NOT NULL,
  `deviceTypeId` int(11) NOT NULL,
  KEY `inetServId` (`inetServId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_serv_type_device_type_link_1`
--

LOCK TABLES `inet_serv_type_device_type_link_1` WRITE;
/*!40000 ALTER TABLE `inet_serv_type_device_type_link_1` DISABLE KEYS */;
INSERT INTO `inet_serv_type_device_type_link_1` VALUES (5,1),(6,7);
/*!40000 ALTER TABLE `inet_serv_type_device_type_link_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parentId` bigint(20) NOT NULL,
  `splittedId` bigint(20) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `sessionStart` datetime NOT NULL,
  `sessionStop` datetime DEFAULT NULL,
  `lastActive` datetime NOT NULL,
  `sessionTime` bigint(20) NOT NULL,
  `sessionCost` decimal(12,5) NOT NULL,
  `deviceState` smallint(6) NOT NULL DEFAULT '1',
  `status` smallint(6) NOT NULL,
  KEY `start` (`sessionStart`),
  KEY `id` (`id`),
  KEY `parentId` (`parentId`),
  KEY `connectionId` (`connectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH (connectionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_1`
--

LOCK TABLES `inet_session_1` WRITE;
/*!40000 ALTER TABLE `inet_session_1` DISABLE KEYS */;
INSERT INTO `inet_session_1` VALUES (103,0,102,2,'2015-10-10 00:00:00',NULL,'2015-10-10 00:00:00',0,0.00000,1,1);
/*!40000 ALTER TABLE `inet_session_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_1_seq`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_1_seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_1_seq`
--

LOCK TABLES `inet_session_1_seq` WRITE;
/*!40000 ALTER TABLE `inet_session_1_seq` DISABLE KEYS */;
INSERT INTO `inet_session_1_seq` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103);
/*!40000 ALTER TABLE `inet_session_1_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_account_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_account_1` (
  `contractId` int(11) NOT NULL,
  `sessionId` bigint(20) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`sessionId`,`serviceId`),
  KEY `serviceId` (`serviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_account_1`
--

LOCK TABLES `inet_session_account_1` WRITE;
/*!40000 ALTER TABLE `inet_session_account_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_account_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_detail_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_detail_1` (
  `sessionId` bigint(20) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`sessionId`,`day`,`hour`,`trafficTypeId`,`deviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( sessionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_detail_1`
--

LOCK TABLES `inet_session_detail_1` WRITE;
/*!40000 ALTER TABLE `inet_session_detail_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_detail_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_1_201505`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_1_201505` (
  `id` bigint(20) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `splittedId` bigint(20) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `parentConnectionId` bigint(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `devicePort` int(11) NOT NULL,
  `agentDeviceId` int(11) NOT NULL,
  `acctSessionId` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accessCode` smallint(6) NOT NULL,
  `servId` int(11) NOT NULL,
  `calledStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callingStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipResourceId` int(11) NOT NULL,
  `ipAddress` varbinary(24) DEFAULT NULL,
  `connectionStart` datetime NOT NULL,
  `sessionStart` datetime NOT NULL,
  `sessionStop` datetime DEFAULT NULL,
  `lastActive` datetime NOT NULL,
  `deviceState` smallint(6) NOT NULL,
  `deviceOptions` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(11) NOT NULL,
  `sessionCost` decimal(10,5) NOT NULL,
  `status` smallint(6) NOT NULL,
  KEY `id` (`id`),
  KEY `parentId` (`parentId`),
  KEY `nas` (`deviceId`,`devicePort`),
  KEY `agentDeviceId` (`agentDeviceId`),
  KEY `serv` (`servId`),
  KEY `connection` (`connectionId`),
  KEY `sessionStart` (`sessionStart`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY RANGE (TO_DAYS(sessionStart))
(PARTITION p20150501 VALUES LESS THAN (736085) ENGINE = InnoDB,
 PARTITION p20150502 VALUES LESS THAN (736086) ENGINE = InnoDB,
 PARTITION p20150503 VALUES LESS THAN (736087) ENGINE = InnoDB,
 PARTITION p20150504 VALUES LESS THAN (736088) ENGINE = InnoDB,
 PARTITION p20150505 VALUES LESS THAN (736089) ENGINE = InnoDB,
 PARTITION p20150506 VALUES LESS THAN (736090) ENGINE = InnoDB,
 PARTITION p20150507 VALUES LESS THAN (736091) ENGINE = InnoDB,
 PARTITION p20150508 VALUES LESS THAN (736092) ENGINE = InnoDB,
 PARTITION p20150509 VALUES LESS THAN (736093) ENGINE = InnoDB,
 PARTITION p20150510 VALUES LESS THAN (736094) ENGINE = InnoDB,
 PARTITION p20150511 VALUES LESS THAN (736095) ENGINE = InnoDB,
 PARTITION p20150512 VALUES LESS THAN (736096) ENGINE = InnoDB,
 PARTITION p20150513 VALUES LESS THAN (736097) ENGINE = InnoDB,
 PARTITION p20150514 VALUES LESS THAN (736098) ENGINE = InnoDB,
 PARTITION p20150515 VALUES LESS THAN (736099) ENGINE = InnoDB,
 PARTITION p20150516 VALUES LESS THAN (736100) ENGINE = InnoDB,
 PARTITION p20150517 VALUES LESS THAN (736101) ENGINE = InnoDB,
 PARTITION p20150518 VALUES LESS THAN (736102) ENGINE = InnoDB,
 PARTITION p20150519 VALUES LESS THAN (736103) ENGINE = InnoDB,
 PARTITION p20150520 VALUES LESS THAN (736104) ENGINE = InnoDB,
 PARTITION p20150521 VALUES LESS THAN (736105) ENGINE = InnoDB,
 PARTITION p20150522 VALUES LESS THAN (736106) ENGINE = InnoDB,
 PARTITION p20150523 VALUES LESS THAN (736107) ENGINE = InnoDB,
 PARTITION p20150524 VALUES LESS THAN (736108) ENGINE = InnoDB,
 PARTITION p20150525 VALUES LESS THAN (736109) ENGINE = InnoDB,
 PARTITION p20150526 VALUES LESS THAN (736110) ENGINE = InnoDB,
 PARTITION p20150527 VALUES LESS THAN (736111) ENGINE = InnoDB,
 PARTITION p20150528 VALUES LESS THAN (736112) ENGINE = InnoDB,
 PARTITION p20150529 VALUES LESS THAN (736113) ENGINE = InnoDB,
 PARTITION p20150530 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_1_201505`
--

LOCK TABLES `inet_session_log_1_201505` WRITE;
/*!40000 ALTER TABLE `inet_session_log_1_201505` DISABLE KEYS */;
INSERT INTO `inet_session_log_1_201505` VALUES (2,0,0,2,0,18,2,0,NULL,NULL,NULL,0,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-05-25 17:36:16','2015-05-25 23:59:59','2015-05-27 17:50:51',-1,'',23024,1.40279,4),(3,0,2,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-05-26 00:00:00','2015-05-26 23:59:59','2015-05-27 18:05:36',1,'',86400,0.00000,4),(4,0,3,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-05-27 00:00:00','2015-05-31 23:59:59','2015-06-09 19:07:24',1,'',432000,0.00000,4);
/*!40000 ALTER TABLE `inet_session_log_1_201505` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_1_201506`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_1_201506` (
  `id` bigint(20) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `splittedId` bigint(20) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `parentConnectionId` bigint(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `devicePort` int(11) NOT NULL,
  `agentDeviceId` int(11) NOT NULL,
  `acctSessionId` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accessCode` smallint(6) NOT NULL,
  `servId` int(11) NOT NULL,
  `calledStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callingStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipResourceId` int(11) NOT NULL,
  `ipAddress` varbinary(24) DEFAULT NULL,
  `connectionStart` datetime NOT NULL,
  `sessionStart` datetime NOT NULL,
  `sessionStop` datetime DEFAULT NULL,
  `lastActive` datetime NOT NULL,
  `deviceState` smallint(6) NOT NULL,
  `deviceOptions` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(11) NOT NULL,
  `sessionCost` decimal(10,5) NOT NULL,
  `status` smallint(6) NOT NULL,
  KEY `id` (`id`),
  KEY `parentId` (`parentId`),
  KEY `nas` (`deviceId`,`devicePort`),
  KEY `agentDeviceId` (`agentDeviceId`),
  KEY `serv` (`servId`),
  KEY `connection` (`connectionId`),
  KEY `sessionStart` (`sessionStart`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY RANGE (TO_DAYS(sessionStart))
(PARTITION p20150601 VALUES LESS THAN (736116) ENGINE = InnoDB,
 PARTITION p20150602 VALUES LESS THAN (736117) ENGINE = InnoDB,
 PARTITION p20150603 VALUES LESS THAN (736118) ENGINE = InnoDB,
 PARTITION p20150604 VALUES LESS THAN (736119) ENGINE = InnoDB,
 PARTITION p20150605 VALUES LESS THAN (736120) ENGINE = InnoDB,
 PARTITION p20150606 VALUES LESS THAN (736121) ENGINE = InnoDB,
 PARTITION p20150607 VALUES LESS THAN (736122) ENGINE = InnoDB,
 PARTITION p20150608 VALUES LESS THAN (736123) ENGINE = InnoDB,
 PARTITION p20150609 VALUES LESS THAN (736124) ENGINE = InnoDB,
 PARTITION p20150610 VALUES LESS THAN (736125) ENGINE = InnoDB,
 PARTITION p20150611 VALUES LESS THAN (736126) ENGINE = InnoDB,
 PARTITION p20150612 VALUES LESS THAN (736127) ENGINE = InnoDB,
 PARTITION p20150613 VALUES LESS THAN (736128) ENGINE = InnoDB,
 PARTITION p20150614 VALUES LESS THAN (736129) ENGINE = InnoDB,
 PARTITION p20150615 VALUES LESS THAN (736130) ENGINE = InnoDB,
 PARTITION p20150616 VALUES LESS THAN (736131) ENGINE = InnoDB,
 PARTITION p20150617 VALUES LESS THAN (736132) ENGINE = InnoDB,
 PARTITION p20150618 VALUES LESS THAN (736133) ENGINE = InnoDB,
 PARTITION p20150619 VALUES LESS THAN (736134) ENGINE = InnoDB,
 PARTITION p20150620 VALUES LESS THAN (736135) ENGINE = InnoDB,
 PARTITION p20150621 VALUES LESS THAN (736136) ENGINE = InnoDB,
 PARTITION p20150622 VALUES LESS THAN (736137) ENGINE = InnoDB,
 PARTITION p20150623 VALUES LESS THAN (736138) ENGINE = InnoDB,
 PARTITION p20150624 VALUES LESS THAN (736139) ENGINE = InnoDB,
 PARTITION p20150625 VALUES LESS THAN (736140) ENGINE = InnoDB,
 PARTITION p20150626 VALUES LESS THAN (736141) ENGINE = InnoDB,
 PARTITION p20150627 VALUES LESS THAN (736142) ENGINE = InnoDB,
 PARTITION p20150628 VALUES LESS THAN (736143) ENGINE = InnoDB,
 PARTITION p20150629 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_1_201506`
--

LOCK TABLES `inet_session_log_1_201506` WRITE;
/*!40000 ALTER TABLE `inet_session_log_1_201506` DISABLE KEYS */;
INSERT INTO `inet_session_log_1_201506` VALUES (5,0,4,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-01 00:00:00','2015-06-01 23:59:59','2015-06-09 19:07:24',1,'',86400,0.00000,4),(6,0,5,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-02 00:00:00','2015-06-02 23:59:59','2015-06-09 19:07:24',1,'',86400,0.00000,4),(7,0,6,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-03 00:00:00','2015-06-03 23:59:59','2015-06-09 19:08:00',1,'',86400,0.00000,4),(8,0,7,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-04 00:00:00','2015-06-04 23:59:59','2015-06-09 19:08:00',1,'',86400,0.00000,4),(9,0,8,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-05 00:00:00','2015-06-05 23:59:59','2015-06-09 19:08:00',1,'',86400,0.00000,4),(10,0,9,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-06 00:00:00','2015-06-06 23:59:59','2015-06-09 19:08:00',1,'',86400,0.00000,4),(11,0,10,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-07 00:00:00','2015-06-07 23:59:59','2015-06-09 19:08:01',1,'',86400,0.00000,4),(12,0,11,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-08 00:00:00','2015-06-08 23:59:59','2015-06-09 19:08:01',1,'',86400,0.00000,4),(13,0,12,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-06-09 00:00:00','2015-06-30 23:59:59','2015-08-19 21:39:11',1,'',1900230,5.84635,4);
/*!40000 ALTER TABLE `inet_session_log_1_201506` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_1_201507`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_1_201507` (
  `id` bigint(20) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `splittedId` bigint(20) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `parentConnectionId` bigint(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `devicePort` int(11) NOT NULL,
  `agentDeviceId` int(11) NOT NULL,
  `acctSessionId` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accessCode` smallint(6) NOT NULL,
  `servId` int(11) NOT NULL,
  `calledStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callingStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipResourceId` int(11) NOT NULL,
  `ipAddress` varbinary(24) DEFAULT NULL,
  `connectionStart` datetime NOT NULL,
  `sessionStart` datetime NOT NULL,
  `sessionStop` datetime DEFAULT NULL,
  `lastActive` datetime NOT NULL,
  `deviceState` smallint(6) NOT NULL,
  `deviceOptions` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(11) NOT NULL,
  `sessionCost` decimal(10,5) NOT NULL,
  `status` smallint(6) NOT NULL,
  KEY `id` (`id`),
  KEY `parentId` (`parentId`),
  KEY `nas` (`deviceId`,`devicePort`),
  KEY `agentDeviceId` (`agentDeviceId`),
  KEY `serv` (`servId`),
  KEY `connection` (`connectionId`),
  KEY `sessionStart` (`sessionStart`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY RANGE (TO_DAYS(sessionStart))
(PARTITION p20150701 VALUES LESS THAN (736146) ENGINE = InnoDB,
 PARTITION p20150702 VALUES LESS THAN (736147) ENGINE = InnoDB,
 PARTITION p20150703 VALUES LESS THAN (736148) ENGINE = InnoDB,
 PARTITION p20150704 VALUES LESS THAN (736149) ENGINE = InnoDB,
 PARTITION p20150705 VALUES LESS THAN (736150) ENGINE = InnoDB,
 PARTITION p20150706 VALUES LESS THAN (736151) ENGINE = InnoDB,
 PARTITION p20150707 VALUES LESS THAN (736152) ENGINE = InnoDB,
 PARTITION p20150708 VALUES LESS THAN (736153) ENGINE = InnoDB,
 PARTITION p20150709 VALUES LESS THAN (736154) ENGINE = InnoDB,
 PARTITION p20150710 VALUES LESS THAN (736155) ENGINE = InnoDB,
 PARTITION p20150711 VALUES LESS THAN (736156) ENGINE = InnoDB,
 PARTITION p20150712 VALUES LESS THAN (736157) ENGINE = InnoDB,
 PARTITION p20150713 VALUES LESS THAN (736158) ENGINE = InnoDB,
 PARTITION p20150714 VALUES LESS THAN (736159) ENGINE = InnoDB,
 PARTITION p20150715 VALUES LESS THAN (736160) ENGINE = InnoDB,
 PARTITION p20150716 VALUES LESS THAN (736161) ENGINE = InnoDB,
 PARTITION p20150717 VALUES LESS THAN (736162) ENGINE = InnoDB,
 PARTITION p20150718 VALUES LESS THAN (736163) ENGINE = InnoDB,
 PARTITION p20150719 VALUES LESS THAN (736164) ENGINE = InnoDB,
 PARTITION p20150720 VALUES LESS THAN (736165) ENGINE = InnoDB,
 PARTITION p20150721 VALUES LESS THAN (736166) ENGINE = InnoDB,
 PARTITION p20150722 VALUES LESS THAN (736167) ENGINE = InnoDB,
 PARTITION p20150723 VALUES LESS THAN (736168) ENGINE = InnoDB,
 PARTITION p20150724 VALUES LESS THAN (736169) ENGINE = InnoDB,
 PARTITION p20150725 VALUES LESS THAN (736170) ENGINE = InnoDB,
 PARTITION p20150726 VALUES LESS THAN (736171) ENGINE = InnoDB,
 PARTITION p20150727 VALUES LESS THAN (736172) ENGINE = InnoDB,
 PARTITION p20150728 VALUES LESS THAN (736173) ENGINE = InnoDB,
 PARTITION p20150729 VALUES LESS THAN (736174) ENGINE = InnoDB,
 PARTITION p20150730 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_1_201507`
--

LOCK TABLES `inet_session_log_1_201507` WRITE;
/*!40000 ALTER TABLE `inet_session_log_1_201507` DISABLE KEYS */;
INSERT INTO `inet_session_log_1_201507` VALUES (14,0,13,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-01 00:00:00','2015-07-01 23:59:59','2015-08-19 21:39:11',1,'',86400,0.00000,4),(15,0,14,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-02 00:00:00','2015-07-02 23:59:59','2015-08-19 21:39:11',1,'',86400,0.00000,4),(16,0,15,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-03 00:00:00','2015-07-03 23:59:59','2015-08-19 21:40:16',1,'',86400,0.00000,4),(17,0,16,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-04 00:00:00','2015-07-04 23:59:59','2015-08-19 21:40:16',1,'',86400,0.00000,4),(18,0,17,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-05 00:00:00','2015-07-05 23:59:59','2015-08-19 21:40:16',1,'',86400,0.00000,4),(19,0,18,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-06 00:00:00','2015-07-06 23:59:59','2015-08-19 21:40:16',1,'',86400,0.00000,4),(20,0,19,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-07 00:00:00','2015-07-07 23:59:59','2015-08-19 21:40:33',1,'',86400,0.00000,4),(21,0,20,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-08 00:00:00','2015-07-08 23:59:59','2015-08-19 21:40:33',1,'',86400,0.00000,4),(22,0,21,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-09 00:00:00','2015-07-09 23:59:59','2015-08-19 21:40:33',1,'',86400,0.00000,4),(23,0,22,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-10 00:00:00','2015-07-10 23:59:59','2015-08-19 21:40:33',1,'',86400,0.00000,4),(24,0,23,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-11 00:00:00','2015-07-11 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(25,0,24,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-12 00:00:00','2015-07-12 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(26,0,25,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-13 00:00:00','2015-07-13 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(27,0,26,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-14 00:00:00','2015-07-14 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(28,0,27,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-15 00:00:00','2015-07-15 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(29,0,28,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-16 00:00:00','2015-07-16 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(30,0,29,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-17 00:00:00','2015-07-17 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(31,0,30,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-18 00:00:00','2015-07-18 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(32,0,31,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-19 00:00:00','2015-07-19 23:59:59','2015-08-19 21:40:47',1,'',86400,0.00000,4),(33,0,32,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-20 00:00:00','2015-07-20 23:59:59','2015-08-19 21:41:17',1,'',86400,0.00000,4),(34,0,33,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-21 00:00:00','2015-07-21 23:59:59','2015-08-19 21:41:17',1,'',86400,0.00000,4),(35,0,34,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-22 00:00:00','2015-07-22 23:59:59','2015-08-19 21:41:17',1,'',86400,0.00000,4),(36,0,35,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-23 00:00:00','2015-07-23 23:59:59','2015-08-19 21:41:17',1,'',86400,0.00000,4),(37,0,36,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-24 00:00:00','2015-07-24 23:59:59','2015-08-19 21:41:18',1,'',86400,0.00000,4),(38,0,37,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-25 00:00:00','2015-07-25 23:59:59','2015-08-19 21:41:18',1,'',86400,0.00000,4),(39,0,38,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-26 00:00:00','2015-07-26 23:59:59','2015-08-19 21:41:18',1,'',86400,0.00000,4),(40,0,39,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-27 00:00:00','2015-07-27 23:59:59','2015-08-19 21:41:18',1,'',86400,0.00000,4),(41,0,40,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-28 00:00:00','2015-07-28 23:59:59','2015-08-19 21:41:18',1,'',86400,0.00000,4),(42,0,41,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-29 00:00:00','2015-07-29 23:59:59','2015-08-19 21:41:46',1,'',86400,0.00000,4),(43,0,42,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-30 00:00:00','2015-07-30 23:59:59','2015-08-19 21:41:46',1,'',86400,0.00000,4),(44,0,43,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-07-31 00:00:00','2015-07-31 23:59:59','2015-08-19 21:41:46',1,'',86400,0.00000,4);
/*!40000 ALTER TABLE `inet_session_log_1_201507` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_1_201508`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_1_201508` (
  `id` bigint(20) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `splittedId` bigint(20) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `parentConnectionId` bigint(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `devicePort` int(11) NOT NULL,
  `agentDeviceId` int(11) NOT NULL,
  `acctSessionId` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accessCode` smallint(6) NOT NULL,
  `servId` int(11) NOT NULL,
  `calledStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callingStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipResourceId` int(11) NOT NULL,
  `ipAddress` varbinary(24) DEFAULT NULL,
  `connectionStart` datetime NOT NULL,
  `sessionStart` datetime NOT NULL,
  `sessionStop` datetime DEFAULT NULL,
  `lastActive` datetime NOT NULL,
  `deviceState` smallint(6) NOT NULL,
  `deviceOptions` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(11) NOT NULL,
  `sessionCost` decimal(10,5) NOT NULL,
  `status` smallint(6) NOT NULL,
  KEY `id` (`id`),
  KEY `parentId` (`parentId`),
  KEY `nas` (`deviceId`,`devicePort`),
  KEY `agentDeviceId` (`agentDeviceId`),
  KEY `serv` (`servId`),
  KEY `connection` (`connectionId`),
  KEY `sessionStart` (`sessionStart`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY RANGE (TO_DAYS(sessionStart))
(PARTITION p20150801 VALUES LESS THAN (736177) ENGINE = InnoDB,
 PARTITION p20150802 VALUES LESS THAN (736178) ENGINE = InnoDB,
 PARTITION p20150803 VALUES LESS THAN (736179) ENGINE = InnoDB,
 PARTITION p20150804 VALUES LESS THAN (736180) ENGINE = InnoDB,
 PARTITION p20150805 VALUES LESS THAN (736181) ENGINE = InnoDB,
 PARTITION p20150806 VALUES LESS THAN (736182) ENGINE = InnoDB,
 PARTITION p20150807 VALUES LESS THAN (736183) ENGINE = InnoDB,
 PARTITION p20150808 VALUES LESS THAN (736184) ENGINE = InnoDB,
 PARTITION p20150809 VALUES LESS THAN (736185) ENGINE = InnoDB,
 PARTITION p20150810 VALUES LESS THAN (736186) ENGINE = InnoDB,
 PARTITION p20150811 VALUES LESS THAN (736187) ENGINE = InnoDB,
 PARTITION p20150812 VALUES LESS THAN (736188) ENGINE = InnoDB,
 PARTITION p20150813 VALUES LESS THAN (736189) ENGINE = InnoDB,
 PARTITION p20150814 VALUES LESS THAN (736190) ENGINE = InnoDB,
 PARTITION p20150815 VALUES LESS THAN (736191) ENGINE = InnoDB,
 PARTITION p20150816 VALUES LESS THAN (736192) ENGINE = InnoDB,
 PARTITION p20150817 VALUES LESS THAN (736193) ENGINE = InnoDB,
 PARTITION p20150818 VALUES LESS THAN (736194) ENGINE = InnoDB,
 PARTITION p20150819 VALUES LESS THAN (736195) ENGINE = InnoDB,
 PARTITION p20150820 VALUES LESS THAN (736196) ENGINE = InnoDB,
 PARTITION p20150821 VALUES LESS THAN (736197) ENGINE = InnoDB,
 PARTITION p20150822 VALUES LESS THAN (736198) ENGINE = InnoDB,
 PARTITION p20150823 VALUES LESS THAN (736199) ENGINE = InnoDB,
 PARTITION p20150824 VALUES LESS THAN (736200) ENGINE = InnoDB,
 PARTITION p20150825 VALUES LESS THAN (736201) ENGINE = InnoDB,
 PARTITION p20150826 VALUES LESS THAN (736202) ENGINE = InnoDB,
 PARTITION p20150827 VALUES LESS THAN (736203) ENGINE = InnoDB,
 PARTITION p20150828 VALUES LESS THAN (736204) ENGINE = InnoDB,
 PARTITION p20150829 VALUES LESS THAN (736205) ENGINE = InnoDB,
 PARTITION p20150830 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_1_201508`
--

LOCK TABLES `inet_session_log_1_201508` WRITE;
/*!40000 ALTER TABLE `inet_session_log_1_201508` DISABLE KEYS */;
INSERT INTO `inet_session_log_1_201508` VALUES (45,0,44,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-01 00:00:00','2015-08-01 23:59:59','2015-08-19 21:41:46',1,'',86400,0.00000,4),(46,0,45,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-02 00:00:00','2015-08-02 23:59:59','2015-08-19 21:41:48',1,'',86400,0.00000,4),(47,0,46,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-03 00:00:00','2015-08-03 23:59:59','2015-08-19 21:41:48',1,'',86400,0.00000,4),(48,0,47,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-04 00:00:00','2015-08-04 23:59:59','2015-08-19 21:41:48',1,'',86400,0.00000,4),(49,0,48,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-05 00:00:00','2015-08-05 23:59:59','2015-08-19 21:41:48',1,'',86400,0.00000,4),(50,0,49,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-06 00:00:00','2015-08-06 23:59:59','2015-08-19 21:41:48',1,'',86400,0.00000,4),(51,0,50,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-07 00:00:00','2015-08-07 23:59:59','2015-08-19 21:42:16',1,'',86400,0.00000,4),(52,0,51,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-08 00:00:00','2015-08-08 23:59:59','2015-08-19 21:42:16',1,'',86400,0.00000,4),(53,0,52,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-09 00:00:00','2015-08-09 23:59:59','2015-08-19 21:42:16',1,'',86400,0.00000,4),(54,0,53,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-10 00:00:00','2015-08-10 23:59:59','2015-08-19 21:42:16',1,'',86400,0.00000,4),(55,0,54,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-11 00:00:00','2015-08-11 23:59:59','2015-08-19 21:42:17',1,'',86400,0.00000,4),(56,0,55,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-12 00:00:00','2015-08-12 23:59:59','2015-08-19 21:42:17',1,'',86400,0.00000,4),(57,0,56,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-13 00:00:00','2015-08-13 23:59:59','2015-08-19 21:42:17',1,'',86400,0.00000,4),(58,0,57,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-14 00:00:00','2015-08-14 23:59:59','2015-08-19 21:42:17',1,'',86400,0.00000,4),(59,0,58,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-15 00:00:00','2015-08-15 23:59:59','2015-08-19 21:42:17',1,'',86400,0.00000,4),(60,0,59,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-16 00:00:00','2015-08-16 23:59:59','2015-08-19 21:42:46',1,'',86400,0.00000,4),(61,0,60,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-17 00:00:00','2015-08-17 23:59:59','2015-08-19 21:42:46',1,'',86400,0.00000,4),(62,0,61,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-18 00:00:00','2015-08-18 23:59:59','2015-08-19 21:42:46',1,'',86400,0.00000,4),(63,0,62,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-08-19 00:00:00','2015-08-31 23:59:59','2016-06-16 18:43:18',1,'',1123200,11.64002,4);
/*!40000 ALTER TABLE `inet_session_log_1_201508` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_1_201509`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_1_201509` (
  `id` bigint(20) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `splittedId` bigint(20) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `parentConnectionId` bigint(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `devicePort` int(11) NOT NULL,
  `agentDeviceId` int(11) NOT NULL,
  `acctSessionId` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accessCode` smallint(6) NOT NULL,
  `servId` int(11) NOT NULL,
  `calledStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callingStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipResourceId` int(11) NOT NULL,
  `ipAddress` varbinary(24) DEFAULT NULL,
  `connectionStart` datetime NOT NULL,
  `sessionStart` datetime NOT NULL,
  `sessionStop` datetime DEFAULT NULL,
  `lastActive` datetime NOT NULL,
  `deviceState` smallint(6) NOT NULL,
  `deviceOptions` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(11) NOT NULL,
  `sessionCost` decimal(10,5) NOT NULL,
  `status` smallint(6) NOT NULL,
  KEY `id` (`id`),
  KEY `parentId` (`parentId`),
  KEY `nas` (`deviceId`,`devicePort`),
  KEY `agentDeviceId` (`agentDeviceId`),
  KEY `serv` (`servId`),
  KEY `connection` (`connectionId`),
  KEY `sessionStart` (`sessionStart`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY RANGE (TO_DAYS(sessionStart))
(PARTITION p20150901 VALUES LESS THAN (736208) ENGINE = InnoDB,
 PARTITION p20150902 VALUES LESS THAN (736209) ENGINE = InnoDB,
 PARTITION p20150903 VALUES LESS THAN (736210) ENGINE = InnoDB,
 PARTITION p20150904 VALUES LESS THAN (736211) ENGINE = InnoDB,
 PARTITION p20150905 VALUES LESS THAN (736212) ENGINE = InnoDB,
 PARTITION p20150906 VALUES LESS THAN (736213) ENGINE = InnoDB,
 PARTITION p20150907 VALUES LESS THAN (736214) ENGINE = InnoDB,
 PARTITION p20150908 VALUES LESS THAN (736215) ENGINE = InnoDB,
 PARTITION p20150909 VALUES LESS THAN (736216) ENGINE = InnoDB,
 PARTITION p20150910 VALUES LESS THAN (736217) ENGINE = InnoDB,
 PARTITION p20150911 VALUES LESS THAN (736218) ENGINE = InnoDB,
 PARTITION p20150912 VALUES LESS THAN (736219) ENGINE = InnoDB,
 PARTITION p20150913 VALUES LESS THAN (736220) ENGINE = InnoDB,
 PARTITION p20150914 VALUES LESS THAN (736221) ENGINE = InnoDB,
 PARTITION p20150915 VALUES LESS THAN (736222) ENGINE = InnoDB,
 PARTITION p20150916 VALUES LESS THAN (736223) ENGINE = InnoDB,
 PARTITION p20150917 VALUES LESS THAN (736224) ENGINE = InnoDB,
 PARTITION p20150918 VALUES LESS THAN (736225) ENGINE = InnoDB,
 PARTITION p20150919 VALUES LESS THAN (736226) ENGINE = InnoDB,
 PARTITION p20150920 VALUES LESS THAN (736227) ENGINE = InnoDB,
 PARTITION p20150921 VALUES LESS THAN (736228) ENGINE = InnoDB,
 PARTITION p20150922 VALUES LESS THAN (736229) ENGINE = InnoDB,
 PARTITION p20150923 VALUES LESS THAN (736230) ENGINE = InnoDB,
 PARTITION p20150924 VALUES LESS THAN (736231) ENGINE = InnoDB,
 PARTITION p20150925 VALUES LESS THAN (736232) ENGINE = InnoDB,
 PARTITION p20150926 VALUES LESS THAN (736233) ENGINE = InnoDB,
 PARTITION p20150927 VALUES LESS THAN (736234) ENGINE = InnoDB,
 PARTITION p20150928 VALUES LESS THAN (736235) ENGINE = InnoDB,
 PARTITION p20150929 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_1_201509`
--

LOCK TABLES `inet_session_log_1_201509` WRITE;
/*!40000 ALTER TABLE `inet_session_log_1_201509` DISABLE KEYS */;
INSERT INTO `inet_session_log_1_201509` VALUES (64,0,63,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-01 00:00:00','2015-09-01 23:59:59','2016-06-16 18:43:18',1,'',86400,0.00000,4),(65,0,64,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-02 00:00:00','2015-09-02 23:59:59','2016-06-16 18:43:18',1,'',86400,0.00000,4),(66,0,65,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-03 00:00:00','2015-09-03 23:59:59','2016-06-16 18:44:02',1,'',86400,0.00000,4),(67,0,66,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-04 00:00:00','2015-09-04 23:59:59','2016-06-16 18:44:02',1,'',86400,0.00000,4),(68,0,67,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-05 00:00:00','2015-09-05 23:59:59','2016-06-16 18:44:02',1,'',86400,0.00000,4),(69,0,68,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-06 00:00:00','2015-09-06 23:59:59','2016-06-16 18:44:32',1,'',86400,0.00000,4),(70,0,69,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-07 00:00:00','2015-09-07 23:59:59','2016-06-16 18:44:32',1,'',86400,0.00000,4),(71,0,70,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-08 00:00:00','2015-09-08 23:59:59','2016-06-16 18:44:32',1,'',86400,0.00000,4),(72,0,71,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-09 00:00:00','2015-09-09 23:59:59','2016-06-16 18:45:02',1,'',86400,0.00000,4),(73,0,72,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-10 00:00:00','2015-09-10 23:59:59','2016-06-16 18:45:02',1,'',86400,0.00000,4),(74,0,73,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-11 00:00:00','2015-09-11 23:59:59','2016-06-16 18:45:02',1,'',86400,0.00000,4),(75,0,74,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-12 00:00:00','2015-09-12 23:59:59','2016-06-16 18:45:02',1,'',86400,0.00000,4),(76,0,75,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-13 00:00:00','2015-09-13 23:59:59','2016-06-16 18:45:32',1,'',86400,0.00000,4),(77,0,76,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-14 00:00:00','2015-09-14 23:59:59','2016-06-16 18:45:32',1,'',86400,0.00000,4),(78,0,77,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-15 00:00:00','2015-09-15 23:59:59','2016-06-16 18:45:32',1,'',86400,0.00000,4),(79,0,78,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-16 00:00:00','2015-09-16 23:59:59','2016-06-16 18:46:02',1,'',86400,0.00000,4),(80,0,79,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-17 00:00:00','2015-09-17 23:59:59','2016-06-16 18:46:02',1,'',86400,0.00000,4),(81,0,80,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-18 00:00:00','2015-09-18 23:59:59','2016-06-16 18:46:02',1,'',86400,0.00000,4),(82,0,81,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-19 00:00:00','2015-09-19 23:59:59','2016-06-16 18:46:32',1,'',86400,0.00000,4),(83,0,82,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-20 00:00:00','2015-09-20 23:59:59','2016-06-16 18:46:32',1,'',86400,0.00000,4),(84,0,83,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-21 00:00:00','2015-09-21 23:59:59','2016-06-16 18:46:32',1,'',86400,0.00000,4),(85,0,84,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-22 00:00:00','2015-09-22 23:59:59','2016-06-16 18:47:02',1,'',86400,0.00000,4),(86,0,85,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-23 00:00:00','2015-09-23 23:59:59','2016-06-16 18:47:02',1,'',86400,0.00000,4),(87,0,86,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-24 00:00:00','2015-09-24 23:59:59','2016-06-16 18:47:02',1,'',86400,0.00000,4),(88,0,87,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-25 00:00:00','2015-09-25 23:59:59','2016-06-16 18:47:32',1,'',86400,0.00000,4),(89,0,88,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-26 00:00:00','2015-09-26 23:59:59','2016-06-16 18:47:32',1,'',86400,0.00000,4),(90,0,89,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-27 00:00:00','2015-09-27 23:59:59','2016-06-16 18:47:32',1,'',86400,0.00000,4),(91,0,90,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-28 00:00:00','2015-09-28 23:59:59','2016-06-16 18:48:02',1,'',86400,0.00000,4),(92,0,91,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-29 00:00:00','2015-09-29 23:59:59','2016-06-16 18:48:02',1,'',86400,0.00000,4),(93,0,92,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-09-30 00:00:00','2015-09-30 23:59:59','2016-06-16 18:48:02',1,'',86400,0.00000,4);
/*!40000 ALTER TABLE `inet_session_log_1_201509` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_1_201510`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_1_201510` (
  `id` bigint(20) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `splittedId` bigint(20) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `parentConnectionId` bigint(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `devicePort` int(11) NOT NULL,
  `agentDeviceId` int(11) NOT NULL,
  `acctSessionId` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accessCode` smallint(6) NOT NULL,
  `servId` int(11) NOT NULL,
  `calledStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callingStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipResourceId` int(11) NOT NULL,
  `ipAddress` varbinary(24) DEFAULT NULL,
  `connectionStart` datetime NOT NULL,
  `sessionStart` datetime NOT NULL,
  `sessionStop` datetime DEFAULT NULL,
  `lastActive` datetime NOT NULL,
  `deviceState` smallint(6) NOT NULL,
  `deviceOptions` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(11) NOT NULL,
  `sessionCost` decimal(10,5) NOT NULL,
  `status` smallint(6) NOT NULL,
  KEY `id` (`id`),
  KEY `parentId` (`parentId`),
  KEY `nas` (`deviceId`,`devicePort`),
  KEY `agentDeviceId` (`agentDeviceId`),
  KEY `serv` (`servId`),
  KEY `connection` (`connectionId`),
  KEY `sessionStart` (`sessionStart`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY RANGE (TO_DAYS(sessionStart))
(PARTITION p20151001 VALUES LESS THAN (736238) ENGINE = InnoDB,
 PARTITION p20151002 VALUES LESS THAN (736239) ENGINE = InnoDB,
 PARTITION p20151003 VALUES LESS THAN (736240) ENGINE = InnoDB,
 PARTITION p20151004 VALUES LESS THAN (736241) ENGINE = InnoDB,
 PARTITION p20151005 VALUES LESS THAN (736242) ENGINE = InnoDB,
 PARTITION p20151006 VALUES LESS THAN (736243) ENGINE = InnoDB,
 PARTITION p20151007 VALUES LESS THAN (736244) ENGINE = InnoDB,
 PARTITION p20151008 VALUES LESS THAN (736245) ENGINE = InnoDB,
 PARTITION p20151009 VALUES LESS THAN (736246) ENGINE = InnoDB,
 PARTITION p20151010 VALUES LESS THAN (736247) ENGINE = InnoDB,
 PARTITION p20151011 VALUES LESS THAN (736248) ENGINE = InnoDB,
 PARTITION p20151012 VALUES LESS THAN (736249) ENGINE = InnoDB,
 PARTITION p20151013 VALUES LESS THAN (736250) ENGINE = InnoDB,
 PARTITION p20151014 VALUES LESS THAN (736251) ENGINE = InnoDB,
 PARTITION p20151015 VALUES LESS THAN (736252) ENGINE = InnoDB,
 PARTITION p20151016 VALUES LESS THAN (736253) ENGINE = InnoDB,
 PARTITION p20151017 VALUES LESS THAN (736254) ENGINE = InnoDB,
 PARTITION p20151018 VALUES LESS THAN (736255) ENGINE = InnoDB,
 PARTITION p20151019 VALUES LESS THAN (736256) ENGINE = InnoDB,
 PARTITION p20151020 VALUES LESS THAN (736257) ENGINE = InnoDB,
 PARTITION p20151021 VALUES LESS THAN (736258) ENGINE = InnoDB,
 PARTITION p20151022 VALUES LESS THAN (736259) ENGINE = InnoDB,
 PARTITION p20151023 VALUES LESS THAN (736260) ENGINE = InnoDB,
 PARTITION p20151024 VALUES LESS THAN (736261) ENGINE = InnoDB,
 PARTITION p20151025 VALUES LESS THAN (736262) ENGINE = InnoDB,
 PARTITION p20151026 VALUES LESS THAN (736263) ENGINE = InnoDB,
 PARTITION p20151027 VALUES LESS THAN (736264) ENGINE = InnoDB,
 PARTITION p20151028 VALUES LESS THAN (736265) ENGINE = InnoDB,
 PARTITION p20151029 VALUES LESS THAN (736266) ENGINE = InnoDB,
 PARTITION p20151030 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_1_201510`
--

LOCK TABLES `inet_session_log_1_201510` WRITE;
/*!40000 ALTER TABLE `inet_session_log_1_201510` DISABLE KEYS */;
INSERT INTO `inet_session_log_1_201510` VALUES (94,0,93,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-01 00:00:00','2015-10-01 23:59:59','2016-06-16 18:48:02',1,'',86400,0.00000,4),(95,0,94,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-02 00:00:00','2015-10-02 23:59:59','2016-06-16 18:48:32',1,'',86400,0.00000,4),(96,0,95,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-03 00:00:00','2015-10-03 23:59:59','2016-06-16 18:48:32',1,'',86400,0.00000,4),(97,0,96,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-04 00:00:00','2015-10-04 23:59:59','2016-06-16 18:48:32',1,'',86400,0.00000,4),(98,0,97,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-05 00:00:00','2015-10-05 23:59:59','2016-06-16 18:49:02',1,'',86400,0.00000,4),(99,0,98,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-06 00:00:00','2015-10-06 23:59:59','2016-06-16 18:49:02',1,'',86400,0.00000,4),(100,0,99,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-07 00:00:00','2015-10-07 23:59:59','2016-06-16 18:49:02',1,'',86400,0.00000,4),(101,0,100,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-08 00:00:00','2015-10-08 23:59:59','2016-06-16 18:49:32',1,'',86400,0.00000,4),(102,0,101,2,0,18,2,0,NULL,NULL,NULL,2,0,23,NULL,NULL,0,NULL,'2015-05-25 17:36:16','2015-10-09 00:00:00','2015-10-09 23:59:59','2016-06-16 18:49:32',1,'',86400,0.00000,4);
/*!40000 ALTER TABLE `inet_session_log_1_201510` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_1_201606`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_1_201606` (
  `id` bigint(20) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `splittedId` bigint(20) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `parentConnectionId` bigint(20) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `devicePort` int(11) NOT NULL,
  `agentDeviceId` int(11) NOT NULL,
  `acctSessionId` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accessCode` smallint(6) NOT NULL,
  `servId` int(11) NOT NULL,
  `calledStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callingStationId` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ipResourceId` int(11) NOT NULL,
  `ipAddress` varbinary(24) DEFAULT NULL,
  `connectionStart` datetime NOT NULL,
  `sessionStart` datetime NOT NULL,
  `sessionStop` datetime DEFAULT NULL,
  `lastActive` datetime NOT NULL,
  `deviceState` smallint(6) NOT NULL,
  `deviceOptions` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(11) NOT NULL,
  `sessionCost` decimal(10,5) NOT NULL,
  `status` smallint(6) NOT NULL,
  KEY `id` (`id`),
  KEY `parentId` (`parentId`),
  KEY `nas` (`deviceId`,`devicePort`),
  KEY `agentDeviceId` (`agentDeviceId`),
  KEY `serv` (`servId`),
  KEY `connection` (`connectionId`),
  KEY `sessionStart` (`sessionStart`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY RANGE (TO_DAYS(sessionStart))
(PARTITION p20160601 VALUES LESS THAN (736482) ENGINE = InnoDB,
 PARTITION p20160602 VALUES LESS THAN (736483) ENGINE = InnoDB,
 PARTITION p20160603 VALUES LESS THAN (736484) ENGINE = InnoDB,
 PARTITION p20160604 VALUES LESS THAN (736485) ENGINE = InnoDB,
 PARTITION p20160605 VALUES LESS THAN (736486) ENGINE = InnoDB,
 PARTITION p20160606 VALUES LESS THAN (736487) ENGINE = InnoDB,
 PARTITION p20160607 VALUES LESS THAN (736488) ENGINE = InnoDB,
 PARTITION p20160608 VALUES LESS THAN (736489) ENGINE = InnoDB,
 PARTITION p20160609 VALUES LESS THAN (736490) ENGINE = InnoDB,
 PARTITION p20160610 VALUES LESS THAN (736491) ENGINE = InnoDB,
 PARTITION p20160611 VALUES LESS THAN (736492) ENGINE = InnoDB,
 PARTITION p20160612 VALUES LESS THAN (736493) ENGINE = InnoDB,
 PARTITION p20160613 VALUES LESS THAN (736494) ENGINE = InnoDB,
 PARTITION p20160614 VALUES LESS THAN (736495) ENGINE = InnoDB,
 PARTITION p20160615 VALUES LESS THAN (736496) ENGINE = InnoDB,
 PARTITION p20160616 VALUES LESS THAN (736497) ENGINE = InnoDB,
 PARTITION p20160617 VALUES LESS THAN (736498) ENGINE = InnoDB,
 PARTITION p20160618 VALUES LESS THAN (736499) ENGINE = InnoDB,
 PARTITION p20160619 VALUES LESS THAN (736500) ENGINE = InnoDB,
 PARTITION p20160620 VALUES LESS THAN (736501) ENGINE = InnoDB,
 PARTITION p20160621 VALUES LESS THAN (736502) ENGINE = InnoDB,
 PARTITION p20160622 VALUES LESS THAN (736503) ENGINE = InnoDB,
 PARTITION p20160623 VALUES LESS THAN (736504) ENGINE = InnoDB,
 PARTITION p20160624 VALUES LESS THAN (736505) ENGINE = InnoDB,
 PARTITION p20160625 VALUES LESS THAN (736506) ENGINE = InnoDB,
 PARTITION p20160626 VALUES LESS THAN (736507) ENGINE = InnoDB,
 PARTITION p20160627 VALUES LESS THAN (736508) ENGINE = InnoDB,
 PARTITION p20160628 VALUES LESS THAN (736509) ENGINE = InnoDB,
 PARTITION p20160629 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_1_201606`
--

LOCK TABLES `inet_session_log_1_201606` WRITE;
/*!40000 ALTER TABLE `inet_session_log_1_201606` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_1_201606` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_account_1_201505`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_account_1_201505` (
  `contractId` int(11) NOT NULL,
  `sessionId` bigint(20) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`sessionId`,`serviceId`),
  KEY `serviceId` (`serviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_account_1_201505`
--

LOCK TABLES `inet_session_log_account_1_201505` WRITE;
/*!40000 ALTER TABLE `inet_session_log_account_1_201505` DISABLE KEYS */;
INSERT INTO `inet_session_log_account_1_201505` VALUES (3,2,3,14709320,1.40279),(3,2,4,35680840,0.00000),(3,2,7,20971520,0.00000),(3,2,8,6359,0.00000),(3,3,8,86400,0.00000),(3,4,8,432000,0.00000);
/*!40000 ALTER TABLE `inet_session_log_account_1_201505` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_account_1_201506`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_account_1_201506` (
  `contractId` int(11) NOT NULL,
  `sessionId` bigint(20) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`sessionId`,`serviceId`),
  KEY `serviceId` (`serviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_account_1_201506`
--

LOCK TABLES `inet_session_log_account_1_201506` WRITE;
/*!40000 ALTER TABLE `inet_session_log_account_1_201506` DISABLE KEYS */;
INSERT INTO `inet_session_log_account_1_201506` VALUES (3,5,8,86400,0.00000),(3,6,8,86400,0.00000),(3,7,4,43163,0.00000),(3,7,8,86400,0.00000),(3,8,7,43163,0.00000),(3,8,8,86400,0.00000),(3,9,4,43163,0.00000),(3,9,8,86400,0.00000),(3,10,7,43163,0.00000),(3,10,8,86400,0.00000),(3,11,4,5460,0.00000),(3,11,8,86400,0.00000),(3,12,7,5460,0.00000),(3,12,8,86400,0.00000),(3,13,3,61303388,5.84635),(3,13,4,82183122,0.00000),(3,13,7,20879734,0.00000),(3,13,8,1900800,0.00000);
/*!40000 ALTER TABLE `inet_session_log_account_1_201506` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_account_1_201507`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_account_1_201507` (
  `contractId` int(11) NOT NULL,
  `sessionId` bigint(20) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`sessionId`,`serviceId`),
  KEY `serviceId` (`serviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_account_1_201507`
--

LOCK TABLES `inet_session_log_account_1_201507` WRITE;
/*!40000 ALTER TABLE `inet_session_log_account_1_201507` DISABLE KEYS */;
INSERT INTO `inet_session_log_account_1_201507` VALUES (3,14,8,86400,0.00000),(3,15,8,86400,0.00000),(3,16,4,17273,0.00000),(3,16,8,86400,0.00000),(3,17,7,17273,0.00000),(3,17,8,86400,0.00000),(3,18,4,17273,0.00000),(3,18,8,86400,0.00000),(3,19,7,17273,0.00000),(3,19,8,86400,0.00000),(3,20,4,16265,0.00000),(3,20,8,86400,0.00000),(3,21,7,16265,0.00000),(3,21,8,86400,0.00000),(3,22,4,44982,0.00000),(3,22,8,86400,0.00000),(3,23,7,44982,0.00000),(3,23,8,86400,0.00000),(3,24,4,246212,0.00000),(3,24,8,86400,0.00000),(3,25,7,246212,0.00000),(3,25,8,86400,0.00000),(3,26,4,246212,0.00000),(3,26,8,86400,0.00000),(3,27,7,246212,0.00000),(3,27,8,86400,0.00000),(3,28,4,7288,0.00000),(3,28,8,86400,0.00000),(3,29,7,7288,0.00000),(3,29,8,86400,0.00000),(3,30,4,27418,0.00000),(3,30,8,86400,0.00000),(3,31,7,27418,0.00000),(3,31,8,86400,0.00000),(3,32,8,86400,0.00000),(3,33,4,273220,0.00000),(3,33,8,86400,0.00000),(3,34,7,273220,0.00000),(3,34,8,86400,0.00000),(3,35,4,273220,0.00000),(3,35,8,86400,0.00000),(3,36,7,273220,0.00000),(3,36,8,86400,0.00000),(3,37,4,52952,0.00000),(3,37,8,86400,0.00000),(3,38,7,52952,0.00000),(3,38,8,86400,0.00000),(3,39,4,14765,0.00000),(3,39,8,86400,0.00000),(3,40,7,14765,0.00000),(3,40,8,86400,0.00000),(3,41,8,86400,0.00000),(3,42,4,1821480,0.00000),(3,42,8,86400,0.00000),(3,43,7,1821480,0.00000),(3,43,8,86400,0.00000),(3,44,4,1821480,0.00000),(3,44,8,86400,0.00000);
/*!40000 ALTER TABLE `inet_session_log_account_1_201507` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_account_1_201508`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_account_1_201508` (
  `contractId` int(11) NOT NULL,
  `sessionId` bigint(20) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`sessionId`,`serviceId`),
  KEY `serviceId` (`serviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_account_1_201508`
--

LOCK TABLES `inet_session_log_account_1_201508` WRITE;
/*!40000 ALTER TABLE `inet_session_log_account_1_201508` DISABLE KEYS */;
INSERT INTO `inet_session_log_account_1_201508` VALUES (3,45,7,1821480,0.00000),(3,45,8,86400,0.00000),(3,46,4,22273,0.00000),(3,46,8,86400,0.00000),(3,47,7,22273,0.00000),(3,47,8,86400,0.00000),(3,48,4,214468,0.00000),(3,48,8,86400,0.00000),(3,49,7,214468,0.00000),(3,49,8,86400,0.00000),(3,50,8,86400,0.00000),(3,51,4,500148,0.00000),(3,51,8,86400,0.00000),(3,52,7,500148,0.00000),(3,52,8,86400,0.00000),(3,53,4,500148,0.00000),(3,53,8,86400,0.00000),(3,54,7,500148,0.00000),(3,54,8,86400,0.00000),(3,55,4,17029,0.00000),(3,55,8,86400,0.00000),(3,56,7,17029,0.00000),(3,56,8,86400,0.00000),(3,57,4,48630,0.00000),(3,57,8,86400,0.00000),(3,58,7,48630,0.00000),(3,58,8,86400,0.00000),(3,59,8,86400,0.00000),(3,60,4,686753,0.00000),(3,60,8,86400,0.00000),(3,61,7,686753,0.00000),(3,61,8,86400,0.00000),(3,62,4,686753,0.00000),(3,62,8,86400,0.00000),(3,63,3,122054473,11.64002),(3,63,4,135469751,0.00000),(3,63,7,14102031,0.00000),(3,63,8,1123200,0.00000);
/*!40000 ALTER TABLE `inet_session_log_account_1_201508` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_account_1_201509`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_account_1_201509` (
  `contractId` int(11) NOT NULL,
  `sessionId` bigint(20) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`sessionId`,`serviceId`),
  KEY `serviceId` (`serviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_account_1_201509`
--

LOCK TABLES `inet_session_log_account_1_201509` WRITE;
/*!40000 ALTER TABLE `inet_session_log_account_1_201509` DISABLE KEYS */;
INSERT INTO `inet_session_log_account_1_201509` VALUES (3,64,8,86400,0.00000),(3,65,8,86400,0.00000),(3,66,4,3146,0.00000),(3,66,8,86400,0.00000),(3,67,7,15544,0.00000),(3,67,8,86400,0.00000),(3,68,8,86400,0.00000),(3,69,4,17498,0.00000),(3,69,8,86400,0.00000),(3,70,7,219608,0.00000),(3,70,8,86400,0.00000),(3,71,8,86400,0.00000),(3,72,4,1230,0.00000),(3,72,8,86400,0.00000),(3,73,8,86400,0.00000),(3,74,8,86400,0.00000),(3,75,8,86400,0.00000),(3,76,4,2552,0.00000),(3,76,8,86400,0.00000),(3,77,7,266,0.00000),(3,77,8,86400,0.00000),(3,78,8,86400,0.00000),(3,79,4,13760,0.00000),(3,79,8,86400,0.00000),(3,80,7,100264,0.00000),(3,80,8,86400,0.00000),(3,81,8,86400,0.00000),(3,82,4,44191,0.00000),(3,82,8,86400,0.00000),(3,83,7,448706,0.00000),(3,83,8,86400,0.00000),(3,84,8,86400,0.00000),(3,85,4,49622,0.00000),(3,85,8,86400,0.00000),(3,86,7,680347,0.00000),(3,86,8,86400,0.00000),(3,87,8,86400,0.00000),(3,88,4,10491,0.00000),(3,88,8,86400,0.00000),(3,89,7,54433,0.00000),(3,89,8,86400,0.00000),(3,90,8,86400,0.00000),(3,91,4,1698,0.00000),(3,91,8,86400,0.00000),(3,92,8,86400,0.00000),(3,93,8,86400,0.00000);
/*!40000 ALTER TABLE `inet_session_log_account_1_201509` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_account_1_201510`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_account_1_201510` (
  `contractId` int(11) NOT NULL,
  `sessionId` bigint(20) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`sessionId`,`serviceId`),
  KEY `serviceId` (`serviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_account_1_201510`
--

LOCK TABLES `inet_session_log_account_1_201510` WRITE;
/*!40000 ALTER TABLE `inet_session_log_account_1_201510` DISABLE KEYS */;
INSERT INTO `inet_session_log_account_1_201510` VALUES (3,94,8,86400,0.00000),(3,95,4,18738,0.00000),(3,95,8,86400,0.00000),(3,96,7,53639,0.00000),(3,96,8,86400,0.00000),(3,97,8,86400,0.00000),(3,98,4,9873,0.00000),(3,98,8,86400,0.00000),(3,99,7,10975,0.00000),(3,99,8,86400,0.00000),(3,100,8,86400,0.00000),(3,101,4,19478,0.00000),(3,101,8,86400,0.00000),(3,102,7,204697,0.00000),(3,102,8,86400,0.00000);
/*!40000 ALTER TABLE `inet_session_log_account_1_201510` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_account_1_201606`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_account_1_201606` (
  `contractId` int(11) NOT NULL,
  `sessionId` bigint(20) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`sessionId`,`serviceId`),
  KEY `serviceId` (`serviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_account_1_201606`
--

LOCK TABLES `inet_session_log_account_1_201606` WRITE;
/*!40000 ALTER TABLE `inet_session_log_account_1_201606` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_account_1_201606` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_detail_1_201505`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_detail_1_201505` (
  `sessionId` bigint(20) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`sessionId`,`day`,`hour`,`trafficTypeId`,`deviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( sessionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_detail_1_201505`
--

LOCK TABLES `inet_session_log_detail_1_201505` WRITE;
/*!40000 ALTER TABLE `inet_session_log_detail_1_201505` DISABLE KEYS */;
INSERT INTO `inet_session_log_detail_1_201505` VALUES (2,25,17,0,0,1424),(2,25,17,1,18,6533463),(2,25,17,2,18,6533463),(2,25,18,0,0,3600),(2,25,18,1,18,24904557),(2,25,18,2,18,24904557),(2,25,19,0,0,3600),(2,25,19,1,18,4242820),(2,25,19,2,18,4242820),(2,25,20,0,0,3600),(2,25,21,0,0,3600),(2,25,22,0,0,3600),(2,25,23,0,0,3600),(3,26,0,0,0,3600),(3,26,1,0,0,3600),(3,26,2,0,0,3600),(3,26,3,0,0,3600),(3,26,4,0,0,3600),(3,26,5,0,0,3600),(3,26,6,0,0,3600),(3,26,7,0,0,3600),(3,26,8,0,0,3600),(3,26,9,0,0,3600),(3,26,10,0,0,3600),(3,26,11,0,0,3600),(3,26,12,0,0,3600),(3,26,13,0,0,3600),(3,26,14,0,0,3600),(3,26,15,0,0,3600),(3,26,16,0,0,3600),(3,26,17,0,0,3600),(3,26,18,0,0,3600),(3,26,19,0,0,3600),(3,26,20,0,0,3600),(3,26,21,0,0,3600),(3,26,22,0,0,3600),(3,26,23,0,0,3600),(4,27,0,0,0,3600),(4,27,1,0,0,3600),(4,27,2,0,0,3600),(4,27,3,0,0,3600),(4,27,4,0,0,3600),(4,27,5,0,0,3600),(4,27,6,0,0,3600),(4,27,7,0,0,3600),(4,27,8,0,0,3600),(4,27,9,0,0,3600),(4,27,10,0,0,3600),(4,27,11,0,0,3600),(4,27,12,0,0,3600),(4,27,13,0,0,3600),(4,27,14,0,0,3600),(4,27,15,0,0,3600),(4,27,16,0,0,3600),(4,27,17,0,0,3600),(4,27,18,0,0,3600),(4,27,19,0,0,3600),(4,27,20,0,0,3600),(4,27,21,0,0,3600),(4,27,22,0,0,3600),(4,27,23,0,0,349200);
/*!40000 ALTER TABLE `inet_session_log_detail_1_201505` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_detail_1_201506`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_detail_1_201506` (
  `sessionId` bigint(20) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`sessionId`,`day`,`hour`,`trafficTypeId`,`deviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( sessionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_detail_1_201506`
--

LOCK TABLES `inet_session_log_detail_1_201506` WRITE;
/*!40000 ALTER TABLE `inet_session_log_detail_1_201506` DISABLE KEYS */;
INSERT INTO `inet_session_log_detail_1_201506` VALUES (8,4,0,0,0,3600),(8,4,1,0,0,3600),(8,4,2,0,0,3600),(8,4,3,0,0,3600),(8,4,4,0,0,3600),(8,4,5,0,0,3600),(8,4,6,0,0,3600),(8,4,7,0,0,3600),(8,4,8,0,0,3600),(8,4,9,0,0,3600),(8,4,10,0,0,3600),(8,4,11,0,0,3600),(8,4,12,0,0,3600),(8,4,13,0,0,3600),(8,4,14,0,0,3600),(8,4,15,0,0,3600),(8,4,16,0,0,3600),(8,4,17,0,0,3600),(8,4,18,0,0,3600),(8,4,19,0,0,3600),(8,4,20,0,0,3600),(8,4,21,0,0,3600),(8,4,22,0,0,3600),(8,4,23,0,0,3600),(8,4,23,1,18,43163),(9,5,0,0,0,3600),(9,5,1,0,0,3600),(9,5,2,0,0,3600),(9,5,3,0,0,3600),(9,5,4,0,0,3600),(9,5,5,0,0,3600),(9,5,6,0,0,3600),(9,5,7,0,0,3600),(9,5,8,0,0,3600),(9,5,9,0,0,3600),(9,5,10,0,0,3600),(9,5,11,0,0,3600),(9,5,12,0,0,3600),(9,5,13,0,0,3600),(9,5,14,0,0,3600),(9,5,15,0,0,3600),(9,5,16,0,0,3600),(9,5,17,0,0,3600),(9,5,18,0,0,3600),(9,5,19,0,0,3600),(9,5,20,0,0,3600),(9,5,21,0,0,3600),(9,5,22,0,0,3600),(9,5,23,0,0,3600),(9,5,23,2,18,43163),(10,6,0,0,0,3600),(10,6,1,0,0,3600),(10,6,2,0,0,3600),(10,6,3,0,0,3600),(10,6,4,0,0,3600),(10,6,5,0,0,3600),(10,6,6,0,0,3600),(10,6,7,0,0,3600),(10,6,8,0,0,3600),(10,6,9,0,0,3600),(10,6,10,0,0,3600),(10,6,11,0,0,3600),(10,6,12,0,0,3600),(10,6,13,0,0,3600),(10,6,14,0,0,3600),(10,6,15,0,0,3600),(10,6,16,0,0,3600),(10,6,17,0,0,3600),(10,6,18,0,0,3600),(10,6,19,0,0,3600),(10,6,20,0,0,3600),(10,6,21,0,0,3600),(10,6,22,0,0,3600),(10,6,23,0,0,3600),(10,6,23,1,18,43163),(11,7,0,0,0,3600),(11,7,1,0,0,3600),(11,7,2,0,0,3600),(11,7,3,0,0,3600),(11,7,4,0,0,3600),(11,7,5,0,0,3600),(11,7,6,0,0,3600),(11,7,7,0,0,3600),(11,7,8,0,0,3600),(11,7,9,0,0,3600),(11,7,10,0,0,3600),(11,7,11,0,0,3600),(11,7,12,0,0,3600),(11,7,13,0,0,3600),(11,7,14,0,0,3600),(11,7,15,0,0,3600),(11,7,16,0,0,3600),(11,7,17,0,0,3600),(11,7,18,0,0,3600),(11,7,19,0,0,3600),(11,7,20,0,0,3600),(11,7,21,0,0,3600),(11,7,22,0,0,3600),(11,7,23,0,0,3600),(11,7,23,2,18,5460),(12,8,0,0,0,3600),(12,8,1,0,0,3600),(12,8,2,0,0,3600),(12,8,3,0,0,3600),(12,8,4,0,0,3600),(12,8,5,0,0,3600),(12,8,6,0,0,3600),(12,8,7,0,0,3600),(12,8,8,0,0,3600),(12,8,9,0,0,3600),(12,8,10,0,0,3600),(12,8,11,0,0,3600),(12,8,12,0,0,3600),(12,8,13,0,0,3600),(12,8,14,0,0,3600),(12,8,15,0,0,3600),(12,8,16,0,0,3600),(12,8,17,0,0,3600),(12,8,18,0,0,3600),(12,8,19,0,0,3600),(12,8,20,0,0,3600),(12,8,21,0,0,3600),(12,8,22,0,0,3600),(12,8,23,0,0,3600),(12,8,23,1,18,5460),(5,1,0,0,0,3600),(5,1,1,0,0,3600),(5,1,2,0,0,3600),(5,1,3,0,0,3600),(5,1,4,0,0,3600),(5,1,5,0,0,3600),(5,1,6,0,0,3600),(5,1,7,0,0,3600),(5,1,8,0,0,3600),(5,1,9,0,0,3600),(5,1,10,0,0,3600),(5,1,11,0,0,3600),(5,1,12,0,0,3600),(5,1,13,0,0,3600),(5,1,14,0,0,3600),(5,1,15,0,0,3600),(5,1,16,0,0,3600),(5,1,17,0,0,3600),(5,1,18,0,0,3600),(5,1,19,0,0,3600),(5,1,20,0,0,3600),(5,1,21,0,0,3600),(5,1,22,0,0,3600),(5,1,23,0,0,3600),(13,9,0,0,0,3600),(13,9,1,0,0,3600),(13,9,2,0,0,3600),(13,9,3,0,0,3600),(13,9,4,0,0,3600),(13,9,5,0,0,3600),(13,9,6,0,0,3600),(13,9,7,0,0,3600),(13,9,8,0,0,3600),(13,9,9,0,0,3600),(13,9,10,0,0,3600),(13,9,11,0,0,3600),(13,9,12,0,0,3600),(13,9,13,0,0,3600),(13,9,14,0,0,3600),(13,9,15,0,0,3600),(13,9,16,0,0,3600),(13,9,17,0,0,3600),(13,9,18,0,0,3600),(13,9,19,0,0,3030),(13,9,19,1,18,82183122),(13,9,19,2,18,82183122),(13,9,20,0,0,3600),(13,9,21,0,0,3600),(13,9,22,0,0,3600),(13,9,23,0,0,1818000),(6,2,0,0,0,3600),(6,2,1,0,0,3600),(6,2,2,0,0,3600),(6,2,3,0,0,3600),(6,2,4,0,0,3600),(6,2,5,0,0,3600),(6,2,6,0,0,3600),(6,2,7,0,0,3600),(6,2,8,0,0,3600),(6,2,9,0,0,3600),(6,2,10,0,0,3600),(6,2,11,0,0,3600),(6,2,12,0,0,3600),(6,2,13,0,0,3600),(6,2,14,0,0,3600),(6,2,15,0,0,3600),(6,2,16,0,0,3600),(6,2,17,0,0,3600),(6,2,18,0,0,3600),(6,2,19,0,0,3600),(6,2,20,0,0,3600),(6,2,21,0,0,3600),(6,2,22,0,0,3600),(6,2,23,0,0,3600),(7,3,0,0,0,3600),(7,3,1,0,0,3600),(7,3,2,0,0,3600),(7,3,3,0,0,3600),(7,3,4,0,0,3600),(7,3,5,0,0,3600),(7,3,6,0,0,3600),(7,3,7,0,0,3600),(7,3,8,0,0,3600),(7,3,9,0,0,3600),(7,3,10,0,0,3600),(7,3,11,0,0,3600),(7,3,12,0,0,3600),(7,3,13,0,0,3600),(7,3,14,0,0,3600),(7,3,15,0,0,3600),(7,3,16,0,0,3600),(7,3,17,0,0,3600),(7,3,18,0,0,3600),(7,3,19,0,0,3600),(7,3,20,0,0,3600),(7,3,21,0,0,3600),(7,3,22,0,0,3600),(7,3,23,0,0,3600),(7,3,23,2,18,43163);
/*!40000 ALTER TABLE `inet_session_log_detail_1_201506` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_detail_1_201507`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_detail_1_201507` (
  `sessionId` bigint(20) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`sessionId`,`day`,`hour`,`trafficTypeId`,`deviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( sessionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_detail_1_201507`
--

LOCK TABLES `inet_session_log_detail_1_201507` WRITE;
/*!40000 ALTER TABLE `inet_session_log_detail_1_201507` DISABLE KEYS */;
INSERT INTO `inet_session_log_detail_1_201507` VALUES (16,3,0,0,0,3600),(16,3,1,0,0,3600),(16,3,2,0,0,3600),(16,3,3,0,0,3600),(16,3,4,0,0,3600),(16,3,5,0,0,3600),(16,3,6,0,0,3600),(16,3,7,0,0,3600),(16,3,8,0,0,3600),(16,3,9,0,0,3600),(16,3,10,0,0,3600),(16,3,11,0,0,3600),(16,3,12,0,0,3600),(16,3,13,0,0,3600),(16,3,14,0,0,3600),(16,3,15,0,0,3600),(16,3,16,0,0,3600),(16,3,17,0,0,3600),(16,3,18,0,0,3600),(16,3,19,0,0,3600),(16,3,20,0,0,3600),(16,3,21,0,0,3600),(16,3,22,0,0,3600),(16,3,23,0,0,3600),(16,3,23,2,18,17273),(24,11,0,0,0,3600),(24,11,1,0,0,3600),(24,11,2,0,0,3600),(24,11,3,0,0,3600),(24,11,4,0,0,3600),(24,11,5,0,0,3600),(24,11,6,0,0,3600),(24,11,7,0,0,3600),(24,11,8,0,0,3600),(24,11,9,0,0,3600),(24,11,10,0,0,3600),(24,11,11,0,0,3600),(24,11,12,0,0,3600),(24,11,13,0,0,3600),(24,11,14,0,0,3600),(24,11,15,0,0,3600),(24,11,16,0,0,3600),(24,11,17,0,0,3600),(24,11,18,0,0,3600),(24,11,19,0,0,3600),(24,11,20,0,0,3600),(24,11,21,0,0,3600),(24,11,22,0,0,3600),(24,11,23,0,0,3600),(24,11,23,2,18,246212),(32,19,0,0,0,3600),(32,19,1,0,0,3600),(32,19,2,0,0,3600),(32,19,3,0,0,3600),(32,19,4,0,0,3600),(32,19,5,0,0,3600),(32,19,6,0,0,3600),(32,19,7,0,0,3600),(32,19,8,0,0,3600),(32,19,9,0,0,3600),(32,19,10,0,0,3600),(32,19,11,0,0,3600),(32,19,12,0,0,3600),(32,19,13,0,0,3600),(32,19,14,0,0,3600),(32,19,15,0,0,3600),(32,19,16,0,0,3600),(32,19,17,0,0,3600),(32,19,18,0,0,3600),(32,19,19,0,0,3600),(32,19,20,0,0,3600),(32,19,21,0,0,3600),(32,19,22,0,0,3600),(32,19,23,0,0,3600),(40,27,0,0,0,3600),(40,27,1,0,0,3600),(40,27,2,0,0,3600),(40,27,3,0,0,3600),(40,27,4,0,0,3600),(40,27,5,0,0,3600),(40,27,6,0,0,3600),(40,27,7,0,0,3600),(40,27,8,0,0,3600),(40,27,9,0,0,3600),(40,27,10,0,0,3600),(40,27,11,0,0,3600),(40,27,12,0,0,3600),(40,27,13,0,0,3600),(40,27,14,0,0,3600),(40,27,15,0,0,3600),(40,27,16,0,0,3600),(40,27,17,0,0,3600),(40,27,18,0,0,3600),(40,27,19,0,0,3600),(40,27,20,0,0,3600),(40,27,21,0,0,3600),(40,27,22,0,0,3600),(40,27,23,0,0,3600),(40,27,23,1,18,14765),(17,4,0,0,0,3600),(17,4,1,0,0,3600),(17,4,2,0,0,3600),(17,4,3,0,0,3600),(17,4,4,0,0,3600),(17,4,5,0,0,3600),(17,4,6,0,0,3600),(17,4,7,0,0,3600),(17,4,8,0,0,3600),(17,4,9,0,0,3600),(17,4,10,0,0,3600),(17,4,11,0,0,3600),(17,4,12,0,0,3600),(17,4,13,0,0,3600),(17,4,14,0,0,3600),(17,4,15,0,0,3600),(17,4,16,0,0,3600),(17,4,17,0,0,3600),(17,4,18,0,0,3600),(17,4,19,0,0,3600),(17,4,20,0,0,3600),(17,4,21,0,0,3600),(17,4,22,0,0,3600),(17,4,23,0,0,3600),(17,4,23,1,18,17273),(25,12,0,0,0,3600),(25,12,1,0,0,3600),(25,12,2,0,0,3600),(25,12,3,0,0,3600),(25,12,4,0,0,3600),(25,12,5,0,0,3600),(25,12,6,0,0,3600),(25,12,7,0,0,3600),(25,12,8,0,0,3600),(25,12,9,0,0,3600),(25,12,10,0,0,3600),(25,12,11,0,0,3600),(25,12,12,0,0,3600),(25,12,13,0,0,3600),(25,12,14,0,0,3600),(25,12,15,0,0,3600),(25,12,16,0,0,3600),(25,12,17,0,0,3600),(25,12,18,0,0,3600),(25,12,19,0,0,3600),(25,12,20,0,0,3600),(25,12,21,0,0,3600),(25,12,22,0,0,3600),(25,12,23,0,0,3600),(25,12,23,1,18,246212),(33,20,0,0,0,3600),(33,20,1,0,0,3600),(33,20,2,0,0,3600),(33,20,3,0,0,3600),(33,20,4,0,0,3600),(33,20,5,0,0,3600),(33,20,6,0,0,3600),(33,20,7,0,0,3600),(33,20,8,0,0,3600),(33,20,9,0,0,3600),(33,20,10,0,0,3600),(33,20,11,0,0,3600),(33,20,12,0,0,3600),(33,20,13,0,0,3600),(33,20,14,0,0,3600),(33,20,15,0,0,3600),(33,20,16,0,0,3600),(33,20,17,0,0,3600),(33,20,18,0,0,3600),(33,20,19,0,0,3600),(33,20,20,0,0,3600),(33,20,21,0,0,3600),(33,20,22,0,0,3600),(33,20,23,0,0,3600),(33,20,23,2,18,273220),(41,28,0,0,0,3600),(41,28,1,0,0,3600),(41,28,2,0,0,3600),(41,28,3,0,0,3600),(41,28,4,0,0,3600),(41,28,5,0,0,3600),(41,28,6,0,0,3600),(41,28,7,0,0,3600),(41,28,8,0,0,3600),(41,28,9,0,0,3600),(41,28,10,0,0,3600),(41,28,11,0,0,3600),(41,28,12,0,0,3600),(41,28,13,0,0,3600),(41,28,14,0,0,3600),(41,28,15,0,0,3600),(41,28,16,0,0,3600),(41,28,17,0,0,3600),(41,28,18,0,0,3600),(41,28,19,0,0,3600),(41,28,20,0,0,3600),(41,28,21,0,0,3600),(41,28,22,0,0,3600),(41,28,23,0,0,3600),(18,5,0,0,0,3600),(18,5,1,0,0,3600),(18,5,2,0,0,3600),(18,5,3,0,0,3600),(18,5,4,0,0,3600),(18,5,5,0,0,3600),(18,5,6,0,0,3600),(18,5,7,0,0,3600),(18,5,8,0,0,3600),(18,5,9,0,0,3600),(18,5,10,0,0,3600),(18,5,11,0,0,3600),(18,5,12,0,0,3600),(18,5,13,0,0,3600),(18,5,14,0,0,3600),(18,5,15,0,0,3600),(18,5,16,0,0,3600),(18,5,17,0,0,3600),(18,5,18,0,0,3600),(18,5,19,0,0,3600),(18,5,20,0,0,3600),(18,5,21,0,0,3600),(18,5,22,0,0,3600),(18,5,23,0,0,3600),(18,5,23,2,18,17273),(26,13,0,0,0,3600),(26,13,1,0,0,3600),(26,13,2,0,0,3600),(26,13,3,0,0,3600),(26,13,4,0,0,3600),(26,13,5,0,0,3600),(26,13,6,0,0,3600),(26,13,7,0,0,3600),(26,13,8,0,0,3600),(26,13,9,0,0,3600),(26,13,10,0,0,3600),(26,13,11,0,0,3600),(26,13,12,0,0,3600),(26,13,13,0,0,3600),(26,13,14,0,0,3600),(26,13,15,0,0,3600),(26,13,16,0,0,3600),(26,13,17,0,0,3600),(26,13,18,0,0,3600),(26,13,19,0,0,3600),(26,13,20,0,0,3600),(26,13,21,0,0,3600),(26,13,22,0,0,3600),(26,13,23,0,0,3600),(26,13,23,2,18,246212),(34,21,0,0,0,3600),(34,21,1,0,0,3600),(34,21,2,0,0,3600),(34,21,3,0,0,3600),(34,21,4,0,0,3600),(34,21,5,0,0,3600),(34,21,6,0,0,3600),(34,21,7,0,0,3600),(34,21,8,0,0,3600),(34,21,9,0,0,3600),(34,21,10,0,0,3600),(34,21,11,0,0,3600),(34,21,12,0,0,3600),(34,21,13,0,0,3600),(34,21,14,0,0,3600),(34,21,15,0,0,3600),(34,21,16,0,0,3600),(34,21,17,0,0,3600),(34,21,18,0,0,3600),(34,21,19,0,0,3600),(34,21,20,0,0,3600),(34,21,21,0,0,3600),(34,21,22,0,0,3600),(34,21,23,0,0,3600),(34,21,23,1,18,273220),(42,29,0,0,0,3600),(42,29,1,0,0,3600),(42,29,2,0,0,3600),(42,29,3,0,0,3600),(42,29,4,0,0,3600),(42,29,5,0,0,3600),(42,29,6,0,0,3600),(42,29,7,0,0,3600),(42,29,8,0,0,3600),(42,29,9,0,0,3600),(42,29,10,0,0,3600),(42,29,11,0,0,3600),(42,29,12,0,0,3600),(42,29,13,0,0,3600),(42,29,14,0,0,3600),(42,29,15,0,0,3600),(42,29,16,0,0,3600),(42,29,17,0,0,3600),(42,29,18,0,0,3600),(42,29,19,0,0,3600),(42,29,20,0,0,3600),(42,29,21,0,0,3600),(42,29,22,0,0,3600),(42,29,23,0,0,3600),(42,29,23,2,18,1821480),(19,6,0,0,0,3600),(19,6,1,0,0,3600),(19,6,2,0,0,3600),(19,6,3,0,0,3600),(19,6,4,0,0,3600),(19,6,5,0,0,3600),(19,6,6,0,0,3600),(19,6,7,0,0,3600),(19,6,8,0,0,3600),(19,6,9,0,0,3600),(19,6,10,0,0,3600),(19,6,11,0,0,3600),(19,6,12,0,0,3600),(19,6,13,0,0,3600),(19,6,14,0,0,3600),(19,6,15,0,0,3600),(19,6,16,0,0,3600),(19,6,17,0,0,3600),(19,6,18,0,0,3600),(19,6,19,0,0,3600),(19,6,20,0,0,3600),(19,6,21,0,0,3600),(19,6,22,0,0,3600),(19,6,23,0,0,3600),(19,6,23,1,18,17273),(27,14,0,0,0,3600),(27,14,1,0,0,3600),(27,14,2,0,0,3600),(27,14,3,0,0,3600),(27,14,4,0,0,3600),(27,14,5,0,0,3600),(27,14,6,0,0,3600),(27,14,7,0,0,3600),(27,14,8,0,0,3600),(27,14,9,0,0,3600),(27,14,10,0,0,3600),(27,14,11,0,0,3600),(27,14,12,0,0,3600),(27,14,13,0,0,3600),(27,14,14,0,0,3600),(27,14,15,0,0,3600),(27,14,16,0,0,3600),(27,14,17,0,0,3600),(27,14,18,0,0,3600),(27,14,19,0,0,3600),(27,14,20,0,0,3600),(27,14,21,0,0,3600),(27,14,22,0,0,3600),(27,14,23,0,0,3600),(27,14,23,1,18,246212),(35,22,0,0,0,3600),(35,22,1,0,0,3600),(35,22,2,0,0,3600),(35,22,3,0,0,3600),(35,22,4,0,0,3600),(35,22,5,0,0,3600),(35,22,6,0,0,3600),(35,22,7,0,0,3600),(35,22,8,0,0,3600),(35,22,9,0,0,3600),(35,22,10,0,0,3600),(35,22,11,0,0,3600),(35,22,12,0,0,3600),(35,22,13,0,0,3600),(35,22,14,0,0,3600),(35,22,15,0,0,3600),(35,22,16,0,0,3600),(35,22,17,0,0,3600),(35,22,18,0,0,3600),(35,22,19,0,0,3600),(35,22,20,0,0,3600),(35,22,21,0,0,3600),(35,22,22,0,0,3600),(35,22,23,0,0,3600),(35,22,23,2,18,273220),(43,30,0,0,0,3600),(43,30,1,0,0,3600),(43,30,2,0,0,3600),(43,30,3,0,0,3600),(43,30,4,0,0,3600),(43,30,5,0,0,3600),(43,30,6,0,0,3600),(43,30,7,0,0,3600),(43,30,8,0,0,3600),(43,30,9,0,0,3600),(43,30,10,0,0,3600),(43,30,11,0,0,3600),(43,30,12,0,0,3600),(43,30,13,0,0,3600),(43,30,14,0,0,3600),(43,30,15,0,0,3600),(43,30,16,0,0,3600),(43,30,17,0,0,3600),(43,30,18,0,0,3600),(43,30,19,0,0,3600),(43,30,20,0,0,3600),(43,30,21,0,0,3600),(43,30,22,0,0,3600),(43,30,23,0,0,3600),(43,30,23,1,18,1821480),(20,7,0,0,0,3600),(20,7,1,0,0,3600),(20,7,2,0,0,3600),(20,7,3,0,0,3600),(20,7,4,0,0,3600),(20,7,5,0,0,3600),(20,7,6,0,0,3600),(20,7,7,0,0,3600),(20,7,8,0,0,3600),(20,7,9,0,0,3600),(20,7,10,0,0,3600),(20,7,11,0,0,3600),(20,7,12,0,0,3600),(20,7,13,0,0,3600),(20,7,14,0,0,3600),(20,7,15,0,0,3600),(20,7,16,0,0,3600),(20,7,17,0,0,3600),(20,7,18,0,0,3600),(20,7,19,0,0,3600),(20,7,20,0,0,3600),(20,7,21,0,0,3600),(20,7,22,0,0,3600),(20,7,23,0,0,3600),(20,7,23,2,18,16265),(28,15,0,0,0,3600),(28,15,1,0,0,3600),(28,15,2,0,0,3600),(28,15,3,0,0,3600),(28,15,4,0,0,3600),(28,15,5,0,0,3600),(28,15,6,0,0,3600),(28,15,7,0,0,3600),(28,15,8,0,0,3600),(28,15,9,0,0,3600),(28,15,10,0,0,3600),(28,15,11,0,0,3600),(28,15,12,0,0,3600),(28,15,13,0,0,3600),(28,15,14,0,0,3600),(28,15,15,0,0,3600),(28,15,16,0,0,3600),(28,15,17,0,0,3600),(28,15,18,0,0,3600),(28,15,19,0,0,3600),(28,15,20,0,0,3600),(28,15,21,0,0,3600),(28,15,22,0,0,3600),(28,15,23,0,0,3600),(28,15,23,2,18,7288),(36,23,0,0,0,3600),(36,23,1,0,0,3600),(36,23,2,0,0,3600),(36,23,3,0,0,3600),(36,23,4,0,0,3600),(36,23,5,0,0,3600),(36,23,6,0,0,3600),(36,23,7,0,0,3600),(36,23,8,0,0,3600),(36,23,9,0,0,3600),(36,23,10,0,0,3600),(36,23,11,0,0,3600),(36,23,12,0,0,3600),(36,23,13,0,0,3600),(36,23,14,0,0,3600),(36,23,15,0,0,3600),(36,23,16,0,0,3600),(36,23,17,0,0,3600),(36,23,18,0,0,3600),(36,23,19,0,0,3600),(36,23,20,0,0,3600),(36,23,21,0,0,3600),(36,23,22,0,0,3600),(36,23,23,0,0,3600),(36,23,23,1,18,273220),(44,31,0,0,0,3600),(44,31,1,0,0,3600),(44,31,2,0,0,3600),(44,31,3,0,0,3600),(44,31,4,0,0,3600),(44,31,5,0,0,3600),(44,31,6,0,0,3600),(44,31,7,0,0,3600),(44,31,8,0,0,3600),(44,31,9,0,0,3600),(44,31,10,0,0,3600),(44,31,11,0,0,3600),(44,31,12,0,0,3600),(44,31,13,0,0,3600),(44,31,14,0,0,3600),(44,31,15,0,0,3600),(44,31,16,0,0,3600),(44,31,17,0,0,3600),(44,31,18,0,0,3600),(44,31,19,0,0,3600),(44,31,20,0,0,3600),(44,31,21,0,0,3600),(44,31,22,0,0,3600),(44,31,23,0,0,3600),(44,31,23,2,18,1821480),(21,8,0,0,0,3600),(21,8,1,0,0,3600),(21,8,2,0,0,3600),(21,8,3,0,0,3600),(21,8,4,0,0,3600),(21,8,5,0,0,3600),(21,8,6,0,0,3600),(21,8,7,0,0,3600),(21,8,8,0,0,3600),(21,8,9,0,0,3600),(21,8,10,0,0,3600),(21,8,11,0,0,3600),(21,8,12,0,0,3600),(21,8,13,0,0,3600),(21,8,14,0,0,3600),(21,8,15,0,0,3600),(21,8,16,0,0,3600),(21,8,17,0,0,3600),(21,8,18,0,0,3600),(21,8,19,0,0,3600),(21,8,20,0,0,3600),(21,8,21,0,0,3600),(21,8,22,0,0,3600),(21,8,23,0,0,3600),(21,8,23,1,18,16265),(29,16,0,0,0,3600),(29,16,1,0,0,3600),(29,16,2,0,0,3600),(29,16,3,0,0,3600),(29,16,4,0,0,3600),(29,16,5,0,0,3600),(29,16,6,0,0,3600),(29,16,7,0,0,3600),(29,16,8,0,0,3600),(29,16,9,0,0,3600),(29,16,10,0,0,3600),(29,16,11,0,0,3600),(29,16,12,0,0,3600),(29,16,13,0,0,3600),(29,16,14,0,0,3600),(29,16,15,0,0,3600),(29,16,16,0,0,3600),(29,16,17,0,0,3600),(29,16,18,0,0,3600),(29,16,19,0,0,3600),(29,16,20,0,0,3600),(29,16,21,0,0,3600),(29,16,22,0,0,3600),(29,16,23,0,0,3600),(29,16,23,1,18,7288),(37,24,0,0,0,3600),(37,24,1,0,0,3600),(37,24,2,0,0,3600),(37,24,3,0,0,3600),(37,24,4,0,0,3600),(37,24,5,0,0,3600),(37,24,6,0,0,3600),(37,24,7,0,0,3600),(37,24,8,0,0,3600),(37,24,9,0,0,3600),(37,24,10,0,0,3600),(37,24,11,0,0,3600),(37,24,12,0,0,3600),(37,24,13,0,0,3600),(37,24,14,0,0,3600),(37,24,15,0,0,3600),(37,24,16,0,0,3600),(37,24,17,0,0,3600),(37,24,18,0,0,3600),(37,24,19,0,0,3600),(37,24,20,0,0,3600),(37,24,21,0,0,3600),(37,24,22,0,0,3600),(37,24,23,0,0,3600),(37,24,23,2,18,52952),(14,1,0,0,0,3600),(14,1,1,0,0,3600),(14,1,2,0,0,3600),(14,1,3,0,0,3600),(14,1,4,0,0,3600),(14,1,5,0,0,3600),(14,1,6,0,0,3600),(14,1,7,0,0,3600),(14,1,8,0,0,3600),(14,1,9,0,0,3600),(14,1,10,0,0,3600),(14,1,11,0,0,3600),(14,1,12,0,0,3600),(14,1,13,0,0,3600),(14,1,14,0,0,3600),(14,1,15,0,0,3600),(14,1,16,0,0,3600),(14,1,17,0,0,3600),(14,1,18,0,0,3600),(14,1,19,0,0,3600),(14,1,20,0,0,3600),(14,1,21,0,0,3600),(14,1,22,0,0,3600),(14,1,23,0,0,3600),(22,9,0,0,0,3600),(22,9,1,0,0,3600),(22,9,2,0,0,3600),(22,9,3,0,0,3600),(22,9,4,0,0,3600),(22,9,5,0,0,3600),(22,9,6,0,0,3600),(22,9,7,0,0,3600),(22,9,8,0,0,3600),(22,9,9,0,0,3600),(22,9,10,0,0,3600),(22,9,11,0,0,3600),(22,9,12,0,0,3600),(22,9,13,0,0,3600),(22,9,14,0,0,3600),(22,9,15,0,0,3600),(22,9,16,0,0,3600),(22,9,17,0,0,3600),(22,9,18,0,0,3600),(22,9,19,0,0,3600),(22,9,20,0,0,3600),(22,9,21,0,0,3600),(22,9,22,0,0,3600),(22,9,23,0,0,3600),(22,9,23,2,18,44982),(30,17,0,0,0,3600),(30,17,1,0,0,3600),(30,17,2,0,0,3600),(30,17,3,0,0,3600),(30,17,4,0,0,3600),(30,17,5,0,0,3600),(30,17,6,0,0,3600),(30,17,7,0,0,3600),(30,17,8,0,0,3600),(30,17,9,0,0,3600),(30,17,10,0,0,3600),(30,17,11,0,0,3600),(30,17,12,0,0,3600),(30,17,13,0,0,3600),(30,17,14,0,0,3600),(30,17,15,0,0,3600),(30,17,16,0,0,3600),(30,17,17,0,0,3600),(30,17,18,0,0,3600),(30,17,19,0,0,3600),(30,17,20,0,0,3600),(30,17,21,0,0,3600),(30,17,22,0,0,3600),(30,17,23,0,0,3600),(30,17,23,2,18,27418),(38,25,0,0,0,3600),(38,25,1,0,0,3600),(38,25,2,0,0,3600),(38,25,3,0,0,3600),(38,25,4,0,0,3600),(38,25,5,0,0,3600),(38,25,6,0,0,3600),(38,25,7,0,0,3600),(38,25,8,0,0,3600),(38,25,9,0,0,3600),(38,25,10,0,0,3600),(38,25,11,0,0,3600),(38,25,12,0,0,3600),(38,25,13,0,0,3600),(38,25,14,0,0,3600),(38,25,15,0,0,3600),(38,25,16,0,0,3600),(38,25,17,0,0,3600),(38,25,18,0,0,3600),(38,25,19,0,0,3600),(38,25,20,0,0,3600),(38,25,21,0,0,3600),(38,25,22,0,0,3600),(38,25,23,0,0,3600),(38,25,23,1,18,52952),(15,2,0,0,0,3600),(15,2,1,0,0,3600),(15,2,2,0,0,3600),(15,2,3,0,0,3600),(15,2,4,0,0,3600),(15,2,5,0,0,3600),(15,2,6,0,0,3600),(15,2,7,0,0,3600),(15,2,8,0,0,3600),(15,2,9,0,0,3600),(15,2,10,0,0,3600),(15,2,11,0,0,3600),(15,2,12,0,0,3600),(15,2,13,0,0,3600),(15,2,14,0,0,3600),(15,2,15,0,0,3600),(15,2,16,0,0,3600),(15,2,17,0,0,3600),(15,2,18,0,0,3600),(15,2,19,0,0,3600),(15,2,20,0,0,3600),(15,2,21,0,0,3600),(15,2,22,0,0,3600),(15,2,23,0,0,3600),(23,10,0,0,0,3600),(23,10,1,0,0,3600),(23,10,2,0,0,3600),(23,10,3,0,0,3600),(23,10,4,0,0,3600),(23,10,5,0,0,3600),(23,10,6,0,0,3600),(23,10,7,0,0,3600),(23,10,8,0,0,3600),(23,10,9,0,0,3600),(23,10,10,0,0,3600),(23,10,11,0,0,3600),(23,10,12,0,0,3600),(23,10,13,0,0,3600),(23,10,14,0,0,3600),(23,10,15,0,0,3600),(23,10,16,0,0,3600),(23,10,17,0,0,3600),(23,10,18,0,0,3600),(23,10,19,0,0,3600),(23,10,20,0,0,3600),(23,10,21,0,0,3600),(23,10,22,0,0,3600),(23,10,23,0,0,3600),(23,10,23,1,18,44982),(31,18,0,0,0,3600),(31,18,1,0,0,3600),(31,18,2,0,0,3600),(31,18,3,0,0,3600),(31,18,4,0,0,3600),(31,18,5,0,0,3600),(31,18,6,0,0,3600),(31,18,7,0,0,3600),(31,18,8,0,0,3600),(31,18,9,0,0,3600),(31,18,10,0,0,3600),(31,18,11,0,0,3600),(31,18,12,0,0,3600),(31,18,13,0,0,3600),(31,18,14,0,0,3600),(31,18,15,0,0,3600),(31,18,16,0,0,3600),(31,18,17,0,0,3600),(31,18,18,0,0,3600),(31,18,19,0,0,3600),(31,18,20,0,0,3600),(31,18,21,0,0,3600),(31,18,22,0,0,3600),(31,18,23,0,0,3600),(31,18,23,1,18,27418),(39,26,0,0,0,3600),(39,26,1,0,0,3600),(39,26,2,0,0,3600),(39,26,3,0,0,3600),(39,26,4,0,0,3600),(39,26,5,0,0,3600),(39,26,6,0,0,3600),(39,26,7,0,0,3600),(39,26,8,0,0,3600),(39,26,9,0,0,3600),(39,26,10,0,0,3600),(39,26,11,0,0,3600),(39,26,12,0,0,3600),(39,26,13,0,0,3600),(39,26,14,0,0,3600),(39,26,15,0,0,3600),(39,26,16,0,0,3600),(39,26,17,0,0,3600),(39,26,18,0,0,3600),(39,26,19,0,0,3600),(39,26,20,0,0,3600),(39,26,21,0,0,3600),(39,26,22,0,0,3600),(39,26,23,0,0,3600),(39,26,23,2,18,14765);
/*!40000 ALTER TABLE `inet_session_log_detail_1_201507` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_detail_1_201508`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_detail_1_201508` (
  `sessionId` bigint(20) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`sessionId`,`day`,`hour`,`trafficTypeId`,`deviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( sessionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_detail_1_201508`
--

LOCK TABLES `inet_session_log_detail_1_201508` WRITE;
/*!40000 ALTER TABLE `inet_session_log_detail_1_201508` DISABLE KEYS */;
INSERT INTO `inet_session_log_detail_1_201508` VALUES (48,4,0,0,0,3600),(48,4,1,0,0,3600),(48,4,2,0,0,3600),(48,4,3,0,0,3600),(48,4,4,0,0,3600),(48,4,5,0,0,3600),(48,4,6,0,0,3600),(48,4,7,0,0,3600),(48,4,8,0,0,3600),(48,4,9,0,0,3600),(48,4,10,0,0,3600),(48,4,11,0,0,3600),(48,4,12,0,0,3600),(48,4,13,0,0,3600),(48,4,14,0,0,3600),(48,4,15,0,0,3600),(48,4,16,0,0,3600),(48,4,17,0,0,3600),(48,4,18,0,0,3600),(48,4,19,0,0,3600),(48,4,20,0,0,3600),(48,4,21,0,0,3600),(48,4,22,0,0,3600),(48,4,23,0,0,3600),(48,4,23,2,18,214468),(56,12,0,0,0,3600),(56,12,1,0,0,3600),(56,12,2,0,0,3600),(56,12,3,0,0,3600),(56,12,4,0,0,3600),(56,12,5,0,0,3600),(56,12,6,0,0,3600),(56,12,7,0,0,3600),(56,12,8,0,0,3600),(56,12,9,0,0,3600),(56,12,10,0,0,3600),(56,12,11,0,0,3600),(56,12,12,0,0,3600),(56,12,13,0,0,3600),(56,12,14,0,0,3600),(56,12,15,0,0,3600),(56,12,16,0,0,3600),(56,12,17,0,0,3600),(56,12,18,0,0,3600),(56,12,19,0,0,3600),(56,12,20,0,0,3600),(56,12,21,0,0,3600),(56,12,22,0,0,3600),(56,12,23,0,0,3600),(56,12,23,1,18,17029),(49,5,0,0,0,3600),(49,5,1,0,0,3600),(49,5,2,0,0,3600),(49,5,3,0,0,3600),(49,5,4,0,0,3600),(49,5,5,0,0,3600),(49,5,6,0,0,3600),(49,5,7,0,0,3600),(49,5,8,0,0,3600),(49,5,9,0,0,3600),(49,5,10,0,0,3600),(49,5,11,0,0,3600),(49,5,12,0,0,3600),(49,5,13,0,0,3600),(49,5,14,0,0,3600),(49,5,15,0,0,3600),(49,5,16,0,0,3600),(49,5,17,0,0,3600),(49,5,18,0,0,3600),(49,5,19,0,0,3600),(49,5,20,0,0,3600),(49,5,21,0,0,3600),(49,5,22,0,0,3600),(49,5,23,0,0,3600),(49,5,23,1,18,214468),(57,13,0,0,0,3600),(57,13,1,0,0,3600),(57,13,2,0,0,3600),(57,13,3,0,0,3600),(57,13,4,0,0,3600),(57,13,5,0,0,3600),(57,13,6,0,0,3600),(57,13,7,0,0,3600),(57,13,8,0,0,3600),(57,13,9,0,0,3600),(57,13,10,0,0,3600),(57,13,11,0,0,3600),(57,13,12,0,0,3600),(57,13,13,0,0,3600),(57,13,14,0,0,3600),(57,13,15,0,0,3600),(57,13,16,0,0,3600),(57,13,17,0,0,3600),(57,13,18,0,0,3600),(57,13,19,0,0,3600),(57,13,20,0,0,3600),(57,13,21,0,0,3600),(57,13,22,0,0,3600),(57,13,23,0,0,3600),(57,13,23,2,18,48630),(50,6,0,0,0,3600),(50,6,1,0,0,3600),(50,6,2,0,0,3600),(50,6,3,0,0,3600),(50,6,4,0,0,3600),(50,6,5,0,0,3600),(50,6,6,0,0,3600),(50,6,7,0,0,3600),(50,6,8,0,0,3600),(50,6,9,0,0,3600),(50,6,10,0,0,3600),(50,6,11,0,0,3600),(50,6,12,0,0,3600),(50,6,13,0,0,3600),(50,6,14,0,0,3600),(50,6,15,0,0,3600),(50,6,16,0,0,3600),(50,6,17,0,0,3600),(50,6,18,0,0,3600),(50,6,19,0,0,3600),(50,6,20,0,0,3600),(50,6,21,0,0,3600),(50,6,22,0,0,3600),(50,6,23,0,0,3600),(58,14,0,0,0,3600),(58,14,1,0,0,3600),(58,14,2,0,0,3600),(58,14,3,0,0,3600),(58,14,4,0,0,3600),(58,14,5,0,0,3600),(58,14,6,0,0,3600),(58,14,7,0,0,3600),(58,14,8,0,0,3600),(58,14,9,0,0,3600),(58,14,10,0,0,3600),(58,14,11,0,0,3600),(58,14,12,0,0,3600),(58,14,13,0,0,3600),(58,14,14,0,0,3600),(58,14,15,0,0,3600),(58,14,16,0,0,3600),(58,14,17,0,0,3600),(58,14,18,0,0,3600),(58,14,19,0,0,3600),(58,14,20,0,0,3600),(58,14,21,0,0,3600),(58,14,22,0,0,3600),(58,14,23,0,0,3600),(58,14,23,1,18,48630),(51,7,0,0,0,3600),(51,7,1,0,0,3600),(51,7,2,0,0,3600),(51,7,3,0,0,3600),(51,7,4,0,0,3600),(51,7,5,0,0,3600),(51,7,6,0,0,3600),(51,7,7,0,0,3600),(51,7,8,0,0,3600),(51,7,9,0,0,3600),(51,7,10,0,0,3600),(51,7,11,0,0,3600),(51,7,12,0,0,3600),(51,7,13,0,0,3600),(51,7,14,0,0,3600),(51,7,15,0,0,3600),(51,7,16,0,0,3600),(51,7,17,0,0,3600),(51,7,18,0,0,3600),(51,7,19,0,0,3600),(51,7,20,0,0,3600),(51,7,21,0,0,3600),(51,7,22,0,0,3600),(51,7,23,0,0,3600),(51,7,23,2,18,500148),(59,15,0,0,0,3600),(59,15,1,0,0,3600),(59,15,2,0,0,3600),(59,15,3,0,0,3600),(59,15,4,0,0,3600),(59,15,5,0,0,3600),(59,15,6,0,0,3600),(59,15,7,0,0,3600),(59,15,8,0,0,3600),(59,15,9,0,0,3600),(59,15,10,0,0,3600),(59,15,11,0,0,3600),(59,15,12,0,0,3600),(59,15,13,0,0,3600),(59,15,14,0,0,3600),(59,15,15,0,0,3600),(59,15,16,0,0,3600),(59,15,17,0,0,3600),(59,15,18,0,0,3600),(59,15,19,0,0,3600),(59,15,20,0,0,3600),(59,15,21,0,0,3600),(59,15,22,0,0,3600),(59,15,23,0,0,3600),(52,8,0,0,0,3600),(52,8,1,0,0,3600),(52,8,2,0,0,3600),(52,8,3,0,0,3600),(52,8,4,0,0,3600),(52,8,5,0,0,3600),(52,8,6,0,0,3600),(52,8,7,0,0,3600),(52,8,8,0,0,3600),(52,8,9,0,0,3600),(52,8,10,0,0,3600),(52,8,11,0,0,3600),(52,8,12,0,0,3600),(52,8,13,0,0,3600),(52,8,14,0,0,3600),(52,8,15,0,0,3600),(52,8,16,0,0,3600),(52,8,17,0,0,3600),(52,8,18,0,0,3600),(52,8,19,0,0,3600),(52,8,20,0,0,3600),(52,8,21,0,0,3600),(52,8,22,0,0,3600),(52,8,23,0,0,3600),(52,8,23,1,18,500148),(60,16,0,0,0,3600),(60,16,1,0,0,3600),(60,16,2,0,0,3600),(60,16,3,0,0,3600),(60,16,4,0,0,3600),(60,16,5,0,0,3600),(60,16,6,0,0,3600),(60,16,7,0,0,3600),(60,16,8,0,0,3600),(60,16,9,0,0,3600),(60,16,10,0,0,3600),(60,16,11,0,0,3600),(60,16,12,0,0,3600),(60,16,13,0,0,3600),(60,16,14,0,0,3600),(60,16,15,0,0,3600),(60,16,16,0,0,3600),(60,16,17,0,0,3600),(60,16,18,0,0,3600),(60,16,19,0,0,3600),(60,16,20,0,0,3600),(60,16,21,0,0,3600),(60,16,22,0,0,3600),(60,16,23,0,0,3600),(60,16,23,2,18,686753),(45,1,0,0,0,3600),(45,1,1,0,0,3600),(45,1,2,0,0,3600),(45,1,3,0,0,3600),(45,1,4,0,0,3600),(45,1,5,0,0,3600),(45,1,6,0,0,3600),(45,1,7,0,0,3600),(45,1,8,0,0,3600),(45,1,9,0,0,3600),(45,1,10,0,0,3600),(45,1,11,0,0,3600),(45,1,12,0,0,3600),(45,1,13,0,0,3600),(45,1,14,0,0,3600),(45,1,15,0,0,3600),(45,1,16,0,0,3600),(45,1,17,0,0,3600),(45,1,18,0,0,3600),(45,1,19,0,0,3600),(45,1,20,0,0,3600),(45,1,21,0,0,3600),(45,1,22,0,0,3600),(45,1,23,0,0,3600),(45,1,23,1,18,1821480),(53,9,0,0,0,3600),(53,9,1,0,0,3600),(53,9,2,0,0,3600),(53,9,3,0,0,3600),(53,9,4,0,0,3600),(53,9,5,0,0,3600),(53,9,6,0,0,3600),(53,9,7,0,0,3600),(53,9,8,0,0,3600),(53,9,9,0,0,3600),(53,9,10,0,0,3600),(53,9,11,0,0,3600),(53,9,12,0,0,3600),(53,9,13,0,0,3600),(53,9,14,0,0,3600),(53,9,15,0,0,3600),(53,9,16,0,0,3600),(53,9,17,0,0,3600),(53,9,18,0,0,3600),(53,9,19,0,0,3600),(53,9,20,0,0,3600),(53,9,21,0,0,3600),(53,9,22,0,0,3600),(53,9,23,0,0,3600),(53,9,23,2,18,500148),(61,17,0,0,0,3600),(61,17,1,0,0,3600),(61,17,2,0,0,3600),(61,17,3,0,0,3600),(61,17,4,0,0,3600),(61,17,5,0,0,3600),(61,17,6,0,0,3600),(61,17,7,0,0,3600),(61,17,8,0,0,3600),(61,17,9,0,0,3600),(61,17,10,0,0,3600),(61,17,11,0,0,3600),(61,17,12,0,0,3600),(61,17,13,0,0,3600),(61,17,14,0,0,3600),(61,17,15,0,0,3600),(61,17,16,0,0,3600),(61,17,17,0,0,3600),(61,17,18,0,0,3600),(61,17,19,0,0,3600),(61,17,20,0,0,3600),(61,17,21,0,0,3600),(61,17,22,0,0,3600),(61,17,23,0,0,3600),(61,17,23,1,18,686753),(46,2,0,0,0,3600),(46,2,1,0,0,3600),(46,2,2,0,0,3600),(46,2,3,0,0,3600),(46,2,4,0,0,3600),(46,2,5,0,0,3600),(46,2,6,0,0,3600),(46,2,7,0,0,3600),(46,2,8,0,0,3600),(46,2,9,0,0,3600),(46,2,10,0,0,3600),(46,2,11,0,0,3600),(46,2,12,0,0,3600),(46,2,13,0,0,3600),(46,2,14,0,0,3600),(46,2,15,0,0,3600),(46,2,16,0,0,3600),(46,2,17,0,0,3600),(46,2,18,0,0,3600),(46,2,19,0,0,3600),(46,2,20,0,0,3600),(46,2,21,0,0,3600),(46,2,22,0,0,3600),(46,2,23,0,0,3600),(46,2,23,2,18,22273),(54,10,0,0,0,3600),(54,10,1,0,0,3600),(54,10,2,0,0,3600),(54,10,3,0,0,3600),(54,10,4,0,0,3600),(54,10,5,0,0,3600),(54,10,6,0,0,3600),(54,10,7,0,0,3600),(54,10,8,0,0,3600),(54,10,9,0,0,3600),(54,10,10,0,0,3600),(54,10,11,0,0,3600),(54,10,12,0,0,3600),(54,10,13,0,0,3600),(54,10,14,0,0,3600),(54,10,15,0,0,3600),(54,10,16,0,0,3600),(54,10,17,0,0,3600),(54,10,18,0,0,3600),(54,10,19,0,0,3600),(54,10,20,0,0,3600),(54,10,21,0,0,3600),(54,10,22,0,0,3600),(54,10,23,0,0,3600),(54,10,23,1,18,500148),(62,18,0,0,0,3600),(62,18,1,0,0,3600),(62,18,2,0,0,3600),(62,18,3,0,0,3600),(62,18,4,0,0,3600),(62,18,5,0,0,3600),(62,18,6,0,0,3600),(62,18,7,0,0,3600),(62,18,8,0,0,3600),(62,18,9,0,0,3600),(62,18,10,0,0,3600),(62,18,11,0,0,3600),(62,18,12,0,0,3600),(62,18,13,0,0,3600),(62,18,14,0,0,3600),(62,18,15,0,0,3600),(62,18,16,0,0,3600),(62,18,17,0,0,3600),(62,18,18,0,0,3600),(62,18,19,0,0,3600),(62,18,20,0,0,3600),(62,18,21,0,0,3600),(62,18,22,0,0,3600),(62,18,23,0,0,3600),(62,18,23,2,18,686753),(47,3,0,0,0,3600),(47,3,1,0,0,3600),(47,3,2,0,0,3600),(47,3,3,0,0,3600),(47,3,4,0,0,3600),(47,3,5,0,0,3600),(47,3,6,0,0,3600),(47,3,7,0,0,3600),(47,3,8,0,0,3600),(47,3,9,0,0,3600),(47,3,10,0,0,3600),(47,3,11,0,0,3600),(47,3,12,0,0,3600),(47,3,13,0,0,3600),(47,3,14,0,0,3600),(47,3,15,0,0,3600),(47,3,16,0,0,3600),(47,3,17,0,0,3600),(47,3,18,0,0,3600),(47,3,19,0,0,3600),(47,3,20,0,0,3600),(47,3,21,0,0,3600),(47,3,22,0,0,3600),(47,3,23,0,0,3600),(47,3,23,1,18,22273),(55,11,0,0,0,3600),(55,11,1,0,0,3600),(55,11,2,0,0,3600),(55,11,3,0,0,3600),(55,11,4,0,0,3600),(55,11,5,0,0,3600),(55,11,6,0,0,3600),(55,11,7,0,0,3600),(55,11,8,0,0,3600),(55,11,9,0,0,3600),(55,11,10,0,0,3600),(55,11,11,0,0,3600),(55,11,12,0,0,3600),(55,11,13,0,0,3600),(55,11,14,0,0,3600),(55,11,15,0,0,3600),(55,11,16,0,0,3600),(55,11,17,0,0,3600),(55,11,18,0,0,3600),(55,11,19,0,0,3600),(55,11,20,0,0,3600),(55,11,21,0,0,3600),(55,11,22,0,0,3600),(55,11,23,0,0,3600),(55,11,23,2,18,17029),(63,19,0,0,0,3600),(63,19,1,0,0,3600),(63,19,2,0,0,3600),(63,19,3,0,0,3600),(63,19,4,0,0,3600),(63,19,5,0,0,3600),(63,19,6,0,0,3600),(63,19,7,0,0,3600),(63,19,8,0,0,3600),(63,19,9,0,0,3600),(63,19,10,0,0,3600),(63,19,11,0,0,3600),(63,19,12,0,0,3600),(63,19,13,0,0,3600),(63,19,14,0,0,3600),(63,19,15,0,0,3600),(63,19,16,0,0,3600),(63,19,17,0,0,3600),(63,19,18,0,0,3600),(63,19,19,0,0,3600),(63,19,20,0,0,3600),(63,19,21,0,0,3600),(63,19,21,1,18,16656286),(63,19,21,2,18,15969533),(63,19,22,0,0,3600),(63,19,22,1,18,119500218),(63,19,22,2,18,119500218),(63,19,23,0,0,1040400);
/*!40000 ALTER TABLE `inet_session_log_detail_1_201508` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_detail_1_201509`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_detail_1_201509` (
  `sessionId` bigint(20) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`sessionId`,`day`,`hour`,`trafficTypeId`,`deviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( sessionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_detail_1_201509`
--

LOCK TABLES `inet_session_log_detail_1_201509` WRITE;
/*!40000 ALTER TABLE `inet_session_log_detail_1_201509` DISABLE KEYS */;
INSERT INTO `inet_session_log_detail_1_201509` VALUES (64,1,0,0,0,3600),(64,1,1,0,0,3600),(64,1,2,0,0,3600),(64,1,3,0,0,3600),(64,1,4,0,0,3600),(64,1,5,0,0,3600),(64,1,6,0,0,3600),(64,1,7,0,0,3600),(64,1,8,0,0,3600),(64,1,9,0,0,3600),(64,1,10,0,0,3600),(64,1,11,0,0,3600),(64,1,12,0,0,3600),(64,1,13,0,0,3600),(64,1,14,0,0,3600),(64,1,15,0,0,3600),(64,1,16,0,0,3600),(64,1,17,0,0,3600),(64,1,18,0,0,3600),(64,1,19,0,0,3600),(64,1,20,0,0,3600),(64,1,21,0,0,3600),(64,1,22,0,0,3600),(64,1,23,0,0,3600),(72,9,0,0,0,3600),(72,9,1,0,0,3600),(72,9,2,0,0,3600),(72,9,3,0,0,3600),(72,9,4,0,0,3600),(72,9,5,0,0,3600),(72,9,6,0,0,3600),(72,9,7,0,0,3600),(72,9,8,0,0,3600),(72,9,9,0,0,3600),(72,9,10,0,0,3600),(72,9,11,0,0,3600),(72,9,12,0,0,3600),(72,9,13,0,0,3600),(72,9,14,0,0,3600),(72,9,15,0,0,3600),(72,9,16,0,0,3600),(72,9,17,0,0,3600),(72,9,18,0,0,3600),(72,9,19,0,0,3600),(72,9,20,0,0,3600),(72,9,21,0,0,3600),(72,9,22,0,0,3600),(72,9,23,0,0,3600),(72,9,23,2,18,1230),(80,17,0,0,0,3600),(80,17,1,0,0,3600),(80,17,2,0,0,3600),(80,17,3,0,0,3600),(80,17,4,0,0,3600),(80,17,5,0,0,3600),(80,17,6,0,0,3600),(80,17,7,0,0,3600),(80,17,8,0,0,3600),(80,17,9,0,0,3600),(80,17,10,0,0,3600),(80,17,11,0,0,3600),(80,17,12,0,0,3600),(80,17,13,0,0,3600),(80,17,14,0,0,3600),(80,17,15,0,0,3600),(80,17,16,0,0,3600),(80,17,17,0,0,3600),(80,17,18,0,0,3600),(80,17,19,0,0,3600),(80,17,20,0,0,3600),(80,17,21,0,0,3600),(80,17,22,0,0,3600),(80,17,23,0,0,3600),(80,17,23,1,18,100264),(88,25,0,0,0,3600),(88,25,1,0,0,3600),(88,25,2,0,0,3600),(88,25,3,0,0,3600),(88,25,4,0,0,3600),(88,25,5,0,0,3600),(88,25,6,0,0,3600),(88,25,7,0,0,3600),(88,25,8,0,0,3600),(88,25,9,0,0,3600),(88,25,10,0,0,3600),(88,25,11,0,0,3600),(88,25,12,0,0,3600),(88,25,13,0,0,3600),(88,25,14,0,0,3600),(88,25,15,0,0,3600),(88,25,16,0,0,3600),(88,25,17,0,0,3600),(88,25,18,0,0,3600),(88,25,19,0,0,3600),(88,25,20,0,0,3600),(88,25,21,0,0,3600),(88,25,22,0,0,3600),(88,25,23,0,0,3600),(88,25,23,2,18,10491),(65,2,0,0,0,3600),(65,2,1,0,0,3600),(65,2,2,0,0,3600),(65,2,3,0,0,3600),(65,2,4,0,0,3600),(65,2,5,0,0,3600),(65,2,6,0,0,3600),(65,2,7,0,0,3600),(65,2,8,0,0,3600),(65,2,9,0,0,3600),(65,2,10,0,0,3600),(65,2,11,0,0,3600),(65,2,12,0,0,3600),(65,2,13,0,0,3600),(65,2,14,0,0,3600),(65,2,15,0,0,3600),(65,2,16,0,0,3600),(65,2,17,0,0,3600),(65,2,18,0,0,3600),(65,2,19,0,0,3600),(65,2,20,0,0,3600),(65,2,21,0,0,3600),(65,2,22,0,0,3600),(65,2,23,0,0,3600),(73,10,0,0,0,3600),(73,10,1,0,0,3600),(73,10,2,0,0,3600),(73,10,3,0,0,3600),(73,10,4,0,0,3600),(73,10,5,0,0,3600),(73,10,6,0,0,3600),(73,10,7,0,0,3600),(73,10,8,0,0,3600),(73,10,9,0,0,3600),(73,10,10,0,0,3600),(73,10,11,0,0,3600),(73,10,12,0,0,3600),(73,10,13,0,0,3600),(73,10,14,0,0,3600),(73,10,15,0,0,3600),(73,10,16,0,0,3600),(73,10,17,0,0,3600),(73,10,18,0,0,3600),(73,10,19,0,0,3600),(73,10,20,0,0,3600),(73,10,21,0,0,3600),(73,10,22,0,0,3600),(73,10,23,0,0,3600),(81,18,0,0,0,3600),(81,18,1,0,0,3600),(81,18,2,0,0,3600),(81,18,3,0,0,3600),(81,18,4,0,0,3600),(81,18,5,0,0,3600),(81,18,6,0,0,3600),(81,18,7,0,0,3600),(81,18,8,0,0,3600),(81,18,9,0,0,3600),(81,18,10,0,0,3600),(81,18,11,0,0,3600),(81,18,12,0,0,3600),(81,18,13,0,0,3600),(81,18,14,0,0,3600),(81,18,15,0,0,3600),(81,18,16,0,0,3600),(81,18,17,0,0,3600),(81,18,18,0,0,3600),(81,18,19,0,0,3600),(81,18,20,0,0,3600),(81,18,21,0,0,3600),(81,18,22,0,0,3600),(81,18,23,0,0,3600),(89,26,0,0,0,3600),(89,26,1,0,0,3600),(89,26,2,0,0,3600),(89,26,3,0,0,3600),(89,26,4,0,0,3600),(89,26,5,0,0,3600),(89,26,6,0,0,3600),(89,26,7,0,0,3600),(89,26,8,0,0,3600),(89,26,9,0,0,3600),(89,26,10,0,0,3600),(89,26,11,0,0,3600),(89,26,12,0,0,3600),(89,26,13,0,0,3600),(89,26,14,0,0,3600),(89,26,15,0,0,3600),(89,26,16,0,0,3600),(89,26,17,0,0,3600),(89,26,18,0,0,3600),(89,26,19,0,0,3600),(89,26,20,0,0,3600),(89,26,21,0,0,3600),(89,26,22,0,0,3600),(89,26,23,0,0,3600),(89,26,23,1,18,54433),(66,3,0,0,0,3600),(66,3,1,0,0,3600),(66,3,2,0,0,3600),(66,3,3,0,0,3600),(66,3,4,0,0,3600),(66,3,5,0,0,3600),(66,3,6,0,0,3600),(66,3,7,0,0,3600),(66,3,8,0,0,3600),(66,3,9,0,0,3600),(66,3,10,0,0,3600),(66,3,11,0,0,3600),(66,3,12,0,0,3600),(66,3,13,0,0,3600),(66,3,14,0,0,3600),(66,3,15,0,0,3600),(66,3,16,0,0,3600),(66,3,17,0,0,3600),(66,3,18,0,0,3600),(66,3,19,0,0,3600),(66,3,20,0,0,3600),(66,3,21,0,0,3600),(66,3,22,0,0,3600),(66,3,23,0,0,3600),(66,3,23,2,18,3146),(74,11,0,0,0,3600),(74,11,1,0,0,3600),(74,11,2,0,0,3600),(74,11,3,0,0,3600),(74,11,4,0,0,3600),(74,11,5,0,0,3600),(74,11,6,0,0,3600),(74,11,7,0,0,3600),(74,11,8,0,0,3600),(74,11,9,0,0,3600),(74,11,10,0,0,3600),(74,11,11,0,0,3600),(74,11,12,0,0,3600),(74,11,13,0,0,3600),(74,11,14,0,0,3600),(74,11,15,0,0,3600),(74,11,16,0,0,3600),(74,11,17,0,0,3600),(74,11,18,0,0,3600),(74,11,19,0,0,3600),(74,11,20,0,0,3600),(74,11,21,0,0,3600),(74,11,22,0,0,3600),(74,11,23,0,0,3600),(82,19,0,0,0,3600),(82,19,1,0,0,3600),(82,19,2,0,0,3600),(82,19,3,0,0,3600),(82,19,4,0,0,3600),(82,19,5,0,0,3600),(82,19,6,0,0,3600),(82,19,7,0,0,3600),(82,19,8,0,0,3600),(82,19,9,0,0,3600),(82,19,10,0,0,3600),(82,19,11,0,0,3600),(82,19,12,0,0,3600),(82,19,13,0,0,3600),(82,19,14,0,0,3600),(82,19,15,0,0,3600),(82,19,16,0,0,3600),(82,19,17,0,0,3600),(82,19,18,0,0,3600),(82,19,19,0,0,3600),(82,19,20,0,0,3600),(82,19,21,0,0,3600),(82,19,22,0,0,3600),(82,19,23,0,0,3600),(82,19,23,2,18,44191),(90,27,0,0,0,3600),(90,27,1,0,0,3600),(90,27,2,0,0,3600),(90,27,3,0,0,3600),(90,27,4,0,0,3600),(90,27,5,0,0,3600),(90,27,6,0,0,3600),(90,27,7,0,0,3600),(90,27,8,0,0,3600),(90,27,9,0,0,3600),(90,27,10,0,0,3600),(90,27,11,0,0,3600),(90,27,12,0,0,3600),(90,27,13,0,0,3600),(90,27,14,0,0,3600),(90,27,15,0,0,3600),(90,27,16,0,0,3600),(90,27,17,0,0,3600),(90,27,18,0,0,3600),(90,27,19,0,0,3600),(90,27,20,0,0,3600),(90,27,21,0,0,3600),(90,27,22,0,0,3600),(90,27,23,0,0,3600),(67,4,0,0,0,3600),(67,4,1,0,0,3600),(67,4,2,0,0,3600),(67,4,3,0,0,3600),(67,4,4,0,0,3600),(67,4,5,0,0,3600),(67,4,6,0,0,3600),(67,4,7,0,0,3600),(67,4,8,0,0,3600),(67,4,9,0,0,3600),(67,4,10,0,0,3600),(67,4,11,0,0,3600),(67,4,12,0,0,3600),(67,4,13,0,0,3600),(67,4,14,0,0,3600),(67,4,15,0,0,3600),(67,4,16,0,0,3600),(67,4,17,0,0,3600),(67,4,18,0,0,3600),(67,4,19,0,0,3600),(67,4,20,0,0,3600),(67,4,21,0,0,3600),(67,4,22,0,0,3600),(67,4,23,0,0,3600),(67,4,23,1,18,15544),(75,12,0,0,0,3600),(75,12,1,0,0,3600),(75,12,2,0,0,3600),(75,12,3,0,0,3600),(75,12,4,0,0,3600),(75,12,5,0,0,3600),(75,12,6,0,0,3600),(75,12,7,0,0,3600),(75,12,8,0,0,3600),(75,12,9,0,0,3600),(75,12,10,0,0,3600),(75,12,11,0,0,3600),(75,12,12,0,0,3600),(75,12,13,0,0,3600),(75,12,14,0,0,3600),(75,12,15,0,0,3600),(75,12,16,0,0,3600),(75,12,17,0,0,3600),(75,12,18,0,0,3600),(75,12,19,0,0,3600),(75,12,20,0,0,3600),(75,12,21,0,0,3600),(75,12,22,0,0,3600),(75,12,23,0,0,3600),(83,20,0,0,0,3600),(83,20,1,0,0,3600),(83,20,2,0,0,3600),(83,20,3,0,0,3600),(83,20,4,0,0,3600),(83,20,5,0,0,3600),(83,20,6,0,0,3600),(83,20,7,0,0,3600),(83,20,8,0,0,3600),(83,20,9,0,0,3600),(83,20,10,0,0,3600),(83,20,11,0,0,3600),(83,20,12,0,0,3600),(83,20,13,0,0,3600),(83,20,14,0,0,3600),(83,20,15,0,0,3600),(83,20,16,0,0,3600),(83,20,17,0,0,3600),(83,20,18,0,0,3600),(83,20,19,0,0,3600),(83,20,20,0,0,3600),(83,20,21,0,0,3600),(83,20,22,0,0,3600),(83,20,23,0,0,3600),(83,20,23,1,18,448706),(91,28,0,0,0,3600),(91,28,1,0,0,3600),(91,28,2,0,0,3600),(91,28,3,0,0,3600),(91,28,4,0,0,3600),(91,28,5,0,0,3600),(91,28,6,0,0,3600),(91,28,7,0,0,3600),(91,28,8,0,0,3600),(91,28,9,0,0,3600),(91,28,10,0,0,3600),(91,28,11,0,0,3600),(91,28,12,0,0,3600),(91,28,13,0,0,3600),(91,28,14,0,0,3600),(91,28,15,0,0,3600),(91,28,16,0,0,3600),(91,28,17,0,0,3600),(91,28,18,0,0,3600),(91,28,19,0,0,3600),(91,28,20,0,0,3600),(91,28,21,0,0,3600),(91,28,22,0,0,3600),(91,28,23,0,0,3600),(91,28,23,2,18,1698),(68,5,0,0,0,3600),(68,5,1,0,0,3600),(68,5,2,0,0,3600),(68,5,3,0,0,3600),(68,5,4,0,0,3600),(68,5,5,0,0,3600),(68,5,6,0,0,3600),(68,5,7,0,0,3600),(68,5,8,0,0,3600),(68,5,9,0,0,3600),(68,5,10,0,0,3600),(68,5,11,0,0,3600),(68,5,12,0,0,3600),(68,5,13,0,0,3600),(68,5,14,0,0,3600),(68,5,15,0,0,3600),(68,5,16,0,0,3600),(68,5,17,0,0,3600),(68,5,18,0,0,3600),(68,5,19,0,0,3600),(68,5,20,0,0,3600),(68,5,21,0,0,3600),(68,5,22,0,0,3600),(68,5,23,0,0,3600),(76,13,0,0,0,3600),(76,13,1,0,0,3600),(76,13,2,0,0,3600),(76,13,3,0,0,3600),(76,13,4,0,0,3600),(76,13,5,0,0,3600),(76,13,6,0,0,3600),(76,13,7,0,0,3600),(76,13,8,0,0,3600),(76,13,9,0,0,3600),(76,13,10,0,0,3600),(76,13,11,0,0,3600),(76,13,12,0,0,3600),(76,13,13,0,0,3600),(76,13,14,0,0,3600),(76,13,15,0,0,3600),(76,13,16,0,0,3600),(76,13,17,0,0,3600),(76,13,18,0,0,3600),(76,13,19,0,0,3600),(76,13,20,0,0,3600),(76,13,21,0,0,3600),(76,13,22,0,0,3600),(76,13,23,0,0,3600),(76,13,23,2,18,2552),(84,21,0,0,0,3600),(84,21,1,0,0,3600),(84,21,2,0,0,3600),(84,21,3,0,0,3600),(84,21,4,0,0,3600),(84,21,5,0,0,3600),(84,21,6,0,0,3600),(84,21,7,0,0,3600),(84,21,8,0,0,3600),(84,21,9,0,0,3600),(84,21,10,0,0,3600),(84,21,11,0,0,3600),(84,21,12,0,0,3600),(84,21,13,0,0,3600),(84,21,14,0,0,3600),(84,21,15,0,0,3600),(84,21,16,0,0,3600),(84,21,17,0,0,3600),(84,21,18,0,0,3600),(84,21,19,0,0,3600),(84,21,20,0,0,3600),(84,21,21,0,0,3600),(84,21,22,0,0,3600),(84,21,23,0,0,3600),(92,29,0,0,0,3600),(92,29,1,0,0,3600),(92,29,2,0,0,3600),(92,29,3,0,0,3600),(92,29,4,0,0,3600),(92,29,5,0,0,3600),(92,29,6,0,0,3600),(92,29,7,0,0,3600),(92,29,8,0,0,3600),(92,29,9,0,0,3600),(92,29,10,0,0,3600),(92,29,11,0,0,3600),(92,29,12,0,0,3600),(92,29,13,0,0,3600),(92,29,14,0,0,3600),(92,29,15,0,0,3600),(92,29,16,0,0,3600),(92,29,17,0,0,3600),(92,29,18,0,0,3600),(92,29,19,0,0,3600),(92,29,20,0,0,3600),(92,29,21,0,0,3600),(92,29,22,0,0,3600),(92,29,23,0,0,3600),(69,6,0,0,0,3600),(69,6,1,0,0,3600),(69,6,2,0,0,3600),(69,6,3,0,0,3600),(69,6,4,0,0,3600),(69,6,5,0,0,3600),(69,6,6,0,0,3600),(69,6,7,0,0,3600),(69,6,8,0,0,3600),(69,6,9,0,0,3600),(69,6,10,0,0,3600),(69,6,11,0,0,3600),(69,6,12,0,0,3600),(69,6,13,0,0,3600),(69,6,14,0,0,3600),(69,6,15,0,0,3600),(69,6,16,0,0,3600),(69,6,17,0,0,3600),(69,6,18,0,0,3600),(69,6,19,0,0,3600),(69,6,20,0,0,3600),(69,6,21,0,0,3600),(69,6,22,0,0,3600),(69,6,23,0,0,3600),(69,6,23,2,18,17498),(77,14,0,0,0,3600),(77,14,1,0,0,3600),(77,14,2,0,0,3600),(77,14,3,0,0,3600),(77,14,4,0,0,3600),(77,14,5,0,0,3600),(77,14,6,0,0,3600),(77,14,7,0,0,3600),(77,14,8,0,0,3600),(77,14,9,0,0,3600),(77,14,10,0,0,3600),(77,14,11,0,0,3600),(77,14,12,0,0,3600),(77,14,13,0,0,3600),(77,14,14,0,0,3600),(77,14,15,0,0,3600),(77,14,16,0,0,3600),(77,14,17,0,0,3600),(77,14,18,0,0,3600),(77,14,19,0,0,3600),(77,14,20,0,0,3600),(77,14,21,0,0,3600),(77,14,22,0,0,3600),(77,14,23,0,0,3600),(77,14,23,1,18,266),(85,22,0,0,0,3600),(85,22,1,0,0,3600),(85,22,2,0,0,3600),(85,22,3,0,0,3600),(85,22,4,0,0,3600),(85,22,5,0,0,3600),(85,22,6,0,0,3600),(85,22,7,0,0,3600),(85,22,8,0,0,3600),(85,22,9,0,0,3600),(85,22,10,0,0,3600),(85,22,11,0,0,3600),(85,22,12,0,0,3600),(85,22,13,0,0,3600),(85,22,14,0,0,3600),(85,22,15,0,0,3600),(85,22,16,0,0,3600),(85,22,17,0,0,3600),(85,22,18,0,0,3600),(85,22,19,0,0,3600),(85,22,20,0,0,3600),(85,22,21,0,0,3600),(85,22,22,0,0,3600),(85,22,23,0,0,3600),(85,22,23,2,18,49622),(93,30,0,0,0,3600),(93,30,1,0,0,3600),(93,30,2,0,0,3600),(93,30,3,0,0,3600),(93,30,4,0,0,3600),(93,30,5,0,0,3600),(93,30,6,0,0,3600),(93,30,7,0,0,3600),(93,30,8,0,0,3600),(93,30,9,0,0,3600),(93,30,10,0,0,3600),(93,30,11,0,0,3600),(93,30,12,0,0,3600),(93,30,13,0,0,3600),(93,30,14,0,0,3600),(93,30,15,0,0,3600),(93,30,16,0,0,3600),(93,30,17,0,0,3600),(93,30,18,0,0,3600),(93,30,19,0,0,3600),(93,30,20,0,0,3600),(93,30,21,0,0,3600),(93,30,22,0,0,3600),(93,30,23,0,0,3600),(70,7,0,0,0,3600),(70,7,1,0,0,3600),(70,7,2,0,0,3600),(70,7,3,0,0,3600),(70,7,4,0,0,3600),(70,7,5,0,0,3600),(70,7,6,0,0,3600),(70,7,7,0,0,3600),(70,7,8,0,0,3600),(70,7,9,0,0,3600),(70,7,10,0,0,3600),(70,7,11,0,0,3600),(70,7,12,0,0,3600),(70,7,13,0,0,3600),(70,7,14,0,0,3600),(70,7,15,0,0,3600),(70,7,16,0,0,3600),(70,7,17,0,0,3600),(70,7,18,0,0,3600),(70,7,19,0,0,3600),(70,7,20,0,0,3600),(70,7,21,0,0,3600),(70,7,22,0,0,3600),(70,7,23,0,0,3600),(70,7,23,1,18,219608),(78,15,0,0,0,3600),(78,15,1,0,0,3600),(78,15,2,0,0,3600),(78,15,3,0,0,3600),(78,15,4,0,0,3600),(78,15,5,0,0,3600),(78,15,6,0,0,3600),(78,15,7,0,0,3600),(78,15,8,0,0,3600),(78,15,9,0,0,3600),(78,15,10,0,0,3600),(78,15,11,0,0,3600),(78,15,12,0,0,3600),(78,15,13,0,0,3600),(78,15,14,0,0,3600),(78,15,15,0,0,3600),(78,15,16,0,0,3600),(78,15,17,0,0,3600),(78,15,18,0,0,3600),(78,15,19,0,0,3600),(78,15,20,0,0,3600),(78,15,21,0,0,3600),(78,15,22,0,0,3600),(78,15,23,0,0,3600),(86,23,0,0,0,3600),(86,23,1,0,0,3600),(86,23,2,0,0,3600),(86,23,3,0,0,3600),(86,23,4,0,0,3600),(86,23,5,0,0,3600),(86,23,6,0,0,3600),(86,23,7,0,0,3600),(86,23,8,0,0,3600),(86,23,9,0,0,3600),(86,23,10,0,0,3600),(86,23,11,0,0,3600),(86,23,12,0,0,3600),(86,23,13,0,0,3600),(86,23,14,0,0,3600),(86,23,15,0,0,3600),(86,23,16,0,0,3600),(86,23,17,0,0,3600),(86,23,18,0,0,3600),(86,23,19,0,0,3600),(86,23,20,0,0,3600),(86,23,21,0,0,3600),(86,23,22,0,0,3600),(86,23,23,0,0,3600),(86,23,23,1,18,680347),(71,8,0,0,0,3600),(71,8,1,0,0,3600),(71,8,2,0,0,3600),(71,8,3,0,0,3600),(71,8,4,0,0,3600),(71,8,5,0,0,3600),(71,8,6,0,0,3600),(71,8,7,0,0,3600),(71,8,8,0,0,3600),(71,8,9,0,0,3600),(71,8,10,0,0,3600),(71,8,11,0,0,3600),(71,8,12,0,0,3600),(71,8,13,0,0,3600),(71,8,14,0,0,3600),(71,8,15,0,0,3600),(71,8,16,0,0,3600),(71,8,17,0,0,3600),(71,8,18,0,0,3600),(71,8,19,0,0,3600),(71,8,20,0,0,3600),(71,8,21,0,0,3600),(71,8,22,0,0,3600),(71,8,23,0,0,3600),(79,16,0,0,0,3600),(79,16,1,0,0,3600),(79,16,2,0,0,3600),(79,16,3,0,0,3600),(79,16,4,0,0,3600),(79,16,5,0,0,3600),(79,16,6,0,0,3600),(79,16,7,0,0,3600),(79,16,8,0,0,3600),(79,16,9,0,0,3600),(79,16,10,0,0,3600),(79,16,11,0,0,3600),(79,16,12,0,0,3600),(79,16,13,0,0,3600),(79,16,14,0,0,3600),(79,16,15,0,0,3600),(79,16,16,0,0,3600),(79,16,17,0,0,3600),(79,16,18,0,0,3600),(79,16,19,0,0,3600),(79,16,20,0,0,3600),(79,16,21,0,0,3600),(79,16,22,0,0,3600),(79,16,23,0,0,3600),(79,16,23,2,18,13760),(87,24,0,0,0,3600),(87,24,1,0,0,3600),(87,24,2,0,0,3600),(87,24,3,0,0,3600),(87,24,4,0,0,3600),(87,24,5,0,0,3600),(87,24,6,0,0,3600),(87,24,7,0,0,3600),(87,24,8,0,0,3600),(87,24,9,0,0,3600),(87,24,10,0,0,3600),(87,24,11,0,0,3600),(87,24,12,0,0,3600),(87,24,13,0,0,3600),(87,24,14,0,0,3600),(87,24,15,0,0,3600),(87,24,16,0,0,3600),(87,24,17,0,0,3600),(87,24,18,0,0,3600),(87,24,19,0,0,3600),(87,24,20,0,0,3600),(87,24,21,0,0,3600),(87,24,22,0,0,3600),(87,24,23,0,0,3600);
/*!40000 ALTER TABLE `inet_session_log_detail_1_201509` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_detail_1_201510`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_detail_1_201510` (
  `sessionId` bigint(20) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`sessionId`,`day`,`hour`,`trafficTypeId`,`deviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( sessionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_detail_1_201510`
--

LOCK TABLES `inet_session_log_detail_1_201510` WRITE;
/*!40000 ALTER TABLE `inet_session_log_detail_1_201510` DISABLE KEYS */;
INSERT INTO `inet_session_log_detail_1_201510` VALUES (96,3,0,0,0,3600),(96,3,1,0,0,3600),(96,3,2,0,0,3600),(96,3,3,0,0,3600),(96,3,4,0,0,3600),(96,3,5,0,0,3600),(96,3,6,0,0,3600),(96,3,7,0,0,3600),(96,3,8,0,0,3600),(96,3,9,0,0,3600),(96,3,10,0,0,3600),(96,3,11,0,0,3600),(96,3,12,0,0,3600),(96,3,13,0,0,3600),(96,3,14,0,0,3600),(96,3,15,0,0,3600),(96,3,16,0,0,3600),(96,3,17,0,0,3600),(96,3,18,0,0,3600),(96,3,19,0,0,3600),(96,3,20,0,0,3600),(96,3,21,0,0,3600),(96,3,22,0,0,3600),(96,3,23,0,0,3600),(96,3,23,1,18,53639),(97,4,0,0,0,3600),(97,4,1,0,0,3600),(97,4,2,0,0,3600),(97,4,3,0,0,3600),(97,4,4,0,0,3600),(97,4,5,0,0,3600),(97,4,6,0,0,3600),(97,4,7,0,0,3600),(97,4,8,0,0,3600),(97,4,9,0,0,3600),(97,4,10,0,0,3600),(97,4,11,0,0,3600),(97,4,12,0,0,3600),(97,4,13,0,0,3600),(97,4,14,0,0,3600),(97,4,15,0,0,3600),(97,4,16,0,0,3600),(97,4,17,0,0,3600),(97,4,18,0,0,3600),(97,4,19,0,0,3600),(97,4,20,0,0,3600),(97,4,21,0,0,3600),(97,4,22,0,0,3600),(97,4,23,0,0,3600),(98,5,0,0,0,3600),(98,5,1,0,0,3600),(98,5,2,0,0,3600),(98,5,3,0,0,3600),(98,5,4,0,0,3600),(98,5,5,0,0,3600),(98,5,6,0,0,3600),(98,5,7,0,0,3600),(98,5,8,0,0,3600),(98,5,9,0,0,3600),(98,5,10,0,0,3600),(98,5,11,0,0,3600),(98,5,12,0,0,3600),(98,5,13,0,0,3600),(98,5,14,0,0,3600),(98,5,15,0,0,3600),(98,5,16,0,0,3600),(98,5,17,0,0,3600),(98,5,18,0,0,3600),(98,5,19,0,0,3600),(98,5,20,0,0,3600),(98,5,21,0,0,3600),(98,5,22,0,0,3600),(98,5,23,0,0,3600),(98,5,23,2,18,9873),(99,6,0,0,0,3600),(99,6,1,0,0,3600),(99,6,2,0,0,3600),(99,6,3,0,0,3600),(99,6,4,0,0,3600),(99,6,5,0,0,3600),(99,6,6,0,0,3600),(99,6,7,0,0,3600),(99,6,8,0,0,3600),(99,6,9,0,0,3600),(99,6,10,0,0,3600),(99,6,11,0,0,3600),(99,6,12,0,0,3600),(99,6,13,0,0,3600),(99,6,14,0,0,3600),(99,6,15,0,0,3600),(99,6,16,0,0,3600),(99,6,17,0,0,3600),(99,6,18,0,0,3600),(99,6,19,0,0,3600),(99,6,20,0,0,3600),(99,6,21,0,0,3600),(99,6,22,0,0,3600),(99,6,23,0,0,3600),(99,6,23,1,18,10975),(100,7,0,0,0,3600),(100,7,1,0,0,3600),(100,7,2,0,0,3600),(100,7,3,0,0,3600),(100,7,4,0,0,3600),(100,7,5,0,0,3600),(100,7,6,0,0,3600),(100,7,7,0,0,3600),(100,7,8,0,0,3600),(100,7,9,0,0,3600),(100,7,10,0,0,3600),(100,7,11,0,0,3600),(100,7,12,0,0,3600),(100,7,13,0,0,3600),(100,7,14,0,0,3600),(100,7,15,0,0,3600),(100,7,16,0,0,3600),(100,7,17,0,0,3600),(100,7,18,0,0,3600),(100,7,19,0,0,3600),(100,7,20,0,0,3600),(100,7,21,0,0,3600),(100,7,22,0,0,3600),(100,7,23,0,0,3600),(101,8,0,0,0,3600),(101,8,1,0,0,3600),(101,8,2,0,0,3600),(101,8,3,0,0,3600),(101,8,4,0,0,3600),(101,8,5,0,0,3600),(101,8,6,0,0,3600),(101,8,7,0,0,3600),(101,8,8,0,0,3600),(101,8,9,0,0,3600),(101,8,10,0,0,3600),(101,8,11,0,0,3600),(101,8,12,0,0,3600),(101,8,13,0,0,3600),(101,8,14,0,0,3600),(101,8,15,0,0,3600),(101,8,16,0,0,3600),(101,8,17,0,0,3600),(101,8,18,0,0,3600),(101,8,19,0,0,3600),(101,8,20,0,0,3600),(101,8,21,0,0,3600),(101,8,22,0,0,3600),(101,8,23,0,0,3600),(101,8,23,2,18,19478),(94,1,0,0,0,3600),(94,1,1,0,0,3600),(94,1,2,0,0,3600),(94,1,3,0,0,3600),(94,1,4,0,0,3600),(94,1,5,0,0,3600),(94,1,6,0,0,3600),(94,1,7,0,0,3600),(94,1,8,0,0,3600),(94,1,9,0,0,3600),(94,1,10,0,0,3600),(94,1,11,0,0,3600),(94,1,12,0,0,3600),(94,1,13,0,0,3600),(94,1,14,0,0,3600),(94,1,15,0,0,3600),(94,1,16,0,0,3600),(94,1,17,0,0,3600),(94,1,18,0,0,3600),(94,1,19,0,0,3600),(94,1,20,0,0,3600),(94,1,21,0,0,3600),(94,1,22,0,0,3600),(94,1,23,0,0,3600),(102,9,0,0,0,3600),(102,9,1,0,0,3600),(102,9,2,0,0,3600),(102,9,3,0,0,3600),(102,9,4,0,0,3600),(102,9,5,0,0,3600),(102,9,6,0,0,3600),(102,9,7,0,0,3600),(102,9,8,0,0,3600),(102,9,9,0,0,3600),(102,9,10,0,0,3600),(102,9,11,0,0,3600),(102,9,12,0,0,3600),(102,9,13,0,0,3600),(102,9,14,0,0,3600),(102,9,15,0,0,3600),(102,9,16,0,0,3600),(102,9,17,0,0,3600),(102,9,18,0,0,3600),(102,9,19,0,0,3600),(102,9,20,0,0,3600),(102,9,21,0,0,3600),(102,9,22,0,0,3600),(102,9,23,0,0,3600),(102,9,23,1,18,204697),(95,2,0,0,0,3600),(95,2,1,0,0,3600),(95,2,2,0,0,3600),(95,2,3,0,0,3600),(95,2,4,0,0,3600),(95,2,5,0,0,3600),(95,2,6,0,0,3600),(95,2,7,0,0,3600),(95,2,8,0,0,3600),(95,2,9,0,0,3600),(95,2,10,0,0,3600),(95,2,11,0,0,3600),(95,2,12,0,0,3600),(95,2,13,0,0,3600),(95,2,14,0,0,3600),(95,2,15,0,0,3600),(95,2,16,0,0,3600),(95,2,17,0,0,3600),(95,2,18,0,0,3600),(95,2,19,0,0,3600),(95,2,20,0,0,3600),(95,2,21,0,0,3600),(95,2,22,0,0,3600),(95,2,23,0,0,3600),(95,2,23,2,18,18738);
/*!40000 ALTER TABLE `inet_session_log_detail_1_201510` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_detail_1_201606`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_detail_1_201606` (
  `sessionId` bigint(20) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `hour` tinyint(4) NOT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`sessionId`,`day`,`hour`,`trafficTypeId`,`deviceId`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( sessionId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_detail_1_201606`
--

LOCK TABLES `inet_session_log_detail_1_201606` WRITE;
/*!40000 ALTER TABLE `inet_session_log_detail_1_201606` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_detail_1_201606` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_route_1_201505`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_route_1_201505` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` bigint(20) NOT NULL,
  `subnet` varbinary(24) NOT NULL,
  `mask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_route_1_201505`
--

LOCK TABLES `inet_session_log_route_1_201505` WRITE;
/*!40000 ALTER TABLE `inet_session_log_route_1_201505` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_route_1_201505` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_route_1_201506`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_route_1_201506` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` bigint(20) NOT NULL,
  `subnet` varbinary(24) NOT NULL,
  `mask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_route_1_201506`
--

LOCK TABLES `inet_session_log_route_1_201506` WRITE;
/*!40000 ALTER TABLE `inet_session_log_route_1_201506` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_route_1_201506` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_route_1_201507`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_route_1_201507` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` bigint(20) NOT NULL,
  `subnet` varbinary(24) NOT NULL,
  `mask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_route_1_201507`
--

LOCK TABLES `inet_session_log_route_1_201507` WRITE;
/*!40000 ALTER TABLE `inet_session_log_route_1_201507` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_route_1_201507` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_route_1_201508`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_route_1_201508` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` bigint(20) NOT NULL,
  `subnet` varbinary(24) NOT NULL,
  `mask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_route_1_201508`
--

LOCK TABLES `inet_session_log_route_1_201508` WRITE;
/*!40000 ALTER TABLE `inet_session_log_route_1_201508` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_route_1_201508` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_route_1_201509`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_route_1_201509` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` bigint(20) NOT NULL,
  `subnet` varbinary(24) NOT NULL,
  `mask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_route_1_201509`
--

LOCK TABLES `inet_session_log_route_1_201509` WRITE;
/*!40000 ALTER TABLE `inet_session_log_route_1_201509` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_route_1_201509` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_route_1_201510`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_route_1_201510` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` bigint(20) NOT NULL,
  `subnet` varbinary(24) NOT NULL,
  `mask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_route_1_201510`
--

LOCK TABLES `inet_session_log_route_1_201510` WRITE;
/*!40000 ALTER TABLE `inet_session_log_route_1_201510` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_route_1_201510` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_session_log_route_1_201606`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_session_log_route_1_201606` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` bigint(20) NOT NULL,
  `subnet` varbinary(24) NOT NULL,
  `mask` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionId` (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_session_log_route_1_201606`
--

LOCK TABLES `inet_session_log_route_1_201606` WRITE;
/*!40000 ALTER TABLE `inet_session_log_route_1_201606` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_session_log_route_1_201606` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_max_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_max_1` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `maxKey` bigint(20) NOT NULL,
  `counter` int(11) NOT NULL,
  `yy` int(11) NOT NULL,
  `mm` int(11) NOT NULL,
  `amountMax` bigint(20) NOT NULL,
  `amount1` bigint(20) NOT NULL,
  `amount2` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`yy`,`mm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_max_1`
--

LOCK TABLES `inet_tariff_traffic_max_1` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_max_detail_1_201505`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_max_detail_1_201505` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `maxKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amountMax` bigint(20) NOT NULL,
  `amount1` bigint(20) NOT NULL,
  `amount2` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_max_detail_1_201505`
--

LOCK TABLES `inet_tariff_traffic_max_detail_1_201505` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201505` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201505` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_max_detail_1_201506`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_max_detail_1_201506` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `maxKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amountMax` bigint(20) NOT NULL,
  `amount1` bigint(20) NOT NULL,
  `amount2` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_max_detail_1_201506`
--

LOCK TABLES `inet_tariff_traffic_max_detail_1_201506` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201506` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201506` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_max_detail_1_201507`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_max_detail_1_201507` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `maxKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amountMax` bigint(20) NOT NULL,
  `amount1` bigint(20) NOT NULL,
  `amount2` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_max_detail_1_201507`
--

LOCK TABLES `inet_tariff_traffic_max_detail_1_201507` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201507` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201507` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_max_detail_1_201508`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_max_detail_1_201508` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `maxKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amountMax` bigint(20) NOT NULL,
  `amount1` bigint(20) NOT NULL,
  `amount2` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_max_detail_1_201508`
--

LOCK TABLES `inet_tariff_traffic_max_detail_1_201508` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201508` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201508` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_max_detail_1_201509`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_max_detail_1_201509` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `maxKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amountMax` bigint(20) NOT NULL,
  `amount1` bigint(20) NOT NULL,
  `amount2` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_max_detail_1_201509`
--

LOCK TABLES `inet_tariff_traffic_max_detail_1_201509` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201509` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201509` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_max_detail_1_201510`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_max_detail_1_201510` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `maxKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amountMax` bigint(20) NOT NULL,
  `amount1` bigint(20) NOT NULL,
  `amount2` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_max_detail_1_201510`
--

LOCK TABLES `inet_tariff_traffic_max_detail_1_201510` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201510` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201510` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_max_detail_1_201606`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_max_detail_1_201606` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `maxKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amountMax` bigint(20) NOT NULL,
  `amount1` bigint(20) NOT NULL,
  `amount2` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_max_detail_1_201606`
--

LOCK TABLES `inet_tariff_traffic_max_detail_1_201606` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201606` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_max_detail_1_201606` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_range_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_range_1` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `rangeKey` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `counter` int(11) NOT NULL,
  `maxAmount` bigint(20) NOT NULL DEFAULT '-1',
  `yy` int(11) NOT NULL,
  `mm` int(11) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`yy`,`mm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_range_1`
--

LOCK TABLES `inet_tariff_traffic_range_1` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_1` DISABLE KEYS */;
INSERT INTO `inet_tariff_traffic_range_1` VALUES (3,8589934604,72057594037927937,20971520,74,20971520,2015,5),(3,8589934604,72057594037927938,20971520,10,20971520,2015,6),(3,8589934604,72057594037927939,3058560,13,20971520,2015,7),(3,8589934604,72057594037927939,20971520,45,20971520,2015,8),(3,8589934604,72057594037927940,1519168,7,20971520,2015,9),(3,8589934604,72057594037927940,1788479,10,20971520,2015,10);
/*!40000 ALTER TABLE `inet_tariff_traffic_range_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_range_detail_1_201505`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_range_detail_1_201505` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `rangeKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_range_detail_1_201505`
--

LOCK TABLES `inet_tariff_traffic_range_detail_1_201505` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201505` DISABLE KEYS */;
INSERT INTO `inet_tariff_traffic_range_detail_1_201505` VALUES (3,8589934604,72057594037927937,25,20971520);
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201505` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_range_detail_1_201506`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_range_detail_1_201506` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `rangeKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_range_detail_1_201506`
--

LOCK TABLES `inet_tariff_traffic_range_detail_1_201506` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201506` DISABLE KEYS */;
INSERT INTO `inet_tariff_traffic_range_detail_1_201506` VALUES (3,8589934604,72057594037927938,4,43163),(3,8589934604,72057594037927938,6,43163),(3,8589934604,72057594037927938,8,5460),(3,8589934604,72057594037927938,9,20879734);
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201506` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_range_detail_1_201507`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_range_detail_1_201507` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `rangeKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_range_detail_1_201507`
--

LOCK TABLES `inet_tariff_traffic_range_detail_1_201507` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201507` DISABLE KEYS */;
INSERT INTO `inet_tariff_traffic_range_detail_1_201507` VALUES (3,8589934604,72057594037927939,4,17273),(3,8589934604,72057594037927939,6,17273),(3,8589934604,72057594037927939,8,16265),(3,8589934604,72057594037927939,10,44982),(3,8589934604,72057594037927939,12,246212),(3,8589934604,72057594037927939,14,246212),(3,8589934604,72057594037927939,16,7288),(3,8589934604,72057594037927939,18,27418),(3,8589934604,72057594037927939,21,273220),(3,8589934604,72057594037927939,23,273220),(3,8589934604,72057594037927939,25,52952),(3,8589934604,72057594037927939,27,14765),(3,8589934604,72057594037927939,30,1821480);
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201507` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_range_detail_1_201508`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_range_detail_1_201508` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `rangeKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_range_detail_1_201508`
--

LOCK TABLES `inet_tariff_traffic_range_detail_1_201508` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201508` DISABLE KEYS */;
INSERT INTO `inet_tariff_traffic_range_detail_1_201508` VALUES (3,8589934604,72057594037927939,1,1821480),(3,8589934604,72057594037927939,3,22273),(3,8589934604,72057594037927939,5,214468),(3,8589934604,72057594037927939,8,500148),(3,8589934604,72057594037927939,10,500148),(3,8589934604,72057594037927939,12,17029),(3,8589934604,72057594037927939,14,48630),(3,8589934604,72057594037927939,17,686753),(3,8589934604,72057594037927939,19,14102031);
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201508` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_range_detail_1_201509`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_range_detail_1_201509` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `rangeKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_range_detail_1_201509`
--

LOCK TABLES `inet_tariff_traffic_range_detail_1_201509` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201509` DISABLE KEYS */;
INSERT INTO `inet_tariff_traffic_range_detail_1_201509` VALUES (3,8589934604,72057594037927940,4,15544),(3,8589934604,72057594037927940,7,219608),(3,8589934604,72057594037927940,14,266),(3,8589934604,72057594037927940,17,100264),(3,8589934604,72057594037927940,20,448706),(3,8589934604,72057594037927940,23,680347),(3,8589934604,72057594037927940,26,54433);
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201509` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_range_detail_1_201510`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_range_detail_1_201510` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `rangeKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_range_detail_1_201510`
--

LOCK TABLES `inet_tariff_traffic_range_detail_1_201510` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201510` DISABLE KEYS */;
INSERT INTO `inet_tariff_traffic_range_detail_1_201510` VALUES (3,8589934604,72057594037927940,3,53639),(3,8589934604,72057594037927940,6,10975),(3,8589934604,72057594037927940,9,204697);
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201510` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_tariff_traffic_range_detail_1_201606`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_tariff_traffic_range_detail_1_201606` (
  `contractId` int(11) NOT NULL,
  `treeNodeId` bigint(20) NOT NULL,
  `rangeKey` bigint(20) NOT NULL,
  `day` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH ( contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_tariff_traffic_range_detail_1_201606`
--

LOCK TABLES `inet_tariff_traffic_range_detail_1_201606` WRITE;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201606` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_tariff_traffic_range_detail_1_201606` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_task_process_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_task_process_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceId` int(11) NOT NULL,
  `day` datetime NOT NULL,
  `startTime` datetime DEFAULT NULL,
  `curentHour` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_task_process_1`
--

LOCK TABLES `inet_task_process_1` WRITE;
/*!40000 ALTER TABLE `inet_task_process_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_task_process_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_traffic_type_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_traffic_type_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `unit` int(11) NOT NULL DEFAULT '30000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_traffic_type_1`
--

LOCK TABLES `inet_traffic_type_1` WRITE;
/*!40000 ALTER TABLE `inet_traffic_type_1` DISABLE KEYS */;
INSERT INTO `inet_traffic_type_1` VALUES (1,'Входящий',30000),(2,'Исходящий',30000),(3,'Локальный вх.',30000),(4,'Локальный исх.',30000);
/*!40000 ALTER TABLE `inet_traffic_type_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_traffic_type_link_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_traffic_type_link_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_traffic_type_link_1`
--

LOCK TABLES `inet_traffic_type_link_1` WRITE;
/*!40000 ALTER TABLE `inet_traffic_type_link_1` DISABLE KEYS */;
INSERT INTO `inet_traffic_type_link_1` VALUES (1,'RADIUS ISG/SE'),(2,'RADIUS'),(3,'Netflow/sFlow'),(4,'RADIUS MPD');
/*!40000 ALTER TABLE `inet_traffic_type_link_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_traffic_type_link_rule_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_traffic_type_link_rule_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `type` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL DEFAULT '0',
  `interfaceId` int(11) NOT NULL DEFAULT '-1',
  `direction` int(11) NOT NULL,
  `addressFrom` varbinary(24) DEFAULT NULL,
  `addressTo` varbinary(24) DEFAULT NULL,
  `portFrom` int(11) NOT NULL,
  `portTo` int(11) NOT NULL,
  `diffServ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `counterRealm` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `counterService` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `counterVendor` int(11) NOT NULL,
  `counterType` int(11) NOT NULL,
  `counterPrefix` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trafficTypeId` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_traffic_type_link_rule_1`
--

LOCK TABLES `inet_traffic_type_link_rule_1` WRITE;
/*!40000 ALTER TABLE `inet_traffic_type_link_rule_1` DISABLE KEYS */;
INSERT INTO `inet_traffic_type_link_rule_1` VALUES (15,2,1,NULL,NULL,1,-1,-1,-1,NULL,NULL,-1,-1,NULL,'','',-2,2,NULL,1,''),(16,2,2,NULL,NULL,1,-1,-1,-1,NULL,NULL,-1,-1,NULL,'','',-2,1,NULL,2,''),(25,4,1,NULL,NULL,1,-1,-1,-1,NULL,NULL,-1,-1,NULL,'','',12341,10,'ext',1,'Входящий трафик из атрибута mpd-output-octets с префиксом ext:'),(26,4,2,NULL,NULL,1,-1,-1,-1,NULL,NULL,-1,-1,NULL,'','',12341,8,'ext:',2,'Исходящий трафик из атрибута mpd-output-octets с префиксом ext:'),(27,4,3,NULL,NULL,1,-1,-1,-1,NULL,NULL,-1,-1,NULL,'','',12341,10,'local:',3,'Входящий трафик из атрибута mpd-output-octets с префиксом local:'),(28,4,4,NULL,NULL,1,-1,-1,-1,NULL,NULL,-1,-1,NULL,'','',12341,8,'local:',4,'Исходящий трафик из атрибута mpd-output-octets с префиксом local:'),(29,1,1,NULL,NULL,1,-1,-1,-1,NULL,NULL,-1,-1,NULL,'','/^(RSE-SVC-.*)|(ISG[\\-_]?\\d+[MK]BPS)$/',-2,2,NULL,1,'<html>\nВходящий трафик (Acct-Output-Octets/Acct-Output-Gigawords) из сервисных (дочерних) сессий с именем <b>ISG/SE</b>-сервиса :\nRSE-SVC-..., ISG-1MBPS, ISG_1MPBS, ISG-512KBPS, ...\n</html>'),(30,1,2,NULL,NULL,1,-1,-1,-1,NULL,NULL,-1,-1,NULL,'','RSE-SVC-EXT',-2,1,NULL,2,'<html>\nИсходящий трафик (Acct-Input-Octets/Acct-Input-Gigawords) из сервисных (дочерних) сессий с именем <b>ISG/SE</b>-сервиса :\nRSE-SVC-..., ISG-1MBPS, ISG_1MPBS, ISG-512KBPS, ...\n</html>'),(31,3,1,NULL,NULL,2,0,-1,2,'��\0\0','����',0,0,'','','',-1,-1,NULL,3,''),(32,3,2,NULL,NULL,2,0,-1,1,'��\0\0','����',0,0,'','','',-1,-1,NULL,4,''),(33,3,3,NULL,NULL,2,0,-1,2,NULL,NULL,0,0,'','','',-1,-1,NULL,1,''),(34,3,4,NULL,NULL,2,0,-1,1,NULL,NULL,0,0,'','','',-1,-1,NULL,2,'');
/*!40000 ALTER TABLE `inet_traffic_type_link_rule_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inet_zone_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inet_zone_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inet_zone_1`
--

LOCK TABLES `inet_zone_1` WRITE;
/*!40000 ALTER TABLE `inet_zone_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inet_zone_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installed_modules`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installed_modules` (
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0',
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `pack_server` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0',
  `pack_client` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `client_zip` longblob NOT NULL,
  `init` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `uninstall` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installed_modules`
--

LOCK TABLES `installed_modules` WRITE;
/*!40000 ALTER TABLE `installed_modules` DISABLE KEYS */;
INSERT INTO `installed_modules` VALUES ('card','Card','','bitel.billing.server.card','bitel.billing.module.services.card','module','','CREATE TABLE card_data_$mid\r\n( \r\n	id int ( 11 ) NOT NULL auto_increment,\r\n	card_code int ( 11 ) NOT NULL default \'0\',\r\n	card_pin_code char ( 32 ) NOT NULL default \'\',\r\n	summa float NOT NULL default \'0\',\r\n	date1 date default NULL,\r\n	date2 date default NULL,\r\n	status tinyint( 4 ) NOT NULL default \'0\',\r\n	sid_pay int ( 11 ) NOT NULL default \'0\',\r\n	sid_act int ( 11 ) NOT NULL default \'0\',\r\n	pid int ( 11 ) NOT NULL default \'0\',\r\n	pt int ( 11 ) NOT NULL default \'0\',\r\n	did int ( 11 ) NOT NULL default \'0\',\r\n	d_date date default NULL,\r\n	cid int ( 11 ) NOT NULL default \'0\',\r\n	date datetime default NULL,\r\n	PRIMARY KEY( id ),\r\n	KEY cc( card_code ),\r\n	KEY did( did ),\r\n	KEY sid_act( sid_act ),\r\n	KEY sid_pay( sid_pay ) \r\n);\r\n\r\nCREATE TABLE card_dealer_$mid \r\n( \r\n	id int ( 11 ) NOT NULL auto_increment,\r\n	type int ( 11 ) NOT NULL default \'0\',\r\n	title char ( 150 ) NOT NULL default \'\',\r\n	date1 date default NULL,\r\n	date2 date default NULL,\r\n	login char ( 15 ) NOT NULL default \'\',\r\n	pswd char ( 32 ) default NULL,\r\n	pt int ( 11 ) NOT NULL default \'0\',\r\n	comment char ( 255 )NOT NULL default \'\',\r\n	error int ( 4 ) NOT NULL,\r\n	ip char ( 15 ) NOT NULL,\r\n	params int(11) default \'0\',\r\n	findmodes bigint NOT NULL DEFAULT 0,\r\n	allowcontracts bigint NOT NULL DEFAULT 0,\r\n	cansel_time int(11) default NULL,\r\n	st_request int(11) NOT NULL default \'0\',\r\n	st_finded int(11) NOT NULL default \'0\',\r\n	st_payed int(11) NOT NULL default \'0\',\r\n	PRIMARY KEY( id )\r\n);\r\n\r\nALTER TABLE card_dealer_$mid ADD params int(11) default \'0\';\r\nALTER TABLE card_dealer_$mid ADD cansel_time int(11) default NULL;\r\nALTER TABLE card_dealer_$mid ADD st_request int(11) NOT NULL default \'0\';\r\nALTER TABLE card_dealer_$mid ADD st_finded int(11) NOT NULL default \'0\';\r\nALTER TABLE card_dealer_$mid ADD st_payed int(11) NOT NULL default \'0\';\r\n\r\nALTER TABLE card_data_$mid ADD cs_id INT DEFAULT 0 NOT NULL AFTER card_code;\r\nALTER TABLE card_data_$mid ADD INDEX cs_id (cs_id);\r\n\r\nCREATE TABLE IF NOT EXISTS card_series_$mid (\r\n  id int(11) NOT NULL auto_increment,\r\n  title varchar(255),\r\n  PRIMARY KEY (id)\r\n);\r\n\r\nALTER TABLE card_series_$mid ADD free INT NOT NULL;\r\n\r\nALTER TABLE card_dealer_$mid ADD cid INT NOT NULL;\r\nALTER TABLE card_dealer_$mid ADD card_percent FLOAT(10,2)  NOT NULL;\r\nALTER TABLE card_dealer_$mid ADD pay_percent FLOAT(10,2)  NOT NULL;\r\nALTER TABLE card_dealer_$mid ADD card_contract VARCHAR(250)  NOT NULL;\r\nALTER TABLE card_dealer_$mid ADD pay_contract VARCHAR(250)  NOT NULL;\r\n\r\nCREATE TABLE card_action_$mid (\r\n  id int(11) NOT NULL auto_increment,\r\n  type tinyint(3) NOT NULL,\r\n  dtime datetime ,\r\n  dealer_id int(11) NOT NULL,\r\n  count int(11) NOT NULL,\r\n  summ float(20,2) NOT NULL,\r\n  cost float(20,2) NOT NULL,\r\n  PRIMARY KEY (id)\r\n);\r\n\r\nCREATE TABLE card_action_card_$mid (\r\n  action_id int(11) NOT NULL,\r\n  card_id int(11) NOT NULL,\r\n   KEY action_id (action_id)\r\n);\r\n\r\nALTER TABLE card_dealer_$mid ADD pay_comission_type TINYINT NOT NULL;\r\nALTER TABLE card_dealer_$mid ADD contract_id INT NOT NULL;\r\nALTER TABLE card_dealer_$mid MODIFY COLUMN `pt` VARCHAR(255)  DEFAULT 0;\r\nALTER TABLE card_dealer_$mid ADD findmodes BIGINT NOT NULL DEFAULT 0 AFTER params;\r\nALTER TABLE card_dealer_$mid ADD allowcontracts BIGINT NOT NULL DEFAULT 0 AFTER findmodes;\r\n\r\n\r\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES ($mid, \'ru.bitel.bgbilling.modules.card.server.event.CardPubActivateEvent\', 0, \'Событие активации карты\');\n',1,0,'DROP TABLE IF EXISTS card_data_$mid;\nDROP TABLE card_dealer_$mid;'),('inet','Inet','','ru.bitel.bgbilling.modules.inet.api.server','ru.bitel.bgbilling.modules.inet.api.client','module','','CREATE TABLE  `inv_device_group_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `parentId` int(11) NOT NULL,\n  `title` varchar(255) NOT NULL,\n  `cityId` int(11) NOT NULL,\n  `comment` text NOT NULL,\n  PRIMARY KEY  (`id`),\n  KEY `parent_id` (`parentId`),\n  KEY `city_id` (`cityId`)\n);\n\nCREATE TABLE  `inv_device_group_link_$mid` (\n  `deviceId` int(11) NOT NULL,\n  `deviceGroupId` int(11) NOT NULL,\n  KEY `device_id` (`deviceId`,`deviceGroupId`)\n);\n\nCREATE TABLE  `inv_ip_category_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `parentId` int(11) NOT NULL,\n  `title` varchar(255) NOT NULL,\n  PRIMARY KEY  (`id`),\n  KEY `parent` (`parentId`)\n);\n\nCREATE TABLE  `inv_ip_resource_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `categoryId` int(11) NOT NULL,\n  `addressFrom` varbinary(24) NOT NULL,\n  `addressTo` varbinary(24) NOT NULL,\n  `dateFrom` date,\n  `dateTo` date,\n  `comment` text NOT NULL,\n  PRIMARY KEY  (`id`),\n  KEY `ip` (`categoryId`,`addressFrom`,`addressTo`),\n  KEY `period` (`dateFrom`,`dateTo`)\n);\n\nCREATE TABLE  `inv_ip_resource_dyn_reserve_$mid` (\n  `address` varbinary(24) NOT NULL,\n  `timeout` datetime NOT NULL,\n  `ipResourceId` int(11) NOT NULL,\n  KEY `timeout` (`timeout`)\n);\n\nCREATE TABLE `inet_device_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `entityId` int(11) NOT NULL,\n  `parentId` int(11) NOT NULL,\n  `deviceTypeId` int(11) NOT NULL,\n  `identifier` varchar(150) NOT NULL,\n  `host` varchar(150) NOT NULL,\n  `username` varchar(100) NOT NULL,\n  `password` varchar(100) NOT NULL,\n  `secret` varchar(100) NOT NULL,\n  `config` text NOT NULL,\n  `comment` text NOT NULL,\n  PRIMARY KEY  (`id`)\n);\n\nCREATE TABLE `inet_accounting_period_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `contractId` int(11) NOT NULL,\n  `dateFrom` date NOT NULL,\n  `dateTo` date NOT NULL,\n  PRIMARY KEY  (`id`),\n  KEY `contract` (`contractId`)\n);\n\nCREATE TABLE `inet_device_type_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `title` varchar(250) NOT NULL,\n  `configId` int(11) NOT NULL,\n  `config` text NOT NULL,\n  `uniqueInterfaces` tinyint(4) NOT NULL,\n  `scriptId` int(11) NOT NULL,\n  `saScript` text NOT NULL,\n  `eventScript` text NOT NULL,\n  `comment` varchar(250) NOT NULL,\n  PRIMARY KEY  (`id`)\n);\n\nCREATE TABLE `inet_interface_$mid` (\n  `id` int(11) NOT NULL,\n  `title` varchar(100) NOT NULL,\n  `deviceTypeId` int(11) NOT NULL,\n  `zoneId` int(11) NOT NULL,\n  PRIMARY KEY  (`id`,`deviceTypeId`),\n  KEY `deviceTypeId` (`deviceTypeId`)\n);\n\nCREATE TABLE `inet_option_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `title` varchar(150) NOT NULL,\n  PRIMARY KEY  (`id`)\n);\n\nCREATE TABLE `inet_serv_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `contractId` int(11) NOT NULL,\n  `typeId` int(11) NOT NULL,\n  `deviceId` int(11) NOT NULL,\n  `interfaceId` int(11) NOT NULL,\n  `vlan` int(11) NOT NULL default \'0\',\n  `ipResourceId` int(11),\n  `addressFrom` varbinary(24),\n  `addressTo` varbinary(24),\n  `login` varchar(100) NOT NULL,\n  `password` char(30),\n  `dateFrom` date,\n  `dateTo` date,\n  `status` int(11) NOT NULL,\n  `sessionCountLimit` int(11) NOT NULL,\n  `deviceState` int(11) NOT NULL,\n  `accessCode` int(11) NOT NULL,\n  `deviceOptions` varchar(200) NOT NULL,\n  `comment` varchar(250) NOT NULL,\n  PRIMARY KEY  (`id`)\n);\n\nCREATE TABLE `inet_serv_type_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `title` varchar(150) NOT NULL,\n  `parentTypeIds` varchar(45) NOT NULL DEFAULT \'\',\n  `sessionInitiationType` tinyint(4) NOT NULL,\n  `sessionCountLimit` int(11) NOT NULL,\n  `addressType` tinyint(4) NOT NULL,\n  `trafficTypeLinkId` int(11) NOT NULL,\n  `needLogin` tinyint(4) NOT NULL,\n  `needDevice` tinyint(4) NOT NULL,\n  `needInterface` tinyint(4) NOT NULL,\n  `personalInterface` tinyint(4) NOT NULL DEFAULT \'1\',\n  `needVlan` tinyint(4) NOT NULL,\n  `config` text,\n  `personalVlan` tinyint(4) NOT NULL DEFAULT \'1\',\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE `inet_serv_type_device_group_link_$mid` (\n  `inetServId` int(11) NOT NULL,\n  `deviceGroupId` int(11) NOT NULL,\n  KEY `inetServId` (`inetServId`)\n);\n\nCREATE TABLE `inet_serv_type_device_type_link_$mid` (\n  `inetServId` int(11) NOT NULL,\n  `deviceTypeId` int(11) NOT NULL,\n  KEY `inetServId` (`inetServId`)\n);\n\nCREATE TABLE `inet_traffic_type_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `title` varchar(150) NOT NULL,\n  PRIMARY KEY  (`id`)\n);\n\nCREATE TABLE `inet_traffic_type_link_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `title` varchar(150) NOT NULL,\n  PRIMARY KEY  (`id`)\n);\n\nCREATE TABLE `inet_traffic_type_link_rule_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `linkId` int(11) NOT NULL,\n  `position` int(11) NOT NULL,\n  `dateFrom` date,\n  `dateTo` date,\n  `type` int(11) NOT NULL,\n  `direction` int(11) NOT NULL,\n  `addressFrom` varbinary(24),\n  `addressTo` varbinary(24),\n  `portFrom` int(11) NOT NULL,\n  `portTo` int(11) NOT NULL,\n  `diffServ` varchar(50) DEFAULT NULL,\n  `counterVendor` int(11) NOT NULL,\n  `counterType` int(11) NOT NULL,\n  `counterPrefix` varchar(50) DEFAULT NULL,\n  `trafficTypeId` int(11) NOT NULL,\n  `comment` text NOT NULL DEFAULT \'\',\n  PRIMARY KEY  (`id`)\n);\n\nCREATE TABLE `inet_zone_$mid` (\n  `id` int(11) NOT NULL auto_increment,\n  `title` varchar(150) NOT NULL,\n  PRIMARY KEY  (`id`)\n);\n\n\nCREATE TABLE  inv_ip_resource_subscription_$mid (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `subscriberId` int(11) NOT NULL,\n  `ipResourceId` int(11) NOT NULL,\n  `addressFrom` varbinary(24) NOT NULL,\n  `addressTo` varbinary(24) NOT NULL,\n  `dateFrom` date,\n  `dateTo` date,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE inet_serv_option_$mid (\n  `servId` int(11) NOT NULL,\n  `optionId` int(11) NOT NULL,\n  `dateFrom` date,\n  `dateTo` date,\n  KEY `servOptIdx` (`servId`,`optionId`)\n);\n\nCREATE TABLE inet_task_process_$mid (\n   `id` INT  NOT NULL AUTO_INCREMENT,\n  `deviceId` INT  NOT NULL,\n  `day` DATETIME  NOT NULL,\n  `startTime` DATETIME,\n  `curentHour` INT  NOT NULL,\n  PRIMARY KEY (`id`)\n);\n\nALTER TABLE inet_device_$mid ADD title VARCHAR(250) NOT NULL AFTER deviceTypeId;\nALTER TABLE inet_device_type_$mid ADD source tinyint(1) DEFAULT \'0\';\nALTER TABLE inv_ip_resource_$mid ADD  dynamic tinyint(1);\nALTER TABLE inet_serv_type_$mid ADD COLUMN `config` TEXT ;\nALTER TABLE inet_serv_$mid ADD COLUMN `title` VARCHAR(255) ;\n\nALTER TABLE inet_device_type_$mid ADD deviceEntitySpecId INT NOT NULL DEFAULT 0;\n\nALTER TABLE inet_device_type_$mid ADD saHandlerClass VARCHAR(250) NOT NULL AFTER config;\nALTER TABLE inet_device_type_$mid ADD protocolHandlerClass VARCHAR(250) NOT NULL AFTER config;\n\nALTER TABLE inet_device_type_$mid \nMODIFY COLUMN `protocolHandlerClass` VARCHAR(250),\nMODIFY COLUMN `saHandlerClass` VARCHAR(250),\nMODIFY COLUMN `saScript` TEXT,\nMODIFY COLUMN `eventScript` TEXT;\n\n\nALTER TABLE `connection_log_entry_$mid_201105` ADD COLUMN `devicePort` INTEGER  NOT NULL AFTER `deviceId`\n, DROP INDEX `app-dev-time`, ADD INDEX `app-dev-con` (`applicationId`, `deviceId`, `time`, `devicePort`, `acctSessId`);\nALTER TABLE `connection_log_entry_$mid_201106` ADD COLUMN `devicePort` INTEGER  NOT NULL AFTER `deviceId`\n, DROP INDEX `app-dev-time`, ADD INDEX `app-dev-con` (`applicationId`, `deviceId`, `time`, `devicePort`, `acctSessId`);\n\nCREATE TABLE  inv_vlan_resource_$mid (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `title` varchar(255) NOT NULL,\n  `vlanFrom` int(11) NOT NULL,\n  `vlanTo` int(11) NOT NULL,\n  `dateFrom` date,\n  `dateTo` date,\n  `comment` text NOT NULL,\n  `categoryId` int(11) NOT NULL,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE  inv_vlan_category_$mid (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `parentId` int(11) NOT NULL,\n  `title` varchar(255) NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `parent` (`parentId`)\n);\n\nCREATE TABLE  inv_vlan_resource_subscription_$mid (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `vlanResId` int(11) NOT NULL,\n  `vlan` int(11) NOT NULL,\n  `dateFrom` date,\n  `dateTo` date,\n  `subscriberId` int(11) NOT NULL,\n  `subscriberTitle` varchar(100) NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `vlan` (`vlanResId`,`vlan`),\n  KEY `period` (`dateFrom`,`dateTo`),\n  KEY `subscriber` (`subscriberId`)\n);\n\nALTER TABLE inv_ip_resource_subscription_$mid CHANGE COLUMN `subsciberId` `subscriberId` INTEGER  NOT NULL;\n\nCREATE TABLE inv_device_port_subscription_$mid (\n`id` INT  NOT NULL AUTO_INCREMENT,\n  `deviceId` INT  NOT NULL,\n  `port` INT  NOT NULL,\n  `dateFrom` DATE,\n  `dateTo` DATE,\n  `subscriberId` INT  NOT NULL,\n  `subscriberTitle` VARCHAR(255),\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE  inv_device_port_$mid (\n  `deviceId` int(11) NOT NULL,\n  `port` int(11) NOT NULL,\n  `status` int(11) NOT NULL,\n  `ipCategoryId` int(11) NOT NULL,\n  `comment` varchar(255) NOT NULL DEFAULT \'\',\n  PRIMARY KEY (`deviceId`,`port`),\n  KEY `device_port` (`deviceId`,`port`)\n);\n\nALTER TABLE `inet_option_$mid` ADD COLUMN `config` TEXT NOT NULL;\n\nALTER TABLE `inet_serv_$mid` ADD COLUMN `accessCode` INT(11) NOT NULL DEFAULT \'-1\' AFTER `deviceOptions`;\n\nCREATE TABLE `inet_connection_$mid` (\n  `id` bigint(20) NOT NULL AUTO_INCREMENT,\n  `parentId` bigint(20) NOT NULL,\n  `deviceId` int(11) NOT NULL,\n  `devicePort` int(11) NOT NULL,\n  `acctSessionId` varchar(80) NOT NULL,\n  `username` varchar(100) NOT NULL,\n  `type` int(11) NOT NULL,\n  `accessCode` int(11) NOT NULL,\n  `servId` int(11) NOT NULL,\n  `calledStationId` char(50) NOT NULL,\n  `callingStationId` char(50) NOT NULL,\n  `ipResourceId` int(11) NOT NULL,\n  `ipAddress` varbinary(24) NOT NULL,\n  `connectionStart` datetime NOT NULL,\n  `deviceOptions` char(250) NOT NULL,\n  `status` int(11) NOT NULL,\n  KEY `id` (`id`),\n  KEY `nas` (`deviceId`,`devicePort`),\n  KEY `serv` (`servId`),\n  KEY `parent` (`parentId`),\n  KEY `connectionStart` (`connectionStart`),\n  KEY `ipAddress` (`ipAddress`)\n) /*!50106 PARTITION BY HASH (deviceId)\nPARTITIONS 8 */;\n\nCREATE TABLE `inet_session_$mid` (\n  `id` bigint(20) NOT NULL AUTO_INCREMENT,\n  `connectionId` bigint(20) NOT NULL,\n  `sessionStart` datetime NOT NULL,\n  `sessionStop` datetime,\n  `lastActive` datetime NOT NULL,\n  `sessionTime` bigint(20) NOT NULL,\n  `sessionCost` decimal(12,5) NOT NULL,\n  `status` int(11) NOT NULL,\n  KEY `id` (`id`,`connectionId`),\n  KEY `start` (`sessionStart`) \n) /*!50106 PARTITION BY HASH (connectionId)\nPARTITIONS 8 */;\n\nCREATE TABLE `inet_session_detail_$mid` (\n  `sessionId` bigint(20) NOT NULL,\n  `day` int(11) NOT NULL,\n  `hour` int(11) NOT NULL,\n  `trafficTypeId` int(11) NOT NULL,\n  `amount` bigint(20) NOT NULL,\n  PRIMARY KEY  (`sessionId`,`day`,`hour`, `trafficTypeId`),\n  INDEX `sessionId` (`sessionId`)\n  ) /*!50106 PARTITION BY HASH( sessionId )\n  PARTITIONS 8*/;\n\nCREATE TABLE `inet_session_account_$mid` (\n  `contractId` int(11) NOT NULL,\n  `sessionId` bigint(20) NOT NULL,\n  `serviceId` int(11) NOT NULL,\n  `amount` bigint(20) NOT NULL,\n  `account` decimal(10,5) NOT NULL,\n  PRIMARY KEY (`contractId`, `sessionId`, `serviceId`),\n  INDEX `serviceId`(`serviceId`),\n  INDEX `sessionId` (`sessionId`)\n  ) /*!50106 PARTITION BY HASH( contractId )\n  PARTITIONS 8*/;\n\nCREATE TABLE `inet_connection_route_$mid` (\n `id` INT  NOT NULL AUTO_INCREMENT,\n `connectionId` bigint(20) NOT NULL,\n `subnet` varbinary(24)  NOT NULL,\n `mask` INT  NOT NULL,\n PRIMARY KEY (`id`),\n INDEX `connectionId`(`connectionId`) );\n \nALTER TABLE inet_interface_$mid DROP COLUMN `zoneId`;\nALTER TABLE inet_interface_$mid DROP COLUMN `ipCategoryId`;\n\nALTER TABLE inv_device_port_$mid ADD COLUMN `ipCategoryId` INT;\n\nALTER TABLE inv_ip_resource_subscription_$mid ADD COLUMN `subscriberTitle` VARCHAR(255) NOT NULL;\n\nALTER TABLE inv_device_port_subscription_$mid CHANGE COLUMN subcriberId subscriberId INTEGER NOT NULL;\nALTER TABLE inv_device_port_subscription_$mid CHANGE COLUMN subcriberTitle subscriberTitle VARCHAR(255) NOT NULL;\n\nALTER TABLE `inet_session_detail_$mid` ADD COLUMN `deviceId` INT NOT NULL AFTER `trafficTypeId`\n, CHANGE COLUMN `day` `day` TINYINT NOT NULL\n, CHANGE COLUMN `hour` `hour` TINYINT NOT NULL  \n, DROP PRIMARY KEY \n, ADD PRIMARY KEY (`sessionId`, `day`, `hour`, `trafficTypeId`, `deviceId`);\n\nALTER TABLE `inet_option_$mid` ADD COLUMN `parentId` INT NOT NULL  AFTER `id` \n, ADD COLUMN `comment` TEXT NOT NULL  AFTER `config`;\n\nALTER TABLE `inet_option_$mid` ADD COLUMN `groupIntersection` TINYINT NOT NULL  AFTER `title`;\n\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN acctSessionId acctSessionId varchar(60) DEFAULT NULL;\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN username username varchar(100) DEFAULT NULL;\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN calledStationId calledStationId varchar(50) DEFAULT NULL;\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN callingStationId callingStationId varchar(50) DEFAULT NULL;\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN ipAddress ipAddress varbinary(24) DEFAULT NULL;\n\nALTER TABLE `inet_device_$mid` ADD COLUMN `uptime` TEXT NOT NULL DEFAULT \'\'  AFTER `identifier` \n, ADD COLUMN `uptimeTime` DATETIME NULL  AFTER `uptime` ;\n\nALTER TABLE inet_traffic_type_link_rule_$mid CHANGE COLUMN diffServ diffServ varchar(50) DEFAULT NULL;\nALTER TABLE inet_traffic_type_link_rule_$mid CHANGE COLUMN counterPrefix counterPrefix varchar(50) DEFAULT NULL;\n\nALTER TABLE `inet_traffic_type_link_rule_$mid` ADD COLUMN `sourceId` INT NOT NULL DEFAULT 0  AFTER `type`,\n ADD COLUMN `interfaceId` INT NOT NULL DEFAULT -1  AFTER `sourceId`;\n \nCREATE TABLE  `inet_tariff_traffic_max_$mid` (\n  `contractId` int(11) NOT NULL,\n  `treeNodeId` bigint(20) NOT NULL,\n  `maxKey` bigint(20) NOT NULL,\n  `counter` int(11) NOT NULL,\n  `yy` int(11) NOT NULL,\n  `mm` int(11) NOT NULL,\n  `amountMax` bigint(20) NOT NULL,\n  `amount1` bigint(20) NOT NULL,\n  `amount2` bigint(20) NOT NULL,\n  PRIMARY KEY (`contractId`,`treeNodeId`,`maxKey`,`yy`,`mm` )\n)/*!50106 PARTITION BY HASH( contractId )\nPARTITIONS 8*/;\n\n\nALTER TABLE `inet_session_$mid` CHANGE COLUMN status status SMALLINT NOT NULL;\n\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN accessCode accessCode SMALLINT NOT NULL;\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN status status SMALLINT NOT NULL;\n\nALTER TABLE `inet_connection_$mid` ADD COLUMN deviceState SMALLINT NOT NULL DEFAULT \'1\' AFTER `connectionStart`;\nALTER TABLE `inet_session_$mid` ADD COLUMN deviceState SMALLINT NOT NULL DEFAULT \'1\' AFTER `sessionCost`;\n\n\n\nALTER TABLE `inet_serv_$mid` ADD COLUMN `parentId` INT(11) NOT NULL  AFTER `id` \n, ADD INDEX `parentId` (`parentId` ASC) \n, ADD INDEX `contractId` (`contractId` ASC) \n, ADD INDEX `deviceId` (`deviceId` ASC) ;\n\nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `parentTypeIds` VARCHAR(80) NOT NULL DEFAULT \'\' AFTER `title`;\n\nALTER TABLE `inet_session_$mid` ADD COLUMN `parentId` BIGINT(20) NOT NULL  AFTER `id` \n, DROP INDEX `id` \n, ADD INDEX `id` (`id` ASC) \n, ADD INDEX `parentId` (`parentId` ASC) \n, ADD INDEX `connectionId` (`connectionId` ASC) ;\n\nALTER TABLE `inet_traffic_type_link_rule_$mid` ADD COLUMN `counterService` VARCHAR(45) NOT NULL  AFTER `diffServ` ;\n\n\n\nCREATE TABLE  `inet_tariff_traffic_range_$mid` (\n  `contractId` int(11) NOT NULL,\n  `treeNodeId` bigint(20) NOT NULL,\n  `rangeKey` bigint(20) NOT NULL,\n  `amount` bigint(20) NOT NULL,\n  `counter` int(11) NOT NULL,\n  `yy` int(11) NOT NULL,\n  `mm` int(11) NOT NULL,\n  PRIMARY KEY (`contractId`,`treeNodeId`,`rangeKey`,`yy`,`mm`) \n) \n/*!50106 PARTITION BY HASH ( contractId)\nPARTITIONS 8 */;\n \n  \nALTER TABLE inet_tariff_traffic_max_$mid ADD COLUMN `yy` INT  NOT NULL AFTER `counter`,\nADD COLUMN `mm` INT  NOT NULL AFTER `yy`,\nDROP PRIMARY KEY,\nADD PRIMARY KEY (`contractId`, `treeNodeId`, `maxKey`, `yy`, `mm`);\n\n\nALTER TABLE `inet_tariff_traffic_range_$mid` ADD COLUMN `yy` INT  NOT NULL AFTER `counter`,\nADD COLUMN `mm` INT  NOT NULL AFTER `yy`,\nDROP PRIMARY KEY,\nADD PRIMARY KEY  (`contractId`, `treeNodeId`, `rangeKey`, `yy`, `mm`);\n\n\nALTER TABLE `inet_serv_$mid` CHANGE COLUMN `interfaceId` `interfaceId` TINYINT(4) NOT NULL DEFAULT \'-1\'  ,\n CHANGE COLUMN `vlan` `vlan` INT(11) NOT NULL DEFAULT \'-1\'  ;\n\nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `personalVlan` TINYINT(4)  NOT NULL DEFAULT 1 AFTER `config`;\n\nALTER TABLE `inet_serv_type_$mid` CHANGE COLUMN `personalInterface` `personalInterface` tinyint(4) NOT NULL DEFAULT \'1\';	\n\nALTER TABLE `inv_ip_resource_dyn_reserve_$mid` MODIFY COLUMN timeout BIGINT NOT NULL;\n\nALTER TABLE `inet_serv_$mid` ADD COLUMN `ipResourceSubscriptionId` INT NOT NULL  AFTER `ipResourceId` ;\n\n-- #BLOCK#\nCREATE TABLE inv_ip_resource_subscription_dyn_$mid_201112 LIKE inv_ip_resource_subscription_dyn_201112;\nINSERT INTO inv_ip_resource_subscription_dyn_$mid_201112 SELECT * FROM inv_ip_resource_subscription_dyn_201112;\n-- #ENDB#\n\nALTER TABLE `inet_task_process_$mid` CHANGE COLUMN `hour` `day` DATETIME  NOT NULL,\nADD COLUMN `curentHour` INT  NOT NULL AFTER `startTime`;\n\nALTER TABLE `inet_session_account_$mid` ADD INDEX `sessionId`(`sessionId`);		\nALTER TABLE `inet_session_detail_$mid` ADD INDEX `sessionId`(`sessionId`); \n\nALTER TABLE inet_serv_$mid ADD KEY login(login);\n\nALTER TABLE `inet_accounting_period_$mid` ADD COLUMN `userId` INTEGER NOT NULL DEFAULT \'0\';\n\nALTER TABLE `inet_device_type_$mid` ADD COLUMN `deviceManagerClass` VARCHAR(250) NULL  AFTER `saHandlerClass` ;\n\nALTER TABLE `inet_serv_$mid` ADD COLUMN `macAddress` varbinary(8) NULL  AFTER `vlan` ;\n\nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `needMacAddress` TINYINT(4)  NOT NULL DEFAULT 0 AFTER `needVlan`;\n\nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `sessionCountLimitLock` TINYINT(4)  NOT NULL DEFAULT 0 AFTER `sessionCountLimit`;\n\nALTER TABLE `inv_device_port_$mid` ADD COLUMN `comment` VARCHAR(255) NOT NULL DEFAULT \'\' AFTER `ipCategoryId` ;\nALTER TABLE `inv_device_port_$mid` MODIFY COLUMN `comment` VARCHAR(255) NOT NULL DEFAULT \'\';  \n\nALTER TABLE `inet_session_detail_$mid` PARTITION BY HASH( sessionId ) PARTITIONS 8;\n\nALTER TABLE `inet_tariff_traffic_range_$mid` PARTITION BY HASH( contractId ) PARTITIONS 8;\n\nALTER TABLE `inet_tariff_traffic_max_$mid` PARTITION BY HASH( contractId ) PARTITIONS 8;\n\n\nALTER TABLE `inet_traffic_type_link_rule_$mid` ADD COLUMN `counterRealm` VARCHAR(35) NOT NULL DEFAULT \'\' AFTER `diffServ` ;\n\nALTER TABLE `inet_traffic_type_link_rule_$mid` MODIFY COLUMN `counterService` VARCHAR(100) NOT NULL  AFTER `counterRealm` ;\n\nALTER TABLE `inet_serv_$mid` ADD COLUMN `config` VARCHAR(255) NULL  AFTER `accessCode` ;\n\nALTER TABLE `inet_serv_$mid` MODIFY COLUMN `interfaceId` int(11) NOT NULL ;\n\nALTER TABLE `inet_connection_$mid` ADD COLUMN agentDeviceId int(11) NOT NULL DEFAULT \'0\' AFTER `devicePort`;\n\nALTER TABLE `inet_session_$mid` ADD COLUMN `splittedId` BIGINT(20) NOT NULL AFTER `parentId`;\n\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN acctSessionId acctSessionId varchar(80) DEFAULT NULL;\n\n\nALTER TABLE `inv_ip_resource_$mid` ADD COLUMN `router` VARCHAR(150) NOT NULL  AFTER `dateTo` , \nADD COLUMN `subnetMask` VARCHAR(150) NOT NULL  AFTER `router` , \nADD COLUMN `dns` VARCHAR(150) NOT NULL  AFTER `subnetMask` , \nADD COLUMN `config` TEXT NOT NULL  AFTER `dynamic` ;\n\nALTER TABLE `inet_serv_$mid` CHANGE COLUMN `macAddress` `macAddress` VARBINARY(64) NULL DEFAULT NULL  ;\n\nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `needIdentifier` TINYINT(4)  NOT NULL DEFAULT 0 AFTER `needVlan`;\n\nALTER TABLE `inet_serv_$mid` ADD COLUMN `identifier` varchar(80) NULL  AFTER `vlan` ;\n\nCREATE TABLE `inv_ip_resource_subscription_real_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `subscriberId` int(11) NOT NULL,\n  `subscriberTitle` varchar(255) DEFAULT NULL,\n  `addressFrom` varbinary(24) NOT NULL,\n  `addressTo` varbinary(24) NOT NULL,\n  `dateFrom` date DEFAULT NULL,\n  `dateTo` date DEFAULT NULL,\n  PRIMARY KEY (`id`)\n);\n\nALTER TABLE `inet_traffic_type_$mid` ADD COLUMN `unit` INT(11) NOT NULL DEFAULT 30000  AFTER `title` ;\n\nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `addressAllInterface` TINYINT(4) NOT NULL DEFAULT \'0\'  AFTER `addressType` ;\n\n-- #BLOCK#\nALTER TABLE `inv_device_port_$mid` ADD COLUMN `title` VARCHAR(80) NOT NULL DEFAULT \'-\'  AFTER `port` ;\nUPDATE inv_device_port_$mid as port \nLEFT JOIN inet_device_$mid as device ON port.deviceId=device.id\nLEFT JOIN inet_interface_$mid as iface ON device.deviceTypeId=iface.deviceTypeId AND port.port=iface.id\nSET port.title=IFNULL(iface.title,\'\')\nWHERE port.title=\'-\' ;\n-- #ENDB#\n\nALTER TABLE `inet_device_type_$mid` ADD COLUMN `uniqueInterfaces` TINYINT NOT NULL  AFTER `deviceManagerClass` ;\n\nCREATE TABLE `inv_device_interface_index_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `deviceId` int(11) NOT NULL,\n  `interfaceId` int(11) NOT NULL,\n  `timeFrom` datetime DEFAULT NULL,\n  `timeTo` datetime DEFAULT NULL,\n  `ifIndex` int(11) NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `iface` (`deviceId`,`interfaceId`)\n);\n\nALTER TABLE `inet_task_process_$mid` ADD COLUMN `type` TINYINT NULL DEFAULT 0  AFTER `curentHour`;\n-- #BLOCK#\nALTER TABLE `inv_device_port_$mid` ADD COLUMN `title` VARCHAR(80) NOT NULL DEFAULT \'-\'  AFTER `port` ;\nUPDATE inv_device_port_$mid as port \nLEFT JOIN inet_device_$mid as device ON port.deviceId=device.id\nLEFT JOIN inet_interface_$mid as iface ON device.deviceTypeId=iface.deviceTypeId AND port.port=iface.id\nSET port.title=IFNULL(iface.title,\'\')\nWHERE port.title=\'-\' ;\n-- #ENDB#\n\nALTER TABLE `inet_serv_$mid` CHANGE COLUMN `login` `login` varchar(100) NOT NULL;\nALTER TABLE `inet_connection_$mid` CHANGE COLUMN username username varchar(100) DEFAULT NULL;\n\nALTER TABLE `inet_tariff_traffic_range_$mid` ADD COLUMN `maxAmount` BIGINT(20) NOT NULL DEFAULT \'-1\'  AFTER `counter` ;\n\nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `needContractObject` TINYINT(4) NOT NULL DEFAULT \'0\'  AFTER `needMacAddress` ;\n\nALTER TABLE `inet_serv_$mid` ADD COLUMN `contractObjectId` INT NOT NULL DEFAULT \'0\'  AFTER `dateTo` \n, ADD INDEX `contractObjectId` (`contractObjectId` ASC) ;\n\nCREATE  TABLE `inet_serv_restriction_$mid` (\n  `id` INT NOT NULL AUTO_INCREMENT,\n  `servId` INT NOT NULL ,\n  `dateFrom` DATE NULL ,\n  `dateTo` DATE NULL ,\n  `type` INT NOT NULL ,\n  `serviceIds` VARCHAR(255) NOT NULL DEFAULT \'\' ,\n  `amount` DECIMAL(10,5) NOT NULL DEFAULT 0 ,\n  `comment` VARCHAR(255) NOT NULL DEFAULT \'\' ,\n  PRIMARY KEY (`id`) ,\n  INDEX `servId` (`servId` ASC) );\n  \nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `needRestriction` TINYINT(4) NOT NULL DEFAULT \'0\'  AFTER `needContractObject` ;\n\nALTER TABLE `inet_serv_restriction_$mid` CHANGE COLUMN `amount` `amount` DECIMAL(20,5) NOT NULL DEFAULT \'0.00000\'  ;\n\nALTER TABLE `inv_device_port_subscription_$mid` ADD INDEX `devicePort` (`deviceId` ASC, `port` ASC) ;\n\nALTER TABLE `inet_connection_$mid` ADD COLUMN `circuitId` varchar(45) NULL DEFAULT NULL  AFTER `agentDeviceId` ;\n\nALTER TABLE `inet_serv_type_$mid` ADD COLUMN `ipFromParentRange` TINYINT(4) NULL DEFAULT 0;\n\nALTER TABLE `inet_device_$mid` ADD COLUMN `dateFrom` DATE NULL  AFTER `host` , ADD COLUMN `dateTo` DATE NULL  AFTER `dateFrom` ;\n\nALTER TABLE `inet_device_$mid` ADD COLUMN `orderManagerDisabled` TINYINT(4) NOT NULL DEFAULT \'0\'  AFTER `dateTo`;\n\nCREATE TABLE  `inet_device_group_link_$mid` (\n  `deviceId` int(11) NOT NULL,\n  `deviceGroupId` int(11) NOT NULL,\n  KEY `device_id` (`deviceId`,`deviceGroupId`)\n);\n\n-- #BLOCK#\nCREATE TABLE `inet_accounting_period_$mid_bak_sec` LIKE `inet_accounting_period_$mid`;\n\nINSERT INTO `inet_accounting_period_$mid_bak_sec` SELECT * FROM `inet_accounting_period_$mid`;\n-- #ENDB#\n\n-- #BLOCK#\nALTER TABLE `inet_accounting_period_$mid` ADD COLUMN `timeFrom` DATETIME NOT NULL  AFTER `contractId` ,\n ADD COLUMN `timeTo` DATETIME NOT NULL  AFTER `timeFrom` ;\n\nUPDATE `inet_accounting_period_$mid` \n SET timeFrom=dateFrom, timeTo=DATE_ADD( DATE_ADD( dateTo, INTERVAL 23 HOUR), INTERVAL \'59:59\' MINUTE_SECOND)\n WHERE (timeFrom IS NULL OR timeFrom=\'0000-00-00 00:00:00\') ;\n \nALTER TABLE `inet_accounting_period_$mid` CHANGE COLUMN `dateFrom` `dateFrom` DATE NULL ,\n CHANGE COLUMN `dateTo` `dateTo` DATE NULL  ;\n -- #ENDB#\n\nDELETE d.* FROM inv_ip_resource_subscription_dyn_$mid as d LEFT JOIN inet_connection_$mid as c ON c.id=d.connectionId\nWHERE d.timeTo IS NULL AND c.id IS NULL AND d.timeFrom<=\"2015-10-05 00:00:00\";\n\n\n\n-- события\n-- #BLOCK#\nDELETE FROM script_event_type WHERE mid=$mid;\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES ($mid, \'ru.bitel.bgbilling.modules.inet.api.server.event.InetAccountingPeriodActivateEvent\', 1, \'Запрос учетного периода\');\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES ($mid, \'ru.bitel.bgbilling.modules.inet.api.server.event.InetServChangingEvent\', 1, \'Изменяется сервис договора\');\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES ($mid, \'ru.bitel.bgbilling.modules.inet.radius.RadiusAccessRequestEvent\', 1, \'Перед ответом на RADIUS Access-Request\');\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES ($mid, \'ru.bitel.bgbilling.kernel.wifi.common.event.WiFiActivateEvent\', 0, \'WiFi активация\');\n-- #ENDB#\n',2,0,NULL),('update','BGBillingUpdate','','none','bitel.billing.module','update','','',3,0,NULL),('update_lib','BGBillingUpdateLib','','none','bitel.billing.lib','update_lib','','',4,0,NULL),('rscm','RSCM','','ru.bitel.bgbilling.modules.rscm.server','ru.bitel.bgbilling.modules.rscm.client','module','','CREATE TABLE rscm_service_$mid\n(\n	`id` INT AUTO_INCREMENT, \n	`sid` VARCHAR (255),\n	`unit` VARCHAR (30),\n	UNIQUE(`id`)\n);\n\nALTER TABLE rscm_service_$mid DROP INDEX `id_2`;\n\nCREATE TABLE `rscm_service_account_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `cid` int(11) NOT NULL,\n  `sid` int(11) NOT NULL,\n  `date` date DEFAULT NULL,\n  `amount` bigint(20) DEFAULT NULL,\n  `comment` text NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `cid` (`cid`),\n  KEY `date_cid` (`date`,`cid`)\n);\n\nUPDATE `installed_modules` SET `pack_client`=\'ru.bitel.bgbilling.modules.rscm.client\', `pack_server`=\'ru.bitel.bgbilling.modules.rscm.server\' WHERE `name`=\'rscm\';\n\n-- #BLOCK#\nDELETE FROM script_event_type WHERE mid=$mid;\n\nSET @mid=$mid, @old_event_id=1, @new_event_id=\'ru.bitel.bgbilling.modules.rscm.server.event.RSCMContractServiceUpdateEvent\', @event_title=\'Изменение/добавление начисления услуги RSCM в договор\';\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES (@mid, @new_event_id, 1, @event_title);\nINSERT INTO script_function_event_type(fid, mid, event_id) SELECT sfet1.fid, sfet1.mid, @new_event_id FROM script_function_event_type AS sfet1 LEFT JOIN script_function_event_type AS sfet2 ON sfet1.fid=sfet2.fid AND sfet1.mid=sfet2.mid AND sfet2.event_id=@new_event_id WHERE sfet1.mid=@mid AND sfet1.event_id=@old_event_id AND sfet2.fid IS NULL;\n\n-- #ENDB#\n',5,0,'DROP TABLE IF EXISTS rscm_service_$mid;'),('npay','NPay','','bitel.billing.server.npay','bitel.billing.module.services.npay','module','','CREATE TABLE npay_service_object_$mid\n( \n	csid int(11) NOT NULL,\n	oid int(11) NOT NULL,\n	col int(11) NOT NULL,\n	KEY csid (csid) \n);\n\nALTER TABLE npay_service_object_$mid ADD col INT DEFAULT 1 NOT NULL;\n\nALTER TABLE npay_service_object_$mid ADD id INT NOT NULL DEFAULT 0 FIRST;\nUPDATE npay_service_object_$mid SET id=csid WHERE id=0;\nALTER TABLE npay_service_object_$mid CHANGE id id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;\nALTER TABLE npay_service_object_$mid ADD COLUMN cid INTEGER  NOT NULL AFTER id;\nALTER TABLE npay_service_object_$mid ADD INDEX cid(cid);\nALTER TABLE npay_service_object_$mid ADD INDEX oid(oid);\nALTER TABLE npay_service_object_$mid ADD sid INT NOT NULL AFTER cid;\nALTER TABLE npay_service_object_$mid ADD date1 DATE;\nALTER TABLE npay_service_object_$mid ADD date2 DATE;\nALTER TABLE npay_service_object_$mid ADD emid INT NOT NULL;\nALTER TABLE npay_service_object_$mid ADD eid INT NOT NULL;\nALTER TABLE npay_service_object_$mid ADD comment VARCHAR(250) NOT NULL;\n\n-- удаление не привязанных к договорам абонплат\nDELETE service_object FROM npay_service_object_$mid AS service_object LEFT JOIN contract ON service_object.cid=contract.id WHERE contract.id IS NULL;\n\n-- #BLOCK#\n\nDELETE FROM script_event_type WHERE mid=$mid;\n\nSET @mid=$mid, @old_event_id=1, @new_event_id=\'ru.bitel.bgbilling.modules.npay.server.bean.event.DebetStatusManageOpenGetAdditionalCharge\', @event_title=\'Запрос доп. расхода для открытия договора\';\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES (@mid, @new_event_id, 1, @event_title);\nINSERT INTO script_function_event_type(fid, mid, event_id) SELECT sfet1.fid, sfet1.mid, @new_event_id FROM script_function_event_type AS sfet1 LEFT JOIN script_function_event_type AS sfet2 ON sfet1.fid=sfet2.fid AND sfet1.mid=sfet2.mid AND sfet2.event_id=@new_event_id WHERE sfet1.mid=@mid AND sfet1.event_id=@old_event_id AND sfet2.fid IS NULL;\n\nSET @mid=$mid, @old_event_id=2, @new_event_id=\'ru.bitel.bgbilling.modules.npay.server.bean.event.DebetStatusManageAfterOpen\', @event_title=\'После открытия договора по платежу\';\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES (@mid, @new_event_id, 1, @event_title);\nINSERT INTO script_function_event_type(fid, mid, event_id) SELECT sfet1.fid, sfet1.mid, @new_event_id FROM script_function_event_type AS sfet1 LEFT JOIN script_function_event_type AS sfet2 ON sfet1.fid=sfet2.fid AND sfet1.mid=sfet2.mid AND sfet2.event_id=@new_event_id WHERE sfet1.mid=@mid AND sfet1.event_id=@old_event_id AND sfet2.fid IS NULL;\n\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES ($mid, \'ru.bitel.bgbilling.kernel.event.events.CalculateEvent\', 0, \'Начисление\');\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES ($mid, \'ru.bitel.bgbilling.modules.npay.server.bean.event.ContractNpayChangedEvent\', 1, \'Изменение абонплаты в договоре\');\n\n\n\n\n-- #ENDB#',6,0,'DROP TABLE IF EXISTS npay_service_object_$mid;'),('paymaster','PayMaster','','ru.bitel.bgbilling.modules.paymaster.server','ru.bitel.bgbilling.modules.paymaster.client','module','','CREATE TABLE `paymaster_transaction_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `contract_id` int(11) NOT NULL,\n  `payment_id` int(11) NOT NULL,\n  `payment_date` datetime NOT NULL,\n  `summa` decimal(12,2) NOT NULL,\n  `sys_payment_data` text NOT NULL,\n  `sys_payment_id` int(11) NOT NULL,\n  `sys_payment_date` datetime NOT NULL,\n  PRIMARY KEY (`id`)\n);',7,0,NULL),('tv','Модуль TV','','ru.bitel.bgbilling.modules.tv.api.server','ru.bitel.bgbilling.modules.tv.api.client','module','','CREATE TABLE `tv_account_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `parentId` int(11) NOT NULL,\n  `title` varchar(150) NOT NULL,\n  `contractId` int(11) NOT NULL,\n  `specId` int(11) NOT NULL,\n  `deviceId` int(11) NOT NULL,\n  `login` varchar(200) DEFAULT NULL,\n  `pin` varchar(100) DEFAULT NULL,\n  `dateFrom` date DEFAULT NULL,\n  `dateTo` date DEFAULT NULL,\n  `status` int(11) NOT NULL,\n  `comment` varchar(255) NOT NULL,\n  `config` varchar(255) DEFAULT NULL,\n  `deviceState` int(11) NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `contract` (`contractId`),\n  KEY `device` (`deviceId`),\n  KEY `period` (`dateFrom`,`dateTo`),\n  KEY `parent` (`parentId`)\n);\n\nCREATE TABLE `tv_account_spec_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `title` varchar(150) NOT NULL,\n  `parentTypeIds` varchar(45) NOT NULL DEFAULT \'\',\n  `needLogin` tinyint(4) NOT NULL,\n  `needPin` tinyint(4) NOT NULL,\n  `needDevice` tinyint(4) NOT NULL,\n  `config` text,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE `tv_account_spec_device_group_link_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `tvAccountSpecId` int(11) NOT NULL,\n  `deviceGroupId` int(11) NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `tvAccountSpec` (`tvAccountSpecId`)\n);\n\nCREATE TABLE `tv_account_spec_device_type_link_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `tvAccountSpecId` int(11) NOT NULL,\n  `deviceTypeId` int(11) NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `tvAccountSpec` (`tvAccountSpecId`)\n);\n\nCREATE TABLE `tv_device_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `entityId` int(11) NOT NULL,\n  `parentId` int(11) NOT NULL,\n  `deviceTypeId` int(11) NOT NULL,\n  `title` varchar(200) NOT NULL,\n  `host` varchar(100) NOT NULL,\n  `username` varchar(100) NOT NULL,\n  `password` varchar(100) NOT NULL,\n  `secret` varchar(100) NOT NULL,\n  `config` text NOT NULL,\n  `comment` text NOT NULL,\n  `identifier` varchar(150) NOT NULL,\n  `uptime` text NOT NULL,\n  `uptimeTime` text,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE `tv_device_type_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `title` varchar(250) NOT NULL,\n  `deviceEntitySpecId` int(11) NOT NULL,\n  `config` text NOT NULL,\n  `protocolHandlerClass` varchar(250) DEFAULT NULL,\n  `saHandlerClass` varchar(250) DEFAULT NULL,\n  `deviceManagerClass` varchar(250) DEFAULT NULL,\n  `comment` varchar(250) NOT NULL,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE `tv_service_spec_channel_link_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `serviceSpecId` int(11) NOT NULL,\n  `deviceId` int(11) NOT NULL,\n  `channel` varchar(255) NOT NULL,\n  `dateFrom` date DEFAULT NULL,\n  `dateTo` date DEFAULT NULL,\n  `comment` text NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `service` (`serviceSpecId`)\n);\n\nCREATE TABLE `inv_device_group_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `parentId` int(11) NOT NULL,\n  `title` varchar(255) NOT NULL,\n  `cityId` int(11) NOT NULL,\n  `comment` text NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `parent_id` (`parentId`),\n  KEY `city_id` (`cityId`)\n);\n\nCREATE TABLE  `inv_device_group_link_$mid` (\n  `deviceId` int(11) NOT NULL,\n  `deviceGroupId` int(11) NOT NULL,\n  KEY `device_id` (`deviceId`,`deviceGroupId`)\n);\n\nALTER TABLE `tv_account_$mid` CHANGE COLUMN `pin` `password` varchar(100) DEFAULT NULL;\n\nALTER TABLE `tv_account_spec_$mid` ADD COLUMN `needIdentifier` TINYINT(4)  NOT NULL DEFAULT 0 AFTER `needDevice`;\nALTER TABLE `tv_account_$mid` ADD COLUMN `identifier` varchar(80) NULL  AFTER `password` ;\n\nALTER TABLE `tv_account_spec_$mid` ADD COLUMN `needMacAddress` TINYINT(4)  NOT NULL DEFAULT 0 AFTER `needIdentifier`;\nALTER TABLE `tv_account_$mid` ADD COLUMN `macAddress` varbinary(8) NULL  AFTER `identifier` ;\nALTER TABLE `tv_account_$mid` CHANGE COLUMN `macAddress` `macAddress` VARBINARY(64) NULL DEFAULT NULL  ;\n\nALTER TABLE `tv_account_$mid` ADD COLUMN `deviceOptions` varchar(200) NOT NULL AFTER `deviceState`;\nALTER TABLE `tv_account_$mid` ADD COLUMN `accessCode` INT(11) NOT NULL DEFAULT \'-1\' AFTER `deviceOptions`;\n\nCREATE TABLE `tv_channel_spec_$mid` (\n  `id` INT NOT NULL ,\n  `entityId` INT NOT NULL ,\n  `title` VARCHAR(150) NOT NULL ,\n  `serviceSpecId` INT NOT NULL ,\n  `identifier` VARCHAR(150) NOT NULL ,\n  `dateFrom` DATE NULL ,\n  `dateTo` DATE NULL ,\n  `comment` VARCHAR(255) NOT NULL ,\n  PRIMARY KEY (`id`) ,\n  INDEX `serviceSpec` (`serviceSpecId` ASC) ,\n  INDEX `entity` (`entityId` ASC) );\n\n\n-- #BLOCK#\nCREATE TABLE `tv_account_detail_$mid_201304_new` (\n  `contractId` int(11) NOT NULL,\n  `accountId` int(11) NOT NULL,\n  `productId` int(11) NOT NULL,\n  `sid` int(11) NOT NULL,\n  `day` int(11) NOT NULL,\n  `account` decimal(10,5) NOT NULL,\n  PRIMARY KEY (`contractId`,`accountId`,`productId`,`sid`,`day`)\n) /*!50100 PARTITION BY HASH (contractId)\nPARTITIONS 8 */;\nINSERT INTO tv_account_detail_$mid_201304_new SELECT contractId, accountId, productId, sid, day, SUM(account)\nFROM tv_account_detail_$mid_201304 GROUP BY contractId, accountId, productId, sid, day;\nALTER TABLE `tv_account_detail_$mid_201304` RENAME TO `tv_account_detail_$mid_201304_old`;\nALTER TABLE `tv_account_detail_$mid_201304_new` RENAME TO `tv_account_detail_$mid_201304`;\n-- #ENDB#\n\nALTER TABLE `tv_account_spec_$mid` CHANGE COLUMN `needPin` `needPassword` TINYINT(4) NOT NULL , ADD COLUMN `needPin` TINYINT(4) NOT NULL  AFTER `needPassword` ;\nALTER TABLE `tv_account_$mid` ADD COLUMN `pin` VARCHAR(100) NULL DEFAULT NULL  AFTER `password` ;\n\nALTER TABLE `tv_account_$mid` ADD COLUMN `deviceAccountId` VARCHAR(100) NULL DEFAULT NULL  AFTER `config` ;\n\nALTER TABLE `tv_account_$mid` ADD INDEX `deviceAccountId` (`deviceAccountId` ASC) ;\n\nALTER TABLE `tv_device_$mid` ADD COLUMN `dateFrom` DATE NULL  AFTER `host` , ADD COLUMN `dateTo` DATE NULL  AFTER `dateFrom` ;\n\nALTER TABLE `tv_device_$mid` ADD COLUMN `orderManagerDisabled` TINYINT(4) NOT NULL DEFAULT \'0\'  AFTER `dateTo`;\n\nALTER TABLE `tv_channel_spec_$mid` CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT;\n\n-- события\n-- #BLOCK#\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES ($mid, \'ru.bitel.bgbilling.modules.tv.api.common.event.TvAccountModifyEvent\', 1, \'Изменяется аккаунт договора\');\n-- #ENDB#',8,0,NULL),('ru.bitel.bgbilling.plugins.helpdesk','Служба поддержки пользователей (HelpDesk)','','ru.bitel.bgbilling.plugins.helpdesk.server','ru.bitel.bgbilling.plugins','plugin','','\nCREATE TABLE `helpdesk_topic_$mid` (\n  `id` INTEGER  NOT NULL AUTO_INCREMENT,\n  `title` VARCHAR(255)  NOT NULL,\n  `cid` INTEGER  NOT NULL,\n  `closed` TINYINT(1)  NOT NULL DEFAULT 0,\n  `date` TIMESTAMP  NOT NULL ,\n  `comm` TINYINT(4) NOT NULL DEFAULT 0,\n  `user_id` INTEGER NOT NULL DEFAULT -1,\n  `status` SMALLINT  NOT NULL DEFAULT 0,\n  `contract_package_id` INTEGER NOT NULL DEFAULT -1,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE `helpdesk_message_$mid` (\n  `id` INTEGER  NOT NULL AUTO_INCREMENT,\n  `topic_id` INTEGER  NOT NULL,\n  `body` TEXT  NOT NULL,\n  `date_from` DATETIME  NOT NULL ,\n  `user_from` INTEGER  NOT NULL,\n  `date_to` DATETIME  DEFAULT NULL,\n  `user_to` INTEGER  NOT NULL,\n  PRIMARY KEY (`id`)\n);\n\nALTER TABLE `helpdesk_topic_$mid` ADD COLUMN `user_id` INTEGER NOT NULL DEFAULT -1;\nALTER TABLE `helpdesk_topic_$mid` ADD COLUMN `status` SMALLINT  NOT NULL DEFAULT 0;\nALTER TABLE `helpdesk_topic_$mid` ADD COLUMN `contract_package_id` INTEGER  NOT NULL DEFAULT -1;\nALTER TABLE `helpdesk_message_$mid` ADD INDEX `topic_id`(`topic_id`), ADD INDEX `from_to`(`user_from`, `user_to`);\nALTER TABLE `helpdesk_message_$mid` MODIFY COLUMN `date_from` DATETIME  NOT NULL DEFAULT \'0000-00-00 00:00:00\';\nALTER TABLE `helpdesk_message_$mid` MODIFY COLUMN `date_to` DATETIME  DEFAULT NULL;\n\nCREATE TABLE `helpdesk_topic_statuses_$mid` (\n  `id` INTEGER  NOT NULL AUTO_INCREMENT,\n  `title` VARCHAR(128)  NOT NULL,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE `helpdesk_package_$mid` (\n  `lu` timestamp NOT NULL,\n  `id` int(11) NOT NULL auto_increment COMMENT \'код пакета\',\n  `title` varchar(255) NOT NULL COMMENT \'название пакета\',\n  `summa` decimal(12,2) NOT NULL default \'1.00\' COMMENT \'стоимость пакета\',\n  `count` int(11) NOT NULL default \'1\' COMMENT \'количество обращений в пакете\',\n  `period` int(11) NOT NULL default \'1\' COMMENT \'на сколько дней пакет активируется\',\n  `status` int(11) NOT NULL default \'0\' COMMENT \'статус пакета (вкл./выкл.)\',\n  `charge_id` int(11) NOT NULL default \'0\' COMMENT \'код типа расхода\',\n  PRIMARY KEY  (`id`)\n);\n\n\nCREATE TABLE `helpdesk_package_contract_$mid` (\n  `lu` timestamp NOT NULL,\n  `id` int(11) NOT NULL auto_increment COMMENT \'код экземпляра пакета\',\n  `package_id` int(11) NOT NULL COMMENT \'код пакета\',\n  `cid` int(11) NOT NULL COMMENT \'код договора\',\n  `date_from` date NOT NULL COMMENT \'дата активации пакета\',\n  `date_to` date NOT NULL COMMENT \'дата окончания действия пакета\',\n  `summa` decimal(15,2) NOT NULL COMMENT \'стоимость пакета\',\n  `count` int(11) NOT NULL COMMENT \'число обращений влюченных в пакет\',\n  `count_use` int(11) NOT NULL COMMENT \'число использованных обращений\',\n  `user_id` int(11) NOT NULL COMMENT \'код администратора биллинга, активировавшего пакет или -1 если активировал сам пользователь\',\n  PRIMARY KEY  (`id`)\n);\n\nALTER TABLE helpdesk_topic_$mid ADD COLUMN autoclose TINYINT(1)  NOT NULL DEFAULT 1;\n\nCREATE TABLE helpdesk_param_$mid (\n  `cid` int(11) NOT NULL,\n  `name` varchar(50) NOT NULL,\n  `value` varchar(255) NOT NULL,\n  KEY `cid` (`cid`)\n);\n\nALTER TABLE helpdesk_topic_$mid ADD COLUMN `comm_value` varchar(255)  NOT NULL DEFAULT \'\' AFTER `comm`;\n\nALTER TABLE helpdesk_topic_$mid MODIFY COLUMN `date` DATETIME  NOT NULL DEFAULT \'0000-00-00 00:00:00\';\n\nCREATE TABLE  `helpdesk_topic_manager_change_$mid` (\n  `topic_id` int(11) NOT NULL,\n  `user_id` int(11) NOT NULL,\n  `date` datetime NOT NULL,\n  `comment` text\n);\n\nALTER TABLE `helpdesk_topic_$mid` ADD COLUMN `charge_id` INTEGER NOT NULL AFTER `cid`;\nALTER TABLE `helpdesk_topic_$mid` ADD COLUMN `cost` DECIMAL(7,2) NOT NULL AFTER `charge_id`;\nALTER TABLE `helpdesk_topic_$mid` ADD COLUMN `date_close` DATETIME AFTER `date`;\nALTER TABLE `helpdesk_message_$mid` ADD COLUMN `comment` VARCHAR(250)  NOT NULL;\n\nCREATE TABLE `helpdesk_group_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `title` varchar(200) NOT NULL,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE `helpdesk_category_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `title` varchar(200) NOT NULL,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE  `helpdesk_subcategory_$mid` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `title` varchar(200) NOT NULL,\n  PRIMARY KEY (`id`)\n);\n\nCREATE TABLE  `helpdesk_directory_link_$mid` (\n  `group` int(11) NOT NULL,\n  `category` int(11) NOT NULL,\n  `subcategory` int(11) NOT NULL,\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  PRIMARY KEY (`id`)\n);\n\nALTER TABLE `helpdesk_topic_$mid` ADD COLUMN `category_id` INTEGER NOT NULL;\nALTER TABLE `helpdesk_topic_$mid` ADD COLUMN `subcategory_id` INTEGER NOT NULL;\n\nCREATE  TABLE `helpdesk_topic_reserve` (\n  `topicId` INT NOT NULL ,\n  `status` TINYINT(1) NULL ,\n  `reserveId` INT NULL ,\n   PRIMARY KEY (`topicId`) ,\n   CONSTRAINT FOREIGN KEY(`reserveId`) REFERENCES contract_reserve(id) ON UPDATE NO ACTION ON DELETE RESTRICT ,\n   CONSTRAINT FOREIGN KEY(`topicId`) REFERENCES helpdesk_topic_$mid(id) ON UPDATE NO ACTION ON DELETE CASCADE );\n   \n-- события\n-- #BLOCK#\nDELETE FROM script_event_type WHERE mid=\"p$mid\";\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES (\'p$mid\', \'ru.bitel.bgbilling.plugins.helpdesk.server.bean.event.TopicWillBeCreated\', 0, \'Перед созданием темы\');\nINSERT INTO script_event_type (mid, event_id, event_mode, title) VALUES (\'p$mid\', \'ru.bitel.bgbilling.plugins.helpdesk.server.bean.event.TopicWasUpdatedEvent\', 1, \'После создания/изменения темы\');\n-- #ENDB#\n',9,1,NULL);
/*!40000 ALTER TABLE `installed_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_device_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_device_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `deviceTypeId` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `uptime` text COLLATE utf8_unicode_ci NOT NULL,
  `uptimeTime` datetime DEFAULT NULL,
  `host` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `orderManagerDisabled` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_device_1`
--

LOCK TABLES `inv_device_1` WRITE;
/*!40000 ALTER TABLE `inv_device_1` DISABLE KEYS */;
INSERT INTO `inv_device_1` VALUES (1,1,0,0,'Папка: г. Уфа','г. Уфа','',NULL,'',NULL,NULL,0,'','','','',''),(2,2,1,1,'Access+Accounting: IPoE','IPoE','',NULL,'',NULL,NULL,0,'','','','# Типы устройств, для которых DHCP работает по привязке к RADIUS-сессии (ASR IP Subscriber DHCP, SE CLIPS).\n# Т.е. DHCP-запросы обрабатывает биллинг, они приходят в InetAccess через эти устройства.\n# Параметр использует ru.bitel.bgbilling.modules.inet.dhcp.InetDhcpProcessor2\ndhcp.key.deviceTypeIds=2,3\n\n# Типы устройств, для которых RADIUS работает по привязке к DHCP-сессии (IP Subscriber), DHCP-запросы обрабатывает биллинг.\n# Используется для авторизации по IP-пакету, когда DHCP не проходит через ASR/SE, а в User-Name приходит IP-адрес абонента\n# Параметр использует ru.bitel.bgbilling.modules.inet.radius.InetRadiusHelperProcessor\nradius.key.deviceTypeIds=2,3\n\n\n# Обработчики\n# Количество потоков на worker\naccounting.worker.1.thread.count=2\n# Тарификатор:\n# минимальная сумма трафика, при которой тарифицировать соединение\naccounting.worker.1.tariffication.1.minDeltaAmount=0\n# пауза между заданиями тарификации\naccounting.worker.1.tariffication.1.delay=10\n# максимальное количество тарифицируемых соединений за задание\naccounting.worker.1.tariffication.1.batchSize=1000\n# Трекер (обработка сессий без наработки):\n# пауза между заданиями трекинга\naccounting.worker.1.tracking.1.delay=10\n# максимальное количество проверенных соединений за задание\naccounting.worker.1.tracking.1.batchSize=1000\n# Трекер (обработка сервисов модуля без активных сессий, по умолчанию не требуется):\n# пауза между заданиями трекинга\naccounting.worker.1.serv.tracking.1.delay=20\n# максимальное количество проверенных соединений за задание\naccounting.worker.1.serv.tracking.1.batchSize=100\n# Трекер (обработка событий):\n# пауза между заданиями трекинга (в миллисекундах)\naccounting.worker.1.event.tracking.1.delay.millis=200\n# максимальное количество проверенных сервисов за задание\naccounting.worker.1.event.tracking.1.batchSize=500\n  \n# Количество потоков на worker\naccounting.worker.2.thread.count=1\n# Сброс в базу трафиков и наработки:\n# минимальная наработка, при которой сбрасывать соединение в базу\naccounting.worker.2.flushing.1.minDeltaAccount=0\n# минимальная сумма трафика, при которой сбрасывать соединение в базу\naccounting.worker.2.flushing.1.minDeltaAmount=0\n# пауза между заданиями сброса в базу\naccounting.worker.2.flushing.1.delay=20\n# максимальное количество сброшенных соединений в базу за задание\naccounting.worker.2.flushing.1.batchSize=500\n  \n# Количество потоков на worker\naccounting.worker.3.thread.count=1\n# Завершитель соединений:\n# пауза между заданиями\naccounting.worker.3.finishing.1.delay=20\n# максимальное количество сброшенных соединений в базу за задание\naccounting.worker.3.finishing.1.batchSize=500','BGInetAccess и BGInetAccounting для IPoE через Cisco ASR или Ericsson SmartEdge.\n\nСервисы systemd: inet-ipoe-access и inet-ipoe-accounting.\n\nПорт RADIUS Access-Request: 1815 (inet-access.xml)\nПорт RADIUS Accounting-Request: 1816 (inet-accounting.xml)\nПорт Netflow: 3001 (inet-accounting.xml)\nПорт Netflow9: 3002 (inet-accounting.xml)\nПорт DHCP: 10067 (inet-access.xml)'),(3,3,2,2,'Cisco ASR: asr-bras [10.0.5.26]','asr-bras','',NULL,'10.0.5.26',NULL,NULL,0,'','','secret','#------------------------------------------------------------------------\n# Поиск аккаунта абонента при RADIUS-запросе\n#------------------------------------------------------------------------\n# Режим поиска сервиса: 0 (по умолчанию) - по логину, 1 - по интерфейсу на устройстве (в предобработке должны быть\n# проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или INTERFACE_ID), 2 - по VLAN на устройстве (в предобработке\n# должны быть проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или VLAN_ID), 4 - по VLAN на устройстве или\n# дочернем устройстве (в предобработке должны быть проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или VLAN_ID),\n# 5 - по MAC-адресу на устройстве (в предобработке должна быть проставлена опция MAC_ADDRESS), 6 - по MAC-адресу на\n# устройстве или дочернем устройстве (в предобработке должна быть проставлена опция MAC_ADDRESS).\nradius.servSearchMode=1\n# Нужно ли проверять пароль: 0 - нет, 1 (по умолчанию) - да.\nradius.password.verification=0\n\n\n#------------------------------------------------------------------------\n# Поиск агентского устройства при DHCP-запросе\n#------------------------------------------------------------------------\n# 0 (рекомендуется) - по giaddr или IP-адресу источника идет поиск устройства, далее у этого устройства вызывается \n# предобработка preprocessDhcpRequest (где можно при необходимости извлечь и установить AGENT_REMOTE_ID, \n# а также INTERFACE_ID или VLAN_ID), далее по установленному AGENT_REMOTE_ID или, \n# если AGENT_REMOTE_ID не установлен - по конфигурации dhcp.option82.agentRemoteId.x agentRemoteId извлекается \n# из пакета и идет поиск агентского устройства, далее у агентского устройства, если таковое найдено вызывается \n# preprocessDhcpRequest (где можно при необходимости извлечь и установить INTERFACE_ID или VLAN_ID). \n# См. http://wiki.bitel.ru/index.php/%D0%9D%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0_%D1%80%D0%B0%D0%B7%D0%B1%D0%BE%D1%80%D0%B0_%D0%BE%D0%BF%D1%86%D0%B8%D0%B8_DHCP.82\ndhcp.deviceSearchMode=0\n\n# Для поддержки прямых RENEW запросов (т.е. когда RENEW запрос идет напрямую от абонента, не проходя через relay), в конфигурации нужно указать dhcp.renew=1. \n# При этом для таких запросов можно указать специфичный набор опций, как dhcp.renew.option.<option_name>.\ndhcp.renew=1\n\n# Шаблон, по которому создается ключ для привязки RADIUS-сессии и DHCP-пакетов.\n# $deviceId - устройство (обычно NAS и relay-агент, с которого пришел DHCP-запрос на биллинг)\n# $remoteId - агенское устройство (обычно коммутатор, к которому подключен абонент), определенное по agentRemoteId\n# $circuitId - в зависимости от типа поиска сервиса либо interfaceId, либо VLAN\n# $mac - MAC-адрес\n#radius.key.pattern=$deviceId:$remoteId:$circuitId:$mac\nradius.key.pattern=$deviceId:$remoteId:$mac\n\n\n#--------------------------------------------------------------\n#  Параметры DHCP\n#--------------------------------------------------------------\n\ndhcp.option.serverIdentifier=0.0.0.0\ndhcp.option.leaseTime=900\n\n# Параметры DHCP можно задавать через IP-ресурсы, либо через подсети здесь\n#dhcp.net.option.192.168.0.0:255.255.0.0.gate=192.168.0.1\n#dhcp.net.option.192.168.0.0:255.255.0.0.dns=8.8.8.8,9.9.9.9\n\n\n#--------------------------------------------------------------------------------------\n# Параметры RADIUS\n#--------------------------------------------------------------------------------------\n\n#категории ip адресов из ресурсов, из которых будут выдаваться адреса (\"пул\", указывается во вкладке \"IP ресурсы\")\n#radius.realm.default.ipCategories=1\nradius.realm.default.ipCategories=1\n\n# Коды ошибок, при которых отвечать Access-Accept с заданными атрибутами (в состоянии disable - rejectToAccept)\n# (абоненту ограничевается доступ, выдается серый адрес если radius.disable.mode=0 из radius.disable.ipCategories и устанавливается HTTP-редирект)\nradius.disable.accessCodes=1,2,3,4,10,11,12,20,44\n\n# Привязка на фиктивный сервис на договоре NOAUTH абонента, не заведенного в биллинге\nradius.disable.servId=1\n\n# Какие адреса выдавать при ответе Access-Accept в состоянии disable:\n# 0 (по умолчанию) - из radius.disable.ipCategories, 1 - так же, как если бы не было ошибки (в том числе привязанные к сервису в договоре)\nradius.disable.mode=1\n\n# Категории IP-адресов, из которых будут выдаваться адреса для отключенных (\"пул\", указывается во вкладке \"IP ресурсы\")\nradius.disable.ipCategories=2\n\n# Обработка второй сессии.\n#5 - попытка сброса старого соединения в биллинге, завершение и пускаем немедленно (т.е. игнорируется ошибка );\n#6 - завершение старого соединения в биллинге, пускаем абонента немедленно;\nradius.connection.checkDuplicate=5\n\n\n#------------------------------------------------------------------------\n# Netflow\n#------------------------------------------------------------------------\n#Тип источника, netflow, netflow9(IPFIX/NextGenNetFlow) или sflow\n#по умолчанию - netflow\nflow.agent.type=netflow9','Основной сервер доступа (BRAS) ISG IP Subscriber.'),(4,4,2,3,'Ericsson SmartEdge: se-bras [10.0.5.25]','se-bras','',NULL,'10.0.5.25',NULL,NULL,0,'','','secret','#------------------------------------------------------------------------\n# Поиск аккаунта абонента при RADIUS-запросе\n#------------------------------------------------------------------------\n# Режим поиска сервиса: 0 (по умолчанию) - по логину, 1 - по интерфейсу на устройстве (в предобработке должны быть\n# проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или INTERFACE_ID), 2 - по VLAN на устройстве (в предобработке\n# должны быть проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или VLAN_ID), 4 - по VLAN на устройстве или\n# дочернем устройстве (в предобработке должны быть проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или VLAN_ID),\n# 5 - по MAC-адресу на устройстве (в предобработке должна быть проставлена опция MAC_ADDRESS), 6 - по MAC-адресу на\n# устройстве или дочернем устройстве (в предобработке должна быть проставлена опция MAC_ADDRESS).\nradius.servSearchMode=1\n# Нужно ли проверять пароль: 0 - нет, 1 (по умолчанию) - да.\nradius.password.verification=0\n\n\n#------------------------------------------------------------------------\n# Поиск агентского устройства при DHCP-запросе\n#------------------------------------------------------------------------\n# 0 (рекомендуется) - по giaddr или IP-адресу источника идет поиск устройства, далее у этого устройства вызывается \n# предобработка preprocessDhcpRequest (где можно при необходимости извлечь и установить AGENT_REMOTE_ID, \n# а также INTERFACE_ID или VLAN_ID), далее по установленному AGENT_REMOTE_ID или, \n# если AGENT_REMOTE_ID не установлен - по конфигурации dhcp.option82.agentRemoteId.x agentRemoteId извлекается \n# из пакета и идет поиск агентского устройства, далее у агентского устройства, если таковое найдено вызывается \n# preprocessDhcpRequest (где можно при необходимости извлечь и установить INTERFACE_ID или VLAN_ID). \n# См. http://wiki.bitel.ru/index.php/%D0%9D%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0_%D1%80%D0%B0%D0%B7%D0%B1%D0%BE%D1%80%D0%B0_%D0%BE%D0%BF%D1%86%D0%B8%D0%B8_DHCP.82\ndhcp.deviceSearchMode=0\n\n# Для поддержки прямых RENEW запросов (т.е. когда RENEW запрос идет напрямую от абонента, не проходя через relay), в конфигурации нужно указать dhcp.renew=1. \n# При этом для таких запросов можно указать специфичный набор опций, как dhcp.renew.option.<option_name>.\ndhcp.renew=1\n\n# Шаблон, по которому создается ключ для привязки RADIUS-сессии и DHCP-пакетов.\n# $deviceId - устройство (обычно NAS и relay-агент, с которого пришел DHCP-запрос на биллинг)\n# $remoteId - агенское устройство (обычно коммутатор, к которому подключен абонент), определенное по agentRemoteId\n# $circuitId - в зависимости от типа поиска сервиса либо interfaceId, либо VLAN\n# $mac - MAC-адрес\n#radius.key.pattern=$deviceId:$remoteId:$circuitId:$mac\nradius.key.pattern=$deviceId:$remoteId:$mac\n\n\n#--------------------------------------------------------------\n#  Параметры DHCP\n#--------------------------------------------------------------\n\ndhcp.option.serverIdentifier=0.0.0.0\ndhcp.option.leaseTime=900\n\n# Параметры DHCP можно задавать через IP-ресурсы, либо через подсети здесь\n#dhcp.net.option.192.168.0.0:255.255.0.0.gate=192.168.0.1\n#dhcp.net.option.192.168.0.0:255.255.0.0.dns=8.8.8.8,9.9.9.9\n\n\n#--------------------------------------------------------------------------------------\n# Параметры RADIUS\n#--------------------------------------------------------------------------------------\n\n#категории ip адресов из ресурсов, из которых будут выдаваться адреса (\"пул\", указывается во вкладке \"IP ресурсы\")\n#radius.realm.default.ipCategories=1\nradius.realm.default.ipCategories=1\n\n# Коды ошибок, при которых отвечать Access-Accept с заданными атрибутами (в состоянии disable - rejectToAccept)\n# (абоненту ограничевается доступ, выдается серый адрес если radius.disable.mode=0 из radius.disable.ipCategories и устанавливается HTTP-редирект)\nradius.disable.accessCodes=1,2,3,4,10,11,12,20,44\n\n# Привязка на фиктивный сервис на договоре NOAUTH абонента, не заведенного в биллинге\nradius.disable.servId=1\n\n# Какие адреса выдавать при ответе Access-Accept в состоянии disable:\n# 0 (по умолчанию) - из radius.disable.ipCategories, 1 - так же, как если бы не было ошибки (в том числе привязанные к сервису в договоре)\nradius.disable.mode=1\n\n# Категории IP-адресов, из которых будут выдаваться адреса для отключенных (\"пул\", указывается во вкладке \"IP ресурсы\")\nradius.disable.ipCategories=2\n\n# Обработка второй сессии.\n#5 - попытка сброса старого соединения в биллинге, завершение и пускаем немедленно (т.е. игнорируется ошибка );\n#6 - завершение старого соединения в биллинге, пускаем абонента немедленно;\nradius.connection.checkDuplicate=5\n\n\n#------------------------------------------------------------------------\n# Netflow\n#------------------------------------------------------------------------\n#Тип источника, netflow, netflow9(IPFIX/NextGenNetFlow) или sflow\n#по умолчанию - netflow\nflow.agent.type=netflow9','Основной сервер доступа (BRAS) Dynamic CLIPS.'),(5,5,8,0,'Папка: Октябрьский район','Октябрьский район','',NULL,'',NULL,NULL,0,'','','','',''),(6,6,5,4,'D-Link DES-3200-28F: 0a0b0c0d0e0f [10.0.10.1]','0a0b0c0d0e0f','',NULL,'10.0.10.1',NULL,NULL,0,'','','','',''),(7,7,8,0,'Папка: Служебные','Служебные','',NULL,'',NULL,NULL,0,'','','','',''),(8,8,4,0,'Папка: Коммутаторы','Коммутаторы','',NULL,'',NULL,NULL,0,'','','','',''),(9,9,7,5,'Eltex PON OLT LTE-2x 128: 1a1b1c1d1e1f [10.0.11.1]','1a1b1c1d1e1f','',NULL,'10.0.11.1',NULL,NULL,0,'','','','',''),(10,10,1,1,'Access+Accounting: ISGServiceAccess','ISGServiceAccess','',NULL,'',NULL,NULL,0,'','','','','Справочник ISG-сервисов: авторизация ISG-сервисов, выдача описания ISG-сервисов, например, User-Name=ISG_5MBPS.\nBGInetISGServiceAccess\nСм. также http://wiki.bitel.ru/index.php/%D0%A1%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%87%D0%BD%D0%B8%D0%BA_Cisco-ISG_%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%BE%D0%B2'),(11,11,3,0,'Папка: Коммутаторы','Коммутаторы','',NULL,'',NULL,NULL,0,'','','','',''),(12,12,11,0,'Папка: Октябрьский район','Октябрьский район','',NULL,'',NULL,NULL,0,'','','','',''),(13,13,11,0,'Папка: Служебные','Служебные','',NULL,'',NULL,NULL,0,'','','','',''),(14,14,10,6,'Cisco ASR ISG Service: asr-bras [10.0.5.26]','asr-bras','',NULL,'10.0.5.26',NULL,NULL,0,'','','secret','',''),(15,15,1,1,'Access+Accounting','','',NULL,'',NULL,NULL,0,'','','','','BGInetAccess и BGInetAccounting.\n\nСервисы systemd: inet-access и inet-accounting.\n\nПорт RADIUS Access-Request: 1812 (inet-access.xml)\nПорт RADIUS Accounting-Request: 1813 (inet-accounting.xml)\nПорт Netflow: 2001 (inet-accounting.xml)\nПорт Netflow9: 2002 (inet-accounting.xml)\nПорт DHCP: 67 (inet-access.xml)'),(16,16,15,7,'SNMP Agent: [127.0.0.1]','','',NULL,'127.0.0.1',NULL,NULL,0,'','','','','Тарификация по статическому интерфейсу через SNMP. Сессии создаются по наличию трафика на указанном интерфейсе.'),(17,17,15,8,'Flow Agent: [10.0.5.15]','','',NULL,'10.0.5.15',NULL,NULL,0,'','','','','Flow Agent является источником для всех дочерних устройств, т.к. в конфигурации указано flow.agent.link={@deviceId}:-1.\nТ.е. flow будет привязываться к сессиям дочерних устройств.'),(18,18,17,9,'MPD: mpd-pppoe [10.0.5.16]','mpd-pppoe','',NULL,'10.0.5.16',NULL,NULL,0,'','','secret','','Cервер MPD'),(19,19,15,2,'Cisco ASR: asr-bras [10.0.5.26]','asr-bras','',NULL,'10.0.5.26',NULL,NULL,0,'','','','#------------------------------------------------------------------------\n# Поиск аккаунта абонента при RADIUS-запросе\n#------------------------------------------------------------------------\n# Режим поиска сервиса: 0 (по умолчанию) - по логину, 1 - по интерфейсу на устройстве (в предобработке должны быть\n# проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или INTERFACE_ID), 2 - по VLAN на устройстве (в предобработке\n# должны быть проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или VLAN_ID), 4 - по VLAN на устройстве или\n# дочернем устройстве (в предобработке должны быть проставлены опции AGENT_REMOTE_ID и AGENT_CIRCUIT_ID или VLAN_ID),\n# 5 - по MAC-адресу на устройстве (в предобработке должна быть проставлена опция MAC_ADDRESS), 6 - по MAC-адресу на\n# устройстве или дочернем устройстве (в предобработке должна быть проставлена опция MAC_ADDRESS).\nradius.servSearchMode=0\n# Нужно ли проверять пароль: 0 - нет, 1 (по умолчанию) - да.\nradius.password.verification=1\n\n\n#--------------------------------------------------------------------------------------\n# Параметры RADIUS\n#--------------------------------------------------------------------------------------\n\n#категории ip адресов из ресурсов, из которых будут выдаваться адреса (\"пул\", указывается во вкладке \"IP ресурсы\")\n#radius.realm.default.ipCategories=1\nradius.realm.default.ipCategories=1\n\n# Коды ошибок, при которых отвечать Access-Accept с заданными атрибутами (в состоянии disable - rejectToAccept)\n# (абоненту ограничевается доступ, выдается серый адрес если radius.disable.mode=0 из radius.disable.ipCategories и устанавливается HTTP-редирект)\nradius.disable.accessCodes=1,2,3,4,10,11,12,20,44\n\n# Привязка на фиктивный сервис на договоре NOAUTH абонента, не заведенного в биллинге\nradius.disable.servId=1\n\n# Какие адреса выдавать при ответе Access-Accept в состоянии disable:\n# 0 (по умолчанию) - из radius.disable.ipCategories, 1 - так же, как если бы не было ошибки (в том числе привязанные к сервису в договоре)\nradius.disable.mode=0\n\n# Категории IP-адресов, из которых будут выдаваться адреса для отключенных (\"пул\", указывается во вкладке \"IP ресурсы\")\nradius.disable.ipCategories=2\n\n# Обработка второй сессии.\n#5 - попытка сброса старого соединения в биллинге, завершение и пускаем немедленно (т.е. игнорируется ошибка );\n#6 - завершение старого соединения в биллинге, пускаем абонента немедленно;\nradius.connection.checkDuplicate=5\n\n\n#------------------------------------------------------------------------\n# Netflow\n#------------------------------------------------------------------------\n#Тип источника, netflow, netflow9(IPFIX/NextGenNetFlow) или sflow\n#по умолчанию - netflow\nflow.agent.type=netflow9','PPPoE BRAS'),(20,20,10,6,'Cisco ASR ISG Service: asr-bras2 [10.0.6.26]','asr-bras2','',NULL,'10.0.6.26',NULL,NULL,0,'','','secret','',''),(21,21,17,9,'MPD: mpd-ppptp [10.0.5.17]','mpd-ppptp','',NULL,'10.0.5.17',NULL,NULL,0,'','','secret','','Cервер MPD'),(22,22,17,0,'Папка: Коммутаторы','Коммутаторы','',NULL,'',NULL,NULL,0,'','','','','IPoE с помощью DHCP option 82 и/или управлением через telnet/SSH.'),(23,23,22,0,'Папка: Октябрьский район','Октябрьский район','',NULL,'',NULL,NULL,0,'','','','',''),(24,24,22,0,'Папка: Служебные','Служебные','',NULL,'',NULL,NULL,0,'','','','',''),(25,25,17,10,'FreeBSD','','',NULL,'',NULL,NULL,0,'','','','','Шейпер. Управляется по SSH.');
/*!40000 ALTER TABLE `inv_device_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_device_group_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_device_group_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cityId` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parentId`),
  KEY `city_id` (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_device_group_1`
--

LOCK TABLES `inv_device_group_1` WRITE;
/*!40000 ALTER TABLE `inv_device_group_1` DISABLE KEYS */;
INSERT INTO `inv_device_group_1` VALUES (1,0,'Конечный коммутатор',0,'');
/*!40000 ALTER TABLE `inv_device_group_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_device_group_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_device_group_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cityId` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parentId`),
  KEY `city_id` (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_device_group_4`
--

LOCK TABLES `inv_device_group_4` WRITE;
/*!40000 ALTER TABLE `inv_device_group_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_device_group_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_device_group_link_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_device_group_link_1` (
  `deviceId` int(11) NOT NULL,
  `deviceGroupId` int(11) NOT NULL,
  KEY `device_id` (`deviceId`,`deviceGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_device_group_link_1`
--

LOCK TABLES `inv_device_group_link_1` WRITE;
/*!40000 ALTER TABLE `inv_device_group_link_1` DISABLE KEYS */;
INSERT INTO `inv_device_group_link_1` VALUES (6,1),(9,1),(10,1),(11,1);
/*!40000 ALTER TABLE `inv_device_group_link_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_device_group_link_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_device_group_link_4` (
  `deviceId` int(11) NOT NULL,
  `deviceGroupId` int(11) NOT NULL,
  KEY `device_id` (`deviceId`,`deviceGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_device_group_link_4`
--

LOCK TABLES `inv_device_group_link_4` WRITE;
/*!40000 ALTER TABLE `inv_device_group_link_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_device_group_link_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_device_interface_index_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_device_interface_index_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceId` int(11) NOT NULL,
  `interfaceId` int(11) NOT NULL,
  `timeFrom` datetime DEFAULT NULL,
  `timeTo` datetime DEFAULT NULL,
  `ifIndex` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iface` (`deviceId`,`interfaceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_device_interface_index_1`
--

LOCK TABLES `inv_device_interface_index_1` WRITE;
/*!40000 ALTER TABLE `inv_device_interface_index_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_device_interface_index_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_device_port_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_device_port_1` (
  `deviceId` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-',
  `status` int(11) NOT NULL,
  `ipCategoryId` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`deviceId`,`port`),
  KEY `device_port` (`deviceId`,`port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_device_port_1`
--

LOCK TABLES `inv_device_port_1` WRITE;
/*!40000 ALTER TABLE `inv_device_port_1` DISABLE KEYS */;
INSERT INTO `inv_device_port_1` VALUES (6,1,'Порт абонента 1',1,0,''),(6,2,'Порт абонента 2',1,0,''),(6,3,'Порт абонента 3',1,0,''),(6,4,'Порт абонента 4',1,0,''),(6,5,'Порт абонента 5',1,0,''),(6,6,'Порт абонента 6',1,0,''),(6,7,'Порт абонента 7',1,0,''),(6,8,'Порт абонента 8',1,0,''),(6,9,'Порт абонента 9',1,0,''),(6,10,'Порт абонента 10',1,0,''),(6,11,'Порт абонента 11',1,0,''),(6,12,'Порт абонента 12',1,0,''),(6,13,'Порт абонента 13',1,0,''),(6,14,'Порт абонента 14',1,0,''),(6,15,'Порт абонента 15',1,0,''),(6,16,'Порт абонента 16',1,0,''),(6,17,'Порт абонента 17',1,0,''),(6,18,'Порт абонента 18',1,0,''),(6,19,'Порт абонента 19',1,0,''),(6,20,'Порт абонента 20',1,0,''),(6,21,'Порт абонента 21',1,0,''),(6,22,'Порт абонента 22',1,0,''),(6,23,'Порт абонента 23',1,0,''),(6,24,'Порт абонента 24',1,0,''),(9,1,'PON ID 1',1,0,''),(9,2,'PON ID 2',1,0,''),(9,3,'PON ID 3',1,0,''),(9,4,'PON ID 4',1,0,''),(9,5,'PON ID 5',1,0,''),(9,6,'PON ID 6',1,0,''),(9,7,'PON ID 7',1,0,''),(9,8,'PON ID 8',1,0,''),(9,9,'PON ID 9',1,0,''),(9,10,'PON ID 10',1,0,''),(9,11,'PON ID 11',1,0,''),(9,12,'PON ID 12',1,0,''),(9,13,'PON ID 13',1,0,''),(9,14,'PON ID 14',1,0,''),(9,15,'PON ID 15',1,0,''),(9,16,'PON ID 16',1,0,''),(9,17,'PON ID 17',1,0,''),(9,18,'PON ID 18',1,0,''),(9,19,'PON ID 19',1,0,''),(9,20,'PON ID 20',1,0,''),(9,21,'PON ID 21',1,0,''),(9,22,'PON ID 22',1,0,''),(9,23,'PON ID 23',1,0,''),(9,24,'PON ID 24',1,0,''),(9,25,'PON ID 25',1,0,''),(9,26,'PON ID 26',1,0,''),(9,27,'PON ID 27',1,0,''),(9,28,'PON ID 28',1,0,''),(9,29,'PON ID 29',1,0,''),(9,30,'PON ID 30',1,0,''),(9,31,'PON ID 31',1,0,''),(9,32,'PON ID 32',1,0,''),(9,33,'PON ID 33',1,0,''),(9,34,'PON ID 34',1,0,''),(9,35,'PON ID 35',1,0,''),(9,36,'PON ID 36',1,0,''),(9,37,'PON ID 37',1,0,''),(9,38,'PON ID 38',1,0,''),(9,39,'PON ID 39',1,0,''),(9,40,'PON ID 40',1,0,''),(9,41,'PON ID 41',1,0,''),(9,42,'PON ID 42',1,0,''),(9,43,'PON ID 43',1,0,''),(9,44,'PON ID 44',1,0,''),(9,45,'PON ID 45',1,0,''),(9,46,'PON ID 46',1,0,''),(9,47,'PON ID 47',1,0,''),(9,48,'PON ID 48',1,0,''),(9,49,'PON ID 49',1,0,''),(9,50,'PON ID 50',1,0,''),(9,51,'PON ID 51',1,0,''),(9,52,'PON ID 52',1,0,''),(9,53,'PON ID 53',1,0,''),(9,54,'PON ID 54',1,0,''),(9,55,'PON ID 55',1,0,''),(9,56,'PON ID 56',1,0,''),(9,57,'PON ID 57',1,0,''),(9,58,'PON ID 58',1,0,''),(9,59,'PON ID 59',1,0,''),(9,60,'PON ID 60',1,0,''),(9,61,'PON ID 61',1,0,''),(9,62,'PON ID 62',1,0,''),(9,63,'PON ID 63',1,0,''),(9,64,'PON ID 64',1,0,''),(9,65,'PON ID 65',1,0,''),(9,66,'PON ID 66',1,0,''),(9,67,'PON ID 67',1,0,''),(9,68,'PON ID 68',1,0,''),(9,69,'PON ID 69',1,0,''),(9,70,'PON ID 70',1,0,''),(9,71,'PON ID 71',1,0,''),(9,72,'PON ID 72',1,0,''),(9,73,'PON ID 73',1,0,''),(9,74,'PON ID 74',1,0,''),(9,75,'PON ID 75',1,0,''),(9,76,'PON ID 76',1,0,''),(9,77,'PON ID 77',1,0,''),(9,78,'PON ID 78',1,0,''),(9,79,'PON ID 79',1,0,''),(9,80,'PON ID 80',1,0,''),(9,81,'PON ID 81',1,0,''),(9,82,'PON ID 82',1,0,''),(9,83,'PON ID 83',1,0,''),(9,84,'PON ID 84',1,0,''),(9,85,'PON ID 85',1,0,''),(9,86,'PON ID 86',1,0,''),(9,87,'PON ID 87',1,0,''),(9,88,'PON ID 88',1,0,''),(9,89,'PON ID 89',1,0,''),(9,90,'PON ID 90',1,0,''),(9,91,'PON ID 91',1,0,''),(9,92,'PON ID 92',1,0,''),(9,93,'PON ID 93',1,0,''),(9,94,'PON ID 94',1,0,''),(9,95,'PON ID 95',1,0,''),(9,96,'PON ID 96',1,0,''),(9,97,'PON ID 97',1,0,''),(9,98,'PON ID 98',1,0,''),(9,99,'PON ID 99',1,0,''),(9,100,'PON ID 100',1,0,''),(9,101,'PON ID 101',1,0,''),(9,102,'PON ID 102',1,0,''),(9,103,'PON ID 103',1,0,''),(9,104,'PON ID 104',1,0,''),(9,105,'PON ID 105',1,0,''),(9,106,'PON ID 106',1,0,''),(9,107,'PON ID 107',1,0,''),(9,108,'PON ID 108',1,0,''),(9,109,'PON ID 109',1,0,''),(9,110,'PON ID 110',1,0,''),(9,111,'PON ID 111',1,0,''),(9,112,'PON ID 112',1,0,''),(9,113,'PON ID 113',1,0,''),(9,114,'PON ID 114',1,0,''),(9,115,'PON ID 115',1,0,''),(9,116,'PON ID 116',1,0,''),(9,117,'PON ID 117',1,0,''),(9,118,'PON ID 118',1,0,''),(9,119,'PON ID 119',1,0,''),(9,120,'PON ID 120',1,0,''),(9,121,'PON ID 121',1,0,''),(9,122,'PON ID 122',1,0,''),(9,123,'PON ID 123',1,0,''),(9,124,'PON ID 124',1,0,''),(9,125,'PON ID 125',1,0,''),(9,126,'PON ID 126',1,0,''),(9,127,'PON ID 127',1,0,''),(9,128,'PON ID 128',1,0,''),(16,1,'Интерфейс 1',1,0,''),(16,2,'Интерфейс 2',1,0,'');
/*!40000 ALTER TABLE `inv_device_port_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_device_port_subscription_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_device_port_subscription_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceId` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `subscriberId` int(11) NOT NULL,
  `subscriberTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `devicePort` (`deviceId`,`port`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_device_port_subscription_1`
--

LOCK TABLES `inv_device_port_subscription_1` WRITE;
/*!40000 ALTER TABLE `inv_device_port_subscription_1` DISABLE KEYS */;
INSERT INTO `inv_device_port_subscription_1` VALUES (4,6,1,'2015-05-22',NULL,1,'0000001 (Иванов Петр Сидорович);Интернет (Порт абонента 1)'),(5,6,2,'2015-05-24',NULL,2,'NOAUTH (Служебный);Интернет (Порт абонента 2)'),(11,16,2,'2015-05-25',NULL,23,'10000010 (Иванов Петр Сидорович);SNMP [Интерфейс 2]');
/*!40000 ALTER TABLE `inv_device_port_subscription_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_ip_category_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_ip_category_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parentId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_ip_category_1`
--

LOCK TABLES `inv_ip_category_1` WRITE;
/*!40000 ALTER TABLE `inv_ip_category_1` DISABLE KEYS */;
INSERT INTO `inv_ip_category_1` VALUES (1,0,'Белые адреса'),(2,0,'Серые адреса');
/*!40000 ALTER TABLE `inv_ip_category_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_ip_resource_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_ip_resource_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `addressFrom` varbinary(24) NOT NULL,
  `addressTo` varbinary(24) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `router` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `subnetMask` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dns` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `dynamic` tinyint(1) DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`categoryId`,`addressFrom`,`addressTo`),
  KEY `period` (`dateFrom`,`dateTo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_ip_resource_1`
--

LOCK TABLES `inv_ip_resource_1` WRITE;
/*!40000 ALTER TABLE `inv_ip_resource_1` DISABLE KEYS */;
INSERT INTO `inv_ip_resource_1` VALUES (1,1,'Q�','Q��',NULL,NULL,'81.30.210.1','255.255.255.0','8.8.8.8','',0,'# Имя интерфейса SE100 под привязку данного диапазона при закрытии доступа из radius.realm.default.attributes.macros\n#radiusDefaultAttributes=\n# Имя интерфейса SE100 под привязку данного диапазона при закрытии доступа из radius.disable.attributes.macros\n#radiusDisableAttributes=\n# Имя контекста SE100, в который прописывается данный IP-ресурс\n#radiusContextName='),(2,2,'\n<\0','\n<�',NULL,NULL,'10.60.0.1','255.255.224.0','8.8.8.8','',0,'# Имя интерфейса SE100 под привязку данного диапазона при закрытии доступа из radius.realm.default.attributes.macros\n#radiusDefaultAttributes=\n# Имя интерфейса SE100 под привязку данного диапазона при закрытии доступа из radius.disable.attributes.macros\n#radiusDisableAttributes=\n# Имя контекста SE100, в который прописывается данный IP-ресурс\n#radiusContextName=');
/*!40000 ALTER TABLE `inv_ip_resource_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_ip_resource_dyn_reserve_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_ip_resource_dyn_reserve_1` (
  `address` varbinary(24) NOT NULL,
  `timeout` bigint(20) NOT NULL,
  `ipResourceId` int(11) NOT NULL,
  KEY `timeout` (`timeout`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_ip_resource_dyn_reserve_1`
--

LOCK TABLES `inv_ip_resource_dyn_reserve_1` WRITE;
/*!40000 ALTER TABLE `inv_ip_resource_dyn_reserve_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_ip_resource_dyn_reserve_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_ip_resource_subscription_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_ip_resource_subscription_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriberId` int(11) NOT NULL,
  `ipResourceId` int(11) NOT NULL,
  `addressFrom` varbinary(24) NOT NULL,
  `addressTo` varbinary(24) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `subscriberTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_ip_resource_subscription_1`
--

LOCK TABLES `inv_ip_resource_subscription_1` WRITE;
/*!40000 ALTER TABLE `inv_ip_resource_subscription_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_ip_resource_subscription_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_ip_resource_subscription_dyn_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_ip_resource_subscription_dyn_1` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ipResourceId` int(11) NOT NULL,
  `connectionId` bigint(20) NOT NULL,
  `address` varbinary(24) NOT NULL,
  `timeFrom` datetime NOT NULL,
  `timeTo` datetime DEFAULT NULL,
  `subscriberId` int(11) NOT NULL,
  `subscriberType` int(11) NOT NULL,
  `subscriberTitle` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `connectionId` (`connectionId`),
  KEY `ip` (`ipResourceId`,`address`),
  KEY `period` (`timeFrom`,`timeTo`),
  KEY `subscriber` (`subscriberId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_ip_resource_subscription_dyn_1`
--

LOCK TABLES `inv_ip_resource_subscription_dyn_1` WRITE;
/*!40000 ALTER TABLE `inv_ip_resource_subscription_dyn_1` DISABLE KEYS */;
INSERT INTO `inv_ip_resource_subscription_dyn_1` VALUES (2,0,2,'','2015-05-25 17:36:16',NULL,3,-1,'3');
/*!40000 ALTER TABLE `inv_ip_resource_subscription_dyn_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_ip_resource_subscription_real_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_ip_resource_subscription_real_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscriberId` int(11) NOT NULL,
  `subscriberTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressFrom` varbinary(24) NOT NULL,
  `addressTo` varbinary(24) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_ip_resource_subscription_real_1`
--

LOCK TABLES `inv_ip_resource_subscription_real_1` WRITE;
/*!40000 ALTER TABLE `inv_ip_resource_subscription_real_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_ip_resource_subscription_real_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractId` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `productSpecId` int(11) NOT NULL,
  `timeFrom` datetime NOT NULL,
  `timeTo` datetime DEFAULT NULL,
  `activationModeId` int(11) NOT NULL,
  `activationTime` datetime NOT NULL,
  `activationPrice` decimal(10,5) DEFAULT NULL,
  `deactivationTime` datetime DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `deviceProductId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceState` tinyint(4) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_product`
--

LOCK TABLES `inv_product` WRITE;
/*!40000 ALTER TABLE `inv_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_product_period`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_product_period` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contractId` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `productSpecId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `activationTime` datetime NOT NULL,
  `timeFrom` datetime NOT NULL,
  `timeTo` datetime DEFAULT NULL,
  `prolongationTime` datetime NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `contract` (`contractId`),
  KEY `account` (`accountId`),
  KEY `product` (`productId`),
  KEY `period` (`timeFrom`,`timeTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH (contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_product_period`
--

LOCK TABLES `inv_product_period` WRITE;
/*!40000 ALTER TABLE `inv_product_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_product_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_product_spec`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_product_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `periodic` tinyint(4) NOT NULL DEFAULT '1',
  `notRealtime` tinyint(4) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tariffIds` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contractGroups` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depends` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incompatible` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activationModeIds` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `hideForCustomer` tinyint(4) NOT NULL,
  `hideForContractGroups` bigint(20) NOT NULL DEFAULT '0',
  `hideForContractGroupsMode` tinyint(4) NOT NULL DEFAULT '0',
  `activationByCustomer` tinyint(4) NOT NULL,
  `deactivationByCustomer` tinyint(4) NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `moduleId` (`moduleId`),
  KEY `date` (`dateFrom`,`dateTo`),
  KEY `parent` (`parentId`),
  KEY `entity` (`entityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_product_spec`
--

LOCK TABLES `inv_product_spec` WRITE;
/*!40000 ALTER TABLE `inv_product_spec` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_product_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_product_spec_activation_mode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_product_spec_activation_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productSpecId` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `periodMode` int(11) NOT NULL,
  `periodAmount` int(11) NOT NULL,
  `deactivationMode` int(11) NOT NULL,
  `reactivationMode` int(11) NOT NULL,
  `chargeTypeId` int(11) NOT NULL,
  `chargeAmount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productSpec` (`productSpecId`),
  KEY `period` (`dateFrom`,`dateTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_product_spec_activation_mode`
--

LOCK TABLES `inv_product_spec_activation_mode` WRITE;
/*!40000 ALTER TABLE `inv_product_spec_activation_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_product_spec_activation_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_product_spec_service_link`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_product_spec_service_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productSpecId` int(11) NOT NULL,
  `serviceSpecId` int(11) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `product` (`productSpecId`),
  KEY `service` (`serviceSpecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_product_spec_service_link`
--

LOCK TABLES `inv_product_spec_service_link` WRITE;
/*!40000 ALTER TABLE `inv_product_spec_service_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_product_spec_service_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_service`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractId` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `serviceSpecId` int(11) NOT NULL,
  `timeFrom` datetime NOT NULL,
  `timeTo` datetime DEFAULT NULL,
  `deviceState` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`,`contractId`),
  KEY `contractId` (`contractId`),
  KEY `accountId` (`accountId`),
  KEY `productId` (`productId`),
  KEY `serviceSpecId` (`serviceSpecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH (contractId)
PARTITIONS 16 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_service`
--

LOCK TABLES `inv_service` WRITE;
/*!40000 ALTER TABLE `inv_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_service_spec`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_service_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `moduleId` (`moduleId`),
  KEY `date` (`dateFrom`,`dateTo`),
  KEY `parent` (`parentId`),
  KEY `entity` (`entityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_service_spec`
--

LOCK TABLES `inv_service_spec` WRITE;
/*!40000 ALTER TABLE `inv_service_spec` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_service_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_vlan_category_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_vlan_category_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_vlan_category_1`
--

LOCK TABLES `inv_vlan_category_1` WRITE;
/*!40000 ALTER TABLE `inv_vlan_category_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_vlan_category_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_vlan_resource_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_vlan_resource_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vlanFrom` int(11) NOT NULL,
  `vlanTo` int(11) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_vlan_resource_1`
--

LOCK TABLES `inv_vlan_resource_1` WRITE;
/*!40000 ALTER TABLE `inv_vlan_resource_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_vlan_resource_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_vlan_resource_subscription_1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_vlan_resource_subscription_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vlanResId` int(11) NOT NULL,
  `vlan` int(11) NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `subscriberId` int(11) NOT NULL,
  `subscriberTitle` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vlan` (`vlanResId`,`vlan`),
  KEY `period` (`dateFrom`,`dateTo`),
  KEY `subscriber` (`subscriberId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_vlan_resource_subscription_1`
--

LOCK TABLES `inv_vlan_resource_subscription_1` WRITE;
/*!40000 ALTER TABLE `inv_vlan_resource_subscription_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_vlan_resource_subscription_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_contract_face`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_contract_face` (
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_contract_face`
--

LOCK TABLES `log_contract_face` WRITE;
/*!40000 ALTER TABLE `log_contract_face` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_contract_face` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_contract_limit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_contract_limit` (
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` int(11) NOT NULL DEFAULT '0',
  `nvalue` decimal(10,2) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `days` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_contract_limit`
--

LOCK TABLES `log_contract_limit` WRITE;
/*!40000 ALTER TABLE `log_contract_limit` DISABLE KEYS */;
INSERT INTO `log_contract_limit` VALUES ('2015-05-24 19:15:09',1,-100.00,2,'',''),('2015-05-24 19:56:44',1,100000.00,1,'',''),('2015-06-09 19:04:42',-1,-110.00,3,'','3'),('2016-06-17 00:05:01',0,-100.00,3,'Задача восстановления лимитов [threadId:2583]','0');
/*!40000 ALTER TABLE `log_contract_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_contract_limit_manage_mode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_contract_limit_manage_mode` (
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` int(11) NOT NULL DEFAULT '0',
  `mode` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_contract_limit_manage_mode`
--

LOCK TABLES `log_contract_limit_manage_mode` WRITE;
/*!40000 ALTER TABLE `log_contract_limit_manage_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_contract_limit_manage_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_contract_mode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_contract_mode` (
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_contract_mode`
--

LOCK TABLES `log_contract_mode` WRITE;
/*!40000 ALTER TABLE `log_contract_mode` DISABLE KEYS */;
INSERT INTO `log_contract_mode` VALUES ('2015-05-22 15:31:32',1,1,1);
/*!40000 ALTER TABLE `log_contract_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_contract_pswd`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_contract_pswd` (
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_contract_pswd`
--

LOCK TABLES `log_contract_pswd` WRITE;
/*!40000 ALTER TABLE `log_contract_pswd` DISABLE KEYS */;
INSERT INTO `log_contract_pswd` VALUES ('2015-06-09 17:22:18',1,3);
/*!40000 ALTER TABLE `log_contract_pswd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_function_process_201506`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_function_process_201506` (
  `cid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_function_process_201506`
--

LOCK TABLES `log_function_process_201506` WRITE;
/*!40000 ALTER TABLE `log_function_process_201506` DISABLE KEYS */;
INSERT INTO `log_function_process_201506` VALUES (3,'2015-06-09 19:46:00','Тест','GENERATE_TIME: 09.06.15 19:46:00\nEXECUTION_STOP_TIME: 09.06.15 19:46:00\nPROCESS_TIME: 40\n\nOUT:\n'),(3,'2015-06-09 19:46:38','Тест','GENERATE_TIME: 09.06.15 19:46:38\nEXECUTION_STOP_TIME: 09.06.15 19:46:38\nPROCESS_TIME: 3\n\nOUT:\n'),(3,'2015-06-09 19:46:45','Тест','GENERATE_TIME: 09.06.15 19:46:45\nEXECUTION_STOP_TIME: 09.06.15 19:46:45\nPROCESS_TIME: 1\n\nOUT:\n'),(3,'2015-06-09 19:46:45','Тест','GENERATE_TIME: 09.06.15 19:46:45\nEXECUTION_STOP_TIME: 09.06.15 19:46:45\nPROCESS_TIME: 2\n\nOUT:\n'),(3,'2015-06-09 19:46:45','Тест','GENERATE_TIME: 09.06.15 19:46:45\nEXECUTION_STOP_TIME: 09.06.15 19:46:45\nPROCESS_TIME: 1\n\nOUT:\n'),(3,'2015-06-09 19:47:39','Тест','GENERATE_TIME: 09.06.15 19:47:39\nEXECUTION_STOP_TIME: 09.06.15 19:47:39\nPROCESS_TIME: 1\n\nOUT:\n'),(3,'2015-06-09 19:53:50','Тест','GENERATE_TIME: 09.06.15 19:53:50\nEXECUTION_STOP_TIME: 09.06.15 19:53:50\nPROCESS_TIME: 8\n\nOUT:\n'),(3,'2015-06-09 19:56:02','Тест','GENERATE_TIME: 09.06.15 19:56:02\nEXECUTION_STOP_TIME: 09.06.15 19:56:02\nPROCESS_TIME: 3\n\nOUT:\n'),(3,'2015-06-09 19:56:02','Тест','GENERATE_TIME: 09.06.15 19:56:02\nEXECUTION_STOP_TIME: 09.06.15 19:56:02\nPROCESS_TIME: 2\n\nOUT:\n'),(3,'2015-06-09 19:56:02','Тест','GENERATE_TIME: 09.06.15 19:56:02\nEXECUTION_STOP_TIME: 09.06.15 19:56:02\nPROCESS_TIME: 0\n\nOUT:\n'),(3,'2015-06-09 19:56:11','Тест','GENERATE_TIME: 09.06.15 19:56:11\nEXECUTION_STOP_TIME: 09.06.15 19:56:11\nPROCESS_TIME: 1\n\nOUT:\n');
/*!40000 ALTER TABLE `log_function_process_201506` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_function_process_201508`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_function_process_201508` (
  `cid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_function_process_201508`
--

LOCK TABLES `log_function_process_201508` WRITE;
/*!40000 ALTER TABLE `log_function_process_201508` DISABLE KEYS */;
INSERT INTO `log_function_process_201508` VALUES (3,'2015-08-19 21:32:19','Тест','GENERATE_TIME: 19.08.15 21:32:19\nEXECUTION_STOP_TIME: 19.08.15 21:32:19\nPROCESS_TIME: 16\n\nOUT:\n'),(3,'2015-08-19 21:41:47','Тест','GENERATE_TIME: 19.08.15 21:41:47\nEXECUTION_STOP_TIME: 19.08.15 21:41:47\nPROCESS_TIME: 35\n\nOUT:\n'),(3,'2015-08-19 22:40:08','Тест','GENERATE_TIME: 19.08.15 22:40:08\nEXECUTION_STOP_TIME: 19.08.15 22:40:08\nPROCESS_TIME: 8\n\nOUT:\n');
/*!40000 ALTER TABLE `log_function_process_201508` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_login_pswd`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_login_pswd` (
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uid` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL DEFAULT '0',
  `lid` int(11) NOT NULL DEFAULT '0',
  KEY `lid_mid` (`lid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_login_pswd`
--

LOCK TABLES `log_login_pswd` WRITE;
/*!40000 ALTER TABLE `log_login_pswd` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_login_pswd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_list`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `flag` int(1) unsigned DEFAULT '0',
  `type` tinyint(1) unsigned DEFAULT '0',
  `up` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `up` (`up`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_list`
--

LOCK TABLES `mail_list` WRITE;
/*!40000 ALTER TABLE `mail_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_list_message`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_list_message` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_list_message`
--

LOCK TABLES `mail_list_message` WRITE;
/*!40000 ALTER TABLE `mail_list_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_list_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_temp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_temp` (
  `id` int(11) NOT NULL DEFAULT '0',
  `eid` int(11) DEFAULT NULL,
  `dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_temp`
--

LOCK TABLES `mail_temp` WRITE;
/*!40000 ALTER TABLE `mail_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_for_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_for_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `gr` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `users` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_for_users`
--

LOCK TABLES `message_for_users` WRITE;
/*!40000 ALTER TABLE `message_for_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_for_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `config_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'Интернет','inet',NULL),(2,'Разовые услуги','rscm',NULL),(3,'Абонплаты','npay',NULL),(4,'ТВ','tv',NULL),(5,'Paymaster','paymaster',NULL);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(3) unsigned DEFAULT '0',
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned DEFAULT '0',
  `config` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `mid_active` (`mid`,`active`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_config`
--

LOCK TABLES `module_config` WRITE;
/*!40000 ALTER TABLE `module_config` DISABLE KEYS */;
INSERT INTO `module_config` VALUES (1,0,'2015-06-09 19:04:13','main',1,1,'#--------------------------------------\n# Системные настройки сервера\n#--------------------------------------\n# Путь к временному каталогу, используется обработчиком логов для загрузки логов по FTP и сервером биллинга для хранения промежуточных файлов.\n# Если не указан, то используется каталог BGBillingServer/tmp\n#temp.dir.path=\n#\n#-----------------------------------------\n# Настройки интерфейса BGBillingClient\n#-----------------------------------------\n# Порядок элементов в дереве договора клиента\nclient.gui.contract.tree.order=parameters objects hierarchy status limit mode face balance tariff modules groups web tariffGroup script addAction memo\n# Какие лимиты предлагаются на выбор в договоре\nclient.gui.contract.limit.values==-2000;=-500;=-300;=-150;=-50;=-30;=-10;=0;-5/1;-50/1;-100/1;-15/3;-50/3;-100/3\n# Какие лимиты предлагаются на выбор в шаблоне договора\nclient.gui.pattern.limit.values=-2000;-500;-300;-150;-100;-50;-10;0;5;30;100;15;50;100\n#\n#--------------------------------------\n# XSLT\n#--------------------------------------\n# Кэширование XSLT-шаблонов памяти: 1 - включить\n# Необходимо отключать опцию на момент модификации любых XSLT-шаблонов\nxslt.cache=0\n \n# Заголовок и адрес к шаблону карточки (доступны в свойствах договора)\ncontractcard.1=card_inet.xsl:Карта регистрации\n#\n#--------------------------------------\n# Протокол\n#--------------------------------------\n# Вывод в server.log XML, возвращаемых клиенту в режиме DEBUG - 1\nserver.response.debug=0\n# Заголовок HTTP-пакета, в котором передаётся IP-адрес клиента, если параметр не указан или не передан, то используется request.getRemoteAddr()\n# нужен при проксировании запросов с помощью nginx\nheader.name.remote.addr=X-Real-IP\n# Максимальный размер запроса к серверу (в байтах), запросы большего размера обрезаются, что может привести к некорректной работе сервера.\n# Признак того, что нужно увеличить - ошибка вида \"Модуль null не найден!\"\nmax.post.size=10000000\n#\n#--------------------------------------\n#Копирование параметров договора - шаблоны\n#--------------------------------------\n# Шаблоны\ncontract.param.pattern.keys=bank,firm\n# Название шаблона\ncontract.param.pattern.bank.title=Банк (реквизиты)\ncontract.param.pattern.firm.title=Организация (название, руководство, ИНН/КПП)\n# Коды параметров договора, которые будут выделяться\ncontract.param.pattern.bank.pids=12,34\ncontract.param.pattern.firm.pids=1,23,8,4,25\n#\n#--------------------------------------\n# Параметр типа \"Адрес\"\n#--------------------------------------\n# проверка уникальности адреса договора при вводе - 1, 0 - не проверять\naddress.unique.check=1\n# Формат адреса (доступен также параметр ${comment} - комментарий параметра)\naddrs.format=(${index})(, ${city})(, ${area})(, ${quarter})(, ${street})(, д. ${house})(${frac})(, кв. ${flat})( ${room})(, ${pod} под.)(, ${floor} эт.)\n# Разрешение создавать дома в редакторе адреса параметров договоров и объектов\n#address.create=1\n#\n#--------------------------------------\n# Параметры сущностей адресного справочника\n#--------------------------------------\n# Для каждой сущности можно завести неограниченное число параметров. Типы параметров могут быть числовые(int), строковые(string), дата(date)\n## для страны\naddress.country=countPeople,test\naddress.country.countPeople.title=Население страны\naddress.country.countPeople.type=int\naddress.country.test.title=Тестовый параметр\naddress.country.test.type=string\n# для города аналогично, но вместо country будет city\n# для района аналогично, но вместо country будет area\n# для квартала аналогично, но вместо country будет quarter\n# для улицы аналогично, но вместо country будет street\n# определение почтового индекса по номеру дома\naddress.street.boxIndexRange.title=Почтовый индекс\naddress.street.boxIndexRange.type=string\n# для дома\naddress.house=dateConnecting, test, floorRange, entranceRange\naddress.house.dateConnecting.title=Дата подключения\naddress.house.dateConnecting.type=date\naddress.house.test.title=Тестовый параметр\naddress.house.test.type=string\n# определение подъезда по квартире\naddress.house.entranceRange.title=Диапазон подъездов\naddress.house.entranceRange.type=string\n# определение этажа по квартире\naddress.house.floorRange.title=Диапазон этажей\naddress.house.floorRange.type = string\n# форматирование телефоного параметра\nphones.formats=+7 9XX XXX-XX-XX,+7 (XXX) XXX-XX-XX,8 (XXX) XXX-XX-XX\n#\n#--------------------------------------\n# Поведение\n#--------------------------------------\n# Запрет ввода уже существующего на договоре тарифа с пересекающейся датой, 1 - включен\ncheck.double.tariff=0\n# Разрешение платежей и расходов будущим числом\nallow.future.payment=0\nallow.future.charge=0\n# Разрешение платежей и расходов для закрытых договоров\nallow.closed.payment=0\nallow.closed.charge=0\n# Что выводить в поле \"сальдо\" монитора статуса, 1 - сальдо, 2 - исх. остаток\ncontract.status.monitor.saldo.show.mode=1\n# Запрет установки договору лимита без указания периода в случае наличия заданий на автоматическое изменение лимита, 1 - включение запрета\nreject.limit.update=0\n# Отключение учёта при активации тарифной опции уже активированных опций\n#tariffOption.dontCheckOnActivateAlreadyActivated=1\n#\n#-------------------------------------\n# Статусы договора\n#-------------------------------------\n# Статусы договора, коды и обозначения\ncontract.status.list=0:Активен;1:В отключении;2:Отключен;3:Закрыт;4:Приостановлен;5:В подключении\n# Статусы договора, запрещённые к ручной установке\ncontract.status.no.manual.set=1,5\n# Не используемые статусы договора (не будут отображаться в списках, но останутся в логах изменений)\ncontract.status.deprecated=\n# При смене статуса договора смена статусов его независимых субдоговоров, 1 - включение\nindepend.subcontract.status.change=0\n#\n#--------------------------------------\n# Статусы договора, кредитовые договора\n#--------------------------------------\n# Статус договора, при котором кредитовый договор считается активным\ncredit.contract.active.status=0\n# Cтатусы договора, из которых кредитовый договор может быть переведён в активный статус по платежу\n# в случае, если сальдо станет положительным\ncredit.contract.open.by.payment.status=2,3\n# Cтатусы договора, которые перекрываются в будущем активным статусом, при открытии кредитового договора\ncredit.contract.override.future.to.active.status=2\n# Не переводить статус договора в активный по платежу, тоже что пустой список credit.contract.open.by.payment.status\n#do.not.open.contract.on.payment=1\n# Перечень кодов групп договоров через запятую, которые не активируются по платежу\n#do.not.open.groups.on.payment=\n#\n#-------------------------------------\n# Проверки закрытого периода\n#-------------------------------------\n# Проверка закрытого периода при операциях, 1 - включить\nclosed.date.enabled=1\n# Перечисления кодов групп пользователей, для  который проверка закрытого периода отключена\n#closed.date.groups.id=1,2,3\n# Выборочное отключение проверки закрытого периода\n# (договор) удаление расхода\n#closed.date.disabled.ActionDeleteContractCharge=1\n# (договор) удаление платежа\n#closed.date.disabled.ActionDeleteContractPayment=1\n# (договор) удаление Услуги\n#closed.date.disabled.ActionDeleteContractService=1\n# (договор) удаление группы тарифов\n#closed.date.disabled.ActionDeleteContractTariffGroup=1\n# (договор) удаление тарифного плана\n#closed.date.disabled.ActionDeleteContractTariffPlan=1\n# (договор) изменение расхода\n#closed.date.disabled.ActionUpdateContractCharge=1\n# (договор) изменение Даты открытия\n#closed.date.disabled.ActionUpdateContractDate1=1\n# (договор) изменение Даты закрытия\n#closed.date.disabled.ActionUpdateContractDate2=1\n# (договор) изменение платежа\n#closed.date.disabled.ActionUpdateContractPayment=1\n# (договор) изменение Услуги\n#closed.date.disabled.ActionUpdateContractService=1\n# (договор) изменение группы тарифов\n#closed.date.disabled.ActionUpdateContractTariffGroup=1\n# (договор) изменение тарифного плана\n#closed.date.disabled.ActionUpdateContractTariffPlan=1\n# (договор) изменение периода обьектов\n#closed.date.disabled.ActionObjectUpdate=1\n# (договор) изменение статуса договора\n#closed.date.disabled.ActionContractStatusChange=1\n#\n#----------------------------------------\n# Планировщик заданий\n#----------------------------------------\n# Количество одновременных потоков для выполнения периодических заданий по расписанию\nscheduler.periodic.thread.count=5\n# Количество одновременных потоков для выполнения асинхронных задач (переобсчёты)\nscheduler.nonperiodic.thread.count=5\n#\n#--------------------------------------\n# Загрузчик логов\n#--------------------------------------\n# Автоматическая генерация заданий на обработку логов\nloader.add.process=1\n#\n#----------------------------------------\n# Расширение функциональности\n#----------------------------------------\n# Логирование вызовов функций скриптов поведения в договорах (1-логировать, 0-нет).\n# Логируются выводы print, error и ошибки; после установки перезапустить BGBillingServer\nlog.function.process=1\n#\n#----------------------------------------\n# Расширение функциональности - динамический код\n#----------------------------------------\n# Кодировка файлов динамического кода (UTF-8 предпочтительно, по умолчанию)\ndynamic.src.encoding=UTF-8\n# Каталог размещения динамического кода относительно BGBillingServer\ndynamic.src.dir=dyn\n#\n#----------------------------------------\n# BGSecure\n#----------------------------------------\n# Проверка прав, 0 - не проверять\nbgsecure.check=1\n# Логирование действий в журнале событий, 0 - не логировать\nbgsecure.log=0\n#\n#----------------------------------------\n# Почтовая подсистема\n#----------------------------------------\nmail.smtp.host=bill.ru\nmail.from.email=bill@bill.ru\nmail.from.name=BGBilling Server\nmail.to.email=bill@bill.ru\nmail.to.name=bill@bill.ru\nmail.encoding=UTF-8\n# Параметры SMTP-авторизации\n#mail.smtp.user=\n#mail.smtp.pswd=\n#\n#----------------------------------------\n# Система алармов - экстренных оповещений\n#----------------------------------------\n# На какой адрес высылать оповещения, указать обязательно!\nalarm.mail=\n#\n#----------------------------------------\n# Web-интерфейс клиента\n#----------------------------------------\n# Режим выдачи страниц: xml, либо html - сборка страниц браузером, либо на сервере\nweb.mode=html\n# Разграничение доступа в личный кабинет:\n# 1 - вошедший через логин субдоговора видит всю иерархию договоров (по умолчанию)\n# 2 - вошедший через логин субдоговора видит только свой договор\n#web.sub.contract.auth.mode=1\n# Сохранять все ошибки входа (даже если не идентифицирован договор)\n#web.error.all=1\n# В режиме xml по этому пути браузер будет получать xsl\n# Адрес должен быть доступен отовсюду\nweb.xslt=http://127.0.0.1:8080/bgbilling/xsl/\n# В режиме xml при обращении через порт https по этому пути браузер будет получать xsl\n# Адрес должен быть доступен отовсюду\nweb.xslt.https=https://127.0.0.1:8443/bgbilling/xsl/\n# Добавление в XML на странице статистике детальной информации по договору - 1\nweb.add.contract=0\n# Страница куда пересылать при выходе с Web-статистики\nweb.exit.redirect=about:blank\n# Логирование Web-запросов пользователя (Web-интерфейс)\nwebquery.log=0\n# Максимальный размер в байтах прикрепляемого файла в Web\nmultipart.max.post.size=1048576\n# Настройка страниц ошибок сервера по ошибкам (можно указывать различные коды ошибок)\nserver.error.404=/error/error404.html\nserver.error.403=/error/error403.html\n#\n#----------------------------------------\n# Web-интерфейс, доступ\n#----------------------------------------\n# MD5-хэш универсального пароля к Web-статистике, хэш можно получить в \"Утилиты => Вычисление Digest\"\n#web.admin.password=21232F297A57A5A743894A0E4A801FC3\n# Режим авторизации для доступа к Web-статистике код модуля:режим;код модуля 1:режим\n# модуль 0 - ядро\n# режим 0 - не разрешена, 1 - по номеру договора, 2 - по текстовому параметру договора\nweb.auth.modes=0:1\n# Максимально количество запросов для договора на сервер статистики в день, 0 - не ограничено\nweb.max.day.request.count=0\n# Длина пароля договора для доступа к статистике\npassword.length.min=5\npassword.length.max=15\n# Длина автоматически генерируемого пароля\npassword.length.auto=6\n# Допустимые в пароле символы\npassword.chars=1234567890\n#\n#----------------------------------------\n# Web-интерфейс, доступ, защита от подбора пароля\n#----------------------------------------\n# Максимальное количество неудачных попыток авторизации подряд\nlogon.counter.max=20\n# Базовый интервал времени в секундах между неудачными попытками авторизации\nlogon.timeout.period=0\n# Время блокировки в секундах после исчерпания количества попыток авторизации\nlogon.timeout.lock=21600\n# Размер кэша паролей\nlogon.lock.cache.size=100\n# Время устаревания записи в кэше паролей в секундах\nlogon.lock.cache.expired=600\n# Алгоритм увеличения времени между попытками (+ или ^)\nlogon.timeout.action=+\n#\n#-----------------------------------------\n# Web-интерфейс, доступ, восстановление пароля\n#-----------------------------------------\n# Код текстового параметра, содержащий E-Mail, на который будет высылаться письмо по восстановлению пароля\ncontract.password.forgot.email.param.id=<числовой код параметра>\n# В течение скольке часов после высылки письма можно войти на статистику по ссылке в письме\ncontract.password.forgot.expire.hour=24\n# Ссылка на страницу статистики в письме с восстановлением пароля\ncontract.password.forgot.link=http://localhost:8080/bgbilling/webexecuter?action=ChangePassword&mid=contract\n# Тема письма\ncontract.password.forgot.email.subject=Восстановление пароля\n# Текст письма\ncontract.password.forgot.email.body=Для восстановления пароля к серверу статистики по договору {contract} - перейдите по ссылке ниже (в течении {hour} часов) и смените пароль.\n# набоН символов одноразового пароля\ncontract.password.forgot.char.array=1234567890QWERTYUIOPLKJHGFDSAZXCVBNMqwertyuioplkjhgfdsazxcvbnm\n#\n#-----------------------------------------\n# Web-интерфейс, временное понижение лимита\n#-----------------------------------------\n# сообщения при изменении лимита\nlimit.max.current.msg=Вы не можете в данный момент понизить лимит. Превышено максимально количество не погашенных и/или частично погашенных понижений\nlimit.max.nopayed.msg=Превышено максимально количество просроченных понижений. Возможность понижения лимита заблокирована\n#\n#\n# Коды групп договоров, для которых действует данная настройка, через \',\' (чтобы узнать код группы нажмите Ctrl+i в справочнике\n# групп при выбранной строке таблицы)\ncontract.limit.1.groups=0,1,2\n# Максимальное количество не оплаченных (не возвратившихся) понижений,\n# при котором клиенту будет доступно понижение, при 0 клиент не сможет выполнять\n# понижение до тех пор пока будет хотя бы одно не оплаченное\ncontract.limit.1.maxnotpayoffed=3\n# Максимальное количество частично оплаченных понижений,\n# при котором клиенту будет доступно понижение (0-1, частично оплаченное понижение\n# может быть только одно)\ncontract.limit.1.maxpartialpayoffed=3\n# Количество просроченных платежей после последней разблокировки,\n# после которых доступ к понижению будет заблокирован, 0 - не блокировать при любом количестве\ncontract.limit.1.maxexpiredforblock=3\n# Дни от до\ncontract.limit.1.mindays=1\ncontract.limit.1.maxdays=7\n# Сумма от до\ncontract.limit.1.minsumm=10\ncontract.limit.1.maxsumm=1000\n# Нижний порог лимита при понижении клиентом (по умолчанию -100),\n# т.е ниже этого порога клиент понизить не сможет\ncontract.limit.1.minlimit=-1000'),(2,1,'2016-06-16 18:49:20','main',1,1,'# Активные и приостановленные статусы договора\ncontract.status.active.codes=0\ncontract.status.suspend.codes=3,4\n\n# ID типа устройства, являющегося (корневым) InetAccounting-сервером (ранее этот параметр указывался в inet-access.xml)\n# Параметр обязателен!\naccounting.deviceTypeIds=1\n\n# Проверка цены в тарифе: 0 - проверка отсутствует, 1 - ошибка только? Если у сессии есть трафик определённого типа,\n# но для него нет цены, 2 - ошибка, eсли хотя бы для одного типа трафика в привязке типа сервиса нет цены (по умолчанию - 1)\naccounting.tariffication.checkPrice=2\n\n# Режим активации учетного периода, если не используется скрипт на событие активации,\n# 0 (по умолчанию) - активация со дня подключения (старта сессии), 1 - активация с начала месяца.\n# Следует учитывать, что учетный период является второй величиной при вычислении пропорциональности\n# в тарифной ветке \"Диапазон трафика\"\n#accounting.period.activation.mode=0\n\n# Нужно ли отключать сервис с типом инициации \"по трафику\", если тариф не найден\n#serv.disableOnTariffError=0\n\n\n# Параметры автоматической генерации логина для сервиса.\n# Минимальное значение логина при генерации логина\n#serv.login.min=1\n# Максимальное значение логина при генерации логина (т.е. если в базе присутствуют логины 1,2,3 и 10000000,\n# то при генерации создастся логин 4, а не 10000001)\n#serv.login.max=9999999\n\n#Параметры логина\n#Список разрешенных символов для логина\nserv.login.chars=1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\n#Описание разрешенных символов, если пользователь ввел другие\nserv.login.chars.description=Логин может содержать только цифры и латинские буквы\n\n# Параметры автоматической генерации пароля для сервиса. Можно указать в конфигурации модуля, конфигурации устройства, конфигурации типа сервиса\n# (в последнем случае значения будут главнее):\n# Минимальная длина пароля\nserv.password.length.min=5\n# Максимальная длина пароля\nserv.password.length.max=16\n# Разрешенные символы (используются также при генерации пароля)\nserv.password.chars=1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\n# Описание разрешенных символов, если пользователь ввел другие\nserv.password.chars.description=В пароле допустимы только цифры и латинские буквы.\n# Длина для автоматически генерируемого пароля\nserv.password.length.auto=6\n# Используемые символы для автоматически генерируемого пароля (по умолчанию значение берется из параметра serv.password.chars)\nserv.password.chars.auto=1234567890ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz\n\n# Параметры активации карточек модуля card при использовании InetRadiusProcessor,\n# данные параметры можно указать как в конфигурации модуля, так и в конфигурации устройства.\n# Код модуля card\n#card.moduleId=\n# id услуг активации\n#card.activate.serviceIds=\n# Минимальное значение карточного логина используется, чтобы указать, какие числовые логины нужно искать в карточках;\n# если 0, то ограничение не действует.\n#card.login.min=0\n# Максимальное значение карточного логина используется, чтобы указать, какие числовые логины нужно искать в карточках;\n# если 0, то ограничение не действует.\n#card.login.max=0\n\n#Опции клиента биллинга\n#Сворачивание/Разворачивание дерева устройств в редакторе сервиса договора.\n#Возможные значения: 0 - сворачивать, 1 - разворачивать. Если опция не указана, то по умолчанию используется значение 1.\n#client.gui.expand.device.tree=1\n\ntariffication.tariff.label.1.title=Включенный\ntariffication.tariff.label.2.title=Пакет\n\n'),(3,5,'2015-08-19 21:58:10','main',1,1,'#\npaymaster.LMI_MERCHANT_ID=1234567890\npaymaster.digest.type=MD5\npaymaster.secret=\npaymaster.payment.type.id=5\n#\npaymaster.LMI_SIM_MODE=0\npaymaster.LMI_INVOICE_CONFIRMATION_URL=\npaymaster.LMI_PAYMENT_CONFIRMATION_URL=\npaymaster.LMI_PAYMENT_NOTIFICATION_URL=\npaymaster.LMI_SUCCESS_URL=\npaymaster.LMI_FAILURE_URL=');
/*!40000 ALTER TABLE `module_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_tariff_tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_tariff_tree` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL DEFAULT '0',
  `tree_id` int(10) NOT NULL DEFAULT '0',
  `parent_tree` int(10) NOT NULL DEFAULT '0',
  `lm` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tree_id` (`tree_id`),
  KEY `mid_tree` (`mid`,`tree_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_tariff_tree`
--

LOCK TABLES `module_tariff_tree` WRITE;
/*!40000 ALTER TABLE `module_tariff_tree` DISABLE KEYS */;
INSERT INTO `module_tariff_tree` VALUES (1,3,1,0,1432563426893),(2,2,1,0,1432563516971),(3,2,2,1,1432563571039),(4,1,2,0,1433867006165),(5,1,3,0,1432564354502),(6,2,4,1,1433866904669),(7,1,4,0,1433866978931);
/*!40000 ALTER TABLE `module_tariff_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtree_node`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtree_node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_node` int(10) unsigned NOT NULL DEFAULT '0',
  `mtree_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tree_id` (`mtree_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtree_node`
--

LOCK TABLES `mtree_node` WRITE;
/*!40000 ALTER TABLE `mtree_node` DISABLE KEYS */;
INSERT INTO `mtree_node` VALUES (1,0,1,'root','',0),(2,0,2,'root','',1),(3,2,2,'service','1',0),(5,3,2,'cost','col&1%cost&100.0',0),(6,2,3,'service','2',1),(7,6,3,'cost','col&1%cost&150.0',0),(8,0,4,'root','',2),(9,8,4,'trafficType','trafficTypeId&0',0),(10,8,4,'trafficType','trafficTypeId&1',1),(11,8,4,'trafficType','trafficTypeId&3',2),(12,10,4,'trafficRange','mode&1%amount&20%modeType&1%labelId&1%tariffOptionDeactivate&0%type&2%tariffOptionId&0',0),(13,9,4,'cost','type&4%col&1%cost&0.0',0),(14,9,4,'serviceSet','serviceId&8',1),(15,12,4,'cost','type&0%col&1%cost&0.0',0),(16,12,4,'serviceSet','serviceId&7',1),(17,11,4,'cost','type&0%col&1%cost&0.0',0),(19,11,4,'serviceSet','serviceId&5',1),(20,8,4,'trafficType','trafficTypeId&2',3),(21,20,4,'cost','type&0%col&1%cost&0.0',0),(22,20,4,'serviceSet','serviceId&4',1),(23,8,4,'trafficType','trafficTypeId&4',4),(24,23,4,'cost','type&0%col&1%cost&0.0',0),(25,23,4,'serviceSet','serviceId&6',1),(26,10,4,'trafficRange','mode&5%amount&10%modeType&1%labelId&2%tariffOptionDeactivate&1%type&2%tariffOptionId&1',1),(27,26,4,'cost','type&0%col&1%cost&0.0',0),(28,26,4,'serviceSet','serviceId&9',1),(29,10,4,'trafficRange','mode&1%amount&0%modeType&1%labelId&%tariffOptionDeactivate&0%type&2%tariffOptionId&0',2),(30,29,4,'cost','type&2%col&1%cost&0.1',0),(31,29,4,'serviceSet','serviceId&3',1),(32,0,5,'root','',3),(33,32,5,'trafficType','trafficTypeId&0',0),(34,32,5,'trafficType','trafficTypeId&1,2,3,4',1),(35,34,5,'serviceSet','serviceId&7',0),(36,34,5,'cost','type&0%col&1%cost&0.0',1),(37,33,5,'cost','type&4%col&1%cost&0.0',0),(38,33,5,'serviceSet','serviceId&8',1),(39,2,6,'service','2',1),(40,39,6,'cost','col&1%cost&150.0',0),(41,0,7,'root','',2),(42,41,7,'trafficType','trafficTypeId&0',0),(43,41,7,'trafficType','trafficTypeId&1',1),(44,41,7,'trafficType','trafficTypeId&3',2),(45,41,7,'trafficType','trafficTypeId&2',3),(46,41,7,'trafficType','trafficTypeId&4',4),(47,42,7,'cost','type&4%col&1%cost&0.0',0),(48,42,7,'serviceSet','serviceId&8',1),(49,43,7,'trafficRange','mode&1%amount&30%modeType&1%labelId&1%tariffOptionDeactivate&0%type&2%tariffOptionId&0',0),(50,43,7,'trafficRange','mode&5%amount&10%modeType&1%labelId&2%tariffOptionDeactivate&1%type&2%tariffOptionId&1',1),(51,43,7,'trafficRange','mode&1%amount&0%modeType&1%labelId&%tariffOptionDeactivate&0%type&2%tariffOptionId&0',2),(52,44,7,'cost','type&0%col&1%cost&0.0',0),(53,44,7,'serviceSet','serviceId&5',1),(54,49,7,'cost','type&0%col&1%cost&0.0',0),(55,49,7,'serviceSet','serviceId&7',1),(56,45,7,'cost','type&0%col&1%cost&0.0',0),(57,45,7,'serviceSet','serviceId&4',1),(58,46,7,'cost','type&0%col&1%cost&0.0',0),(59,46,7,'serviceSet','serviceId&6',1),(60,50,7,'cost','type&0%col&1%cost&0.0',0),(61,50,7,'serviceSet','serviceId&9',1),(62,51,7,'cost','type&2%col&1%cost&0.5',0),(63,51,7,'serviceSet','serviceId&3',1);
/*!40000 ALTER TABLE `mtree_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gr` bigint(20) NOT NULL DEFAULT '0',
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `txt` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,36028797018963975,'2015-05-28 00:00:00','Готовые образы виртуальных машин','Готовые образы виртуальных машин доступны на странице <a href=\"http://bgbilling.ru/v6.2/download.shtml\">загрузки</a>.\n<a href=\"http://docs.bitel.ru/pages/viewpage.action?pageId=11239429\">Узнать подробнее.</a>'),(2,36028797018963975,'2015-06-09 00:00:00','Бета-версия нового личного кабинета','Вы можете посмотреть новую версию личного кабинета, доступную в готовых образах виртуальных машин. Новый личный кабинет будет доступен с версии 6.2.');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npay_add_cost_detail_3_201505`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npay_add_cost_detail_3_201505` (
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `summa` decimal(15,2) NOT NULL,
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npay_add_cost_detail_3_201505`
--

LOCK TABLES `npay_add_cost_detail_3_201505` WRITE;
/*!40000 ALTER TABLE `npay_add_cost_detail_3_201505` DISABLE KEYS */;
/*!40000 ALTER TABLE `npay_add_cost_detail_3_201505` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npay_detail_3_201505`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npay_detail_3_201505` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `treeId` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `summa` float(15,2) NOT NULL,
  KEY `cid_mid_eid` (`cid`,`mid`,`eid`),
  KEY `sid` (`sid`),
  KEY `treeId` (`treeId`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npay_detail_3_201505`
--

LOCK TABLES `npay_detail_3_201505` WRITE;
/*!40000 ALTER TABLE `npay_detail_3_201505` DISABLE KEYS */;
/*!40000 ALTER TABLE `npay_detail_3_201505` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npay_service_object_3`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npay_service_object_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `csid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `emid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `csid` (`csid`),
  KEY `cid` (`cid`),
  KEY `oid` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npay_service_object_3`
--

LOCK TABLES `npay_service_object_3` WRITE;
/*!40000 ALTER TABLE `npay_service_object_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `npay_service_object_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `pos` (`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_list_value`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_list_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `param_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `param_id` (`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_list_value`
--

LOCK TABLES `object_list_value` WRITE;
/*!40000 ALTER TABLE `object_list_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_list_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flags` tinyint(4) DEFAULT '0',
  `history` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param`
--

LOCK TABLES `object_param` WRITE;
/*!40000 ALTER TABLE `object_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_address`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_address` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `hid` int(11) NOT NULL DEFAULT '0',
  `flat` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `room` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pod` int(11) NOT NULL DEFAULT '0',
  `floor` int(11) NOT NULL DEFAULT '0',
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `format_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`object_id`,`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_address`
--

LOCK TABLES `object_param_value_address` WRITE;
/*!40000 ALTER TABLE `object_param_value_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_address_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_address_log` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `object_id` (`object_id`,`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_address_log`
--

LOCK TABLES `object_param_value_address_log` WRITE;
/*!40000 ALTER TABLE `object_param_value_address_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_address_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_date`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_date` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` date DEFAULT NULL,
  PRIMARY KEY (`param_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_date`
--

LOCK TABLES `object_param_value_date` WRITE;
/*!40000 ALTER TABLE `object_param_value_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_date_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_date_log` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` date DEFAULT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `param_id` (`param_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_date_log`
--

LOCK TABLES `object_param_value_date_log` WRITE;
/*!40000 ALTER TABLE `object_param_value_date_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_date_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_flag`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_flag` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_flag`
--

LOCK TABLES `object_param_value_flag` WRITE;
/*!40000 ALTER TABLE `object_param_value_flag` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_flag_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_flag_log` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` int(2) NOT NULL DEFAULT '0',
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `object_id` (`object_id`,`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_flag_log`
--

LOCK TABLES `object_param_value_flag_log` WRITE;
/*!40000 ALTER TABLE `object_param_value_flag_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_flag_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_list`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_list` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`param_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_list`
--

LOCK TABLES `object_param_value_list` WRITE;
/*!40000 ALTER TABLE `object_param_value_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_list_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_list_log` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `param_id` (`param_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_list_log`
--

LOCK TABLES `object_param_value_list_log` WRITE;
/*!40000 ALTER TABLE `object_param_value_list_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_list_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_text`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_text` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`param_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_text`
--

LOCK TABLES `object_param_value_text` WRITE;
/*!40000 ALTER TABLE `object_param_value_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_param_value_text_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_param_value_text_log` (
  `object_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dt_change` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `param_id` (`param_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_param_value_text_log`
--

LOCK TABLES `object_param_value_text_log` WRITE;
/*!40000 ALTER TABLE `object_param_value_text_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_param_value_text_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_macros` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ishidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_type`
--

LOCK TABLES `object_type` WRITE;
/*!40000 ALTER TABLE `object_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_type_module`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_type_module` (
  `type_id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  UNIQUE KEY `type_mid` (`mid`,`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_type_module`
--

LOCK TABLES `object_type_module` WRITE;
/*!40000 ALTER TABLE `object_type_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_type_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_type_param`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_type_param` (
  `type_id` int(11) NOT NULL DEFAULT '0',
  `param_id` int(11) NOT NULL DEFAULT '0',
  `pos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type_id`,`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_type_param`
--

LOCK TABLES `object_type_param` WRITE;
/*!40000 ALTER TABLE `object_type_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_type_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymaster_transaction_5`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymaster_transaction_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `payment_date` datetime NOT NULL,
  `summa` decimal(12,2) NOT NULL,
  `sys_payment_data` text COLLATE utf8_unicode_ci NOT NULL,
  `sys_payment_id` int(11) NOT NULL,
  `sys_payment_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymaster_transaction_5`
--

LOCK TABLES `paymaster_transaction_5` WRITE;
/*!40000 ALTER TABLE `paymaster_transaction_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymaster_transaction_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_register`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pt` int(11) NOT NULL DEFAULT '0',
  `load_time` datetime DEFAULT NULL,
  `count` int(3) NOT NULL DEFAULT '0',
  `errorCount` int(11) NOT NULL DEFAULT '0',
  `summa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `processed` tinyint(2) NOT NULL DEFAULT '0',
  `process_time` datetime DEFAULT NULL,
  `load_log` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ptitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `regtype` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_register`
--

LOCK TABLES `payment_register` WRITE;
/*!40000 ALTER TABLE `payment_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_register_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_register_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  `summa` float(10,2) NOT NULL DEFAULT '0.00',
  `pid` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_register_item`
--

LOCK TABLES `payment_register_item` WRITE;
/*!40000 ALTER TABLE `payment_register_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_register_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodic_errors`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodic_errors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marker` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `calc_date` date DEFAULT NULL,
  `subject` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `reg_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodic_errors`
--

LOCK TABLES `periodic_errors` WRITE;
/*!40000 ALTER TABLE `periodic_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `periodic_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_config` (
  `pid` int(11) NOT NULL,
  `config` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_config`
--

LOCK TABLES `plugin_config` WRITE;
/*!40000 ALTER TABLE `plugin_config` DISABLE KEYS */;
INSERT INTO `plugin_config` VALUES (9,'');
/*!40000 ALTER TABLE `plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_group_task_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register_group_task_type` (
  `gid` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_group_task_type`
--

LOCK TABLES `register_group_task_type` WRITE;
/*!40000 ALTER TABLE `register_group_task_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_group_task_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rscm_service_2`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rscm_service_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rscm_service_2`
--

LOCK TABLES `rscm_service_2` WRITE;
/*!40000 ALTER TABLE `rscm_service_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `rscm_service_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rscm_service_account_2`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rscm_service_account_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `date_cid` (`date`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rscm_service_account_2`
--

LOCK TABLES `rscm_service_account_2` WRITE;
/*!40000 ALTER TABLE `rscm_service_account_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `rscm_service_account_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_class`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduled_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_class`
--

LOCK TABLES `scheduled_class` WRITE;
/*!40000 ALTER TABLE `scheduled_class` DISABLE KEYS */;
INSERT INTO `scheduled_class` VALUES (1,'Удаление старых договоров','bitel.billing.server.contract.CleanerContract'),(2,'Генератор заданий на загрузку логов','bitel.billing.server.load.TaskGenerator'),(3,'Рассыльщик почты','bitel.billing.server.mail.MailSender'),(4,'Восстановление лимитов','bitel.billing.server.contract.LimitRestorer'),(5,'Пользовательские рассылки','bitel.billing.server.mail.UserDispatchSender'),(6,'Генератор событий таймера','bitel.billing.server.script.TimerEventGenerate'),(7,'Рассылка о понижении лимита','bitel.billing.server.contract.DebtMailSender'),(8,'Установка статусов договоров','bitel.billing.server.contract.ContractStatusSetter'),(9,'Загрузка платежей из файлов','bitel.billing.server.admin.integration.PaymentLoader'),(10,'Валидатор','ru.bitel.bgbilling.kernel.task.server.Validator'),(11,'Выполнение глобальных скриптов по таймеру','bitel.billing.server.script.global.bean.GlobalScriptTimer');
/*!40000 ALTER TABLE `scheduled_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_periodic_run`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduled_periodic_run` (
  `description` mediumtext COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_periodic_run`
--

LOCK TABLES `scheduled_periodic_run` WRITE;
/*!40000 ALTER TABLE `scheduled_periodic_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_periodic_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_task_run`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduled_task_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longblob,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `executed` tinyint(2) DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_task_run`
--

LOCK TABLES `scheduled_task_run` WRITE;
/*!40000 ALTER TABLE `scheduled_task_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduled_task_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_tasks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduled_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mm` bigint(20) NOT NULL DEFAULT '0',
  `dm` int(11) NOT NULL DEFAULT '0',
  `dw` tinyint(4) NOT NULL DEFAULT '0',
  `hh` int(10) NOT NULL DEFAULT '0',
  `min` bigint(20) NOT NULL DEFAULT '0',
  `prior` int(11) NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `class_id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_tasks`
--

LOCK TABLES `scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `scheduled_tasks` DISABLE KEYS */;
INSERT INTO `scheduled_tasks` VALUES (1,0,0,0,1,1,2,NULL,NULL,1,-1,'bitel.billing.server.contract.ContractStatusSetter','0','',''),(2,0,0,0,1,32,1,NULL,NULL,1,-1,'bitel.billing.server.contract.LimitRestorer','0','',''),(3,0,0,0,16645,1024,1,NULL,NULL,1,-1,'ru.bitel.bgbilling.modules.inet.task.InetServPeriodTask','1','Активация/деактивация сервиса Inet на договоре по его периоду.',''),(4,0,0,0,2,34359738368,1,NULL,NULL,1,-1,'ru.bitel.bgbilling.modules.rscm.server.Calculator','2','','mid=2'),(5,0,1,0,1,32768,1,NULL,NULL,1,-1,'ru.bitel.bgbilling.modules.npay.server.Calculator','3','','hour.minus=0\nmid=3');
/*!40000 ALTER TABLE `scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script`
--

LOCK TABLES `script` WRITE;
/*!40000 ALTER TABLE `script` DISABLE KEYS */;
INSERT INTO `script` VALUES (1,'Общий');
/*!40000 ALTER TABLE `script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_backup`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `script_id` int(11) NOT NULL,
  `script` mediumtext COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `change_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `script_type` (`script_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_backup`
--

LOCK TABLES `script_backup` WRITE;
/*!40000 ALTER TABLE `script_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `script_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_classes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_classes` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_mod` bigint(20) NOT NULL,
  `data` mediumblob NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_classes`
--

LOCK TABLES `script_classes` WRITE;
/*!40000 ALTER TABLE `script_classes` DISABLE KEYS */;
INSERT INTO `script_classes` VALUES ('ru.bitel.bgbilling.inet.dyn.device.des3200.DES320028ServiceActivator',1433856492000,'����\0\0\04\0�	\0?\0m\n\0A\0n\0o\0p\n\0\0q\n\0\0r	\0?\0s\0t	\0?\0u\0v\n\0w\0x	\0?\0y\n\0z\0{	\0?\0|\0}\n\0~\0	\0?\0�\0�	\0?\0�	\0?\0�\n\0�\0�\0�\0�\0�\n\0\0�\0�\n\0\Z\0�\0�\n\0\0n\0�\n\0\0�\n\0\0�\n\0\0�\n\0z\0�\n\0\0�\0�\n\0\0�\0�\0�\0�\n\0\0�\n\0\0�\0�\n\0+\0�\0�\n\0-\0�\n\0+\0�\0�\n\00\0�\n\0+\0�\n\0+\0�\0�\n\0�\0�\n\09\0�\n\0�\0�\n\0�\0�\0�\n\0�\0�\0�\0�\n\0?\0�\0�\n\0?\0�\0�\n\0w\0�\0�\0InnerClasses\0logger\0Lorg/apache/log4j/Logger;\0device\0<Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;\0host\0Ljava/lang/String;\0snmpVersion\0I\0snmpPort\0context\0\'Luk/co/westhawk/snmp/stack/SnmpContext;\0\noidRxValue\0[J\0\noidTxValue\0<init>\0()V\0Code\0LineNumberTable\0init\0�(ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0destroy\0()Ljava/lang/Object;\0connect\0\rStackMapTable\0\nExceptions\0�\0\ndisconnect\0setSpeed\0\"(III)Ljava/util/concurrent/Future;\0	Signature\0%(III)Ljava/util/concurrent/Future<*>;\0\rserviceModify\0`(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/util/concurrent/Future;\0�\0c(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/util/concurrent/Future<*>;\0\rserviceCancel\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0\naccess$000\0()Lorg/apache/log4j/Logger;\0<clinit>\0\nSourceFile\0DES320028ServiceActivator.java\0C\0D\0Q\0R\0%uk/co/westhawk/snmp/stack/AsnObjectId\0$1.3.6.1.4.1.171.11.113.1.3.2.3.1.1.2\0Q\0�\0�\0�\0N\0O\0$1.3.6.1.4.1.171.11.113.1.3.2.3.1.1.3\0P\0O\0INIT\0�\0�\0�\0E\0F\0�\0�\0�\0G\0H\0snmp.version\0�\0�\0�\0I\0J\0	snmp.port\0K\0J\0L\0M\0�\0�\0�\0DESTROY\0CONNECT\0%uk/co/westhawk/snmp/stack/SnmpContext\0Q\0�\0(uk/co/westhawk/snmp/stack/SnmpContextv2c\0java/lang/StringBuilder\0snmpVersion=\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\nDISCONNECT\0W\0R\0SET SPEED rx/tx: \0/\0 kbps\0Q\0�\0�\0�\0 uk/co/westhawk/snmp/stack/SetPdu\0Q\0�\0$uk/co/westhawk/snmp/stack/AsnInteger\0Q\0�\0�\0�\0Fru/bitel/bgbilling/inet/dyn/device/des3200/DES320028ServiceActivator$1\0Q\0�\0�\0�\0�\0�\0SERVICE MODIFY\0�\0�\0�\0�\0�\0�\0�\0�\0�\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0�\0�\0�\0�\0�\0�\0^\0_\0SERVICE CANCEL\0b\0c\0Dru/bitel/bgbilling/inet/dyn/device/des3200/DES320028ServiceActivator\0�\0�\0Aru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorAdapter\0java/lang/Exception\0\rjava/util/Set\0(Ljava/lang/String;)V\0getOid\0()[J\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0getHost\0()Ljava/lang/String;\0ru/bitel/common/ParameterMap\0getInt\0(Ljava/lang/String;I)I\0java/lang/Boolean\0valueOf\0(Z)Ljava/lang/Boolean;\0(Ljava/lang/String;I)V\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0toString\0	getSecret\0setCommunity\0([J)V\0add\0(J)V\03(Luk/co/westhawk/snmp/stack/SnmpContextBasisFace;)V\0(I)V\0addOid\0O(Luk/co/westhawk/snmp/stack/AsnObjectId;Luk/co/westhawk/snmp/stack/AsnObject;)V\0I(Lru/bitel/bgbilling/inet/dyn/device/des3200/DES320028ServiceActivator;)V\0addObserver\0(Ljava/util/Observer;)V\0send\0()Z\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0getNewInetServ\0<()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;\0getInterfaceId\0()I\0\rgetNewOptions\0()Ljava/util/Set;\0getNewState\0java/lang/Integer\0(I)Ljava/lang/Integer;\0contains\0(Ljava/lang/Object;)Z\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0?\0A\0\0\0\0\Z\0C\0D\0\0\0\0\0E\0F\0\0\0\0\0G\0H\0\0\0\0\0I\0J\0\0\0\0\0K\0J\0\0\0\0\0L\0M\0\0\0\0\0N\0O\0\0\0\0\0P\0O\0\0\0\0\0Q\0R\0\0S\0\0\0E\0\0\0\0\0%*�\0*�\0Y�\0�\0�\0*�\0Y�\0�\0�\0	�\0\0\0\0T\0\0\0\0\0\0\0\0\0\0\0\0\0U\0V\0\0S\0\0\0i\0\0\0\0\09�\0\n�\0*,�\0*,�\0\r�\0*�\0�\0*\0��\0�\0*�\0�\0�\0\0\0\0T\0\0\0\0\0\0\0\0\0 \0\r\0\"\0\0#\0!\0$\0/\0&\04\0(\0\0W\0X\0\0S\0\0\0)\0\0\0\0\0\r�\0�\0�\0�\0\0\0\0T\0\0\0\n\0\0\0\0.\0\00\0\0Y\0X\0\0S\0\0\0�\0\0\0\0\0��\0�\0*�\0�\0\0\0\0\0\0H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02*�\0Y*�\0*�\0�\0�\0�\0:*�\0\ZY*�\0*�\0�\0�\0�\0$�\0�\0Y�\0�\0*�\0�\0 �\0!�\0�\0�*�\0*�\0�\0\"�\0#�\0�\0\0\0\0T\0\0\0*\0\n\0\0\07\0\09\0(\0=\0;\0>\0>\0C\0Q\0D\0T\0I\0p\0J\0u\0N\0�\0P\0Z\0\0\0\0( \0[\0\0\0\0\0\\\0\0]\0X\0\0S\0\0\0H\0\0\0\0\0�\0$�\0*�\0�\0\n*�\0�\0%�\0�\0\0\0\0T\0\0\0\0\0\0\0V\0\0W\0\0Y\0\0\\\0Z\0\0\0\0\0\0\0^\0_\0\0S\0\0\0�\0\0\0\0\0��\0�\0Y�\0&�\0�\0 \'�\0�\0 (�\0�\0!�\0�\0Y*�\0�\0):��\0*�\0Y*�\0	�\0):��\0*�\0+Y*�\0�\0,:�\0-Y�\0.�\0/�\0-Y�\0.�\0/�\00Y*�\01:�\02�\03W�\0\0\0\0T\0\0\02\0\0\0\0e\0\'\0g\04\0h\0;\0i\0H\0j\0O\0l\0\\\0m\0k\0n\0z\0p\0�\0�\0�\0�\0�\0�\0[\0\0\0\0\0\\\0`\0\0\0\0a\0\0b\0c\0\0S\0\0\0�\0\0\0\0\0W�\04�\0+�\05�\06=+�\07N@6+�\08�\0/\06-�\0:�\0;\0�\0\06�\0-�\0:�\0;\0�\0\06*�\0<�\0\0\0\0T\0\0\0.\0\0\0\0�\0\0�\0\0�\0\0�\0\0�\0!\0�\0&\0�\03\0�\0;\0�\0H\0�\0M\0�\0Z\0\0\0\0�\0;\0d\0[\0\0\0\0\0\\\0`\0\0\0\0e\0\0f\0g\0\0S\0\0\0&\0\0\0\0\0\n�\0=�\0�\0\0\0\0T\0\0\0\n\0\0\0\0�\0\0�A\0b\0g\0\0S\0\0\0\0\0\0\0\0*+�\0>�\0\0\0\0T\0\0\0\0\0\0\0\0[\0\0\0\0\0\\\0h\0i\0\0S\0\0\0\0\0\0\0\0\0�\0�\0\0\0\0T\0\0\0\0\0\0\0\0\0j\0R\0\0S\0\0\0!\0\0\0\0\0\0	?�\0@�\0�\0\0\0\0T\0\0\0\0\0\0\0\0\0k\0\0\0\0l\0B\0\0\0\n\0\00\0\0\0\0\0\0'),('ru.bitel.bgbilling.inet.dyn.device.des3200.DES320028ServiceActivator$1',1433856492000,'����\0\0\04\0J	\0\0#\n\0\0$\0%\n\0\0&\n\0!\0\'\0(\n\0\0$\0)\n\0\0*\n\0\0+\n\0\0,\n\0-\0.\n\0/\00\01\n\0-\02\03\05\0this$0\0FLru/bitel/bgbilling/inet/dyn/device/des3200/DES320028ServiceActivator;\0<init>\0I(Lru/bitel/bgbilling/inet/dyn/device/des3200/DES320028ServiceActivator;)V\0Code\0LineNumberTable\0\nupdateImpl\0<(Ljava/util/Observable;Ljava/lang/Object;)Ljava/lang/Object;\0\rStackMapTable\0%\0	Signature\0?Lru/bitel/common/concurrent/FutureObserver<Ljava/lang/Object;>;\0\nSourceFile\0DES320028ServiceActivator.java\0EnclosingMethod\06\07\08\0\0\0\09\0 uk/co/westhawk/snmp/stack/SetPdu\0:\0;\0<\0=\0java/lang/StringBuilder\0Ok: \0>\0?\0>\0@\0A\0B\0C\0D\0E\0F\0G\0H\0PDU set error: \0I\0E\0Fru/bitel/bgbilling/inet/dyn/device/des3200/DES320028ServiceActivator$1\0InnerClasses\0)ru/bitel/common/concurrent/FutureObserver\0Dru/bitel/bgbilling/inet/dyn/device/des3200/DES320028ServiceActivator\0setSpeed\0\"(III)Ljava/util/concurrent/Future;\0()V\0getErrorStatus\0()I\0\naccess$000\0()Lorg/apache/log4j/Logger;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0java/lang/Boolean\0valueOf\0(Z)Ljava/lang/Boolean;\0error\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0\0\0\0\n*+�\0*�\0�\0\0\0\0\0\0\0\0\0\0\0q\0\0\0\0\0\0\0\0�\0\0\0\0\0H+�\0N-�\0�\0!�\0�\0Y�\0�\0	-�\0\n�\0�\0�\0\r��\0�\0Y�\0�\0	,�\0\n�\0�\0�\0\r�\0\0\0\0\0\0\0\Z\0\0\0\0u\0\0v\0\0x\0%\0z\0*\0~\0C\0�\0\Z\0\0\0\0�\0*\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\0!\0\"\04\0\0\0\n\0\0\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.access.InetServStateSync',1433856492000,'����\0\0\04\0K\n\0\0\n\0\0\n\0 \0!\0\"\0#\0$\0%\0&\0\'\0(\0)\0\'\0*	\0+\0,\n\0\0-\n\0\0.\0\'\0/\00\01\0<init>\0()V\0Code\0LineNumberTable\0execute\0L(Lru/bitel/bgbilling/server/util/Setup;Lru/bitel/common/sql/ConnectionSet;)V\0\rStackMapTable\02\03\0\nExceptions\04\0\nSourceFile\0InetServStateSync.java\0\0\02\05\06\07\08\09\0:\0;\0<\0SELECT id FROM contract\0=\0>\0?\03\0@\0A\0Sru/bitel/bgbilling/kernel/contract/balance/server/event/ContractBalanceChangedEvent\0B\0C\0D\0E\0F\0\0G\0H\0I\0J\0\0<ru/bitel/bgbilling/modules/inet/dyn/access/InetServStateSync\0<ru/bitel/bgbilling/kernel/script/server/dev/GlobalScriptBase\0.ru/bitel/bgbilling/kernel/event/EventProcessor\0java/sql/ResultSet\0java/lang/Exception\0getInstance\02()Lru/bitel/bgbilling/kernel/event/EventProcessor;\0!ru/bitel/common/sql/ConnectionSet\0\rgetConnection\0()Ljava/sql/Connection;\0java/sql/Connection\0createStatement\0()Ljava/sql/Statement;\0java/sql/Statement\0executeQuery\0((Ljava/lang/String;)Ljava/sql/ResultSet;\0next\0()Z\0getInt\0(I)I\0java/math/BigDecimal\0ZERO\0Ljava/math/BigDecimal;\0(IILjava/math/BigDecimal;)V\0publish\0*(Lru/bitel/bgbilling/kernel/event/Event;)V\0close\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0F�\0N,�\0�\0\0�\0\0:�\0\0�\0!�\0Y�\0	\0�\0\n�\0:-�\0����\0\r\0�\0\0\0\0\0\0\0\"\0\0\0\0\0\0\0\0\0 \0 \05\0!\0;\0\"\0>\0#\0E\0$\0\0\0\0\0�\0\0\0\'\0\0\0\0\0\0\Z\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.accounting.detail.FlowExport',1433856492000,'����\0\0\04�\n\0}\0�\n\0�\0�\0�\n\0\0�\n\0\0�\0�\n\0\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\n\0\0�\0�\n\0\0�\n\0�\0�\0�\0�\n\0�\0�\0�\n\0\0�\n\0\0�\0�\n\0\0�\n\0\0�\0�\0�\0�\0�\n\0�\0�\0�\0�\n\0\0�\n\0�\0�\n\0�\0�\0�\0�\0�\0�\0�\0�\n\0�\0�\n\0�\0�\0�\0�\n\01\0�\0�\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0\0�\0�\n\0<\0�\0�\0\0\0\n\0>\0�\n\0\0�\n\0>\0�\n\0<\0�\n\0<\0�\n\0\0�\0�\n\0]\0�\0\0\0\0\0\0�\0\0\0\0\0\0�\n\0F\0�\0�\n\0\0�\n\0\0�\0�\n\0P\0�\n\0�\0�\n\0�\0�\0�\0�\n\0\0�\n\0�\0�\0\n\0W\0�\n\0W\n\n\n\0\n\0]\0�\n\0_\0�	\n\n\r	\0d	\0d\n\0\n\0�\n\n\0�\n\0]\n\Z\n\0\n\n\0�\n\0\n\0�\n\0 \n\0�!\n\0�\"\n\0�#\n\0�$\n\0�%\n\0�&\'\0<init>\0()V\0Code\0LineNumberTable\0main\0([Ljava/lang/String;)V\0\nExceptions(\0export\03(Lru/bitel/common/ParameterMap;Ljava/lang/String;)V\0\rStackMapTable)*\0�\04(Lru/bitel/common/ParameterMap;[Ljava/lang/String;)V\0�+,-\0�(Lru/bitel/common/ParameterMap;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;Ljava/util/Set;[B[BIZLjava/lang/String;Ljava/lang/String;I)V\0	Signature\0�(Lru/bitel/common/ParameterMap;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;Ljava/util/Set<Ljava/lang/Integer;>;[B[BIZLjava/lang/String;Ljava/lang/String;I)V\0�(Lru/bitel/common/ParameterMap;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;Ljava/util/Set;[B[BIZLjava/io/Writer;Ljava/lang/String;I)V\0�(Lru/bitel/common/ParameterMap;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;Ljava/util/Set<Ljava/lang/Integer;>;[B[BIZLjava/io/Writer;Ljava/lang/String;I)V\0getLogHours\07(Ljava/util/Date;Ljava/util/Date;)Ljava/util/SortedSet;.\0�\0M(Ljava/util/Date;Ljava/util/Date;)Ljava/util/SortedSet<Ljava/util/Calendar;>;\0�(Lru/bitel/common/ParameterMap;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lru/bitel/bgbilling/kernel/network/flow/FlowSelector;IZLjava/io/Writer;Ljava/lang/String;I)V/0123\r\0�(Lru/bitel/common/ParameterMap;Ljava/lang/String;Ljava/lang/String;ILjava/util/List<Ljava/util/Calendar;>;Lru/bitel/bgbilling/kernel/network/flow/FlowSelector;IZLjava/io/Writer;Ljava/lang/String;I)V\0writeHeader\0(Ljava/io/Writer;Z)V\0writeRecord4\0\nFlowDetail\0InnerClasses\0�(Ljava/io/Writer;Lru/bitel/bgbilling/kernel/network/datalog/IPDataLogUtils$FlowDetail;Ljava/text/DateFormat;Ljava/util/Date;IZ)V\0\nSourceFile\0FlowExport.java\0~\0567\0@ru/bitel/bgbilling/modules/inet/dyn/accounting/detail/FlowExport\0�\0�\0java/util/ArrayList\00(?:\\A|[\\s]*)(?:(?:\"(.+?)\")|(?:(.+?)))(?:[\\s]|\\z)89:;<*=>?@)ABCD\0java/lang/StringEF\0[Ljava/lang/String;GH\0-sIBJKL\0-h\0\ryyyy-MM-dd-HHMNO\0java/util/GregorianCalendarPQ\0java/util/CalendarARST\0-tFrom\0yyyy-MM-dd\'T\'HH:mm:ss\0-tTo\0-iUV\0-r\0-WXYZ[\\]\0-f\0-tFmt\0-tZone\0-dir\0-maxSort\0-writeIfaces^_`_\0%ru/bitel/bgbilling/common/BGException\0!Parameter -dir must not be empty.\0~a\0Parameter -f must not be empty.\0Parameter -s must not be empty.\04Parameter -h (or -tFrom and -tTo) must not be empty.b_cdefghD\0�\0�\0java/io/FileWriter\0java/io/BufferedWriter\0~i\0�\0�j\0k\0\0�\0�\0Bru/bitel/bgbilling/modules/inet/accounting/detail/InetFlowSelectorSl\0~m\0datalog.flow.dir\0~n\0�\0�\0java/util/TreeSetopqr.stu_\0ru/bitel/common/Preferencesvwxyz{|\0�\0�\0java/util/Date\0\Zjava/text/SimpleDateFormat1}~3>�t\00ru/bitel/bgbilling/kernel/network/flow/FlowArrayC���\0F[Lru/bitel/bgbilling/kernel/network/datalog/IPDataLogUtils$FlowDetail;\0�\0�0\0+Timestamp	FromIp	FromPort	ToIp	ToPort	Bytes�a\0	FromIface	ToIface\0\n	Protocol\n�lP�2�����������D�@���D�l�D�D�D\0java/lang/Object\0java/io/IOException\0java/util/List\0java/util/regex/Matcher\0ru/bitel/common/ParameterMap\0\rjava/util/Set\0[B\0java/util/SortedSet\03ru/bitel/bgbilling/kernel/network/flow/FlowSelector\0java/io/Writer\0java/lang/Iterable\0java/text/DateFormat\0java/util/Iterator\0Cru/bitel/bgbilling/kernel/network/datalog/IPDataLogUtils$FlowDetail\0$ru/bitel/bgbilling/server/util/Setup\0getSetup\0(()Lru/bitel/bgbilling/server/util/Setup;\0java/util/regex/Pattern\0compile\0-(Ljava/lang/String;)Ljava/util/regex/Pattern;\0matcher\03(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;\0find\0()Z\0group\0(I)Ljava/lang/String;\0add\0(Ljava/lang/Object;)Z\0size\0()I\0toArray\0(([Ljava/lang/Object;)[Ljava/lang/Object;\0trim\0()Ljava/lang/String;\0equals\0ru/bitel/common/Utils\0parseInt\0(Ljava/lang/String;)I\0bitel/billing/common/TimeUtils\0	parseDate\06(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;\0setTime\0(Ljava/util/Date;)V\0(II)V\0getTime\0()Ljava/util/Date;\0toIntegerSet\0#(Ljava/lang/String;)Ljava/util/Set;\0split\0\'(Ljava/lang/String;)[Ljava/lang/String;\0java/net/InetAddress\0	getByName\0*(Ljava/lang/String;)Ljava/net/InetAddress;\0\ngetAddress\0()[B\0parseBoolean\0(Ljava/lang/String;)Z\0\risBlankString\0(Ljava/lang/String;)V\0\risEmptyString\0java/util/TimeZone\0getTimeZone\0((Ljava/lang/String;)Ljava/util/TimeZone;\0\ngetDefault\0()Ljava/util/TimeZone;\0getRawOffset\0(Ljava/io/Writer;I)V\0flush\0close\0()J\0)(JJLjava/util/Set;[B[BLjava/util/List;I)V\0(Ljava/util/Collection;)V\0clear_MIN_MIL_SEC\0*(Ljava/util/Calendar;)Ljava/util/Calendar;\0	hourDelta\0+(Ljava/util/Calendar;Ljava/util/Calendar;)I\0clone\0()Ljava/lang/Object;\0notBlankString\0set\0\'(Ljava/lang/String;Ljava/lang/String;)V\08ru/bitel/bgbilling/kernel/network/datalog/IPDataLogUtils\0\ZnewIPHourlyDataLogIterable\0W(Lru/bitel/common/ParameterMap;Ljava/lang/String;ILjava/util/List;)Ljava/lang/Iterable;\0newFlowDetailIterable\0`(Ljava/lang/Iterable;Lru/bitel/bgbilling/kernel/network/flow/FlowSelector;I)Ljava/lang/Iterable;\0iterator\0()Ljava/util/Iterator;\0hasNext\0next\0I\0array\0.[Lru/bitel/bgbilling/kernel/network/flow/Data;\0write\0getMilliseconds\0(J)V\0format\0$(Ljava/util/Date;)Ljava/lang/String;\0valueOf\0(J)Ljava/lang/String;\0(I)V\0getSrcIpAddress\0\"()Lru/bitel/common/inet/IpAddress;\0&(Ljava/lang/Object;)Ljava/lang/String;\0\ngetSrcPort\0getDstIpAddress\0\ngetDstPort\0	getOctets\0getInputInterface\0getOutputInterface\0getProtocol\0!\0\0}\0\0\0\0\0\n\0\0~\0\0\0�\0\0\0\0\0\0\0\0*�\0�\0\0\0\0�\0\0\0\0\0\0\0(\0	\0�\0�\0\0�\0\0\01\0\0\0\0\0�\0L�\0Y�\0+*�\0�\0\0\0\0�\0\0\0\0\0\0\0-\0\0/\0\00\0�\0\0\0\0\0�\01\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0T�\0Y�\0N�\0	,�\0\n:�\0�\0$�\0:�\0�\0:-�\0\r\0W���*+--�\0\0�\0�\0\0�\0�\0�\0\0\0\0�\0\0\0*\0\n\0\0\0<\0\0>\0\0@\0\0B\0#\0C\0(\0E\00\0H\09\0I\0<\0K\0S\0L\0�\0\0\0\0�\0\0�\0��\0\0��\0\0�\0\0\0\0\0�\01\0\0�\0�\0\0�\0\0�\0\0\0\0>::::::	:\n:u06:\r66,�d6�_,2:,`2�\0:�\0�\0�\0>�5�\0�\06�\0:�\0Y�\0\Z:�\0�\0�\0�\0:�\0��\0�\0 �\0:�\0�!�\0�\0 �\0:�\0�\"�\0�\0\r�\0#:�\0�$�\0�\0E%�\0&:��\0�\0\'�\0(Y::�\0\"��\02�\0\'�\0(:2�\0\'�\0(:�\0l)�\0�\0\n:	�\0[*�\0�\0\n:\n�\0J+�\0�\0\n:�\09,�\0�\0\n:\r�\0(-�\0�\0\r�\06�\0.�\0�\0\n�\0/6����+�\0\r�\00�\0\r�\01Y2�\03�	�\00�\0\r�\01Y4�\03��\0\r�\01Y5�\03��\0�\0\r�\01Y6�\03�6�\07�\0�\08:�\09:�\0:�\0:d6*+\r	\n�\0;�\0\0\0\0�\0\0\0C\0\0\0X\0\0Y\0\0Z\0\0[\0\0\\\0\0]\0\0^\0\0_\0\0`\0\Z\0a\0\0b\0\"\0c\0%\0e\05\0g\0;\0h\0F\0j\0P\0l\0Y\0n\0c\0p\0l\0q\0u\0r\0|\0s\0�\0t\0�\0u\0�\0v\0�\0w\0�\0y\0�\0{\0�\0}\0�\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0�\"\0�,\0�3\0�=\0�D\0�N\0�U\0�_\0�f\0�p\0�z\0��\0��\0e�\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0�\0�\0�\0\0\0]\0�\0.\0\0�\0�\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0*\0�\0�<�\0)\0�\0�\0�\0\r		�\0#\0�\0\0\0\0\0�\01\0\0�\0�\0\0�\0\0\0s\0\0\0\0\0C�\0<Y�\0=:�\0>Y?�\0@:*+,	\n\r�\0A�\0B�\0C�\0D�\0\0\0\0�\0\0\0\0\0\0\0�\0\0�\0\0�\03\0�\08\0�\0=\0�\0B\0�\0�\0\0\0\0\0�\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0t\0\0\0\0\0P�\0E:�\0FY�\0G�\0G\0Hm\0Hi\0Ja\r�\0L:*+M,�\0Y�\0N	\n\r�\0O�\0\0\0\0�\0\0\0\0\0\0\0	\01\0O\0�\0\0\0\0\0�\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0N�\0PY�\0QM�\0Y�\0\ZN-*�\0-�\0RW�\0Y�\0\Z:+�\0-�\0S�\0,-�\0T\0W-�\0U�\0N-�\0���,�\0\0\0\0�\0\0\0.\0\0\0\0\r\0\0\0\Z\0#\0)\02\0:\0B\0L\0�\0\0\0\0�\0)\0�\0�\0�\"\0�\0\0\0\0�\0\0�\0�\0\0�\0\0�\0\0\0\0\0�-�\0V�\0�\0WY�\0X:,-�\0YL+,�\0Z:�\0[:\r*	�\0\\�\0]Y�\0^:\n�\0V�\0�\0_Y\n�\0`:�\0:\r�\0a\0:�\0b\0�\0F�\0c\0�\0d:6�\0e6�\0&�\0f�\0g2:*	�\0h���٧��	�\0i�\0\0\0\0�\0\0\0N\0\0\05\07\08\09\0\Z<\0%=\00?\08B\0AC\0IE\0WI\0ZL\0yN\0�P\0�R\0�N\0�T\0�V\0�W\0�\0\0\0s\0\Z�\0<\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0\0�\0\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0\0��\0\0��\0)�\0\0�\0\0\0\0\0�\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0H\0\0\0\0\0+j�\0k�\0	+l�\0k+m�\0k�\0\0\0\0�\0\0\0\0\0\0b\0d\0\nf\0i\0j\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0:\0\0\0\0\0�-�\0,�\0n�a�\0o+-�\0p�\0k�\0+,�\0n�\0q�\0k+	�\0r+,�\0s�\0t�\0k+	�\0r+,�\0u�\0v�\0k+	�\0r+,�\0w�\0t�\0k+	�\0r+,�\0x�\0v�\0k+	�\0r+,�\0y�\0q�\0k�\0%+	�\0r+,�\0z�\0v�\0k+	�\0r+,�\0{�\0v�\0k+	�\0r+,�\0|�\0v�\0k+\n�\0r�\0\0\0\0�\0\0\0^\0\0\0{\0}\0~\0�\0)�\0/�\0:�\0@�\0K�\0Q�\0\\�\0b�\0m�\0s�\0~�\0��\0��\0��\0��\0��\0��\0��\0��\0�\0\0\0\0\n�\0{\0�\0\0\0\0\0�\0\0�\0\0\0\0�\0�\0\0\0\n\0\0�\0�\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.CiscoUtils',1433856492000,'����\0\0\04\0>\n\0\0\Z\n\0\0\0\0\0\0 \0\0!\0\"\n\0\0#\0$\n\0\0%\n\0\0&\n\0\0\'\n\0\0(\0)\0*\0<init>\0()V\0Code\0LineNumberTable\0getStringAttribute\0q(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0\rStackMapTable\0+\0,\0\nSourceFile\0CiscoUtils.java\0\0\0-\0.\0/\0+\00\01\0,\02\03\04\05\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute\06\05\0java/lang/String\07\08\09\0:\0;\0<\0\0=\0;ru/bitel/bgbilling/modules/inet/dyn/device/cisco/CiscoUtils\0java/lang/Object\0java/util/List\0java/util/Iterator\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0\rgetAttributes\0(II)Ljava/util/List;\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0()Ljava/lang/Object;\0getValue\0\nstartsWith\0(Ljava/lang/String;)Z\0length\0()I\0	substring\0(I)Ljava/lang/String;\0((IILjava/lang/String;)Ljava/lang/String;\0!\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0�\0\0	\0\0\0]�\0R*�\0:�\0B�\0\0:�\0\0�\0/�\0\0�\0:�\0�\0:-�\0	�\0\r-�\0\n�\0�����*�\0�\0\0\0\0\0\0\0*\0\n\0\0\0\0\0\Z\0\r\0\0\0\01\0 \0;\0!\0D\0#\0N\0%\0Q\0(\0T\0,\0\0\0\0\0�\0\0\02�\0�\0\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ipdhcp.ISGProtocolHandlerIpDhcp',1433856492000,'����\0\0\04s\n\0d\0�\n\0d\0�	\0_\0�\n\0�\0�	\0_\0�\0�\n\0�\0�	\0_\0�\0�\0�	\0_\0�\0�\n\0\0�\0�\0�\n\0�\0�\0�\n\0�\0�\n\0�\0�\0�	\0_\0�\0�\n\0\0�\0�\n\0\0�\n\0\0�\n\0�\0�\n\0�\0�\0�\n\0�\0�\n\0\0�\0�\0�\0�\n\0!\0�\n\0�\0�\0�\n\0\0�\n\0�\0�\0�\0�\n\0�\0�	\0_\0�\0�\n\0D\0�\n\0�\0�\n\0D\0�	\0_\0�	\0_\0�	\0_\0�\n\0�\0�\n\0�\0�\n\0�\0�	\0_\0�\n\0�\0�\n\0�\0�	\0_\0�\0�\0�\0�\0�\0�\0�\0�\n\0\0�\n\0\0�\n\0\0�\0�\0�\n\0�\0�\0�\n\0B\0�\0�\0�\n\0E\0�\n\0E\0�\n\0E\0�\n\0E\0�\n\0E\0�\n\0E\0�\0�\n\0L\0�\n\0E\0�\n\0E\0�\n\0E\0�\n\0E\0�\n\0E\0�\n\0E\0�\n\0E\0�\0�\n\0E\0�\0�\n\0W\0�\n\0E\0�\n\0�\0�\0�\n\0[\0�\n\0�\0�\n\0�\0�\0�\n\0�\0�\0�\n\0�\0\0logger\0Lorg/apache/log4j/Logger;\0moduleId\0I\0deviceId\0\ncontractId\0servId\0excludeRangeList\0Ljava/util/List;\0	Signature\00Ljava/util/List<Lru/bitel/common/inet/IpRange;>;\0	patternV4\0Ljava/util/regex/Pattern;\0	patternV6\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)V\0\rStackMapTable\0�	\n\0�\0\nExceptions\0discard\0�(Lru/bitel/bgbilling/kernel/container/managed/ServerContext;Lru/bitel/bgbilling/kernel/network/radius/RadiusListenerWorker;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V\r\0�\0�(Lru/bitel/bgbilling/kernel/container/managed/ServerContext;Lru/bitel/bgbilling/kernel/network/radius/RadiusListenerWorker<*>;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V\0<clinit>\0\nSourceFile\0ISGProtocolHandlerIpDhcp.java\0t\0u\0x\0y\0h\0i\0j\0i\0*radius.connection.close.unknown.contractId\0k\0i\0&radius.connection.close.unknown.servId\0radius.disable.servId\0l\0i\0java/util/ArrayList\0-radius.connection.close.unknown.excludeRanges\0\0\0\\s*;\\s*\n\Z\0\\s*-\\s*\0f\0g\0java/lang/StringBuilder\0Can\'t parse  !\"#$%\0ru/bitel/common/inet/IpRange&\'\0t()*\0java/net/UnknownHostException+ \",\0/radius.connection.close.unknown.excludeRanges: -.#/012\0m\0n\09ru/bitel/bgbilling/kernel/network/radius/RadiusDictionary345678\0i9\0i:;<=>?=@\0q\0rABCDEF\0s\0r\0Username is not an IP-addressGHIFJKL\'M\'NO\0)Sending event to close unknown connection\04bitel/billing/server/radius/RadiusStandartAttributesPQR\0Oru/bitel/bgbilling/kernel/network/radius/RadiusAttribute$RadiusAttributeInteger\0RadiusAttributeInteger\0InnerClassesSK\0java/lang/Integer\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnectionTUVUWUXYZY\0java/util/Date[\\]Y^Y_U`abYcY\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServde\0java/util/HashSetfghij\0Jru/bitel/bgbilling/modules/inet/access/sa/event/InetSaConnectionCloseEvent\0tklmn#\0Pru/bitel/bgbilling/modules/inet/dyn/device/cisco/ipdhcp/ISGProtocolHandlerIpDhcpop\0\"\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}qr\0�^([\\dA-F]{1,4}:|((?=.*(::))(?!.*\\3.+\\3))\\3?)([\\dA-F]{1,4}(\\3|:\\b)|\\2){5}(([\\dA-F]{1,4}(\\3|:\\b|$)|\\2){2}|(((2[0-4]|1\\d|[1-9])?\\d|25[0-5])\\.?\\b){4})\\z\0Cru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGProtocolHandler\0Hru/bitel/bgbilling/modules/inet/radius/DiscardedAccountingRequestHandler\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/util/List\0[Ljava/lang/String;\0java/lang/String\0java/lang/Exception\0java/net/InetAddress\0[B\0java/util/Iterator\09ru/bitel/bgbilling/kernel/container/managed/ServerContext\0=ru/bitel/bgbilling/kernel/network/radius/RadiusListenerWorker\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0getId\0()I\0getInt\0(Ljava/lang/String;I)I\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0split\0\'(Ljava/lang/String;)[Ljava/lang/String;\0ru/bitel/common/Utils\0\risBlankString\0(Ljava/lang/String;)Z\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0error\0(Ljava/lang/Object;)V\0	getByName\0*(Ljava/lang/String;)Ljava/net/InetAddress;\0\ngetAddress\0()[B\0([B[B)V\0add\0(Ljava/lang/Object;)Z\0\ngetMessage\0*(Ljava/lang/Object;Ljava/lang/Throwable;)V\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0info\0size\0java/util/Collections\0	emptyList\0()Ljava/util/List;\0valueOf\0(I)Ljava/lang/Integer;\0getIntAttribute\0*(IILjava/lang/Integer;)Ljava/lang/Integer;\0intValue\0radiusVendor\0parentAcctSessionIdType\0parentAcctSessionIdPrefix\0Ljava/lang/String;\0;ru/bitel/bgbilling/modules/inet/dyn/device/cisco/CiscoUtils\0getStringAttribute\0q(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0notEmptyString\0((IILjava/lang/String;)Ljava/lang/String;\0java/util/regex/Pattern\0matcher\03(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;\0java/util/regex/Matcher\0matches\0()Z\0iterator\0()Ljava/util/Iterator;\0hasNext\0next\0()Ljava/lang/Object;\0getAddressFrom\0getAddressTo\0inRange\0([B[B[B[B)Z\0getAttribute\0>(II)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute\0getValue\0setAcctSessionId\0(Ljava/lang/String;)V\0setCalledStationId\0setCallingStationId\0setDeviceId\0(I)V\0\rsetDevicePort\0setConnectionStart\0(Ljava/util/Date;)V\0\rsetContractId\0	setServId\0setUsername\0setInetAddressBytes\0([B)V\0setIpResourceId\0setConnectionStatus\0setDeviceState\0(S)V\0setDeviceOptions\0(Ljava/util/Set;)V\0.ru/bitel/bgbilling/kernel/event/EventProcessor\0getInstance\02()Lru/bitel/bgbilling/kernel/event/EventProcessor;\0E(IILru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)V\0publish\0*(Lru/bitel/bgbilling/kernel/event/Event;)V\0warn\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0compile\0-(Ljava/lang/String;)Ljava/util/regex/Pattern;\0!\0_\0d\0\0e\0\0\Z\0f\0g\0\0\0\0h\0i\0\0\0\0j\0i\0\0\0\0k\0i\0\0\0\0l\0i\0\0\0\0m\0n\0\0o\0\0\0\0p\0\Z\0q\0r\0\0\0\Z\0s\0r\0\0\0\0\0t\0u\0\0v\0\0\0\0\0\0\0\0*�\0�\0\0\0\0w\0\0\0\0\0\0\0%\0\0x\0y\0\0v\0\0�\0\0\0\0*+-�\0*�\0*-�\0�\0*�\0�\0*	\n�\0�\0�\0�\0Y�\0\r:�\0�\0:�66		�\0�	2:\n\n�\0�\0�\0m\n�\0:��\0 �\0�\0Y�\0�\0\n�\0�\0\Z�\0�\0@2�\0:2�\0:\r�\0Y�\0\r�\0�\0�\0 \0W�\0:�\0�\0\"�\0#�	��z�\0�\0Y�\0$�\0�\0%�\0\Z�\0&*�\0\'\0�\0�\0�\0(�\0)�\0\0�\0�\0�\0!\0\0w\0\0\0^\0\0\0\0<\0\0>\0\0?\0\0A\0$\0B\07\0D\0@\0F\0f\0H\0n\0J\0q\0M\0z\0N\0�\0P\0�\0Q\0�\0V\0�\0W\0�\0Y\0�\0^\0�\0[\0�\0]\0�\0F\0�\0b\0�\0d\0e\0z\0\0\0[\0�\0X\0\n\0{\0|\0}\0~\0\0�\0�\0\0�\0\0��\0,\0�m\0��\0�\0i\0{�\0\0\0{\0|\0}\0~\0\0�\0\0{\0�\0�\0\0\0\0\0�\0\0�\0�\0\0v\0\0�\0\0\0\0�-(�\0+�\0,�\0-6�\0�-*�\0.*�\0/*�\00�\01:�\02�\0�-�\03:�\04�\05�\06�\0\Z�\07�\05�\06�\0�\08�\0&��\0:�\0:	*�\0)�\09\0:\n\n�\0:\0�\0\'\n�\0;\0�\0:		�\0<�\0=�\0>�\0���ղ\0?�\0&-,�\03:\n-�\0A�\0B:-�\03:-�\03:\r�\0�\0C�\0D�\0-�\06�\0EY�\0F:\n�\0G\r�\0H�\0I*�\0�\0J�\0K�\0LY�\0M�\0N*�\0�\0O*�\0�\0P�\0Q	�\0R�\0S�\0T�\0V�\0WY�\0X�\0Y�\0Z�\0[Y*�\0�\0\\�\0]�\0:�\0�\0\"�\0^�\0\0a\0��\0!\0�}�\0!\0\0w\0\0\0�\0*\0\0\0k\0\0m\0\0o\0\0r\0*\0t\02\0v\03\0y\0<\0z\0X\0|\0`\0}\0a\0�\0h\0�\0o\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�+\0�4\0�=\0�D\0�K\0�Q\0�W\0�]\0�i\0�}\0��\0��\0��\0�\0z\0\0\0t\0\n�\0�\0\0��\0-\0��\0\0�\0�\0�*�\0�\0E\0\0{\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0@�\0�\0\0{\0�\0�\0�\0�\0�\0�\0\0�\0�\0\0\0\0\0�\0o\0\0\0\0�\0\0�\0u\0\0v\0\0\09\0\0\0\0\0\0_�\0`�\0a�\0b�\04c�\0b�\07�\0\0\0\0w\0\0\0\0\0\0\0)\0\03\0\05\0\0�\0\0\0\0�\0�\0\0\0\n\0\0B\0�\0�\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ipdhcp.ISGServiceActivatorIpDhcp',1433856492000,'����\0\0\04\0�\n\0\0f\n\0\0g\0h\0i\n\0j\0k	\0>\0l\0m	\0>\0n\0o	\0>\0p\0q	\0>\0r\0s\0t	\0>\0u\0v	\0>\0w	\0>\0x\0y\n\0\0f\0z\n\0\0{\n\0\0|\n\0\0}\n\0~\0\n\0�\0�\n\0~\0�\0Z\n\0�\0�\n\0�\0�	\0>\0�\0�\n\0\0�\0�\n\0\0�\n\0�\0�\n\0>\0�\n\0\0�\0\\\n\0\0�\n\0\0�\0^\n\0\0�\n\0�\0�\n\0>\0�\n\0�\0�\n\03\0�\0�\0�\0�\0�\0�\0�\0�\n\03\0�	\0>\0�	\0�\0�\n\0�\0�\0�	\08\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0\0�\0�\n\0~\0�\0�\0logger\0Lorg/apache/log4j/Logger;\0access\0/Lru/bitel/bgbilling/modules/inet/access/Access;\0RuntimeVisibleAnnotations\0Ljavax/annotation/Resource;\0name\0dhcpDisableMode\0I\0isg\0Z\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0�\0�\0�\0�\0�\0\nExceptions\0�\0connectionModify\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0connectionClose\0onAccountingStart\0onAccountingStop\0�\0�\0�\0D(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;I)Z\0<clinit>\0\nSourceFile\0ISGServiceActivatorIpDhcp.java\0L\0M\0P\0Q\0sa.radius.connection.close.mode\0Dru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator\0�\0�\0�\0�\0I\0%sa.radius.connection.close.enableMode\0�\0I\0+sa.radius.connection.close.removeFromKeyMap\0�\0K\0*sa.radius.connection.close.disableServices\0�\0K\0dhcp.disable.mode\03ru/bitel/bgbilling/modules/inet/dhcp/InetDhcpDevice\0H\0I\0sa.isg\0J\0K\0A\0B\0java/lang/StringBuilder\0sa.isg=\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0I\0Skip \0�\0�\0 \0�\0�\0�\0�\0�\0[\0Z\0[\0\\\0[\0]\0[\0^\0[\0�\0�\0\\\0b\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0�\0�\0C\0D\0�\0�\0�\0�\0�\0�\0<ru/bitel/bgbilling/modules/inet/access/InetConnectionRuntime\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\\\0�\0Qru/bitel/bgbilling/modules/inet/dyn/device/cisco/ipdhcp/ISGServiceActivatorIpDhcp\0�\0�\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/lang/Exception\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0java/util/List\0java/util/Iterator\0getInt\0(Ljava/lang/String;I)I\0	closeMode\0closeEnableMode\0closeRemoveFromKeyMap\0disableServicesOnClose\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0(Z)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0java/lang/Integer\0valueOf\0(I)Ljava/lang/Integer;\0debug\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0getDeviceId\0()I\0deviceId\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0\ZsetConnectionStateModified\0(Z)V\0connectionModifyCoA\0	getServId\0getNewInetServ\0<()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;\0getChildren\0()Ljava/util/List;\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0()Ljava/lang/Object;\0getId\0-ru/bitel/bgbilling/modules/inet/access/Access\0connectionManager\0>Lru/bitel/bgbilling/modules/inet/access/InetConnectionManager;\0<ru/bitel/bgbilling/modules/inet/access/InetConnectionManager\0getByServId\0%(Ljava/lang/Integer;)Ljava/util/List;\0\nconnection\0@Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0()J\0getInetAddressBytes\0()[B\0ru/bitel/common/inet/IpAddress\0equals\0([B[B)Z\0g(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;ILjava/lang/Object;)Ljava/lang/Object;\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0>\0\0\0@\0\0\Z\0A\0B\0\0\0\0C\0D\0\0E\0\0\0\0\0F\0\0Gs\0C\0\0H\0I\0\0\0\0J\0K\0\0\0\0\0L\0M\0\0N\0\0\0!\0\0\0\0\0*�\0�\0\0\0\0O\0\0\0\n\0\0\0\0.\0\0/\0\0P\0Q\0\0N\0\0P\0\0\0\0\0�*+-�\0W*�\0�\0**�\0�\0�\0*	�\0�\0�\0�\0\n*�\0�\0�\0�\0*\r�\0�\0*�\0�\0�\0�\0�\0�\0Y�\0�\0*�\0�\0�\0�\0*�\0�\0*�\0�\0*�\0�\0\Z�\0�\0\0\0\0O\0\0\02\0\0\0\08\0\0;\0\0=\0\'\0@\0;\0C\0O\0E\0[\0G\0o\0I\0�\0K\0�\0M\0�\0P\0�\0R\0R\0\0\0`\0w\0S�\0\0\0\0S\0T\0U\0V\0W\0\0SR\0S�\0\0\0\0S\0T\0U\0V\0W\0\0S^\0S�\0\0\0\0S\0T\0U\0V\0W\0\0S*\0X\0\0\0\0\0Y\0\0Z\0[\0\0N\0\0\0�\0\0\0\0\0`�\0�\0+�\0�\0*�\0�\0:�\0�\0Y�\0 �\0+�\0�\0!\"�\0*�\0�\0#�\0�\0*�\0�\0+�\0$�*�\0�\0	*+�\0%�*+�\0&�\0\0\0\0O\0\0\0&\0	\0\0\0\\\0\0^\0\0`\0>\0b\0F\0d\0K\0g\0M\0j\0T\0l\0Z\0o\0R\0\0\0\0�\0K\0X\0\0\0\0\0Y\0\0\\\0[\0\0N\0\0\0y\0\0\0\0\0F�\0\'�\0+�\0�\0*�\0�\0-�\0�\0Y�\0 �\0+�\0�\0!\"�\0*�\0�\0#�\0�\0�*+�\0(�\0\0\0\0O\0\0\0\0\0\0\0y\0\0{\0\0}\0>\0~\0@\0�\0R\0\0\0\0�\0@\0X\0\0\0\0\0Y\0\0]\0[\0\0N\0\0\0\0\0\0\0\0*+�\0)�\0\0\0\0O\0\0\0\0\0\0\0�\0X\0\0\0\0\0Y\0\0^\0[\0\0N\0\0\0�\0\0\0\0\0s�\0*�\0+�\0M,�\0*�\0�\0	*+�\0+�*,,�\0,�\0-�\0	*+�\0+�+�\0.�\0/N-�\04-�\00\0:�\01\0�\0\"�\02\0�\03:*,�\04�\0-�\0�\0���*+�\0+�\0\0\0\0O\0\0\06\0\r\0\0\0�\0\0�\0\r\0�\0\0�\0\0�\0*\0�\00\0�\08\0�\0<\0�\0Z\0�\0g\0�\0j\0�\0m\0�\0R\0\0\0\0�\0\0_�\0\0`\0a%�\0\0X\0\0\0\0\0Y\0\0\\\0b\0\0N\0\0\0�\0\0\0\0\0u*�\05�\06�\0\Z�\07N-�\0�-�\00\0:�\01\0�\0O�\02\0�\08:�\09:�\0:+�\0:��\0,�\0*�\0�\0 �\0;+�\0;�\0<�\0**�\0�\0=W�����\0\0\0\0O\0\0\0.\0\0\0\0�\0\0�\0\0�\0\0�\03\0�\0:\0�\0U\0�\0b\0�\0n\0�\0p\0�\0s\0�\0R\0\0\0\0�\0\0`�\0\0a�\0R�\0\0X\0\0\0\0\0Y\0\0c\0M\0\0N\0\0\0!\0\0\0\0\0\0	>�\0?�\0�\0\0\0\0O\0\0\0\0\0\0\0 \0\0d\0\0\0\0e'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGLoginGenerator',1433856492000,'����\0\0\04\0�\n\0!\00\n\0\01\n\02\03\n\0\04\n\05\06\n\05\07\n\08\09\n\0:\0;\n\02\0<\0=\n\0\n\00\0>\n\0\n\0?\n\0\n\0@\0A\n\0\n\0B\0C\n\0D\0E\n\0F\0G\0H\n\08\0I\n\0J\0K\n\0F\0L\0M\n\02\0N\0O\n\02\0P\0Q\n\0 \0R\0S\n\0 \0T\0U\0V\0W\0<init>\0()V\0Code\0LineNumberTable\0onEvent\0�(Lru/bitel/bgbilling/modules/inet/api/server/event/InetServChangingEvent;Lru/bitel/bgbilling/server/util/Setup;Lru/bitel/common/sql/ConnectionSet;)V\0\nExceptions\0X\0s(Lru/bitel/bgbilling/kernel/event/Event;Lru/bitel/bgbilling/server/util/Setup;Lru/bitel/common/sql/ConnectionSet;)V\0	Signature\nLru/bitel/bgbilling/kernel/script/server/dev/EventScriptBase<Lru/bitel/bgbilling/modules/inet/api/server/event/InetServChangingEvent;>;Lru/bitel/bgbilling/kernel/script/server/dev/EventScript<Lru/bitel/bgbilling/modules/inet/api/server/event/InetServChangingEvent;>;\0\nSourceFile\0ISGLoginGenerator.java\0#\0$\0Y\0Z\0[\0\\\0]\0^\0]\0_\0`\0a\0b\0e\0f\0g\0h\0i\0j\0k\0l\0]\0java/lang/StringBuilder\0%1$0\0m\0n\0m\0o\0x\0p\0q\0java/lang/Object\0r\0s\0t\0u\0v\0w\00006\0x\0y\0z\0{\0q\0|\0q\0:\0}\0~\0123\0\0~\0Setting userName:\0�\0�\0Fru/bitel/bgbilling/modules/inet/api/server/event/InetServChangingEvent\0\'\0(\0Bru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGLoginGenerator\0;ru/bitel/bgbilling/kernel/script/server/dev/EventScriptBase\07ru/bitel/bgbilling/kernel/script/server/dev/EventScript\0java/lang/Exception\0getInetServ\0<()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0getDeviceId\0()I\0getModuleId\0=ru/bitel/bgbilling/modules/inet/api/server/bean/InetDeviceMap\0getInstance\0B(I)Lru/bitel/bgbilling/modules/inet/api/server/bean/InetDeviceMap;\0get\0InetDeviceMapItem\0InnerClasses\0T(I)Lru/bitel/bgbilling/modules/inet/api/server/bean/InetDeviceMap$InetDeviceMapItem;\0Oru/bitel/bgbilling/modules/inet/api/server/bean/InetDeviceMap$InetDeviceMapItem\0	getConfig\0 ()Lru/bitel/common/ParameterMap;\09ru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGUtils\0\rgetPortLength\0!(Lru/bitel/common/ParameterMap;)I\0getInterfaceId\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0java/lang/Integer\0valueOf\0(I)Ljava/lang/Integer;\0java/lang/String\0format\09(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;\0	getDevice\0>()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0\rgetIdentifier\0toLowerCase\0setLogin\0(Ljava/lang/String;)V\0setPassword\0print\0(Ljava/lang/Object;)V\0!\0 \0!\0\0\"\0\0\0\0\0#\0$\0\0%\0\0\0\0\0\0\0\0*�\0�\0\0\0\0&\0\0\0\0\0\0\0\0\0\'\0(\0\0%\0\0\0�\0\0\0\0\0�+�\0:�\06+�\0�\0�\0:�\0�\06�\0	6�\0\nY�\0�\0\rh�\0�\0\r�\0�\0Yhxp�\0S�\0:	�\0\nY�\0�\0\r�\0�\0�\0�\0\r�\0\r	�\0\r�\0:\n\n�\0\Z�\0*�\0\nY�\0�\0\r\n�\0\r�\0�\0�\0\0\0\0&\0\0\0.\0\0\0\0\0\0\0\r\0\0\0\Z\0%\0\0,\0\0`\0\0�\0 \0�\0!\0�\0#\0�\0$\0)\0\0\0\0\0*A\0\'\0+\0\0%\0\0\0#\0\0\0\0\0*+�\0,-�\0�\0\0\0\0&\0\0\0\0\0\0\0\0)\0\0\0\0\0*\0\0,\0\0\0\0-\0.\0\0\0\0/\0d\0\0\0\n\0\08\05\0c\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGPPPoEServiceActivator',1433856492000,'����\0\0\04\0;\n\0\0\n\0\0 \0!\0\"\n\0#\0$	\0\r\0%\0&	\0\r\0\'\0(	\0\r\0)\0*	\0\r\0+\0,\0-\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0,\0.\0/\00\01\0\nExceptions\02\0\nSourceFile\0ISGPPPoEServiceActivator.java\0\0\0\0\0sa.radius.connection.close.mode\0Dru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator\01\03\04\05\06\0%sa.radius.connection.close.enableMode\07\06\0+sa.radius.connection.close.removeFromKeyMap\08\09\0*sa.radius.connection.close.disableServices\0:\09\0Iru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGPPPoEServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/lang/Exception\0getInt\0(Ljava/lang/String;I)I\0	closeMode\0I\0closeEnableMode\0closeRemoveFromKeyMap\0Z\0disableServicesOnClose\0!\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0Q*+-�\0W*�\0�\0**�\0�\0�\0*	�\0�\0�\0�\0\n*�\0�\0�\0�\0�\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\'\0!\0;\0$\0O\0&\0\0\0\0@\0w\0�\0\0\0\0\0\0\0\0\Z\0\0R\0�\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGProtocolHandler',1433856492000,'����\0\0\04�\n\0m\0�\n\0m\0�\0�\n\0�\0�	\0k\0�\0�\0�\n\0�\0�	\0k\0�\0�	\0k\0�\0�\0�	\0k\0�\0�\n\0�\0�\0�\0�\0�\n\0\0�\n\0�\0�	\0k\0�\0�\0�\0�\0�\0�\n\06\0�\n\0�\0�	\0k\0�\n\0G\0�	\0k\0�	\0k\0�\0�\n\0 \0�\0�\n\0 \0�\n\0 \0�\n\0 \0�\n\0�\0�\0�\0�	\0k\0�\0�\0�	\0k\0�\0�	\0k\0�\0�\0�	\0k\0�\0�	\0k\0�\0�	\0k\0�\0�\n\06\0�\n\0�\0�\0�\n\0�\0�\0�\n\0 \0�\n\0�\0�	\0k\0�\n\0k\0�	\0�\0�\n\0k\0�	\0�\0�\n\0�\0�\n\06\0�\n\0�\0�\n\06\0�\0�\0�\n\06\0�\n\0m\0�\n\0k\0�\n\0m\0�\n\0�\0\n\n\0O\n\0�\n	\n\n\0�\n	\n\0k\r\n\0k\n\0k\n\n\0k	\0�\n\06	\0�	\0�\0�\Z\n\0�\n\n !	\"#\n$%\n &\'\n\0�()*+\0logger\0Lorg/apache/log4j/Logger;\0parentAcctSessionIdType\0I\0parentAcctSessionIdPrefix\0Ljava/lang/String;\0serviceNameType\0serviceNamePrefix\0disableServiceNames\0Ljava/util/Set;\0	Signature\0#Ljava/util/Set<Ljava/lang/String;>;\0\nportLength\0servSearchModes\0[[I\0agentOptionRemoteIdType\0agentOptionRemoteIdPrefix\0agentOptionCircuitIdType\0\ZagentOptionCircuitIdPrefix\0agentOptionRemoveHeader\0ipSubnetSubscription\0Z\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)V\0\rStackMapTable,\'-\0�./\0\nExceptions0\0setAgentOption1\0RadiusPacketOption\0InnerClasses\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Ljava/lang/Object;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;)V\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Ljava/lang/Object;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption<Ljava/lang/Object;>;)V\0setAgentOptions\0:(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V2\0setUsername\0�\0preprocessAccessRequest\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0postprocessAccessRequest\0preprocessAccountingRequest\0preprocessAccountingRequestImpl\0�(ILru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0preprocessDhcpRequest\0i(Lru/bitel/bgbilling/kernel/network/dhcp/DhcpPacket;Lru/bitel/bgbilling/kernel/network/dhcp/DhcpPacket;)V\0<clinit>\0\nSourceFile\0ISGProtocolHandler.java\0�3\0�\0�\0radius.parentAcctSessionId.type/45\0r\0s\0!radius.parentAcctSessionId.prefix\0parent-session-id=67\0t\0u\0radius.serviceName.type\0v\0s\0radius.serviceName.prefix\0\0\0w\0u\0\Zradius.serviceName.disable89:,;<\0java/util/LinkedHashMap\0�\0�=>?\0x\0y@AB\0radius.servSearchMode\0radius.serviceSearchMode\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceCDEFG\0}\0~HI\0|\0s\0p\0q\0java/lang/StringBuilder\0ISG port length: JKJLMNOPQ\0!radius.agent.option.remoteId.type\0radius.agentRemoteId.type\0\0s\0#radius.agent.option.remoteId.prefix\0remote-id-tag=\0�\0u\0\"radius.agent.option.circuitId.type\0�\0s\0$radius.agent.option.circuitId.prefix\0circuit-id-tag=\0�\0u\0 radius.agent.option.removeHeader\0�\0s\0radius.ipSubnetSubscription\0�\0�\0java/lang/StringRDSTU\0[BVWX\0Unknown value type for option JYZQ[\0s\\]^_`\0�\0�a`bcdefgRh\09ru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGUtils\09ru/bitel/bgbilling/kernel/network/radius/RadiusDictionaryi<\0�\0�\0�\0�\0�\0�jk\0$Set Framed-IP-Address from User-Namel\0Nru/bitel/bgbilling/kernel/network/radius/RadiusAttribute$RadiusAttributeIpAddr\0RadiusAttributeIpAddrmno\0�pqrsCtuvw<\0�\0�x\0�\0�\0�ybz{\0�|`\0N}~\02Parent acctSessionId found, but ServiceName is not`�`��\0-State is disable (from start disable service)�Q\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ�C�\0+State is enable (from stop disable service)�����\0������\0Cru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGProtocolHandler��\0Oru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusProtocolHandler\0>ru/bitel/bgbilling/kernel/network/radius/RadiusProtocolHandler\0:ru/bitel/bgbilling/kernel/network/dhcp/DhcpProtocolHandler\0java/util/List\0$ru/bitel/bgbilling/server/util/Setup\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/lang/Exception\0Hru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption\0java/lang/Object\0(I)V\0getInt\0(Ljava/lang/String;I)I\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0ru/bitel/common/Utils\0toList\0$(Ljava/lang/String;)Ljava/util/List;\0size\0()I\0java/util/Collections\0\rnewSetFromMap\0 (Ljava/util/Map;)Ljava/util/Set;\0\rjava/util/Set\0addAll\0(Ljava/util/Collection;)Z\0valueOf\0(I)Ljava/lang/String;\04ru/bitel/bgbilling/modules/inet/api/server/InetUtils\0parseSearchModes\0(Ljava/lang/String;)[[I\0\rgetPortLength\0!(Lru/bitel/common/ParameterMap;)I\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0	substring\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0	setOption\0_(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;Ljava/lang/Object;)V\0java/util/Arrays\0copyOfRange\0([BII)[B\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0error\0radiusVendor\0getAttributeValue\0_(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;IILjava/lang/String;)Ljava/lang/Object;\0:ru/bitel/bgbilling/modules/inet/radius/InetRadiusProcessor\0AGENT_REMOTE_ID\0JLru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;\0AGENT_CIRCUIT_ID\0getStringAttribute\0((IILjava/lang/String;)Ljava/lang/String;\0lastIndexOf\0(I)I\0setStringAttribute\0(IILjava/lang/String;)V\0(II)Ljava/lang/String;\0length\0getAttribute\0>(II)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute\0bitel/billing/common/IPUtils\0convertStringIPtoInt\0(Ljava/lang/String;)I\0(III)V\0setAttribute\0=(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;)V\0java/lang/Integer\0(I)Ljava/lang/Integer;\0getIntAttribute\0*(IILjava/lang/Integer;)Ljava/lang/Integer;\0intValue\0\rsetMacAddress\0;ru/bitel/bgbilling/modules/inet/dyn/device/cisco/CiscoUtils\0q(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0setStateFromAttributes\0DEVICE_STATE\0\nstartsWith\0(Ljava/lang/String;)Z\0PARENT_ACCT_SESSION_ID\0SERVICE_NAME\0contains\0(Ljava/lang/Object;)Z\0debug\0java/lang/Short\0(S)Ljava/lang/Short;\01ru/bitel/bgbilling/kernel/network/dhcp/DhcpPacket\0getSubOption\06(B)Lru/bitel/bgbilling/kernel/network/dhcp/DhcpOption;\01ru/bitel/bgbilling/kernel/network/dhcp/DhcpOption\0value\0java/lang/System\0	arraycopy\0*(Ljava/lang/Object;ILjava/lang/Object;II)V\0setSubOption\0(B[B)V\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0k\0m\0\0n\0o\0\0\Z\0p\0q\0\0\0\0r\0s\0\0\0\0t\0u\0\0\0\0v\0s\0\0\0\0w\0u\0\0\0\0x\0y\0\0z\0\0\0\0{\0\0|\0s\0\0\0\0}\0~\0\0\0\0\0s\0\0\0\0�\0u\0\0\0\0�\0s\0\0\0\0�\0u\0\0\0\0�\0s\0\0\0\0�\0�\0\0\0\0\0�\0�\0\0�\0\0\0#\0\0\0\0\0*	�\0�\0\0\0\0�\0\0\0\n\0\0\0\0e\0\0f\0\0�\0�\0\0�\0\0�\0\0\0\0*+-�\0*�\0�\0*�\0�\0	*\n\0��\0�\0*\r�\0�\0\r�\0�\0:�\0\0�\0 *�\0Y�\0�\0�\0*�\0�\0\0W�\0*�\0*�\0\Z�\0�\0�\0�\0*�\0�\0�\0�\0 Y�\0!\"�\0#*�\0�\0$�\0%�\0&*\'(�\0�\0�\0)**+�\0�\0,*-�\0�\0.*/0�\0�\01*2�\0�\03*4�\0�\0�\0�\05�\0\0\0\0�\0\0\0Z\0\0\0\0l\0\0n\0\0o\0$\0p\02\0q\0?\0s\0M\0t\0W\0v\0e\0w\0t\0{\0y\0~\0�\0\0�\0~\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0\0-\0�\0t\0��\0�\0��\0\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0f,�\06�\0 ,�\06:*�\03h�\07:+-�\08�\0D,�\09�\0$,�\09�\09:*�\03��\0::+-�\08�\0�\0�\0 Y�\0!;�\0#-�\0<�\0%�\0=�\0\0\0\0�\0\0\02\0\0\0\0�\0\0�\0\r\0�\0\Z\0�\0!\0�\0$\0�\0+\0�\04\0�\0B\0�\0I\0�\0L\0�\0e\0�\0�\0\0\0\0$\'\0z\0\0\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0?*+*�\0>*�\0)*�\0,�\0?M,�\0*+,�\0@�\0A*+*�\0>*�\0.*�\01�\0?N-�\0*+-�\0B�\0A�\0\0\0\0�\0\0\0\0\0\0\0�\0\0�\0\0�\0\0�\01\0�\05\0�\0>\0�\0�\0\0\0\0�\0\0��\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0t+�\0CM,�\0j,:�\0D>�\0+,`�\07�\0E+,�\0FYM�\0E*�\0�\0;,:�\0D>�\00+�\0 Y�\0!,`�\0F�\0#,,�\0I*�\0hd�\07�\0#�\0%�\0E�\0\0\0\0�\0\0\0.\0\0\0\0�\0\0�\0\0�\0\0�\0\0�\0%\0�\03\0�\0;\0�\0B\0�\0F\0�\0s\0�\0�\0\0\0\0�\03\0��\0?\0\0�\0�\0\0�\0\0\0-\0\0\0\0\0\r*+,-�\0J*+�\0K�\0\0\0\0�\0\0\0\0\0\0\0�\0\0�\0\0�\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0r\0\0\0\0\0=*+,-�\0L*�\05�\01,	�\0M�\0\'�\0N�\0&+�\0C:,�\0OY�\0P�\0Q�\0R�\0\0\0\0�\0\0\0\Z\0\0\0\0�\0\0�\0\0�\0 \0�\0)\0�\0<\0�\0�\0\0\0\0<\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0:\0\0\0\0\0\Z+(�\0S�\0T�\0U6*+,-�\0V�\0\0\0\0�\0\0\0\0\0\0\0�\0\0�\0\0�\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0F\0\0\0\0\0�*,�\0W*,�\0K*,�\0X,*�\0>*�\0*�\0	�\0Y:�\0*,�\0Z�\0�,�\0[�\08,*�\0>*�\0*�\0�\0Y:�\0\r\\�\0]�\0�\0^�\0=�\0�\07:,�\0_�\08,�\0`�\08*�\0�\0D*�\0�\0a\0�\06�\0�\0�\0b�\0c,�\0[�\0e�\08�\0�\0f�\0c,�\0[�\0e�\08�\0\0\0\0�\0\0\0R\0\0\0\0\0\0\n\0\0\"\n\0\'\r\0/\07\0J\0Y\0d\0l!\0u#\0~\'\0�*\0�,\0�-\0�1\0�2\0�6\0�\0\0\0\0�\0/\0��\0)\0�\n0�\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0F*�\02.�\0=+�\0gN-�\03-�\0h:��\0%*�\0�:*�\0d*�\0�\0i+�\0j�\0\0\0\0�\0\0\0&\0	\0\0=\0?\0@\0B\0D\0#F\0+I\0>J\0EN\0�\0\0\0\0�\0E\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0!\0\0\0\0\0\0	k�\0l�\0�\0\0\0\0�\0\0\0\0\0\0\0#\0\0�\0\0\0\0�\0�\0\0\0\0\0�\0�\0�\0	\0O\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGServiceActivator',1433856492000,'����\0\0\04�\0�\n\0�\0�\0�\n\0\0�	\0\n\0�\n\0�\0�\0�\0�\0�\0�\n\0�\0�	\0\n\0�	\0\n\0�\n\0�\0�\0�\0\0�\0�\0\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0�\n\0\0�\0�\0�\0\0�\0�\n\0\0�\0�\0�\0�\n\0\0�\n\0q\0�\0�\n\0q\0�\n\0q\0�\n\0\0�\0\0�	\0\n\0�\0�\n\0(\0�\0�\n\0(\0�\n\0(\0�\0�\n\0(\0�\n\0�\0\n\0�\n\n\05\0�\n		\0\n\n\0�\n\0(\r	\0\n	\0\n	\0\n	\0\n	\0\n	\0\n\Z\n\n\n !\n\"\n#	\0\n$\n\0\n%	\0\n&\n\'\n\0\n(\n\0\n)*\n\0�+\n,-/\n\0Z1\n,2\n\0\n3\n4\n567	\0\n8\n9:\n\0\n;<\n9=>\n9?@B\n\0iC\nDEFG\0�\n\05HG\0�IJ\0�KLMNOPQRSTUV\n\0~W\n\0�XYZ\0InnerClasses\0logger\0Lorg/apache/log4j/Logger;\0inetOptionIsgService\0Ljava/util/Map;\0	Signature\06Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;\0disableServiceNames\0Ljava/util/Set;\0#Ljava/util/Set<Ljava/lang/String;>;\0COA_MODE_SSG_COMMAND_PACKET\0I\0\rConstantValue\0\0\0\0\0COA_MODE_SSG_COMMAND\0\0\0\0COA_MODE_SUBSCR_COMMAND\0\0\0\0COA_MODE_SSG_COMMAND_ONE_PACKET\0\0\0\0coaMode\0CLOSE_MODE_POD_DEPRECATED\0\nDeprecated\0RuntimeVisibleAnnotations\0Ljava/lang/Deprecated;\0CLOSE_MODE_NONE\0CLOSE_MODE_POD\0CLOSE_MODE_SUBSCR_COMMAND\0	closeMode\0closeEnableMode\0coaOnEnable\0Z\0disableServicesOnClose\0closeRemoveFromKeyMap\0forceModifyOnServiceNak\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0�[\0�\\\0�I\0�]^_`\0\nExceptionsa\0connectionModify\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;b\0connectionClosecd\0g(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;ILjava/lang/Object;)Ljava/lang/Object;\0optionsToServiceNames\0D(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;e\0�\0�(Ljava/util/Collection<Ljava/lang/Integer;>;Ljava/util/Collection<Ljava/lang/String;>;)Ljava/util/Collection<Ljava/lang/String;>;\0sendCommands\0�(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;fg\0�(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;)Ljava/lang/Object;\0<clinit>\0\nSourceFile\0ISGServiceActivator.java\0Acct-Session-Id\0�h\0java/util/HashMap\0�\0�\0�\0�\0�\0�\0sa.radius.connection.coa.mode\0radius.coa.mode\0coa.mode\0Dru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator`ij\0�\0�klmno\0defaultpq\0\rjava/util/Maprsetu[vwxy\0java/util/Map$Entry\0Entryzy\0;ru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet{|\\}~y\0java/lang/Integer�~\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute��\0A��������\0�\0�\0java/lang/StringBuilder\0\rInet option: ����\0 => ISG service: �����\0sa.radius.service.disable\0\Zradius.serviceName.disable\0\0p����\0java/util/LinkedHashMap���\0�\0���\0Disable services: ��\0!sa.radius.connection.coa.onEnable\0�\0�\0sa.radius.connection.close.mode\0�\0�\0%sa.radius.connection.close.enableMode\0�\0�\0+sa.radius.connection.close.removeFromKeyMap\0�\0�\0*sa.radius.connection.close.disableServices\0�\0�\0-sa.radius.connection.modify.forceOnServiceNak\0�\0�\0Connection modify: oldState: c�~\0; newState: �~\0; oldOptionSet: �s\0; newOptionSet: �s���\0�\0�\0��\0���\0�\0�\0�\0�\0Remove connection from key map.������\0Rru/bitel/bgbilling/modules/inet/access/InetConnectionManager$ConnectionRemoveEvent\0ConnectionRemoveEvent\0����\0�\0��s�s\0Connection close\0Connection close mode �������\0Send PoD: \n��\0Connection close (logoff)��\0Nru/bitel/bgbilling/kernel/network/radius/RadiusAttribute$RadiusAttributeString\0RadiusAttributeString\0!subscriber:command=account-logoff\0��g��\0Send logoff CoA:\n�\0��\0java/lang/String\0\'Not found ISG service for Inet option: ��\0\\0xc\0\\0xb\0\'Send deactivate/activate services CoA:\n\0Send deactivate services CoA:\n\0Send activate services CoA:\n\0Send deactivate service CoA:\n\0Send activate service CoA:\n\0subscriber:service-name=\0%subscriber:command=deactivate-service\0#subscriber:command=activate-service\0Fru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator$1\0����\0Pru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0java/util/Iterator\0java/util/List\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/lang/Exception\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0java/lang/Object\0\rjava/util/Set\0java/util/concurrent/Future\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0)(Ljava/lang/String;ZLjava/lang/String;Z)V\0getInt\0(Ljava/lang/String;I)I\0optionRadiusAttributesMap\0ELru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap;\0Cru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap\0getRealmMap\0()Ljava/util/Map;\0get\0&(Ljava/lang/Object;)Ljava/lang/Object;\0entrySet\0()Ljava/util/Set;\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0()Ljava/lang/Object;\0getValue\0\rgetAttributes\0(II)Ljava/util/List;\0size\0()I\0getKey\0intValue\0valueOf\0&(Ljava/lang/Object;)Ljava/lang/String;\0\nstartsWith\0(Ljava/lang/String;)Z\0	substring\0(I)Ljava/lang/String;\0(I)Ljava/lang/Integer;\0put\08(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0ru/bitel/common/Utils\0toList\0$(Ljava/lang/String;)Ljava/util/List;\0java/util/Collections\0\rnewSetFromMap\0 (Ljava/util/Map;)Ljava/util/Set;\0addAll\0(Ljava/util/Collection;)Z\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0getOldState\0getNewState\0\rgetOldOptions\0\rgetNewOptions\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0withoutBreak\0needConnectionStateModify\0\ZsetConnectionStateModified\0(Z)V\0debug\0.ru/bitel/bgbilling/kernel/event/EventProcessor\0getInstance\02()Lru/bitel/bgbilling/kernel/event/EventProcessor;\0<ru/bitel/bgbilling/modules/inet/access/InetConnectionManager\0C(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)V\0request\0Z(Lru/bitel/bgbilling/kernel/event/QueueEvent;)Lru/bitel/bgbilling/kernel/event/QueueEvent;\0getOptionsToRemove\0getOptionsToAdd\0radiusClient\07Lru/bitel/bgbilling/kernel/network/radius/RadiusClient;\05ru/bitel/bgbilling/kernel/network/radius/RadiusClient\0createDisconnectRequest\09()Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;\0prepareRequest\0z(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)V\0	sendAsync\0V(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)Ljava/util/concurrent/Future;\0createModifyRequest\0(IILjava/lang/String;)V\0addAttribute\0=(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;)V\0java/util/Collection\0(I)V\0add\0(Ljava/lang/Object;)Z\0f(Lru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator;Ljava/util/concurrent/Future;)V\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0\n\0�\0\0�\0\0\Z\0�\0�\0\0\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0\0\0�\0�\0\0�\0\0\0\0�\0�\0\0\0\0\0�\0\0\0\0\0�\0\0\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0\0�\0�\0\0�\0\0\05\0\0\0\0\0*�\0*�\0Y�\0�\0�\0\0\0\0�\0\0\0\0\0\0\0�\0	\0*\0\0�\0\0�\0�\0\0�\0\0A\0\0\0\0�*+-�\0W*	�\0�\0�\0�\0*�\0\r�\0�\0\0�\0:�\0\0�\0\0:�\0\0�\0��\0\0�\0:�\0\0�\0	\0��\0:		���	�\0\Z\0�\0����\0\0�\0�\06\n	�\0\0:�\0\0�\0f�\0\0�\0:�\0 �\0!:\r\r\"�\0#�\0���\r�\0$:*�\0\n�\0%�\0&\0W�\0\'�\0(Y�\0)*�\0+\n�\0,-�\0+�\0+�\0.�\0/�����?012�\03�\03�\04:�\0\Z\0�\0 *�\05Y�\06�\07�\08*�\08�\09\0W�\0*�\08�\0\'�\0(Y�\0):�\0+�\0;�\0.�\0/*<�\0�\0�\0�\0=*>�\0�\0?*@�\0�\0A*B�\0�\0�\0�\0C*D�\0�\0�\0�\0E*F�\0�\0�\0�\0G�\0\0\0\0�\0\0\0z\0\0\0\0�\0\0�\0&\0�\09\0�\0]\0�\0q\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0� \0�*\0�8\0�G\0�L\0�f\0�z\0��\0��\0��\0��\0��\0�\0�\0\0\0�\0�\0G\0�\0��\0;\0�\0��\0\0��\0,\0�\0��\0?\0\0�\0�\0�\0�\0�\0�\0�\0\0�\0�\0;\0�i\0��\0\0\0\0�\0�\0�\0�\0�\0�\0�\0\0�j\0��\0\0\0\0�\0�\0�\0�\0�\0�\0�\0\0�R\0��\0\0\0\0�\0�\0�\0�\0�\0�\0�\0\0�R\0��\0\0\0\0�\0�\0�\0�\0�\0�\0�\0\0�\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0u\0\0\0\0\0��\0\'�\0(Y�\0)H�\0++�\0I�\0,J�\0++�\0K�\0,L�\0++�\0M�\0;N�\0++�\0O�\0;�\0.�\0/+�\0PM+�\0K�\0/*�\0Q�\0	*+�\0R�*�\0S�\0+�\0T*,*+�\0M�\0U*�\08�\0V�+�\0I�\0[*�\0Q�\05*�\0C�\0\Z�\0\'W�\0X�\0Y�\0ZY,�\0[�\0\\W*,*�\0A�\0]N*�\0=�\0-�*�\0S�\0+�\0T*,*�\08*+�\0O�\0U�\0V�+�\0^N+�\0_:*,*-�\0U*�\0U�\0V�\0\0\0\0�\0\0\0Z\0\0\0\0�\0@\0�\0E\0�\0L\0�\0S\0�\0Y\0�\0`\0�\0e\0�\0x\0�\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\r\0�\0�\0�\0�\0�\Z\0�\0\0\0\0�\0Y\0�+\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0U�\0\'`�\0/+�\0PN*�\0C�\0\Z�\0\'W�\0X�\0Y�\0ZY-�\0[�\0\\W*�\0E�\0*-*+�\0M�\0U*�\08�\0VM�\0M*-*�\0?,�\0]�\0\0\0\0�\0\0\0&\0	\0\0$\0(\0\r*\0-\0.\0+1\023\0H7\0J:\0�\0\0\0\0�\0+\0\0��\0\0\0�\0�\0�\0�\0\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0&\0\0\0\0\0Ĳ\0\'�\0(Y�\0)a�\0+�\0,�\0.�\0/�\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0\0\0\0!\0\0\0X�\0�*�\0b�\0c:*+�\0d�\0\'�\0(Y�\0)e�\0+�\0;�\0.�\0/*�\0b�\0fN�\0S�\0\'g�\0/*�\0b�\0h:*+�\0d�\0iY	j�\0k�\0l�\0\'�\0(Y�\0)m�\0+�\0;�\0.�\0/*�\0b�\0fN�\0-�\0\0\0\0�\0\0\0B\0\0\0K\0M\08R\0;Y\0DZ\0K\\\0e]\0o_\0rd\0zf\0�g\0�i\0�k\0�l\0�n\0�r\0�\0\0\0\086�\0O\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0�+�\0+�\0n\0�\0,��\05Y+�\0n\0`�\0o�\07N,�\0-,�\09\0W+�\0p\0:�\0\0�\0M�\0\0�\0:*�\0�\0\0�\0q:�\0 �\0\'�\0(Y�\0)r�\0+�\0;�\0.�\0/���-�\0s\0W���-�\0\0\0\0�\0\0\06\0\r\0\0}\0\r\0�\0\"�\0&�\0.�\0L�\0\\�\0a�\0{�\0~�\0��\0��\0�\0\0\0\0\r�\0\0��\0\0��\0G\0�\0��\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0_\0\0	\0\0�:*�\0�\0\0S\0\0\0\0\0\0\0\0\0\0\08\0\0S\0\0\0,�\0,�\0n\0�\0-�V-�\0n\0�M*�\0b�\0h:*+�\0d,�\0V,�\0n\0�\0M,�\0p\0:�\0\0�\0;�\0\0�\0q:�\0(Y�\0)t�\0+�\0+�\0.:�\0iY	\0��\0k�\0l���-�\0V-�\0n\0�\0M-�\0p\0:�\0\0�\0;�\0\0�\0q:�\0(Y�\0)u�\0+�\0+�\0.:�\0iY	\0��\0k�\0l���*�\0b�\0f:�\0\'�\0(Y�\0)v�\0+�\0;�\0.�\0/�g,�\0�,�\0n\0�\0�*�\0b�\0h:*+�\0d,�\0p\0:�\0\0�\0;�\0\0�\0q:�\0(Y�\0)t�\0+�\0+�\0.:�\0iY	\0��\0k�\0l���*�\0b�\0f:�\0\'�\0(Y�\0)w�\0+�\0;�\0.�\0/-��-�\0n\0��*�\0b�\0h:*+�\0d-�\0p\0:�\0\0�\0;�\0\0�\0q:�\0(Y�\0)u�\0+�\0+�\0.:�\0iY	\0��\0k�\0l���*�\0b�\0f:�\0\'�\0(Y�\0)x�\0+�\0;�\0.�\0/�L,�\0�,�\0n\0�\0�,�\0p\0:�\0\0�\0p�\0\0�\0q:*�\0b�\0h:*+�\0d�\0(Y�\0)t�\0+�\0+�\0.:�\0iY	\0��\0k�\0l�\0\'�\0(Y�\0)y�\0+�\0;�\0.�\0/*�\0b�\0f:���-��-�\0n\0��-�\0p\0:�\0\0�\0p�\0\0�\0q:*�\0b�\0h:*+�\0d�\0(Y�\0)u�\0+�\0+�\0.:�\0iY	\0��\0k�\0l�\0\'�\0(Y�\0)z�\0+�\0;�\0.�\0/*�\0b�\0f:����1,�\0�,�\0n\0�\0�,�\0p\0:�\0\0�\0{�\0\0�\0q:*�\0b�\0h:*+�\0d�\0iY	�\0(Y�\0){�\0+�\0+�\0.�\0k�\0l�\0iY	|�\0k�\0l�\0\'�\0(Y�\0)y�\0+�\0;�\0.�\0/*�\0b�\0f:���-�\0�-�\0n\0�\0�-�\0p\0:�\0\0�\0{�\0\0�\0q:*�\0b�\0h:*+�\0d�\0iY	�\0(Y�\0){�\0+�\0+�\0.�\0k�\0l�\0iY	}�\0k�\0l�\0\'�\0(Y�\0)z�\0+�\0;�\0.�\0/*�\0b�\0f:���*�\0G�\0�\0:�\0~Y*�\0:�\0\0\0\0�\0\0:\0N\0\0�\0�\0$�\06�\0>�\0G�\0N�\0[�\0y�\0��\0��\0��\0��\0��\0��\0��\0���!�$�1�:�A�_�u��������������������\"�<�?�L�j�s�z����������\0���	/IT\rZg�\Z���� �!�\"�%�\')%*,,O-`/z0�1�8�:�;�a\0�\0\0\0f\0�\0$\0��\0$\0�\0��\0A�\0\0��\0A�\0\'�\0$\0�\0��\0A�\0$�\0$\0�\0��\0A�\0\'�\0\0��\0v�\0\0��\0v�\0\0��\0��\0\0��\0�\0�\0\0\0\0\0�\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0!\0\0\0\0\0\0	\n�\0��\0\'�\0\0\0\0�\0\0\0\0\0\0\0%\0\0�\0\0\0\0�\0�\0\0\0\"\0\0~\0\0\0\0\0\0\0\0\0�	\0Z.0\0\0i\0A\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGServiceActivator$1',1433856492000,'����\0\0\04\0F	\0\0,	\0\0-\n\0\r\0.\0\0/\0\00\0\01\0\02	\03\04\0\05\n\0\06\n\0\07\08\0:\0;\0val$delegate\0Ljava/util/concurrent/Future;\0this$0\0FLru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator;\0<init>\0f(Lru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator;Ljava/util/concurrent/Future;)V\0Code\0LineNumberTable\0cancel\0(Z)Z\0isCancelled\0()Z\0isDone\0get\0()Ljava/lang/Boolean;\0\nExceptions\0<\0=\05(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;\0>\04(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;\0()Ljava/lang/Object;\0	Signature\0DLjava/lang/Object;Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;\0\nSourceFile\0ISGServiceActivator.java\0EnclosingMethod\0?\0@\0A\0\0\0\0\0\0B\0\0\0\0\Z\0\0\Z\0\0$\0C\0D\0E\0\0#\0\0!\0\0\0Fru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator$1\0InnerClasses\0java/lang/Object\0java/util/concurrent/Future\0java/lang/InterruptedException\0\'java/util/concurrent/ExecutionException\0%java/util/concurrent/TimeoutException\0Dru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGServiceActivator\0sendCommands\0�(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;\0()V\0java/lang/Boolean\0TRUE\0Ljava/lang/Boolean;\0 \0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\0\0\0*+�\0*,�\0*�\0�\0\0\0\0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0#\0\0\0\0\0*�\0�\0\0�\0\0\0\0\0\0\0\0\0\0@\0\0\0\Z\0\0\0\0\0\"\0\0\0\0\0\n*�\0�\0\0�\0\0\0\0\0\0\0\0\0\0F\0\0\0\Z\0\0\0\0\0\"\0\0\0\0\0\n*�\0�\0\0�\0\0\0\0\0\0\0\0\0\0L\0\0\0\0\0\0\0\0*\0\0\0\0\0*�\0�\0\0W�\0�\0\0\0\0\0\0\0\n\0\0\0S\0\nT\0\0\0\0\0\0\0 \0\0\0!\0\0\0\0\0,\0\0\0\0\0*�\0-�\0	\0W�\0�\0\0\0\0\0\0\0\n\0\0\0[\0\\\0\0\0\0\0\0\0 \0\"A\0\0#\0\0\0\0\0\0\0\0\0\0*-�\0\n�\0\0\0\0\0\0\0\0\0\0<\0\0\0\0\0\0\0 \0\"A\0\0$\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0<\0\0\0\0\0\0\0 \0\0%\0\0\0\0&\0\'\0\0\0\0(\0)\0\0\0\0*\0+\09\0\0\0\n\0\0\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGUtils',1433856492000,'����\0\0\04\0\n\0\0\0\0\n\0\0\0\0MAX_PORT_LENGTH\0I\0\rConstantValue\0\0\0\0<init>\0()V\0Code\0LineNumberTable\0\rgetPortLength\0!(Lru/bitel/common/ParameterMap;)I\0\rStackMapTable\0\nSourceFile\0\rISGUtils.java\0\n\0\0isg.port.length\09ru/bitel/bgbilling/modules/inet/dyn/device/cisco/ISGUtils\0\0\Z\0\0java/lang/Object\0ru/bitel/common/ParameterMap\0getInt\0(Ljava/lang/String;I)I\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0G\0\0\0\0\0*�\0<�\0�\0<�\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.dns.DynDnsServiceActivator',1433856492000,'����\0\0\04\0�\n\0\0=\n\0\0>\0?\n\0\0@	\0\0A\0B\n\0C\0D\n\0E\0F	\0\0G\0H\0I\n\0\0J\n\0\0K\n\0L\0M\n\0E\0N\n\0O\0P\n\0O\0Q\n\0R\0S\n\0\0T\n\0L\0U\n\0V\0W\n\0\0X\n\0\0Y\n\0R\0Z\n\0[\0\\\n\0\0]\n\0\0^\n\0R\0_\0`\0a\0b\0	dnsClient\01Lru/bitel/bgbilling/kernel/network/dns/DnsClient;\0options\0Ljava/util/Set;\0	Signature\0$Ljava/util/Set<Ljava/lang/Integer;>;\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0\nExceptions\0c\0destroy\0()Ljava/lang/Object;\0getHostname\0T(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)Ljava/lang/String;\0d\0register\0D(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)V\0e\0\nunregister\0onAccountingStart\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0onAccountingStop\0connectionModify\0\nSourceFile\0DynDnsServiceActivator.java\0%\0&\0)\0*\0/ru/bitel/bgbilling/kernel/network/dns/DnsClient\0%\0f\0\0 \0dns.inetOptions\0g\0h\0i\0j\0k\0l\0!\0\"\0m\0n\0o\0p\0&\0.\0/\0e\0q\0r\0s\0t\0d\0u\0v\0w\0r\0x\0y\0z\00\01\0{\0|\0}\0~\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\03\04\06\04\0�\0�\0Eru/bitel/bgbilling/modules/inet/dyn/device/dns/DynDnsServiceActivator\0Aru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorAdapter\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0java/lang/Exception\0java/lang/String\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0!(Lru/bitel/common/ParameterMap;)V\0ru/bitel/common/ParameterMap\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0ru/bitel/common/Utils\0toIntegerSet\0#(Ljava/lang/String;)Ljava/util/Set;\0\rjava/util/Set\0size\0()I\0close\0getUsername\0()Ljava/lang/String;\0\risBlankString\0(Ljava/lang/String;)Z\0replace\0(CC)Ljava/lang/String;\0toLowerCase\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0getInetAddressBytes\0()[B\0ru/bitel/common/inet/IpAddress\0toString\0([B)Ljava/lang/String;\0\rregisterAsync\0\'(Ljava/lang/String;Ljava/lang/String;)V\0unregisterAsync\0(Ljava/lang/String;)V\0\rgetNewOptions\0()Ljava/util/Set;\0java/util/Collections\0disjoint\0/(Ljava/util/Collection;Ljava/util/Collection;)Z\0\rgetOldOptions\0!\0\0\0\0\0\0\0\0 \0\0\0\0!\0\"\0\0#\0\0\0\0$\0	\0\0%\0&\0\0\'\0\0\0\0\0\0\0\0*�\0�\0\0\0\0(\0\0\0\0\0\0\0\0\0)\0*\0\0\'\0\0\0p\0\0\0\0\0;*+-�\0W*�\0Y�\0�\0*�\0�\0�\0	*�\0	�\0\n\0�\0*�\0	�\0\0\0\0(\0\0\0\Z\0\0\0\0(\0\0*\0\0,\0(\0-\04\0/\09\02\0+\0\0\0\09\0,\0\0\0\0\0-\0\0.\0/\0\0\'\0\0\01\0\0\0\0\0*�\0�\0*�\0*�\0�\0\0\0\0(\0\0\0\0\0\0\09\0\0:\0\0<\0,\0\0\0\0\0-\0\00\01\0\0\'\0\0\0L\0\0\0\0\0\Z+�\0\rM,�\0�\0�,@-�\0�\0�\0\0\0\0(\0\0\0\0\0\0\0A\0\0C\0\0E\0\0H\0+\0\0\0\0�\0\02\0\03\04\0\0\'\0\0\0X\0\0\0\0\0+�\0M*,�\0N-�\0*�\0-,�\0�\0�\0�\0\0\0\0(\0\0\0\0\0\0\0M\0\0N\0\0P\0\0R\0\0T\0+\0\0\0\0�\0\05\02\0\06\04\0\0\'\0\0\0Q\0\0\0\0\0+�\0M*,�\0N-�\0*�\0-�\0�\0\0\0\0(\0\0\0\0\0\0\0X\0\0Y\0\0[\0\0]\0\0_\0+\0\0\0\0�\0\05\02\0\07\08\0\0\'\0\0\0K\0\0\0\0\0*�\0	�\0+�\0*�\0	�\0�\0�*+�\0�\0\0\0\0(\0\0\0\0\0\0\0e\0\0g\0\0j\0\0l\0+\0\0\0\0\0,\0\0\0\0\0-\0\09\08\0\0\'\0\0\0K\0\0\0\0\0*�\0	�\0+�\0*�\0	�\0�\0�*+�\0\Z�\0\0\0\0(\0\0\0\0\0\0\0s\0\0u\0\0x\0\0z\0+\0\0\0\0\0,\0\0\0\0\0-\0\0:\08\0\0\'\0\0\0�\0\0\0\0\0B*�\0	�\0�+�\0*�\0	�\0�\0+�\0*�\0	�\0�\0*+�\0�\0+�\0*�\0	�\0�\0*+�\0\Z�\0\0\0\0(\0\0\0\"\0\0\0\0�\0\0�\0	\0�\0\0�\0%\0�\0-\0�\0;\0�\0@\0�\0+\0\0\0\0	#\0,\0\0\0\0\0-\0\0;\0\0\0\0<'),('ru.bitel.bgbilling.modules.inet.dyn.device.manad.ManadDeviceManager',1433856492000,'����\0\0\04\0�\n\0\'\0H\n\0I\0J\0K\0L\0M\n\0\0N\n\0O\0P	\0%\0Q\n\0\0R	\0%\0S\0T\n\0\n\0U	\0%\0V\0W\n\0\n\0X\n\0\r\0Y	\0%\0Z\0[\n\0\n\0\\\n\0\0]\0^\n\0\0_	\0%\0`	\0%\0a\0b\n\0c\0d\n\0\'\0e\n\0\'\0f\n\0\r\0g\n\0\n\0g\n\0\0g\0h\0D\n\0\r\0i\n\0\0j\n\0k\0l\n\0m\0n\0o\n\0c\0p\0q\0r\0logger\0Lorg/apache/log4j/Logger;\0host\0Ljava/lang/String;\0port\0I\0socket\0Ljava/net/Socket;\0out\0Ljava/io/PrintWriter;\0in\0Ljava/io/BufferedReader;\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/oss/systems/inventory/resource/common/bean/Device;Lru/bitel/oss/systems/inventory/resource/common/bean/DeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\nExceptions\0s\0	Signature\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/oss/systems/inventory/resource/common/bean/Device<**>;Lru/bitel/oss/systems/inventory/resource/common/bean/DeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0connect\0()Ljava/lang/Object;\0\ndisconnect\0destroy\0\rStackMapTable\0uptime\0<clinit>\0\nSourceFile\0ManadDeviceManager.java\05\06\0t\0u\0v\0w\0x\0y\0\Zjava/net/InetSocketAddress\0z\0{\0|\0}\0~\0+\0,\0\0�\0-\0.\0java/net/Socket\05\0�\0/\00\0java/io/PrintWriter\0�\0�\05\0�\01\02\0java/io/InputStreamReader\0�\0�\05\0�\0java/io/BufferedReader\05\0�\03\04\0)\0*\0	Connected\0�\0�\0�\0?\0@\0A\0@\0�\06\0Disconnected\0�\0�\0�\0~\0�\0�\0�\0�\0�\0�\0Cru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadDeviceManager\0�\0�\0Cru/bitel/oss/systems/inventory/resource/server/DeviceManagerAdapter\0<ru/bitel/oss/systems/inventory/resource/server/DeviceManager\0java/lang/Exception\0:ru/bitel/oss/systems/inventory/resource/common/bean/Device\0getHosts\0()Ljava/util/List;\0java/util/List\0get\0(I)Ljava/lang/Object;\0\ngetAddress\0()Ljava/net/InetAddress;\0java/net/InetAddress\0getHostAddress\0()Ljava/lang/String;\0getPort\0()I\0(Ljava/lang/String;I)V\0getOutputStream\0()Ljava/io/OutputStream;\0\Z(Ljava/io/OutputStream;Z)V\0getInputStream\0()Ljava/io/InputStream;\0(Ljava/io/InputStream;)V\0(Ljava/io/Reader;)V\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0close\0println\0(Ljava/lang/String;)V\0readLine\0ru/bitel/common/Utils\0	parseLong\0(Ljava/lang/String;J)J\0java/lang/Long\0valueOf\0(J)Ljava/lang/Long;\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0%\0\'\0\0(\0\0\n\0)\0*\0\0\0\0+\0,\0\0\0\0-\0.\0\0\0\0/\00\0\0\0\01\02\0\0\0\03\04\0\0\0\0\05\06\0\07\0\0\0\0\0\0\0\0*�\0�\0\0\0\08\0\0\0\0\0\0\0\0\09\0:\0\07\0\0\0R\0\0\0\0\0*-�\0:�\0\0�\0:*�\0�\0�\0*�\0�\0	�\0\0\0\08\0\0\0\0\0\0\0\'\0\0)\0\0*\0\0+\0(\0-\0;\0\0\0\0\0<\0=\0\0\0\0>\0\0?\0@\0\07\0\0\0z\0\0\0\0\0N*�\0\nY*�\0*�\0	�\0�\0*�\0\rY*�\0�\0�\0�\0�\0Y*�\0�\0�\0L*�\0Y+�\0�\0�\0�\0*�\0\Z�\0\0\0\08\0\0\0\Z\0\0\0\04\0\05\0&\06\05\07\0A\0:\0I\0<\0;\0\0\0\0\0<\0\0A\0@\0\07\0\0\0k\0\0\0\0\03*�\0W*�\0�\0*�\0�\0*�\0�\0*�\0*�\0*�\0�\0�\0�\0\0\0\08\0\0\0&\0	\0\0\0C\0\0D\0\0E\0\0F\0\Z\0G\0\0H\0$\0I\0)\0K\01\0L\0;\0\0\0\0\0<\0\0B\0@\0\07\0\0\0�\0\0\0\0\0;*�\0�\0*�\0�\0*�\0*�\0�\0*�\0�\0*�\0*�\0�\0*�\0�\0*�\0�\0\0\0\08\0\0\0*\0\n\0\0\0U\0\0W\0\0X\0\0Z\0\Z\0\\\0!\0]\0&\0`\0-\0b\04\0c\09\0f\0C\0\0\0\0\0;\0\0\0\0\0<\0\0D\0@\0\07\0\0\0:\0\0\0\0\0\Z*�\0 �\0!*�\0�\0\"L+	�\0#�\0$�\0\0\0\08\0\0\0\0\0\0\0o\0	\0p\0\0q\0;\0\0\0\0\0<\0\0E\06\0\07\0\0\0!\0\0\0\0\0\0	%�\0&�\0�\0\0\0\08\0\0\0\0\0\0\0\0\0F\0\0\0\0G'),('ru.bitel.bgbilling.modules.inet.dyn.device.manad.ManadServiceActivator',1433856492000,'����\0\0\04y\n\0l\0�\n\0l\0�	\0i\0�\n\0�\0�\0�\0�\0�\n\0\0�\n\0�\0�\n\0\0�\0�\n\0\n\0�	\0i\0�\0�\n\0\n\0�\n\0\r\0�	\0i\0�	\0i\0�\0�\n\0�\0�\n\0l\0�\n\0l\0�\n\0\r\0�\n\0\n\0�\0�\0�\n\0\0�\0�\n\0\0�\n\0\0�\n\0\r\0�\n\0l\0�	\0i\0�\0�\n\0!\0�\0�\0�\n\0b\0�\0�\n\0%\0�\0�\0�\0�\0�\0�\0�\n\0i\0�\0�\0�\n\0`\0�\0�\0�\0�\n\0�\0�\n\0�\0�\n\0`\0�\n\0i\0�\0�\n\0i\0�\0�\n\07\0�\0�\0�\n\0:\0�\n\0:\0�\n\0�\0�\n\0�\0�\n\0i\0�\n\07\0�	\0i\0�\0�\n\0�\0�\n\07\0�\0�	\0i\0�	\0i\0�\n\0P\0�\n\0�\0�\0�\n\0P\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\n\0%\0�\0�\n\0R\0�\0�\n\0:\0\n\0�\n\0W	\0W	\0W\n\0\\	\n\0\\\n\n\0`\r\0�\0�\n\0\n\0�\0InnerClasses\0PatternItem\0logger\0Lorg/apache/log4j/Logger;\0\ninetDevice\0<Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;\0paramMultiPattern\0Ljava/util/regex/Pattern;\0socket\0Ljava/net/Socket;\0out\0Ljava/io/PrintWriter;\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\nExceptions\Z\0connect\0()Ljava/lang/Object;\0\ndisconnect\0executeCommand\0(Ljava/lang/String;)V\0executeCommands\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;[Ljava/lang/String;)Ljava/lang/Object;\0\rStackMapTable\0	Signature(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;[Ljava/lang/String;)Ljava/lang/Object;\0generateRule([Ljava/lang/String;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Ljava/util/List;Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;)Ljava/lang/String;\0�\0� R([Ljava/lang/String;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Ljava/util/List<Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;>;Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;)Ljava/lang/String;\0\rgetParamMulti\0&(Ljava/lang/String;)Ljava/lang/String;!\0processBlock\0�(Ljava/lang/String;Ljava/util/List;Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;)Ljava/lang/StringBuffer;\"(Ljava/lang/String;Ljava/util/List<Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;>;Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;)Ljava/lang/StringBuffer;\0<clinit>\0\nSourceFile\0\ZManadServiceActivator.java\0{\0|\0\0�\0s\0t#$%&\'\0\Zjava/net/InetSocketAddress()*+,-.\0java/net/Socket\0{/\0w\0x\0java/io/PrintWriter01\0{2\0y\0z\0q\0r\0	Connected345\0�\0�\0�\0�6\0|\0Disconnected\0java/lang/StringBuilder\0	execute: 789,:\0�\0�\0�;<\0java/util/HashSet\0{=>?@%\0java/util/ArrayListA.BCD?\0�\0�\0\\\\t\0	EF\0\n\0|\0fullCommand=G5HIJK,\0�\0�\0\0\0�\0�\0java/lang/StringBuffer\0*(<LOOP>.*?</LOOP>)?(.*?)<LOOP>(.*?)</LOOP>\0java/util/regex/PatternLMNO PQRS\0�\0�TU\0java/lang/ObjectVWX7Y\0(?:<LOOP>(?:.*)</LOOP>)(.*)\\z\0u\0vZ[&F\\J\0.]^_`abcd!eQf\0�\0ru/bitel/common/ParameterMap\0{g\0java/util/HashMap\0\\{([A-Z]+)(\\d+)\\}Lhij\0Rru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator$PatternItem\0{klmno\"&p\0java/lang/Integerq.rstu\0java/lang/String\0{\0�\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0\\{7v\0\\}\0{\0}\0Fru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivatorwx\0\\$paramMulti\\((.*)\\)\0Tru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0Hru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator$1\0java/lang/Exception\0java/util/List\0[Ljava/lang/String;\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0\rjava/util/Set\0java/util/regex/Matcher\0java/util/Iterator\0\rjava/util/Map\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0getHosts\0()Ljava/util/List;\0get\0(I)Ljava/lang/Object;\0\ngetAddress\0()Ljava/net/InetAddress;\0java/net/InetAddress\0getHostAddress\0()Ljava/lang/String;\0getPort\0()I\0(Ljava/lang/String;I)V\0getOutputStream\0()Ljava/io/OutputStream;\0\Z(Ljava/io/OutputStream;Z)V\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0close\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0toString\0println\0workingOptions\0Ljava/util/Set;\0(Ljava/util/Collection;)V\0	retainAll\0(Ljava/util/Collection;)Z\0getChildren\0size\0add\0(Ljava/lang/Object;)Z\0addAll\0\nreplaceAll\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0debug\0ru/bitel/common/Utils\0notBlankString\0(Ljava/lang/String;)Z\0trim\0compile\0.(Ljava/lang/String;I)Ljava/util/regex/Pattern;\0matcher\03(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;\0find\0()Z\0group\0(I)Ljava/lang/String;\0macrosFormat\0#Lru/bitel/common/util/MacrosFormat;\0!ru/bitel/common/util/MacrosFormat\0format\09(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;\0,(Ljava/lang/String;)Ljava/lang/StringBuffer;\0config\0Lru/bitel/common/ParameterMap;\0\risBlankString\0\nsubIndexed\0)(Ljava/lang/String;)Ljava/util/SortedMap;\0java/util/SortedMap\0values\0()Ljava/util/Collection;\0java/util/Collection\0iterator\0()Ljava/util/Iterator;\0hasNext\0next\0(I)V\0-(Ljava/lang/String;)Ljava/util/regex/Pattern;\0parseInt\0(Ljava/lang/String;I)I\0M(Lru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator$1;)V\0number\0I\0letter\0Ljava/lang/String;\0&(Ljava/lang/Object;)Ljava/lang/Object;\0intValue\0valueOf\0(I)Ljava/lang/Integer;\0put\08(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\0(I)Ljava/lang/StringBuilder;\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0i\0l\0\0m\0\0\n\0q\0r\0\0\0\0s\0t\0\0\0\0u\0v\0\0\0\0w\0x\0\0\0\0\0y\0z\0\0\0\n\0\0{\0|\0\0}\0\0\0!\0\0\0\0\0*�\0�\0\0\0\0~\0\0\0\n\0\0\0\0\0\0\0\0�\0\0}\0\0\03\0\0\0\0\0*+-�\0W*-�\0�\0\0\0\0~\0\0\0\0\0\0\0,\0\0-\0\0.\0�\0\0\0\0\0�\0\0�\0�\0\0}\0\0\0�\0\0\0\0\0O*�\0�\0L+�\0\0�\0M,�\0�\0N,�\0	6*�\0\nY-�\0�\0*�\0\rY*�\0�\0�\0�\0�\0�\0*�\0�\0\0\0\0~\0\0\0\"\0\0\0\05\0\07\0\08\0\09\0!\0;\0/\0<\0B\0>\0J\0@\0�\0\0\0\0\0�\0\0�\0�\0\0}\0\0\0E\0\0\0\0\0*�\0W*�\0�\0*�\0�\0�\0�\0�\0\0\0\0~\0\0\0\0\0\0\0G\0\0H\0\0I\0\0K\0\0L\0�\0\0\0\0\0�\0\0�\0�\0\0}\0\0\0B\0\0\0\0\0\"�\0�\0Y�\0\Z�\0+�\0�\0�\0*�\0+�\0�\0\0\0\0~\0\0\0\0\0\0\0U\0\0V\0!\0W\0�\0\0\0\0\0�\0\0�\0�\0\0}\0\01\0\0	\0\0\0�+�\0*+,-�\0��\0�*�\0 �\0\Z�\0!Y�\0\":*�\0 �\0#\0W,�\0$:�\0%Y�\0&:�\0\'\0�\0,�\0(\0W�\0\r�\0)\0W*,+-�\0*:+,�\0-:./�\0-:�\0�\0Y�\0\Z0�\0�\0�\0�\01�\02�\0*�\03�\04�\0\0\0\0~\0\0\0N\0\0\0\0]\0\0_\0\0b\0\0d\0\0g\0\0i\0)\0j\05\0n\0;\0p\0D\0r\0N\0t\0Z\0x\0d\0{\0s\0|\0~\0}\0�\0~\0�\0�\0�\0�\0�\0�\0�\0\0\0\0�\0$\0�\0�	�\0O\0�\0�\0\0\0\0\0�\0�\0\0\0\0�\0\0�\0�\0\0}\0\0l\0\0\0\0v5:+:�6	6\n\n	�\0+\n2:�\0Y�\0\Z�\0�\0.�\0�\0:�\n���*�\06::�\07Y�\08:9:		 �\0;:\n\n�\0<:6�\0=�\0x6�\0>�\03:\r*\r-�\0?�\0@:\r�\0>:*�\0A�\0BYSY,SYSYS�\0C:�\0Y�\0\Z�\03�\0.�\0�\0�\0DW\r�\03�\0DW����\0\\E:		 �\0;:\n\n�\0<:�\0=�\0h�\0>�\03:\r*�\0A\r�\0BYSY,SYSYS�\0C:\r\r�\03�\0DW�\0-*�\0A�\0BYSY,SYSYS�\0C:�\0DW�\0@�\0\0\0\0~\0\0\0�\0 \0\0\0�\0\0�\0\0�\08\0�\0>\0�\0F\0�\0I\0�\0R\0�\0V\0�\0_\0�\0h\0�\0k\0�\0s\0�\0v\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�8\0�C\0�F\0�h\0�p\0�\0�\0\0\0\\\0�\0\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0.�\0,\0\r\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0|�\0])\0�\0\0\0\0�\0\0�\0�\0\0}\0\0\0\0\0\0\0��\0F+�\0<M,�\0=�\0�,�\0>N*�\0G-5�\0H:�\0I�\0s5:*�\0G�\0Y�\0\Z-�\0J�\0�\0�\0K�\0L\0�\0M\0:�\0N\0�\0?�\0O\0�\0P:5�\0H:�\02�\0�\0Y�\0\Z�\0�\0.�\0�\0:����+�\0\0\0\0~\0\0\06\0\r\0\0\0�\0\0�\0\0�\0\0�\0!\0�\0)\0�\0-\0�\0i\0�\0s\0�\0{\0�\0�\0�\0�\0�\0�\0�\0�\0\0\0$\0�\0S\0\0�\0�\0�\0�\0�\0�\0\0�\0B�\0�\0\0\0�\0�\0\0}\0\0�\0\0\0\0��\07Y�\08:�\0%Y\n�\0Q:�\0RY�\0S:T�\0U:		+�\0<:\n\n�\0=�\0h\n�\0>:\n�\0>�\0V6�\0WY�\0X:\r\r�\0Y\r�\0Z\r�\0(\0W�\0[\0�\0\\:�\0\r�\0]�\0�\0^�\0_\0W���,�\0\'\066�\0�\0`Y+�\0a:\r,�\0\0�\0b:�\0c\0:�\0N\0�\0}�\0O\0�\0W:�\0Z�\0[\0�\0\\�\0]`h�\0Y`6\r�\0Y�\0\Zd�\0�\0Z�\0�\0Y�\0ef�\0�\0�\0Y�\0\Zg�\0�\0Z�\0�\0eh�\0�\0�\0-:\r��\r:*�\0A�\0BY-SYSYSYS�\0C:�\0Y�\0\Z�\0.�\0�\0�\0DW����\0\0\0\0~\0\0\0v\0\0\0\0�\0	\0�\0\0�\0\0�\0$\0�\0,\0�\04\0�\0<\0�\0H\0�\0R\0�\0Y\0�\0`\0�\0j\0�\0x\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0L	O\rSu�\0��\0�\0\0\0�\0�\0,\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0Z\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0\n�\0&\0�\0�\0��\0��\0E\0�\0\0\0\0�\0\0�\0|\0\0}\0\0\0-\0\0\0\0\0\0i�\0j�\0k�\0U�\0F�\0\0\0\0~\0\0\0\n\0\0\0\0 \0\0$\0\0�\0\0\0\0�\0o\0\0\0\0\0n\0\0\0\0\0W\0i\0p\0\n'),('ru.bitel.bgbilling.modules.inet.dyn.device.manad.ManadServiceActivator$1',1433856492000,'����\0\0\04\0\0\0	\0\nSourceFile\0\ZManadServiceActivator.java\0EnclosingMethod\0\n\0Hru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator$1\0InnerClasses\0java/lang/Object\0Fru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.manad.ManadServiceActivator$PatternItem',1433856492000,'����\0\0\04\0\n\0\0\n\0\0\0\0\0letter\0Ljava/lang/String;\0number\0I\0<init>\0()V\0Code\0LineNumberTable\0\0InnerClasses\0M(Lru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator$1;)V\0\nSourceFile\0\ZManadServiceActivator.java\0	\0\n\0\0Rru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator$PatternItem\0PatternItem\0java/lang/Object\0Hru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator$1\0Fru/bitel/bgbilling/modules/inet/dyn/device/manad/ManadServiceActivator\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\n'),('ru.bitel.bgbilling.modules.inet.dyn.device.mikrotik.MikrotikServiceActivator',1433856492000,'����\0\0\04\0�\n\0@\0m\0n\n\0o\0p	\0;\0q	\0;\0r	\0;\0s	\0;\0t\0u\n\0v\0w\0x\n\0v\0y\n\0@\0z\0{	\0;\0|	\0;\0}	\0;\0~	\0;\0\n\0\r\0�	\0;\0�\n\0\r\0�\n\0@\0�	\0;\0�\n\0\r\0�\n\0\r\0�	\0;\0�\0�\n\0�\0�\0�\n\0\0m\0�\n\0\0�\n\0\0�\n\0�\0�\0�\0�\n\0�\0�\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\0K\n\0@\0�	\0;\0�\0�\n\0-\0�\0�\0�	\0;\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0;\0�\n\0;\0�\n\0o\0�\0�\n\0�\0�\n\0�\0�\0�\0�\n\0�\0�\0�\n\0�\0�\0�\0�\0session\07Lbitel/billing/server/util/mikrotik/MikrotikApiSession;\0logger\0Lorg/apache/log4j/Logger;\0\rresultPattern\0Ljava/util/regex/Pattern;\0RESULT_ID_PARAM\0Ljava/lang/String;\0\rConstantValue\0\nprevIdList\0\nsourceHost\0\nsourcePort\0I\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\nExceptions\0�\0connect\0()Ljava/lang/Object;\0\ndisconnect\0executeCommandMikrotik\0&(Ljava/lang/String;)Ljava/lang/String;\0getValue(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0\rStackMapTable\0	Signature+(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0executeCommands\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;[Ljava/lang/String;)Ljava/lang/Object;\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;[Ljava/lang/String;)Ljava/lang/Object;\0executeCommand\0(Ljava/lang/String;)V\0parseResultParamas\0�\0�\0<clinit>\0\nSourceFile\0MikrotikServiceActivator.java\0O\0P\0=(.+?)=(.+)\0�\0�\0�\0F\0G\0K\0I\0L\0I\0M\0N\0\rsa.sourceHost\0�\0�\0�\0\rsa.sourcePort\0�\0�\0S\0T\05bitel/billing/server/util/mikrotik/MikrotikApiSession\0�\0I\0�\0N\0�\0I\0�\0I\0O\0�\0B\0C\0W\0�\0Y\0X\0�\0I\0�\0[\0Y\0P\0D\0E\0Disconnected\0�\0�\0�\0java/lang/StringBuilder\0	execute: \0�\0�\0�\0�\0�\0�\0\\n\0\n\0�\0�\0�\0result=\0servId\0�\0�\0�\0�\0�\0�\0�\0\\\0]\0�\0�\0java/util/HashSet\0O\0�\0�\0�\0�\0�\0�\0java/lang/Object\0�\0�\0�\0�\0�\0�\0�\0�\0Z\0[\0g\0f\0�\0�\0\0\0�\0�\0�\0�\0�\0Lru/bitel/bgbilling/modules/inet/dyn/device/mikrotik/MikrotikServiceActivator\0.id\0�\0�\0,\0�\0�\0Tru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0java/lang/Exception\0[Ljava/lang/String;\0java/util/regex/Matcher\0java/lang/String\0java/util/regex/Pattern\0compile\0-(Ljava/lang/String;)Ljava/util/regex/Pattern;\0ru/bitel/common/ParameterMap\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0getInt\0(Ljava/lang/String;I)I\0host\0port\0username\0password\0M(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V\0()Ljava/lang/String;\0exitCommand\0	doCommand\0org/apache/log4j/Logger\0debug\0(Ljava/lang/Object;)V\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0toString\0info\0replace\0D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;\0equals\0(Ljava/lang/Object;)Z\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0getId\0()I\0valueOf\0(I)Ljava/lang/String;\0workingOptions\0Ljava/util/Set;\0(Ljava/util/Collection;)V\0\rjava/util/Set\0	retainAll\0(Ljava/util/Collection;)Z\0macrosFormat\0#Lru/bitel/common/util/MacrosFormat;\0!ru/bitel/common/util/MacrosFormat\0format\09(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;\0ru/bitel/common/Utils\0notBlankString\0(Ljava/lang/String;)Z\0trim\0matcher\03(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;\0find\0()Z\0group\0\risEmptyString\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0;\0@\0\0A\0\0\0B\0C\0\0\0\Z\0D\0E\0\0\0\0F\0G\0\0\0\Z\0H\0I\0\0J\0\0\0\0<\0\0K\0I\0\0\0\0L\0I\0\0\0\0M\0N\0\0\0\n\0\0O\0P\0\0Q\0\0\0E\0\0\0\0\0*�\0*�\0�\0*�\0*�\0*�\0�\0\0\0\0R\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0 \0\0S\0T\0\0Q\0\0\0D\0\0\0\0\0$*�\0	�\0*\n�\0�\0*+-�\0�\0\0\0\0R\0\0\0\0\0\0\0\'\0\0(\0\0*\0U\0\0\0\0\0V\0\0W\0X\0\0Q\0\0\0M\0	\0\0\0\0-*�\0\rY*�\0*�\0*�\0*�\0*�\0*�\0�\0�\0*�\0�\0W�\0\0\0\0R\0\0\0\0\0\0\01\0#\02\0+\03\0U\0\0\0\0\0V\0\0Y\0X\0\0Q\0\0\0J\0\0\0\0\0\"*�\0W*�\0*�\0�\0W*�\0�\0�\0\Z�\0�\0\0\0\0R\0\0\0\0\0\0\0:\0\0;\0\0<\0\0=\0 \0>\0U\0\0\0\0\0V\0\0Z\0[\0\0Q\0\0\0n\0\0\0\0\0F�\0�\0Y�\0�\0+�\0�\0 �\0!+\"#�\0$L*�\0+�\0M�\0�\0Y�\0%�\0,�\0�\0 �\0!,�\0\0\0\0R\0\0\0\0\0\0\0E\0\0F\0\"\0G\0+\0H\0D\0I\0U\0\0\0\0\0V\0\0\\\0]\0\0Q\0\0\0c\0\0\0\0\01&�\0\'�\0,�\0(�\0)�*�\0\'�\0*�\0�*+,-�\0+�\0\0\0\0R\0\0\0\0\0\0\0P\0\n\0R\0\0T\0\0V\0!\0Z\0^\0\0\0\0\0U\0\0\0\0\0V\0_\0\0\0\0`\0\0a\0b\0\0Q\0\0\0�\0\0\n\0\0\0|�\0�*�\0,�\0\Z�\0-Y�\0.:*�\0,�\0/\0W:�66�\0E2:	*�\00	�\01Y+SY,SY-SYS�\02:		�\03�\0**	�\04�\05�\06�����\0\0\0\0R\0\0\0.\0\0\0\0b\0\0d\0\0g\0\0i\0\0j\0%\0n\0?\0p\0_\0r\0g\0t\0t\0n\0z\0x\0^\0\0\0\0�\0\0c�\0B�\0\0U\0\0\0\0\0V\0_\0\0\0\0d\0\0e\0f\0\0Q\0\0\0\0\0\0\0\0\0�\0\0\0\0R\0\0\0\0\0\0\0�\0U\0\0\0\0\0V\0\0g\0f\0\0Q\0\0\0�\0\0\0\0\0r*�\0+�\07M*8�\0,�\09�\0^,�\0:N,�\0::-�\0J-<�\0\'�\0A*�\0�\0=�\0�\0Y�\0*Z�\0�\0>�\0�\0 �\0�\0Y�\0*Z�\0�\0�\0�\0 �\0����\0\0\0\0R\0\0\0.\0\0\0\0�\0	\0�\0\0�\0\0�\0\0�\0#\0�\00\0�\0:\0�\0T\0�\0n\0�\0q\0�\0^\0\0\0\0�\0\0h�\0D\0i\0i�\0\0\0j\0P\0\0Q\0\0\0!\0\0\0\0\0\0	;�\0?�\0�\0\0\0\0R\0\0\0\0\0\0\0\0\0k\0\0\0\0l'),('ru.bitel.bgbilling.modules.inet.dyn.device.misc.CompositeServiceActivator',1433856492000,'����\0\0\04\n\0G\0u	\0E\0v\0U\n\0w\0x\n\0y\0z\0{\n\0|\0}\n\0~\0\0�\n\0\0�\n\0�\0}\n\0\0�\0�\n\0\r\0u\0�\n\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\n\0\0�\0\0�\0�\n\0\0�\0�\n\0y\0�\0�\0�\0�\0�\n\0!\0u\0�\n\0!\0�\0�\n\0 \0�\n\0!\0�\n\0w\0�\0�\0�\0�\0�\0K	\0E\0�\0�\n\0!\0�\n\0w\0�\0�\n\0\0�\0�\n\0�\0�	\0E\0�	\0E\0�\0\0�\n\0E\0�\0e\0\0�\0\0�\0\0�\0\0�\n\0�\0�\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0�\n\0w\0�\0�\0logger\0Lorg/apache/log4j/Logger;\0serviceActivators\0=[Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator;\0reverseOrderServiceActivators\0disableOrderServiceActivators\0<init>\0()V\0Code\0LineNumberTable\0result\08(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\0\rStackMapTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\nExceptions\0�\0destroy\0()Ljava/lang/Object;\0connect\0\ndisconnect\0\rserviceCreate\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0�\0\rserviceModify\0\rserviceCancel\0connectionModify\0connectionClose\0onAccountingStart\0onAccountingStop\0<clinit>\0\nSourceFile\0CompositeServiceActivator.java\0N\0O\0H\0I\0�\0�\0�\0�\0�\0�\0ru/bitel/common/Preferences\0�\0�\0�\0�\0�\0�\0\n\0N\0�\0�\0�\0�\0java/util/ArrayList\0\rsa.composite.\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0f\0�\0java/util/Map$Entry\0Entry\0InnerClasses\0�\0f\0ru/bitel/common/ParameterMap\0class\0�\0�\0�\0f\0java/lang/Integer\0�\0�\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0�\0�\0�\0�\0�\0java/lang/Throwable\0java/lang/StringBuilder\0Error loading class: \0�\0�\0. \0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0J\0K\0#Composite ServiceActivators count: \0�\0�\0�\0�\0sa.composite.orderMode\0�\0�\0Composite orderMode: \0�\0�\0�\0L\0K\0M\0K\0U\0V\0R\0S\0e\0f\0g\0f\0h\0f\0i\0j\0�\0�\0�\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0l\0j\0m\0j\0n\0j\0o\0j\0p\0j\0q\0j\0Iru/bitel/bgbilling/modules/inet/dyn/device/misc/CompositeServiceActivator\0\0java/lang/Object\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0<ru/bitel/bgbilling/kernel/dynamic/server/DynamicClassManager\0java/util/List\0java/util/Iterator\0java/lang/String\0java/lang/Exception\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0org/apache/log4j/Logger\0debug\0(Ljava/lang/Object;)V\0getInstance\0@()Lru/bitel/bgbilling/kernel/dynamic/server/DynamicClassManager;\0	getConfig\0()Ljava/lang/String;\0ru/bitel/common/Utils\0maskNull\0&(Ljava/lang/String;)Ljava/lang/String;\0\'(Ljava/lang/String;Ljava/lang/String;)V\0inherit\0>(Lru/bitel/common/ParameterMap;)Lru/bitel/common/ParameterMap;\0\nsubIndexed\0)(Ljava/lang/String;)Ljava/util/SortedMap;\0java/util/SortedMap\0entrySet\0()Ljava/util/Set;\0\rjava/util/Set\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0\rjava/util/Map\0getValue\0get\0getKey\0intValue\0()I\0newInstance\07(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;\0add\0(Ljava/lang/Object;)Z\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0\ngetMessage\0toString\0error\0*(Ljava/lang/Object;Ljava/lang/Throwable;)V\0size\0toArray\0(([Ljava/lang/Object;)[Ljava/lang/Object;\0(I)Ljava/lang/StringBuilder;\0info\0getInt\0(Ljava/lang/String;I)I\0java/util/Collections\0reverse\0(Ljava/util/List;)V\0getNewState\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0E\0G\0\0\0\0\Z\0H\0I\0\0\0\0J\0K\0\0\0\0L\0K\0\0\0\0M\0K\0\0\0\0\0N\0O\0\0P\0\0\0\0\0\0\0\0*�\0�\0\0\0\0Q\0\0\0\0\0\0\0!\0\0R\0S\0\0P\0\0\01\0\0\0\0\0,�\0+�,�\0\0\0\0Q\0\0\0\0\0\0\0,\0\0.\0\02\0T\0\0\0\0\0\0U\0V\0\0P\0\0�\0\0\0\0��\0�\0�\0:�\0Y�\0�\0	�\0\n:�\0Y-�\0�\0	�\0\n�\0:�\0\rY�\0:�\0�\0\0�\0\0:		�\0\0�\0�	�\0\0�\0:\n\n�\0\0�\0�\0:\n�\0\Z\0�\0�\0����\0����\0�\0:�\0\0W�\0.:�\0�\0!Y�\0\"#�\0$�\0$%�\0$�\0&�\0$�\0\'�\0(��{*�\0)\0�\0�\0*\0�\0+�\0,�\0�\0!Y�\0\"-�\0$*�\0,��\0.�\0\'�\0/0�\016	�\0�\0!Y�\0\"2�\0$	�\0.�\0\'�\0/	�\0<�\03*�\0)\0�\0�\0*\0�\0+�\04	�\0**�\04�\05�\0**�\0,�\05�\0**�\0,�\04**�\0,�\05:\n*�\0,:�66\r\r�\0&\r2:*+-�\06\0\n�\07:\n�\r���\n�\0\0�\0�\0�\0 \0\0Q\0\0\0�\0 \0\0\0:\0\0<\0\r\0>\0 \0?\07\0A\0@\0C\0i\0E\0z\0F\0�\0H\0�\0M\0�\0N\0�\0S\0�\0P\0�\0R\0�\0T\0�\0V\0�\0X\0Z\Z\0\\4\0^9\0`>\0bV\0d\\\0fg\0jr\0oz\0p�\0s�\0u�\0w�\0u�\0z\0T\0\0\0j\0\n�\0S\0\n\0W\0X\0Y\0Z\0[\0\\\0[\0]\0^\0\0�\0>\0_\0`Z\0a�\0*�\0�\0�\n�\0\0\0W\0X\0Y\0Z\0[\0\\\0[\0]\0b\0+\0\0�\0)\0c\0\0\0\0\0d\0\0e\0f\0\0P\0\0\0\0\0\0\0\06�\08�\0L*�\04M,�>6�\0,2:*�\09\0+�\07L����+�\0\0\0\0Q\0\0\0\Z\0\0\0\0�\0\0�\0\n\0�\0!\0�\0.\0�\04\0�\0T\0\0\0\0�\0\0\0W\0b\0+\0\0�\0\0c\0\0\0\0\0d\0\0g\0f\0\0P\0\0\0s\0\0\0\0\0.L*�\0,M,�>6�\0,2:*�\0:\0+�\07L����+�\0\0\0\0Q\0\0\0\0\0\0\0�\0\0�\0\0�\0&\0�\0,\0�\0T\0\0\0\0�\0\r\0\0W\0b\0+\0\0�\0\0c\0\0\0\0\0d\0\0h\0f\0\0P\0\0\0s\0\0\0\0\0.L*�\04M,�>6�\0,2:*�\0;\0+�\07L����+�\0\0\0\0Q\0\0\0\0\0\0\0�\0\0�\0\0�\0&\0�\0,\0�\0T\0\0\0\0�\0\r\0\0W\0b\0+\0\0�\0\0c\0\0\0\0\0d\0\0i\0j\0\0P\0\0\0y\0\0\0\0\01M*�\0,N-�66�\0-2:*+�\0<\0,�\07M����,�\0\0\0\0Q\0\0\0\0\0\0\0�\0\0�\0\0�\0)\0�\0/\0�\0T\0\0\0\Z\0�\0\0\0W\0k\0b\0+\0\0�\0 \0c\0\0\0\0\0d\0\0l\0j\0\0P\0\0\0�\0\0\0\0\0iM+�\0=�\03*�\0,N-�66�\0-2:*+�\0?\0,�\07M����\00*�\05N-�66�\0-2:*+�\0?\0,�\07M����,�\0\0\0\0Q\0\0\0&\0	\0\0\0�\0\0�\0\n\0�\0#\0�\01\0�\0:\0�\0S\0�\0a\0�\0g\0�\0T\0\0\0&\0�\0\0\0W\0k\0b\0+\0\0�\0 �\0\0+�\0 \0c\0\0\0\0\0d\0\0m\0j\0\0P\0\0\0y\0\0\0\0\01M*�\05N-�66�\0-2:*+�\0@\0,�\07M����,�\0\0\0\0Q\0\0\0\0\0\0\0�\0\0�\0\0�\0)\0�\0/\0�\0T\0\0\0\Z\0�\0\0\0W\0k\0b\0+\0\0�\0 \0c\0\0\0\0\0d\0\0n\0j\0\0P\0\0\0�\0\0\0\0\0iM+�\0=�\03*�\0,N-�66�\0-2:*+�\0A\0,�\07M����\00*�\05N-�66�\0-2:*+�\0A\0,�\07M����,�\0\0\0\0Q\0\0\0&\0	\0\0\0�\0\0�\0\n\0�\0#\0�\01\0�\0:\0�\0S\0�\0a\0�\0g\0�\0T\0\0\0&\0�\0\0\0W\0k\0b\0+\0\0�\0 �\0\0+�\0 \0c\0\0\0\0\0d\0\0o\0j\0\0P\0\0\0y\0\0\0\0\01M*�\05N-�66�\0-2:*+�\0B\0,�\07M����,�\0\0\0\0Q\0\0\0\0\0\0\0�\0\0�\0\0�\0)\0�\0/\0\0T\0\0\0\Z\0�\0\0\0W\0k\0b\0+\0\0�\0 \0c\0\0\0\0\0d\0\0p\0j\0\0P\0\0\0y\0\0\0\0\01M*�\0,N-�66�\0-2:*+�\0C\0,�\07M����,�\0\0\0\0Q\0\0\0\0\0\0\0	\0\0)	\0/\0T\0\0\0\Z\0�\0\0\0W\0k\0b\0+\0\0�\0 \0c\0\0\0\0\0d\0\0q\0j\0\0P\0\0\0y\0\0\0\0\01M*�\05N-�66�\0-2:*+�\0D\0,�\07M����,�\0\0\0\0Q\0\0\0\0\0\0\0\0\0)\0/\0T\0\0\0\Z\0�\0\0\0W\0k\0b\0+\0\0�\0 \0c\0\0\0\0\0d\0\0r\0O\0\0P\0\0\0!\0\0\0\0\0\0	E�\0F�\0�\0\0\0\0Q\0\0\0\0\0\0\0$\0\0s\0\0\0\0t\0�\0\0\0\n\0\0\0�\0�	'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.AbstractRadiusProtocolHandler',1433856492000,'����\0\0\049\n\0R\0�	\0P\0�\0�\n\0�\0�	\0P\0�\0�\n\0�\0�\n\0�\0�\n\0:\0�	\0P\0�\0�	\0P\0�\0�	\0P\0�\0�	\0P\0�\0�\n\0�\0�	\0P\0�\0�\0�	\0P\0�\n\0�\0�\n\0�\0�\0�\0�\0�\0�\0�\n\0\0�\n\0�\0�\n\0�\0�\n\0�\0�	\0P\0�\0�\n\0�\0�	\0<\0�\0�\n\0�\0�\n\0�\0�\0�\n\0P\0�\0�	\0<\0�\0�	\0<\0�\0�\n\0�\0�\n\0�\0�\n\02\0�\n\0�\0�\0�\n\0)\0�\n\0)\0�\n\0)\0�\n\0P\0�\n\0P\0�\n\0P\0�\0�\0�\0�\n\0�\0�\0�\0�\n\0)\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\n\0�\0�\0�\n\0�\0�\n\0�\0�\0�\n\0H\0�\n\0H\0�\0�\0�\n\0H\0�\n\02\0�\n\0�\0�\0�\n\0�\0�\0�\0�\0logger\0Lorg/apache/log4j/Logger;\0defaultRadiusVendor\0I\0radiusVendor\0disablePatternAttributes\0=Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0macAddressVendor\0macAddressType\0macAddressPrefix\0Ljava/lang/String;\0optionRadiusAttributesMap\0ELru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap;\0addFramedRouteHost\0<init>\0(I)V\0Code\0LineNumberTable\0()V\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)V\0\rStackMapTable\0�\0\nExceptions\0�\0setStateFromAttributes\0:(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V\0\rsetMacAddress\0�\0getAttributeValue\0_(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;IILjava/lang/String;)Ljava/lang/Object;\0�\0preprocessAccessRequest\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0postprocessAccessRequest\0preprocessAccountingRequest\0addResponseAttributesZ(Lru/bitel/bgbilling/kernel/container/managed/ServerContext;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServType;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Ljava/lang/String;Ljava/util/Map;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;Ljava/util/Set;)Z\0�\0�\0	Signature�(Lru/bitel/bgbilling/kernel/container/managed/ServerContext;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServType;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;>;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;Ljava/util/Set<Ljava/lang/Integer;>;)Z\0addFramedRoute\0<clinit>\0\nSourceFile\0\"AbstractRadiusProtocolHandler.java\0b\0f\0V\0W\0\rradius.vendor\0�\0�\0�\0X\0W\0!radius.disable.pattern.attributes\0�\0�\0�\0�\0�\0�\0�\0Y\0Z\0radius.macAddress.vendor\0[\0W\0radius.macAddress.type\0\\\0W\0radius.macAddress.prefix\0]\0^\0radius.inetOption.\0�\0�\0�\0_\0`\0radius.addFramedRoute\0radius.addFramedRoute.gateway\0a\0^\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\Zjava/net/InetSocketAddress\0�\0�\0�\0�\0�\0�\0�\0\0T\0U\0\"State is disable (from attributes)\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\r\0!State is enable (from attributes)\0q\0r\0java/lang/String\0[B\0&Unknown type for macAddress attribute.\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute\Z\0�\0�\0o\0n\0m\0n\0~\0n\0�\0;ru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet !\0:ru/bitel/bgbilling/modules/inet/radius/InetRadiusProcessor\0disable\"#$%&\0�\'()\0java/lang/Integer*\0�+\09ru/bitel/bgbilling/kernel/network/radius/RadiusDictionary,-.\0�/\0java/lang/StringBuilder01\0 \0 1\0�2\0b345\0Oru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusProtocolHandler67\0@ru/bitel/bgbilling/modules/inet/access/sa/ProtocolHandlerAdapter\0>ru/bitel/bgbilling/kernel/network/radius/RadiusProtocolHandler\0java/lang/Exception\0java/lang/Object\0java/util/List\0java/util/Iterator\0ru/bitel/common/ParameterMap\0getInt\0(Ljava/lang/String;I)I\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0ru/bitel/common/Utils\0notBlankString\0(Ljava/lang/String;)Z\0newRadiusAttributeSet\0Q(Ljava/lang/String;)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\04ru/bitel/bgbilling/modules/inet/api/server/InetUtils\0newRadiusAttributeSetRealmMap\0x(ILru/bitel/common/ParameterMap;Ljava/lang/String;)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap;\0\risBlankString\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0getHosts\0()Ljava/util/List;\0size\0()I\0(I)Ljava/lang/Object;\0\ngetAddress\0()Ljava/net/InetAddress;\0java/net/InetAddress\0()[B\0ru/bitel/common/inet/IpAddress\0toString\0([B)Ljava/lang/String;\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0contains\0@(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;)Z\0org/apache/log4j/Logger\0debug\0(Ljava/lang/Object;)V\0DEVICE_STATE8\0RadiusPacketOption\0InnerClasses\0JLru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;\0java/lang/Short\0valueOf\0(S)Ljava/lang/Short;\0	setOption\0_(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;Ljava/lang/Object;)V\0MAC_ADDRESS\0MAC_ADDRESS_BYTES\0error\0getAttribute\0>(II)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;\0getValue\0()Ljava/lang/Object;\0\rgetAttributes\0(II)Ljava/util/List;\0\nstartsWith\0length\0	substring\0(I)Ljava/lang/String;\0\rjava/util/Map\0&(Ljava/lang/Object;)Ljava/lang/Object;\0\raddAttributes\0@(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;)V\0equals\0(Ljava/lang/Object;)Z\0\rjava/util/Set\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0Cru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap\0d(Ljava/lang/String;Ljava/lang/Integer;)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0getByteAttribute\0(II[B)[B\0\Zru/bitel/common/inet/IpNet\0([BI)Ljava/lang/String;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0()Ljava/lang/String;\0(IIILjava/lang/Object;)V\0setAttribute\0=(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;)V\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0Hru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption\0!\0P\0R\0\0S\0	\0\Z\0T\0U\0\0\0\0V\0W\0\0\0\0X\0W\0\0\0\0Y\0Z\0\0\0\0[\0W\0\0\0\0\\\0W\0\0\0\0]\0^\0\0\0\0_\0`\0\0\0\0a\0^\0\0\0\0\0b\0c\0\0d\0\0\0*\0\0\0\0\0\n*�\0*�\0�\0\0\0\0e\0\0\0\0\0\0\0L\0\0M\0	\0N\0\0b\0f\0\0d\0\0\0,\0\0\0\0\0*�\0*	0�\0�\0\0\0\0e\0\0\0\0\0\0\0Q\0\0R\0\0S\0\0g\0h\0\0d\0\0:\0\0	\0\0\0�**�\0�\0�\0�\0:�\0�\0*�\0	�\0\n�\0*�\0\n**�\0�\0�\0*\r�\0�\0*�\0�\0*�\0�\0�\0�\0Y*�\0�\0*�\0�\0�\04-�\0:�\0)�\0\0�\0�\0\Z\0�\0�\0:*�\0�\0�\0*�\0�\0�\0*�\0�\0\0\0\0e\0\0\0N\0\0\0\0Y\0\0[\0\0\\\0!\0^\0-\0c\02\0f\0A\0g\0M\0h\0Y\0j\0e\0l\0p\0n\0|\0p\0�\0r\0�\0s\0�\0u\0�\0v\0�\0z\0�\0|\0�\0\0i\0\0\0\r\0�\0-\0j�\0�\0k\0\0\0\0\0l\0\0m\0n\0\0d\0\0\0v\0\0\0\0\0<*�\0\n�\07+*�\0\n�\0�\0�\0 !�\0\"+�\0#�\0%�\0&�\0�\0 \'�\0\"+�\0#�\0%�\0&�\0\0\0\0e\0\0\0\0\0\0\0�\0\0�\0\0�\0\Z\0�\0(\0�\00\0�\0;\0�\0i\0\0\0\0(\0\0o\0n\0\0d\0\0\0�\0\0\0\0\0L*+*�\0*�\0*�\0�\0(M,�\08,�\0)�\0+�\0*,�\0)�\0&�\0#,�\0+�\0+�\0,,�\0+�\0+�\0&�\0�\0 -�\0.�\0\0\0\0e\0\0\0\"\0\0\0\0�\0\0�\0\0�\0\0�\0+\0�\02\0�\0C\0�\0K\0�\0i\0\0\0\n\0�\0+\0p\0\0q\0r\0\0d\0\0\0\0\0\0\0��\0�\0��\0�\0+�\0/:�\0	�\00��\0d+�\01:�\0�6�\0\06�\0B�\0\Z\0�\02:�\00:		�\0)�\0	�\0):\n\n�\03�\0\n�\04�\05������\0\0\0\0e\0\0\0N\0\0\0\0�\0	\0�\0\0�\0\0�\0\0�\0 \0�\0&\0�\0)\0�\01\0�\06\0�\08\0�\0K\0�\0Y\0�\0`\0�\0h\0�\0o\0�\0y\0�\0�\0�\0�\0�\0i\0\0\0\0	\Z�\0\0s�\0?�\0\0\0t\0u\0\0d\0\0\0+\0\0\0\0\0*+�\06*+�\07�\0\0\0\0e\0\0\0\0\0\0\0�\0\0�\0\n\0�\0k\0\0\0\0\0l\0\0v\0u\0\0d\0\0\0\"\0\0\0\0\0*,�\08�\0\0\0\0e\0\0\0\n\0\0\0\0�\0\0�\0k\0\0\0\0\0l\0\0w\0u\0\0d\0\0\0+\0\0\0\0\0*+�\06*+�\07�\0\0\0\0e\0\0\0\0\0\0\0\0\n\0k\0\0\0\0\0l\0\0x\0y\0\0d\0\0\0�\0\0\r\0\0\0~�\09\0�\0::		�\0\n	�\0;�\0\n�\0;=�\0>�\0��\0H�\0?\0�\0>�\0@\0:\n\n�\0A\0�\0+\n�\0B\0�\0C:*�\0�\0D:�\0\n�\0;����\0\0\0\0e\0\0\0:\0\0\08\09\0;\0\Z?\0A\0&E\00G\02K\0AM\0`O\0mP\0rR\0yT\0|W\0i\0\0\0\0�\0\Z\0z�\0\0{.�\0\0k\0\0\0\0\0l\0|\0\0\0\0}\0\0~\0n\0\0d\0\0\0�\0\0\0\0\0J*�\0�\0E+�\0FM,�\08, �\0GN+�\02Y�\0HY�\0I-�\0JK�\0J*�\0�\0JL�\0J�\0M�\0N�\0O�\0\0\0\0e\0\0\0\Z\0\0\0_\0a\0c\0e\0g\0Ij\0i\0\0\0\0�\0I\0k\0\0\0\0\0l\0\0\0f\0\0d\0\0\0!\0\0\0\0\0\0	P�\0Q�\0 �\0\0\0\0e\0\0\0\0\0\0\0%\0\0�\0\0\0\0�\n\0\0\0\n\0\0�	\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.AbstractRadiusServiceActivator',1433856492000,'����\0\0\04\n\0�\0�\0�	\0�\0�	\0�\0�	\0�\0�	\0�\0�\n\0�\0�	\0�\0�\n\0�\0�\0\0\n\0�\n\n		\0�\n\n\r\n\n\0�	\0�\n\0�\n\0�\Z	\0�	\0� 	\0�!\n\0&\"	\0�#\n\0&$	\0�%\n\0�&\'()\n\0*	\0�+,\n-.	\0�/012\n\03	\0�45\n\06	\0�789:\n\0�;\n<=\n\0=>	\0�?@	\0�AB	\0�C\n\0-\0�	\0-+	\0-/	\0-4	\0-7	\0-?	\0-A	\0-C\n\0�DE	\0�F\n\0G	\0�HI\nJKL	\0�MN	\0�O\n\0&P\nQR\nQS\n\0&T\nUV\n\0&WXYXZ[\\\nU]\n\0�^\n\0d_\n\0y`a\nUbc\nUde\nUf\ngh\n\0dij\nk\n\rlmn\n\0vp\n\0yqr\n\0ys\n\0�t\n\ruvw&xy\n\0�z\n\0�{|\n\0�\0�}\n\0�~\n�\n\0���\n��\n�\n\0���\n�\n\0��\nJ�\n�\n\0��\n\0&�\n\0��\n��\n\0&�\n�X������\n����\nJ��\n\0�\0���\0	ConfCache\0InnerClasses\0logger\0Lorg/apache/log4j/Logger;\0\ndataLogger\0?Lru/bitel/bgbilling/modules/inet/radius/RadiusHourlyDataLogger;\0RuntimeVisibleAnnotations\0Ljavax/annotation/Resource;\0name\0radiusDataLogger\0deviceId\0I\0nasHostAddr\0Ljava/net/InetAddress;\0\rnasIdentifier\0Ljava/lang/String;\0radiusClient\07Lru/bitel/bgbilling/kernel/network/radius/RadiusClient;\0realmRadiusAttributesMap\0Ljava/util/Map;\0	Signature\0`Ljava/util/Map<Ljava/lang/String;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;>;\0optionRadiusAttributesMap\0ELru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap;\0disableRadiusAttributes\0=Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0enableRadiusAttributes\0withoutBreak\0Z\0\ZconnectionRadiusAttributes\0Ljava/util/Set;\0#Ljava/util/Set<Ljava/lang/String;>;\0addRealmAttributes\0podFixedAttributes\0coaFixedAttributes\0needConnectionStateModify\0defaultOptionsPrefix\0defaultWithoutBreak\0defaultConnectionAttributes\0 defaultNeedConnectionStateModify\0logCoA\0logPoD\0\nCONF_CACHE\0+Lru/bitel/common/ref/ConcurrentWeakHashMap;\0�Lru/bitel/common/ref/ConcurrentWeakHashMap<Lru/bitel/common/ParameterMap;Lru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusServiceActivator$ConfCache;>;\0<init>\0)(Ljava/lang/String;ZLjava/lang/String;Z)V\0Code\0LineNumberTable\0\rStackMapTable�y\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;������\'\0\nExceptions�\0destroy\0()Ljava/lang/Object;\0connect\0\ndisconnect\0prepareRequest\0z(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)V\0getUsernameAndRealm\0((Ljava/lang/String;Z)[Ljava/lang/String;\0connectionModifyCoA\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;�r�\0<clinit>\0()V\0\nSourceFile\0#AbstractRadiusServiceActivator.java\0�\0�\0radius.inetOption.\0�\0�\0�\0�\0�\0�\0�\0����\0�\0��������\0[Ljava/lang/String;\0radius.host��������\0�\0�\0radius.port\01700�����\0sa.radius.sourceHost\0radius.sourceHost\0sa.radius.sourcePort\0radius.sourcePort\0radius.identifier��\0�\0�\0sa.radius.secret\0\rradius.secret����\0\rsa.radius.log\0sa.radius.log.coa\0�\0�\0sa.radius.log.pod\0�\0�\05ru/bitel/bgbilling/kernel/network/radius/RadiusClient\0�\0�\0��\0�\0�\0��\0�\0���\0Zru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusServiceActivator$ConfCache\0\rradius.realm.\0\nattributes��\0�\0�\0!sa.radius.option.attributesPrefix���\0�\0�\0sa.radius.disable.attributes\0radius.disable.attributes\0radius.realm.disable.attributes��\0�\0�\0sa.radius.enable.attributes��\0�\0�\0java/util/HashSet\0sa.radius.connection.attributes\0\\s*,\\s*�����\0��\0�\0�\0sa.radius.pod.attributes\0�\0�\0sa.radius.coa.attributes\0�\0���\0!sa.radius.connection.withoutBreak\0�\0���\0�\0�\07withoutBreak=true but disableRadiusAttributes is empty!���\0sa.radius.realm.addAttributes\0�\0�\0 sa.radius.connection.stateModify\0�\0�\0�\0��������������\0NAS-Port��\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute\09ru/bitel/bgbilling/kernel/network/radius/RadiusDictionary����\0����\0Acct-Session-Id��\0	User-Name��\0Framed-IP-Address�����\0��\0NAS-IP-Address����\0NAS-Identifier\0Nru/bitel/bgbilling/kernel/network/radius/RadiusAttribute$RadiusAttributeString\0RadiusAttributeString\0����\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket��\0�\0���\0default�\0;ru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet\0java/lang/String����\0java/lang/StringBuilder\0!Connection modify CoA: oldState: �\0��\0; newState: �\0; oldOptionSet: �\0; newOptionSet: 	�\n�\r\0�\0�\0�\0Send CoA lock: \n���\0�\0java/lang/Integer�\Z\0Send CoA: \n\0Pru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusServiceActivator\0)ru/bitel/common/ref/ConcurrentWeakHashMap\0Aru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorAdapter\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0java/util/List\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0[B\0java/lang/Exception\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0java/util/Iterator\0getId\0()I\0getHostsAsString\0()Ljava/util/List;\0size\0get\0(I)Ljava/lang/Object;\0getHost\0()Ljava/lang/String;\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0java/net/InetAddress\0	getByName\0*(Ljava/lang/String;)Ljava/net/InetAddress;\0ru/bitel/common/Utils\0parseInt\0(Ljava/lang/String;)I\0getInt\0(Ljava/lang/String;I)I\0\rgetIdentifier\0	getSecret\0getBytes\0()[B\0�(Ljava/lang/String;ILjava/net/InetAddress;I[BLru/bitel/bgbilling/server/util/Setup;Lru/bitel/bgbilling/kernel/network/radius/datalog/hourly/RadiusHourlyDataLogger;ZZ)V\0/(Ljava/lang/String;ILjava/net/InetAddress;I[B)V\0&(Ljava/lang/Object;)Ljava/lang/Object;\0\ZnewRadiusAttributeRealmMap\0S(Lru/bitel/common/ParameterMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;\04ru/bitel/bgbilling/modules/inet/api/server/InetUtils\0newRadiusAttributeSetRealmMap\0x(ILru/bitel/common/ParameterMap;Ljava/lang/String;)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap;\0newRadiusAttributeSet\0Q(Ljava/lang/String;)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0getRadiusAttributeSet\0split\0\'(Ljava/lang/String;)[Ljava/lang/String;\0java/util/Arrays\0asList\0%([Ljava/lang/Object;)Ljava/util/List;\0(Ljava/util/Collection;)V\0put\08(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\0isEmpty\0()Z\0org/apache/log4j/Logger\0warn\0(Ljava/lang/Object;)V\04ru/bitel/bgbilling/kernel/network/radius/nas/NasList\0getInstance\08()Lru/bitel/bgbilling/kernel/network/radius/nas/NasList;\05(I)Lru/bitel/bgbilling/kernel/network/radius/nas/Nas;\0setNas\0!(Lru/bitel/common/model/Idable;)V\0()J\0setConnectionId\0(J)V\0\rjava/util/Set\0contains\0(Ljava/lang/Object;)Z\0\rgetDevicePort\0valueOf\0(I)Ljava/lang/Integer;\0(IIILjava/lang/Object;)V\0setAttribute\0=(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;)V\0getAcctSessionId\0getUsername\0getInetAddressBytes\0java/nio/ByteBuffer\0wrap\0([B)Ljava/nio/ByteBuffer;\0(IIILjava/nio/ByteBuffer;)V\0\ngetAddress\0convertBytesToInt\0([B)I\0(IILjava/lang/String;)V\0getCode\0()B\0\raddAttributes\0@(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;)V\0\risBlankString\0(Ljava/lang/String;)Z\0\rjava/util/Map\0indexOf\0(I)I\0	substring\0(I)Ljava/lang/String;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0getOldState\0(I)Ljava/lang/StringBuilder;\0getNewState\0\rgetOldOptions\0()Ljava/util/Set;\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0\rgetNewOptions\0toString\0info\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0connectionClose\0createModifyRequest\09()Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;\0\ZsetConnectionStateModified\0(Z)V\0	sendAsync\0V(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)Ljava/util/concurrent/Future;\0getRealm\0iterator\0()Ljava/util/Iterator;\0hasNext\0next\0Cru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap\0d(Ljava/lang/String;Ljava/lang/Integer;)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;!\0�\0�\0\0�\0\0\Z\0�\0�\0\0\0\0�\0�\0\0�\0\0\0\0\0�\0\0�s\0�\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\Z\0�\0�\0\0�\0\0\0\0�\0	\0\0�\0�\0\0�\0\0\0o\0\0\0\0\0!*�\0+�\0L*+�\0*�\0*-�\0*�\0�\0\0\0\0�\0\0\0\"\0\0\0\0�\0\0�\0\0�\0\0�\0\0�\0\0�\0\Z\0�\0 \0�\0�\0\0\0\0�\0\0\0�\0�\0�\0\0\0\0�\0�\0\0�\0\0�\0\0\0\0�*-�\0�\0-�\0	:�\0�\0\n\0�\0�\0\0�\0�\0:\r�\0\n2�\0-�\0�\0:*�\0�\0�\0\n2�\0�\0�\06		�\0�6	�\0�\0:\n�\0�\06*\Z-�\0�\0�\0-�\0�\0�\0�\0 :!�\06\r*\"\r�\0�\0�\0�\0#*$\r�\0�\0�\0�\0%*�\0#�\0\n*�\0%�\0**�\0&Y\n*�\0	+*�\0\'*�\0#*�\0%�\0(�\0)�\0\Z*�\0&Y\n*�\0	�\0*�\0)�\0+�\0,�\0-:�\0�*./�\00�\01*2*�\0�\0�\03�\04567�\0�\0�\0:*�\08�\09*:�\0�\0;�\0<*�\0=Y>*�\0�\0?�\0@�\0A�\0B�\0C*D�\0�\08�\0E*F�\0�\08�\0G�\0-Y�\0H:*�\01�\0I*�\04�\0J*�\09�\0K*�\0<�\0L*�\0C�\0M*�\0E�\0N*�\0G�\0O�\0+�\0PW�\0B*�\0I�\01*�\0J�\04*�\0K�\09*�\0L�\0<*�\0M�\0C*�\0N�\0E*�\0O�\0G*Q*�\0�\0�\0�\0�\0�\0�\0R*�\0R�\0!*�\09�\0\r*�\09�\0S�\0�\0TU�\0V*�\0R*W�\0�\0�\0�\0X*Y*�\0�\0�\0�\0�\0�\0�\0Z�\0\0\0\0�\0\0\0�\04\0\0\0�\0\0�\0\0�\0.\0�\0G\0�\0P\0�\0j\0�\0o\0�\0t\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�%\0�<\0�I\0�N\0�[\0�p\0��\0��\0��\0��\0��\0��\0��\0��\0��\0�\0\0�	\0�\0�\0�$\0�/\0�2\0�;\0�D\0�M\0�V\0�_\0�h\0�q�����\n�\0�\0\0�\0�\0+\0�@\0�\0\0\0�\0�\0�\0�\0�\0�\0\0\0�\0��\0\0\0�\0�\0�\0�\0�\0�\0\0\0�\0�\0��\0\0	\0�\0�\0�\0�\0�\0�\0\0�\0\0�\0��\0\0	\0�\0�\0�\0�\0�\0�\0\0�\0\0�\0�\0��\0�\0b\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0\0��\0\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0\0�S\0��\0\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0\0�&�\0�\0�>�\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0�\0\0�\0�\0��\0\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0�\0\0�\0�\0�I\0��\0\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0�\0\0�\ZO\0��\0\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0�\0\0��\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0�\0\0�\0�\0��\0\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0�\0\0�\0�\0�I\0��\0\0\0\0�\0�\0�\0�\0�\0�\0\0�\0�\0�\0�\0\0�\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0%\0\0\0\0\0	*�\0)�\0[�\0\0\0\0�\0\0\0\n\0\0\0\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0Q\0\0\0\0\0#*�\0#�\0\n*�\0%�\0�\0\\*�\0�\0]L*�\0)+�\0^�\0\0\0\0�\0\0\0\0\0\0\"\0$\0%\0!(\0�\0\0\0\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0\Z\0\0\0\0\0�\0\0\0\0�\0\0\0\0\0\02\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0X\0\0\0\0�*�\0),�\0_�\0`*�\0C�\0a\0�\0*�\0Cb�\0c\0�\0+�\0dY,�\0f�\0g�\0h�\0i*�\0C�\0a\0�\0*�\0Cj�\0c\0�\0+�\0dY,,�\0k�\0h�\0i*�\0C�\0a\0�\0*�\0Cl�\0c\0�\0+�\0dY,�\0m�\0h�\0i*�\0C�\0a\0�\0*�\0Cn�\0c\0�\0 ,�\0o�\0+�\0dY,�\0o�\0p�\0q�\0i*�\0C�\0a\0�\0*�\0Cr�\0c\0�\0$*�\0�\0s�\0t>�\0+�\0dY�\0g�\0h�\0i*�\0C�\0a\0�\0*�\0Cu�\0c\0�\0+�\0vY *�\0�\0w�\0i+�\0x+�\0Q*�\0G�\0+*�\0G�\0z*�\0X�\0S,�\0m�\0{N-2:�\0|�\0}:*�\01�\0~\0�\0:�\0	+�\0z�\0+�\0x(�\0*�\0E�\0+*�\0E�\0z�\0\0\0\0�\0\0\0�\0 \0\0?\0A\0%C\0:F\0TH\0gK\0�M\0�P\0�R\0�T\0�X\0�Z\0�[\0�]ac1f:iAkIoPqYr^sfujxzy{�}�������\0�\0\0\0\0% �\0 \0\0��\0\Z\0\n\0�\0�\0\0�\0\0\0�\0\0\0\0\0M�\0�M*@�\0�>�\0,*�\0�S,*`�\0�S�\0,*S,}S�\0,2\\�\0�>�\0,,2`�\0�S,�\0\0\0\0�\0\0\02\0\0\0�\0�\0�\0�\0�\0%�\0)�\0.�\02�\0;�\0?�\0K�\0�\0\0\0\0�\0%\0\0\0�\0�\0\0�\0\0�\0\0\0\06�\0T�\0�Y�\0���\0�+�\0��\0���\0�+�\0��\0���\0�+�\0��\0���\0�+�\0��\0��\0��\0�+�\0�M+�\0��\0T*�\0R�\0	*+�\0��*�\0)�\0�N*-,�\0�-*�\09�\0z*�\0Z�\0+�\0��\0T�\0�Y�\0���\0�-�\0��\0��\0�*�\0)-�\0��+�\0��\0*�\0R�\0	*+�\0��*�\0)�\0�N*-,�\0�+�\0�:+�\0��\0+�\0��\0�\0:�\0�\0�\0*�\0�\0�\0�:*�\04�\0�:�\0	-�\0z���*�\0Z�\0+�\0��\0T�\0�Y�\0���\0�-�\0��\0��\0�*�\0)-�\0��\0\0\0\0�\0\0\0r\0\0\0�\0@�\0E�\0L�\0S�\0Y�\0a�\0g�\0o�\0v�\0{�\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0������-�\0�\0\0\0&\0	�\0Y\0��\0!\0��\0!�\0\Z\0�\0��\0\n\0�-�\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0/\0\0\0\0\0\0��\0��\0T�\0�Y�\0��\0+�\0\0\0\0�\0\0\0\n\0\0\0\0)\0\0�\0\0�\0\0\0\0�\0�\0\0\0\0\0-\0�\0�\0\0v\0do\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.AbstractRadiusServiceActivator$ConfCache',1433856492000,'����\0\0\04\0\n\0\0\0\Z\0\0realmRadiusAttributesMap\0Ljava/util/Map;\0	Signature\0`Ljava/util/Map<Ljava/lang/String;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;>;\0optionRadiusAttributesMap\0ELru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap;\0disableRadiusAttributes\0=Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0enableRadiusAttributes\0\ZconnectionRadiusAttributes\0Ljava/util/Set;\0#Ljava/util/Set<Ljava/lang/String;>;\0podFixedAttributes\0coaFixedAttributes\0<init>\0()V\0Code\0LineNumberTable\0\nSourceFile\0#AbstractRadiusServiceActivator.java\0\0\0\0Zru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusServiceActivator$ConfCache\0	ConfCache\0InnerClasses\0java/lang/Object\0Pru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusServiceActivator\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0\0�\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.CoAProtocolHandler',1433856492000,'����\0\0\04\0\n\0\0\0\0\r\0\0<init>\0()V\0Code\0LineNumberTable\0\nSourceFile\0CoAProtocolHandler.java\0\0\0Dru/bitel/bgbilling/modules/inet/dyn/device/radius/CoAProtocolHandler\0Oru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusProtocolHandler\0>ru/bitel/bgbilling/kernel/network/radius/RadiusProtocolHandler\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\n'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.CoAServiceActivator',1433856492000,'����\0\0\04\0U\0$\n\0\0%\n\0\0&	\0\0\'\0(\n\0)\0*\n\0+\0,	\0\0-\n\0.\0/\n\0\00\01\n\0\02\03\n\0\04\n\0\05\n\0\06\n\0.\07\08\n\0)\09\0:\0;\0logger\0Lorg/apache/log4j/Logger;\0<init>\0()V\0Code\0LineNumberTable\0connectionModify\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0\nExceptions\0<\0connectionClose\0<clinit>\0\nSourceFile\0CoAServiceActivator.java\0WNAS-Port, Acct-Session-Id, User-Name, Framed-IP-Address, NAS-IP-Address, NAS-Identifier\0\0=\0>\0\0\0\0Connection close\0?\0@\0A\0B\0C\0D\0E\0F\0G\0H\0I\0J\0K\0java/lang/StringBuilder\0\0\0Send PoD: \n\0L\0M\0L\0N\0O\0P\0Q\0R\0Eru/bitel/bgbilling/modules/inet/dyn/device/radius/CoAServiceActivator\0S\0T\0Pru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0java/lang/Exception\0)(Ljava/lang/String;ZLjava/lang/String;Z)V\0connectionModifyCoA\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0radiusClient\07Lru/bitel/bgbilling/kernel/network/radius/RadiusClient;\05ru/bitel/bgbilling/kernel/network/radius/RadiusClient\0createDisconnectRequest\09()Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;\0prepareRequest\0z(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)V\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0	sendAsync\0V(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)Ljava/util/concurrent/Future;\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0\Z\0\0\0&\0\0\0\0\0\n*�\0�\0\0\0\0\0\0\0\n\0\0\0\0\0	\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0*+�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 \0\0\0\Z\0\0\0i\0\0\0\0\0=�\0�\0+�\0M*�\0�\0	N*-,�\0\n�\0�\0Y�\0\r�\0-�\0�\0�\0*�\0-�\0�\0\0\0\0\0\0\0\Z\0\0\0\0)\0\0+\0\r\0-\0\0.\0\00\04\02\0\0\0\0\0\0\0\0!\0\0\0\Z\0\0\0!\0\0\0\0\0\0	�\0�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0\0\0#'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeClipsProtocolHandler',1433856492000,'����\0\0\04	\n\0A\0y	\0\0z	\0\0{\n\0A\0|\0}\0~\0\n\0�\0�\n\0�\0�\n\0�\0�	\0\0�\0�\0�\0�\n\0�\0�	\0\0�\0�\0�\0�	\0\0�\0�	\0\0�	\0\0�\n\0�\0�\0�\0�\n\0�\0�\0�\n\0�\0�\n\0�\0�\0�\n\0\0y\n\0�\0�\n\0\0�\0�\n\0\0�\n\0�\0�\n\0.\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0.\0�\0�\0�\0�\0�\0�\n\0�\0�\n\0�\0�	\0�\0�\n\0\0�\n\0�\0�\n\0\0�	\0�\0�\n\0A\0�\n\0\0�\n\0\0�\n\0A\0�\n\0�\0�\n\0A\0�\n\0�\0�	\0�\0�\n\0�\0�\n\0�\0�\0�\0�\0�\0�\0Agent_Remote_Id\0I\0\rConstantValue\0\0\0`\0Agent_Circuit_Id\0\0\0a\0Mac_Addr\0\0\0�\0DHCP_Option\0\0\0�\0servSearchModes\0[[I\0agentOptionRemoteIdType\0agentOptionRemoteIdPosition\0agentOptionRemoteIdLength\0agentOptionCircuitIdType\0agentOptionRemoveHeader\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)V\0\nExceptions\0�\0setUsername\0:(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V\0\rStackMapTable\0�\0�\0setAgentOption\0�\0RadiusPacketOption\0InnerClasses\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;IILru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;)V\0�\0	Signature\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute<*>;IILru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption<Ljava/lang/Object;>;)V\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Ljava/util/List;IIIILru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;)V\0�\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Ljava/util/List<Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute<*>;>;IIIILru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption<Ljava/lang/Object;>;)V\0setAgentOptions\0preprocessAccessRequest\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0postprocessAccessRequest\0preprocessAccountingRequestImpl\0�(ILru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0preprocessDhcpRequest\0i(Lru/bitel/bgbilling/kernel/network/dhcp/DhcpPacket;Lru/bitel/bgbilling/kernel/network/dhcp/DhcpPacket;)V\0�\0postprocessDhcpRequest\0\nSourceFile\0\"SmartEdgeClipsProtocolHandler.java\0U\0V\0Q\0E\0R\0E\0Y\0Z\0radius.servSearchMode\0radius.serviceSearchMode\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0�\0�\0�\0�\0�\0�\0�\0�\0�\0N\0O\0!radius.agent.option.remoteId.type\0radius.agentRemoteId.type\0Pru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeClipsProtocolHandler\0�\0�\0P\0E\0%radius.agent.option.remoteId.position\0#radius.agent.option.remoteId.length\0\"radius.agent.option.circuitId.type\0S\0E\0 radius.agent.option.removeHeader\0T\0E\0�\0E\0�\0�\0�\0\\-\0\0\0�\0�\09ru/bitel/bgbilling/kernel/network/radius/RadiusDictionary\0�\0�\0�\0�\0java/lang/StringBuilder\0�\0�\0�\0�\0�\0:\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute\0�\0�\0�\0�\0�\0�\0�\0b\0j\0�\0�\0b\0f\0�\0�\0n\0o\0]\0^\0m\0^\0p\0o\0�\0�\0q\0r\0�\0\0�\0java/lang/NullPointerException\0Kru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeProtocolHandler\0>ru/bitel/bgbilling/kernel/network/radius/RadiusProtocolHandler\0:ru/bitel/bgbilling/kernel/network/dhcp/DhcpProtocolHandler\0java/lang/Exception\0java/lang/String\0[B\0Hru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption\0java/nio/ByteBuffer\0valueOf\0(I)Ljava/lang/String;\0ru/bitel/common/ParameterMap\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\04ru/bitel/bgbilling/modules/inet/api/server/InetUtils\0parseSearchModes\0(Ljava/lang/String;)[[I\0getInt\0(Ljava/lang/String;I)I\0radiusVendor\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0getStringAttribute\0((IILjava/lang/String;)Ljava/lang/String;\0\nreplaceAll\0setStringAttribute\0(IILjava/lang/String;)V\0getByteAttribute\0(II[B)[B\0ru/bitel/common/Utils\0\rbytesToString\0)([BZLjava/lang/String;)Ljava/lang/String;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0toLowerCase\0getData\0()Ljava/nio/ByteBuffer;\0position\0(I)Ljava/nio/Buffer;\0limit\0slice\0	setOption\0_(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;Ljava/lang/Object;)V\0getValue\0()Ljava/lang/Object;\0java/util/List\0size\0()I\0(I)Ljava/lang/Object;\0(I)B\0\rgetAttributes\0(II)Ljava/util/List;\0:ru/bitel/bgbilling/modules/inet/radius/InetRadiusProcessor\0AGENT_REMOTE_ID\0JLru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;\0getAttribute\0>(II)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;\0AGENT_CIRCUIT_ID\0removeAttributes\0(II)V\01ru/bitel/bgbilling/kernel/network/dhcp/DhcpPacket\0getSubOption\06(B)Lru/bitel/bgbilling/kernel/network/dhcp/DhcpOption;\01ru/bitel/bgbilling/kernel/network/dhcp/DhcpOption\0value\0java/lang/System\0	arraycopy\0*(Ljava/lang/Object;ILjava/lang/Object;II)V\0setSubOption\0(B[B)V\0!\0\0A\0\0B\0C\0\n\0\0D\0E\0\0F\0\0\0\0G\0\0H\0E\0\0F\0\0\0\0I\0\0J\0E\0\0F\0\0\0\0K\0\0L\0E\0\0F\0\0\0\0M\0\0N\0O\0\0\0\0P\0E\0\0\0\0Q\0E\0\0\0\0R\0E\0\0\0\0S\0E\0\0\0\0T\0E\0\0\0\0\0U\0V\0\0W\0\0\0/\0\0\0\0\0*�\0*�\0*�\0�\0\0\0\0X\0\0\0\0\0\0\0\0\0(\0	\0)\0\0Y\0Z\0\0W\0\0\0�\0\0\0\0\0j*+-�\0*�\0�\0	�\0	�\0\n�\0*\r`�\0�\0�\0*�\0�\0*�\0�\0*a�\0�\0*�\0�\0�\0\0\0\0X\0\0\0*\0\n\0\0\09\0\0<\0\0=\0\0<\0$\0A\08\0B\0D\0C\0P\0G\0]\0H\0i\0I\0[\0\0\0\0\0\\\0\0]\0^\0\0W\0\0\0�\0\0\0\0\0x+*�\0\0��\0M,�\0,\Z�\0N+-�\0+*�\0`�\0N+*�\0a�\0:-�\0;�\06�\0Y�\0 -�\0!�\0\"#�\0\"�\0!�\0\"�\0$:�\0%:+�\0�\0\0\0\0X\0\0\0.\0\0\0\0Q\0\r\0R\0\0T\0\Z\0V\0\"\0Y\0.\0Z\0;\0\\\0D\0^\0h\0_\0o\0a\0w\0c\0_\0\0\0\0�\0\"\0`�\0T\0a\0a\0\0b\0f\0\0W\0\0\0�\0\0\0\0\0B�\0�\01,�\0&:�\0\'W�\0\r`�\0(W�\0):+�\0*�\0\r+,�\0+�\0*�\0\0\0\0X\0\0\0*\0\n\0\0\0o\0	\0q\0\0r\0\0t\0\0v\0%\0y\0,\0{\04\0|\07\0\0A\0�\0_\0\0\0\r\0	�\0\0g�\0	\0h\0\0\0\0i\0\0b\0j\0\0W\0\0\0�\0\0\0\0\0_6,�\0,\06		�\0O,�\0-\0�\0.:\n\n�\0&:�\0/�\0*�\0\'W�\0`�\0(W�\0):+�\0*�����\0\0\0\0X\0\0\0.\0\0\0\0�\0\0�\0\0�\0&\0�\01\0�\09\0�\0>\0�\0I\0�\0P\0�\0X\0�\0^\0�\0_\0\0\0\0�\0�\0=\0k\0g�\0�\0\0h\0\0\0\0l\0\0m\0^\0\0W\0\0B\0\0\0\0\0�*�\0�\0\0\0\0\0\0G\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0�\0U+*�\0\0ʶ\00M,�\0E*+,*�\0`*�\0�\01�\02�\0-+*�\0*�\0�\03M,�\0*+,*�\0*�\0`*�\0�\01�\04�\0*�\0�\0\0\0\0\0>\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0\0�\0E+*�\0\0ʶ\00M,�\05*+,�\05�\02�\0%+*�\0*�\0�\03M,�\0*+,*�\0�\05�\04�\0�\0\0\0\0X\0\0\0F\0\0\0\0�\0 \0�\0#\0�\0/\0�\03\0�\0K\0�\0X\0�\0\\\0�\0u\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0_\0\0\0\n\0 \')!\0\0n\0o\0\0W\0\0\06\0\0\0\0\0*+,-�\06*+�\07*+�\08�\0\0\0\0X\0\0\0\0\0\0\0�\0\0�\0\0�\0\0�\0[\0\0\0\0\0\\\0\0p\0o\0\0W\0\0\0/\0\0\0\0\0*+,-�\09,�\0:�\0\0\0\0X\0\0\0\0\0\0\0�\0\0�\0\0�\0[\0\0\0\0\0\\\0\0q\0r\0\0W\0\0\0i\0\0\0\0\02*,-�\0;�\0\0\0\0\0\0\0e\0\0\0g\0\0\0\Z\0\0\0\Z\0\0\0\Z�\0\r*,�\07*,�\08�\0\0\0\0X\0\0\0\Z\0\0\0\0	\r\0$\0\'\Z\0,\01 \0_\0\0\0\0$	\0[\0\0\0\0\0\\\0\0s\0t\0\0W\0\0\0�\0\0\0\0\0Q*�\02.�\0H+�\0<�\0=N+�\0<�\0=:�:�:-�\0>�\0>+�\0?+�\0?�\0N��\0\0\0K\0N\0@\0\0X\0\0\06\0\r\0\0(\0,\0-\0.\0$/\0)0\021\0=2\0D3\0K8\0N5\0O7\0P:\0_\0\0\0	\0�\0N\0u\0[\0\0\0\0\0\\\0\0v\0t\0\0W\0\0\0\0\0\0\0\0\0�\0\0\0\0X\0\0\0\0\0\0@\0[\0\0\0\0\0\\\0\0w\0\0\0\0x\0e\0\0\0\n\0\0c\0�\0d\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeClipsServiceActivator',1433856492000,'����\0\0\04\0\0\n\0\0\n\0\0\0\0\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\nExceptions\0\0\nSourceFile\0#SmartEdgeClipsServiceActivator.java\0Lru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeServiceActivator\0\0\0\n\0\0Qru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeClipsServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0java/lang/Exception\0	(ZIIZZZ)V\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\'\0\0\0\0\0*�\0�\0\0\0\0	\0\0\0\n\0\0\0\0\0\n\0\0\0\n\0\0\0\0\0\0*\0\0\0\0\0*+-�\0W�\0\0\0\0	\0\0\0\n\0\0\0\0%\0\0\'\0\0\0\0\0\0\r\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeDot1qProtocolHandler',1433856492000,'����\0\0\044\n\0L\0�\n\0L\0�\0�\n\0\0�\n\0\0�\0�\n\0\0�\n\0\0�\n\0\0�\n\0\0�\0�\0�	\0J\0�\n\0\0�\n\0�\0�\0�\n\0�\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\0�\n\0\0�\0�\n\0\0�\0�\n\0\0�\n\0\0�\n\0�\0�	\0�\0�\n\0�\0�	\0�\0�\n\0�\0�\n\0L\0�\n\0J\0�\n\0L\0�\n\0L\0�\n\0�\0�\n\0�\0�\n\0�\0�\0�\n\0+\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0J\0�\n\0I\0�\n\0�\0�\0\0\0\0����\n\0�\0�\0�\n\0�\0�\n\0�\0�\n\09\0�\0�\n\0�\0�	\0J\0�	\0�\0�\n\0�\0�\0�\0�\0�\0�\0�	\0D\0�\n\0I\0�\n\0�\0�\n\0I\0�\0�\0�\n\0�\0�\0�\0�\0�\0�\0logger\0Lorg/apache/log4j/Logger;\0access\0/Lru/bitel/bgbilling/modules/inet/access/Access;\0RuntimeVisibleAnnotations\0Ljavax/annotation/Resource;\0name\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)V\0\rStackMapTable\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\nExceptions\0processUsername\0:(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V\0preprocessAccessRequest\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0postprocessAccessRequest\0preprocessAccountingRequestImpl\0�(ILru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0beforeAuthentication#(Lru/bitel/bgbilling/kernel/container/managed/ServerContext;Lru/bitel/bgbilling/kernel/network/radius/RadiusListenerWorker;Lru/bitel/bgbilling/kernel/network/radius/RadiusSession;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V\0	Signature�(Lru/bitel/bgbilling/kernel/container/managed/ServerContext;Lru/bitel/bgbilling/kernel/network/radius/RadiusListenerWorker<Lru/bitel/bgbilling/modules/inet/radius/InetNas;>;Lru/bitel/bgbilling/kernel/network/radius/RadiusSession<Lru/bitel/bgbilling/modules/inet/radius/InetNas;Lru/bitel/bgbilling/modules/inet/radius/InetRadiusSessionParams;>;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V\0afterAuthorization\0addResponseAttributesZ(Lru/bitel/bgbilling/kernel/container/managed/ServerContext;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServType;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Ljava/lang/String;Ljava/util/Map;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;Ljava/util/Set;)Z\0��(Lru/bitel/bgbilling/kernel/container/managed/ServerContext;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServType;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;>;Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;Ljava/util/Set<Ljava/lang/Integer;>;)Z\0\rgetConnection\0C(I)Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0�\0�\0postprocessDhcpRequest\0i(Lru/bitel/bgbilling/kernel/network/dhcp/DhcpPacket;Lru/bitel/bgbilling/kernel/network/dhcp/DhcpPacket;)V\0<clinit>\0\nSourceFile\0\"SmartEdgeDot1qProtocolHandler.java\0W\0X\0[\0\\\09ru/bitel/bgbilling/kernel/container/managed/ServerContext\0W\0�\0[\0X\0<ru/bitel/bgbilling/kernel/container/resource/ResourceManager\0�\0�\0�\0X\0�\0X\0\"javax/naming/NameNotFoundException\0java/lang/Exception\0P\0Q\0�\0�\0�\0�\0�\09ru/bitel/bgbilling/kernel/network/radius/RadiusDictionary\0�\0�\0�\0.\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0java/lang/StringBuilder\0Agent device: \0�\0�\0, VLAN: \0�\0�\0�\0�\0�\0�\0�\0�\0j\0k\0h\0i\0l\0k\0m\0n	\n\0�\r\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute\0W\Z\0x\0y\0Nru/bitel/bgbilling/kernel/network/radius/RadiusAttribute$RadiusAttributeIpAddr\0RadiusAttributeIpAddr\0InnerClasses \0W!\0No inetServ address/net found\0�\0�\0R\0S\"#$%&\'\0�()*\0<ru/bitel/bgbilling/modules/inet/access/InetConnectionRuntime+,-\0�./0\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0Pru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeDot1qProtocolHandler12\0Kru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeProtocolHandler\0>ru/bitel/bgbilling/kernel/network/radius/RadiusProtocolHandler\0:ru/bitel/bgbilling/kernel/network/dhcp/DhcpProtocolHandler\0Aru/bitel/bgbilling/modules/inet/radius/RadiusAccessRequestHandler\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/lang/Throwable\0[B\0java/util/List\0+(Lru/bitel/bgbilling/server/util/Setup;II)V\0inject\0T(Lru/bitel/bgbilling/kernel/container/managed/ContainerContext;Ljava/lang/Object;I)V\0commit\0destroy\0\ngetMessage\0()Ljava/lang/String;\0org/apache/log4j/Logger\0error\0*(Ljava/lang/Object;Ljava/lang/Throwable;)V\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0getStringAttribute\0((IILjava/lang/String;)Ljava/lang/String;\0java/lang/String\0lastIndexOf\0(Ljava/lang/String;)I\0(Ljava/lang/String;I)I\0	substring\0(I)Ljava/lang/String;\0ru/bitel/common/Utils\0parseInt\0(II)Ljava/lang/String;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0toString\0debug\0(Ljava/lang/Object;)V\0:ru/bitel/bgbilling/modules/inet/radius/InetRadiusProcessor\0AGENT_REMOTE_ID3\0RadiusPacketOption\0JLru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;\0	setOption\0_(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;Ljava/lang/Object;)V\0VLAN_ID\0java/lang/Integer\0valueOf\0(I)Ljava/lang/Integer;\0getByteAttribute\0(II[B)[B\0\Zru/bitel/common/inet/IpNet\0	maskToInt\0([B)I\0([BI)Ljava/lang/String;\0(IIILjava/lang/Object;)V\0setAttribute\0=(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;)V\0removeAttributes\0(II)V\0<ru/bitel/bgbilling/modules/inet/api/common/bean/InetServType\0getAddressType\0()I\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0getAddressFrom\0()[B\0getAddressTo\0getId\0getInetAddressBytes\0newInstance\0\"([B[B)Lru/bitel/common/inet/IpNet;\0getMask\0	getSubnet\0convertBytesToInt\0(III)V\0-ru/bitel/bgbilling/modules/inet/access/Access\0connectionManager\0>Lru/bitel/bgbilling/modules/inet/access/InetConnectionManager;\0<ru/bitel/bgbilling/modules/inet/access/InetConnectionManager\0getByServId\0%(Ljava/lang/Integer;)Ljava/util/List;\0size\0get\0(I)Ljava/lang/Object;\0\nconnection\0@Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0getUsername\0\risBlankString\0(Ljava/lang/String;)Z\0getConnectionStatus\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0Hru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption\0!\0J\0L\0\0M\0N\0O\0\0\Z\0P\0Q\0\0\0\0R\0S\0\0T\0\0\0\0\0U\0\0Vs\0R\0\0\0W\0X\0\0Y\0\0\0\0\0\0\0\0*�\0�\0\0\0\0Z\0\0\0\0\0\0\0(\0\0[\0\\\0\0Y\0\0\0\0	\0\0\0g*+-�\0�\0Y+�\0:�\0�\0Y�\0:*�\0�\0	�\0\n�\0.:�\0\n�\0$:�\0\r�\0�\0�\0\n�\0\r:�\0\n��\0\0\03\0;\0\0\03\0E\0\0\03\0\\\0\0\0;\0=\0\\\0\0\0E\0T\0\\\0\0\0\\\0^\0\\\0\0\0\0Z\0\0\0F\0\0\0\07\0\0;\0\0<\0\0?\0%\0@\0.\0B\03\0L\08\0M\0;\0D\0=\0L\0B\0M\0E\0F\0G\0H\0T\0L\0Y\0M\0\\\0L\0f\0N\0]\0\0\0(\0�\0;\0\0^\0_\0`\0a\0b\0c\0\0dI\0eV\0f	\0g\0\0\0\0\0\0\0h\0i\0\0Y\0\0\0�\0\0\0\0\0i+�\0M,�\0>,d�\06,`�\0�\06,�\0:�\0\r�\0Y�\0\Z�\0�\0�\0�\0�\0�\0+�\0 �\0!+�\0\"�\0#�\0!�\0\0\0\0Z\0\0\0&\0	\0\0\0V\0\0X\0\0Y\0\Z\0[\0&\0]\0/\0_\0S\0a\0\\\0b\0h\0c\0\0j\0k\0\0Y\0\0\0-\0\0\0\0\0\r*+,-�\0$*+�\0%�\0\0\0\0Z\0\0\0\0\0\0\0i\0\0k\0\0l\0g\0\0\0\0\0\0\0l\0k\0\0Y\0\0\0$\0\0\0\0\0*+,-�\0&�\0\0\0\0Z\0\0\0\n\0\0\0\0r\0\0s\0g\0\0\0\0\0\0\0m\0n\0\0Y\0\0\0�\0\0	\0\0\0�*,-�\0\'�\0\0\0\0\"\0\0\0e\0\0\0g\0\0\0\Z\0\0\0\Z\0\0\0\Z*,�\0%�\0*,�\0%,�\0(:,	�\0(: �\0)d6�\0*:,�\0+Y�\0,�\0-,�\0.,	�\0.,�\0+Y�\0,�\0-�\0\0\0\0Z\0\0\0:\0\0\0\0z\0	\0|\0$\0�\0)\0�\0,\0�\01\0�\0;\0�\0E\0�\0O\0�\0X\0�\0i\0�\0p\0�\0w\0�\0�\0�\0]\0\0\0\0$\0g\0\0\0\0\0\0\0o\0p\0\0Y\0\0\0\0\0\0\0\0\0�\0\0\0\0Z\0\0\0\0\0\0\0�\0g\0\0\0\0\0\0q\0\0\0\0r\0\0s\0p\0\0Y\0\0\0\0\0\0\0\0\0�\0\0\0\0Z\0\0\0\0\0\0\0�\0g\0\0\0\0\0\0q\0\0\0\0r\0\0t\0u\0\0Y\0\0U\0\0\r\0\0\0�:	:\n,�\0/�\0\0\0\0S\0\0\0\0\0\0\0\0\07\0\0\0\Z\0\0\0\Z-�\00:	-�\01:\n	�\0\n�\0;	:\n�\04*-�\02�\03:�\0%�\04Y:\n:	�\0-�\00:	-�\01:\n\n�\0	:\n	�\0O\n�\0J	\n�\05:\06 �\08dy\06�6�\09Y�\0:�\0;�\0<�\0-�\09Y	�\0<�\0-�\0�\0\r=�\0>�\0\0\0\0Z\0\0\0^\0\0\0\0�\0\0�\0\0�\0$\0�\0*\0�\00\0�\05\0�\0:\0�\0A\0�\0K\0�\0P\0�\0]\0�\0c\0�\0i\0�\0n\0�\0r\0�\0|\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0]\0\0\0\0�\0$\0v\0v�\0P\0g\0\0\0\0\0\0q\0\0\0\0w\0\0x\0y\0\0Y\0\0\0�\0\0\0\0\0Z*�\0?�\0@�\0#�\0AM,�\0H>,�\0B\06�\08,�\0C\0�\0D�\0E:�\0F�\0G�\0�\0H�\0�\0H�\0������\0\0\0\0Z\0\0\0&\0	\0\0\0�\0\0�\0\0�\0#\0�\02\0�\0?\0�\0O\0\0R\0�\0X\0]\0\0\0\0�\0\0z�\01\0{�\0�\0\0\0|\0}\0\0Y\0\0\0\0\0\0\0\0\0�\0\0\0\0Z\0\0\0\0\0\0\0g\0\0\0\0\0\0\0~\0X\0\0Y\0\0\0!\0\0\0\0\0\0	J�\0K�\0\r�\0\0\0\0Z\0\0\0\0\0\0\0,\0\0\0\0\0\0�\0�\0\0\0\0\09\0+\0�\0	\0�\0�\0\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeDot1qServiceActivator',1433856492000,'����\0\0\04\0�\n\00\0R\n\00\0S	\0.\0T\0A\n\0U\0V\n\0W\0X\n\0Y\0Z	\0.\0[\0\\\n\0	\0R\0]\n\0	\0^\n\0	\0_\0`\n\0	\0a\n\0	\0b\n\00\0c\0D\n\00\0d\n\00\0e\0F\n\0U\0f\n\0.\0g\n\00\0h\n\0W\0i\n\0.\0j\0k\n\0W\0l\n\0!\0m\0n\0o\0p\0q\0p\0r\0s\n\0!\0t\n\0.\0u	\0.\0v	\0w\0x\n\0y\0z\n\0{\0|\0}	\0(\0~\n\0Y\0	\0.\0�	\0.\0�\n\00\0�\0�\n\0U\0�\0�\0�\0logger\0Lorg/apache/log4j/Logger;\0access\0/Lru/bitel/bgbilling/modules/inet/access/Access;\0RuntimeVisibleAnnotations\0Ljavax/annotation/Resource;\0name\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\nExceptions\0�\0connectionModify\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0\rStackMapTable\0connectionClose\0onAccountingStart\0onAccountingStop\0tryCloseDOT1QConnection\0D(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Z\0�\0�\0�\0haveConnections\0D(ILru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)Z\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)Z\0<clinit>\0\nSourceFile\0#SmartEdgeDot1qServiceActivator.java\09\0:\0=\0>\02\03\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0java/lang/StringBuilder\0Skip \0�\0�\0�\0�\0 \0�\0�\0�\0�\0A\0B\0D\0B\0E\0B\0�\0�\0G\0H\0F\0B\0�\0�\0L\0M\0Have DHCP connections\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0�\0�\0D\0N\04\05\0�\0�\0�\0�\0�\0�\0�\0�\0�\0<ru/bitel/bgbilling/modules/inet/access/InetConnectionRuntime\0�\0�\0�\0�\0�\0�\0�\0�\0D\0�\0Qru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeDot1qServiceActivator\0�\0�\0Lru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0java/lang/Exception\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0java/util/List\0java/util/Iterator\0org/apache/log4j/Logger\0debug\0(Ljava/lang/Object;)V\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0getDeviceId\0()I\0deviceId\0I\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0info\0\rgetInetServId\0getNewInetServ\0<()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;\0getChildren\0()Ljava/util/List;\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0()Ljava/lang/Object;\0getId\0-ru/bitel/bgbilling/modules/inet/access/Access\0connectionManager\0>Lru/bitel/bgbilling/modules/inet/access/InetConnectionManager;\0java/lang/Integer\0valueOf\0(I)Ljava/lang/Integer;\0<ru/bitel/bgbilling/modules/inet/access/InetConnectionManager\0getByServId\0%(Ljava/lang/Integer;)Ljava/util/List;\0\nconnection\0@Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0()J\0	closeMode\0disableServicesOnClose\0Z\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;IZ)Ljava/lang/Object;\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0.\00\0\01\0\0\Z\02\03\0\0\0\04\05\0\06\0\0\0\0\07\0\08s\04\0\n\0\09\0:\0\0;\0\0\0!\0\0\0\0\0*�\0�\0\0\0\0<\0\0\0\n\0\0\0\0#\0\0$\0\0=\0>\0\0;\0\0\0*\0\0\0\0\0*+-�\0W�\0\0\0\0<\0\0\0\n\0\0\0\0-\0\0/\0?\0\0\0\0\0@\0\0A\0B\0\0;\0\0\0y\0\0\0\0\0F�\0�\0+�\0�\0*�\0�\0-�\0�\0	Y�\0\n�\0+�\0�\0\r�\0*�\0�\0�\0�\0�*+�\0�\0\0\0\0<\0\0\0\0\0\0\09\0\0;\0\0=\0>\0>\0@\0A\0C\0\0\0\0�\0@\0?\0\0\0\0\0@\0\0D\0B\0\0;\0\0\0y\0\0\0\0\0F�\0�\0+�\0�\0*�\0�\0-�\0�\0	Y�\0\n�\0+�\0�\0\r�\0*�\0�\0�\0�\0�*+�\0�\0\0\0\0<\0\0\0\0\0\0\0K\0\0M\0\0O\0>\0P\0@\0S\0C\0\0\0\0�\0@\0?\0\0\0\0\0@\0\0E\0B\0\0;\0\0\0\0\0\0\0\0*+�\0�\0\0\0\0<\0\0\0\0\0\0\0]\0?\0\0\0\0\0@\0\0F\0B\0\0;\0\0\04\0\0\0\0\0�\0�\0*+�\0W*+�\0�\0\0\0\0<\0\0\0\0\0\0\0g\0\0i\0\0k\0?\0\0\0\0\0@\0\0G\0H\0\0;\0\0A\0\0\0\0\0�+�\0M,�\0*�\0�\0�*+�\0,�\0\Z�\0\r�\0�\0�+�\0�\0N-�\0;-�\0\0:�\0\0�\0)�\0 \0�\0!:*�\0\",�\0\Z�\0\r�\0�\0����*++�\0,�\0#�\0�-�\04-�\0\0:�\0\0�\0\"�\0 \0�\0!:*+�\0\",�\0#�\0�����\0\0\0\0<\0\0\0V\0\0\0\0q\0\0s\0\0u\0\0x\0\0z\0&\0{\0(\0~\00\0\04\0�\0R\0�\0_\0�\0g\0�\0i\0�\0l\0�\0y\0�\0{\0�\0\0�\0�\0�\0�\0�\0�\0�\0�\0�\0C\0\0\0!\0	�\0\0I�\0\0J\0K,�\0�\0\0K%�\0\0?\0\0\0\0\0@\0\0L\0M\0\0;\0\0\0�\0\0\0\0\0Z*�\0$�\0%�\0&�\0\'N-�\0�-�\0\0:�\0\0�\04�\0 \0�\0(:�\0):�\0*,�\0*��\0�\0*�\0�\0�����\0\0\0\0<\0\0\0&\0	\0\0\0�\0\0�\0\0�\0\0�\03\0�\0:\0�\0S\0�\0U\0�\0X\0�\0C\0\0\0\0�\0\0J�\0\0K7�\0\0\0D\0N\0\0;\0\0\0�\0\0\0\0\0m*�\0$�\0%�\0&�\0\':�\0��\0\0:�\0\0�\0D�\0 \0�\0(:�\0):�\0*-�\0*��\0!�\0*�\0�\0*+*�\0+*�\0,�\0-W�����\0\0\0\0<\0\0\0*\0\n\0\0\0�\0\0�\0\0�\0\0�\06\0�\0=\0�\0V\0�\0f\0�\0h\0�\0k\0�\0C\0\0\0\0�\0\0J�\0\0K�\0G�\0\0?\0\0\0\0\0@\0\0O\0:\0\0;\0\0\0!\0\0\0\0\0\0	.�\0/�\0�\0\0\0\0<\0\0\0\0\0\0\0\0\0P\0\0\0\0Q'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeProtocolHandler',1433856492000,'����\0\0\04\0�\n\0*\0F\n\0*\0G\0H\n\0I\0J	\0(\0K\0L	\0(\0M\0N\n\0I\0O	\0(\0P\n\0*\0Q\0R\n\0S\0T\n\0U\0V\n\0S\0W\n\0(\0X\n\0(\0Y\n\0U\0Z	\0(\0[	\0(\0\\\0]\n\0\0^\0_\n\0\0`\0a\n\0\0b\n\0c\0d\n\0U\0e	\0f\0g\n\0U\0h	\0f\0i\n\0j\0k\n\0l\0m\0n	\0f\0o\0p\n\0q\0r\0s\n\0(\0t\0u\n\0c\0v\0w\0x\0y\0logger\0Lorg/apache/log4j/Logger;\0parentAcctSessionIdType\0I\0serviceNameType\0disableServiceName\0Ljava/lang/String;\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)V\0\nExceptions\0z\0preprocessAccessRequest\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0preprocessAccountingRequest\0preprocessAccountingRequestImpl\0�(ILru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0\rStackMapTable\0{\0<clinit>\0\nSourceFile\0SmartEdgeProtocolHandler.java\04\0|\08\09\0radius.parentAcctSessionId.type\0}\0~\0\0/\00\0radius.serviceName.type\01\00\0\Zradius.serviceName.disable\0�\0�\02\03\0<\0=\09ru/bitel/bgbilling/kernel/network/radius/RadiusDictionary\0�\0�\0�\0�\0�\0�\0�\0�\0?\0@\0�\0�\0�\0�\0�\00\0-\0.\0java/lang/StringBuilder\04\05\0parentAcctSessionId=\0�\0�\0, serviceName=\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0{\0�\0�\0-State is disable (from start disable service)\0�\0�\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0�\0�\0�\0+State is enable (from stop disable service)\0�\0�\0Kru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeProtocolHandler\0�\0�\0Oru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusProtocolHandler\0>ru/bitel/bgbilling/kernel/network/radius/RadiusProtocolHandler\0:ru/bitel/bgbilling/kernel/network/dhcp/DhcpProtocolHandler\0java/lang/Exception\0java/lang/String\0(I)V\0ru/bitel/common/ParameterMap\0getInt\0(Ljava/lang/String;I)I\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0java/lang/Integer\0valueOf\0(I)Ljava/lang/Integer;\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0getIntAttribute\0*(IILjava/lang/Integer;)Ljava/lang/Integer;\0intValue\0()I\0\rsetMacAddress\0:(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)V\0getStringAttribute\0((IILjava/lang/String;)Ljava/lang/String;\0radiusVendor\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0debug\0(Ljava/lang/Object;)V\0setIntAttribute\0(III)V\0:ru/bitel/bgbilling/modules/inet/radius/InetRadiusProcessor\0PARENT_ACCT_SESSION_ID\0�\0RadiusPacketOption\0InnerClasses\0JLru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;\0	setOption\0_(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption;Ljava/lang/Object;)V\0SERVICE_NAME\0ru/bitel/common/Utils\0notBlankString\0(Ljava/lang/String;)Z\0equals\0(Ljava/lang/Object;)Z\0DEVICE_STATE\0java/lang/Short\0(S)Ljava/lang/Short;\0setStateFromAttributes\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0Hru/bitel/bgbilling/kernel/network/radius/RadiusPacket$RadiusPacketOption\0!\0(\0*\0\0+\0,\0\0\Z\0-\0.\0\0\0\0/\00\0\0\0\01\00\0\0\0\02\03\0\0\0\0\04\05\0\06\0\0\0$\0\0\0\0\0*	0�\0�\0\0\0\07\0\0\0\n\0\0\0\0*\0\0+\0\08\09\0\06\0\0\0[\0\0\0\0\03*+-�\0*2�\0�\0*\0��\0�\0*�\0	�\0\n�\0\0\0\07\0\0\0\0\0\0\01\0\03\0\04\0&\06\02\07\0:\0\0\0\0\0;\0\0<\0=\0\06\0\0\0$\0\0\0\0\0*+,-�\0�\0\0\0\07\0\0\0\n\0\0\0\0=\0\0>\0:\0\0\0\0\0;\0\0>\0=\0\06\0\0\0:\0\0\0\0\0\Z+(�\0\r�\0�\06*+,-�\0�\0\0\0\07\0\0\0\0\0\0\0D\0\0E\0\0F\0:\0\0\0\0\0;\0\0?\0@\0\06\0\0@\0\0\0\0\0�*,�\0�\0\0\0\0�\0\0\0e\0\0\0g\0\0\0\Z\0\0\0\Z\0\0\0\Z,*�\0�\0:,*�\0*�\0�\0:�\0�\0Y�\0�\0�\0�\0�\0�\0\Z�\0,(dd�\0,�\0�\0,�\0�\0*�\0\n�\0 �\0D*�\0\n�\0!�\08e�\0	g�\0�\0\"�\0,�\0#�\0%�\0�\0�\0&�\0,�\0#�\0%�\0�\0*,�\0\'�\0\0\0\07\0\0\0F\0\0\0\0L\0\0N\0 \0V\0,\0X\0;\0Z\0_\0]\0j\0_\0s\0a\0|\0e\0�\0h\0�\0j\0�\0k\0�\0o\0�\0p\0�\0z\0�\0\0�\0�\0A\0\0\0\0 �\0}\0B\0B�\0\0:\0\0\0\0\0;\0\0C\05\0\06\0\0\0!\0\0\0\0\0\0	(�\0)�\0�\0\0\0\07\0\0\0\0\0\0\0\0\0D\0\0\0\0E\0�\0\0\0\n\0\0�\0U\0�\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeServiceActivator',1433856492000,'����\0\0\04�\0�\n\0\0�\0�\0�\n\0�\0�\0�\n\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�	\0\0�\n\0�\0�\0�\n\0�\0�	\0\0�	\0\0�\n\0�\0�\0�\0\0�\0�\0\0�\0�\0�\0�\0�\0�\0�\0�\0\0�\0\n\0\0\n\0!\0�\n\0$\0�\n\0J\n\0!	\0\n	\0\n\0*\0�\r\n\0*\n\0*\n\0*\n	\0	\0	\0\Z	\0	\0	\0 !\n\0�\"\n\0#	\0$%&\'\n()*+\n(,-\n\0J./0\n\0M\0�\n12	\03\0�45\n\0*6\n\0�78\n9:;\n9<=\n9>?\n9@\n9A	\0B\n\0C	\0D\n9E\n\0F\n\0G\n\0H\n\0I\0�	\0J\nKL\n\0M\nNO\n\0$P\nNQR\nKS	\0T\n9U\n\0�VW\nKXY\0\n1Z[\n\0w\0�Y\0�\n(\\\0�/\0�]	\0^_`a\nb\ncdf\n\0�h\nci\nKjkl\nmno\0logger\0Lorg/apache/log4j/Logger;\0REDBACK_VENDOR\0I\0\rConstantValue\0\0	0\0SERVICE_NAME\0\0\0�\0DEACTIVATE_SERVICE_NAME\0\0\0�\0inetOptionSeService\0Ljava/util/Map;\0	Signature\06Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;\0CLOSE_MODE_NONE\0\0\0\0CLOSE_MODE_POD\0\0\0\0	closeMode\0closeEnableMode\0closeDisableMode\0coaOnEnable\0Z\0disableServicesOnClose\0closeRemoveFromKeyMap\0serviceCloseAttributes\0=Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0defaultCloseMode\0defaultCloseEnableMode\0defaultCoaOnEnable\0defaultCloseRemoveFromKeyMap\0defaultDisableServicesOnClose\0disableServiceOptions\0Ljava/util/Set;\0$Ljava/util/Set<Ljava/lang/Integer;>;\0\noptionMode\0<init>\0()V\0Code\0LineNumberTable\0(Z)V\0	(ZIIZZZ)V\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0�pqrs\0�t\0�u-\0\nExceptionsv\0destroy\0()Ljava/lang/Object;\0connectionModify\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;wxy\0optionsToServiceSet\0\'(Ljava/util/Collection;)Ljava/util/Set;\0P(Ljava/util/Collection<Ljava/lang/Integer;>;)Ljava/util/Set<Ljava/lang/String;>;\0sendCommands\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;z{\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Collection<Ljava/lang/Integer;>;Ljava/util/Collection<Ljava/lang/Integer;>;)Ljava/lang/Object;\0connectionDisable\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)Ljava/lang/Object;\0connectionClose\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;IZ)Ljava/lang/Object;|\0<clinit>\0\nSourceFile\0SmartEdgeServiceActivator.java\0Lru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeServiceActivator\0�\0�\0sa.radius.option.\0Acct-Session-Id\0�}\0java/util/HashMap\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\rsa.optionModes~\0�\0������\0default��\0\rjava/util/Map��x��t���\0�\0java/util/Map$Entry\0Entry\0InnerClasses�\0�\0;ru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet��u���\0�\0java/lang/Integer��\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute������\0�\0�\0java/lang/StringBuilder\0\rInet option: ����\0 => SE service: �����\0sa.radius.connection.close.mode\0�\0�\0%sa.radius.connection.close.enableMode\0�\0�\0&sa.radius.connection.close.disableMode\0�\0�\0!sa.radius.connection.coa.onEnable\0�\0�\0+sa.radius.connection.close.removeFromKeyMap\0�\0�\0*sa.radius.connection.close.disableServices\0�\0�\0!sa.radius.service.closeAttributes\0\0����\0�\0�\0close.attributes\0%Deactivate-Service-Name:1=RSE-SVC-EXT\0#sa.radius.service.disable.optionIds���\0sa.radius.service.disable\0\Zradius.serviceName.disable��\0java/lang/String����\0java/util/LinkedHashMap���\0�\0���\0Disable options: ��\0�\0�\0Connection modify: oldState: z��\0; newState: ��\0; oldOptionSet: ��\0; newOptionSet: �����\0�\0�\0��\0��\0�\0�\0�\0�\0�\0�\0����������y��\0����\0\ZSend close services CoA: \n���\0�����\0Send enable services CoA: \n��{��\0java/util/HashSet��\0Connection disable�\0�\0Send CoA lock: \n\0Connection close mode \0Remove connection from key map.������\0Rru/bitel/bgbilling/modules/inet/access/InetConnectionManager$ConnectionRemoveEvent\0ConnectionRemoveEvent\0������\0Send PoD: \n\0Connection close��\0Pru/bitel/bgbilling/modules/inet/dyn/device/radius/AbstractRadiusServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/util/Iterator\0java/util/List\0java/lang/Exception\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0\rjava/util/Set\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0java/util/Collection\0java/lang/Object\0)(Ljava/lang/String;ZLjava/lang/String;Z)V\0getInt\0(Ljava/lang/String;I)I\0optionRadiusAttributesMap\0ELru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap;\0Cru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSetRealmMap\0getRealmMap\0()Ljava/util/Map;\0get\0&(Ljava/lang/Object;)Ljava/lang/Object;\0entrySet\0()Ljava/util/Set;\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0getValue\0\rgetAttributes\0(II)Ljava/util/List;\0size\0()I\0getKey\0intValue\0valueOf\0&(Ljava/lang/Object;)Ljava/lang/String;\0(I)Ljava/lang/Integer;\0put\08(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0newRadiusAttributeSet\0Q(Ljava/lang/String;)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0ru/bitel/common/Utils\0\rtoIntegerList\0$(Ljava/lang/String;)Ljava/util/List;\0toList\0equals\0(Ljava/lang/Object;)Z\0add\0java/util/Collections\0\rnewSetFromMap\0 (Ljava/util/Map;)Ljava/util/Set;\0addAll\0(Ljava/util/Collection;)Z\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0getOldState\0getNewState\0\rgetOldOptions\0\rgetNewOptions\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0withoutBreak\0needConnectionStateModify\0\ZsetConnectionStateModified\0isEmpty\0radiusClient\07Lru/bitel/bgbilling/kernel/network/radius/RadiusClient;\05ru/bitel/bgbilling/kernel/network/radius/RadiusClient\0createModifyRequest\09()Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;\0prepareRequest\0z(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)V\0\raddAttributes\0@(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;)V\0(IIILjava/lang/Object;)V\0addAttribute\0=(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;)V\0send\0:(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)Z\0enableRadiusAttributes\0getRealm\0d(Ljava/lang/String;Ljava/lang/Integer;)Lru/bitel/bgbilling/kernel/network/radius/RadiusAttributeSet;\0	sendAsync\0V(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;)Ljava/util/concurrent/Future;\0emptySet\0\risBlankString\0(Ljava/lang/String;)Z\0disableRadiusAttributes\0debug\0.ru/bitel/bgbilling/kernel/event/EventProcessor\0getInstance\02()Lru/bitel/bgbilling/kernel/event/EventProcessor;\0<ru/bitel/bgbilling/modules/inet/access/InetConnectionManager\0C(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)V\0request\0Z(Lru/bitel/bgbilling/kernel/event/QueueEvent;)Lru/bitel/bgbilling/kernel/event/QueueEvent;\0createDisconnectRequest\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0\0�\0\0�\0\0\Z\0�\0�\0\0\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0\0\0�\0�\0\0�\0\0\0\0�\0\0�\0�\0\0\0\0\0�\0�\0\0�\0\0\0\'\0\0\0\0\0*�\0�\0\0\0\0�\0\0\0\n\0\0\0\0�\0\n\0�\0\0�\0�\0\0�\0\0\0\'\0\0\0\0\0*�\0�\0\0\0\0�\0\0\0\n\0\0\0\0�\0\n\0�\0\0�\0�\0\0�\0\0\0f\0\0\0\0\02*�\0*�\0Y�\0�\0*�\0	*�\0\n*�\0*�\0*�\0\r�\0\0\0\0�\0\0\0\"\0\0\0\0�\0\n\0,\0\0�\0\Z\0�\0\0�\0%\0�\0+\0�\01\0�\0\0�\0�\0\0�\0\0\0\0\0\0�*+-�\0W*�\0�\0�\0�\0*�\0�\0�*�\0�\0�\0\0�\0:�\0\0�\0\0:�\0\0�\0��\0\Z\0�\0:�\0\0�\0	0\0��\0:		���	�\0\0�\0����\0 \0�\0!�\0\"6\n	�\0#\0:�\0\0�\0Q�\0\Z\0�\0$:�\0%�\0&:\r*�\0\n�\0\'\r�\0(\0W�\0)�\0*Y�\0+,�\0-\n�\0./�\0-\r�\0-�\00�\01�����S*2*�\0	�\0�\03*4*�\0\n�\0�\05*6*�\03�\0�\07*8*�\0�\0�\0�\0�\0�\0�\09*:*�\0\r�\0�\0�\0�\0�\0�\0;*<*�\0�\0�\0�\0�\0�\0�\0=*�\0�\0*>?�\0@�\0A�\0B�\0\Z*>CD�\0@�\0@�\0A�\0B*�\0�\0�E?�\0@�\0F:�\0\0�\0�GH?�\0@�\0@�\0I:�\0\0�\0o�\0#\0:�\0\0�\0\\�\0\Z\0�\0J:	*�\0�\0\0�\0\0:\n\n�\0\0�\03\n�\0\Z\0�\0:	�\0\0�\0K�\0�\0 \0�\0L\0W�����ɧ���\0\0�\0 *�\0MY�\0N�\0O�\0P*�\0P�\0Q\0W�\0*�\0P�\0)�\0*Y�\0+R�\0-�\0S�\00�\01�\0\0\0\0�\0\0\0�\0*\0\0\0�\0\0�\0 \0�\0\'\0�\0:\0�\0^\0�\0s\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�%\0�D\0�c\0��\0��\0��\0��\0��\0��\0��\0��\0��\0�\0�6\0�E\0�T\0�W\0�Z\0�]\0�g\0�u\0����	\0�\0\0�\0\\\0��\0\0\0\0�\0�\0�\0�\0�\0\0��\0*\0�\0��\0<\0�\0��\0\0��\0W\0\0�\0�\0�\0�\0�\0�\0�\0\0�\0�\0<\0\0�\0�\0�\0�\0�\0\0�\0�\0��\0\0\0\0�\0�\0�\0�\0�\0\0�\0�\0�I\0��\0\0\0\0�\0�\0�\0�\0�\0\0��\0\0\0�\0�\0�\0�\0�\0\0�\0�\0��\0\0\0\0�\0�\0�\0�\0�\0\0�\0�\0�I\0��\0\0\0\0�\0�\0�\0�\0�\0\0��\0\0\0�\0�\0�\0�\0�\0\0�\0�\0��\0\0\0\0�\0�\0�\0�\0�\0\0�\0�\0�I\0��\0\0\0\0�\0�\0�\0�\0�\0\0��\0F\0�\0�\0��\0%\0�\0�6�\0�\0&�\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0#\0\0\0\0\0*�\0TW�\0\0\0\0�\0\0\0\n\0\0\0\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0�\0\0	\0\0в\0)�\0*Y�\0+U�\0-+�\0V�\0.W�\0-+�\0X�\0.Y�\0-+�\0Z�\0S[�\0-+�\0\\�\0S�\00�\01+�\0]M+�\0X�\0,*�\0^�\0*+,*�\07*�\0=�\0_�*�\0`�\0+�\0a*+,�\0b�+�\0V�\0A*�\0^�\0*+,*�\05�\0_N*�\09�\0-�*�\0`�\0+�\0a*�\0�\0*+,*�\0P+�\0\\�\0c�*+�\0Z�\0dN*�\0B�\0e�\0-�\0f\0�\0v*�\0g�\0h:*,�\0i*�\0B�\0j-�\0\0:�\0\0�\0\'�\0\Z\0�\0J:�\0$Y	0\0��\0k�\0l��ղ\0)�\0*Y�\0+m�\0-�\0S�\00�\01*�\0g�\0nW*�\0g�\0h:*,�\0i+�\0V�\0*�\0o�\0j+�\0p:+�\0\\�\0\0:�\0\0�\0+�\0\Z\0�\0!:*�\0�\0q:�\0\n�\0j��Ѳ\0)�\0*Y�\0+r�\0-�\0S�\00�\01*�\0g�\0s�\0\0\0\0�\0\0\0�\0\'\0\0\0@\0E!\0L&\0S(\0b-\0i/\0n3\0u7\0|<\0�>\0�B\0�D\0�J\0�L\0�O\0�Q\0�U\0�X\0�Z\0�[\0�\\\0�^\r`\"a%c?eIiRjYn`pisoy�{�|�~������\0�\0\0\05\0�\0b\0�\"�\0\0��\0 \0�\0��\0-�\0#�\0\0��\0\0�\0�.�\0\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0p+�\0+�\0t\0�\0*�\0�\0*�\0�\0u\0�\0�\0v��\0wY�\0xM+�\0y\0N-�\0\0�\05-�\0\Z\0�\0!:*�\0�\0\0�\0J:�\0z�\0���,�\0{\0W���,�\0\0\0\0�\0\0\0*\0\n\0\0�\0 �\0$�\0,�\0G�\0W�\0_�\0b�\0k�\0n�\0�\0\0\0\0 �\0\0�\0��\0.\0�\0��\0\0�\0\0\0\0�\0\0�\0�\0\0�\0\0�\0\0\0\0\Z�\0)|�\01*-�\0d:�\0f\0�\0q*�\0g�\0h:*,�\0i*-�\0d�\0\0:�\0\0�\0\'�\0\Z\0�\0J:�\0$Y	0\0��\0k�\0l��ղ\0)�\0*Y�\0+m�\0-�\0S�\00�\01*�\0g�\0nW�\0��\0t\0�\0�*�\0g�\0h:*,�\0i+�\0p:6�\0y\0:		�\0\0�\0.	�\0\Z\0�\0!:\n*�\0\n�\0q:�\0\r6�\0j����\0��\0)�\0*Y�\0+r�\0-�\0S�\00�\01*�\0g�\0s��\0\0\0\0�\0\0\0j\0\Z\0\0�\0�\0�\0�\0\"�\0)�\0K�\0`�\0c�\0}�\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0����\0�\0\0\0?\0�\05\0�\0�\0��\0-�\0#�\00\0\n\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\01�\0�\0#\0�\0\0\0\0\0�\0�\0\0\0\0�\0\0�\0�\0\0�\0\0\0�\0\0\0\0\0V�\0)}�\01*�\0g�\0hN*-,�\0i*�\0�\0*+,+�\0Z*�\0P�\0c�-*�\0~�\0j�\0)�\0*Y�\0+�\0--�\0S�\00�\01*�\0g-�\0s�\0\0\0\0�\0\0\0\"\0\0\0�\0�\0�\0�\0�\0,�\04�\0M�\0�\0\0\0\0�\0,\0�\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0\0\0\0\0��\0)�\0*Y�\0+��\0-�\0.�\00�\01*�\0;�\0\Z�\0)��\0��\0��\0�Y,�\0��\0�W�\0*+,�\0b:�\0:�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0;*�\0g�\0�:*,�\0i�\0)�\0*Y�\0+��\0-�\0S�\00�\01*�\0g�\0s:�\0�\0\0\0\0�\0\0\0>\0\0\0�\0\0\0 \0(\07\0<	\0G\r\0J\0d\0g\0p\0w\0�\0�!\0�%\0�\0\0\0\r\07�\0\0�7\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0<\0\0\0\0\0�\0)��\01+�\0]M*+,*�\03*�\0=�\0_�\0\0\0\0�\0\0\0\0\0\00\02\0\r4\0�\0\0\0\0\0�\0\0�\0�\0\0�\0\0\0!\0\0\0\0\0\0	�\0��\0)�\0\0\0\0�\0\0\0\0\0\0\0\"\0\0�\0\0\0\0�\0�\0\0\0\0\0\0\0�	\0�eg\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeStaticClipsProtocolHandler',1433856492000,'����\0\0\04\0n\n\0\00\n\0\01\02\n\03\04\n\05\06\n\05\07\09\n\0<\0=\n\0\0>\n\03\0?\0@	\0\0A\n\0B\0C\0D\n\0\00\0E\n\0\0F\0G\n\0\0H\n\0\0I\n\0B\0J\n\0\0K\0L\n\0B\0M\0N\0O\0P\0logger\0Lorg/apache/log4j/Logger;\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)V\0\nExceptions\0postprocessAccessRequest\0�(Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/bgbilling/kernel/network/radius/RadiusPacket;Lru/bitel/common/sql/ConnectionSet;)V\0\rStackMapTable\0L\0Q\0R\0S\0@\0<clinit>\0\nSourceFile\0(SmartEdgeStaticClipsProtocolHandler.java\0\0\0\"\0#\09ru/bitel/bgbilling/kernel/network/radius/RadiusDictionary\0Q\0T\0U\0V\0W\0X\0Y\0Z\0[\0Nru/bitel/bgbilling/kernel/network/radius/RadiusAttribute$RadiusAttributeIpAddr\0RadiusAttributeIpAddr\0InnerClasses\0\\\0]\0^\0\0_\0`\0a\0java/lang/Exception\0\0\0b\0c\0d\0java/lang/StringBuilder\0IP-address not found \0e\0f\0: \0g\0h\0i\0h\0j\0k\0%\0&\0Vru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeStaticClipsProtocolHandler\0l\0m\0Kru/bitel/bgbilling/modules/inet/dyn/device/redback/SmartEdgeProtocolHandler\0>ru/bitel/bgbilling/kernel/network/radius/RadiusProtocolHandler\0:ru/bitel/bgbilling/kernel/network/dhcp/DhcpProtocolHandler\05ru/bitel/bgbilling/kernel/network/radius/RadiusPacket\0!ru/bitel/common/sql/ConnectionSet\0java/lang/String\0getStringAttribute\0((IILjava/lang/String;)Ljava/lang/String;\0java/net/InetAddress\0	getByName\0*(Ljava/lang/String;)Ljava/net/InetAddress;\0\ngetAddress\0()[B\08ru/bitel/bgbilling/kernel/network/radius/RadiusAttribute\0ru/bitel/common/Utils\0convertBytesToInt\0([B)I\0(III)V\0setAttribute\0=(Lru/bitel/bgbilling/kernel/network/radius/RadiusAttribute;)V\0org/apache/log4j/Logger\0\risInfoEnabled\0()Z\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0\ngetMessage\0()Ljava/lang/String;\0toString\0info\0(Ljava/lang/Object;)V\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0\0\0\0\Z\0\0\0\Z\0\0\0\0\0\0\0\0\0\0 \0\0\0\0\0\0\0\0*�\0�\0\0\0\0!\0\0\0\0\0\0\0\0\0\"\0#\0\0 \0\0\0(\0\0\0\0\0*+-�\0�\0\0\0\0!\0\0\0\n\0\0\0\0\0\0\0$\0\0\0\0\0\0\0%\0&\0\0 \0\0\0�\0\0\0\0\0g+�\0:�\0:�\0:,�\0Y�\0�\0	�\0\n�\05:�\0�\0\r�\0*�\0�\0Y�\0�\0�\0�\0�\0�\0�\0�\0*+,-�\0�\0\0	\0*\0-\0\0\0!\0\0\0*\0\n\0\0\0\'\0	\0+\0\0,\0\0.\0*\06\0-\00\0/\02\08\04\0_\08\0f\09\0\'\0\0\0\0�\0-\0\0(\0)\0)\0*\0+\0\0,1\0$\0\0\0\0\0\0\0-\0\0\0 \0\0\0!\0\0\0\0\0\0	�\0�\0�\0\0\0\0!\0\0\0\0\0\0\0\0\0.\0\0\0\0/\0;\0\0\0\n\0\0\08\0:\0	'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpDeviceManager',1433856492000,'����\0\0\04\0�\n\0\'\0O	\0%\0P\0Q\n\0R\0S\n\0T\0U\0V\0W\0V\0X\0Y\0Z\n\0[\0\\	\0%\0]\0^\n\0T\0_\n\0[\0`	\0%\0a\0b\0c\n\0d\0e	\0%\0f\0g\n\0T\0h	\0%\0i\0j\0k\0l\n\0\0m\n\0\0n	\0%\0o	\0%\0p\n\0\0q\0r\n\0\0s��������\0t\n\0\0u\0v\n\0R\0w\0x\0y\0logger\0Lorg/apache/log4j/Logger;\0host\0Ljava/lang/String;\0snmpVersion\0I\0snmpPort\0\rsnmpCommunity\0\nsnmpClient\03Lru/bitel/bgbilling/kernel/network/snmp/SnmpClient;\0	uptimeOid\0[J\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/oss/systems/inventory/resource/common/bean/Device;Lru/bitel/oss/systems/inventory/resource/common/bean/DeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0z\0v\0{\0|\0}\0~\0\0	Signature\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/oss/systems/inventory/resource/common/bean/Device<**>;Lru/bitel/oss/systems/inventory/resource/common/bean/DeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0destroy\0()Ljava/lang/Object;\0\nExceptions\0�\0connect\0\ndisconnect\0uptime\0<clinit>\0\nSourceFile\0SnmpDeviceManager.java\05\06\0)\0*\0INIT\0�\0�\0�\0|\0�\0�\0z\0�\0�\0�\0�\0[Ljava/lang/String;\0snmp.version\0~\0�\0�\0-\0.\0	snmp.host\0�\0�\0�\0�\0+\0,\0	snmp.port\0161\0�\0�\0�\0/\0.\0snmp.community\0�\0�\00\0,\0%uk/co/westhawk/snmp/stack/AsnObjectId\0snmp.uptimeOid\01.3.6.1.2.1.1.3.0\05\0�\0�\0�\03\04\01\02\0E\06\01ru/bitel/bgbilling/kernel/network/snmp/SnmpClient\05\0�\0java/lang/Long\0�\0�\0Aru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpDeviceManager\0�\0�\0Cru/bitel/oss/systems/inventory/resource/server/DeviceManagerAdapter\0<ru/bitel/oss/systems/inventory/resource/server/DeviceManager\0java/util/List\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/oss/systems/inventory/resource/common/bean/Device\0>ru/bitel/oss/systems/inventory/resource/common/bean/DeviceType\0ru/bitel/common/ParameterMap\0java/lang/String\0java/lang/Exception\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0getHostsAsString\0()Ljava/util/List;\0size\0()I\0get\0(I)Ljava/lang/Object;\0getInt\0(Ljava/lang/String;I)I\0getHost\0()Ljava/lang/String;\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0ru/bitel/common/Utils\0parseInt\0(Ljava/lang/String;)I\0	getSecret\0(Ljava/lang/String;)V\0getOid\0()[J\0((Ljava/lang/String;ILjava/lang/String;)V\0(([JJLjava/lang/Class;)Ljava/lang/Object;\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0%\0\'\0\0(\0\0\Z\0)\0*\0\0\0\0+\0,\0\0\0\0-\0.\0\0\0\0/\0.\0\0\0\00\0,\0\0\0\01\02\0\0\0\03\04\0\0\0\0\05\06\0\07\0\0\0\0\0\0\0\0*�\0�\0\0\0\08\0\0\0\0\0\0\0 \0\09\0:\0\07\0\0�\0\0\0\0\0��\0�\0-�\0:�\0�\0\0�\0�\0\0�\0�\0:*	�\0\n�\0*�\0\n2�\0-�\0\r�\0�\0*�\0\n2�\0�\0�\0\n�\0*-�\0�\0�\0*�\0Y�\0�\0\Z�\0�\0�\0\0\0\08\0\0\0&\0	\0\0\03\0\05\0\06\0.\08\0:\09\0U\0:\0q\0;\0�\0=\0�\0?\0;\0\0\0�\0�\0+\0<@\0�\0\0\0=\0>\0?\0@\0A\0<\0\0\0=\0A\0B�\0\0\0=\0>\0?\0@\0A\0<\0\0\0=\0A\0B\0B�\0\0\0=\0>\0?\0@\0A\0<\0\0\0=\0A\0B�\0\0\0=\0>\0?\0@\0A\0<\0\0\0=\0A\0B\0B\0C\0\0\0\0D\0\0E\0F\0\07\0\0\0B\0\0\0\0\0*�\0�\0*�\0�\0*�\0�\0\0\0\08\0\0\0\0\0\0\0F\0\0H\0\0I\0\0L\0;\0\0\0\0\0G\0\0\0\0\0H\0\0I\0F\0\07\0\0\05\0\0\0\0\0*�\0Y*�\0*�\0*�\0�\0 �\0�\0\0\0\08\0\0\0\n\0\0\0\0S\0\0U\0G\0\0\0\0\0H\0\0J\0F\0\07\0\0\0B\0\0\0\0\0*�\0�\0*�\0�\0*�\0�\0\0\0\08\0\0\0\0\0\0\0\\\0\0^\0\0_\0\0b\0;\0\0\0\0\0G\0\0\0\0\0H\0\0K\0F\0\07\0\0\0)\0\0\0\0\0*�\0*�\0\0!#�\0$�\0\0\0\08\0\0\0\0\0\0\0i\0G\0\0\0\0\0H\0\0L\06\0\07\0\0\0!\0\0\0\0\0\0	%�\0&�\0�\0\0\0\08\0\0\0\0\0\0\0$\0\0M\0\0\0\0N'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator',1433856492000,'����\0\0\04o\n\0l\0�	\0j\0�\0�\n\0�\0�\n\0�\0�\0�\0�\0�\0�\0�\0�\n\0�\0�	\0j\0�\0�\n\0�\0�\n\0�\0�	\0j\0�\0�\0�\n\0�\0�	\0j\0�\0�\n\0�\0�	\0j\0�\0�\0�\n\0�\0�	\0\0�\n\0�\0�	\0j\0�\0�\0�\0�\n\0\0�\n\0\0�	\0j\0�\0�\0�	\0j\0�\0�\n\0�\0�\n\0�\0�\0�\0�	\0)\0�	\0j\0�\0�	\0j\0�\0�	\0j\0�\0�\0�	\01\0�	\0j\0�	\0j\0�\n\07\0�\0�\n\07\0�	\0n\0�\n\0)\0�\n\0�\0�\n\0�\0�\n\0&\0�\n\0&\0�	\0n\0�\n\01\0���������\n\0�\0�\n\0�\0�\n\0�\0�\0�\n\0F\0�\n\0�\0�\n\0�\0�\0�\n\0�\0�\n\0J\0�\0�\0�\n\0�\0�\0�\n\0P\0�\0�\n\0P\0\n\n\0P\n\n\n\0P	\n\n\n\0P\n\0j\r\n	\0n\n\0\0�\n\0j\n\0�\n\0j\n\07\n\0�\Z\0InnerClasses\0DisconnectMode\0KeyMode\0KeyField\0logger\0Lorg/apache/log4j/Logger;\0host\0Ljava/lang/String;\0snmpVersion\0I\0snmpPort\0\rsnmpCommunity\0\nsnmpClient\03Lru/bitel/bgbilling/kernel/network/snmp/SnmpClient;\0connectionKeyField\0OLru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField;\0connectionKeyOffset\0connectionKeyLength\0connectionKeyMode\0NLru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode;\0disconnectMode\0ULru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode;\0\rdisconnectOid\0[J\0disconnectValue\0Ljava/lang/Object;\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable \0�\0\nExceptions\0destroy\0()Ljava/lang/Object;\0connect\0\ndisconnect\0getKey\0T(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)Ljava/lang/Object;\0�\0compose\0([JLjava/lang/Object;)[J\0connectionModify\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0connectionClose!\"\0<clinit>\0\nSourceFile\0SnmpServiceActivator.java\0�\0�\0s\0t\0INIT#$%&\'()*+\0[Ljava/lang/String;\0snmp.version ,-\0w\0x\0	snmp.host./*0\0u\0v\0	snmp.port\0161123\0y\0x\0snmp.community4/\0z\0v\0Sru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode\0sa.snmp.disconnect.mode*56\0�78\0�\0�\0%uk/co/westhawk/snmp/stack/AsnObjectId\0sa.snmp.disconnect.oid\01.3.6.1.4.1.9.2.9.10.0\0�9:;\0�\0�\0sa.snmp.disconnect.value\01\0�\0�\0java/lang/String2-<=>\0Mru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField\0sa.snmp.connection.key.field?\0~\0}\0~\0sa.snmp.connection.key.offset\0\0x\0sa.snmp.connection.key.length\0�\0x\0Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode\0sa.snmp.connection.key.mode@\0�\0�\0�\0{\0|\0�\0�\01ru/bitel/bgbilling/kernel/network/snmp/SnmpClient\0�ABCD)!E)F/G)HIJCKLM=NKO\0java/lang/ExceptionP/QRST\0java/lang/NumberUVWXY\0[BZ[\\\0java/lang/StringBuilder\0Connection modify: oldState: ]^_`)]a\0; newState: b)\0; oldOptionSet: cd]e\0; newOptionSet: fdg/\0�\0�\0Connection closehijC\0�\0�\0Skip wrong key!Q%\0Set \0 to \0�\0�kl\0Dru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivatormn\0Aru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorAdapter\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0Fru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$1\0java/util/List\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0java/lang/Object\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0getHostsAsString\0()Ljava/util/List;\0size\0()I\0get\0(I)Ljava/lang/Object;\0getInt\0(Ljava/lang/String;I)I\0getHost\0()Ljava/lang/String;\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0ru/bitel/common/Utils\0parseInt\0(Ljava/lang/String;)I\0	getSecret\0&(Ljava/lang/String;)Ljava/lang/String;\0oid\0	parseEnum\0E(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;\0(Ljava/lang/String;)V\0getOid\0()[J\0java/lang/Integer\0valueOf\0(I)Ljava/lang/Integer;\0nasPort\0plain\0((Ljava/lang/String;ILjava/lang/String;)V\0X$SwitchMap$ru$bitel$bgbilling$modules$inet$dyn$device$snmp$SnmpServiceActivator$KeyField\0[I\0ordinal\0\rgetDevicePort\0getAcctSessionId\0length\0	substring\0(II)Ljava/lang/String;\0W$SwitchMap$ru$bitel$bgbilling$modules$inet$dyn$device$snmp$SnmpServiceActivator$KeyMode\0	parseLong\0(Ljava/lang/String;J)J\0java/lang/Long\0(J)Ljava/lang/Long;\0(Ljava/lang/String;I)J\0\ngetMessage\0error\0*(Ljava/lang/Object;Ljava/lang/Throwable;)V\0getInetAddressBytes\0()[B\0java/util/Arrays\0copyOf\0([JI)[J\0	longValue\0()J\0java/lang/System\0	arraycopy\0*(Ljava/lang/Object;ILjava/lang/Object;II)V\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0getOldState\0(I)Ljava/lang/StringBuilder;\0getNewState\0\rgetOldOptions\0()Ljava/util/Set;\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0\rgetNewOptions\0toString\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0^$SwitchMap$ru$bitel$bgbilling$modules$inet$dyn$device$snmp$SnmpServiceActivator$DisconnectMode\0setAsync\04([JJLjava/lang/Object;)Ljava/util/concurrent/Future;\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0j\0l\0\0m\0\r\0\Z\0s\0t\0\0\0\0\0u\0v\0\0\0\0\0w\0x\0\0\0\0\0y\0x\0\0\0\0\0z\0v\0\0\0\0{\0|\0\0\0\0\0}\0~\0\0\0\0\0\0x\0\0\0\0\0�\0x\0\0\0\0\0�\0�\0\0\0\0\0�\0�\0\0\0\0\0�\0�\0\0\0\0\0�\0�\0\0\0\n\0\0�\0�\0\0�\0\0\0!\0\0\0\0\0*�\0�\0\0\0\0�\0\0\0\n\0\0\0\0C\0\0[\0\0�\0�\0\0�\0\0,\0\0	\0\0�\0�\0-�\0:�\0�\0\0�\0�\0\0�\0�\0:*	�\0\n�\0*�\0\n2�\0-�\0\r�\0�\0*�\0\n2�\0�\0�\0\n�\0*-�\0�\0�\0*�\0�\0\Z�\0�\0�\0*�\0Y�\0�\0 �\0!�\0\"*#$�\0�\0%*�\0%�\0&�\0\'6�\0*�\0(�\0%*)*�\0�\0+�\0�\0)�\0,*-�\0\n�\0.*/�\0\n�\00*12�\0�\03�\0�\01�\04�\0\0\0\0�\0\0\0J\0\0\0\0o\0\0q\0\0r\0.\0t\0:\0u\0U\0v\0q\0w\0�\0y\0�\0z\0�\0{\0�\0|\0�\0}\0�\0\0�\0�\0�\0�\0�\0�\0�\Z\0�\0�\0\0\0�\0�\0+\0�@\0�\0\0\0�\0�\0�\0�\0�\0�\0\0\0�\0�\0��\0\0\0�\0�\0�\0�\0�\0�\0\0\0�\0�\0�\0��\0\0\0�\0�\0�\0�\0�\0�\0\0\0�\0�\0��\0\0\0�\0�\0�\0�\0�\0�\0\0\0�\0�\0�\0��\0m\0�\0\0\0\0\0F\0\0�\0�\0\0�\0\0\0B\0\0\0\0\0*�\05�\0*�\05�\06*�\05�\0\0\0\0�\0\0\0\0\0\0\0�\0\0�\0\0�\0\0�\0�\0\0\0\0\0�\0\0\0\0\0F\0\0�\0�\0\0�\0\0\05\0\0\0\0\0*�\07Y*�\0*�\0*�\0�\08�\05�\0\0\0\0�\0\0\0\n\0\0\0\0�\0\0�\0�\0\0\0\0\0F\0\0�\0�\0\0�\0\0\0B\0\0\0\0\0*�\05�\0*�\05�\06*�\05�\0\0\0\0�\0\0\0\0\0\0\0�\0\0�\0\0�\0\0�\0�\0\0\0\0\0�\0\0\0\0\0F\0\0�\0�\0\0�\0\02\0\0\0\0\0��\09*�\0,�\0:.�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!\0\0\0�+�\0;�\0(�+�\0<M*�\0.�\0\n*�\00�\02*�\00�\0\n*�\00�\0,�\0=*�\0.d>,�\0=�\0,*�\0.*�\0.`�\0>M�\0?*�\04�\0@.�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0&,\0A�\0C�\0D�,�\0E�\0D�N�\0-�\0G-�\0H\0A�\0D�+�\0I�\0\0�\0�\0�\0F\0\0�\0\0\0:\0\0\0\0�\0$\0�\0,\0�\01\0�\0?\0�\0W\0�\0_\0�\0n\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\0\0\0\n$�\0\0�\rH%\nI\0��\0\0\n\0�\0�\0\0�\0\0\0�\0\0\0\0\0�+�\0J�\0**�`�\0KM,*�+�\0J�\0LP,�+�\0M�\08+�\0M�\0MM**�,�`�\0KN*�6-��\0-,*�d3\0�~�P����-�+�\0N�\0!+�\0N�\0NM**�,�`�\0KN,-*�,��\0O-�*�\0\0\0\0�\0\0\0F\0\0\0\0�\0\0�\0\0�\0\0�\0\0�\0$\0�\0,\0�\06\0�\0A\0�\0Q\0�\0W\0�\0Y\0�\0`\0�\0h\0�\0r\0�\0|\0�\0~\0\0�\0\0\0\0�\0\0M\0N�\0�\0$\0\0�\0�\0\0�\0\0\0b\0\0\0\0\0F�\0�\0PY�\0QR�\0S+�\0T�\0UV�\0S+�\0W�\0UX�\0S+�\0Y�\0Z[�\0S+�\0\\�\0Z�\0]�\0*+�\0^�\0\0\0\0�\0\0\0\n\0\0\0\0@\n\0�\0\0\0\0\0F\0\0�\0�\0\0�\0\0P\0\0\0\0\0�\0_�\0+�\0`M�\0a*�\0�\0b.�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0}*,�\0cN-�\0J�\0-�\0J�\0L\0A��\0\r�\0d�\0e��\0�\0PY�\0Qf�\0S*�\0%�\0Zg�\0S-�\0Z�\0]�\0*�\05*�\0\"-�\0h\0A*�\0%�\0i�*,�\0cN-�\0J�\0-�\0J�\0L\0A��\0\r�\0d�\0e��\0�\0PY�\0Qf�\0S-�\0Z�\0]�\0*�\05*�\0\"\0A-�\0i�\0\0\0\0�\0\0\0>\0\0\0\0\0\r\04\Z\0:\0O\0W\0Y\"\0~#\0�(\0�*\0�,\0�-\0�0\0�1\0�\0\0\0\0�\04\0��\0$\0��\0;�\0$\0�\0�\0\0\0\0\0F\0\0�\0�\0\0�\0\0\0!\0\0\0\0\0\0	j�\0k�\0�\0\0\0\0�\0\0\0\0\0\0\0G\0\0�\0\0\0\0�\0o\0\0\0\"\0\0n\0\0\0\0\0\0j\0p@\01\0j\0q@\0)\0j\0r@'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$1',1433856492000,'����\0\0\04\0N\n\0\"\0#	\0\0$	\0\"\0%\n\0\"\0&\0\'	\0\"\0(\n\0)\0*	\0\0+	\0)\0,\n\0)\0&	\0)\0-	\0)\0.\n\0/\00	\0\01	\0/\02\n\0/\0&	\0/\03\04\06\0W$SwitchMap$ru$bitel$bgbilling$modules$inet$dyn$device$snmp$SnmpServiceActivator$KeyMode\0[I\0X$SwitchMap$ru$bitel$bgbilling$modules$inet$dyn$device$snmp$SnmpServiceActivator$KeyField\0^$SwitchMap$ru$bitel$bgbilling$modules$inet$dyn$device$snmp$SnmpServiceActivator$DisconnectMode\0<clinit>\0()V\0Code\0LineNumberTable\0\rStackMapTable\0\'\0\nSourceFile\0SnmpServiceActivator.java\0EnclosingMethod\07\08\0:\0;\0\0\0<\0=\0>\0?\0\Zjava/lang/NoSuchFieldError\0@\0=\0A\0:\0C\0\0\0D\0E\0F\0E\0G\0E\0H\0:\0J\0\0\0K\0L\0M\0L\0Fru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$1\0InnerClasses\0java/lang/Object\0Dru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator\0Sru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode\0DisconnectMode\0values\0X()[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode;\0oid\0ULru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode;\0ordinal\0()I\0value\0Mru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField\0KeyField\0R()[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField;\0nasPort\0OLru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField;\0\racctSessionId\0	ipAddress\0Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode\0KeyMode\0Q()[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode;\0plain\0NLru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode;\0hex \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0��\0��\n�\0�\0�\0�\0O�\0K�\0�\0�\0O�\0K�\0��\n�\0�\0�\0	�\0\nO�\0K�\0�\0�\0\nO�\0K�\0�\0�\0\nO�\0K�\0\r��\n�\0�\0�\0�\0O�\0K�\0�\0�\0O�\0K�\0\0	\0\0\0\0\0#\0&\0\00\0;\0>\0\0?\0J\0M\0\0N\0Y\0\\\0\0f\0q\0t\0\0u\0�\0�\0\0\0\0\0\0\0\0\0\0\'\0�\0]\0�\0\0\0\0%\0W\0\0M\0\0V\0\0M\0\0M\0\0V\0\0M\0\0\0\0\0\0\0\0\0 \0\0\0\0!\0\0\05\0\0\0\"\0\0\0\0\0\0\0\"\0!\09@\0)\0!\0B@\0/\0!\0I@'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$DisconnectMode',1433856492000,'����\0\0\04\00	\0\0\"\n\0#\0$\0\0&\n\0\0\'\n\0\0(\0\r\n\0\0(	\0\0)\0	\0\0*\0+\0oid\0DisconnectMode\0InnerClasses\0ULru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode;\0value\0$VALUES\0V[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode;\0values\0X()[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode;\0Code\0LineNumberTable\0valueOf\0i(Ljava/lang/String;)Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode;\0<init>\0(Ljava/lang/String;I)V\0	Signature\0()V\0<clinit>\0gLjava/lang/Enum<Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode;>;\0\nSourceFile\0SnmpServiceActivator.java\0\0\0\0,\0-\0.\0Sru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$DisconnectMode\0\0/\0\Z\0\0\r\0\0\0\0java/lang/Enum\0clone\0()Ljava/lang/Object;\0Dru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator\05(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;@0\0\0\0\0\0@\0\r\0\0\0@\0\0\0\0\Z\0\0\0\0\0\0	\0\0\0\0\0\0\0\"\0\0\0\0\0\0\n�\0�\0�\0�\0\0\0\0\0\0\0\0\0\0\0[\0	\0\0\0\0\0\0\0\"\0\0\0\0\0\n*�\0�\0�\0\0\0\0\0\0\0\0\0\0\0[\0\0\Z\0\0\0\0\0\0\0\0\0\0\0*+�\0�\0\0\0\0\0\0\0\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0J\0\0\0\0\0\0.�\0Y�\0�\0	�\0Y\n�\0�\0�\0Y�\0	SY�\0S�\0�\0\0\0\0\0\0\0\n\0\0\0\0]\0\Z\0[\0\0\0\0\0\0\0 \0\0\0\0!\0\0\0\0\n\0\0\0%\0@'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$KeyField',1433856492000,'����\0\0\04\04	\0\0%\n\0&\0\'\0\0)\n\0\0*\n\0\0+\0\n\0\0+	\0\0,\0	\0\0-\0	\0\0.\0/\0nasPort\0KeyField\0InnerClasses\0OLru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField;\0\racctSessionId\0	ipAddress\0$VALUES\0P[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField;\0values\0R()[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField;\0Code\0LineNumberTable\0valueOf\0c(Ljava/lang/String;)Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField;\0<init>\0(Ljava/lang/String;I)V\0	Signature\0()V\0<clinit>\0aLjava/lang/Enum<Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField;>;\0\nSourceFile\0SnmpServiceActivator.java\0\0\0\00\01\02\0Mru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyField\0\03\0\0\0\0\0\0\0\0\0java/lang/Enum\0clone\0()Ljava/lang/Object;\0Dru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator\05(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;@0\0\0\0\0\0@\0\0\0\0@\0\0\0\0@\0\0\0\0\Z\0\0\0\0\0\0	\0\0\0\0\0\0\0\"\0\0\0\0\0\0\n�\0�\0�\0�\0\0\0\0\Z\0\0\0\0\0\0\0Q\0	\0\0\0\0\0\0\0\"\0\0\0\0\0\n*�\0�\0�\0\0\0\0\Z\0\0\0\0\0\0\0Q\0\0\0\0\0\0\0\0\0\0\0\0\0*+�\0�\0\0\0\0\Z\0\0\0\0\0\0\0Q\0\0\0\0\0 \0\0!\0 \0\0\0\0\0]\0\0\0\0\0\0A�\0Y�\0�\0	�\0Y\n�\0�\0�\0Y�\0�\0\r�\0Y�\0	SY�\0SY�\0\rS�\0�\0\0\0\0\Z\0\0\0\n\0\0\0\0S\0\'\0Q\0\0\0\0\0\0\"\0#\0\0\0\0$\0\0\0\0\n\0\0\0(\0@'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$KeyMode',1433856492000,'����\0\0\04\00	\0\0\"\n\0#\0$\0\0&\n\0\0\'\n\0\0(\0\r\n\0\0(	\0\0)\0	\0\0*\0+\0plain\0KeyMode\0InnerClasses\0NLru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode;\0hex\0$VALUES\0O[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode;\0values\0Q()[Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode;\0Code\0LineNumberTable\0valueOf\0b(Ljava/lang/String;)Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode;\0<init>\0(Ljava/lang/String;I)V\0	Signature\0()V\0<clinit>\0`Ljava/lang/Enum<Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode;>;\0\nSourceFile\0SnmpServiceActivator.java\0\0\0\0,\0-\0.\0Lru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator$KeyMode\0\0/\0\Z\0\0\r\0\0\0\0java/lang/Enum\0clone\0()Ljava/lang/Object;\0Dru/bitel/bgbilling/modules/inet/dyn/device/snmp/SnmpServiceActivator\05(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;@0\0\0\0\0\0@\0\r\0\0\0@\0\0\0\0\Z\0\0\0\0\0\0	\0\0\0\0\0\0\0\"\0\0\0\0\0\0\n�\0�\0�\0�\0\0\0\0\0\0\0\0\0\0\0V\0	\0\0\0\0\0\0\0\"\0\0\0\0\0\n*�\0�\0�\0\0\0\0\0\0\0\0\0\0\0V\0\0\Z\0\0\0\0\0\0\0\0\0\0\0*+�\0�\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0\0\0\0\0\0\0J\0\0\0\0\0\0.�\0Y�\0�\0	�\0Y\n�\0�\0�\0Y�\0	SY�\0S�\0�\0\0\0\0\0\0\0\n\0\0\0\0X\0\Z\0V\0\0\0\0\0\0\0 \0\0\0\0!\0\0\0\0\n\0\0\0%\0@'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.AbstractTerminalServiceActivator',1433856492000,'����\0\0\04�	!�\n)�	!�	!�	��\n\0I�\n���\n\0��\n\0�\n\0�\n\0�\n��	��\n�����\n��\n�	��\n��\n)��\n���\n\0�\n��\n\0�	!�\n��	!�	!�	!�\n�������\n\0&�\n��	!�\n\0&�	!��\n\0m��\n\0m�\n��	!�\n��	!���\n��	!�\n!�	!��\0\0�`	!��	!�\0\n!\n\n\0C�	!	\n	\n\0I\r\n�	�	!	!	!\n!\Z	!	!\n! 	!!\"	!#$\n!%	!&\'\n\0d�	!(	!)*\n\0m+�,-\0k/01\0k2�345\n\0r�678	\0r9:	\0r;<\n\0z=	\0r>?\n!@	\0rAB�CDE	\0rFG	\0rHI	\0rJ�	\0rK�	\0rLM\n\0��\n\0mN\nO	!P\nQR\nST�U\n\0mVWXY�Z[\n\0\\\n�]^�_HW,`ab\n\0�cd\n\0�e\n�f\ngh\nij\nk\nlmno\nlpq\0\0\0\0����\nrstu\nvw=\nxy\nz{\n�|\nz}~\n\n��\n��\n��\n��\n��\n�6�\n��\n���\n���\n!�	��\n���\n���\n���	��\n\0���\n!����\n\0��������\n\0���\n��\n\0��\n���\n���\n�\n\0C���\n��\n\0���\n!�\n!�\n��\n��\n��\n��\n!�\n��\n��	\0z�\n!�\n��\n!�\n��\n!�\n!�\n!�\n!�\n��\n!�\n!�\ng�	\0z�\n��\n��\n��\n!�\n!�\n!�\n��\n��\n�����	!�\n#��\n�\n#��\n���	��	��\n#��\nQ���\0\nCommandSet\0InnerClasses\0Commands\0logger\0Lorg/apache/log4j/Logger;\0\rSEMAPHORE_MAP\00Lru/bitel/common/ref/ConcurrentReferenceHashMap;\0	Signature\0eLru/bitel/common/ref/ConcurrentReferenceHashMap<Ljava/lang/Integer;Ljava/util/concurrent/Semaphore;>;\0moduleId\0I\0deviceId\0device\0<Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;\0config\0Lru/bitel/common/ParameterMap;\0host\0Ljava/lang/String;\0port\0username\0password\0timeout\0readWait\0J\0optionRuntimeMap\0>Lru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntimeMap;\0macrosFormat\0#Lru/bitel/common/util/MacrosFormat;\0connectCommands\0[Ljava/lang/String;\0disconnectCommands\0exitCommand\0\ncommandSet\0aLru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$CommandSet;\0\rcommandSetMap\0Ljava/util/Map;\0�Ljava/util/Map<Ljava/lang/String;Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$CommandSet;>;\0servTypeCommandSetMap\0�Ljava/util/Map<Ljava/lang/Integer;Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$CommandSet;>;\0workingOptions\0Ljava/util/Set;\0$Ljava/util/Set<Ljava/lang/Integer;>;\0needConnectionStateModify\0Z\0skipServiceAccountingEvents\0accountingEventDeviceIds\0\ZconnectionSemaphorePermits\0connectionSemaphore\0 Ljava/util/concurrent/Semaphore;\0connectionSemaphoreAcquired\0access\0/Lru/bitel/bgbilling/modules/inet/access/Access;\0RuntimeVisibleAnnotations\0Ljavax/annotation/Resource;\0name\0semicolonPattern\0Ljava/util/regex/Pattern;\0<init>\0()V\0Code\0LineNumberTable\0getDeviceAttribute\07(II)Lru/bitel/oss/kernel/entity/common/bean/EntityAttr;\0\rStackMapTable�\0\rgetIpResource\0�(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;)Lru/bitel/oss/systems/inventory/resource/server/ip/dynamic/IpResourceRuntime;\0\nExceptions�\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;0��������\0\rparseCommands\0!(Lru/bitel/common/ParameterMap;)V-5\0�(Lru/bitel/common/ParameterMap;Ljava/lang/String;)Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$CommandSet;\0X(Lru/bitel/common/ParameterMap;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;^\0parseOptionCommands\0A(Lru/bitel/common/ParameterMap;Ljava/lang/String;)Ljava/util/Map;�\0�(Lru/bitel/common/ParameterMap;Ljava/lang/String;)Ljava/util/Map<Ljava/lang/Integer;Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$Commands;>;\0createMacrosFormat\0%()Lru/bitel/common/util/MacrosFormat;\0getValue(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;�������+(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0executeCommands\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;[Ljava/lang/String;)Ljava/lang/Object;(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;[Ljava/lang/String;)Ljava/lang/Object;\0executeCommand\0(Ljava/lang/String;)V\0connect\0()Ljava/lang/Object;\0\ndisconnect\0\rgetCommandSet\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$CommandSet;\0\rserviceCreate\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0\rserviceCancel\0\rserviceModify\0serviceChanged\0w(Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;)Z\0\raddressEquals\0([B[B)Z\0serviceDisable\0\rserviceEnable\0serviceOptionsModify\0connectionModify\0connectionDisable\0connectionEnable\0connectionOptionsModify\0\rswitchOptions\0�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V�(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Map<Ljava/lang/Integer;Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$Commands;>;Ljava/util/Set<Ljava/lang/Integer;>;Ljava/util/Set<Ljava/lang/Integer;>;)V\0connectionClose\0onAccountingStart\0onAccountingStop\0getConnectionSemaphore\0\"()Ljava/util/concurrent/Semaphore;�\0\naccess$000\0()Lorg/apache/log4j/Logger;\0<clinit>\0\nSourceFile\0%AbstractTerminalServiceActivator.java./deY5]^���\0\0java/lang/StringBuilder\0Device not found with id=	\n�\r8��\01ru/bitel/oss/kernel/entity/common/bean/EntityAttr�pq\0ru/bitel/common/Preferences�	\0\nd\Z4565789:� \0\Zjava/net/InetSocketAddress!\"#$	;<%=5\0sa.host&\0sa.port\'()	><*	?<\0sa.username\0sa.password+,-CD��EF\0sa.command.timeout@5\0sa.command.readWaitAB\0sa.config.inherit{|\0sa.inetOption.root./0\0java/util/HashSetRS�12�345�\0java/lang/Integer6789S:;<=\0!sa.command.connection.stateModifyUV\0+sa.command.connection.skipServiceAccountingWV\0sa.command.connection.deviceIdsXS\0sa.connection.semaphorePermits��Z[\0sa.command.exit\0exitJ<\0sa.command.connect{�GH\0sa.command.disconnectIH\0sa.command.{KL\0java/util/HashMapMNPN\0sa.commandSet.>?@A\0java/util/Map$Entry\0Entry��\0ru/bitel/common/ParameterMap\0\0B�CD\0servTypeIds\0_ru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$CommandSet\0serv.enable\0serv.disable\0serv.createEH\0serv.cancelFH\0]ru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$CommandsdGHI\0inetOption.��JN\0serv.inetOption.KL\0connection.enable\0connection.disableMI\0connection.inetOption.NN\0connection.closeOHPHQH\0java/util/ArrayListRSTbcUVWXYZ\0.[\\]^_`a=\0 commands: bc\0java/lang/Stringde\0enable\0disable\0Vru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$1df\0ipg=hijkli\0netmino\0mask\0bitmaskpq\0netmaskrst\0netmaskWild\0vlanu\0ifacev\0\nifaceTitlew,xyz{\0mac|i}k\0macBytes~\0	servTitle�	\0\ncontractId�\0servId\0\nservTypeId�\0servDeviceId�\0\ragentDeviceId�\0connectionDeviceId\0ipGatelm�����	\0ipDns�	\0ipSubnetMask�	\0ipParam\0�\0\ndeviceAttrhi\0\rmacBytesDoted\0(.{4})(.{4})(.{4})\0$1.$2.$3�&\0ifaceTitleBeforeColon\0\n(.*):(\\d*)\0$1\0ifaceTitleAfterColon\0$2\0\rcontractTitle�\04ru/bitel/bgbilling/kernel/base/server/DefaultContext�,�����\0null��	\0translit�Rd��;\0java/lang/Object����	\0\\n�������������A����A�H�������\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ�������������g��H�A�A���������������\0Skip service connection�=\0Skip connection with deviceId=01\0java/util/concurrent/Semaphored��D\0Tru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator��\0.ru/bitel/common/ref/ConcurrentReferenceHashMap�����d�\0\\s*;\\s*��\0Aru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorAdapter\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0@ru/bitel/bgbilling/modules/inet/runtime/device/InetDeviceRuntime\0%ru/bitel/bgbilling/common/BGException\0java/util/List\0\rjava/util/Set\0java/util/Iterator\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0java/lang/Exception\0\rjava/util/Map\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0[Ljava/lang/Object;\0:ru/bitel/bgbilling/kernel/contract/runtime/ContractRuntime\0-ru/bitel/bgbilling/modules/inet/access/Access\0	deviceMap\0ELru/bitel/bgbilling/modules/inet/runtime/device/InetDeviceRuntimeMap;\0valueOf\0(I)Ljava/lang/Integer;\0Cru/bitel/bgbilling/modules/inet/runtime/device/InetDeviceRuntimeMap\0get\0W(Ljava/lang/Integer;)Lru/bitel/bgbilling/modules/inet/runtime/device/InetDeviceRuntime;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0(I)Ljava/lang/StringBuilder;\0toString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0warn\0(Ljava/lang/Object;)V\0\ninetDevice\0getEntityAttributes\0()Ljava/util/Map;\0&(Ljava/lang/Object;)Ljava/lang/Object;\0getIpResourceId\0()I\0ipResourceManager\0TLru/bitel/oss/systems/inventory/resource/server/ip/dynamic/IpResourceRuntimeManager;\0Rru/bitel/oss/systems/inventory/resource/server/ip/dynamic/IpResourceRuntimeManager\0getResource\0b(Ljava/lang/Integer;)Lru/bitel/oss/systems/inventory/resource/server/ip/dynamic/IpResourceRuntime;\0	getConfig\0\'(Ljava/lang/String;Ljava/lang/String;)V\0inherit\0>(Lru/bitel/common/ParameterMap;)Lru/bitel/common/ParameterMap;\0getId\0getHosts\0()Ljava/util/List;\0size\0(I)Ljava/lang/Object;\0\ngetAddress\0()Ljava/net/InetAddress;\0java/net/InetAddress\0getHostAddress\0getPort\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0getInt\0(Ljava/lang/String;I)I\0getUsername\0getPassword\0<ru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntimeMap\0getInstance\0A(I)Lru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntimeMap;\0ru/bitel/common/Utils\0toIntegerSet\0#(Ljava/lang/String;)Ljava/util/Set;\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0intValue\0>(I)Lru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntime;\09ru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntime\0\rdescendantIds\0addAll\0(Ljava/util/Collection;)Z\0remove\0(Ljava/lang/Object;)Z\0subKeyed\0#(Ljava/lang/String;)Ljava/util/Map;\0entrySet\0()Ljava/util/Set;\0getKey\0put\08(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\0servCreateCommands\0servCancelCommands\0)([Ljava/lang/String;[Ljava/lang/String;)V\0servModifyCommands\0_Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$Commands;\0servOptionModifyCommandsMap\0putAll\0(Ljava/util/Map;)V\0connectionModifyCommands\0!connectionOptionModifyCommandsMap\0connectionCloseCommands\0onAccountingStartCommands\0onAccountingStopCommands\0&(Ljava/lang/String;)Ljava/lang/String;\0notBlankString\0(Ljava/lang/String;)Z\0java/util/regex/Pattern\0split\0-(Ljava/lang/CharSequence;)[Ljava/lang/String;\0java/util/Arrays\0asList\0%([Ljava/lang/Object;)Ljava/util/List;\0\nsubIndexed\0)(Ljava/lang/String;)Ljava/util/SortedMap;\0java/util/SortedMap\0values\0()Ljava/util/Collection;\0java/util/Collection\0add\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0debug\0toArray\0(([Ljava/lang/Object;)[Ljava/lang/Object;\0Y(Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator;)V\0equals\0getInetAddressBytes\0()[B\0ru/bitel/common/inet/IpAddress\0([B)Ljava/lang/String;\0getAddressFrom\0getAddressTo\0\Zru/bitel/common/inet/IpNet\0([B[B)Ljava/lang/String;\0getMask\0([B[B)I\0bitel/billing/common/IPUtils\0convertLongIpToString\0(J)Ljava/lang/String;\0getVlan\0getInterfaceId\08ru/bitel/bgbilling/modules/inet/runtime/InetInterfaceMap\0=(I)Lru/bitel/bgbilling/modules/inet/runtime/InetInterfaceMap;\0getInvDeviceId\0getInterfaceTitle\0(II)Ljava/lang/String;\0getMacAddressListBytes\0macAddressToString\0\rbytesToString\0)([BZLjava/lang/String;)Ljava/lang/String;\0getTitle\0\rgetContractId\0	getTypeId\0getDeviceId\0getAgentDeviceId\0Kru/bitel/oss/systems/inventory/resource/server/ip/dynamic/IpResourceRuntime\0\nipResource\0@Lru/bitel/oss/systems/inventory/resource/common/bean/IpResource;\0>ru/bitel/oss/systems/inventory/resource/common/bean/IpResource\0	getRouter\0getDns\0\rgetSubnetMask\0&(Ljava/lang/Object;)Ljava/lang/String;\0\nreplaceAll\0(()Lru/bitel/common/worker/ThreadContext;\0=ru/bitel/bgbilling/kernel/contract/runtime/ContractRuntimeMap\0A()Lru/bitel/bgbilling/kernel/contract/runtime/ContractRuntimeMap;\0getConnectionSet\0%()Lru/bitel/common/sql/ConnectionSet;\0getContractRuntime\0t(Lru/bitel/common/sql/ConnectionSet;Ljava/lang/Integer;)Lru/bitel/bgbilling/kernel/contract/runtime/ContractRuntime;\0getContractTitle\0\ntoTranslit\0(Ljava/util/Collection;)V\0	retainAll\0!ru/bitel/common/util/MacrosFormat\0format\09(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;\0trim\0getInetServRuntime\0;()Lru/bitel/bgbilling/modules/inet/runtime/InetServRuntime;\07ru/bitel/bgbilling/modules/inet/runtime/InetServRuntime\0getInetServ\0<()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;\0getNewInetServ\0\rgetNewOptions\0getNewState\0\rgetOldOptions\0disableCommands\0getOldInetServ\0getChildren\0getOldState\0enableCommands\0getOptionsToRemove\0getOptionsToAdd\0\ZsetConnectionStateModified\0(Z)V\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0java/util/Collections\0	singleton\0#(Ljava/lang/Object;)Ljava/util/Set;\0getParentConnectionId\0()J\0contains\0(IZ)V\0putIfAbsent\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0<ru/bitel/common/ref/ConcurrentReferenceHashMap$ReferenceType\0\rReferenceType\0SOFT\0>Lru/bitel/common/ref/ConcurrentReferenceHashMap$ReferenceType;\0STRONG\0(Lru/bitel/common/ref/ConcurrentReferenceHashMap$ReferenceType;Lru/bitel/common/ref/ConcurrentReferenceHashMap$ReferenceType;)V\0compile\0-(Ljava/lang/String;)Ljava/util/regex/Pattern;!!)\0*\0\0\Z./\0\0\0\Z01\02\0\0\03\045\0\0\065\0\0\078\0\0\09:\0\0\0;<\0\0\0=5\0\0\0><\0\0\0?<\0\0\0@5\0\0\0AB\0\0\0CD\0\0\0EF\0\0\0GH\0\0\0IH\0\0\0J<\0\0\0KL\0\0\0MN\02\0\0\0O\0PN\02\0\0\0Q\0RS\02\0\0\0T\0UV\0\0\0WV\0\0\0XS\02\0\0\0T\0Y5\0\0\0Z[\0\0\0\\V\0\0\0]^\0_\0\0\0\0`\0as]\0bc\0\0\0\"\0de\0f\0\0\0&\0\0\0\0\0\n*�\0*�\0�\0\0\0g\0\0\0\n\0\0\0\04\0\0�\0hi\0f\0\0\0�\0\0\0\0\0F*�\0�\0�\0�\0N-�\0�\0�\0Y�\0	\n�\0�\0�\0\r�\0�-�\0:�\0�\0�\0\0�\0�\0\0\0g\0\0\0\Z\0\0\0\0�\0\0�\0\0�\0,\0�\0.\0�\04\0�j\0\0\0\0�\0.k\0lm\0f\0\0\0q\0\0\0\0\0/,�\0,�\0>�\0+�\0>�\0+�\0>�\0*�\0�\0�\0�\0��\0\0\0g\0\0\0\"\0\0\0\0�\0\0�\0	\0�\0\r\0�\0\0�\0\Z\0�\0\0�\0-\0�j\0\0\0\0�\0n\0\0\0\0o\0pq\0f\0\0\0\0\0\0�*+-�\0W�\0Y�\0\Z�\0�\0Y-�\0\Z�\0�\0:*�\0*-�\0�\0 *-�\0!*�\0\"-�\0#:�\0$\0�\0%�\0%\0�\0&:*�\0\'�\0(�\0)*�\0*�\0+*,*�\0)�\0-�\0)*.*�\0+�\0/�\0+*-�\00�\01*-�\02�\03*4-�\00�\0-�\01*5-�\02�\0-�\03*�\06�\07**�\08�\09**�\0\":;�\0/�\0<**�\0\"=2�\0/��\0>?�\0/�\0*�\0@�\0	*�\0@A�\0-�\0B:*�\0CY�\0D�\0E�\0F\0:		�\0G\0�\04	�\0H\0�\0I:\n�\06\n�\0J�\0K:�\0*�\0E�\0L�\0M\0W���*�\0E�\0�\0N\0W*�\0E�\0O\0�\0*�\0E*P�\0/�\0�\0�\0Q*R�\0/�\0�\0�\0S*T�\0-�\0B�\0U*�\0U�\0O\0�\0*�\0U*V�\0/�\0**�\0W�\0X�\0\0\0g\0\0\0�\0*\0\0\0�\0\0�\0,\0�\01\0�\09\0�\0>\0�\0D\0�\0J\0�\0T\0�\0a\0�\0m\0�\0v\0�\0�\0�\0�\0�\0�\n\0�\0�\0�\0�\0�\Z#BP U\"d$g&u(�*�-�/�1�2�4�7�8�:j\0\0\0n\0�\0vrs�\0��\0 tu7�\0Ov�\0\0\0	vwxyrrst\0vRv�\0\0\0	vwxyrrst\0v\"n\0\0\0\0z\0{|\0f\0\0b\0\0\0\0\0�*+YZ�\0-�\0[**+\\�\0]�\0^**+_�\0]�\0`**+a�\0b�\0c*�\0dY�\0e�\0f*�\0dY�\0e�\0g+h�\0i�\0j\0�\0F\0M,�\0G\0�\0x,�\0H\0�\0kN*-�\0l\0�\0mn�\0b:*�\0f-�\0o\0�\0p\0W-�\0l\0�\0mqn�\0-�\0B:�\0F\0:�\0G\0�\0 �\0H\0�\0I:*�\0g�\0p\0W��ܧ���\0\0\0g\0\0\0>\0\0\0?\0A\0B\0$D\0/F\0:G\0EI\0iK\0zL\0�N\0�O\0�Q\0�R\0�S\0�Tj\0\0\07\0�\0Vu�\0S\0vru}~tu\0\0�\0&\0vru\0\0�\0\0{\0f\0\0�\0\0\0\0�\0rY�\0sN*+�\0Y�\0	,�\0t�\0�\0\r�\0]:*+�\0Y�\0	,�\0u�\0�\0\r�\0]:-*+�\0Y�\0	,�\0v�\0�\0\r�\0]�\0w-*+�\0Y�\0	,�\0x�\0�\0\r�\0]�\0y-�\0zY�\0{�\0|-*+�\0Y�\0	,�\0}�\0�\0\r�\0~�\0-�\0*+�\0Y�\0	,�\0��\0�\0\r�\0~�\0�\0*+�\0Y�\0	,�\0��\0�\0\r�\0]:*+�\0Y�\0	,�\0��\0�\0\r�\0]:-�\0zY�\0{�\0�-*+�\0Y�\0	,�\0��\0�\0\r�\0~�\0�-*+�\0Y�\0	,�\0��\0�\0\r�\0]�\0�-*+�\0Y�\0	,�\0��\0�\0\r�\0]�\0�-*+�\0Y�\0	,�\0��\0�\0\r�\0]�\0�-�\0\0\0g\0\0\0B\0\0\0X\0Z\0#[\0>]\0[^\0y`\0�a\0�b\0�d\0�e\0�g\nh&jCl`m}o\0{�\0f\0\0)\0\0	\0\0\0Ż\0�Y�\0�:+,�\0�:�\0��\0�\0��\0��\0��\0�\0W�\0[+�\0Y�\0	,�\0��\0�\0\r�\0��\0�\0�\0�\0:�\0G\0�\0.�\0H\0�\0m:n�\0-:�\0��\0\r�\0�\0W��β\0�\0Y�\0	,�\0��\0�\0��\0\r�\0��\0$\0�\0-��\0$\0�\0��\0�\0�\0��\0\0\0g\0\0\06\0\r\0\0v\0	x\0z\0|\0.�\0g�\0q�\0y�\0��\0��\0��\0��\0��j\0\0\0\0�\0.s��\0\"u1�\0)\0��\0f\0\0\0\0\n\0\0\0��\0dY�\0eN+,�\0��\0�\0�\0F\0:�\0G\0�\0^�\0H\0�\0k:�\0o\0�\0I:�\0l\0�\0m:*��\0]:*��\0]:	�\0	�\0-�\0zY	�\0{�\0p\0W���-�\0\0\0g\0\0\0*\0\n\0\0�\0�\0/�\0;�\0G�\0R�\0]�\0g�\0{�\0~�j\0\0\0I\0�\0�u�\0M\0\nvr��u}�r\0�\0�\0\0�\0\0vr��u\0\0�\02\0\0\0�\0��\0f\0\0\0!\0\0\0\0\0	�\0�Y*�\0��\0\0\0g\0\0\0\0\0\0�\0��\0f\0\0�\0\0\r\0\0���\0��\0-�\0-�\0��\0-�\0��\0��,�\0��\0����\0��\0,�\0�,�\0��\0����\0��\0\r��\0��\0,�\0�,�\0��\0��\0���\0��\0%,�\0�,�\0��\0�6\0� dy\0�7		�\0����\0��\0-,�\0�,�\0��\0�6\0� dy\0�7		\0��7�\0����\0��\0,�\0��\0���\0��\0\r��\0��\0,�\0��\0���\0��\0,�\0�6*�\0�\0�*�\0!�\0��\0����\0��\0,�\0��\0����\0��\0\r,�\0��\0°��\0��\0,�\0İ��\0��\0,�\0Ƹ\0���\0��\0,�\0ȸ\0���\0��\0,�\0ʸ\0���\0��\0*�\0 �\0���\0��\0,�\0͸\0���\0��\0-�\0\n-�\0ϧ\0,�\0ȸ\0���\0��\0-�\0\n-�\0ѧ\0,�\0͸\0���\0��\0*,-�\0�:�\0�\0Զ\0հ����\0��\0*,-�\0�:�\0�\0Զ\0װ����\0��\0*,-�\0�:�\0�\0Զ\0ٰ����\0��\0)��\0#*,-�\0�:�\0�\0�2�\0ܶ\0���^��\0��\0���\0\0\0p\0\0\0\0\0\0\0\0\0\0\0\01\0\0\0O*�\0 62�\0I�\0J6	:\n�\0N2�\0I�\0J62�\0I�\0J6	:\n�\002�\0I�\0J62�\0I�\0J6	2:\n�\0*�\0 66	:\n*	�\0�:�\0�\n���\0��\0,�\0��\0���\0���\0��\0!,�\0�6*�\0�\0�*�\0 �\0���\0���\0��\0!,�\0�6*�\0�\0�*�\0 �\0���\0���\0��\0-�\0��\0�:�\0��\0�,�\0Ƹ\0�\0�:		�\0�	�\0���\0��\0��\02�\0ܸ\0���\0\0\0g\0\0�\0h\0\0L\0\nN\0P\0T\0%W\0/Y\0;[\0O]\0^_\0ha\0ub\0�d\0�f\0�h\0�i\0�j\0�l\0�n\0�p\0�r\0�t\0�v\0�x\0�y{\Z}\",�6�@�E�O�W�a�i�s�{��������������������������������)�1�6�?�B�R�Z�_�o�r�|����������������������������������\n�\r��\Z�+�5�;�S]c{�	�\n��\r������j\0\0\0g\0/+3#CC,% �\0��\0��\0\0v���t���\0\0\Z\'\'�\0-���\0\Zn\0\0\0\0z2\0\0\0�\0��\0f\0\0\0�\0\0\n\0\0\0��\0��\0!*�\0E�\0\Z�\0CY�\0�:*�\0E�\0�\0W:�66�\0S2:	*�\09	�\0�Y+SY,SY-SYS�\0�:		�\0��\0	�\0�:		��\0��\0\Z:	*	�\0������\0\0\0g\0\0\0:\0\0\0\"\0$\0\'\0)\0*\0*-\0D/\0d0\0l2\0s3\0}5\0�8\0�-\0�<j\0\0\0\0\"�\0\0��\0J��\0�\0n\0\0\0\0z2\0\0\0���\0n\0\0\0\0z\0��\0f\0\0\0+\0\0\0\0\0**�\0^�\0�W�\0\0\0g\0\0\0\n\0\0\0F\0\rGn\0\0\0\0z\0��\0f\0\0\0+\0\0\0\0\0**�\0`�\0�W�\0\0\0g\0\0\0\n\0\0\0N\0\rOn\0\0\0\0z\0��\0f\0\0\0x\0\0\0\0\07+�\0\n+�\0��\0*�\0c�+�\0��\0��\0�=*�\0g�\0�\0\0�\0rN-�\0-�*�\0c�\0\0\0g\0\0\0\0\0\0T\0V\0Y\0[\0,\\\00^\02aj\0\0\0\0�\0!~\0��\0f\0\0\0k\0\0\0\0\0>*++�\0�+�\0�*+�\0��\0w�\0�W+�\0��\0*++�\0�+�\0*+�\0��\0|��\0��*+��\0\0\0g\0\0\0\0\0\0h\0k\0m\08qj\0\0\0\08n\0\0\0\0z\0��\0f\0\0\0J\0\0\0\0\0.*++�*+�\0��\0+�\0�*++�+�\0*+�\0��\0y�\0��\0\0\0g\0\0\0\n\0\0\0y\0zn\0\0\0\0z\0��\0f\0\0P\0\0\0\0\0�+��\0�+�\0��\0�=+���\0$\0+�\0���\0$\0�\0O>+���\0$\0�\0=+���\0%\0�:+�\0���\0%\0�:*��\0=�\0	����*+�+�\0���\0\"+���\0$\0+�\0���\0$\0�\0�\0*+�W*+�	W�+�\0��\0	*+�\n�+��\0	*+��*+��\0\0\0g\0\0\0R\0\0\0�\0�\0�\0+�\0=�\0O�\0a�\0l�\0n�\0q�\0w�\0��\0��\0��\0��\0��\0��\0��\0��\0��j\0\0\0\0�\0-�\0C�\0-�\0\rn\0\0\0\0z\0��\0f\0\0\0j\0\0\0\0\0:+�\0�,�\0��\0,+�\0�,�\0��\0!*+�\0�,�\0��\r�\0*+�\0�,�\0��\r�\0�\0�\0\0\0g\0\0\0\0\0\0�\0�\0�\0\'�j\0\0\0\04@\0��\0f\0\0\0;\0\0\0\0\0+�\0,�\0+,��\0�\0�\0\0\0g\0\0\0\0\0\0�j\0\0\0\0@\0��\0f\0\0\0S\0\0\0\0\03*++�*+�\0��\0+�\0�*++�+�\0*+�\0��\0|��\0�W�\0\0\0g\0\0\0\0\0\0�\0�\01�n\0\0\0\0z\0��\0f\0\0\0S\0\0\0\0\03*++�\0�+�\0�*+�\0��\0|��\0�W*++�\0�*+�\0��\0+�\0���\0\0\0g\0\0\0\0\0\0�\0\Z�\01�n\0\0\0\0z\0��\0f\0\0\0D\0\0\0\0\0 +�M+�N*++�\0�*+�\0��\0,-��\0\0\0g\0\0\0\0\0\0�\0�\0\n�\0�n\0\0\0\0z\0��\0f\0\0\0|\0\0\0\0\08+�\0��\0*�\0Q�\0+�*+��+��\0*�\0Q�\0+�*+��*+��\0\0\0g\0\0\0&\0	\0\0�\0�\0�\0�\0�\0 �\0\'�\0,�\02�j\0\0\0\0n\0\0\0\0z\0��\0f\0\0\0Y\0\0\0\0\09*++�\0�+�*+�\0��\0�+�\0�*++�\0�+�+�\0*+�\0��\0���\0�W�\0\0\0g\0\0\0\0\0\0�\0\Z\07n\0\0\0\0z\0��\0f\0\0\0Y\0\0\0\0\09*++�\0�+�+�\0�*+�\0��\0���\0�W*++�\0�+�*+�\0��\0�+�\0���\0\0\0g\0\0\0\0\0\0	\0\07\rn\0\0\0\0z\0��\0f\0\0\0G\0\0\0\0\0#+�M+�N*++�\0�+�*+�\0��\0�,-��\0\0\0g\0\0\0\0\0\0\0\0\n\0!n\0\0\0\0z\0��\0f\0\0g\0\0\n\0\0\0��\0p*�\0E�\0\Z�\0CY�\0�:*�\0E�\0�\0W�\0F\0:�\0G\0�\0?�\0H\0�\0I:�\0\0�\0z:		�\0	��\0*+,-�	��\0�W����\0p*�\0E�\0\Z�\0CY�\0�:*�\0E�\0�\0W�\0F\0:�\0G\0�\0?�\0H\0�\0I:�\0\0�\0z:		�\0	��\0*+,-�	��\0�W����\0\0\0g\0\0\0N\0\0\0\0!\0#\0$\0#\'\0B)\0P*\0],\0o.\0r1\0w3\0~5\0�6\0�9\0�;\0�<\0�>\0�@\0�Bj\0\0\0\0#�\0u�\0B�\0\"�\0u�\0B�\0n\0\0\0\0z2\0\0\0�\0��\0f\0\0\08\0\0\0\0\0*++�\0�+�+�\0�*+�\0��\0��\0�W�\0\0\0g\0\0\0\n\0\0\0H\0\ZJn\0\0\0\0z\0��\0f\0\0\0�\0\0\0\0\0r+�M*�\0S�\0,�	��\0�\0�\0��*�\0U�\05*�\0U,�\0Ѹ\0�\Z\0�\0\"�\0�\0Y�\0	�\0,�\0Ѷ\0�\0\r�\0��*++�\0�,+�\0�*+�\0��\0��\0�W�\0\0\0g\0\0\0&\0	\0\0Q\0S\0U\0V\0 Y\0:[\0W\\\0Y_\0paj\0\0\0	\0�\0 �8n\0\0\0\0z\0��\0f\0\0\0�\0\0\0\0\0r+�M*�\0S�\0,�	��\0�\0�\0��*�\0U�\05*�\0U,�\0Ѹ\0�\Z\0�\0\"�\0�\0Y�\0	�\0,�\0Ѷ\0�\0\r�\0��*++�\0�,+�\0�*+�\0��\0��\0�W�\0\0\0g\0\0\0&\0	\0\0h\0j\0l\0m\0 p\0:r\0Ws\0Yv\0pxj\0\0\0	\0�\0 �8n\0\0\0\0z\0��\0f\0\0\0�\0\0\0\0\0G*�\0�\0��*�\0 �\0��L+�\0+��Y*�\0�M�*�\0 �\0,� �L+�\0,L+�\0\0\0g\0\0\0*\0\n\0\0}\0\0	�\0\Z�\0�\0 �\0-�\0?�\0C�\0E�j\0\0\0\0	�\0��\0$���\0f\0\0\0\0\0\0\0\0\0�\0�\0\0\0g\0\0\0\0\0\0\04\0�e\0f\0\0\0C\0\0\0\0\0\0#!�\"�\0�#Y�$�%�&�\'�(�\0��\0\0\0g\0\0\0\0\0\0\08\0	\0:\0r\0�\0\0\0�,\0\0\0*\0\0r!+\0\0z!-\0\0�\0\0\0\0\0\0\0k�.	�#�@'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.AbstractTerminalServiceActivator$1',1433856492000,'����\0\0\04\0�	\07\0R\n\08\0S\0T\n\0U\0V\n\07\0W\0X\n\07\0Y\n\0Z\0[\0\\\n\07\0]\0^\0_	\0\0`\n\0a\0b	\0P\0c\0d\0e\n\0\0f\n\0Z\0g\0h\0i\n\0\0j\0k	\0P\0l\n\0m\0n\0o\0p\0o\0q\0r\n\0\0s\n\0t\0u\0v\0w\n\0 \0S\n\0 \0x\n\0 \0y\0z\0{	\0P\0|\n\0}\0~\0%\0\0�\0�\0�\0�\0�	\0\0�\0%\0�\n\0+\0�\0�\0�\0�\n\0P\0�\0�\n\0P\0�\n\03\0�\n\0�\0�\0�\0�\0this$0\0VLru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator;\0<init>\0Y(Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator;)V\0Code\0LineNumberTable\0invoke\0L(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0\rStackMapTable\0�\0�\0e\0�\0�\0�\0w\0{\0_\0�\0�\0\nSourceFile\0%AbstractTerminalServiceActivator.java\0EnclosingMethod\0�\0�\0�\09\0:\0;\0�\0arg\0�\0�\0�\0�\0�\0macros\0�\0�\0�\0�\0�\0\0\0�\0�\0param\09ru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntime\0�\0�\0�\0�\0�\0�\0�\0	servParam\08ru/bitel/bgbilling/modules/inet/api/common/bean/InetServ\0�\0�\0�\0�\0ru/bitel/common/Preferences\0\n\0;\0�\0host\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0\Zjava/net/InetSocketAddress\0�\0�\0�\0�\0�\0concat\0java/lang/StringBuilder\0�\0�\0�\0�\0option\0\rjava/util/Set\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0java/lang/Integer\0�\0�\0�\0�\0�\0�\0switch\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0�\0�\0java/lang/Exception\0�\0�\0�\0�\0�\0�\0�\0Vru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$1\0InnerClasses\0!ru/bitel/common/util/MacrosFormat\0java/lang/String\0java/lang/Object\0java/util/List\0[Ljava/lang/Object;\0java/util/Iterator\0Tru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator\0createMacrosFormat\0%()Lru/bitel/common/util/MacrosFormat;\0()V\0equals\0(Ljava/lang/Object;)Z\0getInt\0([Ljava/lang/Object;II)I\0	getString\0:([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/String;\0ru/bitel/common/Utils\0\risEmptyString\0(Ljava/lang/String;)Z\0format\09(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;\0inheritedConfig\0Lru/bitel/common/ParameterMap;\0ru/bitel/common/ParameterMap\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0config\0	getConfig\0()Ljava/lang/String;\0\risBlankString\0\'(Ljava/lang/String;Ljava/lang/String;)V\0device\0<Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0getHosts\0()Ljava/util/List;\0size\0()I\0(I)Ljava/lang/Object;\0\ngetAddress\0()Ljava/net/InetAddress;\0java/net/InetAddress\0getHostAddress\0append\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0toString\0optionRuntimeMap\0>Lru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntimeMap;\0<ru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntimeMap\0>(I)Lru/bitel/bgbilling/modules/inet/runtime/InetOptionRuntime;\0iterator\0()Ljava/util/Iterator;\0hasNext\0()Z\0next\0()Ljava/lang/Object;\0\rdescendantIds\0Ljava/util/Set;\0contains\0intValue\0getValue(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0\naccess$000\0()Lorg/apache/log4j/Logger;\0\ngetMessage\0org/apache/log4j/Logger\0error\0*(Ljava/lang/Object;Ljava/lang/Throwable;)V\0 \07\08\0\0\0\09\0:\0\0\0\0\0\0;\0<\0\0=\0\0\0\"\0\0\0\0\0\n*+�\0*�\0�\0\0\0\0>\0\0\0\0\0\0�\0\0?\0@\0\0=\0\0�\0\0	\0\0�+�\0�\0\r-*,�\02�+�\0�\0*,�\0:�\0�\0	�*-�\0\n�+�\0�\0V,��\05,2:�\0�\0�\0�\0\r*,�\0*,	�\0�\0�*,	�\0�*�\0�\0*,�\0*,	�\0�\0�+�\0�\0F-2�\0:�\0:�\0�\0*,	�\0��\0Y�\0:*,	�\0*,	�\0�\0�+�\0�\01*�\0�\0�\0:�\0\Z\0�\0�\0\0�\0:�\0�\0��+�\0�\09�\0 Y�\0!:,:�66�\02:�\0\"W�����\0#�$+�\0�\0�-2�\0%:,��\0b*,�\06�\0T*�\0�\0&�\0\':�\0(\0:�\0)\0�\01�\0*\0�\0+:�\0,�\0-\0�\0*�\0�\0&�\0.�\0\'������\0(\0:�\0)\0�\0�\0*\0�\0+:*�\0�\0&�\0.�\0\'��/+�\0�\0a*,�\06,�p�\0�\06�\0\n,�d�\0,�66�\0 *,�\0�\0\n,`2�`6���,�p�\0\n,,�d2��-2:�\00�\0**�\0-2�\01-2�\0-2�\00-2�\0%+,-�\02:�\0\'*�\0-2�\01-2�\0-2�\00-2�\0%+,-�\02:�:�\04�\05�\06�\0c��\03\0\0>\0\0\n\0B\0\0�\0	�\0�\0�\0%�\0-�\00�\08�\0A�\0G�\0L�\0T�\0p�\0y�\0��\0��\0��\0��\0��\0��\0��\0��\0��\0��\0����� �)�B�J�P�V�_�g�l�u�z�����\n����,6CJS$Z&a)c1h2p4�8�;�=�?�B\0A\0\0\0�\0 �\0\0B�\0�\07\0C�\0\Z�\0(\0D\0B�\0\"�\04\0E�\0�\0\0\0F\0B\0G\0G\0H\0G\0\0�\0�\0�\0:\0\0F\0B\0G\0G\0I\0J\0K\0\04�\0�\0�\0\0K�\0%�\0�\0@�\0\rA�\0\Z�\0\r�\0�\03\0\0C�\0#\0\0F\0B\0G\0G\0C\0C\0\0�\0\0\0F\0B\0G\0G\0\0L\0\0M\0\0\0\0N\0O\0\0\0\0P\0Q\0�\0\0\0\n\0\07\0\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.AbstractTerminalServiceActivator$Commands',1433856492000,'����\0\0\04\0\n\0\0	\0\0	\0\0\0\0\0enableCommands\0[Ljava/lang/String;\0disableCommands\0<init>\0)([Ljava/lang/String;[Ljava/lang/String;)V\0Code\0LineNumberTable\0\nSourceFile\0%AbstractTerminalServiceActivator.java\0	\0\0\0\0\0\0\0]ru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$Commands\0Commands\0InnerClasses\0java/lang/Object\0()V\0Tru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\n\0\0\0\0\03\0\0\0\0\0*�\0*+�\0*,�\0�\0\0\0\0\0\0\0\0\0\0\0d\0\0e\0	\0f\0\0g\0\0\r\0\0\0\0\0\0\0\0\n\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.AbstractTerminalServiceActivator$CommandSet',1433856492000,'����\0\0\04\0\"\n\0\0\0\0\0servCreateCommands\0[Ljava/lang/String;\0servCancelCommands\0servModifyCommands\0 \0Commands\0InnerClasses\0_Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$Commands;\0servOptionModifyCommandsMap\0Ljava/util/Map;\0	Signature\0�Ljava/util/Map<Ljava/lang/Integer;Lru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$Commands;>;\0connectionModifyCommands\0!connectionOptionModifyCommandsMap\0connectionCloseCommands\0onAccountingStartCommands\0onAccountingStopCommands\0<init>\0()V\0Code\0LineNumberTable\0\nSourceFile\0%AbstractTerminalServiceActivator.java\0\0\0!\0_ru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$CommandSet\0\nCommandSet\0java/lang/Object\0]ru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator$Commands\0Tru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator\0!\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0\0j\0\0\0\0\0\0\Z\0\n\0\0\0\0\0\0\0	\0\0\0\0\0'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.SSHServiceActivator',1433856492000,'����\0\0\04V\n\0g\0�\n\0g\0�	\0c\0�\0�\n\0�\0�	\0c\0�\0�	\0c\0�\0�\n\0�\0�	\0c\0�\n\0g\0�\n\0c\0�	\0c\0�\0\0\0\0\0\0\0	\0�\0�\n\0�\0�	\0c\0�\0�	\0c\0�	\0c\0�	\0c\0�\n\0\0�	\0c\0�\n\0\0�	\0c\0�\n\0\0�\n\0�\0�\n\0\0�\n\0\0�\n\0\0�	\0c\0�\0�\n\0\"\0�\0�\n\0\"\0�	\0c\0�\n\0\"\0�\n\0\"\0�\n\0�\0�	\0c\0�\0�\0�\0�\0�\n\0\"\0�\0�\n\0�\0�\n\0g\0�\n\0g\0�\0�\0�	\0c\0�\n\0\0�\n\0\0�\0�\n\0�\0�\0�\n\0�\0�\n\0c\0�\0�\n\0\0�\0�\0�	\0c\0�\n\0�\0�\n\0�\0�\n\0�\0�\n\0�\0�\0�\0�\0�\n\0�\0�\0\0\0\0\0	\'�\n\0�\0�\0�	\0c\0�\0�\0�\0�\n\0�\0�\0�\n\0�\0�\0�\0�\0�\0�\0�\n\0Z\0�\n\0�\0�\0�\n\0_\0�\0�\n\0�\0�\0�\n\0g\0�\0�\n\0�\0�\0\n\0�\0logger\0Lorg/apache/log4j/Logger;\0regexp\0Ljava/lang/String;\0endSequence\0session\0*Lbitel/billing/server/util/ssh/SSHSession;\0lazyConnect\0Z\0returnCodePattern\0Ljava/util/regex/Pattern;\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0�\0\nExceptions\0destroy\0()Ljava/lang/Object;\0connect\0connectImpl\0�\0�\0\ngetSession\0,()Lbitel/billing/server/util/ssh/SSHSession;\0\ndisconnect\0executeCommand\0(Ljava/lang/String;)V\0�\0�	\0getValue(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0	Signature+(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0<clinit>\0\nSourceFile\0SSHServiceActivator.java\0t\0u\0x\0y\n\0sa.endSequence\r\0m\0l\0\rsa.exitRegexp\0k\0l\0sa.lazyConnect\0p\0q\0�\0�\0�\0�\0q\0(bitel/billing/server/util/ssh/SSHSession\0l\Z\0l\0l\0t !\"#$%&\'\0�(\0�\0�)\0i\0j\0java/lang/StringBuilder\0\rConnected to *+,-*./)012\0n\0o\0java/lang/Exception\0Can\'t connect to \0 to \0:*3\0H. Check host/port, username/password and sa.endSequence (command prompt)42\0�\0�\0�\0�\0[\0] executeAsync: 5\0l6\0�\0�\0u\0Disconnected72\0\"Not connected - skip disconnection8\0u\0�\0�\0] execute: 9:\0%java/util/concurrent/TimeoutException\0DTimeout waiting command prompt (endSequence) when executing command.\0r\0s;<=	>?@AB\0	Command \"\0\" executed with RETURN_CODE=\0inet.sa.ssh.returnCodeCDEFGH\0\\Inet: Ошибка работы обработчика активации сервисов [I\0] \0VОшибка работы обработчика активации сервисов [\0\nJ)\0\n(K)\0)\n\n\0%Исполнение команды \"\0+\" завершилось с ошибкой \0!\0:bitel/billing/server/admin/errorlog/bean/AlarmErrorMessage\0tLMN\0setEndSequenceOP\0java/lang/StringQ&\0\0\0�\0�\0Gru/bitel/bgbilling/modules/inet/dyn/device/terminal/SSHServiceActivatorRS\0RETURN_CODE=(\\d+)TU\0Tru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/lang/Throwable\0java/util/regex/Matcher\0port\0I\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0getInt\0(Ljava/lang/String;I)I\0connectionSemaphore\0 Ljava/util/concurrent/Semaphore;\0java/util/concurrent/TimeUnit\0MINUTES\0Ljava/util/concurrent/TimeUnit;\0java/util/concurrent/Semaphore\0\ntryAcquire\0#(JLjava/util/concurrent/TimeUnit;)Z\0connectionSemaphoreAcquired\0host\0username\0password\0:(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V\0timeout\0\nsetTimeout\0(I)V\0readWait\0J\0setReadWait\0(J)V\0ru/bitel/common/Utils\0notBlankString\0(Ljava/lang/String;)Z\0setEndString\0	setRegexp\0()Ljava/lang/String;\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0device\0<Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;\0-(Ljava/lang/Object;)Ljava/lang/StringBuilder;\0toString\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0(I)Ljava/lang/StringBuilder;\0error\0exitCommand\0doCommandAsync\0debug\0release\0	doCommand\0&(Ljava/lang/String;)Ljava/lang/String;\0java/util/regex/Pattern\0matcher\03(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;\0find\0()Z\0group\0(I)Ljava/lang/String;\0parseInt\0java/lang/System\0currentTimeMillis\0()J\0/bitel/billing/server/admin/errorlog/AlarmSender\0\rneedAlarmSend\0(Ljava/lang/String;JJ)Z\0deviceId\0getHost\0\ngetComment\09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V\0	sendAlarm\0@(Lbitel/billing/server/admin/errorlog/bean/AlarmErrorMessage;J)V\0equals\0(Ljava/lang/Object;)Z\0notEmptyString\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0compile\0-(Ljava/lang/String;)Ljava/util/regex/Pattern;\0!\0c\0g\0\0h\0\0\Z\0i\0j\0\0\0\0k\0l\0\0\0\0m\0l\0\0\0\0n\0o\0\0\0\0p\0q\0\0\0\n\0r\0s\0\0\0\n\0\0t\0u\0\0v\0\0\0\0\0\0\0\0*�\0�\0\0\0\0w\0\0\0\0\0\0\0\0\0x\0y\0\0v\0\0\0�\0\0\0\0\0G*+-�\0W*�\0�\0	*�\0*�\0�\0*�\0�\0*	�\0\n�\0�\0�\0�\0\0\0\0w\0\0\0\0\0\0\01\0\03\0\05\0\08\0%\09\01\0;\0E\0=\0z\0\0\0\"\0g\0{�\0\0\0\0{\0|\0}\0~\0\0\0{\0�\0\0\0\0\0+\0\0�\0�\0\0v\0\0\0\0\0\0\0\0*�\0�\0\0\0\0w\0\0\0\0\0\0\0D\0�\0\0\0\0\0+\0\0�\0�\0\0v\0\0\07\0\0\0\0\0*�\0�\0�*�\0\r�\0\0\0\0w\0\0\0\0\0\0\0K\0\0M\0	\0P\0z\0\0\0\0	\0�\0\0\0\0\0+\0\0�\0�\0\0v\0\0L\0\0\0\0\0�*�\0�\0**�\0\0�\0�\0�\0�\0Y*�\0*�\0*�\0*�\0�\0L+*�\0�\0\Z+*�\0�\0*�\0�\0�\0+*�\0�\0*�\0�\0�\0+*�\0�\0+�\0 W�\0!�\0\"Y�\0#$�\0%*�\0&�\0\'�\0(�\0)*+�\0*�\0?L�\0!�\0\"Y�\0#,�\0%*�\0&�\0\'-�\0%*�\0�\0%.�\0%*�\0�\0/0�\0%�\0(�\01+�*�\02�\0\0\0\0�\0�\0+\0\0w\0\0\0F\0\0\0\0X\0\0Z\0\0]\00\0^\08\0_\0@\0a\0J\0c\0R\0f\0\\\0h\0d\0k\0i\0l\0�\0n\0�\0t\0�\0p\0�\0r\0�\0s\0�\0v\0z\0\0\0\0�\09\0��\0(\0\0{\0\0�;\0�\0\0\0\0\0+\0\0�\0�\0\0v\0\0\0C\0\0\0\0\0*�\0*�\0*�\0*�*�\0\rW*�\0*�\0\0\0\0w\0\0\0\0\0\0\0|\0\0~\0\0�\0\0�\0z\0\0\0\0\0�\0\0\0\0\0+\0\0�\0�\0\0v\0\01\0\0\0\0\0�*�\0*�\0l*�\03W�\0!�\0\"Y�\0#4�\0%*�\0&�\0\'5�\0%*�\06�\0%�\0(�\0)*�\0**�\06�\07*�\0*�\08*�\0*�\0!9�\0:�\0\ZL*�\0*�\08*�\0*�\0!9�\0:+��\0�\0!;�\0:*�\0�\0,*�\0�\0%*�\0�\0<�\0M*�\0�\0*�\0�\0\n*�\0�\0<,��\0\0\0?\0V\0\0\0\0\0x\0�\0\0\0\0w\0\0\0F\0\0\0\0�\0\0�\0\0�\04\0�\0?\0�\0F\0�\0K\0�\0S\0�\0V\0�\0^\0�\0c\0�\0p\0�\0x\0�\0�\0�\0�\0�\0�\0�\0�\0�\0z\0\0\0\0�\0V\0�W\0��\0\0\0��\0\0�\0\0\0\0\0+\0\0�\0�\0\0v\0\0\0\0\0\0\0I*�\0=M�\0!�\0\"Y�\0#4�\0%*�\0&�\0\'>�\0%+�\0%�\0(�\0),+�\0?N�\0:�\0!A�\01��\0!-�\0)-�\0�\0��\0B-�\0C:�\0D�\0��\0E:�\0F�\0���\0!�\0\"Y�\0#G�\0%+�\0%H�\0%�\0%�\0(�\01I:�\0J7\0K�\0M�\0��\0\"Y�\0#N�\0%*�\0O�\0/P�\0%*�\0&�\0\'�\0(:	�\0\"Y�\0#Q�\0%*�\0O�\0/P�\0%*�\0&�\0\'R�\0%*�\0&�\0S�\0%T�\0%*�\0&�\0U�\0%V�\0%W�\0%+�\0%X�\0%�\0%Y�\0%�\0(:\n�\0ZY	\n�\0[:�\0\\���\0\0*\00\03\0@\0\0w\0\0\0j\0\Z\0\0\0�\0\0�\0*\0�\00\0�\03\0�\05\0�\0=\0�\0@\0�\0G\0�\0N\0�\0W\0�\0_\0�\0g\0�\0p\0�\0s\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�/\0�>\0�E\0�H\0�\0z\0\0\0-\0�\03\0\0{\0�\0�\0\0��\0\0��\0\0��\0\0��\0��\0\0�\0\0\0\0\0+\0\0�\0�\0\0v\0\0\0�\0\0	\0\0\0P]�\0^�\09��\0%2�\0_:�\0`�\0*�\0=2�\0_�\0a�*�\0=*�\0�\0a�*+,-�\0b�\0\0\0\0w\0\0\0&\0	\0\0\0�\0\n\0�\0\0�\0\0�\0!\0�\0/\0�\02\0�\0=\0�\0@\0�\0z\0\0\0\02\r\0�\0\0\0\0\0+\0�\0\0\0\0�\0\0�\0u\0\0v\0\0\0-\0\0\0\0\0\0c�\0d�\0!e�\0f�\0B�\0\0\0\0w\0\0\0\n\0\0\0\0 \0\0�\0\0�\0\0\0\0�'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.TelnetServiceActivator',1433856492000,'����\0\0\04\0�\n\07\0a\n\07\0b	\05\0c\0d\0e\n\0f\0g	\05\0h\0i\n\0f\0j	\05\0k\n\07\0l\n\05\0m\0n	\05\0o\n\0\r\0p	\05\0q\n\0\r\0r	\05\0s\n\0\r\0t\0u\n\0\r\0v\n\0\r\0w	\05\0x\0y\n\0z\0{	\05\0|	\05\0}\n\0\r\0~\0\n\0�\0�	\05\0�\0�\n\07\0�\n\07\0�\0�\n\0#\0a\0�\n\0#\0�	\05\0�\n\0#\0�\n\0\r\0�\n\0\r\0�\0�\n\0z\0�\n\05\0�\0�\0�\n\01\0�\0�\n\0�\0�\0�\n\07\0�\0�\n\0z\0�\0�\0�\0logger\0Lorg/apache/log4j/Logger;\0endSequence\0Ljava/lang/String;\0session\00Lbitel/billing/server/util/telnet/TelnetSession;\0lazyConnect\0Z\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0�\0�\0�\0�\0�\0\nExceptions\0�\0destroy\0()Ljava/lang/Object;\0connect\0connectImpl\0n\0\ngetSession\02()Lbitel/billing/server/util/telnet/TelnetSession;\0\ndisconnect\0�\0executeCommand\0(Ljava/lang/String;)V\0getValue(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0	Signature+(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetServ;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;Ljava/util/Set<Ljava/lang/Integer;>;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;\0<clinit>\0\nSourceFile\0TelnetServiceActivator.java\0A\0B\0E\0F\0�\0�\0sa.endSequence\0#\0�\0�\0�\0;\0<\0sa.lazyConnect\0�\0�\0?\0@\0O\0P\0R\0P\0.bitel/billing/server/util/telnet/TelnetSession\0�\0<\0A\0�\0�\0�\0�\0�\0�\0�\0�\0�\0:\0�\0Y\0Q\0�\09\0:\0	Connected\0�\0�\0�\0=\0>\0�\0<\0�\0�\0\rLogin entered\0�\0�\0�\0�\0<\0Password entered\0Q\0P\0V\0P\0java/lang/StringBuilder\0executeAsync: \0�\0�\0�\0<\0�\0�\0�\0Y\0V\0B\0Disconnected\0�\0�\0T\0U\0	execute: \0setEndSequence\0�\0�\0java/lang/String\0�\0�\0\0\0Z\0[\0Jru/bitel/bgbilling/modules/inet/dyn/device/terminal/TelnetServiceActivator\0�\0�\0Tru/bitel/bgbilling/modules/inet/dyn/device/terminal/AbstractTerminalServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0$ru/bitel/bgbilling/server/util/Setup\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType\0ru/bitel/common/ParameterMap\0java/lang/Exception\0java/lang/Throwable\0port\0I\0get\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0getInt\0(Ljava/lang/String;I)I\0host\0(Ljava/lang/String;I)V\0timeout\0\nsetTimeout\0(I)V\0readWait\0J\0setReadWait\0(J)V\0setEndString\0()Ljava/lang/String;\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0username\0	doCommand\0&(Ljava/lang/String;)Ljava/lang/String;\0ru/bitel/common/Utils\0notBlankString\0(Ljava/lang/String;)Z\0password\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0exitCommand\0toString\0doCommandAsync\0debug\0equals\0(Ljava/lang/Object;)Z\0notEmptyString\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\05\07\0\08\0\0\Z\09\0:\0\0\0\0;\0<\0\0\0\0=\0>\0\0\0\0?\0@\0\0\0\n\0\0A\0B\0\0C\0\0\0\0\0\0\0\0*�\0�\0\0\0\0D\0\0\0\0\0\0\0\0\0E\0F\0\0C\0\0\0�\0\0\0\0\0<*+-�\0W*�\0�\0	*�\0*�\0�\0*�\0	�\0�\0�\0\n�\0\0\0\0D\0\0\0\Z\0\0\0\0&\0\0(\0\0*\0\0-\0&\0/\0:\01\0G\0\0\0\"\0\\\0H�\0\0\0\0H\0I\0J\0K\0L\0\0H\0M\0\0\0\0\0N\0\0O\0P\0\0C\0\0\0\0\0\0\0\0*�\0�\0\0\0\0D\0\0\0\0\0\0\08\0M\0\0\0\0\0N\0\0Q\0P\0\0C\0\0\07\0\0\0\0\0*�\0\n�\0�*�\0�\0\0\0\0D\0\0\0\0\0\0\0?\0\0A\0	\0D\0G\0\0\0\0	\0M\0\0\0\0\0N\0\0R\0P\0\0C\0\0\0�\0\0\0\0\0{�\0\rY*�\0*�\0�\0L+*�\0�\0+*�\0�\0+�\0+�\0W�\0�\0*+�\0\Z�\0+*�\0�\0�\0�\0�\0*�\0�\0�\0+*�\0�\0�\0+*�\0�\0�\0�\0 �\0*�\0!�\0\0\0\0D\0\0\0:\0\0\0\0J\0\0K\0\0L\0 \0N\0&\0P\0+\0Q\03\0S\08\0U\0F\0V\0N\0X\0X\0Z\0`\0]\0n\0^\0v\0c\0G\0\0\0\0�\0`\0S\0M\0\0\0\0\0N\0\0T\0U\0\0C\0\0\0C\0\0\0\0\0*�\0\Z�\0*�\0\Z�*�\0W*�\0\Z�\0\0\0\0D\0\0\0\0\0\0\0i\0\0k\0\0n\0\0p\0G\0\0\0\0\0M\0\0\0\0\0N\0\0V\0P\0\0C\0\0\0�\0\0\0\0\0c*�\0\Z�\0]*�\0\"W�\0�\0#Y�\0$%�\0&*�\0\'�\0&�\0(�\0*�\0\Z*�\0\'�\0)*�\0\Z�\0**�\0\Z�\0+�\0,�\0\ZL*�\0\Z�\0**�\0\Z�\0+�\0,+��\0\0\03\0J\0\0\0\0D\0\0\02\0\0\0\0w\0\0{\0\0}\0(\0~\03\0�\0:\0�\0?\0�\0G\0�\0J\0�\0R\0�\0W\0�\0a\0�\0G\0\0\0	\0�\0J\0W\0M\0\0\0\0\0N\0\0X\0Y\0\0C\0\0\0N\0\0\0\0\0**�\0-M�\0�\0#Y�\0$.�\0&+�\0&�\0(�\0�\0,+�\0�\0�\0\0\0\0D\0\0\0\0\0\0\0�\0\0�\0\0�\0)\0�\0M\0\0\0\0\0N\0\0Z\0[\0\0C\0\0\0�\0\0	\0\0\0P/�\00�\09��\0%2�\01:�\02�\0*�\0-2�\01�\03�*�\0-*�\0�\03�*+,-�\04�\0\0\0\0D\0\0\0&\0	\0\0\0�\0\n\0�\0\0�\0\0�\0!\0�\0/\0�\02\0�\0=\0�\0@\0�\0G\0\0\0\02\r\0M\0\0\0\0\0N\0\\\0\0\0\0]\0\0^\0B\0\0C\0\0\0!\0\0\0\0\0\0	5�\06�\0�\0\0\0\0D\0\0\0\0\0\0\0\Z\0\0_\0\0\0\0`'),('ru.bitel.bgbilling.modules.inet.dyn.device.wifi.WiFiServiceActivator',1433856492000,'����\0\0\04\0�\n\0+\0Q	\0-\0R	\0-\0S\n\0T\0U	\0-\0V\n\0T\0W\0X\0Y\0X\0Z\0[\n\0	\0\\\n\0]\0^	\0-\0_\n\0	\0`	\0-\0a\0b\n\0c\0d\0e\n\0c\0f\n\0g\0h\0i\n\0\0Q\n\0\0j\n\0\0k	\0-\0l\0m\n\0n\0o\n\0p\0q\0r\n\0\0Q\n\0\0s\n\0\0t\n\0u\0v\n\0w\0x\n\0y\0z\n\0\0{\n\0|\0}\n\0|\0~\n\0\0\n\0�\0�\0�\n\0p\0�\n\0-\0�\0�\n\0n\0�\0�\0�\0logger\0Lorg/apache/log4j/Logger;\0socket\0Ljava/net/DatagramSocket;\0device\0<Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;\0host\0Ljava/lang/String;\0port\0I\0secret\0<init>\0()V\0Code\0LineNumberTable\0init\0�(Lru/bitel/bgbilling/server/util/Setup;ILru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice;Lru/bitel/bgbilling/modules/inet/api/common/bean/InetDeviceType;Lru/bitel/common/ParameterMap;)Ljava/lang/Object;\0\rStackMapTable\0\nExceptions\0�\0connect\0()Ljava/lang/Object;\0\ndisconnect\0connectionClose\0U(Lru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent;)Ljava/lang/Object;\0�\0�\0�\0�\0r\0connectionModify\0<clinit>\0\nSourceFile\0WiFiServiceActivator.java\0:\0;\01\02\03\04\0�\0�\0�\09\06\0�\0�\0�\0�\0�\0�\0�\0\Zjava/net/InetSocketAddress\0�\0�\0�\0�\0�\05\06\0�\0�\07\08\0sa.host\0�\0�\0�\0sa.port\0�\0�\0�\0�\0�\0java/net/DatagramSocket\0�\0�\0�\0;\0/\00\0connection close\0�\0�\0�\0�\0�\0�\00ru/bitel/bgbilling/kernel/wifi/common/WiFiPacket\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0�\0connection modify\0�\0�\0F\0G\0Aru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorAdapter\0�\0�\0Dru/bitel/bgbilling/modules/inet/dyn/device/wifi/WiFiServiceActivator\0:ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivator\0java/lang/Exception\0?ru/bitel/bgbilling/modules/inet/access/sa/ServiceActivatorEvent\0>ru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection\06ru/bitel/bgbilling/kernel/wifi/common/WiFiPacketRecord\0:ru/bitel/bgbilling/modules/inet/api/common/bean/InetDevice\0	getSecret\0()Ljava/lang/String;\0getHosts\0()Ljava/util/List;\0java/util/List\0size\0()I\0get\0(I)Ljava/lang/Object;\0\ngetAddress\0()Ljava/net/InetAddress;\0java/net/InetAddress\0getHostAddress\0getPort\0ru/bitel/common/ParameterMap\08(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\0getInt\0(Ljava/lang/String;I)I\0java/lang/Boolean\0valueOf\0(Z)Ljava/lang/Boolean;\0setSoTimeout\0(I)V\0close\0org/apache/log4j/Logger\0debug\0(Ljava/lang/Object;)V\0\rgetConnection\0B()Lru/bitel/bgbilling/modules/inet/api/common/bean/InetConnection;\0	setSecret\0(Ljava/lang/String;)V\0setType\0(B)V\0getInetAddressBytes\0()[B\0ru/bitel/common/inet/IpAddress\0toString\0([B)Ljava/lang/String;\0bitel/billing/common/IPUtils\0convertStringIPtoInt\0(Ljava/lang/String;)I\0add\0.ru/bitel/bgbilling/kernel/wifi/common/WiFiUtil\0\nsendPacket\0a(Ljava/net/DatagramSocket;Lru/bitel/bgbilling/kernel/wifi/common/WiFiPacket;Ljava/lang/String;I)V\0\rrecievePacket\0_(Ljava/net/DatagramSocket;Ljava/lang/String;)Lru/bitel/bgbilling/kernel/wifi/common/WiFiPacket;\0getFirstRecord\0:()Lru/bitel/bgbilling/kernel/wifi/common/WiFiPacketRecord;\0getIp\0getNewState\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0-\0+\0\0.\0\0\n\0/\00\0\0\0\01\02\0\0\0\03\04\0\0\0\05\06\0\0\0\07\08\0\0\0\09\06\0\0\0\0\0:\0;\0\0<\0\0\0&\0\0\0\0\0\n*�\0*�\0�\0\0\0\0=\0\0\0\n\0\0\0\0\Z\0\0 \0\0>\0?\0\0<\0\0\0�\0\0\0\0\0`*-�\0*-�\0�\0-�\0�\0\0�\0\'-�\0�\0\0�\0	:*�\0\n�\0�\0*�\0\r�\0**�\0�\0�\0**�\0�\0�\0�\0�\0\0\0\0=\0\0\0&\0	\0\0\05\0\07\0\r\09\0\0;\0(\0<\04\0=\0=\0@\0L\0A\0[\0C\0@\0\0\0\0=\0A\0\0\0\0\0B\0\0C\0D\0\0<\0\0\0:\0\0\0\0\0\Z*�\0Y�\0�\0*�\0��\0�\0�\0\0\0\0=\0\0\0\0\0\0\0P\0\0Q\0\0S\0A\0\0\0\0\0B\0\0E\0D\0\0<\0\0\0(\0\0\0\0\0*�\0�\0�\0�\0\0\0\0=\0\0\0\n\0\0\0\0^\0\0_\0A\0\0\0\0\0B\0\0F\0G\0\0<\0\0\0�\0\0\0\0\0y�\0�\0\Z+�\0MN�\0Y�\0:*�\0�\0�\0,�\0 �\0!�\0\"6�\0#*�\0*�\0*�\0�\0$*�\0*�\0�\0%:�\0	�\0&N-�\0-�\0\'�\0�\0�\0�\0\0\0\0=\0\0\06\0\r\0\0\0m\0\0n\0\r\0p\0\0r\0\0s\0!\0t\0\'\0v\03\0x\0:\0y\0K\0{\0X\0|\0]\0~\0c\0�\0@\0\0\0\0�\0c\0\0H\0I\0J\0K\0L\0L\0\0@\0A\0\0\0\0\0B\0\0M\0G\0\0<\0\0\0G\0\0\0\0\0\Z�\0(�\0\Z+�\0)�\0	*+�\0*��\0�\0\0\0\0=\0\0\0\0\0\0\0�\0\0�\0\0�\0\0�\0@\0\0\0\0\0A\0\0\0\0\0B\0\0N\0;\0\0<\0\0\0!\0\0\0\0\0\0	+�\0,�\0�\0\0\0\0=\0\0\0\0\0\0\0\0\0O\0\0\0\0P'),('ru.provider.bgbilling.kernel.dyn.script.AdditionalAction',1433868293000,'����\0\0\04\0O\n\0\0%\0&\0\'\0(\n\0\0%\0)\n\0\0*\n\0+\0,\n\0-\0.\n\0\0/\n\0\00\01\n\0\00\02	\0\03\04\n\05\06\07\n\0\08\09\n\05\0:\0;\0logger\0Lorg/apache/log4j/Logger;\0<init>\0()V\0Code\0LineNumberTable\0onEvent\0s(Lru/bitel/bgbilling/kernel/event/Event;Lru/bitel/bgbilling/server/util/Setup;Lru/bitel/common/sql/ConnectionSet;)V\0\rStackMapTable\0\nExceptions\0<\0<clinit>\0\nSourceFile\0AdditionalAction.java\0\0\Z\0Fru/bitel/bgbilling/kernel/event/events/GetAdditionalWebActionListEvent\0$Какое-либо действие\0java/lang/StringBuilder\0�Данное действие тестовое, оно ничего не делает, обрабатывается динамическим классом \0=\0>\0?\0@\0A\0B\0C\0D\0E\0D\0F\0G\0Cru/bitel/bgbilling/kernel/event/events/GetAdditionalActionListEvent\0<ru/bitel/bgbilling/kernel/event/events/AdditionalActionEvent\0\0\0Do \0H\0I\0J\0Готово\0K\0L\08ru/provider/bgbilling/kernel/dyn/script/AdditionalAction\0M\0N\0;ru/bitel/bgbilling/kernel/script/server/dev/EventScriptBase\0java/lang/Exception\0append\0-(Ljava/lang/String;)Ljava/lang/StringBuilder;\0java/lang/Object\0getClass\0()Ljava/lang/Class;\0java/lang/Class\0getName\0()Ljava/lang/String;\0toString\0	addAction\0((ILjava/lang/String;Ljava/lang/String;)V\0org/apache/log4j/Logger\0info\0(Ljava/lang/Object;)V\0	addReport\0(Ljava/lang/String;)V\0	getLogger\0,(Ljava/lang/Class;)Lorg/apache/log4j/Logger;\0!\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0\0\0\0\0*�\0�\0\0\0\0\0\0\0\0\0\0\0\r\0\0\0\0\0\0\0\0�\0\0\0\0\0�+�\0�\0++�\0��\0Y�\0�\0*�\0�\0	�\0�\0\n�\0�\0a+�\0�\0++�\0��\0Y�\0�\0*�\0�\0	�\0�\0\n�\0\r�\02+�\0�\0+�\0�\0Y�\0�\0*�\0�\0	�\0�\0\n�\0+�\0�\0�\0\0\0\0\0\0\02\0\0\0\0\0\0\0\0\0)\0\0/\0\06\0\0L\0\0X\0\0^\0 \0e\0\"\0�\0$\0�\0&\0\0\0\0\0/..\0 \0\0\0\0\0!\0\0\"\0\Z\0\0\0\0\0!\0\0\0\0\0\0	�\0�\0�\0\0\0\0\0\0\0\0\0\0\0\0\0#\0\0\0\0$');
/*!40000 ALTER TABLE `script_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_classes_ifaces`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_classes_ifaces` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iface` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`,`iface`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_classes_ifaces`
--

LOCK TABLES `script_classes_ifaces` WRITE;
/*!40000 ALTER TABLE `script_classes_ifaces` DISABLE KEYS */;
INSERT INTO `script_classes_ifaces` VALUES ('ru.bitel.bgbilling.inet.dyn.device.des3200.DES320028ServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.inet.dyn.device.des3200.DES320028ServiceActivator$1','java.util.concurrent.Future'),('ru.bitel.bgbilling.inet.dyn.device.des3200.DES320028ServiceActivator$1','java.util.Observer'),('ru.bitel.bgbilling.modules.inet.dyn.access.InetServStateSync','ru.bitel.bgbilling.kernel.script.server.dev.GlobalScript'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ipdhcp.ISGProtocolHandlerIpDhcp','ru.bitel.bgbilling.kernel.network.dhcp.DhcpProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ipdhcp.ISGProtocolHandlerIpDhcp','ru.bitel.bgbilling.kernel.network.radius.RadiusProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ipdhcp.ISGProtocolHandlerIpDhcp','ru.bitel.bgbilling.modules.inet.access.sa.ProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ipdhcp.ISGProtocolHandlerIpDhcp','ru.bitel.bgbilling.modules.inet.radius.DiscardedAccountingRequestHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ipdhcp.ISGServiceActivatorIpDhcp','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGLoginGenerator','ru.bitel.bgbilling.kernel.script.server.dev.EventScript'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGPPPoEServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGProtocolHandler','ru.bitel.bgbilling.kernel.network.dhcp.DhcpProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGProtocolHandler','ru.bitel.bgbilling.kernel.network.radius.RadiusProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGProtocolHandler','ru.bitel.bgbilling.modules.inet.access.sa.ProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.cisco.ISGServiceActivator$1','java.util.concurrent.Future'),('ru.bitel.bgbilling.modules.inet.dyn.device.dns.DynDnsServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.manad.ManadDeviceManager','ru.bitel.oss.systems.inventory.resource.server.DeviceManager'),('ru.bitel.bgbilling.modules.inet.dyn.device.manad.ManadServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.mikrotik.MikrotikServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.misc.CompositeServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.AbstractRadiusProtocolHandler','ru.bitel.bgbilling.kernel.network.radius.RadiusProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.AbstractRadiusProtocolHandler','ru.bitel.bgbilling.modules.inet.access.sa.ProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.AbstractRadiusServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.CoAProtocolHandler','ru.bitel.bgbilling.kernel.network.radius.RadiusProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.CoAProtocolHandler','ru.bitel.bgbilling.modules.inet.access.sa.ProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.radius.CoAServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeClipsProtocolHandler','ru.bitel.bgbilling.kernel.network.dhcp.DhcpProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeClipsProtocolHandler','ru.bitel.bgbilling.kernel.network.radius.RadiusProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeClipsProtocolHandler','ru.bitel.bgbilling.modules.inet.access.sa.ProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeClipsServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeDot1qProtocolHandler','ru.bitel.bgbilling.kernel.network.dhcp.DhcpProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeDot1qProtocolHandler','ru.bitel.bgbilling.kernel.network.radius.RadiusProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeDot1qProtocolHandler','ru.bitel.bgbilling.modules.inet.access.sa.ProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeDot1qProtocolHandler','ru.bitel.bgbilling.modules.inet.radius.RadiusAccessRequestHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeDot1qServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeProtocolHandler','ru.bitel.bgbilling.kernel.network.dhcp.DhcpProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeProtocolHandler','ru.bitel.bgbilling.kernel.network.radius.RadiusProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeProtocolHandler','ru.bitel.bgbilling.modules.inet.access.sa.ProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeStaticClipsProtocolHandler','ru.bitel.bgbilling.kernel.network.dhcp.DhcpProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeStaticClipsProtocolHandler','ru.bitel.bgbilling.kernel.network.radius.RadiusProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.redback.SmartEdgeStaticClipsProtocolHandler','ru.bitel.bgbilling.modules.inet.access.sa.ProtocolHandler'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpDeviceManager','ru.bitel.oss.systems.inventory.resource.server.DeviceManager'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$DisconnectMode','java.io.Serializable'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$DisconnectMode','java.lang.Comparable'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$KeyField','java.io.Serializable'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$KeyField','java.lang.Comparable'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$KeyMode','java.io.Serializable'),('ru.bitel.bgbilling.modules.inet.dyn.device.snmp.SnmpServiceActivator$KeyMode','java.lang.Comparable'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.AbstractTerminalServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.SSHServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.terminal.TelnetServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.bitel.bgbilling.modules.inet.dyn.device.wifi.WiFiServiceActivator','ru.bitel.bgbilling.modules.inet.access.sa.ServiceActivator'),('ru.provider.bgbilling.kernel.dyn.script.AdditionalAction','ru.bitel.bgbilling.kernel.script.server.dev.EventScript');
/*!40000 ALTER TABLE `script_classes_ifaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_event_queue`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_event_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_event_queue`
--

LOCK TABLES `script_event_queue` WRITE;
/*!40000 ALTER TABLE `script_event_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `script_event_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_event_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_event_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `event_mode` tinyint(4) NOT NULL DEFAULT '1',
  `event_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mid_event` (`mid`,`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_event_type`
--

LOCK TABLES `script_event_type` WRITE;
/*!40000 ALTER TABLE `script_event_type` DISABLE KEYS */;
INSERT INTO `script_event_type` VALUES (96,'2',1,'ru.bitel.bgbilling.modules.rscm.server.event.RSCMContractServiceUpdateEvent','Изменение/добавление начисления услуги RSCM в договор'),(97,'3',1,'ru.bitel.bgbilling.modules.npay.server.bean.event.DebetStatusManageOpenGetAdditionalCharge','Запрос доп. расхода для открытия договора'),(98,'3',1,'ru.bitel.bgbilling.modules.npay.server.bean.event.DebetStatusManageAfterOpen','После открытия договора по платежу'),(99,'3',0,'ru.bitel.bgbilling.kernel.event.events.CalculateEvent','Начисление'),(100,'3',1,'ru.bitel.bgbilling.modules.npay.server.bean.event.ContractNpayChangedEvent','Изменение абонплаты в договоре'),(101,'4',1,'ru.bitel.bgbilling.modules.tv.api.common.event.TvAccountModifyEvent','Изменяется аккаунт договора'),(102,'1',1,'ru.bitel.bgbilling.modules.inet.api.server.event.InetAccountingPeriodActivateEvent','Запрос учетного периода'),(103,'1',1,'ru.bitel.bgbilling.modules.inet.api.server.event.InetServChangingEvent','Изменяется сервис договора'),(104,'1',1,'ru.bitel.bgbilling.modules.inet.radius.RadiusAccessRequestEvent','Перед ответом на RADIUS Access-Request'),(105,'1',0,'ru.bitel.bgbilling.kernel.wifi.common.event.WiFiActivateEvent','WiFi активация'),(106,'0',1,'ru.bitel.bgbilling.kernel.contract.balance.server.event.PaymentEvent','Приход платежа'),(107,'0',1,'ru.bitel.bgbilling.kernel.contract.balance.server.event.ChargeEvent','Занесение расхода'),(108,'0',1,'ru.bitel.bgbilling.kernel.contract.balance.server.event.PaymentDeletedEvent','Платеж удален'),(109,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractSetStatusLogicEvent','Задание логики перетирания статусов'),(110,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractStatusChangingEvent','Изменение статуса договора'),(111,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractStatusChangedEvent','Статус договора изменен'),(112,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractWebLoginEvent','Авторизация в Web'),(113,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractCreatedEvent','Договор создан'),(114,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractParamChangedEvent','Изменен параметр договора'),(115,'0',1,'ru.bitel.bgbilling.kernel.event.events.ServiceUpdateEvent','Изменение/добавления услуги договора'),(116,'0',1,'ru.bitel.bgbilling.kernel.event.events.GetAdditionalWebActionListEvent','Получение списка доп. действия для Web статистики'),(117,'0',1,'ru.bitel.bgbilling.kernel.event.events.GetAdditionalActionListEvent','Получение списка доп. действия для договора'),(118,'0',1,'ru.bitel.bgbilling.kernel.event.events.AdditionalActionEvent','Обработка доп. действия для договора'),(119,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractAddObjectEvent','Объект: Добавление объекта договора'),(120,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractUpdateObjectEvent','Объект: Изменение объекта договора'),(121,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractDeleteObjectEvent','Объект: Удаление объекта договора'),(122,'0',1,'ru.bitel.bgbilling.kernel.event.events.OnContractWrapEvent','Договор переоформлен'),(123,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractObjectParameterUpdateEvent','Объект: Изменен параметр объекта договора'),(124,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractTariffUpdateEvent','Тариф: Изменение тарифа договора'),(125,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractTariffDeleteEvent','Тариф: Удаление тарифа договора'),(126,'0',1,'ru.bitel.bgbilling.kernel.event.events.PersonalTariffUpdateEvent','Тариф: Добавление/Изменение персонального тарифного плана'),(127,'0',1,'ru.bitel.bgbilling.kernel.event.events.PersonalTariffDeleteEvent','Тариф: Удаление  персонального тарифного плана'),(128,'0',1,'ru.bitel.bgbilling.kernel.event.events.PersonalTariffTreeUpdateEvent','Тариф: Изменение в дереве персонального тарифного плана'),(129,'0',1,'ru.bitel.bgbilling.kernel.event.events.TimerEvent','Таймер'),(130,'0',1,'ru.bitel.bgbilling.kernel.event.events.ChangeTariffByTaskEvent','Тариф: Смена тарифа по заданию пользователя'),(131,'0',1,'ru.bitel.bgbilling.kernel.event.events.BeforeServiceDeleteEvent','Перед удалением услуги договора'),(132,'0',1,'ru.bitel.bgbilling.kernel.event.events.GetChangeTariffDatesEvent','Тариф: Запрос дат с которых разрешена смена тарифа через Web'),(133,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractParamBeforeChangeEvent','Перед изменением параметра договора'),(134,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractLimitUserLow','Лимит: Временное понижение лимита пользователем через Web'),(135,'0',1,'ru.bitel.bgbilling.kernel.event.events.GetContractCardsList','Получение списка карточек регистрации договора'),(136,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractObjectParameterBeforeUpdateEvent','Объект: Перед измением параметра объекта договора'),(137,'0',1,'ru.bitel.bgbilling.kernel.event.events.ActionBeforeEvent','Перед действием'),(138,'0',1,'ru.bitel.bgbilling.kernel.event.events.ActionAfterEvent','После действия'),(139,'0',1,'ru.bitel.bgbilling.kernel.event.events.GetContractStatusChangeDatesEvent','Получение списка дат для смены статуса договора в Web'),(140,'0',1,'ru.bitel.bgbilling.kernel.event.events.CancelTariffEvent','Тариф: Отмена перехода на тарифный план (Web)'),(141,'0',1,'ru.bitel.bgbilling.kernel.tariff.option.server.event.TariffOptionActivatedEvent','Тарифная опция: Активирована/реактивирована тарифная опция'),(142,'0',1,'ru.bitel.bgbilling.kernel.tariff.option.server.event.TariffOptionDeactivatedEvent','Тарифная опция: Деактивирована тарифная опция'),(143,'0',1,'ru.bitel.bgbilling.kernel.tariff.option.server.event.TariffOptionBeforeActivateEvent','Тарифная опция: Перед активацией тарифной опции'),(144,'0',1,'ru.bitel.bgbilling.kernel.tariff.option.server.event.TariffOptionListAvailableEvent','Тарифная опция: Получение списка доступных тарифных опций'),(145,'0',1,'ru.bitel.bgbilling.kernel.event.events.ValidateTextParamEvent','Валидация текстового параметра'),(146,'0',0,'ru.bitel.bgbilling.kernel.event.events.ServerStartEvent','Старт сервера'),(147,'0',1,'ru.bitel.bgbilling.kernel.event.events.LimitChangedEvent','Лимит:  Изменение лимита договора'),(148,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractAddingSubEvent','Перед добавлением субдоговора'),(149,'0',1,'ru.bitel.bgbilling.kernel.event.events.ContractServicesChangedEvent','Изменение подключенных услуг'),(150,'0',1,'ru.bitel.bgbilling.kernel.contract.api.common.event.ContractPasswordChangedEvent','Изменение пароля личного кабинета'),(151,'0',1,'ru.bitel.oss.systems.order.product.common.event.ProductOfferingListEvent','Продукт: Получение списка доступных продуктов'),(152,'0',1,'ru.bitel.bgbilling.kernel.event.events.GetTariffListEvent','Тариф: Получение списка тарифных планов для смены в Web'),(153,'0',1,'17','(Устарело) Добавление задания на смену тарифа через Web'),(154,'p9',0,'ru.bitel.bgbilling.plugins.helpdesk.server.bean.event.TopicWillBeCreated','Перед созданием темы'),(155,'p9',1,'ru.bitel.bgbilling.plugins.helpdesk.server.bean.event.TopicWasUpdatedEvent','После создания/изменения темы');
/*!40000 ALTER TABLE `script_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_function`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `script_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `code` mediumtext COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `change_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `script_id` (`script_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_function`
--

LOCK TABLES `script_function` WRITE;
/*!40000 ALTER TABLE `script_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `script_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_function_event_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_function_event_type` (
  `fid` int(11) NOT NULL DEFAULT '0',
  `mid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `event_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  KEY `fid` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_function_event_type`
--

LOCK TABLES `script_function_event_type` WRITE;
/*!40000 ALTER TABLE `script_function_event_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `script_function_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `script_lib`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_lib` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `script` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `change_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_lib`
--

LOCK TABLES `script_lib` WRITE;
/*!40000 ALTER TABLE `script_lib` DISABLE KEYS */;
/*!40000 ALTER TABLE `script_lib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequential_ids`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequential_ids` (
  `mid` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ид модуля/плагина',
  `value` bigint(20) NOT NULL COMMENT 'значение идентификатора',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequential_ids`
--

LOCK TABLES `sequential_ids` WRITE;
/*!40000 ALTER TABLE `sequential_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `sequential_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mid` int(11) NOT NULL DEFAULT '0',
  `parentId` int(11) NOT NULL DEFAULT '0',
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isusing` tinyint(1) DEFAULT '1',
  `unit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Подключение',2,0,NULL,NULL,'','','0000-00-00 00:00:00',1,10000),(2,'Активация учетного периода',2,0,NULL,NULL,'','','0000-00-00 00:00:00',1,10000),(3,'Входящий',1,0,NULL,NULL,'','','0000-00-00 00:00:00',1,30000),(4,'Исходящий',1,0,NULL,NULL,'','','0000-00-00 00:00:00',1,30000),(5,'Локальный вх.',1,0,NULL,NULL,'','','0000-00-00 00:00:00',1,30000),(6,'Локальный исх.',1,0,NULL,NULL,'','','0000-00-00 00:00:00',1,30000),(7,'Включенный',1,0,NULL,NULL,'','','0000-00-00 00:00:00',1,30000),(8,'Время',1,0,NULL,NULL,'','','0000-00-00 00:00:00',1,20000),(9,'Пакет трафика',1,0,NULL,NULL,'','','0000-00-00 00:00:00',1,20000);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup`
--

LOCK TABLES `setup` WRITE;
/*!40000 ALTER TABLE `setup` DISABLE KEYS */;
INSERT INTO `setup` VALUES ('closed_date_1','00.00.0000');
/*!40000 ALTER TABLE `setup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_type` tinyint(4) NOT NULL DEFAULT '0',
  `host_or_dir` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pswd` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `config` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `lm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `date1` (`date1`),
  KEY `date2` (`date2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sql_patches_history`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sql_patches_history` (
  `mid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `versions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sql_patches_history`
--

LOCK TABLES `sql_patches_history` WRITE;
/*!40000 ALTER TABLE `sql_patches_history` DISABLE KEYS */;
INSERT INTO `sql_patches_history` VALUES ('0','6921807FA793BF0F5E9E6EE5F10D51D7,F0F56AAB7DC6843FC9154AAF43BB6D46,0EEAE95BA8AE7DE192C0627F5306495E,9E6B5A7562601E0DBA288CB3B67C99F6,37554E680D97B32122A316C656A96522,5412BBD516034ECDF1D7DA11892A1BB7,218DE57290D74332CB6F67B9E29DB5AC,E2183D95B1363E7F9A7135CAAC15BF8B,E3981D8A67E6391B32C0427F41C5AC0C,D98A9795104A917FDE676516292B5D8B,28EE16E6F6F67D11117096549AF6154F,C94BD04EC251548F6C5FE7B2A8A2C409,90C64DBF59E71FBEF247CAB8004E2878,9BC6E7A1E6F99AC1480915020CD3834B,12752185562E2F8074C98E200FC18FFD,5EA22B3A1E6C0329DEC7F64E4F0B2921,B4D208E401B335FF258B4FEAF834D435,8A8F94F9CBB0ADF7CE7EBBDDAA1E2D35,735BB1C42904081FFF9C7FF121AE4BD0,663BE39F56AAB21D584F016F730B521A,C4CA08842EAAAF33D51C21CFB854545A,1DB7179A0F73A9587A1DAEED1D776FC0,9E941FAE785659E8237CFAEB7F77447E,E46F9A87C6BC3D3519CEB35D1A233204,E3F8A6DDEA320780D74E74C28ECC7F6D,4DC89275A2C85AA47EE4DC371832937A,A31E8F132B7D1333C7C61F6D4402A86C,A77D18FA23DEDE268E5059D8DCEBCB3B,CE98F3076A2AFCC8F28EF34651E9781B,71B7CF548B410C478398C70D51601EDA,D1BA560868FB358699F4104D445360E5,6DCB497A7BBE4F5A62EBB2CA66114230,0634BD78287A4F880E29E09A365525FB,73AAC1597A83041871B29799D4A16E2E,BFAD3EB8CB57EDCF4322A408E748C985,6D9223E7B9B531F5984BBE8406EC8245,6F580E1F97F559641B6E47F3EEA054B1,C900C1C454263DCBB3CC39EBD33CD319,C8ABCE043DAAA2A90CD4E134CC068D5B,0D9F7771E451E864D50C502816DA8D15,8A2C65C0BCE6DAF396F18C0EE16C985C,8B4E75075106B2D56A78B685921CEA2A,2AD6D2E67F550E3C3E0BF00725638174,3D27801FD31CCAEEA7A52B485C0B5381,2E449776B2685522C12AF78BD8ECCB7B,A683E7A2AC18DAE4DFF71F3EE71F42C8,DC18F64301B0B39003F695FC4C9E0F41,9685B3A149B2135B3A3C9F7C840D2BF9,502C158F63D2A000468B3C8D7200A53D,E149C53A4957847A99958AB734377698,90B25FAC22EA32ECF17314BDAC5EDD09,41755E24F8D9B3A416D9A3E89210857F,21C2DBE07CF0DED2F53568709D0AF7FB,42BB2BC253FAB8C598CBBC42DA184ECD,911A533DB6B1B88F668CAA41B4087CF0,23300F9E29436B64EF6620688C2F7566,16C5405D46DEB22325A1AEDEF3F384BC,D3FD0616E921EB29AAC6E3701E305906,F22B1CCCAB967B731B0567604BF3BF9A,EC000520A82C456597C35569AA146DB1,B06101B9175E88CA0F84DC92803986C0,4BFF99CCF4740D610E12E84C6E5F3F27,4A0339F8D552E869354103F2B947C69D,1B865C5B17409E9A3AC11E9D47C556A5,110CCCEA80E30A026DE3B984797B99EE,8ECBD62479974F3F50EE04C8CE95C0ED,FE71642EEE45F15BCC8FDFEB73925C5F,8F440842E61289263BB4D94D493CD6F9,B181FCD5793BB5CD0A07952DFA2B7742,442897D2DA9297E90E9641009D73A232,CF4FAAA31C60933A5972C0F68CF4945A,896D1F4AD284A6A07C92CC0A13C7FF18,7A358F13F72B6082C500615C63C2ED69,EFAD327DABDD94518233E5DA24360EBB,5BF1A3CA444D3E5BEF7C811A35049611,7C0D85A352ABB65A9D02700E2763539E,650636D8EFC1BDA27E5C106BAD4CED1D,418F6FB06546C3C569D1A8F668DD5933,DC9E9B784ECF41AAAB5FB473E0EDCEA1,77948C3471E5A1106EFBC09AD317B35F,76CC8409CFD9139629F4B67EC42AF1CB,D6F6F31528094D8906CE205840827B26,889473831E488DC740A724A5A048DABF,FEA1623DDDFEA05308A73C035F810FE9,9BED87E2D5153A238290F971C901F3E8,0A80A5E60D4B659B68E64BBE8E8869B3,E464EB94286BD9AC0DC652ED4798C4A9,4FA4DD7208828C69AD0424C7166FB4F8,01479C2EC927CEE67B67462E350CBA5C,97A2B0C964BECF4A617743A906B37396,9315FDE373A996FCC28227301F2EE887,3D80C4571FF4B5F26963601CFD5F5034,E962918F868988F87B7694B8121FAF4D,1AFC62AA957EA2DAE6D2C78CD087DADE,6216BCE2ED26CC2095C933D6C9961BA1,A7115779A213ED6229A0E632728644CF,D6A633BC4CE7598033D2C9076C68A372,D3EECE193ED06A81476709C7DDAAED87,E935FF5F15A8EEC10B08053388D0AB9D,AC1D58F662185897F68EC302AEFFEC98,24C9D5AA3FBC946DB39CDE73775A771A,3B254A767E9D08073396A59F2B705286,4FAA729F0BBFB3717628887A4B46F7F5,68CE9B57D1C4888A5E7015C0901F5C3C,ED96590566FA7C2C8D07E43EF4C79214,C1F0A85E6964F5B9AF7089FDF4F6F7C7,01BE2AD4418A860E3D8DB7C7023C7545,931F45C2387186A86AF6DD56FBBDFAFD,03E6BB6F1497EA975AB954DB0FA23FD8,3588BA87FC470740FD9DFF666B0DB1B5,AC85FB7722218E108AD3D1181C091646,497E701EB1B5CD6B1F0889E2BFB9A54E,31E4BCA4510AA809506367080BC0D851,67A30794A79452B8A8C32DCCF3BB4B62,92FCD5A3A3CD3B4E420DC3B8115EA49A,EDFB96287D1E93CCC8E390FCE654FE05,1986F68FBB154521E5F7CA86BF471167,C34169825E68AD86C9C7D53DCB0DB0C5,9AA2AC3E532B3A2611BBC131849545F9,AE5D12C697AFF2E5EA0BEA05CE907CF0,A2691D15B92B8A1FD586D3BA71BB8B3F,C62D203C20ADCC54FCB228A81FE535F8,9AB2657D68E3DF88944FE8B4DBF355B9,93254F59F356961B94FFBF953E0E3A6B,C2B3341CA04F6479031446F81ED268AF,8510148FD4380467EB6CB72394B80BB4,E92B7B62085F582A4DA8434A7037E003,8541396E7B3C6754737BF07244858942,70020BFE2A6D0B3F8544056FAB54C711,2D0F63BD267CF14DC14E3427241D0A20,379DC4325F12DF50932861A580646C64,3593670DA93DE1C83110C64267E26E4C,1FC282D92F230BACC5BF30F318B0E456,EE667A5021AA8E189966E0A86666B28D,E26908235FBC2D1380846F9FEB5EB111,5BFF7DAE29ED60AF60DB0C87BFB63DD9,757EBCBB98D67D34BCF561982CC209C5,90813B014AA38194343BB9E085BE66C4,5C45385739CEE01F5D2EB6B671B39C3B,E161EF7DB41C6C30FA97FA70AEBF7EB0,A2F63298C82ED4D693AEDC57F2D7D4FE,81504CB7F70C34C32575ED6B0AB9E2D3,CBA8E7799D78E3D24732F0D53DD370B4,0F125098343CC510BE0BC613446400F8,A85693D587074CF8721BD2236CF63CCF,5CD57BB0F3DE9B523CE91C9E73024BDE,E7AFB666A5D99129899526033C990F13,25EF9904B94E53B239F36A387BDD7364,B52AEBFC615751A7B5FB5227A1FB69B9,A92BC621B713814CF4CB6A7D575BDBD5,36781AD8E2C961E7D81FC7E1C8FE5A0C,6B9F40608A0D5BF333B5E803B7026BED,82FF0E0AB1CCF990351401198E8609A4,74CB0FB000FA4063AA1BFC951935C53A,B10E553F6082F0856585CF032D4E12FD,6655ACFB02FB687A99DF068D342271D1,05E73F11885BCDFC9BC3321E71377856,9949FDACBFE552441F768F49E3C5229A,9624CAD2CBAEF2F2B2985A636DBA9A91,FABC9B1D76AB695F6796CD3C33C0FAD9,3C29CF968A454FDAA411DDACF9E48559,92BF4DFD58B17EDBCA2F5641A3E1310D,88C03A6315BEABB1AD7B87690E9AEC1E,A9C602D48CD49565956CBD90366550D1,81C62259C19B6F87E12E43E2E3B9600F,879E3A7781D1F3B02003C0DFEA1164BD,D20CE84E702897FA24D5DB50E1047B33,DC9B82D896EB96416846EE46EE35A36E,3FE82C14DBD09AB00802C2F28D6A9FFC,A62B692B11D9D84379B285B242E857FC,27A9DF7188F45A459F1AC4B47196FA5A,5457DB9A2E1B83029FB13214C8DA10D9,04F96A3339D940C967EC6BF8D8333D84,08D63E185FA5B01A7B867776A50A96AD,F2ADCEC917B44C0C000D26A037C00636,FAD0CAF8E26B2B74D9723A3C15DCC94E,64DAE6141FA3F075DD312675CEC4FE89,7340492A6C9C0A3B0B32F4E5491CA61D,186200ECE3E766D42EF2D9C632BADE20,94F3471BC192E76523EAADA70E0A0CB6,F114D985D1806B0F269B83A1FC349298,2735C73BC39BF387E140C6E9AF8524DE,213B8F1F235FA053800F4EFE4EC74AC6,E2593F6CA3ED9A8807DC6239EA256B20,0AE5158A26914E87160AE5055A820295,1375652BEEC1E5679855EAC385DA1FEA,B78D854810EA33BB0569B48A291E9BA5,C022644E35E35B637CE397A1A5F58B73,3D5FDEA8FC805C6896C5D67207F6E1AA,F02045B62C15FED7EC597337A614B2A1,CEA8631ACC7BF94BF1E889D4B8E15F78,13C049193BA05D6E699C238DA9AFF0A7,4AFCE87CD94EE32C19FEA9031E2AA04D,63C3C794CA02FB5F9FD6569DCC2364D8,75481CCA7F40F6077C06015A0349B373,B961F2B33025A00480E436F31F7E3722,B16051F2997A1090668548B5FA2B97E0,B16051F2997A1090668548B5FA2B97E0,6653BDC096696D7CFEF78445C7F7E00C,FD13A079062612790745CF0A6E9A6293,BBF079AD3A75527611B53257122037E8,0306C62A4E94ACB8A48D22EBDDFE1180,EEF0EC1C27A11E8B9F09DCA716A6E8B0,5450E38E01743E8CBB539152343237F8,55D82BCE7D0EF84A01497F91CD647EFA,7A549FD066E49D80D6E35FD814E61556,CA83B61F89D77EE9AF8F376C711CFCCB,3143A190C233999FF308042F0FEC406A,DC55C0FDB3FCA75C1B5C3553818514ED,B0230C31FD02382F745DDC003E5434AF,9F6C65D546A73958BA8A8307B28EB98F,51335C75ECACB69F161A7F4FBA1326D2,5F969C59FEC27B1F3B317BE2B09E80F3,795BBFFC09E900F6207DDBBBA618887A,58BEED7466B6C9F1AD4B73B5F9845D42,93F90FD50817C118888DBF1ED4DE8495,0C9772505A0B167B2E230E0788BE149D,9D07D96C63DCC1121E180DBA2CAD1896,DFD9B5443A8EC2A406BC1C8CBAF97C0C,00BA7F1A2BC9457013645249E962F238,0DE605FAA9241BAB1FB53868DCB5A3F4,EF2D19C2EEFD70E6C385ED499F8386EF,E6B441C9F26B767164D10644DB90D479,0A96BA960E612EA94981412194DFFD90,7056CA8E8A87FDE83C36260C2220C594,1FD0A4140EF58E52FE969A60695E01CC,C3AAC755BF546E46F5F1609F2E4AB268,2F0EF09F649FA6D01596A83C17831A2A,40D20CA32869E7E7821FEDB831F17530,51D75FA1782BFF751A6F706C3E3F2FFD,B9DC5525F9A0A594C8BEC47A5E86085D,C619EFCAFC868F88493464B342589661,98FBC7977490886483948079126F0A25,FFD2925E74FA6A0BE6D2E6AE51D8E06A,3311C35E9E3D75EC827DCDF90B04D794,9900F1CDC68B840E61532ABB59A322B2,DAD05B9020DB68E156C24C90D9829241,0D6BF1EBD2707CA565D527AB989E352B,6E3D3C6EADE6F13E1655EEEB71EDE8B5,74661FE857428ECB579AC4B64E73727B,EEC2682722E87DE9A54112943386F5E2,00507358AD9DB61AC54CD739FBDA065C,6A3A299342D0B781EA3509689C377664,3D231C19816489ED8FA2BCA06D80DF45,DA6841768AEF603B04605C0EE85032AD,D953B8B5A90A5AF13A545225A0C14810,EADDD5EF665156C4A621D2BD21C9F0E5,6C24308DDFB4E6526934D751DF6FF684,74426A9F8529BA004AE804C98E3D9140,9013BC426E5EE5A7775D0DFDC2B16D3D,67287117343BAF72954BFF2850D597AB,22A7AB789EBD25B9176A82D59D116063,F3A65CEE60ED69EB15AE4DC18291607B,7FAF6C397722923E3420581A2A75E827,A3BA9AC402B8120873BFA64C9007B111,97EA9C4C0BF98AA0DE723C2DE6388B96,83DB50F601A8E8B460DD926F9C1C69F9,B6AA93BAFD4C47AEA679888E90B1A15E,A0B7D60095310FAEF9BEECEE61217504,EC1AC363484D16BD8E2379EB4CE5D723,29B4FC8996FA0E2DB2C338C69B007A15,BC35F8222A00C8B59986A705775D85A9,E8BB1C27A4B752444A6D9939840337BB,F5FCD591174A61148538E7C592954CDA,AAAA8DBE395406379F90364E042B5204,5C665DB6E38544CD26CD47E41D376A8C,E518863FDB1B7174C41BE691C2A6A2C4,D08C0C00630DF94FBBE24E51595F00CB,2DC78502036FB5661D9EC8C7E8BF54B7,5D31F80B381BE8B2200142EACEFEFBA7,98364BCCA5B253565325BD6852C82F28,9B8538ABBF0FA3F1AFC91EFDA464E5CB,77AC9D4210FAB6F67CEB1A9A188AF222,3B1BB45F6D8D95781686FC1B9CF3252E,B440B9F7D2BF25901AFBFD980D2611FA,DC3D91EA2963424D18304FB90A4FB7AC,4B5B2AD8E46AB3DE280E9EC6AA030DA6,1B35E97ECF6C5889DBC12202555F6CB6,7C547F658E3D8FF53998A51023CD5983,9D556B8912AA8B7639176CD53ADBD3B0,F49DBEC05255F04639D80570F555FB1C,702CFA2D34177EB8234C0C99940E4CC4,BE72C2A1CB2D01CC4AFF08D47F3AED72,D068F1DF4C816E7DBCE2BECFBD27FBC5,078D5E04940EB80DBCF1B76C6598A413,26DD3E4A7F4FD265BBA406860FB611E4,D7D927A0D23E3C19CC761B3E224153DD,35370A07F8B1393E3743497CE6CE5990,57DE8EF248A366844FB277C83903AB8B,F381576BC5BDD7055862753A034FF441,BD3AA2BF8D42AC8BF5327FE6214D981F,3593B33EDEE7D1614DE4F402C975111C,E2FBCDC969C099B01A1E45ED6D0311AA,2C9D3B68AB693117D138289CF563DDA0,B0D3E115ED59B5095FD178CDFA036CF6,68A532C55F5DA13CA9647BE525EBD8CB,1D43A7A2DB841F74D9F55BD8FB4104B8,F813E9986E4A2BB61CFA217EA55CD0C4,33ECE197228C1E5D0F53A9012AC6798F,6C33053E0643FE111535F5CFA06E51F6,24A8C0CD77FA71E3DA17060CFC2EE091,3430148418274A2AF9B40B2E7A3CCEE0,94B7B8F9D8EBA6A82FE65F082CBA874F,FC91D590E0B9078908D6D3DC90D7151A,07200611CE554843FB008F2DE30AECF9,C11D1846B1318427D6A4A2B66FEABFF3,F162B98FA729639C018C25CEC959412B,04952DDAEE95F7AF9E3F0CAC7303E9C8,B56F2D8CE9032E5B4B5B97C104E8EF36,816C1D310A6054F266836977CF26B0E1,0E3AC88E13DA9F6C6942C3C2D5916636,020D28756409E6EFF28B4AA04549782F,57DDF972097B619ED133868EDE28FC72,9E447DBC3F5D3A963D6198E5C3286BE3,B7FC3CCB1F7A72081A95D103ED5A1963,CB774514A21302CE3141208CE214FA6E,52AB5A8F713A8C913DDBE1EE41728B9D,F2B55DD3FB0F3566A1DE8673C667CEF1,815B6B1466DDF604D5E9A4BCC3E806CA,947607F9F3EEA43585352404EF4E0DC2,60F9B859073B2DCB0C1CD50CF5D0CC38,A263EE3B4797B8783CDC139AB0AB14DD,25115F106AB1330027AD05575D1069DA,470BD02F04A949E5A0CC7AF19441664E,075EA71565784F3762B8F762EF5434E3,82DF565DC981E463DEC0A6444E7EA488,7BA9CD70AD038B02F7517C813F8D11AF,BD67564A384D3791B5E36DED776BCD3A,849DBB76434999B31F08EC84E44A70C1,80800A76C834FC43B7D013F724EAFE84,EA92E90048AB5CEE0BEDD802D2E57760,3DCE2B45D91CDE1B8CEC448C20D5A00A,471DB897EE3B205C1B1C956B1E040C00,5A7135E39D2FED56A2003579EEE2D427,A52FD286B37DA495E7EEA3AB754A7045,467A6617E3F04ED58AD6C01D1BC74CDE,B75C578D3C6BDD3E9E738034360B189F,838EF5D14730BE7A9A0C645E367166D7,2B614A0B6871853CE4EA5AE6A7BBAC95,797170E33775929F83D1A2ABBB8EA757,11A5B910B672ED030798BA455B7F6007,DDDAB3C5D8687ABA42D1DB0CE6F49469,92F5D05E71B57CE50F070F14CE344FFD,DAD349A47EF238E8F1347EA0DAC710EE,DE58A6576C8F9355662F71F335CF6C3B,65B7A0DE82192A27013A45CDA32FFD24,ACA12735E8BE799C7A4C7A5DB916F538,8B0CF0E10AED9AE009FB6C64C08E5B38,5C8F773F873EEFF1407D7C3B444429AF,4472A955157032827A452C06CA34EF87,16530D382D3C2FC3EBBC951EDE53CD66,5202A466F33BD7F21D69ACB410F30FB8,79FF7C75A7CA25CACC240E4240E2E449,DE299F73C8B204D96666A6F4BCED22D6,67037AEDDE99D5AA28CF24CFF828A3DC,A496DFBFFE3596896EC0D84BA4AAC72F,7391D6D76917F5935248A9EEEBF43D55,86825E6940B528BF4DFEEF76FD165414,8A932BD467B4E7B9B03BF5E81035A1D6,84DF63B0574148DBEF73916DC7021C7F,304E61738FE5E94C56D0D64334ABBAB1,8352463140FAC80D1A234D54E2EE119E,6EB9C4E1648A8682AC1CF2560F50E508,62531D7E2489EEFBBB02742D109EBE6F,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,300E4EC0E3B270D3012ADAD2CE759C79,D454F43375250B752DBAAE37336A27C6,3CC798F393EEA85AB66D575B7CC9B0BC,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0,76B353439D4FC104D2783C86751316E0'),('9','7C1839AD9D07FF71B432053F71C4D9A8,F5A06E2967E3972BAEA50808F166E235,FA865CA1D71A845AC7766BCF7D601BFF,ADD291BF190584364B21E89D7D8F0E97,2F41A64D4CAB490478E9AD2DA46FB52F,0CC6470464182F06B70ABEE68EB216A4,9FF704CEFF2229347C9241A66C327EAF,CEDF26980306965FADC3B22117C48BB4,DD655C0F6C77F6814646E6B2FB8B556F,90A74AAEB316AE515AE2454B48660877,D9FA8C34C76ADC4C2604AD7B17E09295,2D890B083BD4D3C9694C415C40518465,F40A04E6DFA5F6462A0644B9688F2F3D,56C942EC01DC0398B1C57BBCCCC0BCB8,71F2DBD20D180996A64E22857B5FE516,2DC340C089A5806AE61DD966E942D178,27D8888A6B450CF6FCBB721D79DAEFF5,97B451971296D4383D2A2F4CA67284A4,A46156413E8077DAD21EAAA1D04EDBA8,186F38F753E2B03B991BAA4017FB7A7D,4408885C445D1E4C3AEC206828DD7959,EBB4608B69498707F37F8738662FD535,618C6A797998661BFA91E4A63E3CA210,74756930CB178D32D31406B1F6BFDFED,A6CE05AA6A173FA89F452D4D05B0AD35,28FDE910209FE64F37C5526C1C499847,BE2C961A8BC50DCD03BD5D89D7408C0D,B157D58AC45035AAC00E8F372CC4F191,B157D58AC45035AAC00E8F372CC4F191,B157D58AC45035AAC00E8F372CC4F191,D454F43375250B752DBAAE37336A27C6'),('m1','54EA7B204F3898E1CAA7BECAB37ADEF7,87BA47A5DC13E56C86F5B2DED0DFED62,01C1E46C3FB5B8D589AD534B4A1A2436,23215FE30D8EB51F86E1F3C79E599A39,39D3D609B1C3A2F9D95F7D55FEECCFA5,4642C4CFBD753606BC0635F6162069D9,AEB3F74E3EC67D46AAEC73AEAD6A6317,E3BE930A99CBC95E54287FC96741F114,760A681376E6571811E2BE3419F7E525,F32A7D007C1856EC633708B2D4CB69A4,8244854A858E1E45AC4FC29249DD9E91,81F07688582ED264E611647FBE5A0212,B1202FBC30EC714500F922BAF432D736,A801B23C0EF8060FF362EB5E9709B289,AF6E8BAEA7BCB861AAFAA1AB2FA1251C,BA877145E885B17C30A90BF94E7C89CD,BBFA69C57C2EF9BDBEB5C896F5A66D69,38CD8087B4290B74282B1679BB732B16,6AAFCE38CEBA2A46EE8AFFB516C4EF0D,48DB741DDC105AC44656DC03A3DE5C38,0556DC8947190C02A556B03E8B611E68,BABAFB557F78E870929C84EE3F4B296F,C2EE5AF976CB45D838D20793B06E21B1,7AAEBC08A06F3077A62A856E5BFC48CD,4F9D6647A50D0FD5A21A0E57997E6446,FE03E2FA594901A8D722C5447E1DAC25,92074E5A5AB0C812340A21B877532316,A9A28381C2794A410366EA843090A3F9,0CAE12DD6BFDFB69141878EE471653BF,707DF99C8D06EFC3F36705031E14E8C4,91C3BABE965417B0E7731D44B7581189,D04CF4D23EE9BD41A8F9A89A1F1A5190,C09CA46668F5298C2774A4B5041E5F17,006683947F75736903D585FC9413F08F,A234E8FEC9F7F8D0C740011BE611A9E1,63FA0A97104108BEFE941B4A49EDF44C,6AB742B715E7A609C78C578E01CC3EC0,8E05B6A67AD97DEBC7B54FD2CEA0FE73,B9E47F75EEB50883D4241D1D71672C0C,A80979B7F8EFAA5A73088BA9CC75234C,4BC50EBD93DB5669162E27F7B9E9525D,B2AB37FFE0E6B2A31EF2C11ABD3F9B40,4053EF5AF80FDAD8DEBB2F415DD2757F,3241CED0785A353395AD3185A5CBC0AE,64375343B64B81A3E4CB3067B25E5B1B,CE9ECC9E13ED4880776989BCF28DDB32,A7FDB1B2C986CDD5A2539195794785EB,1371F3CB2BB3F7E376D77F399842503C,610A45306937163171B9EB76BA2DDB20,97642C88E4DC22AC888EA36A2CF8983F,714775F827724D9609283063141A6961,5BD2EB3F1D84A0A1B3C5B270F52D7401,74AF6DEB8071E784272D4E274607D861,1B0F3196B0F759EAC07078BA8B8D2F92,1A486C0D385FC089230C5816EF8B0257,D0CE940D1B40EFD9C8E674EBF4195D0F,081560054DA48B7A42B4578C3B78B168,55EA6C63EC4CC975F2D50A913F2DE7E5,C360CB251818A7ED4DDB9AE1E31B7D20,494845F6EF942C0054E4EB810F103AD9,FBA10DE4E6FA62205A5447F65A48E13B,7E535792DA7049E40351555B8B6B657E,478821785C936D7826A42148267B638C,CF15E02DCCB16F87A7273E344A79D999,2B492635003C5432490E0358D720B0D0,EA14AA409FEE76BC1CFF741C5498855D,45D5674E6F23E6A929DBE29976EAEC20,DE523F8BFE3CE09634F57B3335550E78,9DF12F7D68A83BF893DFFAABF3EB7FF6,D2D3E47617F311021F8FBECD4AA6CE9E,7C2E69DF1464D1FE362901D73A202BD2,1DBD7C95AC8F98549BD0F77AD45FCEAE,D6ED3319FBF4AD396564F351C5F076F3,40D332EB9ECF76130DE27C316C487C8B,44C3363118BA49DDC32D99BD45176735,820E41DF9DB549A552109A57AA191AE1,727DBB5E4480DE3E967F0DF7930617F0,ACDCB26A5CA05F6B8297626D6C2B2B5F,281003B8081246E86938882D224F9D68,5E393DBA448C209415405CFEBFDD6674,11E4EB9A5EE03B4C00FF37B3259B1FE3,766AA3B1F5FE3D7F7F3C7C4697BEF022,16DEBD6C46B630E5DE5B73EE3F51B506,86799F67AE76B818637E3EA9CA201F68,4808DCB3676817B4A668C5AC4C1BB835,F809E501E063127CBCE5F099CBACDFE0,33F776372A00B265B1830574E18955A4,B96325782E18AEAAFA7636983EEE1E04,7A7F13FE9B38D05CAFA453C0DCD65BBC,44B36FD531E2FA5BC35EFC2587FA44F5,4616F1B5384054DB20D1E7EDB5ACD633,10C88C6A86BCEB379AD6899135FE86E0,FD5BCEFD0FC6D0AD9375AB9163047AD0,E9DA9ACD1DE85C808A024253895389C6,149D010580CCC9A0AFF25CB11ABDEE39,D3F9B84C8F53D5A5AF5158D46B7FA2D6,689E05EE4965A225F32D932CCB023874,8CADE19A12575A303A720B04DECF2831,B0606CB96951380C27AE86380443F3CB,8955272F6A473C3EF05AAC65DB0081F5,F27B4E11B9D5EFDF0B50C385AC40ECE0,61DBB7C6835BA98798D84E34DA2E5713,D5115FBF611BEDF5AB3550E24CA5CE89,0D0D9BFCED911AE78BE5F9792D720683,3B7CBF3968BD3D27909EE5A61BF5217B,9F1A4C660F4628BB196FAD9B301CA6AA,B045D1CAAE9C8D4D95EFA03828BC6675,5B2FDCDE3DA74D4AB1C8FA4845A4E81A,5BE1E41322C326339A2FFCB11833537D,55785536E83E416F48E3B1500175DA06,55785536E83E416F48E3B1500175DA06,2C13443A54377FA8A2FC8710C39486E6,55DA67FCCD93A38560CBBFB7D85008EA,7979D62C42679459FCF10B159F5D0AEA,09B999AB08BF8765B954E94B1B1C0C59,A41BD2A6D3C3EFD7B28FB928392B8514,8AF6082EDE62ED75A7E723DB9088E4B8,496C8E14CDD1ABC681262D4F37154D71,C4ED6E6CF8521906B237BA6DD6032B09,9A93235CFCCB49984FEE2EBE99860BE7,52FEC969623D58F6030E4793D30519C4,A2BF3E2255F5F5FAD36B3E007E299E47,B20B7463F27CE5611F2BA783E57A62F2,C3F5891BA280546DDF0F8BA9F411D951,2F66CAB501DB187157B6C60A03FDE5CF,7AD9B81E080425C9C11B1DB8778E2A91,4F53DFA11C3755B129A4839861563545,6E2354AD435CE87FB934E65322BA8033,6E2354AD435CE87FB934E65322BA8033,6E2354AD435CE87FB934E65322BA8033,6E2354AD435CE87FB934E65322BA8033,6E2354AD435CE87FB934E65322BA8033,6E2354AD435CE87FB934E65322BA8033,6E2354AD435CE87FB934E65322BA8033,6E2354AD435CE87FB934E65322BA8033,6E2354AD435CE87FB934E65322BA8033,D454F43375250B752DBAAE37336A27C6,C22F6FD8225C3E555ACF3F2D01D349F7,C22F6FD8225C3E555ACF3F2D01D349F7,1DF960A01792C0B4251970ACBD0E202A,2E7202E3CA6D08293EC403F75D0948CF,2E7202E3CA6D08293EC403F75D0948CF,2E7202E3CA6D08293EC403F75D0948CF,2E7202E3CA6D08293EC403F75D0948CF,2E7202E3CA6D08293EC403F75D0948CF'),('m2','B1CF9CEB3FEFB5CE11FD4D626208A881,8B07515A52B5573A877DC4C4C54E5158,377E12BA4A71283E91E89CB0345AE8B3,35ED9B5C840831AF7B38A58BEC4BF66D,838C15F428DD61FDC6FB35A215AC3D8B,838C15F428DD61FDC6FB35A215AC3D8B,838C15F428DD61FDC6FB35A215AC3D8B,D454F43375250B752DBAAE37336A27C6'),('m3','8E61B1D7A868FA8375CAB111DAC85971,151E7AEF0AD3B514EA191B04CE429606,6192D1B2022A1891AAB4D439E1192E82,550DA2AE527A3B9438C130CA31C0E1C5,276ED51D662F84638FFFEC825B3AEF36,4859F7284F8B4E7CEF3F4E5FBCAA169D,3864BB9914C4B224C6138E85B35F4FE3,ED8A747303B449D54B47D8ADFD41D771,4FE17D5BCDDE9BDB29E5930CF7FBB95A,BF571F597E21546A7E2C6992DF145C50,D93DDFA44694A0E4FACB2D2557530AAB,EDA293E9B4E047FDB8E0856FAD3236F2,4920E72DC2E5C961212646C8CBCB7178,5EF4EC477BA1A2BEC364DEA292BEED11,D698102ACFABEAFCA548F60D33C6D49D,C5E983205C523FC38A5BD4838A447C98,C5E983205C523FC38A5BD4838A447C98,C5E983205C523FC38A5BD4838A447C98,C5E983205C523FC38A5BD4838A447C98,C5E983205C523FC38A5BD4838A447C98,C5E983205C523FC38A5BD4838A447C98,C5E983205C523FC38A5BD4838A447C98,D454F43375250B752DBAAE37336A27C6'),('m4','453411DD3732CC4E5A2F33683F1E5321,23F14EB7F151DCF2CC0AB5563E41A2C4,CFF5FFC826DECA133F4ECF4E5C83B8AB,82A8CA5BA3E6FF7E836ECE6997FACFD9,555120C203989F6DC9A1BE3573EE7E96,C52A00585EE0A01AB8224D306D786540,3E6D910DBE34576F90B7A6E799041132,44935A0CD272E354BE1D6F7027EA3576,3C91FC520DAE3F4FD7AF909EB3171B5C,FF9AC3FE7BDA562C65F4A61375E352FA,97A7A65ACF1C00D2F7057470DE6B5974,AD2E3C1C4A36B3D7C48C1130829B2D36,811BFE75632B427836139BF8250F84F0,1B469C779459B49C65B302F2C53FBB06,8521F9D821A5DCC3D88728314C9CD2DE,F50AB2078D4852DE85D7D8C0D4DFDD8A,D880EE482784F2EB2F58D81F41E558F8,36285C620862F6D6DA79B5DDC43DA5F6,354305E5CFE669B207AD77F945A3BDED,354305E5CFE669B207AD77F945A3BDED,5FB57E37B818A110A4A30A3C2041D59C,B431BE7ECB0EC245C7D0E378148DBF47,152C7F597FEBA687FD2B1D1188CBFDD8,9B419055443C2EB2BC91670D2B1933E3,B2CAE7973904BC59A841D576BCD2E759,8D884D37B3875744DE6AE9D5F29C64C0,DD34F220C5AC313D6AB617CC3E4DB84D,E125303C2D5A26BF1D607F879DF6BB9B,D454F43375250B752DBAAE37336A27C6'),('m5','60D357F5A69356EE720BE095319BED1B');
/*!40000 ALTER TABLE `sql_patches_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sql_template`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sql_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sql_template`
--

LOCK TABLES `sql_template` WRITE;
/*!40000 ALTER TABLE `sql_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sql_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_log` (
  `from_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_date` datetime DEFAULT NULL,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `uid` tinyint(4) NOT NULL DEFAULT '0',
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `main_from_index` (`from_date`,`cid`,`mid`),
  UNIQUE KEY `main_to_index` (`to_date`,`cid`,`mid`),
  KEY `from_date_index` (`from_date`),
  KEY `to_date_index` (`to_date`),
  KEY `cid_index` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_log`
--

LOCK TABLES `status_log` WRITE;
/*!40000 ALTER TABLE `status_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscr_contact`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscr_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `name` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscr_contact`
--

LOCK TABLES `subscr_contact` WRITE;
/*!40000 ALTER TABLE `subscr_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscr_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_change_task`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_change_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `tpid` int(11) NOT NULL DEFAULT '0',
  `from_date` date DEFAULT NULL,
  `ex_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `ex_time` (`ex_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_change_task`
--

LOCK TABLES `tariff_change_task` WRITE;
/*!40000 ALTER TABLE `tariff_change_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariff_change_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tm` tinyint(3) NOT NULL DEFAULT '0',
  `df` int(11) NOT NULL DEFAULT '0',
  `beh` int(11) NOT NULL DEFAULT '0',
  `pos` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_group`
--

LOCK TABLES `tariff_group` WRITE;
/*!40000 ALTER TABLE `tariff_group` DISABLE KEYS */;
INSERT INTO `tariff_group` VALUES (1,'Группа тарифов',4,30,0,0);
/*!40000 ALTER TABLE `tariff_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_group_tariff`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_group_tariff` (
  `tgid` int(11) NOT NULL DEFAULT '0',
  `tpid` int(11) NOT NULL DEFAULT '0',
  `date1` date DEFAULT NULL COMMENT 'начало периода видимости тарифа в группе тарифов',
  `date2` date DEFAULT NULL COMMENT 'конец периода видимости тарифа в группе тарифов',
  KEY `tgid` (`tgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_group_tariff`
--

LOCK TABLES `tariff_group_tariff` WRITE;
/*!40000 ALTER TABLE `tariff_group_tariff` DISABLE KEYS */;
INSERT INTO `tariff_group_tariff` VALUES (1,2,NULL,NULL),(1,4,NULL,NULL);
/*!40000 ALTER TABLE `tariff_group_tariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_label`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_label`
--

LOCK TABLES `tariff_label` WRITE;
/*!40000 ALTER TABLE `tariff_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariff_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_label_link`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_label_link` (
  `tariff_id` int(11) NOT NULL DEFAULT '0',
  `label_id` int(11) NOT NULL DEFAULT '0',
  KEY `tariff_id` (`tariff_id`,`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_label_link`
--

LOCK TABLES `tariff_label_link` WRITE;
/*!40000 ALTER TABLE `tariff_label_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariff_label_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_option`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tariff_ids` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `depends` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `incompatible` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deactivation_mode` int(11) NOT NULL,
  `contract_groups` bigint(20) NOT NULL DEFAULT '0',
  `hideForWeb` smallint(6) NOT NULL DEFAULT '0',
  `hideForWebContractGroups` bigint(20) NOT NULL DEFAULT '0',
  `hideForWebContractGroupsMode` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_option`
--

LOCK TABLES `tariff_option` WRITE;
/*!40000 ALTER TABLE `tariff_option` DISABLE KEYS */;
INSERT INTO `tariff_option` VALUES (1,'Пакет трафика','2','','',NULL,NULL,'','',0,0,0,1,0);
/*!40000 ALTER TABLE `tariff_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_option_activate_mode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_option_activate_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `charge_type_id` int(11) NOT NULL,
  `charge_summa` decimal(10,2) NOT NULL,
  `period_mode` int(11) NOT NULL,
  `period_col` int(11) NOT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `deactivation_mode` int(11) NOT NULL,
  `reactivation_mode` int(11) NOT NULL,
  `delete_mode` int(11) NOT NULL DEFAULT '0',
  `delete_charge_mode` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `option_id` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_option_activate_mode`
--

LOCK TABLES `tariff_option_activate_mode` WRITE;
/*!40000 ALTER TABLE `tariff_option_activate_mode` DISABLE KEYS */;
INSERT INTO `tariff_option_activate_mode` VALUES (1,1,'10 минут',1,5.00,111,10,'2015-05-25',NULL,0,0,0,1);
/*!40000 ALTER TABLE `tariff_option_activate_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_plan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title_web` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actual` int(11) NOT NULL DEFAULT '0',
  `gr` bigint(20) NOT NULL,
  `pattern` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `face` tinyint(4) DEFAULT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_plan`
--

LOCK TABLES `tariff_plan` WRITE;
/*!40000 ALTER TABLE `tariff_plan` DISABLE KEYS */;
INSERT INTO `tariff_plan` VALUES (1,'Общий',NULL,'0000-00-00 00:00:00',0,0,'',0,1),(2,'Базовый',NULL,'0000-00-00 00:00:00',1,1,'',0,2),(3,'Служебный',NULL,'0000-00-00 00:00:00',1,36028797018963968,'',0,3),(4,'VIP',NULL,'0000-00-00 00:00:00',1,1,'',0,4);
/*!40000 ALTER TABLE `tariff_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_tree` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_tree` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent_tree`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_tree`
--

LOCK TABLES `tariff_tree` WRITE;
/*!40000 ALTER TABLE `tariff_tree` DISABLE KEYS */;
INSERT INTO `tariff_tree` VALUES (1,0),(2,0),(3,0),(4,0);
/*!40000 ALTER TABLE `tariff_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_tree_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariff_tree_config` (
  `module` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_tree_config`
--

LOCK TABLES `tariff_tree_config` WRITE;
/*!40000 ALTER TABLE `tariff_tree_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `tariff_tree_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_load`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `param` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `le` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `le` (`le`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_load`
--

LOCK TABLES `task_load` WRITE;
/*!40000 ALTER TABLE `task_load` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_proccess`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_proccess` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL DEFAULT '0',
  `title` char(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `param` int(11) NOT NULL DEFAULT '0',
  `start_process_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spt` (`start_process_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_proccess`
--

LOCK TABLES `task_proccess` WRITE;
/*!40000 ALTER TABLE `task_proccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_proccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_type`
--

LOCK TABLES `time_type` WRITE;
/*!40000 ALTER TABLE `time_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_account_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_account_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `contractId` int(11) NOT NULL,
  `specId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `login` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `macAddress` varbinary(64) DEFAULT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceAccountId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceState` int(11) NOT NULL,
  `deviceOptions` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `accessCode` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `contract` (`contractId`),
  KEY `device` (`deviceId`),
  KEY `period` (`dateFrom`,`dateTo`),
  KEY `parent` (`parentId`),
  KEY `deviceAccountId` (`deviceAccountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_account_4`
--

LOCK TABLES `tv_account_4` WRITE;
/*!40000 ALTER TABLE `tv_account_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_account_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_account_detail_4_201304`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_account_detail_4_201304` (
  `contractId` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `account` decimal(10,5) NOT NULL,
  PRIMARY KEY (`contractId`,`accountId`,`productId`,`sid`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
/*!50100 PARTITION BY HASH (contractId)
PARTITIONS 8 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_account_detail_4_201304`
--

LOCK TABLES `tv_account_detail_4_201304` WRITE;
/*!40000 ALTER TABLE `tv_account_detail_4_201304` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_account_detail_4_201304` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_account_spec_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_account_spec_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `parentTypeIds` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `needLogin` tinyint(4) NOT NULL,
  `needPassword` tinyint(4) NOT NULL,
  `needPin` tinyint(4) NOT NULL,
  `needDevice` tinyint(4) NOT NULL,
  `needIdentifier` tinyint(4) NOT NULL DEFAULT '0',
  `needMacAddress` tinyint(4) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_account_spec_4`
--

LOCK TABLES `tv_account_spec_4` WRITE;
/*!40000 ALTER TABLE `tv_account_spec_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_account_spec_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_account_spec_device_group_link_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_account_spec_device_group_link_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tvAccountSpecId` int(11) NOT NULL,
  `deviceGroupId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tvAccountSpec` (`tvAccountSpecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_account_spec_device_group_link_4`
--

LOCK TABLES `tv_account_spec_device_group_link_4` WRITE;
/*!40000 ALTER TABLE `tv_account_spec_device_group_link_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_account_spec_device_group_link_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_account_spec_device_type_link_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_account_spec_device_type_link_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tvAccountSpecId` int(11) NOT NULL,
  `deviceTypeId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tvAccountSpec` (`tvAccountSpecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_account_spec_device_type_link_4`
--

LOCK TABLES `tv_account_spec_device_type_link_4` WRITE;
/*!40000 ALTER TABLE `tv_account_spec_device_type_link_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_account_spec_device_type_link_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_channel_spec_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_channel_spec_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `serviceSpecId` int(11) NOT NULL,
  `identifier` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `serviceSpec` (`serviceSpecId`),
  KEY `entity` (`entityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_channel_spec_4`
--

LOCK TABLES `tv_channel_spec_4` WRITE;
/*!40000 ALTER TABLE `tv_channel_spec_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_channel_spec_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_device_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_device_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL,
  `deviceTypeId` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `orderManagerDisabled` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `uptime` text COLLATE utf8_unicode_ci NOT NULL,
  `uptimeTime` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_device_4`
--

LOCK TABLES `tv_device_4` WRITE;
/*!40000 ALTER TABLE `tv_device_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_device_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_device_type_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_device_type_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `deviceEntitySpecId` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `protocolHandlerClass` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saHandlerClass` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceManagerClass` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_device_type_4`
--

LOCK TABLES `tv_device_type_4` WRITE;
/*!40000 ALTER TABLE `tv_device_type_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_device_type_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_service_spec_channel_link_4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_service_spec_channel_link_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceSpecId` int(11) NOT NULL,
  `deviceId` int(11) NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateFrom` date DEFAULT NULL,
  `dateTo` date DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `service` (`serviceSpecId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_service_spec_channel_link_4`
--

LOCK TABLES `tv_service_spec_channel_link_4` WRITE;
/*!40000 ALTER TABLE `tv_service_spec_channel_link_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `tv_service_spec_channel_link_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` char(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `descr` char(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pswd` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gr` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `cgr` bigint(20) NOT NULL DEFAULT '0',
  `pids` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contract_pid` int(11) NOT NULL DEFAULT '0',
  `contract_cid` int(11) NOT NULL DEFAULT '0',
  `config` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `crm_user_id` int(11) NOT NULL,
  `cgr_mode` tinyint(4) NOT NULL DEFAULT '1',
  `ch_pswd` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','','','21232F297A57A5A743894A0E4A801FC3','0000-00-00 00:00:00',0,0,0,'','',0,0,'last_message_id=0\n',0,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `gr_code` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `gr_name` char(60) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`gr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_access`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_access` (
  `gr_code` smallint(3) unsigned NOT NULL DEFAULT '0',
  `ma_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  KEY `gr_code` (`gr_code`,`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_access`
--

LOCK TABLES `user_group_access` WRITE;
/*!40000 ALTER TABLE `user_group_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_entry`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_entry` (
  `gr_code` smallint(3) unsigned NOT NULL DEFAULT '0',
  `parent_gr_code` smallint(3) unsigned NOT NULL DEFAULT '0',
  KEY `gr_code` (`gr_code`,`parent_gr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_entry`
--

LOCK TABLES `user_group_entry` WRITE;
/*!40000 ALTER TABLE `user_group_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_member`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_member` (
  `user_id` smallint(3) unsigned DEFAULT '0',
  `gr_code` smallint(3) unsigned DEFAULT '0',
  KEY `user_id` (`user_id`,`gr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_member`
--

LOCK TABLES `user_group_member` WRITE;
/*!40000 ALTER TABLE `user_group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_menu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_menu` (
  `uid` int(11) NOT NULL,
  `menu_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hidden` tinyint(2) NOT NULL,
  PRIMARY KEY (`uid`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_menu`
--

LOCK TABLES `user_menu` WRITE;
/*!40000 ALTER TABLE `user_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_module_action`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_module_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` char(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `action` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `description` char(120) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `module_action` (`module`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_module_action`
--

LOCK TABLES `user_module_action` WRITE;
/*!40000 ALTER TABLE `user_module_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_module_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tables`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tables` (
  `userId` int(11) DEFAULT NULL,
  `table_module` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widths` mediumtext COLLATE utf8_unicode_ci,
  `positions` mediumtext COLLATE utf8_unicode_ci,
  `hiddens` mediumtext COLLATE utf8_unicode_ci,
  KEY `userId` (`userId`),
  KEY `table_module` (`table_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tables`
--

LOCK TABLES `user_tables` WRITE;
/*!40000 ALTER TABLE `user_tables` DISABLE KEYS */;
INSERT INTO `user_tables` VALUES (1,'inet','inetSession','63,63,115,146,115,155,29,121,115,107,108,107,93,70,78,102','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15','0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0');
/*!40000 ALTER TABLE `user_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_access`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_access` (
  `user_id` smallint(3) unsigned NOT NULL DEFAULT '0',
  `ma_id` smallint(3) unsigned DEFAULT '0',
  KEY `user_id_2` (`user_id`,`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_access`
--

LOCK TABLES `user_user_access` WRITE;
/*!40000 ALTER TABLE `user_user_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_menu`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_menu`
--

LOCK TABLES `web_menu` WRITE;
/*!40000 ALTER TABLE `web_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_request_count`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_request_count` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `count` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_request_count`
--

LOCK TABLES `web_request_count` WRITE;
/*!40000 ALTER TABLE `web_request_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_request_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_request_limit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_request_limit` (
  `cid` int(11) NOT NULL DEFAULT '0',
  `lim` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_request_limit`
--

LOCK TABLES `web_request_limit` WRITE;
/*!40000 ALTER TABLE `web_request_limit` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_request_limit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-26 14:06:22
