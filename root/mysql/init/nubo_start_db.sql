-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: nubo
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.21.04.3

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
-- Current Database: `nubo`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nubo` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `nubo`;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `activationkey` varchar(255) NOT NULL DEFAULT '',
  `deviceid` varchar(255) DEFAULT NULL,
  `devicetype` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emailtoken` varchar(255) DEFAULT NULL,
  `firstlogin` int DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `jobtitle` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `pushregid` varchar(255) DEFAULT NULL,
  `resetpasscode` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `expirationdate` date DEFAULT NULL,
  `onlinestatus` int DEFAULT '0',
  `lasteventtime` date DEFAULT NULL,
  `lasteventdcname` varchar(255) DEFAULT NULL,
  `maindomain` varchar(255) DEFAULT NULL,
  `secondAuthRegistred` varchar(255) DEFAULT 'false',
  `phone_number` varchar(100) DEFAULT NULL,
  `imsi` varchar(100) DEFAULT '',
  `devicename` varchar(100) DEFAULT '',
  `resetpasscode_wipe` int DEFAULT '0',
  `biometric_token` varchar(100) DEFAULT '',
  `otp_token` varchar(100) DEFAULT '',
  PRIMARY KEY (`activationkey`),
  KEY `activations_deviceid` (`deviceid`),
  KEY `activations_email` (`email`),
  KEY `activations_emailToken` (`emailtoken`),
  KEY `activations_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_field_mappings`
--

