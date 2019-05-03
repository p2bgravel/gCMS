-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2019 at 07:59 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_applications`
--

CREATE TABLE `cms_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_applications`
--

INSERT INTO `cms_applications` (`id`, `name`, `reference`, `domain`, `enabled`) VALUES
(1, 'gCMS', 'gcms', '127.0.0.1:8000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_applications_domains`
--

CREATE TABLE `cms_applications_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_migrations`
--

CREATE TABLE `cms_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_migrations`
--

INSERT INTO `cms_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171404_create_applications_table', 1),
(2, '2015_03_15_171506_create_applications_domains_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_addons_extensions`
--

CREATE TABLE `gcms_addons_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_addons_extensions`
--

INSERT INTO `gcms_addons_extensions` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.extension.default_authenticator', 1, 1),
(2, 'anomaly.extension.default_page_handler', 1, 1),
(3, 'anomaly.extension.html_block', 1, 1),
(4, 'anomaly.extension.local_storage_adapter', 1, 1),
(5, 'anomaly.extension.page_link_type', 1, 1),
(6, 'anomaly.extension.robots', 1, 1),
(7, 'anomaly.extension.sitemap', 1, 1),
(8, 'anomaly.extension.throttle_security_check', 1, 1),
(9, 'anomaly.extension.url_link_type', 1, 1),
(10, 'anomaly.extension.user_security_check', 1, 1),
(11, 'anomaly.extension.wysiwyg_block', 1, 1),
(12, 'anomaly.extension.xml_feed_widget', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_addons_modules`
--

CREATE TABLE `gcms_addons_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_addons_modules`
--

INSERT INTO `gcms_addons_modules` (`id`, `namespace`, `installed`, `enabled`) VALUES
(1, 'anomaly.module.addons', 1, 1),
(2, 'anomaly.module.blocks', 1, 1),
(3, 'anomaly.module.configuration', 1, 1),
(4, 'anomaly.module.dashboard', 1, 1),
(5, 'anomaly.module.files', 1, 1),
(6, 'anomaly.module.navigation', 1, 1),
(7, 'anomaly.module.pages', 1, 1),
(8, 'anomaly.module.posts', 1, 1),
(9, 'anomaly.module.preferences', 1, 1),
(10, 'anomaly.module.redirects', 1, 1),
(11, 'anomaly.module.repeaters', 1, 1),
(12, 'anomaly.module.settings', 1, 1),
(13, 'anomaly.module.users', 1, 1),
(14, 'anomaly.module.variables', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_blocks_areas`
--

CREATE TABLE `gcms_blocks_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_blocks_areas`
--

INSERT INTO `gcms_blocks_areas` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `slug`) VALUES
(1, 1, '2019-05-03 00:49:58', NULL, '2019-05-03 00:49:58', NULL, 'footer');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_blocks_areas_translations`
--

CREATE TABLE `gcms_blocks_areas_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_blocks_areas_translations`
--

INSERT INTO `gcms_blocks_areas_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2019-05-03 00:49:58', NULL, '2019-05-03 00:49:58', NULL, 'en', 'Footer', 'Add blocks here to display in your footer.');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_blocks_blocks`
--

CREATE TABLE `gcms_blocks_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `area_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_title` tinyint(1) DEFAULT '1',
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_blocks_blocks_translations`
--

CREATE TABLE `gcms_blocks_blocks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_blocks_types`
--

CREATE TABLE `gcms_blocks_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_layout` longtext COLLATE utf8_unicode_ci NOT NULL,
  `wrapper_layout` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_blocks_types_translations`
--

CREATE TABLE `gcms_blocks_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_cache`
--

CREATE TABLE `gcms_cache` (
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_configuration_configuration`
--

CREATE TABLE `gcms_configuration_configuration` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_configuration_configuration`
--

INSERT INTO `gcms_configuration_configuration` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `scope`, `key`, `value`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, '1', 'anomaly.extension.xml_feed_widget::url', 'http://www.pyrocms.com/posts/rss.xml');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_dashboard_dashboards`
--

CREATE TABLE `gcms_dashboard_dashboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_dashboard_dashboards`
--

INSERT INTO `gcms_dashboard_dashboards` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, NULL, 'welcome', '24');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_dashboard_dashboards_allowed_roles`
--

CREATE TABLE `gcms_dashboard_dashboards_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_dashboard_dashboards_translations`
--

CREATE TABLE `gcms_dashboard_dashboards_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_dashboard_dashboards_translations`
--

INSERT INTO `gcms_dashboard_dashboards_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, 'en', 'Welcome', 'This is the default dashboard for PyroCMS.');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_dashboard_widgets`
--

CREATE TABLE `gcms_dashboard_widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column` int(11) NOT NULL DEFAULT '1',
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_dashboard_widgets`
--

INSERT INTO `gcms_dashboard_widgets` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `extension`, `column`, `dashboard_id`, `pinned`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, NULL, 'anomaly.extension.xml_feed_widget', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_dashboard_widgets_allowed_roles`
--

CREATE TABLE `gcms_dashboard_widgets_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_dashboard_widgets_translations`
--

CREATE TABLE `gcms_dashboard_widgets_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_dashboard_widgets_translations`
--

INSERT INTO `gcms_dashboard_widgets_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, 'en', 'Recent News', 'Recent news from http://pyrocms.com/');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_failed_jobs`
--

CREATE TABLE `gcms_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_disks`
--

CREATE TABLE `gcms_files_disks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adapter` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_files_disks`
--

INSERT INTO `gcms_files_disks` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `adapter`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, NULL, 'local', 'anomaly.extension.local_storage_adapter');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_disks_translations`
--

CREATE TABLE `gcms_files_disks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_files_disks_translations`
--

INSERT INTO `gcms_files_disks_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, 'en', 'Local', 'A local (public) storage disk.');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_documents`
--

CREATE TABLE `gcms_files_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_documents_translations`
--

CREATE TABLE `gcms_files_documents_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_files`
--

CREATE TABLE `gcms_files_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_folders`
--

CREATE TABLE `gcms_files_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_types` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_files_folders`
--

INSERT INTO `gcms_files_folders` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `disk_id`, `slug`, `allowed_types`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, NULL, 1, 'images', 'a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}'),
(2, 2, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, NULL, 1, 'documents', 'a:2:{i:0;s:3:\"pdf\";i:1;s:4:\"docx\";}');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_folders_translations`
--

CREATE TABLE `gcms_files_folders_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_files_folders_translations`
--

INSERT INTO `gcms_files_folders_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2019-05-03 00:49:59', NULL, '2019-05-03 00:49:59', NULL, 'en', 'Images', 'A folder for images.'),
(2, 2, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, 'en', 'Documents', 'A folder for documents.');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_images`
--

CREATE TABLE `gcms_files_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_files_images_translations`
--

CREATE TABLE `gcms_files_images_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_html_block_blocks`
--

CREATE TABLE `gcms_html_block_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_html_block_blocks_translations`
--

CREATE TABLE `gcms_html_block_blocks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_jobs`
--

CREATE TABLE `gcms_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_migrations`
--

CREATE TABLE `gcms_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_migrations`
--

INSERT INTO `gcms_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2015_03_15_171506_create_jobs_table', 1),
(2, '2015_03_15_171507_create_failed_jobs_table', 1),
(3, '2015_03_15_171508_create_sessions_table', 1),
(4, '2015_03_15_171509_create_cache_table', 1),
(5, '2015_03_15_171620_create_streams_tables', 1),
(6, '2015_03_15_171646_create_fields_tables', 1),
(7, '2015_03_15_171720_create_assignments_tables', 1),
(8, '2015_03_15_171838_create_modules_table', 1),
(9, '2015_03_15_171926_create_extensions_table', 1),
(10, '2016_08_30_185635_create_notifications_table', 1),
(11, '2016_09_02_164448_add_searchable_column_to_streams', 1),
(12, '2016_11_11_154228_append_id_to_user_meta_columns', 1),
(13, '2017_05_20_184629_add_sort_order_column_to_streams', 1),
(14, '2017_05_20_185657_add_searchable_column_to_assignments', 1),
(15, '2018_02_05_185635_create_versions_table', 1),
(16, '2018_04_13_144412_add_versionable_column_to_streams', 1),
(17, '2018_04_13_144422_add_versionable_column_to_assignments', 1),
(18, '2018_05_03_020251_create_locks_table', 1),
(19, '2015_07_09_071754_anomaly.module.blocks__create_blocks_fields', 2),
(20, '2018_03_20_224637_anomaly.module.blocks__create_areas_stream', 2),
(21, '2018_03_20_224638_anomaly.module.blocks__create_blocks_stream', 2),
(22, '2018_04_29_153855_anomaly.module.blocks__add_display_title_field_to_blocks', 2),
(23, '2018_10_30_181203_anomaly.module.blocks__create_types_fields', 2),
(24, '2018_10_30_181220_anomaly.module.blocks__create_types_stream', 2),
(25, '2018_10_30_184029_anomaly.module.blocks__add_type_to_blocks', 2),
(26, '2015_03_25_091755_anomaly.module.configuration__create_configuration_fields', 3),
(27, '2015_03_25_091845_anomaly.module.configuration__create_configuration_stream', 3),
(28, '2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields', 4),
(29, '2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream', 4),
(30, '2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream', 4),
(31, '2015_03_05_021725_anomaly.module.files__create_files_fields', 5),
(32, '2015_03_05_022227_anomaly.module.files__create_disks_stream', 5),
(33, '2015_06_09_031343_anomaly.module.files__create_folders_stream', 5),
(34, '2015_06_09_031351_anomaly.module.files__create_files_stream', 5),
(35, '2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment', 5),
(36, '2016_09_02_175659_anomaly.module.files__make_files_searchable', 5),
(37, '2016_10_05_221741_anomaly.module.files__make_disks_sortable', 5),
(38, '2017_10_07_162244_anomaly.module.files__add_seo_fields_to_files', 5),
(39, '2015_05_21_061832_anomaly.module.navigation__create_navigation_fields', 6),
(40, '2015_05_21_062115_anomaly.module.navigation__create_menus_stream', 6),
(41, '2015_05_21_064952_anomaly.module.navigation__create_links_stream', 6),
(42, '2015_03_20_171947_anomaly.module.pages__create_pages_fields', 7),
(43, '2015_03_20_171955_anomaly.module.pages__create_pages_stream', 7),
(44, '2015_04_22_150211_anomaly.module.pages__create_types_stream', 7),
(45, '2016_09_02_175135_anomaly.module.pages__make_pages_searchable', 7),
(46, '2017_08_18_180652_anomaly.module.pages__remove_meta_keywords_field', 7),
(47, '2015_03_20_184103_anomaly.module.posts__create_posts_fields', 8),
(48, '2015_03_20_184141_anomaly.module.posts__create_categories_stream', 8),
(49, '2015_03_20_184148_anomaly.module.posts__create_posts_stream', 8),
(50, '2015_05_16_050818_anomaly.module.posts__create_types_stream', 8),
(51, '2016_09_02_175531_anomaly.module.posts__make_posts_searchable', 8),
(52, '2017_08_18_175445_anomaly.module.posts__remove_meta_keywords_field', 8),
(53, '2018_03_23_160615_anomaly.module.posts__add_metadata_fields_to_categories', 8),
(54, '2018_03_23_160625_anomaly.module.posts__add_metadata_fields_to_types', 8),
(55, '2015_02_27_101227_anomaly.module.preferences__create_preferences_fields', 9),
(56, '2015_02_27_101300_anomaly.module.preferences__create_preferences_streams', 9),
(57, '2016_11_16_151654_anomaly.module.preferences__update_user_related_config', 9),
(58, '2015_03_21_153325_anomaly.module.redirects__create_redirects_fields', 10),
(59, '2015_03_21_153326_anomaly.module.redirects__create_redirects_stream', 10),
(60, '2018_10_20_023542_anomaly.module.redirects__create_domains_stream', 10),
(61, '2015_02_27_101410_anomaly.module.settings__create_settings_fields', 11),
(62, '2015_02_27_101510_anomaly.module.settings__create_settings_stream', 11),
(63, '2015_02_27_101816_anomaly.module.users__create_users_fields', 12),
(64, '2015_02_27_101851_anomaly.module.users__create_users_stream', 12),
(65, '2015_02_27_101940_anomaly.module.users__create_roles_stream', 12),
(66, '2016_09_02_175848_anomaly.module.users__make_users_searchable', 12),
(67, '2018_03_22_010006_anomaly.extension.html_block__create_html_block_fields', 13),
(68, '2018_03_22_010509_anomaly.extension.html_block__create_blocks_stream', 13),
(69, '2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields', 14),
(70, '2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream', 14),
(71, '2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields', 15),
(72, '2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream', 15),
(73, '2018_03_22_020826_anomaly.extension.wysiwyg_block__create_wysiwyg_block_fields', 16),
(74, '2018_03_22_020834_anomaly.extension.wysiwyg_block__create_blocks_stream', 16);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_navigation_links`
--

CREATE TABLE `gcms_navigation_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_navigation_links`
--

INSERT INTO `gcms_navigation_links` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `menu_id`, `type`, `entry_id`, `entry_type`, `target`, `class`, `parent_id`) VALUES
(1, 1, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, NULL, 1, 'anomaly.extension.url_link_type', 1, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL),
(2, 2, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, NULL, 1, 'anomaly.extension.url_link_type', 2, 'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel', '_blank', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_navigation_links_allowed_roles`
--

CREATE TABLE `gcms_navigation_links_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_navigation_menus`
--

CREATE TABLE `gcms_navigation_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_navigation_menus`
--

