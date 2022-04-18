-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2022 at 01:20 AM
-- Server version: 10.3.34-MariaDB-log
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myroas5_os`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cemail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cstate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cperson` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpostal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `company_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `cname`, `cemail`, `cnumber`, `cstate`, `caddress`, `cperson`, `cpostal_code`, `cimage`, `status`, `company_code`, `created_at`, `updated_at`) VALUES
(1, 3, 'AKS', 'ff@en.com', '464545', 'nsw', '4564545', 'dsdsdg', '555', '1650167877img1.jpg', NULL, NULL, '2022-04-17 07:57:57', '2022-04-17 07:57:57'),
(3, 2, 'Mostakim1', 'mim@gmail.com', '01762312227', 'Dhaka', 'Dhaka', '01762312227', '1229', NULL, 1, 'gsda', '2022-04-17 11:47:34', '2022-04-17 17:31:54'),
(4, 8, 'AKS', 'qweqw@fgd.com', '24234234', 'nsw', 'ssfsdf', 'afssfs', '32232', '1650186050Screenshot (1).png', 1, 'MES', '2022-04-17 13:00:50', '2022-04-17 13:00:50'),
(5, 2, 'test', 'sat@gmail.com', 'q231231', '31231', 'asdaDaa', 'sdasda', '213123', NULL, 2, 'gsda', '2022-04-17 17:10:27', '2022-04-17 17:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `company_code` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `company_contact` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `company_code`, `image`, `mname`, `lname`, `status`, `company`, `company_contact`, `created_at`, `updated_at`) VALUES
(1, 2, 'gsda', NULL, 'mostakim', 'mim', 1, 'GSDA', 1762312227, NULL, NULL),
(2, 8, 'MES', NULL, 'Kabir', 'Chowdhury', 1, 'MES', 1300004732, '2022-04-17 12:51:18', '2022-04-18 08:43:48'),
(3, 10, 'GSDA', '1650188714Mostakim 300,300.jpg', 'M.', 'Mostakim', 1, 'gsda', 1762312227, '2022-04-17 13:45:14', '2022-04-17 13:45:14'),
(4, 11, 'GSDA', NULL, NULL, NULL, 1, 'GSDA', 1575202028, '2022-04-17 14:16:49', '2022-04-17 14:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `company_types`
--

CREATE TABLE `company_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rsa_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rsa_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_aid_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `userID`, `fname`, `mname`, `lname`, `company`, `address`, `state`, `postal_code`, `email`, `status`, `contact_number`, `date_of_birth`, `rsa_number`, `rsa_expire_date`, `license_no`, `license_expire_date`, `image`, `first_aid_license`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 7, 'K.', 'M.', 'Mostakim', 'gsda', 'Nikunjo-2, Dhaka', 'Dhaka', '1229', 'mimrzs2013@gmail.com', 1, '01762312227', '2022-04-29', '323213', '2022-04-28', '213123', '2022-04-20', NULL, '2022-04-29', 2, '2022-04-17 10:49:35', '2022-04-17 11:30:31'),
(3, 9, 'Altamash', 'Kabir', 'mirja', 'MES', '234234', 'NSW', '2195', 'ee@rr.com', 1, '32423324', '2022-04-17', '234324324', '2022-04-17', '424324', '2022-04-17', NULL, '2022-04-17', 8, '2022-04-17 12:55:24', '2022-04-17 12:55:24'),
(4, 15, 'Abu', NULL, NULL, 'gsda', 'test', 'vjv', '8790880', 'sayeed105236@gmail.com', 1, '77097658', NULL, '770909', NULL, '070977097', NULL, NULL, NULL, 2, '2022-04-17 14:21:46', '2022-04-17 14:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inductedsites`
--

CREATE TABLE `inductedsites` (
  `id` bigint(20) NOT NULL,
  `employee_id` int(11) UNSIGNED DEFAULT NULL,
  `client_id` int(11) UNSIGNED DEFAULT NULL,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `company_code` varchar(255) DEFAULT NULL,
  `induction_date` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inductedsites`
--

INSERT INTO `inductedsites` (`id`, `employee_id`, `client_id`, `project_id`, `user_id`, `company_code`, `induction_date`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 3, 2, 'gsda', '2022-04-17', '344', '2022-04-17 12:03:39', '2022-04-17 12:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `user_id`, `company_code`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Type', 3, '123', NULL, '2022-04-06 11:40:42', '2022-04-06 11:40:42'),
(2, 'General security', 8, 'MES', NULL, '2022-04-17 13:03:43', '2022-04-17 13:03:43'),
(3, 'Test', 2, 'gsda', 'Fhhggh', '2022-04-17 16:50:15', '2022-04-17 16:50:15'),
(4, 'sayeed', 2, 'gsda', 'dsadas', '2022-04-17 17:52:31', '2022-04-17 17:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_04_084153_create_roaster_statuses_table', 1),
(6, '2022_03_04_084255_create_payment_statuses_table', 1),
(7, '2022_03_04_084428_create_job_types_table', 1),
(8, '2022_03_05_130837_create_permission_tables', 1),
(9, '2022_03_07_194620_create_roaster_types_table', 1),
(10, '2022_03_10_041522_create_employees_table', 1),
(11, '2022_03_11_085022_create_clients_table', 1),
(12, '2022_03_11_203155_create_projects_table', 1),
(13, '2022_03_15_105532_create_time_keepers_table', 1),
(14, '2022_03_17_193218_create_payments_table', 1),
(15, '2022_04_03_094901_create_statuses_table', 1),
(16, '2022_04_04_085457_create_company_types_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `myavailabilities`
--

CREATE TABLE `myavailabilities` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `company_code` varchar(255) DEFAULT NULL,
  `employee_id` int(11) UNSIGNED DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myavailabilities`
--

INSERT INTO `myavailabilities` (`id`, `user_id`, `company_code`, `employee_id`, `start_date`, `end_date`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 2, 'gsda', 2, '2022-04-17 12:00:00', '2022-04-27 12:00:00', '34422233', '2022-04-17 11:11:07', '2022-04-17 11:30:54'),
(2, 2, 'gsda', 2, '2022-04-17 12:00:00', '2022-04-18 00:00:00', 'dsadas', '2022-04-17 17:02:56', '2022-04-17 17:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roaster_id` int(10) UNSIGNED NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `roaster_id`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Unpaid', '2022-04-17 12:57:01', '2022-04-17 12:57:01'),
(2, 4, 'Unpaid', '2022-04-17 13:41:42', '2022-04-17 13:41:42'),
(3, 5, 'Unpaid', '2022-04-17 18:13:01', '2022-04-17 18:13:01'),
(4, 6, 'Unpaid', '2022-04-17 18:23:21', '2022-04-17 18:23:21'),
(5, 7, 'Unpaid', '2022-04-17 18:23:50', '2022-04-17 18:23:50'),
(6, 8, 'Unpaid', '2022-04-17 18:24:13', '2022-04-17 18:24:13'),
(7, 9, 'Unpaid', '2022-04-17 18:40:53', '2022-04-17 18:40:53'),
(8, 10, 'Unpaid', '2022-04-17 18:41:06', '2022-04-17 18:41:06'),
(9, 11, 'Unpaid', '2022-04-18 06:27:34', '2022-04-18 06:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `payment_statuses`
--

CREATE TABLE `payment_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2022-04-06 11:40:42', '2022-04-06 11:40:42'),
(2, 'role-create', 'web', '2022-04-06 11:40:42', '2022-04-06 11:40:42'),
(3, 'role-edit', 'web', '2022-04-06 11:40:42', '2022-04-06 11:40:42'),
(4, 'role-delete', 'web', '2022-04-06 11:40:42', '2022-04-06 11:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_venue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `pName`, `cName`, `Status`, `cNumber`, `clientName`, `project_address`, `project_state`, `project_venue`, `company_code`, `created_at`, `updated_at`) VALUES
(1, 3, 'bd', 'ghfgfg', '1', '45646', '1', 'ff', 'hgh', '2134', NULL, '2022-04-17 07:58:42', '2022-04-17 07:58:42'),
(3, 2, 'PHP', 'Mostakim', '1', '01762312227', '3', 'Dhaka', 'Dhaka', 'Dhaka', 'gsda', '2022-04-17 11:59:14', '2022-04-17 11:59:34'),
(4, 8, 'Barkinhead', 'Adam', '1', '53535435', '4', 'sdsadsad', 'nsw', '3333', 'MES', '2022-04-17 13:01:30', '2022-04-17 13:01:30'),
(5, 2, 'PHP2', 'sadsad', '2', 'sadasda', '3', 'dsadas', 'sadasd', 'asdad', 'gsda', '2022-04-17 17:03:28', '2022-04-17 17:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `shift_start` datetime DEFAULT NULL,
  `shift_end` datetime DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `company_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `revenues`
--

INSERT INTO `revenues` (`id`, `client_name`, `project_name`, `shift_start`, `shift_end`, `hours`, `rate`, `amount`, `payment_date`, `remarks`, `user_id`, `company_code`, `created_at`, `updated_at`) VALUES
(1, '3', '3', '2022-04-17 12:00:00', '2022-04-19 12:00:00', 234, 3, 48, '2022-04-17', '23ee44', 2, 'gsda', '2022-04-17 13:40:52', '2022-04-17 13:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `roaster_statuses`
--

CREATE TABLE `roaster_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roaster_statuses`
--

INSERT INTO `roaster_statuses` (`id`, `name`, `user_id`, `company_code`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 3, '123', NULL, '2022-04-06 11:40:42', '2022-04-06 11:40:42'),
(2, 'Not published', 8, 'MES', NULL, '2022-04-17 13:02:39', '2022-04-17 13:02:39'),
(3, 'Published', 8, 'MES', NULL, '2022-04-17 13:02:49', '2022-04-17 13:02:49'),
(4, 'Accept', 8, 'MES', NULL, '2022-04-17 13:02:58', '2022-04-17 13:03:24'),
(5, 'Test', 2, 'gsda', 'dsadas', '2022-04-17 17:52:18', '2022-04-17 17:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `roaster_types`
--

CREATE TABLE `roaster_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roaster_id` int(10) UNSIGNED NOT NULL,
  `roaster_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unschedueled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roaster_types`
--

INSERT INTO `roaster_types` (`id`, `roaster_id`, `roaster_type`, `created_at`, `updated_at`) VALUES
(1, 3, 'Unschedueled', '2022-04-17 12:57:01', '2022-04-17 12:57:01'),
(2, 4, 'Unschedueled', '2022-04-17 13:41:42', '2022-04-17 13:41:42'),
(3, 5, 'Unschedueled', '2022-04-17 18:13:01', '2022-04-17 18:13:01'),
(4, 6, 'Unschedueled', '2022-04-17 18:23:21', '2022-04-17 18:23:21'),
(5, 7, 'Unschedueled', '2022-04-17 18:23:50', '2022-04-17 18:23:50'),
(6, 8, 'Unschedueled', '2022-04-17 18:24:13', '2022-04-17 18:24:13'),
(7, 9, 'Unschedueled', '2022-04-17 18:40:53', '2022-04-17 18:40:53'),
(8, 10, 'Unschedueled', '2022-04-17 18:41:06', '2022-04-17 18:41:06'),
(9, 11, 'Unschedueled', '2022-04-18 06:27:34', '2022-04-18 06:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2022-04-06 11:40:41', '2022-04-06 11:40:41'),
(2, 'Admin', 'web', '2022-04-06 11:40:41', '2022-04-06 11:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_keepers`
--

CREATE TABLE `time_keepers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `roaster_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_start` datetime NOT NULL,
  `shift_end` datetime NOT NULL,
  `sing_in` datetime DEFAULT NULL,
  `sing_out` datetime DEFAULT NULL,
  `duration` decimal(10,2) NOT NULL,
  `ratePerHour` decimal(10,2) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `job_type_id` bigint(20) UNSIGNED NOT NULL,
  `roaster_status_id` bigint(20) UNSIGNED NOT NULL,
  `roaster_type` enum('Unschedueled','Schedueled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unschedueled',
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_keepers`
--

INSERT INTO `time_keepers` (`id`, `user_id`, `company_code`, `employee_id`, `client_id`, `project_id`, `company_id`, `roaster_date`, `shift_start`, `shift_end`, `sing_in`, `sing_out`, `duration`, `ratePerHour`, `amount`, `job_type_id`, `roaster_status_id`, `roaster_type`, `remarks`, `created_at`, `updated_at`) VALUES
(5, 2, 'gsda', 2, 3, 3, 2, '2022-04-17', '2022-04-17 12:00:00', '2022-04-18 12:00:00', NULL, NULL, 24.00, 6.00, 144.00, 4, 5, 'Schedueled', 'sdasdas', '2022-04-17 18:13:01', '2022-04-17 18:13:01'),
(7, 2, 'gsda', 2, 3, 3, 2, '2022-04-18', '2022-04-18 12:00:00', '2022-04-19 12:00:00', NULL, NULL, 24.00, 3.00, 72.00, 4, 5, 'Unschedueled', 'sdasdas', '2022-04-17 18:23:50', '2022-04-17 18:23:50'),
(8, 2, 'gsda', 4, 3, 3, 2, '2022-04-18', '2022-04-18 12:00:00', '2022-04-19 12:00:00', NULL, NULL, 24.00, 3.00, 72.00, 4, 5, 'Unschedueled', 'sdasdas', '2022-04-17 18:24:13', '2022-04-17 18:24:13'),
(9, 2, 'gsda', 2, 3, 3, 2, '2022-04-18', '2022-04-18 12:00:00', '2022-04-19 12:00:00', NULL, NULL, 24.00, 3.00, 72.00, 4, 5, 'Unschedueled', 'sdasdas', '2022-04-17 18:40:53', '2022-04-17 18:40:53'),
(11, 8, 'MES', 3, 4, 4, 8, '2022-04-18', '2022-04-18 07:00:00', '2022-04-18 19:00:00', NULL, NULL, 12.00, 20.00, 240.00, 2, 2, 'Unschedueled', NULL, '2022-04-18 06:27:34', '2022-04-18 06:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `upcomingevents`
--

CREATE TABLE `upcomingevents` (
  `id` int(11) NOT NULL,
  `client_name` int(11) UNSIGNED DEFAULT NULL,
  `project_name` int(11) UNSIGNED DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `shift_start` datetime DEFAULT NULL,
  `shift_end` datetime DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `company_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcomingevents`
--

INSERT INTO `upcomingevents` (`id`, `client_name`, `project_name`, `event_date`, `shift_start`, `shift_end`, `rate`, `employee_id`, `remarks`, `user_id`, `company_code`, `created_at`, `updated_at`) VALUES
(1, 3, 3, '2022-04-17', '2022-04-17 12:00:00', '2022-04-19 12:00:00', 2, 2, '23ee44', 2, 'gsda', '2022-04-17 13:40:27', '2022-04-17 13:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `super_admin` tinyint(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `super_admin`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'superadmin@roaster.com', NULL, 1, NULL, '$2y$10$tQhc1k0tUUid8owKnHBZN.yzBXRM8ZwjpGh79zH9AbR5pP1Ff3dq6', NULL, '2022-04-06 11:40:42', '2022-04-06 11:40:42'),
(2, 'Admin', 'admin@roaster.com', NULL, NULL, 1, '$2y$10$BRgnkYarkJRYoOOYuGS.QORFAusajKmuorUPUejCT5bz8EHxuPIca', NULL, '2022-04-06 11:40:42', '2022-04-06 11:40:42'),
(3, 'Pradip Parajuli', 'prad4787@gmail.com', NULL, NULL, 1, '$2y$10$7uDGZW2OgPmHM.z.SIXU1eVbt5yZl7c/hJ.BkAf9yhBQzIvCUoU.e', NULL, '2022-04-06 11:40:42', '2022-04-06 11:40:42'),
(7, 'K.', 'mimrzs2013@gmail.com', NULL, NULL, NULL, '$2y$10$sji9q51.Bxp6o7a3arNokOT3TTZxUm24yY78l7QaQVTbDCUK69nRC', NULL, '2022-04-17 10:49:35', '2022-04-17 10:49:35'),
(8, 'Ahsan', 'iran0601@yahoo.com', NULL, NULL, 1, '$2y$10$pEypwdh/p79/KyXH3mXll.mG4f54dxHmGUSIsj.4YOLvvsq.9KeIS', NULL, '2022-04-17 12:51:18', '2022-04-17 12:53:38'),
(9, 'Altamash', 'ee@rr.com', NULL, NULL, NULL, '$2y$10$7ySkWOr9fwjDPKSKd0P1gOLW3LUbGuQELLtXqxd3yB3bzwwbIog1i', NULL, '2022-04-17 12:55:23', '2022-04-17 12:55:23'),
(11, 'Abu', 'abusayeed33343536@gmail.com', NULL, NULL, 1, '$2y$10$KmeGWYFCc.EQ2sTnEgT5D.z5Th9MUMLEV1fxGy7NRVMOafYI4jXHe', NULL, '2022-04-17 14:16:49', '2022-04-17 14:16:49'),
(15, 'Abu', 'sayeed105236@gmail.com', NULL, NULL, NULL, '$2y$10$2DVIplizOcldB1M/NIxasuIgxAx4RjVlaxpm5ywlI6sVoZZq/CCTG', NULL, '2022-04-17 14:21:46', '2022-04-17 14:21:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_user_id_index` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_types`
--
ALTER TABLE `company_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_user_id_index` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inductedsites`
--
ALTER TABLE `inductedsites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `myavailabilities`
--
ALTER TABLE `myavailabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_roaster_id_index` (`roaster_id`);

--
-- Indexes for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_index` (`user_id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roaster_statuses`
--
ALTER TABLE `roaster_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roaster_types`
--
ALTER TABLE `roaster_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roaster_types_roaster_id_index` (`roaster_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_keepers`
--
ALTER TABLE `time_keepers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_keepers_user_id_foreign` (`user_id`),
  ADD KEY `time_keepers_employee_id_foreign` (`employee_id`),
  ADD KEY `time_keepers_client_id_foreign` (`client_id`),
  ADD KEY `time_keepers_project_id_foreign` (`project_id`),
  ADD KEY `time_keepers_job_type_id_foreign` (`job_type_id`),
  ADD KEY `time_keepers_roaster_status_id_foreign` (`roaster_status_id`);

--
-- Indexes for table `upcomingevents`
--
ALTER TABLE `upcomingevents`
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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_types`
--
ALTER TABLE `company_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inductedsites`
--
ALTER TABLE `inductedsites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `myavailabilities`
--
ALTER TABLE `myavailabilities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roaster_statuses`
--
ALTER TABLE `roaster_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roaster_types`
--
ALTER TABLE `roaster_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_keepers`
--
ALTER TABLE `time_keepers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `upcomingevents`
--
ALTER TABLE `upcomingevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_keepers`
--
ALTER TABLE `time_keepers`
  ADD CONSTRAINT `time_keepers_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `time_keepers_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `time_keepers_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`),
  ADD CONSTRAINT `time_keepers_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `time_keepers_roaster_status_id_foreign` FOREIGN KEY (`roaster_status_id`) REFERENCES `roaster_statuses` (`id`),
  ADD CONSTRAINT `time_keepers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
