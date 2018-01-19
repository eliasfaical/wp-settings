# Migração da Base de Dados MySQL do WordPress
#
# Gerado: Friday 19. January 2018 13:11 UTC
# Nome do Servidor: mysql.abracomex.org
# Banco de Dados: `abracomex09`
# URL: //127.0.0.1:3020
# Path: //127.0.0.1:3020
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, depoimento, nav_menu_item, page, post, wpcf7_contact_form
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Apagar qualquer tabela `wp_commentmeta` existente
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Estrutura da tabela `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_commentmeta`
#

#
# Fim do conteúdo da tabela `wp_commentmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_comments` existente
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Estrutura da tabela `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-15 22:25:31', '2018-01-16 00:25:31', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# Fim do conteúdo da tabela `wp_comments`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_links` existente
#

DROP TABLE IF EXISTS `wp_links`;


#
# Estrutura da tabela `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_links`
#

#
# Fim do conteúdo da tabela `wp_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_options` existente
#

DROP TABLE IF EXISTS `wp_options`;


#
# Estrutura da tabela `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://127.0.0.1:3020', 'yes'),
(2, 'home', 'https://127.0.0.1:3020', 'yes'),
(3, 'blogname', 'Abracomex', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'eliasfaical@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%', 'yes'),
(29, 'rewrite_rules', 'a:86:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:50:"contact-form-7-mailchimp-extension/cf7-mch-ext.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'abracomex', 'yes'),
(41, 'stylesheet', 'abracomex', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'nonce_key', 'Vyu+f9-E=jp~XpYh7:mYie6zLuu=<xajJ3ZkX$R4W#hN(/*/(n7$a?6x53e9yN [', 'no'),
(108, 'nonce_salt', '|n/&#J.0WXRbtK2hUj;=vw;GLf8L}-B?qLMOQ![v5=S.J.<l(e(fC]7NR{}`ZL?%', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1516407933;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1516408013;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516409287;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, 'secure_auth_key', 'UMEQ`zTXE,<}=/3vWj~;<?Nh}C:L[8w#CBLup,qgqw#>;XJ1?$*62Ixr>?*+t5~n', 'no'),
(115, 'secure_auth_salt', 'Bfula0R}(T4z%dy_:Zdj/0dfdD6Ohjg]%janOt84#{n_??X?<tl@~JoX#%&L<BT`', 'no'),
(116, 'logged_in_key', 'd<U>LFJDL$M~bP^6tvp[Vo`5VJ/tojdlGWo9B-xD4?OGW]X>D|q|~TfCM&=X4/j5', 'no'),
(117, 'logged_in_salt', '1L.}Lv.+[TVu)V?`#Lf.;`3=:c?VGXNpxdS0MZ:]|``7@!}w/qL<-1)!D073^$E7', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(138, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1516062841;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(139, 'current_theme', 'Abracomex', 'yes'),
(140, 'theme_mods_abracomex', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1516367499;}', 'no'),
(172, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.9.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1516214945;s:7:"version";s:5:"4.9.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(173, 'mce_show_notice', '0', 'no'),
(174, 'cf7_mch_20', 'a:25:{s:3:"api";s:0:"";s:4:"list";s:0:"";s:5:"email";s:0:"";s:4:"name";s:0:"";s:6:"accept";s:0:"";s:12:"CustomValue1";s:0:"";s:10:"CustomKey1";s:0:"";s:12:"CustomValue2";s:0:"";s:10:"CustomKey2";s:0:"";s:12:"CustomValue3";s:0:"";s:10:"CustomKey3";s:0:"";s:12:"CustomValue4";s:0:"";s:10:"CustomKey4";s:0:"";s:12:"CustomValue5";s:0:"";s:10:"CustomKey5";s:0:"";s:12:"CustomValue6";s:0:"";s:10:"CustomKey6";s:0:"";s:12:"CustomValue7";s:0:"";s:10:"CustomKey7";s:0:"";s:12:"CustomValue8";s:0:"";s:10:"CustomKey8";s:0:"";s:12:"CustomValue9";s:0:"";s:10:"CustomKey9";s:0:"";s:13:"CustomValue10";s:0:"";s:11:"CustomKey10";s:0:"";}', 'yes'),
(176, 'category_children', 'a:0:{}', 'yes'),
(179, 'cf7_mch_27', 'a:25:{s:3:"api";s:0:"";s:4:"list";s:0:"";s:5:"email";s:0:"";s:4:"name";s:0:"";s:6:"accept";s:0:"";s:12:"CustomValue1";s:0:"";s:10:"CustomKey1";s:0:"";s:12:"CustomValue2";s:0:"";s:10:"CustomKey2";s:0:"";s:12:"CustomValue3";s:0:"";s:10:"CustomKey3";s:0:"";s:12:"CustomValue4";s:0:"";s:10:"CustomKey4";s:0:"";s:12:"CustomValue5";s:0:"";s:10:"CustomKey5";s:0:"";s:12:"CustomValue6";s:0:"";s:10:"CustomKey6";s:0:"";s:12:"CustomValue7";s:0:"";s:10:"CustomKey7";s:0:"";s:12:"CustomValue8";s:0:"";s:10:"CustomKey8";s:0:"";s:12:"CustomValue9";s:0:"";s:10:"CustomKey9";s:0:"";s:13:"CustomValue10";s:0:"";s:11:"CustomKey10";s:0:"";}', 'yes') ;

#
# Fim do conteúdo da tabela `wp_options`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_postmeta` existente
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Estrutura da tabela `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1516063558:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1516063598:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1516063624:1'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1516063829:1'),
(13, 13, '_edit_last', '1'),
(14, 13, '_edit_lock', '1516063657:1'),
(15, 15, '_menu_item_type', 'post_type'),
(16, 15, '_menu_item_menu_item_parent', '0'),
(17, 15, '_menu_item_object_id', '5'),
(18, 15, '_menu_item_object', 'page'),
(19, 15, '_menu_item_target', ''),
(20, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(21, 15, '_menu_item_xfn', ''),
(22, 15, '_menu_item_url', ''),
(24, 16, '_menu_item_type', 'post_type'),
(25, 16, '_menu_item_menu_item_parent', '0'),
(26, 16, '_menu_item_object_id', '7'),
(27, 16, '_menu_item_object', 'page'),
(28, 16, '_menu_item_target', ''),
(29, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 16, '_menu_item_xfn', ''),
(31, 16, '_menu_item_url', ''),
(33, 17, '_menu_item_type', 'post_type'),
(34, 17, '_menu_item_menu_item_parent', '0'),
(35, 17, '_menu_item_object_id', '9'),
(36, 17, '_menu_item_object', 'page'),
(37, 17, '_menu_item_target', ''),
(38, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 17, '_menu_item_xfn', ''),
(40, 17, '_menu_item_url', ''),
(42, 18, '_menu_item_type', 'post_type'),
(43, 18, '_menu_item_menu_item_parent', '0'),
(44, 18, '_menu_item_object_id', '11'),
(45, 18, '_menu_item_object', 'page'),
(46, 18, '_menu_item_target', ''),
(47, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 18, '_menu_item_xfn', ''),
(49, 18, '_menu_item_url', ''),
(51, 19, '_menu_item_type', 'post_type'),
(52, 19, '_menu_item_menu_item_parent', '0'),
(53, 19, '_menu_item_object_id', '13'),
(54, 19, '_menu_item_object', 'page'),
(55, 19, '_menu_item_target', ''),
(56, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 19, '_menu_item_xfn', ''),
(58, 19, '_menu_item_url', ''),
(59, 20, '_form', '[text* nome class:form-control placeholder "Seu nome"]\n\n[email* email class:form-control placeholder "Seu e-mail"]\n\n[submit class:btn "Assinar"]'),
(60, 20, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:26:"Abracomex "[your-subject]"";s:6:"sender";s:35:"[your-name] <eliasfaical@gmail.com>";s:9:"recipient";s:21:"eliasfaical@gmail.com";s:4:"body";s:185:"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em Abracomex (https://127.0.0.1:3020)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(61, 20, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:26:"Abracomex "[your-subject]"";s:6:"sender";s:33:"Abracomex <eliasfaical@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:129:"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em Abracomex (https://127.0.0.1:3020)";s:18:"additional_headers";s:31:"Reply-To: eliasfaical@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(62, 20, '_messages', 'a:23:{s:12:"mail_sent_ok";s:27:"Agradecemos a sua mensagem.";s:12:"mail_sent_ng";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:16:"validation_error";s:63:"Um ou mais campos possuem um erro. Verifique e tente novamente.";s:4:"spam";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:12:"accept_terms";s:72:"Você deve aceitar os termos e condições antes de enviar sua mensagem.";s:16:"invalid_required";s:24:"O campo é obrigatório.";s:16:"invalid_too_long";s:23:"O campo é muito longo.";s:17:"invalid_too_short";s:23:"O campo é muito curto.";s:12:"invalid_date";s:34:"O formato de data está incorreto.";s:14:"date_too_early";s:44:"A data é anterior à mais antiga permitida.";s:13:"date_too_late";s:44:"A data é posterior à maior data permitida.";s:13:"upload_failed";s:49:"Ocorreu um erro desconhecido ao enviar o arquivo.";s:24:"upload_file_type_invalid";s:59:"Você não tem permissão para enviar esse tipo de arquivo.";s:21:"upload_file_too_large";s:26:"O arquivo é muito grande.";s:23:"upload_failed_php_error";s:36:"Ocorreu um erro ao enviar o arquivo.";s:14:"invalid_number";s:34:"O formato de número é inválido.";s:16:"number_too_small";s:46:"O número é menor do que o mínimo permitido.";s:16:"number_too_large";s:46:"O número é maior do que o máximo permitido.";s:23:"quiz_answer_not_correct";s:39:"A resposta para o quiz está incorreta.";s:17:"captcha_not_match";s:35:"O código digitado está incorreto.";s:13:"invalid_email";s:45:"O endereço de e-mail informado é inválido.";s:11:"invalid_url";s:19:"A URL é inválida.";s:11:"invalid_tel";s:35:"O número de telefone é inválido.";}'),
(63, 20, '_additional_settings', ''),
(64, 20, '_locale', 'pt_BR'),
(65, 20, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:64:"A sintaxe de caixa de e-mail usada no campo %name% é inválida.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(66, 21, '_edit_last', '1'),
(67, 21, '_edit_lock', '1516222802:1'),
(68, 23, '_edit_last', '1'),
(69, 23, '_edit_lock', '1516318146:1'),
(70, 24, '_edit_last', '1'),
(71, 24, '_edit_lock', '1516318066:1'),
(72, 25, '_edit_last', '1'),
(73, 25, '_edit_lock', '1516318093:1'),
(74, 26, '_edit_last', '1'),
(75, 26, '_edit_lock', '1516318128:1'),
(76, 27, '_form', '[text* nome class:form-control placeholder "Seu nome"]\n\n[email* email class:form-control placeholder "Seu e-mail"]\n\n[tel* tel class:form-control placeholder "Telefone"]\n\n[text* area class:form-control placeholder "Área de atuaçnao"]\n\n[submit class:btn class:btn-default "Enviar"]'),
(77, 27, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:26:"Abracomex "[your-subject]"";s:6:"sender";s:35:"[your-name] <eliasfaical@gmail.com>";s:9:"recipient";s:21:"eliasfaical@gmail.com";s:4:"body";s:185:"De: [your-name] <[your-email]>\nAssunto: [your-subject]\n\nCorpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em Abracomex (https://127.0.0.1:3020)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(78, 27, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:26:"Abracomex "[your-subject]"";s:6:"sender";s:33:"Abracomex <eliasfaical@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:129:"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em Abracomex (https://127.0.0.1:3020)";s:18:"additional_headers";s:31:"Reply-To: eliasfaical@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(79, 27, '_messages', 'a:23:{s:12:"mail_sent_ok";s:27:"Agradecemos a sua mensagem.";s:12:"mail_sent_ng";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:16:"validation_error";s:63:"Um ou mais campos possuem um erro. Verifique e tente novamente.";s:4:"spam";s:74:"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.";s:12:"accept_terms";s:72:"Você deve aceitar os termos e condições antes de enviar sua mensagem.";s:16:"invalid_required";s:24:"O campo é obrigatório.";s:16:"invalid_too_long";s:23:"O campo é muito longo.";s:17:"invalid_too_short";s:23:"O campo é muito curto.";s:12:"invalid_date";s:34:"O formato de data está incorreto.";s:14:"date_too_early";s:44:"A data é anterior à mais antiga permitida.";s:13:"date_too_late";s:44:"A data é posterior à maior data permitida.";s:13:"upload_failed";s:49:"Ocorreu um erro desconhecido ao enviar o arquivo.";s:24:"upload_file_type_invalid";s:59:"Você não tem permissão para enviar esse tipo de arquivo.";s:21:"upload_file_too_large";s:26:"O arquivo é muito grande.";s:23:"upload_failed_php_error";s:36:"Ocorreu um erro ao enviar o arquivo.";s:14:"invalid_number";s:34:"O formato de número é inválido.";s:16:"number_too_small";s:46:"O número é menor do que o mínimo permitido.";s:16:"number_too_large";s:46:"O número é maior do que o máximo permitido.";s:23:"quiz_answer_not_correct";s:39:"A resposta para o quiz está incorreta.";s:17:"captcha_not_match";s:35:"O código digitado está incorreto.";s:13:"invalid_email";s:45:"O endereço de e-mail informado é inválido.";s:11:"invalid_url";s:19:"A URL é inválida.";s:11:"invalid_tel";s:35:"O número de telefone é inválido.";}'),
(80, 27, '_additional_settings', ''),
(81, 27, '_locale', 'pt_BR'),
(82, 27, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:64:"A sintaxe de caixa de e-mail usada no campo %name% é inválida.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}') ;

#
# Fim do conteúdo da tabela `wp_postmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_posts` existente
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Estrutura da tabela `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-15 22:25:31', '2018-01-16 00:25:31', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2018-01-15 22:25:31', '2018-01-16 00:25:31', '', 0, 'https://127.0.0.1:3020/?p=1', 0, 'post', '', 1),
(3, 1, '2018-01-15 22:26:58', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-15 22:26:58', '0000-00-00 00:00:00', '', 0, 'https://127.0.0.1:3020/?p=3', 0, 'post', '', 0),
(5, 1, '2018-01-15 22:48:20', '2018-01-16 00:48:20', '', 'Cursos', '', 'publish', 'closed', 'closed', '', 'cursos', '', '', '2018-01-15 22:48:20', '2018-01-16 00:48:20', '', 0, 'https://127.0.0.1:3020/?page_id=5', 1, 'page', '', 0),
(7, 1, '2018-01-15 22:48:33', '2018-01-16 00:48:33', '', 'A Abracomex', '', 'publish', 'closed', 'closed', '', 'a-abracomex', '', '', '2018-01-15 22:48:33', '2018-01-16 00:48:33', '', 0, 'https://127.0.0.1:3020/?page_id=7', 2, 'page', '', 0),
(9, 1, '2018-01-15 22:49:17', '2018-01-16 00:49:17', '', 'Programa Trainee', '', 'publish', 'closed', 'closed', '', 'programa-trainee', '', '', '2018-01-15 22:49:17', '2018-01-16 00:49:17', '', 0, 'https://127.0.0.1:3020/?page_id=9', 3, 'page', '', 0),
(11, 1, '2018-01-15 22:49:38', '2018-01-16 00:49:38', '', 'Oportunidade', '', 'publish', 'closed', 'closed', '', 'oportunidade', '', '', '2018-01-15 22:50:29', '2018-01-16 00:50:29', '', 0, 'https://127.0.0.1:3020/?page_id=11', 4, 'page', '', 0),
(13, 1, '2018-01-15 22:49:58', '2018-01-16 00:49:58', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-01-15 22:49:58', '2018-01-16 00:49:58', '', 0, 'https://127.0.0.1:3020/?page_id=13', 5, 'page', '', 0),
(15, 1, '2018-01-15 22:50:46', '2018-01-16 00:50:46', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-01-15 22:50:46', '2018-01-16 00:50:46', '', 0, 'https://127.0.0.1:3020/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-01-15 22:50:46', '2018-01-16 00:50:46', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-01-15 22:50:46', '2018-01-16 00:50:46', '', 0, 'https://127.0.0.1:3020/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2018-01-15 22:50:46', '2018-01-16 00:50:46', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-01-15 22:50:46', '2018-01-16 00:50:46', '', 0, 'https://127.0.0.1:3020/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2018-01-15 22:50:46', '2018-01-16 00:50:46', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-01-15 22:50:46', '2018-01-16 00:50:46', '', 0, 'https://127.0.0.1:3020/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2018-01-15 22:50:46', '2018-01-16 00:50:46', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-01-15 22:50:46', '2018-01-16 00:50:46', '', 0, 'https://127.0.0.1:3020/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2018-01-17 18:49:05', '2018-01-17 20:49:05', '[text* nome class:form-control placeholder "Seu nome"]\r\n\r\n[email* email class:form-control placeholder "Seu e-mail"]\r\n\r\n[submit class:btn "Assinar"]\n1\nAbracomex "[your-subject]"\n[your-name] <eliasfaical@gmail.com>\neliasfaical@gmail.com\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em Abracomex (https://127.0.0.1:3020)\nReply-To: [your-email]\n\n\n\n\nAbracomex "[your-subject]"\nAbracomex <eliasfaical@gmail.com>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em Abracomex (https://127.0.0.1:3020)\nReply-To: eliasfaical@gmail.com\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO código digitado está incorreto.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Formulário Assinar Newsletter', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2018-01-17 18:52:44', '2018-01-17 20:52:44', '', 0, 'https://127.0.0.1:3020/?post_type=wpcf7_contact_form&#038;p=20', 0, 'wpcf7_contact_form', '', 0),
(21, 1, '2018-01-17 19:00:01', '2018-01-17 21:00:01', '', 'Curso de MBA', '', 'publish', 'closed', 'closed', '', 'curso-de-mba', '', '', '2018-01-17 19:00:01', '2018-01-17 21:00:01', '', 5, 'https://127.0.0.1:3020/?page_id=21', 1, 'page', '', 0),
(23, 1, '2018-01-18 21:22:09', '2018-01-18 23:22:09', 'Sou Consultora da empresa LYNKA COMÉRCIO EXTERIOR &amp; GLOBAL SOURCING atuo no desenvolvimento de negócios de micros, pequenas e médias empresas, em todas as etapas dos processo de venda e aquisição de produtos e serviços no mercado internacional., inclui atividades de sourcing e assessoria em Compras Internacionais.', 'Zelia G Da Silva', '', 'publish', 'closed', 'closed', '', 'zelia-g-da-silva', '', '', '2018-01-18 21:31:28', '2018-01-18 23:31:28', '', 0, 'https://127.0.0.1:3020/?post_type=depoimento&#038;p=23', 0, 'depoimento', '', 0),
(24, 1, '2018-01-18 21:29:41', '2018-01-18 23:29:41', 'Trabalho na Yin’s Brasil Comércio Internacional Ltda, atuo como Gerente de Importação. Coordeno as operações de importação e compras internacionais (PO). Meus principais desafios são: manter a motivação da equipe, comunicação com fornecedores, negociação de preços, controles de pedidos, relatórios gerenciais referente aos embarques e cálculo de custos de impostação.', 'Ligia Oliveira', '', 'publish', 'closed', 'closed', '', 'ligia-oliveira', '', '', '2018-01-18 21:29:41', '2018-01-18 23:29:41', '', 0, 'https://127.0.0.1:3020/?post_type=depoimento&#038;p=24', 0, 'depoimento', '', 0),
(25, 1, '2018-01-18 21:30:27', '2018-01-18 23:30:27', 'Mudei a pouco tempo para o Rio de Janeiro e não estou atuando no mercado de trabalho. Aproveite este tempo para me aperfeiçoar para o próximo trabalho. No meu último trabalho em Florianópolis, atuava como secretária executiva da ACACEF, sendo responsável por todo administrativo da mesma. Meus desafios eram diários, possibilitando para os nossos associados.', 'Gisele Bressiani', '', 'publish', 'closed', 'closed', '', 'gisele-bressiani', '', '', '2018-01-18 21:30:27', '2018-01-18 23:30:27', '', 0, 'https://127.0.0.1:3020/?post_type=depoimento&#038;p=25', 0, 'depoimento', '', 0),
(26, 1, '2018-01-18 21:30:50', '2018-01-18 23:30:50', 'Hoje eu trabalho na Mongeral Aegon,sou corretora de seguros.E os meus maiores desafios são angariar clientes, conseguir fazer um abordagem perfeita para a concretização da venda do produto.', 'Thais Ramos', '', 'publish', 'closed', 'closed', '', 'thais-ramos', '', '', '2018-01-18 21:30:50', '2018-01-18 23:30:50', '', 0, 'https://127.0.0.1:3020/?post_type=depoimento&#038;p=26', 0, 'depoimento', '', 0),
(27, 1, '2018-01-18 22:55:43', '2018-01-19 00:55:43', '[text* nome class:form-control placeholder "Seu nome"]\r\n\r\n[email* email class:form-control placeholder "Seu e-mail"]\r\n\r\n[tel* tel class:form-control placeholder "Telefone"]\r\n\r\n[text* area class:form-control placeholder "Área de atuaçnao"]\r\n\r\n[submit class:btn class:btn-default "Enviar"]\n1\nAbracomex "[your-subject]"\n[your-name] <eliasfaical@gmail.com>\neliasfaical@gmail.com\nDe: [your-name] <[your-email]>\r\nAssunto: [your-subject]\r\n\r\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em Abracomex (https://127.0.0.1:3020)\nReply-To: [your-email]\n\n\n\n\nAbracomex "[your-subject]"\nAbracomex <eliasfaical@gmail.com>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em Abracomex (https://127.0.0.1:3020)\nReply-To: eliasfaical@gmail.com\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO código digitado está incorreto.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Cadastre MBA Internacional', '', 'publish', 'closed', 'closed', '', 'cadastre-mba-internacional', '', '', '2018-01-18 22:55:43', '2018-01-19 00:55:43', '', 0, 'https://127.0.0.1:3020/?post_type=wpcf7_contact_form&p=27', 0, 'wpcf7_contact_form', '', 0) ;

#
# Fim do conteúdo da tabela `wp_posts`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_relationships` existente
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Estrutura da tabela `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0) ;

#
# Fim do conteúdo da tabela `wp_term_relationships`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_taxonomy` existente
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Estrutura da tabela `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5) ;

#
# Fim do conteúdo da tabela `wp_term_taxonomy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_termmeta` existente
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Estrutura da tabela `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_termmeta`
#

#
# Fim do conteúdo da tabela `wp_termmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_terms` existente
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Estrutura da tabela `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Menu Principal', 'menu-principal', 0) ;

#
# Fim do conteúdo da tabela `wp_terms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_usermeta` existente
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Estrutura da tabela `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'abracomex'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:"1cbca7c2cc3bcbe1d4c197d3152c6b86efcf76f4e10844aeb3a6d1dc659874d0";a:4:{s:10:"expiration";i:1516489934;s:2:"ip";s:3:"::1";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:57.0) Gecko/20100101 Firefox/57.0";s:5:"login";i:1516317134;}s:64:"d43d3537ca9de502bfcbe2831b0154f2b25bb4d25a6e893d0391b2808016ba97";a:4:{s:10:"expiration";i:1516539116;s:2:"ip";s:14:"179.234.232.43";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:57.0) Gecko/20100101 Firefox/57.0";s:5:"login";i:1516366316;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"179.234.232.0";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:"dashboard_activity";i:1;s:21:"dashboard_quick_press";i:2;s:17:"dashboard_primary";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_user-settings', 'hidetb=1&editor=tinymce'),
(25, 1, 'wp_user-settings-time', '1516318246') ;

#
# Fim do conteúdo da tabela `wp_usermeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_users` existente
#

DROP TABLE IF EXISTS `wp_users`;


#
# Estrutura da tabela `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'abracomex', '$P$BM1W3Ugyi2Ac/S7HkQwIRwbIHlcG771', 'abracomex', 'eliasfaical@gmail.com', '', '2018-01-16 00:25:31', '', 0, 'abracomex') ;

#
# Fim do conteúdo da tabela `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

