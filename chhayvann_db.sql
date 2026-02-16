-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: chhayvann_db
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

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
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summaryKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,'Most Transparent FX Broker',NULL,'Global Forex Awards Jun, 2016',NULL,'/award/CamGoTech_TB3IHdBoegI2X1DtNfZCsnwxhZd9G2p4PIn63X2Z.webp',1,0,'2026-01-09 01:38:27','2026-02-03 01:30:02');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionKm` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkLabelKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkTo` text COLLATE utf8mb4_unicode_ci,
  `redirectNewTap` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (3,'CVG Trade Online','','','','As a digital trading solution provider, CVG Trade Online focuses on delivering secure, transparent, and efficient trade experiences. Our platform is built to support business growth in the fast-changing world of online commerce.','','/banner/Chhayvann_LHLSasYtpPKhRx5Fg6eKI0enx4rgREU1HS5am343.png',NULL,NULL,NULL,0,0,1,'2026-02-12 10:11:07','2026-02-16 08:30:11');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career_applies`
--

DROP TABLE IF EXISTS `career_applies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career_applies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fileCv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `careerId` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_applies`
--

LOCK TABLES `career_applies` WRITE;
/*!40000 ALTER TABLE `career_applies` DISABLE KEYS */;
INSERT INTO `career_applies` VALUES (2,'Phanna','Phoem','+855 17843304','admin@gmail.com','/cvs/CamGoTech_qGMuSLqxRMPWZ6RCfuyTX4lfu1iD7TP36Pq1SE2A.pdf','Test',1,'2026-01-30 00:21:50','2026-01-30 00:21:50');
/*!40000 ALTER TABLE `career_applies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci,
  `desKm` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `contentKm` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locationKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Compliance Manager','Compliance Manager','<ol>\n<li><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Develop, implement, and monitor the company&rsquo;s compliance framework, policies, and procedures aligned with best practices.</span></li>\n<li>Ensure full adherence to AML/CFT regulations, especially in line with FATF guidelines and local regulatory bodies.</li>\n<li>Oversee robust KYC onboarding processes for clients, suppliers, and counterparties, including enhanced due diligence for high-risk entities.</li>\n<li>Conduct risk assessments of clients, transactions, and supply chain partners; maintain updated risk classification and audit trails.</li>\n<li>Liaise with regulators, law enforcement, and auditors on compliance-related matters.</li>\n<li>Provide regular training to staff on AML, sanctions compliance, and ethical trading standards.</li>\n<li><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Keep abreast of changes in international regulations (e.g., OFAC, EU sanctions, Basel, FATF) and recommend policy updates.</span></li>\n<li><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;</span><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Assist with compliance-related matters in international gold trade documentation, including customs, trade licenses, and cross-border trade rules.</span></li>\n<li>Maintain internal logs and prepare periodic compliance reports for management and regulatory authorities.</li>\n<li>Other task will assigned by Management</li>\n</ol>','<ol>\n<li><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Develop, implement, and monitor the company&rsquo;s compliance framework, policies, and procedures aligned with best practices.</span></li>\n<li>Ensure full adherence to AML/CFT regulations, especially in line with FATF guidelines and local regulatory bodies.</li>\n<li>Oversee robust KYC onboarding processes for clients, suppliers, and counterparties, including enhanced due diligence for high-risk entities.</li>\n<li>Conduct risk assessments of clients, transactions, and supply chain partners; maintain updated risk classification and audit trails.</li>\n<li>Liaise with regulators, law enforcement, and auditors on compliance-related matters.</li>\n<li>Provide regular training to staff on AML, sanctions compliance, and ethical trading standards.</li>\n<li><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Keep abreast of changes in international regulations (e.g., OFAC, EU sanctions, Basel, FATF) and recommend policy updates.</span></li>\n<li><span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;</span><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Assist with compliance-related matters in international gold trade documentation, including customs, trade licenses, and cross-border trade rules.</span></li>\n<li>Maintain internal logs and prepare periodic compliance reports for management and regulatory authorities.</li>\n<li>Other task will assigned by Management</li>\n</ol>','<ol>\n<li><!-- [if !supportLists]--><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Bachelor&rsquo;s or Master&rsquo;s degree in Law, Business, Finance, or related field.</span></li>\n<li>3+ years of compliance experience in financial services, commodities, or gold/precious metals trading.</li>\n<li>Strong analytical, communication, and investigative skills.</li>\n<li>High level of integrity, discretion, and independence in judgment.</li>\n</ol>','<ol>\n<li><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Bachelor&rsquo;s or Master&rsquo;s degree in Law, Business, Finance, or related field.</span></li>\n<li>3+ years of compliance experience in financial services, commodities, or gold/precious metals trading.</li>\n<li>Strong analytical, communication, and investigative skills.</li>\n<li>High level of integrity, discretion, and independence in judgment.</li>\n</ol>','Head Office, Phnom Penh','','2026-02-15','',1,1,'2026-01-15 01:38:25','2026-01-31 00:34:31'),(2,'Senior/Officer, Marketing','Senior/Officer, Marketing','<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">&bull; Execute sales and marketing strategies based on gold price movements and market trends to achieve revenue targets.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Monitor daily gold prices, global market trends, and customer demand to support sales planning and client advisory.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Manage and grow relationships with retail and institutional clients, investors, and dealers.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Promote gold products through effective sales presentations and marketing activities.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Support marketing campaigns, promotions, and seasonal sales initiatives aligned with gold market trends.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Analyze sales performance, customer feedback, and market data to identify growth opportunities.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Prepare sales reports, forecasts, and market updates for management and clients.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Coordinate with operations and finance teams to ensure accurate pricing, order execution, and customer satisfaction.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Liaise and build promotional networks, public relations, and media networks. </span></p>\n<p><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Assist in expanding distribution channels and identifying new business opportunities in the gold market.</span></p>','<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">&bull; Execute sales and marketing strategies based on gold price movements and market trends to achieve revenue targets.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Monitor daily gold prices, global market trends, and customer demand to support sales planning and client advisory.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Manage and grow relationships with retail and institutional clients, investors, and dealers.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Promote gold products through effective sales presentations and marketing activities.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Support marketing campaigns, promotions, and seasonal sales initiatives aligned with gold market trends.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Analyze sales performance, customer feedback, and market data to identify growth opportunities.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Prepare sales reports, forecasts, and market updates for management and clients.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Coordinate with operations and finance teams to ensure accurate pricing, order execution, and customer satisfaction.</span></p>\n<p class=\"MsoNormal\"><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Liaise and build promotional networks, public relations, and media networks. </span></p>\n<p><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: KHM;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>&bull; Assist in expanding distribution channels and identifying new business opportunities in the gold market.</span></p>','<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-right: 13.7pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 14.0pt; mso-line-height-rule: exactly; mso-pagination: none; mso-list: l0 level1 lfo1; mso-line-break-override: restrictions;\"><!-- [if !supportLists]--><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-bidi-language: KHM;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">Bachelor&rsquo;s Degree in marketing, Business, Economics or univalent,</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-right: 13.7pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 14.0pt; mso-line-height-rule: exactly; mso-pagination: none; mso-list: l0 level1 lfo1; mso-line-break-override: restrictions;\"><!-- [if !supportLists]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-bidi-language: KHM;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">Strong Interpersonal and communication skills</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-right: 13.7pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 14.0pt; mso-line-height-rule: exactly; mso-pagination: none; mso-list: l0 level1 lfo1; mso-line-break-override: restrictions;\"><!-- [if !supportLists]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-bidi-language: KHM;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">Strong understanding of current online marketing concepts, </span></p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-right: 13.7pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 14.0pt; mso-line-height-rule: exactly; mso-pagination: none; mso-list: l0 level1 lfo1; mso-line-break-override: restrictions;\"><!-- [if !supportLists]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-bidi-language: KHM;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">Experience in some graphic design will be advantage, </span></p>\n<p><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: KHM;\">Good command in spoken and written English</span></p>','<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-right: 13.7pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 14.0pt; mso-line-height-rule: exactly; mso-pagination: none; mso-list: l0 level1 lfo1; mso-line-break-override: restrictions;\"><span style=\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-bidi-language: KHM;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">Bachelor&rsquo;s Degree in marketing, Business, Economics or univalent,</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-right: 13.7pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 14.0pt; mso-line-height-rule: exactly; mso-pagination: none; mso-list: l0 level1 lfo1; mso-line-break-override: restrictions;\"><!-- [if !supportLists]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-bidi-language: KHM;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">Strong Interpersonal and communication skills</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-right: 13.7pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 14.0pt; mso-line-height-rule: exactly; mso-pagination: none; mso-list: l0 level1 lfo1; mso-line-break-override: restrictions;\"><!-- [if !supportLists]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-bidi-language: KHM;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">Strong understanding of current online marketing concepts, </span></p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-right: 13.7pt; mso-add-space: auto; text-align: justify; text-indent: -18.0pt; line-height: 14.0pt; mso-line-height-rule: exactly; mso-pagination: none; mso-list: l0 level1 lfo1; mso-line-break-override: restrictions;\"><!-- [if !supportLists]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-bidi-language: KHM;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-bidi-language: KHM;\">Experience in some graphic design will be advantage, </span></p>\n<p><span style=\"font-size: 11.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Trebuchet MS\',sans-serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: KHM;\">Good command in spoken and written English</span></p>','Head Office, Phnom Penh','','2026-02-15','',2,1,'2026-02-06 02:57:43','2026-02-06 03:16:15'),(3,'Accounting Officer','Accounting Officer','<ul style=\"list-style-type: square;\">\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Record sale &amp; purchase slip in excel &amp; system.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; File/ store related documents.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Record trading transaction with supplier</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Assist tax declarations.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Record daily operation expense to system.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Entry any accounting data into system.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Prepare invoice to customers.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Update accounts receivable &amp; payable.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Assist senior accountant and accounting supervisor in daily operation transactions.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp;Other tasks assigned by CFO.</li>\n</ul>','<ul style=\"list-style-type: square;\">\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Record sale &amp; purchase slip in excel &amp; system.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; File/ store related documents.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Record trading transaction with supplier</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Assist tax declarations.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Record daily operation expense to system.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Entry any accounting data into system.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Prepare invoice to customers.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Update accounts receivable &amp; payable.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp; Assist senior accountant and accounting supervisor in daily operation transactions.</li>\n<li class=\"MsoListParagraph\" style=\"text-indent: -18pt;\">&nbsp; &nbsp; &nbsp; &nbsp;Other tasks assigned by CFO.</li>\n</ul>','<ul>\n<li><!-- [if !supportLists]--><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Year 3 of bachelor in related field (Law, Banking, Finance, Accounting, ...).</span></li>\n<li>Good with numbers and figures and an analytical acumen.</li>\n<li>Good understanding of accounting and financial reporting principles and practices.</li>\n<li>Knowledge of computer software &amp; Microsoft excel.</li>\n<li>Ability to work under pressure highly self-motivated.</li>\n</ul>','<ul>\n<li><span style=\"font-family: \'Trebuchet MS\',sans-serif;\">Year 3 of bachelor in related field (Law, Banking, Finance, Accounting, ...).</span></li>\n<li>Good with numbers and figures and an analytical acumen.</li>\n<li>Good understanding of accounting and financial reporting principles and practices.</li>\n<li>Knowledge of computer software &amp; Microsoft excel.</li>\n<li>Ability to work under pressure highly self-motivated.</li>\n</ul>','Head Office, Phnom Penh','','2026-02-15','',3,1,'2026-02-06 03:05:08','2026-02-06 03:14:55');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'NEWS','Economic Calendar',NULL,NULL,1,1,'2026-01-13 00:11:34','2026-01-13 00:11:34'),(2,'NEWS','Analyst Research',NULL,NULL,2,1,'2026-01-13 00:11:53','2026-01-13 00:11:53'),(3,'FAQ','Account',NULL,NULL,1,1,'2026-01-15 02:11:29','2026-01-15 02:11:29'),(4,'FAQ','Company',NULL,NULL,2,1,'2026-01-15 02:11:59','2026-01-15 02:11:59'),(5,'FAQ','Trading',NULL,NULL,3,1,'2026-01-15 02:20:22','2026-01-15 02:20:22');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporates`
--

DROP TABLE IF EXISTS `corporates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificateNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporates`
--

