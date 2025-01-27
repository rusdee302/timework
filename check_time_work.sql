-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2025 at 07:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `check_time_work`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_28_101220_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scan_rfid_error`
--

CREATE TABLE `scan_rfid_error` (
  `id` int(11) NOT NULL,
  `number_card` varchar(30) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `note` text DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `scan_rfid_error`
--

INSERT INTO `scan_rfid_error` (`id`, `number_card`, `status`, `date_create`, `note`, `ip_address`) VALUES
(6, '109250002304685035', NULL, '2025-01-17 08:52:11', NULL, '192.168.60.51'),
(7, '`00144729552205503', NULL, '2025-01-17 09:09:53', NULL, '192.168.60.51'),
(8, '109250002304685035', NULL, '2025-01-21 02:23:57', 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว', '192.168.17.175'),
(9, '460185229800093021', NULL, '2025-01-21 06:22:02', 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว', '192.168.60.51'),
(12, '593221931087400126', NULL, '2025-01-23 11:11:17', 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว', '192.168.60.51'),
(13, '001447295522055035', NULL, '2025-01-24 01:15:55', 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว', '192.168.45.92'),
(14, 'S67340222', NULL, '2025-01-24 07:49:09', 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว', '192.168.30.90'),
(15, '111111111111111111', NULL, '2025-01-25 01:37:18', 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว', '192.168.45.92'),
(16, '111111111111111111', NULL, '2025-01-25 01:37:20', 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว', '192.168.45.92'),
(17, 'dddddd', NULL, '2025-01-25 01:40:25', 'ข้อมูลดังกล่าว พบข้อมูลใน dt_user 0 แถว', '192.168.45.92');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1lV3rgysjBIB3Dy4gKlJYnnS1471o3U0LImi52qd', NULL, '192.168.45.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0RyY2J3S2dGTXR1aDNuandwb0lLT3RneklHS2ZGZ3V2ZDljR3pYeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737941279),
('5RwLreXbpNQSkff6hCFNLcRpSM5uFx3WjXh6qaKI', NULL, '192.168.40.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlNZUG50RUU4V3hTOXpmVmVCUHBzb2dDWkN0VGhjUldyUWwwbjdTUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737786425),
('6KgRnwJ56oSxcQpO3nSTWgFZYUnUN4YfXPxpcvB5', NULL, '192.168.40.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnUxQUFGaUd1NWtoSWNuNHBxNk9uRzdCZ2NEMDZkM2FDd3prR3lGdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737787214),
('7gPmUmairhVpBrrICLbABRcbJlLQBeLApPgMYssQ', NULL, '192.168.60.51', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmY5UGJNMmo4STRTb0lLVVRpODM2Z0dFbFo2eFJyNTZmWlBnbUQxVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737960040),
('7olbDk4YWY0yLXE7WWL0gFt3KfjQMe94doIBZTMu', NULL, '192.168.40.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZnNJdDNFR1BMbTNJUjk0WlkzSGNBYWYzV2ZxeHRlckNIYllLZ2lOQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737786557),
('8f9Yr4qOLIUFZGlptfhP9sxPjDCGVVwIijuK6dpV', NULL, '192.168.40.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHUyNU5qMEJCMkRKOWRTaEJSMXlTUGtqeHl6eHJFcWNmWjdZbGRXTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737951078),
('8U3M1Fet1ZkxeS8L3tWYdxzmQOfbexxIi6qm8CzQ', NULL, '192.168.40.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmw2emJFdlJ2RVNabnpCZ1R5NWdRMWlVWkRnNnJ4SjYxZjczZEZQQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737944876),
('a5UL3Npm6qlxpjlKjLi3t51OKudJIxn1Kth8Ybsx', NULL, '192.168.40.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEMwRXFtVktLSWxOdlQ3ZW9yS25RcWdYdnhjQ2xzSmJqbHk2eXFlMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737788000),
('bjZKmhFLoZy9jCNtoHSX5DWZ34A60WJ2q9q8zxGx', NULL, '192.168.40.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFRGMjF0UEN5Q29WOGlBTGNZenJsUWtVZHg0eUt3eXVIaFAxNXJzNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737788198),
('bkWSD5FxQ8G6aaZLzwy7Cxq4NU89XRG56R1BAZXJ', NULL, '192.168.45.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnFWVGlCUzlqc3pPSHZGeWVVcTdKRExBTlhWS29wMkNJUGlKNFV0MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737796931),
('DOHTRMSQjrPNva2ABhOnFlL5ZI8gwLWUzMgV408c', NULL, '192.168.40.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDZMazVRQUZtNDl1Y0ttOGpaZkdTQVU4TE1vZGVQb3M1VXlWbGZwNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737940887),
('GgqIYtt2VaVLHxDQAYOCtztZVfCke5S0CzMKyPO6', NULL, '192.168.40.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUJmMnkycVhkM0VKSTVOS1lFaHJ3UmdLZjNMdWdLQnBlQ3JLcUd3cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737787508),
('i17YAEAU17KAZIVdDARgzBLg1oDP0729N7JVxZxH', NULL, '192.168.30.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU11Y1NhaVljWm5ITkQ4SzhYUkk1clVlOWsxVWR5WnJhVHJ4S1VtMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737952111),
('ICNzLLftNWrljUtpA5wjBxD6xrEcYND4aqv2zjFr', NULL, '192.168.40.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWJMY2h3aVpjajFXY2RlbkhrRURRSHF3S1ZDdGptZnZZajlJMWQzMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737941367),
('mlnsg9kdvaS2Gmlv8FRTIK3ijZipQTArw7rirH6V', NULL, '192.168.60.51', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEVTMlU1OFY2S0dyek9XOTRhMU5EY1ZuT3h1SXhnelpWdFc4Y2ZCeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737799334),
('MTLWZYtcaFanybku1FA1uYlTtCbfG7cOnmNT4oMX', NULL, '192.168.40.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUsyT1JOaUdVcER0UkMxclJLa3lINlNObHRCZFlzcTlETEtIaVFZdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737941400),
('muyk17e965k4rrVQ8YkOTdcKBF6ydl4FReOC6nao', NULL, '192.168.40.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1NxUWgxUUxsVnlDbldocHZtUW4xdEhWcnpmelJhWFpLaU5YNlR2UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL2tleS9zaG93L000OTAwMDcwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737789234),
('oqoJJvI1at2gNJuRogasSmcKo6NPc4LvFAA2XJiV', NULL, '192.168.40.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamdCR0ZKTm1Nbmk1Z2JncWNGWmFnS1hYOU1OVmw1eVE3dk1NNWpvSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737786431),
('pOUuyYVOteoTzxCqfVgCf5V5Xf9Dn3Rhsd6FQ93h', NULL, '192.168.40.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2o2YmxiTWhTWEE3SlY5VDBlQTVPVE1Mb0JhQWxuRHdFZ3hwOWRxbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737786758),
('PPMZOxi4YTRhdd9FI1X72Nr3N0AwPEWppEiDnF9w', NULL, '192.168.40.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmxDMm5nNTVhRW1HRm9GSG03b2xjcXdOZ09jNEMxUlVtMVhkWDhsNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737788414),
('s1Ma3PPVNOCVTz28rVZvuzNW1qczP4hilofF11EU', NULL, '192.168.40.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVM4a1BKdktuWW5nSWNqa2luY0NDRHBUSFhuVHlBQ3cwR1hiQTNEYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737787527),
('sdVHJa6FHHUY8mx973zG8X9NoT0NOWZVCUPqIUJV', NULL, '192.168.40.76', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFJKdkRubGNVNEprN3BZTGMyMHJucnJXa0ZSdXNNVWRkRUpnUWlVViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737787553),
('su0N2TwYIULxs9CzJmvNnG7PLplOWnTYKidM3PYS', NULL, '192.168.40.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjhXeDlnV0FCMDRZRTd1aWNsUnExaW9xelRDZkRBZlg1NUtwNkw5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737787080),
('T6VTqvhb3w1DhTb4jMUV9fVB0z6ftGVAWTwuB2NA', NULL, '192.168.40.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDRZcFlmTFBQQ3ZIR09EQmNPeWNQYnU4ekk0ZktXNXNDem44anJpaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737788268),
('tLKQ4kfaM7LzZLNSpfoEyQWzSidSu4Tc5VQtrQoy', NULL, '192.168.40.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm1La2dMVm1vVDhnMGxwenY0dDdQTmkwOFBiRmh1T0Z2M1FHV3NXWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737786784),
('VqYZbU4skfIpmbN0qVNQUAM1shHT3myTY0dxZgYD', NULL, '192.168.40.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDZvTEZucmFORjJPbFF1Q0I4UlpRYmJWT1Bmdk5nMEx3WDNqblFRQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737787292),
('VsW0vK5gEsP7cN3EUxZp15lrPwp0nmuKiQc9a9JF', NULL, '192.168.40.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjAyNEt0Njl0R3QyMWNIRUlMSkQ4YW9Vd09VZjhHcEpJRTJDb1lsQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737786684),
('wdfhcULdu6nGmnyRjl712hGc6cd047bcMFhBesD2', NULL, '192.168.40.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm5EOVZBaVQ2cUV2OEEzUHVJajRvc3ZLeTZHNHdHN0l4R3B0d2NrNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737941768),
('WolC17kXu8RvhTWwVFScxrfzfSgiLucIR5ijo5dv', NULL, '192.168.40.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHlucHJVOUF4Y1hKSzlBa1BtRWNYQm8yYmxOMFd0WlJxVXoxYkt5SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737941546),
('YbKHjibShKIKo25sj1cHlg16ucxafaCvQvLgvYw6', NULL, '192.168.40.38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 Edg/132.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVB2dXF2YzJMOFRucGxvWFczS1BHeGtlTmhiZFpUYklxU0VESERzaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vdGltZXdvcmsuc2lmLmNvLnRoL1dlbGNvbWVfY29kZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737941570);

-- --------------------------------------------------------

--
-- Table structure for table `sif_api`
--

CREATE TABLE `sif_api` (
  `id` int(11) NOT NULL,
  `link_api` text DEFAULT NULL,
  `note_1` text DEFAULT NULL,
  `note_2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `id` int(11) NOT NULL,
  `view_date` date DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `time_scan` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`id`, `view_date`, `view`, `ip_address`, `time_scan`) VALUES
(2, '2025-01-18', 9, '192.168.60.51', NULL),
(3, '2025-01-20', 131, '192.168.60.51', NULL),
(5, '2025-01-21', 91, '192.168.60.51', '23:44:10'),
(11, '2025-01-22', 104, '192.168.60.51', '20:04:59'),
(23, '2025-01-23', 79, '192.168.60.51', '19:53:11'),
(25, '2025-01-24', 56, '192.168.60.51', '15:37:22'),
(44, '2025-01-25', 44, '192.168.60.51', '17:01:51'),
(61, '2025-01-27', 1, '192.168.40.76', '08:21:06'),
(62, '2025-01-27', 2, '192.168.40.38', '08:32:48'),
(63, '2025-01-27', 2, '192.168.40.55', '08:27:27'),
(64, '2025-01-27', 1, '192.168.45.49', '08:27:16'),
(65, '2025-01-27', 3, '192.168.40.52', '09:25:51'),
(66, '2025-01-27', 1, '192.168.40.56', '08:32:24'),
(67, '2025-01-27', 1, '192.168.40.50', '08:34:04'),
(68, '2025-01-27', 15, '192.168.60.51', '13:40:15'),
(69, '2025-01-27', 1, '192.168.40.32', '11:11:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `scan_rfid_error`
--
ALTER TABLE `scan_rfid_error`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sif_api`
--
ALTER TABLE `sif_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scan_rfid_error`
--
ALTER TABLE `scan_rfid_error`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sif_api`
--
ALTER TABLE `sif_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
