-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2025 at 12:36 PM
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
-- Database: `justiperly`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy_transactions`
--

CREATE TABLE `buy_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `traveler_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `payment_proof` varchar(255) DEFAULT NULL,
  `payment_status` enum('pending','approved','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buy_transactions`
--

INSERT INTO `buy_transactions` (`id`, `buyer_id`, `traveler_id`, `product_id`, `quantity`, `total_price`, `payment_method_id`, `payment_proof`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 94, 2, 9417576.00, 1, NULL, 'approved', '2025-07-18 01:53:45', '2025-07-18 01:53:45'),
(2, 5, 4, 52, 1, 3695987.00, 1, NULL, 'approved', '2025-07-19 01:53:45', '2025-07-19 01:53:45'),
(3, 5, 4, 17, 3, 9024417.00, 1, NULL, 'pending', '2025-07-20 01:53:45', '2025-07-20 01:53:45'),
(4, 5, 4, 51, 1, 173003.00, 2, NULL, 'pending', '2025-07-21 01:53:45', '2025-07-21 01:53:45'),
(5, 5, 4, 46, 1, 190108.00, 2, NULL, 'pending', '2025-07-22 01:53:45', '2025-07-22 01:53:45'),
(6, 5, 4, 45, 1, 4446917.00, 2, NULL, 'approved', '2025-07-23 01:53:45', '2025-07-23 01:53:45'),
(7, 5, 4, 9, 5, 10612590.00, 2, NULL, 'pending', '2025-07-24 01:53:45', '2025-07-24 01:53:45'),
(8, 5, 4, 82, 2, 1336408.00, 2, NULL, 'approved', '2025-07-25 01:53:45', '2025-07-25 01:53:45'),
(9, 5, 4, 37, 3, 6385395.00, 1, NULL, 'approved', '2025-07-26 01:53:45', '2025-07-26 01:53:45'),
(10, 5, 4, 2, 5, 8573270.00, 1, NULL, 'approved', '2025-07-27 01:53:45', '2025-07-27 01:53:45'),
(11, 5, 4, 57, 4, 9686648.00, 2, NULL, 'approved', '2025-07-28 01:53:45', '2025-07-28 01:53:45'),
(12, 5, 4, 51, 2, 346006.00, 2, NULL, 'approved', '2025-07-29 01:53:45', '2025-07-29 01:53:45'),
(13, 5, 4, 97, 5, 8644925.00, 2, NULL, 'approved', '2025-07-30 01:53:45', '2025-07-30 01:53:45'),
(14, 5, 4, 44, 3, 4090707.00, 2, NULL, 'pending', '2025-07-31 01:53:45', '2025-07-31 01:53:45'),
(15, 5, 4, 71, 5, 23097025.00, 1, NULL, 'pending', '2025-08-01 01:53:45', '2025-08-01 01:53:45'),
(16, 5, 4, 54, 4, 9818892.00, 2, NULL, 'pending', '2025-08-02 01:53:45', '2025-08-02 01:53:45'),
(17, 5, 4, 100, 2, 5830974.00, 1, NULL, 'pending', '2025-08-03 01:53:45', '2025-08-03 01:53:45'),
(18, 5, 4, 54, 1, 2454723.00, 2, NULL, 'pending', '2025-08-04 01:53:45', '2025-08-04 01:53:45'),
(19, 5, 4, 94, 2, 9417576.00, 1, NULL, 'approved', '2025-08-05 01:53:45', '2025-08-05 01:53:45'),
(20, 5, 4, 17, 4, 12032556.00, 1, NULL, 'pending', '2025-08-06 01:53:45', '2025-08-06 01:53:45'),
(21, 5, 4, 83, 1, 3589229.00, 2, NULL, 'approved', '2025-08-07 01:53:45', '2025-08-07 01:53:45'),
(22, 5, 4, 31, 3, 9984711.00, 1, NULL, 'approved', '2025-08-08 01:53:45', '2025-08-08 01:53:45'),
(23, 5, 4, 11, 4, 2840712.00, 2, NULL, 'pending', '2025-08-09 01:53:45', '2025-08-09 01:53:45'),
(24, 5, 4, 8, 2, 1077176.00, 1, NULL, 'approved', '2025-08-10 01:53:45', '2025-08-10 01:53:45'),
(25, 5, 4, 90, 5, 11973010.00, 1, NULL, 'pending', '2025-08-11 01:53:45', '2025-08-11 01:53:45'),
(26, 5, 4, 23, 5, 5177245.00, 2, NULL, 'pending', '2025-08-12 01:53:45', '2025-08-12 01:53:45'),
(27, 5, 4, 57, 2, 4843324.00, 1, NULL, 'pending', '2025-08-13 01:53:45', '2025-08-13 01:53:45'),
(28, 5, 4, 97, 4, 6915940.00, 1, NULL, 'pending', '2025-08-14 01:53:45', '2025-08-14 01:53:45'),
(29, 5, 4, 100, 5, 14577435.00, 2, NULL, 'approved', '2025-08-15 01:53:45', '2025-08-15 01:53:45'),
(30, 5, 4, 3, 2, 9085480.00, 1, NULL, 'pending', '2025-08-16 01:53:45', '2025-08-16 01:53:45'),
(31, 5, 4, 49, 3, 13283292.00, 2, NULL, 'approved', '2025-08-17 01:53:45', '2025-08-17 01:53:45'),
(32, 5, 4, 27, 2, 503924.00, 2, NULL, 'approved', '2025-08-18 01:53:45', '2025-08-18 01:53:45'),
(33, 5, 4, 79, 1, 1297007.00, 1, NULL, 'approved', '2025-08-19 01:53:45', '2025-08-19 01:53:45'),
(34, 5, 4, 16, 2, 3743408.00, 2, NULL, 'pending', '2025-08-20 01:53:45', '2025-08-20 01:53:45'),
(35, 5, 4, 33, 4, 6871176.00, 1, NULL, 'pending', '2025-08-21 01:53:45', '2025-08-21 01:53:45'),
(36, 5, 4, 85, 4, 2397656.00, 1, NULL, 'pending', '2025-08-22 01:53:45', '2025-08-22 01:53:45'),
(37, 5, 4, 75, 5, 14140080.00, 1, NULL, 'pending', '2025-08-23 01:53:45', '2025-08-23 01:53:45'),
(38, 5, 4, 1, 2, 4272498.00, 1, NULL, 'pending', '2025-08-24 01:53:45', '2025-08-24 01:53:45'),
(39, 5, 4, 82, 3, 2004612.00, 1, NULL, 'pending', '2025-08-25 01:53:45', '2025-08-25 01:53:45'),
(40, 5, 4, 67, 1, 4559401.00, 2, NULL, 'pending', '2025-08-26 01:53:45', '2025-08-26 01:53:45'),
(41, 5, 4, 6, 4, 10204188.00, 2, NULL, 'pending', '2025-08-27 01:53:45', '2025-08-27 01:53:45'),
(42, 5, 4, 21, 2, 1597694.00, 1, NULL, 'pending', '2025-08-28 01:53:45', '2025-08-28 01:53:45'),
(43, 5, 4, 11, 2, 1420356.00, 2, NULL, 'pending', '2025-08-29 01:53:45', '2025-08-29 01:53:45'),
(44, 5, 4, 53, 5, 803935.00, 1, NULL, 'pending', '2025-08-30 01:53:45', '2025-08-30 01:53:45'),
(45, 5, 4, 41, 5, 14837895.00, 2, NULL, 'pending', '2025-08-31 01:53:45', '2025-08-31 01:53:45'),
(46, 5, 4, 3, 4, 18170960.00, 2, NULL, 'approved', '2025-09-01 01:53:45', '2025-09-01 01:53:45'),
(47, 5, 4, 74, 5, 19550465.00, 2, NULL, 'approved', '2025-09-02 01:53:45', '2025-09-02 01:53:45'),
(48, 5, 4, 29, 1, 4683396.00, 2, NULL, 'approved', '2025-09-03 01:53:45', '2025-09-03 01:53:45'),
(49, 5, 4, 53, 2, 321574.00, 2, NULL, 'approved', '2025-09-04 01:53:45', '2025-09-04 01:53:45'),
(50, 5, 4, 31, 1, 3328237.00, 2, NULL, 'approved', '2025-09-05 01:53:45', '2025-09-05 01:53:45'),
(51, 5, 4, 18, 3, 3830376.00, 1, NULL, 'approved', '2025-09-06 01:53:45', '2025-09-06 01:53:45'),
(52, 5, 4, 10, 5, 14655310.00, 2, NULL, 'pending', '2025-09-07 01:53:45', '2025-09-07 01:53:45'),
(53, 5, 4, 57, 5, 12108310.00, 1, NULL, 'approved', '2025-09-08 01:53:45', '2025-09-08 01:53:45'),
(54, 5, 4, 79, 3, 3891021.00, 2, NULL, 'pending', '2025-09-09 01:53:45', '2025-09-09 01:53:45'),
(55, 5, 4, 83, 2, 7178458.00, 2, NULL, 'pending', '2025-09-10 01:53:45', '2025-09-10 01:53:45'),
(56, 5, 4, 52, 3, 11087961.00, 2, NULL, 'approved', '2025-09-11 01:53:45', '2025-09-11 01:53:45'),
(57, 5, 4, 39, 1, 1518801.00, 1, NULL, 'pending', '2025-09-12 01:53:45', '2025-09-12 01:53:45'),
(58, 5, 4, 32, 2, 442630.00, 2, NULL, 'approved', '2025-09-13 01:53:45', '2025-09-13 01:53:45'),
(59, 5, 4, 40, 5, 18172150.00, 1, NULL, 'approved', '2025-09-14 01:53:45', '2025-09-14 01:53:45'),
(60, 5, 4, 63, 5, 16013125.00, 2, NULL, 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(61, 5, 4, 4, 5, 24139360.00, 1, NULL, 'approved', '2025-09-16 01:53:45', '2025-09-16 01:53:45'),
(62, 5, 4, 53, 3, 482361.00, 1, NULL, 'approved', '2025-09-17 01:53:45', '2025-09-17 01:53:45'),
(63, 5, 4, 45, 4, 17787668.00, 2, NULL, 'pending', '2025-09-18 01:53:45', '2025-09-18 01:53:45'),
(64, 5, 4, 73, 4, 13450928.00, 1, NULL, 'pending', '2025-09-19 01:53:45', '2025-09-19 01:53:45'),
(65, 5, 4, 18, 4, 5107168.00, 1, NULL, 'approved', '2025-09-20 01:53:45', '2025-09-20 01:53:45'),
(66, 5, 4, 59, 4, 15127804.00, 2, NULL, 'approved', '2025-09-21 01:53:45', '2025-09-21 01:53:45'),
(67, 5, 4, 51, 1, 173003.00, 2, NULL, 'pending', '2025-09-22 01:53:45', '2025-09-22 01:53:45'),
(68, 5, 4, 3, 5, 22713700.00, 1, NULL, 'approved', '2025-09-23 01:53:45', '2025-09-23 01:53:45'),
(69, 5, 4, 52, 5, 18479935.00, 2, NULL, 'approved', '2025-09-24 01:53:45', '2025-09-24 01:53:45'),
(70, 5, 4, 67, 4, 18237604.00, 2, NULL, 'approved', '2025-09-25 01:53:45', '2025-09-25 01:53:45'),
(71, 5, 4, 20, 4, 3059368.00, 1, NULL, 'approved', '2025-09-26 01:53:45', '2025-09-26 01:53:45'),
(72, 5, 4, 30, 1, 1216910.00, 2, NULL, 'approved', '2025-09-27 01:53:45', '2025-09-27 01:53:45'),
(73, 5, 4, 3, 1, 4542740.00, 2, NULL, 'approved', '2025-09-28 01:53:45', '2025-09-28 01:53:45'),
(74, 5, 4, 63, 5, 16013125.00, 2, NULL, 'pending', '2025-09-29 01:53:45', '2025-09-29 01:53:45'),
(75, 5, 4, 96, 5, 4599040.00, 1, NULL, 'approved', '2025-09-30 01:53:45', '2025-09-30 01:53:45'),
(76, 5, 4, 18, 4, 5107168.00, 1, NULL, 'pending', '2025-10-01 01:53:45', '2025-10-01 01:53:45'),
(77, 5, 4, 19, 1, 3653271.00, 1, NULL, 'pending', '2025-10-02 01:53:45', '2025-10-02 01:53:45'),
(78, 5, 4, 99, 1, 505570.00, 2, NULL, 'pending', '2025-10-03 01:53:45', '2025-10-03 01:53:45'),
(79, 5, 4, 61, 4, 8243948.00, 2, NULL, 'pending', '2025-10-04 01:53:45', '2025-10-04 01:53:45'),
(80, 5, 4, 50, 2, 2597548.00, 1, NULL, 'approved', '2025-10-05 01:53:45', '2025-10-05 01:53:45'),
(81, 5, 4, 14, 2, 2788798.00, 2, NULL, 'pending', '2025-10-06 01:53:45', '2025-10-06 01:53:45'),
(82, 5, 4, 60, 1, 1249673.00, 2, NULL, 'approved', '2025-10-07 01:53:45', '2025-10-07 01:53:45'),
(83, 5, 4, 35, 4, 5814564.00, 2, NULL, 'pending', '2025-10-08 01:53:45', '2025-10-08 01:53:45'),
(84, 5, 4, 2, 5, 8573270.00, 1, NULL, 'pending', '2025-10-09 01:53:45', '2025-10-09 01:53:45'),
(85, 5, 4, 61, 5, 10304935.00, 2, NULL, 'pending', '2025-10-10 01:53:45', '2025-10-10 01:53:45'),
(86, 5, 4, 19, 5, 18266355.00, 2, NULL, 'pending', '2025-10-11 01:53:45', '2025-10-11 01:53:45'),
(87, 5, 4, 44, 1, 1363569.00, 2, NULL, 'pending', '2025-10-12 01:53:45', '2025-10-12 01:53:45'),
(88, 5, 4, 63, 4, 12810500.00, 1, NULL, 'pending', '2025-10-13 01:53:45', '2025-10-13 01:53:45'),
(89, 5, 4, 70, 1, 2238994.00, 2, NULL, 'pending', '2025-10-14 01:53:45', '2025-10-14 01:53:45'),
(90, 5, 4, 87, 5, 7182905.00, 1, NULL, 'pending', '2025-10-15 01:53:45', '2025-10-15 01:53:45'),
(91, 5, 4, 79, 4, 5188028.00, 1, NULL, 'declined', '2025-10-16 01:53:45', '2025-09-16 05:33:29'),
(92, 5, 4, 12, 2, 6735304.00, 1, NULL, 'declined', '2025-10-17 01:53:45', '2025-09-16 05:33:08'),
(93, 5, 4, 92, 1, 4769067.00, 2, NULL, 'approved', '2025-10-18 01:53:45', '2025-10-18 01:53:45'),
(94, 5, 4, 25, 5, 6424950.00, 1, NULL, 'declined', '2025-10-19 01:53:45', '2025-09-15 02:12:07'),
(95, 5, 4, 46, 5, 950540.00, 2, NULL, 'approved', '2025-10-20 01:53:45', '2025-10-20 01:53:45'),
(96, 5, 4, 61, 4, 8243948.00, 2, NULL, 'approved', '2025-10-21 01:53:45', '2025-10-21 01:53:45'),
(97, 5, 4, 51, 4, 692012.00, 2, NULL, 'declined', '2025-10-22 01:53:45', '2025-09-15 02:12:23'),
(98, 5, 4, 9, 3, 6367554.00, 2, NULL, 'declined', '2025-10-23 01:53:45', '2025-09-15 02:01:47'),
(99, 5, 4, 82, 1, 668204.00, 2, NULL, 'approved', '2025-10-24 01:53:45', '2025-09-15 02:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('superadmin@gmail.com|127.0.0.1', 'i:1;', 1757926515),
('superadmin@gmail.com|127.0.0.1:timer', 'i:1757926515;', 1757926515);

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
(1, '2025_09_08_063300_complex_migrations', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('wallet','bank') NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `type`, `name`, `account_name`, `account_number`, `created_at`, `updated_at`) VALUES
(1, 'bank', 'BCA', 'Super Admin', '111222333', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(2, 'wallet', 'OVO', 'Admin User', '08123456789', '2025-09-15 01:53:45', '2025-09-15 01:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submiter_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(15,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `approval` enum('pending','approved','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `submiter_id`, `category_id`, `name`, `description`, `price`, `image`, `status`, `approval`, `created_at`, `updated_at`) VALUES
(1, NULL, 5, 'Koper Jumbo', 'aaaaaaaaaaaaaaaaalkjhhhhaaaaaaaaaaaaaaaaahhhhhhhhhhhhhhhhha', 500000.00, 'products/3YTh5jadoAM5XzaE3cQihwYKzzzKaNYfF5Pad0l8.png', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-16 02:16:29'),
(2, 11, 3, 'kulkqs', 'Nisi adipisci id nihil alias ut quo ut minus velit accusantium similique.', 1714654.00, 'products/QH8PE7i5QmkvASOPPFdY3XXVI72RfUPmx43Jm9kf.png', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-16 02:17:20'),
(3, 12, 2, 'gitar', 'Molestiae dolores quia atque minima aut et quae corporis magnam cumque.', 4542740.00, 'products/8g7gHxWxekbwyKMIKCSLR4f55s90hQJfiij09LUx.png', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-16 02:29:55'),
(4, 4, 5, 'magni omnis ipsam', 'Iste voluptates nihil est laudantium provident eligendi maxime consequatur perferendis quod omnis neque.', 4827872.00, 'https://via.placeholder.com/640x480.png/00aa22?text=products+Jastiperly+voluptatum', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(5, 4, 2, 'quis animi et', 'Fugit iusto quo enim quis suscipit odio sapiente qui fugiat.', 1591611.00, 'https://via.placeholder.com/640x480.png/002200?text=products+Jastiperly+facilis', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(6, 4, 4, 'in nobis dignissimos', 'Corrupti est in corrupti explicabo impedit omnis magnam est.', 2551047.00, 'https://via.placeholder.com/640x480.png/0077cc?text=products+Jastiperly+numquam', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(7, 4, 2, 'illum impedit recusandae', 'Qui minus voluptatum sequi vel deleniti est rerum.', 4642690.00, 'https://via.placeholder.com/640x480.png/000033?text=products+Jastiperly+autem', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(8, 4, 2, 'amet provident delectus', 'Dolorem molestiae enim ipsam culpa iure id.', 538588.00, 'https://via.placeholder.com/640x480.png/0088cc?text=products+Jastiperly+et', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(9, 4, 1, 'quia numquam alias', 'Voluptatum quis id voluptas debitis deleniti doloremque.', 2122518.00, 'https://via.placeholder.com/640x480.png/0044aa?text=products+Jastiperly+non', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(10, 4, 4, 'error illum eius', 'Perspiciatis nulla corporis laudantium quasi nisi vel nihil.', 2931062.00, 'https://via.placeholder.com/640x480.png/001155?text=products+Jastiperly+et', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(11, 4, 3, 'eos consequatur temporibus', 'Vel tempore aliquid consequuntur qui quia consequatur iste reiciendis.', 710178.00, 'https://via.placeholder.com/640x480.png/003300?text=products+Jastiperly+voluptatibus', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-16 01:33:58'),
(12, 4, 2, 'sed quae et', 'Neque ipsa quibusdam quisquam et explicabo quia blanditiis.', 3367652.00, 'https://via.placeholder.com/640x480.png/001144?text=products+Jastiperly+quia', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(13, 4, 3, 'et itaque dolor', 'Aut est qui dolor velit architecto autem et.', 3660837.00, 'https://via.placeholder.com/640x480.png/007744?text=products+Jastiperly+commodi', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(14, 4, 3, 'illum omnis repudiandae', 'Aut ea voluptates sit accusantium ut facilis occaecati consequatur omnis alias.', 1394399.00, 'https://via.placeholder.com/640x480.png/00ee99?text=products+Jastiperly+ullam', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(15, 4, 3, 'saepe eius et', 'Reprehenderit consequatur aut dolorum quibusdam id quo debitis voluptas.', 273493.00, 'https://via.placeholder.com/640x480.png/00ccaa?text=products+Jastiperly+reiciendis', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(16, 4, 4, 'adipisci rerum facilis', 'Neque occaecati earum illum sit fugiat unde omnis quia.', 1871704.00, 'https://via.placeholder.com/640x480.png/000066?text=products+Jastiperly+ratione', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(17, 4, 4, 'in quo assumenda', 'Laudantium repudiandae natus sed animi suscipit quam quis est iusto aut aliquid assumenda unde.', 3008139.00, 'https://via.placeholder.com/640x480.png/000077?text=products+Jastiperly+accusantium', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(18, 4, 2, 'molestiae ipsam doloremque', 'Esse aperiam neque voluptatem ullam molestias est et sed occaecati.', 1276792.00, 'https://via.placeholder.com/640x480.png/00dd33?text=products+Jastiperly+officiis', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(19, 4, 5, 'tenetur reprehenderit impedit', 'Quos cupiditate aut sapiente natus mollitia quidem occaecati sunt facere nesciunt eaque et.', 3653271.00, 'https://via.placeholder.com/640x480.png/00eeaa?text=products+Jastiperly+neque', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(20, 4, 1, 'non saepe veritatis', 'Fugiat eaque nobis distinctio sequi et iure est iure sunt laborum.', 764842.00, 'https://via.placeholder.com/640x480.png/00ffdd?text=products+Jastiperly+itaque', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(21, 4, 3, 'quis magnam sit', 'Tenetur harum et assumenda aspernatur atque perspiciatis omnis sunt repudiandae deleniti eligendi quo.', 798847.00, 'https://via.placeholder.com/640x480.png/005577?text=products+Jastiperly+ipsa', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(22, 4, 4, 'velit ad asperiores', 'Sed eveniet omnis at magni quasi soluta et autem doloribus deleniti blanditiis labore aperiam.', 1772479.00, 'https://via.placeholder.com/640x480.png/003366?text=products+Jastiperly+iure', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(23, 4, 5, 'et sit perspiciatis', 'In ut sit eveniet illum velit autem.', 1035449.00, 'https://via.placeholder.com/640x480.png/00bbff?text=products+Jastiperly+rerum', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-16 01:34:27'),
(24, 4, 2, 'nostrum omnis eius', 'Asperiores eveniet laboriosam repellendus recusandae deserunt quae excepturi similique et rerum et dolores perferendis.', 1441958.00, 'https://via.placeholder.com/640x480.png/00aa22?text=products+Jastiperly+id', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(25, 4, 4, 'exercitationem vel fuga', 'Modi voluptas maxime voluptatibus ex consequuntur id qui dolor quae molestias debitis voluptas eum qui.', 1284990.00, 'https://via.placeholder.com/640x480.png/0077bb?text=products+Jastiperly+quam', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(26, 4, 5, 'modi nemo modi', 'Hic accusantium veniam reprehenderit ut omnis rerum natus error ut.', 41708.00, 'https://via.placeholder.com/640x480.png/004433?text=products+Jastiperly+fuga', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(27, 4, 2, 'nisi rerum laboriosam', 'Voluptatem id vel quaerat exercitationem consequuntur natus maiores voluptates quod ea aperiam.', 251962.00, 'https://via.placeholder.com/640x480.png/00cc66?text=products+Jastiperly+perferendis', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(28, 4, 1, 'ab vitae autem', 'Molestias mollitia et corporis facere non quo repellendus labore voluptas molestias.', 1544153.00, 'https://via.placeholder.com/640x480.png/007799?text=products+Jastiperly+animi', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(29, 4, 1, 'voluptates et libero', 'Neque culpa eveniet cupiditate necessitatibus nisi quia ipsam sit dolorum unde quo porro dolores.', 4683396.00, 'https://via.placeholder.com/640x480.png/00aabb?text=products+Jastiperly+dolor', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(30, 4, 1, 'enim vero quae', 'Quibusdam ex similique nisi culpa ducimus voluptatem esse modi eius ad.', 1216910.00, 'https://via.placeholder.com/640x480.png/0077ff?text=products+Jastiperly+qui', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(31, 4, 1, 'et ut excepturi', 'Iure facere laboriosam mollitia laboriosam odit fugit culpa ut sapiente distinctio quasi.', 3328237.00, 'https://via.placeholder.com/640x480.png/008855?text=products+Jastiperly+facilis', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(32, 4, 5, 'nam atque nostrum', 'Quam quia sunt molestiae quam ut ut nobis et accusantium non.', 221315.00, 'https://via.placeholder.com/640x480.png/0022aa?text=products+Jastiperly+natus', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(33, 4, 3, 'eos repellat commodi', 'Iusto maiores facilis fugit nostrum at quia molestias et neque officiis magni.', 1717794.00, 'https://via.placeholder.com/640x480.png/00dd22?text=products+Jastiperly+expedita', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(34, 4, 2, 'voluptatem saepe facere', 'Iste dolorum eum dolores aliquam dolore recusandae minima deserunt et quo.', 437649.00, 'https://via.placeholder.com/640x480.png/00ff22?text=products+Jastiperly+harum', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(35, 4, 1, 'nulla tenetur facere', 'Ut dicta deleniti veritatis illum qui veniam ut tenetur dolores voluptates eveniet eum.', 1453641.00, 'https://via.placeholder.com/640x480.png/000077?text=products+Jastiperly+cum', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(36, 4, 2, 'dolor eum nihil', 'Perspiciatis ut laborum aut neque aut maiores ut perferendis explicabo hic ullam soluta.', 4907337.00, 'https://via.placeholder.com/640x480.png/0011bb?text=products+Jastiperly+quasi', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(37, 4, 1, 'placeat magnam aperiam', 'Facilis in consequatur expedita voluptas rerum assumenda est tenetur facere commodi quia aut.', 2128465.00, 'https://via.placeholder.com/640x480.png/00cc44?text=products+Jastiperly+error', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(38, 4, 5, 'nemo voluptatem eius', 'Porro dolorem laborum repellendus mollitia in consectetur.', 1141612.00, 'https://via.placeholder.com/640x480.png/0055ff?text=products+Jastiperly+qui', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(39, 4, 4, 'quod at neque', 'Dolores alias rem numquam perspiciatis nesciunt deleniti odit incidunt praesentium optio nesciunt enim.', 1518801.00, 'https://via.placeholder.com/640x480.png/003355?text=products+Jastiperly+porro', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(40, 4, 5, 'temporibus accusamus recusandae', 'Cum ex et accusamus aperiam sed voluptates minima nam.', 3634430.00, 'https://via.placeholder.com/640x480.png/003399?text=products+Jastiperly+at', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(41, 4, 2, 'consequatur ullam harum', 'Omnis quasi reprehenderit tempora quibusdam necessitatibus tenetur et excepturi doloribus voluptatem eum ut.', 2967579.00, 'https://via.placeholder.com/640x480.png/006611?text=products+Jastiperly+quisquam', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(42, 4, 3, 'sint ut ab', 'Voluptas magni temporibus facere at nisi consequuntur similique repellendus repudiandae cum.', 3415230.00, 'https://via.placeholder.com/640x480.png/00ccee?text=products+Jastiperly+quia', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(43, 4, 5, 'enim at numquam', 'Natus rem consectetur mollitia amet occaecati corrupti explicabo praesentium deleniti.', 603544.00, 'https://via.placeholder.com/640x480.png/00ee88?text=products+Jastiperly+vitae', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(44, 4, 3, 'voluptatibus nihil ut', 'Magni omnis aliquam sunt veniam reiciendis amet vitae nulla ut fugit.', 1363569.00, 'https://via.placeholder.com/640x480.png/00bbcc?text=products+Jastiperly+est', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(45, 4, 1, 'numquam voluptate quasi', 'Commodi dolores nemo beatae dolor dolorem porro laborum voluptas qui mollitia quaerat.', 4446917.00, 'https://via.placeholder.com/640x480.png/0044ff?text=products+Jastiperly+impedit', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(46, 4, 3, 'iusto commodi cupiditate', 'Est nihil est mollitia dignissimos adipisci ex esse voluptatum.', 190108.00, 'https://via.placeholder.com/640x480.png/00ee55?text=products+Jastiperly+impedit', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(47, 4, 5, 'cupiditate reprehenderit omnis', 'Recusandae aut provident a officia enim accusamus aliquam illo quisquam velit unde.', 2616461.00, 'https://via.placeholder.com/640x480.png/0055aa?text=products+Jastiperly+dolorem', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(48, 4, 5, 'illum consequatur dolorum', 'Amet ut nulla eveniet at cum quaerat sed.', 645960.00, 'https://via.placeholder.com/640x480.png/00bb00?text=products+Jastiperly+ut', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(49, 4, 3, 'aut sint mollitia', 'Saepe vero distinctio odit delectus unde quod porro consequatur nulla quia minus ullam.', 4427764.00, 'https://via.placeholder.com/640x480.png/00bbdd?text=products+Jastiperly+quisquam', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(50, 4, 2, 'pariatur ullam error', 'Minus et autem blanditiis consequatur neque facere illum natus sequi numquam doloribus reprehenderit.', 1298774.00, 'https://via.placeholder.com/640x480.png/00ff77?text=products+Jastiperly+ipsa', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(51, 4, 3, 'a ut sed', 'Omnis ut et est veritatis iusto ut omnis voluptatem illum sequi non.', 173003.00, 'https://via.placeholder.com/640x480.png/00ffff?text=products+Jastiperly+praesentium', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(52, 4, 4, 'necessitatibus quaerat a', 'Maxime quos nesciunt expedita omnis possimus dolor deleniti ex repellat ad eum nihil quasi.', 3695987.00, 'https://via.placeholder.com/640x480.png/00eebb?text=products+Jastiperly+qui', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(53, 4, 1, 'ab harum molestias', 'Debitis quae suscipit molestiae omnis quod consequatur tenetur eaque.', 160787.00, 'https://via.placeholder.com/640x480.png/001111?text=products+Jastiperly+quas', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(54, 4, 5, 'qui excepturi beatae', 'Consequuntur rem doloremque saepe blanditiis non rerum consequatur qui soluta minima quo nemo dolore.', 2454723.00, 'https://via.placeholder.com/640x480.png/00bbcc?text=products+Jastiperly+ut', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(55, 4, 1, 'dolor voluptas qui', 'Quos quia ab nulla culpa doloremque consequatur.', 4084543.00, 'https://via.placeholder.com/640x480.png/00ee44?text=products+Jastiperly+qui', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(56, 4, 1, 'voluptas odio consequatur', 'Sunt et rerum adipisci ut sed animi hic.', 2616871.00, 'https://via.placeholder.com/640x480.png/000022?text=products+Jastiperly+distinctio', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(57, 4, 3, 'est id mollitia', 'Inventore consequatur ut maxime debitis facilis est minima sint dolore corrupti quia.', 2421662.00, 'https://via.placeholder.com/640x480.png/00ccff?text=products+Jastiperly+expedita', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(58, 4, 4, 'nisi esse quidem', 'Cum nisi ut commodi eos nulla voluptate adipisci et hic.', 3438053.00, 'https://via.placeholder.com/640x480.png/005566?text=products+Jastiperly+deleniti', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(59, 4, 5, 'voluptas laboriosam et', 'Adipisci magni soluta in rem qui provident tempore.', 3781951.00, 'https://via.placeholder.com/640x480.png/00bbee?text=products+Jastiperly+consequuntur', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(60, 4, 3, 'maxime delectus aliquam', 'Ut voluptate laborum enim nihil voluptatem tempora.', 1249673.00, 'https://via.placeholder.com/640x480.png/003333?text=products+Jastiperly+aperiam', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(61, 4, 2, 'fugiat cupiditate quia', 'Doloremque aut reprehenderit id et rerum possimus aut aliquid dolorem provident.', 2060987.00, 'https://via.placeholder.com/640x480.png/003366?text=products+Jastiperly+et', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(62, 4, 3, 'nisi tempore vel', 'Libero eum esse nulla placeat qui earum assumenda.', 4614332.00, 'https://via.placeholder.com/640x480.png/0099bb?text=products+Jastiperly+aliquam', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(63, 4, 5, 'ipsam provident maxime', 'Qui corporis perspiciatis veniam excepturi sed repellat impedit est aliquam accusamus quibusdam.', 3202625.00, 'https://via.placeholder.com/640x480.png/009911?text=products+Jastiperly+harum', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(64, 4, 5, 'quia nihil animi', 'Doloremque quasi architecto dolores nam veritatis numquam fuga voluptas laborum.', 4799923.00, 'https://via.placeholder.com/640x480.png/00ff11?text=products+Jastiperly+expedita', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(65, 4, 4, 'voluptatem quo occaecati', 'Provident ut autem qui cum eius odit unde enim.', 4180867.00, 'https://via.placeholder.com/640x480.png/00ff00?text=products+Jastiperly+omnis', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(66, 4, 2, 'beatae eveniet sit', 'Reiciendis assumenda nemo facilis quidem qui ut et delectus aut commodi a.', 1006525.00, 'https://via.placeholder.com/640x480.png/00bbdd?text=products+Jastiperly+accusantium', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(67, 4, 3, 'temporibus quia officiis', 'Minima corporis tempora quasi accusamus deleniti iusto illo voluptatibus id et ratione.', 4559401.00, 'https://via.placeholder.com/640x480.png/002244?text=products+Jastiperly+ut', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(68, 4, 5, 'reprehenderit dolor qui', 'Alias iusto nisi autem quia in quis et placeat libero ratione distinctio.', 4219747.00, 'https://via.placeholder.com/640x480.png/0022dd?text=products+Jastiperly+et', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(69, 4, 2, 'nostrum et aut', 'Voluptatem neque soluta vero aspernatur dignissimos illo laudantium unde dolore est non quibusdam.', 4019469.00, 'https://via.placeholder.com/640x480.png/0077bb?text=products+Jastiperly+et', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(70, 4, 1, 'modi qui ea', 'Est hic inventore corrupti dicta voluptatem eaque est accusantium.', 2238994.00, 'https://via.placeholder.com/640x480.png/00ee11?text=products+Jastiperly+ea', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(71, 4, 1, 'tempora laudantium qui', 'Reprehenderit id eius quia minima aliquam eos quidem illo qui qui similique nihil ipsa.', 4619405.00, 'https://via.placeholder.com/640x480.png/004466?text=products+Jastiperly+earum', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(72, 4, 1, 'sunt autem consequatur', 'Modi assumenda quis totam ipsam totam atque voluptates.', 3561269.00, 'https://via.placeholder.com/640x480.png/00ffdd?text=products+Jastiperly+accusantium', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(73, 4, 5, 'sint nostrum cum', 'Praesentium nisi vel odit praesentium similique porro.', 3362732.00, 'https://via.placeholder.com/640x480.png/008899?text=products+Jastiperly+neque', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(74, 4, 1, 'blanditiis hic amet', 'Aut et distinctio quis at expedita aut et quia et quo et velit.', 3910093.00, 'https://via.placeholder.com/640x480.png/007711?text=products+Jastiperly+officiis', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(75, 4, 1, 'quia assumenda incidunt', 'Ut non ratione quo nostrum animi non ab exercitationem.', 2828016.00, 'https://via.placeholder.com/640x480.png/0011cc?text=products+Jastiperly+aut', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(76, 4, 3, 'sed aut ipsam', 'Velit sed quia est blanditiis fugiat sapiente reprehenderit cumque quia vel.', 884171.00, 'https://via.placeholder.com/640x480.png/007788?text=products+Jastiperly+velit', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(77, 4, 1, 'alias et libero', 'Adipisci similique et est optio occaecati voluptatum.', 2301040.00, 'https://via.placeholder.com/640x480.png/00ffcc?text=products+Jastiperly+officia', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(78, 4, 5, 'asperiores aut et', 'Natus aut impedit ducimus nihil ratione minima aliquid.', 122103.00, 'https://via.placeholder.com/640x480.png/007755?text=products+Jastiperly+omnis', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(79, 4, 1, 'commodi voluptas quo', 'Incidunt necessitatibus et minima praesentium earum temporibus illo numquam quasi vero.', 1297007.00, 'https://via.placeholder.com/640x480.png/0088cc?text=products+Jastiperly+dolorem', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(80, 4, 4, 'iste voluptatem eos', 'Deserunt exercitationem qui alias maiores fugiat voluptatem mollitia ab.', 102400.00, 'https://via.placeholder.com/640x480.png/00bb66?text=products+Jastiperly+odio', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(81, 4, 4, 'itaque ullam et', 'Mollitia eaque eius et repellat ipsam assumenda dolore.', 4057840.00, 'https://via.placeholder.com/640x480.png/00ffbb?text=products+Jastiperly+modi', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(82, 4, 4, 'et eum sed', 'Hic vero est voluptates sit mollitia labore quis sed aperiam adipisci.', 668204.00, 'https://via.placeholder.com/640x480.png/006644?text=products+Jastiperly+qui', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(83, 4, 5, 'sed maiores quod', 'Sint porro aut id iste eum iure dolores in quo.', 3589229.00, 'https://via.placeholder.com/640x480.png/004477?text=products+Jastiperly+voluptatem', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(84, 4, 3, 'aut atque velit', 'Itaque et enim dicta consequatur dolorem vel.', 297936.00, 'https://via.placeholder.com/640x480.png/002244?text=products+Jastiperly+eveniet', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(85, 4, 5, 'enim est iusto', 'Animi ut accusamus sed adipisci enim sunt.', 599414.00, 'https://via.placeholder.com/640x480.png/005500?text=products+Jastiperly+officiis', 'active', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(86, 4, 3, 'est fugiat beatae', 'Sequi est perspiciatis ut quaerat architecto maxime ad aut vel et.', 2665436.00, 'https://via.placeholder.com/640x480.png/009911?text=products+Jastiperly+commodi', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(87, 4, 3, 'velit et odio', 'Dolores optio reprehenderit rerum quia magni unde aut mollitia nesciunt voluptatem aut.', 1436581.00, 'https://via.placeholder.com/640x480.png/00aa44?text=products+Jastiperly+repellat', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(88, 4, 2, 'sint veniam alias', 'Rem consequatur maxime expedita debitis enim aliquam est quibusdam.', 3331140.00, 'https://via.placeholder.com/640x480.png/003377?text=products+Jastiperly+et', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(89, 4, 1, 'temporibus veritatis consequatur', 'Sunt et consequatur nesciunt eaque quam et explicabo numquam corrupti.', 1346724.00, 'https://via.placeholder.com/640x480.png/008844?text=products+Jastiperly+dolorum', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(90, 4, 2, 'corporis magnam aspernatur', 'Debitis ut nostrum est ipsum incidunt atque.', 2394602.00, 'https://via.placeholder.com/640x480.png/00bb88?text=products+Jastiperly+quia', 'inactive', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(91, 4, 3, 'ea sunt eaque', 'Numquam ex veniam pariatur velit praesentium maiores ut repudiandae porro.', 4134214.00, 'https://via.placeholder.com/640x480.png/00cc66?text=products+Jastiperly+et', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(92, 4, 2, 'quas enim est', 'Illum rerum odit ullam perspiciatis eaque velit omnis.', 4769067.00, 'https://via.placeholder.com/640x480.png/0000ee?text=products+Jastiperly+magni', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(93, 4, 3, 'provident suscipit est', 'Aliquid voluptatum architecto odio maiores ut nostrum eaque dolor quisquam mollitia officiis consequuntur iste.', 2283399.00, 'https://via.placeholder.com/640x480.png/00eecc?text=products+Jastiperly+eaque', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(94, 4, 3, 'odit et hic', 'Sapiente ipsa animi saepe molestiae aliquid natus qui molestiae ex ut at.', 4708788.00, 'https://via.placeholder.com/640x480.png/007700?text=products+Jastiperly+non', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(95, 4, 1, 'dolores et deserunt', 'Qui nisi et non totam voluptatibus sint et ut culpa eos.', 3602660.00, 'https://via.placeholder.com/640x480.png/0022cc?text=products+Jastiperly+aliquid', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(96, 4, 1, 'quos occaecati exercitationem', 'Optio placeat ex eius non quos eaque rerum.', 919808.00, 'https://via.placeholder.com/640x480.png/004466?text=products+Jastiperly+sapiente', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(97, 4, 2, 'ex molestias est', 'Sit saepe enim praesentium eius nisi aut non voluptatem.', 1728985.00, 'https://via.placeholder.com/640x480.png/009900?text=products+Jastiperly+laborum', 'inactive', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(98, 4, 1, 'temporibus aut vel', 'Ut et facere nulla voluptas veritatis maiores excepturi ipsum doloribus et natus.', 3124840.00, 'https://via.placeholder.com/640x480.png/001122?text=products+Jastiperly+aut', 'active', 'declined', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(99, 4, 5, 'non sunt qui', 'Reprehenderit reiciendis officia nisi est qui sit rerum.', 505570.00, 'https://via.placeholder.com/640x480.png/00ee77?text=products+Jastiperly+dignissimos', 'inactive', 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(100, 4, 5, 'odit sequi natus', 'Harum nesciunt neque sed voluptatem aut consequatur.', 2915487.00, 'https://via.placeholder.com/640x480.png/009966?text=products+Jastiperly+et', 'active', 'pending', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(102, 8, 2, 'Baju Renang Tahan Api', 'Non et voluptas molestiae quod sit exercitationem expedita et incidunt.', 10000000.00, 'products/OK03xGoy7xqZYizzw04qs63IbstXJE4ZfPAIWTXj.png', 'active', 'pending', '2025-09-16 01:30:58', '2025-09-16 01:30:58'),
(103, 9, 5, 'Meja', 'Non et voluptas molestiae quod sit exercitationem expedita et incidunt.', 75000.00, 'products/8v8Zlpms44NSy1qZwPgwyDYPfkzHWpgPqv7bkv7Q.png', 'active', 'pending', '2025-09-16 02:08:15', '2025-09-16 02:08:15'),
(104, 13, 2, 'Handphone', 'qawserdtfyguhijjgyfddfdfddgdfgdhgdhgfdgdyuyutyttttyytygu', 250000.00, 'products/V0FTb84kYTxklvSMVI41u12oOhjWOnMA2VadsxOE.png', 'active', 'approved', '2025-09-16 02:31:15', '2025-09-16 02:31:29'),
(105, 15, 1, 'Kipas Otok2', 'qwertyuiopp;lkjhgfdsazxcvbnm,.//.,mnbvcxzasdfghjkl;[poiuytrewqwertyuiop[\';lkjhgfdsazxcvbnm,./', 50000.00, 'products/zbB4u16lX5pQqu7UuVYZRdDrW3yJFrY20JWUFCpn.png', 'active', 'approved', '2025-09-17 00:44:55', '2025-09-19 00:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Elektronik', 'Kategori Elektronik', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(2, 'Fashion', 'Kategori Fashion', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(3, 'Makanan', 'Kategori Makanan', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(4, 'Kosmetik', 'Kategori Kosmetik', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(5, 'Perabotan', 'Kategori Perabotan', '2025-09-15 01:53:45', '2025-09-15 01:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buy_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text DEFAULT NULL,
  `status` enum('pending','approved','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refunds`
--

INSERT INTO `refunds` (`id`, `buy_transaction_id`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Delectus impedit sed dicta dolorum velit.', 'declined', '2025-07-18 01:53:45', '2025-07-18 01:53:45'),
(2, 12, 'Enim reprehenderit beatae magni non suscipit in nostrum.', 'approved', '2025-07-29 01:53:45', '2025-07-29 01:53:45'),
(3, 14, 'Delectus quis eaque illum nisi consectetur voluptate est.', 'declined', '2025-07-31 01:53:45', '2025-07-31 01:53:45'),
(4, 18, 'Consectetur consequatur dolore nam voluptatibus amet magnam voluptas.', 'declined', '2025-08-04 01:53:45', '2025-08-04 01:53:45'),
(5, 19, 'Omnis molestias aut aliquam ipsum et facilis nisi quia.', 'pending', '2025-08-05 01:53:45', '2025-08-05 01:53:45'),
(6, 21, 'Hic possimus earum nulla velit qui similique.', 'approved', '2025-08-07 01:53:45', '2025-08-07 01:53:45'),
(7, 25, 'Commodi fugit dolor ab cupiditate minus.', 'pending', '2025-08-11 01:53:45', '2025-08-11 01:53:45'),
(8, 35, 'Quo id ex rerum similique voluptas rerum soluta.', 'approved', '2025-08-21 01:53:45', '2025-08-21 01:53:45'),
(9, 36, 'Impedit cum excepturi qui incidunt.', 'pending', '2025-08-22 01:53:45', '2025-08-22 01:53:45'),
(10, 37, 'Aliquam expedita velit eveniet numquam harum.', 'approved', '2025-08-23 01:53:45', '2025-08-23 01:53:45'),
(11, 39, 'Et similique nulla reprehenderit dolores consequatur consequatur quia.', 'approved', '2025-08-25 01:53:45', '2025-08-25 01:53:45'),
(12, 42, 'Facere eos quas est quod neque et ut.', 'approved', '2025-08-28 01:53:45', '2025-08-28 01:53:45'),
(13, 45, 'Voluptatum nulla sunt error.', 'pending', '2025-08-31 01:53:45', '2025-08-31 01:53:45'),
(14, 46, 'Ab corporis est alias.', 'approved', '2025-09-01 01:53:45', '2025-09-01 01:53:45'),
(15, 48, 'Temporibus eius eum ullam qui temporibus.', 'pending', '2025-09-03 01:53:45', '2025-09-03 01:53:45'),
(16, 49, 'Ad eos saepe aut eligendi perferendis.', 'approved', '2025-09-04 01:53:45', '2025-09-04 01:53:45'),
(17, 50, 'Quisquam corporis voluptatem perferendis.', 'approved', '2025-09-05 01:53:45', '2025-09-05 01:53:45'),
(18, 55, 'Nihil et itaque tempore non accusantium et aut.', 'pending', '2025-09-10 01:53:45', '2025-09-10 01:53:45'),
(19, 56, 'Magnam rerum est temporibus eum.', 'approved', '2025-09-11 01:53:45', '2025-09-11 01:53:45'),
(20, 61, 'Adipisci eum nobis veritatis voluptatem consequatur nemo quod porro.', 'pending', '2025-09-16 01:53:45', '2025-09-16 01:53:45'),
(21, 62, 'Eum qui est eligendi qui voluptatem officia dolores.', 'declined', '2025-09-17 01:53:45', '2025-09-17 01:53:45'),
(22, 64, 'Rerum recusandae voluptatum nostrum autem architecto pariatur autem quia.', 'declined', '2025-09-19 01:53:45', '2025-09-19 01:53:45'),
(23, 65, 'Quasi nemo placeat repellat tempora et aut in.', 'declined', '2025-09-20 01:53:45', '2025-09-20 01:53:45'),
(24, 68, 'Molestiae et quasi accusantium earum.', 'pending', '2025-09-23 01:53:45', '2025-09-23 01:53:45'),
(25, 75, 'Ea officia dolore ratione.', 'pending', '2025-09-30 01:53:45', '2025-09-30 01:53:45'),
(26, 82, 'Fugit quam dolor esse et.', 'approved', '2025-10-07 01:53:45', '2025-10-07 01:53:45'),
(27, 86, 'Sed aperiam sed vero voluptate totam esse.', 'pending', '2025-10-11 01:53:45', '2025-10-11 01:53:45'),
(29, 89, 'Aspernatur nemo iste pariatur ducimus ratione.', 'approved', '2025-10-14 01:53:45', '2025-09-19 00:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `send_transactions`
--

CREATE TABLE `send_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `reciever_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `dimension` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `delivery_code` varchar(255) DEFAULT NULL,
  `delivery_method` enum('Reguler','Express','Kargo') NOT NULL,
  `delivery_type` enum('Dalam Negeri','Luar Negeri') NOT NULL,
  `delivery_image` varchar(255) DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `payment_proof` varchar(255) DEFAULT NULL,
  `payment_status` enum('pending','approved','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `send_transactions`
--

INSERT INTO `send_transactions` (`id`, `sender_id`, `reciever_id`, `product_id`, `dimension`, `weight`, `delivery_code`, `delivery_method`, `delivery_type`, `delivery_image`, `payment_method_id`, `payment_proof`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 25, '58 cm', '5 kg', 'DEL449NV', 'Express', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-07-18 01:53:45', '2025-07-18 01:53:45'),
(2, 4, 5, 78, '89 cm', '3 kg', 'DEL310KJ', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-07-19 01:53:45', '2025-07-19 01:53:45'),
(3, 4, 5, 14, '68 cm', '6 kg', 'DEL404DM', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-07-20 01:53:45', '2025-07-20 01:53:45'),
(4, 4, 5, 34, '46 cm', '4 kg', 'DEL287KZ', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-07-21 01:53:45', '2025-07-21 01:53:45'),
(5, 4, 5, 17, '84 cm', '3 kg', 'DEL926MR', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-07-22 01:53:45', '2025-07-22 01:53:45'),
(6, 4, 5, 23, '86 cm', '2 kg', 'DEL609UR', 'Reguler', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-07-23 01:53:45', '2025-07-23 01:53:45'),
(7, 4, 5, 4, '49 cm', '9 kg', 'DEL657TX', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-07-24 01:53:45', '2025-07-24 01:53:45'),
(8, 4, 5, 22, '35 cm', '9 kg', 'DEL347PM', 'Kargo', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-07-25 01:53:45', '2025-07-25 01:53:45'),
(9, 4, 5, 42, '80 cm', '6 kg', 'DEL818JC', 'Express', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-07-26 01:53:45', '2025-07-26 01:53:45'),
(10, 4, 5, 87, '95 cm', '10 kg', 'DEL974GA', 'Express', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-07-27 01:53:45', '2025-07-27 01:53:45'),
(11, 4, 5, 71, '30 cm', '10 kg', 'DEL356HL', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-07-28 01:53:45', '2025-07-28 01:53:45'),
(12, 4, 5, 15, '88 cm', '6 kg', 'DEL298NY', 'Reguler', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-07-29 01:53:45', '2025-07-29 01:53:45'),
(13, 4, 5, 67, '81 cm', '10 kg', 'DEL457RW', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-07-30 01:53:45', '2025-07-30 01:53:45'),
(14, 4, 5, 29, '91 cm', '3 kg', 'DEL174JF', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-07-31 01:53:45', '2025-07-31 01:53:45'),
(15, 4, 5, 71, '80 cm', '9 kg', 'DEL452OZ', 'Reguler', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-08-01 01:53:45', '2025-08-01 01:53:45'),
(16, 4, 5, 5, '43 cm', '1 kg', 'DEL849FT', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-08-02 01:53:45', '2025-08-02 01:53:45'),
(17, 4, 5, 62, '18 cm', '8 kg', 'DEL795OG', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-08-03 01:53:45', '2025-08-03 01:53:45'),
(18, 4, 5, 26, '62 cm', '5 kg', 'DEL807LS', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-08-04 01:53:45', '2025-08-04 01:53:45'),
(19, 4, 5, 11, '72 cm', '2 kg', 'DEL503NV', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-08-05 01:53:45', '2025-08-05 01:53:45'),
(20, 4, 5, 23, '87 cm', '6 kg', 'DEL360OM', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-08-06 01:53:45', '2025-08-06 01:53:45'),
(21, 4, 5, 21, '55 cm', '4 kg', 'DEL496UH', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-08-07 01:53:45', '2025-08-07 01:53:45'),
(22, 4, 5, 72, '35 cm', '3 kg', 'DEL085YU', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-08-08 01:53:45', '2025-08-08 01:53:45'),
(23, 4, 5, 52, '74 cm', '7 kg', 'DEL390TY', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-08-09 01:53:45', '2025-08-09 01:53:45'),
(24, 4, 5, 39, '61 cm', '4 kg', 'DEL545LH', 'Express', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-08-10 01:53:45', '2025-08-10 01:53:45'),
(25, 4, 5, 41, '25 cm', '1 kg', 'DEL457ET', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-08-11 01:53:45', '2025-08-11 01:53:45'),
(26, 4, 5, 20, '39 cm', '4 kg', 'DEL800WP', 'Reguler', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-08-12 01:53:45', '2025-08-12 01:53:45'),
(27, 4, 5, 26, '67 cm', '5 kg', 'DEL058YI', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-08-13 01:53:45', '2025-08-13 01:53:45'),
(28, 4, 5, 85, '86 cm', '3 kg', 'DEL052OY', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-08-14 01:53:45', '2025-08-14 01:53:45'),
(29, 4, 5, 15, '100 cm', '6 kg', 'DEL158TT', 'Reguler', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-08-15 01:53:45', '2025-08-15 01:53:45'),
(30, 4, 5, 2, '26 cm', '10 kg', 'DEL618EN', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-08-16 01:53:45', '2025-08-16 01:53:45'),
(31, 4, 5, 98, '56 cm', '4 kg', 'DEL118WB', 'Reguler', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-08-17 01:53:45', '2025-08-17 01:53:45'),
(32, 4, 5, 43, '64 cm', '7 kg', 'DEL537SV', 'Express', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-08-18 01:53:45', '2025-08-18 01:53:45'),
(33, 4, 5, 75, '76 cm', '7 kg', 'DEL186PI', 'Express', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-08-19 01:53:45', '2025-08-19 01:53:45'),
(34, 4, 5, 26, '72 cm', '5 kg', 'DEL169YQ', 'Express', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-08-20 01:53:45', '2025-08-20 01:53:45'),
(35, 4, 5, 83, '49 cm', '4 kg', 'DEL661DK', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-08-21 01:53:45', '2025-08-21 01:53:45'),
(36, 4, 5, 76, '80 cm', '6 kg', 'DEL607FD', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-08-22 01:53:45', '2025-08-22 01:53:45'),
(37, 4, 5, 12, '20 cm', '8 kg', 'DEL880VJ', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-08-23 01:53:45', '2025-08-23 01:53:45'),
(38, 4, 5, 55, '40 cm', '8 kg', 'DEL168SO', 'Kargo', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-08-24 01:53:45', '2025-08-24 01:53:45'),
(39, 4, 5, 1, '15 cm', '5 kg', 'DEL226KU', 'Reguler', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-08-25 01:53:45', '2025-08-25 01:53:45'),
(40, 4, 5, 84, '94 cm', '3 kg', 'DEL108SS', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-08-26 01:53:45', '2025-08-26 01:53:45'),
(41, 4, 5, 42, '37 cm', '7 kg', 'DEL171IC', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-08-27 01:53:45', '2025-08-27 01:53:45'),
(42, 4, 5, 61, '51 cm', '9 kg', 'DEL603HS', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-08-28 01:53:45', '2025-08-28 01:53:45'),
(43, 4, 5, 75, '56 cm', '7 kg', 'DEL405MW', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-08-29 01:53:45', '2025-08-29 01:53:45'),
(44, 4, 5, 100, '18 cm', '4 kg', 'DEL048PN', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-08-30 01:53:45', '2025-08-30 01:53:45'),
(45, 4, 5, 49, '48 cm', '8 kg', 'DEL519RI', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-08-31 01:53:45', '2025-08-31 01:53:45'),
(46, 4, 5, 85, '73 cm', '5 kg', 'DEL388ZN', 'Reguler', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-09-01 01:53:45', '2025-09-01 01:53:45'),
(47, 4, 5, 87, '28 cm', '3 kg', 'DEL770DV', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-09-02 01:53:45', '2025-09-02 01:53:45'),
(48, 4, 5, 97, '42 cm', '5 kg', 'DEL566IZ', 'Express', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-09-03 01:53:45', '2025-09-03 01:53:45'),
(49, 4, 5, 1, '70 cm', '4 kg', 'DEL560LH', 'Express', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-09-04 01:53:45', '2025-09-04 01:53:45'),
(50, 4, 5, 78, '56 cm', '6 kg', 'DEL806DF', 'Reguler', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-09-05 01:53:45', '2025-09-05 01:53:45'),
(51, 4, 5, 52, '96 cm', '2 kg', 'DEL947UR', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-09-06 01:53:45', '2025-09-06 01:53:45'),
(52, 4, 5, 83, '92 cm', '3 kg', 'DEL614AI', 'Kargo', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-09-07 01:53:45', '2025-09-07 01:53:45'),
(53, 4, 5, 80, '22 cm', '6 kg', 'DEL241IO', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-09-08 01:53:45', '2025-09-08 01:53:45'),
(54, 4, 5, 13, '33 cm', '8 kg', 'DEL844EJ', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-09-09 01:53:45', '2025-09-09 01:53:45'),
(55, 4, 5, 56, '74 cm', '3 kg', 'DEL380MY', 'Kargo', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-09-10 01:53:45', '2025-09-10 01:53:45'),
(56, 4, 5, 31, '18 cm', '6 kg', 'DEL770WI', 'Reguler', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-09-11 01:53:45', '2025-09-11 01:53:45'),
(57, 4, 5, 40, '89 cm', '2 kg', 'DEL563PZ', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-09-12 01:53:45', '2025-09-12 01:53:45'),
(58, 4, 5, 65, '79 cm', '9 kg', 'DEL431YJ', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-09-13 01:53:45', '2025-09-13 01:53:45'),
(59, 4, 5, 93, '20 cm', '8 kg', 'DEL552WP', 'Express', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-09-14 01:53:45', '2025-09-14 01:53:45'),
(60, 4, 5, 53, '75 cm', '1 kg', 'DEL119ZR', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(61, 4, 5, 77, '18 cm', '9 kg', 'DEL121VA', 'Reguler', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-09-16 01:53:45', '2025-09-16 01:53:45'),
(62, 4, 5, 17, '81 cm', '4 kg', 'DEL538MA', 'Reguler', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-09-17 01:53:45', '2025-09-17 01:53:45'),
(63, 4, 5, 86, '24 cm', '9 kg', 'DEL844TK', 'Reguler', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-09-18 01:53:45', '2025-09-18 01:53:45'),
(64, 4, 5, 50, '36 cm', '7 kg', 'DEL334CQ', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-09-19 01:53:45', '2025-09-19 01:53:45'),
(65, 4, 5, 88, '66 cm', '4 kg', 'DEL317KQ', 'Express', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-09-20 01:53:45', '2025-09-20 01:53:45'),
(66, 4, 5, 88, '99 cm', '8 kg', 'DEL796EH', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-09-21 01:53:45', '2025-09-21 01:53:45'),
(67, 4, 5, 36, '99 cm', '7 kg', 'DEL849CM', 'Reguler', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-09-22 01:53:45', '2025-09-22 01:53:45'),
(68, 4, 5, 86, '63 cm', '3 kg', 'DEL435UF', 'Reguler', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-09-23 01:53:45', '2025-09-23 01:53:45'),
(69, 4, 5, 12, '20 cm', '4 kg', 'DEL221KP', 'Reguler', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-09-24 01:53:45', '2025-09-24 01:53:45'),
(70, 4, 5, 95, '81 cm', '1 kg', 'DEL671SY', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-09-25 01:53:45', '2025-09-25 01:53:45'),
(71, 4, 5, 79, '62 cm', '3 kg', 'DEL129AV', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-09-26 01:53:45', '2025-09-26 01:53:45'),
(72, 4, 5, 26, '53 cm', '7 kg', 'DEL395JJ', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-09-27 01:53:45', '2025-09-27 01:53:45'),
(73, 4, 5, 16, '99 cm', '1 kg', 'DEL311PE', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-09-28 01:53:45', '2025-09-28 01:53:45'),
(74, 4, 5, 75, '40 cm', '4 kg', 'DEL568CE', 'Kargo', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-09-29 01:53:45', '2025-09-29 01:53:45'),
(75, 4, 5, 75, '33 cm', '3 kg', 'DEL253CV', 'Express', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-09-30 01:53:45', '2025-09-30 01:53:45'),
(76, 4, 5, 65, '15 cm', '1 kg', 'DEL998GN', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-10-01 01:53:45', '2025-10-01 01:53:45'),
(77, 4, 5, 77, '20 cm', '9 kg', 'DEL591AA', 'Express', 'Luar Negeri', NULL, 1, NULL, 'pending', '2025-10-02 01:53:45', '2025-10-02 01:53:45'),
(78, 4, 5, 76, '98 cm', '2 kg', 'DEL467EZ', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-10-03 01:53:45', '2025-10-03 01:53:45'),
(79, 4, 5, 50, '36 cm', '9 kg', 'DEL038YX', 'Express', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-10-04 01:53:45', '2025-10-04 01:53:45'),
(80, 4, 5, 12, '70 cm', '9 kg', 'DEL847DM', 'Express', 'Luar Negeri', NULL, 2, NULL, 'approved', '2025-10-05 01:53:45', '2025-10-05 01:53:45'),
(81, 4, 5, 39, '79 cm', '8 kg', 'DEL638HD', 'Reguler', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-10-06 01:53:45', '2025-10-06 01:53:45'),
(82, 4, 5, 18, '50 cm', '6 kg', 'DEL478SV', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-10-07 01:53:45', '2025-10-07 01:53:45'),
(83, 4, 5, 62, '29 cm', '10 kg', 'DEL547LO', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-10-08 01:53:45', '2025-10-08 01:53:45'),
(84, 4, 5, 38, '83 cm', '1 kg', 'DEL022PP', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-10-09 01:53:45', '2025-10-09 01:53:45'),
(85, 4, 5, 32, '99 cm', '7 kg', 'DEL894YK', 'Reguler', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-10-10 01:53:45', '2025-10-10 01:53:45'),
(86, 4, 5, 32, '90 cm', '6 kg', 'DEL808TA', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-10-11 01:53:45', '2025-10-11 01:53:45'),
(87, 4, 5, 27, '24 cm', '2 kg', 'DEL069IV', 'Express', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-10-12 01:53:45', '2025-10-12 01:53:45'),
(88, 4, 5, 99, '80 cm', '4 kg', 'DEL531TI', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'pending', '2025-10-13 01:53:45', '2025-10-13 01:53:45'),
(89, 4, 5, 94, '10 cm', '6 kg', 'DEL381WP', 'Reguler', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-10-14 01:53:45', '2025-10-14 01:53:45'),
(90, 4, 5, 1, '63 cm', '7 kg', 'DEL336EX', 'Reguler', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-10-15 01:53:45', '2025-10-15 01:53:45'),
(91, 4, 5, 86, '89 cm', '6 kg', 'DEL188LB', 'Reguler', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-10-16 01:53:45', '2025-10-16 01:53:45'),
(92, 4, 5, 85, '41 cm', '4 kg', 'DEL535QZ', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-10-17 01:53:45', '2025-10-17 01:53:45'),
(93, 4, 5, 14, '100 cm', '5 kg', 'DEL465AL', 'Express', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-10-18 01:53:45', '2025-10-18 01:53:45'),
(94, 4, 5, 36, '64 cm', '10 kg', 'DEL590TG', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-10-19 01:53:45', '2025-10-19 01:53:45'),
(95, 4, 5, 72, '77 cm', '5 kg', 'DEL746IO', 'Express', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-10-20 01:53:45', '2025-10-20 01:53:45'),
(96, 4, 5, 62, '76 cm', '5 kg', 'DEL871JF', 'Express', 'Dalam Negeri', NULL, 2, NULL, 'approved', '2025-10-21 01:53:45', '2025-10-21 01:53:45'),
(97, 4, 5, 97, '79 cm', '10 kg', 'DEL734XK', 'Kargo', 'Luar Negeri', NULL, 1, NULL, 'approved', '2025-10-22 01:53:45', '2025-10-22 01:53:45'),
(98, 4, 5, 58, '14 cm', '8 kg', 'DEL608SG', 'Kargo', 'Dalam Negeri', NULL, 2, NULL, 'pending', '2025-10-23 01:53:45', '2025-10-23 01:53:45'),
(99, 4, 5, 62, '47 cm', '2 kg', 'DEL608ZW', 'Kargo', 'Luar Negeri', NULL, 2, NULL, 'pending', '2025-10-24 01:53:45', '2025-10-24 01:53:45'),
(100, 4, 5, 7, '81 cm', '2 kg', 'DEL916GZ', 'Kargo', 'Dalam Negeri', NULL, 1, NULL, 'approved', '2025-10-25 01:53:45', '2025-10-25 01:53:45');

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
('RXKE9RhGh34iPfhSYyiJ5ihdyjYZmmimIVbbZX5m', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXVNck51RW5rblBCbWFVUHh1dmp0Nnl1NkdKM1Q2RWJ3R21EUUFsMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdXBlcmFkbWluL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1758277350);

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
  `role` enum('admin','superadmin','finance','traveler','customer') NOT NULL DEFAULT 'customer',
  `account_status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `account_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@example.com', NULL, '$2y$12$EwYoKQ9j1c6bVbYUPRT/nOxnjtDOec5oKvXeE9hG0KHR9mbJto446', 'superadmin', 'active', NULL, '2025-09-15 01:53:44', '2025-09-19 03:09:56'),
(2, 'Admin User', 'admin@example.com', NULL, '$2y$12$l4lsFOUlCBNeJIWU8zKxG.YgA1aQXZum9GvvI9azXfDd1Pkcmk1nG', 'admin', 'active', NULL, '2025-09-15 01:53:44', '2025-09-15 01:53:44'),
(3, 'Finance User', 'finance@example.com', NULL, '$2y$12$q3JI4mNw0UwrsE9DyRq9V.CI0MnL37KeMnSENctfKQ7bDRs1GdKoO', 'finance', 'active', NULL, '2025-09-15 01:53:44', '2025-09-15 01:53:44'),
(4, 'Traveler User', 'traveler@example.com', NULL, '$2y$12$90HagA0qQKdwlhpsF4146eIS/RJxzoe/j2hRdlVcMCa5VP/b36xma', 'traveler', 'active', NULL, '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(5, 'Customer User', 'customer@example.com', NULL, '$2y$12$xydPn3WjD2k.QA8jrgT/quvCRnpOFZo/JnFJaVfzwsSjt00dyOjtm', 'customer', 'active', NULL, '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(8, 'supartono', 'supartono@example.com', NULL, '$2y$12$ipqG4.QdmO4Uw4SEMsevGe6FBGCOB4PDi1/.RvyhRtE1M6NpkZ.oi', 'customer', 'active', NULL, '2025-09-16 01:30:58', '2025-09-16 01:54:34'),
(9, 'Alim', 'userVMzJ39Er@example.com', NULL, '$2y$12$1haxbVYhMaEbNna.PRfoNOuDyLbEAGtXo600k3hCy.kiK5JLhKJdW', 'customer', 'active', NULL, '2025-09-16 02:08:15', '2025-09-16 02:08:15'),
(11, 'agus', 'uservrvWumjk@example.com', NULL, '$2y$12$lSYAcmxU/5iWmb54Adp/BuU1kij93MCg.1bITgtFAgmnJ/8tqtuN6', 'customer', 'active', NULL, '2025-09-16 02:17:20', '2025-09-16 02:17:20'),
(12, 'supar', 'userzXdGKX8M@example.com', NULL, '$2y$12$xL8yldw.SeAs6l73O2lovekUbbs5hqvYcTaUstrQtXaa746W9z4S6', 'customer', 'active', NULL, '2025-09-16 02:29:55', '2025-09-16 02:29:55'),
(13, 'Ahmad', 'userb2pU2avh@example.com', NULL, '$2y$12$HS54qqy4NdDmU9hMCWkjtuV3JubyHAvRcMes6axyvky7k4v0dZDn2', 'traveler', 'active', NULL, '2025-09-16 02:31:15', '2025-09-16 02:31:15'),
(14, 'Suraji', 'userDOEwlqjC@example.com', NULL, '$2y$12$rzrI68Uijqx04VDBo.YyzelAJIWH.vWnfHsm1wH3LUWOu1TZhD9i6', 'customer', 'active', NULL, '2025-09-17 00:44:55', '2025-09-17 00:44:55'),
(15, 'Sutarjo', 'userXr5lJHpV@example.com', NULL, '$2y$12$gR8raThQfZShVXeeWoHX6e4waEWxUzrHFX0phsRC2QEFScJnZw9mq', 'customer', 'active', NULL, '2025-09-19 00:34:40', '2025-09-19 00:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `verified_type` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `gender` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_number` varchar(255) DEFAULT NULL,
  `id_card_image` varchar(255) DEFAULT NULL,
  `pasport_image` varchar(255) DEFAULT NULL,
  `account_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `verified_type`, `name`, `phone`, `address`, `date_birth`, `gender`, `bank_name`, `bank_number`, `id_card_image`, `pasport_image`, `account_image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Super Admin Detail', '123456789', 'i will try again', '1985-07-16', 'Laki-laki', 'Mandiri', '1316795160', NULL, NULL, 'avatars/2N45Gf0E3T70duiI9jg4AQorcutoQnBdpdDXykDU.jpg', '2025-09-15 01:53:44', '2025-09-19 02:58:37'),
(2, 2, 0, 'Admin User Detail', '(+62) 699 6063 063', 'Jln. Sugiyopranoto No. 71, Pekalongan 93763, Kalteng', '1978-10-08', 'Laki-laki', 'Mandiri', '52908277', NULL, NULL, NULL, '2025-09-15 01:53:44', '2025-09-15 01:53:44'),
(3, 3, 0, 'Finance User Detail', '(+62) 354 5019 0904', 'Psr. Baung No. 363, Langsa 92432, Jambi', '2006-01-27', 'Laki-laki', 'BNI', '869673018570', NULL, NULL, NULL, '2025-09-15 01:53:44', '2025-09-15 01:53:44'),
(4, 4, 0, 'Traveler User Detail', '0320 7620 108', 'Jr. Sentot Alibasa No. 802, Samarinda 23317, Lampung', '1989-01-30', 'Perempuan', 'BCA', '8110224516831705', NULL, NULL, NULL, '2025-09-15 01:53:45', '2025-09-15 01:53:45'),
(5, 5, 1, 'Customer User Detail', '(+62) 369 2082 4079', 'Dk. Cikutra Barat No. 546, Ambon 94053, Sumsel', '2025-05-06', 'Perempuan', 'Mandiri', '9981549383494', NULL, NULL, NULL, '2025-09-15 01:53:45', '2025-09-15 01:53:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy_transactions`
--
ALTER TABLE `buy_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buy_transactions_buyer_id_foreign` (`buyer_id`),
  ADD KEY `buy_transactions_traveler_id_foreign` (`traveler_id`),
  ADD KEY `buy_transactions_product_id_foreign` (`product_id`),
  ADD KEY `buy_transactions_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_submiter_id_foreign` (`submiter_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_buy_transaction_id_foreign` (`buy_transaction_id`);

--
-- Indexes for table `send_transactions`
--
ALTER TABLE `send_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_transactions_sender_id_foreign` (`sender_id`),
  ADD KEY `send_transactions_reciever_id_foreign` (`reciever_id`),
  ADD KEY `send_transactions_product_id_foreign` (`product_id`),
  ADD KEY `send_transactions_payment_method_id_foreign` (`payment_method_id`);

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
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy_transactions`
--
ALTER TABLE `buy_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `send_transactions`
--
ALTER TABLE `send_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy_transactions`
--
ALTER TABLE `buy_transactions`
  ADD CONSTRAINT `buy_transactions_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buy_transactions_traveler_id_foreign` FOREIGN KEY (`traveler_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_submiter_id_foreign` FOREIGN KEY (`submiter_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_buy_transaction_id_foreign` FOREIGN KEY (`buy_transaction_id`) REFERENCES `buy_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `send_transactions`
--
ALTER TABLE `send_transactions`
  ADD CONSTRAINT `send_transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `send_transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `send_transactions_reciever_id_foreign` FOREIGN KEY (`reciever_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `send_transactions_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
