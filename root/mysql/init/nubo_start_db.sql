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
INSERT INTO `activations` VALUES ('4c4b456e0fdb7b2610c1ab79e6bd8051c2a63bd561374507b3f305e2de0cd2ce4aba8c7f729fa02ed34ee723ca55cc14','57319db6-eb7b-41f8-86d4-a30fa4b82f61','Desktop','user@doc.com','3ef93f7b543cd3fb34df859aa16d1574bbf5545ff0adc6d39af907ee9d80f850e258c1dc5961375eccbaffe462521004',1,'User','','1','none',0,1,'2021-10-22','2021-10-24',0,'2021-10-22','dc','doc.com','false',NULL,'','Firefox',0,'',''),('9ffe5b34c19d5772125dc4c870a51434a673a0ad16ef1e2429b9c6ae205bc21b803e74e23a078657378d93fd8212b32e','2ca0f06f-fc60-4f08-b573-ad89817f9075','NuboAdmin','admin@doc.com','68946aedc1e1688cb017565b8849149cb61440afc44dbac7103a0e54f563e12acbb4fcc14fc949d1a3e3ad3547a1308d',0,NULL,'NuboAdmin',NULL,'',0,201,'2021-10-21','2021-10-23',0,NULL,NULL,'doc.com','false',NULL,'','Chrome',0,'',''),('a1f94bca3a3c4b0f01d2426079a70077094cf49911fafc33d2452ead1569a1519d737829660d1ae9b757cbe18b1f863a','f543c619-471f-40fa-94dc-c9128ead91e8','Desktop','user2@doc.com','bfa8b6d4ac94b74a35c9566bd01c629949e39d3e684005e5abe5dfa36138c1abf663a1ae636d564dad5ebb1099a33c4a',1,'User','NA','2','none',0,1,'2021-10-22','2021-10-24',0,'2021-10-22','dc','doc.com','false',NULL,'','Chrome',0,'',''),('b47129433114b43c69e156d3e98a52aa7903d287ef3e2ab1d42257f93a4145aa91a9c85a1f080367b4f735c31935e1f9','37329245-6e5d-41be-a0f8-ebba55d93410','NuboAdmin','admin@doc.com','394d1962fdda6c5f7ee201079c810ad66b863a355de71c381b7f3db8d48739775e8853ed9020245cbb4157cb20833bed',0,NULL,'NuboAdmin',NULL,'',0,201,'2021-10-22','2021-10-24',0,NULL,NULL,'doc.com','false',NULL,'','Firefox',0,'',''),('e55312a92a278f081cac28025a27b2fcbd46a1fac4b5ef09a75b522126aac6e2cbea690559695d85b7bc6e0d9094756a','2ca0f06f-fc60-4f08-b573-ad89817f9075','NuboAdmin','admin@doc.com','33a3ddaabf89ab123fd9f40b73ed8c53b3c9d6f5d324247d74804cd75c86e1f360a0af2977d693a91c462a60e03ae672',0,NULL,'NuboAdmin',NULL,'',0,2,'2021-10-21','2021-10-23',0,NULL,NULL,'doc.com','false',NULL,'','Chrome',0,'','');
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
INSERT INTO `admins` VALUES ('admin@doc.com','doc.com','{\"@/\":\"rw\"}','2021-10-21 14:02:40','2021-10-21 14:09:22');
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
INSERT INTO `allowed_front_end_servers` VALUES ('dc','user','password');
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
INSERT INTO `apks` VALUES ('com.android.calendar',100,'Nubo-7.0.7','Calendar',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:32'),('com.android.camera',3,'Nubo-3.0','Camera',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:33'),('com.android.contacts',100001,'Nubo-3.0','Contacts',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:32'),('com.android.dialer',30000,'3.00.00','Phone',1,1,'2021-10-21 14:02:35','2021-10-21 14:02:35'),('com.android.email',550008,'Nubo-3.0.8','Email',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:33'),('com.nubo.appstore',1008002,'3.0.0.10','Store',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:34'),('com.nubo.controlpanel',23,'3.0.0.12','Control Panel',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:35'),('com.nubo.filemanager',49,'2.3.1.2','Files',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:33'),('com.nubo.gallery',37,'v1.1.1','Gallery',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:34'),('com.nubo.launcher.nubo',30913,'nubo-3.0.2','Launcher',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:34'),('com.nubo.notes',13,'3.1.6','Notes',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:34'),('com.nubo.sip',13,'1.0.04','Voice Call',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:35'),('org.pf.messages',79,'3.0.03','Messages',1,1,'2020-05-04 13:13:36','2021-10-21 14:02:35');
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
INSERT INTO `apps` VALUES ('com.android.calendar','apk','','Calendar','','Time management','Tools',NULL,'doc.com','0',0,'','Nubo-7.0.7','100'),('com.android.calendar','apk','','Calendar','','Time management','Tools',NULL,'nubo.com','0',0,'','7.0','24'),('com.android.camera','apk','','Camera','Use this app to take photos and videos you wish to keep private, and not displayed on your physical device. All photos and videos are securely kept in the virtual remote device.','Secure Camera','Photography',NULL,'doc.com','0',0,'','Nubo-3.0','3'),('com.android.camera','apk','','Camera','Use this app to take photos and videos you wish to keep private, and not displayed on your physical device. All photos and videos are securely kept in the virtual remote device.','Secure Camera','Photography',NULL,'nubo.com','0',0,'','Nubo-3.0','3'),('com.android.contacts','apk','','Contacts','Use this app to securely manage your private contact list. The address book is securely kept in the virtual remote device.','Secure Address Book','Communication',NULL,'doc.com','0',0,'','Nubo-3.0','100001'),('com.android.contacts','apk','','Contacts','Use this app to securely manage your private contact list. The address book is securely kept in the virtual remote device.','Secure Address Book','Communication',NULL,'nubo.com','0',0,'','Nubo-3.0','100001'),('com.android.dialer','apk','','Phone','Use this app to securely make voice calls without leaving a trace on your physical device. The call history is securely kept in the virtual remote device, and the voice communication is encrypted.','Secure Voice Calls','Communication',NULL,'doc.com','0',0,'','3.00.00','30000'),('com.android.email','apk','','Email','','Secure Email','Communication',NULL,'doc.com','0',0,'','Nubo-3.0.8','550008'),('com.android.email','apk','','Email','','Secure Email','Communication',NULL,'nubo.com','0',0,'','Nubo-7.0.2','500064'),('com.nubo.appstore','apk','','Store','This app allows you to install apps that have been hand-picked and specifically approved as secure and private.','Secure App Store','Productivity,Tools',NULL,'doc.com','0',0,'','3.0.0.10','1008002'),('com.nubo.appstore','apk','','Store','This app allows you to install apps that have been hand-picked and specifically approved as secure and private.','Secure App Store','Productivity,Tools',NULL,'nubo.com','0',0,'','1.8-alpha1-7-g12e08e1','1008001'),('com.nubo.controlpanel','apk','','Control Panel','Use this app to manage your Nubo environment. Manage profiles, groups, apps, and various settings.',' Administrator Console','Tools',NULL,'doc.com','0',0,'','3.0.0.12','23'),('com.nubo.controlpanel','apk','','Control Panel','Use this app to manage your Nubo environment. Manage profiles, groups, apps, and various settings.',' Administrator Console','Tools',NULL,'nubo.com','0',0,'','3.0.0.11','22'),('com.nubo.filemanager','apk','','Files','Use this app to access and open your private files. The files are securely kept in the virtual remote device, and not on the physical device itself. When opening a file, the file is opened remotely.','Secure File Manager','Productivity,Tools',NULL,'doc.com','0',0,'','2.3.1.2','49'),('com.nubo.filemanager','apk','','Files','Use this app to access and open your private files. The files are securely kept in the virtual remote device, and not on the physical device itself. When opening a file, the file is opened remotely.','Secure File Manager','Productivity,Tools',NULL,'nubo.com','0',0,'','2.3.1.1','48'),('com.nubo.gallery','apk','','Gallery','Use this app to access and view your private photos and videos. All media files added/saved can be securely viewed using the Gallery app.','Secure Photo Gallery','Photography, Gallery',NULL,'doc.com','0',0,'','v1.1.1','37'),('com.nubo.gallery','apk','','Gallery','Use this app to access and view your private photos and videos. All media files added/saved can be securely viewed using the Gallery app.','Secure Photo Gallery','Photography, Gallery',NULL,'nubo.com','0',0,'','v1.1.1','37'),('com.nubo.launcher.nubo','apk','','Launcher','','Launcher','Tools',NULL,'doc.com','0',0,'','nubo-3.0.2','30913'),('com.nubo.launcher.nubo','apk','','Launcher','','Launcher','Tools',NULL,'nubo.com','0',0,'','nubo-3.0.1','30912'),('com.nubo.notes','apk','','Notes','Use this app to create short text notes you wish to keep private, and not saved on your physical device.','Secure Note-Taking','Productivity',NULL,'doc.com','0',0,'','3.1.6','13'),('com.nubo.notes','apk','','Notes','Use this app to create short text notes you wish to keep private, and not saved on your physical device.','Secure Note-Taking','Productivity',NULL,'nubo.com','0',0,'','3.1.6','13'),('com.nubo.sip','apk','','Voice Call','Use this app to securely make voice calls without leaving a trace on your physical device. The call history is securely kept in the virtual remote device, and the voice communication is encrypted.','Secure Voice Calls','Communication',NULL,'doc.com','0',0,'','1.0.04','13'),('com.nubo.sip','apk','','Voice Call','Use this app to securely make voice calls without leaving a trace on your physical device. The call history is securely kept in the virtual remote device, and the voice communication is encrypted.','Secure Voice Calls','Communication',NULL,'nubo.com','0',0,'','1.0.01','10'),('firefox','deb','','Firefox','Safe and easy web browser from Mozilla',NULL,NULL,NULL,'doc.com','0',0,'','93.0+build1-0ubuntu0.20.04.1','1'),('org.pf.messages','apk','','Messages','Use this app to securely send and receive worry-free text messages. The chat history is securely kept in the virtual remote device, and not on the physical device itself.','Secure Messaging App','Communication',NULL,'doc.com','0',0,'','3.0.03','79'),('org.pf.messages','apk','','Messages','Use this app to securely send and receive worry-free text messages. The chat history is securely kept in the virtual remote device, and not on the physical device itself.','Secure Messaging App','Communication',NULL,'nubo.com','0',0,'','3.0.02','78');
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
INSERT INTO `events_logs` VALUES (1,20,'admin@doc.com','doc.com','app:com.android.calendar email:admin@doc.com','2021-10-21 14:02:37','warn'),(2,20,'admin@doc.com','doc.com','app:com.android.camera email:admin@doc.com','2021-10-21 14:02:37','warn'),(3,20,'admin@doc.com','doc.com','app:com.android.contacts email:admin@doc.com','2021-10-21 14:02:37','warn'),(4,20,'admin@doc.com','doc.com','app:com.android.dialer email:admin@doc.com','2021-10-21 14:02:38','warn'),(5,20,'admin@doc.com','doc.com','app:com.android.email email:admin@doc.com','2021-10-21 14:02:38','warn'),(6,20,'admin@doc.com','doc.com','app:com.nubo.appstore email:admin@doc.com','2021-10-21 14:02:38','warn'),(7,20,'admin@doc.com','doc.com','app:com.nubo.filemanager email:admin@doc.com','2021-10-21 14:02:38','warn'),(8,20,'admin@doc.com','doc.com','app:com.nubo.gallery email:admin@doc.com','2021-10-21 14:02:39','warn'),(9,20,'admin@doc.com','doc.com','app:com.nubo.launcher.nubo email:admin@doc.com','2021-10-21 14:02:39','warn'),(10,20,'admin@doc.com','doc.com','app:com.nubo.notes email:admin@doc.com','2021-10-21 14:02:39','warn'),(11,20,'admin@doc.com','doc.com','app:com.nubo.sip email:admin@doc.com','2021-10-21 14:02:39','warn'),(12,20,'admin@doc.com','doc.com','app:org.pf.messages email:admin@doc.com','2021-10-21 14:02:40','warn'),(13,20,'admin@doc.com','doc.com','app:com.nubo.controlpanel email:admin@doc.com','2021-10-21 14:02:40','warn'),(14,20,'admin@doc.com','doc.com','app:com.nubo.controlpanel email:admin@doc.com','2021-10-21 14:09:22','warn'),(15,20,'user@doc.com','doc.com','app:com.android.calendar email:user@doc.com','2021-10-22 10:08:40','warn'),(16,20,'user@doc.com','doc.com','app:com.android.camera email:user@doc.com','2021-10-22 10:08:41','warn'),(17,20,'user@doc.com','doc.com','app:com.android.contacts email:user@doc.com','2021-10-22 10:08:41','warn'),(18,20,'user@doc.com','doc.com','app:com.android.dialer email:user@doc.com','2021-10-22 10:08:42','warn'),(19,20,'user@doc.com','doc.com','app:com.android.email email:user@doc.com','2021-10-22 10:08:42','warn'),(20,20,'user@doc.com','doc.com','app:com.nubo.appstore email:user@doc.com','2021-10-22 10:08:43','warn'),(21,20,'user@doc.com','doc.com','app:com.nubo.filemanager email:user@doc.com','2021-10-22 10:08:43','warn'),(22,20,'user@doc.com','doc.com','app:com.nubo.gallery email:user@doc.com','2021-10-22 10:08:43','warn'),(23,20,'user@doc.com','doc.com','app:com.nubo.launcher.nubo email:user@doc.com','2021-10-22 10:08:43','warn'),(24,20,'user@doc.com','doc.com','app:com.nubo.notes email:user@doc.com','2021-10-22 10:08:44','warn'),(25,20,'user@doc.com','doc.com','app:com.nubo.sip email:user@doc.com','2021-10-22 10:08:44','warn'),(26,20,'user@doc.com','doc.com','app:org.pf.messages email:user@doc.com','2021-10-22 10:08:44','warn'),(27,1,'user@doc.com','doc.com','email:user@doc.com firstName:User lastName:1 regid:none creationData:Fri Oct 22 2021 10:13:06 GMT+0000 (GMT) deviceType:Desktop activationKey:4c4b456e0fdb7b2610c1ab79e6bd8051c2a63bd561374507b3f305e2de0cd2ce4aba8c7f729fa02ed34ee723ca55cc14','2021-10-22 10:13:06','info'),(28,24,'admin@doc.com','doc.com','Approved pending activation by admin for user user@doc.comand device 57319db6-eb7b-41f8-86d4-a30fa4b82f61','2021-10-22 10:13:12','info'),(29,20,'user@doc.com','doc.com','app:firefox email:user@doc.com','2021-10-22 10:16:11','warn'),(30,1,'user2@doc.com','doc.com','email:user2@doc.com firstName:User lastName:2 regid:none creationData:Fri Oct 22 2021 10:23:42 GMT+0000 (GMT) deviceType:Desktop activationKey:a1f94bca3a3c4b0f01d2426079a70077094cf49911fafc33d2452ead1569a1519d737829660d1ae9b757cbe18b1f863a','2021-10-22 10:23:42','info'),(31,24,'admin@doc.com','doc.com','Approved pending activation by admin for user user2@doc.comand device f543c619-471f-40fa-94dc-c9128ead91e8','2021-10-22 10:23:53','info'),(32,20,'user2@doc.com','doc.com','app:com.android.calendar email:user2@doc.com','2021-10-22 10:23:54','warn'),(33,20,'user2@doc.com','doc.com','app:com.android.camera email:user2@doc.com','2021-10-22 10:23:54','warn'),(34,20,'user2@doc.com','doc.com','app:com.android.contacts email:user2@doc.com','2021-10-22 10:23:54','warn'),(35,20,'user2@doc.com','doc.com','app:com.android.dialer email:user2@doc.com','2021-10-22 10:23:55','warn'),(36,20,'user2@doc.com','doc.com','app:com.android.email email:user2@doc.com','2021-10-22 10:23:55','warn'),(37,20,'user2@doc.com','doc.com','app:com.nubo.appstore email:user2@doc.com','2021-10-22 10:23:56','warn'),(38,20,'user2@doc.com','doc.com','app:com.nubo.filemanager email:user2@doc.com','2021-10-22 10:23:56','warn'),(39,20,'user2@doc.com','doc.com','app:com.nubo.gallery email:user2@doc.com','2021-10-22 10:23:56','warn'),(40,20,'user2@doc.com','doc.com','app:com.nubo.launcher.nubo email:user2@doc.com','2021-10-22 10:23:57','warn'),(41,20,'user2@doc.com','doc.com','app:com.nubo.notes email:user2@doc.com','2021-10-22 10:23:57','warn'),(42,20,'user2@doc.com','doc.com','app:com.nubo.sip email:user2@doc.com','2021-10-22 10:23:57','warn'),(43,20,'user2@doc.com','doc.com','app:org.pf.messages email:user2@doc.com','2021-10-22 10:23:57','warn'),(44,20,'user2@doc.com','doc.com','app:firefox email:user2@doc.com','2021-10-22 10:24:40','warn');
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
INSERT INTO `group_apps` VALUES ('All','com.android.calendar','doc.com','',1),('All','com.android.camera','doc.com','',1),('All','com.android.contacts','doc.com','',1),('All','com.android.dialer','doc.com','',1),('All','com.android.email','doc.com','',1),('All','com.nubo.appstore','doc.com','',1),('All','com.nubo.filemanager','doc.com','',1),('All','com.nubo.gallery','doc.com','',1),('All','com.nubo.launcher.nubo','doc.com','',1),('All','com.nubo.notes','doc.com','',1),('All','com.nubo.sip','doc.com','',1),('All','org.pf.messages','doc.com','',1);
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
INSERT INTO `groups` VALUES ('All','doc.com','',NULL,NULL,NULL,NULL),('All','dock.com','',NULL,NULL,NULL,NULL),('All','docke.com','',NULL,NULL,NULL,NULL),('All','docker.com','',NULL,NULL,NULL,NULL),('All','nubodocker.com','',NULL,NULL,NULL,NULL);
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
INSERT INTO `jobs` VALUES ('domain','addLastSessions',0,'*/1 * * * *','Etc/UTC',1,'2','dc',0),('domain','copyAppUsage',0,'45 0 * * *','Etc/UTC',1,'1','dc',0),('domain','databaseMaint',0,'35 0 * * *','Etc/UTC',1,'5','dc',0),('domain','Sync_images',0,'*/5 * * * *','Etc/UTC',1,'4','dc',0);
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
INSERT INTO `last_sessions` VALUES (1,1,'2021-10-22 10:20:00','doc.com'),(2,1,'2021-10-22 10:25:00','doc.com'),(3,1,'2021-10-22 10:30:00','doc.com'),(4,1,'2021-10-22 10:35:00','doc.com'),(5,1,'2021-10-22 10:40:00','doc.com'),(6,1,'2021-10-22 10:45:00','doc.com'),(7,1,'2021-10-22 10:50:00','doc.com'),(8,1,'2021-10-22 10:55:00','doc.com'),(9,1,'2021-10-22 11:00:00','doc.com'),(10,1,'2021-10-22 11:05:00','doc.com'),(11,1,'2021-10-22 11:10:00','doc.com'),(12,1,'2021-10-22 11:15:00','doc.com'),(13,1,'2021-10-22 11:20:00','doc.com'),(14,1,'2021-10-22 11:25:00','doc.com'),(15,1,'2021-10-22 11:30:00','doc.com'),(16,1,'2021-10-22 11:35:00','doc.com'),(17,1,'2021-10-22 11:40:00','doc.com'),(18,1,'2021-10-22 11:45:00','doc.com'),(19,1,'2021-10-22 11:50:00','doc.com'),(20,1,'2021-10-22 11:55:00','doc.com'),(21,1,'2021-10-22 12:00:00','doc.com'),(22,1,'2021-10-22 12:05:00','doc.com'),(23,1,'2021-10-22 12:10:00','doc.com'),(24,1,'2021-10-22 12:15:00','doc.com'),(25,1,'2021-10-22 12:20:00','doc.com'),(26,1,'2021-10-22 12:25:00','doc.com'),(27,1,'2021-10-22 12:30:00','doc.com'),(28,1,'2021-10-22 12:35:00','doc.com'),(29,1,'2021-10-22 12:40:00','doc.com'),(30,1,'2021-10-22 12:45:00','doc.com'),(31,1,'2021-10-22 12:50:00','doc.com'),(32,1,'2021-10-22 12:55:00','doc.com'),(33,1,'2021-10-22 13:00:00','doc.com'),(34,1,'2021-10-22 13:05:00','doc.com'),(35,1,'2021-10-22 13:10:00','doc.com'),(36,1,'2021-10-22 13:15:00','doc.com'),(37,1,'2021-10-22 13:20:00','doc.com'),(38,1,'2021-10-22 13:25:00','doc.com'),(39,1,'2021-10-22 13:30:00','doc.com'),(40,1,'2021-10-22 13:35:00','doc.com'),(41,1,'2021-10-22 13:40:00','doc.com'),(42,1,'2021-10-22 13:45:00','doc.com'),(43,1,'2021-10-22 13:50:00','doc.com'),(44,1,'2021-10-22 13:55:00','doc.com'),(45,1,'2021-10-22 14:00:00','doc.com'),(46,1,'2021-10-22 14:05:00','doc.com'),(47,1,'2021-10-22 14:10:00','doc.com'),(48,1,'2021-10-22 14:15:00','doc.com'),(49,1,'2021-10-22 14:20:00','doc.com'),(50,1,'2021-10-22 14:25:00','doc.com'),(51,1,'2021-10-22 14:30:00','doc.com'),(52,1,'2021-10-22 14:35:00','doc.com'),(53,1,'2021-10-22 14:40:00','doc.com'),(54,1,'2021-10-22 14:45:00','doc.com'),(55,1,'2021-10-22 14:50:00','doc.com'),(56,1,'2021-10-22 14:55:00','doc.com'),(57,1,'2021-10-22 15:00:00','doc.com'),(58,1,'2021-10-22 15:05:00','doc.com'),(59,1,'2021-10-22 15:10:00','doc.com'),(60,1,'2021-10-22 15:15:00','doc.com'),(61,1,'2021-10-22 15:20:00','doc.com'),(62,1,'2021-10-22 15:25:00','doc.com'),(63,1,'2021-10-22 15:30:00','doc.com'),(64,1,'2021-10-22 15:35:00','doc.com'),(65,1,'2021-10-22 15:40:00','doc.com'),(66,1,'2021-10-22 15:45:00','doc.com'),(67,1,'2021-10-22 15:50:00','doc.com'),(68,1,'2021-10-22 15:55:00','doc.com'),(69,1,'2021-10-22 16:00:00','doc.com'),(70,1,'2021-10-22 16:05:00','doc.com'),(71,1,'2021-10-22 16:10:00','doc.com'),(72,1,'2021-10-22 16:15:00','doc.com'),(73,1,'2021-10-22 16:20:00','doc.com'),(74,1,'2021-10-22 16:25:00','doc.com'),(75,1,'2021-10-22 16:30:00','doc.com'),(76,1,'2021-10-22 16:35:00','doc.com'),(77,1,'2021-10-22 16:40:00','doc.com'),(78,1,'2021-10-22 16:45:00','doc.com'),(79,1,'2021-10-22 16:50:00','doc.com'),(80,1,'2021-10-22 16:55:00','doc.com'),(81,1,'2021-10-22 17:00:00','doc.com'),(82,1,'2021-10-22 17:05:00','doc.com'),(83,1,'2021-10-22 17:10:00','doc.com'),(84,1,'2021-10-22 17:15:00','doc.com'),(85,1,'2021-10-22 17:20:00','doc.com'),(86,1,'2021-10-22 17:25:00','doc.com'),(87,1,'2021-10-22 17:30:00','doc.com'),(88,1,'2021-10-22 17:35:00','doc.com'),(89,2,'2021-10-22 17:40:00','doc.com'),(90,2,'2021-10-22 17:45:00','doc.com'),(91,1,'2021-10-22 17:55:00','doc.com');
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
INSERT INTO `orgs` VALUES ('doc.com','0','','1','','','open',0,NULL,NULL,0,6,0,1,3,0,NULL,NULL,0,'UTF-8',0,0,1,0,'','','',NULL),('dock.com','0','','1','','','open',0,NULL,NULL,0,6,0,1,3,0,NULL,NULL,0,'UTF-8',0,0,1,0,'','','',NULL),('docke.com','0','','1','','','open',0,NULL,NULL,0,6,0,1,3,0,NULL,NULL,0,'UTF-8',0,0,1,0,'','','',NULL),('docker.com','0','','1','','','open',0,NULL,NULL,0,6,0,1,3,0,NULL,NULL,0,'UTF-8',0,0,1,0,'','','',NULL),('nubodocker.com','0','','1','','','open',0,NULL,NULL,0,6,0,1,3,0,NULL,NULL,0,'UTF-8',0,0,1,0,'','','',NULL);
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
INSERT INTO `packages_lists` VALUES (1000,'android',NULL,'2020-05-04 12:31:47'),(1000,'com.android.inputdevices',NULL,'2020-05-04 12:31:48'),(1000,'com.android.keychain',NULL,'2020-05-04 12:31:51'),(1000,'com.android.location.fused',NULL,'2020-05-04 12:31:48'),(1000,'com.android.providers.settings',NULL,'2020-05-04 12:31:49'),(1000,'com.android.server.telecom',NULL,'2020-05-04 12:31:50'),(1000,'com.android.settings',NULL,'2020-05-04 12:31:49'),(1000,'com.android.wallpaperbackup',NULL,'2020-05-04 12:31:52'),(1000,'com.nubo.nubosettings',NULL,'2020-05-04 12:31:52'),(1001,'com.android.mms.service',NULL,'2020-05-04 12:31:48'),(1001,'com.android.phone',NULL,'2020-05-04 12:31:50'),(1001,'com.android.providers.telephony',NULL,'2020-05-04 12:31:50'),(1002,'com.android.bluetooth',NULL,'2020-05-04 12:31:50'),(2000,'com.android.shell',NULL,'2020-05-04 12:31:49'),(10000,'com.android.backupconfirm',NULL,'2020-05-04 12:31:47'),(10001,'com.android.providers.blockednumber',NULL,'2020-05-04 12:31:47'),(10001,'com.android.providers.contacts',NULL,'2020-05-04 12:31:47'),(10001,'com.android.providers.userdictionary',NULL,'2020-05-04 12:31:52'),(10001,'shared:android.uid.shared',NULL,'2020-05-04 12:31:47'),(10002,'com.android.providers.calendar',NULL,'2020-05-04 12:31:47'),(10002,'shared:android.uid.calendar',NULL,'2020-05-04 12:31:47'),(10003,'com.android.cts.priv.ctsshim',NULL,'2020-05-04 12:31:47'),(10004,'com.android.defcontainer',NULL,'2020-05-04 12:31:47'),(10005,'com.android.dialer',NULL,'2020-05-04 12:31:47'),(10006,'com.android.documentsui',NULL,'2020-05-04 12:31:47'),(10007,'com.android.mtp',NULL,'2020-05-04 12:31:48'),(10007,'com.android.providers.downloads',NULL,'2020-05-04 12:31:48'),(10007,'com.android.providers.downloads.ui',NULL,'2020-05-04 12:31:51'),(10007,'com.android.providers.media',NULL,'2020-05-04 12:31:48'),(10007,'shared:android.media',NULL,'2020-05-04 12:31:48'),(10008,'android.ext.services',NULL,'2020-05-04 12:31:48'),(10009,'com.android.externalstorage',NULL,'2020-05-04 12:31:48'),(10010,'com.android.managedprovisioning',NULL,'2020-05-04 12:31:48'),(10011,'com.android.musicfx',NULL,'2020-05-04 12:31:48'),(10012,'com.android.onetimeinitializer',NULL,'2020-05-04 12:31:48'),(10013,'com.android.packageinstaller',NULL,'2020-05-04 12:31:48'),(10014,'com.android.provision',NULL,'2020-05-04 12:31:49'),(10015,'com.android.proxyhandler',NULL,'2020-05-04 12:31:49'),(10016,'com.android.sharedstoragebackup',NULL,'2020-05-04 12:31:49'),(10017,'com.android.statementservice',NULL,'2020-05-04 12:31:49'),(10018,'com.android.systemui',NULL,'2020-05-04 12:31:49'),(10018,'shared:android.uid.systemui',NULL,'2020-05-04 12:31:49'),(10019,'com.android.vpndialogs',NULL,'2020-05-04 12:31:50'),(10020,'com.android.wallpapercropper',NULL,'2020-05-04 12:31:50'),(10021,'com.android.dreams.basic',NULL,'2020-05-04 12:31:50'),(10022,'com.nubo.blackscreenapp',NULL,'2020-05-04 12:31:50'),(10023,'com.android.bluetoothmidiservice',NULL,'2020-05-04 12:31:50'),(10024,'com.android.bookmarkprovider',NULL,'2020-05-04 12:31:50'),(10025,'com.android.captiveportallogin',NULL,'2020-05-04 12:31:50'),(10026,'com.android.certinstaller',NULL,'2020-05-04 12:31:50'),(10027,'com.android.cts.ctsshim',NULL,'2020-05-04 12:31:51'),(10028,'com.android.deskclock',NULL,'2020-05-04 12:31:51'),(10029,'com.android.egg',NULL,'2020-05-04 12:31:51'),(10030,'com.android.exchange',NULL,'2020-05-04 12:31:51'),(10031,'android.ext.shared',NULL,'2020-05-04 12:31:51'),(10032,'com.android.htmlviewer',NULL,'2020-05-04 12:31:51'),(10033,'com.android.inputmethod.latin',NULL,'2020-05-04 12:31:51'),(10034,'com.android.music',NULL,'2020-05-04 12:31:51'),(10035,'com.nubo.contacts.sync',NULL,'2020-05-04 12:31:51'),(10036,'com.nubo.launcher',NULL,'2020-05-04 12:31:52'),(10037,'com.android.pacprocessor',NULL,'2020-05-04 12:31:52'),(10038,'com.svox.pico',NULL,'2020-05-04 12:31:52'),(10039,'com.android.printservice.recommendation',NULL,'2020-05-04 12:31:52'),(10040,'com.android.printspooler',NULL,'2020-05-04 12:31:52'),(10041,'com.android.quicksearchbox',NULL,'2020-05-04 12:31:52'),(10042,'com.android.smspush',NULL,'2020-05-04 12:31:52'),(10043,'com.android.webview',NULL,'2020-05-04 12:31:52'),(10044,'com.nubo.controlpanel',NULL,'2020-05-04 12:31:52'),(10045,'com.android.contacts',NULL,'2020-05-04 12:31:52'),(10046,'com.simplemobiletools.filemanager',NULL,'2020-05-04 12:31:53'),(10047,'com.android.calendar',NULL,'2020-05-04 12:31:53'),(10048,'com.android.camera',NULL,'2020-05-04 13:13:54'),(10049,'com.android.email',NULL,'2020-05-04 13:13:56'),(10050,'com.nubo.appstore',NULL,'2020-05-04 13:13:57'),(10051,'com.nubo.filemanager',NULL,'2020-05-04 13:13:58'),(10052,'com.nubo.gallery',NULL,'2020-05-04 13:13:59'),(10053,'com.nubo.launcher.nubo',NULL,'2020-05-04 13:14:00'),(10054,'com.nubo.notes',NULL,'2020-05-04 13:14:00'),(10055,'com.nubo.sip',NULL,'2020-05-04 13:14:01'),(10056,'org.pf.messages',NULL,'2020-05-04 13:14:02'),(10057,'acr.browser.barebones',NULL,'2020-08-03 13:10:03'),(10058,'com.whatsapp',NULL,'2020-08-03 13:10:04'),(10059,'com.uptodown',NULL,'2020-08-03 13:10:04');
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
INSERT INTO `platform_configs` VALUES ('dc',3,20,0,0,0.5,0,40,20,10,0,5,'false',0,'false','10.1.0.8');
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
INSERT INTO `upload_apk_histories` VALUES (1,'android','2020-05-04 12:31:47'),(2,'com.android.backupconfirm','2020-05-04 12:31:47'),(3,'shared:android.uid.shared','2020-05-04 12:31:47'),(4,'com.android.providers.blockednumber','2020-05-04 12:31:47'),(5,'shared:android.uid.calendar','2020-05-04 12:31:47'),(6,'com.android.providers.calendar','2020-05-04 12:31:47'),(7,'com.android.providers.contacts','2020-05-04 12:31:47'),(8,'com.android.cts.priv.ctsshim','2020-05-04 12:31:47'),(9,'com.android.defcontainer','2020-05-04 12:31:47'),(10,'com.android.dialer','2020-05-04 12:31:47'),(11,'com.android.documentsui','2020-05-04 12:31:47'),(12,'shared:android.media','2020-05-04 12:31:47'),(13,'com.android.providers.downloads','2020-05-04 12:31:48'),(14,'android.ext.services','2020-05-04 12:31:48'),(15,'com.android.externalstorage','2020-05-04 12:31:48'),(16,'com.android.location.fused','2020-05-04 12:31:48'),(17,'com.android.inputdevices','2020-05-04 12:31:48'),(18,'com.android.managedprovisioning','2020-05-04 12:31:48'),(19,'com.android.providers.media','2020-05-04 12:31:48'),(20,'com.android.mms.service','2020-05-04 12:31:48'),(21,'com.android.mtp','2020-05-04 12:31:48'),(22,'com.android.musicfx','2020-05-04 12:31:48'),(23,'com.android.onetimeinitializer','2020-05-04 12:31:48'),(24,'com.android.packageinstaller','2020-05-04 12:31:48'),(25,'com.android.provision','2020-05-04 12:31:49'),(26,'com.android.proxyhandler','2020-05-04 12:31:49'),(27,'com.android.settings','2020-05-04 12:31:49'),(28,'com.android.providers.settings','2020-05-04 12:31:49'),(29,'com.android.sharedstoragebackup','2020-05-04 12:31:49'),(30,'com.android.shell','2020-05-04 12:31:49'),(31,'com.android.statementservice','2020-05-04 12:31:49'),(32,'shared:android.uid.systemui','2020-05-04 12:31:49'),(33,'com.android.systemui','2020-05-04 12:31:49'),(34,'com.android.phone','2020-05-04 12:31:49'),(35,'com.android.server.telecom','2020-05-04 12:31:50'),(36,'com.android.providers.telephony','2020-05-04 12:31:50'),(37,'com.android.vpndialogs','2020-05-04 12:31:50'),(38,'com.android.wallpapercropper','2020-05-04 12:31:50'),(39,'com.android.dreams.basic','2020-05-04 12:31:50'),(40,'com.nubo.blackscreenapp','2020-05-04 12:31:50'),(41,'com.android.bluetooth','2020-05-04 12:31:50'),(42,'com.android.bluetoothmidiservice','2020-05-04 12:31:50'),(43,'com.android.bookmarkprovider','2020-05-04 12:31:50'),(44,'com.android.captiveportallogin','2020-05-04 12:31:50'),(45,'com.android.certinstaller','2020-05-04 12:31:50'),(46,'com.android.cts.ctsshim','2020-05-04 12:31:51'),(47,'com.android.deskclock','2020-05-04 12:31:51'),(48,'com.android.providers.downloads.ui','2020-05-04 12:31:51'),(49,'com.android.egg','2020-05-04 12:31:51'),(50,'com.android.exchange','2020-05-04 12:31:51'),(51,'android.ext.shared','2020-05-04 12:31:51'),(52,'com.android.htmlviewer','2020-05-04 12:31:51'),(53,'com.android.keychain','2020-05-04 12:31:51'),(54,'com.android.inputmethod.latin','2020-05-04 12:31:51'),(55,'com.android.music','2020-05-04 12:31:51'),(56,'com.nubo.contacts.sync','2020-05-04 12:31:51'),(57,'com.nubo.launcher','2020-05-04 12:31:52'),(58,'com.nubo.nubosettings','2020-05-04 12:31:52'),(59,'com.android.pacprocessor','2020-05-04 12:31:52'),(60,'com.svox.pico','2020-05-04 12:31:52'),(61,'com.android.printservice.recommendation','2020-05-04 12:31:52'),(62,'com.android.printspooler','2020-05-04 12:31:52'),(63,'com.android.quicksearchbox','2020-05-04 12:31:52'),(64,'com.android.providers.userdictionary','2020-05-04 12:31:52'),(65,'com.android.smspush','2020-05-04 12:31:52'),(66,'com.android.wallpaperbackup','2020-05-04 12:31:52'),(67,'com.android.webview','2020-05-04 12:31:52'),(68,'com.nubo.controlpanel','2020-05-04 12:31:52'),(69,'com.android.contacts','2020-05-04 12:31:52'),(70,'com.simplemobiletools.filemanager','2020-05-04 12:31:53'),(71,'com.android.calendar','2020-05-04 12:31:53'),(72,'com.android.camera','2020-05-04 13:13:54'),(73,'com.android.email','2020-05-04 13:13:56'),(74,'com.nubo.appstore','2020-05-04 13:13:57'),(75,'com.nubo.filemanager','2020-05-04 13:13:58'),(76,'com.nubo.gallery','2020-05-04 13:13:59'),(77,'com.nubo.launcher.nubo','2020-05-04 13:14:00'),(78,'com.nubo.notes','2020-05-04 13:14:00'),(79,'com.nubo.sip','2020-05-04 13:14:01'),(80,'org.pf.messages','2020-05-04 13:14:02'),(81,'acr.browser.barebones','2020-08-03 13:10:03'),(82,'com.whatsapp','2020-08-03 13:10:04'),(83,'com.uptodown','2020-08-03 13:10:04'),(84,'com.android.calendar','2020-08-03 13:26:26'),(85,'com.android.camera','2020-08-03 13:26:34'),(86,'com.android.contacts','2020-08-03 13:26:44'),(87,'com.android.email','2020-08-03 13:26:53'),(88,'com.nubo.appstore','2020-08-03 13:27:02'),(89,'com.nubo.controlpanel','2020-08-03 13:27:10'),(90,'com.nubo.filemanager','2020-08-03 13:27:17'),(91,'com.nubo.gallery','2020-08-03 13:27:25'),(92,'com.nubo.launcher.nubo','2020-08-03 13:27:33'),(93,'com.nubo.notes','2020-08-03 13:27:41'),(94,'com.nubo.sip','2020-08-03 13:27:49'),(95,'org.pf.messages','2020-08-03 13:27:57');
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
INSERT INTO `user_application_notifs` VALUES ('doc.com','admin@doc.com','Calendar',1),('doc.com','admin@doc.com','Email',1),('doc.com','admin@doc.com','Messaging',1),('doc.com','user2@doc.com','Calendar',1),('doc.com','user2@doc.com','Email',1),('doc.com','user2@doc.com','Messaging',1),('doc.com','user@doc.com','Calendar',1),('doc.com','user@doc.com','Email',1),('doc.com','user@doc.com','Messaging',1);
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
INSERT INTO `user_apps` VALUES ('admin@doc.com','com.android.calendar','doc.com',0,1,1),('admin@doc.com','com.android.camera','doc.com',0,1,1),('admin@doc.com','com.android.contacts','doc.com',0,1,1),('admin@doc.com','com.android.dialer','doc.com',0,1,1),('admin@doc.com','com.android.email','doc.com',0,1,1),('admin@doc.com','com.nubo.appstore','doc.com',0,1,1),('admin@doc.com','com.nubo.controlpanel','doc.com',1,1,1),('admin@doc.com','com.nubo.filemanager','doc.com',0,1,1),('admin@doc.com','com.nubo.gallery','doc.com',0,1,1),('admin@doc.com','com.nubo.launcher.nubo','doc.com',0,1,1),('admin@doc.com','com.nubo.notes','doc.com',0,1,1),('admin@doc.com','com.nubo.sip','doc.com',0,1,1),('admin@doc.com','org.pf.messages','doc.com',0,1,1),('user2@doc.com','com.android.calendar','doc.com',0,1,1),('user2@doc.com','com.android.camera','doc.com',0,1,1),('user2@doc.com','com.android.contacts','doc.com',0,1,1),('user2@doc.com','com.android.dialer','doc.com',0,1,1),('user2@doc.com','com.android.email','doc.com',0,1,1),('user2@doc.com','com.nubo.appstore','doc.com',0,1,1),('user2@doc.com','com.nubo.filemanager','doc.com',0,1,1),('user2@doc.com','com.nubo.gallery','doc.com',0,1,1),('user2@doc.com','com.nubo.launcher.nubo','doc.com',0,1,1),('user2@doc.com','com.nubo.notes','doc.com',0,1,1),('user2@doc.com','com.nubo.sip','doc.com',0,1,1),('user2@doc.com','firefox','doc.com',1,1,1),('user2@doc.com','org.pf.messages','doc.com',0,1,1),('user@doc.com','com.android.calendar','doc.com',0,1,1),('user@doc.com','com.android.camera','doc.com',0,1,1),('user@doc.com','com.android.contacts','doc.com',0,1,1),('user@doc.com','com.android.dialer','doc.com',0,1,1),('user@doc.com','com.android.email','doc.com',0,1,1),('user@doc.com','com.nubo.appstore','doc.com',0,1,1),('user@doc.com','com.nubo.filemanager','doc.com',0,1,1),('user@doc.com','com.nubo.gallery','doc.com',0,1,1),('user@doc.com','com.nubo.launcher.nubo','doc.com',0,1,1),('user@doc.com','com.nubo.notes','doc.com',0,1,1),('user@doc.com','com.nubo.sip','doc.com',0,1,1),('user@doc.com','firefox','doc.com',1,1,1),('user@doc.com','org.pf.messages','doc.com',0,1,1);
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
INSERT INTO `user_devices` VALUES ('user2@doc.com','f543c619-471f-40fa-94dc-c9128ead91e8',1,'Chrome','doc.com','2021-10-22 10:23:58','',NULL,NULL,NULL,0,NULL,'',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-10-22 10:26:05',NULL),('user@doc.com','57319db6-eb7b-41f8-86d4-a30fa4b82f61',1,'Firefox','doc.com','2021-10-22 10:13:12','',NULL,NULL,NULL,0,NULL,'',NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-10-22 17:53:02',NULL);
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
INSERT INTO `user_groups` VALUES ('admin@doc.com','All','doc.com','','','0'),('user2@doc.com','All','doc.com','','','0'),('user@doc.com','All','doc.com','','','0');
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
INSERT INTO `users` VALUES ('admin@doc.com','0',NULL,NULL,NULL,NULL,1,1,NULL,NULL,'doc.com','admin@doc.com',NULL,NULL,NULL,'',NULL,'','36eaf44a1ffad3847c207705ab0954892489c2ee4d053a373b74a9335d0ae97bcfe5d0f2e4513ea1609b8803ebe84b1259b44d20c388d6a781885381a1d12a71',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin@doc.com',NULL,NULL,NULL,0,NULL,NULL,NULL,1000000,0,NULL,NULL,NULL,NULL,'2021-10-21 14:06:33',0,0,NULL,1,1,NULL,NULL,NULL,'-1','21d4457210dcd4a6',NULL,'',''),('user2@doc.com','0',NULL,NULL,'User',NULL,1,NULL,'NA','2','doc.com','user2@doc.com',NULL,NULL,NULL,'',NULL,'','6ed98a8ad9a47ce3d0596697d8a3c54ba1806b3fca2186568438a77454eb6eef48a005b94820b44f220416c1d6ffce619a0b5f751c2adb880641c216868cdd11',NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'user2@doc.com',NULL,NULL,NULL,0,NULL,NULL,NULL,1000000,24,NULL,NULL,NULL,NULL,'2021-10-22 10:24:07',0,0,NULL,1,1,'2021-10-22T11:17:33.096Z',NULL,NULL,'-1','51abaa566c8294ee',NULL,'','userf2fb7ba0b7f53ab8d006dd0a08bec5cd:latest'),('user@doc.com','0',NULL,NULL,'User',NULL,1,0,'','1','doc.com','',NULL,NULL,'','','','','805b08142e95de73826858577bbd48fbfa884e7b755de50c88e6fe02ea219dc4652346fe86e2c3b654efeaa0528cd21b6ef62c27be50219a8381dd603ec57abf','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'user@doc.com',NULL,NULL,NULL,0,NULL,NULL,NULL,1000000,24,NULL,NULL,NULL,NULL,'2021-10-22 10:13:34',0,0,NULL,1,1,'2021-10-22T17:53:02.405Z',NULL,NULL,'-1','7e2b9f8a14acf20a',NULL,'','userf2fb7ba0b7f53ab8d006dd0a08bec5cd:latest');
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
