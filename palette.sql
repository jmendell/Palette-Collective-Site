# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.34)
# Database: palette_wp
# Generation Time: 2017-03-14 03:51:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Mr WordPress','','https://wordpress.org/','','2017-01-31 00:30:51','2017-01-31 00:30:51','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://mypalettecollective.com','yes'),
	(2,'home','http://mypalettecollective.com','yes'),
	(3,'blogname','Palette Collective','yes'),
	(4,'blogdescription','Just another WordPress site','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','info@sandovaldesign.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','F j, Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
	(29,'hack_file','0','yes'),
	(30,'blog_charset','UTF-8','yes'),
	(31,'moderation_keys','','no'),
	(32,'active_plugins','a:3:{i:0;s:29:\"gravityforms/gravityforms.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}','yes'),
	(33,'category_base','','yes'),
	(34,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(35,'comment_max_links','2','yes'),
	(36,'gmt_offset','0','yes'),
	(37,'default_email_category','1','yes'),
	(38,'recently_edited','','no'),
	(39,'template','pc','yes'),
	(40,'stylesheet','pc','yes'),
	(41,'comment_whitelist','1','yes'),
	(42,'blacklist_keys','','no'),
	(43,'comment_registration','0','yes'),
	(44,'html_type','text/html','yes'),
	(45,'use_trackback','0','yes'),
	(46,'default_role','subscriber','yes'),
	(47,'db_version','38590','yes'),
	(48,'uploads_use_yearmonth_folders','1','yes'),
	(49,'upload_path','','yes'),
	(50,'blog_public','1','yes'),
	(51,'default_link_category','2','yes'),
	(52,'show_on_front','page','yes'),
	(53,'tag_base','','yes'),
	(54,'show_avatars','1','yes'),
	(55,'avatar_rating','G','yes'),
	(56,'upload_url_path','','yes'),
	(57,'thumbnail_size_w','150','yes'),
	(58,'thumbnail_size_h','150','yes'),
	(59,'thumbnail_crop','1','yes'),
	(60,'medium_size_w','300','yes'),
	(61,'medium_size_h','300','yes'),
	(62,'avatar_default','mystery','yes'),
	(63,'large_size_w','1024','yes'),
	(64,'large_size_h','1024','yes'),
	(65,'image_default_link_type','none','yes'),
	(66,'image_default_size','','yes'),
	(67,'image_default_align','','yes'),
	(68,'close_comments_for_old_posts','0','yes'),
	(69,'close_comments_days_old','14','yes'),
	(70,'thread_comments','1','yes'),
	(71,'thread_comments_depth','5','yes'),
	(72,'page_comments','0','yes'),
	(73,'comments_per_page','50','yes'),
	(74,'default_comments_page','newest','yes'),
	(75,'comment_order','asc','yes'),
	(76,'sticky_posts','a:0:{}','yes'),
	(77,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(78,'widget_text','a:0:{}','yes'),
	(79,'widget_rss','a:0:{}','yes'),
	(80,'uninstall_plugins','a:0:{}','no'),
	(81,'timezone_string','','yes'),
	(82,'page_for_posts','0','yes'),
	(83,'page_on_front','5','yes'),
	(84,'default_post_format','0','yes'),
	(85,'link_manager_enabled','0','yes'),
	(86,'finished_splitting_shared_terms','1','yes'),
	(87,'site_icon','0','yes'),
	(88,'medium_large_size_w','768','yes'),
	(89,'medium_large_size_h','0','yes'),
	(90,'initial_db_version','35700','yes'),
	(91,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(92,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(93,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(94,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(95,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-footer\";N;s:13:\"array_version\";i:3;}','yes'),
	(99,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'cron','a:4:{i:1489494651;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1489537866;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1489538388;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(111,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1489463306;s:7:\"checked\";a:1:{s:2:\"pc\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(113,'auth_key','{L2Ls#Lf9]_V|J@GOb!5R-xZ{$U|s/+I-^x~ut[m@u9*k1bl03ySI)i-B]0>F=r1','yes'),
	(114,'auth_salt','U7,fsK]!$vD!HiCc_j 5LewsUd`Y@;vd!*,+vF2<>*$rmaS]/f&1_(?0s!|[uegR','yes'),
	(115,'logged_in_key','vlCOt,)killc,PxXN)xL=KWlcd#yk~B!;Jy]D[^%@,,9~|qB8o@i7MAvm;pCHJ}_','yes'),
	(116,'logged_in_salt','K/~gAGUzA ic9DdfL9QRH<%>-9}LAuegkAsN?]|=j)(6cU>R{7_I^$yMSO$L:TX-','yes'),
	(117,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"info@sandovaldesign.com\";s:7:\"version\";s:5:\"4.4.7\";s:9:\"timestamp\";i:1485822660;}','yes'),
	(118,'nonce_key','V=yBMDz/bBnnGUXWq-3E@RZi%H,3xYvt.`f{LLb%z%`?v_1k^FPOz?.c;!4_jmg0','yes'),
	(119,'nonce_salt','WI*lh90*V]pR(&7&UvKJpG+b/y{*:Z|/aR<vd{bC1IYEq#PKzB5xGHWeB9UsV>ip','yes'),
	(140,'recently_activated','a:0:{}','yes'),
	(141,'acf_version','5.2.8','yes'),
	(142,'widget_gform_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(143,'gravityformsaddon_gravityformswebapi_version','1.0','yes'),
	(145,'gform_enable_background_updates','','yes'),
	(146,'gform_longtext_ready','1','yes'),
	(147,'rg_form_version','1.9.18','yes'),
	(158,'cptui_new_install','false','yes'),
	(162,'rg_gforms_key','b9ca0de0b5768ecb7e68010f3e6d6dd6','yes'),
	(163,'gform_enable_noconflict','','yes'),
	(164,'rg_gforms_enable_akismet','0','yes'),
	(165,'rg_gforms_currency','USD','yes'),
	(166,'theme_mods_twentysixteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1485822785;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),
	(167,'current_theme','Sage Starter Theme','yes'),
	(168,'theme_mods_pc','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary_navigation\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes'),
	(169,'theme_switched','','yes'),
	(255,'options_social_nav_0_social_network','instagram','no'),
	(256,'_options_social_nav_0_social_network','field_588fe5e232464','no'),
	(257,'options_social_nav_0_link','#','no'),
	(258,'_options_social_nav_0_link','field_588fe5f632465','no'),
	(259,'options_social_nav_1_social_network','facebook','no'),
	(260,'_options_social_nav_1_social_network','field_588fe5e232464','no'),
	(261,'options_social_nav_1_link','#','no'),
	(262,'_options_social_nav_1_link','field_588fe5f632465','no'),
	(263,'options_social_nav_2_social_network','twitter','no'),
	(264,'_options_social_nav_2_social_network','field_588fe5e232464','no'),
	(265,'options_social_nav_2_link','#','no'),
	(266,'_options_social_nav_2_link','field_588fe5f632465','no'),
	(267,'options_social_nav_3_social_network','linkedin','no'),
	(268,'_options_social_nav_3_social_network','field_588fe5e232464','no'),
	(269,'options_social_nav_3_link','#','no'),
	(270,'_options_social_nav_3_link','field_588fe5f632465','no'),
	(271,'options_social_nav','4','no'),
	(272,'_options_social_nav','field_588fe6f7d0855','no'),
	(273,'options_site_logo','35','no'),
	(274,'_options_site_logo','field_588fe5a90a3db','no'),
	(279,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(325,'cptui_post_types','a:1:{s:8:\"location\";a:28:{s:4:\"name\";s:8:\"location\";s:5:\"label\";s:9:\"Locations\";s:14:\"singular_label\";s:8:\"Location\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:18:\"dashicons-location\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}','yes'),
	(331,'rewrite_rules','a:108:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"location/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"location/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"location/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"location/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"location/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"location/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"location/([^/]+)/embed/?$\";s:41:\"index.php?location=$matches[1]&embed=true\";s:29:\"location/([^/]+)/trackback/?$\";s:35:\"index.php?location=$matches[1]&tb=1\";s:37:\"location/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&paged=$matches[2]\";s:44:\"location/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&cpage=$matches[2]\";s:33:\"location/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?location=$matches[1]&page=$matches[2]\";s:25:\"location/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"location/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"location/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"location/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"location/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"location/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
	(402,'category_children','a:0:{}','yes'),
	(411,'rg_gforms_disable_css','1','yes'),
	(412,'rg_gforms_captcha_public_key','','yes'),
	(413,'rg_gforms_captcha_private_key','','yes'),
	(414,'rg_gforms_message','<!--GFM-->','yes'),
	(529,'_transient_timeout_gform_update_info','1489549703','no'),
	(530,'_transient_gform_update_info','a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:7:{s:4:\"date\";s:29:\"Tue, 14 Mar 2017 03:47:27 GMT\";s:6:\"server\";s:12:\"Apache/2.4.7\";s:12:\"x-powered-by\";s:21:\"PHP/5.5.9-1ubuntu4.21\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:16:\"content-encoding\";s:4:\"gzip\";s:14:\"content-length\";s:4:\"2055\";s:12:\"content-type\";s:9:\"text/html\";}}s:4:\"body\";s:10464:\"{\"is_valid_key\":\"1\",\"version\":\"2.1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_2.1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=JN7zx0drBHVxHxCg1uzIT%2FGCN5M%3D\",\"expiration_time\":1495688400,\"offerings\":{\"gravityforms\":{\"is_available\":true,\"version\":\"2.1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_2.1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=JN7zx0drBHVxHxCg1uzIT%2FGCN5M%3D\"},\"gravityformsactivecampaign\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/activecampaign\\/gravityformsactivecampaign_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=hG8RV5K3NyBkf8PqV3lhAwj53jU%3D\"},\"gravityformsagilecrm\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/agilecrm\\/gravityformsagilecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=FuabHdmrk0OKn%2BBi7GCX7uKfp0k%3D\"},\"gravityformsauthorizenet\":{\"is_available\":true,\"version\":\"2.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=kw92tiiagQeLck2nE9i8HbcTLS0%3D\"},\"gravityformsaweber\":{\"is_available\":true,\"version\":\"2.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=f5BcVN3BQhkZUcmFq8m%2B7VI6mC8%3D\"},\"gravityformsbatchbook\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/batchbook\\/gravityformsbatchbook_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=53lJ7FLq5w2u253jWEL3t9mKftI%3D\"},\"gravityformsbreeze\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/breeze\\/gravityformsbreeze_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=xIajiQc0P9fcsym3g8OPyDv%2BE8g%3D\"},\"gravityformscampaignmonitor\":{\"is_available\":true,\"version\":\"3.4.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=bffMVwFcP%2FFQ1wNln3IV4aCYpNc%3D\"},\"gravityformscampfire\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campfire\\/gravityformscampfire_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=rTY%2F7YReI8oGmOydeW3wrg%2BhQPg%3D\"},\"gravityformscapsulecrm\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/capsulecrm\\/gravityformscapsulecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=AdCS%2B%2F7czJ5lg6I%2FagLJEwvkvTQ%3D\"},\"gravityformscleverreach\":{\"is_available\":true,\"version\":\"1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/cleverreach\\/gravityformscleverreach_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=7hMWf0Rh9xHMe7QELkcQPuDpk8g%3D\"},\"gravityformscoupons\":{\"is_available\":true,\"version\":\"2.5\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=UCGGm0NeL3b08KK%2BxCXCTernLEo%3D\"},\"gravityformsdebug\":{\"is_available\":true,\"version\":\"\",\"url\":\"\"},\"gravityformsdropbox\":{\"is_available\":true,\"version\":\"1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/dropbox\\/gravityformsdropbox_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=kPph4kwbmxEWO%2Fp0vXSiHV54p2E%3D\"},\"gravityformsemma\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/emma\\/gravityformsemma_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=nI0g%2BODpgeGXsmnJMLrcKgAHgjM%3D\"},\"gravityformsfreshbooks\":{\"is_available\":true,\"version\":\"2.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=MuIuMG31nfsBg%2B7IZwDuo7Vzgro%3D\"},\"gravityformsgetresponse\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/getresponse\\/gravityformsgetresponse_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Jn%2FCGKhtXMBkiO%2B7rwAk2T7oUk8%3D\"},\"gravityformshelpscout\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/helpscout\\/gravityformshelpscout_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VhzSSGb0IUFCdfMERNDfuZ3BAM8%3D\"},\"gravityformshighrise\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/highrise\\/gravityformshighrise_1.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Id17%2BKT%2BTH6h0Lu8PlNpGh9iu0I%3D\"},\"gravityformshipchat\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/hipchat\\/gravityformshipchat_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=HaXQpggYKcQhG%2FLRItsbQk5C60c%3D\"},\"gravityformsicontact\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/icontact\\/gravityformsicontact_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=dCwKUrIaPeHS0ZKkwvgo81LjJ8o%3D\"},\"gravityformslogging\":{\"is_available\":true,\"version\":\"1.0\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/logging\\/gravityformslogging_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=GkfLTxLNGkA6zopaNZ1VSY9S3WY%3D\"},\"gravityformsmadmimi\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/madmimi\\/gravityformsmadmimi_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=RDNcjTrWHMB0h5dmyFgUrY9yMuw%3D\"},\"gravityformsmailchimp\":{\"is_available\":true,\"version\":\"4.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=2c5D39FWFFN7%2Bi7td6NqoqAjj4o%3D\"},\"gravityformspartialentries\":{\"is_available\":true,\"version\":\"1.0\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/partialentries\\/gravityformspartialentries_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=4tlRg11ZqY9pt9lMMQcndmgO4V8%3D\"},\"gravityformspaypal\":{\"is_available\":true,\"version\":\"2.8\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=hkds8w1zxFJiyKetO5jcEd0K5aE%3D\"},\"gravityformspaypalexpresscheckout\":{\"is_available\":false,\"version\":\"\"},\"gravityformspaypalpaymentspro\":{\"is_available\":true,\"version\":\"2.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VNrfo%2FAUyitJy5OcP2dAPbadzvY%3D\"},\"gravityformspaypalpro\":{\"is_available\":true,\"version\":\"1.7\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=XdRmzfc11uDb1omTkv%2FhXQBH1ko%3D\"},\"gravityformspicatcha\":{\"is_available\":false,\"version\":\"2.0\"},\"gravityformspolls\":{\"is_available\":true,\"version\":\"3.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Qw%2B34a0%2B2reFghoY%2F4Fg93K5n9s%3D\"},\"gravityformsquiz\":{\"is_available\":true,\"version\":\"3.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=t0tG21z5%2BD%2BGjQyJs2nvjiPU4%2BI%3D\"},\"gravityformsrestapi\":{\"is_available\":true,\"version\":\"2.0-beta-2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/restapi\\/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=36PKzJIQm82SP9PfrPc1b6ghVQs%3D\"},\"gravityformssignature\":{\"is_available\":true,\"version\":\"3.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=WfAFGKIH106apJAKNROnX%2BqFIiY%3D\"},\"gravityformsslack\":{\"is_available\":true,\"version\":\"1.6\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/slack\\/gravityformsslack_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Ne95nGAeKLRYwQBG3h3Jgczm6iU%3D\"},\"gravityformsstripe\":{\"is_available\":true,\"version\":\"2.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=8%2F5%2BdqMZWm20G1DNyAXCX1g2ztw%3D\"},\"gravityformssurvey\":{\"is_available\":true,\"version\":\"3.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=3aORT38RDuIs7JaZOcq%2BdiIWWwQ%3D\"},\"gravityformstrello\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/trello\\/gravityformstrello_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=uDxDZ0U9iYemjhCfErsXeo4XOKU%3D\"},\"gravityformstwilio\":{\"is_available\":true,\"version\":\"2.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=s0oKxkQhoErM8CxkHxaySIptNZw%3D\"},\"gravityformsuserregistration\":{\"is_available\":true,\"version\":\"3.7\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_3.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VBF0ZZ1joGYaIOBxqfYhRIpzcRY%3D\"},\"gravityformszapier\":{\"is_available\":true,\"version\":\"2.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zapier\\/gravityformszapier_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=DbmRtMJFXdAo2MngAO%2FJuWV7V4Y%3D\"},\"gravityformszohocrm\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zohocrm\\/gravityformszohocrm_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=wwmD8rzS%2BKAD1lM3PhOAAEupKXQ%3D\"}},\"is_active\":\"1\"}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:10464:\"{\"is_valid_key\":\"1\",\"version\":\"2.1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_2.1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=JN7zx0drBHVxHxCg1uzIT%2FGCN5M%3D\",\"expiration_time\":1495688400,\"offerings\":{\"gravityforms\":{\"is_available\":true,\"version\":\"2.1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_2.1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=JN7zx0drBHVxHxCg1uzIT%2FGCN5M%3D\"},\"gravityformsactivecampaign\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/activecampaign\\/gravityformsactivecampaign_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=hG8RV5K3NyBkf8PqV3lhAwj53jU%3D\"},\"gravityformsagilecrm\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/agilecrm\\/gravityformsagilecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=FuabHdmrk0OKn%2BBi7GCX7uKfp0k%3D\"},\"gravityformsauthorizenet\":{\"is_available\":true,\"version\":\"2.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=kw92tiiagQeLck2nE9i8HbcTLS0%3D\"},\"gravityformsaweber\":{\"is_available\":true,\"version\":\"2.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=f5BcVN3BQhkZUcmFq8m%2B7VI6mC8%3D\"},\"gravityformsbatchbook\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/batchbook\\/gravityformsbatchbook_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=53lJ7FLq5w2u253jWEL3t9mKftI%3D\"},\"gravityformsbreeze\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/breeze\\/gravityformsbreeze_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=xIajiQc0P9fcsym3g8OPyDv%2BE8g%3D\"},\"gravityformscampaignmonitor\":{\"is_available\":true,\"version\":\"3.4.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=bffMVwFcP%2FFQ1wNln3IV4aCYpNc%3D\"},\"gravityformscampfire\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campfire\\/gravityformscampfire_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=rTY%2F7YReI8oGmOydeW3wrg%2BhQPg%3D\"},\"gravityformscapsulecrm\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/capsulecrm\\/gravityformscapsulecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=AdCS%2B%2F7czJ5lg6I%2FagLJEwvkvTQ%3D\"},\"gravityformscleverreach\":{\"is_available\":true,\"version\":\"1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/cleverreach\\/gravityformscleverreach_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=7hMWf0Rh9xHMe7QELkcQPuDpk8g%3D\"},\"gravityformscoupons\":{\"is_available\":true,\"version\":\"2.5\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=UCGGm0NeL3b08KK%2BxCXCTernLEo%3D\"},\"gravityformsdebug\":{\"is_available\":true,\"version\":\"\",\"url\":\"\"},\"gravityformsdropbox\":{\"is_available\":true,\"version\":\"1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/dropbox\\/gravityformsdropbox_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=kPph4kwbmxEWO%2Fp0vXSiHV54p2E%3D\"},\"gravityformsemma\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/emma\\/gravityformsemma_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=nI0g%2BODpgeGXsmnJMLrcKgAHgjM%3D\"},\"gravityformsfreshbooks\":{\"is_available\":true,\"version\":\"2.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=MuIuMG31nfsBg%2B7IZwDuo7Vzgro%3D\"},\"gravityformsgetresponse\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/getresponse\\/gravityformsgetresponse_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Jn%2FCGKhtXMBkiO%2B7rwAk2T7oUk8%3D\"},\"gravityformshelpscout\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/helpscout\\/gravityformshelpscout_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VhzSSGb0IUFCdfMERNDfuZ3BAM8%3D\"},\"gravityformshighrise\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/highrise\\/gravityformshighrise_1.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Id17%2BKT%2BTH6h0Lu8PlNpGh9iu0I%3D\"},\"gravityformshipchat\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/hipchat\\/gravityformshipchat_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=HaXQpggYKcQhG%2FLRItsbQk5C60c%3D\"},\"gravityformsicontact\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/icontact\\/gravityformsicontact_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=dCwKUrIaPeHS0ZKkwvgo81LjJ8o%3D\"},\"gravityformslogging\":{\"is_available\":true,\"version\":\"1.0\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/logging\\/gravityformslogging_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=GkfLTxLNGkA6zopaNZ1VSY9S3WY%3D\"},\"gravityformsmadmimi\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/madmimi\\/gravityformsmadmimi_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=RDNcjTrWHMB0h5dmyFgUrY9yMuw%3D\"},\"gravityformsmailchimp\":{\"is_available\":true,\"version\":\"4.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=2c5D39FWFFN7%2Bi7td6NqoqAjj4o%3D\"},\"gravityformspartialentries\":{\"is_available\":true,\"version\":\"1.0\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/partialentries\\/gravityformspartialentries_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=4tlRg11ZqY9pt9lMMQcndmgO4V8%3D\"},\"gravityformspaypal\":{\"is_available\":true,\"version\":\"2.8\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=hkds8w1zxFJiyKetO5jcEd0K5aE%3D\"},\"gravityformspaypalexpresscheckout\":{\"is_available\":false,\"version\":\"\"},\"gravityformspaypalpaymentspro\":{\"is_available\":true,\"version\":\"2.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VNrfo%2FAUyitJy5OcP2dAPbadzvY%3D\"},\"gravityformspaypalpro\":{\"is_available\":true,\"version\":\"1.7\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=XdRmzfc11uDb1omTkv%2FhXQBH1ko%3D\"},\"gravityformspicatcha\":{\"is_available\":false,\"version\":\"2.0\"},\"gravityformspolls\":{\"is_available\":true,\"version\":\"3.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Qw%2B34a0%2B2reFghoY%2F4Fg93K5n9s%3D\"},\"gravityformsquiz\":{\"is_available\":true,\"version\":\"3.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=t0tG21z5%2BD%2BGjQyJs2nvjiPU4%2BI%3D\"},\"gravityformsrestapi\":{\"is_available\":true,\"version\":\"2.0-beta-2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/restapi\\/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=36PKzJIQm82SP9PfrPc1b6ghVQs%3D\"},\"gravityformssignature\":{\"is_available\":true,\"version\":\"3.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=WfAFGKIH106apJAKNROnX%2BqFIiY%3D\"},\"gravityformsslack\":{\"is_available\":true,\"version\":\"1.6\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/slack\\/gravityformsslack_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Ne95nGAeKLRYwQBG3h3Jgczm6iU%3D\"},\"gravityformsstripe\":{\"is_available\":true,\"version\":\"2.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=8%2F5%2BdqMZWm20G1DNyAXCX1g2ztw%3D\"},\"gravityformssurvey\":{\"is_available\":true,\"version\":\"3.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=3aORT38RDuIs7JaZOcq%2BdiIWWwQ%3D\"},\"gravityformstrello\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/trello\\/gravityformstrello_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=uDxDZ0U9iYemjhCfErsXeo4XOKU%3D\"},\"gravityformstwilio\":{\"is_available\":true,\"version\":\"2.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=s0oKxkQhoErM8CxkHxaySIptNZw%3D\"},\"gravityformsuserregistration\":{\"is_available\":true,\"version\":\"3.7\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_3.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VBF0ZZ1joGYaIOBxqfYhRIpzcRY%3D\"},\"gravityformszapier\":{\"is_available\":true,\"version\":\"2.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zapier\\/gravityformszapier_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=DbmRtMJFXdAo2MngAO%2FJuWV7V4Y%3D\"},\"gravityformszohocrm\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zohocrm\\/gravityformszohocrm_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=wwmD8rzS%2BKAD1lM3PhOAAEupKXQ%3D\"}},\"is_active\":\"1\"}\";s:3:\"raw\";s:10692:\"HTTP/1.1 200 OK\r\nDate: Tue, 14 Mar 2017 03:47:27 GMT\r\nServer: Apache/2.4.7\r\nX-Powered-By: PHP/5.5.9-1ubuntu4.21\r\nVary: Accept-Encoding\r\nContent-Encoding: gzip\r\nContent-Length: 2055\r\nConnection: close\r\nContent-Type: text/html\r\n\r\n{\"is_valid_key\":\"1\",\"version\":\"2.1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_2.1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=JN7zx0drBHVxHxCg1uzIT%2FGCN5M%3D\",\"expiration_time\":1495688400,\"offerings\":{\"gravityforms\":{\"is_available\":true,\"version\":\"2.1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_2.1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=JN7zx0drBHVxHxCg1uzIT%2FGCN5M%3D\"},\"gravityformsactivecampaign\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/activecampaign\\/gravityformsactivecampaign_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=hG8RV5K3NyBkf8PqV3lhAwj53jU%3D\"},\"gravityformsagilecrm\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/agilecrm\\/gravityformsagilecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=FuabHdmrk0OKn%2BBi7GCX7uKfp0k%3D\"},\"gravityformsauthorizenet\":{\"is_available\":true,\"version\":\"2.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=kw92tiiagQeLck2nE9i8HbcTLS0%3D\"},\"gravityformsaweber\":{\"is_available\":true,\"version\":\"2.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=f5BcVN3BQhkZUcmFq8m%2B7VI6mC8%3D\"},\"gravityformsbatchbook\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/batchbook\\/gravityformsbatchbook_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=53lJ7FLq5w2u253jWEL3t9mKftI%3D\"},\"gravityformsbreeze\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/breeze\\/gravityformsbreeze_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=xIajiQc0P9fcsym3g8OPyDv%2BE8g%3D\"},\"gravityformscampaignmonitor\":{\"is_available\":true,\"version\":\"3.4.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=bffMVwFcP%2FFQ1wNln3IV4aCYpNc%3D\"},\"gravityformscampfire\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campfire\\/gravityformscampfire_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=rTY%2F7YReI8oGmOydeW3wrg%2BhQPg%3D\"},\"gravityformscapsulecrm\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/capsulecrm\\/gravityformscapsulecrm_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=AdCS%2B%2F7czJ5lg6I%2FagLJEwvkvTQ%3D\"},\"gravityformscleverreach\":{\"is_available\":true,\"version\":\"1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/cleverreach\\/gravityformscleverreach_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=7hMWf0Rh9xHMe7QELkcQPuDpk8g%3D\"},\"gravityformscoupons\":{\"is_available\":true,\"version\":\"2.5\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=UCGGm0NeL3b08KK%2BxCXCTernLEo%3D\"},\"gravityformsdebug\":{\"is_available\":true,\"version\":\"\",\"url\":\"\"},\"gravityformsdropbox\":{\"is_available\":true,\"version\":\"1.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/dropbox\\/gravityformsdropbox_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=kPph4kwbmxEWO%2Fp0vXSiHV54p2E%3D\"},\"gravityformsemma\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/emma\\/gravityformsemma_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=nI0g%2BODpgeGXsmnJMLrcKgAHgjM%3D\"},\"gravityformsfreshbooks\":{\"is_available\":true,\"version\":\"2.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=MuIuMG31nfsBg%2B7IZwDuo7Vzgro%3D\"},\"gravityformsgetresponse\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/getresponse\\/gravityformsgetresponse_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Jn%2FCGKhtXMBkiO%2B7rwAk2T7oUk8%3D\"},\"gravityformshelpscout\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/helpscout\\/gravityformshelpscout_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VhzSSGb0IUFCdfMERNDfuZ3BAM8%3D\"},\"gravityformshighrise\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/highrise\\/gravityformshighrise_1.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Id17%2BKT%2BTH6h0Lu8PlNpGh9iu0I%3D\"},\"gravityformshipchat\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/hipchat\\/gravityformshipchat_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=HaXQpggYKcQhG%2FLRItsbQk5C60c%3D\"},\"gravityformsicontact\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/icontact\\/gravityformsicontact_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=dCwKUrIaPeHS0ZKkwvgo81LjJ8o%3D\"},\"gravityformslogging\":{\"is_available\":true,\"version\":\"1.0\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/logging\\/gravityformslogging_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=GkfLTxLNGkA6zopaNZ1VSY9S3WY%3D\"},\"gravityformsmadmimi\":{\"is_available\":true,\"version\":\"1.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/madmimi\\/gravityformsmadmimi_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=RDNcjTrWHMB0h5dmyFgUrY9yMuw%3D\"},\"gravityformsmailchimp\":{\"is_available\":true,\"version\":\"4.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=2c5D39FWFFN7%2Bi7td6NqoqAjj4o%3D\"},\"gravityformspartialentries\":{\"is_available\":true,\"version\":\"1.0\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/partialentries\\/gravityformspartialentries_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=4tlRg11ZqY9pt9lMMQcndmgO4V8%3D\"},\"gravityformspaypal\":{\"is_available\":true,\"version\":\"2.8\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=hkds8w1zxFJiyKetO5jcEd0K5aE%3D\"},\"gravityformspaypalexpresscheckout\":{\"is_available\":false,\"version\":\"\"},\"gravityformspaypalpaymentspro\":{\"is_available\":true,\"version\":\"2.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VNrfo%2FAUyitJy5OcP2dAPbadzvY%3D\"},\"gravityformspaypalpro\":{\"is_available\":true,\"version\":\"1.7\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=XdRmzfc11uDb1omTkv%2FhXQBH1ko%3D\"},\"gravityformspicatcha\":{\"is_available\":false,\"version\":\"2.0\"},\"gravityformspolls\":{\"is_available\":true,\"version\":\"3.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Qw%2B34a0%2B2reFghoY%2F4Fg93K5n9s%3D\"},\"gravityformsquiz\":{\"is_available\":true,\"version\":\"3.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=t0tG21z5%2BD%2BGjQyJs2nvjiPU4%2BI%3D\"},\"gravityformsrestapi\":{\"is_available\":true,\"version\":\"2.0-beta-2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/restapi\\/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=36PKzJIQm82SP9PfrPc1b6ghVQs%3D\"},\"gravityformssignature\":{\"is_available\":true,\"version\":\"3.3\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=WfAFGKIH106apJAKNROnX%2BqFIiY%3D\"},\"gravityformsslack\":{\"is_available\":true,\"version\":\"1.6\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/slack\\/gravityformsslack_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=Ne95nGAeKLRYwQBG3h3Jgczm6iU%3D\"},\"gravityformsstripe\":{\"is_available\":true,\"version\":\"2.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=8%2F5%2BdqMZWm20G1DNyAXCX1g2ztw%3D\"},\"gravityformssurvey\":{\"is_available\":true,\"version\":\"3.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=3aORT38RDuIs7JaZOcq%2BdiIWWwQ%3D\"},\"gravityformstrello\":{\"is_available\":true,\"version\":\"1.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/trello\\/gravityformstrello_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=uDxDZ0U9iYemjhCfErsXeo4XOKU%3D\"},\"gravityformstwilio\":{\"is_available\":true,\"version\":\"2.2\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=s0oKxkQhoErM8CxkHxaySIptNZw%3D\"},\"gravityformsuserregistration\":{\"is_available\":true,\"version\":\"3.7\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_3.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=VBF0ZZ1joGYaIOBxqfYhRIpzcRY%3D\"},\"gravityformszapier\":{\"is_available\":true,\"version\":\"2.1\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zapier\\/gravityformszapier_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=DbmRtMJFXdAo2MngAO%2FJuWV7V4Y%3D\"},\"gravityformszohocrm\":{\"is_available\":true,\"version\":\"1.4\",\"url\":\"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/zohocrm\\/gravityformszohocrm_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1489636047&Signature=wwmD8rzS%2BKAD1lM3PhOAAEupKXQ%3D\"}},\"is_active\":\"1\"}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:7:{s:4:\"date\";a:1:{i:0;s:29:\"Tue, 14 Mar 2017 03:47:27 GMT\";}s:6:\"server\";a:1:{i:0;s:12:\"Apache/2.4.7\";}s:12:\"x-powered-by\";a:1:{i:0;s:21:\"PHP/5.5.9-1ubuntu4.21\";}s:4:\"vary\";a:1:{i:0;s:15:\"Accept-Encoding\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:14:\"content-length\";a:1:{i:0;s:4:\"2055\";}s:12:\"content-type\";a:1:{i:0;s:9:\"text/html\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.100000000000000088817841970012523233890533447265625;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:74:\"https://www.gravityhelp.com/wp-content/plugins/gravitymanager/version.php?\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}','no'),
	(531,'_transient_timeout_acf_pro_get_remote_info','1489506504','no'),
	(532,'_transient_acf_pro_get_remote_info','a:15:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:8:\"homepage\";s:37:\"https://www.advancedcustomfields.com/\";s:7:\"version\";s:6:\"5.5.10\";s:6:\"author\";s:13:\"Elliot Condon\";s:10:\"author_url\";s:28:\"http://www.elliotcondon.com/\";s:12:\"contributors\";s:12:\"elliotcondon\";s:8:\"requires\";s:5:\"3.6.0\";s:6:\"tested\";s:5:\"4.7.0\";s:4:\"tags\";a:56:{i:0;s:5:\"5.5.9\";i:1;s:5:\"5.5.7\";i:2;s:5:\"5.5.5\";i:3;s:5:\"5.5.3\";i:4;s:5:\"5.5.2\";i:5;s:5:\"5.5.1\";i:6;s:5:\"5.5.0\";i:7;s:5:\"5.4.8\";i:8;s:5:\"5.4.7\";i:9;s:5:\"5.4.6\";i:10;s:5:\"5.4.5\";i:11;s:5:\"5.4.4\";i:12;s:5:\"5.4.3\";i:13;s:5:\"5.4.2\";i:14;s:5:\"5.4.1\";i:15;s:5:\"5.4.0\";i:16;s:5:\"5.3.8\";i:17;s:5:\"5.3.7\";i:18;s:5:\"5.3.6\";i:19;s:5:\"5.3.5\";i:20;s:5:\"5.3.4\";i:21;s:5:\"5.3.3\";i:22;s:5:\"5.3.2\";i:23;s:6:\"5.3.10\";i:24;s:5:\"5.3.1\";i:25;s:5:\"5.3.0\";i:26;s:5:\"5.2.9\";i:27;s:5:\"5.2.8\";i:28;s:5:\"5.2.7\";i:29;s:5:\"5.2.6\";i:30;s:5:\"5.2.5\";i:31;s:5:\"5.2.4\";i:32;s:5:\"5.2.3\";i:33;s:5:\"5.2.2\";i:34;s:5:\"5.2.1\";i:35;s:5:\"5.2.0\";i:36;s:5:\"5.1.9\";i:37;s:5:\"5.1.8\";i:38;s:5:\"5.1.7\";i:39;s:5:\"5.1.6\";i:40;s:5:\"5.1.5\";i:41;s:5:\"5.1.4\";i:42;s:5:\"5.1.3\";i:43;s:5:\"5.1.2\";i:44;s:5:\"5.1.1\";i:45;s:5:\"5.1.0\";i:46;s:5:\"5.0.9\";i:47;s:5:\"5.0.8\";i:48;s:5:\"5.0.7\";i:49;s:5:\"5.0.6\";i:50;s:5:\"5.0.5\";i:51;s:5:\"5.0.4\";i:52;s:5:\"5.0.3\";i:53;s:5:\"5.0.2\";i:54;s:5:\"5.0.1\";i:55;s:5:\"5.0.0\";}s:6:\"tagged\";s:123:\"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit\";s:11:\"description\";s:4337:\"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href=\"https://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)\">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href=\"https://www.advancedcustomfields.com/\">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href=\"https://www.advancedcustomfields.com/resources/#getting-started)\">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href=\"https://www.advancedcustomfields.com/resources/#field-types)\">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href=\"https://www.advancedcustomfields.com/resources/#functions)\">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href=\"https://www.advancedcustomfields.com/resources/#actions)\">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href=\"https://www.advancedcustomfields.com/resources/#filters)\">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href=\"https://www.advancedcustomfields.com/resources/#how-to)\">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href=\"https://www.advancedcustomfields.com/resources/#tutorials)\">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href=\"http://support.advancedcustomfields.com/\">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n\";s:12:\"installation\";s:467:\"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item \"Custom Fields\" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group\'s location rules!</li><li>Read the documentation to display your data: </li></ol>\n\";s:9:\"changelog\";s:4928:\"<h4> 5.5.10 </h4>\n<ul><li>API: Added new functionality to the `acf_form()` function:</li><li>- added new <code>html_updated_message</code> setting</li><li>- added new <code>html_submit_button</code> setting</li><li>- added new <code>html_submit_spinner</code> setting</li><li>- added new <code>acf/pre_submit_form</code> filter run when form is successfully submit (before saving $_POST)</li><li>- added new <code>acf/submit_form</code> action run when form is successfully submit (after saving $_POST)</li><li>- added new <code>%post_id%</code> replace string to the <code>return</code> setting</li><li>- added new encryption logic to prevent $_POST exploits</li><li>- added new `acf_register_form()` function</li><li>Core: Fixed bug preventing values being loaded on a new post/page preview</li><li>Core: Fixed missing <code>Bulk Actions</code> dropdown on sync screen when no field groups exist</li><li>Core: Fixed bug ignoring PHP field groups if exists in JSON</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.9 </h4>\n<ul><li>Core: Fixed bug causing ACF4 PHP field groups to be ignored if missing ‘key’ setting</li></ul>\n<h4> 5.5.8 </h4>\n<ul><li>Flexible Content: Added logic to better <code>clean up</code> data when re-ordering layouts</li><li>oEmbed field: Fixed bug causing incorrect width and height settings in embed HTML</li><li>Core: Fixed bug causing incorrect Select2 CSS version loading for WooCommerce 2.7</li><li>Core: Fixed bug preventing <code>min-height</code> style being applied to floating width fields</li><li>Core: Added new JS <code>init</code> actions for wysiwyg, date, datetime, time and select2 fields</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.7 </h4>\n<ul><li>Core: Fixed bug causing `get_field()` to return incorrect data for sub fields registered via PHP code.</li></ul>\n<h4> 5.5.6 </h4>\n<ul><li>Core: Fixed bug causing license key to be ignored after changing url from http to https</li><li>Core: Fixed Select2 (v4) bug where <code>allow null</code> setting would not correctly save empty value</li><li>Core: Added new <code>acf/validate_field</code> filter</li><li>Core: Added new <code>acf/validate_field_group</code> filter</li><li>Core: Added new <code>acf/validate_post_id</code> filter</li><li>Core: Added new <code>row_index_offset</code> setting</li><li>Core: Fixed bug causing value loading issues for a taxonomy term in WP < 4.4</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.5 </h4>\n<ul><li>File field: Fixed bug creating draft post when saving an empty value</li><li>Image field: Fixed bug mentioned above</li></ul>\n<h4> 5.5.4 </h4>\n<ul><li>File field: Added logic to <code>connect</code> selected attachment to post (only if attachment is not <code>connected</code>)</li><li>File field: Removed `filesize()` call causing performance issues with externally hosted attachments</li><li>File field: Added AJAX validation to <code>basic</code> uploader</li><li>Image field: Added <code>connect</code> logic mentioned above</li><li>Image field: Added AJAX validation mentioned above</li><li>True false field: Improved usability by allowing <code>tab</code> key to focus element (use space or arrow keys to toggle)</li><li>Gallery field: Fixed bug causing unsaved changes in sidebar to be lost when selecting another attachment</li><li>API: Fixed `add_row()` and `add_sub_row()` return values (from true to new row index)</li><li>Core: Improved `get_posts()` query speeds by setting <code>update_cache</code> settings to false</li><li>Core: Allowed <code>instruction_placement</code> setting on <code>widget</code> forms (previously set always to <code>below fields</code>)</li><li>Core: Removed <code>ACF PRO invalid license nag</code> and will include fix for <code>protocol change</code> in next release</li><li>Language: Updated French translation - thanks to Martial Parfait</li></ul>\n<h4> 5.5.3 </h4>\n<ul><li>Options page: Fixed bug when using WPML in multiple tabs causing incorrect <code>lang</code> to be used during save.</li><li>Core: Added support with new `get_user_locale()` setting in WP 4.7</li><li>Core: Improved efficiency of termmeta DB upgrade logic</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.2 </h4>\n<ul><li>Tab field: Fixed bug causing value loading issues for field\'s with the same name</li><li>Repeater field: Fixed bug in <code>collapsed</code> setting where field key was shown instead of field label</li></ul>\n<h4> 5.5.1 </h4>\n<ul><li>Select field: Fixed bug preventing some field settings from being selected</li><li>Date picker field: Improved compatibility with customised values</li><li>Core: Added new <code>enqueue_datepicker</code> setting which can be used to prevent the library from being enqueued</li><li>Core: Added new <code>enqueue_datetimepicker</code> setting which can be used to prevent the library from being enqueued</li><li>Core: Minor fixes and improvements</li></ul>\n\";s:14:\"upgrade_notice\";s:551:\"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href=\"https://www.advancedcustomfields.com/resources/acfcompatibility/\">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n\";}','no'),
	(533,'_site_transient_timeout_theme_roots','1489465104','no'),
	(534,'_site_transient_theme_roots','a:1:{s:2:\"pc\";s:7:\"/themes\";}','no'),
	(535,'db_upgraded','','yes');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(4,5,'_edit_last','1'),
	(5,5,'_wp_page_template','template-home.php'),
	(6,5,'_edit_lock','1485901534:1'),
	(7,7,'_edit_last','1'),
	(8,7,'_wp_page_template','template-locations.php'),
	(9,7,'_edit_lock','1485888596:1'),
	(10,9,'_edit_last','1'),
	(11,9,'_wp_page_template','template-about.php'),
	(12,9,'_edit_lock','1485972476:1'),
	(13,11,'_edit_last','1'),
	(14,11,'_edit_lock','1485824487:1'),
	(15,15,'_wp_attached_file','2017/01/hero-1.jpg'),
	(16,15,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1021;s:4:\"file\";s:18:\"2017/01/hero-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hero-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hero-1-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hero-1-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"hero-1-1024x545.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(17,16,'hero_slider_0_slider_image','15'),
	(18,16,'_hero_slider_0_slider_image','field_588fdfe688620'),
	(19,16,'hero_slider_0_image_credit','Mia Hamm'),
	(20,16,'_hero_slider_0_image_credit','field_588fe003514e7'),
	(21,16,'hero_slider','1'),
	(22,16,'_hero_slider','field_588fdea434555'),
	(23,5,'hero_slider_0_slider_image','15'),
	(24,5,'_hero_slider_0_slider_image','field_588fdfe688620'),
	(25,5,'hero_slider_0_image_credit','Mia Hamm'),
	(26,5,'_hero_slider_0_image_credit','field_588fe003514e7'),
	(27,5,'hero_slider','2'),
	(28,5,'_hero_slider','field_588fdea434555'),
	(29,17,'_edit_last','1'),
	(30,17,'_edit_lock','1485825299:1'),
	(31,22,'_wp_attached_file','2017/01/nav-1.jpg'),
	(32,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:420;s:6:\"height\";i:213;s:4:\"file\";s:17:\"2017/01/nav-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"nav-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"nav-1-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(33,23,'_wp_attached_file','2017/01/nav-2.jpg'),
	(34,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:420;s:6:\"height\";i:213;s:4:\"file\";s:17:\"2017/01/nav-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"nav-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"nav-2-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(35,24,'_wp_attached_file','2017/01/nav-3.jpg'),
	(36,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:420;s:6:\"height\";i:213;s:4:\"file\";s:17:\"2017/01/nav-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"nav-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"nav-3-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(37,25,'_wp_attached_file','2017/01/nav-4.jpg'),
	(38,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:420;s:6:\"height\";i:213;s:4:\"file\";s:17:\"2017/01/nav-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"nav-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"nav-4-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(39,26,'bullet_navigation_0_text','About'),
	(40,26,'_bullet_navigation_0_text','field_588fe297eac60'),
	(41,26,'bullet_navigation_0_link','/about'),
	(42,26,'_bullet_navigation_0_link','field_588fe32ae75c0'),
	(43,26,'bullet_navigation_0_background','22'),
	(44,26,'_bullet_navigation_0_background','field_588fe2a9eac61'),
	(45,26,'bullet_navigation_1_text','Locations'),
	(46,26,'_bullet_navigation_1_text','field_588fe297eac60'),
	(47,26,'bullet_navigation_1_link','/locations'),
	(48,26,'_bullet_navigation_1_link','field_588fe32ae75c0'),
	(49,26,'bullet_navigation_1_background','23'),
	(50,26,'_bullet_navigation_1_background','field_588fe2a9eac61'),
	(51,26,'bullet_navigation_2_text','The Marketplace'),
	(52,26,'_bullet_navigation_2_text','field_588fe297eac60'),
	(53,26,'bullet_navigation_2_link','#'),
	(54,26,'_bullet_navigation_2_link','field_588fe32ae75c0'),
	(55,26,'bullet_navigation_2_background','24'),
	(56,26,'_bullet_navigation_2_background','field_588fe2a9eac61'),
	(57,26,'bullet_navigation_3_text','Events'),
	(58,26,'_bullet_navigation_3_text','field_588fe297eac60'),
	(59,26,'bullet_navigation_3_link','/about#events'),
	(60,26,'_bullet_navigation_3_link','field_588fe32ae75c0'),
	(61,26,'bullet_navigation_3_background','25'),
	(62,26,'_bullet_navigation_3_background','field_588fe2a9eac61'),
	(63,26,'bullet_navigation','4'),
	(64,26,'_bullet_navigation','field_588fe27feac5f'),
	(65,26,'hero_slider_0_slider_image','15'),
	(66,26,'_hero_slider_0_slider_image','field_588fdfe688620'),
	(67,26,'hero_slider_0_image_credit','Mia Hamm'),
	(68,26,'_hero_slider_0_image_credit','field_588fe003514e7'),
	(69,26,'hero_slider','1'),
	(70,26,'_hero_slider','field_588fdea434555'),
	(71,5,'bullet_navigation_0_text','About'),
	(72,5,'_bullet_navigation_0_text','field_588fe297eac60'),
	(73,5,'bullet_navigation_0_link','/about'),
	(74,5,'_bullet_navigation_0_link','field_588fe32ae75c0'),
	(75,5,'bullet_navigation_0_background','22'),
	(76,5,'_bullet_navigation_0_background','field_588fe2a9eac61'),
	(77,5,'bullet_navigation_1_text','Locations'),
	(78,5,'_bullet_navigation_1_text','field_588fe297eac60'),
	(79,5,'bullet_navigation_1_link','/locations'),
	(80,5,'_bullet_navigation_1_link','field_588fe32ae75c0'),
	(81,5,'bullet_navigation_1_background','23'),
	(82,5,'_bullet_navigation_1_background','field_588fe2a9eac61'),
	(83,5,'bullet_navigation_2_text','The Marketplace'),
	(84,5,'_bullet_navigation_2_text','field_588fe297eac60'),
	(85,5,'bullet_navigation_2_link','#'),
	(86,5,'_bullet_navigation_2_link','field_588fe32ae75c0'),
	(87,5,'bullet_navigation_2_background','24'),
	(88,5,'_bullet_navigation_2_background','field_588fe2a9eac61'),
	(89,5,'bullet_navigation_3_text','Events'),
	(90,5,'_bullet_navigation_3_text','field_588fe297eac60'),
	(91,5,'bullet_navigation_3_link','/about#events'),
	(92,5,'_bullet_navigation_3_link','field_588fe32ae75c0'),
	(93,5,'bullet_navigation_3_background','25'),
	(94,5,'_bullet_navigation_3_background','field_588fe2a9eac61'),
	(95,5,'bullet_navigation','4'),
	(96,5,'_bullet_navigation','field_588fe27feac5f'),
	(97,27,'_edit_last','1'),
	(98,27,'_edit_lock','1485825356:1'),
	(99,29,'_edit_last','1'),
	(100,29,'_edit_lock','1485878930:1'),
	(101,33,'_wp_attached_file','2017/01/center-logo.png'),
	(102,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:414;s:6:\"height\";i:195;s:4:\"file\";s:23:\"2017/01/center-logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"center-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"center-logo-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(105,35,'_wp_attached_file','2017/01/logo-short.png'),
	(106,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:267;s:6:\"height\";i:73;s:4:\"file\";s:22:\"2017/01/logo-short.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-short-150x73.png\";s:5:\"width\";i:150;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(107,36,'_menu_item_type','post_type'),
	(108,36,'_menu_item_menu_item_parent','0'),
	(109,36,'_menu_item_object_id','5'),
	(110,36,'_menu_item_object','page'),
	(111,36,'_menu_item_target',''),
	(112,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(113,36,'_menu_item_xfn',''),
	(114,36,'_menu_item_url',''),
	(116,37,'_menu_item_type','post_type'),
	(117,37,'_menu_item_menu_item_parent','0'),
	(118,37,'_menu_item_object_id','9'),
	(119,37,'_menu_item_object','page'),
	(120,37,'_menu_item_target',''),
	(121,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(122,37,'_menu_item_xfn',''),
	(123,37,'_menu_item_url',''),
	(125,38,'_menu_item_type','post_type'),
	(126,38,'_menu_item_menu_item_parent','0'),
	(127,38,'_menu_item_object_id','5'),
	(128,38,'_menu_item_object','page'),
	(129,38,'_menu_item_target',''),
	(130,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(131,38,'_menu_item_xfn',''),
	(132,38,'_menu_item_url',''),
	(133,38,'_menu_item_orphaned','1485831503'),
	(134,39,'_menu_item_type','post_type'),
	(135,39,'_menu_item_menu_item_parent','0'),
	(136,39,'_menu_item_object_id','7'),
	(137,39,'_menu_item_object','page'),
	(138,39,'_menu_item_target',''),
	(139,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(140,39,'_menu_item_xfn',''),
	(141,39,'_menu_item_url',''),
	(143,40,'_edit_lock','1485926085:1'),
	(144,40,'_edit_last','1'),
	(145,44,'_wp_attached_file','2017/01/location-hero.jpg'),
	(146,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1020;s:4:\"file\";s:25:\"2017/01/location-hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"location-hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"location-hero-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"location-hero-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"location-hero-1024x544.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:544;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(147,45,'background_image_0_desktop_image','44'),
	(148,45,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(149,45,'background_image_0_mobile_image','0'),
	(150,45,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(151,45,'background_image','1'),
	(152,45,'_background_image','field_56706beb9c8bf'),
	(153,7,'background_image_0_desktop_image','44'),
	(154,7,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(155,7,'background_image_0_mobile_image','44'),
	(156,7,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(157,7,'background_image','1'),
	(158,7,'_background_image','field_56706beb9c8bf'),
	(159,46,'background_image_0_desktop_image','44'),
	(160,46,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(161,46,'background_image_0_mobile_image','44'),
	(162,46,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(163,46,'background_image','1'),
	(164,46,'_background_image','field_56706beb9c8bf'),
	(165,48,'background_image','0'),
	(166,48,'_background_image','field_56706beb9c8bf'),
	(167,48,'bullet_navigation_0_text','About'),
	(168,48,'_bullet_navigation_0_text','field_588fe297eac60'),
	(169,48,'bullet_navigation_0_link','/about'),
	(170,48,'_bullet_navigation_0_link','field_588fe32ae75c0'),
	(171,48,'bullet_navigation_0_background','22'),
	(172,48,'_bullet_navigation_0_background','field_588fe2a9eac61'),
	(173,48,'bullet_navigation_1_text','Locations'),
	(174,48,'_bullet_navigation_1_text','field_588fe297eac60'),
	(175,48,'bullet_navigation_1_link','/locations'),
	(176,48,'_bullet_navigation_1_link','field_588fe32ae75c0'),
	(177,48,'bullet_navigation_1_background','23'),
	(178,48,'_bullet_navigation_1_background','field_588fe2a9eac61'),
	(179,48,'bullet_navigation_2_text','The Marketplace'),
	(180,48,'_bullet_navigation_2_text','field_588fe297eac60'),
	(181,48,'bullet_navigation_2_link','#'),
	(182,48,'_bullet_navigation_2_link','field_588fe32ae75c0'),
	(183,48,'bullet_navigation_2_background','24'),
	(184,48,'_bullet_navigation_2_background','field_588fe2a9eac61'),
	(185,48,'bullet_navigation_3_text','Events'),
	(186,48,'_bullet_navigation_3_text','field_588fe297eac60'),
	(187,48,'bullet_navigation_3_link','/about#events'),
	(188,48,'_bullet_navigation_3_link','field_588fe32ae75c0'),
	(189,48,'bullet_navigation_3_background','25'),
	(190,48,'_bullet_navigation_3_background','field_588fe2a9eac61'),
	(191,48,'bullet_navigation','4'),
	(192,48,'_bullet_navigation','field_588fe27feac5f'),
	(193,48,'hero_slider_0_slider_image','15'),
	(194,48,'_hero_slider_0_slider_image','field_588fdfe688620'),
	(195,48,'hero_slider_0_image_credit','Mia Hamm'),
	(196,48,'_hero_slider_0_image_credit','field_588fe003514e7'),
	(197,48,'hero_slider_1_slider_image','44'),
	(198,48,'_hero_slider_1_slider_image','field_588fdfe688620'),
	(199,48,'hero_slider_1_image_credit','Hope Solo'),
	(200,48,'_hero_slider_1_image_credit','field_588fe003514e7'),
	(201,48,'hero_slider','2'),
	(202,48,'_hero_slider','field_588fdea434555'),
	(203,5,'background_image','0'),
	(204,5,'_background_image','field_56706beb9c8bf'),
	(205,5,'hero_slider_1_slider_image','44'),
	(206,5,'_hero_slider_1_slider_image','field_588fdfe688620'),
	(207,5,'hero_slider_1_image_credit','Hope Solo'),
	(208,5,'_hero_slider_1_image_credit','field_588fe003514e7'),
	(209,50,'_edit_last','1'),
	(210,50,'_edit_lock','1485921686:1'),
	(211,52,'_edit_last','1'),
	(212,52,'coordinates','a:3:{s:7:\"address\";s:42:\"2100 S. Gilbert rd. #22 chandler, az 85286\";s:3:\"lat\";s:10:\"33.2757431\";s:3:\"lng\";s:19:\"-111.79182559999998\";}'),
	(213,52,'_coordinates','field_58910ffbb84e7'),
	(214,52,'_edit_lock','1485912522:1'),
	(215,52,'_wp_old_slug','52'),
	(216,53,'_wp_attached_file','2017/01/location-1.jpg'),
	(217,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1020;s:4:\"file\";s:22:\"2017/01/location-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"location-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"location-1-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"location-1-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"location-1-1024x544.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:544;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(218,52,'_thumbnail_id','53'),
	(219,55,'_wp_attached_file','2017/01/location-2.jpg'),
	(220,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1020;s:4:\"file\";s:22:\"2017/01/location-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"location-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"location-2-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"location-2-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"location-2-1024x544.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:544;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(221,54,'_thumbnail_id','55'),
	(222,54,'_edit_last','1'),
	(223,54,'coordinates','a:3:{s:7:\"address\";s:43:\"505 Chandler village dr. Chandler, Az 85226\";s:3:\"lat\";s:10:\"33.2944067\";s:3:\"lng\";s:19:\"-111.90146950000002\";}'),
	(224,54,'_coordinates','field_58910ffbb84e7'),
	(225,54,'_edit_lock','1485905749:1'),
	(226,56,'_edit_last','1'),
	(227,56,'_edit_lock','1485976005:1'),
	(228,56,'coordinates','a:3:{s:7:\"address\";s:34:\"7720 S. Preist rd. Tempe, AZ 85284\";s:3:\"lat\";s:10:\"33.3470688\";s:3:\"lng\";s:19:\"-111.96324549999997\";}'),
	(229,56,'_coordinates','field_58910ffbb84e7'),
	(230,57,'_wp_attached_file','2017/01/location-3.jpg'),
	(231,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1012;s:6:\"height\";i:676;s:4:\"file\";s:22:\"2017/01/location-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"location-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"location-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"location-3-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(232,56,'_thumbnail_id','57'),
	(235,59,'_wp_attached_file','2017/02/home-hero-bg.jpg'),
	(236,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1255;s:4:\"file\";s:24:\"2017/02/home-hero-bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"home-hero-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"home-hero-bg-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"home-hero-bg-768x482.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:482;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"home-hero-bg-1024x643.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:643;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(242,60,'_wp_attached_file','2017/01/about-hero.jpg'),
	(243,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1021;s:4:\"file\";s:22:\"2017/01/about-hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"about-hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"about-hero-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"about-hero-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"about-hero-1024x545.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:545;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(244,61,'background_image_0_desktop_image','60'),
	(245,61,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(246,61,'background_image_0_mobile_image','60'),
	(247,61,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(248,61,'background_image_0_credit',''),
	(249,61,'_background_image_0_credit','field_5890dc0a231fe'),
	(250,61,'background_image','1'),
	(251,61,'_background_image','field_56706beb9c8bf'),
	(252,9,'background_image_0_desktop_image','60'),
	(253,9,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(254,9,'background_image_0_mobile_image','60'),
	(255,9,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(256,9,'background_image_0_credit',''),
	(257,9,'_background_image_0_credit','field_5890dc0a231fe'),
	(258,9,'background_image','1'),
	(259,9,'_background_image','field_56706beb9c8bf'),
	(260,63,'hero_title','A place to create'),
	(261,63,'_hero_title','field_58916f0049864'),
	(262,63,'background_image_0_desktop_image','60'),
	(263,63,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(264,63,'background_image_0_mobile_image','60'),
	(265,63,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(266,63,'background_image_0_credit',''),
	(267,63,'_background_image_0_credit','field_5890dc0a231fe'),
	(268,63,'background_image','1'),
	(269,63,'_background_image','field_56706beb9c8bf'),
	(270,9,'hero_title','A place to create'),
	(271,9,'_hero_title','field_58916f0049864'),
	(272,64,'hero_title','A place to create'),
	(273,64,'_hero_title','field_58916f0049864'),
	(274,64,'background_image_0_desktop_image','60'),
	(275,64,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(276,64,'background_image_0_mobile_image','60'),
	(277,64,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(278,64,'background_image_0_credit',''),
	(279,64,'_background_image_0_credit','field_5890dc0a231fe'),
	(280,64,'background_image','1'),
	(281,64,'_background_image','field_56706beb9c8bf'),
	(282,65,'_edit_last','1'),
	(283,65,'_edit_lock','1485976006:1'),
	(284,70,'_wp_attached_file','2017/01/icon-1.png'),
	(285,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:86;s:6:\"height\";i:48;s:4:\"file\";s:18:\"2017/01/icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(286,71,'_wp_attached_file','2017/01/icon-2.png'),
	(287,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:80;s:6:\"height\";i:89;s:4:\"file\";s:18:\"2017/01/icon-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(288,72,'_wp_attached_file','2017/01/icon-3.png'),
	(289,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:52;s:6:\"height\";i:74;s:4:\"file\";s:18:\"2017/01/icon-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(290,73,'_wp_attached_file','2017/01/icon-4.png'),
	(291,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:35;s:6:\"height\";i:61;s:4:\"file\";s:18:\"2017/01/icon-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(292,74,'_wp_attached_file','2017/01/icon-5.png'),
	(293,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:65;s:6:\"height\";i:44;s:4:\"file\";s:18:\"2017/01/icon-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(294,75,'_wp_attached_file','2017/01/icon-6.png'),
	(295,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:63;s:6:\"height\";i:77;s:4:\"file\";s:18:\"2017/01/icon-6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(296,76,'hero_title','A place to create'),
	(297,76,'_hero_title','field_58916f0049864'),
	(298,76,'background_image_0_desktop_image','60'),
	(299,76,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(300,76,'background_image_0_mobile_image','60'),
	(301,76,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(302,76,'background_image_0_credit',''),
	(303,76,'_background_image_0_credit','field_5890dc0a231fe'),
	(304,76,'background_image','1'),
	(305,76,'_background_image','field_56706beb9c8bf'),
	(306,76,'bullet_items_0_image','70'),
	(307,76,'_bullet_items_0_image','field_5891725e666e6'),
	(308,76,'bullet_items_0_title','Free Rent'),
	(309,76,'_bullet_items_0_title','field_58917271666e7'),
	(310,76,'bullet_items_0_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(311,76,'_bullet_items_0_copy','field_58917277666e8'),
	(312,76,'bullet_items_1_image','73'),
	(313,76,'_bullet_items_1_image','field_5891725e666e6'),
	(314,76,'bullet_items_1_title','The Marketplace'),
	(315,76,'_bullet_items_1_title','field_58917271666e7'),
	(316,76,'bullet_items_1_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(317,76,'_bullet_items_1_copy','field_58917277666e8'),
	(318,76,'bullet_items_2_image','71'),
	(319,76,'_bullet_items_2_image','field_5891725e666e6'),
	(320,76,'bullet_items_2_title','Design Your Own Space'),
	(321,76,'_bullet_items_2_title','field_58917271666e7'),
	(322,76,'bullet_items_2_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(323,76,'_bullet_items_2_copy','field_58917277666e8'),
	(324,76,'bullet_items_3_image','74'),
	(325,76,'_bullet_items_3_image','field_5891725e666e6'),
	(326,76,'bullet_items_3_title','Free Wifi'),
	(327,76,'_bullet_items_3_title','field_58917271666e7'),
	(328,76,'bullet_items_3_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(329,76,'_bullet_items_3_copy','field_58917277666e8'),
	(330,76,'bullet_items_4_image','72'),
	(331,76,'_bullet_items_4_image','field_5891725e666e6'),
	(332,76,'bullet_items_4_title','Mobile App'),
	(333,76,'_bullet_items_4_title','field_58917271666e7'),
	(334,76,'bullet_items_4_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(335,76,'_bullet_items_4_copy','field_58917277666e8'),
	(336,76,'bullet_items_5_image','75'),
	(337,76,'_bullet_items_5_image','field_5891725e666e6'),
	(338,76,'bullet_items_5_title','Laundry'),
	(339,76,'_bullet_items_5_title','field_58917271666e7'),
	(340,76,'bullet_items_5_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(341,76,'_bullet_items_5_copy','field_58917277666e8'),
	(342,76,'bullet_items','6'),
	(343,76,'_bullet_items','field_58917251666e5'),
	(344,9,'bullet_items_0_image','70'),
	(345,9,'_bullet_items_0_image','field_5891725e666e6'),
	(346,9,'bullet_items_0_title','Free Rent'),
	(347,9,'_bullet_items_0_title','field_58917271666e7'),
	(348,9,'bullet_items_0_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(349,9,'_bullet_items_0_copy','field_58917277666e8'),
	(350,9,'bullet_items_1_image','73'),
	(351,9,'_bullet_items_1_image','field_5891725e666e6'),
	(352,9,'bullet_items_1_title','The Marketplace'),
	(353,9,'_bullet_items_1_title','field_58917271666e7'),
	(354,9,'bullet_items_1_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(355,9,'_bullet_items_1_copy','field_58917277666e8'),
	(356,9,'bullet_items_2_image','71'),
	(357,9,'_bullet_items_2_image','field_5891725e666e6'),
	(358,9,'bullet_items_2_title','Design Your Own Space'),
	(359,9,'_bullet_items_2_title','field_58917271666e7'),
	(360,9,'bullet_items_2_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(361,9,'_bullet_items_2_copy','field_58917277666e8'),
	(362,9,'bullet_items_3_image','74'),
	(363,9,'_bullet_items_3_image','field_5891725e666e6'),
	(364,9,'bullet_items_3_title','Free Wifi'),
	(365,9,'_bullet_items_3_title','field_58917271666e7'),
	(366,9,'bullet_items_3_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(367,9,'_bullet_items_3_copy','field_58917277666e8'),
	(368,9,'bullet_items_4_image','72'),
	(369,9,'_bullet_items_4_image','field_5891725e666e6'),
	(370,9,'bullet_items_4_title','Mobile App'),
	(371,9,'_bullet_items_4_title','field_58917271666e7'),
	(372,9,'bullet_items_4_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(373,9,'_bullet_items_4_copy','field_58917277666e8'),
	(374,9,'bullet_items_5_image','75'),
	(375,9,'_bullet_items_5_image','field_5891725e666e6'),
	(376,9,'bullet_items_5_title','Laundry'),
	(377,9,'_bullet_items_5_title','field_58917271666e7'),
	(378,9,'bullet_items_5_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(379,9,'_bullet_items_5_copy','field_58917277666e8'),
	(380,9,'bullet_items','6'),
	(381,9,'_bullet_items','field_58917251666e5'),
	(382,78,'_wp_attached_file','2017/01/bullet-1.jpg'),
	(383,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:639;s:6:\"height\";i:399;s:4:\"file\";s:20:\"2017/01/bullet-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bullet-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bullet-1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(384,79,'_wp_attached_file','2017/01/bullet-2.jpg'),
	(385,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:639;s:6:\"height\";i:399;s:4:\"file\";s:20:\"2017/01/bullet-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bullet-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bullet-2-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(386,80,'_wp_attached_file','2017/01/bullet-3.jpg'),
	(387,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:639;s:6:\"height\";i:399;s:4:\"file\";s:20:\"2017/01/bullet-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bullet-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bullet-3-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(388,81,'_wp_attached_file','2017/01/bullet-4.jpg'),
	(389,81,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:639;s:6:\"height\";i:399;s:4:\"file\";s:20:\"2017/01/bullet-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bullet-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bullet-4-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(390,82,'_wp_attached_file','2017/01/bullet-5.jpg'),
	(391,82,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:639;s:6:\"height\";i:399;s:4:\"file\";s:20:\"2017/01/bullet-5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bullet-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bullet-5-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(392,83,'_wp_attached_file','2017/01/bullet-6.jpg'),
	(393,83,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:639;s:6:\"height\";i:399;s:4:\"file\";s:20:\"2017/01/bullet-6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bullet-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bullet-6-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(394,84,'hero_title','A place to create'),
	(395,84,'_hero_title','field_58916f0049864'),
	(396,84,'background_image_0_desktop_image','60'),
	(397,84,'_background_image_0_desktop_image','field_56706bf89c8c0'),
	(398,84,'background_image_0_mobile_image','60'),
	(399,84,'_background_image_0_mobile_image','field_56706c0a9c8c1'),
	(400,84,'background_image_0_credit',''),
	(401,84,'_background_image_0_credit','field_5890dc0a231fe'),
	(402,84,'background_image','1'),
	(403,84,'_background_image','field_56706beb9c8bf'),
	(404,84,'bullet_items_0_background','78'),
	(405,84,'_bullet_items_0_background','field_58921f188c41f'),
	(406,84,'bullet_items_0_image','70'),
	(407,84,'_bullet_items_0_image','field_5891725e666e6'),
	(408,84,'bullet_items_0_title','Free Rent'),
	(409,84,'_bullet_items_0_title','field_58917271666e7'),
	(410,84,'bullet_items_0_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(411,84,'_bullet_items_0_copy','field_58917277666e8'),
	(412,84,'bullet_items_1_background','79'),
	(413,84,'_bullet_items_1_background','field_58921f188c41f'),
	(414,84,'bullet_items_1_image','73'),
	(415,84,'_bullet_items_1_image','field_5891725e666e6'),
	(416,84,'bullet_items_1_title','The Marketplace'),
	(417,84,'_bullet_items_1_title','field_58917271666e7'),
	(418,84,'bullet_items_1_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(419,84,'_bullet_items_1_copy','field_58917277666e8'),
	(420,84,'bullet_items_2_background','80'),
	(421,84,'_bullet_items_2_background','field_58921f188c41f'),
	(422,84,'bullet_items_2_image','71'),
	(423,84,'_bullet_items_2_image','field_5891725e666e6'),
	(424,84,'bullet_items_2_title','Design Your Own Space'),
	(425,84,'_bullet_items_2_title','field_58917271666e7'),
	(426,84,'bullet_items_2_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(427,84,'_bullet_items_2_copy','field_58917277666e8'),
	(428,84,'bullet_items_3_background','81'),
	(429,84,'_bullet_items_3_background','field_58921f188c41f'),
	(430,84,'bullet_items_3_image','74'),
	(431,84,'_bullet_items_3_image','field_5891725e666e6'),
	(432,84,'bullet_items_3_title','Free Wifi'),
	(433,84,'_bullet_items_3_title','field_58917271666e7'),
	(434,84,'bullet_items_3_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(435,84,'_bullet_items_3_copy','field_58917277666e8'),
	(436,84,'bullet_items_4_background','82'),
	(437,84,'_bullet_items_4_background','field_58921f188c41f'),
	(438,84,'bullet_items_4_image','72'),
	(439,84,'_bullet_items_4_image','field_5891725e666e6'),
	(440,84,'bullet_items_4_title','Mobile App'),
	(441,84,'_bullet_items_4_title','field_58917271666e7'),
	(442,84,'bullet_items_4_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(443,84,'_bullet_items_4_copy','field_58917277666e8'),
	(444,84,'bullet_items_5_background','83'),
	(445,84,'_bullet_items_5_background','field_58921f188c41f'),
	(446,84,'bullet_items_5_image','75'),
	(447,84,'_bullet_items_5_image','field_5891725e666e6'),
	(448,84,'bullet_items_5_title','Laundry'),
	(449,84,'_bullet_items_5_title','field_58917271666e7'),
	(450,84,'bullet_items_5_copy','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum.'),
	(451,84,'_bullet_items_5_copy','field_58917277666e8'),
	(452,84,'bullet_items','6'),
	(453,84,'_bullet_items','field_58917251666e5'),
	(454,9,'bullet_items_0_background','78'),
	(455,9,'_bullet_items_0_background','field_58921f188c41f'),
	(456,9,'bullet_items_1_background','79'),
	(457,9,'_bullet_items_1_background','field_58921f188c41f'),
	(458,9,'bullet_items_2_background','80'),
	(459,9,'_bullet_items_2_background','field_58921f188c41f'),
	(460,9,'bullet_items_3_background','81'),
	(461,9,'_bullet_items_3_background','field_58921f188c41f'),
	(462,9,'bullet_items_4_background','82'),
	(463,9,'_bullet_items_4_background','field_58921f188c41f'),
	(464,9,'bullet_items_5_background','83'),
	(465,9,'_bullet_items_5_background','field_58921f188c41f');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2017-01-31 00:30:51','2017-01-31 00:30:51','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2017-01-31 00:30:51','2017-01-31 00:30:51','',0,'http://mypalettecollective.com/?p=1',0,'post','',1),
	(5,1,'2017-01-31 00:58:14','2017-01-31 00:58:14','','Home','','publish','closed','closed','','home','','','2017-01-31 21:52:42','2017-01-31 21:52:42','',0,'http://mypalettecollective.com/?page_id=5',0,'page','',0),
	(6,1,'2017-01-31 00:39:55','2017-01-31 00:39:55','','Home','','inherit','closed','closed','','5-revision-v1','','','2017-01-31 00:39:55','2017-01-31 00:39:55','',5,'http://mypalettecollective.com/2017/01/31/5-revision-v1/',0,'revision','',0),
	(7,1,'2017-01-31 00:40:07','2017-01-31 00:40:07','','Locations','','publish','closed','closed','','locations','','','2017-01-31 18:46:21','2017-01-31 18:46:21','',0,'http://mypalettecollective.com/?page_id=7',0,'page','',0),
	(8,1,'2017-01-31 00:40:07','2017-01-31 00:40:07','','Locations','','inherit','closed','closed','','7-revision-v1','','','2017-01-31 00:40:07','2017-01-31 00:40:07','',7,'http://mypalettecollective.com/2017/01/31/7-revision-v1/',0,'revision','',0),
	(9,1,'2017-01-31 01:12:42','2017-01-31 01:12:42','We are shrinking the brick and mortar model in order to see the craft movement grow. We are a family, a team, and creative platform all forced around supporting dreamers as they reach their goals.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum. Donec sit amet vestibulum mauris, eu sodales mauris. Proin vel facilisis eros, vitae tincidunt enim. Maecenas rutrum ligula nisi, vitae cursus felis vestibulum vitae. Integer viverra leo odio, a pellentesque diam venenatis quis.','About','','publish','closed','closed','','about','','','2017-02-01 18:03:05','2017-02-01 18:03:05','',0,'http://mypalettecollective.com/?page_id=9',0,'page','',0),
	(10,1,'2017-01-31 00:40:16','2017-01-31 00:40:16','','About','','inherit','closed','closed','','9-revision-v1','','','2017-01-31 00:40:16','2017-01-31 00:40:16','',9,'http://mypalettecollective.com/2017/01/31/9-revision-v1/',0,'revision','',0),
	(11,1,'2017-01-31 00:47:46','2017-01-31 00:47:46','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"template-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";}','Hero Slider','hero-slider','publish','closed','closed','','group_588fde69b5dbc','','','2017-01-31 00:56:17','2017-01-31 00:56:17','',0,'http://mypalettecollective.com/?post_type=acf-field-group&#038;p=11',0,'acf-field-group','',0),
	(12,1,'2017-01-31 00:47:46','2017-01-31 00:47:46','a:9:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";}','Hero Slider','hero_slider','publish','closed','closed','','field_588fdea434555','','','2017-01-31 00:56:07','2017-01-31 00:56:07','',11,'http://mypalettecollective.com/?post_type=acf-field&#038;p=12',0,'acf-field','',0),
	(13,1,'2017-01-31 00:53:07','2017-01-31 00:53:07','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Slider Image','slider_image','publish','closed','closed','','field_588fdfe688620','','','2017-01-31 00:53:07','2017-01-31 00:53:07','',12,'http://mypalettecollective.com/?post_type=acf-field&p=13',0,'acf-field','',0),
	(14,1,'2017-01-31 00:53:41','2017-01-31 00:53:41','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Image Credit','image_credit','publish','closed','closed','','field_588fe003514e7','','','2017-01-31 00:53:41','2017-01-31 00:53:41','',12,'http://mypalettecollective.com/?post_type=acf-field&p=14',1,'acf-field','',0),
	(15,1,'2017-01-31 00:57:55','2017-01-31 00:57:55','','hero-1','','inherit','open','closed','','hero-1','','','2017-01-31 00:57:55','2017-01-31 00:57:55','',5,'http://mypalettecollective.com/wp-content/uploads/2017/01/hero-1.jpg',0,'attachment','image/jpeg',0),
	(16,1,'2017-01-31 00:58:14','2017-01-31 00:58:14','','Home','','inherit','closed','closed','','5-revision-v1','','','2017-01-31 00:58:14','2017-01-31 00:58:14','',5,'http://mypalettecollective.com/2017/01/31/5-revision-v1/',0,'revision','',0),
	(17,1,'2017-01-31 01:05:06','2017-01-31 01:05:06','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"template-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";}','Bullet Navigation','bullet-navigation','publish','closed','closed','','group_588fe277e1d49','','','2017-01-31 01:07:09','2017-01-31 01:07:09','',0,'http://mypalettecollective.com/?post_type=acf-field-group&#038;p=17',0,'acf-field-group','',0),
	(18,1,'2017-01-31 01:05:06','2017-01-31 01:05:06','a:9:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";}','Bullet Navigation','bullet_navigation','publish','closed','closed','','field_588fe27feac5f','','','2017-01-31 01:07:09','2017-01-31 01:07:09','',17,'http://mypalettecollective.com/?post_type=acf-field&#038;p=18',0,'acf-field','',0),
	(19,1,'2017-01-31 01:05:06','2017-01-31 01:05:06','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Text','text','publish','closed','closed','','field_588fe297eac60','','','2017-01-31 01:07:09','2017-01-31 01:07:09','',18,'http://mypalettecollective.com/?post_type=acf-field&#038;p=19',0,'acf-field','',0),
	(20,1,'2017-01-31 01:05:06','2017-01-31 01:05:06','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Background','background','publish','closed','closed','','field_588fe2a9eac61','','','2017-01-31 01:07:09','2017-01-31 01:07:09','',18,'http://mypalettecollective.com/?post_type=acf-field&#038;p=20',2,'acf-field','',0),
	(21,1,'2017-01-31 01:07:09','2017-01-31 01:07:09','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Link','link','publish','closed','closed','','field_588fe32ae75c0','','','2017-01-31 01:07:09','2017-01-31 01:07:09','',18,'http://mypalettecollective.com/?post_type=acf-field&p=21',1,'acf-field','',0),
	(22,1,'2017-01-31 01:09:33','2017-01-31 01:09:33','','nav-1','','inherit','open','closed','','nav-1','','','2017-01-31 01:09:33','2017-01-31 01:09:33','',5,'http://mypalettecollective.com/wp-content/uploads/2017/01/nav-1.jpg',0,'attachment','image/jpeg',0),
	(23,1,'2017-01-31 01:09:34','2017-01-31 01:09:34','','nav-2','','inherit','open','closed','','nav-2','','','2017-01-31 01:09:34','2017-01-31 01:09:34','',5,'http://mypalettecollective.com/wp-content/uploads/2017/01/nav-2.jpg',0,'attachment','image/jpeg',0),
	(24,1,'2017-01-31 01:09:35','2017-01-31 01:09:35','','nav-3','','inherit','open','closed','','nav-3','','','2017-01-31 01:09:35','2017-01-31 01:09:35','',5,'http://mypalettecollective.com/wp-content/uploads/2017/01/nav-3.jpg',0,'attachment','image/jpeg',0),
	(25,1,'2017-01-31 01:09:35','2017-01-31 01:09:35','','nav-4','','inherit','open','closed','','nav-4','','','2017-01-31 01:09:35','2017-01-31 01:09:35','',5,'http://mypalettecollective.com/wp-content/uploads/2017/01/nav-4.jpg',0,'attachment','image/jpeg',0),
	(26,1,'2017-01-31 01:10:32','2017-01-31 01:10:32','','Home','','inherit','closed','closed','','5-revision-v1','','','2017-01-31 01:10:32','2017-01-31 01:10:32','',5,'http://mypalettecollective.com/2017/01/31/5-revision-v1/',0,'revision','',0),
	(27,1,'2017-01-31 01:17:45','2017-01-31 01:17:45','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-global\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";}','Options Global','options-global','publish','closed','closed','','group_588fe5a400a52','','','2017-01-31 01:17:45','2017-01-31 01:17:45','',0,'http://mypalettecollective.com/?post_type=acf-field-group&#038;p=27',0,'acf-field-group','',0),
	(28,1,'2017-01-31 01:17:45','2017-01-31 01:17:45','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Site Logo','site_logo','publish','closed','closed','','field_588fe5a90a3db','','','2017-01-31 01:17:45','2017-01-31 01:17:45','',27,'http://mypalettecollective.com/?post_type=acf-field&p=28',0,'acf-field','',0),
	(29,1,'2017-01-31 01:19:35','2017-01-31 01:19:35','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-social\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";}','Options Social','options-social','publish','closed','closed','','group_588fe5dca6381','','','2017-01-31 01:23:39','2017-01-31 01:23:39','',0,'http://mypalettecollective.com/?post_type=acf-field-group&#038;p=29',0,'acf-field-group','',0),
	(30,1,'2017-01-31 01:19:35','2017-01-31 01:19:35','a:14:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:8:\"facebook\";s:8:\"Facebook\";s:9:\"instagram\";s:9:\"Instagram\";s:8:\"linkedin\";s:8:\"LinkedIn\";s:7:\"twitter\";s:7:\"Twitter\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:8:\"disabled\";i:0;s:8:\"readonly\";i:0;}','Social Network','social_network','publish','closed','closed','','field_588fe5e232464','','','2017-01-31 01:23:39','2017-01-31 01:23:39','',32,'http://mypalettecollective.com/?post_type=acf-field&#038;p=30',0,'acf-field','',0),
	(31,1,'2017-01-31 01:19:35','2017-01-31 01:19:35','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Link','link','publish','closed','closed','','field_588fe5f632465','','','2017-01-31 01:23:39','2017-01-31 01:23:39','',32,'http://mypalettecollective.com/?post_type=acf-field&#038;p=31',1,'acf-field','',0),
	(32,1,'2017-01-31 01:23:39','2017-01-31 01:23:39','a:9:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";}','Social Nav','social_nav','publish','closed','closed','','field_588fe6f7d0855','','','2017-01-31 01:23:39','2017-01-31 01:23:39','',29,'http://mypalettecollective.com/?post_type=acf-field&p=32',0,'acf-field','',0),
	(33,1,'2017-01-31 01:34:48','2017-01-31 01:34:48','','center-logo','','inherit','open','closed','','center-logo','','','2017-01-31 01:34:48','2017-01-31 01:34:48','',0,'http://mypalettecollective.com/wp-content/uploads/2017/01/center-logo.png',0,'attachment','image/png',0),
	(35,1,'2017-01-31 01:35:45','2017-01-31 01:35:45','','logo-short','','inherit','open','closed','','logo-short','','','2017-01-31 01:35:45','2017-01-31 01:35:45','',0,'http://mypalettecollective.com/wp-content/uploads/2017/01/logo-short.png',0,'attachment','image/png',0),
	(36,1,'2017-01-31 02:58:31','2017-01-31 02:58:31',' ','','','publish','closed','closed','','36','','','2017-01-31 02:58:35','2017-01-31 02:58:35','',0,'http://mypalettecollective.com/?p=36',1,'nav_menu_item','',0),
	(37,1,'2017-01-31 02:58:31','2017-01-31 02:58:31',' ','','','publish','closed','closed','','37','','','2017-01-31 02:58:35','2017-01-31 02:58:35','',0,'http://mypalettecollective.com/?p=37',2,'nav_menu_item','',0),
	(38,1,'2017-01-31 02:58:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2017-01-31 02:58:23','0000-00-00 00:00:00','',0,'http://mypalettecollective.com/?p=38',1,'nav_menu_item','',0),
	(39,1,'2017-01-31 02:58:31','2017-01-31 02:58:31',' ','','','publish','closed','closed','','39','','','2017-01-31 02:58:35','2017-01-31 02:58:35','',0,'http://mypalettecollective.com/?p=39',3,'nav_menu_item','',0),
	(40,1,'2017-01-31 18:40:01','2017-01-31 18:40:01','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";}','Hero','hero','publish','closed','closed','','group_56706be3ce3ea','','','2017-02-01 05:16:02','2017-02-01 05:16:02','',0,'http://mypalettecollective.com/?post_type=acf-field-group&#038;p=40',0,'acf-field-group','',0),
	(41,1,'2017-01-31 18:40:01','2017-01-31 18:40:01','a:9:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";}','Background Image','background_image','publish','closed','closed','','field_56706beb9c8bf','','','2017-02-01 05:16:02','2017-02-01 05:16:02','',40,'http://mypalettecollective.com/?post_type=acf-field&#038;p=41',1,'acf-field','',0),
	(42,1,'2017-01-31 18:40:01','2017-01-31 18:40:01','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Desktop Image','desktop_image','publish','closed','closed','','field_56706bf89c8c0','','','2017-01-31 18:40:01','2017-01-31 18:40:01','',41,'http://mypalettecollective.com/?post_type=acf-field&p=42',0,'acf-field','',0),
	(43,1,'2017-01-31 18:40:01','2017-01-31 18:40:01','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Mobile Image','mobile_image','publish','closed','closed','','field_56706c0a9c8c1','','','2017-01-31 18:40:01','2017-01-31 18:40:01','',41,'http://mypalettecollective.com/?post_type=acf-field&p=43',1,'acf-field','',0),
	(44,1,'2017-01-31 18:41:56','2017-01-31 18:41:56','','location-hero','','inherit','open','closed','','location-hero','','','2017-01-31 18:41:56','2017-01-31 18:41:56','',7,'http://mypalettecollective.com/wp-content/uploads/2017/01/location-hero.jpg',0,'attachment','image/jpeg',0),
	(45,1,'2017-01-31 18:42:54','2017-01-31 18:42:54','','Locations','','inherit','closed','closed','','7-revision-v1','','','2017-01-31 18:42:54','2017-01-31 18:42:54','',7,'http://mypalettecollective.com/2017/01/31/7-revision-v1/',0,'revision','',0),
	(46,1,'2017-01-31 18:43:04','2017-01-31 18:43:04','','Locations','','inherit','closed','closed','','7-revision-v1','','','2017-01-31 18:43:04','2017-01-31 18:43:04','',7,'http://mypalettecollective.com/2017/01/31/7-revision-v1/',0,'revision','',0),
	(47,1,'2017-01-31 18:48:55','2017-01-31 18:48:55','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Credit','credit','publish','closed','closed','','field_5890dc0a231fe','','','2017-01-31 18:48:55','2017-01-31 18:48:55','',41,'http://mypalettecollective.com/?post_type=acf-field&p=47',2,'acf-field','',0),
	(48,1,'2017-01-31 21:52:42','2017-01-31 21:52:42','','Home','','inherit','closed','closed','','5-revision-v1','','','2017-01-31 21:52:42','2017-01-31 21:52:42','',5,'http://mypalettecollective.com/2017/01/31/5-revision-v1/',0,'revision','',0),
	(50,1,'2017-01-31 22:31:13','2017-01-31 22:31:13','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"location\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";}','Locations','locations','publish','closed','closed','','group_58910ff8c83ad','','','2017-01-31 22:31:13','2017-01-31 22:31:13','',0,'http://mypalettecollective.com/?post_type=acf-field-group&#038;p=50',0,'acf-field-group','',0),
	(51,1,'2017-01-31 22:31:13','2017-01-31 22:31:13','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Coordinates','coordinates','publish','closed','closed','','field_58910ffbb84e7','','','2017-01-31 22:31:13','2017-01-31 22:31:13','',50,'http://mypalettecollective.com/?post_type=acf-field&p=51',0,'acf-field','',0),
	(52,1,'2017-01-31 22:35:03','2017-01-31 22:35:03','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum. Donec sit amet vestibulum mauris, eu sodales mauris. Proin vel facilisis eros, vitae tincidunt enim. Maecenas rutrum ligula nisi, vitae cursus felis vestibulum vitae. Integer viverra leo odio, a pellentesque diam venenatis quis.','Chandler/Gilbert','','publish','closed','closed','','chandler-gilbert','','','2017-01-31 23:40:45','2017-01-31 23:40:45','',0,'http://mypalettecollective.com/?post_type=location&#038;p=52',0,'location','',0),
	(53,1,'2017-01-31 22:41:55','2017-01-31 22:41:55','','location-1','','inherit','open','closed','','location-1','','','2017-01-31 22:41:55','2017-01-31 22:41:55','',52,'http://mypalettecollective.com/wp-content/uploads/2017/01/location-1.jpg',0,'attachment','image/jpeg',0),
	(54,1,'2017-01-31 23:34:03','2017-01-31 23:34:03','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum. Donec sit amet vestibulum mauris, eu sodales mauris. Proin vel facilisis eros, vitae tincidunt enim. Maecenas rutrum ligula nisi, vitae cursus felis vestibulum vitae. Integer viverra leo odio, a pellentesque diam venenatis quis.','Chandler Village','','publish','closed','closed','','chandler-village','','','2017-01-31 23:34:03','2017-01-31 23:34:03','',0,'http://mypalettecollective.com/?post_type=location&#038;p=54',0,'location','',0),
	(55,1,'2017-01-31 23:32:34','2017-01-31 23:32:34','','location-2','','inherit','open','closed','','location-2','','','2017-01-31 23:32:34','2017-01-31 23:32:34','',54,'http://mypalettecollective.com/wp-content/uploads/2017/01/location-2.jpg',0,'attachment','image/jpeg',0),
	(56,1,'2017-01-31 23:36:24','2017-01-31 23:36:24','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum. Donec sit amet vestibulum mauris, eu sodales mauris. Proin vel facilisis eros, vitae tincidunt enim. Maecenas rutrum ligula nisi, vitae cursus felis vestibulum vitae. Integer viverra leo odio, a pellentesque diam venenatis quis.','Tempe (Coming Soon)','','publish','closed','closed','','tempe','','','2017-01-31 23:38:11','2017-01-31 23:38:11','',0,'http://mypalettecollective.com/?post_type=location&#038;p=56',0,'location','',0),
	(57,1,'2017-01-31 23:38:07','2017-01-31 23:38:07','','location-3','','inherit','open','closed','','location-3','','','2017-01-31 23:38:07','2017-01-31 23:38:07','',56,'http://mypalettecollective.com/wp-content/uploads/2017/01/location-3.jpg',0,'attachment','image/jpeg',0),
	(59,1,'2017-02-01 01:32:11','2017-02-01 01:32:11','','home-hero-bg','','inherit','open','closed','','home-hero-bg','','','2017-02-01 01:32:11','2017-02-01 01:32:11','',0,'http://mypalettecollective.com/wp-content/uploads/2017/02/home-hero-bg.jpg',0,'attachment','image/jpeg',0),
	(60,1,'2017-02-01 05:14:28','2017-02-01 05:14:28','','about-hero','','inherit','open','closed','','about-hero','','','2017-02-01 05:14:28','2017-02-01 05:14:28','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/about-hero.jpg',0,'attachment','image/jpeg',0),
	(61,1,'2017-02-01 05:14:36','2017-02-01 05:14:36','','About','','inherit','closed','closed','','9-revision-v1','','','2017-02-01 05:14:36','2017-02-01 05:14:36','',9,'http://mypalettecollective.com/2017/02/01/9-revision-v1/',0,'revision','',0),
	(62,1,'2017-02-01 05:16:02','2017-02-01 05:16:02','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Hero Title','hero_title','publish','closed','closed','','field_58916f0049864','','','2017-02-01 05:16:02','2017-02-01 05:16:02','',40,'http://mypalettecollective.com/?post_type=acf-field&p=62',0,'acf-field','',0),
	(63,1,'2017-02-01 05:17:31','2017-02-01 05:17:31','','About','','inherit','closed','closed','','9-revision-v1','','','2017-02-01 05:17:31','2017-02-01 05:17:31','',9,'http://mypalettecollective.com/2017/02/01/9-revision-v1/',0,'revision','',0),
	(64,1,'2017-02-01 05:20:56','2017-02-01 05:20:56','We are shrinking the brick and mortar model in order to see the craft movement grow. We are a family, a team, and creative platform all forced around supporting dreamers as they reach their goals.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum. Donec sit amet vestibulum mauris, eu sodales mauris. Proin vel facilisis eros, vitae tincidunt enim. Maecenas rutrum ligula nisi, vitae cursus felis vestibulum vitae. Integer viverra leo odio, a pellentesque diam venenatis quis.','About','','inherit','closed','closed','','9-revision-v1','','','2017-02-01 05:20:56','2017-02-01 05:20:56','',9,'http://mypalettecollective.com/2017/02/01/9-revision-v1/',0,'revision','',0),
	(65,1,'2017-02-01 05:31:00','2017-02-01 05:31:00','a:6:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"template-about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";}','Bullet Items','bullet-items','publish','closed','closed','','group_5891723e13ba6','','','2017-02-01 17:47:31','2017-02-01 17:47:31','',0,'http://mypalettecollective.com/?post_type=acf-field-group&#038;p=65',0,'acf-field-group','',0),
	(66,1,'2017-02-01 05:31:00','2017-02-01 05:31:00','a:9:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:7:\"Add Row\";}','Bullet Items','bullet_items','publish','closed','closed','','field_58917251666e5','','','2017-02-01 17:47:31','2017-02-01 17:47:31','',65,'http://mypalettecollective.com/?post_type=acf-field&#038;p=66',0,'acf-field','',0),
	(67,1,'2017-02-01 05:31:00','2017-02-01 05:31:00','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image','image','publish','closed','closed','','field_5891725e666e6','','','2017-02-01 17:47:31','2017-02-01 17:47:31','',66,'http://mypalettecollective.com/?post_type=acf-field&#038;p=67',1,'acf-field','',0),
	(68,1,'2017-02-01 05:31:00','2017-02-01 05:31:00','a:12:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Title','title','publish','closed','closed','','field_58917271666e7','','','2017-02-01 17:47:31','2017-02-01 17:47:31','',66,'http://mypalettecollective.com/?post_type=acf-field&#038;p=68',2,'acf-field','',0),
	(69,1,'2017-02-01 05:31:00','2017-02-01 05:31:00','a:12:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";s:8:\"readonly\";i:0;s:8:\"disabled\";i:0;}','Copy','copy','publish','closed','closed','','field_58917277666e8','','','2017-02-01 17:47:31','2017-02-01 17:47:31','',66,'http://mypalettecollective.com/?post_type=acf-field&#038;p=69',3,'acf-field','',0),
	(70,1,'2017-02-01 17:05:39','2017-02-01 17:05:39','','icon-1','','inherit','open','closed','','icon-1','','','2017-02-01 17:05:39','2017-02-01 17:05:39','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/icon-1.png',0,'attachment','image/png',0),
	(71,1,'2017-02-01 17:05:40','2017-02-01 17:05:40','','icon-2','','inherit','open','closed','','icon-2','','','2017-02-01 17:05:40','2017-02-01 17:05:40','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/icon-2.png',0,'attachment','image/png',0),
	(72,1,'2017-02-01 17:05:41','2017-02-01 17:05:41','','icon-3','','inherit','open','closed','','icon-3','','','2017-02-01 17:05:41','2017-02-01 17:05:41','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/icon-3.png',0,'attachment','image/png',0),
	(73,1,'2017-02-01 17:05:42','2017-02-01 17:05:42','','icon-4','','inherit','open','closed','','icon-4','','','2017-02-01 17:05:42','2017-02-01 17:05:42','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/icon-4.png',0,'attachment','image/png',0),
	(74,1,'2017-02-01 17:05:42','2017-02-01 17:05:42','','icon-5','','inherit','open','closed','','icon-5','','','2017-02-01 17:05:42','2017-02-01 17:05:42','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/icon-5.png',0,'attachment','image/png',0),
	(75,1,'2017-02-01 17:05:43','2017-02-01 17:05:43','','icon-6','','inherit','open','closed','','icon-6','','','2017-02-01 17:05:43','2017-02-01 17:05:43','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/icon-6.png',0,'attachment','image/png',0),
	(76,1,'2017-02-01 17:07:52','2017-02-01 17:07:52','We are shrinking the brick and mortar model in order to see the craft movement grow. We are a family, a team, and creative platform all forced around supporting dreamers as they reach their goals.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum. Donec sit amet vestibulum mauris, eu sodales mauris. Proin vel facilisis eros, vitae tincidunt enim. Maecenas rutrum ligula nisi, vitae cursus felis vestibulum vitae. Integer viverra leo odio, a pellentesque diam venenatis quis.','About','','inherit','closed','closed','','9-revision-v1','','','2017-02-01 17:07:52','2017-02-01 17:07:52','',9,'http://mypalettecollective.com/2017/02/01/9-revision-v1/',0,'revision','',0),
	(77,1,'2017-02-01 17:47:31','2017-02-01 17:47:31','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Background','background','publish','closed','closed','','field_58921f188c41f','','','2017-02-01 17:47:31','2017-02-01 17:47:31','',66,'http://mypalettecollective.com/?post_type=acf-field&p=77',0,'acf-field','',0),
	(78,1,'2017-02-01 18:01:16','2017-02-01 18:01:16','','bullet-1','','inherit','open','closed','','bullet-1','','','2017-02-01 18:01:16','2017-02-01 18:01:16','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/bullet-1.jpg',0,'attachment','image/jpeg',0),
	(79,1,'2017-02-01 18:01:17','2017-02-01 18:01:17','','bullet-2','','inherit','open','closed','','bullet-2','','','2017-02-01 18:01:17','2017-02-01 18:01:17','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/bullet-2.jpg',0,'attachment','image/jpeg',0),
	(80,1,'2017-02-01 18:01:18','2017-02-01 18:01:18','','bullet-3','','inherit','open','closed','','bullet-3','','','2017-02-01 18:01:18','2017-02-01 18:01:18','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/bullet-3.jpg',0,'attachment','image/jpeg',0),
	(81,1,'2017-02-01 18:01:19','2017-02-01 18:01:19','','bullet-4','','inherit','open','closed','','bullet-4','','','2017-02-01 18:01:19','2017-02-01 18:01:19','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/bullet-4.jpg',0,'attachment','image/jpeg',0),
	(82,1,'2017-02-01 18:01:20','2017-02-01 18:01:20','','bullet-5','','inherit','open','closed','','bullet-5','','','2017-02-01 18:01:20','2017-02-01 18:01:20','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/bullet-5.jpg',0,'attachment','image/jpeg',0),
	(83,1,'2017-02-01 18:01:21','2017-02-01 18:01:21','','bullet-6','','inherit','open','closed','','bullet-6','','','2017-02-01 18:01:21','2017-02-01 18:01:21','',9,'http://mypalettecollective.com/wp-content/uploads/2017/01/bullet-6.jpg',0,'attachment','image/jpeg',0),
	(84,1,'2017-02-01 18:03:05','2017-02-01 18:03:05','We are shrinking the brick and mortar model in order to see the craft movement grow. We are a family, a team, and creative platform all forced around supporting dreamers as they reach their goals.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent suscipit eleifend magna eu interdum. Donec sit amet vestibulum mauris, eu sodales mauris. Proin vel facilisis eros, vitae tincidunt enim. Maecenas rutrum ligula nisi, vitae cursus felis vestibulum vitae. Integer viverra leo odio, a pellentesque diam venenatis quis.','About','','inherit','closed','closed','','9-revision-v1','','','2017-02-01 18:03:05','2017-02-01 18:03:05','',9,'http://mypalettecollective.com/2017/02/01/9-revision-v1/',0,'revision','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_rg_form
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_form`;

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_rg_form` WRITE;
/*!40000 ALTER TABLE `wp_rg_form` DISABLE KEYS */;

INSERT INTO `wp_rg_form` (`id`, `title`, `date_created`, `is_active`, `is_trash`)
VALUES
	(1,'Contact','2017-02-01 04:03:58',1,0),
	(2,'Location Inquiry','2017-02-01 04:04:11',1,0);

/*!40000 ALTER TABLE `wp_rg_form` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_rg_form_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_form_meta`;

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_rg_form_meta` WRITE;
/*!40000 ALTER TABLE `wp_rg_form_meta` DISABLE KEYS */;

INSERT INTO `wp_rg_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`)
VALUES
	(1,'{\"title\":\"Contact\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[],\"version\":\"1.9.18\",\"id\":1}',NULL,'{\"58915e2e36b46\":{\"id\":\"58915e2e36b46\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}','{\"58915e2e360a1\":{\"id\":\"58915e2e360a1\",\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}'),
	(2,'{\"title\":\"Location Inquiry\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"text\",\"id\":1,\"label\":\"\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"inputs\":null,\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Name\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"allowsPrepopulate\":false,\"formId\":2,\"pageNumber\":1,\"description\":\"\",\"inputType\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"adminOnly\":false,\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\"},{\"type\":\"email\",\"id\":3,\"label\":\"\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"inputs\":null,\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Email\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"allowsPrepopulate\":false,\"formId\":2,\"pageNumber\":1,\"description\":\"\",\"inputType\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"adminOnly\":false,\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\"},{\"type\":\"text\",\"id\":2,\"label\":\"\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"inputs\":null,\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Phone\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"allowsPrepopulate\":false,\"formId\":2,\"pageNumber\":1,\"description\":\"\",\"inputType\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"adminOnly\":false,\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\"},{\"type\":\"hidden\",\"id\":4,\"label\":\"Location\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"medium\",\"errorMessage\":\"\",\"inputs\":null,\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"allowsPrepopulate\":true,\"inputName\":\"location\",\"formId\":2,\"pageNumber\":1,\"description\":\"\",\"inputType\":\"\",\"cssClass\":\"\",\"adminOnly\":false,\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\"}],\"version\":\"1.9.18\",\"id\":2,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null}','','{\"58915e3bd9202\":{\"id\":\"58915e3bd9202\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}','{\"58915e3bd8d52\":{\"id\":\"58915e3bd8d52\",\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}');

/*!40000 ALTER TABLE `wp_rg_form_meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_rg_form_view
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_form_view`;

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_rg_form_view` WRITE;
/*!40000 ALTER TABLE `wp_rg_form_view` DISABLE KEYS */;

INSERT INTO `wp_rg_form_view` (`id`, `form_id`, `date_created`, `ip`, `count`)
VALUES
	(1,2,'2017-02-01 04:10:37','127.0.0.1',80),
	(2,2,'2017-02-05 01:47:21','127.0.0.1',1),
	(3,2,'2017-02-21 19:18:03','::1',2),
	(4,2,'2017-02-22 23:03:10','127.0.0.1',2);

/*!40000 ALTER TABLE `wp_rg_form_view` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_rg_incomplete_submissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_rg_lead
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_lead`;

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_rg_lead_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_lead_detail`;

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_rg_lead_detail_long
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_rg_lead_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_lead_meta`;

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_rg_lead_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_rg_lead_notes`;

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(36,2,0),
	(37,2,0),
	(39,2,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'nav_menu','',0,3);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'Menu','menu',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(11,1,'wp_user_level','10'),
	(12,1,'dismissed_wp_pointers',''),
	(13,1,'show_welcome_panel','1'),
	(14,1,'session_tokens','a:1:{s:64:\"8145846a711636d0f507156b142e33f22c0d5ad0deeffbe13954ff96e651a849\";a:4:{s:10:\"expiration\";i:1487032260;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36\";s:5:\"login\";i:1485822660;}}'),
	(15,1,'wp_dashboard_quick_press_last_post_id','3'),
	(16,1,'closedpostboxes_acf-field-group','a:0:{}'),
	(17,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}'),
	(18,1,'wp_user-settings','libraryContent=browse&hidetb=1'),
	(19,1,'wp_user-settings-time','1485825322'),
	(20,1,'closedpostboxes_page','a:2:{i:0;s:23:\"acf-group_588fe277e1d49\";i:1;s:23:\"acf-group_56706be3ce3ea\";}'),
	(21,1,'metaboxhidden_page','a:11:{i:0;s:23:\"acf-group_588fe277e1d49\";i:1;s:23:\"acf-group_588fde69b5dbc\";i:2;s:23:\"acf-group_58910ff8c83ad\";i:3;s:23:\"acf-group_588fe5a400a52\";i:4;s:23:\"acf-group_588fe5dca6381\";i:5;s:12:\"revisionsdiv\";i:6;s:10:\"postcustom\";i:7;s:16:\"commentstatusdiv\";i:8;s:11:\"commentsdiv\";i:9;s:7:\"slugdiv\";i:10;s:9:\"authordiv\";}'),
	(22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
	(23,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
	(24,1,'meta-box-order_page','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:238:\"acf-group_588fe277e1d49,acf-group_56706be3ce3ea,acf-group_5891723e13ba6,acf-group_588fde69b5dbc,acf-group_58910ff8c83ad,acf-group_588fe5a400a52,acf-group_588fe5dca6381,revisionsdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
	(25,1,'screen_layout_page','2');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$BIfkb8EB4dDzlgfWDHpSW9NKWOwuBu0','admin','info@sandovaldesign.com','','2017-01-31 00:30:51','',0,'admin');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
