-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 11:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bytequest`
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
(4, '2025_03_14_153134_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(2, 'Sample Product', 'This is a sample product.', 100.00, 10, '2025-03-14 10:30:21', '2025-03-14 10:30:21'),
(3, 'Product 1', 'Description for Product 1', 209.00, 48, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(4, 'Product 2', 'Description for Product 2', 229.00, 15, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(5, 'Product 3', 'Description for Product 3', 72.00, 30, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(6, 'Product 4', 'Description for Product 4', 84.00, 40, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(7, 'Product 5', 'Description for Product 5', 150.00, 34, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(8, 'Product 6', 'Description for Product 6', 206.00, 13, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(9, 'Product 7', 'Description for Product 7', 490.00, 26, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(10, 'Product 8', 'Description for Product 8', 160.00, 27, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(11, 'Product 9', 'Description for Product 9', 376.00, 17, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(12, 'Product 10', 'Description for Product 10', 116.00, 25, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(13, 'Product 11', 'Description for Product 11', 101.00, 43, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(14, 'Product 12', 'Description for Product 12', 168.00, 15, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(15, 'Product 13', 'Description for Product 13', 326.00, 44, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(16, 'Product 14', 'Description for Product 14', 108.00, 11, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(17, 'Product 15', 'Description for Product 15', 137.00, 14, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(18, 'Product 16', 'Description for Product 16', 450.00, 3, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(19, 'Product 17', 'Description for Product 17', 384.00, 20, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(20, 'Product 18', 'Description for Product 18', 467.00, 45, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(21, 'Product 19', 'Description for Product 19', 204.00, 37, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(22, 'Product 20', 'Description for Product 20', 97.00, 5, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(23, 'Product 21', 'Description for Product 21', 257.00, 28, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(24, 'Product 22', 'Description for Product 22', 368.00, 16, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(25, 'Product 23', 'Description for Product 23', 423.00, 50, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(26, 'Product 24', 'Description for Product 24', 492.00, 45, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(27, 'Product 25', 'Description for Product 25', 402.00, 11, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(28, 'Product 26', 'Description for Product 26', 357.00, 29, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(29, 'Product 27', 'Description for Product 27', 405.00, 32, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(30, 'Product 28', 'Description for Product 28', 360.00, 39, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(31, 'Product 29', 'Description for Product 29', 444.00, 26, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(32, 'Product 30', 'Description for Product 30', 155.00, 20, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(33, 'Product 31', 'Description for Product 31', 241.00, 14, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(34, 'Product 32', 'Description for Product 32', 428.00, 15, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(35, 'Product 33', 'Description for Product 33', 87.00, 50, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(36, 'Product 34', 'Description for Product 34', 364.00, 38, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(37, 'Product 35', 'Description for Product 35', 366.00, 26, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(38, 'Product 36', 'Description for Product 36', 335.00, 27, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(39, 'Product 37', 'Description for Product 37', 175.00, 3, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(40, 'Product 38', 'Description for Product 38', 70.00, 37, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(41, 'Product 39', 'Description for Product 39', 402.00, 13, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(42, 'Product 40', 'Description for Product 40', 247.00, 28, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(43, 'Product 41', 'Description for Product 41', 110.00, 16, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(44, 'Product 42', 'Description for Product 42', 163.00, 15, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(45, 'Product 43', 'Description for Product 43', 221.00, 19, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(46, 'Product 44', 'Description for Product 44', 4508.00, 38, '2025-03-14 10:35:05', '2025-03-15 04:39:09'),
(47, 'Product 45', 'Description for Product 45', 398.00, 41, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(48, 'Product 46', 'Description for Product 46', 237.00, 39, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(49, 'Product 47', 'Description for Product 47', 111.00, 8, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(50, 'Product 48', 'Description for Product 48', 352.00, 21, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(51, 'Product 49', 'Description for Product 49', 138.00, 12, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(52, 'Product 50', 'Description for Product 50', 285.00, 46, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(53, 'Product 51', 'Description for Product 51', 79.00, 36, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(54, 'Product 52', 'Description for Product 52', 180.00, 48, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(55, 'Product 53', 'Description for Product 53', 485.00, 44, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(56, 'Product 54', 'Description for Product 54', 495.00, 33, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(57, 'Product 55', 'Description for Product 55', 103.00, 25, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(58, 'Product 56', 'Description for Product 56', 186.00, 32, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(59, 'Product 57', 'Description for Product 57', 93.00, 48, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(60, 'Product 58', 'Description for Product 58', 282.00, 25, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(61, 'Product 59', 'Description for Product 59', 70.00, 45, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(62, 'Product 60', 'Description for Product 60', 339.00, 26, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(63, 'Product 61', 'Description for Product 61', 89.00, 13, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(64, 'Product 62', 'Description for Product 62', 157.00, 49, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(65, 'Product 63', 'Description for Product 63', 191.00, 12, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(66, 'Product 64', 'Description for Product 64', 496.00, 12, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(67, 'Product 65', 'Description for Product 65', 320.00, 36, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(68, 'Product 66', 'Description for Product 66', 256.00, 22, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(69, 'Product 67', 'Description for Product 67', 146.00, 6, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(70, 'Product 68', 'Description for Product 68', 391.00, 19, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(71, 'Product 69', 'Description for Product 69', 470.00, 50, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(72, 'Product 70', 'Description for Product 70', 94.00, 47, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(73, 'Product 71', 'Description for Product 71', 295.00, 50, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(74, 'Product 72', 'Description for Product 72', 181.00, 38, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(75, 'Product 73', 'Description for Product 73', 213.00, 24, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(76, 'Product 74', 'Description for Product 74', 474.00, 30, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(77, 'Product 75', 'Description for Product 75', 266.00, 30, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(78, 'Product 76', 'Description for Product 76', 467.00, 15, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(79, 'Product 77', 'Description for Product 77', 68.00, 3, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(80, 'Product 78', 'Description for Product 78', 71.00, 29, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(81, 'Product 79', 'Description for Product 79', 343.00, 10, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(82, 'Product 80', 'Description for Product 80', 332.00, 33, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(83, 'Product 81', 'Description for Product 81', 317.00, 16, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(84, 'Product 82', 'Description for Product 82', 178.00, 17, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(85, 'Product 83', 'Description for Product 83', 100.00, 36, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(86, 'Product 84', 'Description for Product 84', 376.00, 25, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(87, 'Product 85', 'Description for Product 85', 90.00, 21, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(88, 'Product 86', 'Description for Product 86', 432.00, 42, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(89, 'Product 87', 'Description for Product 87', 137.00, 13, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(90, 'Product 88', 'Description for Product 88', 352.00, 3, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(91, 'Product 89', 'Description for Product 89', 211.00, 48, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(92, 'Product 90', 'Description for Product 90', 61.00, 16, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(93, 'Product 91', 'Description for Product 91', 432.00, 1, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(94, 'Product 92', 'Description for Product 92', 84.00, 1, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(95, 'Product 93', 'Description for Product 93', 252.00, 49, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(96, 'Product 94', 'Description for Product 94', 85.00, 34, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(97, 'Product 95', 'Description for Product 95', 80.00, 16, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(98, 'Product 96', 'Description for Product 96', 192.00, 9, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(99, 'Product 97', 'Description for Product 97', 316.00, 42, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(100, 'Product 98', 'Description for Product 98', 335.00, 39, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(101, 'Product 99', 'Description for Product 99', 163.00, 48, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(102, 'Product 100', 'Description for Product 100', 208.00, 24, '2025-03-14 10:35:05', '2025-03-14 10:35:05'),
(103, 'Test 11', 'A sample product', 120.00, 10, '2025-03-14 11:00:16', '2025-03-15 04:40:14'),
(104, 'Test123', 'A sample productbfgjh', 120.00, 10, '2025-03-15 02:31:31', '2025-03-15 02:31:31'),
(105, 'Dummmy Test Record', 'A sample product Record', 120.00, 10, '2025-03-15 03:45:35', '2025-03-15 03:45:35'),
(106, 'Dummmy Test Record', 'A sample product Record', 120.00, 10, '2025-03-15 03:45:48', '2025-03-15 03:45:48'),
(108, 'omrsheet', 'test', 1200.00, 200, '2025-03-15 04:34:39', '2025-03-15 04:41:03');

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
('JG6600LrAtJtw1mK4Ljyb1EUvANFI2EUN5a3j6P2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmJqVURpWWFvQndTR21rczhORzJLSXk4U0t5Rlo0Y21xYkplTDVMTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742034982),
('TRX0EMP7jAqgrDaFGHChPlmgzl2WOHRvk9ots9TJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMm9lN0tmcDRQM3JDak5MTzZ0OEtzSW9kUGR6NGI0dHZjdjl6RlZySiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741970183);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
