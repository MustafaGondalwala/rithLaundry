-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 29, 2020 at 07:59 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rithnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `door_no` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `static_map` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 3, 'Admin', 'fa-tasks', '', NULL, NULL, '2019-08-28 06:49:07'),
(3, 2, 4, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2019-08-28 06:49:07'),
(4, 2, 5, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2019-08-28 06:49:07'),
(5, 2, 6, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-08-28 06:49:07'),
(6, 2, 7, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2019-08-28 06:49:07'),
(7, 2, 8, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2019-08-28 06:49:07'),
(8, 0, 18, 'Faqs', 'fa-question-circle', 'faqs', NULL, '2019-07-23 03:37:04', '2020-06-09 13:43:28'),
(9, 0, 17, 'Lables', 'fa-tag', 'labels', NULL, '2019-07-23 03:37:22', '2020-06-09 13:43:28'),
(10, 0, 9, 'Services', 'fa-align-justify', 'services', NULL, '2019-07-23 03:37:44', '2019-07-23 03:41:31'),
(11, 0, 20, 'App Settings', 'fa-cog', 'app_settings', NULL, '2019-07-23 03:38:09', '2020-06-09 13:43:28'),
(12, 0, 16, 'Promo Codes', 'fa-bookmark', 'promo_codes', NULL, '2019-07-23 03:38:54', '2020-06-09 13:43:28'),
(13, 0, 10, 'Categories', 'fa-bars', 'categories', NULL, '2019-07-26 10:36:06', '2019-08-20 02:16:19'),
(14, 0, 14, 'Customers', 'fa-users', 'customers', '*', '2019-08-20 02:12:07', '2020-06-09 13:43:28'),
(15, 0, 15, 'Delivery Boys', 'fa-user', 'delivery_boys', '*', '2019-08-20 02:12:32', '2020-06-09 13:43:28'),
(16, 0, 19, 'Privacy Policies', 'fa-file-pdf-o', 'privacy_policies', '*', '2019-08-22 14:34:52', '2020-06-09 13:43:28'),
(17, 0, 11, 'Products', 'fa-align-justify', 'products', '*', '2019-08-22 14:45:12', '2019-08-22 14:45:18'),
(18, 0, 12, 'Fare Management', 'fa-dollar', 'fare_managements', '*', '2019-08-24 14:10:33', '2019-08-25 07:47:27'),
(19, 0, 2, 'Orders', 'fa-align-justify', 'orders', '*', '2019-08-25 07:47:04', '2019-08-28 06:49:07'),
(20, 0, 21, 'Banner Images', 'fa-image', 'banner-images', '*', '2020-05-30 13:36:16', '2020-06-09 13:43:28'),
(21, 0, 13, 'Payment Methods', 'fa-product-hunt', 'payment-methods', '*', '2020-06-09 13:43:09', '2020-06-09 13:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-21 03:47:15', '2019-07-21 03:47:15'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-21 03:51:44', '2019-07-21 03:51:44'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-21 03:53:58', '2019-07-21 03:53:58'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-21 04:12:39', '2019-07-21 04:12:39'),
(5, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-21 04:12:43', '2019-07-21 04:12:43'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-21 04:15:33', '2019-07-21 04:15:33'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-21 04:15:51', '2019-07-21 04:15:51'),
(8, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-21 04:15:55', '2019-07-21 04:15:55'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-21 04:20:15', '2019-07-21 04:20:15'),
(10, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-23 03:36:03', '2019-07-23 03:36:03'),
(11, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:36:35', '2019-07-23 03:36:35'),
(12, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Faq\",\"icon\":\"fa-question-circle\",\"uri\":\"faqs\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 03:37:03', '2019-07-23 03:37:03'),
(13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-23 03:37:05', '2019-07-23 03:37:05'),
(14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Lables\",\"icon\":\"fa-tag\",\"uri\":\"labels\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 03:37:22', '2019-07-23 03:37:22'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-23 03:37:22', '2019-07-23 03:37:22'),
(16, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Services\",\"icon\":\"fa-align-justify\",\"uri\":\"services\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 03:37:44', '2019-07-23 03:37:44'),
(17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-23 03:37:45', '2019-07-23 03:37:45'),
(18, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"App Settings\",\"icon\":\"fa-cog\",\"uri\":\"app_settings\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 03:38:09', '2019-07-23 03:38:09'),
(19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-23 03:38:10', '2019-07-23 03:38:10'),
(20, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Promo Code\",\"icon\":\"fa-bookmark\",\"uri\":\"promo_codes\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 03:38:54', '2019-07-23 03:38:54'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-23 03:38:55', '2019-07-23 03:38:55'),
(22, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-23 03:41:15', '2019-07-23 03:41:15'),
(23, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":12},{\\\"id\\\":8},{\\\"id\\\":9}]\"}', '2019-07-23 03:41:31', '2019-07-23 03:41:31'),
(24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:41:32', '2019-07-23 03:41:32'),
(25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-23 03:41:34', '2019-07-23 03:41:34'),
(26, 1, 'admin/app_settings', 'GET', '127.0.0.1', '[]', '2019-07-23 03:42:11', '2019-07-23 03:42:11'),
(27, 1, 'admin/app_settings', 'GET', '127.0.0.1', '[]', '2019-07-23 03:42:25', '2019-07-23 03:42:25'),
(28, 1, 'admin/app_settings', 'GET', '127.0.0.1', '[]', '2019-07-23 03:42:37', '2019-07-23 03:42:37'),
(29, 1, 'admin/app_settings', 'GET', '127.0.0.1', '[]', '2019-07-23 03:43:00', '2019-07-23 03:43:00'),
(30, 1, 'admin/app_settings/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:43:15', '2019-07-23 03:43:15'),
(31, 1, 'admin/app_settings', 'POST', '127.0.0.1', '{\"application_name\":\"Rith Laundry\",\"logo\":\"test\",\"contact_number\":\"9789354285\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"$\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/app_settings\"}', '2019-07-23 03:44:39', '2019-07-23 03:44:39'),
(32, 1, 'admin/app_settings', 'GET', '127.0.0.1', '[]', '2019-07-23 03:44:40', '2019-07-23 03:44:40'),
(33, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:46:29', '2019-07-23 03:46:29'),
(34, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:46:49', '2019-07-23 03:46:49'),
(35, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:49:02', '2019-07-23 03:49:02'),
(36, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:49:26', '2019-07-23 03:49:26'),
(37, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"Sarath\",\"description\":\"Test\",\"estimation_hours\":\"10\",\"status\":\"1\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 03:50:46', '2019-07-23 03:50:46'),
(38, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:50:47', '2019-07-23 03:50:47'),
(39, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"Sarath\",\"description\":\"Test\",\"estimation_hours\":\"10\",\"status\":\"1\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 03:51:20', '2019-07-23 03:51:20'),
(40, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:51:21', '2019-07-23 03:51:21'),
(41, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"Sarath\",\"description\":\"Test\",\"estimation_hours\":\"10\",\"status\":\"1\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 03:53:46', '2019-07-23 03:53:46'),
(42, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2019-07-23 03:53:47', '2019-07-23 03:53:47'),
(43, 1, 'admin/services', 'GET', '127.0.0.1', '{\"id\":null,\"service_name\":null,\"status\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:54:20', '2019-07-23 03:54:20'),
(44, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"service_name\":\"dsa\",\"status\":\"1\"}', '2019-07-23 03:54:22', '2019-07-23 03:54:22'),
(45, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"service_name\":\"Te\",\"status\":\"1\"}', '2019-07-23 03:54:25', '2019-07-23 03:54:25'),
(46, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"service_name\":\"Te\",\"status\":\"1\"}', '2019-07-23 03:54:28', '2019-07-23 03:54:28'),
(47, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:54:29', '2019-07-23 03:54:29'),
(48, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"service_name\":\"Sara\",\"status\":\"1\"}', '2019-07-23 03:54:38', '2019-07-23 03:54:38'),
(49, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"service_name\":\"Sara\",\"status\":\"2\"}', '2019-07-23 03:54:41', '2019-07-23 03:54:41'),
(50, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:54:42', '2019-07-23 03:54:42'),
(51, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:54:51', '2019-07-23 03:54:51'),
(52, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":null,\"description\":null,\"estimation_hours\":null,\"status\":\"1\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/services\"}', '2019-07-23 03:54:54', '2019-07-23 03:54:54'),
(53, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:54:55', '2019-07-23 03:54:55'),
(54, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:55:27', '2019-07-23 03:55:27'),
(55, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:55:27', '2019-07-23 03:55:27'),
(56, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:56:19', '2019-07-23 03:56:19'),
(57, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:56:24', '2019-07-23 03:56:24'),
(58, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:56:25', '2019-07-23 03:56:25'),
(59, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:57:28', '2019-07-23 03:57:28'),
(60, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:57:30', '2019-07-23 03:57:30'),
(61, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:57:35', '2019-07-23 03:57:35'),
(62, 1, 'admin/promo_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 03:57:42', '2019-07-23 03:57:42'),
(63, 1, 'admin/promo_codes', 'POST', '127.0.0.1', '{\"promo_name\":\"asdsa\",\"promo_code\":\"dasd\",\"description\":\"asdasd\",\"redemption\":\"2\",\"promo_type\":\"1\",\"discount\":\"10\",\"status\":\"1\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/promo_codes\"}', '2019-07-23 03:59:24', '2019-07-23 03:59:24'),
(64, 1, 'admin/promo_codes/create', 'GET', '127.0.0.1', '[]', '2019-07-23 03:59:28', '2019-07-23 03:59:28'),
(65, 1, 'admin/promo_codes', 'POST', '127.0.0.1', '{\"promo_name\":\"asdsa\",\"promo_code\":\"dasd\",\"description\":\"asdasd\",\"redemption\":\"2\",\"promo_type\":\"1\",\"discount\":\"10\",\"status\":\"1\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 04:00:11', '2019-07-23 04:00:11'),
(66, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '[]', '2019-07-23 04:00:12', '2019-07-23 04:00:12'),
(67, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"id\":null,\"promo_name\":null,\"status\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:01:09', '2019-07-23 04:01:09'),
(68, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"promo_name\":null,\"status\":\"2\"}', '2019-07-23 04:01:12', '2019-07-23 04:01:12'),
(69, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:01:14', '2019-07-23 04:01:14'),
(70, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"promo_name\":\"as\",\"status\":null}', '2019-07-23 04:01:20', '2019-07-23 04:01:20'),
(71, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"promo_name\":\"asde\",\"status\":null}', '2019-07-23 04:01:23', '2019-07-23 04:01:23'),
(72, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:01:29', '2019-07-23 04:01:29'),
(73, 1, 'admin/faqs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:01:35', '2019-07-23 04:01:35'),
(74, 1, 'admin/faqs', 'POST', '127.0.0.1', '{\"question\":\"hi\",\"answer\":\"sdasdasdasd\",\"status\":\"1\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/faqs\"}', '2019-07-23 04:02:35', '2019-07-23 04:02:35'),
(75, 1, 'admin/faqs', 'GET', '127.0.0.1', '[]', '2019-07-23 04:02:35', '2019-07-23 04:02:35'),
(76, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"id\":null,\"status\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:02:40', '2019-07-23 04:02:40'),
(77, 1, 'admin/faqs/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\"}', '2019-07-23 04:02:57', '2019-07-23 04:02:57'),
(78, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"id\":null,\"status\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:03:00', '2019-07-23 04:03:00'),
(79, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:03:02', '2019-07-23 04:03:02'),
(80, 1, 'admin/labels/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:03:05', '2019-07-23 04:03:05'),
(81, 1, 'admin/labels', 'POST', '127.0.0.1', '{\"label_name\":\"asdasd\",\"description\":\"asdsadasd\",\"status\":\"1\",\"_token\":\"sUVWG4IcRf1RbRiNgUd1ybFzzV8YgeFxjJkIFFXj\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/labels\"}', '2019-07-23 04:03:17', '2019-07-23 04:03:17'),
(82, 1, 'admin/labels', 'GET', '127.0.0.1', '[]', '2019-07-23 04:03:18', '2019-07-23 04:03:18'),
(83, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"id\":null,\"label_name\":null,\"status\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:03:27', '2019-07-23 04:03:27'),
(84, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 04:03:29', '2019-07-23 04:03:29'),
(85, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"label_name\":null,\"status\":\"2\"}', '2019-07-23 04:03:40', '2019-07-23 04:03:40'),
(86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-23 11:28:51', '2019-07-23 11:28:51'),
(87, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-23 11:29:00', '2019-07-23 11:29:00'),
(88, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:29:22', '2019-07-23 11:29:22'),
(89, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:29:33', '2019-07-23 11:29:33'),
(90, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"service_name\":\"Dry Cleaning\",\"description\":\"This is test description Dry Cleaning\",\"estimation_hours\":\"0\",\"status\":\"1\",\"_token\":\"Fi23AFwaj6gUiRZol7tkE9l1b5xEbKjl1Wg1UilK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/services\"}', '2019-07-23 11:31:19', '2019-07-23 11:31:19'),
(91, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2019-07-23 11:31:21', '2019-07-23 11:31:21'),
(92, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:31:28', '2019-07-23 11:31:28'),
(93, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2019-07-23 11:32:26', '2019-07-23 11:32:26'),
(94, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2019-07-23 11:32:56', '2019-07-23 11:32:56'),
(95, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:33:04', '2019-07-23 11:33:04'),
(96, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:33:06', '2019-07-23 11:33:06'),
(97, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"Ironing\",\"description\":\"This is test description ironing\",\"estimation_hours\":\"0\",\"status\":\"1\",\"_token\":\"Fi23AFwaj6gUiRZol7tkE9l1b5xEbKjl1Wg1UilK\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/services\"}', '2019-07-23 11:33:30', '2019-07-23 11:33:30'),
(98, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2019-07-23 11:33:30', '2019-07-23 11:33:30'),
(99, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:33:33', '2019-07-23 11:33:33'),
(100, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"this is test description duvet cleaning\",\"estimation_hours\":\"0\",\"status\":\"1\",\"_token\":\"Fi23AFwaj6gUiRZol7tkE9l1b5xEbKjl1Wg1UilK\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/services\"}', '2019-07-23 11:33:57', '2019-07-23 11:33:57'),
(101, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2019-07-23 11:33:57', '2019-07-23 11:33:57'),
(102, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:34:00', '2019-07-23 11:34:00'),
(103, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"Cloth Repairing\",\"description\":\"this is test description cloth repairing\",\"estimation_hours\":\"0\",\"status\":\"1\",\"_token\":\"Fi23AFwaj6gUiRZol7tkE9l1b5xEbKjl1Wg1UilK\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/services\"}', '2019-07-23 11:34:25', '2019-07-23 11:34:25'),
(104, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2019-07-23 11:34:26', '2019-07-23 11:34:26'),
(105, 1, 'admin/app_settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:35:05', '2019-07-23 11:35:05'),
(106, 1, 'admin/app_settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-23 11:35:14', '2019-07-23 11:35:14'),
(107, 1, 'admin/app_settings/1/edit', 'GET', '127.0.0.1', '[]', '2019-07-23 11:37:39', '2019-07-23 11:37:39'),
(108, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-25 10:06:45', '2019-07-25 10:06:45'),
(109, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-25 10:06:54', '2019-07-25 10:06:54'),
(110, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-25 10:07:02', '2019-07-25 10:07:02'),
(111, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-25 10:07:18', '2019-07-25 10:07:18'),
(112, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-25 10:07:27', '2019-07-25 10:07:27'),
(113, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-25 10:07:30', '2019-07-25 10:07:30'),
(114, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-25 10:07:32', '2019-07-25 10:07:32'),
(115, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-25 10:24:45', '2019-07-25 10:24:45'),
(116, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2019-07-26 09:22:33', '2019-07-26 09:22:33'),
(117, 1, 'admin/app_settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:22:41', '2019-07-26 09:22:41'),
(118, 1, 'admin/app_settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:22:52', '2019-07-26 09:22:52'),
(119, 1, 'admin/app_settings/1', 'PUT', '127.0.0.1', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9789354285\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"$\",\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/app_settings\"}', '2019-07-26 09:24:19', '2019-07-26 09:24:19'),
(120, 1, 'admin/app_settings', 'GET', '127.0.0.1', '[]', '2019-07-26 09:24:37', '2019-07-26 09:24:37'),
(121, 1, 'admin/app_settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:24:54', '2019-07-26 09:24:54'),
(122, 1, 'admin/app_settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:25:09', '2019-07-26 09:25:09'),
(123, 1, 'admin/app_settings/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:25:13', '2019-07-26 09:25:13'),
(124, 1, 'admin/app_settings/1', 'PUT', '127.0.0.1', '{\"application_name\":\"Rith Laundry\",\"contact_number\":null,\"email\":null,\"default_currency\":\"$\",\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/app_settings\"}', '2019-07-26 09:25:36', '2019-07-26 09:25:36'),
(125, 1, 'admin/app_settings/1/edit', 'GET', '127.0.0.1', '[]', '2019-07-26 09:25:37', '2019-07-26 09:25:37'),
(126, 1, 'admin/app_settings/1', 'PUT', '127.0.0.1', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"$\",\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\",\"_method\":\"PUT\"}', '2019-07-26 09:26:00', '2019-07-26 09:26:00'),
(127, 1, 'admin/app_settings', 'GET', '127.0.0.1', '[]', '2019-07-26 09:26:02', '2019-07-26 09:26:02'),
(128, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:26:38', '2019-07-26 09:26:38'),
(129, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:26:48', '2019-07-26 09:26:48'),
(130, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:26:58', '2019-07-26 09:26:58'),
(131, 1, 'admin/services/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:27:06', '2019-07-26 09:27:06'),
(132, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"sdfsd\",\"description\":\"sdfdsfssdf\",\"status\":\"1\",\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/services\"}', '2019-07-26 09:27:23', '2019-07-26 09:27:23'),
(133, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-26 09:27:24', '2019-07-26 09:27:24'),
(134, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"sdfsd\",\"description\":\"sdfdsfssdf\",\"status\":\"1\",\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\"}', '2019-07-26 09:27:36', '2019-07-26 09:27:36'),
(135, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-26 09:27:41', '2019-07-26 09:27:41'),
(136, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"sdfsd\",\"description\":\"sdfdsfssdf\",\"status\":\"1\",\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\"}', '2019-07-26 09:29:13', '2019-07-26 09:29:13'),
(137, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2019-07-26 09:29:14', '2019-07-26 09:29:14'),
(138, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_name\":\"sdfsd\",\"description\":\"sdfdsfssdf\",\"status\":\"1\",\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\"}', '2019-07-26 09:29:22', '2019-07-26 09:29:22'),
(139, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2019-07-26 09:29:23', '2019-07-26 09:29:23'),
(140, 1, 'admin/services/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\"}', '2019-07-26 09:29:28', '2019-07-26 09:29:28'),
(141, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:29:29', '2019-07-26 09:29:29'),
(142, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:29:51', '2019-07-26 09:29:51'),
(143, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2019-07-26 09:29:52', '2019-07-26 09:29:52'),
(144, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:30:59', '2019-07-26 09:30:59'),
(145, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"question\":\"hi\",\"status\":null}', '2019-07-26 09:31:13', '2019-07-26 09:31:13'),
(146, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"question\":\"This is test question 1\",\"status\":null}', '2019-07-26 09:31:19', '2019-07-26 09:31:19'),
(147, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:31:22', '2019-07-26 09:31:22'),
(148, 1, 'admin/faqs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:31:33', '2019-07-26 09:31:33'),
(149, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:32:26', '2019-07-26 09:32:26'),
(150, 1, 'admin/faqs/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:32:30', '2019-07-26 09:32:30'),
(151, 1, 'admin/faqs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:32:38', '2019-07-26 09:32:38'),
(152, 1, 'admin/labels', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:32:44', '2019-07-26 09:32:44'),
(153, 1, 'admin/labels/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 09:32:48', '2019-07-26 09:32:48'),
(154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-26 10:33:36', '2019-07-26 10:33:36'),
(155, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-26 10:33:43', '2019-07-26 10:33:43'),
(156, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 10:35:38', '2019-07-26 10:35:38'),
(157, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-bars\",\"uri\":\"categories\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\"}', '2019-07-26 10:36:05', '2019-07-26 10:36:05'),
(158, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-26 10:36:07', '2019-07-26 10:36:07'),
(159, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-26 10:36:11', '2019-07-26 10:36:11'),
(160, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 10:36:45', '2019-07-26 10:36:45'),
(161, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Categories\",\"icon\":\"fa-bars\",\"uri\":\"categories\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"FpuNwh3c4vJfnu60a6l8AxdB5Zl0dLIKESb1RSQ6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2019-07-26 10:36:51', '2019-07-26 10:36:51'),
(162, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-07-26 10:36:52', '2019-07-26 10:36:52'),
(163, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 10:36:54', '2019-07-26 10:36:54'),
(164, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 10:37:02', '2019-07-26 10:37:02'),
(165, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-26 10:37:11', '2019-07-26 10:37:11'),
(166, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-28 01:16:33', '2019-07-28 01:16:33'),
(167, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-07-28 01:16:40', '2019-07-28 01:16:40'),
(168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-08-07 19:03:52', '2019-08-07 19:03:52'),
(169, 1, 'admin/promo_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-07 19:04:04', '2019-08-07 19:04:04'),
(170, 1, 'admin/promo_codes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-07 19:04:26', '2019-08-07 19:04:26'),
(171, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-07 19:25:23', '2019-08-07 19:25:23'),
(172, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-08-07 19:25:46', '2019-08-07 19:25:46'),
(173, 1, 'admin', 'GET', '106.198.1.5', '[]', '2019-08-12 15:51:24', '2019-08-12 15:51:24'),
(174, 1, 'admin/faqs', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-12 15:51:30', '2019-08-12 15:51:30'),
(175, 1, 'admin/faqs/create', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-12 15:51:32', '2019-08-12 15:51:32'),
(176, 1, 'admin/faqs', 'POST', '106.198.1.5', '{\"question\":\"sada\",\"answer\":\"dasds\",\"status\":\"1\",\"_token\":\"ny5ENDgwXK5M23iudJYTY4NeGfEwcCalR7bU70wb\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-12 15:51:36', '2019-08-12 15:51:36'),
(177, 1, 'admin/faqs', 'GET', '106.198.1.5', '[]', '2019-08-12 15:51:36', '2019-08-12 15:51:36'),
(178, 1, 'admin/app_settings', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-12 16:20:11', '2019-08-12 16:20:11'),
(179, 1, 'admin/promo_codes', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-12 16:20:14', '2019-08-12 16:20:14'),
(180, 1, 'admin/faqs', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-12 16:20:16', '2019-08-12 16:20:16'),
(181, 1, 'admin/faqs', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-12 16:20:17', '2019-08-12 16:20:17'),
(182, 1, 'admin/labels', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-12 16:20:18', '2019-08-12 16:20:18'),
(183, 1, 'admin/categories', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-12 16:20:20', '2019-08-12 16:20:20'),
(184, 1, 'admin', 'GET', '106.198.1.5', '[]', '2019-08-15 06:09:39', '2019-08-15 06:09:39'),
(185, 1, 'admin/promo_codes', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-15 06:09:47', '2019-08-15 06:09:47'),
(186, 1, 'admin/promo_codes/2/edit', 'GET', '106.198.1.5', '{\"_pjax\":\"#pjax-container\"}', '2019-08-15 06:09:52', '2019-08-15 06:09:52'),
(187, 1, 'admin/promo_codes/2', 'PUT', '106.198.1.5', '{\"promo_name\":\"sdfsd\",\"promo_code\":\"sdfsdf\",\"description\":\"rwerewr\",\"redemption\":\"3\",\"promo_type\":\"2\",\"discount\":\"20\",\"status\":\"1\",\"_token\":\"ThbxG7jXTycTxCHCiqb2NEPNLY681sC5DDLvf4Z0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-15 06:09:58', '2019-08-15 06:09:58'),
(188, 1, 'admin/promo_codes', 'GET', '106.198.1.5', '[]', '2019-08-15 06:09:58', '2019-08-15 06:09:58'),
(189, 1, 'admin', 'GET', '106.198.3.27', '[]', '2019-08-19 03:00:57', '2019-08-19 03:00:57'),
(190, 1, 'admin/services', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 03:01:20', '2019-08-19 03:01:20'),
(191, 1, 'admin/services/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 03:01:23', '2019-08-19 03:01:23'),
(192, 1, 'admin/services/1', 'PUT', '106.198.3.27', '{\"service_name\":\"Dry Cleaning\",\"description\":\"This is test description Dry Cleaning\",\"status\":\"1\",\"_token\":\"mRBR3XBbeZDtp7wTXLyfqCex7kz09Ouss55rVJEV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-19 03:02:18', '2019-08-19 03:02:18'),
(193, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-19 03:02:18', '2019-08-19 03:02:18'),
(194, 1, 'admin/services/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 03:02:21', '2019-08-19 03:02:21'),
(195, 1, 'admin/services/1', 'PUT', '106.198.3.27', '{\"service_name\":\"Dry Cleaning\",\"description\":\"This is test description Dry Cleaning\",\"status\":\"1\",\"_token\":\"mRBR3XBbeZDtp7wTXLyfqCex7kz09Ouss55rVJEV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-19 03:02:29', '2019-08-19 03:02:29'),
(196, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-19 03:02:29', '2019-08-19 03:02:29'),
(197, 1, 'admin/services/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-19 03:02:31', '2019-08-19 03:02:31'),
(198, 1, 'admin/services/1/edit', 'GET', '106.198.3.27', '[]', '2019-08-19 15:49:59', '2019-08-19 15:49:59'),
(199, 1, 'admin', 'GET', '106.198.3.27', '[]', '2019-08-20 02:00:40', '2019-08-20 02:00:40'),
(200, 1, 'admin/app_settings', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:01:25', '2019-08-20 02:01:25'),
(201, 1, 'admin/app_settings/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:01:27', '2019-08-20 02:01:27'),
(202, 1, 'admin/app_settings/1', 'PUT', '106.198.3.27', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"$\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-20 02:01:59', '2019-08-20 02:01:59'),
(203, 1, 'admin/app_settings', 'GET', '106.198.3.27', '[]', '2019-08-20 02:01:59', '2019-08-20 02:01:59'),
(204, 1, 'admin/app_settings/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:02:01', '2019-08-20 02:02:01'),
(205, 1, 'admin/services', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:02:06', '2019-08-20 02:02:06'),
(206, 1, 'admin/services/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:02:08', '2019-08-20 02:02:08'),
(207, 1, 'admin/app_settings', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:02:42', '2019-08-20 02:02:42'),
(208, 1, 'admin/app_settings', 'GET', '106.198.3.27', '[]', '2019-08-20 02:05:56', '2019-08-20 02:05:56'),
(209, 1, 'admin/services', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:05:59', '2019-08-20 02:05:59'),
(210, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-20 02:06:51', '2019-08-20 02:06:51'),
(211, 1, 'admin/services/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:06:59', '2019-08-20 02:06:59'),
(212, 1, 'admin/services/1', 'PUT', '106.198.3.27', '{\"service_name\":\"Dry Cleaning\",\"description\":\"This is test description Dry Cleaning\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-20 02:07:08', '2019-08-20 02:07:08'),
(213, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-20 02:07:08', '2019-08-20 02:07:08'),
(214, 1, 'admin/services/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:07:10', '2019-08-20 02:07:10'),
(215, 1, 'admin/services/1', 'PUT', '106.198.3.27', '{\"service_name\":\"Dry Cleaning\",\"description\":\"This is test description Dry Cleaning\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-20 02:07:36', '2019-08-20 02:07:36'),
(216, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-20 02:07:37', '2019-08-20 02:07:37'),
(217, 1, 'admin/services/3/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:07:39', '2019-08-20 02:07:39'),
(218, 1, 'admin/services/3', 'PUT', '106.198.3.27', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"this is test description duvet cleaning\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-20 02:07:46', '2019-08-20 02:07:46'),
(219, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-20 02:07:47', '2019-08-20 02:07:47'),
(220, 1, 'admin/services/4/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:07:49', '2019-08-20 02:07:49'),
(221, 1, 'admin/services/4', 'PUT', '106.198.3.27', '{\"service_name\":\"Cloth Repairing\",\"description\":\"this is test description cloth repairing\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-20 02:07:56', '2019-08-20 02:07:56'),
(222, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-20 02:07:56', '2019-08-20 02:07:56'),
(223, 1, 'admin/services/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:08:40', '2019-08-20 02:08:40'),
(224, 1, 'admin/services', 'POST', '106.198.3.27', '{\"service_name\":\"Test123\",\"description\":\"Test213\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-20 02:08:54', '2019-08-20 02:08:54'),
(225, 1, 'admin/services/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:08:54', '2019-08-20 02:08:54'),
(226, 1, 'admin/services', 'POST', '106.198.3.27', '{\"service_name\":\"Test123\",\"description\":\"Test213\",\"status\":null,\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:09:05', '2019-08-20 02:09:05'),
(227, 1, 'admin/services/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:09:05', '2019-08-20 02:09:05'),
(228, 1, 'admin/services/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:09:31', '2019-08-20 02:09:31'),
(229, 1, 'admin/services', 'POST', '106.198.3.27', '{\"service_name\":\"Test123\",\"description\":\"Test123\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-20 02:09:51', '2019-08-20 02:09:51'),
(230, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-20 02:09:51', '2019-08-20 02:09:51'),
(231, 1, 'admin/services/5/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:09:55', '2019-08-20 02:09:55'),
(232, 1, 'admin/services/5', 'PUT', '106.198.3.27', '{\"service_name\":\"Test123\",\"description\":\"Test123\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-20 02:10:04', '2019-08-20 02:10:04'),
(233, 1, 'admin/services', 'GET', '106.198.3.27', '[]', '2019-08-20 02:10:04', '2019-08-20 02:10:04'),
(234, 1, 'admin/services/5', 'DELETE', '106.198.3.27', '{\"_method\":\"delete\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:10:07', '2019-08-20 02:10:07'),
(235, 1, 'admin/services', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:10:08', '2019-08-20 02:10:08'),
(236, 1, 'admin/services', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"service_name\":\"Iro\",\"status\":null}', '2019-08-20 02:10:18', '2019-08-20 02:10:18'),
(237, 1, 'admin/services', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:10:20', '2019-08-20 02:10:20'),
(238, 1, 'admin/promo_codes', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:11:01', '2019-08-20 02:11:01'),
(239, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:11:35', '2019-08-20 02:11:35'),
(240, 1, 'admin/auth/menu', 'POST', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Customer\",\"icon\":\"fa-users\",\"uri\":\"customers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:12:07', '2019-08-20 02:12:07'),
(241, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-20 02:12:07', '2019-08-20 02:12:07'),
(242, 1, 'admin/auth/menu', 'POST', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Delivery Partners\",\"icon\":\"fa-users\",\"uri\":\"delivery_partners\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:12:32', '2019-08-20 02:12:32'),
(243, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-20 02:12:32', '2019-08-20 02:12:32'),
(244, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-20 02:12:36', '2019-08-20 02:12:36'),
(245, 1, 'admin/auth/menu/15/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:12:45', '2019-08-20 02:12:45'),
(246, 1, 'admin/auth/menu/15', 'PUT', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Delivery Partners\",\"icon\":\"fa-user\",\"uri\":\"delivery_partners\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/auth\\/menu\"}', '2019-08-20 02:12:58', '2019-08-20 02:12:58'),
(247, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-20 02:12:58', '2019-08-20 02:12:58'),
(248, 1, 'admin/auth/menu', 'POST', '106.198.3.27', '{\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":8},{\\\"id\\\":9}]\"}', '2019-08-20 02:16:19', '2019-08-20 02:16:19'),
(249, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:16:19', '2019-08-20 02:16:19'),
(250, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-20 02:16:24', '2019-08-20 02:16:24'),
(251, 1, 'admin/auth/menu/15/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:17:27', '2019-08-20 02:17:27'),
(252, 1, 'admin/auth/menu/15', 'PUT', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Delivery Boys\",\"icon\":\"fa-user\",\"uri\":\"delivery_boys\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/auth\\/menu\"}', '2019-08-20 02:17:39', '2019-08-20 02:17:39'),
(253, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-20 02:17:39', '2019-08-20 02:17:39'),
(254, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:17:57', '2019-08-20 02:17:57'),
(255, 1, 'admin/customers/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:18:02', '2019-08-20 02:18:02'),
(256, 1, 'admin/customers/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:19:26', '2019-08-20 02:19:26'),
(257, 1, 'admin/customers/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:20:41', '2019-08-20 02:20:41'),
(258, 1, 'admin/customers', 'POST', '106.198.3.27', '{\"customer_name\":\"test\",\"phone_number\":null,\"email\":null,\"password\":\"test\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:20:51', '2019-08-20 02:20:51'),
(259, 1, 'admin/customers/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:20:51', '2019-08-20 02:20:51'),
(260, 1, 'admin/customers/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:22:01', '2019-08-20 02:22:01'),
(261, 1, 'admin/customers', 'POST', '106.198.3.27', '{\"customer_name\":null,\"phone_number\":null,\"email\":null,\"password\":\"test\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:22:06', '2019-08-20 02:22:06'),
(262, 1, 'admin/customers/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:22:07', '2019-08-20 02:22:07'),
(263, 1, 'admin/customers/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:23:35', '2019-08-20 02:23:35'),
(264, 1, 'admin/customers', 'POST', '106.198.3.27', '{\"customer_name\":null,\"phone_number\":null,\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:23:38', '2019-08-20 02:23:38'),
(265, 1, 'admin/customers/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:23:39', '2019-08-20 02:23:39'),
(266, 1, 'admin/customers', 'POST', '106.198.3.27', '{\"customer_name\":\"test\",\"phone_number\":\"test@gmail.com\",\"email\":\"test@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:24:06', '2019-08-20 02:24:06'),
(267, 1, 'admin/customers/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:24:06', '2019-08-20 02:24:06'),
(268, 1, 'admin/customers', 'POST', '106.198.3.27', '{\"customer_name\":\"test\",\"phone_number\":\"9757575720\",\"email\":\"test@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:24:14', '2019-08-20 02:24:14'),
(269, 1, 'admin/customers', 'GET', '106.198.3.27', '[]', '2019-08-20 02:24:15', '2019-08-20 02:24:15'),
(270, 1, 'admin/customers', 'GET', '106.198.3.27', '[]', '2019-08-20 02:28:26', '2019-08-20 02:28:26'),
(271, 1, 'admin/customers', 'GET', '106.198.3.27', '[]', '2019-08-20 02:28:37', '2019-08-20 02:28:37'),
(272, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"id\":null,\"customer_name\":null,\"phone_number\":\"599\",\"email\":null,\"status\":null,\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:28:47', '2019-08-20 02:28:47'),
(273, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:28:50', '2019-08-20 02:28:50'),
(274, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_name\":null,\"phone_number\":null,\"email\":\"tes\",\"status\":null}', '2019-08-20 02:28:55', '2019-08-20 02:28:55'),
(275, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:28:57', '2019-08-20 02:28:57'),
(276, 1, 'admin/customers/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:29:01', '2019-08-20 02:29:01'),
(277, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:29:12', '2019-08-20 02:29:12'),
(278, 1, 'admin/customers/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:29:17', '2019-08-20 02:29:17'),
(279, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:29:38', '2019-08-20 02:29:38'),
(280, 1, 'admin/customers/2/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:29:40', '2019-08-20 02:29:40'),
(281, 1, 'admin/customers/2', 'PUT', '106.198.3.27', '{\"customer_name\":\"test\",\"phone_number\":\"9757575720\",\"email\":\"test@gmail.com\",\"password\":\"$2y$12$t2zmk2lf2JlbmjBsVBVsFOy5YO4AK9AwRS\\/1mZGHbRd32fk6wr9zm\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/customers\"}', '2019-08-20 02:33:27', '2019-08-20 02:33:27'),
(282, 1, 'admin/customers', 'GET', '106.198.3.27', '[]', '2019-08-20 02:33:27', '2019-08-20 02:33:27'),
(283, 1, 'admin/customers/2/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:34:17', '2019-08-20 02:34:17'),
(284, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:34:29', '2019-08-20 02:34:29'),
(285, 1, 'admin/customers/2/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:34:31', '2019-08-20 02:34:31'),
(286, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:34:40', '2019-08-20 02:34:40'),
(287, 1, 'admin/customers/2/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:34:42', '2019-08-20 02:34:42'),
(288, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:38:38', '2019-08-20 02:38:38'),
(289, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:39:20', '2019-08-20 02:39:20'),
(290, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:39:23', '2019-08-20 02:39:23'),
(291, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:40:37', '2019-08-20 02:40:37'),
(292, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:41:36', '2019-08-20 02:41:36'),
(293, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:42:06', '2019-08-20 02:42:06'),
(294, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:42:08', '2019-08-20 02:42:08'),
(295, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '[]', '2019-08-20 02:43:22', '2019-08-20 02:43:22'),
(296, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:43:28', '2019-08-20 02:43:28'),
(297, 1, 'admin/delivery_boys', 'POST', '106.198.3.27', '{\"delivery_boy_name\":null,\"phone_number\":null,\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/delivery_boys\"}', '2019-08-20 02:43:30', '2019-08-20 02:43:30'),
(298, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:43:30', '2019-08-20 02:43:30'),
(299, 1, 'admin/delivery_boys', 'POST', '106.198.3.27', '{\"delivery_boy_name\":\"sarath\",\"phone_number\":null,\"email\":\"sarath@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:43:59', '2019-08-20 02:43:59'),
(300, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '[]', '2019-08-20 02:44:00', '2019-08-20 02:44:00'),
(301, 1, 'admin/delivery_boys', 'POST', '106.198.3.27', '{\"delivery_boy_name\":\"sarath\",\"phone_number\":\"98756216242\",\"email\":\"sarath@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\"}', '2019-08-20 02:44:11', '2019-08-20 02:44:11'),
(302, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '[]', '2019-08-20 02:44:11', '2019-08-20 02:44:11'),
(303, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:44:16', '2019-08-20 02:44:16'),
(304, 1, 'admin/delivery_boys', 'POST', '106.198.3.27', '{\"delivery_boy_name\":\"kannan\",\"phone_number\":\"987546512\",\"email\":\"kannan@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/delivery_boys\"}', '2019-08-20 02:44:50', '2019-08-20 02:44:50'),
(305, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '[]', '2019-08-20 02:44:51', '2019-08-20 02:44:51'),
(306, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"id\":\"2\",\"delivery_boy_name\":null,\"phone_number\":null,\"email\":null,\"status\":null,\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:44:58', '2019-08-20 02:44:58'),
(307, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:44:59', '2019-08-20 02:44:59'),
(308, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":\"sarath\",\"phone_number\":null,\"email\":null,\"status\":null}', '2019-08-20 02:45:04', '2019-08-20 02:45:04'),
(309, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":\"sarath\",\"phone_number\":null,\"email\":\"sarath@gmail.com\",\"status\":null}', '2019-08-20 02:45:22', '2019-08-20 02:45:22'),
(310, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":\"sarath\",\"phone_number\":null,\"email\":\"sarath@gmail.com\",\"status\":\"1\"}', '2019-08-20 02:45:24', '2019-08-20 02:45:24'),
(311, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":\"sarath\",\"phone_number\":null,\"email\":\"sarath@gmail.com\",\"status\":\"2\"}', '2019-08-20 02:45:27', '2019-08-20 02:45:27'),
(312, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:45:28', '2019-08-20 02:45:28'),
(313, 1, 'admin/labels', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:47:12', '2019-08-20 02:47:12');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(314, 1, 'admin/labels/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:47:23', '2019-08-20 02:47:23'),
(315, 1, 'admin/labels', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:47:29', '2019-08-20 02:47:29'),
(316, 1, 'admin/labels', 'GET', '106.198.3.27', '[]', '2019-08-20 02:48:40', '2019-08-20 02:48:40'),
(317, 1, 'admin/labels/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:48:42', '2019-08-20 02:48:42'),
(318, 1, 'admin/labels', 'GET', '106.198.3.27', '[]', '2019-08-20 02:49:59', '2019-08-20 02:49:59'),
(319, 1, 'admin/labels/5/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:50:01', '2019-08-20 02:50:01'),
(320, 1, 'admin/labels/5', 'PUT', '106.198.3.27', '{\"label_name\":null,\"description\":null,\"status\":null,\"_token\":\"6CRMnPL46DMBTquiW70wW3setP49yN7xwuJI6774\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/labels\"}', '2019-08-20 02:50:10', '2019-08-20 02:50:10'),
(321, 1, 'admin/labels/5/edit', 'GET', '106.198.3.27', '[]', '2019-08-20 02:50:11', '2019-08-20 02:50:11'),
(322, 1, 'admin/labels', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:50:14', '2019-08-20 02:50:14'),
(323, 1, 'admin/labels', 'GET', '106.198.3.27', '[]', '2019-08-20 02:50:47', '2019-08-20 02:50:47'),
(324, 1, 'admin/labels', 'GET', '106.198.3.27', '[]', '2019-08-20 02:51:53', '2019-08-20 02:51:53'),
(325, 1, 'admin/labels', 'GET', '106.198.3.27', '[]', '2019-08-20 02:52:15', '2019-08-20 02:52:15'),
(326, 1, 'admin/labels', 'GET', '106.198.3.27', '[]', '2019-08-20 02:52:59', '2019-08-20 02:52:59'),
(327, 1, 'admin/labels', 'GET', '106.198.3.27', '{\"id\":null,\"label_name\":\"On the way to pickup\",\"status\":null,\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:53:12', '2019-08-20 02:53:12'),
(328, 1, 'admin/labels', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"label_name\":\"On the way t\",\"status\":null}', '2019-08-20 02:53:16', '2019-08-20 02:53:16'),
(329, 1, 'admin/labels', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-20 02:53:18', '2019-08-20 02:53:18'),
(330, 1, 'admin', 'GET', '106.198.3.27', '[]', '2019-08-22 13:58:58', '2019-08-22 13:58:58'),
(331, 1, 'admin/categories', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:00:21', '2019-08-22 14:00:21'),
(332, 1, 'admin/categories/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:00:26', '2019-08-22 14:00:26'),
(333, 1, 'admin/categories/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:03:45', '2019-08-22 14:03:45'),
(334, 1, 'admin/categories', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:08:14', '2019-08-22 14:08:14'),
(335, 1, 'admin/categories/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:08:17', '2019-08-22 14:08:17'),
(336, 1, 'admin/categories', 'POST', '106.198.3.27', '{\"service_id\":[null],\"category_name\":null,\"description\":null,\"status\":null,\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-22 14:08:20', '2019-08-22 14:08:20'),
(337, 1, 'admin/categories/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:08:20', '2019-08-22 14:08:20'),
(338, 1, 'admin/categories', 'POST', '106.198.3.27', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"category_name\":\"Test\",\"description\":\"Test123\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:08:40', '2019-08-22 14:08:40'),
(339, 1, 'admin/categories', 'GET', '106.198.3.27', '[]', '2019-08-22 14:08:40', '2019-08-22 14:08:40'),
(340, 1, 'admin/categories/5/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:08:43', '2019-08-22 14:08:43'),
(341, 1, 'admin/categories/5', 'PUT', '106.198.3.27', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"category_name\":\"Test\",\"description\":\"Test123\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-22 14:08:51', '2019-08-22 14:08:51'),
(342, 1, 'admin/categories/5/edit', 'GET', '106.198.3.27', '[]', '2019-08-22 14:08:51', '2019-08-22 14:08:51'),
(343, 1, 'admin/categories/5/edit', 'GET', '106.198.3.27', '[]', '2019-08-22 14:11:29', '2019-08-22 14:11:29'),
(344, 1, 'admin/categories/5', 'PUT', '106.198.3.27', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"category_name\":\"Test\",\"description\":\"Test123\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\\/create\"}', '2019-08-22 14:11:32', '2019-08-22 14:11:32'),
(345, 1, 'admin/categories/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:11:32', '2019-08-22 14:11:32'),
(346, 1, 'admin/categories', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:11:34', '2019-08-22 14:11:34'),
(347, 1, 'admin/categories/5/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:11:38', '2019-08-22 14:11:38'),
(348, 1, 'admin/categories/5', 'PUT', '106.198.3.27', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",null],\"category_name\":\"Test\",\"description\":\"Test123\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-22 14:11:40', '2019-08-22 14:11:40'),
(349, 1, 'admin/categories', 'GET', '106.198.3.27', '[]', '2019-08-22 14:11:41', '2019-08-22 14:11:41'),
(350, 1, 'admin/categories/5', 'DELETE', '106.198.3.27', '{\"_method\":\"delete\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:11:43', '2019-08-22 14:11:43'),
(351, 1, 'admin/categories', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:11:43', '2019-08-22 14:11:43'),
(352, 1, 'admin/categories', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"category_name\":\"Bed\",\"status\":null}', '2019-08-22 14:11:58', '2019-08-22 14:11:58'),
(353, 1, 'admin/categories', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:12:00', '2019-08-22 14:12:00'),
(354, 1, 'admin/categories', 'GET', '106.198.3.27', '[]', '2019-08-22 14:12:46', '2019-08-22 14:12:46'),
(355, 1, 'admin/faqs', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:12:50', '2019-08-22 14:12:50'),
(356, 1, 'admin/faqs', 'GET', '106.198.3.27', '[]', '2019-08-22 14:14:38', '2019-08-22 14:14:38'),
(357, 1, 'admin/faqs', 'GET', '106.198.3.27', '{\"id\":null,\"question\":\"sa\",\"status\":null,\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:14:45', '2019-08-22 14:14:45'),
(358, 1, 'admin/faqs', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"question\":\"sa\",\"status\":\"1\"}', '2019-08-22 14:14:47', '2019-08-22 14:14:47'),
(359, 1, 'admin/faqs', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:14:48', '2019-08-22 14:14:48'),
(360, 1, 'admin/faqs/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:14:50', '2019-08-22 14:14:50'),
(361, 1, 'admin/faqs', 'POST', '106.198.3.27', '{\"question\":null,\"answer\":null,\"status\":null,\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-22 14:14:53', '2019-08-22 14:14:53'),
(362, 1, 'admin/faqs/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:14:53', '2019-08-22 14:14:53'),
(363, 1, 'admin/faqs', 'POST', '106.198.3.27', '{\"question\":\"asd\",\"answer\":\"asdasd\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:14:57', '2019-08-22 14:14:57'),
(364, 1, 'admin/faqs', 'GET', '106.198.3.27', '[]', '2019-08-22 14:14:57', '2019-08-22 14:14:57'),
(365, 1, 'admin/faqs/5/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:14:59', '2019-08-22 14:14:59'),
(366, 1, 'admin/faqs/5', 'PUT', '106.198.3.27', '{\"question\":\"asda\",\"answer\":\"asdasd\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-22 14:15:01', '2019-08-22 14:15:01'),
(367, 1, 'admin/faqs', 'GET', '106.198.3.27', '[]', '2019-08-22 14:15:01', '2019-08-22 14:15:01'),
(368, 1, 'admin/faqs/5', 'DELETE', '106.198.3.27', '{\"_method\":\"delete\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:15:04', '2019-08-22 14:15:04'),
(369, 1, 'admin/faqs', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:15:04', '2019-08-22 14:15:04'),
(370, 1, 'admin/promo_codes', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:20:23', '2019-08-22 14:20:23'),
(371, 1, 'admin/promo_codes/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:20:25', '2019-08-22 14:20:25'),
(372, 1, 'admin/promo_codes', 'POST', '106.198.3.27', '{\"promo_name\":null,\"promo_code\":null,\"description\":null,\"promo_type\":\"1\",\"discount\":null,\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-22 14:20:27', '2019-08-22 14:20:27'),
(373, 1, 'admin/promo_codes/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:20:27', '2019-08-22 14:20:27'),
(374, 1, 'admin/promo_codes', 'POST', '106.198.3.27', '{\"promo_name\":null,\"promo_code\":null,\"description\":null,\"promo_type\":null,\"discount\":null,\"status\":null,\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:20:35', '2019-08-22 14:20:35'),
(375, 1, 'admin/promo_codes/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:20:36', '2019-08-22 14:20:36'),
(376, 1, 'admin/promo_codes', 'POST', '106.198.3.27', '{\"promo_name\":\"sdfsd\",\"promo_code\":\"dfsdf\",\"description\":\"czfd\",\"promo_type\":\"1\",\"discount\":\"10\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:20:48', '2019-08-22 14:20:48'),
(377, 1, 'admin/promo_codes/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:20:49', '2019-08-22 14:20:49'),
(378, 1, 'admin/promo_codes/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:22:12', '2019-08-22 14:22:12'),
(379, 1, 'admin/promo_codes', 'POST', '106.198.3.27', '{\"promo_name\":\"sdaf\",\"promo_code\":\"sdf\",\"description\":\"sdfsd\",\"promo_type\":\"1\",\"discount\":\"10\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:22:20', '2019-08-22 14:22:20'),
(380, 1, 'admin/promo_codes', 'GET', '106.198.3.27', '[]', '2019-08-22 14:22:21', '2019-08-22 14:22:21'),
(381, 1, 'admin/promo_codes', 'GET', '106.198.3.27', '{\"id\":null,\"promo_name\":null,\"status\":null,\"promo_type\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:22:25', '2019-08-22 14:22:25'),
(382, 1, 'admin/promo_codes', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"promo_name\":null,\"status\":null,\"promo_type\":\"2\"}', '2019-08-22 14:22:27', '2019-08-22 14:22:27'),
(383, 1, 'admin/promo_codes/2', 'DELETE', '106.198.3.27', '{\"_method\":\"delete\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:22:32', '2019-08-22 14:22:32'),
(384, 1, 'admin/promo_codes', 'GET', '106.198.3.27', '{\"id\":null,\"promo_name\":null,\"status\":null,\"promo_type\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:22:32', '2019-08-22 14:22:32'),
(385, 1, 'admin/promo_codes', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:22:42', '2019-08-22 14:22:42'),
(386, 1, 'admin/labels', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:22:47', '2019-08-22 14:22:47'),
(387, 1, 'admin/auth/users', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:23:42', '2019-08-22 14:23:42'),
(388, 1, 'admin/auth/users/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:23:49', '2019-08-22 14:23:49'),
(389, 1, 'admin/auth/users', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:23:52', '2019-08-22 14:23:52'),
(390, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:34:17', '2019-08-22 14:34:17'),
(391, 1, 'admin/auth/menu', 'POST', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Privacy Policies\",\"icon\":\"fa-file-pdf-o\",\"uri\":\"privacy_policies\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:34:52', '2019-08-22 14:34:52'),
(392, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:34:52', '2019-08-22 14:34:52'),
(393, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:34:56', '2019-08-22 14:34:56'),
(394, 1, 'admin/privacy_policies', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:35:14', '2019-08-22 14:35:14'),
(395, 1, 'admin/privacy_policies/4/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:35:17', '2019-08-22 14:35:17'),
(396, 1, 'admin/privacy_policies/4', 'PUT', '106.198.3.27', '{\"title\":\"qqqqqqqqqqqq\",\"description\":\"qqqqqqqqqqqqqqqqqqq\",\"status\":\"2\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-22 14:35:20', '2019-08-22 14:35:20'),
(397, 1, 'admin/privacy_policies', 'GET', '106.198.3.27', '[]', '2019-08-22 14:35:21', '2019-08-22 14:35:21'),
(398, 1, 'admin/privacy_policies/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:35:23', '2019-08-22 14:35:23'),
(399, 1, 'admin/privacy_policies', 'POST', '106.198.3.27', '{\"title\":null,\"description\":null,\"status\":null,\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-22 14:35:26', '2019-08-22 14:35:26'),
(400, 1, 'admin/privacy_policies/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:35:26', '2019-08-22 14:35:26'),
(401, 1, 'admin/privacy_policies', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:35:29', '2019-08-22 14:35:29'),
(402, 1, 'admin/privacy_policies', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"title\":null,\"status\":\"2\"}', '2019-08-22 14:35:32', '2019-08-22 14:35:32'),
(403, 1, 'admin/privacy_policies/4', 'DELETE', '106.198.3.27', '{\"_method\":\"delete\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:35:35', '2019-08-22 14:35:35'),
(404, 1, 'admin/privacy_policies', 'GET', '106.198.3.27', '{\"id\":null,\"title\":null,\"status\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:35:35', '2019-08-22 14:35:35'),
(405, 1, 'admin/privacy_policies', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:35:46', '2019-08-22 14:35:46'),
(406, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:36:02', '2019-08-22 14:36:02'),
(407, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:44:54', '2019-08-22 14:44:54'),
(408, 1, 'admin/auth/menu', 'POST', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Products\",\"icon\":\"fa-align-justify\",\"uri\":\"products\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:45:12', '2019-08-22 14:45:12'),
(409, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:45:12', '2019-08-22 14:45:12'),
(410, 1, 'admin/auth/menu', 'POST', '106.198.3.27', '{\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":16}]\"}', '2019-08-22 14:45:18', '2019-08-22 14:45:18'),
(411, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:45:18', '2019-08-22 14:45:18'),
(412, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:45:19', '2019-08-22 14:45:19'),
(413, 1, 'admin/auth/menu/14/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:45:42', '2019-08-22 14:45:42'),
(414, 1, 'admin/auth/menu/14', 'PUT', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Customers\",\"icon\":\"fa-users\",\"uri\":\"customers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/auth\\/menu\"}', '2019-08-22 14:45:47', '2019-08-22 14:45:47'),
(415, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:45:48', '2019-08-22 14:45:48'),
(416, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:45:54', '2019-08-22 14:45:54'),
(417, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:45:59', '2019-08-22 14:45:59'),
(418, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:46:13', '2019-08-22 14:46:13'),
(419, 1, 'admin/auth/menu/12/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:46:17', '2019-08-22 14:46:17'),
(420, 1, 'admin/auth/menu/12', 'PUT', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Promo Codes\",\"icon\":\"fa-bookmark\",\"uri\":\"promo_codes\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/auth\\/menu\"}', '2019-08-22 14:46:21', '2019-08-22 14:46:21'),
(421, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:46:21', '2019-08-22 14:46:21'),
(422, 1, 'admin/auth/menu/8/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:46:25', '2019-08-22 14:46:25'),
(423, 1, 'admin/auth/menu/8', 'PUT', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Faqs\",\"icon\":\"fa-question-circle\",\"uri\":\"faqs\",\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/auth\\/menu\"}', '2019-08-22 14:46:28', '2019-08-22 14:46:28'),
(424, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:46:29', '2019-08-22 14:46:29'),
(425, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-22 14:47:39', '2019-08-22 14:47:39'),
(426, 1, 'admin/products', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:47:43', '2019-08-22 14:47:43'),
(427, 1, 'admin/products/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:47:45', '2019-08-22 14:47:45'),
(428, 1, 'admin/products', 'POST', '106.198.3.27', '{\"category_id\":null,\"product_name\":null,\"description\":null,\"status\":null,\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-22 14:47:49', '2019-08-22 14:47:49'),
(429, 1, 'admin/products/create', 'GET', '106.198.3.27', '[]', '2019-08-22 14:47:49', '2019-08-22 14:47:49'),
(430, 1, 'admin/products', 'POST', '106.198.3.27', '{\"category_id\":\"2\",\"product_name\":\"asd\",\"description\":\"asdas\",\"status\":\"1\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:48:01', '2019-08-22 14:48:01'),
(431, 1, 'admin/products', 'GET', '106.198.3.27', '[]', '2019-08-22 14:48:01', '2019-08-22 14:48:01'),
(432, 1, 'admin/products/8/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:48:03', '2019-08-22 14:48:03'),
(433, 1, 'admin/products/8', 'PUT', '106.198.3.27', '{\"category_id\":\"2\",\"product_name\":\"asd\",\"description\":null,\"status\":\"2\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-22 14:48:10', '2019-08-22 14:48:10'),
(434, 1, 'admin/products', 'GET', '106.198.3.27', '[]', '2019-08-22 14:48:10', '2019-08-22 14:48:10'),
(435, 1, 'admin/products', 'GET', '106.198.3.27', '{\"id\":null,\"product_name\":null,\"category_id\":\"1\",\"status\":null,\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:48:14', '2019-08-22 14:48:14'),
(436, 1, 'admin/products', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:48:16', '2019-08-22 14:48:16'),
(437, 1, 'admin/products/8', 'DELETE', '106.198.3.27', '{\"_method\":\"delete\",\"_token\":\"hq8xrqBJvPi0ujY4xQ0Itzjy48Ur7Ugp4CZXFLdD\"}', '2019-08-22 14:48:18', '2019-08-22 14:48:18'),
(438, 1, 'admin/products', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-22 14:48:18', '2019-08-22 14:48:18'),
(439, 1, 'admin', 'GET', '106.198.3.27', '[]', '2019-08-22 16:22:21', '2019-08-22 16:22:21'),
(440, 1, 'admin', 'GET', '106.211.231.29', '[]', '2019-08-23 05:32:07', '2019-08-23 05:32:07'),
(441, 1, 'admin/services', 'GET', '106.211.231.29', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 05:32:28', '2019-08-23 05:32:28'),
(442, 1, 'admin/services', 'GET', '106.211.231.29', '[]', '2019-08-23 05:32:33', '2019-08-23 05:32:33'),
(443, 1, 'admin/auth/logout', 'GET', '106.211.231.29', '{\"_pjax\":\"#pjax-container\"}', '2019-08-23 05:32:38', '2019-08-23 05:32:38'),
(444, 1, 'admin', 'GET', '106.217.15.235', '[]', '2019-08-24 05:40:05', '2019-08-24 05:40:05'),
(445, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:40:47', '2019-08-24 05:40:47'),
(446, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:08', '2019-08-24 05:41:08'),
(447, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:11', '2019-08-24 05:41:11'),
(448, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:17', '2019-08-24 05:41:17'),
(449, 1, 'admin/delivery_boys', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:30', '2019-08-24 05:41:30'),
(450, 1, 'admin/promo_codes', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:34', '2019-08-24 05:41:34'),
(451, 1, 'admin/faqs', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:36', '2019-08-24 05:41:36'),
(452, 1, 'admin/promo_codes', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:39', '2019-08-24 05:41:39'),
(453, 1, 'admin/delivery_boys', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:41', '2019-08-24 05:41:41'),
(454, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:42', '2019-08-24 05:41:42'),
(455, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:43', '2019-08-24 05:41:43'),
(456, 1, 'admin/services/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:41:47', '2019-08-24 05:41:47'),
(457, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 05:41:50', '2019-08-24 05:41:50'),
(458, 1, 'admin/services/create', 'GET', '106.217.15.235', '[]', '2019-08-24 05:41:51', '2019-08-24 05:41:51'),
(459, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:42:00', '2019-08-24 05:42:00'),
(460, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:42:05', '2019-08-24 05:42:05'),
(461, 1, 'admin/categories/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:42:09', '2019-08-24 05:42:09'),
(462, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:42:12', '2019-08-24 05:42:12'),
(463, 1, 'admin', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:44:07', '2019-08-24 05:44:07'),
(464, 1, 'admin/auth/users', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:44:16', '2019-08-24 05:44:16'),
(465, 1, 'admin/auth/roles', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:44:20', '2019-08-24 05:44:20'),
(466, 1, 'admin/auth/permissions', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:44:24', '2019-08-24 05:44:24'),
(467, 1, 'admin/promo_codes', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:45:18', '2019-08-24 05:45:18'),
(468, 1, 'admin/delivery_boys', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:45:38', '2019-08-24 05:45:38'),
(469, 1, 'admin', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:45:50', '2019-08-24 05:45:50'),
(470, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:45:58', '2019-08-24 05:45:58'),
(471, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:46:01', '2019-08-24 05:46:01'),
(472, 1, 'admin', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 05:50:02', '2019-08-24 05:50:02'),
(473, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:15:13', '2019-08-24 06:15:13'),
(474, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:15:32', '2019-08-24 06:15:32'),
(475, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:15:38', '2019-08-24 06:15:38'),
(476, 1, 'admin/services/4/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:15:46', '2019-08-24 06:15:46'),
(477, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:16:03', '2019-08-24 06:16:03'),
(478, 1, 'admin/services/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:16:08', '2019-08-24 06:16:08'),
(479, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:16:11', '2019-08-24 06:16:11'),
(480, 1, 'admin/services/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:16:31', '2019-08-24 06:16:31'),
(481, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:16:42', '2019-08-24 06:16:42'),
(482, 1, 'admin/services/create', 'GET', '106.217.15.235', '[]', '2019-08-24 06:16:48', '2019-08-24 06:16:48'),
(483, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":\"Wash & Rinse\",\"description\":null,\"status\":\"1\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 06:17:17', '2019-08-24 06:17:17'),
(484, 1, 'admin/services/create', 'GET', '106.217.15.235', '[]', '2019-08-24 06:17:17', '2019-08-24 06:17:17'),
(485, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:17:30', '2019-08-24 06:17:30'),
(486, 1, 'admin/services/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:17:32', '2019-08-24 06:17:32'),
(487, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 06:17:34', '2019-08-24 06:17:34'),
(488, 1, 'admin/services/create', 'GET', '106.217.15.235', '[]', '2019-08-24 06:17:35', '2019-08-24 06:17:35'),
(489, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":\"Wash & Rinse\",\"description\":\"This is the test content for wash and rinse\",\"status\":\"1\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\"}', '2019-08-24 06:20:08', '2019-08-24 06:20:08'),
(490, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 06:20:09', '2019-08-24 06:20:09'),
(491, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:24:40', '2019-08-24 06:24:40'),
(492, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:24:44', '2019-08-24 06:24:44'),
(493, 1, 'admin/services/2/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:24:48', '2019-08-24 06:24:48'),
(494, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:24:52', '2019-08-24 06:24:52'),
(495, 1, 'admin/services/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:24:54', '2019-08-24 06:24:54'),
(496, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:25:06', '2019-08-24 06:25:06'),
(497, 1, 'admin/services/3/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:25:13', '2019-08-24 06:25:13'),
(498, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:25:15', '2019-08-24 06:25:15'),
(499, 1, 'admin/services/4/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:25:18', '2019-08-24 06:25:18'),
(500, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:25:21', '2019-08-24 06:25:21'),
(501, 1, 'admin/services/4/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:25:27', '2019-08-24 06:25:27'),
(502, 1, 'admin/services/4', 'PUT', '106.217.15.235', '{\"service_name\":\"Cloth Repairing\",\"description\":\"this is test description cloth repairing\",\"status\":\"2\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 06:25:33', '2019-08-24 06:25:33'),
(503, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 06:25:33', '2019-08-24 06:25:33'),
(504, 1, 'admin/services/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:26:46', '2019-08-24 06:26:46'),
(505, 1, 'admin/services/1', 'PUT', '106.217.15.235', '{\"service_name\":\"Dry Cleaning\",\"description\":\"This is test description Dry Cleaning\",\"status\":\"1\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 06:27:17', '2019-08-24 06:27:17'),
(506, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 06:27:17', '2019-08-24 06:27:17'),
(507, 1, 'admin/services/3/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:28:59', '2019-08-24 06:28:59'),
(508, 1, 'admin/services/3', 'PUT', '106.217.15.235', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"this is test description duvet cleaning\",\"status\":\"1\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 06:29:10', '2019-08-24 06:29:10'),
(509, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 06:29:10', '2019-08-24 06:29:10'),
(510, 1, 'admin/services/3/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:29:35', '2019-08-24 06:29:35'),
(511, 1, 'admin/services/3', 'PUT', '106.217.15.235', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"this is test description duvet cleaning\",\"status\":\"1\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 06:29:45', '2019-08-24 06:29:45'),
(512, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 06:29:45', '2019-08-24 06:29:45'),
(513, 1, 'admin/services/3/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:30:13', '2019-08-24 06:30:13'),
(514, 1, 'admin/services/3', 'PUT', '106.217.15.235', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"this is test description duvet cleaning\",\"status\":\"1\",\"_token\":\"hkcHei9bi6MsBfJsfYutIJOB84SvKC5qCscDwizk\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 06:30:24', '2019-08-24 06:30:24'),
(515, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 06:30:24', '2019-08-24 06:30:24'),
(516, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 06:32:31', '2019-08-24 06:32:31'),
(517, 1, 'admin/categories', 'GET', '106.217.15.235', '[]', '2019-08-24 09:31:39', '2019-08-24 09:31:39'),
(518, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 09:32:33', '2019-08-24 09:32:33'),
(519, 1, 'admin', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:32:43', '2019-08-24 09:32:43'),
(520, 1, 'admin/auth/users', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:33:07', '2019-08-24 09:33:07'),
(521, 1, 'admin/auth/roles', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:33:13', '2019-08-24 09:33:13'),
(522, 1, 'admin/auth/permissions', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:33:15', '2019-08-24 09:33:15'),
(523, 1, 'admin/auth/menu', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:33:16', '2019-08-24 09:33:16'),
(524, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:33:20', '2019-08-24 09:33:20'),
(525, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:33:36', '2019-08-24 09:33:36'),
(526, 1, 'admin/labels', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:33:39', '2019-08-24 09:33:39'),
(527, 1, 'admin/labels', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"label_name\":null,\"status\":null}', '2019-08-24 09:34:26', '2019-08-24 09:34:26'),
(528, 1, 'admin/labels', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"label_name\":null,\"status\":null}', '2019-08-24 09:34:32', '2019-08-24 09:34:32'),
(529, 1, 'admin/labels', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":\"5\",\"label_name\":null,\"status\":null}', '2019-08-24 09:34:40', '2019-08-24 09:34:40'),
(530, 1, 'admin/labels', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":\"50\",\"label_name\":null,\"status\":null}', '2019-08-24 09:34:45', '2019-08-24 09:34:45'),
(531, 1, 'admin/labels', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"label_name\":null,\"status\":null}', '2019-08-24 09:34:51', '2019-08-24 09:34:51'),
(532, 1, 'admin/app_settings', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:35:30', '2019-08-24 09:35:30'),
(533, 1, 'admin/app_settings/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:35:33', '2019-08-24 09:35:33'),
(534, 1, 'admin/app_settings/1', 'PUT', '106.217.15.235', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"Rs\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-24 09:35:55', '2019-08-24 09:35:55'),
(535, 1, 'admin/app_settings/1/edit', 'GET', '106.217.15.235', '[]', '2019-08-24 09:35:55', '2019-08-24 09:35:55'),
(536, 1, 'admin/app_settings', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:36:20', '2019-08-24 09:36:20'),
(537, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:36:24', '2019-08-24 09:36:24'),
(538, 1, 'admin/services/6', 'DELETE', '106.217.15.235', '{\"_method\":\"delete\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:36:51', '2019-08-24 09:36:51'),
(539, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:36:51', '2019-08-24 09:36:51'),
(540, 1, 'admin/services/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:36:57', '2019-08-24 09:36:57'),
(541, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:37:10', '2019-08-24 09:37:10'),
(542, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:37:12', '2019-08-24 09:37:12'),
(543, 1, 'admin/services/4/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:37:16', '2019-08-24 09:37:16'),
(544, 1, 'admin/services/4', 'PUT', '106.217.15.235', '{\"service_name\":\"Cloth Repairing\",\"description\":\"this is test description cloth repairing\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 09:37:22', '2019-08-24 09:37:22'),
(545, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 09:37:22', '2019-08-24 09:37:22'),
(546, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 09:37:49', '2019-08-24 09:37:49'),
(547, 1, 'admin/services/create', 'GET', '106.217.15.235', '[]', '2019-08-24 09:37:49', '2019-08-24 09:37:49'),
(548, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":\"Wash & Rinse\",\"description\":\"this is test description for Wash & Rinse\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:38:53', '2019-08-24 09:38:53'),
(549, 1, 'admin/services', 'GET', '106.217.15.235', '[]', '2019-08-24 09:38:54', '2019-08-24 09:38:54'),
(550, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:38:58', '2019-08-24 09:38:58'),
(551, 1, 'admin/categories/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:39:01', '2019-08-24 09:39:01'),
(552, 1, 'admin/categories', 'POST', '106.217.15.235', '{\"service_id\":[null],\"category_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-24 09:39:05', '2019-08-24 09:39:05'),
(553, 1, 'admin/categories/create', 'GET', '106.217.15.235', '[]', '2019-08-24 09:39:05', '2019-08-24 09:39:05'),
(554, 1, 'admin/categories', 'POST', '106.217.15.235', '{\"service_id\":[\"1\",\"2\",\"4\",\"7\",null],\"category_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:39:56', '2019-08-24 09:39:56'),
(555, 1, 'admin/categories/create', 'GET', '106.217.15.235', '[]', '2019-08-24 09:39:56', '2019-08-24 09:39:56'),
(556, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:40:03', '2019-08-24 09:40:03'),
(557, 1, 'admin/categories/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:40:36', '2019-08-24 09:40:36'),
(558, 1, 'admin/categories', 'POST', '106.217.15.235', '{\"service_id\":[\"1\",\"2\",\"4\",\"7\",null],\"category_name\":\"Blankets\",\"description\":\"This is the test content\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:40:43', '2019-08-24 09:40:43'),
(559, 1, 'admin/categories/create', 'GET', '106.217.15.235', '[]', '2019-08-24 09:40:43', '2019-08-24 09:40:43'),
(560, 1, 'admin/categories', 'POST', '106.217.15.235', '{\"service_id\":[\"1\",\"2\",\"4\",\"7\",null],\"category_name\":\"Blankets\",\"description\":\"This is the test content for blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:41:27', '2019-08-24 09:41:27'),
(561, 1, 'admin/categories', 'GET', '106.217.15.235', '[]', '2019-08-24 09:41:27', '2019-08-24 09:41:27'),
(562, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:41:33', '2019-08-24 09:41:33'),
(563, 1, 'admin/categories/6', 'PUT', '106.217.15.235', '{\"service_id\":[\"1\",\"2\",\"4\",\"7\",null],\"category_name\":\"Blankets\",\"description\":\"This is blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-24 09:41:43', '2019-08-24 09:41:43'),
(564, 1, 'admin/categories', 'GET', '106.217.15.235', '[]', '2019-08-24 09:41:43', '2019-08-24 09:41:43'),
(565, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:41:45', '2019-08-24 09:41:45'),
(566, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:41:51', '2019-08-24 09:41:51'),
(567, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:41:54', '2019-08-24 09:41:54'),
(568, 1, 'admin/categories/6', 'PUT', '106.217.15.235', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",\"7\",null],\"category_name\":\"Blankets\",\"description\":\"This is blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-24 09:41:58', '2019-08-24 09:41:58'),
(569, 1, 'admin/categories', 'GET', '106.217.15.235', '[]', '2019-08-24 09:41:58', '2019-08-24 09:41:58'),
(570, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"id\":null,\"category_name\":null,\"status\":null,\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:42:04', '2019-08-24 09:42:04'),
(571, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":\"6\",\"category_name\":null,\"status\":null}', '2019-08-24 09:42:09', '2019-08-24 09:42:09'),
(572, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":\"6\",\"category_name\":\"Blankets\",\"status\":null}', '2019-08-24 09:42:20', '2019-08-24 09:42:20'),
(573, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"category_name\":\"Blankets\",\"status\":null}', '2019-08-24 09:42:23', '2019-08-24 09:42:23'),
(574, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"category_name\":\"Blankets\",\"status\":\"2\"}', '2019-08-24 09:42:26', '2019-08-24 09:42:26'),
(575, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"category_name\":\"Blankets\",\"status\":\"1\"}', '2019-08-24 09:42:29', '2019-08-24 09:42:29'),
(576, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"category_name\":null,\"status\":\"1\"}', '2019-08-24 09:42:31', '2019-08-24 09:42:31'),
(577, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"category_name\":null,\"status\":\"2\"}', '2019-08-24 09:42:33', '2019-08-24 09:42:33'),
(578, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:42:35', '2019-08-24 09:42:35'),
(579, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:42:38', '2019-08-24 09:42:38'),
(580, 1, 'admin/categories/6', 'PUT', '106.217.15.235', '{\"service_id\":[\"1\",\"2\",\"3\",\"4\",\"7\",null],\"category_name\":\"Blankets\",\"description\":\"This is blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-24 09:43:04', '2019-08-24 09:43:04'),
(581, 1, 'admin/categories', 'GET', '106.217.15.235', '[]', '2019-08-24 09:43:05', '2019-08-24 09:43:05'),
(582, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:43:11', '2019-08-24 09:43:11'),
(583, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:43:14', '2019-08-24 09:43:14'),
(584, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:43:16', '2019-08-24 09:43:16'),
(585, 1, 'admin/products/2/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:43:44', '2019-08-24 09:43:44'),
(586, 1, 'admin/products/2', 'PUT', '106.217.15.235', '{\"category_id\":\"1\",\"product_name\":\"Pant\",\"description\":\"asdasd\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 09:43:50', '2019-08-24 09:43:50'),
(587, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 09:43:50', '2019-08-24 09:43:50'),
(588, 1, 'admin/products/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:44:01', '2019-08-24 09:44:01'),
(589, 1, 'admin/products', 'POST', '106.217.15.235', '{\"category_id\":null,\"product_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 09:44:03', '2019-08-24 09:44:03'),
(590, 1, 'admin/products/create', 'GET', '106.217.15.235', '[]', '2019-08-24 09:44:03', '2019-08-24 09:44:03'),
(591, 1, 'admin/products', 'POST', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Double Blankets\",\"description\":\"This is the test description for the blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:44:57', '2019-08-24 09:44:57'),
(592, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 09:44:58', '2019-08-24 09:44:58'),
(593, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:45:03', '2019-08-24 09:45:03'),
(594, 1, 'admin/customers/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:45:07', '2019-08-24 09:45:07'),
(595, 1, 'admin/customers', 'POST', '106.217.15.235', '{\"customer_name\":null,\"phone_number\":null,\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/customers\"}', '2019-08-24 09:45:08', '2019-08-24 09:45:08'),
(596, 1, 'admin/customers/create', 'GET', '106.217.15.235', '[]', '2019-08-24 09:45:08', '2019-08-24 09:45:08'),
(597, 1, 'admin/customers', 'POST', '106.217.15.235', '{\"customer_name\":\"Siva Shankar\",\"phone_number\":\"8870138513\",\"email\":\"mansoorhameed2011@gmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:45:57', '2019-08-24 09:45:57'),
(598, 1, 'admin/customers/create', 'GET', '106.217.15.235', '[]', '2019-08-24 09:45:58', '2019-08-24 09:45:58'),
(599, 1, 'admin/customers', 'POST', '106.217.15.235', '{\"customer_name\":\"Siva Shankar\",\"phone_number\":\"+918870138513\",\"email\":\"mansoorhameed2011@gmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:46:38', '2019-08-24 09:46:38'),
(600, 1, 'admin/customers/create', 'GET', '106.217.15.235', '[]', '2019-08-24 09:46:38', '2019-08-24 09:46:38'),
(601, 1, 'admin/customers', 'POST', '106.217.15.235', '{\"customer_name\":\"Siva Shankar\",\"phone_number\":\"8870138513\",\"email\":\"siva@yopmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 09:47:27', '2019-08-24 09:47:27'),
(602, 1, 'admin/customers', 'GET', '106.217.15.235', '[]', '2019-08-24 09:47:32', '2019-08-24 09:47:32'),
(603, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:49:50', '2019-08-24 09:49:50'),
(604, 1, 'admin/labels', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:52:36', '2019-08-24 09:52:36'),
(605, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:52:43', '2019-08-24 09:52:43'),
(606, 1, 'admin/app_settings', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:52:47', '2019-08-24 09:52:47'),
(607, 1, 'admin/app_settings/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:52:50', '2019-08-24 09:52:50'),
(608, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:52:56', '2019-08-24 09:52:56'),
(609, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:52:59', '2019-08-24 09:52:59'),
(610, 1, 'admin/categories/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:53:02', '2019-08-24 09:53:02'),
(611, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:53:07', '2019-08-24 09:53:07'),
(612, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:53:14', '2019-08-24 09:53:14'),
(613, 1, 'admin/products/9/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:53:17', '2019-08-24 09:53:17'),
(614, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:53:22', '2019-08-24 09:53:22'),
(615, 1, 'admin/products/9/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:53:26', '2019-08-24 09:53:26');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(616, 1, 'admin/products/9', 'PUT', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Double Blankets\",\"description\":\"This is the test description for the blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 09:54:22', '2019-08-24 09:54:22'),
(617, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 09:54:22', '2019-08-24 09:54:22'),
(618, 1, 'admin/products/9/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:54:27', '2019-08-24 09:54:27'),
(619, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:54:52', '2019-08-24 09:54:52'),
(620, 1, 'admin/categories/4/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:54:55', '2019-08-24 09:54:55'),
(621, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:55:00', '2019-08-24 09:55:00'),
(622, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:55:02', '2019-08-24 09:55:02'),
(623, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:55:05', '2019-08-24 09:55:05'),
(624, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:55:06', '2019-08-24 09:55:06'),
(625, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:55:14', '2019-08-24 09:55:14'),
(626, 1, 'admin/products/9/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:55:30', '2019-08-24 09:55:30'),
(627, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:55:48', '2019-08-24 09:55:48'),
(628, 1, 'admin/products/9', 'PUT', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Woolen Blankets\",\"description\":\"This is the test description for the blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 09:57:19', '2019-08-24 09:57:19'),
(629, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 09:57:20', '2019-08-24 09:57:20'),
(630, 1, 'admin/app_settings', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:57:45', '2019-08-24 09:57:45'),
(631, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:57:47', '2019-08-24 09:57:47'),
(632, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:17', '2019-08-24 09:58:17'),
(633, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:19', '2019-08-24 09:58:19'),
(634, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:23', '2019-08-24 09:58:23'),
(635, 1, 'admin/products/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:25', '2019-08-24 09:58:25'),
(636, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:29', '2019-08-24 09:58:29'),
(637, 1, 'admin/products/9/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:33', '2019-08-24 09:58:33'),
(638, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:39', '2019-08-24 09:58:39'),
(639, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:44', '2019-08-24 09:58:44'),
(640, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:47', '2019-08-24 09:58:47'),
(641, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:58:58', '2019-08-24 09:58:58'),
(642, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:59:00', '2019-08-24 09:59:00'),
(643, 1, 'admin/categories/6', 'PUT', '106.217.15.235', '{\"service_id\":[null],\"category_name\":\"Blankets\",\"description\":\"This is blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-24 09:59:28', '2019-08-24 09:59:28'),
(644, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '[]', '2019-08-24 09:59:28', '2019-08-24 09:59:28'),
(645, 1, 'admin/categories/6', 'PUT', '106.217.15.235', '{\"service_id\":[\"3\",null],\"category_name\":\"Blankets\",\"description\":\"This is blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\"}', '2019-08-24 09:59:33', '2019-08-24 09:59:33'),
(646, 1, 'admin/categories', 'GET', '106.217.15.235', '[]', '2019-08-24 09:59:33', '2019-08-24 09:59:33'),
(647, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:59:46', '2019-08-24 09:59:46'),
(648, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:59:48', '2019-08-24 09:59:48'),
(649, 1, 'admin/products/9/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:59:52', '2019-08-24 09:59:52'),
(650, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 09:59:55', '2019-08-24 09:59:55'),
(651, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:00:00', '2019-08-24 10:00:00'),
(652, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:00:04', '2019-08-24 10:00:04'),
(653, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:00:07', '2019-08-24 10:00:07'),
(654, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:00:10', '2019-08-24 10:00:10'),
(655, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:00:14', '2019-08-24 10:00:14'),
(656, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:00:16', '2019-08-24 10:00:16'),
(657, 1, 'admin/products/9/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:00:36', '2019-08-24 10:00:36'),
(658, 1, 'admin/products/9', 'PUT', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Woolen Blankets\",\"description\":\"This is the test description for the blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 10:00:50', '2019-08-24 10:00:50'),
(659, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 10:00:51', '2019-08-24 10:00:51'),
(660, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:01:06', '2019-08-24 10:01:06'),
(661, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_name\":\"sasdasd\",\"phone_number\":null,\"email\":null,\"status\":null}', '2019-08-24 10:01:12', '2019-08-24 10:01:12'),
(662, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_name\":\"sarath\",\"phone_number\":null,\"email\":null,\"status\":null}', '2019-08-24 10:01:17', '2019-08-24 10:01:17'),
(663, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_name\":\"mansoor\",\"phone_number\":null,\"email\":null,\"status\":null}', '2019-08-24 10:01:23', '2019-08-24 10:01:23'),
(664, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":\"4\",\"customer_name\":null,\"phone_number\":null,\"email\":null,\"status\":null}', '2019-08-24 10:01:30', '2019-08-24 10:01:30'),
(665, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_name\":null,\"phone_number\":null,\"email\":null,\"status\":\"1\"}', '2019-08-24 10:01:35', '2019-08-24 10:01:35'),
(666, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"customer_name\":null,\"phone_number\":null,\"email\":null,\"status\":\"2\"}', '2019-08-24 10:01:39', '2019-08-24 10:01:39'),
(667, 1, 'admin/delivery_boys', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:01:41', '2019-08-24 10:01:41'),
(668, 1, 'admin/delivery_boys/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:01:43', '2019-08-24 10:01:43'),
(669, 1, 'admin/delivery_boys', 'POST', '106.217.15.235', '{\"delivery_boy_name\":null,\"phone_number\":null,\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/delivery_boys\"}', '2019-08-24 10:01:45', '2019-08-24 10:01:45'),
(670, 1, 'admin/delivery_boys/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:01:45', '2019-08-24 10:01:45'),
(671, 1, 'admin/delivery_boys/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:01:50', '2019-08-24 10:01:50'),
(672, 1, 'admin/promo_codes', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:01:55', '2019-08-24 10:01:55'),
(673, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:02:23', '2019-08-24 10:02:23'),
(674, 1, 'admin/products/9/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:03:29', '2019-08-24 10:03:29'),
(675, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:04:09', '2019-08-24 10:04:09'),
(676, 1, 'admin/products/9', 'DELETE', '106.217.15.235', '{\"_method\":\"delete\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:08:12', '2019-08-24 10:08:12'),
(677, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:08:13', '2019-08-24 10:08:13'),
(678, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:08:37', '2019-08-24 10:08:37'),
(679, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:08:42', '2019-08-24 10:08:42'),
(680, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:08:51', '2019-08-24 10:08:51'),
(681, 1, 'admin/categories/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:08:53', '2019-08-24 10:08:53'),
(682, 1, 'admin/categories/6', 'PUT', '106.217.15.235', '{\"service_id\":[\"3\",\"7\",null],\"category_name\":\"Blankets\",\"description\":\"This is blankets\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\"}', '2019-08-24 10:08:59', '2019-08-24 10:08:59'),
(683, 1, 'admin/categories', 'GET', '106.217.15.235', '[]', '2019-08-24 10:09:00', '2019-08-24 10:09:00'),
(684, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:09:08', '2019-08-24 10:09:08'),
(685, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:09:12', '2019-08-24 10:09:12'),
(686, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:09:16', '2019-08-24 10:09:16'),
(687, 1, 'admin/products/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:09:23', '2019-08-24 10:09:23'),
(688, 1, 'admin/products', 'POST', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Woolen Blankets\",\"description\":\"test description\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 10:09:44', '2019-08-24 10:09:44'),
(689, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 10:09:45', '2019-08-24 10:09:45'),
(690, 1, 'admin/products/10/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:10:12', '2019-08-24 10:10:12'),
(691, 1, 'admin/products/10', 'PUT', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Woolen Blankets\",\"description\":\"test description\",\"status\":\"2\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 10:10:22', '2019-08-24 10:10:22'),
(692, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 10:10:22', '2019-08-24 10:10:22'),
(693, 1, 'admin/products/10/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:10:33', '2019-08-24 10:10:33'),
(694, 1, 'admin/products/10', 'PUT', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Woolen Blankets\",\"description\":\"test description\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 10:10:36', '2019-08-24 10:10:36'),
(695, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 10:10:37', '2019-08-24 10:10:37'),
(696, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:10:44', '2019-08-24 10:10:44'),
(697, 1, 'admin/auth/users', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:10:55', '2019-08-24 10:10:55'),
(698, 1, 'admin/app_settings', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:10:58', '2019-08-24 10:10:58'),
(699, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:11:02', '2019-08-24 10:11:02'),
(700, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:11:51', '2019-08-24 10:11:51'),
(701, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:11:54', '2019-08-24 10:11:54'),
(702, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:12:16', '2019-08-24 10:12:16'),
(703, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:16:57', '2019-08-24 10:16:57'),
(704, 1, 'admin/services/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:16:59', '2019-08-24 10:16:59'),
(705, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 10:17:02', '2019-08-24 10:17:02'),
(706, 1, 'admin/services/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:17:02', '2019-08-24 10:17:02'),
(707, 1, 'admin/services/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:17:05', '2019-08-24 10:17:05'),
(708, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:17:27', '2019-08-24 10:17:27'),
(709, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:17:28', '2019-08-24 10:17:28'),
(710, 1, 'admin/faqs', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:18:47', '2019-08-24 10:18:47'),
(711, 1, 'admin/faqs/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:19:01', '2019-08-24 10:19:01'),
(712, 1, 'admin/faqs', 'POST', '106.217.15.235', '{\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-24 10:19:03', '2019-08-24 10:19:03'),
(713, 1, 'admin/faqs/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:19:03', '2019-08-24 10:19:03'),
(714, 1, 'admin/faqs', 'POST', '106.217.15.235', '{\"question\":\"What is the question\",\"answer\":\"This is to test the question\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:19:34', '2019-08-24 10:19:34'),
(715, 1, 'admin/faqs', 'GET', '106.217.15.235', '[]', '2019-08-24 10:19:34', '2019-08-24 10:19:34'),
(716, 1, 'admin/faqs/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:19:51', '2019-08-24 10:19:51'),
(717, 1, 'admin/faqs/6', 'PUT', '106.217.15.235', '{\"question\":\"What is the question\",\"answer\":\"This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-24 10:20:05', '2019-08-24 10:20:05'),
(718, 1, 'admin/faqs', 'GET', '106.217.15.235', '[]', '2019-08-24 10:20:06', '2019-08-24 10:20:06'),
(719, 1, 'admin/privacy_policies', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:20:47', '2019-08-24 10:20:47'),
(720, 1, 'admin/privacy_policies/2/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:00', '2019-08-24 10:21:00'),
(721, 1, 'admin/privacy_policies', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:05', '2019-08-24 10:21:05'),
(722, 1, 'admin/privacy_policies/3/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:13', '2019-08-24 10:21:13'),
(723, 1, 'admin/faqs', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:16', '2019-08-24 10:21:16'),
(724, 1, 'admin/faqs/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:22', '2019-08-24 10:21:22'),
(725, 1, 'admin/faqs/6', 'PUT', '106.217.15.235', '{\"question\":\"What is the question\",\"answer\":\"This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question\",\"status\":\"2\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-24 10:21:26', '2019-08-24 10:21:26'),
(726, 1, 'admin/faqs', 'GET', '106.217.15.235', '[]', '2019-08-24 10:21:26', '2019-08-24 10:21:26'),
(727, 1, 'admin/faqs/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:34', '2019-08-24 10:21:34'),
(728, 1, 'admin/faqs/6', 'PUT', '106.217.15.235', '{\"question\":\"What is the question\",\"answer\":\"This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question This is to test the question\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-24 10:21:38', '2019-08-24 10:21:38'),
(729, 1, 'admin/faqs', 'GET', '106.217.15.235', '[]', '2019-08-24 10:21:38', '2019-08-24 10:21:38'),
(730, 1, 'admin/faqs/6/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:47', '2019-08-24 10:21:47'),
(731, 1, 'admin/faqs', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:49', '2019-08-24 10:21:49'),
(732, 1, 'admin/faqs/6', 'DELETE', '106.217.15.235', '{\"_method\":\"delete\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:21:53', '2019-08-24 10:21:53'),
(733, 1, 'admin/faqs', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:21:53', '2019-08-24 10:21:53'),
(734, 1, 'admin/privacy_policies', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:22:07', '2019-08-24 10:22:07'),
(735, 1, 'admin/privacy_policies/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:22:13', '2019-08-24 10:22:13'),
(736, 1, 'admin/privacy_policies', 'POST', '106.217.15.235', '{\"title\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-24 10:22:17', '2019-08-24 10:22:17'),
(737, 1, 'admin/privacy_policies/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:22:17', '2019-08-24 10:22:17'),
(738, 1, 'admin/privacy_policies', 'POST', '106.217.15.235', '{\"title\":\"Test\",\"description\":\"This is the test description\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:22:36', '2019-08-24 10:22:36'),
(739, 1, 'admin/privacy_policies', 'GET', '106.217.15.235', '[]', '2019-08-24 10:22:36', '2019-08-24 10:22:36'),
(740, 1, 'admin/privacy_policies/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:22:52', '2019-08-24 10:22:52'),
(741, 1, 'admin/privacy_policies', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:22:54', '2019-08-24 10:22:54'),
(742, 1, 'admin/privacy_policies/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:22:56', '2019-08-24 10:22:56'),
(743, 1, 'admin/privacy_policies', 'POST', '106.217.15.235', '{\"title\":null,\"description\":null,\"status\":null,\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-24 10:23:04', '2019-08-24 10:23:04'),
(744, 1, 'admin/privacy_policies/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:23:04', '2019-08-24 10:23:04'),
(745, 1, 'admin/privacy_policies/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:23:09', '2019-08-24 10:23:09'),
(746, 1, 'admin/privacy_policies', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:23:11', '2019-08-24 10:23:11'),
(747, 1, 'admin/privacy_policies/3/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:23:15', '2019-08-24 10:23:15'),
(748, 1, 'admin/privacy_policies/3', 'PUT', '106.217.15.235', '{\"title\":\"asdwwww\",\"description\":\"wwwwwwwwwwwwwwwwwww\",\"status\":null,\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-24 10:23:19', '2019-08-24 10:23:19'),
(749, 1, 'admin/privacy_policies/3/edit', 'GET', '106.217.15.235', '[]', '2019-08-24 10:23:19', '2019-08-24 10:23:19'),
(750, 1, 'admin/privacy_policies/3', 'PUT', '106.217.15.235', '{\"title\":\"asdwwww\",\"description\":\"wwwwwwwwwwwwwwwwwww\",\"status\":null,\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\"}', '2019-08-24 10:23:35', '2019-08-24 10:23:35'),
(751, 1, 'admin/privacy_policies/3/edit', 'GET', '106.217.15.235', '[]', '2019-08-24 10:23:35', '2019-08-24 10:23:35'),
(752, 1, 'admin/privacy_policies/3', 'PUT', '106.217.15.235', '{\"title\":\"asdwwww\",\"description\":\"wwwwwwwwwwwwwwwwwww\",\"status\":null,\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\"}', '2019-08-24 10:23:48', '2019-08-24 10:23:48'),
(753, 1, 'admin/privacy_policies/3/edit', 'GET', '106.217.15.235', '[]', '2019-08-24 10:23:48', '2019-08-24 10:23:48'),
(754, 1, 'admin/privacy_policies', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:23:52', '2019-08-24 10:23:52'),
(755, 1, 'admin/privacy_policies/2/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:24:04', '2019-08-24 10:24:04'),
(756, 1, 'admin/privacy_policies/2', 'PUT', '106.217.15.235', '{\"title\":\"qweqweqweqw\",\"description\":\"asdq dafada adsasda d asdasd\",\"status\":null,\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-24 10:24:05', '2019-08-24 10:24:05'),
(757, 1, 'admin/privacy_policies/2/edit', 'GET', '106.217.15.235', '[]', '2019-08-24 10:24:06', '2019-08-24 10:24:06'),
(758, 1, 'admin/privacy_policies', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:24:10', '2019-08-24 10:24:10'),
(759, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:36:35', '2019-08-24 10:36:35'),
(760, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:36:37', '2019-08-24 10:36:37'),
(761, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:36:38', '2019-08-24 10:36:38'),
(762, 1, 'admin/products/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:36:41', '2019-08-24 10:36:41'),
(763, 1, 'admin', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:38:00', '2019-08-24 10:38:00'),
(764, 1, 'admin/app_settings', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:38:04', '2019-08-24 10:38:04'),
(765, 1, 'admin/app_settings/1/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:38:07', '2019-08-24 10:38:07'),
(766, 1, 'admin/app_settings/1', 'PUT', '106.217.15.235', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"Rs\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-24 10:38:16', '2019-08-24 10:38:16'),
(767, 1, 'admin/app_settings/1/edit', 'GET', '106.217.15.235', '[]', '2019-08-24 10:38:16', '2019-08-24 10:38:16'),
(768, 1, 'admin/app_settings', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:41:35', '2019-08-24 10:41:35'),
(769, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:41:37', '2019-08-24 10:41:37'),
(770, 1, 'admin/services/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:42:38', '2019-08-24 10:42:38'),
(771, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 10:42:40', '2019-08-24 10:42:40'),
(772, 1, 'admin/services/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:42:40', '2019-08-24 10:42:40'),
(773, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:43:17', '2019-08-24 10:43:17'),
(774, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:43:21', '2019-08-24 10:43:21'),
(775, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:44:23', '2019-08-24 10:44:23'),
(776, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:44:26', '2019-08-24 10:44:26'),
(777, 1, 'admin/customers/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:44:33', '2019-08-24 10:44:33'),
(778, 1, 'admin/customers', 'POST', '106.217.15.235', '{\"customer_name\":null,\"phone_number\":null,\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/customers\"}', '2019-08-24 10:44:35', '2019-08-24 10:44:35'),
(779, 1, 'admin/customers/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:44:35', '2019-08-24 10:44:35'),
(780, 1, 'admin/customers', 'POST', '106.217.15.235', '{\"customer_name\":\"Siva\",\"phone_number\":\"8870138513\",\"email\":\"mansoorhameed2011@gmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:45:08', '2019-08-24 10:45:08'),
(781, 1, 'admin/customers/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:45:08', '2019-08-24 10:45:08'),
(782, 1, 'admin/customers', 'POST', '106.217.15.235', '{\"customer_name\":\"Siva\",\"phone_number\":\"7904080832\",\"email\":\"mansoorhameed2011@gmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:45:23', '2019-08-24 10:45:23'),
(783, 1, 'admin/customers/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:45:23', '2019-08-24 10:45:23'),
(784, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:51:48', '2019-08-24 10:51:48'),
(785, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:51:52', '2019-08-24 10:51:52'),
(786, 1, 'admin/products/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:51:55', '2019-08-24 10:51:55'),
(787, 1, 'admin/products', 'POST', '106.217.15.235', '{\"category_id\":null,\"product_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 10:51:58', '2019-08-24 10:51:58'),
(788, 1, 'admin/products/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:51:58', '2019-08-24 10:51:58'),
(789, 1, 'admin/products', 'POST', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Woolen Blankets\",\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:52:11', '2019-08-24 10:52:11'),
(790, 1, 'admin/products/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:52:11', '2019-08-24 10:52:11'),
(791, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 10:52:19', '2019-08-24 10:52:19'),
(792, 1, 'admin/products', 'POST', '106.217.15.235', '{\"category_id\":\"6\",\"product_name\":\"Woolen Blankets\",\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:52:36', '2019-08-24 10:52:36'),
(793, 1, 'admin/products', 'GET', '106.217.15.235', '[]', '2019-08-24 10:52:36', '2019-08-24 10:52:36'),
(794, 1, 'admin/products/11/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:52:47', '2019-08-24 10:52:47'),
(795, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:52:50', '2019-08-24 10:52:50'),
(796, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:55:31', '2019-08-24 10:55:31'),
(797, 1, 'admin/services/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:55:35', '2019-08-24 10:55:35'),
(798, 1, 'admin/services', 'POST', '106.217.15.235', '{\"service_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-24 10:55:36', '2019-08-24 10:55:36'),
(799, 1, 'admin/services/create', 'GET', '106.217.15.235', '[]', '2019-08-24 10:55:36', '2019-08-24 10:55:36'),
(800, 1, 'admin', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:55:42', '2019-08-24 10:55:42'),
(801, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:55:44', '2019-08-24 10:55:44'),
(802, 1, 'admin/products/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:55:48', '2019-08-24 10:55:48'),
(803, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:55:58', '2019-08-24 10:55:58'),
(804, 1, 'admin/customers/4/edit', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:56:05', '2019-08-24 10:56:05'),
(805, 1, 'admin/customers/4', 'PUT', '106.217.15.235', '{\"customer_name\":\"Siva Shankar\",\"phone_number\":\"8870138513\",\"email\":\"siva@yopmail.com\",\"password\":\"$2y$12$xAEY4uhCkvNxI45ECPAQV.2jUzBI0dtpcgJUws5ox0lzKzLnZ0Dg2\",\"status\":\"2\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/customers\"}', '2019-08-24 10:56:12', '2019-08-24 10:56:12'),
(806, 1, 'admin/customers', 'GET', '106.217.15.235', '[]', '2019-08-24 10:56:12', '2019-08-24 10:56:12'),
(807, 1, 'admin/products/11', 'DELETE', '106.217.15.235', '{\"_method\":\"delete\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\"}', '2019-08-24 10:59:08', '2019-08-24 10:59:08'),
(808, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:59:08', '2019-08-24 10:59:08'),
(809, 1, 'admin/services', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:59:15', '2019-08-24 10:59:15'),
(810, 1, 'admin/categories', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:59:16', '2019-08-24 10:59:16'),
(811, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:59:19', '2019-08-24 10:59:19'),
(812, 1, 'admin/customers', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:59:21', '2019-08-24 10:59:21'),
(813, 1, 'admin/delivery_boys', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:59:26', '2019-08-24 10:59:26'),
(814, 1, 'admin/promo_codes', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 10:59:28', '2019-08-24 10:59:28'),
(815, 1, 'admin/promo_codes', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 11:00:27', '2019-08-24 11:00:27'),
(816, 1, 'admin/promo_codes/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 11:00:30', '2019-08-24 11:00:30'),
(817, 1, 'admin/promo_codes', 'POST', '106.217.15.235', '{\"promo_name\":null,\"promo_code\":null,\"description\":null,\"promo_type\":\"1\",\"discount\":null,\"status\":\"1\",\"_token\":\"7EcTSGhaIJP2ZBbGcyqBzOupDahkDpDHylNeWiW4\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-24 11:00:32', '2019-08-24 11:00:32'),
(818, 1, 'admin/promo_codes/create', 'GET', '106.217.15.235', '[]', '2019-08-24 11:00:32', '2019-08-24 11:00:32'),
(819, 1, 'admin/promo_codes/create', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 11:00:36', '2019-08-24 11:00:36'),
(820, 1, 'admin/products', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 11:09:24', '2019-08-24 11:09:24'),
(821, 1, 'admin', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 11:14:17', '2019-08-24 11:14:17'),
(822, 1, 'admin/auth/logout', 'GET', '106.217.15.235', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 11:15:10', '2019-08-24 11:15:10'),
(823, 1, 'admin', 'GET', '106.198.3.27', '[]', '2019-08-24 12:49:54', '2019-08-24 12:49:54'),
(824, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 12:50:04', '2019-08-24 12:50:04'),
(825, 1, 'admin/customers/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 12:50:09', '2019-08-24 12:50:09'),
(826, 1, 'admin/customers/1', 'PUT', '106.198.3.27', '{\"customer_name\":\"Sarath kann\",\"phone_number\":\"98599886\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"$2y$12$zGl0xUtn6Sc\\/SyfUZ.reCeoSwvA.sfU.3gvacPBqftiqLljgtapey\",\"status\":\"2\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/customers\"}', '2019-08-24 12:50:16', '2019-08-24 12:50:16'),
(827, 1, 'admin/customers', 'GET', '106.198.3.27', '[]', '2019-08-24 12:50:16', '2019-08-24 12:50:16'),
(828, 1, 'admin/customers/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 12:58:34', '2019-08-24 12:58:34'),
(829, 1, 'admin/customers/1', 'PUT', '106.198.3.27', '{\"customer_name\":\"Sarath kann\",\"phone_number\":\"98599886\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"$2y$12$zGl0xUtn6Sc\\/SyfUZ.reCeoSwvA.sfU.3gvacPBqftiqLljgtapey\",\"status\":\"1\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/customers\"}', '2019-08-24 12:58:40', '2019-08-24 12:58:40'),
(830, 1, 'admin/customers', 'GET', '106.198.3.27', '[]', '2019-08-24 12:58:40', '2019-08-24 12:58:40'),
(831, 1, 'admin/products', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 12:59:55', '2019-08-24 12:59:55'),
(832, 1, 'admin/products/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 12:59:58', '2019-08-24 12:59:58'),
(833, 1, 'admin/products', 'POST', '106.198.3.27', '{\"category_id\":null,\"product_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-24 13:00:01', '2019-08-24 13:00:01'),
(834, 1, 'admin/products/create', 'GET', '106.198.3.27', '[]', '2019-08-24 13:00:01', '2019-08-24 13:00:01'),
(835, 1, 'admin/products', 'POST', '106.198.3.27', '{\"category_id\":null,\"product_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\"}', '2019-08-24 13:01:04', '2019-08-24 13:01:04'),
(836, 1, 'admin/products/create', 'GET', '106.198.3.27', '[]', '2019-08-24 13:01:04', '2019-08-24 13:01:04'),
(837, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:02:42', '2019-08-24 13:02:42'),
(838, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:02:45', '2019-08-24 13:02:45'),
(839, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:02:56', '2019-08-24 13:02:56'),
(840, 1, 'admin/customers/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:02:59', '2019-08-24 13:02:59'),
(841, 1, 'admin/customers/1/edit', 'GET', '106.198.3.27', '[]', '2019-08-24 13:05:17', '2019-08-24 13:05:17'),
(842, 1, 'admin/customers/1', 'PUT', '106.198.3.27', '{\"customer_name\":\"Sarath kann\",\"phone_number\":\"98599886\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_method\":\"PUT\"}', '2019-08-24 13:05:33', '2019-08-24 13:05:33'),
(843, 1, 'admin/customers', 'GET', '106.198.3.27', '[]', '2019-08-24 13:05:34', '2019-08-24 13:05:34'),
(844, 1, 'admin/customers/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:05:37', '2019-08-24 13:05:37'),
(845, 1, 'admin/app_settings', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:10:51', '2019-08-24 13:10:51'),
(846, 1, 'admin/app_settings/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:10:56', '2019-08-24 13:10:56'),
(847, 1, 'admin/app_settings/1', 'PUT', '106.198.3.27', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"#\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-24 13:11:14', '2019-08-24 13:11:14'),
(848, 1, 'admin/app_settings/1/edit', 'GET', '106.198.3.27', '[]', '2019-08-24 13:11:14', '2019-08-24 13:11:14'),
(849, 1, 'admin/app_settings/1', 'PUT', '106.198.3.27', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"#\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_method\":\"PUT\"}', '2019-08-24 13:11:30', '2019-08-24 13:11:30'),
(850, 1, 'admin/app_settings', 'GET', '106.198.3.27', '[]', '2019-08-24 13:11:30', '2019-08-24 13:11:30'),
(851, 1, 'admin/app_settings/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:11:32', '2019-08-24 13:11:32'),
(852, 1, 'admin/app_settings/1', 'PUT', '106.198.3.27', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"$\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-24 13:11:38', '2019-08-24 13:11:38'),
(853, 1, 'admin/app_settings', 'GET', '106.198.3.27', '[]', '2019-08-24 13:11:38', '2019-08-24 13:11:38'),
(854, 1, 'admin/products', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:12:54', '2019-08-24 13:12:54'),
(855, 1, 'admin/products/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:12:58', '2019-08-24 13:12:58'),
(856, 1, 'admin/services', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:58:50', '2019-08-24 13:58:50'),
(857, 1, 'admin/services/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:58:52', '2019-08-24 13:58:52'),
(858, 1, 'admin/categories', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:58:56', '2019-08-24 13:58:56'),
(859, 1, 'admin/categories/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:58:58', '2019-08-24 13:58:58'),
(860, 1, 'admin/customers', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:59:03', '2019-08-24 13:59:03'),
(861, 1, 'admin/customers/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:59:05', '2019-08-24 13:59:05'),
(862, 1, 'admin/delivery_boys', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:59:09', '2019-08-24 13:59:09'),
(863, 1, 'admin/delivery_boys/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:59:12', '2019-08-24 13:59:12'),
(864, 1, 'admin/promo_codes', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:59:16', '2019-08-24 13:59:16'),
(865, 1, 'admin/promo_codes/create', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 13:59:19', '2019-08-24 13:59:19'),
(866, 1, 'admin/fare_managements', 'GET', '106.198.3.27', '[]', '2019-08-24 14:09:57', '2019-08-24 14:09:57'),
(867, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 14:10:06', '2019-08-24 14:10:06'),
(868, 1, 'admin/auth/menu', 'POST', '106.198.3.27', '{\"parent_id\":\"0\",\"title\":\"Fare Management\",\"icon\":\"fa-dollar\",\"uri\":\"fare_managements\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\"}', '2019-08-24 14:10:33', '2019-08-24 14:10:33'),
(869, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-24 14:10:33', '2019-08-24 14:10:33'),
(870, 1, 'admin/auth/menu', 'POST', '106.198.3.27', '{\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":16}]\"}', '2019-08-24 14:10:49', '2019-08-24 14:10:49'),
(871, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 14:10:50', '2019-08-24 14:10:50'),
(872, 1, 'admin/auth/menu', 'GET', '106.198.3.27', '[]', '2019-08-24 14:10:53', '2019-08-24 14:10:53'),
(873, 1, 'admin/fare_managements', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 14:11:01', '2019-08-24 14:11:01'),
(874, 1, 'admin/fare_managements/1/edit', 'GET', '106.198.3.27', '{\"_pjax\":\"#pjax-container\"}', '2019-08-24 14:11:06', '2019-08-24 14:11:06'),
(875, 1, 'admin/fare_managements/1', 'PUT', '106.198.3.27', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"6\",\"status\":\"1\",\"_token\":\"UEglLBA9i3Wz2dw5r37HQqxSKBn2pEV2vRkGvKOo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-24 14:11:12', '2019-08-24 14:11:12'),
(876, 1, 'admin/fare_managements', 'GET', '106.198.3.27', '[]', '2019-08-24 14:11:13', '2019-08-24 14:11:13'),
(877, 1, 'admin', 'GET', '223.181.201.226', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 05:17:23', '2019-08-25 05:17:23'),
(878, 1, 'admin', 'GET', '223.181.201.226', '[]', '2019-08-25 05:18:22', '2019-08-25 05:18:22'),
(879, 1, 'admin', 'GET', '223.181.201.226', '[]', '2019-08-25 05:45:45', '2019-08-25 05:45:45'),
(880, 1, 'admin', 'GET', '106.198.47.95', '[]', '2019-08-25 07:46:05', '2019-08-25 07:46:05'),
(881, 1, 'admin/auth/menu', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:46:11', '2019-08-25 07:46:11'),
(882, 1, 'admin/auth/menu', 'POST', '106.198.47.95', '{\"parent_id\":\"0\",\"title\":\"Orders\",\"icon\":\"fa-align-justify\",\"uri\":\"orders\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"AERivtRIqI0ne3I5MvMAltza4dsOhTxao1iRz0b8\"}', '2019-08-25 07:47:04', '2019-08-25 07:47:04'),
(883, 1, 'admin/auth/menu', 'GET', '106.198.47.95', '[]', '2019-08-25 07:47:05', '2019-08-25 07:47:05'),
(884, 1, 'admin/auth/menu', 'POST', '106.198.47.95', '{\"_token\":\"AERivtRIqI0ne3I5MvMAltza4dsOhTxao1iRz0b8\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":19},{\\\"id\\\":18},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":16}]\"}', '2019-08-25 07:47:11', '2019-08-25 07:47:11'),
(885, 1, 'admin/auth/menu', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:47:11', '2019-08-25 07:47:11'),
(886, 1, 'admin/auth/menu', 'GET', '106.198.47.95', '[]', '2019-08-25 07:47:12', '2019-08-25 07:47:12'),
(887, 1, 'admin/auth/menu', 'POST', '106.198.47.95', '{\"_token\":\"AERivtRIqI0ne3I5MvMAltza4dsOhTxao1iRz0b8\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":16}]\"}', '2019-08-25 07:47:27', '2019-08-25 07:47:27'),
(888, 1, 'admin/auth/menu', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:47:27', '2019-08-25 07:47:27'),
(889, 1, 'admin/orders', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:47:30', '2019-08-25 07:47:30'),
(890, 1, 'admin/view_orders/2', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:47:34', '2019-08-25 07:47:34'),
(891, 1, 'admin/orders', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:47:39', '2019-08-25 07:47:39'),
(892, 1, 'admin/orders/2/edit', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:47:41', '2019-08-25 07:47:41'),
(893, 1, 'admin/orders/2', 'PUT', '106.198.47.95', '{\"order_id\":\"00002\",\"collected_by\":\"1\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"AERivtRIqI0ne3I5MvMAltza4dsOhTxao1iRz0b8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/orders\"}', '2019-08-25 07:47:46', '2019-08-25 07:47:46'),
(894, 1, 'admin/orders', 'GET', '106.198.47.95', '[]', '2019-08-25 07:47:46', '2019-08-25 07:47:46'),
(895, 1, 'admin/view_orders/2', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:47:51', '2019-08-25 07:47:51'),
(896, 1, 'admin/view_orders/2', 'GET', '106.198.47.95', '[]', '2019-08-25 07:48:43', '2019-08-25 07:48:43'),
(897, 1, 'admin/view_orders/2', 'GET', '106.198.47.95', '[]', '2019-08-25 07:48:48', '2019-08-25 07:48:48'),
(898, 1, 'admin/orders', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:48:52', '2019-08-25 07:48:52'),
(899, 1, 'admin/view_orders/2', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:48:54', '2019-08-25 07:48:54'),
(900, 1, 'admin/orders', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:48:57', '2019-08-25 07:48:57'),
(901, 1, 'admin/orders/2/edit', 'GET', '106.198.47.95', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:49:00', '2019-08-25 07:49:00'),
(902, 1, 'admin/orders/2', 'PUT', '106.198.47.95', '{\"order_id\":\"00002\",\"collected_by\":\"1\",\"delivered_by\":\"2\",\"status\":\"5\",\"_token\":\"AERivtRIqI0ne3I5MvMAltza4dsOhTxao1iRz0b8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/orders\"}', '2019-08-25 07:49:03', '2019-08-25 07:49:03'),
(903, 1, 'admin/orders', 'GET', '106.198.47.95', '[]', '2019-08-25 07:49:04', '2019-08-25 07:49:04'),
(904, 1, 'admin/products', 'GET', '106.211.236.200', '[]', '2019-08-25 07:53:37', '2019-08-25 07:53:37'),
(905, 1, 'admin/customers', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:54:20', '2019-08-25 07:54:20');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(906, 1, 'admin/customers/4/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:54:24', '2019-08-25 07:54:24'),
(907, 1, 'admin/customers', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:54:30', '2019-08-25 07:54:30'),
(908, 1, 'admin/app_settings', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:54:44', '2019-08-25 07:54:44'),
(909, 1, 'admin/app_settings/1/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:54:46', '2019-08-25 07:54:46'),
(910, 1, 'admin/app_settings/1', 'PUT', '106.211.236.200', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"$\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-25 07:54:49', '2019-08-25 07:54:49'),
(911, 1, 'admin/app_settings', 'GET', '106.211.236.200', '[]', '2019-08-25 07:54:49', '2019-08-25 07:54:49'),
(912, 1, 'admin/app_settings/1/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 07:54:51', '2019-08-25 07:54:51'),
(913, 1, 'admin/app_settings/1', 'PUT', '106.211.236.200', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"Rs\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-25 07:54:56', '2019-08-25 07:54:56'),
(914, 1, 'admin/app_settings', 'GET', '106.211.236.200', '[]', '2019-08-25 07:54:56', '2019-08-25 07:54:56'),
(915, 1, 'admin/orders', 'GET', '106.198.47.95', '[]', '2019-08-25 07:56:59', '2019-08-25 07:56:59'),
(916, 1, 'admin', 'GET', '106.198.47.95', '[]', '2019-08-25 07:59:37', '2019-08-25 07:59:37'),
(917, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:00:10', '2019-08-25 08:00:10'),
(918, 1, 'admin', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:00:30', '2019-08-25 08:00:30'),
(919, 1, 'admin/auth/users', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:00:46', '2019-08-25 08:00:46'),
(920, 1, 'admin/auth/roles', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:00:47', '2019-08-25 08:00:47'),
(921, 1, 'admin/auth/permissions', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:00:48', '2019-08-25 08:00:48'),
(922, 1, 'admin/auth/menu', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:00:49', '2019-08-25 08:00:49'),
(923, 1, 'admin/app_settings', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:00:55', '2019-08-25 08:00:55'),
(924, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:01:52', '2019-08-25 08:01:52'),
(925, 1, 'admin/services/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:01:54', '2019-08-25 08:01:54'),
(926, 1, 'admin/products', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:02:03', '2019-08-25 08:02:03'),
(927, 1, 'admin/products/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:02:05', '2019-08-25 08:02:05'),
(928, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:02:14', '2019-08-25 08:02:14'),
(929, 1, 'admin/services/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:02:17', '2019-08-25 08:02:17'),
(930, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:02:21', '2019-08-25 08:02:21'),
(931, 1, 'admin/products', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:03:14', '2019-08-25 08:03:14'),
(932, 1, 'admin/products/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:03:22', '2019-08-25 08:03:22'),
(933, 1, 'admin/products', 'POST', '106.211.236.200', '{\"category_id\":null,\"product_name\":null,\"description\":null,\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-25 08:03:25', '2019-08-25 08:03:25'),
(934, 1, 'admin/products/create', 'GET', '106.211.236.200', '[]', '2019-08-25 08:03:26', '2019-08-25 08:03:26'),
(935, 1, 'admin/products/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:03:29', '2019-08-25 08:03:29'),
(936, 1, 'admin/products', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:03:33', '2019-08-25 08:03:33'),
(937, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:04:00', '2019-08-25 08:04:00'),
(938, 1, 'admin/app_settings', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:04:02', '2019-08-25 08:04:02'),
(939, 1, 'admin/categories', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:04:06', '2019-08-25 08:04:06'),
(940, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:04:08', '2019-08-25 08:04:08'),
(941, 1, 'admin/customers', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:04:16', '2019-08-25 08:04:16'),
(942, 1, 'admin/app_settings', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:17:32', '2019-08-25 08:17:32'),
(943, 1, 'admin/app_settings/1/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:17:37', '2019-08-25 08:17:37'),
(944, 1, 'admin/app_settings/1', 'PUT', '106.211.236.200', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"$\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-25 08:20:36', '2019-08-25 08:20:36'),
(945, 1, 'admin/app_settings', 'GET', '106.211.236.200', '[]', '2019-08-25 08:20:36', '2019-08-25 08:20:36'),
(946, 1, 'admin/app_settings/1/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:20:44', '2019-08-25 08:20:44'),
(947, 1, 'admin/app_settings', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:20:49', '2019-08-25 08:20:49'),
(948, 1, 'admin', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:22:49', '2019-08-25 08:22:49'),
(949, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:22:56', '2019-08-25 08:22:56'),
(950, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\",\"id\":\"5\",\"service_name\":null,\"status\":null}', '2019-08-25 08:23:04', '2019-08-25 08:23:04'),
(951, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:23:07', '2019-08-25 08:23:07'),
(952, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:23:12', '2019-08-25 08:23:12'),
(953, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:23:48', '2019-08-25 08:23:48'),
(954, 1, 'admin', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:39:41', '2019-08-25 08:39:41'),
(955, 1, 'admin/app_settings', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:39:44', '2019-08-25 08:39:44'),
(956, 1, 'admin/app_settings/1/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:39:47', '2019-08-25 08:39:47'),
(957, 1, 'admin/app_settings/1', 'PUT', '106.211.236.200', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9751073758\",\"email\":\"sarathkannanbsc@gmail.com\",\"default_currency\":\"Rs\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-25 08:39:59', '2019-08-25 08:39:59'),
(958, 1, 'admin/app_settings', 'GET', '106.211.236.200', '[]', '2019-08-25 08:39:59', '2019-08-25 08:39:59'),
(959, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:40:30', '2019-08-25 08:40:30'),
(960, 1, 'admin/promo_codes/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:40:34', '2019-08-25 08:40:34'),
(961, 1, 'admin/promo_codes', 'POST', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":\"Test\",\"description\":\"Test\",\"promo_type\":\"1\",\"discount\":\"100\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-25 08:41:08', '2019-08-25 08:41:08'),
(962, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '[]', '2019-08-25 08:41:08', '2019-08-25 08:41:08'),
(963, 1, 'admin/promo_codes/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:41:16', '2019-08-25 08:41:16'),
(964, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:41:20', '2019-08-25 08:41:20'),
(965, 1, 'admin/promo_codes/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:47:42', '2019-08-25 08:47:42'),
(966, 1, 'admin/promo_codes', 'POST', '106.211.236.200', '{\"promo_name\":null,\"promo_code\":null,\"description\":null,\"promo_type\":\"2\",\"discount\":\"0\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-25 08:47:54', '2019-08-25 08:47:54'),
(967, 1, 'admin/promo_codes/create', 'GET', '106.211.236.200', '[]', '2019-08-25 08:47:54', '2019-08-25 08:47:54'),
(968, 1, 'admin/promo_codes', 'POST', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":\"Test\",\"description\":\"test\",\"promo_type\":\"2\",\"discount\":\"0\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 08:48:07', '2019-08-25 08:48:07'),
(969, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '[]', '2019-08-25 08:48:08', '2019-08-25 08:48:08'),
(970, 1, 'admin/promo_codes/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:48:23', '2019-08-25 08:48:23'),
(971, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:48:59', '2019-08-25 08:48:59'),
(972, 1, 'admin/promo_codes/5/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:49:01', '2019-08-25 08:49:01'),
(973, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:50:56', '2019-08-25 08:50:56'),
(974, 1, 'admin/promo_codes/5', 'DELETE', '106.211.236.200', '{\"_method\":\"delete\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 08:51:02', '2019-08-25 08:51:02'),
(975, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:51:02', '2019-08-25 08:51:02'),
(976, 1, 'admin/promo_codes/4/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:51:06', '2019-08-25 08:51:06'),
(977, 1, 'admin/promo_codes/4', 'PUT', '106.211.236.200', '{\"promo_name\":null,\"promo_code\":null,\"description\":null,\"promo_type\":null,\"discount\":null,\"status\":null,\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-25 08:51:26', '2019-08-25 08:51:26'),
(978, 1, 'admin/promo_codes/4/edit', 'GET', '106.211.236.200', '[]', '2019-08-25 08:51:27', '2019-08-25 08:51:27'),
(979, 1, 'admin/promo_codes/4', 'PUT', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":null,\"description\":null,\"promo_type\":null,\"discount\":null,\"status\":null,\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\"}', '2019-08-25 08:51:37', '2019-08-25 08:51:37'),
(980, 1, 'admin/promo_codes/4/edit', 'GET', '106.211.236.200', '[]', '2019-08-25 08:51:37', '2019-08-25 08:51:37'),
(981, 1, 'admin/promo_codes/4', 'PUT', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":\"Test\",\"description\":null,\"promo_type\":null,\"discount\":null,\"status\":null,\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\"}', '2019-08-25 08:51:44', '2019-08-25 08:51:44'),
(982, 1, 'admin/promo_codes/4/edit', 'GET', '106.211.236.200', '[]', '2019-08-25 08:51:44', '2019-08-25 08:51:44'),
(983, 1, 'admin/promo_codes/4', 'PUT', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":\"Test\",\"description\":\"test\",\"promo_type\":null,\"discount\":null,\"status\":null,\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\"}', '2019-08-25 08:51:52', '2019-08-25 08:51:52'),
(984, 1, 'admin/promo_codes/4/edit', 'GET', '106.211.236.200', '[]', '2019-08-25 08:51:53', '2019-08-25 08:51:53'),
(985, 1, 'admin/promo_codes/4', 'PUT', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":\"Test\",\"description\":\"test\",\"promo_type\":\"2\",\"discount\":null,\"status\":null,\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\"}', '2019-08-25 08:51:59', '2019-08-25 08:51:59'),
(986, 1, 'admin/promo_codes/4/edit', 'GET', '106.211.236.200', '[]', '2019-08-25 08:51:59', '2019-08-25 08:51:59'),
(987, 1, 'admin/promo_codes/4', 'PUT', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":\"Test\",\"description\":\"test\",\"promo_type\":\"2\",\"discount\":\"100\",\"status\":null,\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\"}', '2019-08-25 08:52:04', '2019-08-25 08:52:04'),
(988, 1, 'admin/promo_codes/4/edit', 'GET', '106.211.236.200', '[]', '2019-08-25 08:52:05', '2019-08-25 08:52:05'),
(989, 1, 'admin/promo_codes/4', 'PUT', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":\"Test\",\"description\":\"test\",\"promo_type\":\"2\",\"discount\":\"100\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\"}', '2019-08-25 08:52:09', '2019-08-25 08:52:09'),
(990, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '[]', '2019-08-25 08:52:09', '2019-08-25 08:52:09'),
(991, 1, 'admin/promo_codes/4/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:52:13', '2019-08-25 08:52:13'),
(992, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:52:19', '2019-08-25 08:52:19'),
(993, 1, 'admin/promo_codes/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:52:20', '2019-08-25 08:52:20'),
(994, 1, 'admin/promo_codes', 'POST', '106.211.236.200', '{\"promo_name\":\"Test\",\"promo_code\":\"Test\",\"description\":\"test\",\"promo_type\":\"1\",\"discount\":\"100\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-25 08:52:30', '2019-08-25 08:52:30'),
(995, 1, 'admin/promo_codes', 'GET', '106.211.236.200', '[]', '2019-08-25 08:52:30', '2019-08-25 08:52:30'),
(996, 1, 'admin', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:54:15', '2019-08-25 08:54:15'),
(997, 1, 'admin/orders', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:54:19', '2019-08-25 08:54:19'),
(998, 1, 'admin/orders/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:54:31', '2019-08-25 08:54:31'),
(999, 1, 'admin/orders', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:54:40', '2019-08-25 08:54:40'),
(1000, 1, 'admin/orders/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:54:50', '2019-08-25 08:54:50'),
(1001, 1, 'admin/orders', 'POST', '106.211.236.200', '{\"order_id\":null,\"collected_by\":null,\"delivered_by\":null,\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/orders\"}', '2019-08-25 08:54:53', '2019-08-25 08:54:53'),
(1002, 1, 'admin/orders/create', 'GET', '106.211.236.200', '[]', '2019-08-25 08:54:54', '2019-08-25 08:54:54'),
(1003, 1, 'admin/orders', 'POST', '106.211.236.200', '{\"order_id\":null,\"collected_by\":\"1\",\"delivered_by\":\"1\",\"status\":\"2\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 08:56:27', '2019-08-25 08:56:27'),
(1004, 1, 'admin/orders/create', 'GET', '106.211.236.200', '[]', '2019-08-25 08:56:27', '2019-08-25 08:56:27'),
(1005, 1, 'admin/orders/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:57:01', '2019-08-25 08:57:01'),
(1006, 1, 'admin/orders/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:57:04', '2019-08-25 08:57:04'),
(1007, 1, 'admin/orders', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:57:07', '2019-08-25 08:57:07'),
(1008, 1, 'admin/orders/1/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:57:10', '2019-08-25 08:57:10'),
(1009, 1, 'admin/orders', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:57:15', '2019-08-25 08:57:15'),
(1010, 1, 'admin/view_orders/12', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:57:26', '2019-08-25 08:57:26'),
(1011, 1, 'admin/orders', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 08:57:32', '2019-08-25 08:57:32'),
(1012, 1, 'admin', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:01:31', '2019-08-25 09:01:31'),
(1013, 1, 'admin/customers', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:02:11', '2019-08-25 09:02:11'),
(1014, 1, 'admin/customers/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:02:13', '2019-08-25 09:02:13'),
(1015, 1, 'admin/customers', 'POST', '106.211.236.200', '{\"customer_name\":null,\"phone_number\":\"8870138513\",\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/customers\"}', '2019-08-25 09:02:19', '2019-08-25 09:02:19'),
(1016, 1, 'admin/customers/create', 'GET', '106.211.236.200', '[]', '2019-08-25 09:02:20', '2019-08-25 09:02:20'),
(1017, 1, 'admin/customers', 'POST', '106.211.236.200', '{\"customer_name\":\"Sam\",\"phone_number\":\"8870138513\",\"email\":\"sam@yopmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 09:03:11', '2019-08-25 09:03:11'),
(1018, 1, 'admin/customers/create', 'GET', '106.211.236.200', '[]', '2019-08-25 09:03:11', '2019-08-25 09:03:11'),
(1019, 1, 'admin/customers', 'POST', '106.211.236.200', '{\"customer_name\":\"Sam\",\"phone_number\":\"8870138515\",\"email\":\"sam@yopmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 09:03:17', '2019-08-25 09:03:17'),
(1020, 1, 'admin/customers', 'GET', '106.211.236.200', '[]', '2019-08-25 09:03:18', '2019-08-25 09:03:18'),
(1021, 1, 'admin', 'GET', '106.211.236.200', '[]', '2019-08-25 09:03:24', '2019-08-25 09:03:24'),
(1022, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:03:53', '2019-08-25 09:03:53'),
(1023, 1, 'admin/delivery_boys/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:03:56', '2019-08-25 09:03:56'),
(1024, 1, 'admin/delivery_boys', 'POST', '106.211.236.200', '{\"delivery_boy_name\":null,\"phone_number\":null,\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/delivery_boys\"}', '2019-08-25 09:03:58', '2019-08-25 09:03:58'),
(1025, 1, 'admin/delivery_boys/create', 'GET', '106.211.236.200', '[]', '2019-08-25 09:03:59', '2019-08-25 09:03:59'),
(1026, 1, 'admin/delivery_boys', 'POST', '106.211.236.200', '{\"delivery_boy_name\":\"Mansoor\",\"phone_number\":\"8870138513\",\"email\":\"mansoorhameed2011@gmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 09:04:23', '2019-08-25 09:04:23'),
(1027, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '[]', '2019-08-25 09:04:24', '2019-08-25 09:04:24'),
(1028, 1, 'admin/customers', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:09:34', '2019-08-25 09:09:34'),
(1029, 1, 'admin', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:10:33', '2019-08-25 09:10:33'),
(1030, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:10:44', '2019-08-25 09:10:44'),
(1031, 1, 'admin/delivery_boys/3', 'DELETE', '106.211.236.200', '{\"_method\":\"delete\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 09:10:51', '2019-08-25 09:10:51'),
(1032, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:10:51', '2019-08-25 09:10:51'),
(1033, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\",\"id\":\"3\",\"delivery_boy_name\":null,\"phone_number\":null,\"email\":null,\"status\":null}', '2019-08-25 09:10:57', '2019-08-25 09:10:57'),
(1034, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:11:02', '2019-08-25 09:11:02'),
(1035, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":\"Mansoor\",\"phone_number\":null,\"email\":null,\"status\":null}', '2019-08-25 09:11:07', '2019-08-25 09:11:07'),
(1036, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":\"Sarath\",\"phone_number\":null,\"email\":null,\"status\":null}', '2019-08-25 09:11:12', '2019-08-25 09:11:12'),
(1037, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":null,\"phone_number\":\"98756216242\",\"email\":null,\"status\":null}', '2019-08-25 09:11:22', '2019-08-25 09:11:22'),
(1038, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":\"Sarath\",\"phone_number\":\"98756216242\",\"email\":\"sarath@gmail.com\",\"status\":\"1\"}', '2019-08-25 09:11:33', '2019-08-25 09:11:33'),
(1039, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '[]', '2019-08-25 09:11:40', '2019-08-25 09:11:40'),
(1040, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"delivery_boy_name\":\"Sarath\",\"phone_number\":\"98756216242\",\"email\":\"kannan@gmail.com\",\"status\":\"1\"}', '2019-08-25 09:11:54', '2019-08-25 09:11:54'),
(1041, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:11:58', '2019-08-25 09:11:58'),
(1042, 1, 'admin', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:12:48', '2019-08-25 09:12:48'),
(1043, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:13:33', '2019-08-25 09:13:33'),
(1044, 1, 'admin/fare_managements/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:13:37', '2019-08-25 09:13:37'),
(1045, 1, 'admin/fare_managements', 'POST', '106.211.236.200', '{\"service_id\":null,\"category_id\":null,\"product_id\":null,\"amount\":null,\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-25 09:13:39', '2019-08-25 09:13:39'),
(1046, 1, 'admin/fare_managements/create', 'GET', '106.211.236.200', '[]', '2019-08-25 09:13:39', '2019-08-25 09:13:39'),
(1047, 1, 'admin/fare_managements', 'POST', '106.211.236.200', '{\"service_id\":null,\"category_id\":null,\"product_id\":null,\"amount\":null,\"status\":null,\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 09:13:45', '2019-08-25 09:13:45'),
(1048, 1, 'admin/fare_managements/create', 'GET', '106.211.236.200', '[]', '2019-08-25 09:13:46', '2019-08-25 09:13:46'),
(1049, 1, 'admin/categories', 'GET', '106.211.236.200', '[]', '2019-08-25 09:14:06', '2019-08-25 09:14:06'),
(1050, 1, 'admin/categories/6/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:14:12', '2019-08-25 09:14:12'),
(1051, 1, 'admin/categories', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:14:16', '2019-08-25 09:14:16'),
(1052, 1, 'admin/categories/4/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:14:19', '2019-08-25 09:14:19'),
(1053, 1, 'admin/categories', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:14:23', '2019-08-25 09:14:23'),
(1054, 1, 'admin/categories/3/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:14:26', '2019-08-25 09:14:26'),
(1055, 1, 'admin/categories', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:14:30', '2019-08-25 09:14:30'),
(1056, 1, 'admin/categories/6/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:14:33', '2019-08-25 09:14:33'),
(1057, 1, 'admin/get_products', 'GET', '106.211.236.200', '{\"q\":\"1\"}', '2019-08-25 09:14:44', '2019-08-25 09:14:44'),
(1058, 1, 'admin/fare_managements', 'POST', '106.211.236.200', '{\"service_id\":\"7\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"10\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 09:14:52', '2019-08-25 09:14:52'),
(1059, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '[]', '2019-08-25 09:14:52', '2019-08-25 09:14:52'),
(1060, 1, 'admin/products', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:15:06', '2019-08-25 09:15:06'),
(1061, 1, 'admin/labels', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:18:04', '2019-08-25 09:18:04'),
(1062, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:18:29', '2019-08-25 09:18:29'),
(1063, 1, 'admin/fare_managements/14', 'DELETE', '106.211.236.200', '{\"_method\":\"delete\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\"}', '2019-08-25 09:18:37', '2019-08-25 09:18:37'),
(1064, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:18:38', '2019-08-25 09:18:38'),
(1065, 1, 'admin/fare_managements/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:18:42', '2019-08-25 09:18:42'),
(1066, 1, 'admin/categories', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:19:00', '2019-08-25 09:19:00'),
(1067, 1, 'admin/categories/6/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:19:03', '2019-08-25 09:19:03'),
(1068, 1, 'admin/categories', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:19:05', '2019-08-25 09:19:05'),
(1069, 1, 'admin/get_products', 'GET', '106.211.236.200', '{\"q\":\"6\"}', '2019-08-25 09:19:14', '2019-08-25 09:19:14'),
(1070, 1, 'admin/fare_managements', 'POST', '106.211.236.200', '{\"service_id\":\"7\",\"category_id\":\"6\",\"product_id\":\"10\",\"amount\":\"10\",\"status\":\"1\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-25 09:19:20', '2019-08-25 09:19:20'),
(1071, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '[]', '2019-08-25 09:19:21', '2019-08-25 09:19:21'),
(1072, 1, 'admin/fare_managements/15/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:19:57', '2019-08-25 09:19:57'),
(1073, 1, 'admin/fare_managements/15', 'PUT', '106.211.236.200', '{\"service_id\":\"7\",\"category_id\":\"6\",\"product_id\":\"10\",\"amount\":\"10\",\"status\":\"2\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-25 09:20:00', '2019-08-25 09:20:00'),
(1074, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '[]', '2019-08-25 09:20:01', '2019-08-25 09:20:01'),
(1075, 1, 'admin/labels', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:21:40', '2019-08-25 09:21:40'),
(1076, 1, 'admin/delivery_boys', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:21:56', '2019-08-25 09:21:56'),
(1077, 1, 'admin/orders', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:21:59', '2019-08-25 09:21:59'),
(1078, 1, 'admin/orders/create', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:22:04', '2019-08-25 09:22:04'),
(1079, 1, 'admin/labels', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:22:14', '2019-08-25 09:22:14'),
(1080, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:22:39', '2019-08-25 09:22:39'),
(1081, 1, 'admin/fare_managements/15/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:24:25', '2019-08-25 09:24:25'),
(1082, 1, 'admin/labels', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:24:53', '2019-08-25 09:24:53'),
(1083, 1, 'admin/orders', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:25:38', '2019-08-25 09:25:38'),
(1084, 1, 'admin/labels', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:27:04', '2019-08-25 09:27:04'),
(1085, 1, 'admin/labels/5/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:27:13', '2019-08-25 09:27:13'),
(1086, 1, 'admin/labels/5', 'PUT', '106.211.236.200', '{\"label_name\":\"Delivered\",\"description\":\"Delivered\",\"status\":\"2\",\"_token\":\"56U4MGpt3JhhVB3NISSyU4tvLIwqOOAATiDqHzTL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/labels\"}', '2019-08-25 09:27:17', '2019-08-25 09:27:17'),
(1087, 1, 'admin/labels', 'GET', '106.211.236.200', '[]', '2019-08-25 09:27:17', '2019-08-25 09:27:17'),
(1088, 1, 'admin/services', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:27:20', '2019-08-25 09:27:20'),
(1089, 1, 'admin/orders', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:27:24', '2019-08-25 09:27:24'),
(1090, 1, 'admin/orders/1/edit', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:27:28', '2019-08-25 09:27:28'),
(1091, 1, 'admin/labels', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:32:46', '2019-08-25 09:32:46'),
(1092, 1, 'admin/fare_managements', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:33:25', '2019-08-25 09:33:25'),
(1093, 1, 'admin/labels', 'GET', '106.211.236.200', '{\"_pjax\":\"#pjax-container\"}', '2019-08-25 09:38:29', '2019-08-25 09:38:29'),
(1094, 1, 'admin', 'GET', '106.198.4.33', '[]', '2019-08-28 02:22:44', '2019-08-28 02:22:44'),
(1095, 1, 'admin/products', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:22:51', '2019-08-28 02:22:51'),
(1096, 1, 'admin/products/1/edit', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:22:54', '2019-08-28 02:22:54'),
(1097, 1, 'admin/products/1', 'PUT', '106.198.4.33', '{\"category_id\":\"1\",\"product_name\":\"Shirt\",\"description\":\"aasdasdas\",\"status\":\"2\",\"_token\":\"9IpUgQP1tDYIX6pzkx2AuLOrbDP0FiJbfVJFOEdK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-28 02:23:00', '2019-08-28 02:23:00'),
(1098, 1, 'admin/products', 'GET', '106.198.4.33', '[]', '2019-08-28 02:23:00', '2019-08-28 02:23:00'),
(1099, 1, 'admin/labels', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:29:27', '2019-08-28 02:29:27'),
(1100, 1, 'admin/fare_managements', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:33:20', '2019-08-28 02:33:20'),
(1101, 1, 'admin/fare_managements/1/edit', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:33:24', '2019-08-28 02:33:24'),
(1102, 1, 'admin/fare_managements/1', 'PUT', '106.198.4.33', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"7\",\"_token\":\"9IpUgQP1tDYIX6pzkx2AuLOrbDP0FiJbfVJFOEdK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-28 02:33:28', '2019-08-28 02:33:28'),
(1103, 1, 'admin/fare_managements', 'GET', '106.198.4.33', '[]', '2019-08-28 02:33:29', '2019-08-28 02:33:29'),
(1104, 1, 'admin/labels', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:38:31', '2019-08-28 02:38:31'),
(1105, 1, 'admin/labels/5/edit', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:38:34', '2019-08-28 02:38:34'),
(1106, 1, 'admin/labels/5', 'PUT', '106.198.4.33', '{\"label_name\":\"Delivered\",\"description\":\"Delivered\",\"_token\":\"9IpUgQP1tDYIX6pzkx2AuLOrbDP0FiJbfVJFOEdK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/labels\"}', '2019-08-28 02:38:35', '2019-08-28 02:38:35'),
(1107, 1, 'admin/labels', 'GET', '106.198.4.33', '[]', '2019-08-28 02:38:36', '2019-08-28 02:38:36'),
(1108, 1, 'admin/products', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:39:59', '2019-08-28 02:39:59'),
(1109, 1, 'admin/products', 'GET', '106.198.4.33', '[]', '2019-08-28 02:41:15', '2019-08-28 02:41:15'),
(1110, 1, 'admin/orders', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:53:14', '2019-08-28 02:53:14'),
(1111, 1, 'admin/orders/1/edit', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:53:18', '2019-08-28 02:53:18'),
(1112, 1, 'admin/orders/1', 'PUT', '106.198.4.33', '{\"order_id\":\"00001\",\"collected_by\":null,\"delivered_by\":null,\"status\":\"1\",\"_token\":\"9IpUgQP1tDYIX6pzkx2AuLOrbDP0FiJbfVJFOEdK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/orders\"}', '2019-08-28 02:53:22', '2019-08-28 02:53:22'),
(1113, 1, 'admin/orders', 'GET', '106.198.4.33', '[]', '2019-08-28 02:53:22', '2019-08-28 02:53:22'),
(1114, 1, 'admin/orders/1/edit', 'GET', '106.198.4.33', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 02:53:24', '2019-08-28 02:53:24'),
(1115, 1, 'admin', 'GET', '103.219.206.97', '[]', '2019-08-28 06:29:58', '2019-08-28 06:29:58'),
(1116, 1, 'admin/faqs', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:30:03', '2019-08-28 06:30:03'),
(1117, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:30:05', '2019-08-28 06:30:05'),
(1118, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"How do I book my pickup?\",\"answer\":\"You can download our app and create an account and place your laundry pickup.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:30:35', '2019-08-28 06:30:35'),
(1119, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:30:36', '2019-08-28 06:30:36'),
(1120, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:30:38', '2019-08-28 06:30:38'),
(1121, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"Do you mix my clothes with other people\'s clothes?\",\"answer\":\"We do not mix any of your clothes with those of others in order to maintain hygiene.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:30:54', '2019-08-28 06:30:54'),
(1122, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:30:55', '2019-08-28 06:30:55'),
(1123, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:31:02', '2019-08-28 06:31:02'),
(1124, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"How do I have to pay for your service?\",\"answer\":\"Payment shall be collected at the time of delivery of garments .\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:31:14', '2019-08-28 06:31:14'),
(1125, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:31:14', '2019-08-28 06:31:14'),
(1126, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:31:18', '2019-08-28 06:31:18'),
(1127, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"My items are missing or damaged?\",\"answer\":\"We take missing or damaged items extremely serious.  You can email to support@rithlaundry.com as soon as possible with details and pictures. We treat each case individually our support team will be in contact to you within 24 hours.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:31:46', '2019-08-28 06:31:46'),
(1128, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:31:46', '2019-08-28 06:31:46'),
(1129, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:31:51', '2019-08-28 06:31:51'),
(1130, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"Can you wash comforters,  blankets and quilts?\",\"answer\":\"Yes. Please see our duved cleaning service page for further details.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:32:01', '2019-08-28 06:32:01'),
(1131, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:32:01', '2019-08-28 06:32:01'),
(1132, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:32:06', '2019-08-28 06:32:06'),
(1133, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"What services do you provide?\",\"answer\":\"Rith Laundry provides the following services: cloth washing, Ironing and cloth repair.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:32:16', '2019-08-28 06:32:16'),
(1134, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:32:16', '2019-08-28 06:32:16'),
(1135, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:32:27', '2019-08-28 06:32:27'),
(1136, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"What chemicals and detergents do you use?\",\"answer\":\"For laundry we use detergents (which  are easily available in our markets) along with additives such as vanish, comfort fabric conditioners, Rin Ala and other standard detergents.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:32:44', '2019-08-28 06:32:44'),
(1137, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:32:45', '2019-08-28 06:32:45'),
(1138, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:32:49', '2019-08-28 06:32:49'),
(1139, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"What hours can I get my laundry picked up or delivered?\",\"answer\":\"Pick up and delivery are available from 9am to 9pm.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:32:59', '2019-08-28 06:32:59'),
(1140, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:32:59', '2019-08-28 06:32:59'),
(1141, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:33:05', '2019-08-28 06:33:05'),
(1142, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"How clean is your store?\",\"answer\":\"The cleanliness of our store is our pride. In fact we have special team to handle the cleanliness of the store.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:33:12', '2019-08-28 06:33:12'),
(1143, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:33:12', '2019-08-28 06:33:12'),
(1144, 1, 'admin/faqs/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:33:16', '2019-08-28 06:33:16'),
(1145, 1, 'admin/faqs', 'POST', '103.219.206.97', '{\"question\":\"What if I leave any personnel items in my pockets by mistake?\",\"answer\":\"We shall check  the laundry while pickup and return back, if we find any personnel belongings. In case we find any at our store during the cleaning process, we will take care of them and shall call you to let you know about the same.\",\"status\":\"1\",\"_token\":\"B00LgzTOBHJjXNlOLNZZplM1DWMCiLHY0Xcv2d7d\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/faqs\"}', '2019-08-28 06:33:28', '2019-08-28 06:33:28'),
(1146, 1, 'admin/faqs', 'GET', '103.219.206.97', '[]', '2019-08-28 06:33:28', '2019-08-28 06:33:28'),
(1147, 1, 'admin/auth/logout', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:33:34', '2019-08-28 06:33:34'),
(1148, 1, 'admin', 'GET', '103.219.206.97', '[]', '2019-08-28 06:43:24', '2019-08-28 06:43:24'),
(1149, 1, 'admin/privacy_policies', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:43:28', '2019-08-28 06:43:28'),
(1150, 1, 'admin/privacy_policies/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:43:31', '2019-08-28 06:43:31'),
(1151, 1, 'admin/privacy_policies', 'POST', '103.219.206.97', '{\"title\":null,\"description\":null,\"status\":\"1\",\"_token\":\"60v7ioAam0WgGya19xD9zHJZ3IijctoIrV48yYfY\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-28 06:43:32', '2019-08-28 06:43:32'),
(1152, 1, 'admin/privacy_policies/create', 'GET', '103.219.206.97', '[]', '2019-08-28 06:43:32', '2019-08-28 06:43:32'),
(1153, 1, 'admin/auth/logout', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:43:44', '2019-08-28 06:43:44'),
(1154, 1, 'admin', 'GET', '103.219.206.97', '[]', '2019-08-28 06:44:43', '2019-08-28 06:44:43'),
(1155, 1, 'admin/privacy_policies', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:44:46', '2019-08-28 06:44:46'),
(1156, 1, 'admin/privacy_policies/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:44:47', '2019-08-28 06:44:47'),
(1157, 1, 'admin/privacy_policies', 'POST', '103.219.206.97', '{\"title\":\"About Rith Laundry\",\"description\":\"Rith laundry is pleased to provide professional pickup and delivery laundry services to our customers and offers quality and convenience at an affordable price. Our services are subject to the terms and conditions set forth below. Your use of Rith Laundry services indicates your agreement to be bound by the terms and conditions contained  herein.company never sell your personal information like phone number, address or email Id with any third party.we may change to terms from time to time and it is the current version which will apply to each order when you place it. We will notify you of changes to the Terms by email.\",\"status\":\"1\",\"_token\":\"wywp0tjnt8IoKD42va3j6HGGaZizIhAgeclJ4gXt\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-28 06:45:21', '2019-08-28 06:45:21'),
(1158, 1, 'admin/privacy_policies', 'GET', '103.219.206.97', '[]', '2019-08-28 06:45:21', '2019-08-28 06:45:21'),
(1159, 1, 'admin/privacy_policies/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:45:24', '2019-08-28 06:45:24'),
(1160, 1, 'admin/privacy_policies', 'POST', '103.219.206.97', '{\"title\":\"Please read the Terms carefully and make sure that you understand them before placing an order.\",\"description\":\"All garments\\/linen\\/fabrics are handled with greatest case but owing to the conditions of the clothes or non-apparent\\/non-visible defects in its material there is a possibility of discoloring or shrinkage such garments are accepted for cleaning at owners risk and we will not accept any responsibility for it.\",\"status\":\"1\",\"_token\":\"wywp0tjnt8IoKD42va3j6HGGaZizIhAgeclJ4gXt\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-28 06:45:35', '2019-08-28 06:45:35'),
(1161, 1, 'admin/privacy_policies', 'GET', '103.219.206.97', '[]', '2019-08-28 06:45:35', '2019-08-28 06:45:35'),
(1162, 1, 'admin/privacy_policies/2/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:45:36', '2019-08-28 06:45:36'),
(1163, 1, 'admin/privacy_policies/2', 'PUT', '103.219.206.97', '{\"title\":\"Please read the Terms carefully and make sure that you understand them before placing an order.\",\"description\":\"All garments\\/linen\\/fabrics are handled with greatest case but owing to the conditions of the clothes or non-apparent\\/non-visible defects in its material there is a possibility of discoloring or shrinkage such garments are accepted for cleaning at owners risk and we will not accept any responsibility for it.Removal of stain is a part of the process but, complete removal of stains can not be guaranteed and will be processed at customers risk. In case of any loss or damage you must be reported to support@rithlaundry.com with in 24 hours. Failure to report on right time we don\'t take any responsibility. Compensation shall be provided inform of services and no cash will be given to customers. Customers are requested to count the clothes at the time of delivery and inform to the delivery boy in case of missing clothes.  We will not be responsible for any such claims after the clothes delivery has been accepted. Customer might get regular updates through calls\\/ SMS\\/ emails\\/ App notification.\",\"status\":\"1\",\"_token\":\"wywp0tjnt8IoKD42va3j6HGGaZizIhAgeclJ4gXt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-28 06:46:20', '2019-08-28 06:46:20'),
(1164, 1, 'admin/privacy_policies', 'GET', '103.219.206.97', '[]', '2019-08-28 06:46:20', '2019-08-28 06:46:20'),
(1165, 1, 'admin/auth/logout', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:46:26', '2019-08-28 06:46:26'),
(1166, 1, 'admin', 'GET', '103.219.206.97', '[]', '2019-08-28 06:48:14', '2019-08-28 06:48:14'),
(1167, 1, 'admin/privacy_policies', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:48:17', '2019-08-28 06:48:17'),
(1168, 1, 'admin/privacy_policies/2/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:48:18', '2019-08-28 06:48:18'),
(1169, 1, 'admin/privacy_policies', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:48:21', '2019-08-28 06:48:21'),
(1170, 1, 'admin/privacy_policies/1/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:48:23', '2019-08-28 06:48:23'),
(1171, 1, 'admin/privacy_policies/1', 'PUT', '103.219.206.97', '{\"title\":\"About Rith laundry\",\"description\":\"Rith laundry is pleased to provide professional pickup and delivery laundry services to our customers and offers quality and convenience at an affordable price. Our services are subject to the terms and conditions set forth below. Your use of Rith Laundry services indicates your agreement to be bound by the terms and conditions contained  herein.company never sell your personal information like phone number, address or email Id with any third party.we may change to terms from time to time and it is the current version which will apply to each order when you place it. We will notify you of changes to the Terms by email.\",\"status\":\"1\",\"_token\":\"4ygvIHFbMDJM47Q7uVaQzQD6HRkskVbFfvQSVAvn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/privacy_policies\"}', '2019-08-28 06:48:27', '2019-08-28 06:48:27'),
(1172, 1, 'admin/privacy_policies', 'GET', '103.219.206.97', '[]', '2019-08-28 06:48:27', '2019-08-28 06:48:27'),
(1173, 1, 'admin/auth/menu', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:48:48', '2019-08-28 06:48:48'),
(1174, 1, 'admin/auth/menu', 'POST', '103.219.206.97', '{\"_token\":\"4ygvIHFbMDJM47Q7uVaQzQD6HRkskVbFfvQSVAvn\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":19},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":16},{\\\"id\\\":11}]\"}', '2019-08-28 06:49:07', '2019-08-28 06:49:07'),
(1175, 1, 'admin/auth/menu', 'POST', '103.219.206.97', '{\"_token\":\"4ygvIHFbMDJM47Q7uVaQzQD6HRkskVbFfvQSVAvn\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":19},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":16},{\\\"id\\\":11}]\"}', '2019-08-28 06:49:07', '2019-08-28 06:49:07'),
(1176, 1, 'admin/auth/menu', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:49:07', '2019-08-28 06:49:07'),
(1177, 1, 'admin/auth/menu', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:49:07', '2019-08-28 06:49:07');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1178, 1, 'admin/auth/menu', 'GET', '103.219.206.97', '[]', '2019-08-28 06:49:10', '2019-08-28 06:49:10'),
(1179, 1, 'admin/services', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:49:14', '2019-08-28 06:49:14'),
(1180, 1, 'admin/auth/logout', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 06:49:21', '2019-08-28 06:49:21'),
(1181, 1, 'admin/orders/1/edit', 'GET', '106.198.19.100', '[]', '2019-08-28 15:01:08', '2019-08-28 15:01:08'),
(1182, 1, 'admin/orders', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 15:01:11', '2019-08-28 15:01:11'),
(1183, 1, 'admin/auth/logout', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 15:01:53', '2019-08-28 15:01:53'),
(1184, 1, 'admin', 'GET', '106.198.19.100', '[]', '2019-08-28 15:06:32', '2019-08-28 15:06:32'),
(1185, 1, 'admin/services', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 15:06:49', '2019-08-28 15:06:49'),
(1186, 1, 'admin/products', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 15:07:00', '2019-08-28 15:07:00'),
(1187, 1, 'admin/promo_codes', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 15:07:03', '2019-08-28 15:07:03'),
(1188, 1, 'admin/auth/logout', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 15:17:47', '2019-08-28 15:17:47'),
(1189, 1, 'admin', 'GET', '106.198.19.100', '[]', '2019-08-28 15:18:19', '2019-08-28 15:18:19'),
(1190, 1, 'admin', 'GET', '106.217.15.39', '[]', '2019-08-28 18:04:24', '2019-08-28 18:04:24'),
(1191, 1, 'admin/customers', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:04:37', '2019-08-28 18:04:37'),
(1192, 1, 'admin/customers/12/edit', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:04:45', '2019-08-28 18:04:45'),
(1193, 1, 'admin', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:06:58', '2019-08-28 18:06:58'),
(1194, 1, 'admin/categories', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:07:43', '2019-08-28 18:07:43'),
(1195, 1, 'admin/fare_managements', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:07:44', '2019-08-28 18:07:44'),
(1196, 1, 'admin/fare_managements/15/edit', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:08:00', '2019-08-28 18:08:00'),
(1197, 1, 'admin/fare_managements', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:08:12', '2019-08-28 18:08:12'),
(1198, 1, 'admin/orders', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:08:16', '2019-08-28 18:08:16'),
(1199, 1, 'admin/labels', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:08:31', '2019-08-28 18:08:31'),
(1200, 1, 'admin/auth/logout', 'GET', '106.217.15.39', '{\"_pjax\":\"#pjax-container\"}', '2019-08-28 18:10:42', '2019-08-28 18:10:42'),
(1201, 1, 'admin', 'GET', '106.198.19.100', '[]', '2019-08-29 02:57:35', '2019-08-29 02:57:35'),
(1202, 1, 'admin/services', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 02:57:41', '2019-08-29 02:57:41'),
(1203, 1, 'admin/services/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 02:57:43', '2019-08-29 02:57:43'),
(1204, 1, 'admin/services', 'POST', '106.198.19.100', '{\"service_name\":\"Dry Cleaning\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 02:59:54', '2019-08-29 02:59:54'),
(1205, 1, 'admin/services', 'GET', '106.198.19.100', '[]', '2019-08-29 02:59:54', '2019-08-29 02:59:54'),
(1206, 1, 'admin/services/1/edit', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 02:59:56', '2019-08-29 02:59:56'),
(1207, 1, 'admin/services', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:00:07', '2019-08-29 03:00:07'),
(1208, 1, 'admin/services/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:00:08', '2019-08-29 03:00:08'),
(1209, 1, 'admin/services', 'POST', '106.198.19.100', '{\"service_name\":\"Ironing\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 03:05:06', '2019-08-29 03:05:06'),
(1210, 1, 'admin/services', 'GET', '106.198.19.100', '[]', '2019-08-29 03:05:08', '2019-08-29 03:05:08'),
(1211, 1, 'admin/services/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:05:10', '2019-08-29 03:05:10'),
(1212, 1, 'admin/services', 'POST', '106.198.19.100', '{\"service_name\":\"Wash & Ironing\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 03:05:52', '2019-08-29 03:05:52'),
(1213, 1, 'admin/services', 'GET', '106.198.19.100', '[]', '2019-08-29 03:05:53', '2019-08-29 03:05:53'),
(1214, 1, 'admin/services/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:05:55', '2019-08-29 03:05:55'),
(1215, 1, 'admin/services', 'POST', '106.198.19.100', '{\"service_name\":\"Dry Cleaning\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 03:06:13', '2019-08-29 03:06:13'),
(1216, 1, 'admin/services', 'GET', '106.198.19.100', '[]', '2019-08-29 03:06:13', '2019-08-29 03:06:13'),
(1217, 1, 'admin/services/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:06:15', '2019-08-29 03:06:15'),
(1218, 1, 'admin/services', 'POST', '106.198.19.100', '{\"service_name\":\"Cloth Repairing\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 03:06:45', '2019-08-29 03:06:45'),
(1219, 1, 'admin/services', 'GET', '106.198.19.100', '[]', '2019-08-29 03:06:45', '2019-08-29 03:06:45'),
(1220, 1, 'admin/services/2/edit', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:07:22', '2019-08-29 03:07:22'),
(1221, 1, 'admin/services', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:07:25', '2019-08-29 03:07:25'),
(1222, 1, 'admin/services/4/edit', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:07:34', '2019-08-29 03:07:34'),
(1223, 1, 'admin/services/4', 'PUT', '106.198.19.100', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 03:07:41', '2019-08-29 03:07:41'),
(1224, 1, 'admin/services', 'GET', '106.198.19.100', '[]', '2019-08-29 03:07:55', '2019-08-29 03:07:55'),
(1225, 1, 'admin/categories', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:08:49', '2019-08-29 03:08:49'),
(1226, 1, 'admin/categories/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:08:50', '2019-08-29 03:08:50'),
(1227, 1, 'admin/categories', 'POST', '106.198.19.100', '{\"service_id\":[\"1\",\"2\",\"3\",\"5\",null],\"category_name\":\"Men\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-29 03:09:50', '2019-08-29 03:09:50'),
(1228, 1, 'admin/categories', 'GET', '106.198.19.100', '[]', '2019-08-29 03:09:51', '2019-08-29 03:09:51'),
(1229, 1, 'admin/categories/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:09:54', '2019-08-29 03:09:54'),
(1230, 1, 'admin/categories', 'POST', '106.198.19.100', '{\"service_id\":[\"1\",\"2\",\"3\",\"5\",null],\"category_name\":\"Women\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-29 03:10:08', '2019-08-29 03:10:08'),
(1231, 1, 'admin/categories', 'GET', '106.198.19.100', '[]', '2019-08-29 03:10:09', '2019-08-29 03:10:09'),
(1232, 1, 'admin/categories/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:10:10', '2019-08-29 03:10:10'),
(1233, 1, 'admin/categories', 'POST', '106.198.19.100', '{\"service_id\":[\"1\",\"2\",\"3\",\"5\",null],\"category_name\":\"Kids\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-29 03:10:23', '2019-08-29 03:10:23'),
(1234, 1, 'admin/categories', 'GET', '106.198.19.100', '[]', '2019-08-29 03:10:24', '2019-08-29 03:10:24'),
(1235, 1, 'admin/categories/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:10:26', '2019-08-29 03:10:26'),
(1236, 1, 'admin/categories', 'POST', '106.198.19.100', '{\"service_id\":[\"4\",null],\"category_name\":\"Bed\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-29 03:13:26', '2019-08-29 03:13:26'),
(1237, 1, 'admin/categories', 'GET', '106.198.19.100', '[]', '2019-08-29 03:13:29', '2019-08-29 03:13:29'),
(1238, 1, 'admin/products', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:15:00', '2019-08-29 03:15:00'),
(1239, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:15:02', '2019-08-29 03:15:02'),
(1240, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"1\",\"product_name\":\"Blazer\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:16:24', '2019-08-29 03:16:24'),
(1241, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:16:24', '2019-08-29 03:16:24'),
(1242, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:16:26', '2019-08-29 03:16:26'),
(1243, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"1\",\"product_name\":\"Jeans Pant\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:17:28', '2019-08-29 03:17:28'),
(1244, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:17:29', '2019-08-29 03:17:29'),
(1245, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:17:31', '2019-08-29 03:17:31'),
(1246, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"1\",\"product_name\":\"Kurtas\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:17:56', '2019-08-29 03:17:56'),
(1247, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:17:56', '2019-08-29 03:17:56'),
(1248, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:17:58', '2019-08-29 03:17:58'),
(1249, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"1\",\"product_name\":\"Shirt\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:18:23', '2019-08-29 03:18:23'),
(1250, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:18:23', '2019-08-29 03:18:23'),
(1251, 1, 'admin/products/3/edit', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:18:27', '2019-08-29 03:18:27'),
(1252, 1, 'admin/products/3', 'PUT', '106.198.19.100', '{\"category_id\":\"1\",\"product_name\":\"Kurta\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:18:32', '2019-08-29 03:18:32'),
(1253, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:18:33', '2019-08-29 03:18:33'),
(1254, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:18:37', '2019-08-29 03:18:37'),
(1255, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"1\",\"product_name\":\"Shorts\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:19:18', '2019-08-29 03:19:18'),
(1256, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:19:18', '2019-08-29 03:19:18'),
(1257, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:19:20', '2019-08-29 03:19:20'),
(1258, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"1\",\"product_name\":\"Lower Shorts\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:20:00', '2019-08-29 03:20:00'),
(1259, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:20:01', '2019-08-29 03:20:01'),
(1260, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:20:12', '2019-08-29 03:20:12'),
(1261, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"2\",\"product_name\":\"Saree\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:21:04', '2019-08-29 03:21:04'),
(1262, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:21:04', '2019-08-29 03:21:04'),
(1263, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:21:06', '2019-08-29 03:21:06'),
(1264, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"2\",\"product_name\":\"Kurtis\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:21:31', '2019-08-29 03:21:31'),
(1265, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:21:32', '2019-08-29 03:21:32'),
(1266, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:21:34', '2019-08-29 03:21:34'),
(1267, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"2\",\"product_name\":\"Lehanga\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:22:12', '2019-08-29 03:22:12'),
(1268, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:22:12', '2019-08-29 03:22:12'),
(1269, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:22:14', '2019-08-29 03:22:14'),
(1270, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"2\",\"product_name\":\"Midi Overcoat\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:23:16', '2019-08-29 03:23:16'),
(1271, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:23:17', '2019-08-29 03:23:17'),
(1272, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:23:19', '2019-08-29 03:23:19'),
(1273, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"2\",\"product_name\":\"Salwar Suit Pant\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:24:00', '2019-08-29 03:24:00'),
(1274, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:24:01', '2019-08-29 03:24:01'),
(1275, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:24:07', '2019-08-29 03:24:07'),
(1276, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"2\",\"product_name\":\"Skirts\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:24:40', '2019-08-29 03:24:40'),
(1277, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:24:40', '2019-08-29 03:24:40'),
(1278, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:24:43', '2019-08-29 03:24:43'),
(1279, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"3\",\"product_name\":\"Shirt\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:25:34', '2019-08-29 03:25:34'),
(1280, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:25:35', '2019-08-29 03:25:35'),
(1281, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:25:47', '2019-08-29 03:25:47'),
(1282, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"3\",\"product_name\":\"TShirt\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:26:13', '2019-08-29 03:26:13'),
(1283, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:26:16', '2019-08-29 03:26:16'),
(1284, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:26:20', '2019-08-29 03:26:20'),
(1285, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"3\",\"product_name\":\"Pant\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:26:59', '2019-08-29 03:26:59'),
(1286, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:27:02', '2019-08-29 03:27:02'),
(1287, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:27:05', '2019-08-29 03:27:05'),
(1288, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"3\",\"product_name\":\"Gown\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:27:31', '2019-08-29 03:27:31'),
(1289, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:27:31', '2019-08-29 03:27:31'),
(1290, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:27:36', '2019-08-29 03:27:36'),
(1291, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"3\",\"product_name\":\"Midi Skirts\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:28:15', '2019-08-29 03:28:15'),
(1292, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:28:15', '2019-08-29 03:28:15'),
(1293, 1, 'admin/products/create', 'GET', '106.198.19.100', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 03:28:18', '2019-08-29 03:28:18'),
(1294, 1, 'admin/products', 'POST', '106.198.19.100', '{\"category_id\":\"3\",\"product_name\":\"Tops\",\"description\":\"Test\",\"status\":\"1\",\"_token\":\"erwFTp1r5RkPGJZLgFbV4tRUuwxT9LKEhlJGIMDx\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-29 03:28:40', '2019-08-29 03:28:40'),
(1295, 1, 'admin/products', 'GET', '106.198.19.100', '[]', '2019-08-29 03:28:40', '2019-08-29 03:28:40'),
(1296, 1, 'admin', 'GET', '103.219.206.97', '[]', '2019-08-29 06:43:07', '2019-08-29 06:43:07'),
(1297, 1, 'admin/categories', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:43:19', '2019-08-29 06:43:19'),
(1298, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:43:22', '2019-08-29 06:43:22'),
(1299, 1, 'admin/products', 'GET', '103.219.206.97', '[]', '2019-08-29 06:43:35', '2019-08-29 06:43:35'),
(1300, 1, 'admin/fare_managements/1/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:43:39', '2019-08-29 06:43:39'),
(1301, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:43:59', '2019-08-29 06:43:59'),
(1302, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:43:59', '2019-08-29 06:43:59'),
(1303, 1, 'admin/fare_managements/1', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"10\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:44:19', '2019-08-29 06:44:19'),
(1304, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:44:19', '2019-08-29 06:44:19'),
(1305, 1, 'admin/fare_managements/2/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:44:21', '2019-08-29 06:44:21'),
(1306, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:44:24', '2019-08-29 06:44:24'),
(1307, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:44:25', '2019-08-29 06:44:25'),
(1308, 1, 'admin/fare_managements/2', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"2\",\"amount\":\"10\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:44:35', '2019-08-29 06:44:35'),
(1309, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:44:35', '2019-08-29 06:44:35'),
(1310, 1, 'admin/fare_managements/3/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:44:37', '2019-08-29 06:44:37'),
(1311, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:44:38', '2019-08-29 06:44:38'),
(1312, 1, 'admin/fare_managements/3', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"8\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:44:45', '2019-08-29 06:44:45'),
(1313, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:44:45', '2019-08-29 06:44:45'),
(1314, 1, 'admin/fare_managements/4/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:44:48', '2019-08-29 06:44:48'),
(1315, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:44:50', '2019-08-29 06:44:50'),
(1316, 1, 'admin/fare_managements/4', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:44:59', '2019-08-29 06:44:59'),
(1317, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:44:59', '2019-08-29 06:44:59'),
(1318, 1, 'admin/fare_managements/5/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:45:04', '2019-08-29 06:45:04'),
(1319, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:45:08', '2019-08-29 06:45:08'),
(1320, 1, 'admin/fare_managements/5', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"5\",\"amount\":\"4\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:45:13', '2019-08-29 06:45:13'),
(1321, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:45:13', '2019-08-29 06:45:13'),
(1322, 1, 'admin/fare_managements/6/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:45:16', '2019-08-29 06:45:16'),
(1323, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:45:18', '2019-08-29 06:45:18'),
(1324, 1, 'admin/fare_managements/6', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"6\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:45:24', '2019-08-29 06:45:24'),
(1325, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:45:24', '2019-08-29 06:45:24'),
(1326, 1, 'admin/fare_managements/7/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:45:33', '2019-08-29 06:45:33'),
(1327, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:45:37', '2019-08-29 06:45:37'),
(1328, 1, 'admin/fare_managements/7', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"7\",\"amount\":\"20\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:45:42', '2019-08-29 06:45:42'),
(1329, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:45:42', '2019-08-29 06:45:42'),
(1330, 1, 'admin/fare_managements/8/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:45:45', '2019-08-29 06:45:45'),
(1331, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:45:48', '2019-08-29 06:45:48'),
(1332, 1, 'admin/fare_managements/8', 'PUT', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"7\",\"amount\":\"8\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:45:56', '2019-08-29 06:45:56'),
(1333, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:45:57', '2019-08-29 06:45:57'),
(1334, 1, 'admin/fare_managements/8/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:45:59', '2019-08-29 06:45:59'),
(1335, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:46:04', '2019-08-29 06:46:04'),
(1336, 1, 'admin/fare_managements/8', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"14\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:46:10', '2019-08-29 06:46:10'),
(1337, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:46:10', '2019-08-29 06:46:10'),
(1338, 1, 'admin/fare_managements/9/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:46:13', '2019-08-29 06:46:13'),
(1339, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:46:19', '2019-08-29 06:46:19'),
(1340, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:46:22', '2019-08-29 06:46:22'),
(1341, 1, 'admin/fare_managements/9', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"10\",\"amount\":\"8\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:46:31', '2019-08-29 06:46:31'),
(1342, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:46:31', '2019-08-29 06:46:31'),
(1343, 1, 'admin/fare_managements/10/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:46:34', '2019-08-29 06:46:34'),
(1344, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:46:41', '2019-08-29 06:46:41'),
(1345, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:46:42', '2019-08-29 06:46:42'),
(1346, 1, 'admin/fare_managements/10', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"11\",\"amount\":\"8\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:46:50', '2019-08-29 06:46:50'),
(1347, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:46:50', '2019-08-29 06:46:50'),
(1348, 1, 'admin/fare_managements/11/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:46:54', '2019-08-29 06:46:54'),
(1349, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:48:05', '2019-08-29 06:48:05'),
(1350, 1, 'admin/fare_managements/11', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"12\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:48:11', '2019-08-29 06:48:11'),
(1351, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:48:11', '2019-08-29 06:48:11'),
(1352, 1, 'admin/fare_managements/12/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:49:22', '2019-08-29 06:49:22'),
(1353, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:49:25', '2019-08-29 06:49:25'),
(1354, 1, 'admin/fare_managements/12', 'PUT', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"10\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:49:37', '2019-08-29 06:49:37'),
(1355, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:49:37', '2019-08-29 06:49:37'),
(1356, 1, 'admin/fare_managements/13/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:49:41', '2019-08-29 06:49:41'),
(1357, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:49:47', '2019-08-29 06:49:47'),
(1358, 1, 'admin/fare_managements/13', 'PUT', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"2\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:49:52', '2019-08-29 06:49:52'),
(1359, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:49:52', '2019-08-29 06:49:52'),
(1360, 1, 'admin/fare_managements/15/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:52:26', '2019-08-29 06:52:26'),
(1361, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:52:29', '2019-08-29 06:52:29'),
(1362, 1, 'admin/fare_managements/15', 'PUT', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:52:35', '2019-08-29 06:52:35'),
(1363, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:52:35', '2019-08-29 06:52:35'),
(1364, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:52:37', '2019-08-29 06:52:37'),
(1365, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:52:42', '2019-08-29 06:52:42'),
(1366, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:52:47', '2019-08-29 06:52:47'),
(1367, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:52:47', '2019-08-29 06:52:47'),
(1368, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:52:49', '2019-08-29 06:52:49'),
(1369, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:52:57', '2019-08-29 06:52:57'),
(1370, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:53:04', '2019-08-29 06:53:04'),
(1371, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:53:04', '2019-08-29 06:53:04'),
(1372, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:53:07', '2019-08-29 06:53:07'),
(1373, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:53:11', '2019-08-29 06:53:11'),
(1374, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"5\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:53:16', '2019-08-29 06:53:16'),
(1375, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:53:16', '2019-08-29 06:53:16'),
(1376, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:53:19', '2019-08-29 06:53:19'),
(1377, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:53:22', '2019-08-29 06:53:22'),
(1378, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:53:28', '2019-08-29 06:53:28'),
(1379, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:53:28', '2019-08-29 06:53:28'),
(1380, 1, 'admin/fare_managements/19/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:53:32', '2019-08-29 06:53:32'),
(1381, 1, 'admin/fare_managements/19', 'PUT', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:53:34', '2019-08-29 06:53:34'),
(1382, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:53:34', '2019-08-29 06:53:34'),
(1383, 1, 'admin/fare_managements/12/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:53:50', '2019-08-29 06:53:50'),
(1384, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 06:53:54', '2019-08-29 06:53:54'),
(1385, 1, 'admin/fare_managements/12', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"13\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:54:04', '2019-08-29 06:54:04'),
(1386, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:54:04', '2019-08-29 06:54:04'),
(1387, 1, 'admin/fare_managements/13/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:54:06', '2019-08-29 06:54:06'),
(1388, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 06:54:10', '2019-08-29 06:54:10'),
(1389, 1, 'admin/fare_managements/13', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"14\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:54:15', '2019-08-29 06:54:15'),
(1390, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:54:16', '2019-08-29 06:54:16'),
(1391, 1, 'admin/fare_managements/15/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:54:19', '2019-08-29 06:54:19'),
(1392, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 06:54:21', '2019-08-29 06:54:21'),
(1393, 1, 'admin/fare_managements/15', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"15\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:54:26', '2019-08-29 06:54:26'),
(1394, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:54:26', '2019-08-29 06:54:26'),
(1395, 1, 'admin/fare_managements/16/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:54:30', '2019-08-29 06:54:30'),
(1396, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 06:54:33', '2019-08-29 06:54:33'),
(1397, 1, 'admin/fare_managements/16', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"13\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:54:35', '2019-08-29 06:54:35'),
(1398, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:54:35', '2019-08-29 06:54:35'),
(1399, 1, 'admin/fare_managements/17/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:54:38', '2019-08-29 06:54:38'),
(1400, 1, 'admin/fare_managements/17/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:54:38', '2019-08-29 06:54:38'),
(1401, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 06:54:42', '2019-08-29 06:54:42'),
(1402, 1, 'admin/fare_managements/17', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"16\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\"}', '2019-08-29 06:54:49', '2019-08-29 06:54:49'),
(1403, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:54:49', '2019-08-29 06:54:49'),
(1404, 1, 'admin/fare_managements/16/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:54:57', '2019-08-29 06:54:57'),
(1405, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:55:01', '2019-08-29 06:55:01'),
(1406, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 06:55:02', '2019-08-29 06:55:02'),
(1407, 1, 'admin/fare_managements/16', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"16\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:55:06', '2019-08-29 06:55:06'),
(1408, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:55:06', '2019-08-29 06:55:06'),
(1409, 1, 'admin/fare_managements/17/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:55:09', '2019-08-29 06:55:09'),
(1410, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:55:12', '2019-08-29 06:55:12'),
(1411, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 06:55:14', '2019-08-29 06:55:14'),
(1412, 1, 'admin/fare_managements/17', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"17\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:55:16', '2019-08-29 06:55:16'),
(1413, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:55:16', '2019-08-29 06:55:16'),
(1414, 1, 'admin/fare_managements/18/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:55:20', '2019-08-29 06:55:20'),
(1415, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 06:55:23', '2019-08-29 06:55:23'),
(1416, 1, 'admin/fare_managements/18', 'PUT', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"18\",\"amount\":\"5\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:55:27', '2019-08-29 06:55:27'),
(1417, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:55:27', '2019-08-29 06:55:27'),
(1418, 1, 'admin/fare_managements/19/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:55:31', '2019-08-29 06:55:31'),
(1419, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 06:55:37', '2019-08-29 06:55:37'),
(1420, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 06:55:38', '2019-08-29 06:55:38'),
(1421, 1, 'admin/fare_managements/19', 'PUT', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"10\",\"_token\":\"fpwjUqxphqR7fec7tMbjbvN0Gzffg1zdawbuMbtt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 06:55:51', '2019-08-29 06:55:51'),
(1422, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 06:55:51', '2019-08-29 06:55:51'),
(1423, 1, 'admin/auth/logout', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 06:55:59', '2019-08-29 06:55:59'),
(1424, 1, 'admin', 'GET', '117.206.119.14', '[]', '2019-08-29 07:26:32', '2019-08-29 07:26:32'),
(1425, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:26:48', '2019-08-29 07:26:48'),
(1426, 1, 'admin/fare_managements/1/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:27:12', '2019-08-29 07:27:12'),
(1427, 1, 'admin/fare_managements/1', 'PUT', '117.206.119.14', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"3\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:27:36', '2019-08-29 07:27:36'),
(1428, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '[]', '2019-08-29 07:27:36', '2019-08-29 07:27:36'),
(1429, 1, 'admin/fare_managements/2/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:28:02', '2019-08-29 07:28:02'),
(1430, 1, 'admin/fare_managements/2', 'PUT', '117.206.119.14', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"2\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:28:13', '2019-08-29 07:28:13'),
(1431, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '[]', '2019-08-29 07:28:14', '2019-08-29 07:28:14'),
(1432, 1, 'admin/fare_managements/3/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:28:23', '2019-08-29 07:28:23'),
(1433, 1, 'admin/fare_managements/3', 'PUT', '117.206.119.14', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:28:29', '2019-08-29 07:28:29'),
(1434, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '[]', '2019-08-29 07:28:29', '2019-08-29 07:28:29'),
(1435, 1, 'admin/fare_managements/4/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:28:42', '2019-08-29 07:28:42'),
(1436, 1, 'admin/fare_managements/4', 'PUT', '117.206.119.14', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:28:48', '2019-08-29 07:28:48'),
(1437, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '[]', '2019-08-29 07:28:49', '2019-08-29 07:28:49'),
(1438, 1, 'admin/fare_managements/5/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:28:53', '2019-08-29 07:28:53'),
(1439, 1, 'admin/fare_managements/5', 'PUT', '117.206.119.14', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"5\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:28:58', '2019-08-29 07:28:58'),
(1440, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '[]', '2019-08-29 07:28:58', '2019-08-29 07:28:58'),
(1441, 1, 'admin/fare_managements/6/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:29:01', '2019-08-29 07:29:01'),
(1442, 1, 'admin/fare_managements/6', 'PUT', '117.206.119.14', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:29:06', '2019-08-29 07:29:06'),
(1443, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '[]', '2019-08-29 07:29:06', '2019-08-29 07:29:06'),
(1444, 1, 'admin/fare_managements/7/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:29:46', '2019-08-29 07:29:46'),
(1445, 1, 'admin/fare_managements/7', 'PUT', '117.206.119.14', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"7\",\"amount\":\"3\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:29:52', '2019-08-29 07:29:52'),
(1446, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '[]', '2019-08-29 07:29:52', '2019-08-29 07:29:52'),
(1447, 1, 'admin/fare_managements/8/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:29:56', '2019-08-29 07:29:56'),
(1448, 1, 'admin/fare_managements/8', 'PUT', '117.206.119.14', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"2\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:30:01', '2019-08-29 07:30:01'),
(1449, 1, 'admin/fare_managements', 'GET', '117.206.119.14', '[]', '2019-08-29 07:30:01', '2019-08-29 07:30:01'),
(1450, 1, 'admin/fare_managements/9/edit', 'GET', '117.206.119.14', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:30:06', '2019-08-29 07:30:06'),
(1451, 1, 'admin/fare_managements/9', 'GET', '117.206.115.58', '[]', '2019-08-29 07:31:14', '2019-08-29 07:31:14'),
(1452, 1, 'admin', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:31:34', '2019-08-29 07:31:34'),
(1453, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:31:37', '2019-08-29 07:31:37'),
(1454, 1, 'admin/fare_managements/9/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:31:42', '2019-08-29 07:31:42'),
(1455, 1, 'admin/fare_managements/9', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"10\",\"amount\":\"2\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:31:47', '2019-08-29 07:31:47'),
(1456, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:31:47', '2019-08-29 07:31:47'),
(1457, 1, 'admin/fare_managements/10/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:31:53', '2019-08-29 07:31:53'),
(1458, 1, 'admin/fare_managements/10', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"11\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:31:57', '2019-08-29 07:31:57'),
(1459, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:31:58', '2019-08-29 07:31:58'),
(1460, 1, 'admin/fare_managements/11/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:32:18', '2019-08-29 07:32:18');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1461, 1, 'admin/fare_managements/11', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"12\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:32:25', '2019-08-29 07:32:25'),
(1462, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:32:25', '2019-08-29 07:32:25'),
(1463, 1, 'admin/fare_managements/12/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:32:31', '2019-08-29 07:32:31'),
(1464, 1, 'admin/fare_managements/12', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"13\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:32:37', '2019-08-29 07:32:37'),
(1465, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:32:37', '2019-08-29 07:32:37'),
(1466, 1, 'admin/fare_managements/13/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:33:19', '2019-08-29 07:33:19'),
(1467, 1, 'admin/fare_managements/13', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"14\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:33:25', '2019-08-29 07:33:25'),
(1468, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:33:25', '2019-08-29 07:33:25'),
(1469, 1, 'admin/fare_managements/15/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:33:29', '2019-08-29 07:33:29'),
(1470, 1, 'admin/fare_managements/15', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"15\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:33:34', '2019-08-29 07:33:34'),
(1471, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:33:34', '2019-08-29 07:33:34'),
(1472, 1, 'admin/fare_managements/16/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:33:39', '2019-08-29 07:33:39'),
(1473, 1, 'admin/fare_managements/16', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"16\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:33:43', '2019-08-29 07:33:43'),
(1474, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:33:43', '2019-08-29 07:33:43'),
(1475, 1, 'admin/fare_managements/17/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:33:46', '2019-08-29 07:33:46'),
(1476, 1, 'admin/fare_managements/17', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"17\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:33:51', '2019-08-29 07:33:51'),
(1477, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:33:51', '2019-08-29 07:33:51'),
(1478, 1, 'admin/fare_managements/18/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:33:54', '2019-08-29 07:33:54'),
(1479, 1, 'admin/fare_managements/18', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"3\",\"product_id\":\"18\",\"amount\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:33:59', '2019-08-29 07:33:59'),
(1480, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:33:59', '2019-08-29 07:33:59'),
(1481, 1, 'admin/fare_managements/3/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:37:02', '2019-08-29 07:37:02'),
(1482, 1, 'admin/fare_managements/3', 'PUT', '117.206.115.58', '{\"service_id\":\"1\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"2\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:37:08', '2019-08-29 07:37:08'),
(1483, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:37:08', '2019-08-29 07:37:08'),
(1484, 1, 'admin/fare_managements/19/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:37:28', '2019-08-29 07:37:28'),
(1485, 1, 'admin/fare_managements/19', 'PUT', '117.206.115.58', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"2\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 07:37:35', '2019-08-29 07:37:35'),
(1486, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:37:35', '2019-08-29 07:37:35'),
(1487, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '[]', '2019-08-29 07:51:52', '2019-08-29 07:51:52'),
(1488, 1, 'admin', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:53:10', '2019-08-29 07:53:10'),
(1489, 1, 'admin/services', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:53:16', '2019-08-29 07:53:16'),
(1490, 1, 'admin/services/1/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:53:20', '2019-08-29 07:53:20'),
(1491, 1, 'admin/services/1', 'PUT', '117.206.115.58', '{\"service_name\":\"Dry Cleaning\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 07:53:33', '2019-08-29 07:53:33'),
(1492, 1, 'admin/services', 'GET', '117.206.115.58', '[]', '2019-08-29 07:53:34', '2019-08-29 07:53:34'),
(1493, 1, 'admin/services/2/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:53:37', '2019-08-29 07:53:37'),
(1494, 1, 'admin/services/2', 'PUT', '117.206.115.58', '{\"service_name\":\"Ironing\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 07:53:42', '2019-08-29 07:53:42'),
(1495, 1, 'admin/services', 'GET', '117.206.115.58', '[]', '2019-08-29 07:53:43', '2019-08-29 07:53:43'),
(1496, 1, 'admin/services/3/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:53:45', '2019-08-29 07:53:45'),
(1497, 1, 'admin/services/3', 'PUT', '117.206.115.58', '{\"service_name\":\"Wash & Ironing\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 07:53:53', '2019-08-29 07:53:53'),
(1498, 1, 'admin/services', 'GET', '117.206.115.58', '[]', '2019-08-29 07:53:53', '2019-08-29 07:53:53'),
(1499, 1, 'admin/services/4/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:53:56', '2019-08-29 07:53:56'),
(1500, 1, 'admin/services/4', 'PUT', '117.206.115.58', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 07:54:04', '2019-08-29 07:54:04'),
(1501, 1, 'admin/services', 'GET', '117.206.115.58', '[]', '2019-08-29 07:54:05', '2019-08-29 07:54:05'),
(1502, 1, 'admin/services/5/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:54:08', '2019-08-29 07:54:08'),
(1503, 1, 'admin/services/5', 'PUT', '117.206.115.58', '{\"service_name\":\"Cloth Repairing\",\"description\":\"We stitch and alternate your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 07:55:19', '2019-08-29 07:55:19'),
(1504, 1, 'admin/services', 'GET', '117.206.115.58', '[]', '2019-08-29 07:55:19', '2019-08-29 07:55:19'),
(1505, 1, 'admin/services/3/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:55:55', '2019-08-29 07:55:55'),
(1506, 1, 'admin/services/3', 'PUT', '117.206.115.58', '{\"service_name\":\"Wash & Ironing\",\"description\":\"We wash and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 07:56:02', '2019-08-29 07:56:02'),
(1507, 1, 'admin/services', 'GET', '117.206.115.58', '[]', '2019-08-29 07:56:02', '2019-08-29 07:56:02'),
(1508, 1, 'admin/services/2/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:56:10', '2019-08-29 07:56:10'),
(1509, 1, 'admin/services/2', 'PUT', '117.206.115.58', '{\"service_name\":\"Ironing\",\"description\":\"We  iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 07:56:20', '2019-08-29 07:56:20'),
(1510, 1, 'admin/services', 'GET', '117.206.115.58', '[]', '2019-08-29 07:56:21', '2019-08-29 07:56:21'),
(1511, 1, 'admin/services/1/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:56:37', '2019-08-29 07:56:37'),
(1512, 1, 'admin/services/1', 'PUT', '117.206.115.58', '{\"service_name\":\"Dry Cleaning\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"NFqjqvMYDmOzuDCQv2LLWrZ4hmyw5hASGczJO2Rg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 07:56:53', '2019-08-29 07:56:53'),
(1513, 1, 'admin/services', 'GET', '117.206.115.58', '[]', '2019-08-29 07:56:53', '2019-08-29 07:56:53'),
(1514, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 07:57:05', '2019-08-29 07:57:05'),
(1515, 1, 'admin/auth/logout', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 08:04:50', '2019-08-29 08:04:50'),
(1516, 1, 'admin', 'GET', '103.219.206.97', '[]', '2019-08-29 09:04:51', '2019-08-29 09:04:51'),
(1517, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:04:59', '2019-08-29 09:04:59'),
(1518, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:05:06', '2019-08-29 09:05:06'),
(1519, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:05:11', '2019-08-29 09:05:11'),
(1520, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"2\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 09:05:15', '2019-08-29 09:05:15'),
(1521, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 09:05:16', '2019-08-29 09:05:16'),
(1522, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:05:18', '2019-08-29 09:05:18'),
(1523, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:05:21', '2019-08-29 09:05:21'),
(1524, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 09:05:26', '2019-08-29 09:05:26'),
(1525, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 09:05:26', '2019-08-29 09:05:26'),
(1526, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:05:27', '2019-08-29 09:05:27'),
(1527, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:05:31', '2019-08-29 09:05:31'),
(1528, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 09:05:34', '2019-08-29 09:05:34'),
(1529, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 09:05:34', '2019-08-29 09:05:34'),
(1530, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:05:36', '2019-08-29 09:05:36'),
(1531, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:05:39', '2019-08-29 09:05:39'),
(1532, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"5\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 09:05:43', '2019-08-29 09:05:43'),
(1533, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 09:05:44', '2019-08-29 09:05:44'),
(1534, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:05:53', '2019-08-29 09:05:53'),
(1535, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:05:57', '2019-08-29 09:05:57'),
(1536, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:06:00', '2019-08-29 09:06:00'),
(1537, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=2\"}', '2019-08-29 09:06:05', '2019-08-29 09:06:05'),
(1538, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:06:05', '2019-08-29 09:06:05'),
(1539, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:06:07', '2019-08-29 09:06:07'),
(1540, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:06:10', '2019-08-29 09:06:10'),
(1541, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_id\":\"7\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=2\"}', '2019-08-29 09:06:15', '2019-08-29 09:06:15'),
(1542, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:06:15', '2019-08-29 09:06:15'),
(1543, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:06:17', '2019-08-29 09:06:17'),
(1544, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:06:19', '2019-08-29 09:06:19'),
(1545, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_id\":\"8\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=2\"}', '2019-08-29 09:06:23', '2019-08-29 09:06:23'),
(1546, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:06:23', '2019-08-29 09:06:23'),
(1547, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:06:24', '2019-08-29 09:06:24'),
(1548, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:06:27', '2019-08-29 09:06:27'),
(1549, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=2\"}', '2019-08-29 09:06:30', '2019-08-29 09:06:30'),
(1550, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:06:30', '2019-08-29 09:06:30'),
(1551, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:06:32', '2019-08-29 09:06:32'),
(1552, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:06:34', '2019-08-29 09:06:34'),
(1553, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_id\":\"10\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=2\"}', '2019-08-29 09:06:38', '2019-08-29 09:06:38'),
(1554, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:06:39', '2019-08-29 09:06:39'),
(1555, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:06:40', '2019-08-29 09:06:40'),
(1556, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:06:42', '2019-08-29 09:06:42'),
(1557, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_id\":\"11\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=2\"}', '2019-08-29 09:06:45', '2019-08-29 09:06:45'),
(1558, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:06:45', '2019-08-29 09:06:45'),
(1559, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:06:47', '2019-08-29 09:06:47'),
(1560, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:06:47', '2019-08-29 09:06:47'),
(1561, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:06:51', '2019-08-29 09:06:51'),
(1562, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_id\":\"11\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\"}', '2019-08-29 09:06:55', '2019-08-29 09:06:55'),
(1563, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 09:06:56', '2019-08-29 09:06:56'),
(1564, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:06:58', '2019-08-29 09:06:58'),
(1565, 1, 'admin/fare_managements/30/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:07:02', '2019-08-29 09:07:02'),
(1566, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:07:05', '2019-08-29 09:07:05'),
(1567, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:07:06', '2019-08-29 09:07:06'),
(1568, 1, 'admin/fare_managements/30', 'PUT', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_id\":\"12\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=2\"}', '2019-08-29 09:07:09', '2019-08-29 09:07:09'),
(1569, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:07:09', '2019-08-29 09:07:09'),
(1570, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:07:19', '2019-08-29 09:07:19'),
(1571, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:07:37', '2019-08-29 09:07:37'),
(1572, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 09:07:43', '2019-08-29 09:07:43'),
(1573, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:08:01', '2019-08-29 09:08:01'),
(1574, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 09:08:02', '2019-08-29 09:08:02'),
(1575, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:08:14', '2019-08-29 09:08:14'),
(1576, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:08:19', '2019-08-29 09:08:19'),
(1577, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:08:22', '2019-08-29 09:08:22'),
(1578, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"8\",\"amount\":\"2\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:08:26', '2019-08-29 09:08:26'),
(1579, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:08:26', '2019-08-29 09:08:26'),
(1580, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:08:29', '2019-08-29 09:08:29'),
(1581, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:08:33', '2019-08-29 09:08:33'),
(1582, 1, 'admin/fare_managements/31/edit', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:08:45', '2019-08-29 09:08:45'),
(1583, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:08:48', '2019-08-29 09:08:48'),
(1584, 1, 'admin/fare_managements/31', 'PUT', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"3\",\"product_id\":\"13\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:08:52', '2019-08-29 09:08:52'),
(1585, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:08:52', '2019-08-29 09:08:52'),
(1586, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:08:53', '2019-08-29 09:08:53'),
(1587, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:08:56', '2019-08-29 09:08:56'),
(1588, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"3\",\"product_id\":\"14\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:08:59', '2019-08-29 09:08:59'),
(1589, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:09:00', '2019-08-29 09:09:00'),
(1590, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:09:01', '2019-08-29 09:09:01'),
(1591, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:09:04', '2019-08-29 09:09:04'),
(1592, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"3\",\"product_id\":\"15\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:09:08', '2019-08-29 09:09:08'),
(1593, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:09:08', '2019-08-29 09:09:08'),
(1594, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:09:09', '2019-08-29 09:09:09'),
(1595, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:09:12', '2019-08-29 09:09:12'),
(1596, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:09:14', '2019-08-29 09:09:14'),
(1597, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"3\",\"product_id\":\"16\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:09:19', '2019-08-29 09:09:19'),
(1598, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:09:19', '2019-08-29 09:09:19'),
(1599, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:09:20', '2019-08-29 09:09:20'),
(1600, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:09:20', '2019-08-29 09:09:20'),
(1601, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:09:23', '2019-08-29 09:09:23'),
(1602, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"3\",\"product_id\":\"17\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\"}', '2019-08-29 09:09:27', '2019-08-29 09:09:27'),
(1603, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 09:09:27', '2019-08-29 09:09:27'),
(1604, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:09:28', '2019-08-29 09:09:28'),
(1605, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:09:31', '2019-08-29 09:09:31'),
(1606, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"2\",\"category_id\":\"3\",\"product_id\":\"18\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements\"}', '2019-08-29 09:09:35', '2019-08-29 09:09:35'),
(1607, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '[]', '2019-08-29 09:09:35', '2019-08-29 09:09:35'),
(1608, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:09:37', '2019-08-29 09:09:37'),
(1609, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:09:51', '2019-08-29 09:09:51'),
(1610, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:10:00', '2019-08-29 09:10:00'),
(1611, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"1\",\"category_id\":\"2\",\"product_id\":\"8\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=2\"}', '2019-08-29 09:10:05', '2019-08-29 09:10:05'),
(1612, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:10:05', '2019-08-29 09:10:05'),
(1613, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:10:09', '2019-08-29 09:10:09'),
(1614, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:10:09', '2019-08-29 09:10:09'),
(1615, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:10:17', '2019-08-29 09:10:17'),
(1616, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 09:10:22', '2019-08-29 09:10:22'),
(1617, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:10:24', '2019-08-29 09:10:24'),
(1618, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 09:10:35', '2019-08-29 09:10:35'),
(1619, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:10:37', '2019-08-29 09:10:37'),
(1620, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:10:40', '2019-08-29 09:10:40'),
(1621, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:10:44', '2019-08-29 09:10:44'),
(1622, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:10:47', '2019-08-29 09:10:47'),
(1623, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:10:47', '2019-08-29 09:10:47'),
(1624, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:10:49', '2019-08-29 09:10:49'),
(1625, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:10:53', '2019-08-29 09:10:53'),
(1626, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"2\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:10:55', '2019-08-29 09:10:55'),
(1627, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:10:55', '2019-08-29 09:10:55'),
(1628, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:10:57', '2019-08-29 09:10:57'),
(1629, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:11:00', '2019-08-29 09:11:00'),
(1630, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:11:03', '2019-08-29 09:11:03'),
(1631, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:11:03', '2019-08-29 09:11:03'),
(1632, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:11:04', '2019-08-29 09:11:04'),
(1633, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:11:08', '2019-08-29 09:11:08'),
(1634, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:11:11', '2019-08-29 09:11:11'),
(1635, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:11:11', '2019-08-29 09:11:11'),
(1636, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:11:12', '2019-08-29 09:11:12'),
(1637, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:11:16', '2019-08-29 09:11:16'),
(1638, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"5\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:11:20', '2019-08-29 09:11:20'),
(1639, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:11:20', '2019-08-29 09:11:20'),
(1640, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:11:21', '2019-08-29 09:11:21'),
(1641, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:11:25', '2019-08-29 09:11:25'),
(1642, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:11:27', '2019-08-29 09:11:27'),
(1643, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"2\"}', '2019-08-29 09:11:28', '2019-08-29 09:11:28'),
(1644, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:11:30', '2019-08-29 09:11:30'),
(1645, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:11:31', '2019-08-29 09:11:31'),
(1646, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:11:33', '2019-08-29 09:11:33'),
(1647, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 09:11:36', '2019-08-29 09:11:36'),
(1648, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:11:39', '2019-08-29 09:11:39'),
(1649, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:11:42', '2019-08-29 09:11:42'),
(1650, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"7\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:11:45', '2019-08-29 09:11:45'),
(1651, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:11:45', '2019-08-29 09:11:45'),
(1652, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:11:47', '2019-08-29 09:11:47'),
(1653, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:11:49', '2019-08-29 09:11:49'),
(1654, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"8\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:11:54', '2019-08-29 09:11:54'),
(1655, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:11:56', '2019-08-29 09:11:56'),
(1656, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:11:58', '2019-08-29 09:11:58'),
(1657, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:12:01', '2019-08-29 09:12:01'),
(1658, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:12:03', '2019-08-29 09:12:03'),
(1659, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:12:04', '2019-08-29 09:12:04'),
(1660, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:12:05', '2019-08-29 09:12:05'),
(1661, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:12:09', '2019-08-29 09:12:09'),
(1662, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"10\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:12:13', '2019-08-29 09:12:13'),
(1663, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:12:13', '2019-08-29 09:12:13'),
(1664, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:12:14', '2019-08-29 09:12:14'),
(1665, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:12:17', '2019-08-29 09:12:17'),
(1666, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"11\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:12:21', '2019-08-29 09:12:21'),
(1667, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:12:21', '2019-08-29 09:12:21'),
(1668, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:12:22', '2019-08-29 09:12:22'),
(1669, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:12:25', '2019-08-29 09:12:25'),
(1670, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"12\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:12:29', '2019-08-29 09:12:29'),
(1671, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:12:29', '2019-08-29 09:12:29'),
(1672, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:12:35', '2019-08-29 09:12:35'),
(1673, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:12:40', '2019-08-29 09:12:40'),
(1674, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"13\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:12:43', '2019-08-29 09:12:43'),
(1675, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:12:43', '2019-08-29 09:12:43'),
(1676, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:12:44', '2019-08-29 09:12:44'),
(1677, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:12:48', '2019-08-29 09:12:48'),
(1678, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"14\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:12:50', '2019-08-29 09:12:50'),
(1679, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:12:50', '2019-08-29 09:12:50'),
(1680, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:12:53', '2019-08-29 09:12:53'),
(1681, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:12:56', '2019-08-29 09:12:56'),
(1682, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"15\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:12:59', '2019-08-29 09:12:59'),
(1683, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:12:59', '2019-08-29 09:12:59'),
(1684, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:13:01', '2019-08-29 09:13:01'),
(1685, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:13:05', '2019-08-29 09:13:05'),
(1686, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"16\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:13:08', '2019-08-29 09:13:08'),
(1687, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:13:09', '2019-08-29 09:13:09'),
(1688, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:13:12', '2019-08-29 09:13:12'),
(1689, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:13:15', '2019-08-29 09:13:15'),
(1690, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"17\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:13:19', '2019-08-29 09:13:19'),
(1691, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:13:19', '2019-08-29 09:13:19'),
(1692, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:13:20', '2019-08-29 09:13:20'),
(1693, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:13:24', '2019-08-29 09:13:24'),
(1694, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"18\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:13:27', '2019-08-29 09:13:27'),
(1695, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:13:27', '2019-08-29 09:13:27'),
(1696, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:13:33', '2019-08-29 09:13:33'),
(1697, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:13:51', '2019-08-29 09:13:51'),
(1698, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:13:56', '2019-08-29 09:13:56'),
(1699, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:13:56', '2019-08-29 09:13:56'),
(1700, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:13:58', '2019-08-29 09:13:58'),
(1701, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:14:04', '2019-08-29 09:14:04'),
(1702, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"2\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:14:07', '2019-08-29 09:14:07'),
(1703, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:14:07', '2019-08-29 09:14:07'),
(1704, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:14:09', '2019-08-29 09:14:09'),
(1705, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:14:14', '2019-08-29 09:14:14'),
(1706, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:14:19', '2019-08-29 09:14:19'),
(1707, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:14:19', '2019-08-29 09:14:19'),
(1708, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:14:22', '2019-08-29 09:14:22'),
(1709, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:14:26', '2019-08-29 09:14:26'),
(1710, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:14:30', '2019-08-29 09:14:30'),
(1711, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:14:30', '2019-08-29 09:14:30'),
(1712, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:14:31', '2019-08-29 09:14:31'),
(1713, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:14:35', '2019-08-29 09:14:35'),
(1714, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"5\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:14:39', '2019-08-29 09:14:39'),
(1715, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:14:40', '2019-08-29 09:14:40'),
(1716, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:14:41', '2019-08-29 09:14:41'),
(1717, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"1\"}', '2019-08-29 09:14:45', '2019-08-29 09:14:45'),
(1718, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:14:48', '2019-08-29 09:14:48'),
(1719, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:14:49', '2019-08-29 09:14:49'),
(1720, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:14:57', '2019-08-29 09:14:57'),
(1721, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:15:07', '2019-08-29 09:15:07'),
(1722, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"7\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:15:10', '2019-08-29 09:15:10'),
(1723, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:15:10', '2019-08-29 09:15:10'),
(1724, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:15:13', '2019-08-29 09:15:13'),
(1725, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:15:16', '2019-08-29 09:15:16'),
(1726, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"8\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:15:19', '2019-08-29 09:15:19'),
(1727, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:15:19', '2019-08-29 09:15:19'),
(1728, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:15:20', '2019-08-29 09:15:20'),
(1729, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:15:24', '2019-08-29 09:15:24'),
(1730, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:15:27', '2019-08-29 09:15:27'),
(1731, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:15:27', '2019-08-29 09:15:27'),
(1732, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:15:28', '2019-08-29 09:15:28'),
(1733, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:15:32', '2019-08-29 09:15:32'),
(1734, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"10\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 09:15:36', '2019-08-29 09:15:36'),
(1735, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"3\"}', '2019-08-29 09:15:37', '2019-08-29 09:15:37'),
(1736, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:16:09', '2019-08-29 09:16:09'),
(1737, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 09:16:11', '2019-08-29 09:16:11');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1738, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2019-08-29 09:16:15', '2019-08-29 09:16:15'),
(1739, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:16:18', '2019-08-29 09:16:18'),
(1740, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:16:21', '2019-08-29 09:16:21'),
(1741, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"11\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 09:16:25', '2019-08-29 09:16:25'),
(1742, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\"}', '2019-08-29 09:16:25', '2019-08-29 09:16:25'),
(1743, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:16:26', '2019-08-29 09:16:26'),
(1744, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"2\"}', '2019-08-29 09:16:30', '2019-08-29 09:16:30'),
(1745, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"12\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 09:16:33', '2019-08-29 09:16:33'),
(1746, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\"}', '2019-08-29 09:16:33', '2019-08-29 09:16:33'),
(1747, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:16:35', '2019-08-29 09:16:35'),
(1748, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:16:38', '2019-08-29 09:16:38'),
(1749, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"3\",\"product_id\":\"13\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 09:16:40', '2019-08-29 09:16:40'),
(1750, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\"}', '2019-08-29 09:16:41', '2019-08-29 09:16:41'),
(1751, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:16:42', '2019-08-29 09:16:42'),
(1752, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:16:48', '2019-08-29 09:16:48'),
(1753, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"3\",\"product_id\":\"14\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 09:16:51', '2019-08-29 09:16:51'),
(1754, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\"}', '2019-08-29 09:16:52', '2019-08-29 09:16:52'),
(1755, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:16:53', '2019-08-29 09:16:53'),
(1756, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:16:57', '2019-08-29 09:16:57'),
(1757, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"3\",\"product_id\":\"15\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 09:17:01', '2019-08-29 09:17:01'),
(1758, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\"}', '2019-08-29 09:17:01', '2019-08-29 09:17:01'),
(1759, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:17:05', '2019-08-29 09:17:05'),
(1760, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:17:09', '2019-08-29 09:17:09'),
(1761, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"3\",\"product_id\":\"16\",\"amount\":\"4\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 09:17:12', '2019-08-29 09:17:12'),
(1762, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\"}', '2019-08-29 09:17:12', '2019-08-29 09:17:12'),
(1763, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:17:14', '2019-08-29 09:17:14'),
(1764, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:17:19', '2019-08-29 09:17:19'),
(1765, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"3\",\"product_id\":\"17\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 09:17:22', '2019-08-29 09:17:22'),
(1766, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\"}', '2019-08-29 09:17:23', '2019-08-29 09:17:23'),
(1767, 1, 'admin/fare_managements/create', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:17:24', '2019-08-29 09:17:24'),
(1768, 1, 'admin/get_products', 'GET', '103.219.206.97', '{\"q\":\"3\"}', '2019-08-29 09:17:28', '2019-08-29 09:17:28'),
(1769, 1, 'admin/fare_managements', 'POST', '103.219.206.97', '{\"service_id\":\"5\",\"category_id\":\"3\",\"product_id\":\"18\",\"amount\":\"1\",\"_token\":\"UgaRgYlJPIM9yzBZRnzSPdrrIbdggY56ClJMMWIs\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 09:17:32', '2019-08-29 09:17:32'),
(1770, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"4\"}', '2019-08-29 09:17:32', '2019-08-29 09:17:32'),
(1771, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:17:46', '2019-08-29 09:17:46'),
(1772, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:17:51', '2019-08-29 09:17:51'),
(1773, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 09:17:53', '2019-08-29 09:17:53'),
(1774, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:17:55', '2019-08-29 09:17:55'),
(1775, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 09:17:57', '2019-08-29 09:17:57'),
(1776, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2019-08-29 09:18:01', '2019-08-29 09:18:01'),
(1777, 1, 'admin/fare_managements', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 09:18:03', '2019-08-29 09:18:03'),
(1778, 1, 'admin/auth/logout', 'GET', '103.219.206.97', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:18:07', '2019-08-29 09:18:07'),
(1779, 1, 'admin', 'GET', '117.206.115.58', '[]', '2019-08-29 09:57:23', '2019-08-29 09:57:23'),
(1780, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:57:27', '2019-08-29 09:57:27'),
(1781, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:57:33', '2019-08-29 09:57:33'),
(1782, 1, 'admin/fare_managements/27/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:58:20', '2019-08-29 09:58:20'),
(1783, 1, 'admin/fare_managements/27', 'PUT', '117.206.115.58', '{\"service_id\":\"2\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:58:25', '2019-08-29 09:58:25'),
(1784, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"2\"}', '2019-08-29 09:58:26', '2019-08-29 09:58:26'),
(1785, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:58:54', '2019-08-29 09:58:54'),
(1786, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 09:59:04', '2019-08-29 09:59:04'),
(1787, 1, 'admin/fare_managements/38/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 09:59:11', '2019-08-29 09:59:11'),
(1788, 1, 'admin/fare_managements/38', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"5\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 09:59:17', '2019-08-29 09:59:17'),
(1789, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"2\"}', '2019-08-29 09:59:17', '2019-08-29 09:59:17'),
(1790, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:01:00', '2019-08-29 10:01:00'),
(1791, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:01:06', '2019-08-29 10:01:06'),
(1792, 1, 'admin/fare_managements/39/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:01:13', '2019-08-29 10:01:13'),
(1793, 1, 'admin/fare_managements/39', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"2\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 10:01:19', '2019-08-29 10:01:19'),
(1794, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"2\"}', '2019-08-29 10:01:19', '2019-08-29 10:01:19'),
(1795, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:01:40', '2019-08-29 10:01:40'),
(1796, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:01:49', '2019-08-29 10:01:49'),
(1797, 1, 'admin/fare_managements/40/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:01:52', '2019-08-29 10:01:52'),
(1798, 1, 'admin/fare_managements/40', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"3\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 10:01:57', '2019-08-29 10:01:57'),
(1799, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"2\"}', '2019-08-29 10:01:57', '2019-08-29 10:01:57'),
(1800, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:02:10', '2019-08-29 10:02:10'),
(1801, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:03:39', '2019-08-29 10:03:39'),
(1802, 1, 'admin/fare_managements/41/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:03:43', '2019-08-29 10:03:43'),
(1803, 1, 'admin/fare_managements/41', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=2\"}', '2019-08-29 10:03:49', '2019-08-29 10:03:49'),
(1804, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"2\"}', '2019-08-29 10:03:49', '2019-08-29 10:03:49'),
(1805, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:04:07', '2019-08-29 10:04:07'),
(1806, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 10:04:39', '2019-08-29 10:04:39'),
(1807, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:04:55', '2019-08-29 10:04:55'),
(1808, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:05:36', '2019-08-29 10:05:36'),
(1809, 1, 'admin/fare_managements/42/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:05:38', '2019-08-29 10:05:38'),
(1810, 1, 'admin/fare_managements/42', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"5\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:05:42', '2019-08-29 10:05:42'),
(1811, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:05:43', '2019-08-29 10:05:43'),
(1812, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:06:01', '2019-08-29 10:06:01'),
(1813, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:06:04', '2019-08-29 10:06:04'),
(1814, 1, 'admin/fare_managements/43/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:06:06', '2019-08-29 10:06:06'),
(1815, 1, 'admin/fare_managements/43', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:06:10', '2019-08-29 10:06:10'),
(1816, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:06:11', '2019-08-29 10:06:11'),
(1817, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:06:17', '2019-08-29 10:06:17'),
(1818, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:06:40', '2019-08-29 10:06:40'),
(1819, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 10:06:51', '2019-08-29 10:06:51'),
(1820, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:06:54', '2019-08-29 10:06:54'),
(1821, 1, 'admin/fare_managements/44/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:07:00', '2019-08-29 10:07:00'),
(1822, 1, 'admin/fare_managements/44', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"7\",\"amount\":\"4\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:07:04', '2019-08-29 10:07:04'),
(1823, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:07:05', '2019-08-29 10:07:05'),
(1824, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:07:29', '2019-08-29 10:07:29'),
(1825, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:07:48', '2019-08-29 10:07:48'),
(1826, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 10:08:26', '2019-08-29 10:08:26'),
(1827, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:08:29', '2019-08-29 10:08:29'),
(1828, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:09:04', '2019-08-29 10:09:04'),
(1829, 1, 'admin/fare_managements/45/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:09:16', '2019-08-29 10:09:16'),
(1830, 1, 'admin/fare_managements/45', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"8\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:09:20', '2019-08-29 10:09:20'),
(1831, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:09:20', '2019-08-29 10:09:20'),
(1832, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:15:30', '2019-08-29 10:15:30'),
(1833, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:15:43', '2019-08-29 10:15:43'),
(1834, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 10:15:52', '2019-08-29 10:15:52'),
(1835, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:15:55', '2019-08-29 10:15:55'),
(1836, 1, 'admin/fare_managements/46/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:16:05', '2019-08-29 10:16:05'),
(1837, 1, 'admin/fare_managements/46', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"4\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:16:11', '2019-08-29 10:16:11'),
(1838, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:16:12', '2019-08-29 10:16:12'),
(1839, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:16:36', '2019-08-29 10:16:36'),
(1840, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:16:42', '2019-08-29 10:16:42'),
(1841, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:16:46', '2019-08-29 10:16:46'),
(1842, 1, 'admin/fare_managements/47/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:16:49', '2019-08-29 10:16:49'),
(1843, 1, 'admin/fare_managements/47', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"10\",\"amount\":\"3\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:16:54', '2019-08-29 10:16:54'),
(1844, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:16:54', '2019-08-29 10:16:54'),
(1845, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:17:07', '2019-08-29 10:17:07'),
(1846, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:17:13', '2019-08-29 10:17:13'),
(1847, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:17:22', '2019-08-29 10:17:22'),
(1848, 1, 'admin/fare_managements/48/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:17:26', '2019-08-29 10:17:26'),
(1849, 1, 'admin/fare_managements/48', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"11\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:17:35', '2019-08-29 10:17:35'),
(1850, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:17:35', '2019-08-29 10:17:35'),
(1851, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:17:55', '2019-08-29 10:17:55'),
(1852, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:18:02', '2019-08-29 10:18:02'),
(1853, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:18:08', '2019-08-29 10:18:08'),
(1854, 1, 'admin/fare_managements/49/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:18:13', '2019-08-29 10:18:13'),
(1855, 1, 'admin/fare_managements/49', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"2\",\"product_id\":\"12\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:18:18', '2019-08-29 10:18:18'),
(1856, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:18:18', '2019-08-29 10:18:18'),
(1857, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:18:34', '2019-08-29 10:18:34'),
(1858, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 10:18:39', '2019-08-29 10:18:39'),
(1859, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:18:43', '2019-08-29 10:18:43'),
(1860, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:18:46', '2019-08-29 10:18:46'),
(1861, 1, 'admin/fare_managements/50/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:18:56', '2019-08-29 10:18:56'),
(1862, 1, 'admin/fare_managements/50', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"13\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:19:02', '2019-08-29 10:19:02'),
(1863, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:19:03', '2019-08-29 10:19:03'),
(1864, 1, 'admin/fare_managements/51/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:19:09', '2019-08-29 10:19:09'),
(1865, 1, 'admin/fare_managements/51', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"14\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:19:14', '2019-08-29 10:19:14'),
(1866, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:19:14', '2019-08-29 10:19:14'),
(1867, 1, 'admin/fare_managements/52/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:19:19', '2019-08-29 10:19:19'),
(1868, 1, 'admin/fare_managements/52', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"15\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:19:26', '2019-08-29 10:19:26'),
(1869, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:19:27', '2019-08-29 10:19:27'),
(1870, 1, 'admin/fare_managements/53/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:20:11', '2019-08-29 10:20:11'),
(1871, 1, 'admin/fare_managements/53', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"16\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:20:16', '2019-08-29 10:20:16'),
(1872, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:20:16', '2019-08-29 10:20:16'),
(1873, 1, 'admin/fare_managements/54/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:20:22', '2019-08-29 10:20:22'),
(1874, 1, 'admin/fare_managements/54', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"17\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:20:27', '2019-08-29 10:20:27'),
(1875, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:20:28', '2019-08-29 10:20:28'),
(1876, 1, 'admin/fare_managements/55/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:20:32', '2019-08-29 10:20:32'),
(1877, 1, 'admin/fare_managements/55', 'PUT', '117.206.115.58', '{\"service_id\":\"3\",\"category_id\":\"3\",\"product_id\":\"18\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:20:37', '2019-08-29 10:20:37'),
(1878, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:20:37', '2019-08-29 10:20:37'),
(1879, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:20:41', '2019-08-29 10:20:41'),
(1880, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:20:46', '2019-08-29 10:20:46'),
(1881, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-08-29 10:20:59', '2019-08-29 10:20:59'),
(1882, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:21:05', '2019-08-29 10:21:05'),
(1883, 1, 'admin/fare_managements/56/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:21:09', '2019-08-29 10:21:09'),
(1884, 1, 'admin/fare_managements/56', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"5\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:21:14', '2019-08-29 10:21:14'),
(1885, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:21:15', '2019-08-29 10:21:15'),
(1886, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:21:30', '2019-08-29 10:21:30'),
(1887, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 10:21:35', '2019-08-29 10:21:35'),
(1888, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:21:40', '2019-08-29 10:21:40'),
(1889, 1, 'admin/fare_managements/57/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:21:44', '2019-08-29 10:21:44'),
(1890, 1, 'admin/fare_managements/57', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"2\",\"amount\":\"3\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:21:48', '2019-08-29 10:21:48'),
(1891, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:21:49', '2019-08-29 10:21:49'),
(1892, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:21:55', '2019-08-29 10:21:55'),
(1893, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-08-29 10:22:04', '2019-08-29 10:22:04'),
(1894, 1, 'admin/fare_managements/56/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:23:12', '2019-08-29 10:23:12'),
(1895, 1, 'admin/fare_managements/56', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"1\",\"amount\":\"7\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:23:16', '2019-08-29 10:23:16'),
(1896, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:23:17', '2019-08-29 10:23:17'),
(1897, 1, 'admin/fare_managements/58/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:23:22', '2019-08-29 10:23:22'),
(1898, 1, 'admin/fare_managements/58', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"3\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:23:28', '2019-08-29 10:23:28'),
(1899, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:23:28', '2019-08-29 10:23:28'),
(1900, 1, 'admin/fare_managements/59/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:23:31', '2019-08-29 10:23:31'),
(1901, 1, 'admin/fare_managements/59', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"4\",\"amount\":\"3\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:23:36', '2019-08-29 10:23:36'),
(1902, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:23:36', '2019-08-29 10:23:36'),
(1903, 1, 'admin/fare_managements/60/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:23:39', '2019-08-29 10:23:39'),
(1904, 1, 'admin/fare_managements/60', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"5\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:23:44', '2019-08-29 10:23:44'),
(1905, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:23:44', '2019-08-29 10:23:44'),
(1906, 1, 'admin/fare_managements/61/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:23:48', '2019-08-29 10:23:48'),
(1907, 1, 'admin/fare_managements/61', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"1\",\"product_id\":\"6\",\"amount\":\"2\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=3\"}', '2019-08-29 10:23:53', '2019-08-29 10:23:53'),
(1908, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"3\"}', '2019-08-29 10:23:53', '2019-08-29 10:23:53'),
(1909, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"4\",\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:23:56', '2019-08-29 10:23:56'),
(1910, 1, 'admin/fare_managements/62/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:24:04', '2019-08-29 10:24:04'),
(1911, 1, 'admin/fare_managements/62', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"7\",\"amount\":\"1\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=4\"}', '2019-08-29 10:24:09', '2019-08-29 10:24:09'),
(1912, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"4\"}', '2019-08-29 10:24:09', '2019-08-29 10:24:09'),
(1913, 1, 'admin/fare_managements/63/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:24:15', '2019-08-29 10:24:15'),
(1914, 1, 'admin/fare_managements/63', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"8\",\"amount\":\"1\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=4\"}', '2019-08-29 10:24:17', '2019-08-29 10:24:17'),
(1915, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"4\"}', '2019-08-29 10:24:17', '2019-08-29 10:24:17'),
(1916, 1, 'admin/fare_managements/64/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:24:19', '2019-08-29 10:24:19'),
(1917, 1, 'admin/fare_managements/64', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"10\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=4\"}', '2019-08-29 10:24:26', '2019-08-29 10:24:26'),
(1918, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"4\"}', '2019-08-29 10:24:26', '2019-08-29 10:24:26'),
(1919, 1, 'admin/fare_managements/65/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:24:29', '2019-08-29 10:24:29'),
(1920, 1, 'admin/fare_managements/65', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"10\",\"amount\":\"1\",\"_token\":\"bzNhWjk79mBQ9FNlPeS6ufBgc92BaFfwA3TfBut2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?page=4\"}', '2019-08-29 10:24:37', '2019-08-29 10:24:37'),
(1921, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"4\"}', '2019-08-29 10:24:37', '2019-08-29 10:24:37'),
(1922, 1, 'admin/auth/logout', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 10:25:00', '2019-08-29 10:25:00'),
(1923, 1, 'admin', 'GET', '106.198.27.24', '[]', '2019-08-29 11:14:01', '2019-08-29 11:14:01'),
(1924, 1, 'admin/fare_managements', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:14:14', '2019-08-29 11:14:14'),
(1925, 1, 'admin/fare_managements', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-08-29 11:14:31', '2019-08-29 11:14:31'),
(1926, 1, 'admin/fare_managements', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2019-08-29 11:14:31', '2019-08-29 11:14:31'),
(1927, 1, 'admin/fare_managements', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:15:22', '2019-08-29 11:15:22'),
(1928, 1, 'admin', 'GET', '117.206.115.58', '[]', '2019-08-29 11:16:55', '2019-08-29 11:16:55'),
(1929, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:18:06', '2019-08-29 11:18:06'),
(1930, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2019-08-29 11:18:09', '2019-08-29 11:18:09'),
(1931, 1, 'admin/fare_managements/64/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:18:11', '2019-08-29 11:18:11'),
(1932, 1, 'admin/fare_managements/64', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"2\",\"product_id\":\"9\",\"amount\":\"3\",\"_token\":\"EHR4iBOhf8Vc3VQourghreDVzbqr1YwYydlyGPaS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 11:18:19', '2019-08-29 11:18:19'),
(1933, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"4\"}', '2019-08-29 11:18:20', '2019-08-29 11:18:20'),
(1934, 1, 'admin/fare_managements/71/edit', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:18:23', '2019-08-29 11:18:23'),
(1935, 1, 'admin/fare_managements/71', 'PUT', '117.206.115.58', '{\"service_id\":\"5\",\"category_id\":\"3\",\"product_id\":\"16\",\"amount\":\"2\",\"_token\":\"EHR4iBOhf8Vc3VQourghreDVzbqr1YwYydlyGPaS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/fare_managements?&page=4\"}', '2019-08-29 11:18:31', '2019-08-29 11:18:31'),
(1936, 1, 'admin/fare_managements', 'GET', '117.206.115.58', '{\"page\":\"4\"}', '2019-08-29 11:18:31', '2019-08-29 11:18:31'),
(1937, 1, 'admin/auth/logout', 'GET', '117.206.115.58', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:18:50', '2019-08-29 11:18:50'),
(1938, 1, 'admin', 'GET', '117.206.115.103', '[]', '2019-08-29 11:21:12', '2019-08-29 11:21:12'),
(1939, 1, 'admin/services', 'GET', '117.206.115.103', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:21:15', '2019-08-29 11:21:15'),
(1940, 1, 'admin/services/1/edit', 'GET', '117.206.115.103', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:21:18', '2019-08-29 11:21:18'),
(1941, 1, 'admin/services/1', 'PUT', '117.206.115.103', '{\"service_name\":\"Dry Cleaning\",\"description\":\"We wash, dry and iron your clothes, you just have to ask. We are specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"fo7sE6I0IcnFJ76pPLYjukmR7ExD9BczwZZOdq4e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 11:21:55', '2019-08-29 11:21:55'),
(1942, 1, 'admin/services/1/edit', 'GET', '117.206.115.103', '[]', '2019-08-29 11:21:55', '2019-08-29 11:21:55'),
(1943, 1, 'admin/services/1', 'PUT', '117.206.115.103', '{\"service_name\":\"Dry Cleaning\",\"description\":\"We wash, dry and iron your clothes, you just have to ask. We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"fo7sE6I0IcnFJ76pPLYjukmR7ExD9BczwZZOdq4e\",\"_method\":\"PUT\"}', '2019-08-29 11:22:23', '2019-08-29 11:22:23'),
(1944, 1, 'admin/services/1/edit', 'GET', '117.206.115.103', '[]', '2019-08-29 11:22:23', '2019-08-29 11:22:23'),
(1945, 1, 'admin/services/1', 'PUT', '117.206.115.103', '{\"service_name\":\"Dry Cleaning\",\"description\":\"We done dry clean your clothes, you just have to ask. We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"fo7sE6I0IcnFJ76pPLYjukmR7ExD9BczwZZOdq4e\",\"_method\":\"PUT\"}', '2019-08-29 11:23:34', '2019-08-29 11:23:34'),
(1946, 1, 'admin/services/1/edit', 'GET', '117.206.115.103', '[]', '2019-08-29 11:23:35', '2019-08-29 11:23:35'),
(1947, 1, 'admin/services/1', 'PUT', '117.206.115.103', '{\"service_name\":\"Dry Cleaning\",\"description\":\"We done dry clean your clothes. We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"fo7sE6I0IcnFJ76pPLYjukmR7ExD9BczwZZOdq4e\",\"_method\":\"PUT\"}', '2019-08-29 11:23:50', '2019-08-29 11:23:50'),
(1948, 1, 'admin/services', 'GET', '117.206.115.103', '[]', '2019-08-29 11:23:50', '2019-08-29 11:23:50'),
(1949, 1, 'admin/services/2/edit', 'GET', '117.206.115.103', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:24:16', '2019-08-29 11:24:16'),
(1950, 1, 'admin/services/2', 'PUT', '117.206.115.103', '{\"service_name\":\"Ironing\",\"description\":\"We  iron your clothes, you just have to ask.We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"fo7sE6I0IcnFJ76pPLYjukmR7ExD9BczwZZOdq4e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 11:24:20', '2019-08-29 11:24:20'),
(1951, 1, 'admin/services', 'GET', '117.206.115.103', '[]', '2019-08-29 11:24:21', '2019-08-29 11:24:21'),
(1952, 1, 'admin/services/2/edit', 'GET', '117.206.115.103', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:24:31', '2019-08-29 11:24:31'),
(1953, 1, 'admin/services/2', 'PUT', '117.206.115.103', '{\"service_name\":\"Ironing\",\"description\":\"We  iron your clothes, you just have to ask. We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"fo7sE6I0IcnFJ76pPLYjukmR7ExD9BczwZZOdq4e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 11:24:34', '2019-08-29 11:24:34'),
(1954, 1, 'admin/services', 'GET', '117.206.115.103', '[]', '2019-08-29 11:24:35', '2019-08-29 11:24:35'),
(1955, 1, 'admin', 'GET', '117.206.115.103', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:29:39', '2019-08-29 11:29:39'),
(1956, 1, 'admin/services', 'GET', '117.206.115.103', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:30:24', '2019-08-29 11:30:24'),
(1957, 1, 'admin/services/1/edit', 'GET', '117.206.115.103', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:30:27', '2019-08-29 11:30:27'),
(1958, 1, 'admin/services/1', 'PUT', '117.206.115.103', '{\"service_name\":\"Dry Cleaning\",\"description\":\"We done dry clean for your clothes. We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"fo7sE6I0IcnFJ76pPLYjukmR7ExD9BczwZZOdq4e\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 11:30:47', '2019-08-29 11:30:47'),
(1959, 1, 'admin/services', 'GET', '117.206.115.103', '[]', '2019-08-29 11:30:47', '2019-08-29 11:30:47'),
(1960, 1, 'admin', 'GET', '117.206.119.254', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:37:13', '2019-08-29 11:37:13'),
(1961, 1, 'admin/auth/logout', 'GET', '117.206.119.254', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 11:48:11', '2019-08-29 11:48:11'),
(1962, 1, 'admin', 'GET', '106.198.27.24', '[]', '2019-08-29 17:38:51', '2019-08-29 17:38:51'),
(1963, 1, 'admin/services', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:39:00', '2019-08-29 17:39:00'),
(1964, 1, 'admin/services/3/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:39:03', '2019-08-29 17:39:03'),
(1965, 1, 'admin/services/3', 'PUT', '106.198.27.24', '{\"service_name\":\"Wash & Ironing\",\"description\":\"We wash and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"xfky7FYoQWmUIWG6YE4wXuqApWNjL39lb0Jn6RNs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 17:39:22', '2019-08-29 17:39:22'),
(1966, 1, 'admin/services', 'GET', '106.198.27.24', '[]', '2019-08-29 17:39:22', '2019-08-29 17:39:22'),
(1967, 1, 'admin/services/2/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:39:24', '2019-08-29 17:39:24'),
(1968, 1, 'admin/services/2', 'PUT', '106.198.27.24', '{\"service_name\":\"Ironing\",\"description\":\"We  iron your clothes, you just have to ask. We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"xfky7FYoQWmUIWG6YE4wXuqApWNjL39lb0Jn6RNs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 17:39:45', '2019-08-29 17:39:45'),
(1969, 1, 'admin/services', 'GET', '106.198.27.24', '[]', '2019-08-29 17:39:51', '2019-08-29 17:39:51'),
(1970, 1, 'admin/services/4/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:42:38', '2019-08-29 17:42:38'),
(1971, 1, 'admin/services/4', 'PUT', '106.198.27.24', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"xfky7FYoQWmUIWG6YE4wXuqApWNjL39lb0Jn6RNs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 17:42:46', '2019-08-29 17:42:46'),
(1972, 1, 'admin/services', 'GET', '106.198.27.24', '[]', '2019-08-29 17:42:46', '2019-08-29 17:42:46'),
(1973, 1, 'admin/services/5/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:43:24', '2019-08-29 17:43:24'),
(1974, 1, 'admin/services', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:43:27', '2019-08-29 17:43:27'),
(1975, 1, 'admin/services/4/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:43:29', '2019-08-29 17:43:29'),
(1976, 1, 'admin/services/4', 'PUT', '106.198.27.24', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"xfky7FYoQWmUIWG6YE4wXuqApWNjL39lb0Jn6RNs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/services\"}', '2019-08-29 17:43:57', '2019-08-29 17:43:57'),
(1977, 1, 'admin/services', 'GET', '106.198.27.24', '[]', '2019-08-29 17:43:58', '2019-08-29 17:43:58'),
(1978, 1, 'admin', 'GET', '106.198.229.172', '[]', '2019-08-29 17:59:19', '2019-08-29 17:59:19'),
(1979, 1, 'admin/customers', 'GET', '106.198.229.172', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:59:48', '2019-08-29 17:59:48'),
(1980, 1, 'admin/delivery_boys', 'GET', '106.198.164.76', '{\"_pjax\":\"#pjax-container\"}', '2019-08-29 17:59:52', '2019-08-29 17:59:52'),
(1981, 1, 'admin', 'GET', '106.198.27.24', '[]', '2019-08-30 01:56:49', '2019-08-30 01:56:49'),
(1982, 1, 'admin/products', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 01:56:56', '2019-08-30 01:56:56'),
(1983, 1, 'admin/products/18/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 01:57:00', '2019-08-30 01:57:00'),
(1984, 1, 'admin/products/18', 'PUT', '106.198.27.24', '{\"category_id\":\"3\",\"product_name\":\"Tops\",\"status\":\"1\",\"_token\":\"qGTg9oK4auO5xM2gEBWH0sH5XvrkdUM9RCvFpanO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/products\"}', '2019-08-30 01:57:03', '2019-08-30 01:57:03'),
(1985, 1, 'admin/products', 'GET', '106.198.27.24', '[]', '2019-08-30 01:57:04', '2019-08-30 01:57:04'),
(1986, 1, 'admin/categories', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 01:57:06', '2019-08-30 01:57:06'),
(1987, 1, 'admin/categories/4/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 01:57:08', '2019-08-30 01:57:08'),
(1988, 1, 'admin/categories/4', 'PUT', '106.198.27.24', '{\"service_id\":[\"4\",null],\"category_name\":\"Bed\",\"status\":\"1\",\"_token\":\"qGTg9oK4auO5xM2gEBWH0sH5XvrkdUM9RCvFpanO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/categories\"}', '2019-08-30 01:57:10', '2019-08-30 01:57:10'),
(1989, 1, 'admin/categories', 'GET', '106.198.27.24', '[]', '2019-08-30 01:57:10', '2019-08-30 01:57:10'),
(1990, 1, 'admin/fare_managements', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 02:01:17', '2019-08-30 02:01:17'),
(1991, 1, 'admin/fare_managements/7/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 02:01:20', '2019-08-30 02:01:20'),
(1992, 1, 'admin/fare_managements/7/edit', 'GET', '106.198.27.24', '[]', '2019-08-30 02:02:38', '2019-08-30 02:02:38'),
(1993, 1, 'admin/fare_managements', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 02:05:05', '2019-08-30 02:05:05'),
(1994, 1, 'admin/fare_managements/21/edit', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 02:05:12', '2019-08-30 02:05:12'),
(1995, 1, 'admin/get_products', 'GET', '106.198.27.24', '{\"q\":\"2\"}', '2019-08-30 02:05:28', '2019-08-30 02:05:28'),
(1996, 1, 'admin/get_products', 'GET', '106.198.27.24', '{\"q\":\"1\"}', '2019-08-30 02:05:29', '2019-08-30 02:05:29'),
(1997, 1, 'admin/fare_managements', 'GET', '106.198.27.24', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 02:05:33', '2019-08-30 02:05:33'),
(1998, 1, 'admin', 'GET', '49.36.129.251', '[]', '2019-08-30 02:11:09', '2019-08-30 02:11:09'),
(1999, 1, 'admin/delivery_boys', 'GET', '106.198.166.4', '[]', '2019-08-30 06:23:17', '2019-08-30 06:23:17'),
(2000, 1, 'admin', 'GET', '122.164.88.1', '[]', '2019-08-30 09:30:16', '2019-08-30 09:30:16'),
(2001, 1, 'admin/customers', 'GET', '122.164.88.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 09:30:27', '2019-08-30 09:30:27'),
(2002, 1, 'admin/promo_codes', 'GET', '122.164.88.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 09:30:33', '2019-08-30 09:30:33'),
(2003, 1, 'admin/promo_codes', 'GET', '122.164.88.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 09:30:33', '2019-08-30 09:30:33'),
(2004, 1, 'admin/labels', 'GET', '122.164.88.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 09:30:37', '2019-08-30 09:30:37'),
(2005, 1, 'admin/labels', 'GET', '122.164.88.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 09:30:38', '2019-08-30 09:30:38'),
(2006, 1, 'admin', 'GET', '122.164.88.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 09:30:41', '2019-08-30 09:30:41'),
(2007, 1, 'admin/auth/logout', 'GET', '122.164.88.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-30 09:30:49', '2019-08-30 09:30:49'),
(2008, 1, 'admin', 'GET', '106.198.4.228', '[]', '2019-08-31 10:12:26', '2019-08-31 10:12:26'),
(2009, 1, 'admin/app_settings', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:12:39', '2019-08-31 10:12:39'),
(2010, 1, 'admin/app_settings/1/edit', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:12:41', '2019-08-31 10:12:41'),
(2011, 1, 'admin/app_settings/1', 'PUT', '106.198.4.228', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9876543210\",\"email\":\"support@rithlaundry.com\",\"default_currency\":\"$\",\"_token\":\"WeAxxavP9GVuPJBdDzoSg8cyMvlhAcZyZxZ3Ftwh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/app_settings\"}', '2019-08-31 10:13:04', '2019-08-31 10:13:04'),
(2012, 1, 'admin/app_settings', 'GET', '106.198.4.228', '[]', '2019-08-31 10:13:04', '2019-08-31 10:13:04'),
(2013, 1, 'admin/promo_codes', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:14:25', '2019-08-31 10:14:25'),
(2014, 1, 'admin/promo_codes/create', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:14:27', '2019-08-31 10:14:27');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2015, 1, 'admin/promo_codes', 'POST', '106.198.4.228', '{\"promo_name\":\"Get 50% discount\",\"promo_code\":\"RITH50\",\"description\":\"Use code RITH50 & get 50% discount.Other T&Cs  may apply.\",\"promo_type\":\"2\",\"discount\":\"50\",\"status\":\"1\",\"_token\":\"WeAxxavP9GVuPJBdDzoSg8cyMvlhAcZyZxZ3Ftwh\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-31 10:16:51', '2019-08-31 10:16:51'),
(2016, 1, 'admin/promo_codes', 'GET', '106.198.4.228', '[]', '2019-08-31 10:16:51', '2019-08-31 10:16:51'),
(2017, 1, 'admin/promo_codes/create', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:16:57', '2019-08-31 10:16:57'),
(2018, 1, 'admin/promo_codes', 'POST', '106.198.4.228', '{\"promo_name\":\"Get 10% discount\",\"promo_code\":\"AS10\",\"description\":\"Use code AS10 & get 10% discount\",\"promo_type\":\"2\",\"discount\":\"10\",\"status\":\"1\",\"_token\":\"WeAxxavP9GVuPJBdDzoSg8cyMvlhAcZyZxZ3Ftwh\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-31 10:18:40', '2019-08-31 10:18:40'),
(2019, 1, 'admin/promo_codes', 'GET', '106.198.4.228', '[]', '2019-08-31 10:18:40', '2019-08-31 10:18:40'),
(2020, 1, 'admin/promo_codes', 'GET', '106.198.4.228', '[]', '2019-08-31 10:21:28', '2019-08-31 10:21:28'),
(2021, 1, 'admin', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:21:31', '2019-08-31 10:21:31'),
(2022, 1, 'admin/orders', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:20', '2019-08-31 10:22:20'),
(2023, 1, 'admin', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:21', '2019-08-31 10:22:21'),
(2024, 1, 'admin/orders', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:24', '2019-08-31 10:22:24'),
(2025, 1, 'admin/services', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:27', '2019-08-31 10:22:27'),
(2026, 1, 'admin/categories', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:28', '2019-08-31 10:22:28'),
(2027, 1, 'admin/products', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:30', '2019-08-31 10:22:30'),
(2028, 1, 'admin/fare_managements', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:31', '2019-08-31 10:22:31'),
(2029, 1, 'admin/customers', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:33', '2019-08-31 10:22:33'),
(2030, 1, 'admin/delivery_boys', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:35', '2019-08-31 10:22:35'),
(2031, 1, 'admin/faqs', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 10:22:37', '2019-08-31 10:22:37'),
(2032, 1, 'admin', 'GET', '106.198.4.228', '[]', '2019-08-31 12:15:18', '2019-08-31 12:15:18'),
(2033, 1, 'admin/promo_codes', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 12:15:27', '2019-08-31 12:15:27'),
(2034, 1, 'admin/promo_codes/create', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 12:15:31', '2019-08-31 12:15:31'),
(2035, 1, 'admin/promo_codes', 'GET', '106.198.4.228', '[]', '2019-08-31 12:15:37', '2019-08-31 12:15:37'),
(2036, 1, 'admin/promo_codes', 'POST', '106.198.4.228', '{\"promo_name\":\"Get 30% discount\",\"promo_code\":\"UM30\",\"description\":\"Use code UM30 & get 30% discount.Other T&Cs may apply.\",\"promo_type\":\"1\",\"discount\":\"30\",\"status\":\"1\",\"_token\":\"WeAxxavP9GVuPJBdDzoSg8cyMvlhAcZyZxZ3Ftwh\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-31 12:16:15', '2019-08-31 12:16:15'),
(2037, 1, 'admin/promo_codes', 'GET', '106.198.4.228', '[]', '2019-08-31 12:16:15', '2019-08-31 12:16:15'),
(2038, 1, 'admin/promo_codes/create', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 12:16:19', '2019-08-31 12:16:19'),
(2039, 1, 'admin/promo_codes', 'POST', '106.198.4.228', '{\"promo_name\":\"Get 20% discount\",\"promo_code\":\"RITH20\",\"description\":\"Use code RITH20 & get 20% discount.Other T&Cs may apply.\",\"promo_type\":\"1\",\"discount\":\"20\",\"status\":\"1\",\"_token\":\"WeAxxavP9GVuPJBdDzoSg8cyMvlhAcZyZxZ3Ftwh\",\"_previous_\":\"http:\\/\\/rithlaundry.com\\/admin\\/promo_codes\"}', '2019-08-31 12:25:30', '2019-08-31 12:25:30'),
(2040, 1, 'admin/promo_codes', 'GET', '106.198.4.228', '[]', '2019-08-31 12:25:30', '2019-08-31 12:25:30'),
(2041, 1, 'admin/customers', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 12:43:06', '2019-08-31 12:43:06'),
(2042, 1, 'admin', 'GET', '106.198.4.228', '{\"_pjax\":\"#pjax-container\"}', '2019-08-31 12:44:33', '2019-08-31 12:44:33'),
(2043, 1, 'admin', 'GET', '106.198.4.228', '[]', '2019-08-31 14:05:30', '2019-08-31 14:05:30'),
(2044, 1, 'admin', 'GET', '106.198.69.117', '[]', '2019-09-01 09:13:36', '2019-09-01 09:13:36'),
(2045, 1, 'admin', 'GET', '106.198.69.117', '[]', '2019-09-01 09:40:19', '2019-09-01 09:40:19'),
(2046, 1, 'admin', 'GET', '106.198.40.242', '[]', '2019-10-01 14:11:31', '2019-10-01 14:11:31'),
(2047, 1, 'admin/delivery_boys', 'GET', '106.198.40.242', '{\"_pjax\":\"#pjax-container\"}', '2019-10-01 14:11:53', '2019-10-01 14:11:53'),
(2048, 1, 'admin', 'GET', '157.46.79.15', '[]', '2019-10-02 17:07:06', '2019-10-02 17:07:06'),
(2049, 1, 'admin/delivery_boys', 'GET', '157.46.79.15', '{\"_pjax\":\"#pjax-container\"}', '2019-10-02 17:07:12', '2019-10-02 17:07:12'),
(2050, 1, 'admin/delivery_boys/create', 'GET', '157.46.79.15', '{\"_pjax\":\"#pjax-container\"}', '2019-10-02 17:07:15', '2019-10-02 17:07:15'),
(2051, 1, 'admin/delivery_boys', 'POST', '157.46.79.15', '{\"delivery_boy_name\":\"Muthu\",\"phone_number\":\"90909090909\",\"email\":\"muthupetchi9908@gmail.com\",\"password\":\"muthupetchi\",\"status\":\"1\",\"_token\":\"419CjljYgOpwOrQxhBe0GLcmZ6roPeXm5IJ4W5aK\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-02 17:07:42', '2019-10-02 17:07:42'),
(2052, 1, 'admin/delivery_boys/create', 'GET', '157.46.79.15', '[]', '2019-10-02 17:07:42', '2019-10-02 17:07:42'),
(2053, 1, 'admin/delivery_boys', 'POST', '157.46.79.15', '{\"delivery_boy_name\":\"Muthu\",\"phone_number\":\"90909090909\",\"email\":\"muthupetchi9908@gmail.com\",\"password\":\"muthupetchi\",\"status\":\"1\",\"_token\":\"419CjljYgOpwOrQxhBe0GLcmZ6roPeXm5IJ4W5aK\"}', '2019-10-02 17:08:50', '2019-10-02 17:08:50'),
(2054, 1, 'admin/delivery_boys', 'GET', '157.46.79.15', '[]', '2019-10-02 17:08:52', '2019-10-02 17:08:52'),
(2055, 1, 'admin', 'GET', '157.46.17.238', '[]', '2019-10-06 18:19:08', '2019-10-06 18:19:08'),
(2056, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-10-07 14:57:07', '2019-10-07 14:57:07'),
(2057, 1, 'admin/services', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-07 15:02:06', '2019-10-07 15:02:06'),
(2058, 1, 'admin/app_settings', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-07 15:02:15', '2019-10-07 15:02:15'),
(2059, 1, 'admin/app_settings', 'GET', '127.0.0.1', '[]', '2019-10-07 15:04:15', '2019-10-07 15:04:15'),
(2060, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-10-10 01:06:16', '2019-10-10 01:06:16'),
(2061, 1, 'admin/delivery_boys', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 01:08:49', '2019-10-10 01:08:49'),
(2062, 1, 'admin/delivery_boys/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 01:08:55', '2019-10-10 01:08:55'),
(2063, 1, 'admin/delivery_boys', 'POST', '127.0.0.1', '{\"delivery_boy_name\":\"sarath\",\"phone_number\":\"9789354285\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"syHMq0EAbJtiEzQ67o7BWsrtyiVs0SWW0sZrGn2A\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/delivery_boys\"}', '2019-10-10 01:09:19', '2019-10-10 01:09:19'),
(2064, 1, 'admin/delivery_boys', 'GET', '127.0.0.1', '[]', '2019-10-10 01:09:21', '2019-10-10 01:09:21'),
(2065, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 01:10:07', '2019-10-10 01:10:07'),
(2066, 1, 'admin/customers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 01:15:42', '2019-10-10 01:15:42'),
(2067, 1, 'admin/customers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 01:15:52', '2019-10-10 01:15:52'),
(2068, 1, 'admin/customers', 'POST', '127.0.0.1', '{\"customer_name\":\"sarath\",\"phone_number\":\"9789354285\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"syHMq0EAbJtiEzQ67o7BWsrtyiVs0SWW0sZrGn2A\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/customers\"}', '2019-10-10 01:16:13', '2019-10-10 01:16:13'),
(2069, 1, 'admin/customers/create', 'GET', '127.0.0.1', '[]', '2019-10-10 01:16:15', '2019-10-10 01:16:15'),
(2070, 1, 'admin/customers', 'POST', '127.0.0.1', '{\"customer_name\":\"sarath\",\"phone_number\":\"9751073758\",\"email\":\"sarath.menpani@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"syHMq0EAbJtiEzQ67o7BWsrtyiVs0SWW0sZrGn2A\"}', '2019-10-10 01:16:26', '2019-10-10 01:16:26'),
(2071, 1, 'admin/customers', 'GET', '127.0.0.1', '[]', '2019-10-10 01:16:27', '2019-10-10 01:16:27'),
(2072, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 01:17:00', '2019-10-10 01:17:00'),
(2073, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 01:17:04', '2019-10-10 01:17:04'),
(2074, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 01:18:54', '2019-10-10 01:18:54'),
(2075, 1, 'admin/delivery_boys', 'GET', '127.0.0.1', '[]', '2019-10-10 01:19:07', '2019-10-10 01:19:07'),
(2076, 1, 'admin/delivery_boys/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 01:19:14', '2019-10-10 01:19:14'),
(2077, 1, 'admin/delivery_boys/1', 'PUT', '127.0.0.1', '{\"delivery_boy_name\":\"Muthu123\",\"phone_number\":\"9999999999\",\"email\":\"muthupetchi9908@gmail.com\",\"password\":\"$2y$12$I8o6NBgu.hXOA\\/KRsOzxr.EkOaFJHe4\\/rmmSUHGyaQpjZ39yr0fI2\",\"status\":\"2\",\"_token\":\"syHMq0EAbJtiEzQ67o7BWsrtyiVs0SWW0sZrGn2A\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/delivery_boys\"}', '2019-10-10 01:19:18', '2019-10-10 01:19:18'),
(2078, 1, 'admin/delivery_boys/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 01:19:19', '2019-10-10 01:19:19'),
(2079, 1, 'admin/delivery_boys/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 01:20:01', '2019-10-10 01:20:01'),
(2080, 1, 'admin/delivery_boys/1', 'PUT', '127.0.0.1', '{\"delivery_boy_name\":\"Muthu123\",\"phone_number\":\"9999999999\",\"email\":\"muthupetchi9908@gmail.com\",\"password\":\"$2y$12$I8o6NBgu.hXOA\\/KRsOzxr.EkOaFJHe4\\/rmmSUHGyaQpjZ39yr0fI2\",\"status\":\"2\",\"_token\":\"syHMq0EAbJtiEzQ67o7BWsrtyiVs0SWW0sZrGn2A\",\"_method\":\"PUT\"}', '2019-10-10 01:20:06', '2019-10-10 01:20:06'),
(2081, 1, 'admin/delivery_boys', 'GET', '127.0.0.1', '[]', '2019-10-10 01:20:08', '2019-10-10 01:20:08'),
(2082, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2019-10-10 01:20:12', '2019-10-10 01:20:12'),
(2083, 1, 'admin/orders/1', 'PUT', '127.0.0.1', '{\"order_id\":\"00001\",\"delivered_by\":\"2\",\"status\":\"3\",\"_token\":\"syHMq0EAbJtiEzQ67o7BWsrtyiVs0SWW0sZrGn2A\",\"_method\":\"PUT\"}', '2019-10-10 01:20:19', '2019-10-10 01:20:19'),
(2084, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2019-10-10 01:20:20', '2019-10-10 01:20:20'),
(2085, 1, 'admin', 'GET', '106.197.138.243', '[]', '2019-10-10 08:12:08', '2019-10-10 08:12:08'),
(2086, 1, 'admin', 'GET', '106.197.138.243', '[]', '2019-10-10 08:55:41', '2019-10-10 08:55:41'),
(2087, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 08:55:46', '2019-10-10 08:55:46'),
(2088, 1, 'admin', 'GET', '106.197.138.243', '[]', '2019-10-10 16:29:11', '2019-10-10 16:29:11'),
(2089, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:29:19', '2019-10-10 16:29:19'),
(2090, 1, 'admin/customers', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:29:29', '2019-10-10 16:29:29'),
(2091, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:29:38', '2019-10-10 16:29:38'),
(2092, 1, 'admin/customers', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:29:41', '2019-10-10 16:29:41'),
(2093, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:29:43', '2019-10-10 16:29:43'),
(2094, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:29:44', '2019-10-10 16:29:44'),
(2095, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:29:54', '2019-10-10 16:29:54'),
(2096, 1, 'admin/delivery_boys/create', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 16:29:55', '2019-10-10 16:29:55'),
(2097, 1, 'admin/delivery_boys', 'POST', '106.197.138.243', '{\"delivery_boy_name\":\"test\",\"phone_number\":\"9874563210\",\"email\":\"test@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"cp472Aw2EPdQb5V8hXYGMXSgZL48YWRCRxZNdZiR\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-10 16:30:14', '2019-10-10 16:30:14'),
(2098, 1, 'admin/delivery_boys/create', 'GET', '106.197.138.243', '[]', '2019-10-10 16:30:14', '2019-10-10 16:30:14'),
(2099, 1, 'admin/delivery_boys', 'POST', '106.197.138.243', '{\"delivery_boy_name\":\"test\",\"phone_number\":\"9874563210\",\"email\":\"test@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"cp472Aw2EPdQb5V8hXYGMXSgZL48YWRCRxZNdZiR\"}', '2019-10-10 16:30:23', '2019-10-10 16:30:23'),
(2100, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '[]', '2019-10-10 16:30:24', '2019-10-10 16:30:24'),
(2101, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 18:08:08', '2019-10-10 18:08:08'),
(2102, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 18:08:19', '2019-10-10 18:08:19'),
(2103, 1, 'admin/delivery_boys/3/edit', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 18:08:21', '2019-10-10 18:08:21'),
(2104, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 18:08:24', '2019-10-10 18:08:24'),
(2105, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-10 18:08:27', '2019-10-10 18:08:27'),
(2106, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '[]', '2019-10-10 18:09:10', '2019-10-10 18:09:10'),
(2107, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '[]', '2019-10-10 18:09:41', '2019-10-10 18:09:41'),
(2108, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '[]', '2019-10-10 18:14:04', '2019-10-10 18:14:04'),
(2109, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '[]', '2019-10-10 18:18:55', '2019-10-10 18:18:55'),
(2110, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '[]', '2019-10-10 18:20:47', '2019-10-10 18:20:47'),
(2111, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '[]', '2019-10-10 18:32:41', '2019-10-10 18:32:41'),
(2112, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '[]', '2019-10-10 18:35:02', '2019-10-10 18:35:02'),
(2113, 1, 'admin/delivery_boys/2/edit', 'GET', '106.197.138.243', '[]', '2019-10-10 18:36:10', '2019-10-10 18:36:10'),
(2114, 1, 'admin', 'GET', '106.197.138.243', '[]', '2019-10-11 14:17:29', '2019-10-11 14:17:29'),
(2115, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:17:45', '2019-10-11 14:17:45'),
(2116, 1, 'admin/delivery_boys/1/edit', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:17:53', '2019-10-11 14:17:53'),
(2117, 1, 'admin/delivery_boys/1', 'PUT', '106.197.138.243', '{\"delivery_boy_name\":\"Muthu123\",\"phone_number\":\"9999999999\",\"email\":\"muthupetchi9908@gmail.com\",\"password\":\"$2y$12$I8o6NBgu.hXOA\\/KRsOzxr.EkOaFJHe4\\/rmmSUHGyaQpjZ39yr0fI2\",\"status\":\"1\",\"_token\":\"WzTSIB98V4i2U3GZp9H7MvY1ZHe5HmnEahr13iHv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-11 14:17:58', '2019-10-11 14:17:58'),
(2118, 1, 'admin/delivery_boys', 'GET', '106.197.138.243', '[]', '2019-10-11 14:17:59', '2019-10-11 14:17:59'),
(2119, 1, 'admin/orders', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:18:59', '2019-10-11 14:18:59'),
(2120, 1, 'admin/orders/3/edit', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:19:03', '2019-10-11 14:19:03'),
(2121, 1, 'admin/orders/3', 'PUT', '106.197.138.243', '{\"order_id\":\"00003\",\"delivered_by\":\"1\",\"status\":\"1\",\"_token\":\"WzTSIB98V4i2U3GZp9H7MvY1ZHe5HmnEahr13iHv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-11 14:19:09', '2019-10-11 14:19:09'),
(2122, 1, 'admin/orders', 'GET', '106.197.138.243', '[]', '2019-10-11 14:19:10', '2019-10-11 14:19:10'),
(2123, 1, 'admin/orders/3/edit', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:20:43', '2019-10-11 14:20:43'),
(2124, 1, 'admin/orders/3', 'PUT', '106.197.138.243', '{\"order_id\":\"00003\",\"delivered_by\":\"1\",\"status\":\"1\",\"_token\":\"WzTSIB98V4i2U3GZp9H7MvY1ZHe5HmnEahr13iHv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-11 14:32:42', '2019-10-11 14:32:42'),
(2125, 1, 'admin/orders/3/edit', 'GET', '106.197.138.243', '[]', '2019-10-11 14:32:42', '2019-10-11 14:32:42'),
(2126, 1, 'admin/orders/3', 'PUT', '106.197.138.243', '{\"order_id\":\"00003\",\"delivered_by\":\"1\",\"status\":\"2\",\"_token\":\"WzTSIB98V4i2U3GZp9H7MvY1ZHe5HmnEahr13iHv\",\"_method\":\"PUT\"}', '2019-10-11 14:32:51', '2019-10-11 14:32:51'),
(2127, 1, 'admin/orders', 'GET', '106.197.138.243', '[]', '2019-10-11 14:32:52', '2019-10-11 14:32:52'),
(2128, 1, 'admin/orders/3/edit', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 14:35:07', '2019-10-11 14:35:07'),
(2129, 1, 'admin/orders/3', 'PUT', '106.197.138.243', '{\"order_id\":\"00003\",\"delivered_by\":\"3\",\"status\":\"2\",\"_token\":\"WzTSIB98V4i2U3GZp9H7MvY1ZHe5HmnEahr13iHv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-11 14:35:11', '2019-10-11 14:35:11'),
(2130, 1, 'admin/orders', 'GET', '106.197.138.243', '[]', '2019-10-11 14:35:17', '2019-10-11 14:35:17'),
(2131, 1, 'admin/orders', 'GET', '106.197.138.243', '[]', '2019-10-11 14:55:04', '2019-10-11 14:55:04'),
(2132, 1, 'admin/orders', 'GET', '106.197.138.243', '[]', '2019-10-11 15:08:16', '2019-10-11 15:08:16'),
(2133, 1, 'admin/orders/3/edit', 'GET', '106.197.138.243', '{\"_pjax\":\"#pjax-container\"}', '2019-10-11 15:09:17', '2019-10-11 15:09:17'),
(2134, 1, 'admin/orders/3', 'PUT', '106.197.138.243', '{\"order_id\":\"00003\",\"delivered_by\":\"3\",\"status\":\"5\",\"_token\":\"WzTSIB98V4i2U3GZp9H7MvY1ZHe5HmnEahr13iHv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-11 15:09:27', '2019-10-11 15:09:27'),
(2135, 1, 'admin/orders', 'GET', '106.197.138.243', '[]', '2019-10-11 15:09:28', '2019-10-11 15:09:28'),
(2136, 1, 'admin/orders', 'GET', '106.197.138.243', '[]', '2019-10-11 15:15:57', '2019-10-11 15:15:57'),
(2137, 1, 'admin', 'GET', '106.217.16.75', '[]', '2019-10-12 18:00:23', '2019-10-12 18:00:23'),
(2138, 1, 'admin/customers', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:00:34', '2019-10-12 18:00:34'),
(2139, 1, 'admin/customers', 'GET', '106.217.16.75', '[]', '2019-10-12 18:03:00', '2019-10-12 18:03:00'),
(2140, 1, 'admin/delivery_boys', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:03:07', '2019-10-12 18:03:07'),
(2141, 1, 'admin/delivery_boys/create', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:03:19', '2019-10-12 18:03:19'),
(2142, 1, 'admin/delivery_boys', 'POST', '106.217.16.75', '{\"delivery_boy_name\":null,\"phone_number\":null,\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-12 18:03:27', '2019-10-12 18:03:27'),
(2143, 1, 'admin/delivery_boys/create', 'GET', '106.217.16.75', '[]', '2019-10-12 18:03:27', '2019-10-12 18:03:27'),
(2144, 1, 'admin/delivery_boys', 'POST', '106.217.16.75', '{\"delivery_boy_name\":\"Mansoor\",\"phone_number\":\"9988552233\",\"email\":\"mansoor@menpanitech.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\"}', '2019-10-12 18:03:52', '2019-10-12 18:03:52'),
(2145, 1, 'admin/delivery_boys/create', 'GET', '106.217.16.75', '[]', '2019-10-12 18:03:52', '2019-10-12 18:03:52'),
(2146, 1, 'admin/delivery_boys', 'POST', '106.217.16.75', '{\"delivery_boy_name\":\"Mansoor\",\"phone_number\":\"9988552233\",\"email\":\"mansoor1@menpanitech.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\"}', '2019-10-12 18:04:17', '2019-10-12 18:04:17'),
(2147, 1, 'admin/delivery_boys', 'GET', '106.217.16.75', '[]', '2019-10-12 18:04:18', '2019-10-12 18:04:18'),
(2148, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:07:53', '2019-10-12 18:07:53'),
(2149, 1, 'admin/view_orders/4', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:08:03', '2019-10-12 18:08:03'),
(2150, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:08:11', '2019-10-12 18:08:11'),
(2151, 1, 'admin/orders/4/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:08:14', '2019-10-12 18:08:14'),
(2152, 1, 'admin/orders/4', 'PUT', '106.217.16.75', '{\"order_id\":\"00004\",\"delivered_by\":\"4\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:08:20', '2019-10-12 18:08:20'),
(2153, 1, 'admin/orders/4/edit', 'GET', '106.217.16.75', '[]', '2019-10-12 18:08:20', '2019-10-12 18:08:20'),
(2154, 1, 'admin/orders/4', 'PUT', '106.217.16.75', '{\"order_id\":\"00004\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\"}', '2019-10-12 18:08:34', '2019-10-12 18:08:34'),
(2155, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:08:35', '2019-10-12 18:08:35'),
(2156, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:09:07', '2019-10-12 18:09:07'),
(2157, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:09:18', '2019-10-12 18:09:18'),
(2158, 1, 'admin/orders/4/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:09:53', '2019-10-12 18:09:53'),
(2159, 1, 'admin/orders/4', 'PUT', '106.217.16.75', '{\"order_id\":\"00004\",\"delivered_by\":\"4\",\"status\":\"6\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:10:05', '2019-10-12 18:10:05'),
(2160, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:10:06', '2019-10-12 18:10:06'),
(2161, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:10:17', '2019-10-12 18:10:17'),
(2162, 1, 'admin/orders/4/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:10:47', '2019-10-12 18:10:47'),
(2163, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:16:04', '2019-10-12 18:16:04'),
(2164, 1, 'admin/orders/4/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:16:26', '2019-10-12 18:16:26'),
(2165, 1, 'admin/orders/4', 'PUT', '106.217.16.75', '{\"order_id\":\"00004\",\"delivered_by\":\"2\",\"status\":\"7\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:16:56', '2019-10-12 18:16:56'),
(2166, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:16:58', '2019-10-12 18:16:58'),
(2167, 1, 'admin/orders/4/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:17:01', '2019-10-12 18:17:01'),
(2168, 1, 'admin/delivery_boys', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:18:10', '2019-10-12 18:18:10'),
(2169, 1, 'admin/delivery_boys/4/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:18:13', '2019-10-12 18:18:13'),
(2170, 1, 'admin/delivery_boys', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:18:16', '2019-10-12 18:18:16'),
(2171, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:18:34', '2019-10-12 18:18:34'),
(2172, 1, 'admin/view_orders/4', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:18:37', '2019-10-12 18:18:37'),
(2173, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:28:48', '2019-10-12 18:28:48'),
(2174, 1, 'admin/orders/4/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:28:57', '2019-10-12 18:28:57'),
(2175, 1, 'admin/orders/4', 'PUT', '106.217.16.75', '{\"order_id\":\"00004\",\"delivered_by\":\"4\",\"status\":\"7\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:29:00', '2019-10-12 18:29:00'),
(2176, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:29:01', '2019-10-12 18:29:01'),
(2177, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:29:25', '2019-10-12 18:29:25'),
(2178, 1, 'admin/view_orders/5', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:29:28', '2019-10-12 18:29:28'),
(2179, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:29:33', '2019-10-12 18:29:33'),
(2180, 1, 'admin/orders/5/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:29:40', '2019-10-12 18:29:40'),
(2181, 1, 'admin/orders/5', 'PUT', '106.217.16.75', '{\"order_id\":\"00005\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:29:49', '2019-10-12 18:29:49'),
(2182, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:29:50', '2019-10-12 18:29:50'),
(2183, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:30:22', '2019-10-12 18:30:22'),
(2184, 1, 'admin/orders/5/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:30:27', '2019-10-12 18:30:27'),
(2185, 1, 'admin/orders/5', 'PUT', '106.217.16.75', '{\"order_id\":\"00005\",\"delivered_by\":\"4\",\"status\":\"5\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:30:35', '2019-10-12 18:30:35'),
(2186, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:30:36', '2019-10-12 18:30:36'),
(2187, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:31:18', '2019-10-12 18:31:18'),
(2188, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:32:09', '2019-10-12 18:32:09'),
(2189, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:33:16', '2019-10-12 18:33:16'),
(2190, 1, 'admin/view_orders/6', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:33:38', '2019-10-12 18:33:38'),
(2191, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:33:41', '2019-10-12 18:33:41'),
(2192, 1, 'admin/orders/6/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:33:58', '2019-10-12 18:33:58'),
(2193, 1, 'admin/orders/6', 'PUT', '106.217.16.75', '{\"order_id\":\"00006\",\"delivered_by\":\"4\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:34:10', '2019-10-12 18:34:10'),
(2194, 1, 'admin/orders/6/edit', 'GET', '106.217.16.75', '[]', '2019-10-12 18:34:11', '2019-10-12 18:34:11'),
(2195, 1, 'admin/orders/6', 'PUT', '106.217.16.75', '{\"order_id\":\"00006\",\"delivered_by\":null,\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\"}', '2019-10-12 18:34:15', '2019-10-12 18:34:15'),
(2196, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:34:15', '2019-10-12 18:34:15'),
(2197, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:34:20', '2019-10-12 18:34:20'),
(2198, 1, 'admin/orders/6/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:34:24', '2019-10-12 18:34:24'),
(2199, 1, 'admin/orders/6', 'PUT', '106.217.16.75', '{\"order_id\":\"00006\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:34:31', '2019-10-12 18:34:31'),
(2200, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:34:32', '2019-10-12 18:34:32'),
(2201, 1, 'admin/orders/6/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:34:36', '2019-10-12 18:34:36'),
(2202, 1, 'admin/orders/6', 'PUT', '106.217.16.75', '{\"order_id\":\"00006\",\"delivered_by\":\"4\",\"status\":\"3\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:34:46', '2019-10-12 18:34:46'),
(2203, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:34:47', '2019-10-12 18:34:47'),
(2204, 1, 'admin/view_orders/6', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:35:17', '2019-10-12 18:35:17'),
(2205, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:35:29', '2019-10-12 18:35:29'),
(2206, 1, 'admin/orders/6/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:35:32', '2019-10-12 18:35:32'),
(2207, 1, 'admin/orders/6', 'PUT', '106.217.16.75', '{\"order_id\":\"00006\",\"delivered_by\":\"4\",\"status\":\"5\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:35:36', '2019-10-12 18:35:36'),
(2208, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:35:37', '2019-10-12 18:35:37'),
(2209, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:38:01', '2019-10-12 18:38:01'),
(2210, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:39:52', '2019-10-12 18:39:52'),
(2211, 1, 'admin/orders/7/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:39:57', '2019-10-12 18:39:57'),
(2212, 1, 'admin/orders/7', 'PUT', '106.217.16.75', '{\"order_id\":\"00007\",\"delivered_by\":\"4\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:40:06', '2019-10-12 18:40:06'),
(2213, 1, 'admin/orders/7/edit', 'GET', '106.217.16.75', '[]', '2019-10-12 18:40:06', '2019-10-12 18:40:06'),
(2214, 1, 'admin/orders/7', 'PUT', '106.217.16.75', '{\"order_id\":\"00007\",\"delivered_by\":null,\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\"}', '2019-10-12 18:40:10', '2019-10-12 18:40:10'),
(2215, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:40:10', '2019-10-12 18:40:10'),
(2216, 1, 'admin/orders/7/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:40:14', '2019-10-12 18:40:14'),
(2217, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:40:21', '2019-10-12 18:40:21'),
(2218, 1, 'admin/orders/7/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:40:49', '2019-10-12 18:40:49'),
(2219, 1, 'admin/orders/7', 'PUT', '106.217.16.75', '{\"order_id\":\"00007\",\"delivered_by\":\"4\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:40:56', '2019-10-12 18:40:56'),
(2220, 1, 'admin/orders/7/edit', 'GET', '106.217.16.75', '[]', '2019-10-12 18:40:56', '2019-10-12 18:40:56'),
(2221, 1, 'admin/orders/7', 'PUT', '106.217.16.75', '{\"order_id\":\"00007\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\"}', '2019-10-12 18:41:01', '2019-10-12 18:41:01'),
(2222, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:41:03', '2019-10-12 18:41:03'),
(2223, 1, 'admin/orders/8/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:41:08', '2019-10-12 18:41:08'),
(2224, 1, 'admin/orders/8', 'PUT', '106.217.16.75', '{\"order_id\":\"00008\",\"delivered_by\":\"4\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:41:11', '2019-10-12 18:41:11'),
(2225, 1, 'admin/orders/8/edit', 'GET', '106.217.16.75', '[]', '2019-10-12 18:41:11', '2019-10-12 18:41:11'),
(2226, 1, 'admin/orders/8', 'PUT', '106.217.16.75', '{\"order_id\":\"00008\",\"delivered_by\":null,\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\"}', '2019-10-12 18:41:15', '2019-10-12 18:41:15'),
(2227, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:41:15', '2019-10-12 18:41:15'),
(2228, 1, 'admin/view_orders/8', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:41:25', '2019-10-12 18:41:25'),
(2229, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:41:28', '2019-10-12 18:41:28'),
(2230, 1, 'admin/orders/8/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:41:31', '2019-10-12 18:41:31'),
(2231, 1, 'admin/orders', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:41:37', '2019-10-12 18:41:37'),
(2232, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:42:04', '2019-10-12 18:42:04'),
(2233, 1, 'admin/orders/9/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:42:09', '2019-10-12 18:42:09'),
(2234, 1, 'admin/orders/9', 'PUT', '106.217.16.75', '{\"order_id\":\"00009\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:42:17', '2019-10-12 18:42:17'),
(2235, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:42:18', '2019-10-12 18:42:18'),
(2236, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:43:27', '2019-10-12 18:43:27'),
(2237, 1, 'admin/orders/10/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:44:41', '2019-10-12 18:44:41'),
(2238, 1, 'admin/orders/10', 'PUT', '106.217.16.75', '{\"order_id\":\"00010\",\"delivered_by\":\"4\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:44:48', '2019-10-12 18:44:48'),
(2239, 1, 'admin/orders/10/edit', 'GET', '106.217.16.75', '[]', '2019-10-12 18:44:49', '2019-10-12 18:44:49'),
(2240, 1, 'admin/orders/10', 'PUT', '106.217.16.75', '{\"order_id\":\"00010\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\"}', '2019-10-12 18:45:02', '2019-10-12 18:45:02'),
(2241, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:45:13', '2019-10-12 18:45:13'),
(2242, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:45:29', '2019-10-12 18:45:29'),
(2243, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:45:58', '2019-10-12 18:45:58'),
(2244, 1, 'admin/orders/11/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:46:29', '2019-10-12 18:46:29'),
(2245, 1, 'admin/orders/11', 'PUT', '106.217.16.75', '{\"order_id\":\"00011\",\"delivered_by\":\"4\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:46:36', '2019-10-12 18:46:36'),
(2246, 1, 'admin/orders/11/edit', 'GET', '106.217.16.75', '[]', '2019-10-12 18:46:36', '2019-10-12 18:46:36'),
(2247, 1, 'admin/orders/11', 'PUT', '106.217.16.75', '{\"order_id\":\"00011\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\"}', '2019-10-12 18:46:51', '2019-10-12 18:46:51'),
(2248, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:46:52', '2019-10-12 18:46:52'),
(2249, 1, 'admin/orders/8/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:47:10', '2019-10-12 18:47:10'),
(2250, 1, 'admin/orders/8', 'PUT', '106.217.16.75', '{\"order_id\":\"00008\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:47:14', '2019-10-12 18:47:14'),
(2251, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:47:15', '2019-10-12 18:47:15'),
(2252, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:47:42', '2019-10-12 18:47:42'),
(2253, 1, 'admin/orders/12/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:47:48', '2019-10-12 18:47:48'),
(2254, 1, 'admin/orders/12', 'PUT', '106.217.16.75', '{\"order_id\":\"00012\",\"delivered_by\":\"4\",\"status\":\"1\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:47:53', '2019-10-12 18:47:53'),
(2255, 1, 'admin/orders/12/edit', 'GET', '106.217.16.75', '[]', '2019-10-12 18:47:53', '2019-10-12 18:47:53'),
(2256, 1, 'admin/orders/12', 'PUT', '106.217.16.75', '{\"order_id\":\"00012\",\"delivered_by\":null,\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\"}', '2019-10-12 18:47:57', '2019-10-12 18:47:57'),
(2257, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:47:57', '2019-10-12 18:47:57'),
(2258, 1, 'admin/orders/12/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:48:08', '2019-10-12 18:48:08'),
(2259, 1, 'admin/orders/12', 'PUT', '106.217.16.75', '{\"order_id\":\"00012\",\"delivered_by\":null,\"status\":\"3\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:48:12', '2019-10-12 18:48:12'),
(2260, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:48:12', '2019-10-12 18:48:12'),
(2261, 1, 'admin/orders/12/edit', 'GET', '106.217.16.75', '{\"_pjax\":\"#pjax-container\"}', '2019-10-12 18:48:15', '2019-10-12 18:48:15'),
(2262, 1, 'admin/orders/12', 'PUT', '106.217.16.75', '{\"order_id\":\"00012\",\"delivered_by\":\"4\",\"status\":\"2\",\"_token\":\"QJXPPqyuuOPZ6UetbdHPtbDf4QucTyAmfVR9xYgB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-12 18:49:12', '2019-10-12 18:49:12'),
(2263, 1, 'admin/orders', 'GET', '106.217.16.75', '[]', '2019-10-12 18:49:13', '2019-10-12 18:49:13'),
(2264, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:18:33', '2019-10-13 03:18:33'),
(2265, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:18:49', '2019-10-13 03:18:49'),
(2266, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:20:34', '2019-10-13 03:20:34'),
(2267, 1, 'admin/delivery_boys/create', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:20:38', '2019-10-13 03:20:38'),
(2268, 1, 'admin/delivery_boys', 'POST', '106.217.17.184', '{\"delivery_boy_name\":null,\"phone_number\":null,\"email\":null,\"password\":null,\"status\":\"1\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-13 03:20:45', '2019-10-13 03:20:45'),
(2269, 1, 'admin/delivery_boys/create', 'GET', '106.217.17.184', '[]', '2019-10-13 03:20:45', '2019-10-13 03:20:45'),
(2270, 1, 'admin/delivery_boys', 'POST', '106.217.17.184', '{\"delivery_boy_name\":\"Mansoor\",\"phone_number\":\"9988774455\",\"email\":\"mansoor@yopmail.com\",\"password\":\"mansoor123\",\"status\":\"1\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\"}', '2019-10-13 03:24:41', '2019-10-13 03:24:41'),
(2271, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '[]', '2019-10-13 03:24:43', '2019-10-13 03:24:43'),
(2272, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:27:15', '2019-10-13 03:27:15'),
(2273, 1, 'admin/orders/7/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:27:25', '2019-10-13 03:27:25'),
(2274, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:30:52', '2019-10-13 03:30:52'),
(2275, 1, 'admin/orders/7/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:30:58', '2019-10-13 03:30:58'),
(2276, 1, 'admin/orders/7', 'PUT', '106.217.17.184', '{\"order_id\":\"00007\",\"delivered_by\":\"5\",\"status\":\"5\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-13 03:31:18', '2019-10-13 03:31:18'),
(2277, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:31:20', '2019-10-13 03:31:20'),
(2278, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:32:08', '2019-10-13 03:32:08'),
(2279, 1, 'admin/orders/8/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:32:16', '2019-10-13 03:32:16'),
(2280, 1, 'admin/orders/8', 'PUT', '106.217.17.184', '{\"order_id\":\"00008\",\"delivered_by\":\"5\",\"status\":\"2\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-13 03:32:21', '2019-10-13 03:32:21'),
(2281, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:32:22', '2019-10-13 03:32:22'),
(2282, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:33:04', '2019-10-13 03:33:04'),
(2283, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:33:07', '2019-10-13 03:33:07'),
(2284, 1, 'admin/orders/8/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:33:11', '2019-10-13 03:33:11'),
(2285, 1, 'admin/delivery_boys/5/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:33:22', '2019-10-13 03:33:22'),
(2286, 1, 'admin/delivery_boys/5', 'PUT', '106.217.17.184', '{\"delivery_boy_name\":\"Vijay Shankar\",\"phone_number\":\"9988774455\",\"email\":\"mansoor@yopmail.com\",\"password\":\"$2y$12$yhpOKk1GweWACehTeZiEUuuExwmAo.Fs.SSUM6wyoreXjcEZj9ae2\",\"status\":\"1\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-13 03:33:32', '2019-10-13 03:33:32'),
(2287, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '[]', '2019-10-13 03:33:33', '2019-10-13 03:33:33'),
(2288, 1, 'admin/orders/8/edit', 'GET', '106.217.17.184', '[]', '2019-10-13 03:33:41', '2019-10-13 03:33:41'),
(2289, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:33:50', '2019-10-13 03:33:50'),
(2290, 1, 'admin/orders/8/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:33:57', '2019-10-13 03:33:57'),
(2291, 1, 'admin/orders/8', 'PUT', '106.217.17.184', '{\"order_id\":\"00008\",\"delivered_by\":\"4\",\"status\":\"3\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-13 03:34:15', '2019-10-13 03:34:15'),
(2292, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:34:16', '2019-10-13 03:34:16'),
(2293, 1, 'admin/orders/8/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:34:44', '2019-10-13 03:34:44'),
(2294, 1, 'admin/orders/8', 'PUT', '106.217.17.184', '{\"order_id\":\"00008\",\"delivered_by\":\"5\",\"status\":\"5\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-13 03:34:51', '2019-10-13 03:34:51'),
(2295, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:34:52', '2019-10-13 03:34:52'),
(2296, 1, 'admin/services', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:37:45', '2019-10-13 03:37:45'),
(2297, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:37:51', '2019-10-13 03:37:51'),
(2298, 1, 'admin/delivery_boys/5/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:38:08', '2019-10-13 03:38:08'),
(2299, 1, 'admin/delivery_boys/5', 'PUT', '106.217.17.184', '{\"delivery_boy_name\":\"Vijay Shankar\",\"phone_number\":\"9988774455\",\"email\":\"mansoor@yopmail.com\",\"password\":\"$2y$12$yhpOKk1GweWACehTeZiEUuuExwmAo.Fs.SSUM6wyoreXjcEZj9ae2\",\"status\":\"2\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-13 03:38:12', '2019-10-13 03:38:12'),
(2300, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '[]', '2019-10-13 03:38:13', '2019-10-13 03:38:13'),
(2301, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:38:40', '2019-10-13 03:38:40'),
(2302, 1, 'admin/orders/9/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:38:52', '2019-10-13 03:38:52'),
(2303, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '[]', '2019-10-13 03:39:06', '2019-10-13 03:39:06'),
(2304, 1, 'admin/delivery_boys/5/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:39:12', '2019-10-13 03:39:12'),
(2305, 1, 'admin/delivery_boys/5', 'PUT', '106.217.17.184', '{\"delivery_boy_name\":\"Vijay Shankar\",\"phone_number\":\"9988774455\",\"email\":\"mansoor@yopmail.com\",\"password\":\"$2y$12$yhpOKk1GweWACehTeZiEUuuExwmAo.Fs.SSUM6wyoreXjcEZj9ae2\",\"status\":\"1\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-13 03:39:16', '2019-10-13 03:39:16'),
(2306, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '[]', '2019-10-13 03:39:17', '2019-10-13 03:39:17'),
(2307, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '[]', '2019-10-13 03:39:19', '2019-10-13 03:39:19'),
(2308, 1, 'admin/orders/9/edit', 'GET', '106.217.17.184', '[]', '2019-10-13 03:39:23', '2019-10-13 03:39:23'),
(2309, 1, 'admin/orders/9', 'PUT', '106.217.17.184', '{\"order_id\":\"00009\",\"delivered_by\":\"5\",\"status\":\"3\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\"}', '2019-10-13 03:39:35', '2019-10-13 03:39:35'),
(2310, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:39:37', '2019-10-13 03:39:37'),
(2311, 1, 'admin', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:41:12', '2019-10-13 03:41:12'),
(2312, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '[]', '2019-10-13 03:41:18', '2019-10-13 03:41:18'),
(2313, 1, 'admin/delivery_boys/4/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:41:25', '2019-10-13 03:41:25'),
(2314, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:41:35', '2019-10-13 03:41:35'),
(2315, 1, 'admin/auth/users', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:41:48', '2019-10-13 03:41:48'),
(2316, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:41:55', '2019-10-13 03:41:55'),
(2317, 1, 'admin/delivery_boys/create', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:42:05', '2019-10-13 03:42:05'),
(2318, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:42:59', '2019-10-13 03:42:59'),
(2319, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:43:09', '2019-10-13 03:43:09'),
(2320, 1, 'admin/orders/9/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:43:14', '2019-10-13 03:43:14');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2321, 1, 'admin/orders/9', 'PUT', '106.217.17.184', '{\"order_id\":\"00009\",\"delivered_by\":\"4\",\"status\":\"5\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-13 03:44:20', '2019-10-13 03:44:20'),
(2322, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:44:21', '2019-10-13 03:44:21'),
(2323, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:47:01', '2019-10-13 03:47:01'),
(2324, 1, 'admin/orders/13/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:47:27', '2019-10-13 03:47:27'),
(2325, 1, 'admin/orders/13', 'PUT', '106.217.17.184', '{\"order_id\":\"00013\",\"delivered_by\":\"5\",\"status\":\"2\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-13 03:47:38', '2019-10-13 03:47:38'),
(2326, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:47:39', '2019-10-13 03:47:39'),
(2327, 1, 'admin/orders/13/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:49:23', '2019-10-13 03:49:23'),
(2328, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:49:34', '2019-10-13 03:49:34'),
(2329, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:49:43', '2019-10-13 03:49:43'),
(2330, 1, 'admin/orders/13/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:49:51', '2019-10-13 03:49:51'),
(2331, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:49:54', '2019-10-13 03:49:54'),
(2332, 1, 'admin/orders/13/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:50:07', '2019-10-13 03:50:07'),
(2333, 1, 'admin/orders/13', 'PUT', '106.217.17.184', '{\"order_id\":\"00013\",\"delivered_by\":\"5\",\"status\":\"5\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-13 03:50:14', '2019-10-13 03:50:14'),
(2334, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:50:15', '2019-10-13 03:50:15'),
(2335, 1, 'admin/orders/13/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:50:22', '2019-10-13 03:50:22'),
(2336, 1, 'admin/orders/13', 'PUT', '106.217.17.184', '{\"order_id\":\"00013\",\"delivered_by\":\"5\",\"status\":\"5\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-13 03:50:40', '2019-10-13 03:50:40'),
(2337, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 03:50:41', '2019-10-13 03:50:41'),
(2338, 1, 'admin/orders/13/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 03:50:46', '2019-10-13 03:50:46'),
(2339, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 04:07:52', '2019-10-13 04:07:52'),
(2340, 1, 'admin', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:07:59', '2019-10-13 04:07:59'),
(2341, 1, 'admin/customers', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:08:08', '2019-10-13 04:08:08'),
(2342, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:08:17', '2019-10-13 04:08:17'),
(2343, 1, 'admin/orders/12', 'DELETE', '106.217.17.184', '{\"_method\":\"delete\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\"}', '2019-10-13 04:08:38', '2019-10-13 04:08:38'),
(2344, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:08:39', '2019-10-13 04:08:39'),
(2345, 1, 'admin/orders/11', 'DELETE', '106.217.17.184', '{\"_method\":\"delete\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\"}', '2019-10-13 04:08:51', '2019-10-13 04:08:51'),
(2346, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:08:52', '2019-10-13 04:08:52'),
(2347, 1, 'admin/orders/9', 'DELETE', '106.217.17.184', '{\"_method\":\"delete\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\"}', '2019-10-13 04:09:24', '2019-10-13 04:09:24'),
(2348, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:09:24', '2019-10-13 04:09:24'),
(2349, 1, 'admin/orders/13', 'DELETE', '106.217.17.184', '{\"_method\":\"delete\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\"}', '2019-10-13 04:11:23', '2019-10-13 04:11:23'),
(2350, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:11:23', '2019-10-13 04:11:23'),
(2351, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 04:19:14', '2019-10-13 04:19:14'),
(2352, 1, 'admin/orders/7/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:19:39', '2019-10-13 04:19:39'),
(2353, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:19:43', '2019-10-13 04:19:43'),
(2354, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:20:16', '2019-10-13 04:20:16'),
(2355, 1, 'admin/delivery_boys/4/edit', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:20:23', '2019-10-13 04:20:23'),
(2356, 1, 'admin/delivery_boys/4', 'PUT', '106.217.17.184', '{\"delivery_boy_name\":\"Mansoor\",\"phone_number\":\"9988552233\",\"email\":\"mansoorhameed2011@gmail.com\",\"password\":\"$2y$12$W8xgF1CgZ2CwCZpQUUwtPObBfKMbS5ib34Fs5KLRIJxqCw0Rj88cu\",\"status\":\"1\",\"_token\":\"1jWLiujwKDFxfwhfsQHfMoWcARleUOCHabJB7BOm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-13 04:20:36', '2019-10-13 04:20:36'),
(2357, 1, 'admin/delivery_boys', 'GET', '106.217.17.184', '[]', '2019-10-13 04:20:37', '2019-10-13 04:20:37'),
(2358, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:22:28', '2019-10-13 04:22:28'),
(2359, 1, 'admin/orders', 'GET', '106.217.17.184', '[]', '2019-10-13 04:22:48', '2019-10-13 04:22:48'),
(2360, 1, 'admin/orders', 'GET', '106.217.17.184', '{\"_pjax\":\"#pjax-container\"}', '2019-10-13 04:47:30', '2019-10-13 04:47:30'),
(2361, 1, 'admin', 'GET', '106.198.40.147', '[]', '2019-10-14 05:26:39', '2019-10-14 05:26:39'),
(2362, 1, 'admin/app_settings', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 05:26:54', '2019-10-14 05:26:54'),
(2363, 1, 'admin/app_settings/1/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 05:26:57', '2019-10-14 05:26:57'),
(2364, 1, 'admin/delivery_boys', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 05:35:49', '2019-10-14 05:35:49'),
(2365, 1, 'admin/delivery_boys/create', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 05:35:54', '2019-10-14 05:35:54'),
(2366, 1, 'admin/delivery_boys', 'POST', '106.198.40.147', '{\"delivery_boy_name\":\"testdelivery\",\"phone_number\":\"3210654987\",\"email\":\"testdelivery@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-10-14 05:36:35', '2019-10-14 05:36:35'),
(2367, 1, 'admin/delivery_boys', 'GET', '106.198.40.147', '[]', '2019-10-14 05:36:36', '2019-10-14 05:36:36'),
(2368, 1, 'admin/orders', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 06:07:01', '2019-10-14 06:07:01'),
(2369, 1, 'admin/orders/10/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 06:07:04', '2019-10-14 06:07:04'),
(2370, 1, 'admin/orders', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 06:07:08', '2019-10-14 06:07:08'),
(2371, 1, 'admin/view_orders/10', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 06:07:12', '2019-10-14 06:07:12'),
(2372, 1, 'admin/orders', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 06:07:49', '2019-10-14 06:07:49'),
(2373, 1, 'admin/orders/10/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 06:10:00', '2019-10-14 06:10:00'),
(2374, 1, 'admin/orders/10', 'PUT', '106.198.40.147', '{\"order_id\":\"00010\",\"delivered_by\":null,\"status\":\"4\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-14 06:10:07', '2019-10-14 06:10:07'),
(2375, 1, 'admin/orders/10/edit', 'GET', '106.198.40.147', '[]', '2019-10-14 06:10:07', '2019-10-14 06:10:07'),
(2376, 1, 'admin/orders/10', 'PUT', '106.198.40.147', '{\"order_id\":\"00010\",\"delivered_by\":\"2\",\"status\":\"4\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\"}', '2019-10-14 06:10:11', '2019-10-14 06:10:11'),
(2377, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 06:10:20', '2019-10-14 06:10:20'),
(2378, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 11:49:07', '2019-10-14 11:49:07'),
(2379, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:49:12', '2019-10-14 11:49:12'),
(2380, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":null,\"status\":\"1\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-14 11:49:14', '2019-10-14 11:49:14'),
(2381, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '[]', '2019-10-14 11:49:14', '2019-10-14 11:49:14'),
(2382, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":\"6\",\"status\":\"1\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\"}', '2019-10-14 11:49:49', '2019-10-14 11:49:49'),
(2383, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '[]', '2019-10-14 11:49:49', '2019-10-14 11:49:49'),
(2384, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":\"6\",\"status\":\"2\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\"}', '2019-10-14 11:49:57', '2019-10-14 11:49:57'),
(2385, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 11:49:58', '2019-10-14 11:49:58'),
(2386, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:50:08', '2019-10-14 11:50:08'),
(2387, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":\"1\",\"status\":\"2\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-14 11:50:18', '2019-10-14 11:50:18'),
(2388, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 11:50:20', '2019-10-14 11:50:20'),
(2389, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:50:30', '2019-10-14 11:50:30'),
(2390, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":\"6\",\"status\":\"2\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-14 11:51:41', '2019-10-14 11:51:41'),
(2391, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 11:51:43', '2019-10-14 11:51:43'),
(2392, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:54:34', '2019-10-14 11:54:34'),
(2393, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":\"3\",\"status\":\"2\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-14 11:56:01', '2019-10-14 11:56:01'),
(2394, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 11:56:04', '2019-10-14 11:56:04'),
(2395, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:56:16', '2019-10-14 11:56:16'),
(2396, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":\"6\",\"status\":\"2\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-14 11:56:20', '2019-10-14 11:56:20'),
(2397, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 11:56:21', '2019-10-14 11:56:21'),
(2398, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:57:29', '2019-10-14 11:57:29'),
(2399, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":\"1\",\"status\":\"2\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-14 11:57:33', '2019-10-14 11:57:33'),
(2400, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 11:57:34', '2019-10-14 11:57:34'),
(2401, 1, 'admin/orders/14/edit', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 11:57:39', '2019-10-14 11:57:39'),
(2402, 1, 'admin/orders/14', 'PUT', '106.198.40.147', '{\"order_id\":\"00014\",\"delivered_by\":\"6\",\"status\":\"2\",\"_token\":\"UvJiDQ41opIfI4LKJra5CojboW1ECCoi1tecHdgJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-10-14 11:57:43', '2019-10-14 11:57:43'),
(2403, 1, 'admin/orders', 'GET', '106.198.40.147', '[]', '2019-10-14 11:57:44', '2019-10-14 11:57:44'),
(2404, 1, 'admin/auth/login', 'GET', '106.198.40.147', '[]', '2019-10-14 14:33:17', '2019-10-14 14:33:17'),
(2405, 1, 'admin', 'GET', '106.198.40.147', '[]', '2019-10-14 14:33:17', '2019-10-14 14:33:17'),
(2406, 1, 'admin/customers', 'GET', '106.198.40.147', '{\"_pjax\":\"#pjax-container\"}', '2019-10-14 14:33:26', '2019-10-14 14:33:26'),
(2407, 1, 'admin/customers', 'GET', '106.198.40.147', '[]', '2019-10-14 16:21:35', '2019-10-14 16:21:35'),
(2408, 1, 'admin', 'GET', '119.160.117.175', '[]', '2019-12-24 00:30:19', '2019-12-24 00:30:19'),
(2409, 1, 'admin', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:30:26', '2019-12-24 00:30:26'),
(2410, 1, 'admin/customers', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:30:29', '2019-12-24 00:30:29'),
(2411, 1, 'admin/customers', 'GET', '119.160.117.175', '[]', '2019-12-24 00:31:58', '2019-12-24 00:31:58'),
(2412, 1, 'admin/labels', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:32:11', '2019-12-24 00:32:11'),
(2413, 1, 'admin/services', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:32:14', '2019-12-24 00:32:14'),
(2414, 1, 'admin/services/1/edit', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:32:21', '2019-12-24 00:32:21'),
(2415, 1, 'admin/products', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:54:13', '2019-12-24 00:54:13'),
(2416, 1, 'admin/products/1/edit', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:54:16', '2019-12-24 00:54:16'),
(2417, 1, 'admin/products', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:54:22', '2019-12-24 00:54:22'),
(2418, 1, 'admin/products/3/edit', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:54:25', '2019-12-24 00:54:25'),
(2419, 1, 'admin/products', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:54:29', '2019-12-24 00:54:29'),
(2420, 1, 'admin/products/11/edit', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:54:35', '2019-12-24 00:54:35'),
(2421, 1, 'admin/products', 'GET', '119.160.117.175', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 00:54:39', '2019-12-24 00:54:39'),
(2422, 1, 'admin', 'GET', '119.160.116.38', '[]', '2019-12-24 15:00:06', '2019-12-24 15:00:06'),
(2423, 1, 'admin/orders', 'GET', '119.160.116.38', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 15:00:14', '2019-12-24 15:00:14'),
(2424, 1, 'admin/labels', 'GET', '119.160.116.38', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 15:00:23', '2019-12-24 15:00:23'),
(2425, 1, 'admin/auth/users', 'GET', '119.160.116.38', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 15:00:27', '2019-12-24 15:00:27'),
(2426, 1, 'admin/auth/menu', 'GET', '119.160.116.38', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 15:00:30', '2019-12-24 15:00:30'),
(2427, 1, 'admin/auth/users', 'GET', '119.160.116.38', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 15:00:33', '2019-12-24 15:00:33'),
(2428, 1, 'admin/customers', 'GET', '119.160.116.38', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 15:00:36', '2019-12-24 15:00:36'),
(2429, 1, 'admin', 'GET', '119.160.117.199', '[]', '2019-12-24 18:14:02', '2019-12-24 18:14:02'),
(2430, 1, 'admin/customers', 'GET', '119.160.117.199', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 18:14:09', '2019-12-24 18:14:09'),
(2431, 1, 'admin/customers', 'GET', '119.160.117.199', '{\"_pjax\":\"#pjax-container\"}', '2019-12-24 18:14:24', '2019-12-24 18:14:24'),
(2432, 1, 'admin', 'GET', '119.160.119.199', '[]', '2019-12-24 18:39:30', '2019-12-24 18:39:30'),
(2433, 1, 'admin', 'GET', '119.160.119.199', '[]', '2019-12-24 18:39:35', '2019-12-24 18:39:35'),
(2434, 1, 'admin', 'GET', '119.160.117.149', '[]', '2019-12-25 11:01:46', '2019-12-25 11:01:46'),
(2435, 1, 'admin', 'GET', '119.160.118.181', '[]', '2019-12-28 19:33:35', '2019-12-28 19:33:35'),
(2436, 1, 'admin/orders', 'GET', '119.160.118.181', '{\"_pjax\":\"#pjax-container\"}', '2019-12-28 19:33:41', '2019-12-28 19:33:41'),
(2437, 1, 'admin/delivery_boys', 'GET', '119.160.118.181', '{\"_pjax\":\"#pjax-container\"}', '2019-12-28 19:33:56', '2019-12-28 19:33:56'),
(2438, 1, 'admin/delivery_boys/create', 'GET', '119.160.118.181', '{\"_pjax\":\"#pjax-container\"}', '2019-12-28 19:34:24', '2019-12-28 19:34:24'),
(2439, 1, 'admin/delivery_boys', 'POST', '119.160.118.181', '{\"delivery_boy_name\":\"DeliveryBoy1\",\"phone_number\":\"0456154335\",\"email\":\"usama806@gmail.com\",\"password\":\"123\",\"status\":\"1\",\"_token\":\"kCUqqcgZGlLIFLEJeDWGrPxFlC46uSQ03Iu1J8AT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-12-28 19:34:35', '2019-12-28 19:34:35'),
(2440, 1, 'admin/delivery_boys/create', 'GET', '119.160.118.181', '[]', '2019-12-28 19:34:36', '2019-12-28 19:34:36'),
(2441, 1, 'admin/delivery_boys', 'POST', '119.160.118.181', '{\"delivery_boy_name\":\"DeliveryBoy1\",\"phone_number\":\"0456154335\",\"email\":\"usama806@gmail.com\",\"password\":\"123\",\"status\":\"1\",\"_token\":\"kCUqqcgZGlLIFLEJeDWGrPxFlC46uSQ03Iu1J8AT\"}', '2019-12-28 19:35:04', '2019-12-28 19:35:04'),
(2442, 1, 'admin/delivery_boys', 'GET', '119.160.118.181', '[]', '2019-12-28 19:35:06', '2019-12-28 19:35:06'),
(2443, 1, 'admin/delivery_boys/7/edit', 'GET', '119.160.118.181', '{\"_pjax\":\"#pjax-container\"}', '2019-12-28 19:35:40', '2019-12-28 19:35:40'),
(2444, 1, 'admin/delivery_boys/7', 'PUT', '119.160.118.181', '{\"delivery_boy_name\":\"DeliveryBoy1\",\"phone_number\":\"0456154335\",\"email\":\"usama806@gmail.com\",\"password\":\"123\",\"status\":\"1\",\"_token\":\"kCUqqcgZGlLIFLEJeDWGrPxFlC46uSQ03Iu1J8AT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2019-12-28 19:35:45', '2019-12-28 19:35:45'),
(2445, 1, 'admin/delivery_boys', 'GET', '119.160.118.181', '[]', '2019-12-28 19:35:46', '2019-12-28 19:35:46'),
(2446, 1, 'admin', 'GET', '119.160.119.208', '[]', '2019-12-29 15:28:13', '2019-12-29 15:28:13'),
(2447, 1, 'admin', 'GET', '119.160.119.208', '{\"_pjax\":\"#pjax-container\"}', '2019-12-29 15:28:19', '2019-12-29 15:28:19'),
(2448, 1, 'admin/orders', 'GET', '119.160.119.208', '{\"_pjax\":\"#pjax-container\"}', '2019-12-29 15:28:22', '2019-12-29 15:28:22'),
(2449, 1, 'admin/delivery_boys', 'GET', '119.160.119.208', '{\"_pjax\":\"#pjax-container\"}', '2019-12-29 15:28:32', '2019-12-29 15:28:32'),
(2450, 1, 'admin/orders', 'GET', '119.160.119.208', '{\"_pjax\":\"#pjax-container\"}', '2019-12-29 15:28:40', '2019-12-29 15:28:40'),
(2451, 1, 'admin/view_orders/14', 'GET', '119.160.119.208', '{\"_pjax\":\"#pjax-container\"}', '2019-12-29 15:28:45', '2019-12-29 15:28:45'),
(2452, 1, 'admin/orders', 'GET', '119.160.119.208', '{\"_pjax\":\"#pjax-container\"}', '2019-12-29 15:28:48', '2019-12-29 15:28:48'),
(2453, 1, 'admin/orders/14/edit', 'GET', '119.160.119.208', '{\"_pjax\":\"#pjax-container\"}', '2019-12-29 15:28:50', '2019-12-29 15:28:50'),
(2454, 1, 'admin/orders/14', 'PUT', '119.160.119.208', '{\"order_id\":\"00014\",\"delivered_by\":\"7\",\"status\":\"2\",\"_token\":\"zqwgpGjC0Bi5L3Xb30zR2w47PHaQPlveeaK6D8Y2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2019-12-29 15:28:56', '2019-12-29 15:28:56'),
(2455, 1, 'admin/orders', 'GET', '119.160.119.208', '[]', '2019-12-29 15:28:59', '2019-12-29 15:28:59'),
(2456, 1, 'admin/delivery_boys', 'GET', '119.160.119.208', '{\"_pjax\":\"#pjax-container\"}', '2019-12-29 15:29:38', '2019-12-29 15:29:38'),
(2457, 1, 'admin', 'GET', '192.30.131.143', '[]', '2020-01-09 17:12:11', '2020-01-09 17:12:11'),
(2458, 1, 'admin/customers', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:12:34', '2020-01-09 17:12:34'),
(2459, 1, 'admin/delivery_boys', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:12:54', '2020-01-09 17:12:54'),
(2460, 1, 'admin/delivery_boys/create', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:13:04', '2020-01-09 17:13:04'),
(2461, 1, 'admin/delivery_boys', 'POST', '192.30.131.143', '{\"delivery_boy_name\":\"Rith Delivery\",\"phone_number\":\"7783774653\",\"email\":\"test2@test.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"P1kMQBrNxr7toStmpPTOd9UjyP7nKJFhPbZgpuSK\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-01-09 17:13:27', '2020-01-09 17:13:27'),
(2462, 1, 'admin/delivery_boys', 'GET', '192.30.131.143', '[]', '2020-01-09 17:13:31', '2020-01-09 17:13:31'),
(2463, 1, 'admin/orders', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:15:32', '2020-01-09 17:15:32'),
(2464, 1, 'admin/orders', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:16:15', '2020-01-09 17:16:15'),
(2465, 1, 'admin/orders', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:17:18', '2020-01-09 17:17:18'),
(2466, 1, 'admin/orders', 'GET', '192.30.131.143', '[]', '2020-01-09 17:29:49', '2020-01-09 17:29:49'),
(2467, 1, 'admin/orders', 'GET', '192.30.131.143', '[]', '2020-01-09 17:31:19', '2020-01-09 17:31:19'),
(2468, 1, 'admin/orders', 'GET', '192.30.131.143', '[]', '2020-01-09 17:31:49', '2020-01-09 17:31:49'),
(2469, 1, 'admin', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:31:52', '2020-01-09 17:31:52'),
(2470, 1, 'admin/customers', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:32:39', '2020-01-09 17:32:39'),
(2471, 1, 'admin/orders', 'GET', '192.30.131.143', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:32:50', '2020-01-09 17:32:50'),
(2472, 1, 'admin', 'GET', '180.244.233.22', '[]', '2020-01-21 10:04:34', '2020-01-21 10:04:34'),
(2473, 1, 'admin', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 10:05:03', '2020-01-21 10:05:03'),
(2474, 1, 'admin/delivery_boys', 'GET', '180.244.233.22', '[]', '2020-01-21 10:05:29', '2020-01-21 10:05:29'),
(2475, 1, 'admin/delivery_boys/create', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 10:05:52', '2020-01-21 10:05:52'),
(2476, 1, 'admin/delivery_boys', 'POST', '180.244.233.22', '{\"delivery_boy_name\":\"yann\",\"phone_number\":\"082673837722\",\"email\":\"soeprye@gmail.com\",\"password\":\"admin123\",\"status\":\"1\",\"_token\":\"g82TbqzsO63KjtCuxV5JYsYQm2ZRgDv85goAGHmC\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-01-21 10:06:28', '2020-01-21 10:06:28'),
(2477, 1, 'admin/delivery_boys/create', 'GET', '180.244.233.22', '[]', '2020-01-21 10:06:28', '2020-01-21 10:06:28'),
(2478, 1, 'admin/delivery_boys', 'POST', '180.244.233.22', '{\"delivery_boy_name\":\"yann\",\"phone_number\":\"082673837722\",\"email\":\"soeprye@gmail.com\",\"password\":\"admin123\",\"status\":\"1\",\"_token\":\"g82TbqzsO63KjtCuxV5JYsYQm2ZRgDv85goAGHmC\"}', '2020-01-21 10:06:42', '2020-01-21 10:06:42'),
(2479, 1, 'admin/delivery_boys', 'GET', '180.244.233.22', '[]', '2020-01-21 10:06:44', '2020-01-21 10:06:44'),
(2480, 1, 'admin/categories', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:00:13', '2020-01-21 12:00:13'),
(2481, 1, 'admin/delivery_boys', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:00:19', '2020-01-21 12:00:19'),
(2482, 1, 'admin/orders', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:00:33', '2020-01-21 12:00:33'),
(2483, 1, 'admin/view_orders/3', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:00:48', '2020-01-21 12:00:48'),
(2484, 1, 'admin/delivery_boys', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:01:20', '2020-01-21 12:01:20'),
(2485, 1, 'admin/delivery_boys/9/edit', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:04:00', '2020-01-21 12:04:00'),
(2486, 1, 'admin/delivery_boys/9', 'PUT', '180.244.233.22', '{\"delivery_boy_name\":\"yann\",\"phone_number\":\"082673837722\",\"email\":\"yann@gmail.com\",\"password\":\"$2y$12$31dG6bY24iloAjJZ53OQquM5oWON8FkvDuFQG3TZytOzWmpGuOhR2\",\"status\":\"1\",\"_token\":\"g82TbqzsO63KjtCuxV5JYsYQm2ZRgDv85goAGHmC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-01-21 12:24:30', '2020-01-21 12:24:30'),
(2487, 1, 'admin/delivery_boys', 'GET', '180.244.233.22', '[]', '2020-01-21 12:24:31', '2020-01-21 12:24:31'),
(2488, 1, 'admin/delivery_boys', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:43:30', '2020-01-21 12:43:30'),
(2489, 1, 'admin/orders', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:43:32', '2020-01-21 12:43:32'),
(2490, 1, 'admin/view_orders/10', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:43:44', '2020-01-21 12:43:44'),
(2491, 1, 'admin/services', 'GET', '180.244.233.22', '{\"_pjax\":\"#pjax-container\"}', '2020-01-21 12:46:24', '2020-01-21 12:46:24'),
(2492, 1, 'admin', 'GET', '41.210.145.172', '[]', '2020-01-23 15:38:51', '2020-01-23 15:38:51'),
(2493, 1, 'admin', 'GET', '41.210.145.172', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 15:39:00', '2020-01-23 15:39:00'),
(2494, 1, 'admin/orders', 'GET', '41.210.145.172', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 15:39:01', '2020-01-23 15:39:01'),
(2495, 1, 'admin/orders', 'GET', '41.210.145.172', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 15:39:02', '2020-01-23 15:39:02'),
(2496, 1, 'admin/view_orders/3', 'GET', '41.210.145.172', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 15:39:06', '2020-01-23 15:39:06'),
(2497, 1, 'admin/services', 'GET', '41.210.145.172', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 15:39:14', '2020-01-23 15:39:14'),
(2498, 1, 'admin/customers', 'GET', '41.210.145.172', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 15:39:18', '2020-01-23 15:39:18'),
(2499, 1, 'admin/customers', 'GET', '41.210.145.172', '[]', '2020-01-23 16:01:24', '2020-01-23 16:01:24'),
(2500, 1, 'admin', 'GET', '157.46.12.172', '[]', '2020-02-19 20:00:53', '2020-02-19 20:00:53'),
(2501, 1, 'admin', 'GET', '112.79.232.28', '[]', '2020-02-19 20:02:58', '2020-02-19 20:02:58'),
(2502, 1, 'admin', 'GET', '103.104.182.36', '[]', '2020-02-19 20:25:52', '2020-02-19 20:25:52'),
(2503, 1, 'admin/fare_managements', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:27:02', '2020-02-19 20:27:02'),
(2504, 1, 'admin/categories', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:27:23', '2020-02-19 20:27:23'),
(2505, 1, 'admin/categories/3', 'DELETE', '103.104.182.36', '{\"_method\":\"delete\",\"_token\":\"gG8aFQsaXhBvhSY7Ft16nkASpuGn881FhrTD1SIl\"}', '2020-02-19 20:27:29', '2020-02-19 20:27:29'),
(2506, 1, 'admin/categories', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:27:29', '2020-02-19 20:27:29'),
(2507, 1, 'admin/categories/4', 'DELETE', '103.104.182.36', '{\"_method\":\"delete\",\"_token\":\"gG8aFQsaXhBvhSY7Ft16nkASpuGn881FhrTD1SIl\"}', '2020-02-19 20:27:33', '2020-02-19 20:27:33'),
(2508, 1, 'admin/categories', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:27:33', '2020-02-19 20:27:33'),
(2509, 1, 'admin/services', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:28:00', '2020-02-19 20:28:00'),
(2510, 1, 'admin/services/5', 'DELETE', '103.104.182.36', '{\"_method\":\"delete\",\"_token\":\"gG8aFQsaXhBvhSY7Ft16nkASpuGn881FhrTD1SIl\"}', '2020-02-19 20:28:07', '2020-02-19 20:28:07'),
(2511, 1, 'admin/services', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:28:07', '2020-02-19 20:28:07'),
(2512, 1, 'admin/fare_managements', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:28:53', '2020-02-19 20:28:53'),
(2513, 1, 'admin/app_settings', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:28:57', '2020-02-19 20:28:57'),
(2514, 1, 'admin/app_settings/1/edit', 'GET', '103.104.182.36', '{\"_pjax\":\"#pjax-container\"}', '2020-02-19 20:29:06', '2020-02-19 20:29:06'),
(2515, 1, 'admin/app_settings/1', 'PUT', '103.104.182.36', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9876543210\",\"email\":\"support@rithlaundry.com\",\"default_currency\":\"\\u20b9\",\"_token\":\"gG8aFQsaXhBvhSY7Ft16nkASpuGn881FhrTD1SIl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/app_settings\"}', '2020-02-19 20:29:53', '2020-02-19 20:29:53'),
(2516, 1, 'admin/app_settings', 'GET', '103.104.182.36', '[]', '2020-02-19 20:29:53', '2020-02-19 20:29:53'),
(2517, 1, 'admin', 'GET', '106.198.5.75', '[]', '2020-02-24 11:47:37', '2020-02-24 11:47:37'),
(2518, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:47:47', '2020-02-24 11:47:47'),
(2519, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:48:00', '2020-02-24 11:48:00'),
(2520, 1, 'admin/delivery_boys/create', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:48:10', '2020-02-24 11:48:10'),
(2521, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:48:27', '2020-02-24 11:48:27'),
(2522, 1, 'admin/orders/19/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:48:38', '2020-02-24 11:48:38'),
(2523, 1, 'admin/orders/19', 'PUT', '106.198.5.75', '{\"order_id\":\"00019\",\"delivered_by\":\"3\",\"status\":\"2\",\"_token\":\"Mj5b9mvIDrWnivI8hb5j0hQoiUjKpKikRmIpH56T\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2020-02-24 11:48:51', '2020-02-24 11:48:51'),
(2524, 1, 'admin/orders', 'GET', '106.198.5.75', '[]', '2020-02-24 11:48:54', '2020-02-24 11:48:54'),
(2525, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:54:08', '2020-02-24 11:54:08'),
(2526, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:54:58', '2020-02-24 11:54:58'),
(2527, 1, 'admin/orders/19/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:55:01', '2020-02-24 11:55:01'),
(2528, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:55:03', '2020-02-24 11:55:03'),
(2529, 1, 'admin/delivery_boys/create', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:55:04', '2020-02-24 11:55:04'),
(2530, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:55:05', '2020-02-24 11:55:05'),
(2531, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:55:06', '2020-02-24 11:55:06'),
(2532, 1, 'admin', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:55:08', '2020-02-24 11:55:08'),
(2533, 1, 'admin/auth/login', 'GET', '106.198.5.75', '[]', '2020-02-24 11:55:10', '2020-02-24 11:55:10'),
(2534, 1, 'admin', 'GET', '106.198.5.75', '[]', '2020-02-24 11:57:17', '2020-02-24 11:57:17'),
(2535, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:57:25', '2020-02-24 11:57:25'),
(2536, 1, 'admin/delivery_boys/create', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:57:42', '2020-02-24 11:57:42'),
(2537, 1, 'admin/delivery_boys', 'POST', '106.198.5.75', '{\"delivery_boy_name\":\"kanna\",\"phone_number\":\"9150741747\",\"email\":\"kanna@gmail.com\",\"password\":\"varsha\",\"status\":\"1\",\"_token\":\"Mj5b9mvIDrWnivI8hb5j0hQoiUjKpKikRmIpH56T\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-02-24 11:59:06', '2020-02-24 11:59:06'),
(2538, 1, 'admin/delivery_boys/create', 'GET', '106.198.5.75', '[]', '2020-02-24 11:59:06', '2020-02-24 11:59:06'),
(2539, 1, 'admin/delivery_boys/create', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:59:21', '2020-02-24 11:59:21'),
(2540, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:59:24', '2020-02-24 11:59:24'),
(2541, 1, 'admin/delivery_boys/9/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:59:31', '2020-02-24 11:59:31'),
(2542, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:59:37', '2020-02-24 11:59:37'),
(2543, 1, 'admin/delivery_boys/create', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 11:59:43', '2020-02-24 11:59:43'),
(2544, 1, 'admin/delivery_boys', 'POST', '106.198.5.75', '{\"delivery_boy_name\":\"kanna\",\"phone_number\":\"9150741747\",\"email\":\"kanna@gmail.com\",\"password\":\"varsha\",\"status\":\"1\",\"_token\":\"Mj5b9mvIDrWnivI8hb5j0hQoiUjKpKikRmIpH56T\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-02-24 12:00:51', '2020-02-24 12:00:51'),
(2545, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '[]', '2020-02-24 12:00:53', '2020-02-24 12:00:53'),
(2546, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:01:02', '2020-02-24 12:01:02'),
(2547, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:01:04', '2020-02-24 12:01:04'),
(2548, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:01:52', '2020-02-24 12:01:52'),
(2549, 1, 'admin/delivery_boys/9/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:02:33', '2020-02-24 12:02:33'),
(2550, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:02:37', '2020-02-24 12:02:37'),
(2551, 1, 'admin/delivery_boys/10/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:02:41', '2020-02-24 12:02:41'),
(2552, 1, 'admin/delivery_boys/10', 'PUT', '106.198.5.75', '{\"delivery_boy_name\":\"kanna\",\"phone_number\":\"9150741747\",\"email\":\"kanna@gmail.com\",\"password\":\"$2y$12$JdGKAFDV3NaGiSW1BOikZec1T6uhPAk7NWEJBMRq7GN11Vszrlydy\",\"status\":\"1\",\"_token\":\"Mj5b9mvIDrWnivI8hb5j0hQoiUjKpKikRmIpH56T\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-02-24 12:02:49', '2020-02-24 12:02:49'),
(2553, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '[]', '2020-02-24 12:02:50', '2020-02-24 12:02:50'),
(2554, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:02:54', '2020-02-24 12:02:54'),
(2555, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:03:24', '2020-02-24 12:03:24'),
(2556, 1, 'admin/delivery_boys/10/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:03:30', '2020-02-24 12:03:30'),
(2557, 1, 'admin/delivery_boys/10', 'PUT', '106.198.5.75', '{\"delivery_boy_name\":\"kanna\",\"phone_number\":\"9150741747\",\"email\":\"kanna@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"Mj5b9mvIDrWnivI8hb5j0hQoiUjKpKikRmIpH56T\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-02-24 12:04:07', '2020-02-24 12:04:07'),
(2558, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '[]', '2020-02-24 12:04:08', '2020-02-24 12:04:08'),
(2559, 1, 'admin/delivery_boys/10/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:04:23', '2020-02-24 12:04:23'),
(2560, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:20:09', '2020-02-24 12:20:09'),
(2561, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:21:00', '2020-02-24 12:21:00'),
(2562, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:33:38', '2020-02-24 12:33:38'),
(2563, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}', '2020-02-24 12:33:56', '2020-02-24 12:33:56'),
(2564, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"20\"}', '2020-02-24 12:35:04', '2020-02-24 12:35:04'),
(2565, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:35:38', '2020-02-24 12:35:38'),
(2566, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:35:47', '2020-02-24 12:35:47'),
(2567, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:38:05', '2020-02-24 12:38:05'),
(2568, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:38:35', '2020-02-24 12:38:35'),
(2569, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:38:58', '2020-02-24 12:38:58'),
(2570, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 12:39:02', '2020-02-24 12:39:02'),
(2571, 1, 'admin', 'GET', '106.198.5.75', '[]', '2020-02-24 13:14:35', '2020-02-24 13:14:35'),
(2572, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 13:15:43', '2020-02-24 13:15:43'),
(2573, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 13:33:54', '2020-02-24 13:33:54'),
(2574, 1, 'admin/view_orders/20', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 13:34:02', '2020-02-24 13:34:02'),
(2575, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 13:34:10', '2020-02-24 13:34:10'),
(2576, 1, 'admin/orders/20/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 13:34:19', '2020-02-24 13:34:19'),
(2577, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 13:34:27', '2020-02-24 13:34:27'),
(2578, 1, 'admin/orders/20/edit', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 13:34:48', '2020-02-24 13:34:48'),
(2579, 1, 'admin/orders/20', 'PUT', '106.198.5.75', '{\"order_id\":\"00020\",\"delivered_by\":\"10\",\"status\":\"2\",\"_token\":\"Mj5b9mvIDrWnivI8hb5j0hQoiUjKpKikRmIpH56T\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2020-02-24 13:35:17', '2020-02-24 13:35:17'),
(2580, 1, 'admin/orders', 'GET', '106.198.5.75', '[]', '2020-02-24 13:35:18', '2020-02-24 13:35:18'),
(2581, 1, 'admin', 'GET', '41.210.143.40', '[]', '2020-02-24 16:30:58', '2020-02-24 16:30:58'),
(2582, 1, 'admin/delivery_boys', 'GET', '106.198.5.75', '[]', '2020-02-24 17:18:35', '2020-02-24 17:18:35'),
(2583, 1, 'admin/orders', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 17:19:23', '2020-02-24 17:19:23'),
(2584, 1, 'admin/customers', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\"}', '2020-02-24 17:37:30', '2020-02-24 17:37:30'),
(2585, 1, 'admin/customers', 'GET', '106.198.5.75', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-02-24 17:39:38', '2020-02-24 17:39:38'),
(2586, 1, 'admin/delivery_boys', 'GET', '41.210.147.146', '{\"_pjax\":\"#pjax-container\"}', '2020-02-25 14:45:11', '2020-02-25 14:45:11'),
(2587, 1, 'admin/delivery_boys/8/edit', 'GET', '41.210.147.146', '{\"_pjax\":\"#pjax-container\"}', '2020-02-25 15:46:20', '2020-02-25 15:46:20'),
(2588, 1, 'admin/delivery_boys', 'GET', '41.210.147.146', '{\"_pjax\":\"#pjax-container\"}', '2020-02-25 15:46:25', '2020-02-25 15:46:25'),
(2589, 1, 'admin/fare_managements', 'GET', '41.210.147.146', '{\"_pjax\":\"#pjax-container\"}', '2020-02-25 15:46:32', '2020-02-25 15:46:32'),
(2590, 1, 'admin/orders', 'GET', '41.210.147.146', '{\"_pjax\":\"#pjax-container\"}', '2020-02-25 15:46:37', '2020-02-25 15:46:37'),
(2591, 1, 'admin', 'GET', '223.181.233.57', '[]', '2020-02-28 15:17:19', '2020-02-28 15:17:19'),
(2592, 1, 'admin', 'GET', '111.93.38.1', '[]', '2020-03-03 18:39:44', '2020-03-03 18:39:44'),
(2593, 1, 'admin/auth/users', 'GET', '111.93.38.1', '{\"_pjax\":\"#pjax-container\"}', '2020-03-03 18:39:50', '2020-03-03 18:39:50'),
(2594, 1, 'admin', 'GET', '106.198.9.218', '[]', '2020-03-17 12:23:46', '2020-03-17 12:23:46'),
(2595, 1, 'admin/products', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:24:07', '2020-03-17 12:24:07'),
(2596, 1, 'admin/products/13/edit', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:24:22', '2020-03-17 12:24:22'),
(2597, 1, 'admin/categories', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:24:30', '2020-03-17 12:24:30'),
(2598, 1, 'admin/categories/create', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:24:35', '2020-03-17 12:24:35'),
(2599, 1, 'admin/categories', 'POST', '106.198.9.218', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"category_name\":\"Kids\",\"status\":\"1\",\"_token\":\"etj2s3wcJFQpLodPpJIZfa0zUQyHuXOwPqOVDsAb\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/categories\"}', '2020-03-17 12:25:01', '2020-03-17 12:25:01'),
(2600, 1, 'admin/categories', 'GET', '106.198.9.218', '[]', '2020-03-17 12:25:01', '2020-03-17 12:25:01'),
(2601, 1, 'admin/products', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:25:05', '2020-03-17 12:25:05'),
(2602, 1, 'admin/products/13/edit', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:25:09', '2020-03-17 12:25:09'),
(2603, 1, 'admin/products/13', 'PUT', '106.198.9.218', '{\"category_id\":\"5\",\"product_name\":\"Shirt\",\"status\":\"1\",\"_token\":\"etj2s3wcJFQpLodPpJIZfa0zUQyHuXOwPqOVDsAb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/products\"}', '2020-03-17 12:25:16', '2020-03-17 12:25:16'),
(2604, 1, 'admin/products', 'GET', '106.198.9.218', '[]', '2020-03-17 12:25:17', '2020-03-17 12:25:17'),
(2605, 1, 'admin/products/14/edit', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:25:20', '2020-03-17 12:25:20'),
(2606, 1, 'admin/products/14', 'PUT', '106.198.9.218', '{\"category_id\":\"5\",\"product_name\":\"TShirt\",\"status\":\"1\",\"_token\":\"etj2s3wcJFQpLodPpJIZfa0zUQyHuXOwPqOVDsAb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/products\"}', '2020-03-17 12:25:25', '2020-03-17 12:25:25'),
(2607, 1, 'admin/products', 'GET', '106.198.9.218', '[]', '2020-03-17 12:25:25', '2020-03-17 12:25:25'),
(2608, 1, 'admin/products/15/edit', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:25:28', '2020-03-17 12:25:28'),
(2609, 1, 'admin/products/15', 'PUT', '106.198.9.218', '{\"category_id\":\"5\",\"product_name\":\"Pant\",\"status\":\"1\",\"_token\":\"etj2s3wcJFQpLodPpJIZfa0zUQyHuXOwPqOVDsAb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/products\"}', '2020-03-17 12:25:33', '2020-03-17 12:25:33'),
(2610, 1, 'admin/products', 'GET', '106.198.9.218', '[]', '2020-03-17 12:25:33', '2020-03-17 12:25:33'),
(2611, 1, 'admin/products/16/edit', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:25:36', '2020-03-17 12:25:36'),
(2612, 1, 'admin/products/16', 'PUT', '106.198.9.218', '{\"category_id\":\"5\",\"product_name\":\"Gown\",\"status\":\"1\",\"_token\":\"etj2s3wcJFQpLodPpJIZfa0zUQyHuXOwPqOVDsAb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/products\"}', '2020-03-17 12:25:40', '2020-03-17 12:25:40'),
(2613, 1, 'admin/products', 'GET', '106.198.9.218', '[]', '2020-03-17 12:25:41', '2020-03-17 12:25:41'),
(2614, 1, 'admin/products/17/edit', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:25:43', '2020-03-17 12:25:43'),
(2615, 1, 'admin/products/17', 'PUT', '106.198.9.218', '{\"category_id\":\"5\",\"product_name\":\"Midi Skirts\",\"status\":\"1\",\"_token\":\"etj2s3wcJFQpLodPpJIZfa0zUQyHuXOwPqOVDsAb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/products\"}', '2020-03-17 12:25:49', '2020-03-17 12:25:49'),
(2616, 1, 'admin/products', 'GET', '106.198.9.218', '[]', '2020-03-17 12:25:49', '2020-03-17 12:25:49'),
(2617, 1, 'admin/products/18/edit', 'GET', '106.198.9.218', '{\"_pjax\":\"#pjax-container\"}', '2020-03-17 12:25:52', '2020-03-17 12:25:52'),
(2618, 1, 'admin/products/18', 'PUT', '106.198.9.218', '{\"category_id\":\"5\",\"product_name\":\"Tops\",\"status\":\"1\",\"_token\":\"etj2s3wcJFQpLodPpJIZfa0zUQyHuXOwPqOVDsAb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/products\"}', '2020-03-17 12:25:56', '2020-03-17 12:25:56'),
(2619, 1, 'admin/products', 'GET', '106.198.9.218', '[]', '2020-03-17 12:25:56', '2020-03-17 12:25:56'),
(2620, 1, 'admin', 'GET', '106.198.112.47', '[]', '2020-04-16 16:43:19', '2020-04-16 16:43:19'),
(2621, 1, 'admin/customers', 'GET', '106.198.112.47', '{\"_pjax\":\"#pjax-container\"}', '2020-04-16 16:43:32', '2020-04-16 16:43:32'),
(2622, 1, 'admin/labels', 'GET', '106.198.112.47', '{\"_pjax\":\"#pjax-container\"}', '2020-04-16 16:44:06', '2020-04-16 16:44:06'),
(2623, 1, 'admin/promo_codes', 'GET', '106.198.112.47', '{\"_pjax\":\"#pjax-container\"}', '2020-04-16 16:44:09', '2020-04-16 16:44:09'),
(2624, 1, 'admin/delivery_boys', 'GET', '106.198.112.47', '{\"_pjax\":\"#pjax-container\"}', '2020-04-16 16:44:13', '2020-04-16 16:44:13'),
(2625, 1, 'admin/customers', 'GET', '106.198.112.47', '{\"_pjax\":\"#pjax-container\"}', '2020-04-16 16:44:24', '2020-04-16 16:44:24'),
(2626, 1, 'admin/customers', 'GET', '106.198.112.47', '[]', '2020-04-16 17:50:50', '2020-04-16 17:50:50'),
(2627, 1, 'admin/auth/login', 'GET', '157.50.47.234', '[]', '2020-04-22 11:14:17', '2020-04-22 11:14:17'),
(2628, 1, 'admin', 'GET', '157.50.47.234', '[]', '2020-04-22 11:14:20', '2020-04-22 11:14:20'),
(2629, 1, 'admin/delivery_boys', 'GET', '157.50.47.234', '{\"_pjax\":\"#pjax-container\"}', '2020-04-22 11:16:31', '2020-04-22 11:16:31'),
(2630, 1, 'admin/customers', 'GET', '157.51.118.169', '[]', '2020-04-23 17:14:17', '2020-04-23 17:14:17'),
(2631, 1, 'admin/customers/1/edit', 'GET', '157.51.205.199', '{\"_pjax\":\"#pjax-container\"}', '2020-04-23 17:14:47', '2020-04-23 17:14:47'),
(2632, 1, 'admin/customers/1', 'PUT', '157.51.205.199', '{\"customer_name\":\"sarath\",\"phone_number\":\"9751073758\",\"email\":\"sarath.menpani@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"vFrhnrMDdlIXEc6lJ6aEbNw3Bmbuqbr6Oq1bRKFx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/customers\"}', '2020-04-23 17:15:01', '2020-04-23 17:15:01'),
(2633, 1, 'admin/customers', 'GET', '157.51.205.199', '[]', '2020-04-23 17:15:03', '2020-04-23 17:15:03'),
(2634, 1, 'admin', 'GET', '157.51.166.230', '[]', '2020-04-26 18:57:23', '2020-04-26 18:57:23'),
(2635, 1, 'admin/products', 'GET', '157.51.166.230', '{\"_pjax\":\"#pjax-container\"}', '2020-04-26 18:58:56', '2020-04-26 18:58:56'),
(2636, 1, 'admin', 'GET', '157.51.244.253', '[]', '2020-05-18 15:21:09', '2020-05-18 15:21:09'),
(2637, 1, 'admin/customers', 'GET', '157.51.244.253', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 15:21:15', '2020-05-18 15:21:15'),
(2638, 1, 'admin/delivery_boys', 'GET', '157.51.244.253', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 15:57:36', '2020-05-18 15:57:36'),
(2639, 1, 'admin/delivery_boys/2/edit', 'GET', '157.51.244.253', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 15:58:19', '2020-05-18 15:58:19'),
(2640, 1, 'admin/delivery_boys/2', 'PUT', '157.51.244.253', '{\"delivery_boy_name\":\"sarath kannan\",\"phone_number\":\"9789354285\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"LJ6SIfQ656uyw0FgVnwYoIYoWO52OyielqIyw43r\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-05-18 15:58:33', '2020-05-18 15:58:33'),
(2641, 1, 'admin/delivery_boys/2/edit', 'GET', '157.51.244.253', '[]', '2020-05-18 15:58:34', '2020-05-18 15:58:34');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2642, 1, 'admin/delivery_boys/2', 'PUT', '157.51.244.253', '{\"delivery_boy_name\":\"sarath kannan\",\"phone_number\":\"9789354285\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"LJ6SIfQ656uyw0FgVnwYoIYoWO52OyielqIyw43r\",\"_method\":\"PUT\"}', '2020-05-18 15:58:37', '2020-05-18 15:58:37'),
(2643, 1, 'admin/delivery_boys/2/edit', 'GET', '157.51.244.253', '[]', '2020-05-18 15:58:38', '2020-05-18 15:58:38'),
(2644, 1, 'admin/delivery_boys', 'GET', '157.51.244.253', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 15:58:41', '2020-05-18 15:58:41'),
(2645, 1, 'admin/delivery_boys/2/edit', 'GET', '157.51.244.253', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 15:58:47', '2020-05-18 15:58:47'),
(2646, 1, 'admin/delivery_boys', 'GET', '157.51.244.253', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 15:59:12', '2020-05-18 15:59:12'),
(2647, 1, 'admin', 'GET', '106.198.6.59', '[]', '2020-05-19 13:51:33', '2020-05-19 13:51:33'),
(2648, 1, 'admin', 'GET', '157.51.234.210', '[]', '2020-05-19 14:17:08', '2020-05-19 14:17:08'),
(2649, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:19:05', '2020-05-19 14:19:05'),
(2650, 1, 'admin/services', 'GET', '106.198.6.59', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:19:54', '2020-05-19 14:19:54'),
(2651, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:34:11', '2020-05-19 14:34:11'),
(2652, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2020-05-19 14:34:24', '2020-05-19 14:34:24'),
(2653, 1, 'admin/customers/44', 'DELETE', '106.198.6.59', '{\"_method\":\"delete\",\"_token\":\"LtXXyrJxsGxJXeWZQcUN7WSxTycG8F8hnhCI3mCe\"}', '2020-05-19 14:34:31', '2020-05-19 14:34:31'),
(2654, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:34:32', '2020-05-19 14:34:32'),
(2655, 1, 'admin/customers/42', 'DELETE', '106.198.6.59', '{\"_method\":\"delete\",\"_token\":\"LtXXyrJxsGxJXeWZQcUN7WSxTycG8F8hnhCI3mCe\"}', '2020-05-19 14:34:37', '2020-05-19 14:34:37'),
(2656, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:34:37', '2020-05-19 14:34:37'),
(2657, 1, 'admin/customers/43', 'DELETE', '106.198.6.59', '{\"_method\":\"delete\",\"_token\":\"LtXXyrJxsGxJXeWZQcUN7WSxTycG8F8hnhCI3mCe\"}', '2020-05-19 14:34:42', '2020-05-19 14:34:42'),
(2658, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:34:42', '2020-05-19 14:34:42'),
(2659, 1, 'admin/customers/41', 'DELETE', '106.198.6.59', '{\"_method\":\"delete\",\"_token\":\"LtXXyrJxsGxJXeWZQcUN7WSxTycG8F8hnhCI3mCe\"}', '2020-05-19 14:34:46', '2020-05-19 14:34:46'),
(2660, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:34:47', '2020-05-19 14:34:47'),
(2661, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:34:47', '2020-05-19 14:34:47'),
(2662, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"2\"}', '2020-05-19 14:34:57', '2020-05-19 14:34:57'),
(2663, 1, 'admin/customers/30', 'DELETE', '106.198.6.59', '{\"_method\":\"delete\",\"_token\":\"LtXXyrJxsGxJXeWZQcUN7WSxTycG8F8hnhCI3mCe\"}', '2020-05-19 14:35:35', '2020-05-19 14:35:35'),
(2664, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:35:35', '2020-05-19 14:35:35'),
(2665, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"2\"}', '2020-05-19 14:36:13', '2020-05-19 14:36:13'),
(2666, 1, 'admin/customers/45', 'DELETE', '106.198.6.59', '{\"_method\":\"delete\",\"_token\":\"LtXXyrJxsGxJXeWZQcUN7WSxTycG8F8hnhCI3mCe\"}', '2020-05-19 14:36:22', '2020-05-19 14:36:22'),
(2667, 1, 'admin/customers', 'GET', '106.198.6.59', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-05-19 14:36:23', '2020-05-19 14:36:23'),
(2668, 1, 'admin/delivery_boys', 'GET', '106.198.6.59', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:14:34', '2020-05-19 16:14:34'),
(2669, 1, 'admin/delivery_boys', 'GET', '106.198.6.59', '[]', '2020-05-19 16:16:50', '2020-05-19 16:16:50'),
(2670, 1, 'admin/orders', 'GET', '106.198.6.59', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:58:25', '2020-05-19 16:58:25'),
(2671, 1, 'admin/orders/1/edit', 'GET', '106.198.6.59', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 16:58:40', '2020-05-19 16:58:40'),
(2672, 1, 'admin/orders/1', 'PUT', '106.198.6.59', '{\"order_id\":\"00001\",\"delivered_by\":\"10\",\"status\":\"3\",\"_token\":\"LtXXyrJxsGxJXeWZQcUN7WSxTycG8F8hnhCI3mCe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/orders\"}', '2020-05-19 16:58:55', '2020-05-19 16:58:55'),
(2673, 1, 'admin/orders', 'GET', '106.198.6.59', '[]', '2020-05-19 16:58:58', '2020-05-19 16:58:58'),
(2674, 1, 'admin/orders', 'GET', '106.198.6.59', '[]', '2020-05-19 16:59:06', '2020-05-19 16:59:06'),
(2675, 1, 'admin', 'GET', '157.51.129.202', '[]', '2020-05-20 08:09:48', '2020-05-20 08:09:48'),
(2676, 1, 'admin/delivery_boys', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:10:00', '2020-05-20 08:10:00'),
(2677, 1, 'admin/delivery_boys/create', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:10:11', '2020-05-20 08:10:11'),
(2678, 1, 'admin/delivery_boys', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:10:19', '2020-05-20 08:10:19'),
(2679, 1, 'admin/delivery_boys/10/edit', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:10:24', '2020-05-20 08:10:24'),
(2680, 1, 'admin/delivery_boys/10', 'PUT', '157.51.129.202', '{\"delivery_boy_name\":\"kanna\",\"phone_number\":\"9150741747\",\"email\":\"keerthikrish2612@gmail.com\",\"password\":\"$2y$12$YTmkDKiSIHb9wFqN02H5Y.MUNfkTBkU2TkGBDxE8Il96kg2Y.jp42\",\"status\":\"1\",\"_token\":\"tI60U5mGUCjrXNzXuQrxAMO1D2vjsIij3408hg0w\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithlaundry.demoproducts.in\\/admin\\/delivery_boys\"}', '2020-05-20 08:10:46', '2020-05-20 08:10:46'),
(2681, 1, 'admin/delivery_boys/10/edit', 'GET', '157.51.129.202', '[]', '2020-05-20 08:10:46', '2020-05-20 08:10:46'),
(2682, 1, 'admin/delivery_boys/10', 'PUT', '157.51.129.202', '{\"delivery_boy_name\":\"kanna\",\"phone_number\":\"9080217679\",\"email\":\"keerthikrish2612@gmail.com\",\"password\":\"$2y$12$YTmkDKiSIHb9wFqN02H5Y.MUNfkTBkU2TkGBDxE8Il96kg2Y.jp42\",\"status\":\"1\",\"_token\":\"tI60U5mGUCjrXNzXuQrxAMO1D2vjsIij3408hg0w\",\"_method\":\"PUT\"}', '2020-05-20 08:11:06', '2020-05-20 08:11:06'),
(2683, 1, 'admin/delivery_boys/10/edit', 'GET', '157.51.129.202', '[]', '2020-05-20 08:11:07', '2020-05-20 08:11:07'),
(2684, 1, 'admin/delivery_boys/10/edit', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:11:22', '2020-05-20 08:11:22'),
(2685, 1, 'admin/delivery_boys/10/edit', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:11:23', '2020-05-20 08:11:23'),
(2686, 1, 'admin/customers', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:11:28', '2020-05-20 08:11:28'),
(2687, 1, 'admin/services', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:11:30', '2020-05-20 08:11:30'),
(2688, 1, 'admin/delivery_boys', 'GET', '157.51.129.202', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 08:11:36', '2020-05-20 08:11:36'),
(2689, 1, 'admin', 'GET', '106.198.1.216', '[]', '2020-05-20 13:41:42', '2020-05-20 13:41:42'),
(2690, 1, 'admin/delivery_boys', 'GET', '106.198.1.216', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 13:41:49', '2020-05-20 13:41:49'),
(2691, 1, 'admin/payment-methods', 'GET', '157.50.97.107', '{\"_pjax\":\"#pjax-container\"}', '2020-05-29 19:13:12', '2020-05-29 19:13:12'),
(2692, 1, 'admin/payment-methods/1/edit', 'GET', '157.50.97.107', '{\"_pjax\":\"#pjax-container\"}', '2020-05-29 19:17:12', '2020-05-29 19:17:12'),
(2693, 1, 'admin/payment-methods/1', 'PUT', '157.50.97.107', '{\"payment_mode\":\"Cash\",\"status\":\"1\",\"_token\":\"tqlq3TLGfDBfcEh69WSmvRxGL9fOUhcm2aYD6ATD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/payment-methods\"}', '2020-05-29 19:17:31', '2020-05-29 19:17:31'),
(2694, 1, 'admin/payment-methods', 'GET', '157.50.97.107', '[]', '2020-05-29 19:17:31', '2020-05-29 19:17:31'),
(2695, 1, 'admin/payment-methods/2/edit', 'GET', '157.50.97.107', '{\"_pjax\":\"#pjax-container\"}', '2020-05-29 19:17:34', '2020-05-29 19:17:34'),
(2696, 1, 'admin/payment-methods/2', 'PUT', '157.50.97.107', '{\"payment_mode\":\"Online\",\"status\":\"1\",\"_token\":\"tqlq3TLGfDBfcEh69WSmvRxGL9fOUhcm2aYD6ATD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/payment-methods\"}', '2020-05-29 19:17:48', '2020-05-29 19:17:48'),
(2697, 1, 'admin/payment-methods', 'GET', '157.50.97.107', '[]', '2020-05-29 19:17:48', '2020-05-29 19:17:48'),
(2698, 1, 'admin', 'GET', '157.51.83.140', '[]', '2020-05-30 10:29:15', '2020-05-30 10:29:15'),
(2699, 1, 'admin/app_settings', 'GET', '157.51.83.140', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 10:29:21', '2020-05-30 10:29:21'),
(2700, 1, 'admin/app_settings/1/edit', 'GET', '157.51.83.140', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 10:29:25', '2020-05-30 10:29:25'),
(2701, 1, 'admin/app_settings/1', 'PUT', '157.51.215.94', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9876543210\",\"email\":\"support@rithlaundry.com\",\"country\":\"India\",\"default_currency\":\"\\u20b9\",\"_token\":\"B5ZuDV5PanUtAstKyIaye6BxTwBBz5rggCyo9Fxn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/app_settings\"}', '2020-05-30 10:29:34', '2020-05-30 10:29:34'),
(2702, 1, 'admin/app_settings/1/edit', 'GET', '157.51.215.94', '[]', '2020-05-30 10:29:36', '2020-05-30 10:29:36'),
(2703, 1, 'admin/app_settings/1', 'PUT', '157.51.83.140', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9876543210\",\"email\":\"support@rithlaundry.com\",\"country\":\"India\",\"default_currency\":\"\\u20b9\",\"_token\":\"B5ZuDV5PanUtAstKyIaye6BxTwBBz5rggCyo9Fxn\",\"_method\":\"PUT\"}', '2020-05-30 10:31:23', '2020-05-30 10:31:23'),
(2704, 1, 'admin/app_settings', 'GET', '157.51.83.140', '[]', '2020-05-30 10:31:24', '2020-05-30 10:31:24'),
(2705, 1, 'admin', 'GET', '157.51.237.208', '[]', '2020-05-30 12:24:50', '2020-05-30 12:24:50'),
(2706, 1, 'admin/auth/menu', 'GET', '157.51.237.208', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 12:24:55', '2020-05-30 12:24:55'),
(2707, 1, 'admin/auth/menu', 'POST', '157.51.90.129', '{\"parent_id\":\"0\",\"title\":\"Banner Images\",\"icon\":\"fa-image\",\"uri\":\"banner-images\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"B5ZuDV5PanUtAstKyIaye6BxTwBBz5rggCyo9Fxn\"}', '2020-05-30 13:36:16', '2020-05-30 13:36:16'),
(2708, 1, 'admin/auth/menu', 'GET', '157.51.90.129', '[]', '2020-05-30 13:36:17', '2020-05-30 13:36:17'),
(2709, 1, 'admin/auth/menu', 'POST', '157.51.90.129', '{\"_token\":\"B5ZuDV5PanUtAstKyIaye6BxTwBBz5rggCyo9Fxn\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":19},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":16},{\\\"id\\\":11},{\\\"id\\\":20}]\"}', '2020-05-30 13:36:28', '2020-05-30 13:36:28'),
(2710, 1, 'admin/auth/menu', 'GET', '157.51.90.129', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 13:36:29', '2020-05-30 13:36:29'),
(2711, 1, 'admin/auth/menu', 'GET', '157.51.90.129', '[]', '2020-05-30 13:36:30', '2020-05-30 13:36:30'),
(2712, 1, 'admin/banner-images', 'GET', '157.51.237.208', '[]', '2020-05-30 13:43:03', '2020-05-30 13:43:03'),
(2713, 1, 'admin', 'GET', '106.198.6.223', '[]', '2020-05-30 16:21:36', '2020-05-30 16:21:36'),
(2714, 1, 'admin/banner-images', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 16:22:00', '2020-05-30 16:22:00'),
(2715, 1, 'admin/banner-images/8/edit', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 16:34:15', '2020-05-30 16:34:15'),
(2716, 1, 'admin/banner-images/8', 'PUT', '106.198.6.223', '{\"service_id\":\"3\",\"status\":\"1\",\"_token\":\"QAbX286kFzpwkWfLdqzgGnnQU8ysTplCct7nVwF9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-05-30 16:34:31', '2020-05-30 16:34:31'),
(2717, 1, 'admin/banner-images', 'GET', '106.198.6.223', '[]', '2020-05-30 16:34:32', '2020-05-30 16:34:32'),
(2718, 1, 'admin/banner-images', 'GET', '106.198.6.223', '[]', '2020-05-30 16:35:51', '2020-05-30 16:35:51'),
(2719, 1, 'admin', 'GET', '157.51.70.94', '[]', '2020-05-30 16:51:04', '2020-05-30 16:51:04'),
(2720, 1, 'admin/customers', 'GET', '157.51.70.94', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 16:51:08', '2020-05-30 16:51:08'),
(2721, 1, 'admin', 'GET', '157.51.70.94', '[]', '2020-05-30 16:54:03', '2020-05-30 16:54:03'),
(2722, 1, 'admin/services', 'GET', '157.51.70.94', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 16:54:16', '2020-05-30 16:54:16'),
(2723, 1, 'admin/services/1/edit', 'GET', '157.51.70.94', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 16:56:05', '2020-05-30 16:56:05'),
(2724, 1, 'admin/services/1', 'PUT', '157.51.70.94', '{\"service_name\":\"Dry Cleaning\",\"description\":\"We done dry clean for your clothes. We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"7sIY1Vwu19BFFGzQBh5fKuPZ2jCooBSg9jW21HC4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/services\"}', '2020-05-30 16:57:08', '2020-05-30 16:57:08'),
(2725, 1, 'admin/services', 'GET', '157.51.70.94', '[]', '2020-05-30 16:57:09', '2020-05-30 16:57:09'),
(2726, 1, 'admin/services/2/edit', 'GET', '157.51.70.94', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 16:57:17', '2020-05-30 16:57:17'),
(2727, 1, 'admin/services/2', 'PUT', '157.51.70.94', '{\"service_name\":\"Ironing\",\"description\":\"We  iron your clothes, you just have to ask. We\'re specialists for caring wide range of garments.\",\"status\":\"1\",\"_token\":\"7sIY1Vwu19BFFGzQBh5fKuPZ2jCooBSg9jW21HC4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/services\"}', '2020-05-30 16:57:35', '2020-05-30 16:57:35'),
(2728, 1, 'admin/services', 'GET', '157.51.70.94', '[]', '2020-05-30 16:57:35', '2020-05-30 16:57:35'),
(2729, 1, 'admin/services/3/edit', 'GET', '157.51.70.94', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 16:57:42', '2020-05-30 16:57:42'),
(2730, 1, 'admin/services/3', 'PUT', '157.51.70.94', '{\"service_name\":\"Wash & Ironing\",\"description\":\"We wash and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"7sIY1Vwu19BFFGzQBh5fKuPZ2jCooBSg9jW21HC4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/services\"}', '2020-05-30 16:57:58', '2020-05-30 16:57:58'),
(2731, 1, 'admin/services', 'GET', '157.51.70.94', '[]', '2020-05-30 16:57:58', '2020-05-30 16:57:58'),
(2732, 1, 'admin/services/4/edit', 'GET', '157.51.70.94', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 16:58:01', '2020-05-30 16:58:01'),
(2733, 1, 'admin/services/4', 'PUT', '157.51.70.94', '{\"service_name\":\"Duvet Cleaning\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"status\":\"1\",\"_token\":\"7sIY1Vwu19BFFGzQBh5fKuPZ2jCooBSg9jW21HC4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/services\"}', '2020-05-30 16:58:13', '2020-05-30 16:58:13'),
(2734, 1, 'admin/services', 'GET', '157.51.70.94', '[]', '2020-05-30 16:58:14', '2020-05-30 16:58:14'),
(2735, 1, 'admin/services', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:03:58', '2020-05-30 17:03:58'),
(2736, 1, 'admin/services/1/edit', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:03:59', '2020-05-30 17:03:59'),
(2737, 1, 'admin/services', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:05', '2020-05-30 17:04:05'),
(2738, 1, 'admin/services/2/edit', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:06', '2020-05-30 17:04:06'),
(2739, 1, 'admin/services', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:10', '2020-05-30 17:04:10'),
(2740, 1, 'admin/services/3/edit', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:12', '2020-05-30 17:04:12'),
(2741, 1, 'admin/services', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:17', '2020-05-30 17:04:17'),
(2742, 1, 'admin/services/4/edit', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:19', '2020-05-30 17:04:19'),
(2743, 1, 'admin/services', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:22', '2020-05-30 17:04:22'),
(2744, 1, 'admin/services/2/edit', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:30', '2020-05-30 17:04:30'),
(2745, 1, 'admin/services', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:34', '2020-05-30 17:04:34'),
(2746, 1, 'admin/services/2/edit', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-30 17:04:38', '2020-05-30 17:04:38'),
(2747, 1, 'admin', 'GET', '106.198.6.223', '[]', '2020-05-31 10:09:26', '2020-05-31 10:09:26'),
(2748, 1, 'admin/services', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-31 10:09:32', '2020-05-31 10:09:32'),
(2749, 1, 'admin/services/1/edit', 'GET', '106.198.6.223', '{\"_pjax\":\"#pjax-container\"}', '2020-05-31 10:09:37', '2020-05-31 10:09:37'),
(2750, 1, 'admin', 'GET', '106.198.6.223', '[]', '2020-06-05 13:06:50', '2020-06-05 13:06:50'),
(2751, 1, 'admin', 'GET', '157.51.152.95', '[]', '2020-06-05 13:17:30', '2020-06-05 13:17:30'),
(2752, 1, 'admin', 'GET', '106.198.36.149', '[]', '2020-06-06 14:34:27', '2020-06-06 14:34:27'),
(2753, 1, 'admin/banner-images', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:34:36', '2020-06-06 14:34:36'),
(2754, 1, 'admin/banner-images/8/edit', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:35:57', '2020-06-06 14:35:57'),
(2755, 1, 'admin/banner-images/8', 'PUT', '106.198.36.149', '{\"service_id\":\"3\",\"status\":\"1\",\"_token\":\"hkLPLSLswmqLcGtPclFxdpgeImYVnbVDsyV39nrQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-06 14:36:25', '2020-06-06 14:36:25'),
(2756, 1, 'admin/banner-images', 'GET', '106.198.36.149', '[]', '2020-06-06 14:36:26', '2020-06-06 14:36:26'),
(2757, 1, 'admin/banner-images/9/edit', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:36:28', '2020-06-06 14:36:28'),
(2758, 1, 'admin/banner-images/9', 'PUT', '106.198.36.149', '{\"service_id\":\"2\",\"status\":\"1\",\"_token\":\"hkLPLSLswmqLcGtPclFxdpgeImYVnbVDsyV39nrQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-06 14:36:38', '2020-06-06 14:36:38'),
(2759, 1, 'admin/banner-images', 'GET', '106.198.36.149', '[]', '2020-06-06 14:36:38', '2020-06-06 14:36:38'),
(2760, 1, 'admin/banner-images/create', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:36:42', '2020-06-06 14:36:42'),
(2761, 1, 'admin/banner-images', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:37:56', '2020-06-06 14:37:56'),
(2762, 1, 'admin/banner-images/8/edit', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:37:58', '2020-06-06 14:37:58'),
(2763, 1, 'admin/banner-images/8', 'PUT', '106.198.36.149', '{\"service_id\":\"1\",\"status\":\"1\",\"_token\":\"hkLPLSLswmqLcGtPclFxdpgeImYVnbVDsyV39nrQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-06 14:38:20', '2020-06-06 14:38:20'),
(2764, 1, 'admin/banner-images', 'GET', '106.198.36.149', '[]', '2020-06-06 14:38:20', '2020-06-06 14:38:20'),
(2765, 1, 'admin/banner-images/9/edit', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:38:24', '2020-06-06 14:38:24'),
(2766, 1, 'admin/banner-images/9', 'PUT', '106.198.36.149', '{\"service_id\":\"2\",\"status\":\"1\",\"_token\":\"hkLPLSLswmqLcGtPclFxdpgeImYVnbVDsyV39nrQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-06 14:38:39', '2020-06-06 14:38:39'),
(2767, 1, 'admin/banner-images', 'GET', '106.198.36.149', '[]', '2020-06-06 14:38:40', '2020-06-06 14:38:40'),
(2768, 1, 'admin/banner-images/create', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:38:43', '2020-06-06 14:38:43'),
(2769, 1, 'admin/banner-images', 'POST', '106.198.36.149', '{\"service_id\":\"3\",\"status\":\"1\",\"_token\":\"hkLPLSLswmqLcGtPclFxdpgeImYVnbVDsyV39nrQ\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-06 14:39:04', '2020-06-06 14:39:04'),
(2770, 1, 'admin/banner-images', 'GET', '106.198.36.149', '[]', '2020-06-06 14:39:04', '2020-06-06 14:39:04'),
(2771, 1, 'admin/banner-images/create', 'GET', '106.198.36.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-06 14:39:07', '2020-06-06 14:39:07'),
(2772, 1, 'admin/banner-images', 'POST', '106.198.36.149', '{\"service_id\":\"4\",\"status\":\"1\",\"_token\":\"hkLPLSLswmqLcGtPclFxdpgeImYVnbVDsyV39nrQ\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-06 14:39:19', '2020-06-06 14:39:19'),
(2773, 1, 'admin/banner-images', 'GET', '106.198.36.149', '[]', '2020-06-06 14:39:19', '2020-06-06 14:39:19'),
(2774, 1, 'admin', 'GET', '223.181.195.115', '[]', '2020-06-08 11:40:51', '2020-06-08 11:40:51'),
(2775, 1, 'admin/customers', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-08 11:41:23', '2020-06-08 11:41:23'),
(2776, 1, 'admin/customers', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-06-08 11:41:36', '2020-06-08 11:41:36'),
(2777, 1, 'admin', 'GET', '223.181.195.115', '[]', '2020-06-08 18:35:50', '2020-06-08 18:35:50'),
(2778, 1, 'admin/app_settings', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-08 18:35:57', '2020-06-08 18:35:57'),
(2779, 1, 'admin/app_settings/1/edit', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-08 18:35:59', '2020-06-08 18:35:59'),
(2780, 1, 'admin/app_settings/1/edit', 'GET', '223.181.195.115', '[]', '2020-06-08 18:37:51', '2020-06-08 18:37:51'),
(2781, 1, 'admin/app_settings/1', 'PUT', '223.181.195.115', '{\"application_name\":\"Rith Laundry\",\"contact_number\":\"9876543210\",\"email\":\"support@rithlaundry.com\",\"country\":\"India\",\"default_currency\":\"\\u20b9\",\"currency_short_code\":\"INR\",\"_token\":\"18BwoyUsGgq76JQLFfWD2Uk4N2ieDNm1qiFMiMTn\",\"_method\":\"PUT\"}', '2020-06-08 18:37:56', '2020-06-08 18:37:56'),
(2782, 1, 'admin/app_settings', 'GET', '223.181.195.115', '[]', '2020-06-08 18:37:56', '2020-06-08 18:37:56'),
(2783, 1, 'admin/customers', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:25:43', '2020-06-09 13:25:43'),
(2784, 1, 'admin/faqs', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:25:52', '2020-06-09 13:25:52'),
(2785, 1, 'admin/categories', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:25:59', '2020-06-09 13:25:59'),
(2786, 1, 'admin/delivery_boys', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:25:59', '2020-06-09 13:25:59'),
(2787, 1, 'admin/categories/2/edit', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:26:03', '2020-06-09 13:26:03'),
(2788, 1, 'admin/categories/2', 'PUT', '223.181.195.115', '{\"service_id\":[\"1\",\"2\",\"3\",null],\"category_name\":\"Women\",\"category_name_ar\":\"\\u0646\\u0633\\u0627\\u0621\",\"status\":\"1\",\"_token\":\"WHmFSf66NPCC1FEIpXhC7HrgGvSVgT9uy1bTlRo2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/categories\"}', '2020-06-09 13:26:07', '2020-06-09 13:26:07'),
(2789, 1, 'admin/categories', 'GET', '223.181.195.115', '[]', '2020-06-09 13:26:07', '2020-06-09 13:26:07'),
(2790, 1, 'admin/labels', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:27:43', '2020-06-09 13:27:43'),
(2791, 1, 'admin/orders', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:27:54', '2020-06-09 13:27:54'),
(2792, 1, 'admin/orders', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2020-06-09 13:27:57', '2020-06-09 13:27:57'),
(2793, 1, 'admin/orders/79/edit', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:27:58', '2020-06-09 13:27:58'),
(2794, 1, 'admin/orders', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:28:00', '2020-06-09 13:28:00'),
(2795, 1, 'admin/orders', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2020-06-09 13:28:03', '2020-06-09 13:28:03'),
(2796, 1, 'admin/orders/81/edit', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:28:18', '2020-06-09 13:28:18'),
(2797, 1, 'admin/orders/81', 'PUT', '223.181.195.115', '{\"order_id\":\"00081\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"PVmLLrwkeyCerYn85tSrFa2TCRP6b8hGPkRC7oC3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-09 13:28:26', '2020-06-09 13:28:26'),
(2798, 1, 'admin/orders/81/edit', 'GET', '223.181.195.115', '[]', '2020-06-09 13:28:27', '2020-06-09 13:28:27'),
(2799, 1, 'admin/orders/81', 'PUT', '223.181.195.115', '{\"order_id\":\"00081\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"PVmLLrwkeyCerYn85tSrFa2TCRP6b8hGPkRC7oC3\",\"_method\":\"PUT\"}', '2020-06-09 13:28:50', '2020-06-09 13:28:50'),
(2800, 1, 'admin/orders', 'GET', '223.181.195.115', '[]', '2020-06-09 13:28:51', '2020-06-09 13:28:51'),
(2801, 1, 'admin/auth/menu', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:41:16', '2020-06-09 13:41:16'),
(2802, 1, 'admin/auth/menu', 'POST', '223.181.195.115', '{\"parent_id\":\"0\",\"title\":\"Payment Methods\",\"icon\":\"fa-product-hunt\",\"uri\":\"payment-methods\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"WHmFSf66NPCC1FEIpXhC7HrgGvSVgT9uy1bTlRo2\"}', '2020-06-09 13:43:09', '2020-06-09 13:43:09'),
(2803, 1, 'admin/auth/menu', 'GET', '223.181.195.115', '[]', '2020-06-09 13:43:09', '2020-06-09 13:43:09'),
(2804, 1, 'admin/auth/menu', 'GET', '223.181.195.115', '[]', '2020-06-09 13:43:14', '2020-06-09 13:43:14'),
(2805, 1, 'admin/auth/menu', 'POST', '223.181.195.115', '{\"_token\":\"WHmFSf66NPCC1FEIpXhC7HrgGvSVgT9uy1bTlRo2\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":19},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":10},{\\\"id\\\":13},{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":21},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":12},{\\\"id\\\":9},{\\\"id\\\":8},{\\\"id\\\":16},{\\\"id\\\":11},{\\\"id\\\":20}]\"}', '2020-06-09 13:43:28', '2020-06-09 13:43:28'),
(2806, 1, 'admin/auth/menu', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:43:28', '2020-06-09 13:43:28'),
(2807, 1, 'admin/auth/menu', 'GET', '223.181.195.115', '[]', '2020-06-09 13:43:29', '2020-06-09 13:43:29'),
(2808, 1, 'admin/payment-methods', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:44:04', '2020-06-09 13:44:04'),
(2809, 1, 'admin/payment-methods/1/edit', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:44:08', '2020-06-09 13:44:08'),
(2810, 1, 'admin/payment-methods/1', 'PUT', '223.181.195.115', '{\"payment_mode\":\"Cash\",\"payment_mode_ar\":\"\\u0627\\u0644\\u0633\\u064a\\u0648\\u0644\\u0629 \\u0627\\u0644\\u0646\\u0642\\u062f\\u064a\\u0629\",\"status\":\"1\",\"_token\":\"WHmFSf66NPCC1FEIpXhC7HrgGvSVgT9uy1bTlRo2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/payment-methods\"}', '2020-06-09 13:46:35', '2020-06-09 13:46:35'),
(2811, 1, 'admin/payment-methods/1/edit', 'GET', '223.181.195.115', '[]', '2020-06-09 13:46:36', '2020-06-09 13:46:36'),
(2812, 1, 'admin/payment-methods/1', 'PUT', '223.181.195.115', '{\"payment_mode\":\"Cash\",\"payment_mode_ar\":\"\\u0627\\u0644\\u0633\\u064a\\u0648\\u0644\\u0629 \\u0627\\u0644\\u0646\\u0642\\u062f\\u064a\\u0629\",\"status\":\"1\",\"_token\":\"WHmFSf66NPCC1FEIpXhC7HrgGvSVgT9uy1bTlRo2\",\"_method\":\"PUT\"}', '2020-06-09 13:47:08', '2020-06-09 13:47:08'),
(2813, 1, 'admin/payment-methods', 'GET', '223.181.195.115', '[]', '2020-06-09 13:47:09', '2020-06-09 13:47:09'),
(2814, 1, 'admin/payment-methods/2/edit', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:47:15', '2020-06-09 13:47:15'),
(2815, 1, 'admin/payment-methods/2', 'PUT', '223.181.195.115', '{\"payment_mode\":\"Online\",\"payment_mode_ar\":\"\\u0628\\u0637\\u0627\\u0642\\u0629\",\"status\":\"1\",\"_token\":\"WHmFSf66NPCC1FEIpXhC7HrgGvSVgT9uy1bTlRo2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/payment-methods\"}', '2020-06-09 13:48:41', '2020-06-09 13:48:41'),
(2816, 1, 'admin/payment-methods', 'GET', '223.181.195.115', '[]', '2020-06-09 13:48:41', '2020-06-09 13:48:41'),
(2817, 1, 'admin/privacy_policies', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:51:32', '2020-06-09 13:51:32'),
(2818, 1, 'admin/privacy_policies/2/edit', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 13:51:41', '2020-06-09 13:51:41'),
(2819, 1, 'admin/privacy_policies/2', 'PUT', '223.181.195.115', '{\"title\":\"Please read the Terms carefully and make sure that you understand them before placing an order.\",\"title_ar\":\"\\u064a\\u0631\\u062c\\u0649 \\u0642\\u0631\\u0627\\u0621\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0623\\u0643\\u062f \\u0645\\u0646 \\u0641\\u0647\\u0645\\u0643 \\u0644\\u0647\\u0627 \\u0642\\u0628\\u0644 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628.\",\"description\":\"All garments\\/linen\\/fabrics are handled with greatest case but owing to the conditions of the clothes or non-apparent\\/non-visible defects in its material there is a possibility of discoloring or shrinkage such garments are accepted for cleaning at owners risk and we will not accept any responsibility for it.Removal of stain is a part of the process but, complete removal of stains can not be guaranteed and will be processed at customers risk. In case of any loss or damage you must be reported to support@rithlaundry.com with in 24 hours. Failure to report on right time we don\'t take any responsibility. Compensation shall be provided inform of services and no cash will be given to customers. Customers are requested to count the clothes at the time of delivery and inform to the delivery boy in case of missing clothes.  We will not be responsible for any such claims after the clothes delivery has been accepted. Customer might get regular updates through calls\\/ SMS\\/ emails\\/ App notification.\",\"description_ar\":\"\\u064a\\u062a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0627\\u0645\\u0644 \\u0645\\u0639 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633 \\/ \\u0627\\u0644\\u0643\\u062a\\u0627\\u0646 \\/ \\u0627\\u0644\\u0623\\u0642\\u0645\\u0634\\u0629 \\u0628\\u0623\\u0643\\u0628\\u0631 \\u0642\\u062f\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0648\\u0644\\u0643\\u0646 \\u0628\\u0633\\u0628\\u0628 \\u0638\\u0631\\u0648\\u0641 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633 \\u0623\\u0648 \\u0627\\u0644\\u0639\\u064a\\u0648\\u0628 \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0638\\u0627\\u0647\\u0631\\u0629 \\/ \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0631\\u0626\\u064a\\u0629 \\u0641\\u064a \\u0645\\u0648\\u0627\\u062f\\u0647\\u0627 \\u060c \\u0647\\u0646\\u0627\\u0643 \\u0627\\u062d\\u062a\\u0645\\u0627\\u0644 \\u0644\\u062a\\u063a\\u064a\\u064a\\u0631 \\u0644\\u0648\\u0646 \\u0623\\u0648 \\u0627\\u0646\\u0643\\u0645\\u0627\\u0634 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633 \\u0645\\u0642\\u0628\\u0648\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0646\\u0638\\u064a\\u0641 \\u0639\\u0644\\u0649 \\u062e\\u0637\\u0631 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0643 \\u0648\\u0646\\u062d\\u0646 \\u0644\\u0646 \\u062a\\u062a\\u062d\\u0645\\u0644 \\u0623\\u064a \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0629 \\u0639\\u0646 \\u0630\\u0644\\u0643.\\u0625\\u0632\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0628\\u0642\\u0639 \\u0647\\u064a \\u062c\\u0632\\u0621 \\u0645\\u0646 \\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0629 \\u0648\\u0644\\u0643\\u0646 \\u060c \\u0644\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0636\\u0645\\u0627\\u0646 \\u0627\\u0644\\u0625\\u0632\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0643\\u0627\\u0645\\u0644\\u0629 \\u0644\\u0644\\u0628\\u0642\\u0639 \\u0648\\u0633\\u064a\\u062a\\u0645 \\u0645\\u0639\\u0627\\u0644\\u062c\\u062a\\u0647\\u0627 \\u0639\\u0644\\u0649 \\u0645\\u062e\\u0627\\u0637\\u0631 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621. \\u0641\\u064a \\u062d\\u0627\\u0644\\u0629 \\u062d\\u062f\\u0648\\u062b \\u0623\\u064a \\u062e\\u0633\\u0627\\u0631\\u0629 \\u0623\\u0648 \\u0636\\u0631\\u0631 \\u064a\\u062c\\u0628 \\u0627\\u0644\\u0625\\u0628\\u0644\\u0627\\u063a \\u0639\\u0646 support@rithlaundry.com \\u062e\\u0644\\u0627\\u0644 24 \\u0633\\u0627\\u0639\\u0629. \\u0639\\u062f\\u0645 \\u0627\\u0644\\u0625\\u0628\\u0644\\u0627\\u063a \\u0641\\u064a \\u0627\\u0644\\u0648\\u0642\\u062a \\u0627\\u0644\\u0645\\u0646\\u0627\\u0633\\u0628 \\u0644\\u0627 \\u0646\\u062a\\u062d\\u0645\\u0644 \\u0623\\u064a \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0629. \\u064a\\u062c\\u0628 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u062a\\u0639\\u0648\\u064a\\u0636 \\u0639\\u0646 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0648\\u0644\\u0646 \\u064a\\u062a\\u0645 \\u062f\\u0641\\u0639 \\u0623\\u064a \\u0645\\u0628\\u0627\\u0644\\u063a \\u0646\\u0642\\u062f\\u064a\\u0629 \\u0644\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621. \\u064a\\u064f\\u0637\\u0644\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0639\\u062f \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633 \\u0641\\u064a \\u0648\\u0642\\u062a \\u0627\\u0644\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0648\\u0625\\u0628\\u0644\\u0627\\u063a \\u0627\\u0644\\u0635\\u0628\\u064a \\u0641\\u064a \\u062d\\u0627\\u0644\\u0629 \\u0641\\u0642\\u062f\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633. \\u0644\\u0646 \\u0646\\u0643\\u0648\\u0646 \\u0645\\u0633\\u0624\\u0648\\u0644\\u064a\\u0646 \\u0639\\u0646 \\u0623\\u064a \\u0645\\u0637\\u0627\\u0644\\u0628\\u0627\\u062a \\u0645\\u0646 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0642\\u0628\\u064a\\u0644 \\u0628\\u0639\\u062f \\u0642\\u0628\\u0648\\u0644 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633. \\u0642\\u062f \\u064a\\u062d\\u0635\\u0644 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0639\\u0644\\u0649 \\u062a\\u062d\\u062f\\u064a\\u062b\\u0627\\u062a \\u0645\\u0646\\u062a\\u0638\\u0645\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u0645\\u0643\\u0627\\u0644\\u0645\\u0627\\u062a \\/ \\u0627\\u0644\\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0642\\u0635\\u064a\\u0631\\u0629 \\/ \\u0631\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\/ \\u0625\\u0634\\u0639\\u0627\\u0631 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642.\",\"status\":\"1\",\"_token\":\"WHmFSf66NPCC1FEIpXhC7HrgGvSVgT9uy1bTlRo2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/privacy_policies\"}', '2020-06-09 13:51:48', '2020-06-09 13:51:48'),
(2820, 1, 'admin/privacy_policies', 'GET', '223.181.195.115', '[]', '2020-06-09 13:51:48', '2020-06-09 13:51:48'),
(2821, 1, 'admin/products', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 14:19:07', '2020-06-09 14:19:07'),
(2822, 1, 'admin/faqs', 'GET', '223.181.195.115', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 14:26:31', '2020-06-09 14:26:31'),
(2823, 1, 'admin/promo_codes', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 14:55:06', '2020-06-09 14:55:06'),
(2824, 1, 'admin/promo_codes/1/edit', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 14:55:35', '2020-06-09 14:55:35'),
(2825, 1, 'admin/promo_codes', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 14:55:42', '2020-06-09 14:55:42'),
(2826, 1, 'admin/promo_codes', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 15:03:15', '2020-06-09 15:03:15'),
(2827, 1, 'admin/services', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 15:13:09', '2020-06-09 15:13:09'),
(2828, 1, 'admin/services/2/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:27:39', '2020-06-09 19:27:39'),
(2829, 1, 'admin/services/2', 'PUT', '157.50.246.41', '{\"service_name\":\"Ironing\",\"service_name_ar\":\"\\u0643\\u0649 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633\",\"description\":\"We  iron your clothes, you just have to ask. We\'re specialists for caring wide range of garments.\",\"description_ar\":\"\\u0646\\u0642\\u0648\\u0645 \\u0628\\u0643\\u064a \\u0645\\u0644\\u0627\\u0628\\u0633\\u0643 \\u060c \\u0639\\u0644\\u064a\\u0643 \\u0641\\u0642\\u0637 \\u0623\\u0646 \\u062a\\u0633\\u0623\\u0644. \\u0646\\u062d\\u0646 \\u0645\\u062a\\u062e\\u0635\\u0635\\u0648\\u0646 \\u0641\\u064a \\u0631\\u0639\\u0627\\u064a\\u0629 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0648\\u0627\\u0633\\u0639\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633.\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/services\"}', '2020-06-09 19:27:48', '2020-06-09 19:27:48'),
(2830, 1, 'admin/services', 'GET', '157.50.246.41', '[]', '2020-06-09 19:27:48', '2020-06-09 19:27:48'),
(2831, 1, 'admin/services/4/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:27:52', '2020-06-09 19:27:52'),
(2832, 1, 'admin/services/4', 'PUT', '157.50.246.41', '{\"service_name\":\"Duvet Cleaning\",\"service_name_ar\":\"\\u062a\\u0646\\u0638\\u064a\\u0641 \\u0644\\u062d\\u0627\\u0641\",\"description\":\"We wash, dry and iron your clothes, you just have to ask.\",\"description_ar\":\"\\u0646\\u0642\\u0648\\u0645 \\u0628\\u063a\\u0633\\u0644 \\u0645\\u0644\\u0627\\u0628\\u0633\\u0643 \\u0648\\u062a\\u062c\\u0641\\u064a\\u0641\\u0647\\u0627 \\u0648\\u0643\\u064a\\u0647\\u0627 \\u060c \\u0639\\u0644\\u064a\\u0643 \\u0641\\u0642\\u0637 \\u0623\\u0646 \\u062a\\u0633\\u0623\\u0644.\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/services\"}', '2020-06-09 19:27:57', '2020-06-09 19:27:57'),
(2833, 1, 'admin/services', 'GET', '157.50.246.41', '[]', '2020-06-09 19:27:57', '2020-06-09 19:27:57'),
(2834, 1, 'admin/services', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:28:08', '2020-06-09 19:28:08'),
(2835, 1, 'admin/products', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:30:28', '2020-06-09 19:30:28'),
(2836, 1, 'admin/products/2/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:31:44', '2020-06-09 19:31:44'),
(2837, 1, 'admin/products/2', 'PUT', '157.50.246.41', '{\"category_id\":\"1\",\"product_name\":\"Jeans Pant\",\"product_name_ar\":\"\\u0628\\u0646\\u0637\\u0644\\u0648\\u0646 \\u062c\\u064a\\u0646\\u0632\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:31:49', '2020-06-09 19:31:49'),
(2838, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:31:49', '2020-06-09 19:31:49'),
(2839, 1, 'admin', 'GET', '223.182.203.132', '[]', '2020-06-09 19:31:50', '2020-06-09 19:31:50'),
(2840, 1, 'admin/products/4/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:31:51', '2020-06-09 19:31:51'),
(2841, 1, 'admin/products/4', 'PUT', '157.50.246.41', '{\"category_id\":\"1\",\"product_name\":\"Shirt\",\"product_name_ar\":\"\\u0642\\u0645\\u064a\\u0635\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:31:56', '2020-06-09 19:31:56'),
(2842, 1, 'admin/orders', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:31:56', '2020-06-09 19:31:56'),
(2843, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:31:56', '2020-06-09 19:31:56'),
(2844, 1, 'admin/products/6/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:31:59', '2020-06-09 19:31:59'),
(2845, 1, 'admin/products', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:00', '2020-06-09 19:32:00'),
(2846, 1, 'admin/products/6', 'PUT', '157.50.246.41', '{\"category_id\":\"1\",\"product_name\":\"Lower Shorts\",\"product_name_ar\":\"\\u0634\\u0648\\u0631\\u062a \\u0623\\u0642\\u0644\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:32:03', '2020-06-09 19:32:03'),
(2847, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:32:04', '2020-06-09 19:32:04'),
(2848, 1, 'admin/products/8/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:06', '2020-06-09 19:32:06'),
(2849, 1, 'admin/services', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:08', '2020-06-09 19:32:08'),
(2850, 1, 'admin/products/8', 'PUT', '157.50.246.41', '{\"category_id\":\"2\",\"product_name\":\"Kurtis\",\"product_name_ar\":\"\\u0643\\u0648\\u0631\\u062a\\u064a\\u0633\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:32:11', '2020-06-09 19:32:11'),
(2851, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:32:11', '2020-06-09 19:32:11'),
(2852, 1, 'admin/faqs', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:13', '2020-06-09 19:32:13'),
(2853, 1, 'admin/privacy_policies', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:39', '2020-06-09 19:32:39'),
(2854, 1, 'admin/services', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:42', '2020-06-09 19:32:42'),
(2855, 1, 'admin/products/10/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:43', '2020-06-09 19:32:43'),
(2856, 1, 'admin/services/1/edit', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:45', '2020-06-09 19:32:45'),
(2857, 1, 'admin/products/10', 'PUT', '157.50.246.41', '{\"category_id\":\"2\",\"product_name\":\"Midi Overcoat\",\"product_name_ar\":\"\\u0645\\u0639\\u0637\\u0641 \\u0645\\u064a\\u062f\\u064a\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:32:48', '2020-06-09 19:32:48'),
(2858, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:32:48', '2020-06-09 19:32:48'),
(2859, 1, 'admin/services', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:50', '2020-06-09 19:32:50'),
(2860, 1, 'admin/products/12/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:51', '2020-06-09 19:32:51'),
(2861, 1, 'admin/services/2/edit', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:53', '2020-06-09 19:32:53'),
(2862, 1, 'admin/products/12', 'PUT', '157.50.246.41', '{\"category_id\":\"2\",\"product_name\":\"Skirts\",\"product_name_ar\":\"\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:32:55', '2020-06-09 19:32:55'),
(2863, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:32:55', '2020-06-09 19:32:55'),
(2864, 1, 'admin/products/14/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:32:58', '2020-06-09 19:32:58'),
(2865, 1, 'admin/products/14', 'PUT', '157.50.246.41', '{\"category_id\":\"5\",\"product_name\":\"TShirt\",\"product_name_ar\":\"\\u062a\\u064a \\u0634\\u064a\\u0631\\u062a\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:33:08', '2020-06-09 19:33:08'),
(2866, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:33:08', '2020-06-09 19:33:08'),
(2867, 1, 'admin/products/16/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:33:11', '2020-06-09 19:33:11'),
(2868, 1, 'admin/products/16', 'PUT', '157.50.246.41', '{\"category_id\":\"5\",\"product_name\":\"Gown\",\"product_name_ar\":\"\\u062b\\u0648\\u0628\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:33:16', '2020-06-09 19:33:16'),
(2869, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:33:16', '2020-06-09 19:33:16'),
(2870, 1, 'admin/products/18/edit', 'GET', '157.50.246.41', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:33:18', '2020-06-09 19:33:18'),
(2871, 1, 'admin/products/18', 'PUT', '157.50.246.41', '{\"category_id\":\"5\",\"product_name\":\"Tops\",\"product_name_ar\":\"\\u0628\\u0644\\u0627\\u064a\\u0632\",\"status\":\"1\",\"_token\":\"4wFym76nNqLFm9uf1TJe3Cj0SQJMab818liPeZlP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/products\"}', '2020-06-09 19:33:23', '2020-06-09 19:33:23'),
(2872, 1, 'admin/products', 'GET', '157.50.246.41', '[]', '2020-06-09 19:33:23', '2020-06-09 19:33:23'),
(2873, 1, 'admin/auth/setting', 'GET', '223.182.203.132', '{\"_pjax\":\"#pjax-container\"}', '2020-06-09 19:33:39', '2020-06-09 19:33:39'),
(2874, 1, 'admin/auth/setting', 'PUT', '223.182.203.132', '{\"name\":\"Administrator\",\"password\":\"Menpani\",\"password_confirmation\":\"Menpani\",\"_token\":\"dxcXjiBv3aL1lMoYoxtaZmQQQoMYv2Nts0DBgO3t\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/services\\/2\\/edit\"}', '2020-06-09 19:33:58', '2020-06-09 19:33:58'),
(2875, 1, 'admin/auth/setting', 'GET', '223.182.203.132', '[]', '2020-06-09 19:33:59', '2020-06-09 19:33:59'),
(2876, 1, 'admin/labels', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:14:55', '2020-06-10 05:14:55'),
(2877, 1, 'admin/labels', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:14:55', '2020-06-10 05:14:55'),
(2878, 1, 'admin/promo_codes', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:15:05', '2020-06-10 05:15:05'),
(2879, 1, 'admin/promo_codes/2/edit', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:15:09', '2020-06-10 05:15:09'),
(2880, 1, 'admin/promo_codes/2', 'PUT', '157.51.101.220', '{\"promo_name\":\"Get 10% discount\",\"promo_name_ar\":\"\\u0627\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0645 10\\u066a\",\"promo_code\":\"AS10\",\"description\":\"Use code AS10 & get 10% discount\",\"description_ar\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0631\\u0645\\u0632 AS10 \\u0648\\u0627\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0645 10\\u066a\",\"promo_type\":\"2\",\"discount\":\"10\",\"status\":\"1\",\"_token\":\"QP4rF8EPQRUNDBqKzBG1CDZdyW1Dbjk3vm4ef6e4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/promo_codes\"}', '2020-06-10 05:15:15', '2020-06-10 05:15:15'),
(2881, 1, 'admin/promo_codes', 'GET', '157.51.101.220', '[]', '2020-06-10 05:15:16', '2020-06-10 05:15:16'),
(2882, 1, 'admin/promo_codes/4/edit', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:15:18', '2020-06-10 05:15:18'),
(2883, 1, 'admin/promo_codes/4', 'PUT', '157.51.101.220', '{\"promo_name\":\"Get 20% discount\",\"promo_name_ar\":\"\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0645 20\\u066a\",\"promo_code\":\"RITH20\",\"description\":\"Use code RITH20 & get 20% discount.Other T&Cs may apply.\",\"description_ar\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0643\\u0648\\u062f RITH20 \\u0648\\u0627\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0645 20\\u066a \\u060c \\u0648\\u0642\\u062f \\u062a\\u0646\\u0637\\u0628\\u0642 \\u0634\\u0631\\u0648\\u0637 \\u0648\\u0623\\u062d\\u0643\\u0627\\u0645 \\u0623\\u062e\\u0631\\u0649.\",\"promo_type\":\"1\",\"discount\":\"20\",\"status\":\"1\",\"_token\":\"QP4rF8EPQRUNDBqKzBG1CDZdyW1Dbjk3vm4ef6e4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/promo_codes\"}', '2020-06-10 05:15:23', '2020-06-10 05:15:23'),
(2884, 1, 'admin/promo_codes', 'GET', '157.51.101.220', '[]', '2020-06-10 05:15:24', '2020-06-10 05:15:24');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(2885, 1, 'admin/products', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:15:28', '2020-06-10 05:15:28'),
(2886, 1, 'admin/categories', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:15:31', '2020-06-10 05:15:31'),
(2887, 1, 'admin/services', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:15:32', '2020-06-10 05:15:32'),
(2888, 1, 'admin/payment-methods', 'GET', '157.51.101.220', '{\"_pjax\":\"#pjax-container\"}', '2020-06-10 05:15:47', '2020-06-10 05:15:47'),
(2889, 1, 'admin', 'GET', '223.181.202.8', '[]', '2020-06-11 12:25:35', '2020-06-11 12:25:35'),
(2890, 1, 'admin', 'GET', '223.181.239.113', '[]', '2020-06-11 12:36:32', '2020-06-11 12:36:32'),
(2891, 1, 'admin', 'GET', '223.181.234.89', '[]', '2020-06-11 13:28:00', '2020-06-11 13:28:00'),
(2892, 1, 'admin', 'GET', '223.181.234.89', '[]', '2020-06-12 12:01:32', '2020-06-12 12:01:32'),
(2893, 1, 'admin/fare_managements', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:01:39', '2020-06-12 12:01:39'),
(2894, 1, 'admin/payment-methods', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:01:43', '2020-06-12 12:01:43'),
(2895, 1, 'admin/faqs', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:01:48', '2020-06-12 12:01:48'),
(2896, 1, 'admin', 'GET', '223.181.234.89', '[]', '2020-06-12 12:08:51', '2020-06-12 12:08:51'),
(2897, 1, 'admin/payment-methods', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:08:59', '2020-06-12 12:08:59'),
(2898, 1, 'admin', 'GET', '223.181.234.89', '[]', '2020-06-12 12:14:32', '2020-06-12 12:14:32'),
(2899, 1, 'admin/privacy_policies', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:14:38', '2020-06-12 12:14:38'),
(2900, 1, 'admin/faqs', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:17:45', '2020-06-12 12:17:45'),
(2901, 1, 'admin/faqs/2/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:17:50', '2020-06-12 12:17:50'),
(2902, 1, 'admin/faqs/2', 'PUT', '223.181.234.89', '{\"question\":\"Do you mix my clothes with other people\'s clothes?\",\"question_ar\":\"\\u0647\\u0644 \\u062a\\u062e\\u0644\\u0637 \\u0645\\u0644\\u0627\\u0628\\u0633\\u064a \\u0645\\u0639 \\u0645\\u0644\\u0627\\u0628\\u0633 \\u0627\\u0644\\u0622\\u062e\\u0631\\u064a\\u0646\\u061f\",\"answer\":\"We do not mix any of your clothes with those of others in order to maintain hygiene.\",\"answer_ar\":\"\\u0646\\u062d\\u0646 \\u0644\\u0627 \\u0646\\u062e\\u0644\\u0637 \\u0623\\u064a \\u0645\\u0646 \\u0645\\u0644\\u0627\\u0628\\u0633\\u0643 \\u0645\\u0639 \\u0645\\u0644\\u0627\\u0628\\u0633 \\u0627\\u0644\\u0622\\u062e\\u0631\\u064a\\u0646 \\u0645\\u0646 \\u0623\\u062c\\u0644 \\u0627\\u0644\\u062d\\u0641\\u0627\\u0638 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0641\\u0629.\",\"status\":\"1\",\"_token\":\"UEwQBq0lgIlI9zdf6i9td0x34bS15lTWOocbN8lF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/faqs\"}', '2020-06-12 12:17:54', '2020-06-12 12:17:54'),
(2903, 1, 'admin/faqs', 'GET', '223.181.234.89', '[]', '2020-06-12 12:17:54', '2020-06-12 12:17:54'),
(2904, 1, 'admin/faqs/4/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:17:56', '2020-06-12 12:17:56'),
(2905, 1, 'admin/faqs/4', 'PUT', '223.181.234.89', '{\"question\":\"My items are missing or damaged?\",\"question_ar\":\"\\u0639\\u0646\\u0627\\u0635\\u0631\\u064a \\u0645\\u0641\\u0642\\u0648\\u062f\\u0629 \\u0623\\u0648 \\u062a\\u0627\\u0644\\u0641\\u0629\\u061f\",\"answer\":\"We take missing or damaged items extremely serious.  You can email to support@rithlaundry.com as soon as possible with details and pictures. We treat each case individually our support team will be in contact to you within 24 hours.\",\"answer_ar\":\"\\u0646\\u0623\\u062e\\u0630 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0645\\u0641\\u0642\\u0648\\u062f\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u062a\\u0627\\u0644\\u0641\\u0629 \\u062e\\u0637\\u064a\\u0631\\u0629 \\u0644\\u0644\\u063a\\u0627\\u064a\\u0629. \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0628\\u0631\\u064a\\u062f \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0625\\u0644\\u0649 support@rithlaundry.com \\u0641\\u064a \\u0623\\u0642\\u0631\\u0628 \\u0648\\u0642\\u062a \\u0645\\u0645\\u0643\\u0646 \\u0645\\u0639 \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0648\\u0627\\u0644\\u0635\\u0648\\u0631. \\u0646\\u062a\\u0639\\u0627\\u0645\\u0644 \\u0645\\u0639 \\u0643\\u0644 \\u062d\\u0627\\u0644\\u0629 \\u0639\\u0644\\u0649 \\u062d\\u062f\\u0629 \\u060c \\u0648\\u0633\\u064a\\u062a\\u0635\\u0644 \\u0628\\u0643 \\u0641\\u0631\\u064a\\u0642 \\u0627\\u0644\\u062f\\u0639\\u0645 \\u0644\\u062f\\u064a\\u0646\\u0627 \\u0641\\u064a \\u063a\\u0636\\u0648\\u0646 24 \\u0633\\u0627\\u0639\\u0629.\",\"status\":\"1\",\"_token\":\"UEwQBq0lgIlI9zdf6i9td0x34bS15lTWOocbN8lF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/faqs\"}', '2020-06-12 12:18:00', '2020-06-12 12:18:00'),
(2906, 1, 'admin/faqs', 'GET', '223.181.234.89', '[]', '2020-06-12 12:18:01', '2020-06-12 12:18:01'),
(2907, 1, 'admin/faqs/6/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:18:03', '2020-06-12 12:18:03'),
(2908, 1, 'admin/faqs/6', 'PUT', '223.181.234.89', '{\"question\":\"What services do you provide?\",\"question_ar\":\"\\u0645\\u0627 \\u0647\\u064a \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0642\\u062f\\u0645\\u0648\\u0646\\u0647\\u0627\\u061f\",\"answer\":\"Rith Laundry provides the following services: cloth washing, Ironing and cloth repair.\",\"answer_ar\":\"\\u062a\\u0648\\u0641\\u0631 \\u0645\\u063a\\u0633\\u0644\\u0629 \\u0631\\u064a\\u062b \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a\\u0629: \\u063a\\u0633\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0627\\u0628\\u0633 \\u060c \\u0627\\u0644\\u0643\\u064a \\u0648\\u0625\\u0635\\u0644\\u0627\\u062d \\u0627\\u0644\\u0642\\u0645\\u0627\\u0634.\",\"status\":\"1\",\"_token\":\"UEwQBq0lgIlI9zdf6i9td0x34bS15lTWOocbN8lF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/faqs\"}', '2020-06-12 12:18:07', '2020-06-12 12:18:07'),
(2909, 1, 'admin/faqs', 'GET', '223.181.234.89', '[]', '2020-06-12 12:18:07', '2020-06-12 12:18:07'),
(2910, 1, 'admin/faqs/8/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:18:10', '2020-06-12 12:18:10'),
(2911, 1, 'admin/faqs/8', 'PUT', '223.181.234.89', '{\"question\":\"What hours can I get my laundry picked up or delivered?\",\"question_ar\":\"\\u0645\\u0627 \\u0647\\u064a \\u0627\\u0644\\u0633\\u0627\\u0639\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u064a\\u0645\\u0643\\u0646\\u0646\\u064a \\u062e\\u0644\\u0627\\u0644\\u0647\\u0627 \\u0627\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u063a\\u0633\\u064a\\u0644 \\u0627\\u0644\\u062e\\u0627\\u0635 \\u0628\\u064a \\u0623\\u0648 \\u062a\\u0648\\u0635\\u064a\\u0644\\u0647\\u061f\",\"answer\":\"Pick up and delivery are available from 9am to 9pm.\",\"answer_ar\":\"\\u062a\\u062a\\u0648\\u0641\\u0631 \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0648\\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u0633\\u0627\\u0639\\u0629 9 \\u0635\\u0628\\u0627\\u062d\\u064b\\u0627 \\u062d\\u062a\\u0649 9 \\u0645\\u0633\\u0627\\u0621\\u064b.\",\"status\":\"1\",\"_token\":\"UEwQBq0lgIlI9zdf6i9td0x34bS15lTWOocbN8lF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/faqs\"}', '2020-06-12 12:18:14', '2020-06-12 12:18:14'),
(2912, 1, 'admin/faqs', 'GET', '223.181.234.89', '[]', '2020-06-12 12:18:14', '2020-06-12 12:18:14'),
(2913, 1, 'admin/faqs/10/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:18:17', '2020-06-12 12:18:17'),
(2914, 1, 'admin/faqs/10', 'PUT', '223.181.234.89', '{\"question\":\"What if I leave any personnel items in my pockets by mistake?\",\"question_ar\":\"\\u0645\\u0627\\u0630\\u0627 \\u0644\\u0648 \\u062a\\u0631\\u0643\\u062a \\u0623\\u064a \\u0639\\u0646\\u0627\\u0635\\u0631 \\u0634\\u062e\\u0635\\u064a\\u0629 \\u0641\\u064a \\u062c\\u064a\\u0648\\u0628\\u064a \\u0639\\u0646 \\u0637\\u0631\\u064a\\u0642 \\u0627\\u0644\\u062e\\u0637\\u0623\\u061f\",\"answer\":\"We shall check  the laundry while pickup and return back, if we find any personnel belongings. In case we find any at our store during the cleaning process, we will take care of them and shall call you to let you know about the same.\",\"answer_ar\":\"\\u0633\\u0648\\u0641 \\u0646\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0627\\u0644\\u063a\\u0633\\u064a\\u0644 \\u0623\\u062b\\u0646\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0648\\u0646\\u0639\\u0648\\u062f \\u060c \\u0625\\u0630\\u0627 \\u0648\\u062c\\u062f\\u0646\\u0627 \\u0623\\u064a \\u0645\\u062a\\u0639\\u0644\\u0642\\u0627\\u062a \\u0634\\u062e\\u0635\\u064a\\u0629. \\u0641\\u064a \\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0639\\u062b\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u064a \\u0645\\u0646\\u0647\\u0627 \\u0641\\u064a \\u0645\\u062a\\u062c\\u0631\\u0646\\u0627 \\u0623\\u062b\\u0646\\u0627\\u0621 \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0646\\u0638\\u064a\\u0641 \\u060c \\u0641\\u0633\\u0648\\u0641 \\u0646\\u0647\\u062a\\u0645 \\u0628\\u0647\\u0627 \\u0648\\u0633\\u0646\\u0642\\u0648\\u0645 \\u0628\\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0643 \\u0644\\u0625\\u0628\\u0644\\u0627\\u063a\\u0643 \\u0639\\u0646 \\u0630\\u0644\\u0643.\",\"status\":\"1\",\"_token\":\"UEwQBq0lgIlI9zdf6i9td0x34bS15lTWOocbN8lF\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/faqs\"}', '2020-06-12 12:18:21', '2020-06-12 12:18:21'),
(2915, 1, 'admin/faqs', 'GET', '223.181.234.89', '[]', '2020-06-12 12:18:21', '2020-06-12 12:18:21'),
(2916, 1, 'admin/delivery_boys', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:26:35', '2020-06-12 12:26:35'),
(2917, 1, 'admin', 'GET', '157.51.177.149', '[]', '2020-06-12 12:37:46', '2020-06-12 12:37:46'),
(2918, 1, 'admin/orders', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:38:27', '2020-06-12 12:38:27'),
(2919, 1, 'admin/orders/1/edit', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:38:36', '2020-06-12 12:38:36'),
(2920, 1, 'admin/orders/1/edit', 'GET', '157.51.177.149', '[]', '2020-06-12 12:39:14', '2020-06-12 12:39:14'),
(2921, 1, 'admin/delivery_boys', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:39:32', '2020-06-12 12:39:32'),
(2922, 1, 'admin/delivery_boys', 'GET', '157.51.177.149', '[]', '2020-06-12 12:39:38', '2020-06-12 12:39:38'),
(2923, 1, 'admin/delivery_boys/create', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:40:12', '2020-06-12 12:40:12'),
(2924, 1, 'admin/auth/logout', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:49:01', '2020-06-12 12:49:01'),
(2925, 1, 'admin', 'GET', '223.181.234.89', '[]', '2020-06-12 12:49:58', '2020-06-12 12:49:58'),
(2926, 1, 'admin/customers', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:50:05', '2020-06-12 12:50:05'),
(2927, 1, 'admin/delivery_boys/create', 'GET', '157.51.177.149', '[]', '2020-06-12 12:50:05', '2020-06-12 12:50:05'),
(2928, 1, 'admin/customers/1/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:50:09', '2020-06-12 12:50:09'),
(2929, 1, 'admin/customers/1', 'PUT', '223.181.234.89', '{\"customer_name\":\"sarath\",\"phone_number\":\"9751073758\",\"email\":\"sarath.menpani@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"E5yzFETmGptErk3CRB8VpkDRg6njNCM3LDb7mtnl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/customers\"}', '2020-06-12 12:50:17', '2020-06-12 12:50:17'),
(2930, 1, 'admin/customers', 'GET', '223.181.234.89', '[]', '2020-06-12 12:50:18', '2020-06-12 12:50:18'),
(2931, 1, 'admin/delivery_boys', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:50:25', '2020-06-12 12:50:25'),
(2932, 1, 'admin', 'GET', '157.51.177.149', '[]', '2020-06-12 12:50:27', '2020-06-12 12:50:27'),
(2933, 1, 'admin/delivery_boys/2/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:50:29', '2020-06-12 12:50:29'),
(2934, 1, 'admin/delivery_boys/2', 'PUT', '223.181.234.89', '{\"delivery_boy_name\":\"sarath kannan\",\"phone_number\":\"9789354285\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"E5yzFETmGptErk3CRB8VpkDRg6njNCM3LDb7mtnl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/delivery_boys\"}', '2020-06-12 12:50:39', '2020-06-12 12:50:39'),
(2935, 1, 'admin/delivery_boys/2/edit', 'GET', '223.181.234.89', '[]', '2020-06-12 12:50:39', '2020-06-12 12:50:39'),
(2936, 1, 'admin/delivery_boys/2/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:50:45', '2020-06-12 12:50:45'),
(2937, 1, 'admin/delivery_boys', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:50:55', '2020-06-12 12:50:55'),
(2938, 1, 'admin/banner-images', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:55:04', '2020-06-12 12:55:04'),
(2939, 1, 'admin/banner-images', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:57:49', '2020-06-12 12:57:49'),
(2940, 1, 'admin/banner-images/create', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:57:51', '2020-06-12 12:57:51'),
(2941, 1, 'admin/banner-images', 'POST', '223.181.234.89', '{\"service_id\":\"1\",\"status\":\"1\",\"_token\":\"E5yzFETmGptErk3CRB8VpkDRg6njNCM3LDb7mtnl\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-12 12:58:26', '2020-06-12 12:58:26'),
(2942, 1, 'admin/banner-images', 'GET', '223.181.234.89', '[]', '2020-06-12 12:58:27', '2020-06-12 12:58:27'),
(2943, 1, 'admin/banner-images/create', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:58:32', '2020-06-12 12:58:32'),
(2944, 1, 'admin/banner-images', 'POST', '223.181.234.89', '{\"service_id\":\"2\",\"status\":\"1\",\"_token\":\"E5yzFETmGptErk3CRB8VpkDRg6njNCM3LDb7mtnl\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-12 12:58:45', '2020-06-12 12:58:45'),
(2945, 1, 'admin/banner-images', 'GET', '223.181.234.89', '[]', '2020-06-12 12:58:46', '2020-06-12 12:58:46'),
(2946, 1, 'admin/banner-images/create', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:58:48', '2020-06-12 12:58:48'),
(2947, 1, 'admin/banner-images', 'POST', '223.181.234.89', '{\"service_id\":\"3\",\"status\":\"1\",\"_token\":\"E5yzFETmGptErk3CRB8VpkDRg6njNCM3LDb7mtnl\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-12 12:59:04', '2020-06-12 12:59:04'),
(2948, 1, 'admin/banner-images', 'GET', '223.181.234.89', '[]', '2020-06-12 12:59:04', '2020-06-12 12:59:04'),
(2949, 1, 'admin/banner-images/create', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 12:59:07', '2020-06-12 12:59:07'),
(2950, 1, 'admin/banner-images', 'POST', '223.181.234.89', '{\"service_id\":\"4\",\"status\":\"1\",\"_token\":\"E5yzFETmGptErk3CRB8VpkDRg6njNCM3LDb7mtnl\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/banner-images\"}', '2020-06-12 12:59:17', '2020-06-12 12:59:17'),
(2951, 1, 'admin/banner-images', 'GET', '223.181.234.89', '[]', '2020-06-12 12:59:18', '2020-06-12 12:59:18'),
(2952, 1, 'admin/delivery_boys', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:11:41', '2020-06-12 13:11:41'),
(2953, 1, 'admin/delivery_boys/10/edit', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:11:49', '2020-06-12 13:11:49'),
(2954, 1, 'admin/labels', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:11:56', '2020-06-12 13:11:56'),
(2955, 1, 'admin/payment-methods', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:17:27', '2020-06-12 13:17:27'),
(2956, 1, 'admin/customers', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:17:40', '2020-06-12 13:17:40'),
(2957, 1, 'admin/delivery_boys', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:17:45', '2020-06-12 13:17:45'),
(2958, 1, 'admin/delivery_boys/10/edit', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:18:00', '2020-06-12 13:18:00'),
(2959, 1, 'admin/orders', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:18:14', '2020-06-12 13:18:14'),
(2960, 1, 'admin/orders/1/edit', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:18:22', '2020-06-12 13:18:22'),
(2961, 1, 'admin/orders', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:18:27', '2020-06-12 13:18:27'),
(2962, 1, 'admin/view_orders/1', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:18:30', '2020-06-12 13:18:30'),
(2963, 1, 'admin/orders', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:18:34', '2020-06-12 13:18:34'),
(2964, 1, 'admin/orders/1/edit', 'GET', '157.51.177.149', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 13:18:43', '2020-06-12 13:18:43'),
(2965, 1, 'admin/orders/1', 'PUT', '157.51.177.149', '{\"order_id\":\"00001\",\"delivered_by\":\"10\",\"status\":\"5\",\"_token\":\"UCLKjJemkrzj0rh2r4VcZDVYQw516SieY6Krmmfr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders\"}', '2020-06-12 13:18:51', '2020-06-12 13:18:51'),
(2966, 1, 'admin/orders', 'GET', '157.51.177.149', '[]', '2020-06-12 13:18:53', '2020-06-12 13:18:53'),
(2967, 1, 'admin/banner-images', 'GET', '223.181.234.89', '[]', '2020-06-12 15:27:34', '2020-06-12 15:27:34'),
(2968, 1, 'admin', 'GET', '223.181.234.89', '[]', '2020-06-12 15:27:48', '2020-06-12 15:27:48'),
(2969, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 15:27:52', '2020-06-12 15:27:52'),
(2970, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2020-06-12 15:27:55', '2020-06-12 15:27:55'),
(2971, 1, 'admin/orders/94/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 15:27:58', '2020-06-12 15:27:58'),
(2972, 1, 'admin/orders/94', 'PUT', '223.181.234.89', '{\"order_id\":\"00094\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"MJuyMEmmxo22ibHPxbS6SlEh4KkNSGkOYzAgRFWY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=5\"}', '2020-06-12 15:28:05', '2020-06-12 15:28:05'),
(2973, 1, 'admin/orders/94/edit', 'GET', '223.181.234.89', '[]', '2020-06-12 15:28:06', '2020-06-12 15:28:06'),
(2974, 1, 'admin/orders/94', 'PUT', '223.181.234.89', '{\"order_id\":\"00094\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"MJuyMEmmxo22ibHPxbS6SlEh4KkNSGkOYzAgRFWY\",\"_method\":\"PUT\"}', '2020-06-12 15:28:47', '2020-06-12 15:28:47'),
(2975, 1, 'admin/orders', 'GET', '223.181.234.89', '[]', '2020-06-12 15:28:48', '2020-06-12 15:28:48'),
(2976, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-06-12 15:29:53', '2020-06-12 15:29:53'),
(2977, 1, 'admin/orders/94/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 15:29:58', '2020-06-12 15:29:58'),
(2978, 1, 'admin/orders/94', 'PUT', '223.181.234.89', '{\"order_id\":\"00094\",\"delivered_by\":\"2\",\"status\":\"3\",\"_token\":\"MJuyMEmmxo22ibHPxbS6SlEh4KkNSGkOYzAgRFWY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?page=5\"}', '2020-06-12 15:30:08', '2020-06-12 15:30:08'),
(2979, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"5\"}', '2020-06-12 15:30:09', '2020-06-12 15:30:09'),
(2980, 1, 'admin', 'GET', '157.50.139.245', '[]', '2020-06-12 20:44:28', '2020-06-12 20:44:28'),
(2981, 1, 'admin/customers', 'GET', '157.50.139.245', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 20:44:38', '2020-06-12 20:44:38'),
(2982, 1, 'admin/orders', 'GET', '157.50.139.245', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 20:50:24', '2020-06-12 20:50:24'),
(2983, 1, 'admin/orders', 'GET', '157.50.139.245', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2020-06-12 20:50:30', '2020-06-12 20:50:30'),
(2984, 1, 'admin/orders/96/edit', 'GET', '157.50.139.245', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 20:50:36', '2020-06-12 20:50:36'),
(2985, 1, 'admin/orders/96', 'PUT', '157.50.139.245', '{\"order_id\":\"00096\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"QkH913gWQR217klNnTPDZGNu2ZUcFNmG8rl0KN2u\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=5\"}', '2020-06-12 20:50:46', '2020-06-12 20:50:46'),
(2986, 1, 'admin/orders', 'GET', '157.50.139.245', '{\"page\":\"5\"}', '2020-06-12 20:50:49', '2020-06-12 20:50:49'),
(2987, 1, 'admin/orders/96/edit', 'GET', '157.50.139.245', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 20:50:55', '2020-06-12 20:50:55'),
(2988, 1, 'admin/orders/96', 'PUT', '157.50.139.245', '{\"order_id\":\"00096\",\"delivered_by\":\"2\",\"status\":\"3\",\"_token\":\"QkH913gWQR217klNnTPDZGNu2ZUcFNmG8rl0KN2u\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=5\"}', '2020-06-12 20:51:01', '2020-06-12 20:51:01'),
(2989, 1, 'admin/orders', 'GET', '157.50.139.245', '{\"page\":\"5\"}', '2020-06-12 20:51:02', '2020-06-12 20:51:02'),
(2990, 1, 'admin/orders/96/edit', 'GET', '157.50.139.245', '{\"_pjax\":\"#pjax-container\"}', '2020-06-12 20:53:49', '2020-06-12 20:53:49'),
(2991, 1, 'admin/orders/96', 'PUT', '157.50.139.245', '{\"order_id\":\"00096\",\"delivered_by\":\"2\",\"status\":\"4\",\"_token\":\"QkH913gWQR217klNnTPDZGNu2ZUcFNmG8rl0KN2u\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=5\"}', '2020-06-12 20:53:53', '2020-06-12 20:53:53'),
(2992, 1, 'admin/orders', 'GET', '157.50.139.245', '{\"page\":\"5\"}', '2020-06-12 20:53:54', '2020-06-12 20:53:54'),
(2993, 1, 'admin', 'GET', '223.181.234.89', '[]', '2020-06-13 11:04:01', '2020-06-13 11:04:01'),
(2994, 1, 'admin/delivery_boys', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-13 11:04:07', '2020-06-13 11:04:07'),
(2995, 1, 'admin/delivery_boys/2/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-13 11:04:30', '2020-06-13 11:04:30'),
(2996, 1, 'admin/delivery_boys/2', 'PUT', '223.181.234.89', '{\"delivery_boy_name\":\"sarath kannan\",\"phone_number\":\"9789354285\",\"email\":\"sarathkannanbsc@gmail.com\",\"password\":\"123456\",\"status\":\"1\",\"_token\":\"DeltPKy0pTwI34E4mac78irYdL4TbJHEjL88yCjk\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/delivery_boys\"}', '2020-06-13 11:04:41', '2020-06-13 11:04:41'),
(2997, 1, 'admin/delivery_boys/2/edit', 'GET', '223.181.234.89', '[]', '2020-06-13 11:04:41', '2020-06-13 11:04:41'),
(2998, 1, 'admin/delivery_boys', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-13 11:04:49', '2020-06-13 11:04:49'),
(2999, 1, 'admin', 'GET', '223.181.234.89', '[]', '2020-06-14 17:02:06', '2020-06-14 17:02:06'),
(3000, 1, 'admin/payment-methods', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-14 17:02:37', '2020-06-14 17:02:37'),
(3001, 1, 'admin/payment-methods', 'GET', '157.46.37.145', '[]', '2020-06-14 17:15:45', '2020-06-14 17:15:45'),
(3002, 1, 'admin/payment-methods', 'GET', '223.181.234.89', '[]', '2020-06-14 17:16:16', '2020-06-14 17:16:16'),
(3003, 1, 'admin', 'GET', '157.46.8.88', '[]', '2020-06-15 16:32:15', '2020-06-15 16:32:15'),
(3004, 1, 'admin/customers', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 16:32:45', '2020-06-15 16:32:45'),
(3005, 1, 'admin/customers', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2020-06-15 16:32:50', '2020-06-15 16:32:50'),
(3006, 1, 'admin/customers', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-06-15 16:32:52', '2020-06-15 16:32:52'),
(3007, 1, 'admin/customers', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2020-06-15 16:32:55', '2020-06-15 16:32:55'),
(3008, 1, 'admin/customers', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-06-15 16:32:58', '2020-06-15 16:32:58'),
(3009, 1, 'admin/orders', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 16:33:10', '2020-06-15 16:33:10'),
(3010, 1, 'admin/orders', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\",\"page\":\"6\"}', '2020-06-15 16:33:13', '2020-06-15 16:33:13'),
(3011, 1, 'admin/orders', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2020-06-15 16:33:16', '2020-06-15 16:33:16'),
(3012, 1, 'admin/orders/87/edit', 'GET', '157.46.8.88', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 16:33:19', '2020-06-15 16:33:19'),
(3013, 1, 'admin/orders/87', 'PUT', '157.46.8.88', '{\"order_id\":\"00087\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=5\"}', '2020-06-15 16:33:34', '2020-06-15 16:33:34'),
(3014, 1, 'admin/orders', 'GET', '157.46.8.88', '{\"page\":\"5\"}', '2020-06-15 16:33:37', '2020-06-15 16:33:37'),
(3015, 1, 'admin/orders/87/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:04:57', '2020-06-15 17:04:57'),
(3016, 1, 'admin/orders/87', 'PUT', '223.181.234.89', '{\"order_id\":\"00087\",\"delivered_by\":\"2\",\"status\":\"1\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=5\"}', '2020-06-15 17:05:00', '2020-06-15 17:05:00'),
(3017, 1, 'admin/orders/87/edit', 'GET', '223.181.234.89', '[]', '2020-06-15 17:05:01', '2020-06-15 17:05:01'),
(3018, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:05:07', '2020-06-15 17:05:07'),
(3019, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\",\"page\":\"6\"}', '2020-06-15 17:05:10', '2020-06-15 17:05:10'),
(3020, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2020-06-15 17:05:13', '2020-06-15 17:05:13'),
(3021, 1, 'admin/orders/94/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:05:16', '2020-06-15 17:05:16'),
(3022, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:05:19', '2020-06-15 17:05:19'),
(3023, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2020-06-15 17:05:22', '2020-06-15 17:05:22'),
(3024, 1, 'admin/orders/84/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:05:25', '2020-06-15 17:05:25'),
(3025, 1, 'admin/orders/84', 'PUT', '223.181.234.89', '{\"order_id\":\"00084\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:05:30', '2020-06-15 17:05:30'),
(3026, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:05:31', '2020-06-15 17:05:31'),
(3027, 1, 'admin/orders/83/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:07:56', '2020-06-15 17:07:56'),
(3028, 1, 'admin/orders/83', 'PUT', '223.181.234.89', '{\"order_id\":\"00083\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:08:02', '2020-06-15 17:08:02'),
(3029, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:08:04', '2020-06-15 17:08:04'),
(3030, 1, 'admin/orders/84/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:08:19', '2020-06-15 17:08:19'),
(3031, 1, 'admin/orders/84', 'PUT', '223.181.234.89', '{\"order_id\":\"00084\",\"delivered_by\":\"2\",\"status\":\"3\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:08:22', '2020-06-15 17:08:22'),
(3032, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:08:23', '2020-06-15 17:08:23'),
(3033, 1, 'admin/orders/84/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:11:40', '2020-06-15 17:11:40'),
(3034, 1, 'admin/orders/84', 'PUT', '223.181.234.89', '{\"order_id\":\"00084\",\"delivered_by\":\"2\",\"status\":\"4\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:11:44', '2020-06-15 17:11:44'),
(3035, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:11:45', '2020-06-15 17:11:45'),
(3036, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:12:52', '2020-06-15 17:12:52'),
(3037, 1, 'admin/orders/84/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:12:56', '2020-06-15 17:12:56'),
(3038, 1, 'admin/orders/84', 'PUT', '223.181.234.89', '{\"order_id\":\"00084\",\"delivered_by\":\"2\",\"status\":\"2\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:12:59', '2020-06-15 17:12:59'),
(3039, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:13:00', '2020-06-15 17:13:00'),
(3040, 1, 'admin/orders/84/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:13:15', '2020-06-15 17:13:15'),
(3041, 1, 'admin/orders/84', 'PUT', '223.181.234.89', '{\"order_id\":\"00084\",\"delivered_by\":\"2\",\"status\":\"3\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:13:18', '2020-06-15 17:13:18'),
(3042, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:13:19', '2020-06-15 17:13:19'),
(3043, 1, 'admin/orders/84/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:13:26', '2020-06-15 17:13:26'),
(3044, 1, 'admin/orders/84', 'PUT', '223.181.234.89', '{\"order_id\":\"00084\",\"delivered_by\":\"2\",\"status\":\"4\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:13:29', '2020-06-15 17:13:29'),
(3045, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:13:30', '2020-06-15 17:13:30'),
(3046, 1, 'admin/orders/84/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:13:35', '2020-06-15 17:13:35'),
(3047, 1, 'admin/orders/84', 'PUT', '223.181.234.89', '{\"order_id\":\"00084\",\"delivered_by\":\"2\",\"status\":\"5\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:13:38', '2020-06-15 17:13:38'),
(3048, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:13:39', '2020-06-15 17:13:39'),
(3049, 1, 'admin/orders/84/edit', 'GET', '223.181.234.89', '{\"_pjax\":\"#pjax-container\"}', '2020-06-15 17:13:56', '2020-06-15 17:13:56'),
(3050, 1, 'admin/orders/84', 'PUT', '223.181.234.89', '{\"order_id\":\"00084\",\"delivered_by\":\"2\",\"status\":\"6\",\"_token\":\"l5BXhfTqY3t9HszgaRxHA1XC5zsvmKpdjaSJQOmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/admin\\/orders?&page=4\"}', '2020-06-15 17:14:07', '2020-06-15 17:14:07'),
(3051, 1, 'admin/orders', 'GET', '223.181.234.89', '{\"page\":\"4\"}', '2020-06-15 17:14:08', '2020-06-15 17:14:08'),
(3052, 1, 'admin', 'GET', '106.198.33.213', '[]', '2020-06-16 11:40:08', '2020-06-16 11:40:08'),
(3053, 1, 'admin', 'GET', '106.198.33.213', '[]', '2020-06-17 07:22:01', '2020-06-17 07:22:01'),
(3054, 1, 'admin/orders', 'GET', '106.198.33.213', '{\"_pjax\":\"#pjax-container\"}', '2020-06-17 07:22:18', '2020-06-17 07:22:18'),
(3055, 1, 'admin/orders/1/edit', 'GET', '106.198.33.213', '{\"_pjax\":\"#pjax-container\"}', '2020-06-17 07:22:34', '2020-06-17 07:22:34'),
(3056, 1, 'admin/orders/1', 'PUT', '106.198.33.213', '{\"order_id\":\"00001\",\"delivered_by\":\"10\",\"status\":\"6\",\"_token\":\"eG5gQYRNlGWXtvzE1UVgUblbAU76HChEe317rXt2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/rithv2.menpanitech.com\\/public\\/admin\\/orders\"}', '2020-06-17 07:22:42', '2020-06-17 07:22:42'),
(3057, 1, 'admin/orders/1/edit', 'GET', '106.198.33.213', '[]', '2020-06-17 07:22:47', '2020-06-17 07:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2019-07-21 03:46:33', '2019-07-21 03:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL),
(1, 14, NULL, NULL),
(1, 15, NULL, NULL),
(1, 16, NULL, NULL),
(1, 17, NULL, NULL),
(1, 18, NULL, NULL),
(1, 19, NULL, NULL),
(1, 20, NULL, NULL),
(1, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$zUa2Mau8anztq9/xktkXuOqNIcXUN6OygeeQH7INcxIsOAzSO0c1W', 'Administrator', NULL, 'B1H0vfaSsMj4vJ4eN2PVWf8q9TBQIECbivL7fWooLtkaV2Z2dO2Znz9iTZcw', '2019-07-21 03:46:33', '2020-06-09 19:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL,
  `application_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) NOT NULL,
  `default_currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_short_code` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `application_name`, `logo`, `contact_number`, `email`, `country`, `default_currency`, `currency_short_code`, `created_at`, `updated_at`) VALUES
(1, 'Rith Laundry', 'images/f0eaa5e84b467f610336e03fec3337c7.png', '9789354285', 'support@rithlaundry.com', 'India', '$', 'USD', '2020-06-27 14:25:36', '2020-06-27 14:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` int(11) NOT NULL,
  `banner_image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `banner_image`, `service_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/f809fd1b79849aa13569525fe03a151f.png', 1, 1, '2020-06-12 12:58:27', '2020-06-12 12:58:27'),
(2, 'images/7707f662271d52cc61b2807dba3231b4.png', 2, 1, '2020-06-12 12:58:45', '2020-06-12 12:58:45'),
(3, 'images/528a1bfd83d9970d7fc29a83976e5d4a.png', 3, 1, '2020-06-12 12:59:04', '2020-06-12 12:59:04'),
(4, 'images/04e6a7c0fe90b0c0ac867879fda0cbb6.png', 4, 1, '2020-06-12 12:59:18', '2020-06-12 12:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_name_ar`, `service_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'رجال', '1,2,3', 1, '2019-08-29 03:09:50', '2020-06-09 00:45:05'),
(2, 'Women', 'نساء', '1,2,3', 1, '2019-08-29 03:10:08', '2020-06-09 13:26:07'),
(5, 'Kids', 'أطفال', '1,2,3', 1, '2020-03-17 12:25:01', '2020-06-09 00:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boys`
--

CREATE TABLE `delivery_boys` (
  `id` int(11) NOT NULL,
  `delivery_boy_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `otp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `question_ar`, `answer`, `answer_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'How do I book my pickup?', 'كيف أحجز سيارة النقل الخاصة بي؟', 'You can download our app and create an account and place your laundry pickup.', 'يمكنك تنزيل تطبيقنا وإنشاء حساب ووضع خدمة غسيل الملابس الخاصة بك.', 1, '2019-08-28 06:30:36', '2020-06-09 00:59:52'),
(2, 'Do you mix my clothes with other people\'s clothes?', 'هل تخلط ملابسي مع ملابس الآخرين؟', 'We do not mix any of your clothes with those of others in order to maintain hygiene.', 'نحن لا نخلط أي من ملابسك مع ملابس الآخرين من أجل الحفاظ على النظافة.', 1, '2019-08-28 06:30:54', '2020-06-12 12:17:54'),
(3, 'How do I have to pay for your service?', 'كيف يجب أن أدفع مقابل خدمتك؟', 'Payment shall be collected at the time of delivery of garments .', 'يتم تحصيل المبلغ عند تسليم الملابس.', 1, '2019-08-28 06:31:14', '2020-06-09 01:25:15'),
(4, 'My items are missing or damaged?', 'عناصري مفقودة أو تالفة؟', 'We take missing or damaged items extremely serious.  You can email to support@rithlaundry.com as soon as possible with details and pictures. We treat each case individually our support team will be in contact to you within 24 hours.', 'نأخذ العناصر المفقودة أو التالفة خطيرة للغاية. يمكنك إرسال بريد إلكتروني إلى support@rithlaundry.com في أقرب وقت ممكن مع التفاصيل والصور. نتعامل مع كل حالة على حدة ، وسيتصل بك فريق الدعم لدينا في غضون 24 ساعة.', 1, '2019-08-28 06:31:46', '2020-06-12 12:18:00'),
(5, 'Can you wash comforters,  blankets and quilts?', 'يمكنك غسل المعزون والبطانيات واللحف؟', 'Yes. Please see our duved cleaning service page for further details.', 'نعم. يرجى الاطلاع على صفحة خدمة تنظيف duva لمزيد من التفاصيل.', 1, '2019-08-28 06:32:01', '2020-06-09 01:27:07'),
(6, 'What services do you provide?', 'ما هي الخدمات التي تقدمونها؟', 'Rith Laundry provides the following services: cloth washing, Ironing and cloth repair.', 'توفر مغسلة ريث الخدمات التالية: غسيل الملابس ، الكي وإصلاح القماش.', 1, '2019-08-28 06:32:16', '2020-06-12 12:18:07'),
(7, 'What chemicals and detergents do you use?', 'ما هي المواد الكيميائية والمنظفات التي تستخدمها؟', 'For laundry we use detergents (which  are easily available in our markets) along with additives such as vanish, comfort fabric conditioners, Rin Ala and other standard detergents.', 'بالنسبة للغسيل ، نستخدم المنظفات (التي تتوفر بسهولة في أسواقنا) جنبًا إلى جنب مع الإضافات مثل فانيش ، ومكيفات الأقمشة المريحة ، ورين ألا والمنظفات القياسية الأخرى.', 1, '2019-08-28 06:32:44', '2020-06-09 01:29:47'),
(8, 'What hours can I get my laundry picked up or delivered?', 'ما هي الساعات التي يمكنني خلالها الحصول على الغسيل الخاص بي أو توصيله؟', 'Pick up and delivery are available from 9am to 9pm.', 'تتوفر خدمة التوصيل والتوصيل من الساعة 9 صباحًا حتى 9 مساءً.', 1, '2019-08-28 06:32:59', '2020-06-12 12:18:14'),
(9, 'How clean is your store?', 'ما مدى نظافة متجرك؟', 'The cleanliness of our store is our pride. In fact we have special team to handle the cleanliness of the store.', 'نظافة متجرنا هي فخرنا. في الواقع لدينا فريق خاص للتعامل مع نظافة المتجر.', 1, '2019-08-28 06:33:12', '2020-06-09 01:32:20'),
(10, 'What if I leave any personnel items in my pockets by mistake?', 'ماذا لو تركت أي عناصر شخصية في جيوبي عن طريق الخطأ؟', 'We shall check  the laundry while pickup and return back, if we find any personnel belongings. In case we find any at our store during the cleaning process, we will take care of them and shall call you to let you know about the same.', 'سوف نتحقق من الغسيل أثناء الاستلام ونعود ، إذا وجدنا أي متعلقات شخصية. في حالة العثور على أي منها في متجرنا أثناء عملية التنظيف ، فسوف نهتم بها وسنقوم بالاتصال بك لإبلاغك عن ذلك.', 1, '2019-08-28 06:33:28', '2020-06-12 12:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `fare_managements`
--

CREATE TABLE `fare_managements` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare_managements`
--

INSERT INTO `fare_managements` (`id`, `service_id`, `category_id`, `product_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 3, 1, '0000-00-00 00:00:00', '2019-08-29 07:27:36'),
(2, 1, 1, 2, 1, 1, '0000-00-00 00:00:00', '2019-08-29 07:28:13'),
(3, 1, 1, 3, 2, 1, '0000-00-00 00:00:00', '2019-08-29 07:37:08'),
(4, 1, 1, 4, 1, 1, '0000-00-00 00:00:00', '2019-08-29 07:28:48'),
(5, 1, 1, 5, 1, 1, '0000-00-00 00:00:00', '2019-08-29 07:28:58'),
(6, 1, 1, 6, 1, 1, '0000-00-00 00:00:00', '2019-08-29 07:29:06'),
(7, 1, 2, 7, 3, 1, '0000-00-00 00:00:00', '2019-08-29 07:29:52'),
(8, 1, 2, 9, 2, 1, '0000-00-00 00:00:00', '2019-08-29 07:30:01'),
(9, 1, 2, 10, 2, 1, '0000-00-00 00:00:00', '2019-08-29 07:31:47'),
(10, 1, 2, 11, 1, 1, '0000-00-00 00:00:00', '2019-08-29 07:31:57'),
(11, 1, 2, 12, 1, 1, '0000-00-00 00:00:00', '2019-08-29 07:32:25'),
(12, 1, 3, 13, 1, 1, '0000-00-00 00:00:00', '2019-08-29 07:32:37'),
(13, 1, 3, 14, 1, 1, '0000-00-00 00:00:00', '2019-08-29 07:33:25'),
(15, 1, 3, 15, 1, 2, '2019-08-25 09:19:20', '2019-08-29 07:33:34'),
(16, 1, 3, 16, 1, 1, '2019-08-29 06:52:47', '2019-08-29 07:33:43'),
(17, 1, 3, 17, 1, 1, '2019-08-29 06:53:04', '2019-08-29 07:33:51'),
(18, 1, 3, 18, 1, 1, '2019-08-29 06:53:16', '2019-08-29 07:33:59'),
(19, 2, 1, 1, 2, 1, '2019-08-29 06:53:28', '2019-08-29 07:37:35'),
(20, 2, 1, 2, 1, 1, '2019-08-29 09:05:15', '2019-08-29 09:05:15'),
(21, 2, 1, 3, 1, 1, '2019-08-29 09:05:26', '2019-08-29 09:05:26'),
(22, 2, 1, 4, 1, 1, '2019-08-29 09:05:34', '2019-08-29 09:05:34'),
(23, 2, 1, 5, 1, 1, '2019-08-29 09:05:43', '2019-08-29 09:05:43'),
(24, 2, 1, 6, 1, 1, '2019-08-29 09:06:05', '2019-08-29 09:06:05'),
(25, 2, 2, 7, 1, 1, '2019-08-29 09:06:15', '2019-08-29 09:06:15'),
(26, 2, 2, 8, 1, 1, '2019-08-29 09:06:23', '2019-08-29 09:06:23'),
(27, 2, 2, 9, 2, 1, '2019-08-29 09:06:30', '2019-08-29 09:58:25'),
(28, 2, 2, 10, 1, 1, '2019-08-29 09:06:38', '2019-08-29 09:06:38'),
(29, 2, 2, 11, 1, 1, '2019-08-29 09:06:45', '2019-08-29 09:06:45'),
(30, 2, 2, 12, 1, 1, '2019-08-29 09:06:55', '2019-08-29 09:07:09'),
(31, 2, 3, 13, 1, 1, '2019-08-29 09:08:26', '2019-08-29 09:08:52'),
(32, 2, 3, 14, 1, 1, '2019-08-29 09:08:59', '2019-08-29 09:08:59'),
(33, 2, 3, 15, 1, 1, '2019-08-29 09:09:08', '2019-08-29 09:09:08'),
(34, 2, 3, 16, 1, 1, '2019-08-29 09:09:19', '2019-08-29 09:09:19'),
(35, 2, 3, 17, 1, 1, '2019-08-29 09:09:27', '2019-08-29 09:09:27'),
(36, 2, 3, 18, 1, 1, '2019-08-29 09:09:35', '2019-08-29 09:09:35'),
(37, 1, 2, 8, 1, 1, '2019-08-29 09:10:05', '2019-08-29 09:10:05'),
(38, 3, 1, 1, 5, 1, '2019-08-29 09:10:47', '2019-08-29 09:59:17'),
(39, 3, 1, 2, 2, 1, '2019-08-29 09:10:55', '2019-08-29 10:01:19'),
(40, 3, 1, 3, 3, 1, '2019-08-29 09:11:03', '2019-08-29 10:01:57'),
(41, 3, 1, 4, 2, 1, '2019-08-29 09:11:11', '2019-08-29 10:03:49'),
(42, 3, 1, 5, 2, 1, '2019-08-29 09:11:20', '2019-08-29 10:05:42'),
(43, 3, 1, 6, 2, 1, '2019-08-29 09:11:27', '2019-08-29 10:06:10'),
(44, 3, 2, 7, 4, 1, '2019-08-29 09:11:45', '2019-08-29 10:07:04'),
(45, 3, 2, 8, 2, 1, '2019-08-29 09:11:54', '2019-08-29 10:09:20'),
(46, 3, 2, 9, 4, 1, '2019-08-29 09:12:04', '2019-08-29 10:16:11'),
(47, 3, 2, 10, 3, 1, '2019-08-29 09:12:13', '2019-08-29 10:16:54'),
(48, 3, 2, 11, 2, 1, '2019-08-29 09:12:21', '2019-08-29 10:17:35'),
(49, 3, 2, 12, 2, 1, '2019-08-29 09:12:29', '2019-08-29 10:18:18'),
(50, 3, 3, 13, 2, 1, '2019-08-29 09:12:43', '2019-08-29 10:19:02'),
(51, 3, 3, 14, 2, 1, '2019-08-29 09:12:50', '2019-08-29 10:19:14'),
(52, 3, 3, 15, 2, 1, '2019-08-29 09:12:59', '2019-08-29 10:19:26'),
(53, 3, 3, 16, 2, 1, '2019-08-29 09:13:08', '2019-08-29 10:20:16'),
(54, 3, 3, 17, 2, 1, '2019-08-29 09:13:19', '2019-08-29 10:20:27'),
(55, 3, 3, 18, 2, 1, '2019-08-29 09:13:27', '2019-08-29 10:20:37'),
(56, 5, 1, 1, 7, 1, '2019-08-29 09:13:56', '2019-08-29 10:23:16'),
(57, 5, 1, 2, 3, 1, '2019-08-29 09:14:07', '2019-08-29 10:21:48'),
(58, 5, 1, 3, 2, 1, '2019-08-29 09:14:19', '2019-08-29 10:23:28'),
(59, 5, 1, 4, 3, 1, '2019-08-29 09:14:30', '2019-08-29 10:23:36'),
(60, 5, 1, 5, 2, 1, '2019-08-29 09:14:39', '2019-08-29 10:23:44'),
(61, 5, 1, 6, 2, 1, '2019-08-29 09:14:48', '2019-08-29 10:23:53'),
(62, 5, 2, 7, 1, 1, '2019-08-29 09:15:10', '2019-08-29 09:15:10'),
(63, 5, 2, 8, 1, 1, '2019-08-29 09:15:19', '2019-08-29 09:15:19'),
(64, 5, 2, 9, 3, 1, '2019-08-29 09:15:27', '2019-08-29 11:18:19'),
(65, 5, 2, 10, 1, 1, '2019-08-29 09:15:36', '2019-08-29 09:15:36'),
(66, 5, 2, 11, 1, 1, '2019-08-29 09:16:25', '2019-08-29 09:16:25'),
(67, 5, 2, 12, 1, 1, '2019-08-29 09:16:33', '2019-08-29 09:16:33'),
(68, 5, 3, 13, 1, 1, '2019-08-29 09:16:40', '2019-08-29 09:16:40'),
(69, 5, 3, 14, 1, 1, '2019-08-29 09:16:51', '2019-08-29 09:16:51'),
(70, 5, 3, 15, 1, 1, '2019-08-29 09:17:01', '2019-08-29 09:17:01'),
(71, 5, 3, 16, 2, 1, '2019-08-29 09:17:12', '2019-08-29 11:18:31'),
(72, 5, 3, 17, 1, 1, '2019-08-29 09:17:22', '2019-08-29 09:17:22'),
(73, 5, 3, 18, 1, 1, '2019-08-29 09:17:32', '2019-08-29 09:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `fcm_notification_messages`
--

CREATE TABLE `fcm_notification_messages` (
  `id` int(11) NOT NULL,
  `customer_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcm_notification_messages`
--

INSERT INTO `fcm_notification_messages` (`id`, `customer_title`, `customer_description`, `delivery_title`, `delivery_description`, `created_at`, `updated_at`) VALUES
(1, 'Order placed', 'Your order has been placed successfully.', NULL, NULL, '2020-05-29 12:03:47', '2020-05-29 12:03:59'),
(2, 'Order Assigned', 'Your order has been assigned to delivery boy', 'Order Assigned', 'You got new order', '2020-05-29 12:13:35', '2020-05-29 12:13:43'),
(3, 'On the way to pickup', 'Delivery boy was on the way to pickup your clothes', NULL, NULL, '2020-05-29 12:13:49', '2020-05-29 12:13:57'),
(4, 'Processing', 'Your order has been processing', NULL, NULL, '2020-05-29 12:15:55', '2020-05-29 12:16:04'),
(5, 'Ready to Dispatch', 'Your cloths are ready to dispatch', 'Ready to Dispatch', 'Order processed, cloths are ready to collect', '2020-05-29 12:23:37', '2020-05-29 12:23:44'),
(6, 'On the way to Deliver', 'Your cloths are on the way to deliver', NULL, NULL, '2020-05-29 12:23:49', '2020-05-29 12:23:53'),
(7, 'Completed', 'Your order has been completed', NULL, NULL, '2020-05-29 12:23:58', '2020-05-29 12:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `label_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_name_ar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label_for_delivery_boy` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `label_name`, `label_name_ar`, `label_for_delivery_boy`, `description`, `description_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Placed', 'تم الطلب', 'Order Placed', 'Order Placed', 'تم الطلب', 1, '2019-07-23 09:33:18', '2020-06-09 01:47:46'),
(2, 'Assigned', 'تعيين', 'Assigned', 'Assigned', 'تعيين', 1, '2019-07-23 09:33:18', '2020-06-09 01:48:10'),
(3, 'On the way to pickup', 'في الطريق لاقط', 'Ready to pickup', 'On the way to pickup', 'في الطريق لاقط', 1, '2019-07-23 09:33:18', '2020-06-09 01:48:48'),
(4, 'Processing', 'معالجة', 'Picked up', 'Processing', 'معالجة', 1, '2019-07-23 09:33:18', '2020-06-09 01:49:50'),
(5, 'Ready to dispatch', 'جاهز للإرسال', 'Ready to dispatch', 'Ready to dispatch', 'جاهز للإرسال', 1, '2019-07-23 09:33:18', '2020-06-09 01:50:35'),
(6, 'On the way to deliver', 'في الطريق الى التسليم', 'Ready to deiver', 'On the way to deliver', 'في الطريق الى التسليم', 1, '2019-07-23 09:33:18', '2020-06-09 01:51:06'),
(7, 'Completed', 'منجز', 'Completed', 'Completed', 'منجز', 1, '2019-07-23 09:33:18', '2020-06-09 01:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `expected_delivery_date` datetime NOT NULL,
  `total` float NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `sub_total` float NOT NULL,
  `promo_id` int(11) DEFAULT NULL,
  `delivered_by` int(11) DEFAULT NULL,
  `payment_mode` int(11) NOT NULL,
  `items` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_histories`
--

CREATE TABLE `order_histories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `payment_mode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode_ar` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `payment_mode`, `payment_mode_ar`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'السيولة النقدية', 'images/3eceaee8cb6c946e8446a90e69fde340.png', 1, '2020-05-29 18:20:29', '2020-06-09 13:47:08'),
(2, 'Online', 'بطاقة', 'images/6c3628647f4bbf8d28c2842df09d860f.png', 1, '2020-05-29 18:22:00', '2020-06-09 13:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `payment_responses`
--

CREATE TABLE `payment_responses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `payment_mode` int(11) NOT NULL,
  `payment_response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `title_ar`, `description`, `description_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Rith laundry', 'حول مغسلة ريث', 'Rith laundry is pleased to provide professional pickup and delivery laundry services to our customers and offers quality and convenience at an affordable price. Our services are subject to the terms and conditions set forth below. Your use of Rith Laundry services indicates your agreement to be bound by the terms and conditions contained  herein.company never sell your personal information like phone number, address or email Id with any third party.we may change to terms from time to time and it is the current version which will apply to each order when you place it. We will notify you of changes to the Terms by email.', 'يسر شركة Rith Laundry أن تقدم لعملائها خدمات غسيل وتسليم متخصصة واحترافية للجودة والراحة وبأسعار معقولة. تخضع خدماتنا للشروط والأحكام الواردة أدناه. يشير استخدامك لخدمات Rith Laundry إلى موافقتك على الالتزام بالشروط والأحكام الواردة هنا. لا تبيع الشركة أبدًا معلوماتك الشخصية مثل رقم الهاتف أو العنوان أو معرف البريد الإلكتروني مع أي طرف ثالث. قد نتغير إلى الشروط من وقت لآخر وقد هو الإصدار الحالي الذي سيتم تطبيقه على كل طلب عند وضعه. سنخطرك بالتغييرات التي تطرأ على الشروط عبر البريد الإلكتروني.', 1, '2019-08-28 06:45:21', '2020-06-09 01:58:39'),
(2, 'Please read the Terms carefully and make sure that you understand them before placing an order.', 'يرجى قراءة الشروط بعناية والتأكد من فهمك لها قبل تقديم الطلب.', 'All garments/linen/fabrics are handled with greatest case but owing to the conditions of the clothes or non-apparent/non-visible defects in its material there is a possibility of discoloring or shrinkage such garments are accepted for cleaning at owners risk and we will not accept any responsibility for it.Removal of stain is a part of the process but, complete removal of stains can not be guaranteed and will be processed at customers risk. In case of any loss or damage you must be reported to support@rithlaundry.com with in 24 hours. Failure to report on right time we don\'t take any responsibility. Compensation shall be provided inform of services and no cash will be given to customers. Customers are requested to count the clothes at the time of delivery and inform to the delivery boy in case of missing clothes.  We will not be responsible for any such claims after the clothes delivery has been accepted. Customer might get regular updates through calls/ SMS/ emails/ App notification.', 'يتم التعامل مع جميع الملابس / الكتان / الأقمشة بأكبر قدر من الحالة ولكن بسبب ظروف الملابس أو العيوب غير الظاهرة / غير المرئية في موادها ، هناك احتمال لتغيير لون أو انكماش هذه الملابس مقبولة للتنظيف على خطر الملاك ونحن لن تتحمل أي مسؤولية عن ذلك.إزالة البقع هي جزء من العملية ولكن ، لا يمكن ضمان الإزالة الكاملة للبقع وسيتم معالجتها على مخاطر العملاء. في حالة حدوث أي خسارة أو ضرر يجب الإبلاغ عن support@rithlaundry.com خلال 24 ساعة. عدم الإبلاغ في الوقت المناسب لا نتحمل أي مسؤولية. يجب تقديم التعويض عن الخدمات ولن يتم دفع أي مبالغ نقدية للعملاء. يُطلب من العملاء عد الملابس في وقت التسليم وإبلاغ الصبي في حالة فقدان الملابس. لن نكون مسؤولين عن أي مطالبات من هذا القبيل بعد قبول تسليم الملابس. قد يحصل العميل على تحديثات منتظمة من خلال المكالمات / الرسائل القصيرة / رسائل البريد الإلكتروني / إشعار التطبيق.', 1, '2019-08-28 06:45:35', '2020-06-09 13:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_name_ar`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Blazer', 'سترة', 'images/d9cf783581b8f65194c7838358e0be01.png', 1, '2019-08-29 03:16:24', '2020-06-09 02:12:13'),
(2, 1, 'Jeans Pant', 'بنطلون جينز', 'images/6e40cbc749344236fddf74753a06ef7e.png', 1, '2019-08-29 03:17:28', '2020-06-09 19:31:49'),
(3, 1, 'Kurta', 'كورتا', 'images/31ca70635db0147c028b21ae45aa408e.png', 1, '2019-08-29 03:17:56', '2020-06-09 02:13:31'),
(4, 1, 'Shirt', 'قميص', 'images/4f4b2b8025fa94c68ed83bf6f9c288a0.png', 1, '2019-08-29 03:18:23', '2020-06-09 19:31:56'),
(5, 1, 'Shorts', 'السراويل القصيرة', 'images/1897012c59f3c131b42645a03694881a.png', 1, '2019-08-29 03:19:18', '2020-06-09 02:16:02'),
(6, 1, 'Lower Shorts', 'شورت أقل', 'images/b6b209206ec4d0bc05b1bea53a80449b.png', 1, '2019-08-29 03:20:00', '2020-06-09 19:32:03'),
(7, 2, 'Saree', 'ساري', 'images/fd585b0b17fb4d0e0db88ea857e92722.png', 1, '2019-08-29 03:21:04', '2020-06-09 02:16:50'),
(8, 2, 'Kurtis', 'كورتيس', 'images/89b901db3f54df3ebd07bf8d7629d05d.png', 1, '2019-08-29 03:21:31', '2020-06-09 19:32:11'),
(9, 2, 'Lehanga', 'كورتيس', 'images/9eea4e9479341cdd6ef77ddb00bb49d2.png', 1, '2019-08-29 03:22:12', '2020-06-09 02:18:08'),
(10, 2, 'Midi Overcoat', 'معطف ميدي', 'images/01324e48a66fd8d882f36a587b27bc4f.png', 1, '2019-08-29 03:23:16', '2020-06-09 19:32:48'),
(11, 2, 'Salwar Suit Pant', 'بنطال سلوار بانت', 'images/34281bbf0eba0cb22fb5e46d6ee0bf5c.png', 1, '2019-08-29 03:24:00', '2020-06-09 02:20:39'),
(12, 2, 'Skirts', 'تنانير', 'images/36d3ba19c7cbc4bc96ce12ed3e9b16b4.png', 1, '2019-08-29 03:24:40', '2020-06-09 19:32:55'),
(13, 5, 'Shirt', 'قميص', 'images/da42cd315289b782c4b6fd0bb2f71c9f.png', 1, '2019-08-29 03:25:34', '2020-06-09 02:22:16'),
(14, 5, 'TShirt', 'تي شيرت', 'images/a4030205df5b1097bb904da21f655d63.png', 1, '2019-08-29 03:26:13', '2020-06-09 19:33:08'),
(15, 5, 'Pant', 'يلهث', 'images/ccd18c998616e2efe3d1c5b846496355.png', 1, '2019-08-29 03:26:59', '2020-06-09 02:23:55'),
(16, 5, 'Gown', 'ثوب', 'images/891dda07299e3ea5ae5c9af86288e90c.png', 1, '2019-08-29 03:27:31', '2020-06-09 19:33:16'),
(17, 5, 'Midi Skirts', 'تنانير ميدي', 'images/6cafe95a1f0ff649bbb71f8fae1e5aca.png', 1, '2019-08-29 03:28:15', '2020-06-09 02:25:16'),
(18, 5, 'Tops', 'بلايز', 'images/9368640317fbd3d7b54a4fb632a88332.png', 1, '2019-08-29 03:28:40', '2020-06-09 19:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` int(11) NOT NULL,
  `promo_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_type` int(11) NOT NULL,
  `discount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `promo_name`, `promo_name_ar`, `promo_code`, `description`, `description_ar`, `promo_type`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Get 50% discount', 'احصل على خصم 50٪', 'RITH50', 'Use code RITH50 & get 50% discount.Other T&Cs  may apply.', 'استخدم الكود RITH50 واحصل على خصم 50٪ ، وقد تنطبق شروط وأحكام أخرى.', 2, 50, 1, '2019-08-31 10:16:51', '2020-06-09 03:17:53'),
(2, 'Get 10% discount', 'احصل على خصم 10٪', 'AS10', 'Use code AS10 & get 10% discount', 'استخدم الرمز AS10 واحصل على خصم 10٪', 2, 10, 1, '2019-08-31 10:18:40', '2020-06-10 05:15:16'),
(3, 'Get 30% discount', 'احصل على خصم 30٪', 'UM30', 'Use code UM30 & get 30% discount.Other T&Cs may apply.', 'استخدم الرمز UM30 واحصل على خصم 30٪ ، وقد تنطبق شروط وأحكام أخرى.', 1, 30, 1, '2019-08-31 12:16:15', '2020-06-09 03:20:09'),
(4, 'Get 20% discount', 'حصل على خصم 20٪', 'RITH20', 'Use code RITH20 & get 20% discount.Other T&Cs may apply.', 'استخدم الكود RITH20 واحصل على خصم 20٪ ، وقد تنطبق شروط وأحكام أخرى.', 1, 20, 1, '2019-08-31 12:25:30', '2020-06-10 05:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `promo_types`
--

CREATE TABLE `promo_types` (
  `id` int(6) UNSIGNED NOT NULL,
  `type_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_types`
--

INSERT INTO `promo_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Fixed', '2019-07-24 18:30:00', '2019-07-24 18:30:00'),
(2, 'Percentage', '2019-07-24 18:30:00', '2019-07-24 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_name_ar`, `description`, `description_ar`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dry Cleaning', 'التنظيف الجاف', 'We done dry clean for your clothes. We\'re specialists for caring wide range of garments.', 'قمنا بالتنظيف الجاف لملابسك. نحن متخصصون في رعاية مجموعة واسعة من الملابس.', 'images/b8d321ac69fd8c9ff829111f18464e58.png', 1, '2019-08-29 02:59:54', '2020-06-09 03:35:31'),
(2, 'Ironing', 'كى الملابس', 'We  iron your clothes, you just have to ask. We\'re specialists for caring wide range of garments.', 'نقوم بكي ملابسك ، عليك فقط أن تسأل. نحن متخصصون في رعاية مجموعة واسعة من الملابس.', 'images/fe39d0eeec9aaafda2340cf75347c77e.png', 1, '2019-08-29 03:05:06', '2020-06-09 19:27:48'),
(3, 'Wash & Ironing', 'الغسيل والكي', 'We wash and iron your clothes, you just have to ask.', 'نحن نغسل وكي ملابسك ، عليك فقط أن تسأل.', 'images/39d68670e2515f1b3009446a6eda24a0.png', 1, '2019-08-29 03:05:52', '2020-06-09 03:37:00'),
(4, 'Duvet Cleaning', 'تنظيف لحاف', 'We wash, dry and iron your clothes, you just have to ask.', 'نقوم بغسل ملابسك وتجفيفها وكيها ، عليك فقط أن تسأل.', 'images/4c168616d801633c45a7bca20aebc299.png', 1, '2019-08-29 03:06:13', '2020-06-09 19:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `status_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Inactive', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fare_managements`
--
ALTER TABLE `fare_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcm_notification_messages`
--
ALTER TABLE `fcm_notification_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_responses`
--
ALTER TABLE `payment_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_types`
--
ALTER TABLE `promo_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3058;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fare_managements`
--
ALTER TABLE `fare_managements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `fcm_notification_messages`
--
ALTER TABLE `fcm_notification_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_histories`
--
ALTER TABLE `order_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_responses`
--
ALTER TABLE `payment_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promo_types`
--
ALTER TABLE `promo_types`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