INSERT INTO `gcms_navigation_menus` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, NULL, 'footer');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_navigation_menus_translations`
--

CREATE TABLE `gcms_navigation_menus_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_navigation_menus_translations`
--

INSERT INTO `gcms_navigation_menus_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, 'en', 'Footer', 'This is the main footer menu.');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_notifications`
--

CREATE TABLE `gcms_notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_pages_default_pages`
--

CREATE TABLE `gcms_pages_default_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_pages_default_pages`
--

INSERT INTO `gcms_pages_default_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, NULL),
(2, 2, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_pages_default_pages_translations`
--

CREATE TABLE `gcms_pages_default_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_pages_default_pages_translations`
--

INSERT INTO `gcms_pages_default_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, 'en', '<p>Welcome to PyroCMS!</p>'),
(2, 2, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, 'en', '<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_pages_pages`
--

CREATE TABLE `gcms_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1',
  `exact` tinyint(1) DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'theme::layouts/default.twig'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_pages_pages`
--

INSERT INTO `gcms_pages_pages` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `path`, `type_id`, `entry_id`, `entry_type`, `parent_id`, `visible`, `enabled`, `exact`, `home`, `theme_layout`) VALUES
(1, 1, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, NULL, 'CGNPskzVUo9sLqDHGuFxL2aE', 'welcome', '/', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 1, 'theme::layouts/default.twig'),
(2, 2, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, NULL, 'Ftv4OLixJQg1nQs9DlNK9Esc', 'contact', '/contact', 1, 2, 'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel', NULL, 1, 1, 1, 0, 'theme::layouts/default.twig');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_pages_pages_allowed_roles`
--

CREATE TABLE `gcms_pages_pages_allowed_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_pages_pages_translations`
--

CREATE TABLE `gcms_pages_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_pages_pages_translations`
--

INSERT INTO `gcms_pages_pages_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `meta_title`, `meta_description`) VALUES
(1, 1, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, 'en', 'Welcome', NULL, NULL),
(2, 2, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, 'en', 'Contact', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_pages_types`
--

CREATE TABLE `gcms_pages_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` longtext COLLATE utf8_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'anomaly.extension.default_page_handler'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_pages_types`
--

INSERT INTO `gcms_pages_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `theme_layout`, `layout`, `handler`) VALUES
(1, 1, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, NULL, 'default', 'theme::layouts/default.twig', '<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}', 'anomaly.extension.default_page_handler');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_pages_types_translations`
--

CREATE TABLE `gcms_pages_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(26) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_pages_types_translations`
--

INSERT INTO `gcms_pages_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2019-05-03 00:50:01', NULL, '2019-05-03 00:50:01', NULL, 'en', 'Default', 'A simple page type.');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_page_link_type_pages`
--

CREATE TABLE `gcms_page_link_type_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_page_link_type_pages_translations`
--

CREATE TABLE `gcms_page_link_type_pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_posts_categories`
--

CREATE TABLE `gcms_posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_posts_categories`
--

INSERT INTO `gcms_posts_categories` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`) VALUES
(1, 1, '2019-05-03 00:50:02', NULL, '2019-05-03 00:50:02', NULL, NULL, 'news');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_posts_categories_translations`
--

CREATE TABLE `gcms_posts_categories_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_posts_categories_translations`
--

INSERT INTO `gcms_posts_categories_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`, `meta_title`, `meta_description`) VALUES
(1, 1, '2019-05-03 00:50:02', NULL, '2019-05-03 00:50:02', NULL, 'en', 'News', 'Company news and updates.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_posts_default_posts`
--

CREATE TABLE `gcms_posts_default_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_posts_default_posts`
--

INSERT INTO `gcms_posts_default_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`) VALUES
(1, 1, '2019-05-03 00:50:02', NULL, '2019-05-03 00:50:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_posts_default_posts_translations`
--

CREATE TABLE `gcms_posts_default_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_posts_default_posts_translations`
--

INSERT INTO `gcms_posts_default_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `content`) VALUES
(1, 1, '2019-05-03 00:50:02', NULL, '2019-05-03 00:50:02', NULL, 'en', '<p>Welcome to PyroCMS!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_posts_posts`
--

CREATE TABLE `gcms_posts_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `tags` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_posts_posts`
--

INSERT INTO `gcms_posts_posts` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `str_id`, `slug`, `type_id`, `publish_at`, `author_id`, `entry_id`, `entry_type`, `category_id`, `featured`, `enabled`, `tags`) VALUES
(1, 1, '2019-05-03 00:50:02', NULL, '2019-05-03 00:50:02', NULL, NULL, 'FHTK2AxwPrQMCVEG', 'welcome-to-pyrocms', 1, '2019-05-03 00:50:02', 1, 1, 'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel', 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_posts_posts_translations`
--

CREATE TABLE `gcms_posts_posts_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_posts_posts_translations`
--

INSERT INTO `gcms_posts_posts_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `summary`, `meta_title`, `meta_description`) VALUES
(1, 1, '2019-05-03 00:50:02', NULL, '2019-05-03 00:50:02', NULL, 'en', 'Welcome to PyroCMS!', 'This is an example post to demonstrate the posts module.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_posts_types`
--

CREATE TABLE `gcms_posts_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` longtext COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_posts_types`
--

INSERT INTO `gcms_posts_types` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `layout`, `theme_layout`) VALUES
(1, 1, '2019-05-03 00:50:02', NULL, '2019-05-03 00:50:02', NULL, NULL, 'default', '{{ post.content.render|raw }}', 'theme::layouts/default.twig');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_posts_types_translations`
--

CREATE TABLE `gcms_posts_types_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_posts_types_translations`
--

INSERT INTO `gcms_posts_types_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`, `meta_title`, `meta_description`) VALUES
(1, 1, '2019-05-03 00:50:02', NULL, '2019-05-03 00:50:02', NULL, 'en', 'Default', 'A simple post type.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_preferences_preferences`
--

CREATE TABLE `gcms_preferences_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_redirects_domains`
--

CREATE TABLE `gcms_redirects_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_redirects_redirects`
--

CREATE TABLE `gcms_redirects_redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_sessions`
--

CREATE TABLE `gcms_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_settings_settings`
--

CREATE TABLE `gcms_settings_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_settings_settings`
--

INSERT INTO `gcms_settings_settings` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `key`, `value`) VALUES
(1, 1, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, 'streams::timezone', 'UTC'),
(2, 2, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, 'streams::domain', '127.0.0.1:8000'),
(3, 3, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, 'streams::default_locale', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_streams_assignments`
--

CREATE TABLE `gcms_streams_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  `versionable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_streams_assignments`
--

INSERT INTO `gcms_streams_assignments` (`id`, `sort_order`, `stream_id`, `field_id`, `config`, `unique`, `required`, `searchable`, `translatable`, `versionable`) VALUES
(1, 1, 1, 1, 'a:0:{}', 0, 1, 0, 1, 0),
(2, 2, 1, 3, 'a:0:{}', 1, 1, 0, 0, 0),
(3, 3, 1, 2, 'a:0:{}', 0, 0, 0, 1, 0),
(4, 4, 1, 8, 'a:0:{}', 0, 0, 0, 0, 0),
(5, 5, 2, 4, 'a:0:{}', 0, 0, 0, 1, 0),
(6, 6, 2, 6, 'a:0:{}', 0, 1, 0, 0, 0),
(7, 7, 2, 5, 'a:0:{}', 0, 1, 0, 0, 0),
(8, 8, 2, 9, 'a:0:{}', 0, 1, 0, 0, 0),
(9, 9, 2, 7, 'a:0:{}', 0, 0, 0, 0, 0),
(10, 10, 2, 10, 'a:0:{}', 0, 0, 0, 0, 0),
(11, 11, 3, 11, 'a:0:{}', 0, 1, 0, 0, 0),
(12, 12, 3, 1, 'a:0:{}', 1, 1, 0, 1, 0),
(13, 13, 3, 3, 'a:2:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";}', 1, 1, 0, 0, 0),
(14, 14, 3, 2, 'a:0:{}', 0, 0, 0, 1, 0),
(15, 15, 3, 12, 'a:0:{}', 0, 1, 0, 0, 0),
(16, 16, 3, 13, 'a:0:{}', 0, 1, 0, 0, 0),
(17, 17, 2, 14, 'a:0:{}', 0, 0, 0, 0, 0),
(18, 18, 4, 15, 'a:0:{}', 0, 1, 0, 0, 0),
(19, 19, 4, 16, 'a:0:{}', 0, 1, 0, 0, 0),
(20, 20, 4, 17, 'a:0:{}', 0, 0, 0, 0, 0),
(21, 21, 5, 18, 'a:0:{}', 0, 1, 0, 1, 0),
(22, 22, 5, 19, 'a:0:{}', 1, 1, 0, 0, 0),
(23, 23, 5, 20, 'a:0:{}', 0, 0, 0, 1, 0),
(24, 24, 5, 21, 'a:0:{}', 0, 1, 0, 0, 0),
(25, 25, 5, 27, 'a:0:{}', 0, 0, 0, 0, 0),
(26, 26, 6, 22, 'a:0:{}', 0, 1, 0, 1, 0),
(27, 27, 6, 20, 'a:0:{}', 0, 0, 0, 1, 0),
(28, 28, 6, 23, 'a:0:{}', 0, 1, 0, 0, 0),
(29, 29, 6, 24, 'a:0:{}', 0, 1, 0, 0, 0),
(30, 30, 6, 26, 'a:0:{}', 0, 1, 0, 0, 0),
(31, 31, 6, 27, 'a:0:{}', 0, 0, 0, 0, 0),
(32, 32, 6, 25, 'a:0:{}', 0, 0, 0, 0, 0),
(33, 33, 7, 28, 'a:0:{}', 1, 1, 0, 1, 0),
(34, 34, 7, 29, 'a:0:{}', 1, 1, 0, 0, 0),
(35, 35, 7, 30, 'a:0:{}', 0, 1, 0, 0, 0),
(36, 36, 7, 34, 'a:0:{}', 0, 0, 0, 1, 0),
(37, 37, 8, 32, 'a:0:{}', 0, 1, 0, 0, 0),
(38, 38, 8, 28, 'a:1:{s:3:\"max\";i:50;}', 0, 1, 0, 1, 0),
(39, 39, 8, 29, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 0, 0, 0),
(40, 40, 8, 34, 'a:0:{}', 0, 0, 0, 1, 0),
(41, 41, 8, 35, 'a:0:{}', 0, 0, 0, 0, 0),
(42, 42, 9, 28, 'a:0:{}', 0, 1, 0, 0, 0),
(43, 43, 9, 32, 'a:0:{}', 0, 1, 0, 0, 0),
(44, 44, 9, 31, 'a:0:{}', 0, 1, 0, 0, 0),
(45, 45, 9, 37, 'a:0:{}', 0, 1, 0, 0, 0),
(46, 46, 9, 41, 'a:0:{}', 0, 1, 0, 0, 0),
(47, 47, 9, 40, 'a:0:{}', 0, 1, 0, 0, 0),
(48, 48, 9, 33, 'a:0:{}', 0, 0, 0, 0, 0),
(49, 49, 9, 36, 'a:0:{}', 0, 0, 0, 0, 0),
(50, 50, 9, 39, 'a:0:{}', 0, 0, 0, 0, 0),
(51, 51, 9, 38, 'a:0:{}', 0, 0, 0, 0, 0),
(52, 52, 9, 42, 'a:0:{}', 0, 0, 0, 1, 0),
(53, 53, 9, 43, 'a:0:{}', 0, 0, 0, 1, 0),
(54, 54, 9, 44, 'a:0:{}', 0, 0, 0, 1, 0),
(55, 55, 9, 34, 'a:0:{}', 0, 0, 0, 1, 0),
(56, 56, 10, 45, 'a:0:{}', 1, 1, 0, 1, 0),
(57, 57, 10, 49, 'a:0:{}', 1, 1, 0, 0, 0),
(58, 58, 10, 47, 'a:0:{}', 0, 0, 0, 1, 0),
(59, 59, 11, 50, 'a:0:{}', 0, 1, 0, 0, 0),
(60, 60, 11, 53, 'a:0:{}', 0, 1, 0, 0, 0),
(61, 61, 11, 48, 'a:0:{}', 0, 1, 0, 0, 0),
(62, 62, 11, 54, 'a:0:{}', 0, 1, 0, 0, 0),
(63, 63, 11, 46, 'a:0:{}', 0, 0, 0, 0, 0),
(64, 64, 11, 51, 'a:0:{}', 0, 0, 0, 0, 0),
(65, 65, 11, 52, 'a:0:{}', 0, 0, 0, 0, 0),
(66, 66, 12, 55, 'a:0:{}', 0, 1, 0, 0, 0),
(67, 67, 12, 56, 'a:0:{}', 0, 1, 0, 1, 0),
(68, 68, 12, 57, 'a:0:{}', 0, 1, 0, 0, 0),
(69, 69, 12, 59, 'a:0:{}', 0, 1, 0, 0, 0),
(70, 70, 12, 69, 'a:0:{}', 0, 1, 0, 0, 0),
(71, 71, 12, 73, 'a:0:{}', 0, 0, 0, 0, 0),
(72, 72, 12, 67, 'a:0:{}', 0, 0, 0, 0, 0),
(73, 73, 12, 71, 'a:0:{}', 0, 0, 0, 0, 0),
(74, 74, 12, 60, 'a:0:{}', 0, 0, 0, 0, 0),
(75, 75, 12, 72, 'a:0:{}', 0, 0, 0, 0, 0),
(76, 76, 12, 61, 'a:0:{}', 0, 0, 0, 0, 0),
(77, 77, 12, 62, 'a:0:{}', 0, 0, 0, 1, 0),
(78, 78, 12, 63, 'a:0:{}', 0, 0, 0, 1, 0),
(80, 80, 12, 68, 'a:0:{}', 0, 0, 0, 0, 0),
(81, 81, 12, 66, 'a:0:{}', 0, 0, 0, 0, 0),
(82, 82, 13, 74, 'a:1:{s:3:\"max\";i:26;}', 1, 1, 0, 1, 0),
(83, 83, 13, 57, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:26;}', 1, 1, 0, 0, 0),
(84, 84, 13, 75, 'a:0:{}', 0, 0, 0, 1, 0),
(85, 85, 13, 68, 'a:0:{}', 0, 1, 0, 0, 0),
(86, 86, 13, 65, 'a:0:{}', 0, 1, 0, 0, 0),
(87, 87, 13, 70, 'a:0:{}', 0, 1, 0, 0, 0),
(88, 87, 14, 77, 'a:0:{}', 1, 1, 0, 1, 0),
(89, 88, 14, 79, 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1, 1, 0, 0, 0),
(90, 89, 14, 84, 'a:0:{}', 0, 0, 0, 1, 0),
(91, 90, 15, 76, 'a:0:{}', 1, 1, 0, 0, 0),
(92, 91, 15, 78, 'a:0:{}', 0, 1, 0, 1, 0),
(93, 92, 15, 83, 'a:0:{}', 0, 0, 0, 1, 0),
(94, 93, 15, 79, 'a:0:{}', 1, 1, 0, 0, 0),
(95, 94, 15, 81, 'a:0:{}', 0, 1, 0, 0, 0),
(96, 95, 15, 85, 'a:0:{}', 0, 1, 0, 0, 0),
(97, 96, 15, 87, 'a:0:{}', 0, 1, 0, 0, 0),
(98, 97, 15, 86, 'a:0:{}', 0, 1, 0, 0, 0),
(99, 98, 15, 92, 'a:0:{}', 0, 0, 0, 1, 0),
(100, 99, 15, 93, 'a:0:{}', 0, 0, 0, 1, 0),
(101, 100, 15, 89, 'a:0:{}', 0, 0, 0, 0, 0),
(102, 101, 15, 91, 'a:0:{}', 0, 0, 0, 0, 0),
(103, 102, 15, 90, 'a:0:{}', 0, 0, 0, 0, 0),
(104, 103, 15, 82, 'a:0:{}', 0, 0, 0, 0, 0),
(105, 104, 16, 77, 'a:1:{s:3:\"max\";i:50;}', 1, 1, 0, 1, 0),
(106, 105, 16, 79, 'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}', 1, 1, 0, 0, 0),
(107, 106, 16, 88, 'a:0:{}', 0, 1, 0, 0, 0),
(108, 107, 16, 96, 'a:0:{}', 0, 1, 0, 0, 0),
(109, 108, 16, 84, 'a:0:{}', 0, 0, 0, 1, 0),
(110, 109, 14, 92, 'a:0:{}', 0, 0, 0, 1, 0),
(111, 110, 14, 93, 'a:0:{}', 0, 0, 0, 1, 0),
(112, 111, 16, 92, 'a:0:{}', 0, 0, 0, 1, 0),
(113, 112, 16, 93, 'a:0:{}', 0, 0, 0, 1, 0),
(114, 113, 17, 97, 'a:0:{}', 0, 1, 0, 0, 0),
(115, 114, 17, 98, 'a:0:{}', 0, 1, 0, 0, 0),
(116, 115, 17, 99, 'a:0:{}', 0, 0, 0, 0, 0),
(117, 116, 18, 100, 'a:0:{}', 1, 1, 0, 0, 0),
(118, 117, 18, 101, 'a:0:{}', 0, 1, 0, 0, 0),
(119, 118, 18, 102, 'a:0:{}', 0, 1, 0, 0, 0),
(120, 119, 18, 103, 'a:0:{}', 0, 0, 0, 0, 0),
(121, 120, 19, 100, 'a:0:{}', 1, 1, 0, 0, 0),
(122, 121, 19, 101, 'a:0:{}', 0, 0, 0, 0, 0),
(123, 122, 19, 102, 'a:0:{}', 0, 1, 0, 0, 0),
(124, 123, 19, 103, 'a:0:{}', 0, 0, 0, 0, 0),
(125, 124, 20, 104, 'a:0:{}', 1, 1, 0, 0, 0),
(126, 125, 20, 105, 'a:0:{}', 0, 0, 0, 0, 0),
(127, 126, 21, 106, 'a:0:{}', 1, 1, 0, 0, 0),
(128, 127, 21, 107, 'a:0:{}', 1, 1, 0, 0, 0),
(129, 128, 21, 108, 'a:0:{}', 0, 1, 0, 0, 0),
(130, 129, 21, 126, 'a:0:{}', 0, 1, 0, 0, 0),
(131, 130, 21, 114, 'a:0:{}', 0, 1, 0, 0, 0),
(132, 131, 21, 115, 'a:0:{}', 0, 0, 0, 0, 0),
(133, 132, 21, 116, 'a:0:{}', 0, 0, 0, 0, 0),
(134, 133, 21, 123, 'a:0:{}', 0, 0, 0, 0, 0),
(135, 134, 21, 124, 'a:0:{}', 0, 0, 0, 0, 0),
(136, 135, 21, 113, 'a:0:{}', 0, 0, 0, 0, 0),
(137, 136, 21, 111, 'a:0:{}', 0, 0, 0, 0, 0),
(138, 137, 21, 109, 'a:0:{}', 0, 0, 0, 0, 0),
(139, 138, 21, 121, 'a:0:{}', 0, 0, 0, 0, 0),
(140, 139, 21, 119, 'a:0:{}', 0, 0, 0, 0, 0),
(141, 140, 21, 112, 'a:0:{}', 0, 0, 0, 0, 0),
(142, 141, 21, 110, 'a:0:{}', 0, 0, 0, 0, 0),
(143, 142, 22, 117, 'a:0:{}', 0, 1, 0, 1, 0),
(144, 143, 22, 125, 'a:0:{}', 1, 1, 0, 0, 0),
(145, 144, 22, 118, 'a:0:{}', 0, 0, 0, 1, 0),
(146, 145, 22, 113, 'a:0:{}', 0, 0, 0, 0, 0),
(147, 146, 23, 127, 'a:0:{}', 0, 0, 0, 1, 0),
(148, 147, 24, 128, 'a:0:{}', 0, 0, 0, 1, 0),
(149, 148, 24, 129, 'a:0:{}', 0, 1, 0, 0, 0),
(150, 149, 24, 130, 'a:0:{}', 0, 0, 0, 1, 0),
(151, 150, 25, 131, 'a:0:{}', 0, 1, 0, 1, 0),
(152, 151, 25, 132, 'a:0:{}', 0, 1, 0, 0, 0),
(153, 152, 25, 133, 'a:0:{}', 0, 0, 0, 1, 0),
(154, 153, 26, 134, 'a:0:{}', 0, 0, 0, 1, 0),
(155, 154, 29, 58, 'a:0:{}', 0, 0, 0, 1, 0),
(156, 155, 30, 80, 'a:0:{}', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_streams_assignments_translations`
--

CREATE TABLE `gcms_streams_assignments_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_streams_assignments_translations`
--

INSERT INTO `gcms_streams_assignments_translations` (`id`, `assignment_id`, `locale`, `label`, `warning`, `placeholder`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.blocks::field.name.label.areas', 'anomaly.module.blocks::field.name.warning.areas', 'anomaly.module.blocks::field.name.placeholder.areas', 'anomaly.module.blocks::field.name.instructions.areas'),
(2, 2, 'en', 'anomaly.module.blocks::field.slug.label.areas', 'anomaly.module.blocks::field.slug.warning.areas', 'anomaly.module.blocks::field.slug.placeholder.areas', 'anomaly.module.blocks::field.slug.instructions.areas'),
(3, 3, 'en', 'anomaly.module.blocks::field.description.label.areas', 'anomaly.module.blocks::field.description.warning.areas', 'anomaly.module.blocks::field.description.placeholder.areas', 'anomaly.module.blocks::field.description.instructions.areas'),
(4, 4, 'en', 'anomaly.module.blocks::field.blocks.label.areas', 'anomaly.module.blocks::field.blocks.warning.areas', 'anomaly.module.blocks::field.blocks.placeholder.areas', 'anomaly.module.blocks::field.blocks.instructions.areas'),
(5, 5, 'en', 'anomaly.module.blocks::field.title.label.blocks', 'anomaly.module.blocks::field.title.warning.blocks', 'anomaly.module.blocks::field.title.placeholder.blocks', 'anomaly.module.blocks::field.title.instructions.blocks'),
(6, 6, 'en', 'anomaly.module.blocks::field.area.label.blocks', 'anomaly.module.blocks::field.area.warning.blocks', 'anomaly.module.blocks::field.area.placeholder.blocks', 'anomaly.module.blocks::field.area.instructions.blocks'),
(7, 7, 'en', 'anomaly.module.blocks::field.field.label.blocks', 'anomaly.module.blocks::field.field.warning.blocks', 'anomaly.module.blocks::field.field.placeholder.blocks', 'anomaly.module.blocks::field.field.instructions.blocks'),
(8, 8, 'en', 'anomaly.module.blocks::field.extension.label.blocks', 'anomaly.module.blocks::field.extension.warning.blocks', 'anomaly.module.blocks::field.extension.placeholder.blocks', 'anomaly.module.blocks::field.extension.instructions.blocks'),
(9, 9, 'en', 'anomaly.module.blocks::field.entry.label.blocks', 'anomaly.module.blocks::field.entry.warning.blocks', 'anomaly.module.blocks::field.entry.placeholder.blocks', 'anomaly.module.blocks::field.entry.instructions.blocks'),
(10, 10, 'en', 'anomaly.module.blocks::field.display_title.label.blocks', 'anomaly.module.blocks::field.display_title.warning.blocks', 'anomaly.module.blocks::field.display_title.placeholder.blocks', 'anomaly.module.blocks::field.display_title.instructions.blocks'),
(11, 11, 'en', 'anomaly.module.blocks::field.category.label.types', 'anomaly.module.blocks::field.category.warning.types', 'anomaly.module.blocks::field.category.placeholder.types', 'anomaly.module.blocks::field.category.instructions.types'),
(12, 12, 'en', 'anomaly.module.blocks::field.name.label.types', 'anomaly.module.blocks::field.name.warning.types', 'anomaly.module.blocks::field.name.placeholder.types', 'anomaly.module.blocks::field.name.instructions.types'),
(13, 13, 'en', 'anomaly.module.blocks::field.slug.label.types', 'anomaly.module.blocks::field.slug.warning.types', 'anomaly.module.blocks::field.slug.placeholder.types', 'anomaly.module.blocks::field.slug.instructions.types'),
(14, 14, 'en', 'anomaly.module.blocks::field.description.label.types', 'anomaly.module.blocks::field.description.warning.types', 'anomaly.module.blocks::field.description.placeholder.types', 'anomaly.module.blocks::field.description.instructions.types'),
(15, 15, 'en', 'anomaly.module.blocks::field.content_layout.label.types', 'anomaly.module.blocks::field.content_layout.warning.types', 'anomaly.module.blocks::field.content_layout.placeholder.types', 'anomaly.module.blocks::field.content_layout.instructions.types'),
(16, 16, 'en', 'anomaly.module.blocks::field.wrapper_layout.label.types', 'anomaly.module.blocks::field.wrapper_layout.warning.types', 'anomaly.module.blocks::field.wrapper_layout.placeholder.types', 'anomaly.module.blocks::field.wrapper_layout.instructions.types'),
(17, 17, 'en', 'anomaly.module.blocks::field.type.label.blocks', 'anomaly.module.blocks::field.type.warning.blocks', 'anomaly.module.blocks::field.type.placeholder.blocks', 'anomaly.module.blocks::field.type.instructions.blocks'),
(18, 18, 'en', 'anomaly.module.configuration::field.scope.label.configuration', 'anomaly.module.configuration::field.scope.warning.configuration', 'anomaly.module.configuration::field.scope.placeholder.configuration', 'anomaly.module.configuration::field.scope.instructions.configuration'),
(19, 19, 'en', 'anomaly.module.configuration::field.key.label.configuration', 'anomaly.module.configuration::field.key.warning.configuration', 'anomaly.module.configuration::field.key.placeholder.configuration', 'anomaly.module.configuration::field.key.instructions.configuration'),
(20, 20, 'en', 'anomaly.module.configuration::field.value.label.configuration', 'anomaly.module.configuration::field.value.warning.configuration', 'anomaly.module.configuration::field.value.placeholder.configuration', 'anomaly.module.configuration::field.value.instructions.configuration'),
(21, 21, 'en', 'anomaly.module.dashboard::field.name.label.dashboards', 'anomaly.module.dashboard::field.name.warning.dashboards', 'anomaly.module.dashboard::field.name.placeholder.dashboards', 'anomaly.module.dashboard::field.name.instructions.dashboards'),
(22, 22, 'en', 'anomaly.module.dashboard::field.slug.label.dashboards', 'anomaly.module.dashboard::field.slug.warning.dashboards', 'anomaly.module.dashboard::field.slug.placeholder.dashboards', 'anomaly.module.dashboard::field.slug.instructions.dashboards'),
(23, 23, 'en', 'anomaly.module.dashboard::field.description.label.dashboards', 'anomaly.module.dashboard::field.description.warning.dashboards', 'anomaly.module.dashboard::field.description.placeholder.dashboards', 'anomaly.module.dashboard::field.description.instructions.dashboards'),
(24, 24, 'en', 'anomaly.module.dashboard::field.layout.label.dashboards', 'anomaly.module.dashboard::field.layout.warning.dashboards', 'anomaly.module.dashboard::field.layout.placeholder.dashboards', 'anomaly.module.dashboard::field.layout.instructions.dashboards'),
(25, 25, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.dashboards', 'anomaly.module.dashboard::field.allowed_roles.warning.dashboards', 'anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards', 'anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),
(26, 26, 'en', 'anomaly.module.dashboard::field.title.label.widgets', 'anomaly.module.dashboard::field.title.warning.widgets', 'anomaly.module.dashboard::field.title.placeholder.widgets', 'anomaly.module.dashboard::field.title.instructions.widgets'),
(27, 27, 'en', 'anomaly.module.dashboard::field.description.label.widgets', 'anomaly.module.dashboard::field.description.warning.widgets', 'anomaly.module.dashboard::field.description.placeholder.widgets', 'anomaly.module.dashboard::field.description.instructions.widgets'),
(28, 28, 'en', 'anomaly.module.dashboard::field.extension.label.widgets', 'anomaly.module.dashboard::field.extension.warning.widgets', 'anomaly.module.dashboard::field.extension.placeholder.widgets', 'anomaly.module.dashboard::field.extension.instructions.widgets'),
(29, 29, 'en', 'anomaly.module.dashboard::field.column.label.widgets', 'anomaly.module.dashboard::field.column.warning.widgets', 'anomaly.module.dashboard::field.column.placeholder.widgets', 'anomaly.module.dashboard::field.column.instructions.widgets'),
(30, 30, 'en', 'anomaly.module.dashboard::field.dashboard.label.widgets', 'anomaly.module.dashboard::field.dashboard.warning.widgets', 'anomaly.module.dashboard::field.dashboard.placeholder.widgets', 'anomaly.module.dashboard::field.dashboard.instructions.widgets'),
(31, 31, 'en', 'anomaly.module.dashboard::field.allowed_roles.label.widgets', 'anomaly.module.dashboard::field.allowed_roles.warning.widgets', 'anomaly.module.dashboard::field.allowed_roles.placeholder.widgets', 'anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),
(32, 32, 'en', 'anomaly.module.dashboard::field.pinned.label.widgets', 'anomaly.module.dashboard::field.pinned.warning.widgets', 'anomaly.module.dashboard::field.pinned.placeholder.widgets', 'anomaly.module.dashboard::field.pinned.instructions.widgets'),
(33, 33, 'en', 'anomaly.module.files::field.name.label.disks', 'anomaly.module.files::field.name.warning.disks', 'anomaly.module.files::field.name.placeholder.disks', 'anomaly.module.files::field.name.instructions.disks'),
(34, 34, 'en', 'anomaly.module.files::field.slug.label.disks', 'anomaly.module.files::field.slug.warning.disks', 'anomaly.module.files::field.slug.placeholder.disks', 'anomaly.module.files::field.slug.instructions.disks'),
(35, 35, 'en', 'anomaly.module.files::field.adapter.label.disks', 'anomaly.module.files::field.adapter.warning.disks', 'anomaly.module.files::field.adapter.placeholder.disks', 'anomaly.module.files::field.adapter.instructions.disks'),
(36, 36, 'en', 'anomaly.module.files::field.description.label.disks', 'anomaly.module.files::field.description.warning.disks', 'anomaly.module.files::field.description.placeholder.disks', 'anomaly.module.files::field.description.instructions.disks'),
(37, 37, 'en', 'anomaly.module.files::field.disk.label.folders', 'anomaly.module.files::field.disk.warning.folders', 'anomaly.module.files::field.disk.placeholder.folders', 'anomaly.module.files::field.disk.instructions.folders'),
(38, 38, 'en', 'anomaly.module.files::field.name.label.folders', 'anomaly.module.files::field.name.warning.folders', 'anomaly.module.files::field.name.placeholder.folders', 'anomaly.module.files::field.name.instructions.folders'),
(39, 39, 'en', 'anomaly.module.files::field.slug.label.folders', 'anomaly.module.files::field.slug.warning.folders', 'anomaly.module.files::field.slug.placeholder.folders', 'anomaly.module.files::field.slug.instructions.folders'),
(40, 40, 'en', 'anomaly.module.files::field.description.label.folders', 'anomaly.module.files::field.description.warning.folders', 'anomaly.module.files::field.description.placeholder.folders', 'anomaly.module.files::field.description.instructions.folders'),
(41, 41, 'en', 'anomaly.module.files::field.allowed_types.label.folders', 'anomaly.module.files::field.allowed_types.warning.folders', 'anomaly.module.files::field.allowed_types.placeholder.folders', 'anomaly.module.files::field.allowed_types.instructions.folders'),
(42, 42, 'en', 'anomaly.module.files::field.name.label.files', 'anomaly.module.files::field.name.warning.files', 'anomaly.module.files::field.name.placeholder.files', 'anomaly.module.files::field.name.instructions.files'),
(43, 43, 'en', 'anomaly.module.files::field.disk.label.files', 'anomaly.module.files::field.disk.warning.files', 'anomaly.module.files::field.disk.placeholder.files', 'anomaly.module.files::field.disk.instructions.files'),
(44, 44, 'en', 'anomaly.module.files::field.folder.label.files', 'anomaly.module.files::field.folder.warning.files', 'anomaly.module.files::field.folder.placeholder.files', 'anomaly.module.files::field.folder.instructions.files'),
(45, 45, 'en', 'anomaly.module.files::field.extension.label.files', 'anomaly.module.files::field.extension.warning.files', 'anomaly.module.files::field.extension.placeholder.files', 'anomaly.module.files::field.extension.instructions.files'),
(46, 46, 'en', 'anomaly.module.files::field.size.label.files', 'anomaly.module.files::field.size.warning.files', 'anomaly.module.files::field.size.placeholder.files', 'anomaly.module.files::field.size.instructions.files'),
(47, 47, 'en', 'anomaly.module.files::field.mime_type.label.files', 'anomaly.module.files::field.mime_type.warning.files', 'anomaly.module.files::field.mime_type.placeholder.files', 'anomaly.module.files::field.mime_type.instructions.files'),
(48, 48, 'en', 'anomaly.module.files::field.entry.label.files', 'anomaly.module.files::field.entry.warning.files', 'anomaly.module.files::field.entry.placeholder.files', 'anomaly.module.files::field.entry.instructions.files'),
(49, 49, 'en', 'anomaly.module.files::field.keywords.label.files', 'anomaly.module.files::field.keywords.warning.files', 'anomaly.module.files::field.keywords.placeholder.files', 'anomaly.module.files::field.keywords.instructions.files'),
(50, 50, 'en', 'anomaly.module.files::field.height.label.files', 'anomaly.module.files::field.height.warning.files', 'anomaly.module.files::field.height.placeholder.files', 'anomaly.module.files::field.height.instructions.files'),
(51, 51, 'en', 'anomaly.module.files::field.width.label.files', 'anomaly.module.files::field.width.warning.files', 'anomaly.module.files::field.width.placeholder.files', 'anomaly.module.files::field.width.instructions.files'),
(52, 52, 'en', 'anomaly.module.files::field.alt_text.label.files', 'anomaly.module.files::field.alt_text.warning.files', 'anomaly.module.files::field.alt_text.placeholder.files', 'anomaly.module.files::field.alt_text.instructions.files'),
(53, 53, 'en', 'anomaly.module.files::field.title.label.files', 'anomaly.module.files::field.title.warning.files', 'anomaly.module.files::field.title.placeholder.files', 'anomaly.module.files::field.title.instructions.files'),
(54, 54, 'en', 'anomaly.module.files::field.caption.label.files', 'anomaly.module.files::field.caption.warning.files', 'anomaly.module.files::field.caption.placeholder.files', 'anomaly.module.files::field.caption.instructions.files'),
(55, 55, 'en', 'anomaly.module.files::field.description.label.files', 'anomaly.module.files::field.description.warning.files', 'anomaly.module.files::field.description.placeholder.files', 'anomaly.module.files::field.description.instructions.files'),
(56, 56, 'en', 'anomaly.module.navigation::field.name.label.menus', 'anomaly.module.navigation::field.name.warning.menus', 'anomaly.module.navigation::field.name.placeholder.menus', 'anomaly.module.navigation::field.name.instructions.menus'),
(57, 57, 'en', 'anomaly.module.navigation::field.slug.label.menus', 'anomaly.module.navigation::field.slug.warning.menus', 'anomaly.module.navigation::field.slug.placeholder.menus', 'anomaly.module.navigation::field.slug.instructions.menus'),
(58, 58, 'en', 'anomaly.module.navigation::field.description.label.menus', 'anomaly.module.navigation::field.description.warning.menus', 'anomaly.module.navigation::field.description.placeholder.menus', 'anomaly.module.navigation::field.description.instructions.menus'),
(59, 59, 'en', 'anomaly.module.navigation::field.menu.label.links', 'anomaly.module.navigation::field.menu.warning.links', 'anomaly.module.navigation::field.menu.placeholder.links', 'anomaly.module.navigation::field.menu.instructions.links'),
(60, 60, 'en', 'anomaly.module.navigation::field.type.label.links', 'anomaly.module.navigation::field.type.warning.links', 'anomaly.module.navigation::field.type.placeholder.links', 'anomaly.module.navigation::field.type.instructions.links'),
(61, 61, 'en', 'anomaly.module.navigation::field.entry.label.links', 'anomaly.module.navigation::field.entry.warning.links', 'anomaly.module.navigation::field.entry.placeholder.links', 'anomaly.module.navigation::field.entry.instructions.links'),
(62, 62, 'en', 'anomaly.module.navigation::field.target.label.links', 'anomaly.module.navigation::field.target.warning.links', 'anomaly.module.navigation::field.target.placeholder.links', 'anomaly.module.navigation::field.target.instructions.links'),
(63, 63, 'en', 'anomaly.module.navigation::field.class.label.links', 'anomaly.module.navigation::field.class.warning.links', 'anomaly.module.navigation::field.class.placeholder.links', 'anomaly.module.navigation::field.class.instructions.links'),
(64, 64, 'en', 'anomaly.module.navigation::field.parent.label.links', 'anomaly.module.navigation::field.parent.warning.links', 'anomaly.module.navigation::field.parent.placeholder.links', 'anomaly.module.navigation::field.parent.instructions.links'),
(65, 65, 'en', 'anomaly.module.navigation::field.allowed_roles.label.links', 'anomaly.module.navigation::field.allowed_roles.warning.links', 'anomaly.module.navigation::field.allowed_roles.placeholder.links', 'anomaly.module.navigation::field.allowed_roles.instructions.links'),
(66, 66, 'en', 'anomaly.module.pages::field.str_id.label.pages', 'anomaly.module.pages::field.str_id.warning.pages', 'anomaly.module.pages::field.str_id.placeholder.pages', 'anomaly.module.pages::field.str_id.instructions.pages'),
(67, 67, 'en', 'anomaly.module.pages::field.title.label.pages', 'anomaly.module.pages::field.title.warning.pages', 'anomaly.module.pages::field.title.placeholder.pages', 'anomaly.module.pages::field.title.instructions.pages'),
(68, 68, 'en', 'anomaly.module.pages::field.slug.label.pages', 'anomaly.module.pages::field.slug.warning.pages', 'anomaly.module.pages::field.slug.placeholder.pages', 'anomaly.module.pages::field.slug.instructions.pages'),
(69, 69, 'en', 'anomaly.module.pages::field.path.label.pages', 'anomaly.module.pages::field.path.warning.pages', 'anomaly.module.pages::field.path.placeholder.pages', 'anomaly.module.pages::field.path.instructions.pages'),
(70, 70, 'en', 'anomaly.module.pages::field.type.label.pages', 'anomaly.module.pages::field.type.warning.pages', 'anomaly.module.pages::field.type.placeholder.pages', 'anomaly.module.pages::field.type.instructions.pages'),
(71, 71, 'en', 'anomaly.module.pages::field.entry.label.pages', 'anomaly.module.pages::field.entry.warning.pages', 'anomaly.module.pages::field.entry.placeholder.pages', 'anomaly.module.pages::field.entry.instructions.pages'),
(72, 72, 'en', 'anomaly.module.pages::field.parent.label.pages', 'anomaly.module.pages::field.parent.warning.pages', 'anomaly.module.pages::field.parent.placeholder.pages', 'anomaly.module.pages::field.parent.instructions.pages'),
(73, 73, 'en', 'anomaly.module.pages::field.visible.label.pages', 'anomaly.module.pages::field.visible.warning.pages', 'anomaly.module.pages::field.visible.placeholder.pages', 'anomaly.module.pages::field.visible.instructions.pages'),
(74, 74, 'en', 'anomaly.module.pages::field.enabled.label.pages', 'anomaly.module.pages::field.enabled.warning.pages', 'anomaly.module.pages::field.enabled.placeholder.pages', 'anomaly.module.pages::field.enabled.instructions.pages'),
(75, 75, 'en', 'anomaly.module.pages::field.exact.label.pages', 'anomaly.module.pages::field.exact.warning.pages', 'anomaly.module.pages::field.exact.placeholder.pages', 'anomaly.module.pages::field.exact.instructions.pages'),
(76, 76, 'en', 'anomaly.module.pages::field.home.label.pages', 'anomaly.module.pages::field.home.warning.pages', 'anomaly.module.pages::field.home.placeholder.pages', 'anomaly.module.pages::field.home.instructions.pages'),
(77, 77, 'en', 'anomaly.module.pages::field.meta_title.label.pages', 'anomaly.module.pages::field.meta_title.warning.pages', 'anomaly.module.pages::field.meta_title.placeholder.pages', 'anomaly.module.pages::field.meta_title.instructions.pages'),
(78, 78, 'en', 'anomaly.module.pages::field.meta_description.label.pages', 'anomaly.module.pages::field.meta_description.warning.pages', 'anomaly.module.pages::field.meta_description.placeholder.pages', 'anomaly.module.pages::field.meta_description.instructions.pages'),
(80, 80, 'en', 'anomaly.module.pages::field.theme_layout.label.pages', 'anomaly.module.pages::field.theme_layout.warning.pages', 'anomaly.module.pages::field.theme_layout.placeholder.pages', 'anomaly.module.pages::field.theme_layout.instructions.pages'),
(81, 81, 'en', 'anomaly.module.pages::field.allowed_roles.label.pages', 'anomaly.module.pages::field.allowed_roles.warning.pages', 'anomaly.module.pages::field.allowed_roles.placeholder.pages', 'anomaly.module.pages::field.allowed_roles.instructions.pages'),
(82, 82, 'en', 'anomaly.module.pages::field.name.label.types', 'anomaly.module.pages::field.name.warning.types', 'anomaly.module.pages::field.name.placeholder.types', 'anomaly.module.pages::field.name.instructions.types'),
(83, 83, 'en', 'anomaly.module.pages::field.slug.label.types', 'anomaly.module.pages::field.slug.warning.types', 'anomaly.module.pages::field.slug.placeholder.types', 'anomaly.module.pages::field.slug.instructions.types'),
(84, 84, 'en', 'anomaly.module.pages::field.description.label.types', 'anomaly.module.pages::field.description.warning.types', 'anomaly.module.pages::field.description.placeholder.types', 'anomaly.module.pages::field.description.instructions.types'),
(85, 85, 'en', 'anomaly.module.pages::field.theme_layout.label.types', 'anomaly.module.pages::field.theme_layout.warning.types', 'anomaly.module.pages::field.theme_layout.placeholder.types', 'anomaly.module.pages::field.theme_layout.instructions.types'),
(86, 86, 'en', 'anomaly.module.pages::field.layout.label.types', 'anomaly.module.pages::field.layout.warning.types', 'anomaly.module.pages::field.layout.placeholder.types', 'anomaly.module.pages::field.layout.instructions.types'),
(87, 87, 'en', 'anomaly.module.pages::field.handler.label.types', 'anomaly.module.pages::field.handler.warning.types', 'anomaly.module.pages::field.handler.placeholder.types', 'anomaly.module.pages::field.handler.instructions.types'),
(88, 88, 'en', 'anomaly.module.posts::field.name.label.categories', 'anomaly.module.posts::field.name.warning.categories', 'anomaly.module.posts::field.name.placeholder.categories', 'anomaly.module.posts::field.name.instructions.categories'),
(89, 89, 'en', 'anomaly.module.posts::field.slug.label.categories', 'anomaly.module.posts::field.slug.warning.categories', 'anomaly.module.posts::field.slug.placeholder.categories', 'anomaly.module.posts::field.slug.instructions.categories'),
(90, 90, 'en', 'anomaly.module.posts::field.description.label.categories', 'anomaly.module.posts::field.description.warning.categories', 'anomaly.module.posts::field.description.placeholder.categories', 'anomaly.module.posts::field.description.instructions.categories'),
(91, 91, 'en', 'anomaly.module.posts::field.str_id.label.posts', 'anomaly.module.posts::field.str_id.warning.posts', 'anomaly.module.posts::field.str_id.placeholder.posts', 'anomaly.module.posts::field.str_id.instructions.posts'),
(92, 92, 'en', 'anomaly.module.posts::field.title.label.posts', 'anomaly.module.posts::field.title.warning.posts', 'anomaly.module.posts::field.title.placeholder.posts', 'anomaly.module.posts::field.title.instructions.posts'),
(93, 93, 'en', 'anomaly.module.posts::field.summary.label.posts', 'anomaly.module.posts::field.summary.warning.posts', 'anomaly.module.posts::field.summary.placeholder.posts', 'anomaly.module.posts::field.summary.instructions.posts'),
(94, 94, 'en', 'anomaly.module.posts::field.slug.label.posts', 'anomaly.module.posts::field.slug.warning.posts', 'anomaly.module.posts::field.slug.placeholder.posts', 'anomaly.module.posts::field.slug.instructions.posts'),
(95, 95, 'en', 'anomaly.module.posts::field.type.label.posts', 'anomaly.module.posts::field.type.warning.posts', 'anomaly.module.posts::field.type.placeholder.posts', 'anomaly.module.posts::field.type.instructions.posts'),
(96, 96, 'en', 'anomaly.module.posts::field.publish_at.label.posts', 'anomaly.module.posts::field.publish_at.warning.posts', 'anomaly.module.posts::field.publish_at.placeholder.posts', 'anomaly.module.posts::field.publish_at.instructions.posts'),
(97, 97, 'en', 'anomaly.module.posts::field.author.label.posts', 'anomaly.module.posts::field.author.warning.posts', 'anomaly.module.posts::field.author.placeholder.posts', 'anomaly.module.posts::field.author.instructions.posts'),
(98, 98, 'en', 'anomaly.module.posts::field.entry.label.posts', 'anomaly.module.posts::field.entry.warning.posts', 'anomaly.module.posts::field.entry.placeholder.posts', 'anomaly.module.posts::field.entry.instructions.posts'),
(99, 99, 'en', 'anomaly.module.posts::field.meta_title.label.posts', 'anomaly.module.posts::field.meta_title.warning.posts', 'anomaly.module.posts::field.meta_title.placeholder.posts', 'anomaly.module.posts::field.meta_title.instructions.posts'),
(100, 100, 'en', 'anomaly.module.posts::field.meta_description.label.posts', 'anomaly.module.posts::field.meta_description.warning.posts', 'anomaly.module.posts::field.meta_description.placeholder.posts', 'anomaly.module.posts::field.meta_description.instructions.posts'),
(101, 101, 'en', 'anomaly.module.posts::field.category.label.posts', 'anomaly.module.posts::field.category.warning.posts', 'anomaly.module.posts::field.category.placeholder.posts', 'anomaly.module.posts::field.category.instructions.posts'),
(102, 102, 'en', 'anomaly.module.posts::field.featured.label.posts', 'anomaly.module.posts::field.featured.warning.posts', 'anomaly.module.posts::field.featured.placeholder.posts', 'anomaly.module.posts::field.featured.instructions.posts'),
(103, 103, 'en', 'anomaly.module.posts::field.enabled.label.posts', 'anomaly.module.posts::field.enabled.warning.posts', 'anomaly.module.posts::field.enabled.placeholder.posts', 'anomaly.module.posts::field.enabled.instructions.posts'),
(104, 104, 'en', 'anomaly.module.posts::field.tags.label.posts', 'anomaly.module.posts::field.tags.warning.posts', 'anomaly.module.posts::field.tags.placeholder.posts', 'anomaly.module.posts::field.tags.instructions.posts'),
(105, 105, 'en', 'anomaly.module.posts::field.name.label.types', 'anomaly.module.posts::field.name.warning.types', 'anomaly.module.posts::field.name.placeholder.types', 'anomaly.module.posts::field.name.instructions.types'),
(106, 106, 'en', 'anomaly.module.posts::field.slug.label.types', 'anomaly.module.posts::field.slug.warning.types', 'anomaly.module.posts::field.slug.placeholder.types', 'anomaly.module.posts::field.slug.instructions.types'),
(107, 107, 'en', 'anomaly.module.posts::field.layout.label.types', 'anomaly.module.posts::field.layout.warning.types', 'anomaly.module.posts::field.layout.placeholder.types', 'anomaly.module.posts::field.layout.instructions.types'),
(108, 108, 'en', 'anomaly.module.posts::field.theme_layout.label.types', 'anomaly.module.posts::field.theme_layout.warning.types', 'anomaly.module.posts::field.theme_layout.placeholder.types', 'anomaly.module.posts::field.theme_layout.instructions.types'),
(109, 109, 'en', 'anomaly.module.posts::field.description.label.types', 'anomaly.module.posts::field.description.warning.types', 'anomaly.module.posts::field.description.placeholder.types', 'anomaly.module.posts::field.description.instructions.types'),
(110, 110, 'en', 'anomaly.module.posts::field.meta_title.label.categories', 'anomaly.module.posts::field.meta_title.warning.categories', 'anomaly.module.posts::field.meta_title.placeholder.categories', 'anomaly.module.posts::field.meta_title.instructions.categories'),
(111, 111, 'en', 'anomaly.module.posts::field.meta_description.label.categories', 'anomaly.module.posts::field.meta_description.warning.categories', 'anomaly.module.posts::field.meta_description.placeholder.categories', 'anomaly.module.posts::field.meta_description.instructions.categories'),
(112, 112, 'en', 'anomaly.module.posts::field.meta_title.label.types', 'anomaly.module.posts::field.meta_title.warning.types', 'anomaly.module.posts::field.meta_title.placeholder.types', 'anomaly.module.posts::field.meta_title.instructions.types'),
(113, 113, 'en', 'anomaly.module.posts::field.meta_description.label.types', 'anomaly.module.posts::field.meta_description.warning.types', 'anomaly.module.posts::field.meta_description.placeholder.types', 'anomaly.module.posts::field.meta_description.instructions.types'),
(114, 114, 'en', 'anomaly.module.preferences::field.user.label.preferences', 'anomaly.module.preferences::field.user.warning.preferences', 'anomaly.module.preferences::field.user.placeholder.preferences', 'anomaly.module.preferences::field.user.instructions.preferences'),
(115, 115, 'en', 'anomaly.module.preferences::field.key.label.preferences', 'anomaly.module.preferences::field.key.warning.preferences', 'anomaly.module.preferences::field.key.placeholder.preferences', 'anomaly.module.preferences::field.key.instructions.preferences'),
(116, 116, 'en', 'anomaly.module.preferences::field.value.label.preferences', 'anomaly.module.preferences::field.value.warning.preferences', 'anomaly.module.preferences::field.value.placeholder.preferences', 'anomaly.module.preferences::field.value.instructions.preferences'),
(117, 117, 'en', 'anomaly.module.redirects::field.from.label.redirects', 'anomaly.module.redirects::field.from.warning.redirects', 'anomaly.module.redirects::field.from.placeholder.redirects', 'anomaly.module.redirects::field.from.instructions.redirects'),
(118, 118, 'en', 'anomaly.module.redirects::field.to.label.redirects', 'anomaly.module.redirects::field.to.warning.redirects', 'anomaly.module.redirects::field.to.placeholder.redirects', 'anomaly.module.redirects::field.to.instructions.redirects'),
(119, 119, 'en', 'anomaly.module.redirects::field.status.label.redirects', 'anomaly.module.redirects::field.status.warning.redirects', 'anomaly.module.redirects::field.status.placeholder.redirects', 'anomaly.module.redirects::field.status.instructions.redirects'),
(120, 120, 'en', 'anomaly.module.redirects::field.secure.label.redirects', 'anomaly.module.redirects::field.secure.warning.redirects', 'anomaly.module.redirects::field.secure.placeholder.redirects', 'anomaly.module.redirects::field.secure.instructions.redirects'),
(121, 121, 'en', 'anomaly.module.redirects::field.from.label.domains', 'anomaly.module.redirects::field.from.warning.domains', 'anomaly.module.redirects::field.from.placeholder.domains', 'anomaly.module.redirects::field.from.instructions.domains'),
(122, 122, 'en', 'anomaly.module.redirects::field.to.label.domains', 'anomaly.module.redirects::field.to.warning.domains', 'anomaly.module.redirects::field.to.placeholder.domains', 'anomaly.module.redirects::field.to.instructions.domains'),
(123, 123, 'en', 'anomaly.module.redirects::field.status.label.domains', 'anomaly.module.redirects::field.status.warning.domains', 'anomaly.module.redirects::field.status.placeholder.domains', 'anomaly.module.redirects::field.status.instructions.domains'),
(124, 124, 'en', 'anomaly.module.redirects::field.secure.label.domains', 'anomaly.module.redirects::field.secure.warning.domains', 'anomaly.module.redirects::field.secure.placeholder.domains', 'anomaly.module.redirects::field.secure.instructions.domains'),
(125, 125, 'en', 'anomaly.module.settings::field.key.label.settings', 'anomaly.module.settings::field.key.warning.settings', 'anomaly.module.settings::field.key.placeholder.settings', 'anomaly.module.settings::field.key.instructions.settings'),
(126, 126, 'en', 'anomaly.module.settings::field.value.label.settings', 'anomaly.module.settings::field.value.warning.settings', 'anomaly.module.settings::field.value.placeholder.settings', 'anomaly.module.settings::field.value.instructions.settings'),
(127, 127, 'en', 'anomaly.module.users::field.email.label.users', 'anomaly.module.users::field.email.warning.users', 'anomaly.module.users::field.email.placeholder.users', 'anomaly.module.users::field.email.instructions.users'),
(128, 128, 'en', 'anomaly.module.users::field.username.label.users', 'anomaly.module.users::field.username.warning.users', 'anomaly.module.users::field.username.placeholder.users', 'anomaly.module.users::field.username.instructions.users'),
(129, 129, 'en', 'anomaly.module.users::field.password.label.users', 'anomaly.module.users::field.password.warning.users', 'anomaly.module.users::field.password.placeholder.users', 'anomaly.module.users::field.password.instructions.users'),
(130, 130, 'en', 'anomaly.module.users::field.roles.label.users', 'anomaly.module.users::field.roles.warning.users', 'anomaly.module.users::field.roles.placeholder.users', 'anomaly.module.users::field.roles.instructions.users'),
(131, 131, 'en', 'anomaly.module.users::field.display_name.label.users', 'anomaly.module.users::field.display_name.warning.users', 'anomaly.module.users::field.display_name.placeholder.users', 'anomaly.module.users::field.display_name.instructions.users'),
(132, 132, 'en', 'anomaly.module.users::field.first_name.label.users', 'anomaly.module.users::field.first_name.warning.users', 'anomaly.module.users::field.first_name.placeholder.users', 'anomaly.module.users::field.first_name.instructions.users'),
(133, 133, 'en', 'anomaly.module.users::field.last_name.label.users', 'anomaly.module.users::field.last_name.warning.users', 'anomaly.module.users::field.last_name.placeholder.users', 'anomaly.module.users::field.last_name.instructions.users'),
(134, 134, 'en', 'anomaly.module.users::field.activated.label.users', 'anomaly.module.users::field.activated.warning.users', 'anomaly.module.users::field.activated.placeholder.users', 'anomaly.module.users::field.activated.instructions.users'),
(135, 135, 'en', 'anomaly.module.users::field.enabled.label.users', 'anomaly.module.users::field.enabled.warning.users', 'anomaly.module.users::field.enabled.placeholder.users', 'anomaly.module.users::field.enabled.instructions.users'),
(136, 136, 'en', 'anomaly.module.users::field.permissions.label.users', 'anomaly.module.users::field.permissions.warning.users', 'anomaly.module.users::field.permissions.placeholder.users', 'anomaly.module.users::field.permissions.instructions.users'),
(137, 137, 'en', 'anomaly.module.users::field.last_login_at.label.users', 'anomaly.module.users::field.last_login_at.warning.users', 'anomaly.module.users::field.last_login_at.placeholder.users', 'anomaly.module.users::field.last_login_at.instructions.users'),
(138, 138, 'en', 'anomaly.module.users::field.remember_token.label.users', 'anomaly.module.users::field.remember_token.warning.users', 'anomaly.module.users::field.remember_token.placeholder.users', 'anomaly.module.users::field.remember_token.instructions.users'),
(139, 139, 'en', 'anomaly.module.users::field.activation_code.label.users', 'anomaly.module.users::field.activation_code.warning.users', 'anomaly.module.users::field.activation_code.placeholder.users', 'anomaly.module.users::field.activation_code.instructions.users'),
(140, 140, 'en', 'anomaly.module.users::field.reset_code.label.users', 'anomaly.module.users::field.reset_code.warning.users', 'anomaly.module.users::field.reset_code.placeholder.users', 'anomaly.module.users::field.reset_code.instructions.users'),
(141, 141, 'en', 'anomaly.module.users::field.last_activity_at.label.users', 'anomaly.module.users::field.last_activity_at.warning.users', 'anomaly.module.users::field.last_activity_at.placeholder.users', 'anomaly.module.users::field.last_activity_at.instructions.users'),
(142, 142, 'en', 'anomaly.module.users::field.ip_address.label.users', 'anomaly.module.users::field.ip_address.warning.users', 'anomaly.module.users::field.ip_address.placeholder.users', 'anomaly.module.users::field.ip_address.instructions.users'),
(143, 143, 'en', 'anomaly.module.users::field.name.label.roles', 'anomaly.module.users::field.name.warning.roles', 'anomaly.module.users::field.name.placeholder.roles', 'anomaly.module.users::field.name.instructions.roles'),
(144, 144, 'en', 'anomaly.module.users::field.slug.label.roles', 'anomaly.module.users::field.slug.warning.roles', 'anomaly.module.users::field.slug.placeholder.roles', 'anomaly.module.users::field.slug.instructions.roles'),
(145, 145, 'en', 'anomaly.module.users::field.description.label.roles', 'anomaly.module.users::field.description.warning.roles', 'anomaly.module.users::field.description.placeholder.roles', 'anomaly.module.users::field.description.instructions.roles'),
(146, 146, 'en', 'anomaly.module.users::field.permissions.label.roles', 'anomaly.module.users::field.permissions.warning.roles', 'anomaly.module.users::field.permissions.placeholder.roles', 'anomaly.module.users::field.permissions.instructions.roles'),
(147, 147, 'en', 'anomaly.extension.html_block::field.html.label.blocks', 'anomaly.extension.html_block::field.html.warning.blocks', 'anomaly.extension.html_block::field.html.placeholder.blocks', 'anomaly.extension.html_block::field.html.instructions.blocks'),
(148, 148, 'en', 'anomaly.extension.page_link_type::field.title.label.pages', 'anomaly.extension.page_link_type::field.title.warning.pages', 'anomaly.extension.page_link_type::field.title.placeholder.pages', 'anomaly.extension.page_link_type::field.title.instructions.pages'),
(149, 149, 'en', 'anomaly.extension.page_link_type::field.page.label.pages', 'anomaly.extension.page_link_type::field.page.warning.pages', 'anomaly.extension.page_link_type::field.page.placeholder.pages', 'anomaly.extension.page_link_type::field.page.instructions.pages'),
(150, 150, 'en', 'anomaly.extension.page_link_type::field.description.label.pages', 'anomaly.extension.page_link_type::field.description.warning.pages', 'anomaly.extension.page_link_type::field.description.placeholder.pages', 'anomaly.extension.page_link_type::field.description.instructions.pages'),
(151, 151, 'en', 'anomaly.extension.url_link_type::field.title.label.urls', 'anomaly.extension.url_link_type::field.title.warning.urls', 'anomaly.extension.url_link_type::field.title.placeholder.urls', 'anomaly.extension.url_link_type::field.title.instructions.urls'),
(152, 152, 'en', 'anomaly.extension.url_link_type::field.url.label.urls', 'anomaly.extension.url_link_type::field.url.warning.urls', 'anomaly.extension.url_link_type::field.url.placeholder.urls', 'anomaly.extension.url_link_type::field.url.instructions.urls'),
(153, 153, 'en', 'anomaly.extension.url_link_type::field.description.label.urls', 'anomaly.extension.url_link_type::field.description.warning.urls', 'anomaly.extension.url_link_type::field.description.placeholder.urls', 'anomaly.extension.url_link_type::field.description.instructions.urls'),
(154, 154, 'en', 'anomaly.extension.wysiwyg_block::field.content.label.blocks', 'anomaly.extension.wysiwyg_block::field.content.warning.blocks', 'anomaly.extension.wysiwyg_block::field.content.placeholder.blocks', 'anomaly.extension.wysiwyg_block::field.content.instructions.blocks'),
(155, 155, 'en', NULL, NULL, NULL, NULL),
(156, 156, 'en', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_streams_fields`
--

CREATE TABLE `gcms_streams_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_streams_fields`
--

INSERT INTO `gcms_streams_fields` (`id`, `namespace`, `slug`, `type`, `config`, `locked`) VALUES
(1, 'blocks', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(2, 'blocks', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(3, 'blocks', 'slug', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"-\";s:7:\"slugify\";s:4:\"name\";}', 1),
(4, 'blocks', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(5, 'blocks', 'field', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:41:\"Anomaly\\Streams\\Platform\\Field\\FieldModel\";}', 1),
(6, 'blocks', 'area', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(7, 'blocks', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(8, 'blocks', 'blocks', 'anomaly.field_type.blocks', 'a:0:{}', 1),
(9, 'blocks', 'extension', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:30:\"anomaly.module.blocks::block.*\";}', 1),
(10, 'blocks', 'display_title', 'anomaly.field_type.boolean', 'a:3:{s:13:\"default_value\";b:1;s:4:\"mode\";s:8:\"checkbox\";s:5:\"label\";s:48:\"anomaly.module.blocks::field.display_title.label\";}', 1),
(11, 'blocks', 'category', 'anomaly.field_type.select', 'a:1:{s:7:\"handler\";s:66:\"Anomaly\\BlocksModule\\Block\\Support\\SelectFieldType\\CategoryOptions\";}', 1),
(12, 'blocks', 'content_layout', 'anomaly.field_type.editor', 'a:2:{s:4:\"mode\";s:4:\"twig\";s:13:\"default_value\";s:29:\"<p>{{ block.field_slug }}</p>\";}', 1),
(13, 'blocks', 'wrapper_layout', 'anomaly.field_type.editor', 'a:2:{s:4:\"mode\";s:4:\"twig\";s:13:\"default_value\";s:52:\"{% extends \"anomaly.module.blocks::types.wrapper\" %}\";}', 1),
(14, 'blocks', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:35:\"Anomaly\\BlocksModule\\Type\\TypeModel\";}', 1),
(15, 'configuration', 'scope', 'anomaly.field_type.text', 'a:0:{}', 1),
(16, 'configuration', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(17, 'configuration', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(18, 'dashboard', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(19, 'dashboard', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(20, 'dashboard', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(21, 'dashboard', 'layout', 'anomaly.field_type.select', 'a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}', 1),
(22, 'dashboard', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(23, 'dashboard', 'extension', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}', 1),
(24, 'dashboard', 'column', 'anomaly.field_type.integer', 'a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}', 1),
(25, 'dashboard', 'pinned', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(26, 'dashboard', 'dashboard', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}', 1),
(27, 'dashboard', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(28, 'files', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(29, 'files', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(30, 'files', 'adapter', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}', 1),
(31, 'files', 'folder', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}', 1),
(32, 'files', 'disk', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}', 1),
(33, 'files', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(34, 'files', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(35, 'files', 'allowed_types', 'anomaly.field_type.tags', 'a:0:{}', 1),
(36, 'files', 'keywords', 'anomaly.field_type.tags', 'a:0:{}', 1),
(37, 'files', 'extension', 'anomaly.field_type.text', 'a:0:{}', 1),
(38, 'files', 'width', 'anomaly.field_type.text', 'a:0:{}', 1),
(39, 'files', 'height', 'anomaly.field_type.text', 'a:0:{}', 1),
(40, 'files', 'mime_type', 'anomaly.field_type.text', 'a:0:{}', 1),
(41, 'files', 'size', 'anomaly.field_type.integer', 'a:0:{}', 1),
(42, 'files', 'alt_text', 'anomaly.field_type.text', 'a:0:{}', 1),
(43, 'files', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(44, 'files', 'caption', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(45, 'navigation', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(46, 'navigation', 'class', 'anomaly.field_type.text', 'a:0:{}', 1),
(47, 'navigation', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(48, 'navigation', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(49, 'navigation', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(50, 'navigation', 'menu', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}', 1),
(51, 'navigation', 'parent', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}', 1),
(52, 'navigation', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(53, 'navigation', 'type', 'anomaly.field_type.addon', 'a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}', 1),
(54, 'navigation', 'target', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}', 1),
(55, 'pages', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(56, 'pages', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(57, 'pages', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(58, 'pages', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(59, 'pages', 'path', 'anomaly.field_type.text', 'a:0:{}', 1),
(60, 'pages', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(61, 'pages', 'home', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(62, 'pages', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(63, 'pages', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(65, 'pages', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}', 1),
(66, 'pages', 'allowed_roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(67, 'pages', 'parent', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(68, 'pages', 'theme_layout', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}', 1),
(69, 'pages', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}', 1),
(70, 'pages', 'handler', 'anomaly.field_type.addon', 'a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}', 1),
(71, 'pages', 'visible', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(72, 'pages', 'exact', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(73, 'pages', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(74, 'pages', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(75, 'pages', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(76, 'posts', 'str_id', 'anomaly.field_type.text', 'a:0:{}', 1),
(77, 'posts', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(78, 'posts', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(79, 'posts', 'slug', 'anomaly.field_type.slug', 'a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}', 1),
(80, 'posts', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 0),
(81, 'posts', 'type', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}', 1),
(82, 'posts', 'tags', 'anomaly.field_type.tags', 'a:0:{}', 1),
(83, 'posts', 'summary', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(84, 'posts', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(85, 'posts', 'publish_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(86, 'posts', 'entry', 'anomaly.field_type.polymorphic', 'a:0:{}', 1),
(87, 'posts', 'author', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(88, 'posts', 'layout', 'anomaly.field_type.editor', 'a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}', 1),
(89, 'posts', 'category', 'anomaly.field_type.relationship', 'a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}', 1),
(90, 'posts', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(91, 'posts', 'featured', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(92, 'posts', 'meta_title', 'anomaly.field_type.text', 'a:0:{}', 1),
(93, 'posts', 'meta_description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(95, 'posts', 'ttl', 'anomaly.field_type.integer', 'a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}', 1),
(96, 'posts', 'theme_layout', 'anomaly.field_type.select', 'a:2:{s:4:\"mode\";s:6:\"search\";s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}', 1),
(97, 'preferences', 'user', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}', 1),
(98, 'preferences', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(99, 'preferences', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(100, 'redirects', 'from', 'anomaly.field_type.text', 'a:0:{}', 1),
(101, 'redirects', 'to', 'anomaly.field_type.text', 'a:0:{}', 1),
(102, 'redirects', 'status', 'anomaly.field_type.select', 'a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}', 1),
(103, 'redirects', 'secure', 'anomaly.field_type.boolean', 'a:0:{}', 1),
(104, 'settings', 'key', 'anomaly.field_type.text', 'a:0:{}', 1),
(105, 'settings', 'value', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(106, 'users', 'email', 'anomaly.field_type.email', 'a:0:{}', 1),
(107, 'users', 'username', 'anomaly.field_type.slug', 'a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}', 1),
(108, 'users', 'password', 'anomaly.field_type.text', 'a:1:{s:4:\"type\";s:8:\"password\";}', 1),
(109, 'users', 'remember_token', 'anomaly.field_type.text', 'a:0:{}', 1),
(110, 'users', 'ip_address', 'anomaly.field_type.text', 'a:0:{}', 1),
(111, 'users', 'last_login_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(112, 'users', 'last_activity_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(113, 'users', 'permissions', 'anomaly.field_type.checkboxes', 'a:0:{}', 1),
(114, 'users', 'display_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(115, 'users', 'first_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(116, 'users', 'last_name', 'anomaly.field_type.text', 'a:0:{}', 1),
(117, 'users', 'name', 'anomaly.field_type.text', 'a:0:{}', 1),
(118, 'users', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(119, 'users', 'reset_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(120, 'users', 'reset_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(121, 'users', 'activation_code', 'anomaly.field_type.text', 'a:0:{}', 1),
(122, 'users', 'activation_code_expires_at', 'anomaly.field_type.datetime', 'a:0:{}', 1),
(123, 'users', 'activated', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:0;}', 1),
(124, 'users', 'enabled', 'anomaly.field_type.boolean', 'a:1:{s:13:\"default_value\";b:1;}', 1),
(125, 'users', 'slug', 'anomaly.field_type.slug', 'a:1:{s:7:\"slugify\";s:4:\"name\";}', 1),
(126, 'users', 'roles', 'anomaly.field_type.multiple', 'a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}', 1),
(127, 'html_block', 'html', 'anomaly.field_type.editor', 'a:0:{}', 1),
(128, 'page_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(129, 'page_link_type', 'page', 'anomaly.field_type.relationship', 'a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}', 1),
(130, 'page_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(131, 'url_link_type', 'title', 'anomaly.field_type.text', 'a:0:{}', 1),
(132, 'url_link_type', 'url', 'anomaly.field_type.text', 'a:0:{}', 1),
(133, 'url_link_type', 'description', 'anomaly.field_type.textarea', 'a:0:{}', 1),
(134, 'wysiwyg_block', 'content', 'anomaly.field_type.wysiwyg', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_streams_fields_translations`
--

CREATE TABLE `gcms_streams_fields_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_streams_fields_translations`
--

INSERT INTO `gcms_streams_fields_translations` (`id`, `field_id`, `locale`, `name`, `placeholder`, `warning`, `instructions`) VALUES
(1, 1, 'en', 'anomaly.module.blocks::field.name.name', 'anomaly.module.blocks::field.name.placeholder', 'anomaly.module.blocks::field.name.warning', 'anomaly.module.blocks::field.name.instructions'),
(2, 2, 'en', 'anomaly.module.blocks::field.description.name', 'anomaly.module.blocks::field.description.placeholder', 'anomaly.module.blocks::field.description.warning', 'anomaly.module.blocks::field.description.instructions'),
(3, 3, 'en', 'anomaly.module.blocks::field.slug.name', 'anomaly.module.blocks::field.slug.placeholder', 'anomaly.module.blocks::field.slug.warning', 'anomaly.module.blocks::field.slug.instructions'),
(4, 4, 'en', 'anomaly.module.blocks::field.title.name', 'anomaly.module.blocks::field.title.placeholder', 'anomaly.module.blocks::field.title.warning', 'anomaly.module.blocks::field.title.instructions'),
(5, 5, 'en', 'anomaly.module.blocks::field.field.name', 'anomaly.module.blocks::field.field.placeholder', 'anomaly.module.blocks::field.field.warning', 'anomaly.module.blocks::field.field.instructions'),
(6, 6, 'en', 'anomaly.module.blocks::field.area.name', 'anomaly.module.blocks::field.area.placeholder', 'anomaly.module.blocks::field.area.warning', 'anomaly.module.blocks::field.area.instructions'),
(7, 7, 'en', 'anomaly.module.blocks::field.entry.name', 'anomaly.module.blocks::field.entry.placeholder', 'anomaly.module.blocks::field.entry.warning', 'anomaly.module.blocks::field.entry.instructions'),
(8, 8, 'en', 'anomaly.module.blocks::field.blocks.name', 'anomaly.module.blocks::field.blocks.placeholder', 'anomaly.module.blocks::field.blocks.warning', 'anomaly.module.blocks::field.blocks.instructions'),
(9, 9, 'en', 'anomaly.module.blocks::field.extension.name', 'anomaly.module.blocks::field.extension.placeholder', 'anomaly.module.blocks::field.extension.warning', 'anomaly.module.blocks::field.extension.instructions'),
(10, 10, 'en', 'anomaly.module.blocks::field.display_title.name', 'anomaly.module.blocks::field.display_title.placeholder', 'anomaly.module.blocks::field.display_title.warning', 'anomaly.module.blocks::field.display_title.instructions'),
(11, 11, 'en', 'anomaly.module.blocks::field.category.name', 'anomaly.module.blocks::field.category.placeholder', 'anomaly.module.blocks::field.category.warning', 'anomaly.module.blocks::field.category.instructions'),
(12, 12, 'en', 'anomaly.module.blocks::field.content_layout.name', 'anomaly.module.blocks::field.content_layout.placeholder', 'anomaly.module.blocks::field.content_layout.warning', 'anomaly.module.blocks::field.content_layout.instructions'),
(13, 13, 'en', 'anomaly.module.blocks::field.wrapper_layout.name', 'anomaly.module.blocks::field.wrapper_layout.placeholder', 'anomaly.module.blocks::field.wrapper_layout.warning', 'anomaly.module.blocks::field.wrapper_layout.instructions'),
(14, 14, 'en', 'anomaly.module.blocks::field.type.name', 'anomaly.module.blocks::field.type.placeholder', 'anomaly.module.blocks::field.type.warning', 'anomaly.module.blocks::field.type.instructions'),
(15, 15, 'en', 'anomaly.module.configuration::field.scope.name', 'anomaly.module.configuration::field.scope.placeholder', 'anomaly.module.configuration::field.scope.warning', 'anomaly.module.configuration::field.scope.instructions'),
(16, 16, 'en', 'anomaly.module.configuration::field.key.name', 'anomaly.module.configuration::field.key.placeholder', 'anomaly.module.configuration::field.key.warning', 'anomaly.module.configuration::field.key.instructions'),
(17, 17, 'en', 'anomaly.module.configuration::field.value.name', 'anomaly.module.configuration::field.value.placeholder', 'anomaly.module.configuration::field.value.warning', 'anomaly.module.configuration::field.value.instructions'),
(18, 18, 'en', 'anomaly.module.dashboard::field.name.name', 'anomaly.module.dashboard::field.name.placeholder', 'anomaly.module.dashboard::field.name.warning', 'anomaly.module.dashboard::field.name.instructions'),
(19, 19, 'en', 'anomaly.module.dashboard::field.slug.name', 'anomaly.module.dashboard::field.slug.placeholder', 'anomaly.module.dashboard::field.slug.warning', 'anomaly.module.dashboard::field.slug.instructions'),
(20, 20, 'en', 'anomaly.module.dashboard::field.description.name', 'anomaly.module.dashboard::field.description.placeholder', 'anomaly.module.dashboard::field.description.warning', 'anomaly.module.dashboard::field.description.instructions'),
(21, 21, 'en', 'anomaly.module.dashboard::field.layout.name', 'anomaly.module.dashboard::field.layout.placeholder', 'anomaly.module.dashboard::field.layout.warning', 'anomaly.module.dashboard::field.layout.instructions'),
(22, 22, 'en', 'anomaly.module.dashboard::field.title.name', 'anomaly.module.dashboard::field.title.placeholder', 'anomaly.module.dashboard::field.title.warning', 'anomaly.module.dashboard::field.title.instructions'),
(23, 23, 'en', 'anomaly.module.dashboard::field.extension.name', 'anomaly.module.dashboard::field.extension.placeholder', 'anomaly.module.dashboard::field.extension.warning', 'anomaly.module.dashboard::field.extension.instructions'),
(24, 24, 'en', 'anomaly.module.dashboard::field.column.name', 'anomaly.module.dashboard::field.column.placeholder', 'anomaly.module.dashboard::field.column.warning', 'anomaly.module.dashboard::field.column.instructions'),
(25, 25, 'en', 'anomaly.module.dashboard::field.pinned.name', 'anomaly.module.dashboard::field.pinned.placeholder', 'anomaly.module.dashboard::field.pinned.warning', 'anomaly.module.dashboard::field.pinned.instructions'),
(26, 26, 'en', 'anomaly.module.dashboard::field.dashboard.name', 'anomaly.module.dashboard::field.dashboard.placeholder', 'anomaly.module.dashboard::field.dashboard.warning', 'anomaly.module.dashboard::field.dashboard.instructions'),
(27, 27, 'en', 'anomaly.module.dashboard::field.allowed_roles.name', 'anomaly.module.dashboard::field.allowed_roles.placeholder', 'anomaly.module.dashboard::field.allowed_roles.warning', 'anomaly.module.dashboard::field.allowed_roles.instructions'),
(28, 28, 'en', 'anomaly.module.files::field.name.name', 'anomaly.module.files::field.name.placeholder', 'anomaly.module.files::field.name.warning', 'anomaly.module.files::field.name.instructions'),
(29, 29, 'en', 'anomaly.module.files::field.slug.name', 'anomaly.module.files::field.slug.placeholder', 'anomaly.module.files::field.slug.warning', 'anomaly.module.files::field.slug.instructions'),
(30, 30, 'en', 'anomaly.module.files::field.adapter.name', 'anomaly.module.files::field.adapter.placeholder', 'anomaly.module.files::field.adapter.warning', 'anomaly.module.files::field.adapter.instructions'),
(31, 31, 'en', 'anomaly.module.files::field.folder.name', 'anomaly.module.files::field.folder.placeholder', 'anomaly.module.files::field.folder.warning', 'anomaly.module.files::field.folder.instructions'),
(32, 32, 'en', 'anomaly.module.files::field.disk.name', 'anomaly.module.files::field.disk.placeholder', 'anomaly.module.files::field.disk.warning', 'anomaly.module.files::field.disk.instructions'),
(33, 33, 'en', 'anomaly.module.files::field.entry.name', 'anomaly.module.files::field.entry.placeholder', 'anomaly.module.files::field.entry.warning', 'anomaly.module.files::field.entry.instructions'),
(34, 34, 'en', 'anomaly.module.files::field.description.name', 'anomaly.module.files::field.description.placeholder', 'anomaly.module.files::field.description.warning', 'anomaly.module.files::field.description.instructions'),
(35, 35, 'en', 'anomaly.module.files::field.allowed_types.name', 'anomaly.module.files::field.allowed_types.placeholder', 'anomaly.module.files::field.allowed_types.warning', 'anomaly.module.files::field.allowed_types.instructions'),
(36, 36, 'en', 'anomaly.module.files::field.keywords.name', 'anomaly.module.files::field.keywords.placeholder', 'anomaly.module.files::field.keywords.warning', 'anomaly.module.files::field.keywords.instructions'),
(37, 37, 'en', 'anomaly.module.files::field.extension.name', 'anomaly.module.files::field.extension.placeholder', 'anomaly.module.files::field.extension.warning', 'anomaly.module.files::field.extension.instructions'),
(38, 38, 'en', 'anomaly.module.files::field.width.name', 'anomaly.module.files::field.width.placeholder', 'anomaly.module.files::field.width.warning', 'anomaly.module.files::field.width.instructions'),
(39, 39, 'en', 'anomaly.module.files::field.height.name', 'anomaly.module.files::field.height.placeholder', 'anomaly.module.files::field.height.warning', 'anomaly.module.files::field.height.instructions'),
(40, 40, 'en', 'anomaly.module.files::field.mime_type.name', 'anomaly.module.files::field.mime_type.placeholder', 'anomaly.module.files::field.mime_type.warning', 'anomaly.module.files::field.mime_type.instructions'),
(41, 41, 'en', 'anomaly.module.files::field.size.name', 'anomaly.module.files::field.size.placeholder', 'anomaly.module.files::field.size.warning', 'anomaly.module.files::field.size.instructions'),
(42, 42, 'en', 'anomaly.module.files::field.alt_text.name', 'anomaly.module.files::field.alt_text.placeholder', 'anomaly.module.files::field.alt_text.warning', 'anomaly.module.files::field.alt_text.instructions'),
(43, 43, 'en', 'anomaly.module.files::field.title.name', 'anomaly.module.files::field.title.placeholder', 'anomaly.module.files::field.title.warning', 'anomaly.module.files::field.title.instructions'),
(44, 44, 'en', 'anomaly.module.files::field.caption.name', 'anomaly.module.files::field.caption.placeholder', 'anomaly.module.files::field.caption.warning', 'anomaly.module.files::field.caption.instructions'),
(45, 45, 'en', 'anomaly.module.navigation::field.name.name', 'anomaly.module.navigation::field.name.placeholder', 'anomaly.module.navigation::field.name.warning', 'anomaly.module.navigation::field.name.instructions'),
(46, 46, 'en', 'anomaly.module.navigation::field.class.name', 'anomaly.module.navigation::field.class.placeholder', 'anomaly.module.navigation::field.class.warning', 'anomaly.module.navigation::field.class.instructions'),
(47, 47, 'en', 'anomaly.module.navigation::field.description.name', 'anomaly.module.navigation::field.description.placeholder', 'anomaly.module.navigation::field.description.warning', 'anomaly.module.navigation::field.description.instructions'),
(48, 48, 'en', 'anomaly.module.navigation::field.entry.name', 'anomaly.module.navigation::field.entry.placeholder', 'anomaly.module.navigation::field.entry.warning', 'anomaly.module.navigation::field.entry.instructions'),
(49, 49, 'en', 'anomaly.module.navigation::field.slug.name', 'anomaly.module.navigation::field.slug.placeholder', 'anomaly.module.navigation::field.slug.warning', 'anomaly.module.navigation::field.slug.instructions'),
(50, 50, 'en', 'anomaly.module.navigation::field.menu.name', 'anomaly.module.navigation::field.menu.placeholder', 'anomaly.module.navigation::field.menu.warning', 'anomaly.module.navigation::field.menu.instructions'),
(51, 51, 'en', 'anomaly.module.navigation::field.parent.name', 'anomaly.module.navigation::field.parent.placeholder', 'anomaly.module.navigation::field.parent.warning', 'anomaly.module.navigation::field.parent.instructions'),
(52, 52, 'en', 'anomaly.module.navigation::field.allowed_roles.name', 'anomaly.module.navigation::field.allowed_roles.placeholder', 'anomaly.module.navigation::field.allowed_roles.warning', 'anomaly.module.navigation::field.allowed_roles.instructions'),
(53, 53, 'en', 'anomaly.module.navigation::field.type.name', 'anomaly.module.navigation::field.type.placeholder', 'anomaly.module.navigation::field.type.warning', 'anomaly.module.navigation::field.type.instructions'),
(54, 54, 'en', 'anomaly.module.navigation::field.target.name', 'anomaly.module.navigation::field.target.placeholder', 'anomaly.module.navigation::field.target.warning', 'anomaly.module.navigation::field.target.instructions'),
(55, 55, 'en', 'anomaly.module.pages::field.str_id.name', 'anomaly.module.pages::field.str_id.placeholder', 'anomaly.module.pages::field.str_id.warning', 'anomaly.module.pages::field.str_id.instructions'),
(56, 56, 'en', 'anomaly.module.pages::field.title.name', 'anomaly.module.pages::field.title.placeholder', 'anomaly.module.pages::field.title.warning', 'anomaly.module.pages::field.title.instructions'),
(57, 57, 'en', 'anomaly.module.pages::field.slug.name', 'anomaly.module.pages::field.slug.placeholder', 'anomaly.module.pages::field.slug.warning', 'anomaly.module.pages::field.slug.instructions'),
(58, 58, 'en', 'anomaly.module.pages::field.content.name', 'anomaly.module.pages::field.content.placeholder', 'anomaly.module.pages::field.content.warning', 'anomaly.module.pages::field.content.instructions'),
(59, 59, 'en', 'anomaly.module.pages::field.path.name', 'anomaly.module.pages::field.path.placeholder', 'anomaly.module.pages::field.path.warning', 'anomaly.module.pages::field.path.instructions'),
(60, 60, 'en', 'anomaly.module.pages::field.enabled.name', 'anomaly.module.pages::field.enabled.placeholder', 'anomaly.module.pages::field.enabled.warning', 'anomaly.module.pages::field.enabled.instructions'),
(61, 61, 'en', 'anomaly.module.pages::field.home.name', 'anomaly.module.pages::field.home.placeholder', 'anomaly.module.pages::field.home.warning', 'anomaly.module.pages::field.home.instructions'),
(62, 62, 'en', 'anomaly.module.pages::field.meta_title.name', 'anomaly.module.pages::field.meta_title.placeholder', 'anomaly.module.pages::field.meta_title.warning', 'anomaly.module.pages::field.meta_title.instructions'),
(63, 63, 'en', 'anomaly.module.pages::field.meta_description.name', 'anomaly.module.pages::field.meta_description.placeholder', 'anomaly.module.pages::field.meta_description.warning', 'anomaly.module.pages::field.meta_description.instructions'),
(65, 65, 'en', 'anomaly.module.pages::field.layout.name', 'anomaly.module.pages::field.layout.placeholder', 'anomaly.module.pages::field.layout.warning', 'anomaly.module.pages::field.layout.instructions'),
(66, 66, 'en', 'anomaly.module.pages::field.allowed_roles.name', 'anomaly.module.pages::field.allowed_roles.placeholder', 'anomaly.module.pages::field.allowed_roles.warning', 'anomaly.module.pages::field.allowed_roles.instructions'),
(67, 67, 'en', 'anomaly.module.pages::field.parent.name', 'anomaly.module.pages::field.parent.placeholder', 'anomaly.module.pages::field.parent.warning', 'anomaly.module.pages::field.parent.instructions'),
(68, 68, 'en', 'anomaly.module.pages::field.theme_layout.name', 'anomaly.module.pages::field.theme_layout.placeholder', 'anomaly.module.pages::field.theme_layout.warning', 'anomaly.module.pages::field.theme_layout.instructions'),
(69, 69, 'en', 'anomaly.module.pages::field.type.name', 'anomaly.module.pages::field.type.placeholder', 'anomaly.module.pages::field.type.warning', 'anomaly.module.pages::field.type.instructions'),
(70, 70, 'en', 'anomaly.module.pages::field.handler.name', 'anomaly.module.pages::field.handler.placeholder', 'anomaly.module.pages::field.handler.warning', 'anomaly.module.pages::field.handler.instructions'),
(71, 71, 'en', 'anomaly.module.pages::field.visible.name', 'anomaly.module.pages::field.visible.placeholder', 'anomaly.module.pages::field.visible.warning', 'anomaly.module.pages::field.visible.instructions'),
(72, 72, 'en', 'anomaly.module.pages::field.exact.name', 'anomaly.module.pages::field.exact.placeholder', 'anomaly.module.pages::field.exact.warning', 'anomaly.module.pages::field.exact.instructions'),
(73, 73, 'en', 'anomaly.module.pages::field.entry.name', 'anomaly.module.pages::field.entry.placeholder', 'anomaly.module.pages::field.entry.warning', 'anomaly.module.pages::field.entry.instructions'),
(74, 74, 'en', 'anomaly.module.pages::field.name.name', 'anomaly.module.pages::field.name.placeholder', 'anomaly.module.pages::field.name.warning', 'anomaly.module.pages::field.name.instructions'),
(75, 75, 'en', 'anomaly.module.pages::field.description.name', 'anomaly.module.pages::field.description.placeholder', 'anomaly.module.pages::field.description.warning', 'anomaly.module.pages::field.description.instructions'),
(76, 76, 'en', 'anomaly.module.posts::field.str_id.name', 'anomaly.module.posts::field.str_id.placeholder', 'anomaly.module.posts::field.str_id.warning', 'anomaly.module.posts::field.str_id.instructions'),
(77, 77, 'en', 'anomaly.module.posts::field.name.name', 'anomaly.module.posts::field.name.placeholder', 'anomaly.module.posts::field.name.warning', 'anomaly.module.posts::field.name.instructions'),
(78, 78, 'en', 'anomaly.module.posts::field.title.name', 'anomaly.module.posts::field.title.placeholder', 'anomaly.module.posts::field.title.warning', 'anomaly.module.posts::field.title.instructions'),
(79, 79, 'en', 'anomaly.module.posts::field.slug.name', 'anomaly.module.posts::field.slug.placeholder', 'anomaly.module.posts::field.slug.warning', 'anomaly.module.posts::field.slug.instructions'),
(80, 80, 'en', 'anomaly.module.posts::field.content.name', 'anomaly.module.posts::field.content.placeholder', 'anomaly.module.posts::field.content.warning', 'anomaly.module.posts::field.content.instructions'),
(81, 81, 'en', 'anomaly.module.posts::field.type.name', 'anomaly.module.posts::field.type.placeholder', 'anomaly.module.posts::field.type.warning', 'anomaly.module.posts::field.type.instructions'),
(82, 82, 'en', 'anomaly.module.posts::field.tags.name', 'anomaly.module.posts::field.tags.placeholder', 'anomaly.module.posts::field.tags.warning', 'anomaly.module.posts::field.tags.instructions'),
(83, 83, 'en', 'anomaly.module.posts::field.summary.name', 'anomaly.module.posts::field.summary.placeholder', 'anomaly.module.posts::field.summary.warning', 'anomaly.module.posts::field.summary.instructions'),
(84, 84, 'en', 'anomaly.module.posts::field.description.name', 'anomaly.module.posts::field.description.placeholder', 'anomaly.module.posts::field.description.warning', 'anomaly.module.posts::field.description.instructions'),
(85, 85, 'en', 'anomaly.module.posts::field.publish_at.name', 'anomaly.module.posts::field.publish_at.placeholder', 'anomaly.module.posts::field.publish_at.warning', 'anomaly.module.posts::field.publish_at.instructions'),
(86, 86, 'en', 'anomaly.module.posts::field.entry.name', 'anomaly.module.posts::field.entry.placeholder', 'anomaly.module.posts::field.entry.warning', 'anomaly.module.posts::field.entry.instructions'),
(87, 87, 'en', 'anomaly.module.posts::field.author.name', 'anomaly.module.posts::field.author.placeholder', 'anomaly.module.posts::field.author.warning', 'anomaly.module.posts::field.author.instructions'),
(88, 88, 'en', 'anomaly.module.posts::field.layout.name', 'anomaly.module.posts::field.layout.placeholder', 'anomaly.module.posts::field.layout.warning', 'anomaly.module.posts::field.layout.instructions'),
(89, 89, 'en', 'anomaly.module.posts::field.category.name', 'anomaly.module.posts::field.category.placeholder', 'anomaly.module.posts::field.category.warning', 'anomaly.module.posts::field.category.instructions'),
(90, 90, 'en', 'anomaly.module.posts::field.enabled.name', 'anomaly.module.posts::field.enabled.placeholder', 'anomaly.module.posts::field.enabled.warning', 'anomaly.module.posts::field.enabled.instructions'),
(91, 91, 'en', 'anomaly.module.posts::field.featured.name', 'anomaly.module.posts::field.featured.placeholder', 'anomaly.module.posts::field.featured.warning', 'anomaly.module.posts::field.featured.instructions'),
(92, 92, 'en', 'anomaly.module.posts::field.meta_title.name', 'anomaly.module.posts::field.meta_title.placeholder', 'anomaly.module.posts::field.meta_title.warning', 'anomaly.module.posts::field.meta_title.instructions'),
(93, 93, 'en', 'anomaly.module.posts::field.meta_description.name', 'anomaly.module.posts::field.meta_description.placeholder', 'anomaly.module.posts::field.meta_description.warning', 'anomaly.module.posts::field.meta_description.instructions'),
(95, 95, 'en', 'anomaly.module.posts::field.ttl.name', 'anomaly.module.posts::field.ttl.placeholder', 'anomaly.module.posts::field.ttl.warning', 'anomaly.module.posts::field.ttl.instructions'),
(96, 96, 'en', 'anomaly.module.posts::field.theme_layout.name', 'anomaly.module.posts::field.theme_layout.placeholder', 'anomaly.module.posts::field.theme_layout.warning', 'anomaly.module.posts::field.theme_layout.instructions'),
(97, 97, 'en', 'anomaly.module.preferences::field.user.name', 'anomaly.module.preferences::field.user.placeholder', 'anomaly.module.preferences::field.user.warning', 'anomaly.module.preferences::field.user.instructions'),
(98, 98, 'en', 'anomaly.module.preferences::field.key.name', 'anomaly.module.preferences::field.key.placeholder', 'anomaly.module.preferences::field.key.warning', 'anomaly.module.preferences::field.key.instructions'),
(99, 99, 'en', 'anomaly.module.preferences::field.value.name', 'anomaly.module.preferences::field.value.placeholder', 'anomaly.module.preferences::field.value.warning', 'anomaly.module.preferences::field.value.instructions'),
(100, 100, 'en', 'anomaly.module.redirects::field.from.name', 'anomaly.module.redirects::field.from.placeholder', 'anomaly.module.redirects::field.from.warning', 'anomaly.module.redirects::field.from.instructions'),
(101, 101, 'en', 'anomaly.module.redirects::field.to.name', 'anomaly.module.redirects::field.to.placeholder', 'anomaly.module.redirects::field.to.warning', 'anomaly.module.redirects::field.to.instructions'),
(102, 102, 'en', 'anomaly.module.redirects::field.status.name', 'anomaly.module.redirects::field.status.placeholder', 'anomaly.module.redirects::field.status.warning', 'anomaly.module.redirects::field.status.instructions'),
(103, 103, 'en', 'anomaly.module.redirects::field.secure.name', 'anomaly.module.redirects::field.secure.placeholder', 'anomaly.module.redirects::field.secure.warning', 'anomaly.module.redirects::field.secure.instructions'),
(104, 104, 'en', 'anomaly.module.settings::field.key.name', 'anomaly.module.settings::field.key.placeholder', 'anomaly.module.settings::field.key.warning', 'anomaly.module.settings::field.key.instructions'),
(105, 105, 'en', 'anomaly.module.settings::field.value.name', 'anomaly.module.settings::field.value.placeholder', 'anomaly.module.settings::field.value.warning', 'anomaly.module.settings::field.value.instructions'),
(106, 106, 'en', 'anomaly.module.users::field.email.name', 'anomaly.module.users::field.email.placeholder', 'anomaly.module.users::field.email.warning', 'anomaly.module.users::field.email.instructions'),
(107, 107, 'en', 'anomaly.module.users::field.username.name', 'anomaly.module.users::field.username.placeholder', 'anomaly.module.users::field.username.warning', 'anomaly.module.users::field.username.instructions'),
(108, 108, 'en', 'anomaly.module.users::field.password.name', 'anomaly.module.users::field.password.placeholder', 'anomaly.module.users::field.password.warning', 'anomaly.module.users::field.password.instructions'),
(109, 109, 'en', 'anomaly.module.users::field.remember_token.name', 'anomaly.module.users::field.remember_token.placeholder', 'anomaly.module.users::field.remember_token.warning', 'anomaly.module.users::field.remember_token.instructions'),
(110, 110, 'en', 'anomaly.module.users::field.ip_address.name', 'anomaly.module.users::field.ip_address.placeholder', 'anomaly.module.users::field.ip_address.warning', 'anomaly.module.users::field.ip_address.instructions'),
(111, 111, 'en', 'anomaly.module.users::field.last_login_at.name', 'anomaly.module.users::field.last_login_at.placeholder', 'anomaly.module.users::field.last_login_at.warning', 'anomaly.module.users::field.last_login_at.instructions'),
(112, 112, 'en', 'anomaly.module.users::field.last_activity_at.name', 'anomaly.module.users::field.last_activity_at.placeholder', 'anomaly.module.users::field.last_activity_at.warning', 'anomaly.module.users::field.last_activity_at.instructions'),
(113, 113, 'en', 'anomaly.module.users::field.permissions.name', 'anomaly.module.users::field.permissions.placeholder', 'anomaly.module.users::field.permissions.warning', 'anomaly.module.users::field.permissions.instructions'),
(114, 114, 'en', 'anomaly.module.users::field.display_name.name', 'anomaly.module.users::field.display_name.placeholder', 'anomaly.module.users::field.display_name.warning', 'anomaly.module.users::field.display_name.instructions'),
(115, 115, 'en', 'anomaly.module.users::field.first_name.name', 'anomaly.module.users::field.first_name.placeholder', 'anomaly.module.users::field.first_name.warning', 'anomaly.module.users::field.first_name.instructions'),
(116, 116, 'en', 'anomaly.module.users::field.last_name.name', 'anomaly.module.users::field.last_name.placeholder', 'anomaly.module.users::field.last_name.warning', 'anomaly.module.users::field.last_name.instructions'),
(117, 117, 'en', 'anomaly.module.users::field.name.name', 'anomaly.module.users::field.name.placeholder', 'anomaly.module.users::field.name.warning', 'anomaly.module.users::field.name.instructions'),
(118, 118, 'en', 'anomaly.module.users::field.description.name', 'anomaly.module.users::field.description.placeholder', 'anomaly.module.users::field.description.warning', 'anomaly.module.users::field.description.instructions'),
(119, 119, 'en', 'anomaly.module.users::field.reset_code.name', 'anomaly.module.users::field.reset_code.placeholder', 'anomaly.module.users::field.reset_code.warning', 'anomaly.module.users::field.reset_code.instructions'),
(120, 120, 'en', 'anomaly.module.users::field.reset_code_expires_at.name', 'anomaly.module.users::field.reset_code_expires_at.placeholder', 'anomaly.module.users::field.reset_code_expires_at.warning', 'anomaly.module.users::field.reset_code_expires_at.instructions'),
(121, 121, 'en', 'anomaly.module.users::field.activation_code.name', 'anomaly.module.users::field.activation_code.placeholder', 'anomaly.module.users::field.activation_code.warning', 'anomaly.module.users::field.activation_code.instructions'),
(122, 122, 'en', 'anomaly.module.users::field.activation_code_expires_at.name', 'anomaly.module.users::field.activation_code_expires_at.placeholder', 'anomaly.module.users::field.activation_code_expires_at.warning', 'anomaly.module.users::field.activation_code_expires_at.instructions'),
(123, 123, 'en', 'anomaly.module.users::field.activated.name', 'anomaly.module.users::field.activated.placeholder', 'anomaly.module.users::field.activated.warning', 'anomaly.module.users::field.activated.instructions'),
(124, 124, 'en', 'anomaly.module.users::field.enabled.name', 'anomaly.module.users::field.enabled.placeholder', 'anomaly.module.users::field.enabled.warning', 'anomaly.module.users::field.enabled.instructions'),
(125, 125, 'en', 'anomaly.module.users::field.slug.name', 'anomaly.module.users::field.slug.placeholder', 'anomaly.module.users::field.slug.warning', 'anomaly.module.users::field.slug.instructions'),
(126, 126, 'en', 'anomaly.module.users::field.roles.name', 'anomaly.module.users::field.roles.placeholder', 'anomaly.module.users::field.roles.warning', 'anomaly.module.users::field.roles.instructions'),
(127, 127, 'en', 'anomaly.extension.html_block::field.html.name', 'anomaly.extension.html_block::field.html.placeholder', 'anomaly.extension.html_block::field.html.warning', 'anomaly.extension.html_block::field.html.instructions'),
(128, 128, 'en', 'anomaly.extension.page_link_type::field.title.name', 'anomaly.extension.page_link_type::field.title.placeholder', 'anomaly.extension.page_link_type::field.title.warning', 'anomaly.extension.page_link_type::field.title.instructions'),
(129, 129, 'en', 'anomaly.extension.page_link_type::field.page.name', 'anomaly.extension.page_link_type::field.page.placeholder', 'anomaly.extension.page_link_type::field.page.warning', 'anomaly.extension.page_link_type::field.page.instructions'),
(130, 130, 'en', 'anomaly.extension.page_link_type::field.description.name', 'anomaly.extension.page_link_type::field.description.placeholder', 'anomaly.extension.page_link_type::field.description.warning', 'anomaly.extension.page_link_type::field.description.instructions'),
(131, 131, 'en', 'anomaly.extension.url_link_type::field.title.name', 'anomaly.extension.url_link_type::field.title.placeholder', 'anomaly.extension.url_link_type::field.title.warning', 'anomaly.extension.url_link_type::field.title.instructions'),
(132, 132, 'en', 'anomaly.extension.url_link_type::field.url.name', 'anomaly.extension.url_link_type::field.url.placeholder', 'anomaly.extension.url_link_type::field.url.warning', 'anomaly.extension.url_link_type::field.url.instructions'),
(133, 133, 'en', 'anomaly.extension.url_link_type::field.description.name', 'anomaly.extension.url_link_type::field.description.placeholder', 'anomaly.extension.url_link_type::field.description.warning', 'anomaly.extension.url_link_type::field.description.instructions'),
(134, 134, 'en', 'anomaly.extension.wysiwyg_block::field.content.name', 'anomaly.extension.wysiwyg_block::field.content.placeholder', 'anomaly.extension.wysiwyg_block::field.content.warning', 'anomaly.extension.wysiwyg_block::field.content.instructions');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_streams_locks`
--

CREATE TABLE `gcms_streams_locks` (
  `id` int(10) UNSIGNED NOT NULL,
  `locked_at` datetime NOT NULL,
  `locked_by_id` int(11) NOT NULL,
  `lockable_id` int(10) UNSIGNED NOT NULL,
  `lockable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_streams_streams`
--

CREATE TABLE `gcms_streams_streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `order_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sortable` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `trashable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  `versionable` tinyint(1) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_streams_streams`
--

INSERT INTO `gcms_streams_streams` (`id`, `sort_order`, `namespace`, `slug`, `prefix`, `title_column`, `order_by`, `locked`, `hidden`, `sortable`, `searchable`, `trashable`, `translatable`, `versionable`, `config`) VALUES
(1, NULL, 'blocks', 'areas', 'blocks_', 'name', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(2, NULL, 'blocks', 'blocks', 'blocks_', 'type', 'id', 0, 0, 1, 0, 0, 1, 0, 'a:0:{}'),
(3, NULL, 'blocks', 'types', 'blocks_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(4, NULL, 'configuration', 'configuration', 'configuration_', 'id', 'id', 1, 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(5, NULL, 'dashboard', 'dashboards', 'dashboard_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(6, NULL, 'dashboard', 'widgets', 'dashboard_', 'title', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(7, NULL, 'files', 'disks', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(8, NULL, 'files', 'folders', 'files_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(9, NULL, 'files', 'files', 'files_', 'name', 'id', 0, 0, 0, 1, 1, 0, 0, 'a:0:{}'),
(10, NULL, 'navigation', 'menus', 'navigation_', 'name', 'id', 0, 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(11, NULL, 'navigation', 'links', 'navigation_', 'id', 'id', 0, 0, 1, 0, 1, 0, 0, 'a:0:{}'),
(12, NULL, 'pages', 'pages', 'pages_', 'title', 'id', 0, 0, 1, 1, 1, 1, 0, 'a:0:{}'),
(13, NULL, 'pages', 'types', 'pages_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(14, NULL, 'posts', 'categories', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(15, NULL, 'posts', 'posts', 'posts_', 'title', 'id', 0, 0, 0, 1, 1, 1, 0, 'a:0:{}'),
(16, NULL, 'posts', 'types', 'posts_', 'name', 'id', 0, 0, 1, 0, 1, 1, 0, 'a:0:{}'),
(17, NULL, 'preferences', 'preferences', 'preferences_', 'id', 'id', 0, 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(18, NULL, 'redirects', 'redirects', 'redirects_', 'from', 'id', 0, 0, 1, 0, 1, 0, 0, 'a:0:{}'),
(19, NULL, 'redirects', 'domains', 'redirects_', 'from', 'id', 0, 0, 1, 0, 1, 0, 0, 'a:0:{}'),
(20, NULL, 'settings', 'settings', 'settings_', 'id', 'id', 0, 0, 0, 0, 0, 0, 0, 'a:0:{}'),
(21, NULL, 'users', 'users', 'users_', 'display_name', 'id', 0, 0, 0, 1, 1, 0, 0, 'a:0:{}'),
(22, NULL, 'users', 'roles', 'users_', 'name', 'id', 0, 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(23, NULL, 'html_block', 'blocks', 'html_block_', 'id', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(24, NULL, 'page_link_type', 'pages', 'page_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(25, NULL, 'url_link_type', 'urls', 'url_link_type_', 'title', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(26, NULL, 'wysiwyg_block', 'blocks', 'wysiwyg_block_', 'id', 'id', 0, 0, 0, 0, 0, 1, 0, 'a:0:{}'),
(27, NULL, 'files', 'images', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(28, NULL, 'files', 'documents', 'files_', 'id', 'id', 0, 0, 0, 0, 1, 1, 0, 'a:0:{}'),
(29, NULL, 'pages', 'default_pages', 'pages_', 'id', 'id', 0, 1, 0, 0, 1, 1, 0, 'a:0:{}'),
(30, NULL, 'posts', 'default_posts', 'posts_', 'id', 'id', 0, 1, 0, 0, 1, 1, 0, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_streams_streams_translations`
--

CREATE TABLE `gcms_streams_streams_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_streams_streams_translations`
--

INSERT INTO `gcms_streams_streams_translations` (`id`, `stream_id`, `locale`, `name`, `description`) VALUES
(1, 1, 'en', 'anomaly.module.blocks::stream.areas.name', 'anomaly.module.blocks::stream.areas.description'),
(2, 2, 'en', 'anomaly.module.blocks::stream.blocks.name', 'anomaly.module.blocks::stream.blocks.description'),
(3, 3, 'en', 'anomaly.module.blocks::stream.types.name', 'anomaly.module.blocks::stream.types.description'),
(4, 4, 'en', 'anomaly.module.configuration::stream.configuration.name', 'anomaly.module.configuration::stream.configuration.description'),
(5, 5, 'en', 'anomaly.module.dashboard::stream.dashboards.name', 'anomaly.module.dashboard::stream.dashboards.description'),
(6, 6, 'en', 'anomaly.module.dashboard::stream.widgets.name', 'anomaly.module.dashboard::stream.widgets.description'),
(7, 7, 'en', 'anomaly.module.files::stream.disks.name', 'anomaly.module.files::stream.disks.description'),
(8, 8, 'en', 'anomaly.module.files::stream.folders.name', 'anomaly.module.files::stream.folders.description'),
(9, 9, 'en', 'anomaly.module.files::stream.files.name', 'anomaly.module.files::stream.files.description'),
(10, 10, 'en', 'anomaly.module.navigation::stream.menus.name', 'anomaly.module.navigation::stream.menus.description'),
(11, 11, 'en', 'anomaly.module.navigation::stream.links.name', 'anomaly.module.navigation::stream.links.description'),
(12, 12, 'en', 'anomaly.module.pages::stream.pages.name', 'anomaly.module.pages::stream.pages.description'),
(13, 13, 'en', 'anomaly.module.pages::stream.types.name', 'anomaly.module.pages::stream.types.description'),
(14, 14, 'en', 'anomaly.module.posts::stream.categories.name', 'anomaly.module.posts::stream.categories.description'),
(15, 15, 'en', 'anomaly.module.posts::stream.posts.name', 'anomaly.module.posts::stream.posts.description'),
(16, 16, 'en', 'anomaly.module.posts::stream.types.name', 'anomaly.module.posts::stream.types.description'),
(17, 17, 'en', 'anomaly.module.preferences::stream.preferences.name', 'anomaly.module.preferences::stream.preferences.description'),
(18, 18, 'en', 'anomaly.module.redirects::stream.redirects.name', 'anomaly.module.redirects::stream.redirects.description'),
(19, 19, 'en', 'anomaly.module.redirects::stream.domains.name', 'anomaly.module.redirects::stream.domains.description'),
(20, 20, 'en', 'anomaly.module.settings::stream.settings.name', 'anomaly.module.settings::stream.settings.description'),
(21, 21, 'en', 'anomaly.module.users::stream.users.name', 'anomaly.module.users::stream.users.description'),
(22, 22, 'en', 'anomaly.module.users::stream.roles.name', 'anomaly.module.users::stream.roles.description'),
(23, 23, 'en', 'anomaly.extension.html_block::stream.blocks.name', 'anomaly.extension.html_block::stream.blocks.description'),
(24, 24, 'en', 'anomaly.extension.page_link_type::stream.pages.name', 'anomaly.extension.page_link_type::stream.pages.description'),
(25, 25, 'en', 'anomaly.extension.url_link_type::stream.urls.name', 'anomaly.extension.url_link_type::stream.urls.description'),
(26, 26, 'en', 'anomaly.extension.wysiwyg_block::stream.blocks.name', 'anomaly.extension.wysiwyg_block::stream.blocks.description'),
(27, 27, 'en', 'Images', 'A folder for images.'),
(28, 28, 'en', 'Documents', 'A folder for documents.'),
(29, 29, 'en', 'Default', 'A simple page type.'),
(30, 30, 'en', 'Default', 'A simple post type.');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_streams_versions`
--

CREATE TABLE `gcms_streams_versions` (
  `version` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `versionable_id` int(10) UNSIGNED NOT NULL,
  `versionable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_streams_versions`
--

INSERT INTO `gcms_streams_versions` (`version`, `created_at`, `created_by_id`, `versionable_id`, `versionable_type`, `ip_address`, `model`, `data`) VALUES
(1, '2019-05-03 00:50:01', NULL, 1, 'Anomaly\\PagesModule\\Page\\PageModel', '127.0.0.1', 'O:34:\"Anomaly\\PagesModule\\Page\\PageModel\":52:{s:14:\"\0*\0versionable\";b:1;s:7:\"\0*\0with\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:12:\"translations\";i:3;s:12:\"allowedRoles\";}s:11:\"\0*\0cascades\";a:2:{i:0;s:8:\"children\";i:1;s:5:\"entry\";}s:9:\"\0*\0active\";b:0;s:10:\"\0*\0current\";b:0;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0table\";s:11:\"pages_pages\";s:12:\"\0*\0titleName\";s:5:\"title\";s:8:\"\0*\0rules\";a:15:{s:6:\"str_id\";s:8:\"required\";s:5:\"title\";s:8:\"required\";s:4:\"slug\";s:8:\"required\";s:4:\"path\";s:8:\"required\";s:4:\"type\";s:8:\"required\";s:5:\"entry\";s:0:\"\";s:6:\"parent\";s:0:\"\";s:7:\"visible\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:5:\"exact\";s:0:\"\";s:4:\"home\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:12:\"theme_layout\";s:0:\"\";s:13:\"allowed_roles\";s:0:\"\";}s:9:\"\0*\0fields\";a:15:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:4:\"slug\";i:3;s:4:\"path\";i:4;s:4:\"type\";i:5;s:5:\"entry\";i:6;s:6:\"parent\";i:7;s:7:\"visible\";i:8;s:7:\"enabled\";i:9;s:5:\"exact\";i:10;s:4:\"home\";i:11;s:10:\"meta_title\";i:12;s:16:\"meta_description\";i:13;s:12:\"theme_layout\";i:14;s:13:\"allowed_roles\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:6:\"parent\";i:3;s:13:\"allowed_roles\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:5:\"title\";i:1;s:10:\"meta_title\";i:2;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPagesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:19:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:6:\"str_id\";s:24:\"CGNPskzVUo9sLqDHGuFxL2aE\";s:4:\"slug\";s:7:\"welcome\";s:4:\"path\";s:1:\"/\";s:7:\"type_id\";i:1;s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:9:\"parent_id\";N;s:7:\"visible\";i:1;s:7:\"enabled\";i:1;s:5:\"exact\";i:1;s:4:\"home\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPagesEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"pages_pages_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:5:\"title\";s:7:\"Welcome\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:5:\"title\";s:7:\"Welcome\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}s:4:\"type\";O:34:\"Anomaly\\PagesModule\\Type\\TypeModel\":48:{s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"pages\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:11:\"pages_types\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:6:{s:4:\"name\";s:32:\"required|unique:pages_types,name\";s:4:\"slug\";s:32:\"required|unique:pages_types,slug\";s:11:\"description\";s:0:\"\";s:12:\"theme_layout\";s:8:\"required\";s:6:\"layout\";s:8:\"required\";s:7:\"handler\";s:8:\"required\";}s:9:\"\0*\0fields\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:12:\"theme_layout\";i:4;s:6:\"layout\";i:5;s:7:\"handler\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"pages_types_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"parent\";N;s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\":48:{s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:19:\"pages_default_pages\";s:12:\"\0*\0titleName\";s:2:\"id\";s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:32:\"pages_default_pages_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:8:\"children\";O:39:\"Anomaly\\PagesModule\\Page\\PageCollection\":1:{s:8:\"\0*\0items\";a:0:{}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:22:{s:4:\"slug\";s:7:\"welcome\";s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:4:\"home\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"str_id\";s:24:\"CGNPskzVUo9sLqDHGuFxL2aE\";s:4:\"path\";s:1:\"/\";s:5:\"title\";s:7:\"Welcome\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:7:\"type.id\";i:1;s:15:\"type.sort_order\";i:1;s:15:\"type.deleted_at\";N;s:9:\"type.slug\";s:7:\"default\";s:17:\"type.theme_layout\";s:27:\"theme::layouts/default.twig\";s:11:\"type.layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:12:\"type.handler\";s:38:\"anomaly.extension.default_page_handler\";s:9:\"type.name\";s:7:\"Default\";s:16:\"type.description\";s:19:\"A simple page type.\";s:6:\"parent\";N;}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}', 'a:0:{}'),
(2, '2019-05-03 00:50:01', NULL, 2, 'Anomaly\\PagesModule\\Page\\PageModel', '127.0.0.1', 'O:34:\"Anomaly\\PagesModule\\Page\\PageModel\":52:{s:14:\"\0*\0versionable\";b:1;s:7:\"\0*\0with\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:12:\"translations\";i:3;s:12:\"allowedRoles\";}s:11:\"\0*\0cascades\";a:2:{i:0;s:8:\"children\";i:1;s:5:\"entry\";}s:9:\"\0*\0active\";b:0;s:10:\"\0*\0current\";b:0;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0table\";s:11:\"pages_pages\";s:12:\"\0*\0titleName\";s:5:\"title\";s:8:\"\0*\0rules\";a:15:{s:6:\"str_id\";s:8:\"required\";s:5:\"title\";s:8:\"required\";s:4:\"slug\";s:8:\"required\";s:4:\"path\";s:8:\"required\";s:4:\"type\";s:8:\"required\";s:5:\"entry\";s:0:\"\";s:6:\"parent\";s:0:\"\";s:7:\"visible\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:5:\"exact\";s:0:\"\";s:4:\"home\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:12:\"theme_layout\";s:0:\"\";s:13:\"allowed_roles\";s:0:\"\";}s:9:\"\0*\0fields\";a:15:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:4:\"slug\";i:3;s:4:\"path\";i:4;s:4:\"type\";i:5;s:5:\"entry\";i:6;s:6:\"parent\";i:7;s:7:\"visible\";i:8;s:7:\"enabled\";i:9;s:5:\"exact\";i:10;s:4:\"home\";i:11;s:10:\"meta_title\";i:12;s:16:\"meta_description\";i:13;s:12:\"theme_layout\";i:14;s:13:\"allowed_roles\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:6:\"parent\";i:3;s:13:\"allowed_roles\";}s:23:\"\0*\0translatedAttributes\";a:3:{i:0;s:5:\"title\";i:1;s:10:\"meta_title\";i:2;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPagesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:19:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:6:\"str_id\";s:24:\"Ftv4OLixJQg1nQs9DlNK9Esc\";s:4:\"slug\";s:7:\"contact\";s:4:\"path\";s:8:\"/contact\";s:7:\"type_id\";i:1;s:8:\"entry_id\";i:2;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:9:\"parent_id\";N;s:7:\"visible\";i:1;s:7:\"enabled\";i:1;s:5:\"exact\";i:1;s:4:\"home\";i:0;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPagesEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"pages_pages_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:2;s:8:\"entry_id\";i:2;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:5:\"title\";s:7:\"Contact\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:2;s:8:\"entry_id\";i:2;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:5:\"title\";s:7:\"Contact\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}s:4:\"type\";O:34:\"Anomaly\\PagesModule\\Type\\TypeModel\":48:{s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"pages\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:11:\"pages_types\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:6:{s:4:\"name\";s:32:\"required|unique:pages_types,name\";s:4:\"slug\";s:32:\"required|unique:pages_types,slug\";s:11:\"description\";s:0:\"\";s:12:\"theme_layout\";s:8:\"required\";s:6:\"layout\";s:8:\"required\";s:7:\"handler\";s:8:\"required\";}s:9:\"\0*\0fields\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:12:\"theme_layout\";i:4;s:6:\"layout\";i:5;s:7:\"handler\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"pages_types_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:6:\"parent\";r:176;}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"parent\";N;s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\":48:{s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:19:\"pages_default_pages\";s:12:\"\0*\0titleName\";s:2:\"id\";s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:32:\"pages_default_pages_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:8:\"entry_id\";i:2;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:119:\"<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:8:\"entry_id\";i:2;s:10:\"created_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:119:\"<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:8:\"children\";O:39:\"Anomaly\\PagesModule\\Page\\PageCollection\":1:{s:8:\"\0*\0items\";a:0:{}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:21:{s:4:\"slug\";s:7:\"contact\";s:8:\"entry_id\";i:2;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"str_id\";s:24:\"Ftv4OLixJQg1nQs9DlNK9Esc\";s:4:\"path\";s:8:\"/contact\";s:5:\"title\";s:7:\"Contact\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:7:\"type.id\";i:1;s:15:\"type.sort_order\";i:1;s:15:\"type.deleted_at\";N;s:9:\"type.slug\";s:7:\"default\";s:17:\"type.theme_layout\";s:27:\"theme::layouts/default.twig\";s:11:\"type.layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:12:\"type.handler\";s:38:\"anomaly.extension.default_page_handler\";s:9:\"type.name\";s:7:\"Default\";s:16:\"type.description\";s:19:\"A simple page type.\";s:6:\"parent\";N;}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}', 'a:0:{}');
INSERT INTO `gcms_streams_versions` (`version`, `created_at`, `created_by_id`, `versionable_id`, `versionable_type`, `ip_address`, `model`, `data`) VALUES
(3, '2019-05-03 00:50:02', NULL, 1, 'Anomaly\\PostsModule\\Post\\PostModel', '127.0.0.1', 'O:34:\"Anomaly\\PostsModule\\Post\\PostModel\":50:{s:14:\"\0*\0versionable\";b:1;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;s:7:\"\0*\0with\";a:2:{i:0;s:5:\"entry\";i:1;s:12:\"translations\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"entry\";}s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0table\";s:11:\"posts_posts\";s:12:\"\0*\0titleName\";s:5:\"title\";s:8:\"\0*\0rules\";a:14:{s:6:\"str_id\";s:34:\"required|unique:posts_posts,str_id\";s:5:\"title\";s:8:\"required\";s:7:\"summary\";s:0:\"\";s:4:\"slug\";s:32:\"required|unique:posts_posts,slug\";s:4:\"type\";s:8:\"required\";s:10:\"publish_at\";s:8:\"required\";s:6:\"author\";s:8:\"required\";s:5:\"entry\";s:8:\"required\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:8:\"category\";s:0:\"\";s:8:\"featured\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:4:\"tags\";s:0:\"\";}s:9:\"\0*\0fields\";a:14:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:7:\"summary\";i:3;s:4:\"slug\";i:4;s:4:\"type\";i:5;s:10:\"publish_at\";i:6;s:6:\"author\";i:7;s:5:\"entry\";i:8;s:10:\"meta_title\";i:9;s:16:\"meta_description\";i:10;s:8:\"category\";i:11;s:8:\"featured\";i:12;s:7:\"enabled\";i:13;s:4:\"tags\";}s:8:\"\0*\0dates\";a:4:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"publish_at\";i:3;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:6:\"author\";i:2;s:5:\"entry\";i:3;s:8:\"category\";}s:23:\"\0*\0translatedAttributes\";a:4:{i:0;s:5:\"title\";i:1;s:7:\"summary\";i:2;s:10:\"meta_title\";i:3;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostsEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:18:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:6:\"str_id\";s:16:\"FHTK2AxwPrQMCVEG\";s:4:\"slug\";s:18:\"welcome-to-pyrocms\";s:7:\"type_id\";i:1;s:10:\"publish_at\";s:19:\"2019-05-03 00:50:02\";s:9:\"author_id\";i:1;s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\";s:11:\"category_id\";i:1;s:8:\"featured\";i:0;s:7:\"enabled\";i:1;s:4:\"tags\";N;}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostsEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"posts_posts_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}s:4:\"type\";O:34:\"Anomaly\\PostsModule\\Type\\TypeModel\":48:{s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"posts\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:11:\"posts_types\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:7:{s:4:\"name\";s:32:\"required|unique:posts_types,name\";s:4:\"slug\";s:32:\"required|unique:posts_types,slug\";s:6:\"layout\";s:8:\"required\";s:12:\"theme_layout\";s:8:\"required\";s:11:\"description\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}s:9:\"\0*\0fields\";a:7:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:6:\"layout\";i:3;s:12:\"theme_layout\";i:4;s:11:\"description\";i:5;s:10:\"meta_title\";i:6;s:16:\"meta_description\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:4:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:10:\"meta_title\";i:3;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsTypesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:6:\"layout\";s:29:\"{{ post.content.render|raw }}\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:6:\"layout\";s:29:\"{{ post.content.render|raw }}\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsTypesEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"posts_types_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple post type.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple post type.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:8:\"category\";O:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\":48:{s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:16:\"posts_categories\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:5:{s:4:\"name\";s:37:\"required|unique:posts_categories,name\";s:4:\"slug\";s:37:\"required|unique:posts_categories,slug\";s:11:\"description\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}s:9:\"\0*\0fields\";a:5:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:4:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:10:\"meta_title\";i:3;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:74:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsCategoriesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:4:\"news\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:4:\"news\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:74:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsCategoriesEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:29:\"posts_categories_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:4:\"News\";s:11:\"description\";s:25:\"Company news and updates.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:4:\"News\";s:11:\"description\";s:25:\"Company news and updates.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"author\";N;s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\":48:{s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:19:\"posts_default_posts\";s:12:\"\0*\0titleName\";s:2:\"id\";s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryTranslationsModel\":34:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:32:\"posts_default_posts_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:23:\"\0*\0searchableAttributes\";a:0:{}s:6:\"\0*\0ttl\";N;s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2019-05-03 00:50:02\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:14:\"\0*\0pushVersion\";b:0;s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:30:{s:4:\"slug\";s:18:\"welcome-to-pyrocms\";s:10:\"publish_at\";s:19:\"2019-05-03 00:50:02\";s:7:\"enabled\";i:1;s:7:\"type_id\";i:1;s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\";s:11:\"category_id\";i:1;s:9:\"author_id\";i:1;s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:7:\"type.id\";i:1;s:15:\"type.sort_order\";i:1;s:15:\"type.deleted_at\";N;s:9:\"type.slug\";s:7:\"default\";s:11:\"type.layout\";s:29:\"{{ post.content.render|raw }}\";s:17:\"type.theme_layout\";s:27:\"theme::layouts/default.twig\";s:9:\"type.name\";s:7:\"Default\";s:16:\"type.description\";s:19:\"A simple post type.\";s:15:\"type.meta_title\";N;s:21:\"type.meta_description\";N;s:11:\"category.id\";i:1;s:19:\"category.sort_order\";i:1;s:19:\"category.deleted_at\";N;s:13:\"category.slug\";s:4:\"news\";s:13:\"category.name\";s:4:\"News\";s:20:\"category.description\";s:25:\"Company news and updates.\";s:19:\"category.meta_title\";N;s:25:\"category.meta_description\";N;}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_url_link_type_urls`
--

CREATE TABLE `gcms_url_link_type_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_url_link_type_urls`
--

INSERT INTO `gcms_url_link_type_urls` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `url`) VALUES
(1, 1, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, 'http://pyrocms.com/'),
(2, 2, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, 'http://pyrocms.com/documentation');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_url_link_type_urls_translations`
--

CREATE TABLE `gcms_url_link_type_urls_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_url_link_type_urls_translations`
--

INSERT INTO `gcms_url_link_type_urls_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `title`, `description`) VALUES
(1, 1, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, 'en', 'PyroCMS.com', NULL),
(2, 2, '2019-05-03 00:50:00', NULL, '2019-05-03 00:50:00', NULL, 'en', 'Documentation', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_users_roles`
--

CREATE TABLE `gcms_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_users_roles`
--

INSERT INTO `gcms_users_roles` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `slug`, `permissions`) VALUES
(1, 1, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, NULL, 'admin', NULL),
(2, 2, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, NULL, 'user', NULL),
(3, 3, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, NULL, 'guest', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_users_roles_translations`
--

CREATE TABLE `gcms_users_roles_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_users_roles_translations`
--

INSERT INTO `gcms_users_roles_translations` (`id`, `entry_id`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `locale`, `name`, `description`) VALUES
(1, 1, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, 'en', 'Admin', 'The super admin role.'),
(2, 2, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, 'en', 'User', 'The default user role.'),
(3, 3, '2019-05-03 00:50:04', NULL, '2019-05-03 00:50:04', NULL, 'en', 'Guest', 'The fallback role for non-users.');

-- --------------------------------------------------------

--
-- Table structure for table `gcms_users_users`
--

CREATE TABLE `gcms_users_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_users_users`
--

INSERT INTO `gcms_users_users` (`id`, `sort_order`, `created_at`, `created_by_id`, `updated_at`, `updated_by_id`, `deleted_at`, `email`, `username`, `password`, `display_name`, `first_name`, `last_name`, `activated`, `enabled`, `permissions`, `last_login_at`, `remember_token`, `activation_code`, `reset_code`, `last_activity_at`, `ip_address`) VALUES
(1, 1, '2019-05-03 00:50:05', 1, '2019-05-03 00:58:12', 1, NULL, 'admin@admin.com', 'admin', '$2y$10$Noakwr6In3KHPwrc0pI27O2cCR0f8FhevtTcpRHxW/L7hXaGRxp9K', 'Administrator', NULL, NULL, 1, 1, NULL, '2019-05-03 00:58:02', 'tg10ivxoOhhiimKLT0s27nTitfk5AfQWq6O1MXeRAtGCCrqOTMiQhhKufaRr', NULL, NULL, '2019-05-03 00:58:12', '127.0.0.1'),
(2, 2, '2019-05-03 00:50:05', NULL, '2019-05-03 00:50:05', NULL, NULL, 'demo@pyrocms.com', 'demo', '$2y$10$NOq/D46SkCPSj.gk45lvte7wPqzeJULTF7oU/mRC0DxmOvC.OV51C', 'Demo User', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_users_users_roles`
--

CREATE TABLE `gcms_users_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gcms_users_users_roles`
--

INSERT INTO `gcms_users_users_roles` (`id`, `entry_id`, `related_id`, `sort_order`) VALUES
(1, 2, 2, NULL),
(2, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gcms_wysiwyg_block_blocks`
--

CREATE TABLE `gcms_wysiwyg_block_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gcms_wysiwyg_block_blocks_translations`
--

CREATE TABLE `gcms_wysiwyg_block_blocks_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_applications`
--
ALTER TABLE `cms_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_references` (`reference`),
  ADD UNIQUE KEY `unique_application_domains` (`domain`);

--
-- Indexes for table `cms_applications_domains`
--
ALTER TABLE `cms_applications_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_application_aliases` (`domain`);

--
-- Indexes for table `cms_migrations`
--
ALTER TABLE `cms_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_addons_extensions`
--
ALTER TABLE `gcms_addons_extensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_extensions` (`namespace`);

--
-- Indexes for table `gcms_addons_modules`
--
ALTER TABLE `gcms_addons_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_modules` (`namespace`);

--
-- Indexes for table `gcms_blocks_areas`
--
ALTER TABLE `gcms_blocks_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c81e728d9d4c2f636f067f89cc14862c` (`slug`);

--
-- Indexes for table `gcms_blocks_areas_translations`
--
ALTER TABLE `gcms_blocks_areas_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_areas_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_blocks_blocks`
--
ALTER TABLE `gcms_blocks_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_blocks_blocks_translations`
--
ALTER TABLE `gcms_blocks_blocks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_blocks_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_blocks_types`
--
ALTER TABLE `gcms_blocks_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c51ce410c124a10e0db5e4b97fc2af39` (`slug`);

--
-- Indexes for table `gcms_blocks_types_translations`
--
ALTER TABLE `gcms_blocks_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_types_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_cache`
--
ALTER TABLE `gcms_cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `gcms_configuration_configuration`
--
ALTER TABLE `gcms_configuration_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_dashboard_dashboards`
--
ALTER TABLE `gcms_dashboard_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `b6d767d2f8ed5d21a44b0e5886680cb9` (`slug`);

--
-- Indexes for table `gcms_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `gcms_dashboard_dashboards_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ef54574889c671bd549cd498d11eece0` (`entry_id`,`related_id`);

--
-- Indexes for table `gcms_dashboard_dashboards_translations`
--
ALTER TABLE `gcms_dashboard_dashboards_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_dashboards_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_dashboard_widgets`
--
ALTER TABLE `gcms_dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_dashboard_widgets_allowed_roles`
--
ALTER TABLE `gcms_dashboard_widgets_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `30a16932996802771e66ae403bf7ed8d` (`entry_id`,`related_id`);

--
-- Indexes for table `gcms_dashboard_widgets_translations`
--
ALTER TABLE `gcms_dashboard_widgets_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widgets_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_failed_jobs`
--
ALTER TABLE `gcms_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_files_disks`
--
ALTER TABLE `gcms_files_disks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e369853df766fa44e1ed0ff613f563bd` (`slug`);

--
-- Indexes for table `gcms_files_disks_translations`
--
ALTER TABLE `gcms_files_disks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_disks_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_files_documents`
--
ALTER TABLE `gcms_files_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_files_documents_translations`
--
ALTER TABLE `gcms_files_documents_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_documents_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_files_files`
--
ALTER TABLE `gcms_files_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_files_folders`
--
ALTER TABLE `gcms_files_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `d67d8ab4f4c10bf22aa353e27879133c` (`slug`);

--
-- Indexes for table `gcms_files_folders_translations`
--
ALTER TABLE `gcms_files_folders_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folders_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_files_images`
--
ALTER TABLE `gcms_files_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_files_images_translations`
--
ALTER TABLE `gcms_files_images_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_images_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_html_block_blocks`
--
ALTER TABLE `gcms_html_block_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_html_block_blocks_translations`
--
ALTER TABLE `gcms_html_block_blocks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `html_block_blocks_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_jobs`
--
ALTER TABLE `gcms_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `gcms_migrations`
--
ALTER TABLE `gcms_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_navigation_links`
--
ALTER TABLE `gcms_navigation_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_navigation_links_allowed_roles`
--
ALTER TABLE `gcms_navigation_links_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3894987cc73b77f5eb5ccba441bcbda3` (`entry_id`,`related_id`);

--
-- Indexes for table `gcms_navigation_menus`
--
ALTER TABLE `gcms_navigation_menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `72b32a1f754ba1c09b3695e0cb6cde7f` (`slug`);

--
-- Indexes for table `gcms_navigation_menus_translations`
--
ALTER TABLE `gcms_navigation_menus_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `navigation_menus_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_notifications`
--
ALTER TABLE `gcms_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `gcms_pages_default_pages`
--
ALTER TABLE `gcms_pages_default_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_pages_default_pages_translations`
--
ALTER TABLE `gcms_pages_default_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_default_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_pages_pages`
--
ALTER TABLE `gcms_pages_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_pages_pages_allowed_roles`
--
ALTER TABLE `gcms_pages_pages_allowed_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3691a57dc384b8adc851052bf7bea38f` (`entry_id`,`related_id`);

--
-- Indexes for table `gcms_pages_pages_translations`
--
ALTER TABLE `gcms_pages_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_pages_types`
--
ALTER TABLE `gcms_pages_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fe9fc289c3ff0af142b6d3bead98a923` (`slug`);

--
-- Indexes for table `gcms_pages_types_translations`
--
ALTER TABLE `gcms_pages_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_types_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_page_link_type_pages`
--
ALTER TABLE `gcms_page_link_type_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_page_link_type_pages_translations`
--
ALTER TABLE `gcms_page_link_type_pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_link_type_pages_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_posts_categories`
--
ALTER TABLE `gcms_posts_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `7647966b7343c29048673252e490f736` (`slug`);

--
-- Indexes for table `gcms_posts_categories_translations`
--
ALTER TABLE `gcms_posts_categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categories_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_posts_default_posts`
--
ALTER TABLE `gcms_posts_default_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_posts_default_posts_translations`
--
ALTER TABLE `gcms_posts_default_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_default_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_posts_posts`
--
ALTER TABLE `gcms_posts_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `54229abfcfa5649e7003b83dd4755294` (`str_id`),
  ADD UNIQUE KEY `f4b9ec30ad9f68f89b29639786cb62ef` (`slug`);

--
-- Indexes for table `gcms_posts_posts_translations`
--
ALTER TABLE `gcms_posts_posts_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_posts_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_posts_types`
--
ALTER TABLE `gcms_posts_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `f0935e4cd5920aa6c7c996a5ee53a70f` (`slug`);

--
-- Indexes for table `gcms_posts_types_translations`
--
ALTER TABLE `gcms_posts_types_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_types_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_preferences_preferences`
--
ALTER TABLE `gcms_preferences_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_redirects_domains`
--
ALTER TABLE `gcms_redirects_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `4c56ff4ce4aaf9573aa5dff913df997a` (`from`);

--
-- Indexes for table `gcms_redirects_redirects`
--
ALTER TABLE `gcms_redirects_redirects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eb160de1de89d9058fcb0b968dbbbd68` (`from`);

--
-- Indexes for table `gcms_sessions`
--
ALTER TABLE `gcms_sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `gcms_settings_settings`
--
ALTER TABLE `gcms_settings_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `3def184ad8f4755ff269862ea77393dd` (`key`);

--
-- Indexes for table `gcms_streams_assignments`
--
ALTER TABLE `gcms_streams_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`);

--
-- Indexes for table `gcms_streams_assignments_translations`
--
ALTER TABLE `gcms_streams_assignments_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_assignments_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_streams_fields`
--
ALTER TABLE `gcms_streams_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_fields` (`namespace`,`slug`);

--
-- Indexes for table `gcms_streams_fields_translations`
--
ALTER TABLE `gcms_streams_fields_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_fields_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_streams_locks`
--
ALTER TABLE `gcms_streams_locks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_locks_lockable_id_index` (`lockable_id`);

--
-- Indexes for table `gcms_streams_streams`
--
ALTER TABLE `gcms_streams_streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_streams` (`namespace`,`slug`);

--
-- Indexes for table `gcms_streams_streams_translations`
--
ALTER TABLE `gcms_streams_streams_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `streams_streams_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_streams_versions`
--
ALTER TABLE `gcms_streams_versions`
  ADD PRIMARY KEY (`version`),
  ADD KEY `streams_versions_versionable_id_index` (`versionable_id`);

--
-- Indexes for table `gcms_url_link_type_urls`
--
ALTER TABLE `gcms_url_link_type_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_url_link_type_urls_translations`
--
ALTER TABLE `gcms_url_link_type_urls_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_link_type_urls_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_users_roles`
--
ALTER TABLE `gcms_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `0a09c8844ba8f0936c20bd791130d6b6` (`slug`);

--
-- Indexes for table `gcms_users_roles_translations`
--
ALTER TABLE `gcms_users_roles_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_roles_translations_locale_index` (`locale`);

--
-- Indexes for table `gcms_users_users`
--
ALTER TABLE `gcms_users_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec5decca5ed3d6b8079e2e7e7bacc9f2` (`email`),
  ADD UNIQUE KEY `76dc611d6ebaafc66cc0879c71b5db5c` (`username`);

--
-- Indexes for table `gcms_users_users_roles`
--
ALTER TABLE `gcms_users_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `657a222530265bc0573ef5330b180325` (`entry_id`,`related_id`);

--
-- Indexes for table `gcms_wysiwyg_block_blocks`
--
ALTER TABLE `gcms_wysiwyg_block_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcms_wysiwyg_block_blocks_translations`
--
ALTER TABLE `gcms_wysiwyg_block_blocks_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wysiwyg_block_blocks_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_applications`
--
ALTER TABLE `cms_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_applications_domains`
--
ALTER TABLE `cms_applications_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_migrations`
--
ALTER TABLE `cms_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_addons_extensions`
--
ALTER TABLE `gcms_addons_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gcms_addons_modules`
--
ALTER TABLE `gcms_addons_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gcms_blocks_areas`
--
ALTER TABLE `gcms_blocks_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_blocks_areas_translations`
--
ALTER TABLE `gcms_blocks_areas_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_blocks_blocks`
--
ALTER TABLE `gcms_blocks_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_blocks_blocks_translations`
--
ALTER TABLE `gcms_blocks_blocks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_blocks_types`
--
ALTER TABLE `gcms_blocks_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_blocks_types_translations`
--
ALTER TABLE `gcms_blocks_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_configuration_configuration`
--
ALTER TABLE `gcms_configuration_configuration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_dashboard_dashboards`
--
ALTER TABLE `gcms_dashboard_dashboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_dashboard_dashboards_allowed_roles`
--
ALTER TABLE `gcms_dashboard_dashboards_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_dashboard_dashboards_translations`
--
ALTER TABLE `gcms_dashboard_dashboards_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_dashboard_widgets`
--
ALTER TABLE `gcms_dashboard_widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_dashboard_widgets_allowed_roles`
--
ALTER TABLE `gcms_dashboard_widgets_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_dashboard_widgets_translations`
--
ALTER TABLE `gcms_dashboard_widgets_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_failed_jobs`
--
ALTER TABLE `gcms_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_files_disks`
--
ALTER TABLE `gcms_files_disks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_files_disks_translations`
--
ALTER TABLE `gcms_files_disks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_files_documents`
--
ALTER TABLE `gcms_files_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_files_documents_translations`
--
ALTER TABLE `gcms_files_documents_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_files_files`
--
ALTER TABLE `gcms_files_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_files_folders`
--
ALTER TABLE `gcms_files_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_files_folders_translations`
--
ALTER TABLE `gcms_files_folders_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_files_images`
--
ALTER TABLE `gcms_files_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_files_images_translations`
--
ALTER TABLE `gcms_files_images_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_html_block_blocks`
--
ALTER TABLE `gcms_html_block_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_html_block_blocks_translations`
--
ALTER TABLE `gcms_html_block_blocks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_jobs`
--
ALTER TABLE `gcms_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_migrations`
--
ALTER TABLE `gcms_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `gcms_navigation_links`
--
ALTER TABLE `gcms_navigation_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_navigation_links_allowed_roles`
--
ALTER TABLE `gcms_navigation_links_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_navigation_menus`
--
ALTER TABLE `gcms_navigation_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_navigation_menus_translations`
--
ALTER TABLE `gcms_navigation_menus_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_pages_default_pages`
--
ALTER TABLE `gcms_pages_default_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_pages_default_pages_translations`
--
ALTER TABLE `gcms_pages_default_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_pages_pages`
--
ALTER TABLE `gcms_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_pages_pages_allowed_roles`
--
ALTER TABLE `gcms_pages_pages_allowed_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_pages_pages_translations`
--
ALTER TABLE `gcms_pages_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_pages_types`
--
ALTER TABLE `gcms_pages_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_pages_types_translations`
--
ALTER TABLE `gcms_pages_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_page_link_type_pages`
--
ALTER TABLE `gcms_page_link_type_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_page_link_type_pages_translations`
--
ALTER TABLE `gcms_page_link_type_pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_posts_categories`
--
ALTER TABLE `gcms_posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_posts_categories_translations`
--
ALTER TABLE `gcms_posts_categories_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_posts_default_posts`
--
ALTER TABLE `gcms_posts_default_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_posts_default_posts_translations`
--
ALTER TABLE `gcms_posts_default_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_posts_posts`
--
ALTER TABLE `gcms_posts_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_posts_posts_translations`
--
ALTER TABLE `gcms_posts_posts_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_posts_types`
--
ALTER TABLE `gcms_posts_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_posts_types_translations`
--
ALTER TABLE `gcms_posts_types_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gcms_preferences_preferences`
--
ALTER TABLE `gcms_preferences_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_redirects_domains`
--
ALTER TABLE `gcms_redirects_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_redirects_redirects`
--
ALTER TABLE `gcms_redirects_redirects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_settings_settings`
--
ALTER TABLE `gcms_settings_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gcms_streams_assignments`
--
ALTER TABLE `gcms_streams_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `gcms_streams_assignments_translations`
--
ALTER TABLE `gcms_streams_assignments_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `gcms_streams_fields`
--
ALTER TABLE `gcms_streams_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `gcms_streams_fields_translations`
--
ALTER TABLE `gcms_streams_fields_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `gcms_streams_locks`
--
ALTER TABLE `gcms_streams_locks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_streams_streams`
--
ALTER TABLE `gcms_streams_streams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gcms_streams_streams_translations`
--
ALTER TABLE `gcms_streams_streams_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `gcms_streams_versions`
--
ALTER TABLE `gcms_streams_versions`
  MODIFY `version` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gcms_url_link_type_urls`
--
ALTER TABLE `gcms_url_link_type_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_url_link_type_urls_translations`
--
ALTER TABLE `gcms_url_link_type_urls_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_users_roles`
--
ALTER TABLE `gcms_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gcms_users_roles_translations`
--
ALTER TABLE `gcms_users_roles_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gcms_users_users`
--
ALTER TABLE `gcms_users_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_users_users_roles`
--
ALTER TABLE `gcms_users_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gcms_wysiwyg_block_blocks`
--
ALTER TABLE `gcms_wysiwyg_block_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gcms_wysiwyg_block_blocks_translations`
--
ALTER TABLE `gcms_wysiwyg_block_blocks_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