DROP TABLE IF EXISTS `ad_field_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_field_mappings` (
  `adfield` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `addomain` varchar(255) NOT NULL DEFAULT '',
  `nubofield` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`adfield`,`maindomain`,`addomain`,`nubofield`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_field_mappings`
--

LOCK TABLES `ad_field_mappings` WRITE;
/*!40000 ALTER TABLE `ad_field_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_field_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_groups`
--

DROP TABLE IF EXISTS `admin_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `creator` (`creator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_groups`
--

LOCK TABLES `admin_groups` WRITE;
/*!40000 ALTER TABLE `admin_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `email` varchar(100) NOT NULL,
  `maindomain` varchar(100) DEFAULT NULL,
  `permissions` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allowed_front_end_servers`
--

DROP TABLE IF EXISTS `allowed_front_end_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allowed_front_end_servers` (
  `dcName` varchar(255) NOT NULL DEFAULT '',
  `servername` varchar(255) NOT NULL DEFAULT '',
  `serverkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dcName`,`servername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowed_front_end_servers`
--

LOCK TABLES `allowed_front_end_servers` WRITE;
/*!40000 ALTER TABLE `allowed_front_end_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `allowed_front_end_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apks`
--

DROP TABLE IF EXISTS `apks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apks` (
  `packagename` varchar(100) NOT NULL,
  `versioncode` bigint NOT NULL,
  `versionname` varchar(100) DEFAULT NULL,
  `appname` varchar(100) DEFAULT NULL,
  `is_in_image` int NOT NULL,
  `can_be_updated` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`packagename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apks`
--

LOCK TABLES `apks` WRITE;
/*!40000 ALTER TABLE `apks` DISABLE KEYS */;
/*!40000 ALTER TABLE `apks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_rules`
--

DROP TABLE IF EXISTS `app_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_rules` (
  `ruleid` int NOT NULL AUTO_INCREMENT,
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `packagename` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `mask` varchar(255) DEFAULT NULL,
  `ipversion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ruleid`,`maindomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_rules`
--

LOCK TABLES `app_rules` WRITE;
/*!40000 ALTER TABLE `app_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_usages`
--

DROP TABLE IF EXISTS `app_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_usages` (
  `day` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `packagename` varchar(100) NOT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`day`,`email`,`packagename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_usages`
--

LOCK TABLES `app_usages` WRITE;
/*!40000 ALTER TABLE `app_usages` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_usages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps` (
  `packagename` varchar(255) NOT NULL DEFAULT '',
  `apptype` varchar(20) DEFAULT 'apk',
  `filename` varchar(150) DEFAULT '',
  `appname` varchar(255) DEFAULT NULL,
  `description` text,
  `summary` varchar(250) DEFAULT NULL,
  `categories` varchar(250) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `err` varchar(255) DEFAULT NULL,
  `versionname` varchar(255) DEFAULT NULL,
  `versioncode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`packagename`,`maindomain`),
  KEY `apps_domain` (`maindomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_versions`
--

DROP TABLE IF EXISTS `apps_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_versions` (
  `packagename` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `versioncode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`packagename`,`maindomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_versions`
--

LOCK TABLES `apps_versions` WRITE;
/*!40000 ALTER TABLE `apps_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocked_devices`
--

DROP TABLE IF EXISTS `blocked_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocked_devices` (
  `ruleid` int NOT NULL AUTO_INCREMENT,
  `rulename` varchar(255) DEFAULT NULL,
  `filtername` varchar(255) DEFAULT NULL,
  `maindomain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked_devices`
--

LOCK TABLES `blocked_devices` WRITE;
/*!40000 ALTER TABLE `blocked_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocked_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_history`
--

DROP TABLE IF EXISTS `conversation_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fromjid` varchar(255) DEFAULT NULL,
  `tojid` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_history`
--

LOCK TABLES `conversation_history` WRITE;
/*!40000 ALTER TABLE `conversation_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_center_configs`
--

DROP TABLE IF EXISTS `data_center_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_center_configs` (
  `dcName` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dcName`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_center_configs`
--

LOCK TABLES `data_center_configs` WRITE;
/*!40000 ALTER TABLE `data_center_configs` DISABLE KEYS */;
INSERT INTO `data_center_configs` VALUES ('dc','dcInternalURL','https://lab.nubosoftware.com/'),('dc','dcURL','http://labil.nubosoftware.com:1080/'),('dc','defaultTimeZone','Etc/UTC'),('dc','internalurl','http://127.0.0.1:8080/'),('dc','nfsId','1'),('dc','platformType','docker'),('dc','platformVersionCode','300');
/*!40000 ALTER TABLE `data_center_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_centers`
--

DROP TABLE IF EXISTS `data_centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_centers` (
  `dcname` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `users` mediumblob,
  PRIMARY KEY (`dcname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_centers`
--

LOCK TABLES `data_centers` WRITE;
/*!40000 ALTER TABLE `data_centers` DISABLE KEYS */;
INSERT INTO `data_centers` VALUES ('dc','online','2021-10-21 15:13:36',NULL);
/*!40000 ALTER TABLE `data_centers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_apps`
--

DROP TABLE IF EXISTS `device_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_apps` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `deviceid` varchar(255) NOT NULL DEFAULT '',
  `packagename` varchar(255) NOT NULL DEFAULT '',
  `hrtime` bigint DEFAULT NULL,
  `maindomain` varchar(255) DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  `installed` int DEFAULT NULL,
  PRIMARY KEY (`email`,`deviceid`,`packagename`),
  KEY `device_apps_installed` (`installed`),
  KEY `device_apps_domain` (`maindomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_apps`
--

LOCK TABLES `device_apps` WRITE;
/*!40000 ALTER TABLE `device_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_model_convert`
--

DROP TABLE IF EXISTS `device_model_convert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_model_convert` (
  `hardwaredesc` varchar(255) NOT NULL,
  `devicemodel` varchar(255) NOT NULL,
  PRIMARY KEY (`hardwaredesc`,`devicemodel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_model_convert`
--

LOCK TABLES `device_model_convert` WRITE;
/*!40000 ALTER TABLE `device_model_convert` DISABLE KEYS */;
INSERT INTO `device_model_convert` VALUES ('iPad1,1','iPad1'),('iPad2,1','iPad2'),('iPad2,2','iPad2'),('iPad2,3','iPad2'),('iPad2,4','iPad2'),('iPad2,5','iPadMini'),('iPad2,6','iPadMini'),('iPad2,7','iPadMini'),('iPad3,1','iPad3'),('iPad3,2','iPad3'),('iPad3,3','iPad3'),('iPad3,4','iPad4'),('iPad3,5','iPad4'),('iPad3,6','iPad4'),('iPad4,1','iPadAir'),('iPad4,2','iPadAir'),('iPad4,3','iPadAir'),('iPad4,4','iPadMini2'),('iPad4,5','iPadMini2'),('iPad4,6','iPadMini2'),('iPad4,7','iPadMini3'),('iPad4,8','iPadMini3'),('iPad4,9','iPadMini3'),('iPad5,1','iPadMini4'),('iPad5,2','iPadMini4'),('iPad5,3','iPadAir2'),('iPad5,4','iPadAir2'),('iPad6,11','iPad5'),('iPad6,12','iPad5'),('iPad6,3','iPadPro9_7Inch'),('iPad6,4','iPadPro9_7Inch'),('iPad6,7','iPadPro12_9Inch'),('iPad6,8','iPadPro12_9Inch'),('iPad7,1','iPadPro12_9Inch'),('iPad7,2','iPadPro12_9Inch'),('iPad7,3','iPadPro10_5Inch'),('iPad7,4','iPadPro10_5Inch'),('iPhone10,1','iPhone8'),('iPhone10,2','iPhone8Plus'),('iPhone10,3','iPhoneX'),('iPhone10,4','iPhone8'),('iPhone10,5','iPhone8Plus'),('iPhone10,6','iPhoneX'),('iPhone3,1','iPhone4'),('iPhone3,2','iPhone4'),('iPhone3,3','iPhone4'),('iPhone4,1','iPhone4S'),('iPhone4,2','iPhone4S'),('iPhone4,3','iPhone4S'),('iPhone5,1','iPhone5'),('iPhone5,2','iPhone5'),('iPhone5,3','iPhone5C'),('iPhone5,4','iPhone5C'),('iPhone6,1','iPhone5S'),('iPhone6,2','iPhone5S'),('iPhone7,1','iPhone6Plus'),('iPhone7,2','iPhone6'),('iPhone8,1','iPhone6S'),('iPhone8,2','iPhone6SPlus'),('iPhone8,4','iPhoneSE'),('iPhone9,1','iPhone7'),('iPhone9,2','iPhone7Plus'),('iPhone9,3','iPhone7'),('iPhone9,4','iPhone7Plus');
/*!40000 ALTER TABLE `device_model_convert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `devicename` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `resolution` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`devicename`,`maindomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_logs`
--

DROP TABLE IF EXISTS `events_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `eventtype` int NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` varchar(765) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_logs`
--

LOCK TABLES `events_logs` WRITE;
/*!40000 ALTER TABLE `events_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_configs`
--

DROP TABLE IF EXISTS `global_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_configs` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_configs`
--

LOCK TABLES `global_configs` WRITE;
/*!40000 ALTER TABLE `global_configs` DISABLE KEYS */;
INSERT INTO `global_configs` VALUES ('activateBySMS','false'),('activationTimeoutPeriod','48'),('ActiveDirectoryAuthenticate','false'),('allowOnlyImportedADusers','false'),('checkPasswordWithAD','false'),('checkPasswordWithADFormat','plain'),('dataCenterUpdateTimeout','2'),('disableIPBlockMechanism','true'),('fastConnection','true'),('fidoSiteId',''),('fidoSvcId',''),('fidoURL',''),('hideControlPanel','false'),('isHandlingMediaStreams','true'),('otpURL',''),('restrictWebClientAccess','true'),('secondFactorAuth','none'),('sendTrackData','false'),('sessionTimeout','600'),('streams','media/streams/'),('virtualKeyboardEnabled','false'),('virtualKeyboardPasswordExpirationDays','0'),('virtualKeyboardPasswordMinChars','6'),('virtualKeyboardType','mTranskey');
/*!40000 ALTER TABLE `global_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_apps`
--

DROP TABLE IF EXISTS `group_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_apps` (
  `groupname` varchar(255) NOT NULL DEFAULT '',
  `packagename` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `addomain` varchar(255) DEFAULT NULL,
  `auto_install` int DEFAULT '1',
  PRIMARY KEY (`groupname`,`maindomain`,`packagename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_apps`
--

LOCK TABLES `group_apps` WRITE;
/*!40000 ALTER TABLE `group_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `groupname` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `addomain` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `distinguishedname` varchar(255) DEFAULT NULL,
  `adsync` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`groupname`,`maindomain`,`addomain`),
  KEY `groups_type` (`type`),
  KEY `groups_distinguishedName` (`distinguishedname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `jobname` varchar(255) NOT NULL DEFAULT '',
  `startimmediately` int DEFAULT NULL,
  `intervalstr` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `isactive` int DEFAULT NULL,
  `commandtorun` varchar(1000) DEFAULT NULL,
  `dcname` varchar(255) DEFAULT NULL,
  `isupdate` int DEFAULT NULL,
  PRIMARY KEY (`maindomain`,`jobname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `last_sessions`
--

DROP TABLE IF EXISTS `last_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `last_sessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maindomain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `last_sessions`
--

LOCK TABLES `last_sessions` WRITE;
/*!40000 ALTER TABLE `last_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `last_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldaps`
--

DROP TABLE IF EXISTS `ldaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ldaps` (
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `addomain` varchar(255) NOT NULL DEFAULT '',
  `basedn` varchar(255) DEFAULT NULL,
  `connectionurl` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `adminemail` varchar(255) DEFAULT NULL,
  `orgunits` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`maindomain`,`addomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldaps`
--

LOCK TABLES `ldaps` WRITE;
/*!40000 ALTER TABLE `ldaps` DISABLE KEYS */;
/*!40000 ALTER TABLE `ldaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locks` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `dcname` varchar(255) DEFAULT NULL,
  `timeset` datetime DEFAULT NULL,
  `timeout` datetime DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muc_users`
--

DROP TABLE IF EXISTS `muc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muc_users` (
  `roomjid` varchar(255) NOT NULL DEFAULT '',
  `userjid` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`roomjid`,`userjid`,`maindomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muc_users`
--

LOCK TABLES `muc_users` WRITE;
/*!40000 ALTER TABLE `muc_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `muc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nfs_servers`
--

DROP TABLE IF EXISTS `nfs_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nfs_servers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dcname` varchar(255) DEFAULT NULL,
  `nfsip` varchar(255) DEFAULT NULL,
  `sship` varchar(255) DEFAULT NULL,
  `sshuser` varchar(255) DEFAULT NULL,
  `keypath` varchar(255) DEFAULT NULL,
  `nfspath` varchar(255) DEFAULT NULL,
  `nfspathslow` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT 'http://127.0.0.1:3333',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nfs_servers`
--

LOCK TABLES `nfs_servers` WRITE;
/*!40000 ALTER TABLE `nfs_servers` DISABLE KEYS */;
INSERT INTO `nfs_servers` VALUES (1,'dc','nubo-nfs','nubo-nfs','nubo','/home/nubo/.ssh/id_rsa','/srv/nfs/homes',NULL,'http://127.0.0.1:3333');
/*!40000 ALTER TABLE `nfs_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openvpn_profiles`
--

DROP TABLE IF EXISTS `openvpn_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `openvpn_profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `profilename` varchar(255) DEFAULT NULL,
  `configfile` blob,
  `vpnusername` varchar(255) DEFAULT NULL,
  `vpnpassword` varchar(255) DEFAULT NULL,
  `orgaccount` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `openvpn_profiles_user_name` (`user`,`profilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openvpn_profiles`
--

LOCK TABLES `openvpn_profiles` WRITE;
/*!40000 ALTER TABLE `openvpn_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `openvpn_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_redirection_maps`
--

DROP TABLE IF EXISTS `org_redirection_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_redirection_maps` (
  `domain` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_redirection_maps`
--

LOCK TABLES `org_redirection_maps` WRITE;
/*!40000 ALTER TABLE `org_redirection_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_redirection_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgs`
--

DROP TABLE IF EXISTS `orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orgs` (
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `authtype` varchar(255) DEFAULT NULL,
  `orgname` varchar(255) DEFAULT NULL,
  `securessl` varchar(255) DEFAULT NULL,
  `serverurl` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `accessstatus` varchar(255) DEFAULT 'open',
  `im_phone_verification_needed` int DEFAULT '0',
  `impersonationuser` varchar(255) DEFAULT NULL,
  `impersonationpassword` varchar(255) DEFAULT NULL,
  `passcodeexpirationdays` int DEFAULT '0',
  `passcodeminchars` int DEFAULT '6',
  `passcodetype` int DEFAULT '0',
  `clientauthtype` int DEFAULT '1',
  `secondauthmethod` int DEFAULT '3',
  `otptype` int DEFAULT '0',
  `watermark` varchar(2000) DEFAULT NULL,
  `notifieradmin` varchar(255) DEFAULT NULL,
  `deviceapprovaltype` int DEFAULT '0',
  `exchangeencoding` varchar(255) DEFAULT 'UTF-8',
  `showfullnotif` int DEFAULT '0',
  `dedicatedplatform` int DEFAULT '0',
  `allowconnect` int DEFAULT '1',
  `vpn` int DEFAULT '0',
  `owaurl` varchar(255) DEFAULT '',
  `refererurl` varchar(255) DEFAULT '',
  `owaurlpostauth` varchar(255) DEFAULT '',
  `inviteurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`maindomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgs`
--

LOCK TABLES `orgs` WRITE;
/*!40000 ALTER TABLE `orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages_lists`
--

DROP TABLE IF EXISTS `packages_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages_lists` (
  `uid` int NOT NULL DEFAULT '0',
  `packagename` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`packagename`),
  UNIQUE KEY `packagename` (`packagename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages_lists`
--

LOCK TABLES `packages_lists` WRITE;
/*!40000 ALTER TABLE `packages_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passcode_history`
--

DROP TABLE IF EXISTS `passcode_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passcode_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `passcode` varchar(255) DEFAULT NULL,
  `maindomain` varchar(255) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passcode_history`
--

LOCK TABLES `passcode_history` WRITE;
/*!40000 ALTER TABLE `passcode_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `passcode_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform_configs`
--

DROP TABLE IF EXISTS `platform_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform_configs` (
  `dcName` varchar(255) NOT NULL DEFAULT '',
  `concurrency` int DEFAULT '2',
  `concurrencyDelay` int DEFAULT '10000',
  `platformPoolSize` int DEFAULT '0',
  `explatformPoolSize` int DEFAULT '0',
  `upperCapacityLevel` float DEFAULT '0.5',
  `bottomCapacityLevel` float DEFAULT '0',
  `maxCapacity` int DEFAULT '60',
  `usersPerPlatform` int DEFAULT '20',
  `choosePool` int DEFAULT '10',
  `maxFailed` int DEFAULT '0',
  `maxFails` int DEFAULT '5',
  `fixedPool` varchar(255) DEFAULT 'true',
  `restartPlatformSessionsThreshold` int DEFAULT '0',
  `cleanPlatformsMode` varchar(255) DEFAULT 'false',
  `rsyslog` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dcName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform_configs`
--

LOCK TABLES `platform_configs` WRITE;
/*!40000 ALTER TABLE `platform_configs` DISABLE KEYS */;
INSERT INTO `platform_configs` VALUES ('dc',3,20,1,0,0.5,0,40,20,10,0,5,'false',0,'false','10.1.0.8');
/*!40000 ALTER TABLE `platform_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recordings`
--

DROP TABLE IF EXISTS `recordings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recordings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `devicename` varchar(255) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordings`
--

LOCK TABLES `recordings` WRITE;
/*!40000 ALTER TABLE `recordings` DISABLE KEYS */;
/*!40000 ALTER TABLE `recordings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remote_servers`
--

DROP TABLE IF EXISTS `remote_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remote_servers` (
  `servername` varchar(255) NOT NULL DEFAULT '',
  `serverkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`servername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remote_servers`
--

LOCK TABLES `remote_servers` WRITE;
/*!40000 ALTER TABLE `remote_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `remote_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `self_installed_apps`
--

DROP TABLE IF EXISTS `self_installed_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self_installed_apps` (
  `email` varchar(100) NOT NULL,
  `deviceid` varchar(100) NOT NULL,
  `packagename` varchar(100) NOT NULL,
  `maindomain` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`email`,`deviceid`,`packagename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `self_installed_apps`
--

LOCK TABLES `self_installed_apps` WRITE;
/*!40000 ALTER TABLE `self_installed_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `self_installed_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephony_local_numbers`
--

DROP TABLE IF EXISTS `telephony_local_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephony_local_numbers` (
  `local_number` varchar(40) NOT NULL,
  `is_used` int DEFAULT '0',
  `maindomain` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `deviceid` varchar(100) DEFAULT NULL,
  `vip_number` int DEFAULT '0',
  PRIMARY KEY (`local_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephony_local_numbers`
--

LOCK TABLES `telephony_local_numbers` WRITE;
/*!40000 ALTER TABLE `telephony_local_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephony_local_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephony_subscriptions`
--

DROP TABLE IF EXISTS `telephony_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephony_subscriptions` (
  `email` varchar(100) NOT NULL,
  `deviceid` varchar(100) NOT NULL,
  `maindomain` varchar(100) DEFAULT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `assigned_phone_number` varchar(100) DEFAULT NULL,
  `sid` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`email`,`deviceid`),
  KEY `telephony_subs_idx_1` (`assigned_phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephony_subscriptions`
--

LOCK TABLES `telephony_subscriptions` WRITE;
/*!40000 ALTER TABLE `telephony_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephony_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephony_trunks`
--

DROP TABLE IF EXISTS `telephony_trunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephony_trunks` (
  `trunkid` varchar(100) NOT NULL,
  `trunk_priority` int DEFAULT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `sip_proxy` varchar(100) DEFAULT NULL,
  `sip_username` varchar(100) DEFAULT NULL,
  `sip_domain` varchar(100) DEFAULT NULL,
  `sip_password` varchar(100) DEFAULT NULL,
  `sip_port` int DEFAULT NULL,
  `sip_protocol` varchar(20) DEFAULT NULL,
  `outgoing_rule` varchar(250) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`trunkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephony_trunks`
--

LOCK TABLES `telephony_trunks` WRITE;
/*!40000 ALTER TABLE `telephony_trunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephony_trunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_apk_histories`
--

DROP TABLE IF EXISTS `upload_apk_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_apk_histories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `packagename` varchar(255) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_apk_histories`
--

LOCK TABLES `upload_apk_histories` WRITE;
/*!40000 ALTER TABLE `upload_apk_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_apk_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urllauncher_apps`
--

DROP TABLE IF EXISTS `urllauncher_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urllauncher_apps` (
  `url` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `apkname` varchar(255) DEFAULT NULL,
  `appname` varchar(255) DEFAULT NULL,
  `ssourl` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`url`,`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urllauncher_apps`
--

LOCK TABLES `urllauncher_apps` WRITE;
/*!40000 ALTER TABLE `urllauncher_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `urllauncher_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_admin_groups`
--

DROP TABLE IF EXISTS `user_admin_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_admin_groups` (
  `userjid` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) DEFAULT NULL,
  `groupid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`userjid`,`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_admin_groups`
--

LOCK TABLES `user_admin_groups` WRITE;
/*!40000 ALTER TABLE `user_admin_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_admin_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_application_notifs`
--

DROP TABLE IF EXISTS `user_application_notifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_application_notifs` (
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `appname` varchar(255) NOT NULL DEFAULT '',
  `sendnotif` int DEFAULT NULL,
  PRIMARY KEY (`maindomain`,`email`,`appname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_application_notifs`
--

LOCK TABLES `user_application_notifs` WRITE;
/*!40000 ALTER TABLE `user_application_notifs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_application_notifs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_apps`
--

DROP TABLE IF EXISTS `user_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_apps` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `packagename` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `private` int DEFAULT NULL,
  `enablehidenuboapp` int DEFAULT '1',
  `auto_install` int DEFAULT '1',
  PRIMARY KEY (`email`,`maindomain`,`packagename`),
  KEY `user_apps_private` (`private`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_apps`
--

LOCK TABLES `user_apps` WRITE;
/*!40000 ALTER TABLE `user_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_devices`
--

DROP TABLE IF EXISTS `user_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_devices` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `imei` varchar(255) NOT NULL DEFAULT '',
  `active` int DEFAULT NULL,
  `devicename` varchar(255) DEFAULT NULL,
  `maindomain` varchar(255) DEFAULT NULL,
  `inserttime` datetime DEFAULT NULL,
  `imsi` varchar(255) DEFAULT '',
  `gateway` varchar(255) DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `vpnprofilename` varchar(255) DEFAULT NULL,
  `vpnstate` int DEFAULT '0',
  `vpnclient` varchar(255) DEFAULT NULL,
  `reg_phone_number` varchar(100) DEFAULT NULL,
  `local_extension` varchar(100) DEFAULT NULL,
  `loginattempts` int DEFAULT '0',
  `assigned_phone_number` varchar(100) DEFAULT NULL,
  `sip_username` varchar(100) DEFAULT NULL,
  `sip_domain` varchar(100) DEFAULT NULL,
  `sip_password` varchar(100) DEFAULT NULL,
  `sip_port` int DEFAULT NULL,
  `sip_protocol` varchar(20) DEFAULT NULL,
  `sip_proxy` varchar(100) DEFAULT NULL,
  `region_code` varchar(10) DEFAULT NULL,
  `messaging_server` varchar(100) DEFAULT NULL,
  `messaging_token_type` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `session_cache_params` text,
  PRIMARY KEY (`email`,`imei`),
  KEY `user_devices_domain` (`maindomain`),
  KEY `user_devices_phone` (`assigned_phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_devices`
--

LOCK TABLES `user_devices` WRITE;
/*!40000 ALTER TABLE `user_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `groupname` varchar(255) NOT NULL DEFAULT '',
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  `addomain` varchar(255) NOT NULL DEFAULT '',
  `adsync` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`,`groupname`,`maindomain`,`addomain`),
  KEY `user_groups_idx_1` (`maindomain`,`groupname`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notifications_history`
--

DROP TABLE IF EXISTS `user_notifications_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notifications_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `titleText` varchar(255) DEFAULT NULL,
  `notifyTime` varchar(255) DEFAULT NULL,
  `notifyLocation` varchar(255) DEFAULT NULL,
  `appName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_notifications_history_email` (`email`),
  KEY `user_notifications_history_date` (`date`),
  KEY `user_notifications_history_appName` (`appName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notifications_history`
--

LOCK TABLES `user_notifications_history` WRITE;
/*!40000 ALTER TABLE `user_notifications_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_notifications_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(255) NOT NULL DEFAULT '',
  `authtype` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `encrypted` int DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `isactive` int DEFAULT NULL,
  `isadmin` int DEFAULT NULL,
  `jobtitle` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `orgdomain` varchar(255) NOT NULL DEFAULT '',
  `orgemail` varchar(255) DEFAULT NULL,
  `loginemailtoken` varchar(255) DEFAULT NULL,
  `lastupdate` date DEFAULT NULL,
  `orgkey` varchar(255) DEFAULT NULL,
  `orgpassword` varchar(255) DEFAULT NULL,
  `orgpasswordcache` varchar(255) DEFAULT NULL,
  `orguser` varchar(255) DEFAULT NULL,
  `passcode` varchar(255) DEFAULT NULL,
  `securessl` varchar(255) DEFAULT NULL,
  `serverurl` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `officephone` varchar(255) DEFAULT NULL,
  `mobilephone` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `countrylang` varchar(255) DEFAULT NULL,
  `localevar` varchar(255) DEFAULT NULL,
  `clientip` varchar(255) DEFAULT NULL,
  `clientport` varchar(255) DEFAULT NULL,
  `im_mobile` varchar(255) DEFAULT NULL,
  `im_verification_code` varchar(255) DEFAULT NULL,
  `im_verification_status` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `subscriptionid` varchar(255) DEFAULT NULL,
  `subscriptionupdatedate` datetime DEFAULT NULL,
  `isimadmin` int DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `adsync` varchar(255) DEFAULT NULL,
  `addomain` varchar(255) DEFAULT NULL,
  `storageLimit` float DEFAULT '1000000',
  `storageLast` float DEFAULT '0',
  `im_mobile2` varchar(255) DEFAULT NULL,
  `im_verification_code2` varchar(255) DEFAULT NULL,
  `dcname` varchar(255) DEFAULT NULL,
  `dcurl` varchar(255) DEFAULT NULL,
  `passcodeupdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `passcodetypechange` int DEFAULT '0',
  `passcodetypeprev` int DEFAULT '0',
  `im_authenticate` varchar(255) DEFAULT NULL,
  `enablesound` int DEFAULT '1',
  `enablevibrate` int DEFAULT '1',
  `lastactivity` varchar(255) DEFAULT NULL,
  `im_mobile_swap` varchar(255) DEFAULT NULL,
  `im_mobile2_swap` varchar(255) DEFAULT NULL,
  `last_im_time` varchar(255) DEFAULT '-1',
  `passcodesalt` varchar(255) DEFAULT NULL,
  `ldap_dn` varchar(250) DEFAULT NULL,
  `exchange_domain` varchar(100) DEFAULT '',
  `docker_image` varchar(100) DEFAULT '',
  PRIMARY KEY (`email`,`orgdomain`),
  UNIQUE KEY `im_mobile` (`im_mobile`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `im_mobile2` (`im_mobile2`),
  UNIQUE KEY `im_mobile_swap` (`im_mobile_swap`),
  UNIQUE KEY `im_mobile2_swap` (`im_mobile2_swap`),
  KEY `users_orgemail` (`orgemail`),
  KEY `users_orgDomain` (`orgdomain`),
  KEY `users_orgKey` (`orgkey`),
  KEY `users_passcode` (`passcode`),
  KEY `users_isActive` (`isactive`),
  KEY `users_isAdmin` (`isadmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version_redirection_maps`
--

DROP TABLE IF EXISTS `version_redirection_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `version_redirection_maps` (
  `version` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version_redirection_maps`
--

LOCK TABLES `version_redirection_maps` WRITE;
/*!40000 ALTER TABLE `version_redirection_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `version_redirection_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versions` (
  `version` varchar(255) NOT NULL DEFAULT '',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('1.2.0.0.0','2015-08-13 14:45:48'),('1.2.0.0.1','2015-08-13 14:45:48'),('1.2.0.0.10','2015-08-13 14:45:48'),('1.2.0.0.100','2016-05-02 07:26:19'),('1.2.0.0.101','2016-05-02 07:26:19'),('1.2.0.0.102','2016-05-02 07:26:19'),('1.2.0.0.103','2016-05-02 07:26:19'),('1.2.0.0.104','2016-06-23 13:21:22'),('1.2.0.0.105','2016-06-23 13:21:22'),('1.2.0.0.106','2016-06-23 13:21:22'),('1.2.0.0.107','2016-06-23 13:21:22'),('1.2.0.0.108','2016-06-23 13:21:23'),('1.2.0.0.109','2016-08-16 14:43:44'),('1.2.0.0.11','2015-08-13 14:45:48'),('1.2.0.0.110','2016-08-16 14:43:44'),('1.2.0.0.111','2016-08-16 14:43:44'),('1.2.0.0.112','2016-08-16 14:43:44'),('1.2.0.0.113','2016-08-16 14:43:44'),('1.2.0.0.114','2016-08-16 14:43:44'),('1.2.0.0.115','2017-02-06 10:40:42'),('1.2.0.0.116','2016-11-22 07:21:33'),('1.2.0.0.117','2017-02-06 09:02:50'),('1.2.0.0.118','2017-02-06 09:02:51'),('1.2.0.0.119','2017-02-06 09:02:51'),('1.2.0.0.12','2015-08-13 14:45:48'),('1.2.0.0.120','2017-02-06 09:02:51'),('1.2.0.0.121','2017-02-06 09:02:51'),('1.2.0.0.122','2017-02-06 09:02:52'),('1.2.0.0.123','2017-02-06 09:02:52'),('1.2.0.0.124','2017-02-06 09:02:52'),('1.2.0.0.125','2017-02-06 09:02:52'),('1.2.0.0.126','2017-02-06 09:02:53'),('1.2.0.0.127','2017-02-06 09:02:53'),('1.2.0.0.128','2017-02-06 09:02:53'),('1.2.0.0.129','2017-02-06 09:02:53'),('1.2.0.0.13','2015-08-13 14:45:48'),('1.2.0.0.130','2017-02-06 09:02:54'),('1.2.0.0.131','2017-02-06 09:02:54'),('1.2.0.0.132','2017-02-06 09:02:54'),('1.2.0.0.133','2017-02-06 09:02:54'),('1.2.0.0.134','2017-02-06 09:02:54'),('1.2.0.0.135','2017-02-06 09:02:54'),('1.2.0.0.136','2017-02-06 09:02:55'),('1.2.0.0.137','2017-02-06 09:02:55'),('1.2.0.0.138','2017-02-06 09:02:56'),('1.2.0.0.139','2017-02-06 09:02:56'),('1.2.0.0.14','2015-08-13 14:45:48'),('1.2.0.0.140','2017-02-06 09:02:57'),('1.2.0.0.141','2017-02-06 09:02:57'),('1.2.0.0.142','2017-02-06 09:02:57'),('1.2.0.0.143','2017-02-06 09:02:57'),('1.2.0.0.144','2017-02-06 09:02:57'),('1.2.0.0.145','2017-02-06 09:02:57'),('1.2.0.0.146','2017-02-06 09:02:57'),('1.2.0.0.147','2017-02-06 09:02:57'),('1.2.0.0.148','2017-02-06 09:02:57'),('1.2.0.0.149','2017-02-06 09:02:57'),('1.2.0.0.15','2015-08-13 14:45:48'),('1.2.0.0.150','2017-02-06 09:02:57'),('1.2.0.0.151','2017-02-06 09:02:57'),('1.2.0.0.152','2017-02-06 09:02:57'),('1.2.0.0.153','2017-02-06 09:02:57'),('1.2.0.0.154','2017-02-06 09:02:57'),('1.2.0.0.155','2017-02-06 09:02:57'),('1.2.0.0.156','2017-02-06 09:02:57'),('1.2.0.0.157','2017-02-06 09:02:57'),('1.2.0.0.158','2017-02-06 09:02:57'),('1.2.0.0.159','2017-02-06 09:02:57'),('1.2.0.0.16','2015-08-13 14:45:48'),('1.2.0.0.160','2017-02-06 09:02:57'),('1.2.0.0.161','2017-02-06 09:02:57'),('1.2.0.0.162','2017-02-06 09:02:57'),('1.2.0.0.163','2017-02-06 09:02:57'),('1.2.0.0.164','2017-02-06 09:02:57'),('1.2.0.0.165','2017-02-06 09:02:57'),('1.2.0.0.166','2017-02-06 09:02:57'),('1.2.0.0.167','2017-02-06 09:02:57'),('1.2.0.0.168','2017-02-06 09:02:57'),('1.2.0.0.169','2017-02-06 09:02:57'),('1.2.0.0.17','2015-08-13 14:45:48'),('1.2.0.0.170','2017-02-06 09:02:57'),('1.2.0.0.171','2017-02-06 09:02:57'),('1.2.0.0.172','2017-02-06 09:02:57'),('1.2.0.0.173','2017-02-06 09:02:57'),('1.2.0.0.174','2017-02-06 09:02:57'),('1.2.0.0.175','2017-05-04 13:47:52'),('1.2.0.0.176','2017-07-11 12:39:10'),('1.2.0.0.177','2017-07-11 12:39:11'),('1.2.0.0.178','2017-07-11 12:39:11'),('1.2.0.0.179','2017-07-11 12:39:12'),('1.2.0.0.18','2015-08-13 14:45:48'),('1.2.0.0.180','2017-07-11 12:39:13'),('1.2.0.0.181','2017-07-11 12:39:13'),('1.2.0.0.182','2017-07-11 12:39:13'),('1.2.0.0.183','2017-07-11 12:39:18'),('1.2.0.0.184','2017-07-11 12:39:19'),('1.2.0.0.185','2017-07-11 12:39:19'),('1.2.0.0.186','2017-07-11 12:39:26'),('1.2.0.0.187','2017-07-11 12:39:26'),('1.2.0.0.188','2017-07-11 12:39:27'),('1.2.0.0.189','2017-07-11 12:39:27'),('1.2.0.0.19','2015-08-13 14:45:48'),('1.2.0.0.190','2017-07-11 12:39:27'),('1.2.0.0.191','2017-07-11 12:39:27'),('1.2.0.0.192','2017-07-11 12:39:27'),('1.2.0.0.193','2017-07-11 12:39:27'),('1.2.0.0.194','2017-07-11 12:39:27'),('1.2.0.0.195','2017-07-11 12:39:27'),('1.2.0.0.196','2017-07-11 12:39:27'),('1.2.0.0.197','2017-07-11 12:39:27'),('1.2.0.0.198','2017-07-11 12:39:27'),('1.2.0.0.199','2017-07-11 12:39:27'),('1.2.0.0.2','2015-08-13 14:45:48'),('1.2.0.0.20','2015-08-13 14:45:48'),('1.2.0.0.200','2017-07-11 12:39:27'),('1.2.0.0.201','2017-07-11 12:39:27'),('1.2.0.0.202','2017-07-11 12:39:27'),('1.2.0.0.203','2017-07-11 12:39:27'),('1.2.0.0.204','2017-07-11 12:39:28'),('1.2.0.0.205','2017-07-11 12:39:28'),('1.2.0.0.206','2017-07-11 12:39:28'),('1.2.0.0.207','2017-07-11 12:39:28'),('1.2.0.0.208','2017-07-11 12:39:29'),('1.2.0.0.209','2017-07-11 12:39:29'),('1.2.0.0.21','2015-08-13 14:45:48'),('1.2.0.0.210','2017-07-11 12:39:31'),('1.2.0.0.211','2017-05-04 13:47:52'),('1.2.0.0.212','2017-05-04 13:47:53'),('1.2.0.0.213','2017-06-27 07:04:47'),('1.2.0.0.214','2017-07-18 09:09:33'),('1.2.0.0.215','2017-09-14 08:27:06'),('1.2.0.0.216','2017-09-14 08:27:07'),('1.2.0.0.217','2017-09-14 08:27:07'),('1.2.0.0.218','2018-01-04 12:27:30'),('1.2.0.0.219','2017-12-13 14:57:40'),('1.2.0.0.22','2015-08-13 14:45:48'),('1.2.0.0.220','2018-01-04 12:26:25'),('1.2.0.0.221','2018-01-04 12:26:25'),('1.2.0.0.222','2018-01-04 12:26:26'),('1.2.0.0.223','2018-01-04 12:26:26'),('1.2.0.0.224','2018-01-04 12:26:26'),('1.2.0.0.225','2018-01-04 12:26:27'),('1.2.0.0.226','2018-01-04 12:26:27'),('1.2.0.0.227','2018-01-04 12:26:27'),('1.2.0.0.228','2018-01-29 13:14:26'),('1.2.0.0.229','2018-01-29 13:14:26'),('1.2.0.0.23','2015-08-13 14:45:48'),('1.2.0.0.230','2018-01-29 13:14:26'),('1.2.0.0.231','2018-01-29 13:14:26'),('1.2.0.0.232','2018-01-29 13:14:26'),('1.2.0.0.233','2018-01-29 13:14:27'),('1.2.0.0.234','2018-01-29 13:14:27'),('1.2.0.0.235','2018-01-29 13:14:27'),('1.2.0.0.236','2018-01-29 13:14:27'),('1.2.0.0.237','2018-01-29 13:14:27'),('1.2.0.0.238','2018-01-29 13:14:27'),('1.2.0.0.239','2018-01-29 13:14:27'),('1.2.0.0.24','2015-08-13 14:45:48'),('1.2.0.0.240','2018-01-29 13:14:27'),('1.2.0.0.241','2018-01-29 13:14:27'),('1.2.0.0.242','2018-01-29 13:14:27'),('1.2.0.0.243','2018-01-29 13:14:28'),('1.2.0.0.244','2018-01-29 13:14:28'),('1.2.0.0.245','2018-01-29 13:14:28'),('1.2.0.0.246','2018-01-29 13:14:28'),('1.2.0.0.247','2018-01-29 13:14:28'),('1.2.0.0.248','2018-01-29 13:14:28'),('1.2.0.0.249','2018-01-29 13:14:28'),('1.2.0.0.25','2015-08-13 14:45:48'),('1.2.0.0.250','2018-01-29 13:14:28'),('1.2.0.0.251','2018-01-29 13:14:28'),('1.2.0.0.252','2018-01-29 13:14:28'),('1.2.0.0.253','2018-01-29 13:14:28'),('1.2.0.0.254','2018-01-29 13:14:28'),('1.2.0.0.255','2018-01-29 13:14:28'),('1.2.0.0.256','2018-01-29 13:14:29'),('1.2.0.0.257','2018-01-29 13:14:29'),('1.2.0.0.258','2018-01-29 13:14:29'),('1.2.0.0.259','2018-01-29 13:14:29'),('1.2.0.0.26','2015-08-13 14:45:48'),('1.2.0.0.260','2018-01-29 13:14:29'),('1.2.0.0.261','2018-01-29 13:14:29'),('1.2.0.0.262','2018-01-29 13:14:29'),('1.2.0.0.263','2018-01-29 13:14:29'),('1.2.0.0.264','2018-01-29 13:14:29'),('1.2.0.0.265','2018-01-29 13:14:29'),('1.2.0.0.266','2018-01-29 13:14:29'),('1.2.0.0.267','2018-01-29 13:14:29'),('1.2.0.0.268','2018-01-29 13:14:29'),('1.2.0.0.269','2018-01-29 13:14:29'),('1.2.0.0.27','2015-08-13 14:45:48'),('1.2.0.0.270','2018-01-29 13:14:29'),('1.2.0.0.271','2018-01-29 13:14:30'),('1.2.0.0.272','2018-01-29 13:14:30'),('1.2.0.0.273','2018-01-29 13:14:30'),('1.2.0.0.274','2018-01-29 13:14:30'),('1.2.0.0.275','2018-01-29 13:14:30'),('1.2.0.0.276','2018-01-29 13:14:30'),('1.2.0.0.277','2018-01-29 13:14:30'),('1.2.0.0.278','2018-01-29 13:14:30'),('1.2.0.0.279','2018-01-29 13:14:30'),('1.2.0.0.28','2015-08-13 14:45:48'),('1.2.0.0.280','2018-01-29 13:14:30'),('1.2.0.0.281','2018-01-29 13:14:30'),('1.2.0.0.282','2018-01-29 13:14:30'),('1.2.0.0.283','2018-01-29 13:14:30'),('1.2.0.0.284','2018-01-29 13:14:30'),('1.2.0.0.285','2018-01-29 13:14:30'),('1.2.0.0.286','2018-01-29 13:14:31'),('1.2.0.0.287','2018-01-29 13:14:31'),('1.2.0.0.288','2018-01-29 13:14:31'),('1.2.0.0.289','2018-01-29 13:14:31'),('1.2.0.0.29','2015-08-13 14:45:49'),('1.2.0.0.290','2018-01-29 13:14:31'),('1.2.0.0.291','2018-01-29 13:14:31'),('1.2.0.0.292','2018-01-29 13:14:31'),('1.2.0.0.293','2018-01-29 13:14:31'),('1.2.0.0.294','2018-01-29 13:14:31'),('1.2.0.0.295','2018-01-29 13:14:31'),('1.2.0.0.296','2018-01-29 13:14:31'),('1.2.0.0.297','2018-01-29 13:14:31'),('1.2.0.0.298','2018-01-29 13:14:32'),('1.2.0.0.299','2018-01-29 13:14:33'),('1.2.0.0.3','2015-08-13 14:45:48'),('1.2.0.0.30','2015-08-13 14:45:49'),('1.2.0.0.300','2018-02-19 12:19:25'),('1.2.0.0.301','2018-08-08 12:34:14'),('1.2.0.0.302','2018-08-08 12:34:15'),('1.2.0.0.303','2019-03-07 09:55:17'),('1.2.0.0.304','2019-03-07 09:55:18'),('1.2.0.0.305','2019-03-07 09:55:18'),('1.2.0.0.306','2019-03-07 09:55:19'),('1.2.0.0.307','2019-03-07 09:55:19'),('1.2.0.0.308','2019-03-07 09:55:20'),('1.2.0.0.309','2019-03-07 09:55:20'),('1.2.0.0.31','2015-08-13 14:45:49'),('1.2.0.0.310','2019-03-07 09:55:20'),('1.2.0.0.311','2019-03-07 09:55:21'),('1.2.0.0.312','2019-12-03 06:58:53'),('1.2.0.0.313','2020-02-13 11:43:30'),('1.2.0.0.314','2020-02-13 11:43:31'),('1.2.0.0.315','2020-02-13 11:43:31'),('1.2.0.0.316','2020-02-13 11:43:32'),('1.2.0.0.317','2020-02-13 11:43:33'),('1.2.0.0.318','2020-02-13 11:43:33'),('1.2.0.0.319','2020-02-13 11:43:34'),('1.2.0.0.32','2015-08-13 14:45:49'),('1.2.0.0.320','2020-02-13 11:43:35'),('1.2.0.0.321','2020-02-13 11:43:36'),('1.2.0.0.322','2020-02-13 11:43:36'),('1.2.0.0.324','2020-02-13 11:43:37'),('1.2.0.0.325','2020-02-13 11:43:37'),('1.2.0.0.326','2020-02-13 11:43:38'),('1.2.0.0.327','2020-02-13 11:43:39'),('1.2.0.0.328','2020-02-13 11:43:39'),('1.2.0.0.329','2020-02-13 11:43:40'),('1.2.0.0.33','2015-08-13 14:45:49'),('1.2.0.0.34','2015-08-13 14:45:49'),('1.2.0.0.35','2015-08-13 14:45:49'),('1.2.0.0.36','2015-08-13 14:45:49'),('1.2.0.0.37','2015-08-13 14:45:49'),('1.2.0.0.38','2015-08-13 14:45:49'),('1.2.0.0.39','2015-08-13 14:45:49'),('1.2.0.0.4','2015-08-13 14:45:48'),('1.2.0.0.40','2015-08-13 14:45:49'),('1.2.0.0.41','2015-08-13 14:45:49'),('1.2.0.0.42','2015-08-13 14:45:49'),('1.2.0.0.43','2015-08-13 14:45:49'),('1.2.0.0.44','2015-08-13 14:45:49'),('1.2.0.0.45','2015-08-13 14:45:50'),('1.2.0.0.46','2015-08-13 14:45:50'),('1.2.0.0.47','2015-08-13 14:45:50'),('1.2.0.0.48','2015-08-13 14:45:50'),('1.2.0.0.49','2015-08-13 14:45:50'),('1.2.0.0.5','2015-08-13 14:45:48'),('1.2.0.0.50','2015-08-13 14:45:50'),('1.2.0.0.51','2015-08-13 14:45:50'),('1.2.0.0.52','2015-08-13 14:45:50'),('1.2.0.0.53','2015-08-13 14:45:50'),('1.2.0.0.54','2015-08-13 14:45:50'),('1.2.0.0.55','2015-08-13 14:45:50'),('1.2.0.0.56','2015-08-13 14:45:50'),('1.2.0.0.57','2015-08-13 14:45:50'),('1.2.0.0.58','2015-08-13 14:45:50'),('1.2.0.0.59','2015-08-13 14:45:50'),('1.2.0.0.6','2015-08-13 14:45:48'),('1.2.0.0.60','2015-08-13 14:45:50'),('1.2.0.0.61','2015-08-13 14:45:50'),('1.2.0.0.62','2015-08-13 14:45:50'),('1.2.0.0.63','2015-12-20 09:40:30'),('1.2.0.0.64','2015-12-20 09:40:30'),('1.2.0.0.65','2015-12-20 09:40:30'),('1.2.0.0.66','2015-12-20 09:40:31'),('1.2.0.0.67','2015-12-20 09:40:31'),('1.2.0.0.68','2015-12-20 09:40:31'),('1.2.0.0.69','2015-12-20 09:40:31'),('1.2.0.0.7','2015-08-13 14:45:48'),('1.2.0.0.70','2015-12-20 09:40:31'),('1.2.0.0.71','2015-12-20 09:40:32'),('1.2.0.0.72','2015-12-20 09:40:32'),('1.2.0.0.73','2015-12-20 09:40:32'),('1.2.0.0.74','2015-12-20 09:40:32'),('1.2.0.0.75','2015-12-20 09:40:32'),('1.2.0.0.76','2015-12-20 09:40:32'),('1.2.0.0.77','2015-12-20 09:40:32'),('1.2.0.0.78','2015-12-20 09:40:32'),('1.2.0.0.79','2015-12-20 09:40:32'),('1.2.0.0.8','2015-08-13 14:45:48'),('1.2.0.0.80','2015-12-20 09:40:33'),('1.2.0.0.81','2015-12-20 09:40:33'),('1.2.0.0.82','2015-12-20 09:40:33'),('1.2.0.0.83','2015-12-20 09:40:33'),('1.2.0.0.84','2015-12-20 09:40:33'),('1.2.0.0.85','2015-12-20 09:40:33'),('1.2.0.0.86','2015-12-20 09:40:33'),('1.2.0.0.87','2015-12-20 09:40:33'),('1.2.0.0.88','2015-12-20 09:40:34'),('1.2.0.0.89','2015-12-20 09:40:34'),('1.2.0.0.9','2015-08-13 14:45:48'),('1.2.0.0.90','2016-03-03 16:10:55'),('1.2.0.0.91','2016-03-03 16:10:55'),('1.2.0.0.92','2016-03-03 16:10:55'),('1.2.0.0.93','2016-05-02 07:26:17'),('1.2.0.0.94','2016-05-02 07:26:17'),('1.2.0.0.95','2016-05-02 07:26:18'),('1.2.0.0.96','2016-05-02 07:26:18'),('1.2.0.0.97','2016-05-02 07:26:18'),('1.2.0.0.98','2016-05-02 07:26:18'),('1.2.0.0.99','2016-05-02 07:26:18'),('1.3.0.0.100','2020-04-27 12:43:54'),('1.3.0.0.101','2020-04-27 12:43:54'),('1.3.0.0.102','2020-04-27 12:43:55'),('1.3.0.0.103','2020-04-27 12:43:55'),('1.3.0.1.100','2021-10-21 13:15:25'),('1.3.0.1.101','2021-10-21 13:15:27'),('1.3.0.1.102','2021-10-21 13:15:29'),('1.3.0.1.103','2021-10-21 13:15:30'),('1.4.0.0.100','2021-10-21 13:15:32'),('1.4.0.0.101','2021-10-21 13:15:33'),('1.4.0.0.102','2021-10-21 13:15:36'),('1.4.0.0.103','2021-10-21 13:15:36'),('1.4.0.0.104','2021-10-21 13:15:37'),('1.4.0.0.105','2021-10-21 13:15:39'),('1.4.0.0.106','2021-10-21 13:15:40'),('1.4.0.0.107','2021-10-21 13:15:41'),('1.4.0.0.108','2021-10-21 13:15:43'),('1.5.0.0.100','2021-10-21 13:15:45'),('1.5.0.0.101','2021-10-21 13:15:47'),('1.5.0.0.102','2021-10-21 13:15:48'),('3.0.0.1.1','2020-08-03 13:26:17'),('3.0.0.1.2','2020-08-03 13:27:57');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_files`
--

DROP TABLE IF EXISTS `web_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_files` (
  `filename` varchar(255) NOT NULL DEFAULT '',
  `tojid` varchar(255) NOT NULL DEFAULT '',
  `addeddate` varchar(255) DEFAULT NULL,
  `refcount` int DEFAULT NULL,
  `maindomain` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`filename`,`tojid`,`maindomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_files`
--

LOCK TABLES `web_files` WRITE;
/*!40000 ALTER TABLE `web_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webclient_allowed_subnets`
--

DROP TABLE IF EXISTS `webclient_allowed_subnets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webclient_allowed_subnets` (
  `dcname` varchar(255) NOT NULL,
  `subnet` varchar(255) NOT NULL,
  PRIMARY KEY (`dcname`,`subnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webclient_allowed_subnets`
--

LOCK TABLES `webclient_allowed_subnets` WRITE;
/*!40000 ALTER TABLE `webclient_allowed_subnets` DISABLE KEYS */;
INSERT INTO `webclient_allowed_subnets` VALUES ('dc','0.0.0.0');
/*!40000 ALTER TABLE `webclient_allowed_subnets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `nuboLogs`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nuboLogs` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `nuboLogs`;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Logs` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Time` datetime DEFAULT NULL,
  `Facility` smallint DEFAULT NULL,
  `User` varchar(256) DEFAULT NULL,
  `LogLevel` smallint DEFAULT NULL,
  `DataCenter` varchar(60) DEFAULT NULL,
  `ServerName` varchar(60) DEFAULT NULL,
  `Message` text,
  `LoggerID` varchar(60) DEFAULT NULL,
  `Device` text,
  `PlatfromID` int DEFAULT NULL,
  `MessageType` varchar(64) DEFAULT NULL,
  `PID` int DEFAULT NULL,
  `AppID` int DEFAULT NULL,
  `ComponentType` text,
  PRIMARY KEY (`ID`),
  KEY `message_type_idx` (`MessageType`),
  KEY `time_idx` (`Time`),
  KEY `user_idx` (`User`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-23  6:11:11