LOCK TABLES `corporates` WRITE;
/*!40000 ALTER TABLE `corporates` DISABLE KEYS */;
INSERT INTO `corporates` VALUES (2,'Camgotech','069565956','012358333','tvutha@camgotech.com','Vutha TEP','/corporate/Chhayvann_AiYWErNi2Pt5O3QEpCnWV8qevoB3kCcjw13Cn4xy.jpg','\"[\\\"Allow to give the permission to use the information for the purpose of opening the account. Your Data will be kept confidential and will not be shared with any third party.\\\",\\\"Confirm that the provided information are accurate and authentic.\\\"]\"','2026-02-12 16:49:28','2026-02-12 16:49:28');
/*!40000 ALTER TABLE `corporates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_converts`
--

DROP TABLE IF EXISTS `currency_converts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_converts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subCurrency` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordering` int DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `currency_converts_chk_1` CHECK (json_valid(`subCurrency`))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_converts`
--

LOCK TABLES `currency_converts` WRITE;
/*!40000 ALTER TABLE `currency_converts` DISABLE KEYS */;
INSERT INTO `currency_converts` VALUES (1,'Khmer Riel','KHR','[{\"id\":2,\"image\":\"\\/currency\\/CamGoTech_PbEpk5obIP3q8AorcQ3Sz64NAemq41xd1E1cJxRB.png\",\"title\":\"US Dollar\",\"type\":\"USD\",\"rate\":\"1\"},{\"id\":5,\"image\":\"\\/currency\\/Chhayvann_zmSqNN2JSIc49Q344PjsppMjFS5MsyLmDKvNEMQ2.png\",\"title\":\"THB - Thai Baht\",\"type\":\"THB\"},{\"id\":3,\"image\":\"\\/currency\\/CamGoTech_9yABhKnjys8XEP2VG3tFImFxwxHkDevtWnBEKVv1.jpg\",\"title\":\"Chinese\",\"type\":\"CNY\"},{\"id\":6,\"image\":\"\\/currency\\/Chhayvann_Zp7qIRSe9cujt1A0MCURQIWCuNZVzO38fczST31B.png\",\"title\":\"EUR - Euro\",\"type\":\"EUR\"}]','4050','/currency/CamGoTech_Zg0T5H3gJ6YDixb8NmF5aScAvUAOlzjB16klaMSr.png',1,'2026-01-11 21:09:38','2026-02-12 16:46:31',30),(2,'US Dollar','USD','[{\"id\":1,\"image\":\"\\/currency\\/CamGoTech_Zg0T5H3gJ6YDixb8NmF5aScAvUAOlzjB16klaMSr.png\",\"title\":\"Khmer Riel\",\"type\":\"KHR\",\"rate\":\"4090\"},{\"id\":3,\"image\":\"\\/currency\\/CamGoTech_9yABhKnjys8XEP2VG3tFImFxwxHkDevtWnBEKVv1.jpg\",\"title\":\"Chinese\",\"type\":\"CNY\"},{\"id\":4,\"image\":\"\\/currency\\/Chhayvann_9cbfJKI3MSHxW9JG1FP8PJIOSIDKvmCFddhyxN8W.png\",\"title\":\"AUD - Australian Dollar\",\"type\":\"AUD\"},{\"id\":5,\"image\":\"\\/currency\\/Chhayvann_zmSqNN2JSIc49Q344PjsppMjFS5MsyLmDKvNEMQ2.png\",\"title\":\"THB - Thai Baht\",\"type\":\"THB\"},{\"id\":8,\"image\":\"\\/currency\\/Chhayvann_ypg2XD5WpwNUaPFq9XSvXxJk3mQCXIGP6nL1zluY.png\",\"title\":\"Vietnam\",\"type\":\"VND\"}]','1','/currency/CamGoTech_PbEpk5obIP3q8AorcQ3Sz64NAemq41xd1E1cJxRB.png',1,'2026-01-12 00:08:38','2026-02-14 10:16:14',40),(3,'Chinese','CNY','[{\"id\":2,\"image\":\"\\/currency\\/CamGoTech_PbEpk5obIP3q8AorcQ3Sz64NAemq41xd1E1cJxRB.png\",\"title\":\"US Dollar\",\"type\":\"USD\"},{\"id\":1,\"image\":\"\\/currency\\/CamGoTech_Zg0T5H3gJ6YDixb8NmF5aScAvUAOlzjB16klaMSr.png\",\"title\":\"Khmer Riel\",\"type\":\"KHR\"},{\"id\":6,\"image\":\"\\/currency\\/Chhayvann_Zp7qIRSe9cujt1A0MCURQIWCuNZVzO38fczST31B.png\",\"title\":\"EUR - Euro\",\"type\":\"EUR\"}]','6.95','/currency/CamGoTech_9yABhKnjys8XEP2VG3tFImFxwxHkDevtWnBEKVv1.jpg',1,'2026-01-28 18:11:16','2026-02-13 09:03:18',18),(4,'AUD - Australian Dollar','AUD','[]','1.38','/currency/Chhayvann_9cbfJKI3MSHxW9JG1FP8PJIOSIDKvmCFddhyxN8W.png',1,'2026-02-10 02:54:07','2026-02-10 02:55:44',0),(5,'THB - Thai Baht','THB','[]','29.66','/currency/Chhayvann_zmSqNN2JSIc49Q344PjsppMjFS5MsyLmDKvNEMQ2.png',1,'2026-02-10 02:57:38','2026-02-10 02:57:38',0),(6,'Euro','EUR','[]','0.83','/currency/Chhayvann_Zp7qIRSe9cujt1A0MCURQIWCuNZVzO38fczST31B.png',1,'2026-02-10 03:00:20','2026-02-14 09:57:31',1),(8,'Vietnam','VND','[{\"id\":2,\"image\":\"\\/currency\\/CamGoTech_PbEpk5obIP3q8AorcQ3Sz64NAemq41xd1E1cJxRB.png\",\"title\":\"US Dollar\",\"type\":\"USD\"}]','27200','/currency/Chhayvann_uXLoirMR0trQw3xdr5AkyjGzs8Z3nbhd19Nropcg.jpg',1,'2026-02-14 10:15:04','2026-02-14 10:20:16',0);
/*!40000 ALTER TABLE `currency_converts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_rates`
--

DROP TABLE IF EXISTS `exchange_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchange_rates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordering` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_rates`
--

LOCK TABLES `exchange_rates` WRITE;
/*!40000 ALTER TABLE `exchange_rates` DISABLE KEYS */;
INSERT INTO `exchange_rates` VALUES (42,'USD','KHR','4035','4025','https://api.chhayvann.com.kh/uploads/images/Chhayvann_oX2ahSgw5oBlSd9WPpKOQgBw6YV1kx0x0DGd5bu2.jpg',1,'2026-02-14 10:12:19','2026-02-14 12:06:22',2),(43,'USD','VND','26700','26400','https://api.chhayvann.com.kh/uploads/images/Chhayvann_6baF35cDHmBkjXtJqqBjP4D6iXW5QBqUe9QyN1dp.png',1,'2026-02-14 10:12:19','2026-02-14 12:06:28',0);
/*!40000 ALTER TABLE `exchange_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci,
  `questionKm` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `answerKm` text COLLATE utf8mb4_unicode_ci,
  `mainId` int DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'How can I start trading Forex?','Test','Which of us ever undertakes laborious physical exercise, except to some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences.','',4,1,1,'2026-01-15 03:05:05','2026-01-15 03:14:08');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summaryKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` VALUES (1,'Operated',NULL,'Denounce with righteous indigation dislike men who are so beguiled and demoralized by pleasure of the moment.',NULL,'1986','/history/CamGoTech_NbupOGcL0FEoCMcRApXayoB8yGgrNuqgZtxEVJcT.webp',1,1,'2026-01-09 02:20:34','2026-01-31 03:45:16'),(2,'New Page',NULL,NULL,NULL,'2023',NULL,5,0,'2026-02-12 16:43:38','2026-02-12 16:44:12');
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (11,'/images/Chhayvann_oX2ahSgw5oBlSd9WPpKOQgBw6YV1kx0x0DGd5bu2.jpg','EXCHANGE','2026-02-14 08:21:45','2026-02-14 08:21:45'),(12,'/images/Chhayvann_6baF35cDHmBkjXtJqqBjP4D6iXW5QBqUe9QyN1dp.png','EXCHANGE','2026-02-14 08:21:58','2026-02-14 08:21:58'),(13,'/images/Chhayvann_pC5mf9NTkTrpwLfoPIhy7zegHSc1ZQR5Ods7S1VV.jpg','EXCHANGE','2026-02-14 08:22:07','2026-02-14 08:22:07'),(14,'/images/Chhayvann_uXEycOGkIhpsn79mhnyE5OGd6bs25eBCJLYPeG75.jpg','EXCHANGE','2026-02-14 08:22:15','2026-02-14 08:22:15'),(15,'/images/Chhayvann_Hhx4pZ9Waf9IbXy2qSwpj0M8P5E3HVaDn6d3G5Yp.jpg','EXCHANGE','2026-02-14 08:22:21','2026-02-14 08:22:21'),(16,'/images/Chhayvann_R8JcF38kc9aDZ9D6JVzRSvcH3W3cfa82SuVLJoUE.jpg','EXCHANGE','2026-02-14 08:22:27','2026-02-14 08:22:27'),(18,'/images/Chhayvann_QGp4u3GSGzmBOtSbY84xFTSnvCu8ox7ObDCaM89f.jpg','EXCHANGE','2026-02-14 08:23:05','2026-02-14 08:23:05'),(19,'/images/Chhayvann_lvtKMCa6GSZRIGCPhWZpNqSa1H0Wzk80ejB1WxRM.jpg','EXCHANGE','2026-02-14 08:23:13','2026-02-14 08:23:13'),(20,'/images/Chhayvann_DnfAY9T0J6qp5mmf8xQdtKDfsedheG371mpCSiwj.jpg','EXCHANGE','2026-02-14 08:23:20','2026-02-14 08:23:20'),(21,'/images/Chhayvann_yes6R48iYOkYv08PhUQ8Xlpws1QZI6i5iTR1V3mv.jpg','EXCHANGE','2026-02-14 08:23:29','2026-02-14 08:23:29'),(22,'/images/Chhayvann_wqaVrbJmH9HJBNe9jQQZh6NM1D5K9VPPMypRlxsk.jpg','EXCHANGE','2026-02-14 08:23:45','2026-02-14 08:23:45'),(23,'/images/Chhayvann_0v9m33uwVeZMcOWnMd5RTzNoG7fnDk9yaajdtKrm.jpg','EXCHANGE','2026-02-14 08:23:52','2026-02-14 08:23:52'),(24,'/images/Chhayvann_7ibahXqFCtpgDDjLuHFxkpJCNcXLSXMrvDv3cJY2.jpg','EXCHANGE','2026-02-14 08:24:02','2026-02-14 08:24:02'),(25,'/images/Chhayvann_kPra5e3MmE949uGMU7nod0ZSV2e77z0CDFNYEGra.png','EXCHANGE','2026-02-14 08:24:18','2026-02-14 08:24:18'),(26,'/images/Chhayvann_R0KuHA1oqmLxvSsjpCC4LpCJ9M1fx9VhBvMGZb6g.jpg','EXCHANGE','2026-02-14 08:24:26','2026-02-14 08:24:26'),(27,'/images/Chhayvann_hLilime4vdAvqMeSnahNOo6SYDZid7k8eLVqmdlD.png','EXCHANGE','2026-02-14 08:24:36','2026-02-14 08:24:36'),(28,'/images/Chhayvann_DJq7rJX2DgvlT8vSSk2hnGmVrBodySPjgGK9yE4l.jpg','EXCHANGE','2026-02-14 08:24:46','2026-02-14 08:24:46'),(29,'/images/Chhayvann_KsUrCLC0aMKWTWP5JpQAxFf5vnr6GTD5O87l2Be1.jpg','EXCHANGE','2026-02-14 08:24:59','2026-02-14 08:24:59'),(30,'/images/Chhayvann_NrIjaLLOQcEt6dhRTiUqpBVVJh7omwTBIrbcCSzQ.jpg','EXCHANGE','2026-02-14 08:25:06','2026-02-14 08:25:06'),(31,'/images/Chhayvann_sV5jXsZPOdXZwoOgwXCpmB3k9jxwb4EahL4ZJRNm.jpg','EXCHANGE','2026-02-14 08:25:12','2026-02-14 08:25:12'),(32,'/images/Chhayvann_sK4d7bBlDcmPJWFv0j0sj2dCmURyFzaleYPnTmMB.jpg','EXCHANGE','2026-02-14 08:25:30','2026-02-14 08:25:30');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individuals`
--

DROP TABLE IF EXISTS `individuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `individuals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `nidNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frontCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individuals`
--

LOCK TABLES `individuals` WRITE;
/*!40000 ALTER TABLE `individuals` DISABLE KEYS */;
INSERT INTO `individuals` VALUES (1,'Phanna','Phoem','+855 17843304','admin@gmail.com','2026-01-22','12345678','/individual/CamGoTech_tZXB7VC17wQjjE3T9NNvenQL5bW7Z5C51k2Ali4z.jpg',NULL,'\"[\\\"Allow to give the permission to use the information for the purpose of opening the account. Your Data will be kept confidential and will not be shared with any third party.\\\",\\\"Confirm that the provided information are accurate and authentic.\\\"]\"','2026-01-30 02:36:34','2026-01-30 02:36:34');
/*!40000 ALTER TABLE `individuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_10_19_022629_create_services_table',1),(6,'2023_10_19_095945_create_news_table',1),(7,'2023_10_23_075315_create_testimonials_table',1),(8,'2023_10_23_102456_create_banners_table',1),(9,'2023_10_24_082055_create_faqs_table',1),(10,'2023_10_24_091255_create_careers_table',1),(11,'2023_10_27_134236_create_site_settings_table',1),(12,'2023_11_09_015606_create_page_banners_table',1),(13,'2026_01_09_071318_create_partners_table',2),(14,'2026_01_09_080132_create_awards_table',3),(15,'2026_01_09_085614_create_histories_table',4),(16,'2026_01_09_092309_create_teams_table',5),(17,'2026_01_12_014437_create_exchange_rates_table',6),(18,'2026_01_12_023424_create_currency_converts_table',7),(19,'2026_01_12_072217_create_products_table',8),(20,'2026_01_13_020804_create_tradings_table',9),(21,'2026_01_13_045646_create_categories_table',10),(22,'2026_01_19_025951_create_permission_tables',11),(23,'2026_01_29_080213_create_career_applies_table',12),(24,'2026_01_30_022629_create_individuals_table',13),(25,'2026_01_30_023005_create_corporates_table',13),(26,'2026_02_03_084516_create_images_table',14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(6,'App\\Models\\User',1),(4,'App\\Models\\User',6),(1,'App\\Models\\User',7),(5,'App\\Models\\User',8),(5,'App\\Models\\User',9);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `summaryKm` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `contentKm` longtext COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `metaKeyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDesc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'How Global Events are Shaping Commodity Prices','របៀបដែលព្រឹត្តិការណ៍អន្តរជាតិជ្រាបទៅលើតម្លៃទំនិញ','Desire that they cannot foresee all the pain business it will frequently occur','','<div class=\"blog-details-text1\">\n<p>Triving and dislike men who are so that beguiled and demoralized welcomed every pain avoided frequently occur that pleasures indignation and dislike men who are so beguiled the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain troublethat are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of same as saying through shrinking our being able to do.</p>\n<p>Foresee the pain trouble that are bound to ensue equal blame belongs to those who fail in their duties which is the same as saying through shrinking annoying consequences.</p>\n<p>Our being able to do what we like best every pleasure is to be welcomed every pain avoided but in certain that matters to this principle circumstances and owing to the claims.foresee the pain troublethat are bound to ensue equal blame belongs to those who fail in their duty through weakness of will which is the same as saying through shrinking.</p>\n</div>\n<div class=\"blog-details-quote\">\n<div class=\"blog-details-quote__inner\">\n<div class=\"text-box\">\n<p>Empower your trading journey with the right tools, strategies, and market insights&mdash;trade smarter, not harder.</p>\n</div>\n<div class=\"words-by\">\n<p>N.Isabella,&nbsp;Market Analyst.</p>\n</div>\n<div class=\"icon-box\"><img src=\"https://chhayvann.camgotech.com/_next/image?url=%2Fassets%2Fimages%2Ficon%2Ficon-quote.png&amp;w=256&amp;q=75\" srcset=\"/_next/image?url=%2Fassets%2Fimages%2Ficon%2Ficon-quote.png&amp;w=96&amp;q=75 1x, /_next/image?url=%2Fassets%2Fimages%2Ficon%2Ficon-quote.png&amp;w=256&amp;q=75 2x\" alt=\"Icon\" width=\"95\" height=\"68\" loading=\"lazy\" data-nimg=\"1\"></div>\n</div>\n</div>\n<div class=\"blog-details-text2\">\n<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, cause it pain, but because occasionally circumstances.</p>\n</div>\n<div class=\"what-are-fiscal-policies\">\n<div class=\"title-box\">\n<h3>What Are Fiscal Policies?</h3>\n<p>To take a trivial example, which of us ever undertaked laborious physical exercise, except that to btain someadvantage from it but who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying.</p>\n</div>\n<div class=\"list-item\">\n<p class=\"color\">Rationally encounter consequences that are extremely painful,</p>\n<ul>\n<li>\n<div class=\"icon\">&nbsp;</div>\n<p>Pleasure that has no annoying consequences.</p>\n</li>\n<li>\n<div class=\"icon\">&nbsp;</div>\n<p>The wise man therefore always holds</p>\n</li>\n<li>\n<div class=\"icon\">&nbsp;</div>\n<p>Rejects pleasures to secure other greater pleasures, or else he endures.</p>\n</li>\n</ul>\n</div>\n</div>','','2026-01-07','1',1,'/news/CamGoTech_dZzqUIGip5gCQqXKUXdxo6Dm6wGzXVeiXyRctJyD.webp',1,0,'','','2026-01-13 01:38:07','2026-01-30 09:43:52');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_banners`
--

DROP TABLE IF EXISTS `page_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `pageTitleKm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_banners`
--

LOCK TABLES `page_banners` WRITE;
/*!40000 ALTER TABLE `page_banners` DISABLE KEYS */;
INSERT INTO `page_banners` VALUES (1,NULL,'ABOUT','ABOUT','0',0,NULL,NULL),(2,NULL,'ORGANIZATION','ORGANIZATION','0',0,NULL,NULL),(3,NULL,'HISTORY','HISTORY','0',0,NULL,NULL),(4,NULL,'TEAM','TEAM','0',0,NULL,NULL),(5,NULL,'TestimonialPage','TestimonialPage','0',0,NULL,NULL),(6,NULL,'ExchangePage','ExchangePage','0',0,NULL,NULL),(7,NULL,'SERVICE','SERVICE','0',0,NULL,NULL),(8,NULL,'PRODUCT','PRODUCT','0',0,NULL,NULL),(9,NULL,'NEWS','NEWS','0',0,NULL,NULL),(10,NULL,'CareerPage','CareerPage','0',0,NULL,NULL),(11,'/pageBanner-profile/Chhayvann_7cdfvdAIPZt3ZCQxguQkRkOzzK4PMjgzwOBzt8te.jpg','ContactPage','ContactPage','0',0,NULL,'2026-02-12 16:45:52'),(12,NULL,'FaqPage','FaqPage','0',0,NULL,'2026-02-03 01:36:01'),(13,NULL,'CORPORATE','CORPORATE','0',0,NULL,NULL),(14,NULL,'INDIVIDUAL','INDIVIDUAL','0',0,NULL,NULL);
/*!40000 ALTER TABLE `page_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'dashboard','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(2,'banner-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(3,'banner-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(4,'banner-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(5,'banner-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(6,'service-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(7,'service-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(8,'service-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(9,'service-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(10,'news-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(11,'news-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(12,'news-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(13,'news-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(14,'faq.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(15,'faq.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(16,'faq.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(17,'faq.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(18,'partners-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(19,'partners-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(20,'partners-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(21,'partners-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(22,'award-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(23,'award-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(24,'award-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(25,'award-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(26,'product-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(27,'product-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(28,'product-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(29,'product-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(30,'testimonial.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(31,'testimonial.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(32,'testimonial.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(33,'testimonial.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(34,'career-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(35,'career-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(36,'career-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(37,'career-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(38,'history-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(39,'history-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(40,'history-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(41,'history-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(42,'team-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(43,'team-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(44,'team-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(45,'team-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(46,'privacy-policy.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(47,'privacy-policy.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(48,'privacy-policy.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(49,'privacy-policy.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(50,'exchange-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(51,'exchange-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(52,'exchange-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(53,'exchange-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(54,'currency-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(55,'currency-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(56,'currency-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(57,'currency-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(58,'page-banner.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(59,'page-banner.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(60,'user-management.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(61,'user-management.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(62,'user-management.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(63,'user-management.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(64,'site-setting','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(65,'role-menu.view','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(66,'role-menu.create','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(67,'role-menu.edit','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(68,'role-menu.delete','api','2026-01-23 00:44:23','2026-01-23 00:44:23'),(69,'application-form.view','api','2026-02-02 06:12:37','2026-02-02 06:12:37'),(70,'application-form.edit','api','2026-02-02 06:12:37','2026-02-02 06:12:37'),(71,'application-form.delete','api','2026-02-02 06:52:52','2026-02-02 06:52:52'),(72,'corporate-form.view','api','2026-02-02 06:52:52','2026-02-02 06:52:52'),(73,'corporate-form.edit','api','2026-02-02 06:52:52','2026-02-02 06:52:52'),(74,'corporate-form.delete','api','2026-02-02 06:52:52','2026-02-02 06:52:52'),(75,'individual-form.view','api','2026-02-02 06:52:52','2026-02-02 06:52:52'),(76,'individual-form.edit','api','2026-02-02 06:52:52','2026-02-02 06:52:52'),(77,'individual-form.delete','api','2026-02-02 06:52:52','2026-02-02 06:52:52');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_histories`
--

DROP TABLE IF EXISTS `price_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pair` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid` decimal(15,5) NOT NULL,
  `ask` decimal(15,5) NOT NULL,
  `recorded_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `price_histories_recorded_at_index` (`recorded_at`)
) ENGINE=InnoDB AUTO_INCREMENT=25743 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_histories`
--

LOCK TABLES `price_histories` WRITE;
/*!40000 ALTER TABLE `price_histories` DISABLE KEYS */;
INSERT INTO `price_histories` VALUES (25270,'XAUUSD',5027.64000,5028.90000,'2026-02-16 07:59:15','2026-02-16 07:59:15','2026-02-16 07:59:15'),(25271,'XAUUSD',5027.75000,5029.14000,'2026-02-16 07:59:30','2026-02-16 07:59:30','2026-02-16 07:59:30'),(25272,'XAUUSD',5028.36000,5029.89000,'2026-02-16 07:59:45','2026-02-16 07:59:45','2026-02-16 07:59:45'),(25273,'XAUUSD',5028.24000,5029.76000,'2026-02-16 08:00:00','2026-02-16 08:00:00','2026-02-16 08:00:00'),(25274,'XAUUSD',5028.75000,5030.26000,'2026-02-16 08:00:15','2026-02-16 08:00:15','2026-02-16 08:00:15'),(25275,'XAUUSD',5029.19000,5030.84000,'2026-02-16 08:00:30','2026-02-16 08:00:30','2026-02-16 08:00:30'),(25276,'XAUUSD',5029.24000,5030.83000,'2026-02-16 08:00:46','2026-02-16 08:00:46','2026-02-16 08:00:46'),(25277,'XAUUSD',5029.60000,5031.02000,'2026-02-16 08:01:01','2026-02-16 08:01:01','2026-02-16 08:01:01'),(25278,'XAUUSD',5029.52000,5030.82000,'2026-02-16 08:01:16','2026-02-16 08:01:16','2026-02-16 08:01:16'),(25279,'XAUUSD',5029.01000,5030.58000,'2026-02-16 08:01:31','2026-02-16 08:01:31','2026-02-16 08:01:31'),(25280,'XAUUSD',5029.06000,5030.75000,'2026-02-16 08:01:46','2026-02-16 08:01:46','2026-02-16 08:01:46'),(25281,'XAUUSD',5028.63000,5030.16000,'2026-02-16 08:02:01','2026-02-16 08:02:01','2026-02-16 08:02:01'),(25282,'XAUUSD',5028.59000,5030.20000,'2026-02-16 08:02:16','2026-02-16 08:02:16','2026-02-16 08:02:16'),(25283,'XAUUSD',5029.21000,5030.80000,'2026-02-16 08:02:31','2026-02-16 08:02:31','2026-02-16 08:02:31'),(25284,'XAUUSD',5029.50000,5031.00000,'2026-02-16 08:02:46','2026-02-16 08:02:46','2026-02-16 08:02:46'),(25285,'XAUUSD',5029.63000,5031.17000,'2026-02-16 08:03:01','2026-02-16 08:03:01','2026-02-16 08:03:01'),(25286,'XAUUSD',5029.83000,5031.35000,'2026-02-16 08:03:16','2026-02-16 08:03:16','2026-02-16 08:03:16'),(25287,'XAUUSD',5029.64000,5031.02000,'2026-02-16 08:03:31','2026-02-16 08:03:31','2026-02-16 08:03:31'),(25288,'XAUUSD',5030.04000,5031.40000,'2026-02-16 08:03:46','2026-02-16 08:03:46','2026-02-16 08:03:46'),(25289,'XAUUSD',5030.33000,5031.69000,'2026-02-16 08:04:01','2026-02-16 08:04:01','2026-02-16 08:04:01'),(25290,'XAUUSD',5028.96000,5030.45000,'2026-02-16 08:04:16','2026-02-16 08:04:16','2026-02-16 08:04:16'),(25291,'XAUUSD',5028.77000,5030.36000,'2026-02-16 08:04:31','2026-02-16 08:04:31','2026-02-16 08:04:31'),(25292,'XAUUSD',5028.35000,5029.84000,'2026-02-16 08:04:46','2026-02-16 08:04:46','2026-02-16 08:04:46'),(25293,'XAUUSD',5027.93000,5029.49000,'2026-02-16 08:05:01','2026-02-16 08:05:01','2026-02-16 08:05:01'),(25294,'XAUUSD',5026.86000,5028.40000,'2026-02-16 08:05:16','2026-02-16 08:05:16','2026-02-16 08:05:16'),(25295,'XAUUSD',5026.35000,5027.78000,'2026-02-16 08:05:31','2026-02-16 08:05:31','2026-02-16 08:05:31'),(25296,'XAUUSD',5025.91000,5027.56000,'2026-02-16 08:05:46','2026-02-16 08:05:46','2026-02-16 08:05:46'),(25297,'XAUUSD',5025.90000,5027.43000,'2026-02-16 08:06:01','2026-02-16 08:06:01','2026-02-16 08:06:01'),(25298,'XAUUSD',5025.29000,5026.78000,'2026-02-16 08:06:16','2026-02-16 08:06:16','2026-02-16 08:06:16'),(25299,'XAUUSD',5025.68000,5027.12000,'2026-02-16 08:06:32','2026-02-16 08:06:32','2026-02-16 08:06:32'),(25300,'XAUUSD',5025.96000,5027.33000,'2026-02-16 08:06:47','2026-02-16 08:06:47','2026-02-16 08:06:47'),(25301,'XAUUSD',5025.97000,5027.39000,'2026-02-16 08:07:02','2026-02-16 08:07:02','2026-02-16 08:07:02'),(25302,'XAUUSD',5025.49000,5026.98000,'2026-02-16 08:07:17','2026-02-16 08:07:17','2026-02-16 08:07:17'),(25303,'XAUUSD',5024.76000,5026.11000,'2026-02-16 08:07:32','2026-02-16 08:07:32','2026-02-16 08:07:32'),(25304,'XAUUSD',5025.23000,5026.71000,'2026-02-16 08:07:47','2026-02-16 08:07:47','2026-02-16 08:07:47'),(25305,'XAUUSD',5023.08000,5024.54000,'2026-02-16 08:08:02','2026-02-16 08:08:02','2026-02-16 08:08:02'),(25306,'XAUUSD',5024.09000,5025.62000,'2026-02-16 08:08:17','2026-02-16 08:08:17','2026-02-16 08:08:17'),(25307,'XAUUSD',5024.90000,5026.45000,'2026-02-16 08:08:32','2026-02-16 08:08:32','2026-02-16 08:08:32'),(25308,'XAUUSD',5024.70000,5026.16000,'2026-02-16 08:08:47','2026-02-16 08:08:47','2026-02-16 08:08:47'),(25309,'XAUUSD',5025.53000,5027.05000,'2026-02-16 08:09:02','2026-02-16 08:09:02','2026-02-16 08:09:02'),(25310,'XAUUSD',5025.79000,5027.23000,'2026-02-16 08:09:17','2026-02-16 08:09:17','2026-02-16 08:09:17'),(25311,'XAUUSD',5024.60000,5026.00000,'2026-02-16 08:09:32','2026-02-16 08:09:32','2026-02-16 08:09:32'),(25312,'XAUUSD',5024.25000,5025.82000,'2026-02-16 08:09:47','2026-02-16 08:09:47','2026-02-16 08:09:47'),(25313,'XAUUSD',5022.77000,5024.29000,'2026-02-16 08:10:02','2026-02-16 08:10:02','2026-02-16 08:10:02'),(25314,'XAUUSD',5023.87000,5025.47000,'2026-02-16 08:10:17','2026-02-16 08:10:17','2026-02-16 08:10:17'),(25315,'XAUUSD',5023.07000,5024.76000,'2026-02-16 08:10:32','2026-02-16 08:10:32','2026-02-16 08:10:32'),(25316,'XAUUSD',5023.09000,5024.69000,'2026-02-16 08:10:47','2026-02-16 08:10:47','2026-02-16 08:10:47'),(25317,'XAUUSD',5023.00000,5024.61000,'2026-02-16 08:11:02','2026-02-16 08:11:02','2026-02-16 08:11:02'),(25318,'XAUUSD',5021.11000,5022.61000,'2026-02-16 08:11:33','2026-02-16 08:11:33','2026-02-16 08:11:33'),(25319,'XAUUSD',5021.76000,5023.28000,'2026-02-16 08:11:48','2026-02-16 08:11:48','2026-02-16 08:11:48'),(25320,'XAUUSD',5021.49000,5023.08000,'2026-02-16 08:12:03','2026-02-16 08:12:03','2026-02-16 08:12:03'),(25321,'XAUUSD',5021.43000,5022.86000,'2026-02-16 08:12:18','2026-02-16 08:12:18','2026-02-16 08:12:18'),(25322,'XAUUSD',5022.98000,5024.69000,'2026-02-16 08:12:33','2026-02-16 08:12:33','2026-02-16 08:12:33'),(25323,'XAUUSD',5021.88000,5023.36000,'2026-02-16 08:12:48','2026-02-16 08:12:48','2026-02-16 08:12:48'),(25324,'XAUUSD',5021.56000,5022.95000,'2026-02-16 08:13:03','2026-02-16 08:13:03','2026-02-16 08:13:03'),(25325,'XAUUSD',5021.75000,5022.81000,'2026-02-16 08:13:18','2026-02-16 08:13:18','2026-02-16 08:13:18'),(25326,'XAUUSD',5021.52000,5022.84000,'2026-02-16 08:13:33','2026-02-16 08:13:33','2026-02-16 08:13:33'),(25327,'XAUUSD',5022.01000,5023.29000,'2026-02-16 08:13:48','2026-02-16 08:13:48','2026-02-16 08:13:48'),(25328,'XAUUSD',5020.51000,5021.75000,'2026-02-16 08:14:03','2026-02-16 08:14:03','2026-02-16 08:14:03'),(25329,'XAUUSD',5020.85000,5021.93000,'2026-02-16 08:14:18','2026-02-16 08:14:18','2026-02-16 08:14:18'),(25330,'XAUUSD',5021.58000,5023.08000,'2026-02-16 08:14:33','2026-02-16 08:14:33','2026-02-16 08:14:33'),(25331,'XAUUSD',5021.95000,5023.18000,'2026-02-16 08:14:48','2026-02-16 08:14:48','2026-02-16 08:14:48'),(25332,'XAUUSD',5022.03000,5023.50000,'2026-02-16 08:15:03','2026-02-16 08:15:03','2026-02-16 08:15:03'),(25333,'XAUUSD',5022.24000,5023.80000,'2026-02-16 08:15:18','2026-02-16 08:15:18','2026-02-16 08:15:18'),(25334,'XAUUSD',5021.50000,5023.20000,'2026-02-16 08:15:33','2026-02-16 08:15:33','2026-02-16 08:15:33'),(25335,'XAUUSD',5022.31000,5023.90000,'2026-02-16 08:15:48','2026-02-16 08:15:48','2026-02-16 08:15:48'),(25336,'XAUUSD',5022.52000,5023.90000,'2026-02-16 08:16:03','2026-02-16 08:16:03','2026-02-16 08:16:03'),(25337,'XAUUSD',5023.42000,5025.00000,'2026-02-16 08:16:18','2026-02-16 08:16:18','2026-02-16 08:16:18'),(25338,'XAUUSD',5023.38000,5024.78000,'2026-02-16 08:16:33','2026-02-16 08:16:33','2026-02-16 08:16:33'),(25339,'XAUUSD',5024.28000,5025.78000,'2026-02-16 08:16:48','2026-02-16 08:16:48','2026-02-16 08:16:48'),(25340,'XAUUSD',5024.95000,5026.40000,'2026-02-16 08:17:03','2026-02-16 08:17:03','2026-02-16 08:17:03'),(25341,'XAUUSD',5024.80000,5026.21000,'2026-02-16 08:17:18','2026-02-16 08:17:18','2026-02-16 08:17:18'),(25342,'XAUUSD',5025.23000,5026.64000,'2026-02-16 08:17:33','2026-02-16 08:17:33','2026-02-16 08:17:33'),(25343,'XAUUSD',5024.71000,5026.10000,'2026-02-16 08:17:48','2026-02-16 08:17:48','2026-02-16 08:17:48'),(25344,'XAUUSD',5024.63000,5026.31000,'2026-02-16 08:18:03','2026-02-16 08:18:03','2026-02-16 08:18:03'),(25345,'XAUUSD',5024.46000,5025.99000,'2026-02-16 08:18:19','2026-02-16 08:18:19','2026-02-16 08:18:19'),(25346,'XAUUSD',5023.80000,5025.55000,'2026-02-16 08:18:34','2026-02-16 08:18:34','2026-02-16 08:18:34'),(25347,'XAUUSD',5023.76000,5025.50000,'2026-02-16 08:18:49','2026-02-16 08:18:49','2026-02-16 08:18:49'),(25348,'XAUUSD',5023.96000,5025.70000,'2026-02-16 08:19:04','2026-02-16 08:19:04','2026-02-16 08:19:04'),(25349,'XAUUSD',5022.96000,5024.49000,'2026-02-16 08:19:19','2026-02-16 08:19:19','2026-02-16 08:19:19'),(25350,'XAUUSD',5023.66000,5025.32000,'2026-02-16 08:19:34','2026-02-16 08:19:34','2026-02-16 08:19:34'),(25351,'XAUUSD',5022.92000,5024.04000,'2026-02-16 08:19:49','2026-02-16 08:19:49','2026-02-16 08:19:49'),(25352,'XAUUSD',5023.38000,5024.99000,'2026-02-16 08:20:04','2026-02-16 08:20:04','2026-02-16 08:20:04'),(25353,'XAUUSD',5023.07000,5024.51000,'2026-02-16 08:20:19','2026-02-16 08:20:19','2026-02-16 08:20:19'),(25354,'XAUUSD',5023.61000,5025.20000,'2026-02-16 08:20:34','2026-02-16 08:20:34','2026-02-16 08:20:34'),(25355,'XAUUSD',5022.90000,5024.36000,'2026-02-16 08:20:49','2026-02-16 08:20:49','2026-02-16 08:20:49'),(25356,'XAUUSD',5022.83000,5024.33000,'2026-02-16 08:21:04','2026-02-16 08:21:04','2026-02-16 08:21:04'),(25357,'XAUUSD',5023.15000,5024.36000,'2026-02-16 08:21:19','2026-02-16 08:21:19','2026-02-16 08:21:19'),(25358,'XAUUSD',5023.58000,5024.86000,'2026-02-16 08:21:34','2026-02-16 08:21:34','2026-02-16 08:21:34'),(25359,'XAUUSD',5023.16000,5024.54000,'2026-02-16 08:21:49','2026-02-16 08:21:49','2026-02-16 08:21:49'),(25360,'XAUUSD',5023.24000,5024.65000,'2026-02-16 08:22:04','2026-02-16 08:22:04','2026-02-16 08:22:04'),(25361,'XAUUSD',5023.15000,5024.54000,'2026-02-16 08:22:19','2026-02-16 08:22:19','2026-02-16 08:22:19'),(25362,'XAUUSD',5023.30000,5024.64000,'2026-02-16 08:22:34','2026-02-16 08:22:34','2026-02-16 08:22:34'),(25363,'XAUUSD',5024.02000,5025.13000,'2026-02-16 08:22:49','2026-02-16 08:22:49','2026-02-16 08:22:49'),(25364,'XAUUSD',5023.97000,5025.42000,'2026-02-16 08:23:04','2026-02-16 08:23:04','2026-02-16 08:23:04'),(25365,'XAUUSD',5024.07000,5025.57000,'2026-02-16 08:23:19','2026-02-16 08:23:19','2026-02-16 08:23:19'),(25366,'XAUUSD',5023.93000,5025.38000,'2026-02-16 08:23:34','2026-02-16 08:23:34','2026-02-16 08:23:34'),(25367,'XAUUSD',5023.40000,5024.83000,'2026-02-16 08:23:49','2026-02-16 08:23:49','2026-02-16 08:23:49'),(25368,'XAUUSD',5023.99000,5025.43000,'2026-02-16 08:24:04','2026-02-16 08:24:04','2026-02-16 08:24:04'),(25369,'XAUUSD',5023.83000,5025.28000,'2026-02-16 08:24:19','2026-02-16 08:24:19','2026-02-16 08:24:19'),(25370,'XAUUSD',5023.20000,5024.62000,'2026-02-16 08:24:34','2026-02-16 08:24:34','2026-02-16 08:24:34'),(25371,'XAUUSD',5023.27000,5024.73000,'2026-02-16 08:24:49','2026-02-16 08:24:49','2026-02-16 08:24:49'),(25372,'XAUUSD',5023.54000,5024.95000,'2026-02-16 08:25:04','2026-02-16 08:25:04','2026-02-16 08:25:04'),(25373,'XAUUSD',5023.43000,5024.91000,'2026-02-16 08:25:19','2026-02-16 08:25:19','2026-02-16 08:25:19'),(25374,'XAUUSD',5023.50000,5024.96000,'2026-02-16 08:25:34','2026-02-16 08:25:34','2026-02-16 08:25:34'),(25375,'XAUUSD',5021.35000,5022.55000,'2026-02-16 08:25:49','2026-02-16 08:25:49','2026-02-16 08:25:49'),(25376,'XAUUSD',5021.39000,5022.77000,'2026-02-16 08:26:04','2026-02-16 08:26:04','2026-02-16 08:26:04'),(25377,'XAUUSD',5021.44000,5022.72000,'2026-02-16 08:26:20','2026-02-16 08:26:20','2026-02-16 08:26:20'),(25378,'XAUUSD',5021.56000,5022.88000,'2026-02-16 08:26:35','2026-02-16 08:26:35','2026-02-16 08:26:35'),(25379,'XAUUSD',5021.39000,5022.73000,'2026-02-16 08:26:50','2026-02-16 08:26:50','2026-02-16 08:26:50'),(25380,'XAUUSD',5020.51000,5021.89000,'2026-02-16 08:27:05','2026-02-16 08:27:05','2026-02-16 08:27:05'),(25381,'XAUUSD',5020.50000,5021.62000,'2026-02-16 08:27:20','2026-02-16 08:27:20','2026-02-16 08:27:20'),(25382,'XAUUSD',5020.18000,5021.52000,'2026-02-16 08:27:35','2026-02-16 08:27:35','2026-02-16 08:27:35'),(25383,'XAUUSD',5020.68000,5021.79000,'2026-02-16 08:27:50','2026-02-16 08:27:50','2026-02-16 08:27:50'),(25384,'XAUUSD',5019.09000,5020.26000,'2026-02-16 08:28:05','2026-02-16 08:28:05','2026-02-16 08:28:05'),(25385,'XAUUSD',5020.12000,5021.39000,'2026-02-16 08:28:20','2026-02-16 08:28:20','2026-02-16 08:28:20'),(25386,'XAUUSD',5019.17000,5020.45000,'2026-02-16 08:28:35','2026-02-16 08:28:35','2026-02-16 08:28:35'),(25387,'XAUUSD',5019.04000,5020.49000,'2026-02-16 08:28:50','2026-02-16 08:28:50','2026-02-16 08:28:50'),(25388,'XAUUSD',5019.42000,5020.79000,'2026-02-16 08:29:05','2026-02-16 08:29:05','2026-02-16 08:29:05'),(25389,'XAUUSD',5018.82000,5020.19000,'2026-02-16 08:29:20','2026-02-16 08:29:20','2026-02-16 08:29:20'),(25390,'XAUUSD',5019.22000,5020.46000,'2026-02-16 08:29:35','2026-02-16 08:29:35','2026-02-16 08:29:35'),(25391,'XAUUSD',5019.07000,5020.49000,'2026-02-16 08:29:50','2026-02-16 08:29:50','2026-02-16 08:29:50'),(25392,'XAUUSD',5020.08000,5021.50000,'2026-02-16 08:30:05','2026-02-16 08:30:05','2026-02-16 08:30:05'),(25393,'XAUUSD',5021.06000,5022.68000,'2026-02-16 08:30:20','2026-02-16 08:30:20','2026-02-16 08:30:20'),(25394,'XAUUSD',5020.76000,5022.41000,'2026-02-16 08:30:35','2026-02-16 08:30:35','2026-02-16 08:30:35'),(25395,'XAUUSD',5020.68000,5022.20000,'2026-02-16 08:30:50','2026-02-16 08:30:50','2026-02-16 08:30:50'),(25396,'XAUUSD',5020.76000,5022.23000,'2026-02-16 08:31:05','2026-02-16 08:31:05','2026-02-16 08:31:05'),(25397,'XAUUSD',5020.72000,5022.33000,'2026-02-16 08:31:20','2026-02-16 08:31:20','2026-02-16 08:31:20'),(25398,'XAUUSD',5020.34000,5021.94000,'2026-02-16 08:31:35','2026-02-16 08:31:35','2026-02-16 08:31:35'),(25399,'XAUUSD',5019.54000,5021.13000,'2026-02-16 08:31:50','2026-02-16 08:31:50','2026-02-16 08:31:50'),(25400,'XAUUSD',5019.98000,5021.49000,'2026-02-16 08:32:05','2026-02-16 08:32:05','2026-02-16 08:32:05'),(25401,'XAUUSD',5020.45000,5021.64000,'2026-02-16 08:32:20','2026-02-16 08:32:20','2026-02-16 08:32:20'),(25402,'XAUUSD',5020.73000,5022.12000,'2026-02-16 08:32:36','2026-02-16 08:32:36','2026-02-16 08:32:36'),(25403,'XAUUSD',5021.02000,5022.59000,'2026-02-16 08:32:51','2026-02-16 08:32:51','2026-02-16 08:32:51'),(25404,'XAUUSD',5018.55000,5020.15000,'2026-02-16 08:33:06','2026-02-16 08:33:06','2026-02-16 08:33:06'),(25405,'XAUUSD',5018.67000,5020.26000,'2026-02-16 08:33:36','2026-02-16 08:33:36','2026-02-16 08:33:36'),(25406,'XAUUSD',5019.58000,5021.04000,'2026-02-16 08:33:51','2026-02-16 08:33:51','2026-02-16 08:33:51'),(25407,'XAUUSD',5020.74000,5022.24000,'2026-02-16 08:34:06','2026-02-16 08:34:06','2026-02-16 08:34:06'),(25408,'XAUUSD',5019.59000,5021.17000,'2026-02-16 08:34:36','2026-02-16 08:34:36','2026-02-16 08:34:36'),(25409,'XAUUSD',5018.80000,5020.32000,'2026-02-16 08:34:51','2026-02-16 08:34:51','2026-02-16 08:34:51'),(25410,'XAUUSD',5017.66000,5019.29000,'2026-02-16 08:35:06','2026-02-16 08:35:06','2026-02-16 08:35:06'),(25411,'XAUUSD',5015.11000,5016.29000,'2026-02-16 08:35:21','2026-02-16 08:35:21','2026-02-16 08:35:21'),(25412,'XAUUSD',5011.38000,5012.91000,'2026-02-16 08:35:36','2026-02-16 08:35:36','2026-02-16 08:35:36'),(25413,'XAUUSD',5010.59000,5012.02000,'2026-02-16 08:35:51','2026-02-16 08:35:51','2026-02-16 08:35:51'),(25414,'XAUUSD',5010.01000,5011.44000,'2026-02-16 08:36:06','2026-02-16 08:36:06','2026-02-16 08:36:06'),(25415,'XAUUSD',5010.42000,5012.02000,'2026-02-16 08:36:21','2026-02-16 08:36:21','2026-02-16 08:36:21'),(25416,'XAUUSD',5010.40000,5011.93000,'2026-02-16 08:36:36','2026-02-16 08:36:36','2026-02-16 08:36:36'),(25417,'XAUUSD',5010.67000,5012.16000,'2026-02-16 08:36:51','2026-02-16 08:36:51','2026-02-16 08:36:51'),(25418,'XAUUSD',5009.69000,5010.50000,'2026-02-16 08:37:06','2026-02-16 08:37:06','2026-02-16 08:37:06'),(25419,'XAUUSD',5002.69000,5004.15000,'2026-02-16 08:37:21','2026-02-16 08:37:21','2026-02-16 08:37:21'),(25420,'XAUUSD',5007.36000,5009.00000,'2026-02-16 08:37:36','2026-02-16 08:37:36','2026-02-16 08:37:36'),(25421,'XAUUSD',5007.39000,5009.13000,'2026-02-16 08:37:51','2026-02-16 08:37:51','2026-02-16 08:37:51'),(25422,'XAUUSD',5007.59000,5009.24000,'2026-02-16 08:38:06','2026-02-16 08:38:06','2026-02-16 08:38:06'),(25423,'XAUUSD',5007.59000,5009.21000,'2026-02-16 08:38:21','2026-02-16 08:38:21','2026-02-16 08:38:21'),(25424,'XAUUSD',5007.04000,5008.64000,'2026-02-16 08:38:36','2026-02-16 08:38:36','2026-02-16 08:38:36'),(25425,'XAUUSD',5006.66000,5008.22000,'2026-02-16 08:38:51','2026-02-16 08:38:51','2026-02-16 08:38:51'),(25426,'XAUUSD',5007.08000,5008.63000,'2026-02-16 08:39:06','2026-02-16 08:39:06','2026-02-16 08:39:06'),(25427,'XAUUSD',5006.69000,5008.14000,'2026-02-16 08:39:21','2026-02-16 08:39:21','2026-02-16 08:39:21'),(25428,'XAUUSD',5006.74000,5008.19000,'2026-02-16 08:39:36','2026-02-16 08:39:36','2026-02-16 08:39:36'),(25429,'XAUUSD',5009.09000,5010.45000,'2026-02-16 08:39:51','2026-02-16 08:39:51','2026-02-16 08:39:51'),(25430,'XAUUSD',5007.26000,5008.86000,'2026-02-16 08:40:06','2026-02-16 08:40:06','2026-02-16 08:40:06'),(25431,'XAUUSD',5007.83000,5009.48000,'2026-02-16 08:40:21','2026-02-16 08:40:21','2026-02-16 08:40:21'),(25432,'XAUUSD',5007.33000,5008.85000,'2026-02-16 08:40:36','2026-02-16 08:40:36','2026-02-16 08:40:36'),(25433,'XAUUSD',5009.28000,5010.60000,'2026-02-16 08:40:51','2026-02-16 08:40:51','2026-02-16 08:40:51'),(25434,'XAUUSD',5008.09000,5009.46000,'2026-02-16 08:41:07','2026-02-16 08:41:07','2026-02-16 08:41:07'),(25435,'XAUUSD',5005.36000,5006.78000,'2026-02-16 08:41:22','2026-02-16 08:41:22','2026-02-16 08:41:22'),(25436,'XAUUSD',5004.30000,5005.50000,'2026-02-16 08:41:37','2026-02-16 08:41:37','2026-02-16 08:41:37'),(25437,'XAUUSD',5004.26000,5005.75000,'2026-02-16 08:41:52','2026-02-16 08:41:52','2026-02-16 08:41:52'),(25438,'XAUUSD',5004.47000,5005.83000,'2026-02-16 08:42:07','2026-02-16 08:42:07','2026-02-16 08:42:07'),(25439,'XAUUSD',5005.83000,5007.58000,'2026-02-16 08:42:22','2026-02-16 08:42:22','2026-02-16 08:42:22'),(25440,'XAUUSD',5004.74000,5006.23000,'2026-02-16 08:42:37','2026-02-16 08:42:37','2026-02-16 08:42:37'),(25441,'XAUUSD',5004.34000,5005.70000,'2026-02-16 08:42:52','2026-02-16 08:42:52','2026-02-16 08:42:52'),(25442,'XAUUSD',5004.54000,5005.96000,'2026-02-16 08:43:07','2026-02-16 08:43:07','2026-02-16 08:43:07'),(25443,'XAUUSD',5004.04000,5005.51000,'2026-02-16 08:43:22','2026-02-16 08:43:22','2026-02-16 08:43:22'),(25444,'XAUUSD',5003.75000,5005.16000,'2026-02-16 08:43:37','2026-02-16 08:43:37','2026-02-16 08:43:37'),(25445,'XAUUSD',5003.71000,5005.18000,'2026-02-16 08:43:52','2026-02-16 08:43:52','2026-02-16 08:43:52'),(25446,'XAUUSD',5004.18000,5005.50000,'2026-02-16 08:44:07','2026-02-16 08:44:07','2026-02-16 08:44:07'),(25447,'XAUUSD',5003.65000,5005.09000,'2026-02-16 08:44:22','2026-02-16 08:44:22','2026-02-16 08:44:22'),(25448,'XAUUSD',5003.17000,5004.60000,'2026-02-16 08:44:37','2026-02-16 08:44:37','2026-02-16 08:44:37'),(25449,'XAUUSD',5002.00000,5003.40000,'2026-02-16 08:44:52','2026-02-16 08:44:52','2026-02-16 08:44:52'),(25450,'XAUUSD',5001.80000,5003.27000,'2026-02-16 08:45:07','2026-02-16 08:45:07','2026-02-16 08:45:07'),(25451,'XAUUSD',4999.31000,5000.66000,'2026-02-16 08:45:22','2026-02-16 08:45:22','2026-02-16 08:45:22'),(25452,'XAUUSD',5000.22000,5001.93000,'2026-02-16 08:45:37','2026-02-16 08:45:37','2026-02-16 08:45:37'),(25453,'XAUUSD',5000.70000,5002.43000,'2026-02-16 08:45:52','2026-02-16 08:45:52','2026-02-16 08:45:52'),(25454,'XAUUSD',5000.12000,5001.67000,'2026-02-16 08:46:07','2026-02-16 08:46:07','2026-02-16 08:46:07'),(25455,'XAUUSD',4999.44000,5001.05000,'2026-02-16 08:46:22','2026-02-16 08:46:22','2026-02-16 08:46:22'),(25456,'XAUUSD',5001.11000,5002.70000,'2026-02-16 08:46:37','2026-02-16 08:46:37','2026-02-16 08:46:37'),(25457,'XAUUSD',5000.21000,5001.71000,'2026-02-16 08:46:52','2026-02-16 08:46:52','2026-02-16 08:46:52'),(25458,'XAUUSD',4999.03000,5000.63000,'2026-02-16 08:47:07','2026-02-16 08:47:07','2026-02-16 08:47:07'),(25459,'XAUUSD',4999.25000,5000.80000,'2026-02-16 08:47:22','2026-02-16 08:47:22','2026-02-16 08:47:22'),(25460,'XAUUSD',4997.99000,4999.55000,'2026-02-16 08:47:37','2026-02-16 08:47:37','2026-02-16 08:47:37'),(25461,'XAUUSD',4998.05000,4999.57000,'2026-02-16 08:47:52','2026-02-16 08:47:52','2026-02-16 08:47:52'),(25462,'XAUUSD',4998.79000,5000.38000,'2026-02-16 08:48:07','2026-02-16 08:48:07','2026-02-16 08:48:07'),(25463,'XAUUSD',4995.57000,4997.00000,'2026-02-16 08:48:22','2026-02-16 08:48:22','2026-02-16 08:48:22'),(25464,'XAUUSD',4996.55000,4997.88000,'2026-02-16 08:48:37','2026-02-16 08:48:37','2026-02-16 08:48:37'),(25465,'XAUUSD',4997.52000,4998.97000,'2026-02-16 08:48:52','2026-02-16 08:48:52','2026-02-16 08:48:52'),(25466,'XAUUSD',4998.55000,5000.08000,'2026-02-16 08:49:07','2026-02-16 08:49:07','2026-02-16 08:49:07'),(25467,'XAUUSD',4999.08000,5000.53000,'2026-02-16 08:49:22','2026-02-16 08:49:22','2026-02-16 08:49:22'),(25468,'XAUUSD',4999.91000,5000.94000,'2026-02-16 08:49:38','2026-02-16 08:49:38','2026-02-16 08:49:38'),(25469,'XAUUSD',4999.56000,5001.12000,'2026-02-16 08:49:53','2026-02-16 08:49:53','2026-02-16 08:49:53'),(25470,'XAUUSD',4998.25000,4999.79000,'2026-02-16 08:50:08','2026-02-16 08:50:08','2026-02-16 08:50:08'),(25471,'XAUUSD',4996.55000,4997.76000,'2026-02-16 08:50:23','2026-02-16 08:50:23','2026-02-16 08:50:23'),(25472,'XAUUSD',4995.55000,4997.03000,'2026-02-16 08:50:38','2026-02-16 08:50:38','2026-02-16 08:50:38'),(25473,'XAUUSD',4995.03000,4996.44000,'2026-02-16 08:50:53','2026-02-16 08:50:53','2026-02-16 08:50:53'),(25474,'XAUUSD',4992.31000,4993.74000,'2026-02-16 08:51:08','2026-02-16 08:51:08','2026-02-16 08:51:08'),(25475,'XAUUSD',4992.82000,4994.32000,'2026-02-16 08:51:23','2026-02-16 08:51:23','2026-02-16 08:51:23'),(25476,'XAUUSD',4992.94000,4994.26000,'2026-02-16 08:51:38','2026-02-16 08:51:38','2026-02-16 08:51:38'),(25477,'XAUUSD',4993.11000,4994.52000,'2026-02-16 08:51:53','2026-02-16 08:51:53','2026-02-16 08:51:53'),(25478,'XAUUSD',4995.36000,4996.73000,'2026-02-16 08:52:08','2026-02-16 08:52:08','2026-02-16 08:52:08'),(25479,'XAUUSD',4994.73000,4996.22000,'2026-02-16 08:52:23','2026-02-16 08:52:23','2026-02-16 08:52:23'),(25480,'XAUUSD',4993.95000,4995.31000,'2026-02-16 08:52:38','2026-02-16 08:52:38','2026-02-16 08:52:38'),(25481,'XAUUSD',4996.07000,4997.27000,'2026-02-16 08:52:53','2026-02-16 08:52:53','2026-02-16 08:52:53'),(25482,'XAUUSD',4995.89000,4997.03000,'2026-02-16 08:53:08','2026-02-16 08:53:08','2026-02-16 08:53:08'),(25483,'XAUUSD',4995.39000,4996.73000,'2026-02-16 08:53:23','2026-02-16 08:53:23','2026-02-16 08:53:23'),(25484,'XAUUSD',4994.49000,4996.04000,'2026-02-16 08:53:38','2026-02-16 08:53:38','2026-02-16 08:53:38'),(25485,'XAUUSD',4994.49000,4995.76000,'2026-02-16 08:53:53','2026-02-16 08:53:53','2026-02-16 08:53:53'),(25486,'XAUUSD',4994.09000,4995.11000,'2026-02-16 08:54:08','2026-02-16 08:54:08','2026-02-16 08:54:08'),(25487,'XAUUSD',4993.79000,4995.15000,'2026-02-16 08:54:23','2026-02-16 08:54:23','2026-02-16 08:54:23'),(25488,'XAUUSD',4994.29000,4995.43000,'2026-02-16 08:54:38','2026-02-16 08:54:38','2026-02-16 08:54:38'),(25489,'XAUUSD',4993.87000,4994.83000,'2026-02-16 08:54:53','2026-02-16 08:54:53','2026-02-16 08:54:53'),(25490,'XAUUSD',4993.87000,4995.11000,'2026-02-16 08:55:08','2026-02-16 08:55:08','2026-02-16 08:55:08'),(25491,'XAUUSD',4993.57000,4995.04000,'2026-02-16 08:55:23','2026-02-16 08:55:23','2026-02-16 08:55:23'),(25492,'XAUUSD',4994.17000,4995.32000,'2026-02-16 08:55:38','2026-02-16 08:55:38','2026-02-16 08:55:38'),(25493,'XAUUSD',4994.68000,4995.92000,'2026-02-16 08:55:53','2026-02-16 08:55:53','2026-02-16 08:55:53'),(25494,'XAUUSD',4994.83000,4996.26000,'2026-02-16 08:56:08','2026-02-16 08:56:08','2026-02-16 08:56:08'),(25495,'XAUUSD',4995.23000,4996.74000,'2026-02-16 08:56:23','2026-02-16 08:56:23','2026-02-16 08:56:23'),(25496,'XAUUSD',4996.23000,4997.29000,'2026-02-16 08:56:38','2026-02-16 08:56:38','2026-02-16 08:56:38'),(25497,'XAUUSD',4995.13000,4996.62000,'2026-02-16 08:56:54','2026-02-16 08:56:54','2026-02-16 08:56:54'),(25498,'XAUUSD',4993.71000,4994.89000,'2026-02-16 08:57:24','2026-02-16 08:57:24','2026-02-16 08:57:24'),(25499,'XAUUSD',4993.79000,4995.24000,'2026-02-16 08:57:39','2026-02-16 08:57:39','2026-02-16 08:57:39'),(25500,'XAUUSD',4993.69000,4995.08000,'2026-02-16 08:57:54','2026-02-16 08:57:54','2026-02-16 08:57:54'),(25501,'XAUUSD',4993.69000,4994.90000,'2026-02-16 08:58:09','2026-02-16 08:58:09','2026-02-16 08:58:09'),(25502,'XAUUSD',4993.69000,4995.00000,'2026-02-16 08:58:24','2026-02-16 08:58:24','2026-02-16 08:58:24'),(25503,'XAUUSD',4992.87000,4994.20000,'2026-02-16 08:58:39','2026-02-16 08:58:39','2026-02-16 08:58:39'),(25504,'XAUUSD',4993.48000,4994.85000,'2026-02-16 08:58:54','2026-02-16 08:58:54','2026-02-16 08:58:54'),(25505,'XAUUSD',4993.87000,4995.20000,'2026-02-16 08:59:09','2026-02-16 08:59:09','2026-02-16 08:59:09'),(25506,'XAUUSD',4994.97000,4996.22000,'2026-02-16 08:59:24','2026-02-16 08:59:24','2026-02-16 08:59:24'),(25507,'XAUUSD',4993.49000,4994.88000,'2026-02-16 08:59:39','2026-02-16 08:59:39','2026-02-16 08:59:39'),(25508,'XAUUSD',4995.05000,4996.71000,'2026-02-16 08:59:54','2026-02-16 08:59:54','2026-02-16 08:59:54'),(25509,'XAUUSD',4993.43000,4995.07000,'2026-02-16 09:00:09','2026-02-16 09:00:09','2026-02-16 09:00:09'),(25510,'XAUUSD',4991.33000,4992.84000,'2026-02-16 09:00:24','2026-02-16 09:00:24','2026-02-16 09:00:24'),(25511,'XAUUSD',4992.68000,4994.25000,'2026-02-16 09:00:39','2026-02-16 09:00:39','2026-02-16 09:00:39'),(25512,'XAUUSD',4992.68000,4994.20000,'2026-02-16 09:00:54','2026-02-16 09:00:54','2026-02-16 09:00:54'),(25513,'XAUUSD',4992.68000,4994.33000,'2026-02-16 09:01:09','2026-02-16 09:01:09','2026-02-16 09:01:09'),(25514,'XAUUSD',4992.38000,4993.99000,'2026-02-16 09:01:24','2026-02-16 09:01:24','2026-02-16 09:01:24'),(25515,'XAUUSD',4991.19000,4992.92000,'2026-02-16 09:01:39','2026-02-16 09:01:39','2026-02-16 09:01:39'),(25516,'XAUUSD',4990.64000,4992.30000,'2026-02-16 09:01:54','2026-02-16 09:01:54','2026-02-16 09:01:54'),(25517,'XAUUSD',4990.76000,4992.42000,'2026-02-16 09:02:09','2026-02-16 09:02:09','2026-02-16 09:02:09'),(25518,'XAUUSD',4990.21000,4991.74000,'2026-02-16 09:02:24','2026-02-16 09:02:24','2026-02-16 09:02:24'),(25519,'XAUUSD',4991.88000,4993.45000,'2026-02-16 09:02:39','2026-02-16 09:02:39','2026-02-16 09:02:39'),(25520,'XAUUSD',4993.51000,4995.01000,'2026-02-16 09:02:54','2026-02-16 09:02:54','2026-02-16 09:02:54'),(25521,'XAUUSD',4994.58000,4996.10000,'2026-02-16 09:03:09','2026-02-16 09:03:09','2026-02-16 09:03:09'),(25522,'XAUUSD',4995.43000,4996.96000,'2026-02-16 09:03:24','2026-02-16 09:03:24','2026-02-16 09:03:24'),(25523,'XAUUSD',4995.90000,4997.38000,'2026-02-16 09:03:39','2026-02-16 09:03:39','2026-02-16 09:03:39'),(25524,'XAUUSD',4996.22000,4997.78000,'2026-02-16 09:03:54','2026-02-16 09:03:54','2026-02-16 09:03:54'),(25525,'XAUUSD',4996.97000,4998.13000,'2026-02-16 09:04:09','2026-02-16 09:04:09','2026-02-16 09:04:09'),(25526,'XAUUSD',4997.25000,4998.75000,'2026-02-16 09:04:24','2026-02-16 09:04:24','2026-02-16 09:04:24'),(25527,'XAUUSD',4997.25000,4998.93000,'2026-02-16 09:04:39','2026-02-16 09:04:39','2026-02-16 09:04:39'),(25528,'XAUUSD',4997.34000,4998.98000,'2026-02-16 09:04:54','2026-02-16 09:04:54','2026-02-16 09:04:54'),(25529,'XAUUSD',4995.72000,4997.47000,'2026-02-16 09:05:09','2026-02-16 09:05:09','2026-02-16 09:05:09'),(25530,'XAUUSD',4996.89000,4998.49000,'2026-02-16 09:05:24','2026-02-16 09:05:24','2026-02-16 09:05:24'),(25531,'XAUUSD',4996.28000,4997.79000,'2026-02-16 09:05:39','2026-02-16 09:05:39','2026-02-16 09:05:39'),(25532,'XAUUSD',4997.85000,4999.49000,'2026-02-16 09:05:55','2026-02-16 09:05:55','2026-02-16 09:05:55'),(25533,'XAUUSD',4998.38000,4999.96000,'2026-02-16 09:06:10','2026-02-16 09:06:10','2026-02-16 09:06:10'),(25534,'XAUUSD',4998.54000,5000.06000,'2026-02-16 09:06:25','2026-02-16 09:06:25','2026-02-16 09:06:25'),(25535,'XAUUSD',4998.23000,4999.91000,'2026-02-16 09:06:40','2026-02-16 09:06:40','2026-02-16 09:06:40'),(25536,'XAUUSD',4998.95000,5000.50000,'2026-02-16 09:06:55','2026-02-16 09:06:55','2026-02-16 09:06:55'),(25537,'XAUUSD',4998.13000,4999.54000,'2026-02-16 09:07:10','2026-02-16 09:07:10','2026-02-16 09:07:10'),(25538,'XAUUSD',4996.81000,4998.32000,'2026-02-16 09:07:25','2026-02-16 09:07:25','2026-02-16 09:07:25'),(25539,'XAUUSD',4995.81000,4997.14000,'2026-02-16 09:07:40','2026-02-16 09:07:40','2026-02-16 09:07:40'),(25540,'XAUUSD',4996.06000,4997.64000,'2026-02-16 09:07:55','2026-02-16 09:07:55','2026-02-16 09:07:55'),(25541,'XAUUSD',4995.75000,4997.29000,'2026-02-16 09:08:10','2026-02-16 09:08:10','2026-02-16 09:08:10'),(25542,'XAUUSD',4994.09000,4995.77000,'2026-02-16 09:08:25','2026-02-16 09:08:25','2026-02-16 09:08:25'),(25543,'XAUUSD',4993.34000,4994.78000,'2026-02-16 09:08:40','2026-02-16 09:08:40','2026-02-16 09:08:40'),(25544,'XAUUSD',4992.91000,4994.32000,'2026-02-16 09:08:55','2026-02-16 09:08:55','2026-02-16 09:08:55'),(25545,'XAUUSD',4991.89000,4993.28000,'2026-02-16 09:09:10','2026-02-16 09:09:10','2026-02-16 09:09:10'),(25546,'XAUUSD',4988.55000,4990.18000,'2026-02-16 09:09:25','2026-02-16 09:09:25','2026-02-16 09:09:25'),(25547,'XAUUSD',4990.78000,4992.66000,'2026-02-16 09:09:40','2026-02-16 09:09:40','2026-02-16 09:09:40'),(25548,'XAUUSD',4990.34000,4992.21000,'2026-02-16 09:09:55','2026-02-16 09:09:55','2026-02-16 09:09:55'),(25549,'XAUUSD',4990.95000,4992.49000,'2026-02-16 09:10:10','2026-02-16 09:10:10','2026-02-16 09:10:10'),(25550,'XAUUSD',4990.79000,4992.50000,'2026-02-16 09:10:25','2026-02-16 09:10:25','2026-02-16 09:10:25'),(25551,'XAUUSD',4991.71000,4993.39000,'2026-02-16 09:10:40','2026-02-16 09:10:40','2026-02-16 09:10:40'),(25552,'XAUUSD',4993.12000,4994.86000,'2026-02-16 09:10:55','2026-02-16 09:10:55','2026-02-16 09:10:55'),(25553,'XAUUSD',4994.44000,4995.96000,'2026-02-16 09:11:10','2026-02-16 09:11:10','2026-02-16 09:11:10'),(25554,'XAUUSD',4994.61000,4995.91000,'2026-02-16 09:11:25','2026-02-16 09:11:25','2026-02-16 09:11:25'),(25555,'XAUUSD',4994.65000,4996.13000,'2026-02-16 09:11:40','2026-02-16 09:11:40','2026-02-16 09:11:40'),(25556,'XAUUSD',4994.29000,4995.68000,'2026-02-16 09:11:55','2026-02-16 09:11:55','2026-02-16 09:11:55'),(25557,'XAUUSD',4994.44000,4995.69000,'2026-02-16 09:12:10','2026-02-16 09:12:10','2026-02-16 09:12:10'),(25558,'XAUUSD',4994.62000,4996.01000,'2026-02-16 09:12:25','2026-02-16 09:12:25','2026-02-16 09:12:25'),(25559,'XAUUSD',4994.12000,4995.61000,'2026-02-16 09:12:40','2026-02-16 09:12:40','2026-02-16 09:12:40'),(25560,'XAUUSD',4995.27000,4996.96000,'2026-02-16 09:12:55','2026-02-16 09:12:55','2026-02-16 09:12:55'),(25561,'XAUUSD',4993.27000,4994.81000,'2026-02-16 09:13:10','2026-02-16 09:13:10','2026-02-16 09:13:10'),(25562,'XAUUSD',4993.07000,4994.78000,'2026-02-16 09:13:25','2026-02-16 09:13:25','2026-02-16 09:13:25'),(25563,'XAUUSD',4993.67000,4995.07000,'2026-02-16 09:13:41','2026-02-16 09:13:41','2026-02-16 09:13:41'),(25564,'XAUUSD',4993.57000,4995.02000,'2026-02-16 09:13:56','2026-02-16 09:13:56','2026-02-16 09:13:56'),(25565,'XAUUSD',4994.84000,4996.49000,'2026-02-16 09:14:11','2026-02-16 09:14:11','2026-02-16 09:14:11'),(25566,'XAUUSD',4995.60000,4997.34000,'2026-02-16 09:14:26','2026-02-16 09:14:26','2026-02-16 09:14:26'),(25567,'XAUUSD',4995.82000,4997.55000,'2026-02-16 09:14:41','2026-02-16 09:14:41','2026-02-16 09:14:41'),(25568,'XAUUSD',4996.93000,4998.67000,'2026-02-16 09:14:56','2026-02-16 09:14:56','2026-02-16 09:14:56'),(25569,'XAUUSD',4996.65000,4998.26000,'2026-02-16 09:15:11','2026-02-16 09:15:11','2026-02-16 09:15:11'),(25570,'XAUUSD',4996.17000,4997.82000,'2026-02-16 09:15:26','2026-02-16 09:15:26','2026-02-16 09:15:26'),(25571,'XAUUSD',4996.02000,4997.71000,'2026-02-16 09:15:56','2026-02-16 09:15:56','2026-02-16 09:15:56'),(25572,'XAUUSD',4995.80000,4997.49000,'2026-02-16 09:16:11','2026-02-16 09:16:11','2026-02-16 09:16:11'),(25573,'XAUUSD',4996.13000,4997.80000,'2026-02-16 09:16:26','2026-02-16 09:16:26','2026-02-16 09:16:26'),(25574,'XAUUSD',4995.32000,4997.04000,'2026-02-16 09:16:41','2026-02-16 09:16:41','2026-02-16 09:16:41'),(25575,'XAUUSD',4995.85000,4997.59000,'2026-02-16 09:16:56','2026-02-16 09:16:56','2026-02-16 09:16:56'),(25576,'XAUUSD',4996.39000,4998.07000,'2026-02-16 09:17:11','2026-02-16 09:17:11','2026-02-16 09:17:11'),(25577,'XAUUSD',4996.89000,4998.63000,'2026-02-16 09:17:26','2026-02-16 09:17:26','2026-02-16 09:17:26'),(25578,'XAUUSD',4996.02000,4997.89000,'2026-02-16 09:17:41','2026-02-16 09:17:41','2026-02-16 09:17:41'),(25579,'XAUUSD',4996.03000,4997.79000,'2026-02-16 09:17:56','2026-02-16 09:17:56','2026-02-16 09:17:56'),(25580,'XAUUSD',4995.91000,4997.80000,'2026-02-16 09:18:11','2026-02-16 09:18:11','2026-02-16 09:18:11'),(25581,'XAUUSD',4996.23000,4997.92000,'2026-02-16 09:18:26','2026-02-16 09:18:26','2026-02-16 09:18:26'),(25582,'XAUUSD',4996.92000,4998.53000,'2026-02-16 09:18:41','2026-02-16 09:18:41','2026-02-16 09:18:41'),(25583,'XAUUSD',4997.03000,4998.76000,'2026-02-16 09:18:56','2026-02-16 09:18:56','2026-02-16 09:18:56'),(25584,'XAUUSD',4997.25000,4998.86000,'2026-02-16 09:19:11','2026-02-16 09:19:11','2026-02-16 09:19:11'),(25585,'XAUUSD',4997.68000,4999.19000,'2026-02-16 09:19:26','2026-02-16 09:19:26','2026-02-16 09:19:26'),(25586,'XAUUSD',4996.67000,4998.33000,'2026-02-16 09:19:41','2026-02-16 09:19:41','2026-02-16 09:19:41'),(25587,'XAUUSD',4996.90000,4998.52000,'2026-02-16 09:19:56','2026-02-16 09:19:56','2026-02-16 09:19:56'),(25588,'XAUUSD',4996.67000,4998.41000,'2026-02-16 09:20:11','2026-02-16 09:20:11','2026-02-16 09:20:11'),(25589,'XAUUSD',4995.88000,4997.61000,'2026-02-16 09:20:26','2026-02-16 09:20:26','2026-02-16 09:20:26'),(25590,'XAUUSD',4994.19000,4995.91000,'2026-02-16 09:20:42','2026-02-16 09:20:42','2026-02-16 09:20:42'),(25591,'XAUUSD',4994.16000,4995.76000,'2026-02-16 09:20:57','2026-02-16 09:20:57','2026-02-16 09:20:57'),(25592,'XAUUSD',4994.31000,4995.84000,'2026-02-16 09:21:12','2026-02-16 09:21:12','2026-02-16 09:21:12'),(25593,'XAUUSD',4993.83000,4995.27000,'2026-02-16 09:21:27','2026-02-16 09:21:27','2026-02-16 09:21:27'),(25594,'XAUUSD',4995.14000,4996.67000,'2026-02-16 09:21:42','2026-02-16 09:21:42','2026-02-16 09:21:42'),(25595,'XAUUSD',4995.42000,4996.91000,'2026-02-16 09:21:57','2026-02-16 09:21:57','2026-02-16 09:21:57'),(25596,'XAUUSD',4995.28000,4996.69000,'2026-02-16 09:22:12','2026-02-16 09:22:12','2026-02-16 09:22:12'),(25597,'XAUUSD',4995.49000,4996.88000,'2026-02-16 09:22:27','2026-02-16 09:22:27','2026-02-16 09:22:27'),(25598,'XAUUSD',4994.77000,4996.09000,'2026-02-16 09:22:42','2026-02-16 09:22:42','2026-02-16 09:22:42'),(25599,'XAUUSD',4995.03000,4996.09000,'2026-02-16 09:22:57','2026-02-16 09:22:57','2026-02-16 09:22:57'),(25600,'XAUUSD',4995.11000,4996.68000,'2026-02-16 09:23:12','2026-02-16 09:23:12','2026-02-16 09:23:12'),(25601,'XAUUSD',4995.43000,4996.92000,'2026-02-16 09:23:27','2026-02-16 09:23:27','2026-02-16 09:23:27'),(25602,'XAUUSD',4995.84000,4997.07000,'2026-02-16 09:23:42','2026-02-16 09:23:42','2026-02-16 09:23:42'),(25603,'XAUUSD',4995.57000,4996.88000,'2026-02-16 09:23:57','2026-02-16 09:23:57','2026-02-16 09:23:57'),(25604,'XAUUSD',4995.74000,4997.09000,'2026-02-16 09:24:12','2026-02-16 09:24:12','2026-02-16 09:24:12'),(25605,'XAUUSD',4996.33000,4997.76000,'2026-02-16 09:24:27','2026-02-16 09:24:27','2026-02-16 09:24:27'),(25606,'XAUUSD',4996.40000,4997.76000,'2026-02-16 09:24:42','2026-02-16 09:24:42','2026-02-16 09:24:42'),(25607,'XAUUSD',4996.33000,4997.74000,'2026-02-16 09:24:57','2026-02-16 09:24:57','2026-02-16 09:24:57'),(25608,'XAUUSD',4996.39000,4997.69000,'2026-02-16 09:25:12','2026-02-16 09:25:12','2026-02-16 09:25:12'),(25609,'XAUUSD',4996.26000,4997.58000,'2026-02-16 09:25:27','2026-02-16 09:25:27','2026-02-16 09:25:27'),(25610,'XAUUSD',4996.13000,4997.16000,'2026-02-16 09:25:42','2026-02-16 09:25:42','2026-02-16 09:25:42'),(25611,'XAUUSD',4996.76000,4998.18000,'2026-02-16 09:25:57','2026-02-16 09:25:57','2026-02-16 09:25:57'),(25612,'XAUUSD',4996.37000,4997.84000,'2026-02-16 09:26:12','2026-02-16 09:26:12','2026-02-16 09:26:12'),(25613,'XAUUSD',4997.36000,4998.88000,'2026-02-16 09:26:27','2026-02-16 09:26:27','2026-02-16 09:26:27'),(25614,'XAUUSD',4997.06000,4998.64000,'2026-02-16 09:26:42','2026-02-16 09:26:42','2026-02-16 09:26:42'),(25615,'XAUUSD',4997.14000,4998.72000,'2026-02-16 09:26:57','2026-02-16 09:26:57','2026-02-16 09:26:57'),(25616,'XAUUSD',4997.36000,4998.80000,'2026-02-16 09:27:12','2026-02-16 09:27:12','2026-02-16 09:27:12'),(25617,'XAUUSD',4996.56000,4997.93000,'2026-02-16 09:27:27','2026-02-16 09:27:27','2026-02-16 09:27:27'),(25618,'XAUUSD',4995.74000,4997.14000,'2026-02-16 09:27:42','2026-02-16 09:27:42','2026-02-16 09:27:42'),(25619,'XAUUSD',4994.94000,4996.37000,'2026-02-16 09:27:57','2026-02-16 09:27:57','2026-02-16 09:27:57'),(25620,'XAUUSD',4994.94000,4996.42000,'2026-02-16 09:28:12','2026-02-16 09:28:12','2026-02-16 09:28:12'),(25621,'XAUUSD',4996.41000,4997.78000,'2026-02-16 09:28:27','2026-02-16 09:28:27','2026-02-16 09:28:27'),(25622,'XAUUSD',4995.73000,4997.10000,'2026-02-16 09:28:42','2026-02-16 09:28:42','2026-02-16 09:28:42'),(25623,'XAUUSD',4994.99000,4996.38000,'2026-02-16 09:28:57','2026-02-16 09:28:57','2026-02-16 09:28:57'),(25624,'XAUUSD',4994.29000,4995.62000,'2026-02-16 09:29:12','2026-02-16 09:29:12','2026-02-16 09:29:12'),(25625,'XAUUSD',4994.40000,4995.89000,'2026-02-16 09:29:27','2026-02-16 09:29:27','2026-02-16 09:29:27'),(25626,'XAUUSD',4994.50000,4995.93000,'2026-02-16 09:29:42','2026-02-16 09:29:42','2026-02-16 09:29:42'),(25627,'XAUUSD',4994.29000,4995.74000,'2026-02-16 09:29:57','2026-02-16 09:29:57','2026-02-16 09:29:57'),(25628,'XAUUSD',4994.56000,4996.00000,'2026-02-16 09:30:12','2026-02-16 09:30:12','2026-02-16 09:30:12'),(25629,'XAUUSD',4995.69000,4997.31000,'2026-02-16 09:30:28','2026-02-16 09:30:28','2026-02-16 09:30:28'),(25630,'XAUUSD',4995.58000,4996.98000,'2026-02-16 09:30:43','2026-02-16 09:30:43','2026-02-16 09:30:43'),(25631,'XAUUSD',4994.22000,4995.75000,'2026-02-16 09:30:58','2026-02-16 09:30:58','2026-02-16 09:30:58'),(25632,'XAUUSD',4994.37000,4995.97000,'2026-02-16 09:31:13','2026-02-16 09:31:13','2026-02-16 09:31:13'),(25633,'XAUUSD',4994.05000,4995.58000,'2026-02-16 09:31:28','2026-02-16 09:31:28','2026-02-16 09:31:28'),(25634,'XAUUSD',4993.22000,4994.87000,'2026-02-16 09:31:43','2026-02-16 09:31:43','2026-02-16 09:31:43'),(25635,'XAUUSD',4993.94000,4995.35000,'2026-02-16 09:31:58','2026-02-16 09:31:58','2026-02-16 09:31:58'),(25636,'XAUUSD',4994.97000,4996.50000,'2026-02-16 09:32:13','2026-02-16 09:32:13','2026-02-16 09:32:13'),(25637,'XAUUSD',4994.98000,4996.34000,'2026-02-16 09:32:28','2026-02-16 09:32:28','2026-02-16 09:32:28'),(25638,'XAUUSD',4995.11000,4996.64000,'2026-02-16 09:32:43','2026-02-16 09:32:43','2026-02-16 09:32:43'),(25639,'XAUUSD',4995.36000,4996.73000,'2026-02-16 09:32:58','2026-02-16 09:32:58','2026-02-16 09:32:58'),(25640,'XAUUSD',4994.19000,4995.36000,'2026-02-16 09:33:13','2026-02-16 09:33:13','2026-02-16 09:33:13'),(25641,'XAUUSD',4994.58000,4995.74000,'2026-02-16 09:33:28','2026-02-16 09:33:28','2026-02-16 09:33:28'),(25642,'XAUUSD',4994.49000,4995.84000,'2026-02-16 09:33:43','2026-02-16 09:33:43','2026-02-16 09:33:43'),(25643,'XAUUSD',4994.24000,4995.74000,'2026-02-16 09:33:58','2026-02-16 09:33:58','2026-02-16 09:33:58'),(25644,'XAUUSD',4993.99000,4995.44000,'2026-02-16 09:34:13','2026-02-16 09:34:13','2026-02-16 09:34:13'),(25645,'XAUUSD',4994.39000,4995.88000,'2026-02-16 09:34:28','2026-02-16 09:34:28','2026-02-16 09:34:28'),(25646,'XAUUSD',4994.44000,4995.83000,'2026-02-16 09:34:43','2026-02-16 09:34:43','2026-02-16 09:34:43'),(25647,'XAUUSD',4994.34000,4995.83000,'2026-02-16 09:34:58','2026-02-16 09:34:58','2026-02-16 09:34:58'),(25648,'XAUUSD',4994.34000,4995.91000,'2026-02-16 09:35:13','2026-02-16 09:35:13','2026-02-16 09:35:13'),(25649,'XAUUSD',4994.19000,4995.72000,'2026-02-16 09:35:28','2026-02-16 09:35:28','2026-02-16 09:35:28'),(25650,'XAUUSD',4994.80000,4996.11000,'2026-02-16 09:35:43','2026-02-16 09:35:43','2026-02-16 09:35:43'),(25651,'XAUUSD',4995.11000,4996.44000,'2026-02-16 09:35:58','2026-02-16 09:35:58','2026-02-16 09:35:58'),(25652,'XAUUSD',4994.29000,4995.70000,'2026-02-16 09:36:13','2026-02-16 09:36:13','2026-02-16 09:36:13'),(25653,'XAUUSD',4993.09000,4994.48000,'2026-02-16 09:36:28','2026-02-16 09:36:28','2026-02-16 09:36:28'),(25654,'XAUUSD',4992.79000,4994.33000,'2026-02-16 09:36:43','2026-02-16 09:36:43','2026-02-16 09:36:43'),(25655,'XAUUSD',4992.64000,4993.90000,'2026-02-16 09:36:58','2026-02-16 09:36:58','2026-02-16 09:36:58'),(25656,'XAUUSD',4992.19000,4993.53000,'2026-02-16 09:37:13','2026-02-16 09:37:13','2026-02-16 09:37:13'),(25657,'XAUUSD',4989.57000,4990.95000,'2026-02-16 09:37:28','2026-02-16 09:37:28','2026-02-16 09:37:28'),(25658,'XAUUSD',4988.77000,4990.16000,'2026-02-16 09:37:43','2026-02-16 09:37:43','2026-02-16 09:37:43'),(25659,'XAUUSD',4988.93000,4990.45000,'2026-02-16 09:37:58','2026-02-16 09:37:58','2026-02-16 09:37:58'),(25660,'XAUUSD',4989.63000,4991.29000,'2026-02-16 09:38:13','2026-02-16 09:38:13','2026-02-16 09:38:13'),(25661,'XAUUSD',4990.98000,4992.58000,'2026-02-16 09:38:29','2026-02-16 09:38:29','2026-02-16 09:38:29'),(25662,'XAUUSD',4990.31000,4992.17000,'2026-02-16 09:38:44','2026-02-16 09:38:44','2026-02-16 09:38:44'),(25663,'XAUUSD',4990.03000,4991.86000,'2026-02-16 09:38:59','2026-02-16 09:38:59','2026-02-16 09:38:59'),(25664,'XAUUSD',4989.23000,4991.05000,'2026-02-16 09:39:14','2026-02-16 09:39:14','2026-02-16 09:39:14'),(25665,'XAUUSD',4989.64000,4991.34000,'2026-02-16 09:39:29','2026-02-16 09:39:29','2026-02-16 09:39:29'),(25666,'XAUUSD',4989.62000,4991.34000,'2026-02-16 09:39:44','2026-02-16 09:39:44','2026-02-16 09:39:44'),(25667,'XAUUSD',4989.90000,4991.56000,'2026-02-16 09:39:59','2026-02-16 09:39:59','2026-02-16 09:39:59'),(25668,'XAUUSD',4991.29000,4992.94000,'2026-02-16 09:40:14','2026-02-16 09:40:14','2026-02-16 09:40:14'),(25669,'XAUUSD',4992.10000,4993.75000,'2026-02-16 09:40:29','2026-02-16 09:40:29','2026-02-16 09:40:29'),(25670,'XAUUSD',4993.10000,4994.79000,'2026-02-16 09:40:44','2026-02-16 09:40:44','2026-02-16 09:40:44'),(25671,'XAUUSD',4992.89000,4994.63000,'2026-02-16 09:40:59','2026-02-16 09:40:59','2026-02-16 09:40:59'),(25672,'XAUUSD',4992.90000,4994.48000,'2026-02-16 09:41:14','2026-02-16 09:41:14','2026-02-16 09:41:14'),(25673,'XAUUSD',4991.20000,4992.65000,'2026-02-16 09:41:29','2026-02-16 09:41:29','2026-02-16 09:41:29'),(25674,'XAUUSD',4990.62000,4992.28000,'2026-02-16 09:41:44','2026-02-16 09:41:44','2026-02-16 09:41:44'),(25675,'XAUUSD',4990.11000,4991.45000,'2026-02-16 09:41:59','2026-02-16 09:41:59','2026-02-16 09:41:59'),(25676,'XAUUSD',4990.37000,4991.75000,'2026-02-16 09:42:14','2026-02-16 09:42:14','2026-02-16 09:42:14'),(25677,'XAUUSD',4989.80000,4991.40000,'2026-02-16 09:42:29','2026-02-16 09:42:29','2026-02-16 09:42:29'),(25678,'XAUUSD',4990.19000,4991.77000,'2026-02-16 09:42:44','2026-02-16 09:42:44','2026-02-16 09:42:44'),(25679,'XAUUSD',4989.52000,4990.90000,'2026-02-16 09:42:59','2026-02-16 09:42:59','2026-02-16 09:42:59'),(25680,'XAUUSD',4989.52000,4990.89000,'2026-02-16 09:43:14','2026-02-16 09:43:14','2026-02-16 09:43:14'),(25681,'XAUUSD',4990.26000,4991.57000,'2026-02-16 09:43:29','2026-02-16 09:43:29','2026-02-16 09:43:29'),(25682,'XAUUSD',4990.99000,4992.55000,'2026-02-16 09:43:44','2026-02-16 09:43:44','2026-02-16 09:43:44'),(25683,'XAUUSD',4990.99000,4992.35000,'2026-02-16 09:43:59','2026-02-16 09:43:59','2026-02-16 09:43:59'),(25684,'XAUUSD',4990.14000,4991.85000,'2026-02-16 09:44:14','2026-02-16 09:44:14','2026-02-16 09:44:14'),(25685,'XAUUSD',4990.34000,4992.06000,'2026-02-16 09:44:29','2026-02-16 09:44:29','2026-02-16 09:44:29'),(25686,'XAUUSD',4990.20000,4991.91000,'2026-02-16 09:44:44','2026-02-16 09:44:44','2026-02-16 09:44:44'),(25687,'XAUUSD',4990.41000,4992.01000,'2026-02-16 09:44:59','2026-02-16 09:44:59','2026-02-16 09:44:59'),(25688,'XAUUSD',4989.96000,4991.55000,'2026-02-16 09:45:14','2026-02-16 09:45:14','2026-02-16 09:45:14'),(25689,'XAUUSD',4990.12000,4991.71000,'2026-02-16 09:45:29','2026-02-16 09:45:29','2026-02-16 09:45:29'),(25690,'XAUUSD',4989.88000,4991.33000,'2026-02-16 09:45:44','2026-02-16 09:45:44','2026-02-16 09:45:44'),(25691,'XAUUSD',4988.67000,4990.29000,'2026-02-16 09:45:59','2026-02-16 09:45:59','2026-02-16 09:45:59'),(25692,'XAUUSD',4990.12000,4991.59000,'2026-02-16 09:46:14','2026-02-16 09:46:14','2026-02-16 09:46:14'),(25693,'XAUUSD',4991.51000,4993.14000,'2026-02-16 09:46:29','2026-02-16 09:46:29','2026-02-16 09:46:29'),(25694,'XAUUSD',4990.66000,4992.40000,'2026-02-16 09:46:44','2026-02-16 09:46:44','2026-02-16 09:46:44'),(25695,'XAUUSD',4991.14000,4992.71000,'2026-02-16 09:46:59','2026-02-16 09:46:59','2026-02-16 09:46:59'),(25696,'XAUUSD',4991.04000,4992.79000,'2026-02-16 09:47:14','2026-02-16 09:47:14','2026-02-16 09:47:14'),(25697,'XAUUSD',4992.50000,4994.00000,'2026-02-16 09:47:29','2026-02-16 09:47:29','2026-02-16 09:47:29'),(25698,'XAUUSD',4991.90000,4993.51000,'2026-02-16 09:47:44','2026-02-16 09:47:44','2026-02-16 09:47:44'),(25699,'XAUUSD',4990.44000,4991.90000,'2026-02-16 09:48:00','2026-02-16 09:48:00','2026-02-16 09:48:00'),(25700,'XAUUSD',4989.73000,4991.32000,'2026-02-16 09:48:15','2026-02-16 09:48:15','2026-02-16 09:48:15'),(25701,'XAUUSD',4990.37000,4992.01000,'2026-02-16 09:48:30','2026-02-16 09:48:30','2026-02-16 09:48:30'),(25702,'XAUUSD',4988.32000,4989.54000,'2026-02-16 09:48:45','2026-02-16 09:48:45','2026-02-16 09:48:45'),(25703,'XAUUSD',4988.61000,4990.10000,'2026-02-16 09:49:00','2026-02-16 09:49:00','2026-02-16 09:49:00'),(25704,'XAUUSD',4973.12000,4984.51000,'2026-02-16 09:49:15','2026-02-16 09:49:15','2026-02-16 09:49:15'),(25705,'XAUUSD',4981.81000,4983.28000,'2026-02-16 09:49:30','2026-02-16 09:49:30','2026-02-16 09:49:30'),(25706,'XAUUSD',4983.82000,4985.20000,'2026-02-16 09:49:45','2026-02-16 09:49:45','2026-02-16 09:49:45'),(25707,'XAUUSD',4984.60000,4986.22000,'2026-02-16 09:50:00','2026-02-16 09:50:00','2026-02-16 09:50:00'),(25708,'XAUUSD',4984.41000,4985.74000,'2026-02-16 09:50:15','2026-02-16 09:50:15','2026-02-16 09:50:15'),(25709,'XAUUSD',4986.69000,4987.95000,'2026-02-16 09:50:30','2026-02-16 09:50:30','2026-02-16 09:50:30'),(25710,'XAUUSD',4987.99000,4989.58000,'2026-02-16 09:50:45','2026-02-16 09:50:45','2026-02-16 09:50:45'),(25711,'XAUUSD',4987.89000,4989.51000,'2026-02-16 09:51:00','2026-02-16 09:51:00','2026-02-16 09:51:00'),(25712,'XAUUSD',4987.89000,4989.57000,'2026-02-16 09:51:15','2026-02-16 09:51:15','2026-02-16 09:51:15'),(25713,'XAUUSD',4989.65000,4991.18000,'2026-02-16 09:51:30','2026-02-16 09:51:30','2026-02-16 09:51:30'),(25714,'XAUUSD',4989.08000,4990.68000,'2026-02-16 09:51:45','2026-02-16 09:51:45','2026-02-16 09:51:45'),(25715,'XAUUSD',4989.95000,4991.47000,'2026-02-16 09:52:00','2026-02-16 09:52:00','2026-02-16 09:52:00'),(25716,'XAUUSD',4991.90000,4993.30000,'2026-02-16 09:52:15','2026-02-16 09:52:15','2026-02-16 09:52:15'),(25717,'XAUUSD',4991.49000,4992.99000,'2026-02-16 09:52:30','2026-02-16 09:52:30','2026-02-16 09:52:30'),(25718,'XAUUSD',4992.06000,4993.71000,'2026-02-16 09:52:45','2026-02-16 09:52:45','2026-02-16 09:52:45'),(25719,'XAUUSD',4991.18000,4992.86000,'2026-02-16 09:53:00','2026-02-16 09:53:00','2026-02-16 09:53:00'),(25720,'XAUUSD',4991.93000,4993.53000,'2026-02-16 09:53:15','2026-02-16 09:53:15','2026-02-16 09:53:15'),(25721,'XAUUSD',4992.16000,4993.90000,'2026-02-16 09:53:30','2026-02-16 09:53:30','2026-02-16 09:53:30'),(25722,'XAUUSD',4991.28000,4993.03000,'2026-02-16 09:53:45','2026-02-16 09:53:45','2026-02-16 09:53:45'),(25723,'XAUUSD',4990.47000,4992.03000,'2026-02-16 09:54:00','2026-02-16 09:54:00','2026-02-16 09:54:00'),(25724,'XAUUSD',4990.24000,4991.83000,'2026-02-16 09:54:15','2026-02-16 09:54:15','2026-02-16 09:54:15'),(25725,'XAUUSD',4990.33000,4991.83000,'2026-02-16 09:54:30','2026-02-16 09:54:30','2026-02-16 09:54:30'),(25726,'XAUUSD',4990.89000,4992.33000,'2026-02-16 09:54:45','2026-02-16 09:54:45','2026-02-16 09:54:45'),(25727,'XAUUSD',4990.56000,4992.40000,'2026-02-16 09:55:00','2026-02-16 09:55:00','2026-02-16 09:55:00'),(25728,'XAUUSD',4990.71000,4992.43000,'2026-02-16 09:55:15','2026-02-16 09:55:15','2026-02-16 09:55:15'),(25729,'XAUUSD',4990.37000,4992.13000,'2026-02-16 09:55:30','2026-02-16 09:55:30','2026-02-16 09:55:30'),(25730,'XAUUSD',4990.92000,4992.53000,'2026-02-16 09:55:45','2026-02-16 09:55:45','2026-02-16 09:55:45'),(25731,'XAUUSD',4990.84000,4992.53000,'2026-02-16 09:56:00','2026-02-16 09:56:00','2026-02-16 09:56:00'),(25732,'XAUUSD',4991.14000,4992.93000,'2026-02-16 09:56:15','2026-02-16 09:56:15','2026-02-16 09:56:15'),(25733,'XAUUSD',4991.48000,4993.23000,'2026-02-16 09:56:30','2026-02-16 09:56:30','2026-02-16 09:56:30'),(25734,'XAUUSD',4990.86000,4992.73000,'2026-02-16 09:56:45','2026-02-16 09:56:45','2026-02-16 09:56:45'),(25735,'XAUUSD',4990.36000,4992.13000,'2026-02-16 09:57:00','2026-02-16 09:57:00','2026-02-16 09:57:00'),(25736,'XAUUSD',4990.01000,4991.77000,'2026-02-16 09:57:15','2026-02-16 09:57:15','2026-02-16 09:57:15'),(25737,'XAUUSD',4990.06000,4991.77000,'2026-02-16 09:57:30','2026-02-16 09:57:30','2026-02-16 09:57:30'),(25738,'XAUUSD',4989.27000,4991.07000,'2026-02-16 09:57:45','2026-02-16 09:57:45','2026-02-16 09:57:45'),(25739,'XAUUSD',4989.24000,4990.75000,'2026-02-16 09:58:00','2026-02-16 09:58:00','2026-02-16 09:58:00'),(25740,'XAUUSD',4988.83000,4990.50000,'2026-02-16 09:58:31','2026-02-16 09:58:31','2026-02-16 09:58:31'),(25741,'XAUUSD',4987.50000,4989.12000,'2026-02-16 09:58:46','2026-02-16 09:58:46','2026-02-16 09:58:46'),(25742,'XAUUSD',4988.69000,4990.26000,'2026-02-16 09:59:01','2026-02-16 09:59:01','2026-02-16 09:59:01');
/*!40000 ALTER TABLE `price_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionKm` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `ordering` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Argor Heraeus',NULL,'<p>Triving and dislike men who are so that beguiled and demoralized welcomed every pain avoided frequently occur that pleasures indignation and dislike men who are so beguiled the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain troublethat are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of same as saying through shrinking our being able to do.</p>',NULL,NULL,NULL,'Gold Bar 1 KG',NULL,NULL,NULL,'[\"\\/product\\/CamGoTech_IwAp16zDgXK64kvu299YP9pkijOxLe3V6vcDLqqj.png\",\"\\/product\\/CamGoTech_tdH0XwyvK07P8JYlPLYd63D2af6FTDp3PIluvMCv.png\"]',1,1,'2026-01-12 00:55:59','2026-01-30 09:12:43'),(3,'Gold And Silver Scrap',NULL,NULL,NULL,NULL,NULL,'Gold Bar 1 KG',NULL,NULL,NULL,'[\"\\/product\\/CamGoTech_zRNgGRqiaSosXem0rCidfGutEyrwWg5u8uFpqhOG.png\",\"\\/product\\/CamGoTech_a5r0ICNMbt68SffFTS9pCQLbWfBiEiVDFYCQhk0Z.png\"]',1,1,'2026-01-30 06:56:49','2026-01-30 09:12:36'),(4,'Commerzbank',NULL,NULL,NULL,NULL,NULL,'Gold Bar 1 KG',NULL,NULL,NULL,'[\"\\/product\\/CamGoTech_HyJ6w5GKQkCNwzP01RP2VJzdg2lDcjnZyE40U7mr.png\",\"\\/product\\/CamGoTech_RNgbwEqiZQF9pJolio4LHjIa9UrxMt3aIzeCnUBP.png\"]',3,1,'2026-01-30 07:02:45','2026-01-30 09:12:29'),(5,'New Product',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"\\/product\\/Chhayvann_X6RuJUtXEvFRXy0bas8MreuXmoIK6KdEkX0yQ6i0.png\"]',0,1,'2026-02-13 09:06:03','2026-02-13 09:06:03'),(6,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'[\"\\/product\\/Chhayvann_JJte4dxW0X9Z36qfGgmVkQOu0kHxXClna17vM5JJ.png\"]',0,0,'2026-02-13 09:06:23','2026-02-13 09:06:44');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4),(33,4),(34,4),(35,4),(36,4),(37,4),(38,4),(39,4),(40,4),(41,4),(42,4),(43,4),(44,4),(45,4),(46,4),(47,4),(48,4),(49,4),(50,4),(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(59,4),(64,4),(1,5),(2,5),(3,5),(4,5),(6,5),(7,5),(8,5),(10,5),(11,5),(12,5),(14,5),(15,5),(16,5),(18,5),(19,5),(20,5),(22,5),(23,5),(24,5),(26,5),(27,5),(28,5),(30,5),(31,5),(32,5),(34,5),(35,5),(36,5),(38,5),(39,5),(40,5),(42,5),(43,5),(44,5),(46,5),(47,5),(48,5),(50,5),(51,5),(52,5),(54,5),(55,5),(56,5),(58,5),(59,5),(60,5),(61,5),(62,5),(64,5),(65,5),(66,5),(67,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),(21,6),(22,6),(23,6),(24,6),(25,6),(26,6),(27,6),(28,6),(29,6),(30,6),(31,6),(32,6),(33,6),(34,6),(35,6),(36,6),(38,6),(39,6),(40,6),(42,6),(43,6),(44,6),(46,6),(47,6),(48,6),(50,6),(51,6),(52,6),(53,6),(54,6),(55,6),(56,6),(57,6),(58,6),(59,6),(64,6),(69,6),(70,6),(72,6),(73,6),(75,6),(76,6);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','api','2026-01-23 00:44:23','2026-02-13 09:17:42'),(4,'Tester','api','2026-01-25 20:04:39','2026-01-25 20:04:39'),(5,'Editor','api','2026-01-30 06:40:52','2026-01-30 06:40:52'),(6,'Admin','api','2026-02-02 06:12:37','2026-02-14 16:00:13');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `summaryKm` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `contentKm` longtext COLLATE utf8mb4_unicode_ci,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `metaKeyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDesc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (5,'Money Transfer','','','','<p>hi</p>','',0,NULL,0,0,'','','2026-02-12 15:42:45','2026-02-12 15:59:27'),(6,'New Service','','','','','',0,'/service/Chhayvann_Oss5D2ipoQtNJkXU6DHOZbGVCfJb0pRC1r6BZ2PX.jpg',0,0,'','','2026-02-13 09:07:28','2026-02-13 09:07:43');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `site_settings_chk_1` CHECK (json_valid(`content`))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_settings`
--

LOCK TABLES `site_settings` WRITE;
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
INSERT INTO `site_settings` VALUES (1,'HOMEPAGE','{\"subtitle\":\"Welcome To\",\"subtitleKm\":\"\\u179f\\u17bc\\u1798\\u179f\\u17d2\\u179c\\u17b6\\u1782\\u1798\\u1793\\u17cd\\u1798\\u1780\\u1780\\u17b6\\u1793\\u17cb\",\"companyName\":\"CHHAYVANN CO., LTD\",\"companyNameKm\":\"\\u1780\\u17d2\\u179a\\u17bb\\u1798\\u17a0\\u17ca\\u17bb\\u1793 \\u1786\\u17b6\\u1799\\u179c\\u17c9\\u17b6\\u1793\\u17cb \\u1781\\u17bc\\u17a2\\u17b7\\u179b\\u1792\\u17b8\\u178c\\u17b8\",\"aboutCompany\":\"<p>It gives a complete and carefully structured account of the system, explaining its principles in detail while clearly expounding the teachings of the great explorer of truth, the master-builder of human understanding. Through thoughtful explanation and reasoned insight, it reveals how these teachings were formed and why they continue to influence human thought and progress. The text explores not only the surface ideas, but also the deeper foundations upon which the system is built, guiding the reader through its logic, purpose, and long-term significance.<\\/p>\",\"aboutCompanyKm\":\"\",\"subtitleTwo\":\"News & Research\",\"subtitleTwoKm\":\"\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793 \\u1793\\u17b7\\u1784\\u1780\\u17b6\\u179a\\u179f\\u17d2\\u179a\\u17b6\\u179c\\u1787\\u17d2\\u179a\\u17b6\\u179c\",\"title\":\"Latest Insights and Updates\",\"titleKm\":\"\\u1780\\u17b6\\u179a\\u1799\\u179b\\u17cb\\u178a\\u17b9\\u1784 \\u1793\\u17b7\\u1784\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u1790\\u17d2\\u1798\\u17b8\\u17d7\\u1794\\u17c6\\u1795\\u17bb\\u178f\",\"summary\":\"Discover the most competitive prices in the market, update.\",\"summaryKm\":\"\\u179f\\u17d2\\u179c\\u17c2\\u1784\\u1799\\u179b\\u17cb\\u1796\\u17b8\\u178f\\u1798\\u17d2\\u179b\\u17c3\\u1794\\u17d2\\u179a\\u1780\\u17bd\\u178f\\u1794\\u17d2\\u179a\\u1787\\u17c2\\u1784\\u1794\\u17c6\\u1795\\u17bb\\u178f\\u1793\\u17c5\\u179b\\u17be\\u1791\\u17b8\\u1795\\u17d2\\u179f\\u17b6\\u179a \\u1793\\u17b7\\u1784\\u1792\\u17d2\\u179c\\u17be\\u1794\\u1785\\u17d2\\u1785\\u17bb\\u1794\\u17d2\\u1794\\u1793\\u17d2\\u1793\\u1797\\u17b6\\u1796\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_706CXD613Zlf7vStfsraCK3dWT6DHC4BFiaFFFVU.png\"}','2026-01-08 19:24:46','2026-02-12 15:59:02'),(2,'HOWTRADE','{\"subtitle\":\"How to Trade\",\"subtitleKm\":\"\\u179a\\u1794\\u17c0\\u1794\\u1792\\u17d2\\u179c\\u17be\\u1796\\u17b6\\u178e\\u17b7\\u1787\\u17d2\\u1787\\u1780\\u1798\\u17d2\\u1798\",\"des\":\"<p>Watch our trading videos to get the most from the markets and become a profitable trader.Watch our trading.<\\/p>\\n<p>Watch our trading videos to get the most from the markets and become a profitable trader.Watch our trading get the most from.<\\/p>\",\"desKm\":\"\",\"title\":\"Easy to Follow Video\",\"titleKm\":\"\",\"linkVideo\":\"https:\\/\\/www.youtube.com\\/watch?v=i5OZQQWj5-I\",\"link\":\"\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_skXi8AsOJEUumj8OCgwDse4ClVBL5McjzVECqvtJ.webp\"}','2026-01-08 19:31:27','2026-01-28 18:15:47'),(3,'WHYCHOOSE','{\"subtitle\":\"Why Choose Us\",\"subtitleKm\":\"\\u17a0\\u17c1\\u178f\\u17bb\\u17a2\\u17d2\\u179c\\u17b8\\u178f\\u17d2\\u179a\\u17bc\\u179c\\u1787\\u17d2\\u179a\\u17be\\u179f\\u179a\\u17be\\u179f\\u1799\\u17be\\u1784\",\"title\":\"The Top Choice for Traders\",\"titleKm\":\"\\u1787\\u1798\\u17d2\\u179a\\u17be\\u179f\\u1780\\u17c6\\u1796\\u17bc\\u179b\\u179f\\u1798\\u17d2\\u179a\\u17b6\\u1794\\u17cb\\u1796\\u17b6\\u178e\\u17b7\\u1787\\u17d2\\u1787\\u1780\\u179a\",\"summary\":\"Discover the most competitive prices in the market, updated regularly for your advantage.\",\"summaryKm\":\"\",\"titleOne\":\"Expert & Trusths\",\"titleOneKm\":\"\\u17a2\\u17d2\\u1793\\u1780\\u1787\\u17c6\\u1793\\u17b6\\u1789 \\u1793\\u17b7\\u1784\\u200b\\u1791\\u17c6\\u1793\\u17bb\\u1780\\u1785\\u17b7\\u178f\\u17d2\\u178f\",\"titleTwo\":\"Secure & Compliance\",\"titleTwoKm\":\"\\u179f\\u17bb\\u179c\\u178f\\u17d2\\u1790\\u17b7\\u1797\\u17b6\\u1796 \\u1793\\u17b7\\u1784 \\u1780\\u17b6\\u179a\\u17a2\\u1793\\u17bb\\u179b\\u17c4\\u1798\\u178f\\u17b6\\u1798\",\"titleThree\":\"Best Rate\",\"titleThreeKm\":\"\\u17a2\\u178f\\u17d2\\u179a\\u17b6\\u179b\\u17d2\\u17a2\\u1794\\u17c6\\u1795\\u17bb\\u178f\",\"titleFour\":\"Support 7 Days\\/Week\",\"titleFourKm\":\"\",\"titleFive\":\"\",\"titleFiveKm\":\"\",\"titleSix\":\"\",\"titleSixKm\":\"\",\"desOne\":\"Building confidence with consistency\",\"desOneKm\":\"\",\"desTwo\":\"Full KYC\\/AML compliance with NBC\",\"desTwoKm\":\"\",\"desThree\":\"Competitive with market transparency pricing\",\"desThreeKm\":\"\",\"desFour\":\"Always available via email, phone call, telegram during operation hours\",\"desFourKm\":\"\",\"desFive\":\"\",\"desFiveKm\":\"\",\"desSix\":\"\",\"desSixKm\":\"\",\"image\":\"\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"image5\":\"\",\"image6\":\"\"}','2026-01-08 20:52:02','2026-02-10 08:39:37'),(4,'ABOUTCOMPANY','{\"subtitle\":\"About Us\",\"subtitleKm\":\"\\u17a2\\u17c6\\u1796\\u17b8\\u1799\\u17be\\u1784\",\"companyName\":\"CHHAYVANN CO., LTD\",\"companyNameKm\":\"\\u1780\\u17d2\\u179a\\u17bb\\u1798\\u17a0\\u17ca\\u17bb\\u1793 \\u1786\\u17b6\\u1799\\u179c\\u17c9\\u17b6\\u1793\\u17cb \\u1781\\u17bc\\u17a2\\u17b7\\u179b\\u1792\\u17b8\\u178c\\u17b8\",\"aboutCompany\":\"<p>It is a long established fact that reader will be distracted by the readable content of a page when looking atlayout point of making here is that it has a more-or-less normal distribution all letters as opposed to using.<\\/p>\\n<p>It is a long established fact that reader will be distracted by the readable content of a page when looking atlayout point of making here is that it has a more-or-less normal distribution all letters as opposed to using.<\\/p>\",\"aboutCompanyKm\":\"\",\"titleVision\":\"Vision Statement\",\"titleVisionKm\":\"\\u1785\\u1780\\u17d2\\u1781\\u17bb\\u179c\\u17b7\\u179f\\u17d0\\u1799\",\"desVision\":\"<div class=\\\"text\\\">\\n<p>Impedit quo minus id quod maxime at perferendis facere possimus, omnis voluptas assumenda aut omnis quibus- dam dolorem fugiat.<\\/p>\\n<\\/div>\\n<ul class=\\\"list-item\\\">\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Et harum quidem rerum facilis est expedita.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Temporibus autem quibusdam et aut.<\\/p>\\n<\\/div>\\n<\\/li>\\n<\\/ul>\",\"desVisionKm\":\"\",\"titleMission\":\"Our Mission\",\"titleMissionKm\":\"\\u1794\\u17c1\\u179f\\u1780\\u1780\\u1798\\u17d2\\u1798\\u179a\\u1794\\u179f\\u17cb\\u1799\\u17be\\u1784\",\"desMission\":\"<div class=\\\"text\\\">\\n<p>Impedit quo minus id quod maxime at perferendis facere possimus, omnis voluptas assumenda aut omnis quibus- dam dolorem fugiat.<\\/p>\\n<\\/div>\\n<ul class=\\\"list-item\\\">\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Et harum quidem rerum facilis est expedita.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Temporibus autem quibusdam et aut.<\\/p>\\n<\\/div>\\n<\\/li>\\n<\\/ul>\",\"desMissionKm\":\"\",\"titleValue\":\"Our Value\",\"titleValueKm\":\"\\u178f\\u1798\\u17d2\\u179b\\u17c3\\u179a\\u1794\\u179f\\u17cb\\u1799\\u17be\\u1784\",\"desValue\":\"<div class=\\\"text\\\">\\n<p>Impedit quo minus id quod maxime at perferendis facere possimus, omnis voluptas assumenda aut omnis quibus- dam dolorem fugiat.<\\/p>\\n<\\/div>\\n<ul class=\\\"list-item\\\">\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Et harum quidem rerum facilis est expedita.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>officiis debitis aut rerum.<\\/p>\\n<\\/div>\\n<\\/li>\\n<li>\\n<div class=\\\"text1\\\">\\n<p>Temporibus autem quibusdam et aut.<\\/p>\\n<\\/div>\\n<\\/li>\\n<\\/ul>\",\"desValueKm\":\"\",\"subtitlePartner\":\"\",\"subtitlePartnerKm\":\"\",\"titlePartner\":\"\",\"titlePartnerKm\":\"\",\"valuePartner\":\"\",\"subtitleAward\":\"\",\"subtitleAwardKm\":\"\",\"titleAward\":\"\",\"titleAwardKm\":\"\",\"summaryAward\":\"\",\"summaryAwardKm\":\"\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_tVP9KtxQpUIczlYFrFLgzMFIYDx8QO12xbQb70MG.png\",\"image2\":\"\\/site-setting\\/CamGoTech_gtg45ZNfDOX6fKX0L2kOex1VAR4c57d6F0algQoV.webp\",\"image3\":\"\\/site-setting\\/CamGoTech_2qb4OWCVVk4BZGk0nfwc3ZPtC2VZYOHJ04alwm2b.webp\",\"image4\":\"\\/site-setting\\/CamGoTech_r0RGpoi6YZOYvosvtWim4fDaiEiW9YOUNJaw4pde.webp\",\"image5\":\"\"}','2026-01-08 23:58:44','2026-02-10 08:33:13'),(5,'ORGANIZATION','{\"des\":\"<p><img src=\\\"https:\\/\\/api.chhayvann.com.kh\\/uploads\\/content\\/CamGoTech_ZYiNDtSFCxd8FdMVmePMIcreRsPu4P8sbO1tdYYq.jpg\\\"><\\/p>\",\"desKm\":\"\"}','2026-01-09 01:54:00','2026-01-30 06:22:12'),(6,'SERVICE','{\"title\":\"Currency Exchange Rate\",\"titleKm\":\"\\u17a2\\u178f\\u17d2\\u179a\\u17b6\\u1794\\u17d2\\u178f\\u17bc\\u179a\\u1794\\u17d2\\u179a\\u17b6\\u1780\\u17cb\",\"summary\":\"Discover the most competitive prices in the market, updated\\nregularly for your advantage.\",\"summaryKm\":\"\",\"convertSummary\":\"For the updated rates, please refer to your nearest Chhayvann or call +85523 XXX XXX.\",\"convertSummaryKm\":\"\",\"description\":\"\",\"descriptionKm\":\"\",\"thumbnail\":\"\\/site-setting\\/Chhayvann_SwbzdIuVahMbOKIDlMknZiSlB6NYPvj63nUudOIc.png\"}','2026-01-12 02:49:09','2026-02-13 09:06:17'),(7,'TRADING','{\"subtitle\":\"How to Invest\",\"subtitleKm\":\"\\u179a\\u1794\\u17c0\\u1794\\u179c\\u17b7\\u1793\\u17b7\\u1799\\u17c4\\u1782\",\"title\":\"Step-by-Step Trading Guide\",\"titleKm\":\"\\u1780\\u17b6\\u179a\\u178e\\u17c2\\u1793\\u17b6\\u17c6\\u17a2\\u17c6\\u1796\\u17b8\\u1780\\u17b6\\u179a\\u1787\\u17bd\\u1789\\u178a\\u17bc\\u179a\\u1787\\u17b6\\u1787\\u17c6\\u17a0\\u17b6\\u1793\"}','2026-01-12 21:46:36','2026-02-10 08:44:26'),(8,'CAREER','{\"subtitle\":\"Work and grow with Chhayvann\",\"subtitleKm\":\"\",\"title\":\"Work and grow with Chhayvann Co., Ltd\",\"titleKm\":\"\\u1792\\u17d2\\u179c\\u17be\\u1780\\u17b6\\u179a \\u1793\\u17b7\\u1784\\u179a\\u17b8\\u1780\\u1785\\u1798\\u17d2\\u179a\\u17be\\u1793\\u1787\\u17b6\\u1798\\u17bd\\u1799\\u1780\\u17d2\\u179a\\u17bb\\u1798\\u17a0\\u17ca\\u17bb\\u1793 \\u1786\\u17b6\\u1799\\u179c\\u17c9\\u17b6\\u1793\\u17cb \\u1781\\u17bc\\u17a2\\u17b7\\u179b\\u1792\\u17b8\\u178c\\u17b8\",\"summary\":\"At Chhayvann, we believe ourselves well placed to capture opportunities ahead. We are also strengthening our franchise in the country and fortify our position as Cambodia\\u2019s safest bank.\",\"summaryKm\":\"\"}','2026-01-13 01:53:33','2026-02-10 08:46:35'),(9,'CONTACT','{\"email1\":\"info@chhayvann.com.kh\",\"email2\":\"\",\"working1\":\"Mon - Friday: 8.00am to 23.00pm\",\"working2\":\"Sat - Sun: 8.00am to 16.00pm\",\"phoneNumber\":\"[{\\\"number\\\":\\\"+855 12 505 031\\\"}]\",\"address\":\"No. 31, St. 286, Sangkat Olympic, Khan Boeng Keng Kang, Phnom Penh, Cambodia.\",\"addressKm\":\"\\u179b\\u17c1\\u1781 \\u17e3\\u17e1, \\u1795\\u17d2\\u179b\\u17bc\\u179c \\u17e2\\u17e8\\u17e6, \\u179f\\u1784\\u17d2\\u1780\\u17b6\\u178f\\u17cb\\u17a2\\u17bc\\u17a1\\u17b6\\u17c6\\u1796\\u17b7\\u1780, \\u1781\\u178e\\u17d2\\u178c\\u1794\\u17b9\\u1784\\u1780\\u17c1\\u1784\\u1780\\u1784, \\u179a\\u17b6\\u1787\\u1792\\u17b6\\u1793\\u17b8\\u1797\\u17d2\\u1793\\u17c6\\u1796\\u17c1\\u1789, \\u1794\\u17d2\\u179a\\u1791\\u17c1\\u179f\\u1780\\u1798\\u17d2\\u1796\\u17bb\\u1787\\u17b6\",\"embedMap\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d7817.902489118325!2d104.910056!3d11.555353000000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3109511753bcff5d%3A0x368a4a8664c5508b!2s31%20St%20286%2C%20Phnom%20Penh!5e0!3m2!1sen!2skh!4v1768788145968!5m2!1sen!2skh\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"facebookLink\":\"\",\"instagramLink\":\"\",\"telegramLink\":\"https:\\/\\/t.me\\/chhayvann31\",\"linkedinLink\":\"\",\"youtube\":\"\",\"appId\":\"\",\"pageId\":\"\",\"thumbnail\":\"\\/site-setting\\/CamGoTech_JvJOLLQbHva5lxB3zBNWNfbFw8hFAs00zmntmYZu.jpg\",\"subtitle\":\"Send Message\",\"subtitleKm\":\"\",\"title\":\"Send Us a Message Anytime\",\"titleKm\":\"\",\"titlePopup\":\"Save Success!\",\"titlePopupKm\":\"\",\"summaryPopup\":\"\",\"summaryPopupKm\":\"\",\"contactFormEmail\":\"info@chhayvann.com.kh\"}','2026-01-18 19:03:44','2026-02-13 09:22:28'),(10,'GENERAL','{\"title\":\"CHHAYVANN CO., LTD\",\"titleKm\":\"\",\"summary\":\"Business it will frequently to occur that pleasures have all repudiated and annoyances accepted\",\"summaryKm\":\"\",\"keyword\":\"Trading, Sell, Buy, Gold\",\"onlineTrading\":\"https:\\/\\/onlinetrade.chhayvann.com.kh\\/\",\"logo_header\":\"\\/site-setting\\/CamGoTech_ljUvbGuSDh5mM34KyBHCRFHjXkbotqNJWG1NAoEa.webp\",\"logo_footer\":\"\\/site-setting\\/CamGoTech_zlZInjFh1weEDFHmS6yjce5ekT76aYF56XQQ7E2C.png\"}','2026-01-18 19:37:08','2026-02-13 12:49:51'),(11,'INDIVIDUAL','{\"subtitle\":\"To Request for a Corporate Account Type\",\"subtitleKm\":\"\\u178a\\u17be\\u1798\\u17d2\\u1794\\u17b8\\u179f\\u17d2\\u1793\\u17be\\u179f\\u17bb\\u17c6\\u1794\\u17d2\\u179a\\u1797\\u17c1\\u1791\\u1782\\u178e\\u1793\\u17b8\\u179f\\u17b6\\u1787\\u17b8\\u179c\\u1780\\u1798\\u17d2\\u1798\",\"title\":\"Form Request Individual Account\",\"titleKm\":\"\\u179f\\u17d2\\u1793\\u17be\\u179f\\u17bb\\u17c6\\u1791\\u1798\\u17d2\\u179a\\u1784\\u17cb\\u1794\\u17c2\\u1794\\u1794\\u1791\\u179f\\u1798\\u17d2\\u179a\\u17b6\\u1794\\u17cb\\u1782\\u178e\\u1793\\u17b8\\u1794\\u17bb\\u1782\\u17d2\\u1782\\u179b\",\"summary\":\"At Chhayvann, we believe ourselves well placed to capture opportunities ahead. We are also strengthening our franchise in the country and fortify our position as Cambodia\\u2019s safest bank.\",\"summaryKm\":\"\\u1793\\u17c5 Chhayvann \\u1799\\u17be\\u1784\\u1787\\u17bf\\u1787\\u17b6\\u1780\\u17cb\\u1790\\u17b6\\u1781\\u17d2\\u179b\\u17bd\\u1793\\u1799\\u17be\\u1784\\u179f\\u17d2\\u1790\\u17b7\\u178f\\u1780\\u17d2\\u1793\\u17bb\\u1784\\u1791\\u17b8\\u178f\\u17b6\\u17c6\\u1784\\u179b\\u17d2\\u17a2\\u178a\\u17be\\u1798\\u17d2\\u1794\\u17b8\\u1785\\u17b6\\u1794\\u17cb\\u1799\\u1780\\u17b1\\u1780\\u17b6\\u179f\\u1793\\u17c5\\u1781\\u17b6\\u1784\\u1798\\u17bb\\u1781\\u17d4 \\u1799\\u17be\\u1784\\u1780\\u17cf\\u1780\\u17c6\\u1796\\u17bb\\u1784\\u1796\\u1784\\u17d2\\u179a\\u17b9\\u1784\\u179f\\u17b7\\u1791\\u17d2\\u1792\\u17b7\\u1795\\u17d2\\u178f\\u17b6\\u1785\\u17cb\\u1798\\u17bb\\u1781\\u179a\\u1794\\u179f\\u17cb\\u1799\\u17be\\u1784\\u1793\\u17c5\\u1780\\u17d2\\u1793\\u17bb\\u1784\\u1794\\u17d2\\u179a\\u1791\\u17c1\\u179f \\u1793\\u17b7\\u1784\\u1796\\u1784\\u17d2\\u179a\\u17b9\\u1784\\u1787\\u17c6\\u17a0\\u179a\\u179a\\u1794\\u179f\\u17cb\\u1799\\u17be\\u1784\\u1787\\u17b6\\u1792\\u1793\\u17b6\\u1782\\u17b6\\u179a\\u178a\\u17c2\\u179b\\u1798\\u17b6\\u1793\\u179f\\u17bb\\u179c\\u178f\\u17d2\\u1790\\u17b7\\u1797\\u17b6\\u1796\\u1794\\u17c6\\u1795\\u17bb\\u178f\\u179a\\u1794\\u179f\\u17cb\\u1794\\u17d2\\u179a\\u1791\\u17c1\\u179f\\u1780\\u1798\\u17d2\\u1796\\u17bb\\u1787\\u17b6\\u17d4\",\"privacy\":[{\"title\":\"Allow to give the permission to use the information for the purpose of opening the account. Your Data will be kept confidential and will not be shared with any third party.\",\"titleKm\":\"\\u179f\\u17bc\\u1798\\u17a2\\u1793\\u17bb\\u1789\\u17d2\\u1789\\u17b6\\u178f\\u1795\\u17d2\\u178f\\u179b\\u17cb\\u179f\\u17b7\\u1791\\u17d2\\u1792\\u17b7\\u1780\\u17d2\\u1793\\u17bb\\u1784\\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u17be\\u1794\\u17d2\\u179a\\u17b6\\u179f\\u17cb\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793 \\u1780\\u17d2\\u1793\\u17bb\\u1784\\u1782\\u17c4\\u179b\\u1794\\u17c6\\u178e\\u1784\\u178a\\u17be\\u1798\\u17d2\\u1794\\u17b8\\u1794\\u17be\\u1780\\u1782\\u178e\\u1793\\u17b8\\u17d4 \\u1791\\u17b7\\u1793\\u17d2\\u1793\\u1793\\u17d0\\u1799\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780\\u1793\\u17b9\\u1784\\u178f\\u17d2\\u179a\\u17bc\\u179c\\u1794\\u17b6\\u1793\\u179a\\u1780\\u17d2\\u179f\\u17b6\\u1780\\u17b6\\u179a\\u179f\\u1798\\u17d2\\u1784\\u17b6\\u178f\\u17cb \\u17a0\\u17be\\u1799\\u1793\\u17b9\\u1784\\u1798\\u17b7\\u1793\\u178f\\u17d2\\u179a\\u17bc\\u179c\\u1794\\u17b6\\u1793\\u1785\\u17c2\\u1780\\u179a\\u17c6\\u179b\\u17c2\\u1780\\u1791\\u17c5\\u1780\\u17b6\\u1793\\u17cb\\u1797\\u17b6\\u1782\\u17b8\\u1791\\u17b8\\u1794\\u17b8\\u178e\\u17b6\\u1798\\u17bd\\u1799\\u17a1\\u17be\\u1799\"},{\"title\":\"Confirm that the provided information are accurate and authentic.\",\"titleKm\":null}]}','2026-01-29 15:03:31','2026-02-13 08:05:38'),(12,'CORPORATE','{\"subtitle\":\"To Request for a Individual Account Type\",\"subtitleKm\":\"\\u178a\\u17be\\u1798\\u17d2\\u1794\\u17b8\\u179f\\u17d2\\u1793\\u17be\\u179f\\u17bb\\u17c6\\u1794\\u17d2\\u179a\\u1797\\u17c1\\u1791\\u1782\\u178e\\u1793\\u17b8\\u1794\\u17bb\\u1782\\u17d2\\u1782\\u179b\",\"title\":\"Form Request Corporate Account\",\"titleKm\":\"\\u1794\\u17c2\\u1794\\u1794\\u1791\\u179f\\u17d2\\u1793\\u17be\\u179f\\u17bb\\u17c6\\u1794\\u17be\\u1780\\u1782\\u178e\\u1793\\u17b8\\u179f\\u17b6\\u1787\\u17b8\\u179c\\u1780\\u1798\\u17d2\\u1798\",\"summary\":\"At Chhayvann, we believe ourselves well placed to capture opportunities ahead. We are also strengthening our franchise in the country and fortify our position as Cambodia\\u2019s safest bank\",\"summaryKm\":\"\\u1793\\u17c5 Chhayvann \\u1799\\u17be\\u1784\\u1787\\u17bf\\u1787\\u17b6\\u1780\\u17cb\\u1790\\u17b6\\u1781\\u17d2\\u179b\\u17bd\\u1793\\u1799\\u17be\\u1784\\u179f\\u17d2\\u1790\\u17b7\\u178f\\u1780\\u17d2\\u1793\\u17bb\\u1784\\u1791\\u17b8\\u178f\\u17b6\\u17c6\\u1784\\u179b\\u17d2\\u17a2\\u178a\\u17be\\u1798\\u17d2\\u1794\\u17b8\\u1785\\u17b6\\u1794\\u17cb\\u1799\\u1780\\u17b1\\u1780\\u17b6\\u179f\\u1793\\u17c5\\u1781\\u17b6\\u1784\\u1798\\u17bb\\u1781\\u17d4 \\u1799\\u17be\\u1784\\u1780\\u17cf\\u1780\\u17c6\\u1796\\u17bb\\u1784\\u1796\\u1784\\u17d2\\u179a\\u17b9\\u1784\\u179f\\u17b7\\u1791\\u17d2\\u1792\\u17b7\\u1795\\u17d2\\u178f\\u17b6\\u1785\\u17cb\\u1798\\u17bb\\u1781\\u179a\\u1794\\u179f\\u17cb\\u1799\\u17be\\u1784\\u1793\\u17c5\\u1780\\u17d2\\u1793\\u17bb\\u1784\\u1794\\u17d2\\u179a\\u1791\\u17c1\\u179f \\u1793\\u17b7\\u1784\\u1796\\u1784\\u17d2\\u179a\\u17b9\\u1784\\u1787\\u17c6\\u17a0\\u179a\\u179a\\u1794\\u179f\\u17cb\\u1799\\u17be\\u1784\\u1787\\u17b6\\u1792\\u1793\\u17b6\\u1782\\u17b6\\u179a\\u178a\\u17c2\\u179b\\u1798\\u17b6\\u1793\\u179f\\u17bb\\u179c\\u178f\\u17d2\\u1790\\u17b7\\u1797\\u17b6\\u1796\\u1794\\u17c6\\u1795\\u17bb\\u178f\\u179a\\u1794\\u179f\\u17cb\\u1794\\u17d2\\u179a\\u1791\\u17c1\\u179f\\u1780\\u1798\\u17d2\\u1796\\u17bb\\u1787\\u17b6\\u17d4\",\"privacy\":[{\"title\":\"Allow to give the permission to use the information for the purpose of opening the account. Your Data will be kept confidential and will not be shared with any third party.\",\"titleKm\":null},{\"title\":\"Confirm that the provided information are accurate and authentic.\",\"titleKm\":null}]}','2026-01-29 15:04:06','2026-02-10 08:13:53'),(13,'PRIVACY_POLICY','{\"thumbnail\":\"\\/site-setting\\/CamGoTech_o3A2qNCNmJG88NhKy89MFrPQvofndhxNCsFFaZnY.png\",\"description\":\"<p style=\\\"margin: 0cm; text-align: justify;\\\"><strong><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Privacy<\\/span><\\/strong><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Your use of the CVG Trade Online application is subject to our <strong>Privacy Policy<\\/strong>, which forms an integral part of these Terms &amp; Conditions.<\\/span><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">We are committed to protecting your personal data and handling it responsibly. By using the App, you acknowledge and agree that we may collect, use, store, and process your information in accordance with our Privacy Policy and applicable laws.<\\/span><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><strong><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">1. Information Collection<\\/span><\\/strong><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">We may collect personal, financial, and technical information, including but not limited to:<\\/span><\\/p>\\n<p style=\\\"text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; margin: 0cm 0cm 0cm 36.0pt;\\\"><!-- [if !supportLists]--><span style=\\\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\\\"><span style=\\\"mso-list: Ignore;\\\">&middot;<span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Account registration details (such as name, email, phone number)<\\/span><\\/p>\\n<p style=\\\"text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; margin: 0cm 0cm 0cm 36.0pt;\\\"><!-- [if !supportLists]--><span style=\\\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\\\"><span style=\\\"mso-list: Ignore;\\\">&middot;<span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">National Identity Card\\/Passport (Required)<\\/span><\\/p>\\n<p style=\\\"text-align: justify; text-indent: -18.0pt; mso-list: l0 level1 lfo1; tab-stops: list 36.0pt; margin: 0cm 0cm 0cm 36.0pt;\\\"><!-- [if !supportLists]--><span style=\\\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\\\"><span style=\\\"mso-list: Ignore;\\\">&middot;<span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Other supporting documents, if required<\\/span><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><strong><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">2. Use of Information<\\/span><\\/strong><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Your information is used to:<\\/span><\\/p>\\n<p style=\\\"text-align: justify; text-indent: -18.0pt; mso-list: l1 level1 lfo2; tab-stops: list 36.0pt; margin: 0cm 0cm 0cm 36.0pt;\\\"><!-- [if !supportLists]--><span style=\\\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\\\"><span style=\\\"mso-list: Ignore;\\\">&middot;<span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Provide and operate trading services<\\/span><\\/p>\\n<p style=\\\"text-align: justify; text-indent: -18.0pt; mso-list: l1 level1 lfo2; tab-stops: list 36.0pt; margin: 0cm 0cm 0cm 36.0pt;\\\"><!-- [if !supportLists]--><span style=\\\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\\\"><span style=\\\"mso-list: Ignore;\\\">&middot;<span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Verify identity and prevent fraud<\\/span><\\/p>\\n<p style=\\\"text-align: justify; text-indent: -18.0pt; mso-list: l1 level1 lfo2; tab-stops: list 36.0pt; margin: 0cm 0cm 0cm 36.0pt;\\\"><!-- [if !supportLists]--><span style=\\\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\\\"><span style=\\\"mso-list: Ignore;\\\">&middot;<span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Process transactions securely<\\/span><\\/p>\\n<p style=\\\"text-align: justify; text-indent: -18.0pt; mso-list: l1 level1 lfo2; tab-stops: list 36.0pt; margin: 0cm 0cm 0cm 36.0pt;\\\"><!-- [if !supportLists]--><span style=\\\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\\\"><span style=\\\"mso-list: Ignore;\\\">&middot;<span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Improve app functionality and user experience<\\/span><\\/p>\\n<p style=\\\"text-align: justify; text-indent: -18.0pt; mso-list: l1 level1 lfo2; tab-stops: list 36.0pt; margin: 0cm 0cm 0cm 36.0pt;\\\"><!-- [if !supportLists]--><span style=\\\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\\\"><span style=\\\"mso-list: Ignore;\\\">&middot;<span style=\\\"font: 7.0pt \'Times New Roman\';\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <\\/span><\\/span><\\/span><!--[endif]--><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">Comply with legal and regulatory obligations<\\/span><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><strong><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">3. Data Protection<\\/span><\\/strong><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">We implement reasonable administrative, technical, and security measures to protect your information against unauthorized access, loss, misuse, or disclosure. However, no system can guarantee complete security, and you acknowledge that data transmission over the internet involves inherent risks.<\\/span><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><strong><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">4. Data Sharing<\\/span><\\/strong><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">We do not sell your personal data. Information may be shared only with trusted third parties such as payment processors, service providers, or authorities when required by law, strictly for service operation and compliance purposes.<\\/span><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><strong><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">5. User Responsibility<\\/span><\\/strong><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">You are responsible for maintaining the confidentiality of your account credentials. Any activity conducted through your account will be deemed as authorized by you unless reported otherwise.<\\/span><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><strong><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">6. Acceptance of Privacy Policy<\\/span><\\/strong><\\/p>\\n<p style=\\\"margin: 0cm; text-align: justify;\\\"><span style=\\\"font-family: \'Khmer OS Siemreap\';\\\">By accessing or using the App, you confirm that you have read, understood, and agreed to our Privacy Policy. If you do not agree with the Privacy Policy, you must discontinue use of the App immediately.<\\/span><\\/p>\",\"descriptionKm\":\"<p data-start=\\\"104\\\" data-end=\\\"507\\\">\\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u17be\\u1794\\u17d2\\u179a\\u17b6\\u179f\\u17cb\\u1780\\u1798\\u17d2\\u1798\\u179c\\u17b7\\u1792\\u17b8 <strong data-start=\\\"126\\\" data-end=\\\"146\\\">CVG Trade Online<\\/strong> \\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780 \\u1782\\u17ba\\u179f\\u17d2\\u1790\\u17b7\\u178f\\u1780\\u17d2\\u179a\\u17c4\\u1798 <strong data-start=\\\"169\\\" data-end=\\\"189\\\">\\u1782\\u17c4\\u179b\\u1793\\u1799\\u17c4\\u1794\\u17b6\\u1799\\u17af\\u1780\\u1787\\u1793\\u1797\\u17b6\\u1796<\\/strong> \\u179a\\u1794\\u179f\\u17cb\\u1799\\u17be\\u1784 \\u178a\\u17c2\\u179b\\u1787\\u17b6\\u1795\\u17d2\\u1793\\u17c2\\u1780\\u179f\\u17c6\\u1781\\u17b6\\u1793\\u17cb\\u1798\\u17bd\\u1799\\u1793\\u17c3 <strong data-start=\\\"220\\\" data-end=\\\"247\\\">\\u179b\\u1780\\u17d2\\u1781\\u1781\\u178e\\u17d2\\u178c \\u1793\\u17b7\\u1784\\u1780\\u17b6\\u178f\\u1796\\u17d2\\u179c\\u1780\\u17b7\\u1785\\u17d2\\u1785<\\/strong> \\u1791\\u17b6\\u17c6\\u1784\\u1793\\u17c1\\u17c7\\u17d4<br data-start=\\\"256\\\" data-end=\\\"259\\\">\\u1799\\u17be\\u1784\\u1794\\u17d2\\u178f\\u17c1\\u1787\\u17d2\\u1789\\u17b6\\u1785\\u17b7\\u178f\\u17d2\\u178f\\u1780\\u17d2\\u1793\\u17bb\\u1784\\u1780\\u17b6\\u179a\\u1780\\u17b6\\u179a\\u1796\\u17b6\\u179a\\u1791\\u17b7\\u1793\\u17d2\\u1793\\u1793\\u17d0\\u1799\\u1795\\u17d2\\u1791\\u17b6\\u179b\\u17cb\\u1781\\u17d2\\u179b\\u17bd\\u1793\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780 \\u1793\\u17b7\\u1784\\u178a\\u17c6\\u178e\\u17be\\u179a\\u1780\\u17b6\\u179a\\u179c\\u17b6\\u178a\\u17c4\\u1799\\u1798\\u17b6\\u1793\\u1780\\u17b6\\u179a\\u1791\\u1791\\u17bd\\u179b\\u1781\\u17bb\\u179f\\u178f\\u17d2\\u179a\\u17bc\\u179c\\u17d4 \\u178a\\u17c4\\u1799\\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u17be\\u1794\\u17d2\\u179a\\u17b6\\u179f\\u17cb\\u1780\\u1798\\u17d2\\u1798\\u179c\\u17b7\\u1792\\u17b8\\u1793\\u17c1\\u17c7 \\u17a2\\u17d2\\u1793\\u1780\\u1791\\u1791\\u17bd\\u179b\\u179f\\u17d2\\u1782\\u17b6\\u179b\\u17cb \\u1793\\u17b7\\u1784\\u1799\\u179b\\u17cb\\u1796\\u17d2\\u179a\\u1798\\u1790\\u17b6 \\u1799\\u17be\\u1784\\u17a2\\u17b6\\u1785\\u1794\\u17d2\\u179a\\u1798\\u17bc\\u179b \\u1794\\u17d2\\u179a\\u17be \\u179a\\u1780\\u17d2\\u179f\\u17b6\\u1791\\u17bb\\u1780 \\u1793\\u17b7\\u1784\\u178a\\u17c6\\u178e\\u17be\\u179a\\u1780\\u17b6\\u179a\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780 \\u179f\\u17d2\\u179a\\u1794\\u178f\\u17b6\\u1798\\u1782\\u17c4\\u179b\\u1793\\u1799\\u17c4\\u1794\\u17b6\\u1799\\u17af\\u1780\\u1787\\u1793\\u1797\\u17b6\\u1796 \\u1793\\u17b7\\u1784\\u1785\\u17d2\\u1794\\u17b6\\u1794\\u17cb\\u178a\\u17c2\\u179b\\u17a2\\u1793\\u17bb\\u179c\\u178f\\u17d2\\u178f\\u17d4<\\/p>\\n<h3 data-start=\\\"509\\\" data-end=\\\"532\\\">1. \\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u1798\\u17bc\\u179b\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793<\\/h3>\\n<p data-start=\\\"533\\\" data-end=\\\"635\\\">\\u1799\\u17be\\u1784\\u17a2\\u17b6\\u1785\\u1794\\u17d2\\u179a\\u1798\\u17bc\\u179b\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u1795\\u17d2\\u1791\\u17b6\\u179b\\u17cb\\u1781\\u17d2\\u179b\\u17bd\\u1793 \\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u17a0\\u17b7\\u179a\\u1789\\u17d2\\u1789\\u179c\\u178f\\u17d2\\u1790\\u17bb \\u1793\\u17b7\\u1784\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u1794\\u1785\\u17d2\\u1785\\u17c1\\u1780\\u1791\\u17c1\\u179f \\u179a\\u17bd\\u1798\\u1798\\u17b6\\u1793 \\u1794\\u17c9\\u17bb\\u1793\\u17d2\\u178f\\u17c2\\u1798\\u17b7\\u1793\\u1780\\u17c6\\u178e\\u178f\\u17cb\\u178f\\u17d2\\u179a\\u17b9\\u1798\\u178f\\u17c2\\u17d6<\\/p>\\n<ul data-start=\\\"636\\\" data-end=\\\"784\\\">\\n<li data-start=\\\"636\\\" data-end=\\\"692\\\">\\n<p data-start=\\\"638\\\" data-end=\\\"692\\\">\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u1785\\u17bb\\u17c7\\u1788\\u17d2\\u1798\\u17c4\\u17c7\\u1782\\u178e\\u1793\\u17b8 (\\u178a\\u17bc\\u1785\\u1787\\u17b6 \\u1788\\u17d2\\u1798\\u17c4\\u17c7 \\u17a2\\u17ca\\u17b8\\u1798\\u17c2\\u179b \\u179b\\u17c1\\u1781\\u1791\\u17bc\\u179a\\u179f\\u17d0\\u1796\\u17d2\\u1791)<\\/p>\\n<\\/li>\\n<li data-start=\\\"693\\\" data-end=\\\"746\\\">\\n<p data-start=\\\"695\\\" data-end=\\\"746\\\">\\u17a2\\u178f\\u17d2\\u178f\\u179f\\u1789\\u17d2\\u1789\\u17b6\\u178e\\u1794\\u17d0\\u178e\\u17d2\\u178e\\u1787\\u17b6\\u178f\\u17b7 \\u17ac \\u179b\\u17b7\\u1781\\u17b7\\u178f\\u1786\\u17d2\\u179b\\u1784\\u178a\\u17c2\\u1793 (\\u178f\\u1798\\u17d2\\u179a\\u17bc\\u179c\\u17b2\\u17d2\\u1799\\u1798\\u17b6\\u1793)<\\/p>\\n<\\/li>\\n<li data-start=\\\"747\\\" data-end=\\\"784\\\">\\n<p data-start=\\\"749\\\" data-end=\\\"784\\\">\\u17af\\u1780\\u179f\\u17b6\\u179a\\u1782\\u17b6\\u17c6\\u1791\\u17d2\\u179a\\u1795\\u17d2\\u179f\\u17c1\\u1784\\u17d7 \\u1794\\u17d2\\u179a\\u179f\\u17b7\\u1793\\u1794\\u17be\\u1785\\u17b6\\u17c6\\u1794\\u17b6\\u1785\\u17cb<\\/p>\\n<\\/li>\\n<\\/ul>\\n<h3 data-start=\\\"786\\\" data-end=\\\"813\\\">2. \\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u17be\\u1794\\u17d2\\u179a\\u17b6\\u179f\\u17cb\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793<\\/h3>\\n<p data-start=\\\"814\\\" data-end=\\\"852\\\">\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780 \\u178f\\u17d2\\u179a\\u17bc\\u179c\\u1794\\u17b6\\u1793\\u1794\\u17d2\\u179a\\u17be\\u179f\\u1798\\u17d2\\u179a\\u17b6\\u1794\\u17cb\\u17d6<\\/p>\\n<ul data-start=\\\"853\\\" data-end=\\\"1076\\\">\\n<li data-start=\\\"853\\\" data-end=\\\"888\\\">\\n<p data-start=\\\"855\\\" data-end=\\\"888\\\">\\u1795\\u17d2\\u178f\\u179b\\u17cb \\u1793\\u17b7\\u1784\\u178a\\u17c6\\u178e\\u17be\\u179a\\u1780\\u17b6\\u179a\\u179f\\u17c1\\u179c\\u17b6\\u1780\\u1798\\u17d2\\u1798\\u1787\\u17bd\\u1789\\u178a\\u17bc\\u179a<\\/p>\\n<\\/li>\\n<li data-start=\\\"889\\\" data-end=\\\"938\\\">\\n<p data-start=\\\"891\\\" data-end=\\\"938\\\">\\u1795\\u17d2\\u1791\\u17c0\\u1784\\u1795\\u17d2\\u1791\\u17b6\\u178f\\u17cb\\u17a2\\u178f\\u17d2\\u178f\\u179f\\u1789\\u17d2\\u1789\\u17b6\\u178e \\u1793\\u17b7\\u1784\\u1791\\u1794\\u17cb\\u179f\\u17d2\\u1780\\u17b6\\u178f\\u17cb\\u1780\\u17b6\\u179a\\u179b\\u17bd\\u1785\\u1794\\u1793\\u17d2\\u179b\\u17c6<\\/p>\\n<\\/li>\\n<li data-start=\\\"939\\\" data-end=\\\"977\\\">\\n<p data-start=\\\"941\\\" data-end=\\\"977\\\">\\u178a\\u17c6\\u178e\\u17be\\u179a\\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u178f\\u17b7\\u1794\\u178f\\u17d2\\u178f\\u17b7\\u1780\\u17b6\\u179a\\u178a\\u17c4\\u1799\\u179f\\u17bb\\u179c\\u178f\\u17d2\\u1790\\u17b7\\u1797\\u17b6\\u1796<\\/p>\\n<\\/li>\\n<li data-start=\\\"978\\\" data-end=\\\"1023\\\">\\n<p data-start=\\\"980\\\" data-end=\\\"1023\\\">\\u1780\\u17c2\\u179b\\u1798\\u17d2\\u17a2\\u1798\\u17bb\\u1781\\u1784\\u17b6\\u179a\\u1780\\u1798\\u17d2\\u1798\\u179c\\u17b7\\u1792\\u17b8 \\u1793\\u17b7\\u1784\\u1794\\u1791\\u1796\\u17b7\\u179f\\u17c4\\u1792\\u1793\\u17cd\\u17a2\\u17d2\\u1793\\u1780\\u1794\\u17d2\\u179a\\u17be<\\/p>\\n<\\/li>\\n<li data-start=\\\"1024\\\" data-end=\\\"1076\\\">\\n<p data-start=\\\"1026\\\" data-end=\\\"1076\\\">\\u17a2\\u1793\\u17bb\\u179c\\u178f\\u17d2\\u178f\\u178f\\u17b6\\u1798\\u1780\\u17b6\\u178f\\u1796\\u17d2\\u179c\\u1780\\u17b7\\u1785\\u17d2\\u1785\\u1795\\u17d2\\u179b\\u17bc\\u179c\\u1785\\u17d2\\u1794\\u17b6\\u1794\\u17cb \\u1793\\u17b7\\u1784\\u1794\\u1791\\u1794\\u17d2\\u1794\\u1789\\u17d2\\u1789\\u178f\\u17d2\\u178f\\u17b7<\\/p>\\n<\\/li>\\n<\\/ul>\\n<h3 data-start=\\\"1078\\\" data-end=\\\"1102\\\">3. \\u1780\\u17b6\\u179a\\u1780\\u17b6\\u179a\\u1796\\u17b6\\u179a\\u1791\\u17b7\\u1793\\u17d2\\u1793\\u1793\\u17d0\\u1799<\\/h3>\\n<p data-start=\\\"1103\\\" data-end=\\\"1394\\\">\\u1799\\u17be\\u1784\\u17a2\\u1793\\u17bb\\u179c\\u178f\\u17d2\\u178f\\u179c\\u17b7\\u1792\\u17b6\\u1793\\u1780\\u17b6\\u179a\\u179a\\u178a\\u17d2\\u178b\\u1794\\u17b6\\u179b \\u1794\\u1785\\u17d2\\u1785\\u17c1\\u1780\\u1791\\u17c1\\u179f \\u1793\\u17b7\\u1784\\u179f\\u17bb\\u179c\\u178f\\u17d2\\u1790\\u17b7\\u1797\\u17b6\\u1796\\u178a\\u17c2\\u179b\\u179f\\u1798\\u179f\\u17d2\\u179a\\u1794 \\u178a\\u17be\\u1798\\u17d2\\u1794\\u17b8\\u1780\\u17b6\\u179a\\u1796\\u17b6\\u179a\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780\\u1796\\u17b8\\u1780\\u17b6\\u179a\\u1785\\u17bc\\u179b\\u1794\\u17d2\\u179a\\u17be\\u178a\\u17c4\\u1799\\u1782\\u17d2\\u1798\\u17b6\\u1793\\u1780\\u17b6\\u179a\\u17a2\\u1793\\u17bb\\u1789\\u17d2\\u1789\\u17b6\\u178f \\u1780\\u17b6\\u179a\\u1794\\u17b6\\u178f\\u17cb\\u1794\\u1784\\u17cb \\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u17be\\u1794\\u17d2\\u179a\\u17b6\\u179f\\u17cb\\u1781\\u17bb\\u179f\\u1782\\u17c4\\u179b\\u1794\\u17c6\\u178e\\u1784 \\u17ac\\u1780\\u17b6\\u179a\\u1794\\u1784\\u17d2\\u17a0\\u17b6\\u1789\\u17d4 \\u1791\\u17c4\\u17c7\\u1787\\u17b6\\u1799\\u17c9\\u17b6\\u1784\\u178e\\u17b6 \\u1782\\u17d2\\u1798\\u17b6\\u1793\\u1794\\u17d2\\u179a\\u1796\\u17d0\\u1793\\u17d2\\u1792\\u178e\\u17b6\\u1798\\u17bd\\u1799\\u17a2\\u17b6\\u1785\\u1792\\u17b6\\u1793\\u17b6\\u179f\\u17bb\\u179c\\u178f\\u17d2\\u1790\\u17b7\\u1797\\u17b6\\u1796\\u1794\\u17b6\\u1793\\u1796\\u17c1\\u1789\\u179b\\u17c1\\u1789\\u1791\\u17c1 \\u17a0\\u17be\\u1799\\u17a2\\u17d2\\u1793\\u1780\\u1791\\u1791\\u17bd\\u179b\\u179f\\u17d2\\u1782\\u17b6\\u179b\\u17cb\\u1790\\u17b6 \\u1780\\u17b6\\u179a\\u1795\\u17d2\\u1791\\u17c1\\u179a\\u1791\\u17b7\\u1793\\u17d2\\u1793\\u1793\\u17d0\\u1799\\u178f\\u17b6\\u1798\\u17a2\\u17ca\\u17b8\\u1793\\u1792\\u17ba\\u178e\\u17b7\\u178f \\u1798\\u17b6\\u1793\\u17a0\\u17b6\\u1793\\u17b7\\u1797\\u17d0\\u1799\\u1787\\u17b6\\u1793\\u17b7\\u1785\\u17d2\\u1785\\u17d4<\\/p>\\n<h3 data-start=\\\"1396\\\" data-end=\\\"1422\\\">4. \\u1780\\u17b6\\u179a\\u1785\\u17c2\\u1780\\u179a\\u17c6\\u179b\\u17c2\\u1780\\u1791\\u17b7\\u1793\\u17d2\\u1793\\u1793\\u17d0\\u1799<\\/h3>\\n<p data-start=\\\"1423\\\" data-end=\\\"1666\\\">\\u1799\\u17be\\u1784\\u1798\\u17b7\\u1793\\u179b\\u1780\\u17cb\\u1791\\u17b7\\u1793\\u17d2\\u1793\\u1793\\u17d0\\u1799\\u1795\\u17d2\\u1791\\u17b6\\u179b\\u17cb\\u1781\\u17d2\\u179b\\u17bd\\u1793\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780\\u17a1\\u17be\\u1799\\u17d4 \\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u17a2\\u17b6\\u1785\\u178f\\u17d2\\u179a\\u17bc\\u179c\\u1794\\u17b6\\u1793\\u1785\\u17c2\\u1780\\u179a\\u17c6\\u179b\\u17c2\\u1780\\u178f\\u17c2\\u1787\\u17b6\\u1798\\u17bd\\u1799\\u1797\\u17b6\\u1782\\u17b8\\u1791\\u17b8\\u1794\\u17b8\\u178a\\u17c2\\u179b\\u17a2\\u17b6\\u1785\\u1791\\u17bb\\u1780\\u1785\\u17b7\\u178f\\u17d2\\u178f\\u1794\\u17b6\\u1793 \\u178a\\u17bc\\u1785\\u1787\\u17b6 \\u17a2\\u17d2\\u1793\\u1780\\u178a\\u17c6\\u178e\\u17be\\u179a\\u1780\\u17b6\\u179a\\u1791\\u17bc\\u1791\\u17b6\\u178f\\u17cb \\u17a2\\u17d2\\u1793\\u1780\\u1795\\u17d2\\u178f\\u179b\\u17cb\\u179f\\u17c1\\u179c\\u17b6\\u1780\\u1798\\u17d2\\u1798 \\u17ac\\u17a2\\u17b6\\u1787\\u17d2\\u1789\\u17b6\\u1792\\u179a \\u1793\\u17c5\\u1796\\u17c1\\u179b\\u178a\\u17c2\\u179b\\u1785\\u17d2\\u1794\\u17b6\\u1794\\u17cb\\u178f\\u1798\\u17d2\\u179a\\u17bc\\u179c \\u1793\\u17b7\\u1784\\u178f\\u17d2\\u179a\\u17b9\\u1798\\u178f\\u17c2\\u179f\\u1798\\u17d2\\u179a\\u17b6\\u1794\\u17cb\\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u178f\\u17b7\\u1794\\u178f\\u17d2\\u178f\\u17b7\\u179f\\u17c1\\u179c\\u17b6\\u1780\\u1798\\u17d2\\u1798 \\u1793\\u17b7\\u1784\\u1780\\u17b6\\u179a\\u17a2\\u1793\\u17bb\\u179b\\u17c4\\u1798\\u178f\\u17b6\\u1798\\u1785\\u17d2\\u1794\\u17b6\\u1794\\u17cb\\u1794\\u17c9\\u17bb\\u178e\\u17d2\\u178e\\u17c4\\u17c7\\u17d4<\\/p>\\n<h3 data-start=\\\"1668\\\" data-end=\\\"1702\\\">5. \\u1780\\u17b6\\u179a\\u1791\\u1791\\u17bd\\u179b\\u1781\\u17bb\\u179f\\u178f\\u17d2\\u179a\\u17bc\\u179c\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780\\u1794\\u17d2\\u179a\\u17be<\\/h3>\\n<p data-start=\\\"1703\\\" data-end=\\\"1899\\\">\\u17a2\\u17d2\\u1793\\u1780\\u1798\\u17b6\\u1793\\u1780\\u17b6\\u178f\\u1796\\u17d2\\u179c\\u1780\\u17b7\\u1785\\u17d2\\u1785\\u1780\\u17d2\\u1793\\u17bb\\u1784\\u1780\\u17b6\\u179a\\u179a\\u1780\\u17d2\\u179f\\u17b6\\u1780\\u17b6\\u179a\\u179f\\u1798\\u17d2\\u1784\\u17b6\\u178f\\u17cb\\u1793\\u17c3\\u1796\\u17d0\\u178f\\u17cc\\u1798\\u17b6\\u1793\\u1785\\u17bc\\u179b\\u1794\\u17d2\\u179a\\u17be\\u1782\\u178e\\u1793\\u17b8\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780\\u17d4 \\u179f\\u1780\\u1798\\u17d2\\u1798\\u1797\\u17b6\\u1796\\u178e\\u17b6\\u1798\\u17bd\\u1799\\u178a\\u17c2\\u179b\\u1780\\u17be\\u178f\\u17a1\\u17be\\u1784\\u178f\\u17b6\\u1798\\u179a\\u1799\\u17c8\\u1782\\u178e\\u1793\\u17b8\\u179a\\u1794\\u179f\\u17cb\\u17a2\\u17d2\\u1793\\u1780 \\u1793\\u17b9\\u1784\\u178f\\u17d2\\u179a\\u17bc\\u179c\\u1794\\u17b6\\u1793\\u1785\\u17b6\\u178f\\u17cb\\u1791\\u17bb\\u1780\\u1790\\u17b6 \\u1787\\u17b6\\u179f\\u1780\\u1798\\u17d2\\u1798\\u1797\\u17b6\\u1796\\u178a\\u17c2\\u179b\\u17a2\\u17d2\\u1793\\u1780\\u1794\\u17b6\\u1793\\u17a2\\u1793\\u17bb\\u1789\\u17d2\\u1789\\u17b6\\u178f \\u179b\\u17bb\\u17c7\\u178f\\u17d2\\u179a\\u17b6\\u178f\\u17c2\\u1798\\u17b6\\u1793\\u1780\\u17b6\\u179a\\u179a\\u17b6\\u1799\\u1780\\u17b6\\u179a\\u178e\\u17cd\\u1795\\u17d2\\u1791\\u17bb\\u1799\\u1796\\u17b8\\u1793\\u17c1\\u17c7\\u17d4<\\/p>\\n<h3 data-start=\\\"1901\\\" data-end=\\\"1936\\\">6. \\u1780\\u17b6\\u179a\\u1799\\u179b\\u17cb\\u1796\\u17d2\\u179a\\u1798\\u179b\\u17be\\u1782\\u17c4\\u179b\\u1793\\u1799\\u17c4\\u1794\\u17b6\\u1799\\u17af\\u1780\\u1787\\u1793\\u1797\\u17b6\\u1796<\\/h3>\\n<p data-start=\\\"1937\\\" data-end=\\\"2111\\\">\\u178a\\u17c4\\u1799\\u1780\\u17b6\\u179a\\u1785\\u17bc\\u179b\\u1794\\u17d2\\u179a\\u17be \\u17ac\\u1794\\u17d2\\u179a\\u17be\\u1794\\u17d2\\u179a\\u17b6\\u179f\\u17cb\\u1780\\u1798\\u17d2\\u1798\\u179c\\u17b7\\u1792\\u17b8\\u1793\\u17c1\\u17c7 \\u17a2\\u17d2\\u1793\\u1780\\u1794\\u1789\\u17d2\\u1787\\u17b6\\u1780\\u17cb\\u1790\\u17b6 \\u17a2\\u17d2\\u1793\\u1780\\u1794\\u17b6\\u1793\\u17a2\\u17b6\\u1793 \\u1799\\u179b\\u17cb \\u1793\\u17b7\\u1784\\u1799\\u179b\\u17cb\\u1796\\u17d2\\u179a\\u1798\\u179b\\u17be\\u1782\\u17c4\\u179b\\u1793\\u1799\\u17c4\\u1794\\u17b6\\u1799\\u17af\\u1780\\u1787\\u1793\\u1797\\u17b6\\u1796\\u179a\\u1794\\u179f\\u17cb\\u1799\\u17be\\u1784\\u17d4 \\u1794\\u17d2\\u179a\\u179f\\u17b7\\u1793\\u1794\\u17be\\u17a2\\u17d2\\u1793\\u1780\\u1798\\u17b7\\u1793\\u1799\\u179b\\u17cb\\u1796\\u17d2\\u179a\\u1798\\u1791\\u17c1 \\u17a2\\u17d2\\u1793\\u1780\\u178f\\u17d2\\u179a\\u17bc\\u179c\\u1794\\u1789\\u17d2\\u1788\\u1794\\u17cb\\u1780\\u17b6\\u179a\\u1794\\u17d2\\u179a\\u17be\\u1794\\u17d2\\u179a\\u17b6\\u179f\\u17cb\\u1780\\u1798\\u17d2\\u1798\\u179c\\u17b7\\u1792\\u17b8\\u1793\\u17c1\\u17c7\\u1797\\u17d2\\u179b\\u17b6\\u1798\\u17d7\\u17d4<\\/p>\"}','2026-01-30 07:57:14','2026-01-30 10:51:20');
/*!40000 ALTER TABLE `site_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `positionKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experienceKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Mr. SAM Sambath',NULL,'Managing Director',NULL,'Over 10 years of experience in Gold Trading',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2026-01-09 02:59:57','2026-02-03 01:44:28');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reviewerName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewerPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewerPositionKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `commentKm` text COLLATE utf8mb4_unicode_ci,
  `reviewerProfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDisplayHomepage` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Newton Lester','Forex Trader','','The platform\'s tools and resources significantly improved my trading strategy. Tradebrohas been instrumental in my trading success.','','/testimonial-profile/CamGoTech_H1BHKG9Yl3wwcHukQXAed9qoq3WuHoeboa6lmuUv.webp',0,1,0,'2026-01-11 18:42:22','2026-01-30 08:25:18');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tradings`
--

DROP TABLE IF EXISTS `tradings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `step` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stepKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleKm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `summaryKm` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tradings`
--

LOCK TABLES `tradings` WRITE;
/*!40000 ALTER TABLE `tradings` DISABLE KEYS */;
INSERT INTO `tradings` VALUES (1,'Step 01','','Open Your Account','','Always holds these matters to this principle of selection or else cases he endures pains.','',NULL,1,1,'2026-01-12 21:48:56','2026-01-12 21:48:56'),(2,'Step 02','','Fund Your Account','','Beguiled and demoralized the charms of pleasure of the moment, so blinded by desire that they foresee.','',NULL,2,1,'2026-01-12 21:49:33','2026-01-12 21:49:33'),(3,'Step 03','','Choose Your Asset','','Business it will frequently occur that pleasures have to be repudiated and annoyances accepted.','',NULL,3,1,'2026-01-12 21:50:09','2026-01-12 21:50:09'),(4,'Step 04','ខ្មែរ','Open Your Account','','Always holds these matters to this principle of selection or else cases he endures pains.','',NULL,4,1,'2026-01-12 21:50:47','2026-02-13 09:09:52');
/*!40000 ALTER TABLE `tradings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userRole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin User','admin@gmail.com',NULL,NULL,NULL,'2026-01-07 20:44:37','$2y$10$l3clnX7BYDvRN1ML8gs3GOxJXl8tIbF0PZH6HORYnHfWEuWmDB2M2',0,'mIenq8lbpm','2026-01-07 20:44:37','2026-01-07 20:44:37'),(6,'Phanna Phoem','phanna@gmail.com',NULL,'Tester',NULL,NULL,'$2y$10$4nrPVlMewVENxSitYPXU4ucL/68zYwiI/YnFY0Q8q6seoqzrIA0se',1,NULL,'2026-01-25 21:32:42','2026-01-25 21:36:00'),(7,'Chhayvann Co., Ltd','admin@chhayvann.com.kh','078202575','Administrator','/user-profile/CamGoTech_l4NGF9QjBRB4gqFHv2UB1sKe7TCBpMyU56B29NEE.png',NULL,'$2y$10$Vcm.2e0fGKVx05Ae6yaKZO28lSnLxTPshyzwPNOEeQwf223203Sdq',1,NULL,'2026-01-30 06:42:54','2026-01-30 09:49:21'),(8,'CHHAYVANN EDITOR','editor@chhayvann.com.kh','069565956','Editor','/user-profile/CamGoTech_MAvWnAKK3LmvoktYDizvLWpNUw85eThTThjICtJZ.png',NULL,'$2y$10$MAf7jnf15a733bCsNvMoKeaCJbb8lp6rkZOqmQQA5JpL0mdJXu8gm',1,NULL,'2026-01-30 06:46:57','2026-01-30 08:00:30'),(9,'chhit.komsortt@chhayvann.com.kh','chhit.komsortt@chhayvann.com.kh','092226676','Editor',NULL,NULL,'$2y$10$JKqK5Oayar/HEO4sO6B/ouNMlJADJSi1CNu2o87wq99KQqcURR1ZO',1,NULL,'2026-01-30 09:50:32','2026-01-31 00:39:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16  4:59:15
