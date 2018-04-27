-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2018 at 03:39 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `begam`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-11 18:05:45', '2018-04-11 18:05:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_draft_submissions`
--

CREATE TABLE `wp_gf_draft_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_entry`
--

CREATE TABLE `wp_gf_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_gf_entry`
--

INSERT INTO `wp_gf_entry` (`id`, `form_id`, `post_id`, `date_created`, `date_updated`, `is_starred`, `is_read`, `ip`, `source_url`, `user_agent`, `currency`, `payment_status`, `payment_date`, `payment_amount`, `payment_method`, `transaction_id`, `is_fulfilled`, `created_by`, `transaction_type`, `status`) VALUES
(1, 1, NULL, '2018-04-19 17:46:53', NULL, 0, 0, '::1', 'http://begam.com/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active'),
(2, 1, NULL, '2018-04-19 17:47:00', NULL, 0, 0, '::1', 'http://begam.com/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_entry_meta`
--

CREATE TABLE `wp_gf_entry_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_gf_entry_meta`
--

INSERT INTO `wp_gf_entry_meta` (`id`, `form_id`, `entry_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 1, '1', 'xczsc'),
(2, 1, 1, '2', '(111) 111-1111'),
(3, 1, 1, '3', 'aXAsxasXasxaSX@asdf.com'),
(4, 1, 1, '4', 'Second Choice'),
(5, 1, 1, '5', 'ASxa'),
(6, 1, 2, '1', 'xczsc'),
(7, 1, 2, '2', '(111) 111-1111'),
(8, 1, 2, '3', 'aXAsxasXasxaSX@asdf.com'),
(9, 1, 2, '4', 'Second Choice'),
(10, 1, 2, '5', 'ASxa');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_entry_notes`
--

CREATE TABLE `wp_gf_entry_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_form`
--

CREATE TABLE `wp_gf_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_gf_form`
--

INSERT INTO `wp_gf_form` (`id`, `title`, `date_created`, `date_updated`, `is_active`, `is_trash`) VALUES
(1, 'Free Consultation', '2018-04-18 20:04:34', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_form_meta`
--

CREATE TABLE `wp_gf_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_gf_form_meta`
--

INSERT INTO `wp_gf_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{\"title\":\"Free Consultation\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"text\",\"id\":1,\"label\":\"Name\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePasswordInput\":\"\",\"maxLength\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1},{\"type\":\"phone\",\"id\":2,\"label\":\"Phone\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"phoneFormat\":\"standard\",\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"form_id\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1},{\"type\":\"email\",\"id\":3,\"label\":\"Email\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"emailConfirmEnabled\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1},{\"type\":\"select\",\"id\":4,\"label\":\"Type of Case\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"choices\":[{\"text\":\"First Choice\",\"value\":\"First Choice\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Second Choice\",\"value\":\"Second Choice\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Third Choice\",\"value\":\"Third Choice\",\"isSelected\":false,\"price\":\"\"}],\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"enablePrice\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1},{\"type\":\"textarea\",\"id\":5,\"label\":\"Your Message\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"visibility\":\"visible\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"form_id\":\"\",\"useRichTextEditor\":false,\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"pageNumber\":1}],\"version\":\"2.3.0.2\",\"id\":1,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null}', NULL, '{\"5ad7a4d2c284f\":{\"id\":\"5ad7a4d2c284f\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}', '{\"5ad7a4d2c082d\":{\"id\":\"5ad7a4d2c082d\",\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gf_form_view`
--

CREATE TABLE `wp_gf_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_gf_form_view`
--

INSERT INTO `wp_gf_form_view` (`id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2018-04-18 20:08:11', '', 272),
(2, 1, '2018-04-19 20:35:53', '', 21),
(3, 1, '2018-04-23 15:19:26', '', 123),
(4, 1, '2018-04-24 15:20:53', '', 136),
(5, 1, '2018-04-25 15:46:27', '', 136),
(6, 1, '2018-04-26 15:47:25', '', 149),
(7, 1, '2018-04-27 16:50:47', '', 42);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://begam.com', 'yes'),
(2, 'home', 'http://begam.com', 'yes'),
(3, 'blogname', 'Begam Marks &amp; Traulsen, PA', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'garrett@1pointinteractive.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:29:\"gravityforms/gravityforms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'begam', 'yes'),
(41, 'stylesheet', 'begam', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:3;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:1:{i:0;s:14:\"recent-posts-2\";}s:16:\"category_sidebar\";a:1:{i:0;s:12:\"categories-3\";}s:15:\"archive_sidebar\";a:1:{i:0;s:10:\"archives-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1524895545;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524938751;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524938768;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524945651;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1524852354;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1524852355;s:7:\"checked\";a:1:{s:5:\"begam\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(133, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523469958;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(134, 'current_theme', '', 'yes'),
(135, 'theme_mods_begam', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main_menu\";i:2;s:7:\"pa_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(140, 'WPLANG', '', 'yes'),
(141, 'new_admin_email', 'garrett@1pointinteractive.com', 'yes'),
(199, 'recently_activated', 'a:0:{}', 'yes'),
(200, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(202, 'gform_enable_background_updates', '1', 'yes'),
(204, 'gform_pending_installation', '', 'yes'),
(205, 'rg_form_version', '2.3.0.2', 'yes'),
(214, 'rg_gforms_key', '2607c8f786b4fc8d43bc9ecae92fcaa1', 'yes'),
(215, 'rg_gforms_enable_akismet', '0', 'yes'),
(216, 'rg_gforms_currency', 'USD', 'yes'),
(217, 'gform_enable_toolbar_menu', '1', 'yes'),
(218, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1524852355;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:29:\"gravityforms/gravityforms.php\";s:7:\"2.3.0.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(221, 'gf_previous_db_version', '2.2.5', 'yes'),
(223, 'gform_sticky_admin_messages', 'a:0:{}', 'yes'),
(228, 'gf_db_version', '2.3.0.2', 'yes'),
(229, 'gform_version_info', 'a:10:{s:12:\"is_valid_key\";b:1;s:6:\"reason\";s:0:\"\";s:7:\"version\";s:3:\"2.3\";s:3:\"url\";s:168:\"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.3.0.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=xIgmW1ahT8%2FOlT6Dp6DQZvsw7UA%3D\";s:15:\"expiration_time\";i:1545997832;s:9:\"offerings\";a:46:{s:12:\"gravityforms\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.3\";s:14:\"version_latest\";s:7:\"2.3.0.4\";s:3:\"url\";s:168:\"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.3.0.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=xIgmW1ahT8%2FOlT6Dp6DQZvsw7UA%3D\";s:10:\"url_latest\";s:168:\"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.3.0.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=xIgmW1ahT8%2FOlT6Dp6DQZvsw7UA%3D\";}s:26:\"gravityformsactivecampaign\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.5\";s:3:\"url\";s:189:\"http://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=9RV3ovSJ5bxcSb2PT2roR9vBEfc%3D\";s:10:\"url_latest\";s:193:\"http://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.4.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=4mrMnXOc%2FxxtxYtDvKjwBvwgS60%3D\";}s:20:\"gravityformsagilecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=g6Pk%2Bs2OEFwgvhLbn%2BiN3W0ccrY%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=g6Pk%2Bs2OEFwgvhLbn%2BiN3W0ccrY%3D\";}s:24:\"gravityformsauthorizenet\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.5\";s:14:\"version_latest\";s:3:\"2.5\";s:3:\"url\";s:185:\"http://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=ralN7asnoLp7NILEKnD9qMxZ9Sk%3D\";s:10:\"url_latest\";s:185:\"http://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=ralN7asnoLp7NILEKnD9qMxZ9Sk%3D\";}s:18:\"gravityformsaweber\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.7\";s:14:\"version_latest\";s:3:\"2.7\";s:3:\"url\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=osMkSQNWLL6kzo037haRoakTud8%3D\";s:10:\"url_latest\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=osMkSQNWLL6kzo037haRoakTud8%3D\";}s:21:\"gravityformsbatchbook\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=UsxJaZFXlXPWljudlXEMTIgDyBM%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=UsxJaZFXlXPWljudlXEMTIgDyBM%3D\";}s:18:\"gravityformsbreeze\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=9Ee2H2u5gy3SYNzvio7n6yMvV7w%3D\";s:10:\"url_latest\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=9Ee2H2u5gy3SYNzvio7n6yMvV7w%3D\";}s:27:\"gravityformscampaignmonitor\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:3:\"3.7\";s:3:\"url\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=T5JXWUslsvPiGJInboEOM79QaDA%3D\";s:10:\"url_latest\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=T5JXWUslsvPiGJInboEOM79QaDA%3D\";}s:20:\"gravityformscampfire\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.2.1\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=OQwszNT2yBPKOJKVqXNoiV7vWks%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=65HAvVovIn%2FiSODlcBoOY7TBjvE%3D\";}s:22:\"gravityformscapsulecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=p9EhbzCuvZVg%2FHYcrycdY6Qy32A%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=p9EhbzCuvZVg%2FHYcrycdY6Qy32A%3D\";}s:26:\"gravityformschainedselects\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.0\";s:14:\"version_latest\";s:5:\"1.0.9\";s:3:\"url\";s:189:\"http://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=SfDF6NysHaoSFtZI3bpa61qvySY%3D\";s:10:\"url_latest\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.0.9.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=2wq83212MtmOxGNSKtoHFHqYvXQ%3D\";}s:23:\"gravityformscleverreach\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=93QRdG8cXGNHlm6T2tZelZ93xkQ%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=93QRdG8cXGNHlm6T2tZelZ93xkQ%3D\";}s:19:\"gravityformscoupons\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.6\";s:14:\"version_latest\";s:5:\"2.6.2\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=SZEW5sP8kMtewg6OYvYoNOZHQsQ%3D\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.6.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=JfJyOcfV7q4Mxol09ZR3oPA4rW4%3D\";}s:17:\"gravityformsdebug\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:9:\"1.0.beta8\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/debug/gravityformsdebug_1.0.beta8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=YWymSQS1ovHeKnPwhQDoz6zeF7s%3D\";}s:19:\"gravityformsdropbox\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.1\";s:14:\"version_latest\";s:5:\"2.1.1\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=sFm%2FMKTGuwpqicqdnIagBKZIyEY%3D\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=F29FOJIUygMbhBTKAFEEfBQRmsY%3D\";}s:16:\"gravityformsemma\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.3\";s:3:\"url\";s:169:\"http://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=8YTkvHFCEpQ5RmrJC3Pgb45dOII%3D\";s:10:\"url_latest\";s:171:\"http://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=1UuMdcjGFKfUx9xTo9o37ppddJQ%3D\";}s:22:\"gravityformsfreshbooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.5\";s:14:\"version_latest\";s:5:\"2.5.2\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=xSd39vLgJbHKM1arTD6lpmgMen4%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.5.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=nORzlv2iUgsu946BmBJ170vsotA%3D\";}s:23:\"gravityformsgetresponse\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:185:\"http://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=Qh8c8zgE2Bs6dvWP5%2B6TJK0K6pA%3D\";s:10:\"url_latest\";s:185:\"http://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=Qh8c8zgE2Bs6dvWP5%2B6TJK0K6pA%3D\";}s:21:\"gravityformsgutenberg\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-beta-4\";s:14:\"version_latest\";s:10:\"1.0-beta-4\";s:3:\"url\";s:188:\"http://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-beta-4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=zQ4cFo6vi4%2BA2Rbc4UDGKD4xoCE%3D\";s:10:\"url_latest\";s:188:\"http://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-beta-4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=zQ4cFo6vi4%2BA2Rbc4UDGKD4xoCE%3D\";}s:21:\"gravityformshelpscout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=diruR%2BSp1AewNRVGRMFRF84uWVM%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=diruR%2BSp1AewNRVGRMFRF84uWVM%3D\";}s:20:\"gravityformshighrise\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.3\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=tRdTutN5PquVWemHn4nhfd69gVU%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=JnnL0ONsH%2F9DtkqZEHlB8axDdVU%3D\";}s:19:\"gravityformshipchat\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/hipchat/gravityformshipchat_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=CM2lrlvyLfTNYiZzOVe7Z5biPJo%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/hipchat/gravityformshipchat_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=CM2lrlvyLfTNYiZzOVe7Z5biPJo%3D\";}s:20:\"gravityformsicontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=IIu8HTdaJyMOtSbNfOjyAZ%2FlPkA%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=IIu8HTdaJyMOtSbNfOjyAZ%2FlPkA%3D\";}s:19:\"gravityformslogging\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=kbYs3A42reIdSNj9SqBlPfpSxZA%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=xZhTLKA%2B6JJ1c7i%2F6VyJG5ma1A0%3D\";}s:19:\"gravityformsmadmimi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=Mf%2BgvxC5emS6QDT3qu85LnOCCkg%3D\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=Mf%2BgvxC5emS6QDT3qu85LnOCCkg%3D\";}s:21:\"gravityformsmailchimp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.3\";s:14:\"version_latest\";s:3:\"4.3\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=BVtxEyQT5Cz%2Fh99QIevbET1mq4A%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=BVtxEyQT5Cz%2Fh99QIevbET1mq4A%3D\";}s:26:\"gravityformspartialentries\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=6Dtn183F75wpkZKapz7m%2Foo0eg8%3D\";s:10:\"url_latest\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=6Dtn183F75wpkZKapz7m%2Foo0eg8%3D\";}s:18:\"gravityformspaypal\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.9\";s:14:\"version_latest\";s:5:\"2.9.1\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_2.9.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=gW5HYmezy6bTMkSQxGq0No%2F5HeU%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_2.9.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=lO%2Bdrbd4koA%2BJIwIH5bt2Pi%2FGCg%3D\";}s:33:\"gravityformspaypalexpresscheckout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";N;}s:29:\"gravityformspaypalpaymentspro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.3\";s:14:\"version_latest\";s:5:\"2.3.2\";s:3:\"url\";s:195:\"http://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=S7hlGw35TuKjurwG2lU1bECelKM%3D\";s:10:\"url_latest\";s:197:\"http://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=EttpoenYeAjIt96Gryc8kcZiSc8%3D\";}s:21:\"gravityformspaypalpro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"1.8.1\";s:14:\"version_latest\";s:5:\"1.8.1\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=GNJoSutdPPbNsVyj4M76M7GC20M%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=GNJoSutdPPbNsVyj4M76M7GC20M%3D\";}s:20:\"gravityformspicatcha\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";}s:16:\"gravityformspipe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:3:\"1.1\";s:3:\"url\";s:171:\"http://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=KQ4kgoX0Bkmnp4rn%2BdgK598KTiI%3D\";s:10:\"url_latest\";s:171:\"http://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=KQ4kgoX0Bkmnp4rn%2BdgK598KTiI%3D\";}s:17:\"gravityformspolls\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.1\";s:14:\"version_latest\";s:5:\"3.1.4\";s:3:\"url\";s:171:\"http://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=ZanEEEb5dKZAYsidvfTqaLBNuso%3D\";s:10:\"url_latest\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=iXkRhhk9Oul6GR47XmMUSjYm7XQ%3D\";}s:16:\"gravityformsquiz\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.1\";s:14:\"version_latest\";s:5:\"3.1.7\";s:3:\"url\";s:169:\"http://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=AlzjrFFNZq25LJafTq3fRaFw5I0%3D\";s:10:\"url_latest\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.1.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=cXgQ3VN9j3ikPHg17nM39g%2FRWYo%3D\";}s:19:\"gravityformsrestapi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"2.0-beta-2\";s:14:\"version_latest\";s:10:\"2.0-beta-2\";s:3:\"url\";s:184:\"http://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=CDmKBL6ehQ1vJ2%2BWKu4nog6Eyvw%3D\";s:10:\"url_latest\";s:184:\"http://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=CDmKBL6ehQ1vJ2%2BWKu4nog6Eyvw%3D\";}s:21:\"gravityformssignature\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"3.5.1\";s:14:\"version_latest\";s:5:\"3.5.2\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_3.5.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=ENNM6J0wQgvkEBN36WrRp8NsuBY%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_3.5.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=BPuj10utR5joRqlaJo7EyXXxe1k%3D\";}s:17:\"gravityformsslack\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.8\";s:14:\"version_latest\";s:3:\"1.8\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=Kx%2FHL5cgV%2F5kHfheTT76HLo5tAw%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=Kx%2FHL5cgV%2F5kHfheTT76HLo5tAw%3D\";}s:18:\"gravityformsstripe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.5\";s:14:\"version_latest\";s:3:\"2.5\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=a2iIoYNpwq%2Bbl6eQBs4Cfe3yry8%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=a2iIoYNpwq%2Bbl6eQBs4Cfe3yry8%3D\";}s:18:\"gravityformssurvey\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.2\";s:14:\"version_latest\";s:5:\"3.2.2\";s:3:\"url\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=U5IafSgncRUNLpEeal1rF7HpLGM%3D\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=BKmix9ka4oEI38cypjH%2F0Rq7OIE%3D\";}s:18:\"gravityformstrello\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.2\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=Pd%2BKudyZb%2FXwO91U6AYkOPnFhIw%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=ysVwibuiIBwcjjtjLkF9ZLWFVfQ%3D\";}s:18:\"gravityformstwilio\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"2.4.1\";s:14:\"version_latest\";s:5:\"2.4.4\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.4.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=BsAMtd4EDIS2hK2rYxc%2B155c%2FLY%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.4.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=3VNkj8v4sIvRCZTURX6eM6Wi7DY%3D\";}s:28:\"gravityformsuserregistration\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:5:\"3.9.2\";s:3:\"url\";s:193:\"http://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_3.9.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=d7On8THlEcxv8JwOHtOasCG1Jc8%3D\";s:10:\"url_latest\";s:197:\"http://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_3.9.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=Lvrge0%2FwDZtgQEdzzF6sBR8DhNg%3D\";}s:20:\"gravityformswebhooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.1.5\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=E5HrQG22OMgsnnbnr40wYwAorqA%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=hIQiEe74LIO5TxncgtDO5gCozR8%3D\";}s:18:\"gravityformszapier\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.1\";s:14:\"version_latest\";s:5:\"2.1.6\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=DZy%2BiYnnA%2BjABDBqByqz5IAmJ%2BU%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_2.1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=oRO0bd8IxFo3xYb8l02%2F%2B8C3ipk%3D\";}s:19:\"gravityformszohocrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=QZ8TEFLsU1TWLIFBlx7h37zJvFc%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=QZ8TEFLsU1TWLIFBlx7h37zJvFc%3D\";}}s:9:\"is_active\";s:1:\"1\";s:14:\"version_latest\";s:7:\"2.3.0.4\";s:10:\"url_latest\";s:168:\"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.3.0.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1525033632&Signature=xIgmW1ahT8%2FOlT6Dp6DQZvsw7UA%3D\";s:9:\"timestamp\";i:1524860832;}', 'yes'),
(236, 'category_children', 'a:0:{}', 'yes'),
(243, 'gf_site_key', '2fe943d1-d73f-425c-8269-7d7dab3e339f', 'yes'),
(244, 'gf_site_secret', 'f41e22a1-1492-4c2e-872e-46d7b25aebf7', 'yes'),
(245, 'rg_gforms_disable_css', '1', 'yes'),
(246, 'rg_gforms_captcha_public_key', '', 'yes'),
(247, 'rg_gforms_captcha_private_key', '', 'yes'),
(248, 'rg_gforms_message', '<!--GFM-->', 'yes'),
(255, 'gform_email_count', '2', 'yes'),
(280, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(356, '_site_transient_timeout_theme_roots', '1524854155', 'no'),
(357, '_site_transient_theme_roots', 'a:1:{s:5:\"begam\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1523469963'),
(4, 1, '_wp_desired_post_slug', 'hello-world'),
(5, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1523469966'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 6, '_edit_last', '1'),
(10, 6, '_edit_lock', '1523469833:1'),
(11, 6, '_wp_page_template', 'page-home.php'),
(12, 8, '_edit_last', '1'),
(13, 8, '_wp_page_template', 'default'),
(14, 8, '_edit_lock', '1524520265:1'),
(15, 10, '_edit_last', '1'),
(16, 10, '_wp_page_template', 'default'),
(17, 10, '_edit_lock', '1524851976:1'),
(18, 12, '_edit_last', '1'),
(19, 12, '_edit_lock', '1524851966:1'),
(20, 12, '_wp_page_template', 'page-padirectory.php'),
(21, 14, '_edit_last', '1'),
(22, 14, '_wp_page_template', 'page-caseresults.php'),
(23, 14, '_edit_lock', '1524609496:1'),
(24, 16, '_edit_last', '1'),
(25, 16, '_wp_page_template', 'page-clientreviews.php'),
(26, 16, '_edit_lock', '1524756987:1'),
(27, 18, '_edit_last', '1'),
(28, 18, '_wp_page_template', 'default'),
(29, 18, '_edit_lock', '1524520320:1'),
(30, 20, '_menu_item_type', 'post_type'),
(31, 20, '_menu_item_menu_item_parent', '0'),
(32, 20, '_menu_item_object_id', '6'),
(33, 20, '_menu_item_object', 'page'),
(34, 20, '_menu_item_target', ''),
(35, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 20, '_menu_item_xfn', ''),
(37, 20, '_menu_item_url', ''),
(39, 21, '_menu_item_type', 'post_type'),
(40, 21, '_menu_item_menu_item_parent', '28'),
(41, 21, '_menu_item_object_id', '8'),
(42, 21, '_menu_item_object', 'page'),
(43, 21, '_menu_item_target', ''),
(44, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 21, '_menu_item_xfn', ''),
(46, 21, '_menu_item_url', ''),
(48, 22, '_menu_item_type', 'post_type'),
(49, 22, '_menu_item_menu_item_parent', '0'),
(50, 22, '_menu_item_object_id', '14'),
(51, 22, '_menu_item_object', 'page'),
(52, 22, '_menu_item_target', ''),
(53, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 22, '_menu_item_xfn', ''),
(55, 22, '_menu_item_url', ''),
(57, 23, '_menu_item_type', 'post_type'),
(58, 23, '_menu_item_menu_item_parent', '0'),
(59, 23, '_menu_item_object_id', '18'),
(60, 23, '_menu_item_object', 'page'),
(61, 23, '_menu_item_target', ''),
(62, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 23, '_menu_item_xfn', ''),
(64, 23, '_menu_item_url', ''),
(66, 24, '_menu_item_type', 'post_type'),
(67, 24, '_menu_item_menu_item_parent', '0'),
(68, 24, '_menu_item_object_id', '6'),
(69, 24, '_menu_item_object', 'page'),
(70, 24, '_menu_item_target', ''),
(71, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 24, '_menu_item_xfn', ''),
(73, 24, '_menu_item_url', ''),
(74, 24, '_menu_item_orphaned', '1524520465'),
(75, 25, '_menu_item_type', 'post_type'),
(76, 25, '_menu_item_menu_item_parent', '29'),
(77, 25, '_menu_item_object_id', '10'),
(78, 25, '_menu_item_object', 'page'),
(79, 25, '_menu_item_target', ''),
(80, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 25, '_menu_item_xfn', ''),
(82, 25, '_menu_item_url', ''),
(84, 26, '_menu_item_type', 'post_type'),
(85, 26, '_menu_item_menu_item_parent', '29'),
(86, 26, '_menu_item_object_id', '12'),
(87, 26, '_menu_item_object', 'page'),
(88, 26, '_menu_item_target', ''),
(89, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 26, '_menu_item_xfn', ''),
(91, 26, '_menu_item_url', ''),
(93, 27, '_menu_item_type', 'post_type'),
(94, 27, '_menu_item_menu_item_parent', '0'),
(95, 27, '_menu_item_object_id', '16'),
(96, 27, '_menu_item_object', 'page'),
(97, 27, '_menu_item_target', ''),
(98, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 27, '_menu_item_xfn', ''),
(100, 27, '_menu_item_url', ''),
(102, 28, '_menu_item_type', 'custom'),
(103, 28, '_menu_item_menu_item_parent', '0'),
(104, 28, '_menu_item_object_id', '28'),
(105, 28, '_menu_item_object', 'custom'),
(106, 28, '_menu_item_target', ''),
(107, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 28, '_menu_item_xfn', ''),
(109, 28, '_menu_item_url', ''),
(111, 29, '_menu_item_type', 'custom'),
(112, 29, '_menu_item_menu_item_parent', '0'),
(113, 29, '_menu_item_object_id', '29'),
(114, 29, '_menu_item_object', 'custom'),
(115, 29, '_menu_item_target', ''),
(116, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 29, '_menu_item_xfn', ''),
(118, 29, '_menu_item_url', ''),
(119, 30, '_edit_last', '1'),
(120, 30, '_edit_lock', '1524588989:1'),
(122, 32, '_edit_last', '1'),
(124, 32, '_edit_lock', '1524589019:1'),
(125, 35, '_edit_last', '1'),
(127, 35, '_edit_lock', '1524589039:1'),
(128, 37, '_edit_last', '1'),
(129, 37, '_wp_page_template', 'default'),
(130, 37, '_edit_lock', '1524591119:1'),
(131, 39, '_edit_last', '1'),
(132, 39, '_wp_page_template', 'default'),
(133, 39, '_edit_lock', '1524591128:1'),
(134, 41, '_edit_last', '1'),
(135, 41, '_edit_lock', '1524591138:1'),
(136, 41, '_wp_page_template', 'default'),
(137, 43, '_menu_item_type', 'custom'),
(138, 43, '_menu_item_menu_item_parent', '0'),
(139, 43, '_menu_item_object_id', '43'),
(140, 43, '_menu_item_object', 'custom'),
(141, 43, '_menu_item_target', ''),
(142, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 43, '_menu_item_xfn', ''),
(144, 43, '_menu_item_url', ''),
(146, 44, '_menu_item_type', 'post_type'),
(147, 44, '_menu_item_menu_item_parent', '43'),
(148, 44, '_menu_item_object_id', '10'),
(149, 44, '_menu_item_object', 'page'),
(150, 44, '_menu_item_target', ''),
(151, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 44, '_menu_item_xfn', ''),
(153, 44, '_menu_item_url', ''),
(164, 46, '_menu_item_type', 'post_type'),
(165, 46, '_menu_item_menu_item_parent', '43'),
(166, 46, '_menu_item_object_id', '39'),
(167, 46, '_menu_item_object', 'page'),
(168, 46, '_menu_item_target', ''),
(169, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 46, '_menu_item_xfn', ''),
(171, 46, '_menu_item_url', ''),
(182, 48, '_menu_item_type', 'custom'),
(183, 48, '_menu_item_menu_item_parent', '0'),
(184, 48, '_menu_item_object_id', '48'),
(185, 48, '_menu_item_object', 'custom'),
(186, 48, '_menu_item_target', ''),
(187, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 48, '_menu_item_xfn', ''),
(189, 48, '_menu_item_url', ''),
(191, 49, '_menu_item_type', 'post_type'),
(192, 49, '_menu_item_menu_item_parent', '48'),
(193, 49, '_menu_item_object_id', '41'),
(194, 49, '_menu_item_object', 'page'),
(195, 49, '_menu_item_target', ''),
(196, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 49, '_menu_item_xfn', ''),
(198, 49, '_menu_item_url', ''),
(200, 50, '_menu_item_type', 'post_type'),
(201, 50, '_menu_item_menu_item_parent', '48'),
(202, 50, '_menu_item_object_id', '39'),
(203, 50, '_menu_item_object', 'page'),
(204, 50, '_menu_item_target', ''),
(205, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 50, '_menu_item_xfn', ''),
(207, 50, '_menu_item_url', ''),
(209, 51, '_menu_item_type', 'post_type'),
(210, 51, '_menu_item_menu_item_parent', '48'),
(211, 51, '_menu_item_object_id', '37'),
(212, 51, '_menu_item_object', 'page'),
(213, 51, '_menu_item_target', ''),
(214, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 51, '_menu_item_xfn', ''),
(216, 51, '_menu_item_url', ''),
(218, 52, '_menu_item_type', 'post_type'),
(219, 52, '_menu_item_menu_item_parent', '48'),
(220, 52, '_menu_item_object_id', '10'),
(221, 52, '_menu_item_object', 'page'),
(222, 52, '_menu_item_target', ''),
(223, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 52, '_menu_item_xfn', ''),
(225, 52, '_menu_item_url', ''),
(226, 53, '_menu_item_type', 'custom'),
(227, 53, '_menu_item_menu_item_parent', '0'),
(228, 53, '_menu_item_object_id', '53'),
(229, 53, '_menu_item_object', 'custom'),
(230, 53, '_menu_item_target', ''),
(231, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(232, 53, '_menu_item_xfn', ''),
(233, 53, '_menu_item_url', ''),
(235, 54, '_menu_item_type', 'post_type'),
(236, 54, '_menu_item_menu_item_parent', '53'),
(237, 54, '_menu_item_object_id', '41'),
(238, 54, '_menu_item_object', 'page'),
(239, 54, '_menu_item_target', ''),
(240, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(241, 54, '_menu_item_xfn', ''),
(242, 54, '_menu_item_url', ''),
(244, 55, '_menu_item_type', 'post_type'),
(245, 55, '_menu_item_menu_item_parent', '53'),
(246, 55, '_menu_item_object_id', '39'),
(247, 55, '_menu_item_object', 'page'),
(248, 55, '_menu_item_target', ''),
(249, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 55, '_menu_item_xfn', ''),
(251, 55, '_menu_item_url', ''),
(253, 56, '_menu_item_type', 'post_type'),
(254, 56, '_menu_item_menu_item_parent', '53'),
(255, 56, '_menu_item_object_id', '37'),
(256, 56, '_menu_item_object', 'page'),
(257, 56, '_menu_item_target', ''),
(258, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 56, '_menu_item_xfn', ''),
(260, 56, '_menu_item_url', ''),
(262, 57, '_menu_item_type', 'post_type'),
(263, 57, '_menu_item_menu_item_parent', '53'),
(264, 57, '_menu_item_object_id', '10'),
(265, 57, '_menu_item_object', 'page'),
(266, 57, '_menu_item_target', ''),
(267, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(268, 57, '_menu_item_xfn', ''),
(269, 57, '_menu_item_url', ''),
(270, 58, '_edit_last', '1'),
(271, 58, '_edit_lock', '1524761992:1'),
(272, 58, '_wp_page_template', 'page-attoverview.php'),
(273, 60, '_edit_last', '1'),
(274, 60, '_wp_page_template', 'default'),
(275, 60, '_edit_lock', '1524688343:1'),
(276, 62, '_menu_item_type', 'custom'),
(277, 62, '_menu_item_menu_item_parent', '0'),
(278, 62, '_menu_item_object_id', '62'),
(279, 62, '_menu_item_object', 'custom'),
(280, 62, '_menu_item_target', ''),
(281, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 62, '_menu_item_xfn', ''),
(283, 62, '_menu_item_url', ''),
(285, 63, '_menu_item_type', 'post_type'),
(286, 63, '_menu_item_menu_item_parent', '62'),
(287, 63, '_menu_item_object_id', '60'),
(288, 63, '_menu_item_object', 'page'),
(289, 63, '_menu_item_target', ''),
(290, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 63, '_menu_item_xfn', ''),
(292, 63, '_menu_item_url', ''),
(294, 64, '_menu_item_type', 'post_type'),
(295, 64, '_menu_item_menu_item_parent', '62'),
(296, 64, '_menu_item_object_id', '58'),
(297, 64, '_menu_item_object', 'page'),
(298, 64, '_menu_item_target', ''),
(299, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 64, '_menu_item_xfn', ''),
(301, 64, '_menu_item_url', ''),
(302, 66, '_edit_last', '1'),
(303, 66, '_edit_lock', '1524761986:1'),
(304, 66, '_wp_page_template', 'page-videocenter.php'),
(305, 68, '_menu_item_type', 'post_type'),
(306, 68, '_menu_item_menu_item_parent', '28'),
(307, 68, '_menu_item_object_id', '66'),
(308, 68, '_menu_item_object', 'page'),
(309, 68, '_menu_item_target', ''),
(310, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(311, 68, '_menu_item_xfn', ''),
(312, 68, '_menu_item_url', ''),
(313, 69, '_menu_item_type', 'post_type'),
(314, 69, '_menu_item_menu_item_parent', '43'),
(315, 69, '_menu_item_object_id', '41'),
(316, 69, '_menu_item_object', 'page'),
(317, 69, '_menu_item_target', ''),
(318, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(319, 69, '_menu_item_xfn', ''),
(320, 69, '_menu_item_url', ''),
(322, 70, '_menu_item_type', 'post_type'),
(323, 70, '_menu_item_menu_item_parent', '43'),
(324, 70, '_menu_item_object_id', '39'),
(325, 70, '_menu_item_object', 'page'),
(326, 70, '_menu_item_target', ''),
(327, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(328, 70, '_menu_item_xfn', ''),
(329, 70, '_menu_item_url', ''),
(331, 71, '_menu_item_type', 'post_type'),
(332, 71, '_menu_item_menu_item_parent', '43'),
(333, 71, '_menu_item_object_id', '37'),
(334, 71, '_menu_item_object', 'page'),
(335, 71, '_menu_item_target', ''),
(336, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(337, 71, '_menu_item_xfn', ''),
(338, 71, '_menu_item_url', ''),
(340, 72, '_menu_item_type', 'post_type'),
(341, 72, '_menu_item_menu_item_parent', '43'),
(342, 72, '_menu_item_object_id', '41'),
(343, 72, '_menu_item_object', 'page'),
(344, 72, '_menu_item_target', ''),
(345, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(346, 72, '_menu_item_xfn', ''),
(347, 72, '_menu_item_url', ''),
(349, 73, '_menu_item_type', 'post_type'),
(350, 73, '_menu_item_menu_item_parent', '43'),
(351, 73, '_menu_item_object_id', '41'),
(352, 73, '_menu_item_object', 'page'),
(353, 73, '_menu_item_target', ''),
(354, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(355, 73, '_menu_item_xfn', ''),
(356, 73, '_menu_item_url', ''),
(358, 74, '_menu_item_type', 'post_type'),
(359, 74, '_menu_item_menu_item_parent', '43'),
(360, 74, '_menu_item_object_id', '39'),
(361, 74, '_menu_item_object', 'page'),
(362, 74, '_menu_item_target', ''),
(363, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(364, 74, '_menu_item_xfn', ''),
(365, 74, '_menu_item_url', ''),
(367, 75, '_menu_item_type', 'post_type'),
(368, 75, '_menu_item_menu_item_parent', '43'),
(369, 75, '_menu_item_object_id', '37'),
(370, 75, '_menu_item_object', 'page'),
(371, 75, '_menu_item_target', ''),
(372, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(373, 75, '_menu_item_xfn', ''),
(374, 75, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-11 18:05:45', '2018-04-11 18:05:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-04-11 18:06:03', '2018-04-11 18:06:03', '', 0, 'http://begam.com/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-11 18:05:45', '2018-04-11 18:05:45', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://begam.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-04-11 18:06:06', '2018-04-11 18:06:06', '', 0, 'http://begam.com/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-04-11 18:06:03', '2018-04-11 18:06:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-11 18:06:03', '2018-04-11 18:06:03', '', 1, 'http://begam.com/2018/04/11/1-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2018-04-11 18:06:06', '2018-04-11 18:06:06', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://begam.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-11 18:06:06', '2018-04-11 18:06:06', '', 2, 'http://begam.com/2018/04/11/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-11 18:06:16', '2018-04-11 18:06:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-11 18:06:16', '2018-04-11 18:06:16', '', 0, 'http://begam.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-04-11 18:06:16', '2018-04-11 18:06:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-11 18:06:16', '2018-04-11 18:06:16', '', 6, 'http://begam.com/2018/04/11/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-23 21:53:16', '2018-04-23 21:53:16', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-04-23 21:53:16', '2018-04-23 21:53:16', '', 0, 'http://begam.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-04-23 21:53:16', '2018-04-23 21:53:16', '', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-23 21:53:16', '2018-04-23 21:53:16', '', 8, 'http://begam.com/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-23 21:53:39', '2018-04-23 21:53:39', '', 'Practice Area', '', 'publish', 'closed', 'closed', '', 'practice-area', '', '', '2018-04-27 17:59:36', '2018-04-27 17:59:36', '', 0, 'http://begam.com/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-04-23 21:53:39', '2018-04-23 21:53:39', '', 'Practice Area', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-23 21:53:39', '2018-04-23 21:53:39', '', 10, 'http://begam.com/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-04-23 21:53:49', '2018-04-23 21:53:49', '', 'Practice Areas', '', 'publish', 'closed', 'closed', '', 'practice-areas', '', '', '2018-04-27 17:59:26', '2018-04-27 17:59:26', '', 0, 'http://begam.com/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-04-23 21:53:49', '2018-04-23 21:53:49', '', 'Practice Areas', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-23 21:53:49', '2018-04-23 21:53:49', '', 12, 'http://begam.com/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-23 21:54:04', '2018-04-23 21:54:04', '', 'Case Results', '', 'publish', 'closed', 'closed', '', 'case-results', '', '', '2018-04-24 22:38:16', '2018-04-24 22:38:16', '', 0, 'http://begam.com/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-04-23 21:54:04', '2018-04-23 21:54:04', '', 'Case Results', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-04-23 21:54:04', '2018-04-23 21:54:04', '', 14, 'http://begam.com/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-04-23 21:54:13', '2018-04-23 21:54:13', '', 'Client Reviews', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2018-04-26 15:38:43', '2018-04-26 15:38:43', '', 0, 'http://begam.com/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-04-23 21:54:13', '2018-04-23 21:54:13', '', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-23 21:54:13', '2018-04-23 21:54:13', '', 16, 'http://begam.com/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-04-23 21:54:20', '2018-04-23 21:54:20', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-04-23 21:54:20', '2018-04-23 21:54:20', '', 0, 'http://begam.com/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-04-23 21:54:20', '2018-04-23 21:54:20', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-04-23 21:54:20', '2018-04-23 21:54:20', '', 18, 'http://begam.com/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=22', 11, 'nav_menu_item', '', 0),
(23, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=23', 13, 'nav_menu_item', '', 0),
(24, 1, '2018-04-23 21:54:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-23 21:54:25', '0000-00-00 00:00:00', '', 0, 'http://begam.com/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=25', 6, 'nav_menu_item', '', 0),
(26, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', '', 'View All', '', 'publish', 'closed', 'closed', '', 'view-all', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=26', 7, 'nav_menu_item', '', 0),
(27, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=27', 12, 'nav_menu_item', '', 0),
(28, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2018-04-23 21:56:04', '2018-04-23 21:56:04', '', 'Practice Areas', '', 'publish', 'closed', 'closed', '', 'practice-areas', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2018-04-24 16:58:46', '2018-04-24 16:58:46', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Morbi dictum sapien, ultrices sed eros arcu vitae, aliquam velit et augue', '', 'publish', 'open', 'open', '', 'morbi-dictum-sapien-ultrices-sed-eros-arcu-vitae-aliquam-velit-et-augue', '', '', '2018-04-24 16:58:46', '2018-04-24 16:58:46', '', 0, 'http://begam.com/?p=30', 0, 'post', '', 0),
(31, 1, '2018-04-24 16:58:46', '2018-04-24 16:58:46', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Morbi dictum sapien, ultrices sed eros arcu vitae, aliquam velit et augue', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-04-24 16:58:46', '2018-04-24 16:58:46', '', 30, 'http://begam.com/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-04-24 16:59:08', '2018-04-24 16:59:08', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dictum sapien, ultrices sed eros arcu vitae, aliquam velit et augue', '', 'publish', 'open', 'open', '', 'dictum-sapien-ultrices-sed-eros-arcu-vitae-aliquam-velit-et-augue', '', '', '2018-04-24 16:59:08', '2018-04-24 16:59:08', '', 0, 'http://begam.com/?p=32', 0, 'post', '', 0),
(33, 1, '2018-04-24 16:59:08', '2018-04-24 16:59:08', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dictum sapien, ultrices sed eros arcu vitae, aliquam velit et augue', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-04-24 16:59:08', '2018-04-24 16:59:08', '', 32, 'http://begam.com/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-04-24 16:59:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-24 16:59:14', '0000-00-00 00:00:00', '', 0, 'http://begam.com/?p=34', 0, 'post', '', 0),
(35, 1, '2018-04-24 16:59:41', '2018-04-24 16:59:41', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Morbi dictum sapien, ultrices sed eros arcu vitae, aliquam velit et augue', '', 'publish', 'open', 'open', '', 'morbi-dictum-sapien-ultrices-sed-eros-arcu-vitae-aliquam-velit-et-augue-2', '', '', '2018-04-24 16:59:41', '2018-04-24 16:59:41', '', 0, 'http://begam.com/?p=35', 0, 'post', '', 0),
(36, 1, '2018-04-24 16:59:41', '2018-04-24 16:59:41', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Morbi dictum sapien, ultrices sed eros arcu vitae, aliquam velit et augue', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-04-24 16:59:41', '2018-04-24 16:59:41', '', 35, 'http://begam.com/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-04-24 17:34:20', '2018-04-24 17:34:20', '', 'PA Page Two', '', 'publish', 'closed', 'closed', '', 'pa-page-two', '', '', '2018-04-24 17:34:20', '2018-04-24 17:34:20', '', 0, 'http://begam.com/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-04-24 17:34:20', '2018-04-24 17:34:20', '', 'PA Page Two', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-04-24 17:34:20', '2018-04-24 17:34:20', '', 37, 'http://begam.com/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-04-24 17:34:28', '2018-04-24 17:34:28', '', 'PA Page Three', '', 'publish', 'closed', 'closed', '', 'pa-page-three', '', '', '2018-04-24 17:34:28', '2018-04-24 17:34:28', '', 0, 'http://begam.com/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-04-24 17:34:28', '2018-04-24 17:34:28', '', 'PA Page Three', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-04-24 17:34:28', '2018-04-24 17:34:28', '', 39, 'http://begam.com/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-04-24 17:34:39', '2018-04-24 17:34:39', '', 'PA Page Four', '', 'publish', 'closed', 'closed', '', 'pa-page-four', '', '', '2018-04-24 17:34:39', '2018-04-24 17:34:39', '', 0, 'http://begam.com/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-04-24 17:34:39', '2018-04-24 17:34:39', '', 'PA Page Four', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-04-24 17:34:39', '2018-04-24 17:34:39', '', 41, 'http://begam.com/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-04-24 17:36:26', '2018-04-24 17:36:26', '', 'PA One', '', 'publish', 'closed', 'closed', '', 'pa-one', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2018-04-24 17:36:26', '2018-04-24 17:36:26', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=44', 2, 'nav_menu_item', '', 0),
(46, 1, '2018-04-24 17:36:26', '2018-04-24 17:36:26', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=46', 3, 'nav_menu_item', '', 0),
(48, 1, '2018-04-24 17:36:26', '2018-04-24 17:36:26', '', 'PA Two', '', 'publish', 'closed', 'closed', '', 'pa-two', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=48', 11, 'nav_menu_item', '', 0),
(49, 1, '2018-04-24 17:36:26', '2018-04-24 17:36:26', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=49', 12, 'nav_menu_item', '', 0),
(50, 1, '2018-04-24 17:36:26', '2018-04-24 17:36:26', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=50', 13, 'nav_menu_item', '', 0),
(51, 1, '2018-04-24 17:36:26', '2018-04-24 17:36:26', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=51', 14, 'nav_menu_item', '', 0),
(52, 1, '2018-04-24 17:36:26', '2018-04-24 17:36:26', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=52', 15, 'nav_menu_item', '', 0),
(53, 1, '2018-04-24 20:43:01', '2018-04-24 20:43:01', '', 'PA Page Three', '', 'publish', 'closed', 'closed', '', 'pa-page-three', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=53', 16, 'nav_menu_item', '', 0),
(54, 1, '2018-04-24 20:43:01', '2018-04-24 20:43:01', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=54', 17, 'nav_menu_item', '', 0),
(55, 1, '2018-04-24 20:43:01', '2018-04-24 20:43:01', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=55', 18, 'nav_menu_item', '', 0),
(56, 1, '2018-04-24 20:43:01', '2018-04-24 20:43:01', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=56', 19, 'nav_menu_item', '', 0),
(57, 1, '2018-04-24 20:43:01', '2018-04-24 20:43:01', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=57', 20, 'nav_menu_item', '', 0),
(58, 1, '2018-04-25 20:34:19', '2018-04-25 20:34:19', '', 'Attorneys', '', 'publish', 'closed', 'closed', '', 'attorneys', '', '', '2018-04-26 16:59:52', '2018-04-26 16:59:52', '', 0, 'http://begam.com/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-04-25 20:34:19', '2018-04-25 20:34:19', '', 'Attorneys', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-04-25 20:34:19', '2018-04-25 20:34:19', '', 58, 'http://begam.com/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-04-25 20:34:36', '2018-04-25 20:34:36', '', 'Attorney', '', 'publish', 'closed', 'closed', '', 'attorney', '', '', '2018-04-25 20:34:36', '2018-04-25 20:34:36', '', 0, 'http://begam.com/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-04-25 20:34:36', '2018-04-25 20:34:36', '', 'Attorney', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-04-25 20:34:36', '2018-04-25 20:34:36', '', 60, 'http://begam.com/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-04-25 20:35:37', '2018-04-25 20:35:37', '', 'Attorneys', '', 'publish', 'closed', 'closed', '', 'attorneys', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=62', 8, 'nav_menu_item', '', 0),
(63, 1, '2018-04-25 20:35:37', '2018-04-25 20:35:37', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=63', 9, 'nav_menu_item', '', 0),
(64, 1, '2018-04-25 20:35:37', '2018-04-25 20:35:37', '', 'View All', '', 'publish', 'closed', 'closed', '', 'view-all-2', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=64', 10, 'nav_menu_item', '', 0),
(65, 1, '2018-04-26 15:38:43', '2018-04-26 15:38:43', '', 'Client Reviews', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-04-26 15:38:43', '2018-04-26 15:38:43', '', 16, 'http://begam.com/16-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-04-26 16:57:30', '2018-04-26 16:57:30', '', 'Video Center', '', 'publish', 'closed', 'closed', '', 'video-center', '', '', '2018-04-26 16:59:46', '2018-04-26 16:59:46', '', 0, 'http://begam.com/?page_id=66', 0, 'page', '', 0),
(67, 1, '2018-04-26 16:57:30', '2018-04-26 16:57:30', '', 'Video Center', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-04-26 16:57:30', '2018-04-26 16:57:30', '', 66, 'http://begam.com/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-04-26 16:57:46', '2018-04-26 16:57:46', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2018-04-26 16:58:40', '2018-04-26 16:58:40', '', 0, 'http://begam.com/?p=68', 4, 'nav_menu_item', '', 0),
(69, 1, '2018-04-27 20:27:40', '2018-04-27 20:27:40', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=69', 4, 'nav_menu_item', '', 0),
(70, 1, '2018-04-27 20:27:40', '2018-04-27 20:27:40', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2018-04-27 20:27:40', '2018-04-27 20:27:40', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=71', 10, 'nav_menu_item', '', 0),
(72, 1, '2018-04-27 20:27:40', '2018-04-27 20:27:40', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=72', 6, 'nav_menu_item', '', 0),
(73, 1, '2018-04-27 20:30:07', '2018-04-27 20:30:07', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=73', 7, 'nav_menu_item', '', 0),
(74, 1, '2018-04-27 20:30:07', '2018-04-27 20:30:07', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=74', 8, 'nav_menu_item', '', 0),
(75, 1, '2018-04-27 20:30:07', '2018-04-27 20:30:07', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2018-04-27 21:27:07', '2018-04-27 21:27:07', '', 0, 'http://begam.com/?p=75', 9, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form`
--

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_meta`
--

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_view`
--

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_incomplete_submissions`
--

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead`
--

CREATE TABLE `wp_rg_lead` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail`
--

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail_long`
--

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_meta`
--

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_notes`
--

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'PA Menu', 'pa-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 1, 0),
(32, 1, 0),
(35, 1, 0),
(43, 3, 0),
(44, 3, 0),
(46, 3, 0),
(48, 3, 0),
(49, 3, 0),
(50, 3, 0),
(51, 3, 0),
(52, 3, 0),
(53, 3, 0),
(54, 3, 0),
(55, 3, 0),
(56, 3, 0),
(57, 3, 0),
(62, 2, 0),
(63, 2, 0),
(64, 2, 0),
(68, 2, 0),
(69, 3, 0),
(70, 3, 0),
(71, 3, 0),
(72, 3, 0),
(73, 3, 0),
(74, 3, 0),
(75, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 13),
(3, 3, 'nav_menu', '', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', '1p21.admin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"fdf1bf9eb9b325648c2fe3f6b4c5ed5c7ad45cbd1c0d0b8c37d7b661eb4ce268\";a:4:{s:10:\"expiration\";i:1524929846;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1524757046;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'gform_recent_forms', 'a:1:{i:0;s:1:\"1\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, '1p21.admin', '$P$BpZvE0aVDDzmRNuFUTOynYFlABlfxv.', '1p21-admin', 'garrett@1pointinteractive.com', '', '2018-04-11 18:05:45', '', 0, '1p21.admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_gf_draft_submissions`
--
ALTER TABLE `wp_gf_draft_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `form_id_status` (`form_id`,`status`);

--
-- Indexes for table `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Indexes for table `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `entry_user_key` (`entry_id`,`user_id`);

--
-- Indexes for table `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gf_form_meta`
--
ALTER TABLE `wp_gf_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rg_form_meta`
--
ALTER TABLE `wp_rg_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_incomplete_submissions`
--
ALTER TABLE `wp_rg_incomplete_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_field_number` (`lead_id`,`field_number`),
  ADD KEY `lead_field_value` (`value`(191));

--
-- Indexes for table `wp_rg_lead_detail_long`
--
ALTER TABLE `wp_rg_lead_detail_long`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `form_id_meta_key` (`form_id`,`meta_key`(191));

--
-- Indexes for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_user_key` (`lead_id`,`user_id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
