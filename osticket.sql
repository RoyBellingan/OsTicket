-- MySQL dump 10.13  Distrib 5.1.49, for suse-linux-gnu (x86_64)
--
-- Host: localhost    Database: osticket
-- ------------------------------------------------------
-- Server version	5.1.49-log

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
-- Current Database: `osticket`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `osticket` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `osticket`;

--
-- Table structure for table `os_api_key`
--

DROP TABLE IF EXISTS `os_api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_api_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `ipaddr` varchar(16) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipaddr` (`ipaddr`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_api_key`
--

LOCK TABLES `os_api_key` WRITE;
/*!40000 ALTER TABLE `os_api_key` DISABLE KEYS */;
INSERT INTO `os_api_key` VALUES (1,1,'192.168.1.5','siri!','2010-09-10 21:39:18','2010-09-10 21:39:18');
/*!40000 ALTER TABLE `os_api_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_config`
--

DROP TABLE IF EXISTS `os_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_config` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `isonline` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timezone_offset` float(3,1) NOT NULL DEFAULT '0.0',
  `enable_daylight_saving` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `staff_ip_binding` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `staff_max_logins` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `staff_login_timeout` int(10) unsigned NOT NULL DEFAULT '2',
  `staff_session_timeout` int(10) unsigned NOT NULL DEFAULT '30',
  `client_max_logins` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `client_login_timeout` int(10) unsigned NOT NULL DEFAULT '2',
  `client_session_timeout` int(10) unsigned NOT NULL DEFAULT '30',
  `max_page_size` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `max_open_tickets` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_file_size` int(11) unsigned NOT NULL DEFAULT '1048576',
  `autolock_minutes` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `overdue_grace_period` int(10) unsigned NOT NULL DEFAULT '0',
  `alert_email_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `default_email_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `default_dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default_priority_id` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `default_template_id` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `default_smtp_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `spoof_default_smtp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `clickable_urls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allow_priority_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_email_priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_captcha` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_auto_cron` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_mail_fetch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_email_piping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_sql_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `send_mailparse_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `send_login_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `save_email_headers` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `strip_quoted_reply` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_ticket_activity` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_autoresponder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_autoresponder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_notice_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_alert_admin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_alert_dept_members` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_alert_laststaff` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note_alert_laststaff` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `note_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `note_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overdue_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overdue_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `overdue_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `overdue_alert_dept_members` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `auto_assign_reopened_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `show_assigned_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_answered_tickets` tinyint(1) NOT NULL DEFAULT '0',
  `hide_staff_name` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overlimit_notice_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_attachments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allow_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_email_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_online_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_online_attachments_onlogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `random_ticket_ids` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_level` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `log_graceperiod` int(10) unsigned NOT NULL DEFAULT '12',
  `upload_dir` varchar(255) NOT NULL DEFAULT '',
  `allowed_filetypes` varchar(255) NOT NULL DEFAULT '.doc, .pdf',
  `time_format` varchar(32) NOT NULL DEFAULT ' h:i A',
  `date_format` varchar(32) NOT NULL DEFAULT 'm/d/Y',
  `datetime_format` varchar(60) NOT NULL DEFAULT 'm/d/Y g:i a',
  `daydatetime_format` varchar(60) NOT NULL DEFAULT 'D, M j Y g:ia',
  `reply_separator` varchar(60) NOT NULL DEFAULT '-- do not edit --',
  `admin_email` varchar(125) NOT NULL DEFAULT '',
  `helpdesk_title` varchar(255) NOT NULL DEFAULT 'osTicket Support Ticket System',
  `helpdesk_url` varchar(255) NOT NULL DEFAULT '',
  `api_passphrase` varchar(125) NOT NULL DEFAULT '',
  `ostversion` varchar(16) NOT NULL DEFAULT '',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `isoffline` (`isonline`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_config`
--

LOCK TABLES `os_config` WRITE;
/*!40000 ALTER TABLE `os_config` DISABLE KEYS */;
INSERT INTO `os_config` VALUES (1,1,2.0,0,1,4,2,30,4,2,30,25,0,10485760,3,0,2,1,1,2,1,0,0,1,1,0,0,0,0,0,1,1,1,0,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,1,0,0,0,0,1,1,1,1,1,0,2,12,'/srv/www/htdocs/osticket/att','.doc, .pdf,',' h:i A','m/d/Y','m/d/Y g:i a','D, M j Y g:ia','-- do not edit --','admin@archidea.us','Inner GDI','http://susi/osticket/upload/','','1.6 ST','2010-09-10 19:39:19');
/*!40000 ALTER TABLE `os_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_department`
--

DROP TABLE IF EXISTS `os_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_department` (
  `dept_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `autoresp_email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `manager_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dept_name` varchar(32) NOT NULL DEFAULT '',
  `dept_signature` tinytext NOT NULL,
  `ispublic` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_auto_response` tinyint(1) NOT NULL DEFAULT '1',
  `message_auto_response` tinyint(1) NOT NULL DEFAULT '0',
  `can_append_signature` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_name` (`dept_name`),
  KEY `manager_id` (`manager_id`),
  KEY `autoresp_email_id` (`autoresp_email_id`),
  KEY `tpl_id` (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_department`
--

LOCK TABLES `os_department` WRITE;
/*!40000 ALTER TABLE `os_department` DISABLE KEYS */;
INSERT INTO `os_department` VALUES (1,2,1,0,1,'Support','Support Dept',1,1,1,1,'2010-09-11 14:32:01','2010-09-10 21:39:18'),(2,0,1,0,0,'Billing','Billing Dept',1,1,1,1,'2010-09-10 21:39:18','2010-09-10 21:39:18'),(3,2,1,0,0,'Hardware','--\r\nHardware',1,1,1,0,'2010-09-11 01:37:23','2010-09-11 01:37:23');
/*!40000 ALTER TABLE `os_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_email`
--

DROP TABLE IF EXISTS `os_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_email` (
  `email_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `noautoresp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `priority_id` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `email` varchar(125) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(125) NOT NULL,
  `userpass` varchar(125) NOT NULL,
  `mail_active` tinyint(1) NOT NULL DEFAULT '0',
  `mail_host` varchar(125) NOT NULL,
  `mail_protocol` enum('POP','IMAP') NOT NULL DEFAULT 'POP',
  `mail_encryption` enum('NONE','SSL') NOT NULL,
  `mail_port` int(6) DEFAULT NULL,
  `mail_fetchfreq` tinyint(3) NOT NULL DEFAULT '5',
  `mail_fetchmax` tinyint(4) NOT NULL DEFAULT '30',
  `mail_delete` tinyint(1) NOT NULL DEFAULT '0',
  `mail_errors` tinyint(3) NOT NULL DEFAULT '0',
  `mail_lasterror` datetime DEFAULT NULL,
  `mail_lastfetch` datetime DEFAULT NULL,
  `smtp_active` tinyint(1) DEFAULT '0',
  `smtp_host` varchar(125) NOT NULL,
  `smtp_port` int(6) DEFAULT NULL,
  `smtp_secure` tinyint(1) NOT NULL DEFAULT '1',
  `smtp_auth` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email` (`email`),
  KEY `priority_id` (`priority_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_email`
--

LOCK TABLES `os_email` WRITE;
/*!40000 ALTER TABLE `os_email` DISABLE KEYS */;
INSERT INTO `os_email` VALUES (1,0,2,1,'admin@tsmt.eu','Support','','',0,'','POP','NONE',NULL,5,30,0,0,NULL,NULL,0,'',NULL,1,1,'2010-09-10 21:39:19','2010-09-10 21:39:19'),(2,0,1,1,'alerts@tsmt.eu','osTicket Alerts','','',0,'','POP','NONE',NULL,5,30,0,0,NULL,NULL,0,'',NULL,1,1,'2010-09-10 21:39:19','2010-09-10 21:39:19'),(3,0,1,1,'noreply@tsmt.eu','','','',0,'','POP','NONE',NULL,5,30,0,0,NULL,NULL,0,'',NULL,1,1,'2010-09-10 21:39:19','2010-09-10 21:39:19');
/*!40000 ALTER TABLE `os_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_email_banlist`
--

DROP TABLE IF EXISTS `os_email_banlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_email_banlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `submitter` varchar(126) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_email_banlist`
--

LOCK TABLES `os_email_banlist` WRITE;
/*!40000 ALTER TABLE `os_email_banlist` DISABLE KEYS */;
INSERT INTO `os_email_banlist` VALUES (1,'test@example.com','System','2010-09-10 21:39:18');
/*!40000 ALTER TABLE `os_email_banlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_email_template`
--

DROP TABLE IF EXISTS `os_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_email_template` (
  `tpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cfg_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `notes` text,
  `ticket_autoresp_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_autoresp_body` text NOT NULL,
  `ticket_notice_subj` varchar(255) NOT NULL,
  `ticket_notice_body` text NOT NULL,
  `ticket_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_alert_body` text NOT NULL,
  `message_autoresp_subj` varchar(255) NOT NULL DEFAULT '',
  `message_autoresp_body` text NOT NULL,
  `message_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `message_alert_body` text NOT NULL,
  `note_alert_subj` varchar(255) NOT NULL,
  `note_alert_body` text NOT NULL,
  `assigned_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `assigned_alert_body` text NOT NULL,
  `ticket_overdue_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_overdue_body` text NOT NULL,
  `ticket_overlimit_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_overlimit_body` text NOT NULL,
  `ticket_reply_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_reply_body` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tpl_id`),
  KEY `cfg_id` (`cfg_id`),
  FULLTEXT KEY `message_subj` (`ticket_reply_subj`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_email_template`
--

LOCK TABLES `os_email_template` WRITE;
/*!40000 ALTER TABLE `os_email_template` DISABLE KEYS */;
INSERT INTO `os_email_template` VALUES (1,1,'osTicket Default Template','Default osTicket templates','Support Ticket Opened [#%ticket]','%name,\r\n\r\nA request for support has been created and assigned ticket #%ticket. A representative will follow-up with you as soon as possible.\r\n\r\nYou can view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\nIf you wish to send additional comments or information regarding this issue, please don\'t open a new ticket. Simply login using the link above and update the ticket.\r\n\r\n%signature','[#%ticket] %subject','%name,\r\n\r\nOur customer care team has created a ticket, #%ticket on your behalf, with the following message.\r\n\r\n%message\r\n\r\nIf you wish to provide additional comments or information regarding this issue, please don\'t open a new ticket. You can update or view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Ticket Alert','%staff,\r\n\r\nNew ticket #%ticket created.\r\n-------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','[#%ticket] Message Added','%name,\r\n\r\nYour reply to support request #%ticket has been noted.\r\n\r\nYou can view this support request progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Message Alert','%staff,\r\n\r\nNew message appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','New Internal Note Alert','%staff,\r\n\r\nInternal note appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\n\r\n%note\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','Ticket #%ticket Assigned to you','%assignee,\r\n\r\n%assigner has assigned ticket #%ticket to you!\r\n\r\n%message\r\n\r\nTo view complete details, simply login to the support system.\r\n\r\n- Your friendly Support Ticket System - powered by osTicket.','Stale Ticket Alert','%staff,\r\n\r\nA ticket, #%ticket assigned to you or in your department is seriously overdue.\r\n\r\n%url/scp/tickets.php?id=%id\r\n\r\nWe should all work hard to guarantee that all tickets are being addressed in a timely manner. Enough baby talk...please address the issue or you will hear from me again.\r\n\r\n\r\n- Your friendly (although with limited patience) Support Ticket System - powered by osTicket.','Support Ticket Denied','%name\r\n\r\nNo support ticket has been created. You\'ve exceeded maximum number of open tickets allowed.\r\n\r\nThis is a temporary block. To be able to open another ticket, one of your pending tickets must be closed. To update or add comments to an open ticket simply login using the link below.\r\n\r\n%url/view.php?e=%email\r\n\r\nThank you.\r\n\r\nSupport Ticket System','[#%ticket] %subject','%name,\r\n\r\nA customer support staff member has replied to your support request, #%ticket with the following response:\r\n\r\n%response\r\n\r\nWe hope this response has sufficiently answered your questions. If not, please do not send another email. Instead, reply to this email or login to your account for a complete archive of all your support requests and responses.\r\n\r\n%url/view.php?e=%email&t=%ticket\r\n\r\n%signature','2010-09-10 21:39:18','2010-09-10 21:39:18'),(2,1,'Hardware','New template: copy of osTicket Default Template','Support Ticket Opened [#%ticket]','%name,\r\n\r\nA request for support has been created and assigned ticket #%ticket. A representative will follow-up with you as soon as possible.\r\n\r\nYou can view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\nIf you wish to send additional comments or information regarding this issue, please don\'t open a new ticket. Simply login using the link above and update the ticket.\r\n\r\n%signature','[#%ticket] %subject','%name,\r\n\r\nOur customer care team has created a ticket, #%ticket on your behalf, with the following message.\r\n\r\n%message\r\n\r\nIf you wish to provide additional comments or information regarding this issue, please don\'t open a new ticket. You can update or view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Ticket Alert','%staff,\r\n\r\nNew ticket #%ticket created.\r\n-------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','[#%ticket] Message Added','%name,\r\n\r\nYour reply to support request #%ticket has been noted.\r\n\r\nYou can view this support request progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Message Alert','%staff,\r\n\r\nNew message appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','New Internal Note Alert','%staff,\r\n\r\nInternal note appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\n\r\n%note\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','Ticket #%ticket Assigned to you','%assignee,\r\n\r\n%assigner has assigned ticket #%ticket to you!\r\n\r\n%message\r\n\r\nTo view complete details, simply login to the support system.\r\n\r\n- Your friendly Support Ticket System - powered by osTicket.','Stale Ticket Alert','%staff,\r\n\r\nA ticket, #%ticket assigned to you or in your department is seriously overdue.\r\n\r\n%url/scp/tickets.php?id=%id\r\n\r\nWe should all work hard to guarantee that all tickets are being addressed in a timely manner. Enough baby talk...please address the issue or you will hear from me again.\r\n\r\n\r\n- Your friendly (although with limited patience) Support Ticket System - powered by osTicket.','Support Ticket Denied','%name\r\n\r\nNo support ticket has been created. You\'ve exceeded maximum number of open tickets allowed.\r\n\r\nThis is a temporary block. To be able to open another ticket, one of your pending tickets must be closed. To update or add comments to an open ticket simply login using the link below.\r\n\r\n%url/view.php?e=%email\r\n\r\nThank you.\r\n\r\nSupport Ticket System','[#%ticket] %subject','%name,\r\n\r\nA customer support staff member has replied to your support request, #%ticket with the following response:\r\n\r\n%response\r\n\r\nWe hope this response has sufficiently answered your questions. If not, please do not send another email. Instead, reply to this email or login to your account for a complete archive of all your support requests and responses.\r\n\r\n%url/view.php?e=%email&t=%ticket\r\n\r\n%signature','2010-09-11 01:36:38','2010-09-11 01:36:38'),(3,1,'pp2','New template: copy of osTicket Default Template','Support Ticket Opened [#%ticket]','%name,\r\n\r\nA request for support has been created and assigned ticket #%ticket. A representative will follow-up with you as soon as possible.\r\n\r\nYou can view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\nIf you wish to send additional comments or information regarding this issue, please don\'t open a new ticket. Simply login using the link above and update the ticket.\r\n\r\n%signature','[#%ticket] %subject','%name,\r\n\r\nOur customer care team has created a ticket, #%ticket on your behalf, with the following message.\r\n\r\n%message\r\n\r\nIf you wish to provide additional comments or information regarding this issue, please don\'t open a new ticket. You can update or view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Ticket Alert','%staff,\r\n\r\nNew ticket #%ticket created.\r\n-------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','[#%ticket] Message Added','%name,\r\n\r\nYour reply to support request #%ticket has been noted.\r\n\r\nYou can view this support request progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Message Alert','%staff,\r\n\r\nNew message appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','New Internal Note Alert','%staff,\r\n\r\nInternal note appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\n\r\n%note\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','Ticket #%ticket Assigned to you','%assignee,\r\n\r\n%assigner has assigned ticket #%ticket to you!\r\n\r\n%message\r\n\r\nTo view complete details, simply login to the support system.\r\n\r\n- Your friendly Support Ticket System - powered by osTicket.','Stale Ticket Alert','%staff,\r\n\r\nA ticket, #%ticket assigned to you or in your department is seriously overdue.\r\n\r\n%url/scp/tickets.php?id=%id\r\n\r\nWe should all work hard to guarantee that all tickets are being addressed in a timely manner. Enough baby talk...please address the issue or you will hear from me again.\r\n\r\n\r\n- Your friendly (although with limited patience) Support Ticket System - powered by osTicket.','Support Ticket Denied','%name\r\n\r\nNo support ticket has been created. You\'ve exceeded maximum number of open tickets allowed.\r\n\r\nThis is a temporary block. To be able to open another ticket, one of your pending tickets must be closed. To update or add comments to an open ticket simply login using the link below.\r\n\r\n%url/view.php?e=%email\r\n\r\nThank you.\r\n\r\nSupport Ticket System','[#%ticket] %subject','%name,\r\n\r\nA customer support staff member has replied to your support request, #%ticket with the following response:\r\n\r\n%response\r\n\r\nWe hope this response has sufficiently answered your questions. If not, please do not send another email. Instead, reply to this email or login to your account for a complete archive of all your support requests and responses.\r\n\r\n%url/view.php?e=%email&t=%ticket\r\n\r\n%signature','2010-09-11 14:31:34','2010-09-11 14:31:34');
/*!40000 ALTER TABLE `os_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_groups`
--

DROP TABLE IF EXISTS `os_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `dept_access` varchar(255) NOT NULL DEFAULT '',
  `can_create_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_edit_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_delete_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_close_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_transfer_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_ban_emails` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_manage_kb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`group_id`),
  KEY `group_active` (`group_enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_groups`
--

LOCK TABLES `os_groups` WRITE;
/*!40000 ALTER TABLE `os_groups` DISABLE KEYS */;
INSERT INTO `os_groups` VALUES (1,1,'Admins','1',1,1,1,1,1,1,1,'2010-09-10 21:39:18','2010-09-10 21:39:18'),(2,1,'Managers','1',1,1,0,1,1,1,1,'2010-09-10 21:39:18','2010-09-10 21:39:18'),(3,1,'Staff','1',1,0,0,0,0,0,0,'2010-09-10 21:39:18','2010-09-10 21:39:18');
/*!40000 ALTER TABLE `os_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_help_topic`
--

DROP TABLE IF EXISTS `os_help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_help_topic` (
  `topic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `noautoresp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `priority_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `topic` varchar(32) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic` (`topic`),
  KEY `priority_id` (`priority_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_help_topic`
--

LOCK TABLES `os_help_topic` WRITE;
/*!40000 ALTER TABLE `os_help_topic` DISABLE KEYS */;
INSERT INTO `os_help_topic` VALUES (1,0,0,2,1,'Support','2010-09-10 21:39:18','2010-09-11 01:49:26'),(2,0,0,3,1,'Billing','2010-09-10 21:39:18','2010-09-11 01:49:26'),(3,1,0,2,3,'Riparazione','2010-09-11 01:37:57','2010-09-11 01:37:57'),(4,1,0,2,3,'Powizzare','2010-09-11 01:38:13','2010-09-11 01:38:13');
/*!40000 ALTER TABLE `os_help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_kb_premade`
--

DROP TABLE IF EXISTS `os_kb_premade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_kb_premade` (
  `premade_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` int(10) unsigned NOT NULL DEFAULT '0',
  `isenabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `title` varchar(125) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`premade_id`),
  UNIQUE KEY `title_2` (`title`),
  KEY `dept_id` (`dept_id`),
  KEY `active` (`isenabled`),
  FULLTEXT KEY `title` (`title`,`answer`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_kb_premade`
--

LOCK TABLES `os_kb_premade` WRITE;
/*!40000 ALTER TABLE `os_kb_premade` DISABLE KEYS */;
INSERT INTO `os_kb_premade` VALUES (1,0,1,'What is osTicket (sample)?','\r\nosTicket is a widely-used open source support ticket system, an attractive alternative to higher-cost and complex customer support systems - simple, lightweight, reliable, open source, web-based and easy to setup and use.','2010-09-10 21:39:18','2010-09-10 21:39:18'),(2,0,1,'Sample (with variables)','\r\n%name,\r\n\r\nYour ticket #%ticket created on %createdate is in %dept department.\r\n\r\n','2010-09-10 21:39:18','2010-09-10 21:39:18');
/*!40000 ALTER TABLE `os_kb_premade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_staff`
--

DROP TABLE IF EXISTS `os_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_staff` (
  `staff_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dept_id` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `passwd` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `phone` varchar(24) NOT NULL DEFAULT '',
  `phone_ext` varchar(6) DEFAULT NULL,
  `mobile` varchar(24) NOT NULL DEFAULT '',
  `signature` tinytext NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `isvisible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `onvacation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `daylight_saving` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `append_signature` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `change_passwd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timezone_offset` float(3,1) NOT NULL DEFAULT '0.0',
  `max_page_size` int(11) unsigned NOT NULL DEFAULT '0',
  `auto_refresh_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` datetime DEFAULT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `username` (`username`),
  KEY `dept_id` (`dept_id`),
  KEY `issuperuser` (`isadmin`),
  KEY `group_id` (`group_id`,`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_staff`
--

LOCK TABLES `os_staff` WRITE;
/*!40000 ALTER TABLE `os_staff` DISABLE KEYS */;
INSERT INTO `os_staff` VALUES (1,1,1,'bellingan','Admin','Admin','9988fb07f58701ba02b199c665380162','admin@archidea.us','',NULL,'','',1,1,1,0,0,0,0,2.0,0,0,'2010-09-10 21:39:19','2010-09-11 14:49:45','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `os_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_syslog`
--

DROP TABLE IF EXISTS `os_syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_syslog` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` enum('Debug','Warning','Error') NOT NULL,
  `title` varchar(255) NOT NULL,
  `log` text NOT NULL,
  `logger` varchar(64) NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_syslog`
--

LOCK TABLES `os_syslog` WRITE;
/*!40000 ALTER TABLE `os_syslog` DISABLE KEYS */;
INSERT INTO `os_syslog` VALUES (1,'Debug','osTicket installed!','Congratulations osTicket basic installation completed!\n\nThank you for choosing osTicket!','','127.0.0.2','2010-09-10 21:39:19','2010-09-10 21:39:19'),(2,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:30:56','2010-09-11 14:30:56'),(3,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:06','2010-09-11 14:31:06'),(4,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:24','2010-09-11 14:31:24'),(5,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:25','2010-09-11 14:31:25'),(6,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:29','2010-09-11 14:31:29'),(7,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:34','2010-09-11 14:31:34'),(8,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY tpl.created DESC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:39','2010-09-11 14:31:39'),(9,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:42','2010-09-11 14:31:42'),(10,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:32:04','2010-09-11 14:32:04'),(11,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:32:07','2010-09-11 14:32:07'),(12,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:32:08','2010-09-11 14:32:08'),(13,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_ccc_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:49:51','2010-09-11 14:49:51');
/*!40000 ALTER TABLE `os_syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket`
--

DROP TABLE IF EXISTS `os_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket` (
  `ticket_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticketID` int(11) unsigned NOT NULL DEFAULT '0',
  `dept_id` int(10) unsigned NOT NULL DEFAULT '1',
  `priority_id` int(10) unsigned NOT NULL DEFAULT '2',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(120) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `subject` varchar(64) NOT NULL DEFAULT '[no subject]',
  `helptopic` varchar(255) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `phone_ext` varchar(8) DEFAULT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `status` enum('open','closed') NOT NULL DEFAULT 'open',
  `source` enum('Web','Email','Phone','Other') NOT NULL DEFAULT 'Other',
  `isoverdue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isanswered` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `duedate` datetime DEFAULT NULL,
  `reopened` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `lastmessage` datetime DEFAULT NULL,
  `lastresponse` datetime DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ticket_id`),
  UNIQUE KEY `email_extid` (`ticketID`,`email`),
  KEY `dept_id` (`dept_id`),
  KEY `staff_id` (`staff_id`),
  KEY `status` (`status`),
  KEY `priority_id` (`priority_id`),
  KEY `created` (`created`),
  KEY `closed` (`closed`),
  KEY `duedate` (`duedate`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket`
--

LOCK TABLES `os_ticket` WRITE;
/*!40000 ALTER TABLE `os_ticket` DISABLE KEYS */;
INSERT INTO `os_ticket` VALUES (1,427432,1,2,0,0,'support@osticket.com','osTicket Support','osTicket Installed!','Commercial support',NULL,NULL,'','open','Web',0,0,NULL,NULL,NULL,NULL,NULL,'2010-09-10 21:39:19','0000-00-00 00:00:00'),(2,207704,1,3,2,0,'kek@it.it','Svai','fddfh','Billing','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 00:52:40',NULL,'2010-09-11 00:52:40','0000-00-00 00:00:00'),(3,951599,1,3,2,0,'kek@it.it','Svai','fddfh','Billing','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 00:52:57',NULL,'2010-09-11 00:52:57','0000-00-00 00:00:00'),(4,4,1,3,2,0,'kek@it.it','Svai','fddfh','Billing','','','127.0.0.2','open','Web',0,1,NULL,NULL,NULL,'2010-09-11 01:58:23','2010-09-11 01:58:35','2010-09-11 00:54:50','2010-09-11 01:58:35'),(5,5,3,2,3,0,'kek@und.lol','Ablaiz','si è gankato','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 14:28:55',NULL,'2010-09-11 14:28:55','0000-00-00 00:00:00'),(6,6,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 14:52:52',NULL,'2010-09-11 14:52:52','0000-00-00 00:00:00'),(7,7,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 14:55:11',NULL,'2010-09-11 14:55:11','0000-00-00 00:00:00'),(8,8,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 14:56:13',NULL,'2010-09-11 14:56:13','0000-00-00 00:00:00'),(9,9,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:02:23',NULL,'2010-09-11 15:02:23','0000-00-00 00:00:00'),(10,10,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:04:25',NULL,'2010-09-11 15:04:25','0000-00-00 00:00:00'),(11,11,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:04:44',NULL,'2010-09-11 15:04:44','0000-00-00 00:00:00'),(12,12,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:05:15',NULL,'2010-09-11 15:05:15','0000-00-00 00:00:00'),(13,13,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:07:48',NULL,'2010-09-11 15:07:48','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `os_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_attachment`
--

DROP TABLE IF EXISTS `os_ticket_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_attachment` (
  `attach_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ref_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ref_type` enum('M','R') NOT NULL DEFAULT 'M',
  `file_size` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(128) NOT NULL DEFAULT '',
  `file_key` varchar(128) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`attach_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `ref_type` (`ref_type`),
  KEY `ref_id` (`ref_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_attachment`
--

LOCK TABLES `os_ticket_attachment` WRITE;
/*!40000 ALTER TABLE `os_ticket_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_ticket_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_lock`
--

DROP TABLE IF EXISTS `os_ticket_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_lock` (
  `lock_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `expire` datetime DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`lock_id`),
  UNIQUE KEY `ticket_id` (`ticket_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_lock`
--

LOCK TABLES `os_ticket_lock` WRITE;
/*!40000 ALTER TABLE `os_ticket_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_ticket_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_message`
--

DROP TABLE IF EXISTS `os_ticket_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_message` (
  `msg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `messageId` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `headers` text,
  `source` varchar(16) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `msgId` (`messageId`),
  FULLTEXT KEY `message` (`message`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_message`
--

LOCK TABLES `os_ticket_message` WRITE;
/*!40000 ALTER TABLE `os_ticket_message` DISABLE KEYS */;
INSERT INTO `os_ticket_message` VALUES (1,1,NULL,'Thank you for choosing osTicket.\n\nPlease make sure you join the osTicket forums at http://osticket.com/forums to stay up to date on the latest news, security alerts and updates. The osTicket forums are also a great place to get assistance, guidance, tips, and help from other osTicket users. In addition to the forums, the osTicket wiki provides a useful collection of educational materials, documentation, and notes from the community. We welcome your contributions to the osTicket community.\n\nIf you are looking for a greater level of support, we provide professional services and commercial support with guaranteed response times, and access to the core development team. We can also help customize osTicket or even add new features to the system to meet your unique needs.\n\nFor more information or to discuss your needs, please contact us today at http://osticket.com/support/. Your feedback is greatly appreciated!\n\n- The osTicket Team',NULL,'Web','','2010-09-10 21:39:19',NULL),(2,2,'','fdhfd','','Web','127.0.0.2','2010-09-11 00:52:40',NULL),(3,3,'','fdhfd','','Web','127.0.0.2','2010-09-11 00:52:57',NULL),(4,4,'','fdhfd','','Web','127.0.0.2','2010-09-11 00:54:50',NULL),(5,4,'','We ma allora ?\r\n','','Web','127.0.0.2','2010-09-11 01:58:23',NULL),(6,5,'','Tuttoh!','','Web','127.0.0.2','2010-09-11 14:28:55',NULL),(7,6,'','ciao zi','','Web','127.0.0.2','2010-09-11 14:52:52',NULL),(8,7,'','ciao zi','','Web','127.0.0.2','2010-09-11 14:55:11',NULL),(9,8,'','ciao zi','','Web','127.0.0.2','2010-09-11 14:56:13',NULL),(10,9,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:02:23',NULL),(11,10,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:04:25',NULL),(12,11,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:04:44',NULL),(13,12,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:05:15',NULL),(14,13,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:07:48',NULL);
/*!40000 ALTER TABLE `os_ticket_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_note`
--

DROP TABLE IF EXISTS `os_ticket_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_note` (
  `note_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT 'Generic Intermal Notes',
  `note` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`note_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `staff_id` (`staff_id`),
  FULLTEXT KEY `note` (`note`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_note`
--

LOCK TABLES `os_ticket_note` WRITE;
/*!40000 ALTER TABLE `os_ticket_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_ticket_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_priority`
--

DROP TABLE IF EXISTS `os_ticket_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_priority` (
  `priority_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `priority` varchar(60) NOT NULL DEFAULT '',
  `priority_desc` varchar(30) NOT NULL DEFAULT '',
  `priority_color` varchar(7) NOT NULL DEFAULT '',
  `priority_urgency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ispublic` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`priority_id`),
  UNIQUE KEY `priority` (`priority`),
  KEY `priority_urgency` (`priority_urgency`),
  KEY `ispublic` (`ispublic`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_priority`
--

LOCK TABLES `os_ticket_priority` WRITE;
/*!40000 ALTER TABLE `os_ticket_priority` DISABLE KEYS */;
INSERT INTO `os_ticket_priority` VALUES (1,'low','Low','#DDFFDD',4,1),(2,'normal','Normal','#FFFFF0',3,1),(3,'high','High','#FEE7E7',2,1),(4,'emergency','Emergency','#FEE7E7',1,0);
/*!40000 ALTER TABLE `os_ticket_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_response`
--

DROP TABLE IF EXISTS `os_ticket_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_response` (
  `response_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_name` varchar(32) NOT NULL DEFAULT '',
  `response` text NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`response_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `msg_id` (`msg_id`),
  KEY `staff_id` (`staff_id`),
  FULLTEXT KEY `response` (`response`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_response`
--

LOCK TABLES `os_ticket_response` WRITE;
/*!40000 ALTER TABLE `os_ticket_response` DISABLE KEYS */;
INSERT INTO `os_ticket_response` VALUES (1,5,4,1,'Admin Admin','Ma allora cosa ?\r\n','127.0.0.2','2010-09-11 01:58:35','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `os_ticket_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_timezone`
--

DROP TABLE IF EXISTS `os_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_timezone` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `offset` float(3,1) NOT NULL DEFAULT '0.0',
  `timezone` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_timezone`
--

LOCK TABLES `os_timezone` WRITE;
/*!40000 ALTER TABLE `os_timezone` DISABLE KEYS */;
INSERT INTO `os_timezone` VALUES (1,-12.0,'Eniwetok, Kwajalein'),(2,-11.0,'Midway Island, Samoa'),(3,-10.0,'Hawaii'),(4,-9.0,'Alaska'),(5,-8.0,'Pacific Time (US & Canada)'),(6,-7.0,'Mountain Time (US & Canada)'),(7,-6.0,'Central Time (US & Canada), Mexico City'),(8,-5.0,'Eastern Time (US & Canada), Bogota, Lima'),(9,-4.0,'Atlantic Time (Canada), Caracas, La Paz'),(10,-3.5,'Newfoundland'),(11,-3.0,'Brazil, Buenos Aires, Georgetown'),(12,-2.0,'Mid-Atlantic'),(13,-1.0,'Azores, Cape Verde Islands'),(14,0.0,'Western Europe Time, London, Lisbon, Casablanca'),(15,1.0,'Brussels, Copenhagen, Madrid, Paris'),(16,2.0,'Kaliningrad, South Africa'),(17,3.0,'Baghdad, Riyadh, Moscow, St. Petersburg'),(18,3.5,'Tehran'),(19,4.0,'Abu Dhabi, Muscat, Baku, Tbilisi'),(20,4.5,'Kabul'),(21,5.0,'Ekaterinburg, Islamabad, Karachi, Tashkent'),(22,5.5,'Bombay, Calcutta, Madras, New Delhi'),(23,6.0,'Almaty, Dhaka, Colombo'),(24,7.0,'Bangkok, Hanoi, Jakarta'),(25,8.0,'Beijing, Perth, Singapore, Hong Kong'),(26,9.0,'Tokyo, Seoul, Osaka, Sapporo, Yakutsk'),(27,9.5,'Adelaide, Darwin'),(28,10.0,'Eastern Australia, Guam, Vladivostok'),(29,11.0,'Magadan, Solomon Islands, New Caledonia'),(30,12.0,'Auckland, Wellington, Fiji, Kamchatka');
/*!40000 ALTER TABLE `os_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `osticket`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `osticket` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `osticket`;

--
-- Table structure for table `os_api_key`
--

DROP TABLE IF EXISTS `os_api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_api_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `ipaddr` varchar(16) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipaddr` (`ipaddr`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_api_key`
--

LOCK TABLES `os_api_key` WRITE;
/*!40000 ALTER TABLE `os_api_key` DISABLE KEYS */;
INSERT INTO `os_api_key` VALUES (1,1,'192.168.1.5','siri!','2010-09-10 21:39:18','2010-09-10 21:39:18');
/*!40000 ALTER TABLE `os_api_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_config`
--

DROP TABLE IF EXISTS `os_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_config` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `isonline` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timezone_offset` float(3,1) NOT NULL DEFAULT '0.0',
  `enable_daylight_saving` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `staff_ip_binding` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `staff_max_logins` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `staff_login_timeout` int(10) unsigned NOT NULL DEFAULT '2',
  `staff_session_timeout` int(10) unsigned NOT NULL DEFAULT '30',
  `client_max_logins` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `client_login_timeout` int(10) unsigned NOT NULL DEFAULT '2',
  `client_session_timeout` int(10) unsigned NOT NULL DEFAULT '30',
  `max_page_size` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `max_open_tickets` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `max_file_size` int(11) unsigned NOT NULL DEFAULT '1048576',
  `autolock_minutes` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `overdue_grace_period` int(10) unsigned NOT NULL DEFAULT '0',
  `alert_email_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `default_email_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `default_dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default_priority_id` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `default_template_id` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `default_smtp_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `spoof_default_smtp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `clickable_urls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allow_priority_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_email_priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_captcha` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_auto_cron` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_mail_fetch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_email_piping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `send_sql_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `send_mailparse_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `send_login_errors` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `save_email_headers` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `strip_quoted_reply` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_ticket_activity` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_autoresponder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_autoresponder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_notice_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ticket_alert_admin` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_alert_dept_members` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_alert_laststaff` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `note_alert_laststaff` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `note_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `note_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overdue_alert_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overdue_alert_assigned` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `overdue_alert_dept_manager` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `overdue_alert_dept_members` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `auto_assign_reopened_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `show_assigned_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_answered_tickets` tinyint(1) NOT NULL DEFAULT '0',
  `hide_staff_name` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overlimit_notice_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_attachments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allow_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_email_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_online_attachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_online_attachments_onlogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `random_ticket_ids` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_level` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `log_graceperiod` int(10) unsigned NOT NULL DEFAULT '12',
  `upload_dir` varchar(255) NOT NULL DEFAULT '',
  `allowed_filetypes` varchar(255) NOT NULL DEFAULT '.doc, .pdf',
  `time_format` varchar(32) NOT NULL DEFAULT ' h:i A',
  `date_format` varchar(32) NOT NULL DEFAULT 'm/d/Y',
  `datetime_format` varchar(60) NOT NULL DEFAULT 'm/d/Y g:i a',
  `daydatetime_format` varchar(60) NOT NULL DEFAULT 'D, M j Y g:ia',
  `reply_separator` varchar(60) NOT NULL DEFAULT '-- do not edit --',
  `admin_email` varchar(125) NOT NULL DEFAULT '',
  `helpdesk_title` varchar(255) NOT NULL DEFAULT 'osTicket Support Ticket System',
  `helpdesk_url` varchar(255) NOT NULL DEFAULT '',
  `api_passphrase` varchar(125) NOT NULL DEFAULT '',
  `ostversion` varchar(16) NOT NULL DEFAULT '',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `isoffline` (`isonline`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_config`
--

LOCK TABLES `os_config` WRITE;
/*!40000 ALTER TABLE `os_config` DISABLE KEYS */;
INSERT INTO `os_config` VALUES (1,1,2.0,0,1,4,2,30,4,2,30,25,0,10485760,3,0,2,1,1,2,1,0,0,1,1,0,0,0,0,0,1,1,1,0,1,1,1,0,0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1,0,1,0,0,0,0,1,1,1,1,1,0,2,12,'/srv/www/htdocs/osticket/att','.doc, .pdf,',' h:i A','m/d/Y','m/d/Y g:i a','D, M j Y g:ia','-- do not edit --','admin@archidea.us','Inner GDI','http://susi/osticket/upload/','','1.6 ST','2010-09-10 19:39:19');
/*!40000 ALTER TABLE `os_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_department`
--

DROP TABLE IF EXISTS `os_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_department` (
  `dept_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `autoresp_email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `manager_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dept_name` varchar(32) NOT NULL DEFAULT '',
  `dept_signature` tinytext NOT NULL,
  `ispublic` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ticket_auto_response` tinyint(1) NOT NULL DEFAULT '1',
  `message_auto_response` tinyint(1) NOT NULL DEFAULT '0',
  `can_append_signature` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_name` (`dept_name`),
  KEY `manager_id` (`manager_id`),
  KEY `autoresp_email_id` (`autoresp_email_id`),
  KEY `tpl_id` (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_department`
--

LOCK TABLES `os_department` WRITE;
/*!40000 ALTER TABLE `os_department` DISABLE KEYS */;
INSERT INTO `os_department` VALUES (1,2,1,0,1,'Support','Support Dept',1,1,1,1,'2010-09-11 14:32:01','2010-09-10 21:39:18'),(2,0,1,0,0,'Billing','Billing Dept',1,1,1,1,'2010-09-10 21:39:18','2010-09-10 21:39:18'),(3,2,1,0,0,'Hardware','--\r\nHardware',1,1,1,0,'2010-09-11 01:37:23','2010-09-11 01:37:23');
/*!40000 ALTER TABLE `os_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_email`
--

DROP TABLE IF EXISTS `os_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_email` (
  `email_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `noautoresp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `priority_id` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `email` varchar(125) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(125) NOT NULL,
  `userpass` varchar(125) NOT NULL,
  `mail_active` tinyint(1) NOT NULL DEFAULT '0',
  `mail_host` varchar(125) NOT NULL,
  `mail_protocol` enum('POP','IMAP') NOT NULL DEFAULT 'POP',
  `mail_encryption` enum('NONE','SSL') NOT NULL,
  `mail_port` int(6) DEFAULT NULL,
  `mail_fetchfreq` tinyint(3) NOT NULL DEFAULT '5',
  `mail_fetchmax` tinyint(4) NOT NULL DEFAULT '30',
  `mail_delete` tinyint(1) NOT NULL DEFAULT '0',
  `mail_errors` tinyint(3) NOT NULL DEFAULT '0',
  `mail_lasterror` datetime DEFAULT NULL,
  `mail_lastfetch` datetime DEFAULT NULL,
  `smtp_active` tinyint(1) DEFAULT '0',
  `smtp_host` varchar(125) NOT NULL,
  `smtp_port` int(6) DEFAULT NULL,
  `smtp_secure` tinyint(1) NOT NULL DEFAULT '1',
  `smtp_auth` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email` (`email`),
  KEY `priority_id` (`priority_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_email`
--

LOCK TABLES `os_email` WRITE;
/*!40000 ALTER TABLE `os_email` DISABLE KEYS */;
INSERT INTO `os_email` VALUES (1,0,2,1,'admin@tsmt.eu','Support','','',0,'','POP','NONE',NULL,5,30,0,0,NULL,NULL,0,'',NULL,1,1,'2010-09-10 21:39:19','2010-09-10 21:39:19'),(2,0,1,1,'alerts@tsmt.eu','osTicket Alerts','','',0,'','POP','NONE',NULL,5,30,0,0,NULL,NULL,0,'',NULL,1,1,'2010-09-10 21:39:19','2010-09-10 21:39:19'),(3,0,1,1,'noreply@tsmt.eu','','','',0,'','POP','NONE',NULL,5,30,0,0,NULL,NULL,0,'',NULL,1,1,'2010-09-10 21:39:19','2010-09-10 21:39:19');
/*!40000 ALTER TABLE `os_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_email_banlist`
--

DROP TABLE IF EXISTS `os_email_banlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_email_banlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `submitter` varchar(126) NOT NULL DEFAULT '',
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_email_banlist`
--

LOCK TABLES `os_email_banlist` WRITE;
/*!40000 ALTER TABLE `os_email_banlist` DISABLE KEYS */;
INSERT INTO `os_email_banlist` VALUES (1,'test@example.com','System','2010-09-10 21:39:18');
/*!40000 ALTER TABLE `os_email_banlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_email_template`
--

DROP TABLE IF EXISTS `os_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_email_template` (
  `tpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cfg_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `notes` text,
  `ticket_autoresp_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_autoresp_body` text NOT NULL,
  `ticket_notice_subj` varchar(255) NOT NULL,
  `ticket_notice_body` text NOT NULL,
  `ticket_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_alert_body` text NOT NULL,
  `message_autoresp_subj` varchar(255) NOT NULL DEFAULT '',
  `message_autoresp_body` text NOT NULL,
  `message_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `message_alert_body` text NOT NULL,
  `note_alert_subj` varchar(255) NOT NULL,
  `note_alert_body` text NOT NULL,
  `assigned_alert_subj` varchar(255) NOT NULL DEFAULT '',
  `assigned_alert_body` text NOT NULL,
  `ticket_overdue_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_overdue_body` text NOT NULL,
  `ticket_overlimit_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_overlimit_body` text NOT NULL,
  `ticket_reply_subj` varchar(255) NOT NULL DEFAULT '',
  `ticket_reply_body` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tpl_id`),
  KEY `cfg_id` (`cfg_id`),
  FULLTEXT KEY `message_subj` (`ticket_reply_subj`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_email_template`
--

LOCK TABLES `os_email_template` WRITE;
/*!40000 ALTER TABLE `os_email_template` DISABLE KEYS */;
INSERT INTO `os_email_template` VALUES (1,1,'osTicket Default Template','Default osTicket templates','Support Ticket Opened [#%ticket]','%name,\r\n\r\nA request for support has been created and assigned ticket #%ticket. A representative will follow-up with you as soon as possible.\r\n\r\nYou can view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\nIf you wish to send additional comments or information regarding this issue, please don\'t open a new ticket. Simply login using the link above and update the ticket.\r\n\r\n%signature','[#%ticket] %subject','%name,\r\n\r\nOur customer care team has created a ticket, #%ticket on your behalf, with the following message.\r\n\r\n%message\r\n\r\nIf you wish to provide additional comments or information regarding this issue, please don\'t open a new ticket. You can update or view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Ticket Alert','%staff,\r\n\r\nNew ticket #%ticket created.\r\n-------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','[#%ticket] Message Added','%name,\r\n\r\nYour reply to support request #%ticket has been noted.\r\n\r\nYou can view this support request progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Message Alert','%staff,\r\n\r\nNew message appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','New Internal Note Alert','%staff,\r\n\r\nInternal note appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\n\r\n%note\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','Ticket #%ticket Assigned to you','%assignee,\r\n\r\n%assigner has assigned ticket #%ticket to you!\r\n\r\n%message\r\n\r\nTo view complete details, simply login to the support system.\r\n\r\n- Your friendly Support Ticket System - powered by osTicket.','Stale Ticket Alert','%staff,\r\n\r\nA ticket, #%ticket assigned to you or in your department is seriously overdue.\r\n\r\n%url/scp/tickets.php?id=%id\r\n\r\nWe should all work hard to guarantee that all tickets are being addressed in a timely manner. Enough baby talk...please address the issue or you will hear from me again.\r\n\r\n\r\n- Your friendly (although with limited patience) Support Ticket System - powered by osTicket.','Support Ticket Denied','%name\r\n\r\nNo support ticket has been created. You\'ve exceeded maximum number of open tickets allowed.\r\n\r\nThis is a temporary block. To be able to open another ticket, one of your pending tickets must be closed. To update or add comments to an open ticket simply login using the link below.\r\n\r\n%url/view.php?e=%email\r\n\r\nThank you.\r\n\r\nSupport Ticket System','[#%ticket] %subject','%name,\r\n\r\nA customer support staff member has replied to your support request, #%ticket with the following response:\r\n\r\n%response\r\n\r\nWe hope this response has sufficiently answered your questions. If not, please do not send another email. Instead, reply to this email or login to your account for a complete archive of all your support requests and responses.\r\n\r\n%url/view.php?e=%email&t=%ticket\r\n\r\n%signature','2010-09-10 21:39:18','2010-09-10 21:39:18'),(2,1,'Hardware','New template: copy of osTicket Default Template','Support Ticket Opened [#%ticket]','%name,\r\n\r\nA request for support has been created and assigned ticket #%ticket. A representative will follow-up with you as soon as possible.\r\n\r\nYou can view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\nIf you wish to send additional comments or information regarding this issue, please don\'t open a new ticket. Simply login using the link above and update the ticket.\r\n\r\n%signature','[#%ticket] %subject','%name,\r\n\r\nOur customer care team has created a ticket, #%ticket on your behalf, with the following message.\r\n\r\n%message\r\n\r\nIf you wish to provide additional comments or information regarding this issue, please don\'t open a new ticket. You can update or view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Ticket Alert','%staff,\r\n\r\nNew ticket #%ticket created.\r\n-------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','[#%ticket] Message Added','%name,\r\n\r\nYour reply to support request #%ticket has been noted.\r\n\r\nYou can view this support request progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Message Alert','%staff,\r\n\r\nNew message appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','New Internal Note Alert','%staff,\r\n\r\nInternal note appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\n\r\n%note\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','Ticket #%ticket Assigned to you','%assignee,\r\n\r\n%assigner has assigned ticket #%ticket to you!\r\n\r\n%message\r\n\r\nTo view complete details, simply login to the support system.\r\n\r\n- Your friendly Support Ticket System - powered by osTicket.','Stale Ticket Alert','%staff,\r\n\r\nA ticket, #%ticket assigned to you or in your department is seriously overdue.\r\n\r\n%url/scp/tickets.php?id=%id\r\n\r\nWe should all work hard to guarantee that all tickets are being addressed in a timely manner. Enough baby talk...please address the issue or you will hear from me again.\r\n\r\n\r\n- Your friendly (although with limited patience) Support Ticket System - powered by osTicket.','Support Ticket Denied','%name\r\n\r\nNo support ticket has been created. You\'ve exceeded maximum number of open tickets allowed.\r\n\r\nThis is a temporary block. To be able to open another ticket, one of your pending tickets must be closed. To update or add comments to an open ticket simply login using the link below.\r\n\r\n%url/view.php?e=%email\r\n\r\nThank you.\r\n\r\nSupport Ticket System','[#%ticket] %subject','%name,\r\n\r\nA customer support staff member has replied to your support request, #%ticket with the following response:\r\n\r\n%response\r\n\r\nWe hope this response has sufficiently answered your questions. If not, please do not send another email. Instead, reply to this email or login to your account for a complete archive of all your support requests and responses.\r\n\r\n%url/view.php?e=%email&t=%ticket\r\n\r\n%signature','2010-09-11 01:36:38','2010-09-11 01:36:38'),(3,1,'pp2','New template: copy of osTicket Default Template','Support Ticket Opened [#%ticket]','%name,\r\n\r\nA request for support has been created and assigned ticket #%ticket. A representative will follow-up with you as soon as possible.\r\n\r\nYou can view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\nIf you wish to send additional comments or information regarding this issue, please don\'t open a new ticket. Simply login using the link above and update the ticket.\r\n\r\n%signature','[#%ticket] %subject','%name,\r\n\r\nOur customer care team has created a ticket, #%ticket on your behalf, with the following message.\r\n\r\n%message\r\n\r\nIf you wish to provide additional comments or information regarding this issue, please don\'t open a new ticket. You can update or view this ticket\'s progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Ticket Alert','%staff,\r\n\r\nNew ticket #%ticket created.\r\n-------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','[#%ticket] Message Added','%name,\r\n\r\nYour reply to support request #%ticket has been noted.\r\n\r\nYou can view this support request progress online here: %url/view.php?e=%email&t=%ticket.\r\n\r\n%signature','New Message Alert','%staff,\r\n\r\nNew message appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\nEmail: %email\r\nDept: %dept\r\n\r\n%message\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','New Internal Note Alert','%staff,\r\n\r\nInternal note appended to ticket #%ticket\r\n\r\n----------------------\r\nName: %name\r\n\r\n%note\r\n-------------------\r\n\r\nTo view/respond to the ticket, please login to the support ticket system.\r\n\r\n- Your friendly Customer Support System - powered by osTicket.','Ticket #%ticket Assigned to you','%assignee,\r\n\r\n%assigner has assigned ticket #%ticket to you!\r\n\r\n%message\r\n\r\nTo view complete details, simply login to the support system.\r\n\r\n- Your friendly Support Ticket System - powered by osTicket.','Stale Ticket Alert','%staff,\r\n\r\nA ticket, #%ticket assigned to you or in your department is seriously overdue.\r\n\r\n%url/scp/tickets.php?id=%id\r\n\r\nWe should all work hard to guarantee that all tickets are being addressed in a timely manner. Enough baby talk...please address the issue or you will hear from me again.\r\n\r\n\r\n- Your friendly (although with limited patience) Support Ticket System - powered by osTicket.','Support Ticket Denied','%name\r\n\r\nNo support ticket has been created. You\'ve exceeded maximum number of open tickets allowed.\r\n\r\nThis is a temporary block. To be able to open another ticket, one of your pending tickets must be closed. To update or add comments to an open ticket simply login using the link below.\r\n\r\n%url/view.php?e=%email\r\n\r\nThank you.\r\n\r\nSupport Ticket System','[#%ticket] %subject','%name,\r\n\r\nA customer support staff member has replied to your support request, #%ticket with the following response:\r\n\r\n%response\r\n\r\nWe hope this response has sufficiently answered your questions. If not, please do not send another email. Instead, reply to this email or login to your account for a complete archive of all your support requests and responses.\r\n\r\n%url/view.php?e=%email&t=%ticket\r\n\r\n%signature','2010-09-11 14:31:34','2010-09-11 14:31:34');
/*!40000 ALTER TABLE `os_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_groups`
--

DROP TABLE IF EXISTS `os_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `dept_access` varchar(255) NOT NULL DEFAULT '',
  `can_create_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_edit_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_delete_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_close_tickets` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_transfer_tickets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `can_ban_emails` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_manage_kb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`group_id`),
  KEY `group_active` (`group_enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_groups`
--

LOCK TABLES `os_groups` WRITE;
/*!40000 ALTER TABLE `os_groups` DISABLE KEYS */;
INSERT INTO `os_groups` VALUES (1,1,'Admins','1',1,1,1,1,1,1,1,'2010-09-10 21:39:18','2010-09-10 21:39:18'),(2,1,'Managers','1',1,1,0,1,1,1,1,'2010-09-10 21:39:18','2010-09-10 21:39:18'),(3,1,'Staff','1',1,0,0,0,0,0,0,'2010-09-10 21:39:18','2010-09-10 21:39:18');
/*!40000 ALTER TABLE `os_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_help_topic`
--

DROP TABLE IF EXISTS `os_help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_help_topic` (
  `topic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `noautoresp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `priority_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dept_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `topic` varchar(32) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic` (`topic`),
  KEY `priority_id` (`priority_id`),
  KEY `dept_id` (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_help_topic`
--

LOCK TABLES `os_help_topic` WRITE;
/*!40000 ALTER TABLE `os_help_topic` DISABLE KEYS */;
INSERT INTO `os_help_topic` VALUES (1,0,0,2,1,'Support','2010-09-10 21:39:18','2010-09-11 01:49:26'),(2,0,0,3,1,'Billing','2010-09-10 21:39:18','2010-09-11 01:49:26'),(3,1,0,2,3,'Riparazione','2010-09-11 01:37:57','2010-09-11 01:37:57'),(4,1,0,2,3,'Powizzare','2010-09-11 01:38:13','2010-09-11 01:38:13');
/*!40000 ALTER TABLE `os_help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_kb_premade`
--

DROP TABLE IF EXISTS `os_kb_premade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_kb_premade` (
  `premade_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` int(10) unsigned NOT NULL DEFAULT '0',
  `isenabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `title` varchar(125) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`premade_id`),
  UNIQUE KEY `title_2` (`title`),
  KEY `dept_id` (`dept_id`),
  KEY `active` (`isenabled`),
  FULLTEXT KEY `title` (`title`,`answer`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_kb_premade`
--

LOCK TABLES `os_kb_premade` WRITE;
/*!40000 ALTER TABLE `os_kb_premade` DISABLE KEYS */;
INSERT INTO `os_kb_premade` VALUES (1,0,1,'What is osTicket (sample)?','\r\nosTicket is a widely-used open source support ticket system, an attractive alternative to higher-cost and complex customer support systems - simple, lightweight, reliable, open source, web-based and easy to setup and use.','2010-09-10 21:39:18','2010-09-10 21:39:18'),(2,0,1,'Sample (with variables)','\r\n%name,\r\n\r\nYour ticket #%ticket created on %createdate is in %dept department.\r\n\r\n','2010-09-10 21:39:18','2010-09-10 21:39:18');
/*!40000 ALTER TABLE `os_kb_premade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_staff`
--

DROP TABLE IF EXISTS `os_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_staff` (
  `staff_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dept_id` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `passwd` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `phone` varchar(24) NOT NULL DEFAULT '',
  `phone_ext` varchar(6) DEFAULT NULL,
  `mobile` varchar(24) NOT NULL DEFAULT '',
  `signature` tinytext NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `isvisible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `onvacation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `daylight_saving` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `append_signature` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `change_passwd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timezone_offset` float(3,1) NOT NULL DEFAULT '0.0',
  `max_page_size` int(11) unsigned NOT NULL DEFAULT '0',
  `auto_refresh_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastlogin` datetime DEFAULT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `username` (`username`),
  KEY `dept_id` (`dept_id`),
  KEY `issuperuser` (`isadmin`),
  KEY `group_id` (`group_id`,`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_staff`
--

LOCK TABLES `os_staff` WRITE;
/*!40000 ALTER TABLE `os_staff` DISABLE KEYS */;
INSERT INTO `os_staff` VALUES (1,1,1,'bellingan','Admin','Admin','9988fb07f58701ba02b199c665380162','admin@archidea.us','',NULL,'','',1,1,1,0,0,0,0,2.0,0,0,'2010-09-10 21:39:19','2010-09-11 14:49:45','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `os_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_syslog`
--

DROP TABLE IF EXISTS `os_syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_syslog` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` enum('Debug','Warning','Error') NOT NULL,
  `title` varchar(255) NOT NULL,
  `log` text NOT NULL,
  `logger` varchar(64) NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_syslog`
--

LOCK TABLES `os_syslog` WRITE;
/*!40000 ALTER TABLE `os_syslog` DISABLE KEYS */;
INSERT INTO `os_syslog` VALUES (1,'Debug','osTicket installed!','Congratulations osTicket basic installation completed!\n\nThank you for choosing osTicket!','','127.0.0.2','2010-09-10 21:39:19','2010-09-10 21:39:19'),(2,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:30:56','2010-09-11 14:30:56'),(3,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:06','2010-09-11 14:31:06'),(4,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:24','2010-09-11 14:31:24'),(5,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:25','2010-09-11 14:31:25'),(6,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:29','2010-09-11 14:31:29'),(7,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:34','2010-09-11 14:31:34'),(8,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY tpl.created DESC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:39','2010-09-11 14:31:39'),(9,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:31:42','2010-09-11 14:31:42'),(10,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:32:04','2010-09-11 14:32:04'),(11,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:32:07','2010-09-11 14:32:07'),(12,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_c8c_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:32:08','2010-09-11 14:32:08'),(13,'Error','DB Error #1','[SELECT tpl.*,count(dept.tpl_id) as depts  FROM os_email_template tpl LEFT JOIN os_department dept USING(tpl_id)   GROUP BY tpl.tpl_id  ORDER BY name ASC ]\n\nCan\'t create/write to file \'/tmp/mysql/#sql_ccc_0.MYI\' (Errcode: 2)','','127.0.0.2','2010-09-11 14:49:51','2010-09-11 14:49:51');
/*!40000 ALTER TABLE `os_syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket`
--

DROP TABLE IF EXISTS `os_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket` (
  `ticket_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticketID` int(11) unsigned NOT NULL DEFAULT '0',
  `dept_id` int(10) unsigned NOT NULL DEFAULT '1',
  `priority_id` int(10) unsigned NOT NULL DEFAULT '2',
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(120) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `subject` varchar(64) NOT NULL DEFAULT '[no subject]',
  `helptopic` varchar(255) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `phone_ext` varchar(8) DEFAULT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `status` enum('open','closed') NOT NULL DEFAULT 'open',
  `source` enum('Web','Email','Phone','Other') NOT NULL DEFAULT 'Other',
  `isoverdue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isanswered` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `duedate` datetime DEFAULT NULL,
  `reopened` datetime DEFAULT NULL,
  `closed` datetime DEFAULT NULL,
  `lastmessage` datetime DEFAULT NULL,
  `lastresponse` datetime DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ticket_id`),
  UNIQUE KEY `email_extid` (`ticketID`,`email`),
  KEY `dept_id` (`dept_id`),
  KEY `staff_id` (`staff_id`),
  KEY `status` (`status`),
  KEY `priority_id` (`priority_id`),
  KEY `created` (`created`),
  KEY `closed` (`closed`),
  KEY `duedate` (`duedate`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket`
--

LOCK TABLES `os_ticket` WRITE;
/*!40000 ALTER TABLE `os_ticket` DISABLE KEYS */;
INSERT INTO `os_ticket` VALUES (1,427432,1,2,0,0,'support@osticket.com','osTicket Support','osTicket Installed!','Commercial support',NULL,NULL,'','open','Web',0,0,NULL,NULL,NULL,NULL,NULL,'2010-09-10 21:39:19','0000-00-00 00:00:00'),(2,207704,1,3,2,0,'kek@it.it','Svai','fddfh','Billing','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 00:52:40',NULL,'2010-09-11 00:52:40','0000-00-00 00:00:00'),(3,951599,1,3,2,0,'kek@it.it','Svai','fddfh','Billing','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 00:52:57',NULL,'2010-09-11 00:52:57','0000-00-00 00:00:00'),(4,4,1,3,2,0,'kek@it.it','Svai','fddfh','Billing','','','127.0.0.2','open','Web',0,1,NULL,NULL,NULL,'2010-09-11 01:58:23','2010-09-11 01:58:35','2010-09-11 00:54:50','2010-09-11 01:58:35'),(5,5,3,2,3,0,'kek@und.lol','Ablaiz','si è gankato','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 14:28:55',NULL,'2010-09-11 14:28:55','0000-00-00 00:00:00'),(6,6,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 14:52:52',NULL,'2010-09-11 14:52:52','0000-00-00 00:00:00'),(7,7,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 14:55:11',NULL,'2010-09-11 14:55:11','0000-00-00 00:00:00'),(8,8,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 14:56:13',NULL,'2010-09-11 14:56:13','0000-00-00 00:00:00'),(9,9,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:02:23',NULL,'2010-09-11 15:02:23','0000-00-00 00:00:00'),(10,10,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:04:25',NULL,'2010-09-11 15:04:25','0000-00-00 00:00:00'),(11,11,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:04:44',NULL,'2010-09-11 15:04:44','0000-00-00 00:00:00'),(12,12,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:05:15',NULL,'2010-09-11 15:05:15','0000-00-00 00:00:00'),(13,13,3,2,3,0,'kek@und.lol','Ablaiz','1243','Riparazione','','','127.0.0.2','open','Web',0,0,NULL,NULL,NULL,'2010-09-11 15:07:48',NULL,'2010-09-11 15:07:48','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `os_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_attachment`
--

DROP TABLE IF EXISTS `os_ticket_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_attachment` (
  `attach_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ref_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ref_type` enum('M','R') NOT NULL DEFAULT 'M',
  `file_size` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(128) NOT NULL DEFAULT '',
  `file_key` varchar(128) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`attach_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `ref_type` (`ref_type`),
  KEY `ref_id` (`ref_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_attachment`
--

LOCK TABLES `os_ticket_attachment` WRITE;
/*!40000 ALTER TABLE `os_ticket_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_ticket_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_lock`
--

DROP TABLE IF EXISTS `os_ticket_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_lock` (
  `lock_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `expire` datetime DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`lock_id`),
  UNIQUE KEY `ticket_id` (`ticket_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_lock`
--

LOCK TABLES `os_ticket_lock` WRITE;
/*!40000 ALTER TABLE `os_ticket_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_ticket_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_message`
--

DROP TABLE IF EXISTS `os_ticket_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_message` (
  `msg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `messageId` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `headers` text,
  `source` varchar(16) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `msgId` (`messageId`),
  FULLTEXT KEY `message` (`message`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_message`
--

LOCK TABLES `os_ticket_message` WRITE;
/*!40000 ALTER TABLE `os_ticket_message` DISABLE KEYS */;
INSERT INTO `os_ticket_message` VALUES (1,1,NULL,'Thank you for choosing osTicket.\n\nPlease make sure you join the osTicket forums at http://osticket.com/forums to stay up to date on the latest news, security alerts and updates. The osTicket forums are also a great place to get assistance, guidance, tips, and help from other osTicket users. In addition to the forums, the osTicket wiki provides a useful collection of educational materials, documentation, and notes from the community. We welcome your contributions to the osTicket community.\n\nIf you are looking for a greater level of support, we provide professional services and commercial support with guaranteed response times, and access to the core development team. We can also help customize osTicket or even add new features to the system to meet your unique needs.\n\nFor more information or to discuss your needs, please contact us today at http://osticket.com/support/. Your feedback is greatly appreciated!\n\n- The osTicket Team',NULL,'Web','','2010-09-10 21:39:19',NULL),(2,2,'','fdhfd','','Web','127.0.0.2','2010-09-11 00:52:40',NULL),(3,3,'','fdhfd','','Web','127.0.0.2','2010-09-11 00:52:57',NULL),(4,4,'','fdhfd','','Web','127.0.0.2','2010-09-11 00:54:50',NULL),(5,4,'','We ma allora ?\r\n','','Web','127.0.0.2','2010-09-11 01:58:23',NULL),(6,5,'','Tuttoh!','','Web','127.0.0.2','2010-09-11 14:28:55',NULL),(7,6,'','ciao zi','','Web','127.0.0.2','2010-09-11 14:52:52',NULL),(8,7,'','ciao zi','','Web','127.0.0.2','2010-09-11 14:55:11',NULL),(9,8,'','ciao zi','','Web','127.0.0.2','2010-09-11 14:56:13',NULL),(10,9,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:02:23',NULL),(11,10,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:04:25',NULL),(12,11,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:04:44',NULL),(13,12,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:05:15',NULL),(14,13,'','ciao zi','','Web','127.0.0.2','2010-09-11 15:07:48',NULL);
/*!40000 ALTER TABLE `os_ticket_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_note`
--

DROP TABLE IF EXISTS `os_ticket_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_note` (
  `note_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT 'Generic Intermal Notes',
  `note` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`note_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `staff_id` (`staff_id`),
  FULLTEXT KEY `note` (`note`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_note`
--

LOCK TABLES `os_ticket_note` WRITE;
/*!40000 ALTER TABLE `os_ticket_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `os_ticket_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_priority`
--

DROP TABLE IF EXISTS `os_ticket_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_priority` (
  `priority_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `priority` varchar(60) NOT NULL DEFAULT '',
  `priority_desc` varchar(30) NOT NULL DEFAULT '',
  `priority_color` varchar(7) NOT NULL DEFAULT '',
  `priority_urgency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ispublic` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`priority_id`),
  UNIQUE KEY `priority` (`priority`),
  KEY `priority_urgency` (`priority_urgency`),
  KEY `ispublic` (`ispublic`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_priority`
--

LOCK TABLES `os_ticket_priority` WRITE;
/*!40000 ALTER TABLE `os_ticket_priority` DISABLE KEYS */;
INSERT INTO `os_ticket_priority` VALUES (1,'low','Low','#DDFFDD',4,1),(2,'normal','Normal','#FFFFF0',3,1),(3,'high','High','#FEE7E7',2,1),(4,'emergency','Emergency','#FEE7E7',1,0);
/*!40000 ALTER TABLE `os_ticket_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_ticket_response`
--

DROP TABLE IF EXISTS `os_ticket_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_ticket_response` (
  `response_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_id` int(11) unsigned NOT NULL DEFAULT '0',
  `staff_name` varchar(32) NOT NULL DEFAULT '',
  `response` text NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`response_id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `msg_id` (`msg_id`),
  KEY `staff_id` (`staff_id`),
  FULLTEXT KEY `response` (`response`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_ticket_response`
--

LOCK TABLES `os_ticket_response` WRITE;
/*!40000 ALTER TABLE `os_ticket_response` DISABLE KEYS */;
INSERT INTO `os_ticket_response` VALUES (1,5,4,1,'Admin Admin','Ma allora cosa ?\r\n','127.0.0.2','2010-09-11 01:58:35','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `os_ticket_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os_timezone`
--

DROP TABLE IF EXISTS `os_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os_timezone` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `offset` float(3,1) NOT NULL DEFAULT '0.0',
  `timezone` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os_timezone`
--

LOCK TABLES `os_timezone` WRITE;
/*!40000 ALTER TABLE `os_timezone` DISABLE KEYS */;
INSERT INTO `os_timezone` VALUES (1,-12.0,'Eniwetok, Kwajalein'),(2,-11.0,'Midway Island, Samoa'),(3,-10.0,'Hawaii'),(4,-9.0,'Alaska'),(5,-8.0,'Pacific Time (US & Canada)'),(6,-7.0,'Mountain Time (US & Canada)'),(7,-6.0,'Central Time (US & Canada), Mexico City'),(8,-5.0,'Eastern Time (US & Canada), Bogota, Lima'),(9,-4.0,'Atlantic Time (Canada), Caracas, La Paz'),(10,-3.5,'Newfoundland'),(11,-3.0,'Brazil, Buenos Aires, Georgetown'),(12,-2.0,'Mid-Atlantic'),(13,-1.0,'Azores, Cape Verde Islands'),(14,0.0,'Western Europe Time, London, Lisbon, Casablanca'),(15,1.0,'Brussels, Copenhagen, Madrid, Paris'),(16,2.0,'Kaliningrad, South Africa'),(17,3.0,'Baghdad, Riyadh, Moscow, St. Petersburg'),(18,3.5,'Tehran'),(19,4.0,'Abu Dhabi, Muscat, Baku, Tbilisi'),(20,4.5,'Kabul'),(21,5.0,'Ekaterinburg, Islamabad, Karachi, Tashkent'),(22,5.5,'Bombay, Calcutta, Madras, New Delhi'),(23,6.0,'Almaty, Dhaka, Colombo'),(24,7.0,'Bangkok, Hanoi, Jakarta'),(25,8.0,'Beijing, Perth, Singapore, Hong Kong'),(26,9.0,'Tokyo, Seoul, Osaka, Sapporo, Yakutsk'),(27,9.5,'Adelaide, Darwin'),(28,10.0,'Eastern Australia, Guam, Vladivostok'),(29,11.0,'Magadan, Solomon Islands, New Caledonia'),(30,12.0,'Auckland, Wellington, Fiji, Kamchatka');
/*!40000 ALTER TABLE `os_timezone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-09-12  2:17:00
