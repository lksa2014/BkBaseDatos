-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2023 a las 01:56:35
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `countrypisos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://es-cr.wordpress.org/', '', '2023-03-30 03:09:47', '2023-03-30 03:09:47', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/countrypisos', 'yes'),
(2, 'home', 'http://localhost/countrypisos', 'yes'),
(3, 'blogname', 'CountryPisos', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lksa201401@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:109:{s:16:\"lksa_trabajos/?$\";s:33:\"index.php?post_type=lksa_trabajos\";s:46:\"lksa_trabajos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=lksa_trabajos&feed=$matches[1]\";s:41:\"lksa_trabajos/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=lksa_trabajos&feed=$matches[1]\";s:33:\"lksa_trabajos/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=lksa_trabajos&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"lksa_trabajos/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"lksa_trabajos/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"lksa_trabajos/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"lksa_trabajos/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"lksa_trabajos/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"lksa_trabajos/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"lksa_trabajos/(.+?)/embed/?$\";s:46:\"index.php?lksa_trabajos=$matches[1]&embed=true\";s:32:\"lksa_trabajos/(.+?)/trackback/?$\";s:40:\"index.php?lksa_trabajos=$matches[1]&tb=1\";s:52:\"lksa_trabajos/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?lksa_trabajos=$matches[1]&feed=$matches[2]\";s:47:\"lksa_trabajos/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?lksa_trabajos=$matches[1]&feed=$matches[2]\";s:40:\"lksa_trabajos/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?lksa_trabajos=$matches[1]&paged=$matches[2]\";s:47:\"lksa_trabajos/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?lksa_trabajos=$matches[1]&cpage=$matches[2]\";s:36:\"lksa_trabajos/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?lksa_trabajos=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=23&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"countrypisos-post-types/countrypisos_post_types.php\";i:2;s:39:\"disable-gutenberg/disable-gutenberg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:67:\"C:\\xampp\\htdocs\\countrypisos/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'countrypisos', 'yes'),
(41, 'stylesheet', 'countrypisos', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '33', 'yes'),
(82, 'page_on_front', '23', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1695697787', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'es_CR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar_1\";a:1:{i:0;s:8:\"search-2\";}s:9:\"sidebar_2\";a:1:{i:0;s:10:\"calendar-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1680235788;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1680275388;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1680275558;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1680318588;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680318758;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680318759;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680836988;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:10:\"Gregoriano\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:6:\"Buscar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1680148295;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:26:\"Verificación SSL fallida.\";}}', 'yes'),
(134, '_site_transient_timeout_browser_c3fcd9e52fd775c43c9553a961bfc52c', '1680750758', 'no'),
(135, '_site_transient_browser_c3fcd9e52fd775c43c9553a961bfc52c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"111.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(136, '_site_transient_timeout_php_check_ce267f3653936506950ae9448202043a', '1680750759', 'no'),
(137, '_site_transient_php_check_ce267f3653936506950ae9448202043a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(139, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1680273190', 'no'),
(140, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:4:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:51:\"Meetup Virtual - Serie SEO Destripando tu sitio web\";s:3:\"url\";s:49:\"https://www.meetup.com/wpcartago/events/292386876\";s:6:\"meetup\";s:24:\"Cartago WordPress Meetup\";s:10:\"meetup_url\";s:33:\"https://www.meetup.com/wpcartago/\";s:4:\"date\";s:19:\"2023-04-04 19:00:00\";s:8:\"end_date\";s:19:\"2023-04-04 21:00:00\";s:20:\"start_unix_timestamp\";i:1680656400;s:18:\"end_unix_timestamp\";i:1680663600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"CR\";s:8:\"latitude\";d:9.87;s:9:\"longitude\";d:-83.93;}}i:1;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:51:\"Meetup Virtual - Serie SEO Destripando tu sitio web\";s:3:\"url\";s:49:\"https://www.meetup.com/wpsanjose/events/292386689\";s:6:\"meetup\";s:26:\"WordPress Meetup San José\";s:10:\"meetup_url\";s:33:\"https://www.meetup.com/wpsanjose/\";s:4:\"date\";s:19:\"2023-04-04 19:00:00\";s:8:\"end_date\";s:19:\"2023-04-04 21:00:00\";s:20:\"start_unix_timestamp\";i:1680656400;s:18:\"end_unix_timestamp\";i:1680663600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"CR\";s:8:\"latitude\";d:9.93;s:9:\"longitude\";d:-84.08;}}i:2;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:61:\"Meetup Virtual - Serie SEO Cómo cambiar a Google Analytics 4\";s:3:\"url\";s:49:\"https://www.meetup.com/wpcartago/events/292553754\";s:6:\"meetup\";s:24:\"Cartago WordPress Meetup\";s:10:\"meetup_url\";s:33:\"https://www.meetup.com/wpcartago/\";s:4:\"date\";s:19:\"2023-05-09 19:00:00\";s:8:\"end_date\";s:19:\"2023-05-09 21:00:00\";s:20:\"start_unix_timestamp\";i:1683680400;s:18:\"end_unix_timestamp\";i:1683687600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"CR\";s:8:\"latitude\";d:9.87;s:9:\"longitude\";d:-83.93;}}i:3;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:61:\"Meetup Virtual - Serie SEO Cómo cambiar a Google Analytics 4\";s:3:\"url\";s:49:\"https://www.meetup.com/wpsanjose/events/292553717\";s:6:\"meetup\";s:26:\"WordPress Meetup San José\";s:10:\"meetup_url\";s:33:\"https://www.meetup.com/wpsanjose/\";s:4:\"date\";s:19:\"2023-05-09 19:00:00\";s:8:\"end_date\";s:19:\"2023-05-09 21:00:00\";s:20:\"start_unix_timestamp\";i:1683680400;s:18:\"end_unix_timestamp\";i:1683687600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"CR\";s:8:\"latitude\";d:9.93;s:9:\"longitude\";d:-84.08;}}}}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(166, 'current_theme', 'Country Pisos', 'yes'),
(167, 'theme_mods_twentytwentytwo', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1680148777;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(172, 'theme_mods_countrypisos', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:3;}}', 'yes'),
(183, 'acf_version', '6.0.7', 'yes'),
(190, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(198, 'category_children', 'a:0:{}', 'yes'),
(211, '_transient_timeout_feed_a2696e1cf44d75297b51ca9afd2c3295', '1680234749', 'no'),
(212, '_transient_feed_a2696e1cf44d75297b51ca9afd2c3295', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:25:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress.org Español (Costa Rica)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://es-cr.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress en Español de Costa Rica\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 23 Feb 2018 17:18:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"es-CR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=6.3-alpha-55608\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"image\";a:1:{i:0;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:3:\"url\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://s.w.org/favicon.ico?2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress.org Español (Costa Rica)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://es-cr.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"width\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"height\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:4:\"item\";a:1:{i:0;a:6:{s:4:\"data\";s:85:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n		\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Nuevo Blog WordPress Costa Rica\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://es-cr.wordpress.org/2018/02/23/nuevo-blog-wordpress-costa-rica/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://es-cr.wordpress.org/2018/02/23/nuevo-blog-wordpress-costa-rica/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 23 Feb 2018 17:11:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:9:\"comunidad\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"eventos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"general\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:6:\"meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:12:\"traducciones\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://es-cr.wordpress.org/?p=124\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:396:\"Bienvenido en este blog publicaremos articulos relacionados a :      Anuncios de nuevos Meetup      WordCamps en Costa Rica, o en la región.      Recaps de WordCamps      Convocatoria de speakers para WordCamps      Explicaciones sobre cada uno de los equipos de make.wordpress.org      Noticias relacionadas al mundo de WordPress      Cómo usar Slack para [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"remediosgraphic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:999:\"<p>Bienvenido en este blog publicaremos articulos relacionados a :</p>\n<ul>\n<li><span id=\"result_box\" class=\"\" lang=\"es\">     Anuncios de nuevos Meetup</span></li>\n<li><span id=\"result_box\" class=\"\" lang=\"es\">     WordCamps en Costa Rica, o en la región.<br />\n</span></li>\n<li><span id=\"result_box\" class=\"\" lang=\"es\">     Recaps de WordCamps<br />\n</span></li>\n<li><span id=\"result_box\" class=\"\" lang=\"es\">     <span class=\"\">Convocatoria de speakers para WordCamps</span><br />\n</span></li>\n<li><span id=\"result_box\" class=\"\" lang=\"es\">     <span class=\"\">Explicaciones sobre cada uno de los equipos de make.wordpress.org</span><br />\n</span></li>\n<li><span id=\"result_box\" class=\"\" lang=\"es\">     <span class=\"\">Noticias relacionadas al mundo de WordPress</span><br />\n</span></li>\n<li><span id=\"result_box\" class=\"\" lang=\"es\">     <span class=\"\">Cómo usar Slack para construir una comunidad</span></span><span id=\"result_box\" class=\"\" lang=\"es\"></span></li>\n</ul>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://es-cr.wordpress.org/2018/02/23/nuevo-blog-wordpress-costa-rica/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:33:\"https://es-cr.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:48:\"WpOrg\\Requests\\Utility\\CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 30 Mar 2023 15:52:30 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Tue, 17 May 2022 16:13:35 GMT\";s:4:\"link\";s:64:\"<https://es-cr.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-nc\";s:13:\"EXPIRED ord 2\";}}s:5:\"build\";s:14:\"20211220193300\";}', 'no'),
(213, '_transient_timeout_feed_mod_a2696e1cf44d75297b51ca9afd2c3295', '1680234749', 'no'),
(214, '_transient_feed_mod_a2696e1cf44d75297b51ca9afd2c3295', '1680191549', 'no'),
(215, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1680234750', 'no'),
(216, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1680234750', 'no'),
(217, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1680191550', 'no'),
(218, '_transient_timeout_dash_v2_7f399c07d74a164e97f27dc138d1f343', '1680234750', 'no'),
(219, '_transient_dash_v2_7f399c07d74a164e97f27dc138d1f343', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://es-cr.wordpress.org/2018/02/23/nuevo-blog-wordpress-costa-rica/\'>Nuevo Blog WordPress Costa Rica</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://poststatus.com/launching-a-wordpress-product-in-public-session-7/\'>Post Status: Launching a WordPress Product in Public: Session 7</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-6-2-dolphy-introduces-a-revamped-site-editor-distraction-free-writing-mode-and-updated-block-inserter\'>WPTavern: WordPress 6.2 “Dolphy” Introduces a Revamped Site Editor, Distraction-Free Writing Mode, and Updated Block Inserter </a></li><li><a class=\'rsswidget\' href=\'https://poststatus.com/wordpress-6-2-dolphy-gutenberg-phase-3-test-plugin-dependencies/\'>Post Status: WordPress 6.2 “Dolphy” • Gutenberg Phase 3 • Test Plugin Dependencies</a></li></ul></div>', 'no'),
(220, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_CR/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"es_CR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_CR/wordpress-6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1680233261;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(221, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1680233261;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.9\";s:51:\"countrypisos-post-types/countrypisos_post_types.php\";s:5:\"1.0.0\";}}', 'no'),
(222, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1680233262;s:7:\"checked\";a:1:{s:12:\"countrypisos\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(232, '_site_transient_timeout_theme_roots', '1680235055', 'no'),
(233, '_site_transient_theme_roots', 'a:1:{s:12:\"countrypisos\";s:7:\"/themes\";}', 'no'),
(234, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":5,\"critical\":1}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1680145986:1'),
(4, 7, '_edit_lock', '1680146497:1'),
(5, 17, '_edit_lock', '1680147570:1'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1680149160'),
(8, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(9, 20, '_edit_lock', '1680152640:1'),
(10, 20, '_wp_page_template', 'page-contenido-centrado.php'),
(11, 22, '_edit_lock', '1680149639:1'),
(12, 23, '_edit_lock', '1680150098:1'),
(13, 23, '_edit_last', '1'),
(14, 23, '_wp_page_template', 'default'),
(15, 3, '_edit_lock', '1680150264:1'),
(16, 27, '_edit_last', '1'),
(17, 27, '_wp_page_template', 'default'),
(18, 27, '_edit_lock', '1680150129:1'),
(19, 29, '_edit_last', '1'),
(20, 29, '_wp_page_template', 'default'),
(21, 29, '_edit_lock', '1680150154:1'),
(22, 31, '_edit_last', '1'),
(23, 31, '_wp_page_template', 'page-listado-trabajos.php'),
(24, 31, '_edit_lock', '1680233115:1'),
(25, 33, '_edit_last', '1'),
(26, 33, '_wp_page_template', 'default'),
(27, 33, '_edit_lock', '1680154002:1'),
(28, 3, '_edit_last', '1'),
(29, 36, '_menu_item_type', 'post_type'),
(30, 36, '_menu_item_menu_item_parent', '0'),
(31, 36, '_menu_item_object_id', '23'),
(32, 36, '_menu_item_object', 'page'),
(33, 36, '_menu_item_target', ''),
(34, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 36, '_menu_item_xfn', ''),
(36, 36, '_menu_item_url', ''),
(38, 37, '_menu_item_type', 'post_type'),
(39, 37, '_menu_item_menu_item_parent', '0'),
(40, 37, '_menu_item_object_id', '33'),
(41, 37, '_menu_item_object', 'page'),
(42, 37, '_menu_item_target', ''),
(43, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 37, '_menu_item_xfn', ''),
(45, 37, '_menu_item_url', ''),
(56, 39, '_menu_item_type', 'post_type'),
(57, 39, '_menu_item_menu_item_parent', '0'),
(58, 39, '_menu_item_object_id', '27'),
(59, 39, '_menu_item_object', 'page'),
(60, 39, '_menu_item_target', ''),
(61, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 39, '_menu_item_xfn', ''),
(63, 39, '_menu_item_url', ''),
(65, 40, '_menu_item_type', 'post_type'),
(66, 40, '_menu_item_menu_item_parent', '0'),
(67, 40, '_menu_item_object_id', '29'),
(68, 40, '_menu_item_object', 'page'),
(69, 40, '_menu_item_target', ''),
(70, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 40, '_menu_item_xfn', ''),
(72, 40, '_menu_item_url', ''),
(74, 41, '_menu_item_type', 'post_type'),
(75, 41, '_menu_item_menu_item_parent', '0'),
(76, 41, '_menu_item_object_id', '31'),
(77, 41, '_menu_item_object', 'page'),
(78, 41, '_menu_item_target', ''),
(79, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 41, '_menu_item_xfn', ''),
(81, 41, '_menu_item_url', ''),
(83, 42, '_menu_item_type', 'post_type'),
(84, 42, '_menu_item_menu_item_parent', '0'),
(85, 42, '_menu_item_object_id', '20'),
(86, 42, '_menu_item_object', 'page'),
(87, 42, '_menu_item_target', ''),
(88, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 42, '_menu_item_xfn', ''),
(90, 42, '_menu_item_url', ''),
(92, 20, '_edit_last', '1'),
(93, 45, '_wp_attached_file', '2023/03/3b75ae1e-a078-48cd-a04d-e232895ef206.jpg'),
(94, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:48:\"2023/03/3b75ae1e-a078-48cd-a04d-e232895ef206.jpg\";s:8:\"filesize\";i:285393;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 46, '_wp_attached_file', '2023/03/1000_F_222047691_wdlk77i7L8jBnXEBmRiR5QyDuotc5PMs.jpg'),
(96, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:256;s:4:\"file\";s:61:\"2023/03/1000_F_222047691_wdlk77i7L8jBnXEBmRiR5QyDuotc5PMs.jpg\";s:8:\"filesize\";i:162663;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 48, '_wp_attached_file', '2023/03/2210_w022_n003_751b_p15_751.jpg'),
(100, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:7250;s:6:\"height\";i:2900;s:4:\"file\";s:39:\"2023/03/2210_w022_n003_751b_p15_751.jpg\";s:8:\"filesize\";i:551946;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:196:\"Wooden kitchen tabletop with sunlight, wood table foreground front view, light brown rustic countertop and wall with light spots on surface. , Realistic vector background, 3d illustration, mock up\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:49:\"Wooden kitchen tabletop with sunlight, wood table\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:50:{i:0;s:6:\"wooden\";i:1;s:8:\"tabletop\";i:2;s:7:\"kitchen\";i:3;s:8:\"sunlight\";i:4;s:5:\"table\";i:5;s:10:\"foreground\";i:6;s:4:\"wood\";i:7;s:5:\"front\";i:8;s:5:\"light\";i:9;s:4:\"view\";i:10;s:10:\"countertop\";i:11;s:10:\"background\";i:12;s:6:\"rustic\";i:13;s:3:\"old\";i:14;s:3:\"top\";i:15;s:5:\"board\";i:16;s:6:\"border\";i:17;s:5:\"brown\";i:18;s:3:\"new\";i:19;s:7:\"surface\";i:20;s:5:\"retro\";i:21;s:6:\"dining\";i:22;s:4:\"desk\";i:23;s:5:\"plank\";i:24;s:7:\"texture\";i:25;s:7:\"vintage\";i:26;s:9:\"realistic\";i:27;s:2:\"3d\";i:28;s:6:\"vector\";i:29;s:7:\"counter\";i:30;s:6:\"mockup\";i:31;s:5:\"empty\";i:32;s:7:\"rummage\";i:33;s:9:\"furniture\";i:34;s:6:\"timber\";i:35;s:11:\"perspective\";i:36;s:6:\"design\";i:37;s:7:\"display\";i:38;s:5:\"bench\";i:39;s:8:\"material\";i:40;s:7:\"product\";i:41;s:12:\"presentation\";i:42;s:8:\"interior\";i:43;s:5:\"place\";i:44;s:4:\"show\";i:45;s:7:\"mock up\";i:46;s:8:\"backdrop\";i:47;s:4:\"wall\";i:48;s:4:\"spot\";i:49;s:12:\"illustration\";}}}'),
(101, 49, '_wp_attached_file', '2023/03/CountryPisos.png'),
(102, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:449;s:6:\"height\";i:317;s:4:\"file\";s:24:\"2023/03/CountryPisos.png\";s:8:\"filesize\";i:40434;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 50, '_wp_attached_file', '2023/03/CountryPisos-removebg-preview-3.png'),
(104, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:449;s:6:\"height\";i:317;s:4:\"file\";s:43:\"2023/03/CountryPisos-removebg-preview-3.png\";s:8:\"filesize\";i:22628;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 53, '_wp_attached_file', '2023/03/IMG-20230308-WA0058.jpg'),
(110, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0058.jpg\";s:8:\"filesize\";i:75218;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 54, '_wp_attached_file', '2023/03/IMG-20230308-WA0059.jpg'),
(112, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:780;s:6:\"height\";i:1040;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0059.jpg\";s:8:\"filesize\";i:46867;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 55, '_wp_attached_file', '2023/03/IMG-20230308-WA0060.jpg'),
(114, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0060.jpg\";s:8:\"filesize\";i:97677;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 56, '_wp_attached_file', '2023/03/IMG-20230308-WA0061.jpg'),
(116, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:720;s:6:\"height\";i:1280;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0061.jpg\";s:8:\"filesize\";i:86160;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 57, '_wp_attached_file', '2023/03/IMG-20230308-WA0062.jpg'),
(118, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:576;s:6:\"height\";i:1280;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0062.jpg\";s:8:\"filesize\";i:35754;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 58, '_wp_attached_file', '2023/03/IMG-20230308-WA0063.jpg'),
(120, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1040;s:6:\"height\";i:780;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0063.jpg\";s:8:\"filesize\";i:30239;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 59, '_wp_attached_file', '2023/03/IMG-20230308-WA0064.jpg'),
(122, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1040;s:6:\"height\";i:780;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0064.jpg\";s:8:\"filesize\";i:46726;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 60, '_wp_attached_file', '2023/03/IMG-20230308-WA0065.jpg'),
(124, 60, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1032;s:6:\"height\";i:581;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0065.jpg\";s:8:\"filesize\";i:56470;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 61, '_wp_attached_file', '2023/03/IMG-20230308-WA0066.jpg'),
(126, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1040;s:6:\"height\";i:780;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0066.jpg\";s:8:\"filesize\";i:52476;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 62, '_wp_attached_file', '2023/03/IMG-20230308-WA0067.jpg'),
(128, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0067.jpg\";s:8:\"filesize\";i:73354;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 63, '_wp_attached_file', '2023/03/IMG-20230308-WA0068.jpg'),
(130, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1032;s:6:\"height\";i:581;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0068.jpg\";s:8:\"filesize\";i:47978;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 64, '_wp_attached_file', '2023/03/IMG-20230308-WA0069.jpg'),
(132, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1040;s:6:\"height\";i:780;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0069.jpg\";s:8:\"filesize\";i:72399;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 65, '_wp_attached_file', '2023/03/IMG-20230308-WA0070.jpg'),
(134, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0070.jpg\";s:8:\"filesize\";i:67762;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 66, '_wp_attached_file', '2023/03/IMG-20230308-WA0071.jpg'),
(136, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0071.jpg\";s:8:\"filesize\";i:129247;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 67, '_wp_attached_file', '2023/03/IMG-20230308-WA0072.jpg'),
(138, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1032;s:6:\"height\";i:581;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0072.jpg\";s:8:\"filesize\";i:57021;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 68, '_wp_attached_file', '2023/03/IMG-20230308-WA0073.jpg'),
(140, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1032;s:6:\"height\";i:581;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0073.jpg\";s:8:\"filesize\";i:38471;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 69, '_wp_attached_file', '2023/03/IMG-20230308-WA0074.jpg'),
(142, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1032;s:6:\"height\";i:581;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0074.jpg\";s:8:\"filesize\";i:57050;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 70, '_wp_attached_file', '2023/03/IMG-20230308-WA0075.jpg'),
(144, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0075.jpg\";s:8:\"filesize\";i:42623;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 71, '_wp_attached_file', '2023/03/IMG-20230308-WA0076.jpg'),
(146, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:4:\"file\";s:31:\"2023/03/IMG-20230308-WA0076.jpg\";s:8:\"filesize\";i:111182;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 72, '_wp_attached_file', '2023/03/JhonnyCambronero.jpg'),
(148, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:575;s:6:\"height\";i:575;s:4:\"file\";s:28:\"2023/03/JhonnyCambronero.jpg\";s:8:\"filesize\";i:49316;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 73, '_wp_attached_file', '2023/03/mesa-hecha-tablones.jpg'),
(150, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:6000;s:6:\"height\";i:4000;s:4:\"file\";s:31:\"2023/03/mesa-hecha-tablones.jpg\";s:8:\"filesize\";i:9820317;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:159:\"Empty light wood table top isolate on white background. Leave space for placement you background - can be used for display or montage or mock up your products.\";s:17:\"created_timestamp\";s:10:\"1423397723\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:64:\"Empty light wood table top isolate on white background. Leave sp\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:4:\"wood\";i:1;s:3:\"top\";i:2;s:6:\"wooden\";i:3;s:5:\"plank\";i:4;s:4:\"desk\";i:5;s:6:\"timber\";i:6;s:7:\"kitchen\";i:7;s:5:\"blank\";i:8;s:4:\"mock\";i:9;s:2:\"up\";i:10;s:5:\"rough\";i:11;s:5:\"light\";i:12;s:4:\"wall\";i:13;s:10:\"background\";i:14;s:7:\"outdoor\";i:15;s:5:\"grain\";i:16;s:5:\"table\";i:17;s:5:\"floor\";i:18;s:7:\"montage\";i:19;s:7:\"parquet\";i:20;s:6:\"layout\";i:21;s:8:\"business\";i:22;s:5:\"brown\";i:23;s:3:\"old\";i:24;s:8:\"hardwood\";i:25;s:8:\"tabletop\";i:26;s:4:\"pine\";i:27;s:9:\"furniture\";i:28;s:5:\"panel\";i:29;s:7:\"texture\";i:30;s:6:\"design\";i:31;s:9:\"carpenter\";i:32;s:7:\"vintage\";i:33;s:5:\"board\";i:34;s:8:\"material\";i:35;s:7:\"surface\";i:36;s:7:\"website\";i:37;s:8:\"isolated\";i:38;s:9:\"wallpaper\";i:39;s:4:\"aged\";i:40;s:7:\"display\";i:41;s:11:\"perspective\";i:42;s:9:\"advertise\";i:43;s:8:\"template\";i:44;s:5:\"retro\";i:45;s:8:\"backdrop\";i:46;s:5:\"empty\";i:47;s:5:\"space\";i:48;s:7:\"pattern\";i:49;s:7:\"product\";}}}'),
(153, 20, '_thumbnail_id', '78'),
(154, 76, '_wp_attached_file', '2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.03.16.jpg'),
(155, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1156;s:6:\"height\";i:867;s:4:\"file\";s:56:\"2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.03.16.jpg\";s:8:\"filesize\";i:200494;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 77, '_wp_attached_file', '2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.04.20.jpg'),
(157, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:56:\"2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.04.20.jpg\";s:8:\"filesize\";i:112844;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 78, '_wp_attached_file', '2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.06.02.jpg'),
(159, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:56:\"2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.06.02.jpg\";s:8:\"filesize\";i:316280;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 80, '_edit_last', '1'),
(161, 80, '_edit_lock', '1680229851:1'),
(162, 80, '_thumbnail_id', '64'),
(163, 81, '_edit_last', '1'),
(164, 81, '_edit_lock', '1680154871:1'),
(165, 81, '_thumbnail_id', '45'),
(166, 1, '_edit_lock', '1680153963:1'),
(167, 88, '_edit_last', '1'),
(168, 88, '_edit_lock', '1680224628:1'),
(169, 88, '_thumbnail_id', '48'),
(170, 3, '_wp_trash_meta_status', 'publish'),
(171, 3, '_wp_trash_meta_time', '1680229090'),
(172, 3, '_wp_desired_post_slug', 'politica-privacidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-03-30 03:09:47', '2023-03-30 03:09:47', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2023-03-30 03:09:47', '2023-03-30 03:09:47', '', 0, 'http://localhost/countrypisos/?p=1', 0, 'post', '', 1),
(2, 1, '2023-03-30 03:09:47', '2023-03-30 03:09:47', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/countrypisos/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2023-03-30 04:06:00', '2023-03-30 04:06:00', '', 0, 'http://localhost/countrypisos/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-03-30 03:09:47', '2023-03-30 03:09:47', '<!-- wp:heading -->\r\n<h2>Quiénes somos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://localhost/countrypisos.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Comentarios</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Medios</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Cookies</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Contenido incrustado de otros sitios web</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Con quién compartimos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Cuánto tiempo conservamos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Qué derechos tienes sobre tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Dónde se envían sus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\r\n<!-- /wp:paragraph -->', 'Política de privacidad', '', 'trash', 'closed', 'open', '', 'politica-privacidad__trashed', '', '', '2023-03-31 02:18:10', '2023-03-31 02:18:10', '', 0, 'http://localhost/countrypisos/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-03-30 03:12:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-30 03:12:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?p=4', 0, 'post', '', 0),
(5, 1, '2023-03-30 03:15:17', '2023-03-30 03:15:17', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-03-30 03:15:17', '2023-03-30 03:15:17', '', 0, 'http://localhost/countrypisos/2023/03/30/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(6, 1, '2023-03-30 03:15:27', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-30 03:15:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?p=6', 0, 'post', '', 0),
(7, 1, '2023-03-30 03:23:59', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-30 03:23:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?p=7', 0, 'post', '', 0),
(8, 1, '2023-03-30 03:35:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:35:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=8', 0, 'lksa_trabajos', '', 0),
(9, 1, '2023-03-30 03:37:03', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:37:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=9', 0, 'lksa_trabajos', '', 0),
(10, 1, '2023-03-30 03:37:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:37:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=10', 0, 'lksa_trabajos', '', 0),
(11, 1, '2023-03-30 03:37:52', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:37:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=11', 0, 'lksa_trabajos', '', 0),
(12, 1, '2023-03-30 03:39:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:39:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=12', 0, 'lksa_trabajos', '', 0),
(13, 1, '2023-03-30 03:39:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:39:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=13', 0, 'lksa_trabajos', '', 0),
(14, 1, '2023-03-30 03:40:13', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:40:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=14', 0, 'lksa_trabajos', '', 0),
(15, 1, '2023-03-30 03:40:21', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:40:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=15', 0, 'lksa_trabajos', '', 0),
(16, 1, '2023-03-30 03:41:50', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:41:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=16', 0, 'lksa_trabajos', '', 0),
(17, 1, '2023-03-30 03:41:53', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-30 03:41:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?p=17', 0, 'post', '', 0),
(18, 1, '2023-03-30 03:41:55', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 03:41:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=18', 0, 'lksa_trabajos', '', 0),
(19, 1, '2023-03-30 04:06:00', '2023-03-30 04:06:00', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/countrypisos/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-03-30 04:06:00', '2023-03-30 04:06:00', '', 2, 'http://localhost/countrypisos/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-03-30 04:14:05', '2023-03-30 04:14:05', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consequat tempor enim, eget porta sapien cursus sit amet. Nulla scelerisque rutrum tincidunt. Integer a finibus sapien, sed hendrerit nisi. Curabitur ut leo vehicula augue bibendum pulvinar vitae sit amet justo. Nulla facilisi. Vestibulum imperdiet libero auctor, mattis leo eget, convallis felis. Cras auctor sed nisl sit amet pellentesque. Phasellus facilisis ante sem, quis tincidunt massa pulvinar id. Suspendisse dignissim eros sit amet lacus posuere molestie. Integer tristique finibus massa, ac molestie lacus. Suspendisse ultricies ligula augue, id eleifend quam feugiat non. Nunc ut dolor ac ligula facilisis semper. Maecenas consectetur ipsum ac enim dignissim, non luctus felis iaculis. In dignissim bibendum justo id sodales. Mauris pretium vulputate velit, nec viverra dui placerat vitae.</p>\r\n<!-- /wp:paragraph -->', 'Sobre Nosotros', '', 'publish', 'closed', 'closed', '', 'sobre-nosotros', '', '', '2023-03-30 04:36:41', '2023-03-30 04:36:41', '', 0, 'http://localhost/countrypisos/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-03-30 04:14:05', '2023-03-30 04:14:05', '<!-- wp:paragraph -->\n<p>Página nosotros</p>\n<!-- /wp:paragraph -->', 'Sobre Nosotros', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-03-30 04:14:05', '2023-03-30 04:14:05', '', 20, 'http://localhost/countrypisos/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-03-30 04:16:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-03-30 04:16:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?p=22', 0, 'post', '', 0),
(23, 1, '2023-03-30 04:17:26', '2023-03-30 04:17:26', '<em><strong>Página de Inicio</strong></em>', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2023-03-30 04:23:55', '2023-03-30 04:23:55', '', 0, 'http://localhost/countrypisos/?page_id=23', 0, 'page', '', 0),
(24, 1, '2023-03-30 04:17:26', '2023-03-30 04:17:26', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-03-30 04:17:26', '2023-03-30 04:17:26', '', 23, 'http://localhost/countrypisos/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-03-30 04:21:10', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 04:21:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=acf-field-group&p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2023-03-30 04:22:59', '2023-03-30 04:22:59', '<em><strong>Página de Inicio</strong></em>', 'Inicio', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-03-30 04:22:59', '2023-03-30 04:22:59', '', 23, 'http://localhost/countrypisos/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-03-30 04:24:31', '2023-03-30 04:24:31', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2023-03-30 04:24:31', '2023-03-30 04:24:31', '', 0, 'http://localhost/countrypisos/?page_id=27', 0, 'page', '', 0),
(28, 1, '2023-03-30 04:24:31', '2023-03-30 04:24:31', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-03-30 04:24:31', '2023-03-30 04:24:31', '', 27, 'http://localhost/countrypisos/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-03-30 04:24:54', '2023-03-30 04:24:54', '', 'Galería', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2023-03-30 04:24:54', '2023-03-30 04:24:54', '', 0, 'http://localhost/countrypisos/?page_id=29', 0, 'page', '', 0),
(30, 1, '2023-03-30 04:24:54', '2023-03-30 04:24:54', '', 'Galería', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-03-30 04:24:54', '2023-03-30 04:24:54', '', 29, 'http://localhost/countrypisos/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-03-30 04:25:16', '2023-03-30 04:25:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consequat tempor enim, eget porta sapien cursus sit amet. Nulla scelerisque rutrum tincidunt. Integer a finibus sapien, sed hendrerit nisi. Curabitur ut leo vehicula augue bibendum pulvinar vitae sit amet justo. Nulla facilisi. Vestibulum imperdiet libero auctor, mattis leo eget, convallis felis. Cras auctor sed nisl sit amet pellentesque. Phasellus facilisis ante sem, quis tincidunt massa pulvinar id. Suspendisse dignissim eros sit amet lacus posuere molestie. Integer tristique finibus massa, ac molestie lacus. Suspendisse ultricies ligula augue, id eleifend quam feugiat non. Nunc ut dolor ac ligula facilisis semper. Maecenas consectetur ipsum ac enim dignissim, non luctus felis iaculis. In dignissim bibendum justo id sodales. Mauris pretium vulputate velit, nec viverra dui placerat vitae.', 'Nuestros trabajos', '', 'publish', 'closed', 'closed', '', 'nuestros-trabajos', '', '', '2023-03-31 02:52:44', '2023-03-31 02:52:44', '', 0, 'http://localhost/countrypisos/?page_id=31', 0, 'page', '', 0),
(32, 1, '2023-03-30 04:25:16', '2023-03-30 04:25:16', '', 'Nuestros trabajos', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-03-30 04:25:16', '2023-03-30 04:25:16', '', 31, 'http://localhost/countrypisos/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-03-30 04:26:12', '2023-03-30 04:26:12', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-03-30 04:26:12', '2023-03-30 04:26:12', '', 0, 'http://localhost/countrypisos/?page_id=33', 0, 'page', '', 0),
(34, 1, '2023-03-30 04:25:34', '2023-03-30 04:25:34', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-03-30 04:25:34', '2023-03-30 04:25:34', '', 33, 'http://localhost/countrypisos/?p=34', 0, 'revision', '', 0),
(35, 1, '2023-03-30 04:26:33', '2023-03-30 04:26:33', '<!-- wp:heading -->\r\n<h2>Quiénes somos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://localhost/countrypisos.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Comentarios</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Medios</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Cookies</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Contenido incrustado de otros sitios web</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Con quién compartimos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Cuánto tiempo conservamos tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Qué derechos tienes sobre tus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Dónde se envían sus datos</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\r\n<!-- /wp:paragraph -->', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-03-30 04:26:33', '2023-03-30 04:26:33', '', 3, 'http://localhost/countrypisos/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-03-30 04:31:28', '2023-03-30 04:29:36', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2023-03-30 04:31:28', '2023-03-30 04:31:28', '', 0, 'http://localhost/countrypisos/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2023-03-30 04:31:28', '2023-03-30 04:29:36', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2023-03-30 04:31:28', '2023-03-30 04:31:28', '', 0, 'http://localhost/countrypisos/?p=37', 5, 'nav_menu_item', '', 0),
(39, 1, '2023-03-30 04:31:28', '2023-03-30 04:29:36', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2023-03-30 04:31:28', '2023-03-30 04:31:28', '', 0, 'http://localhost/countrypisos/?p=39', 6, 'nav_menu_item', '', 0),
(40, 1, '2023-03-30 04:31:28', '2023-03-30 04:29:36', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2023-03-30 04:31:28', '2023-03-30 04:31:28', '', 0, 'http://localhost/countrypisos/?p=40', 4, 'nav_menu_item', '', 0),
(41, 1, '2023-03-30 04:31:28', '2023-03-30 04:29:36', '', 'Trabajos', '', 'publish', 'closed', 'closed', '', '41', '', '', '2023-03-30 04:31:28', '2023-03-30 04:31:28', '', 0, 'http://localhost/countrypisos/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2023-03-30 04:31:28', '2023-03-30 04:29:36', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2023-03-30 04:31:28', '2023-03-30 04:31:28', '', 0, 'http://localhost/countrypisos/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2023-03-30 04:32:38', '2023-03-30 04:32:38', '<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consequat tempor enim, eget porta sapien cursus sit amet. Nulla scelerisque rutrum tincidunt. Integer a finibus sapien, sed hendrerit nisi. Curabitur ut leo vehicula augue bibendum pulvinar vitae sit amet justo. Nulla facilisi. Vestibulum imperdiet libero auctor, mattis leo eget, convallis felis. Cras auctor sed nisl sit amet pellentesque. Phasellus facilisis ante sem, quis tincidunt massa pulvinar id. Suspendisse dignissim eros sit amet lacus posuere molestie. Integer tristique finibus massa, ac molestie lacus. Suspendisse ultricies ligula augue, id eleifend quam feugiat non. Nunc ut dolor ac ligula facilisis semper. Maecenas consectetur ipsum ac enim dignissim, non luctus felis iaculis. In dignissim bibendum justo id sodales. Mauris pretium vulputate velit, nec viverra dui placerat vitae.</p>\r\n<!-- /wp:paragraph -->', 'Sobre Nosotros', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-03-30 04:32:38', '2023-03-30 04:32:38', '', 20, 'http://localhost/countrypisos/?p=43', 0, 'revision', '', 0),
(45, 1, '2023-03-30 04:33:28', '2023-03-30 04:33:28', '', '3b75ae1e-a078-48cd-a04d-e232895ef206', '', 'inherit', 'open', 'closed', '', '3b75ae1e-a078-48cd-a04d-e232895ef206', '', '', '2023-03-30 04:33:28', '2023-03-30 04:33:28', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/3b75ae1e-a078-48cd-a04d-e232895ef206.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2023-03-30 04:33:28', '2023-03-30 04:33:28', '', '1000_F_222047691_wdlk77i7L8jBnXEBmRiR5QyDuotc5PMs', '', 'inherit', 'open', 'closed', '', '1000_f_222047691_wdlk77i7l8jbnxebmrir5qyduotc5pms', '', '', '2023-03-30 04:33:28', '2023-03-30 04:33:28', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/1000_F_222047691_wdlk77i7L8jBnXEBmRiR5QyDuotc5PMs.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2023-03-30 04:33:28', '2023-03-30 04:33:28', '', 'Wooden kitchen tabletop with sunlight, wood table', 'Wooden kitchen tabletop with sunlight, wood table foreground front view, light brown rustic countertop and wall with light spots on surface. , Realistic vector background, 3d illustration, mock up', 'inherit', 'open', 'closed', '', 'wooden-kitchen-tabletop-with-sunlight-wood-table', '', '', '2023-03-30 04:33:28', '2023-03-30 04:33:28', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/2210_w022_n003_751b_p15_751.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2023-03-30 04:33:29', '2023-03-30 04:33:29', '', 'CountryPisos', '', 'inherit', 'open', 'closed', '', 'countrypisos', '', '', '2023-03-30 04:33:29', '2023-03-30 04:33:29', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/CountryPisos.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2023-03-30 04:33:29', '2023-03-30 04:33:29', '', 'CountryPisos-removebg-preview (3)', '', 'inherit', 'open', 'closed', '', 'countrypisos-removebg-preview-3', '', '', '2023-03-30 04:33:29', '2023-03-30 04:33:29', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/CountryPisos-removebg-preview-3.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2023-03-30 04:33:30', '2023-03-30 04:33:30', '', 'IMG-20230308-WA0058', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0058', '', '', '2023-03-30 04:33:30', '2023-03-30 04:33:30', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0058.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2023-03-30 04:33:30', '2023-03-30 04:33:30', '', 'IMG-20230308-WA0059', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0059', '', '', '2023-03-30 04:33:30', '2023-03-30 04:33:30', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0059.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2023-03-30 04:33:31', '2023-03-30 04:33:31', '', 'IMG-20230308-WA0060', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0060', '', '', '2023-03-30 04:33:31', '2023-03-30 04:33:31', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0060.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2023-03-30 04:33:31', '2023-03-30 04:33:31', '', 'IMG-20230308-WA0061', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0061', '', '', '2023-03-30 04:33:31', '2023-03-30 04:33:31', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0061.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2023-03-30 04:33:31', '2023-03-30 04:33:31', '', 'IMG-20230308-WA0062', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0062', '', '', '2023-03-30 04:33:31', '2023-03-30 04:33:31', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0062.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2023-03-30 04:33:32', '2023-03-30 04:33:32', '', 'IMG-20230308-WA0063', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0063', '', '', '2023-03-30 04:33:32', '2023-03-30 04:33:32', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0063.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2023-03-30 04:33:32', '2023-03-30 04:33:32', '', 'IMG-20230308-WA0064', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0064', '', '', '2023-03-30 04:33:32', '2023-03-30 04:33:32', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0064.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2023-03-30 04:33:32', '2023-03-30 04:33:32', '', 'IMG-20230308-WA0065', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0065', '', '', '2023-03-30 04:33:32', '2023-03-30 04:33:32', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0065.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2023-03-30 04:33:33', '2023-03-30 04:33:33', '', 'IMG-20230308-WA0066', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0066', '', '', '2023-03-30 04:33:33', '2023-03-30 04:33:33', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0066.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2023-03-30 04:33:33', '2023-03-30 04:33:33', '', 'IMG-20230308-WA0067', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0067', '', '', '2023-03-30 04:33:33', '2023-03-30 04:33:33', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0067.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2023-03-30 04:33:33', '2023-03-30 04:33:33', '', 'IMG-20230308-WA0068', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0068', '', '', '2023-03-30 04:33:33', '2023-03-30 04:33:33', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0068.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2023-03-30 04:33:33', '2023-03-30 04:33:33', '', 'IMG-20230308-WA0069', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0069', '', '', '2023-03-30 04:33:33', '2023-03-30 04:33:33', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0069.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2023-03-30 04:33:34', '2023-03-30 04:33:34', '', 'IMG-20230308-WA0070', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0070', '', '', '2023-03-30 04:33:34', '2023-03-30 04:33:34', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0070.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2023-03-30 04:33:34', '2023-03-30 04:33:34', '', 'IMG-20230308-WA0071', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0071', '', '', '2023-03-30 04:33:34', '2023-03-30 04:33:34', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0071.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2023-03-30 04:33:34', '2023-03-30 04:33:34', '', 'IMG-20230308-WA0072', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0072', '', '', '2023-03-30 04:33:34', '2023-03-30 04:33:34', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0072.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2023-03-30 04:33:35', '2023-03-30 04:33:35', '', 'IMG-20230308-WA0073', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0073', '', '', '2023-03-30 04:33:35', '2023-03-30 04:33:35', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0073.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2023-03-30 04:33:35', '2023-03-30 04:33:35', '', 'IMG-20230308-WA0074', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0074', '', '', '2023-03-30 04:33:35', '2023-03-30 04:33:35', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0074.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2023-03-30 04:33:35', '2023-03-30 04:33:35', '', 'IMG-20230308-WA0075', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0075', '', '', '2023-03-30 04:33:35', '2023-03-30 04:33:35', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0075.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2023-03-30 04:33:36', '2023-03-30 04:33:36', '', 'IMG-20230308-WA0076', '', 'inherit', 'open', 'closed', '', 'img-20230308-wa0076', '', '', '2023-03-30 04:33:36', '2023-03-30 04:33:36', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/IMG-20230308-WA0076.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2023-03-30 04:33:36', '2023-03-30 04:33:36', '', 'JhonnyCambronero', '', 'inherit', 'open', 'closed', '', 'jhonnycambronero', '', '', '2023-03-30 04:33:36', '2023-03-30 04:33:36', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/JhonnyCambronero.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2023-03-30 04:33:36', '2023-03-30 04:33:36', '', 'Empty light wood table top isolate on white background. Leave sp', 'Empty light wood table top isolate on white background. Leave space for placement you background - can be used for display or montage or mock up your products.', 'inherit', 'open', 'closed', '', 'empty-light-wood-table-top-isolate-on-white-background-leave-sp', '', '', '2023-03-30 04:33:36', '2023-03-30 04:33:36', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/mesa-hecha-tablones.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2023-03-30 04:36:32', '2023-03-30 04:36:32', '', 'Imagen de WhatsApp 2023-03-16 a las 23.03.16', '', 'inherit', 'open', 'closed', '', 'imagen-de-whatsapp-2023-03-16-a-las-23-03-16', '', '', '2023-03-30 04:36:32', '2023-03-30 04:36:32', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.03.16.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2023-03-30 04:36:32', '2023-03-30 04:36:32', '', 'Imagen de WhatsApp 2023-03-16 a las 23.04.20', '', 'inherit', 'open', 'closed', '', 'imagen-de-whatsapp-2023-03-16-a-las-23-04-20', '', '', '2023-03-30 04:36:32', '2023-03-30 04:36:32', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.04.20.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2023-03-30 04:36:32', '2023-03-30 04:36:32', '', 'Imagen de WhatsApp 2023-03-16 a las 23.06.02', '', 'inherit', 'open', 'closed', '', 'imagen-de-whatsapp-2023-03-16-a-las-23-06-02', '', '', '2023-03-30 04:36:32', '2023-03-30 04:36:32', '', 20, 'http://localhost/countrypisos/wp-content/uploads/2023/03/Imagen-de-WhatsApp-2023-03-16-a-las-23.06.02.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2023-03-30 04:57:38', '2023-03-30 04:57:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consequat tempor enim, eget porta sapien cursus sit amet. Nulla scelerisque rutrum tincidunt. Integer a finibus sapien, sed hendrerit nisi. Curabitur ut leo vehicula augue bibendum pulvinar vitae sit amet justo. Nulla facilisi. Vestibulum imperdiet libero auctor, mattis leo eget, convallis felis. Cras auctor sed nisl sit amet pellentesque. Phasellus facilisis ante sem, quis tincidunt massa pulvinar id. Suspendisse dignissim eros sit amet lacus posuere molestie. Integer tristique finibus massa, ac molestie lacus. Suspendisse ultricies ligula augue, id eleifend quam feugiat non. Nunc ut dolor ac ligula facilisis semper. Maecenas consectetur ipsum ac enim dignissim, non luctus felis iaculis. In dignissim bibendum justo id sodales. Mauris pretium vulputate velit, nec viverra dui placerat vitae.', 'Cabaña en Guanacaste', '', 'publish', 'closed', 'closed', '', 'cabana-en-guanacaste', '', '', '2023-03-31 00:16:33', '2023-03-31 00:16:33', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&#038;p=80', 0, 'lksa_trabajos', '', 0),
(81, 1, '2023-03-30 04:57:55', '2023-03-30 04:57:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consequat tempor enim, eget porta sapien cursus sit amet. Nulla scelerisque rutrum tincidunt. Integer a finibus sapien, sed hendrerit nisi. Curabitur ut leo vehicula augue bibendum pulvinar vitae sit amet justo. Nulla facilisi. Vestibulum imperdiet libero auctor, mattis leo eget, convallis felis. Cras auctor sed nisl sit amet pellentesque. Phasellus facilisis ante sem, quis tincidunt massa pulvinar id. Suspendisse dignissim eros sit amet lacus posuere molestie. Integer tristique finibus massa, ac molestie lacus. Suspendisse ultricies ligula augue, id eleifend quam feugiat non. Nunc ut dolor ac ligula facilisis semper. Maecenas consectetur ipsum ac enim dignissim, non luctus felis iaculis. In dignissim bibendum justo id sodales. Mauris pretium vulputate velit, nec viverra dui placerat vitae.', 'Hotel Tamarindo', '', 'publish', 'closed', 'closed', '', 'hotel-tamarindo', '', '', '2023-03-30 05:06:13', '2023-03-30 05:06:13', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&#038;p=81', 0, 'lksa_trabajos', '', 0),
(83, 1, '2023-03-30 05:00:11', '2023-03-30 05:00:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consequat tempor enim, eget porta sapien cursus sit amet. Nulla scelerisque rutrum tincidunt. Integer a finibus sapien, sed hendrerit nisi. Curabitur ut leo vehicula augue bibendum pulvinar vitae sit amet justo. Nulla facilisi. Vestibulum imperdiet libero auctor, mattis leo eget, convallis felis. Cras auctor sed nisl sit amet pellentesque. Phasellus facilisis ante sem, quis tincidunt massa pulvinar id. Suspendisse dignissim eros sit amet lacus posuere molestie. Integer tristique finibus massa, ac molestie lacus. Suspendisse ultricies ligula augue, id eleifend quam feugiat non. Nunc ut dolor ac ligula facilisis semper. Maecenas consectetur ipsum ac enim dignissim, non luctus felis iaculis. In dignissim bibendum justo id sodales. Mauris pretium vulputate velit, nec viverra dui placerat vitae.', 'Nuestros trabajos', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-03-30 05:00:11', '2023-03-30 05:00:11', '', 31, 'http://localhost/countrypisos/?p=83', 0, 'revision', '', 0),
(85, 1, '2023-03-30 05:05:42', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-30 05:05:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=85', 0, 'lksa_trabajos', '', 0),
(87, 1, '2023-03-31 00:18:20', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-03-31 00:18:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&p=87', 0, 'lksa_trabajos', '', 0),
(88, 1, '2023-03-31 01:06:10', '2023-03-31 01:06:10', 'Pavimento', 'Pavimento', '', 'publish', 'closed', 'closed', '', 'pavimento', '', '', '2023-03-31 01:06:10', '2023-03-31 01:06:10', '', 0, 'http://localhost/countrypisos/?post_type=lksa_trabajos&#038;p=88', 0, 'lksa_trabajos', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0),
(3, 'Menu Principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(36, 3, 0),
(37, 3, 0),
(39, 3, 0),
(40, 3, 0),
(41, 3, 0),
(42, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'heinergc'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:7:{s:64:\"f2564c28661996b80e92a5327e99c7b3def0c571e32502f9bc1ec4cd3524335f\";a:4:{s:10:\"expiration\";i:1680318757;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1680145957;}s:64:\"5b92e6fe599d241b0fbde509153de5afe0d81c989a7e23c76a3d017666ffc581\";a:4:{s:10:\"expiration\";i:1680318883;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1680146083;}s:64:\"a4c3bb3369f418e29a38951ebac26026bc967c3571b16118098f5c541ec9c529\";a:4:{s:10:\"expiration\";i:1680359515;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1680186715;}s:64:\"d16b074c7e12ab1eca3223b6ffeac73297de696ad9aab933b4d791a957362d98\";a:4:{s:10:\"expiration\";i:1680364347;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1680191547;}s:64:\"633cf1b8ee606e0d0462106227226ff28e8b1b14111978e3e0bf8aba953069fb\";a:4:{s:10:\"expiration\";i:1680394580;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1680221780;}s:64:\"e1770843149bae59ef0f23a0b34218ef7648adc2520143c4ad9bb7dd4cb7f099\";a:4:{s:10:\"expiration\";i:1680398763;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1680225963;}s:64:\"fd4864286e07baa3b37da279b765dc3e8832139cf1dcc30f484c78b8b474bffe\";a:4:{s:10:\"expiration\";i:1680401434;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1680228634;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";i:2;s:16:\"discussion-panel\";i:3;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-03-30T04:14:19.234Z\";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:4:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:9:\"authordiv\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:27:\"add-post-type-lksa_trabajos\";i:1;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=0'),
(25, 1, 'wp_user-settings-time', '1680153036');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'heinergc', '$P$BlLoEsz3Xe3qGqu5.DWV/H1aIOSVeN1', 'heinergc', 'lksa201401@gmail.com', 'http://localhost/countrypisos', '2023-03-30 03:09:47', '', 0, 'heinergc');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
