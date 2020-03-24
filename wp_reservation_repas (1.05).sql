-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 24 mars 2020 à 14:59
-- Version du serveur :  10.1.44-MariaDB-0ubuntu0.18.04.1
-- Version de PHP : 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wp_reservation_repas`
--
CREATE DATABASE IF NOT EXISTS `wp_reservation_repas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wp_reservation_repas`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(0, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1585058307;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:31:\"event-tickets/event-tickets.php\";s:6:\"4.11.5\";s:43:\"the-events-calendar/the-events-calendar.php\";s:7:\"5.0.3.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"event-tickets/event-tickets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/event-tickets\";s:4:\"slug\";s:13:\"event-tickets\";s:6:\"plugin\";s:31:\"event-tickets/event-tickets.php\";s:11:\"new_version\";s:6:\"4.11.5\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/event-tickets/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/event-tickets.4.11.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/event-tickets/assets/icon-256x256.png?rev=2259359\";s:2:\"1x\";s:58:\"https://ps.w.org/event-tickets/assets/icon.svg?rev=2259340\";s:3:\"svg\";s:58:\"https://ps.w.org/event-tickets/assets/icon.svg?rev=2259340\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/event-tickets/assets/banner-1544x500.png?rev=2257626\";s:2:\"1x\";s:68:\"https://ps.w.org/event-tickets/assets/banner-772x250.png?rev=2257626\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"the-events-calendar/the-events-calendar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/the-events-calendar\";s:4:\"slug\";s:19:\"the-events-calendar\";s:6:\"plugin\";s:43:\"the-events-calendar/the-events-calendar.php\";s:11:\"new_version\";s:7:\"5.0.3.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/the-events-calendar/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/the-events-calendar.5.0.3.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-256x256.png?rev=2259358\";s:2:\"1x\";s:64:\"https://ps.w.org/the-events-calendar/assets/icon.svg?rev=2259343\";s:3:\"svg\";s:64:\"https://ps.w.org/the-events-calendar/assets/icon.svg?rev=2259343\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/the-events-calendar/assets/banner-1544x500.png?rev=2257622\";s:2:\"1x\";s:74:\"https://ps.w.org/the-events-calendar/assets/banner-772x250.png?rev=2257622\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1, 'siteurl', 'http://localhost/wp_reservation_repas', 'yes'),
(2, 'home', 'http://localhost/wp_reservation_repas', 'yes'),
(3, 'blogname', 'Réservation repas', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lescadev@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:248:{s:21:\"tickets/([0-9]{1,})/?\";s:43:\"index.php?p=$matches[1]&tribe-edit-orders=1\";s:28:\"tribe/events/kitchen-sink/?$\";s:69:\"index.php?post_type=tribe_events&tribe_events_views_kitchen_sink=page\";s:93:\"tribe/events/kitchen-sink/(page|grid|typographical|elements|events-bar|navigation|manager)/?$\";s:76:\"index.php?post_type=tribe_events&tribe_events_views_kitchen_sink=$matches[1]\";s:28:\"event-aggregator/(insert)/?$\";s:53:\"index.php?tribe-aggregator=1&tribe-action=$matches[1]\";s:28:\"(?:dejeuner)/([^/]+)/ical/?$\";s:56:\"index.php?ical=1&name=$matches[1]&post_type=tribe_events\";s:27:\"(?:repas)/(?:page)/(\\d+)/?$\";s:71:\"index.php?post_type=tribe_events&eventDisplay=default&paged=$matches[1]\";s:55:\"(?:repas)/(?:featured|mis\\-en\\-avant)/(?:page)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&paged=$matches[1]\";s:37:\"(?:repas)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]\";s:65:\"(?:repas)/(?:featured|mis\\-en\\-avant)/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&feed=$matches[1]\";s:27:\"(?:repas)/(?:month|mois)/?$\";s:51:\"index.php?post_type=tribe_events&eventDisplay=month\";s:55:\"(?:repas)/(?:month|mois)/(?:featured|mis\\-en\\-avant)/?$\";s:62:\"index.php?post_type=tribe_events&eventDisplay=month&featured=1\";s:41:\"(?:repas)/(?:month|mois)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:42:\"(?:repas)/(?:list|liste)/(?:page)/(\\d+)/?$\";s:68:\"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]\";s:70:\"(?:repas)/(?:list|liste)/(?:featured|mis\\-en\\-avant)/(?:page)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1&paged=$matches[1]\";s:27:\"(?:repas)/(?:list|liste)/?$\";s:50:\"index.php?post_type=tribe_events&eventDisplay=list\";s:55:\"(?:repas)/(?:list|liste)/(?:featured|mis\\-en\\-avant)/?$\";s:61:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1\";s:33:\"(?:repas)/(?:today|aujourdhui)/?$\";s:49:\"index.php?post_type=tribe_events&eventDisplay=day\";s:61:\"(?:repas)/(?:today|aujourdhui)/(?:featured|mis\\-en\\-avant)/?$\";s:60:\"index.php?post_type=tribe_events&eventDisplay=day&featured=1\";s:26:\"(?:repas)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:54:\"(?:repas)/(\\d{4}-\\d{2})/(?:featured|mis\\-en\\-avant)/?$\";s:84:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]&featured=1\";s:32:\"(?:repas)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:71:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]\";s:60:\"(?:repas)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|mis\\-en\\-avant)/?$\";s:82:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:40:\"(?:repas)/(?:featured|mis\\-en\\-avant)/?$\";s:43:\"index.php?post_type=tribe_events&featured=1\";s:12:\"(?:repas)/?$\";s:53:\"index.php?post_type=tribe_events&eventDisplay=default\";s:17:\"(?:repas)/ical/?$\";s:39:\"index.php?post_type=tribe_events&ical=1\";s:45:\"(?:repas)/(?:featured|mis\\-en\\-avant)/ical/?$\";s:50:\"index.php?post_type=tribe_events&ical=1&featured=1\";s:37:\"(?:repas)/(\\d{4}-\\d{2}-\\d{2})/ical/?$\";s:78:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]\";s:46:\"(?:repas)/(\\d{4}-\\d{2}-\\d{2})/ical/featured/?$\";s:89:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:69:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:page)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:97:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:featured|mis\\-en\\-avant)/(?:page)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:69:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:month|mois)/?$\";s:80:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month\";s:97:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:month|mois)/(?:featured|mis\\-en\\-avant)/?$\";s:91:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&featured=1\";s:84:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:list|liste)/(?:page)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:112:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:list|liste)/(?:featured|mis\\-en\\-avant)/(?:page)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:69:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:list|liste)/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list\";s:97:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:list|liste)/(?:featured|mis\\-en\\-avant)/?$\";s:90:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1\";s:75:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:today|aujourdhui)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day\";s:103:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:today|aujourdhui)/(?:featured|mis\\-en\\-avant)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&featured=1\";s:87:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:day|jour)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:115:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:day|jour)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|mis\\-en\\-avant)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:68:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$\";s:102:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:96:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/(?:featured|mis\\-en\\-avant)/?$\";s:113:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:74:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:102:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|mis\\-en\\-avant)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:59:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/feed/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2\";s:87:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:featured|mis\\-en\\-avant)/feed/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&feed=rss2\";s:59:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/ical/?$\";s:68:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1\";s:87:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:featured|mis\\-en\\-avant)/ical/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&ical=1\";s:84:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]\";s:112:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:featured|mis\\-en\\-avant)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&feed=$matches[2]\";s:82:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/(?:featured|mis\\-en\\-avant)/?$\";s:93:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=default\";s:54:\"(?:repas)/(?:category|categorie)/(?:[^/]+/)*([^/]+)/?$\";s:82:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=default\";s:53:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:page)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:81:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:featured|mis\\-en\\-avant)/(?:page)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:53:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:month|mois)/?$\";s:67:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month\";s:81:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:month|mois)/(?:featured|mis\\-en\\-avant)/?$\";s:78:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&featured=1\";s:68:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:list|liste)/(?:page)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:96:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:list|liste)/(?:featured|mis\\-en\\-avant)/(?:page)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:53:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:list|liste)/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list\";s:81:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:list|liste)/(?:featured|mis\\-en\\-avant)/?$\";s:77:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1\";s:59:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:today|aujourdhui)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day\";s:87:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:today|aujourdhui)/(?:featured|mis\\-en\\-avant)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&featured=1\";s:71:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:day|jour)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:99:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:day|jour)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|mis\\-en\\-avant)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:52:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(\\d{4}-\\d{2})/?$\";s:89:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:80:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(\\d{4}-\\d{2})/(?:featured|mis\\-en\\-avant)/?$\";s:100:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:58:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:86:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|mis\\-en\\-avant)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:43:\"(?:repas)/(?:tag|etiquette)/([^/]+)/feed/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2\";s:71:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:featured|mis\\-en\\-avant)/feed/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2&featured=1\";s:43:\"(?:repas)/(?:tag|etiquette)/([^/]+)/ical/?$\";s:55:\"index.php?post_type=tribe_events&tag=$matches[1]&ical=1\";s:71:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:featured|mis\\-en\\-avant)/ical/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&ical=1\";s:68:\"(?:repas)/(?:tag|etiquette)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]\";s:96:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:featured|mis\\-en\\-avant)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&feed=$matches[2]\";s:66:\"(?:repas)/(?:tag|etiquette)/([^/]+)/(?:featured|mis\\-en\\-avant)/?$\";s:59:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1\";s:38:\"(?:repas)/(?:tag|etiquette)/([^/]+)/?$\";s:69:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=default\";s:35:\"(?:dejeuner)/([^/]+)/(?:tickets)/?$\";s:78:\"index.php?tribe_events=$matches[1]&post_type=tribe_events&eventDisplay=tickets\";s:55:\"(?:dejeuner)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:tickets)/?$\";s:100:\"index.php?tribe_events=$matches[1]&eventDate=$matches[2]&post_type=tribe_events&eventDisplay=tickets\";s:29:\"(?:attendee\\-registration)/?$\";s:33:\"index.php?attendee-registration=1\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:22:\"tribe-promoter-auth/?$\";s:37:\"index.php?tribe-promoter-auth-check=1\";s:21:\"index.php/dejeuner/?$\";s:32:\"index.php?post_type=tribe_events\";s:51:\"index.php/dejeuner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:46:\"index.php/dejeuner/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:38:\"index.php/dejeuner/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=tribe_events&paged=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"index.php/lieu/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"index.php/lieu/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"index.php/lieu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"index.php/lieu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"index.php/lieu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"index.php/lieu/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"index.php/lieu/([^/]+)/embed/?$\";s:44:\"index.php?tribe_venue=$matches[1]&embed=true\";s:35:\"index.php/lieu/([^/]+)/trackback/?$\";s:38:\"index.php?tribe_venue=$matches[1]&tb=1\";s:43:\"index.php/lieu/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&paged=$matches[2]\";s:50:\"index.php/lieu/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&cpage=$matches[2]\";s:39:\"index.php/lieu/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?tribe_venue=$matches[1]&page=$matches[2]\";s:31:\"index.php/lieu/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"index.php/lieu/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"index.php/lieu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"index.php/lieu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"index.php/lieu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/lieu/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"index.php/organisateur/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"index.php/organisateur/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"index.php/organisateur/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/organisateur/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/organisateur/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"index.php/organisateur/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"index.php/organisateur/([^/]+)/embed/?$\";s:48:\"index.php?tribe_organizer=$matches[1]&embed=true\";s:43:\"index.php/organisateur/([^/]+)/trackback/?$\";s:42:\"index.php?tribe_organizer=$matches[1]&tb=1\";s:51:\"index.php/organisateur/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&paged=$matches[2]\";s:58:\"index.php/organisateur/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/organisateur/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?tribe_organizer=$matches[1]&page=$matches[2]\";s:39:\"index.php/organisateur/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"index.php/organisateur/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"index.php/organisateur/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/organisateur/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/organisateur/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"index.php/organisateur/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"index.php/dejeuner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/dejeuner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/dejeuner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/dejeuner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/dejeuner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/dejeuner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"index.php/dejeuner/([^/]+)/embed/?$\";s:45:\"index.php?tribe_events=$matches[1]&embed=true\";s:39:\"index.php/dejeuner/([^/]+)/trackback/?$\";s:39:\"index.php?tribe_events=$matches[1]&tb=1\";s:59:\"index.php/dejeuner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:54:\"index.php/dejeuner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:47:\"index.php/dejeuner/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&paged=$matches[2]\";s:54:\"index.php/dejeuner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/dejeuner/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?tribe_events=$matches[1]&page=$matches[2]\";s:35:\"index.php/dejeuner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"index.php/dejeuner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"index.php/dejeuner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/dejeuner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"index.php/dejeuner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/dejeuner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"index.php/repas/categorie/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:59:\"index.php/repas/categorie/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:40:\"index.php/repas/categorie/(.+?)/embed/?$\";s:49:\"index.php?tribe_events_cat=$matches[1]&embed=true\";s:52:\"index.php/repas/categorie/(.+?)/page/?([0-9]{1,})/?$\";s:56:\"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]\";s:34:\"index.php/repas/categorie/(.+?)/?$\";s:38:\"index.php?tribe_events_cat=$matches[1]\";s:51:\"index.php/deleted_event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:61:\"index.php/deleted_event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:81:\"index.php/deleted_event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:76:\"index.php/deleted_event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:76:\"index.php/deleted_event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:57:\"index.php/deleted_event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"index.php/deleted_event/([^/]+)/embed/?$\";s:46:\"index.php?deleted_event=$matches[1]&embed=true\";s:44:\"index.php/deleted_event/([^/]+)/trackback/?$\";s:40:\"index.php?deleted_event=$matches[1]&tb=1\";s:52:\"index.php/deleted_event/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&paged=$matches[2]\";s:59:\"index.php/deleted_event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&cpage=$matches[2]\";s:48:\"index.php/deleted_event/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?deleted_event=$matches[1]&page=$matches[2]\";s:40:\"index.php/deleted_event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"index.php/deleted_event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"index.php/deleted_event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"index.php/deleted_event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"index.php/deleted_event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"index.php/deleted_event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:31:\"event-tickets/event-tickets.php\";i:1;s:43:\"the-events-calendar/the-events-calendar.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'head-blog', 'yes'),
(41, 'stylesheet', 'head-blog-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1600167547', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:101:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:74:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:30:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:23:\"edit_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:13:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:17:\"edit_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:23:\"edit_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:23:\"head-blog-homepage-area\";a:0:{}s:23:\"head-blog-right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"head-blog-footer-area\";a:0:{}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(104, 'cron', 'a:13:{i:1585058354;a:1:{s:35:\"fs_install_sync_the-events-calendar\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1585058376;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1585059023;a:1:{s:39:\"tribe_aggregator_process_insert_records\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:17:\"tribe-every15mins\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1585067107;a:2:{s:24:\"tribe_common_log_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"tribe_schedule_transient_purge\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585083133;a:1:{s:26:\"fs_data_sync_event-tickets\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585090776;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585090777;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585090793;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585105503;a:1:{s:32:\"fs_data_sync_the-events-calendar\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585133974;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585134013;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585134017;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584617221;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(123, '_site_transient_timeout_browser_27936219d1c505f9fd46829814111577', '1585220413', 'no'),
(124, '_site_transient_browser_27936219d1c505f9fd46829814111577', 'a:10:{s:4:\"name\";s:8:\"Chromium\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_d281d5688f821c9bbb115afd4e4629d3', '1585220414', 'no'),
(127, '_site_transient_php_check_d281d5688f821c9bbb115afd4e4629d3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(130, 'can_compress_scripts', '0', 'no'),
(144, 'recently_activated', 'a:2:{s:19:\"akismet/akismet.php\";i:1584617181;s:9:\"hello.php\";i:1584617167;}', 'yes'),
(156, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'current_theme', 'Head Blog Child', 'yes'),
(162, 'theme_mods_head-blog', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584617714;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:23:\"head-blog-homepage-area\";a:0:{}s:23:\"head-blog-right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"head-blog-footer-area\";a:0:{}}}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(164, 'widget_head-blog-extended-recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(165, 'widget_head-blog-popular-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(169, 'theme_mods_head-blog-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(174, '_site_transient_timeout_browser_a514764ad06f5ab1336991e9677b4712', '1585234348', 'no'),
(175, '_site_transient_browser_a514764ad06f5ab1336991e9677b4712', 'a:10:{s:4:\"name\";s:8:\"Chromium\";s:7:\"version\";s:12:\"80.0.3987.87\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(176, '_site_transient_timeout_php_check_7e6c1a8668674f8cf640a3994d949207', '1585234349', 'no'),
(177, '_site_transient_php_check_7e6c1a8668674f8cf640a3994d949207', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(182, 'new_admin_email', 'lescadev@gmail.com', 'yes'),
(186, 'nonce_key', 'r/n&m6]l-F/I/r[.abK&D+wL9?k#>tV&|%BZp.2,t^,sz|_~_bW.dCZwq=u.j%Ed', 'no'),
(187, 'nonce_salt', 'Yzcoemq!&B-s?R|w`G[;Qf|/]L-R?gHwN:cDjiJTyydRk6Cz_Ggg{Q]E!$[l@6:S', 'no'),
(199, 'auth_key', '!C}vN}*a1KImdTrhkY)|4|s*[0.jUp;;+HMM:h2_=H<OoLjyq>V|v_95L}(T_79 ', 'no'),
(200, 'auth_salt', '^:p|[-B$S[hND}]X}rWBL3XyckUMCsKHIoT+*nOA|:Bs,TrC0Br@soz7UV8R5$ra', 'no'),
(201, 'logged_in_key', 'M5lUj*&O~fFUskpzg_|sL|.JG5X{j<yH8;b;,Cn0E5[<4J5Pf]JYPB5j47Y^u2xt', 'no'),
(202, 'logged_in_salt', 'c<C!d2@ts1b)l48-V5!U2cN3v(8RNWdcaXwE;`=pgwq7Gv?+9H5!,0|TcV)QmrIL', 'no'),
(203, '_site_transient_timeout_browser_ef27660e9f11b103d569aefbef1fd260', '1585573611', 'no'),
(204, '_site_transient_browser_ef27660e9f11b103d569aefbef1fd260', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.122\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(218, '_transient_timeout_plugin_slugs', '1585127750', 'no'),
(219, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:31:\"event-tickets/event-tickets.php\";i:2;s:43:\"the-events-calendar/the-events-calendar.php\";}', 'no'),
(222, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(226, 'category_children', 'a:1:{i:1;a:3:{i:0;i:3;i:1;i:4;i:2;i:5;}}', 'yes'),
(238, 'tribe_events_calendar_options', 'a:58:{s:14:\"schema-version\";s:7:\"5.0.3.1\";s:21:\"previous_ecp_versions\";a:2:{i:0;s:1:\"0\";i:1;s:5:\"5.0.3\";}s:18:\"latest_ecp_version\";s:7:\"5.0.3.1\";s:16:\"views_v2_enabled\";b:1;s:12:\"postsPerPage\";s:1:\"6\";s:16:\"monthEventAmount\";s:1:\"3\";s:27:\"recurring_events_are_hidden\";s:6:\"hidden\";s:39:\"last-update-message-the-events-calendar\";s:5:\"5.0.3\";s:28:\"event-tickets-schema-version\";s:6:\"4.11.5\";s:25:\"ticket-enabled-post-types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:12:\"tribe_events\";}s:31:\"previous_event_tickets_versions\";a:1:{i:0;s:1:\"0\";}s:28:\"latest_event_tickets_version\";s:6:\"4.11.5\";s:33:\"last-update-message-event-tickets\";s:6:\"4.11.5\";s:11:\"donate-link\";b:0;s:20:\"toggle_blocks_editor\";b:1;s:33:\"toggle_blocks_editor_hidden_field\";b:0;s:12:\"showComments\";b:0;s:29:\"disable_metabox_custom_fields\";b:1;s:20:\"showEventsInMainLoop\";b:0;s:10:\"eventsSlug\";s:5:\"repas\";s:15:\"singleEventSlug\";s:8:\"dejeuner\";s:14:\"multiDayCutoff\";s:5:\"00:00\";s:21:\"defaultCurrencySymbol\";s:3:\"€\";s:23:\"reverseCurrencyPosition\";b:1;s:17:\"trash-past-events\";s:0:\"\";s:18:\"delete-past-events\";s:0:\"\";s:15:\"embedGoogleMaps\";b:1;s:19:\"embedGoogleMapsZoom\";s:2:\"12\";s:11:\"debugEvents\";b:0;s:26:\"tribe_events_timezone_mode\";s:4:\"site\";s:32:\"tribe_events_timezones_show_zone\";b:0;s:15:\"stylesheet_mode\";s:5:\"tribe\";s:19:\"tribeEventsTemplate\";s:7:\"default\";s:16:\"tribeEnableViews\";a:3:{i:0;s:4:\"list\";i:1;s:5:\"month\";i:2;s:3:\"day\";}s:20:\"tribeDisableTribeBar\";b:0;s:23:\"enable_month_view_cache\";b:1;s:18:\"dateWithYearFormat\";s:5:\"j F Y\";s:21:\"dateWithoutYearFormat\";s:3:\"j F\";s:18:\"monthAndYearFormat\";s:3:\"F Y\";s:17:\"dateTimeSeparator\";s:3:\" @ \";s:18:\"timeRangeSeparator\";s:3:\" - \";s:16:\"datepickerFormat\";s:1:\"4\";s:21:\"tribeEventsBeforeHTML\";s:0:\"\";s:20:\"tribeEventsAfterHTML\";s:0:\"\";s:25:\"ticket-rsvp-form-location\";s:43:\"tribe_events_single_event_after_the_content\";s:29:\"ticket-commerce-form-location\";s:40:\"tribe_events_single_event_after_the_meta\";s:37:\"ticket-display-tickets-left-threshold\";s:0:\"\";s:34:\"ticket-authentication-requirements\";N;s:20:\"ticket-paypal-enable\";b:0;s:23:\"ticket-paypal-configure\";N;s:31:\"ticket-paypal-ipn-config-status\";N;s:21:\"ticket-paypal-sandbox\";b:0;s:45:\"ticket-paypal-confirmation-email-sender-email\";N;s:22:\"google_maps_js_api_key\";s:39:\"AIzaSyDNsicAsP6-VuGtAb1O9riI3oc_NOb7IOU\";s:41:\"tribe_aggregator_default_update_authority\";s:9:\"overwrite\";s:40:\"tribe_aggregator_default_csv_post_status\";s:7:\"publish\";s:37:\"tribe_aggregator_default_csv_category\";s:0:\"\";s:24:\"tribe_aggregator_disable\";b:0;}', 'yes'),
(239, 'widget_tribe-events-list-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:42:\"the-events-calendar/common/vendor/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1584980708;s:11:\"plugin_path\";s:43:\"the-events-calendar/the-events-calendar.php\";}}s:7:\"abspath\";s:35:\"/var/www/html/wp_reservation_repas/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:43:\"the-events-calendar/the-events-calendar.php\";s:8:\"sdk_path\";s:42:\"the-events-calendar/common/vendor/freemius\";s:7:\"version\";s:5:\"2.3.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1584980708;}}', 'yes'),
(243, 'fs_debug_mode', '', 'yes'),
(244, 'fs_accounts', 'a:12:{s:21:\"id_slug_type_path_map\";a:2:{i:3069;a:3:{s:4:\"slug\";s:19:\"the-events-calendar\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:43:\"the-events-calendar/the-events-calendar.php\";}i:3841;a:3:{s:4:\"slug\";s:13:\"event-tickets\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:31:\"event-tickets/event-tickets.php\";}}s:11:\"plugin_data\";a:2:{s:19:\"the-events-calendar\";a:21:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:43:\"the-events-calendar/the-events-calendar.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1584980708;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.2\";s:19:\"plugin_last_version\";s:5:\"5.0.3\";s:14:\"plugin_version\";s:7:\"5.0.3.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1584980708;s:7:\"version\";s:5:\"5.0.3\";}s:15:\"prev_is_premium\";b:0;s:18:\"sticky_optin_added\";b:1;s:30:\"is_extensions_tracking_allowed\";b:1;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1584981012;s:19:\"keepalive_timestamp\";i:1584981012;s:20:\"activation_timestamp\";i:1584981008;s:9:\"sync_cron\";O:8:\"stdClass\":5:{s:7:\"version\";s:5:\"5.0.3\";s:7:\"blog_id\";i:0;s:11:\"sdk_version\";s:5:\"2.3.2\";s:9:\"timestamp\";i:1584981013;s:2:\"on\";b:1;}s:17:\"install_sync_cron\";O:8:\"stdClass\":5:{s:7:\"version\";s:7:\"5.0.3.1\";s:7:\"blog_id\";i:0;s:11:\"sdk_version\";s:5:\"2.3.2\";s:9:\"timestamp\";i:1585058354;s:2:\"on\";b:1;}}s:13:\"event-tickets\";a:22:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:31:\"event-tickets/event-tickets.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1585040556;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"4.11.5\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1585040556;s:7:\"version\";s:6:\"4.11.5\";}s:15:\"prev_is_premium\";b:0;s:18:\"sticky_optin_added\";b:1;s:30:\"is_extensions_tracking_allowed\";b:1;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1585040573;s:19:\"keepalive_timestamp\";i:1585040573;s:20:\"activation_timestamp\";i:1585040571;s:9:\"sync_cron\";O:8:\"stdClass\":5:{s:7:\"version\";s:6:\"4.11.5\";s:7:\"blog_id\";i:0;s:11:\"sdk_version\";s:5:\"2.3.2\";s:9:\"timestamp\";i:1585040575;s:2:\"on\";b:1;}}}s:13:\"file_slug_map\";a:2:{s:43:\"the-events-calendar/the-events-calendar.php\";s:19:\"the-events-calendar\";s:31:\"event-tickets/event-tickets.php\";s:13:\"event-tickets\";}s:7:\"plugins\";a:2:{s:19:\"the-events-calendar\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:19:\"The Events Calendar\";s:4:\"slug\";s:19:\"the-events-calendar\";s:12:\"premium_slug\";s:27:\"the-events-calendar-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:43:\"the-events-calendar/the-events-calendar.php\";s:7:\"version\";s:7:\"5.0.3.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_e32061abc28cfedf231f3e5c4e626\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3069\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:1;}s:13:\"event-tickets\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:13:\"Event Tickets\";s:4:\"slug\";s:13:\"event-tickets\";s:12:\"premium_slug\";s:21:\"event-tickets-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:31:\"event-tickets/event-tickets.php\";s:7:\"version\";s:6:\"4.11.5\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_6dd9310b57c62871c59e58b8e739e\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3841\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"6beb6fbebae31bc266e6469f18faf880\";s:13:\"admin_notices\";a:2:{s:19:\"the-events-calendar\";a:0:{}s:13:\"event-tickets\";a:0:{}}s:5:\"plans\";a:2:{s:19:\"the-events-calendar\";a:1:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MzA2OQ==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"NDg3Mg==\";s:7:\"updated\";N;s:7:\"created\";s:28:\"MjAxOS0wMS0wOCAxNTozNjowNw==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:13:\"event-tickets\";a:1:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"Mzg0MQ==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"NjE4OA==\";s:7:\"updated\";N;s:7:\"created\";s:28:\"MjAxOS0wNS0yMyAxOTo1ODoxNQ==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1585040573;s:3:\"md5\";s:32:\"7e340066613ebd02a1ebd07d559e0630\";s:7:\"plugins\";a:2:{s:43:\"the-events-calendar/the-events-calendar.php\";a:5:{s:4:\"slug\";s:19:\"the-events-calendar\";s:7:\"version\";s:5:\"5.0.3\";s:5:\"title\";s:19:\"The Events Calendar\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:31:\"event-tickets/event-tickets.php\";a:5:{s:4:\"slug\";s:13:\"event-tickets\";s:7:\"version\";s:6:\"4.11.5\";s:5:\"title\";s:13:\"Event Tickets\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1585040573;s:3:\"md5\";s:32:\"6b658e8621aabf7742c73200cb42d167\";s:7:\"plugins\";a:3:{s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.1.4\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:43:\"the-events-calendar/the-events-calendar.php\";a:5:{s:4:\"slug\";s:19:\"the-events-calendar\";s:7:\"version\";s:5:\"5.0.3\";s:5:\"title\";s:19:\"The Events Calendar\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:31:\"event-tickets/event-tickets.php\";a:5:{s:4:\"slug\";s:13:\"event-tickets\";s:7:\"version\";s:6:\"4.11.5\";s:5:\"title\";s:13:\"Event Tickets\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1585040573;s:3:\"md5\";s:32:\"7fc74372078170cc6a4f2f6e2fda3d3b\";s:6:\"themes\";a:2:{s:9:\"head-blog\";a:5:{s:4:\"slug\";s:9:\"head-blog\";s:7:\"version\";s:6:\"1.0.11\";s:5:\"title\";s:9:\"Head Blog\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"head-blog-child\";a:5:{s:4:\"slug\";s:15:\"head-blog-child\";s:7:\"version\";s:5:\"1.0.0\";s:5:\"title\";s:15:\"Head Blog Child\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:2:{s:19:\"the-events-calendar\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"18476521\";s:9:\"plugin_id\";s:4:\"3069\";s:7:\"user_id\";s:7:\"2816507\";s:5:\"title\";s:18:\"Réservation repas\";s:3:\"url\";s:37:\"http://localhost/wp_reservation_repas\";s:7:\"version\";s:5:\"5.0.3\";s:8:\"language\";s:5:\"fr-FR\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.2\";s:28:\"programming_language_version\";s:16:\"7.2.24-0ubuntu0.\";s:7:\"plan_id\";s:4:\"4872\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_1b2898969c193d1d920d77ad5145b\";s:10:\"secret_key\";s:32:\"sk_1rOaq}.2l0X2DoSDCO97NF0NI]]Pz\";s:2:\"id\";s:7:\"4184217\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2020-03-23 16:30:08\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:13:\"event-tickets\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"18476521\";s:9:\"plugin_id\";s:4:\"3841\";s:7:\"user_id\";s:7:\"2816507\";s:5:\"title\";s:18:\"Réservation repas\";s:3:\"url\";s:37:\"http://localhost/wp_reservation_repas\";s:7:\"version\";s:6:\"4.11.5\";s:8:\"language\";s:5:\"fr-FR\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.2\";s:28:\"programming_language_version\";s:16:\"7.2.24-0ubuntu0.\";s:7:\"plan_id\";s:4:\"6188\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_3a774b834d865eb7974e3ef452499\";s:10:\"secret_key\";s:32:\"sk_?+8[4%*@q0g64?FMQuY<kw&bKwGg6\";s:2:\"id\";s:7:\"4188759\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2020-03-24 09:02:52\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:2816507;O:7:\"FS_User\":13:{s:5:\"email\";s:18:\"lescadev@gmail.com\";s:5:\"first\";s:8:\"lescadev\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:7:\"is_beta\";N;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_7c331e0e08a6526b08a9da01f097a\";s:10:\"secret_key\";s:32:\"sk_50hiGI&$u-WOkDHkcWeni{z<jd^4+\";s:2:\"id\";s:7:\"2816507\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2020-03-23 16:30:07\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}', 'yes'),
(245, 'fs_gdpr', 'a:2:{s:2:\"u0\";a:1:{s:8:\"required\";b:0;}s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(246, 'tribe_last_updated_option', '1585041398.1715', 'yes'),
(247, 'tribe_last_save_post', '1585041398.2158', 'yes'),
(250, 'tribe_last_generate_rewrite_rules', '1585041398.098', 'yes'),
(253, '_transient_timeout_tribe_feature_detection', '1585585521', 'no'),
(254, '_transient_tribe_feature_detection', 'a:1:{s:22:\"supports_async_process\";b:0;}', 'no'),
(259, 'fs_api_cache', 'a:4:{s:26:\"get:/v1/users/2816507.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":16:{s:15:\"default_card_id\";N;s:5:\"gross\";i:0;s:6:\"source\";i:0;s:13:\"last_login_at\";N;s:5:\"email\";s:18:\"lescadev@gmail.com\";s:5:\"first\";s:8:\"lescadev\";s:4:\"last\";s:0:\"\";s:7:\"picture\";N;s:2:\"ip\";s:14:\"88.122.212.135\";s:11:\"is_verified\";b:0;s:10:\"secret_key\";s:32:\"sk_50hiGI&$u-WOkDHkcWeni{z<jd^4+\";s:10:\"public_key\";s:32:\"pk_7c331e0e08a6526b08a9da01f097a\";s:2:\"id\";s:7:\"2816507\";s:7:\"created\";s:19:\"2020-03-23 16:30:07\";s:7:\"updated\";N;s:11:\"customer_id\";N;}s:7:\"created\";i:1584981008;s:9:\"timestamp\";i:1585067408;}s:29:\"get:/v1/installs/4184217.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":31:{s:7:\"site_id\";s:8:\"18476521\";s:9:\"plugin_id\";s:4:\"3069\";s:7:\"user_id\";s:7:\"2816507\";s:3:\"url\";s:37:\"http://localhost/wp_reservation_repas\";s:5:\"title\";s:18:\"Réservation repas\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"plan_id\";s:4:\"4872\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:15:\"subscription_id\";N;s:5:\"gross\";i:0;s:12:\"country_code\";s:2:\"fr\";s:8:\"language\";s:5:\"fr-FR\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.2\";s:28:\"programming_language_version\";s:16:\"7.2.24-0ubuntu0.\";s:9:\"is_active\";b:1;s:15:\"is_disconnected\";b:0;s:10:\"is_premium\";b:0;s:14:\"is_uninstalled\";b:0;s:9:\"is_locked\";b:0;s:6:\"source\";i:0;s:8:\"upgraded\";N;s:12:\"last_seen_at\";s:19:\"2020-03-23 16:30:10\";s:10:\"secret_key\";s:32:\"sk_1rOaq}.2l0X2DoSDCO97NF0NI]]Pz\";s:10:\"public_key\";s:32:\"pk_1b2898969c193d1d920d77ad5145b\";s:2:\"id\";s:7:\"4184217\";s:7:\"created\";s:19:\"2020-03-23 16:30:08\";s:7:\"updated\";N;}s:7:\"created\";i:1584981008;s:9:\"timestamp\";i:1585067408;}s:45:\"get:/v1/users/2816507/plugins/3069/plans.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:5:\"plans\";a:1:{i:0;O:8:\"stdClass\":22:{s:9:\"plugin_id\";s:4:\"3069\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:4:\"4872\";s:7:\"created\";s:19:\"2019-01-08 15:36:07\";s:7:\"updated\";N;}}}s:7:\"created\";i:1584981008;s:9:\"timestamp\";i:1585067408;}s:45:\"get:/v1/users/2816507/plugins/3841/plans.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:5:\"plans\";a:1:{i:0;O:8:\"stdClass\":22:{s:9:\"plugin_id\";s:4:\"3841\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:4:\"6188\";s:7:\"created\";s:19:\"2019-05-23 19:58:15\";s:7:\"updated\";N;}}}s:7:\"created\";i:1585040571;s:9:\"timestamp\";i:1585126971;}}', 'no'),
(260, '_site_transient_timeout_locked_1', '1900341011', 'no'),
(261, '_site_transient_locked_1', '1', 'no'),
(281, '_transient_timeout_tribe_plugin_upgrade_notice-f87422a9', '1585127750', 'no'),
(282, '_transient_tribe_plugin_upgrade_notice-f87422a9', '', 'no'),
(307, 'tribe_pue_key_notices', 'a:0:{}', 'yes'),
(308, 'pue_install_key_promoter', '', 'yes'),
(309, 'pue_install_key_event_aggregator', '', 'yes'),
(323, '_transient_timeout_tribe_aggregator_services_list', '1585127713', 'no'),
(324, '_transient_tribe_aggregator_services_list', 'a:1:{s:6:\"origin\";a:1:{i:0;O:8:\"stdClass\":2:{s:2:\"id\";s:3:\"csv\";s:4:\"name\";s:11:\"Fichier CSV\";}}}', 'no'),
(327, '_site_transient_timeout_theme_roots', '1585060104', 'no'),
(328, '_site_transient_theme_roots', 'a:2:{s:15:\"head-blog-child\";s:7:\"/themes\";s:9:\"head-blog\";s:7:\"/themes\";}', 'no'),
(329, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1585058305;s:7:\"checked\";a:2:{s:15:\"head-blog-child\";s:5:\"1.0.0\";s:9:\"head-blog\";s:6:\"1.0.11\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(330, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1585058306;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1584974315:1'),
(43, 15, '_menu_item_type', 'custom'),
(44, 15, '_menu_item_menu_item_parent', '0'),
(45, 15, '_menu_item_object_id', '15'),
(46, 15, '_menu_item_object', 'custom'),
(47, 15, '_menu_item_target', ''),
(48, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 15, '_menu_item_xfn', ''),
(50, 15, '_menu_item_url', 'http://localhost/wp_reservation_repas/'),
(61, 17, '_menu_item_type', 'taxonomy'),
(62, 17, '_menu_item_menu_item_parent', '0'),
(63, 17, '_menu_item_object_id', '5'),
(64, 17, '_menu_item_object', 'category'),
(65, 17, '_menu_item_target', ''),
(66, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 17, '_menu_item_xfn', ''),
(68, 17, '_menu_item_url', ''),
(70, 18, '_menu_item_type', 'taxonomy'),
(71, 18, '_menu_item_menu_item_parent', '0'),
(72, 18, '_menu_item_object_id', '4'),
(73, 18, '_menu_item_object', 'category'),
(74, 18, '_menu_item_target', ''),
(75, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 18, '_menu_item_xfn', ''),
(77, 18, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2020-03-19 11:59:29', '2020-03-19 10:59:29', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/Projets/wp_reservation_repas.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-03-19 11:59:29', '2020-03-19 10:59:29', '', 0, 'http://localhost/Projets/wp_reservation_repas/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-03-19 12:00:17', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-19 12:00:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projets/wp_reservation_repas/?p=4', 0, 'post', '', 0),
(6, 1, '2020-03-23 15:40:51', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-03-23 15:40:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_reservation_repas/?page_id=6', 0, 'page', '', 0),
(15, 1, '2020-03-23 15:54:07', '2020-03-23 14:54:07', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil-2', '', '', '2020-03-23 16:03:10', '2020-03-23 15:03:10', '', 0, 'http://localhost/wp_reservation_repas/?p=15', 1, 'nav_menu_item', '', 0),
(17, 1, '2020-03-23 15:54:07', '2020-03-23 14:54:07', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-03-23 16:03:10', '2020-03-23 15:03:10', '', 1, 'http://localhost/wp_reservation_repas/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2020-03-23 15:54:08', '2020-03-23 14:54:08', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-03-23 16:03:10', '2020-03-23 15:03:10', '', 1, 'http://localhost/wp_reservation_repas/?p=18', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Accueil', 'accueil', 0),
(4, 'Repas tradition', 'repas-tradition', 0),
(5, 'Repas créole', 'repas-creole', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(15, 2, 0),
(17, 2, 0),
(18, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 1, 0),
(4, 4, 'category', '', 1, 0),
(5, 5, 'category', '', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lescadev'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"583fae69bfbaf2b0e00f55333207756fc0c3b62e7263f042ea3410535abdd41e\";a:4:{s:10:\"expiration\";i:1585141610;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1584968810;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:21:\"dashboard_quick_press\";i:1;s:17:\"dashboard_primary\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lescadev', '$P$B5RvohHB2bezabqMG8xFvzqHsV9Tmg.', 'lescadev', 'lescadev@gmail.com', '', '2020-03-19 10:59:24', '', 0, 'lescadev');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
