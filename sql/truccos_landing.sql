-- Adminer 4.8.1 MySQL 5.7.32 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1,	1,	'Un comentarista de WordPress',	'wapuu@wordpress.example',	'https://wordpress.org/',	'',	'2021-07-21 11:04:14',	'2021-07-21 16:04:14',	'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.',	0,	'1',	'',	'comment',	0,	0);

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1,	'siteurl',	'http://localhost/truccos',	'yes'),
(2,	'home',	'http://localhost/truccos',	'yes'),
(3,	'blogname',	'Truccos',	'yes'),
(4,	'blogdescription',	'Otro sitio realizado con WordPress',	'yes'),
(5,	'users_can_register',	'0',	'yes'),
(6,	'admin_email',	'nunzio.ruffo@sigma3ds.com',	'yes'),
(7,	'start_of_week',	'1',	'yes'),
(8,	'use_balanceTags',	'0',	'yes'),
(9,	'use_smilies',	'1',	'yes'),
(10,	'require_name_email',	'1',	'yes'),
(11,	'comments_notify',	'1',	'yes'),
(12,	'posts_per_rss',	'10',	'yes'),
(13,	'rss_use_excerpt',	'0',	'yes'),
(14,	'mailserver_url',	'mail.example.com',	'yes'),
(15,	'mailserver_login',	'login@example.com',	'yes'),
(16,	'mailserver_pass',	'password',	'yes'),
(17,	'mailserver_port',	'110',	'yes'),
(18,	'default_category',	'1',	'yes'),
(19,	'default_comment_status',	'open',	'yes'),
(20,	'default_ping_status',	'open',	'yes'),
(21,	'default_pingback_flag',	'1',	'yes'),
(22,	'posts_per_page',	'10',	'yes'),
(23,	'date_format',	'j F, Y',	'yes'),
(24,	'time_format',	'g:i a',	'yes'),
(25,	'links_updated_date_format',	'j F, Y g:i a',	'yes'),
(26,	'comment_moderation',	'0',	'yes'),
(27,	'moderation_notify',	'1',	'yes'),
(28,	'permalink_structure',	'/%year%/%monthnum%/%day%/%postname%/',	'yes'),
(29,	'rewrite_rules',	'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}',	'yes'),
(30,	'hack_file',	'0',	'yes'),
(31,	'blog_charset',	'UTF-8',	'yes'),
(32,	'moderation_keys',	'',	'no'),
(33,	'active_plugins',	'a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:31:\"what-the-file/what-the-file.php\";}',	'yes'),
(34,	'category_base',	'',	'yes'),
(35,	'ping_sites',	'http://rpc.pingomatic.com/',	'yes'),
(36,	'comment_max_links',	'2',	'yes'),
(37,	'gmt_offset',	'-5',	'yes'),
(38,	'default_email_category',	'1',	'yes'),
(39,	'recently_edited',	'',	'no'),
(40,	'template',	'truccos',	'yes'),
(41,	'stylesheet',	'truccos',	'yes'),
(42,	'comment_registration',	'0',	'yes'),
(43,	'html_type',	'text/html',	'yes'),
(44,	'use_trackback',	'0',	'yes'),
(45,	'default_role',	'subscriber',	'yes'),
(46,	'db_version',	'49752',	'yes'),
(47,	'uploads_use_yearmonth_folders',	'1',	'yes'),
(48,	'upload_path',	'',	'yes'),
(49,	'blog_public',	'1',	'yes'),
(50,	'default_link_category',	'2',	'yes'),
(51,	'show_on_front',	'page',	'yes'),
(52,	'tag_base',	'',	'yes'),
(53,	'show_avatars',	'1',	'yes'),
(54,	'avatar_rating',	'G',	'yes'),
(55,	'upload_url_path',	'',	'yes'),
(56,	'thumbnail_size_w',	'150',	'yes'),
(57,	'thumbnail_size_h',	'150',	'yes'),
(58,	'thumbnail_crop',	'1',	'yes'),
(59,	'medium_size_w',	'300',	'yes'),
(60,	'medium_size_h',	'300',	'yes'),
(61,	'avatar_default',	'mystery',	'yes'),
(62,	'large_size_w',	'1024',	'yes'),
(63,	'large_size_h',	'1024',	'yes'),
(64,	'image_default_link_type',	'none',	'yes'),
(65,	'image_default_size',	'',	'yes'),
(66,	'image_default_align',	'',	'yes'),
(67,	'close_comments_for_old_posts',	'0',	'yes'),
(68,	'close_comments_days_old',	'14',	'yes'),
(69,	'thread_comments',	'1',	'yes'),
(70,	'thread_comments_depth',	'5',	'yes'),
(71,	'page_comments',	'0',	'yes'),
(72,	'comments_per_page',	'50',	'yes'),
(73,	'default_comments_page',	'newest',	'yes'),
(74,	'comment_order',	'asc',	'yes'),
(75,	'sticky_posts',	'a:0:{}',	'yes'),
(76,	'widget_categories',	'a:0:{}',	'yes'),
(77,	'widget_text',	'a:0:{}',	'yes'),
(78,	'widget_rss',	'a:0:{}',	'yes'),
(79,	'uninstall_plugins',	'a:0:{}',	'no'),
(80,	'timezone_string',	'',	'yes'),
(81,	'page_for_posts',	'0',	'yes'),
(82,	'page_on_front',	'5',	'yes'),
(83,	'default_post_format',	'0',	'yes'),
(84,	'link_manager_enabled',	'0',	'yes'),
(85,	'finished_splitting_shared_terms',	'1',	'yes'),
(86,	'site_icon',	'0',	'yes'),
(87,	'medium_large_size_w',	'768',	'yes'),
(88,	'medium_large_size_h',	'0',	'yes'),
(89,	'wp_page_for_privacy_policy',	'3',	'yes'),
(90,	'show_comments_cookies_opt_in',	'1',	'yes'),
(91,	'admin_email_lifespan',	'1642435454',	'yes'),
(92,	'disallowed_keys',	'',	'no'),
(93,	'comment_previously_approved',	'1',	'yes'),
(94,	'auto_plugin_theme_update_emails',	'a:0:{}',	'no'),
(95,	'auto_update_core_dev',	'enabled',	'yes'),
(96,	'auto_update_core_minor',	'enabled',	'yes'),
(97,	'auto_update_core_major',	'enabled',	'yes'),
(98,	'wp_force_deactivated_plugins',	'a:0:{}',	'yes'),
(99,	'initial_db_version',	'49752',	'yes'),
(100,	'wp_user_roles',	'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',	'yes'),
(101,	'fresh_site',	'0',	'yes'),
(102,	'WPLANG',	'es_CO',	'yes'),
(103,	'widget_block',	'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}',	'yes'),
(104,	'sidebars_widgets',	'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}',	'yes'),
(105,	'cron',	'a:6:{i:1627322655;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1627358655;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1627401855;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1627401878;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1627574655;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',	'yes'),
(106,	'widget_pages',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(107,	'widget_calendar',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(108,	'widget_archives',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(109,	'widget_media_audio',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(110,	'widget_media_image',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(111,	'widget_media_gallery',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(112,	'widget_media_video',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(113,	'widget_meta',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(114,	'widget_search',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(115,	'nonce_key',	'PMu1K2b^=mr%ju+shuo]TX=KS(/Vv$.]=H(C2/+az@jd/@@#~iVWh>LQq!pwMw;L',	'no'),
(116,	'nonce_salt',	'psA^s6SrT~D:g~`qECltlt $r)EN7CQHS?b`R}]`;$rAvoKR}t,%O8h8=+uEE4<l',	'no'),
(117,	'widget_tag_cloud',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(118,	'widget_nav_menu',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(119,	'widget_custom_html',	'a:1:{s:12:\"_multiwidget\";i:1;}',	'yes'),
(121,	'recovery_keys',	'a:0:{}',	'yes'),
(122,	'https_detection_errors',	'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:24:\"Solicitud HTTPS fallida.\";}}',	'yes'),
(123,	'_site_transient_update_core',	'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_CO/wordpress-5.8.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1627319451;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}',	'no'),
(124,	'theme_mods_twentytwentyone',	'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1626885299;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}',	'yes'),
(129,	'_site_transient_update_themes',	'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1627319452;s:7:\"checked\";a:1:{s:7:\"truccos\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}',	'no'),
(130,	'auth_key',	' >dRB4>3tRk|cz=g:O!0gF>P->?]cJYt;~_Dk$5lRW`_gRO~^zuitvsnO@7h+A;u',	'no'),
(131,	'auth_salt',	'ryr9p?.+t6PZ?gt7c#`Z[|,KUc/@n,<~7R9:P4#*Q;.,fSYw*B#Z3-?>mN^!te;l',	'no'),
(132,	'logged_in_key',	')>yf~>JCu<=CC8yE.Kkn>V]~c|{D+=MQ/fo>IXVBfqY7:8DFV.}c)[55]c;9)6K>',	'no'),
(133,	'logged_in_salt',	'cLb,h=*[8Ve=F^~bJ*{!|H#Cr[9~sg3Q#tjCB<> E3xgw^7,Gzu_>-:#E34&~qDm',	'no'),
(134,	'_site_transient_timeout_browser_49e9b5d1deb83c1d15cf6aeb67fd2e1f',	'1627488278',	'no'),
(135,	'_site_transient_browser_49e9b5d1deb83c1d15cf6aeb67fd2e1f',	'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.164\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',	'no'),
(136,	'_site_transient_timeout_php_check_7841c854be39099ac1d9b61bb411ecb0',	'1627488278',	'no'),
(137,	'_site_transient_php_check_7841c854be39099ac1d9b61bb411ecb0',	'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',	'no'),
(141,	'can_compress_scripts',	'1',	'no'),
(156,	'recently_activated',	'a:0:{}',	'yes'),
(159,	'whatthefile-install-date',	'2021-07-21',	'no'),
(162,	'finished_updating_comment_type',	'1',	'yes'),
(165,	'current_theme',	'truccos',	'yes'),
(166,	'theme_mods_truccos',	'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}',	'yes'),
(167,	'theme_switched',	'',	'yes'),
(168,	'category_children',	'a:0:{}',	'yes'),
(185,	'_transient_health-check-site-status-result',	'{\"good\":12,\"recommended\":7,\"critical\":0}',	'yes'),
(200,	'recovery_mode_email_last_sent',	'1626988887',	'yes'),
(218,	'_site_transient_timeout_theme_roots',	'1627321251',	'no'),
(219,	'_site_transient_theme_roots',	'a:1:{s:7:\"truccos\";s:7:\"/themes\";}',	'no'),
(220,	'_site_transient_update_plugins',	'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1627319453;s:8:\"response\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:31:\"what-the-file/what-the-file.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/what-the-file\";s:4:\"slug\";s:13:\"what-the-file\";s:6:\"plugin\";s:31:\"what-the-file/what-the-file.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/what-the-file/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/what-the-file.1.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-256x256.png?rev=1223609\";s:2:\"1x\";s:66:\"https://ps.w.org/what-the-file/assets/icon-128x128.png?rev=1223609\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/what-the-file/assets/banner-772x250.jpg?rev=685200\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.1\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"what-the-file/what-the-file.php\";s:5:\"1.5.4\";}}',	'no');

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1,	2,	'_wp_page_template',	'default'),
(2,	3,	'_wp_page_template',	'default'),
(3,	5,	'_edit_last',	'1'),
(4,	5,	'_edit_lock',	'1626920129:1'),
(5,	5,	'_wp_page_template',	'template-coming-soon.php'),
(6,	7,	'_edit_last',	'1'),
(7,	7,	'_edit_lock',	'1626985859:1'),
(8,	8,	'_edit_last',	'1'),
(9,	8,	'_wp_page_template',	'template-landing.php'),
(10,	8,	'_edit_lock',	'1626886214:1'),
(11,	7,	'_wp_page_template',	'template-landing-old.php'),
(12,	14,	'_edit_last',	'1'),
(13,	14,	'_edit_lock',	'1627006982:1'),
(14,	14,	'_wp_page_template',	'template-landing.php');

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1,	1,	'2021-07-21 11:04:14',	'2021-07-21 16:04:14',	'<!-- wp:paragraph -->\n<p>Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!</p>\n<!-- /wp:paragraph -->',	'¡Hola mundo!',	'',	'publish',	'open',	'open',	'',	'hola-mundo',	'',	'',	'2021-07-21 11:04:14',	'2021-07-21 16:04:14',	'',	0,	'http://localhost/truccos/?p=1',	0,	'post',	'',	1),
(2,	1,	'2021-07-21 11:04:14',	'2021-07-21 16:04:14',	'<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente de una entrada de blog porque se quedará en ese lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente comienza con una página de acerca de que los introduce a los visitantes potenciales del sitio. Podría decir algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy un Mensajero en bici durante el día, aspirante a actor de noche, y este es mi sitio Web. Vivo en los Ángeles, tengo un gran perro llamado Jack, y me gustan las piñas coladas. (Y estar atrapados en la lluvia.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La Empresa Doohickey XYZ fue fundada en 1971, y ha estado proporcionando cosas de calidad al público desde entonces. Ubicado en la ciudad de Gotham, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas impresionantes para la comunidad gótica.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, debes ir a <a href=\"http://localhost/truccos/wp-admin/\">tu Escritorio</a> para eliminar esta página, y así crear nuevas páginas para su contenido. ¡Que te diviertas!</p>\n<!-- /wp:paragraph -->',	'Página de ejemplo',	'',	'publish',	'closed',	'open',	'',	'pagina-ejemplo',	'',	'',	'2021-07-21 11:04:14',	'2021-07-21 16:04:14',	'',	0,	'http://localhost/truccos/?page_id=2',	0,	'page',	'',	0),
(3,	1,	'2021-07-21 11:04:14',	'2021-07-21 16:04:14',	'<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Nuestra dirección de sitio web es: http://localhost/truccos.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en el sitio recopilamos los datos mostrados en el formulario de comentarios, y también la dirección IP del visitante y la cadena del agente de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se puede proporcionar una cadena anónima creada a partir de su dirección de correo electrónico (también denominada hash) al servicio gravatar para ver si la está utilizando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, su imagen de perfil será visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes al sitio web, debes evitar cargar imágenes con datos de ubicación incrustados (EXIF GPS). Los visitantes del sitio web pueden descargar y extraer los datos de la ubicación de las imágenes en el sitio Web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si deja un comentario en nuestro sitio, puedes optar por guardar tu nombre, dirección de correo electrónico y sitio web en cookies. Estos es para tu comodidad y no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán un año de duración.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si visitas nuestra página de Acceso, se instalará una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicies sesión, se instalarán varias cookies para guardar tu información de acceso y opciones de visualización de pantalla. Las cookies de acceso permanecerán por dos días y las cookies de opciones de pantalla se guardarán por un año. Si seleccionas «Recuérdarme» en tu inicio de sesión, estas se guardarán por dos semanas. Si cierra la sesión de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar automáticamente cualquier comentario de seguimiento en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para los usuarios que se registren en nuestro sitio web (si los hay), se almacenarán todos sus datos de información personal que proporcionen. Cualquier usuario puede ver, editar o eliminar su información personal cuando lo desee (a excepción del nombre de usuario que no se puede editar). Los administradores de sitios web, también pueden ver y editar dicha información. </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta en este sitio, o ha dejado comentarios, puedes solicitar la exportación de un archivo con tus datos personales recopilados, incluyendo cualquier otro dato que nos haya proporcionado. También puede solicitar la eliminación de cualquier dato personal que guardemos sobre ti. Esto no incluye los datos que estamos obligados a consevar para fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Puede que los comentarios de los visitantes sean validados por un servicio automatico de detección de spam.</p><!-- /wp:paragraph -->',	'Política de privacidad',	'',	'draft',	'closed',	'open',	'',	'política-privacidad',	'',	'',	'2021-07-21 11:04:14',	'2021-07-21 16:04:14',	'',	0,	'http://localhost/truccos/?page_id=3',	0,	'page',	'',	0),
(4,	1,	'2021-07-21 11:04:38',	'0000-00-00 00:00:00',	'',	'Borrador automático',	'',	'auto-draft',	'open',	'open',	'',	'',	'',	'',	'2021-07-21 11:04:38',	'0000-00-00 00:00:00',	'',	0,	'http://localhost/truccos/?p=4',	0,	'post',	'',	0),
(5,	1,	'2021-07-21 11:19:32',	'2021-07-21 16:19:32',	'',	'Proximamente',	'',	'publish',	'closed',	'closed',	'',	'proximamente',	'',	'',	'2021-07-21 11:38:00',	'2021-07-21 16:38:00',	'',	0,	'http://localhost/truccos/?page_id=5',	0,	'page',	'',	0),
(6,	1,	'2021-07-21 11:19:32',	'2021-07-21 16:19:32',	'',	'Proximamente',	'',	'inherit',	'closed',	'closed',	'',	'5-revision-v1',	'',	'',	'2021-07-21 11:19:32',	'2021-07-21 16:19:32',	'',	5,	'http://localhost/truccos/?p=6',	0,	'revision',	'',	0),
(7,	1,	'2021-07-21 21:18:01',	'2021-07-22 02:18:01',	'',	'Landing Old',	'',	'publish',	'closed',	'closed',	'',	'landing',	'',	'',	'2021-07-22 15:33:21',	'2021-07-22 20:33:21',	'',	0,	'http://localhost/truccos/?page_id=7',	0,	'page',	'',	0),
(8,	1,	'2021-07-21 11:48:21',	'2021-07-21 16:48:21',	'',	'Pasarela',	'',	'publish',	'closed',	'closed',	'',	'pasarela',	'',	'',	'2021-07-21 11:52:36',	'2021-07-21 16:52:36',	'',	0,	'http://localhost/truccos/?page_id=8',	0,	'page',	'',	0),
(9,	1,	'2021-07-21 11:48:21',	'2021-07-21 16:48:21',	'',	'',	'',	'inherit',	'closed',	'closed',	'',	'8-revision-v1',	'',	'',	'2021-07-21 11:48:21',	'2021-07-21 16:48:21',	'',	8,	'http://localhost/truccos/?p=9',	0,	'revision',	'',	0),
(10,	1,	'2021-07-21 11:52:22',	'2021-07-21 16:52:22',	'',	'Pasarela',	'',	'inherit',	'closed',	'closed',	'',	'8-autosave-v1',	'',	'',	'2021-07-21 11:52:22',	'2021-07-21 16:52:22',	'',	8,	'http://localhost/truccos/?p=10',	0,	'revision',	'',	0),
(11,	1,	'2021-07-21 11:52:36',	'2021-07-21 16:52:36',	'',	'Pasarela',	'',	'inherit',	'closed',	'closed',	'',	'8-revision-v1',	'',	'',	'2021-07-21 11:52:36',	'2021-07-21 16:52:36',	'',	8,	'http://localhost/truccos/?p=11',	0,	'revision',	'',	0),
(12,	1,	'2021-07-21 21:18:01',	'2021-07-22 02:18:01',	'',	'Landing',	'',	'inherit',	'closed',	'closed',	'',	'7-revision-v1',	'',	'',	'2021-07-21 21:18:01',	'2021-07-22 02:18:01',	'',	7,	'http://localhost/truccos/?p=12',	0,	'revision',	'',	0),
(13,	1,	'2021-07-22 15:33:21',	'2021-07-22 20:33:21',	'',	'Landing Old',	'',	'inherit',	'closed',	'closed',	'',	'7-revision-v1',	'',	'',	'2021-07-22 15:33:21',	'2021-07-22 20:33:21',	'',	7,	'http://localhost/truccos/?p=13',	0,	'revision',	'',	0),
(14,	1,	'2021-07-22 15:33:28',	'2021-07-22 20:33:28',	'',	'Landing',	'',	'publish',	'closed',	'closed',	'',	'landing-2',	'',	'',	'2021-07-22 15:33:28',	'2021-07-22 20:33:28',	'',	0,	'http://localhost/truccos/?page_id=14',	0,	'page',	'',	0),
(15,	1,	'2021-07-22 15:33:28',	'2021-07-22 20:33:28',	'',	'Landing',	'',	'inherit',	'closed',	'closed',	'',	'14-revision-v1',	'',	'',	'2021-07-22 15:33:28',	'2021-07-22 20:33:28',	'',	14,	'http://localhost/truccos/?p=15',	0,	'revision',	'',	0);

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1,	'Sin categoría',	'sin-categoria',	0);

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1,	1,	0);

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1,	1,	'category',	'',	0,	1);

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1,	1,	'nickname',	'development'),
(2,	1,	'first_name',	''),
(3,	1,	'last_name',	''),
(4,	1,	'description',	''),
(5,	1,	'rich_editing',	'true'),
(6,	1,	'syntax_highlighting',	'true'),
(7,	1,	'comment_shortcuts',	'false'),
(8,	1,	'admin_color',	'fresh'),
(9,	1,	'use_ssl',	'0'),
(10,	1,	'show_admin_bar_front',	'true'),
(11,	1,	'locale',	''),
(12,	1,	'wp_capabilities',	'a:1:{s:13:\"administrator\";b:1;}'),
(13,	1,	'wp_user_level',	'10'),
(14,	1,	'dismissed_wp_pointers',	''),
(15,	1,	'show_welcome_panel',	'0'),
(16,	1,	'session_tokens',	'a:1:{s:64:\"a8eb4e12c0cf80ec4b54e15191b71af5b419c9b89186c64b74aff65192756d7c\";a:4:{s:10:\"expiration\";i:1627056277;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36\";s:5:\"login\";i:1626883477;}}'),
(17,	1,	'wp_dashboard_quick_press_last_post_id',	'4');

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1,	'development',	'$P$BQ5hz3VYd/Kan2r5lfYYhvzQdrqwXI.',	'development',	'nunzio.ruffo@sigma3ds.com',	'http://localhost/truccos',	'2021-07-21 16:04:14',	'',	0,	'development');

-- 2021-07-26 17:42:02
