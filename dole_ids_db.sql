-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2026 at 07:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dole_ids_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_logs`
--

CREATE TABLE `delivery_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` varchar(50) NOT NULL,
  `scan_code` varchar(40) DEFAULT NULL,
  `request_id` int(10) UNSIGNED DEFAULT NULL,
  `office` varchar(120) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `status` enum('ready','picked','delivering','shipped','completed','cancelled','returned') NOT NULL DEFAULT 'completed',
  `eta` varchar(30) DEFAULT NULL,
  `courier_name` varchar(100) DEFAULT NULL,
  `scanned_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `completed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_logs`
--

INSERT INTO `delivery_logs` (`id`, `package_id`, `scan_code`, `request_id`, `office`, `item_name`, `status`, `eta`, `courier_name`, `scanned_at`, `delivered_at`, `created_at`, `completed_at`) VALUES
(1, 'PKG-19', NULL, NULL, 'Province-synced', 'Pending sync', 'picked', '—', NULL, '2026-07-28 17:36:36', '2026-08-04 21:36:59', '2026-08-04 21:36:59', '2026-08-04 21:36:59'),
(2, 'PKG-1001', NULL, 1, 'Requestor Office', 'Bond Paper', 'picked', '09:15 AM', NULL, '2026-08-05 03:56:30', '2026-08-05 03:56:42', '2026-08-05 03:56:42', '2026-08-05 03:56:42'),
(3, 'PKG-23', NULL, NULL, 'Province-synced', 'Pending sync', 'picked', '—', NULL, '2026-08-05 04:04:04', '2026-08-05 04:06:55', '2026-08-05 04:06:55', '2026-08-05 04:06:55'),
(4, 'PKG-24', NULL, 24, 'Province-synced', 'Pending sync', 'ready', '—', NULL, '2026-08-05 04:10:18', '2026-08-05 04:10:24', '2026-08-05 04:10:24', '2026-08-05 04:10:24'),
(8, 'PKG-25', NULL, 25, 'Province-synced', 'Pending sync', 'picked', '—', NULL, '2026-08-05 13:45:32', '2026-08-05 13:48:51', '2026-08-05 13:48:51', '2026-08-05 13:48:51'),
(10, 'PKG-26', NULL, 26, 'Province-synced', 'Pending sync', 'picked', '—', NULL, '2026-08-05 14:21:36', '2026-08-05 14:24:32', '2026-08-05 14:24:32', '2026-08-05 14:24:32'),
(15, 'PKG-27', NULL, 27, 'Province-synced', 'Pending sync', 'delivering', '—', NULL, '2026-08-22 11:44:24', '2026-08-22 11:48:16', '2026-08-22 11:48:16', '2026-08-22 11:48:16'),
(18, 'PKG-28', NULL, 28, 'Province-synced', 'Pending sync', 'picked', '—', NULL, '2026-09-06 13:46:01', '2026-09-06 14:10:12', '2026-09-06 14:10:12', '2026-09-06 14:10:12'),
(27, 'PKG-1003', NULL, 3, 'Admin Office', 'Folders', 'completed', '10:20 AM', 'Kurt Aquino', '2026-09-11 12:20:05', '2026-09-11 12:20:12', '2026-09-11 12:20:12', '2026-09-11 12:20:12'),
(33, 'PKG-1002', NULL, 2, 'Supply Unit', 'Ballpen Set', 'completed', '09:45 AM', 'Kurt Aquino', '2026-09-11 11:54:26', '2026-09-11 12:29:17', '2026-09-11 12:29:17', '2026-09-11 12:29:17'),
(37, 'PKG-38', 'DLV-A7D4F4A339DF4890194C', 38, 'BATANGAS', 'Pending sync', 'completed', '—', 'Kurt Aquino', '2026-09-29 17:19:26', '2026-09-29 17:33:23', '2026-09-29 17:33:23', '2026-09-29 17:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_packages`
--

CREATE TABLE `delivery_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` varchar(50) NOT NULL,
  `scan_code` varchar(40) DEFAULT NULL,
  `request_id` int(10) UNSIGNED DEFAULT NULL,
  `office` varchar(120) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `status` enum('ready','picked','delivering','shipped','completed','cancelled','returned') NOT NULL DEFAULT 'ready',
  `eta` varchar(30) DEFAULT NULL,
  `courier_name` varchar(100) DEFAULT NULL,
  `scanned_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_packages`
--

INSERT INTO `delivery_packages` (`id`, `package_id`, `scan_code`, `request_id`, `office`, `item_name`, `status`, `eta`, `courier_name`, `scanned_at`, `delivered_at`, `created_at`, `updated_at`) VALUES
(17, 'PKG-24', 'DLV-A071425AF079F9083980', 24, 'Province-synced', 'Pending sync', 'delivering', '—', NULL, '2026-08-05 04:10:26', NULL, '2026-08-05 04:10:26', '2026-09-11 12:46:34'),
(19, 'PKG-25', 'DLV-BBA6A8870340760026EB', 25, 'Province-synced', 'Pending sync', 'picked', '—', NULL, '2026-08-05 14:17:50', NULL, '2026-08-05 14:17:50', '2026-09-11 12:46:34'),
(23, 'PKG-29', 'DLV-B82A46AABDC9F272422A', 29, 'BATANGAS', 'Pending sync', 'delivering', '—', NULL, '2026-09-11 11:55:56', NULL, '2026-09-11 11:55:56', '2026-09-11 12:46:34'),
(24, 'PKG-30', 'DLV-68A238D9BFD46D590973', 30, 'RIZAL', 'Pending sync', 'delivering', '—', NULL, '2026-09-11 12:05:06', NULL, '2026-09-11 12:05:06', '2026-09-11 12:46:34'),
(25, 'PKG-31', 'DLV-FC1471D4E24C8251CBF5', 31, 'RIZAL', 'Pending sync', 'delivering', '—', 'Gabrielle Gruela', '2026-09-11 12:12:33', NULL, '2026-09-11 12:12:33', '2026-09-11 12:46:34'),
(26, 'PKG-32', 'DLV-7BC0FAE9B849D20F78EA', 32, 'BATANGAS', 'Pending sync', 'delivering', '—', 'Kurt Aquino', '2026-09-11 12:15:49', NULL, '2026-09-11 12:15:49', '2026-09-11 12:46:34'),
(27, 'PKG-1003', 'DLV-3A66C63438E3676CA0B7', 1003, 'BATANGAS', 'Pending sync', 'picked', '—', 'Kurt Aquino', '2026-09-11 12:20:29', NULL, '2026-09-11 12:20:15', '2026-09-11 12:46:34'),
(28, 'PKG-1002', 'DLV-7E24EDAC56A72E4F094F', 1002, 'BATANGAS', 'Pending sync', 'completed', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 12:29:27', '2026-09-11 12:46:34'),
(29, 'PKG-23', 'DLV-5FAFD29B244C6919583B', 23, 'BATANGAS', 'Binder Clips x3', 'ready', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(30, 'PKG-22', 'DLV-1F5FFD9DCC36DCF55024', 22, 'BATANGAS', 'A4 Notebooks x3', 'ready', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(31, 'PKG-21', 'DLV-E3B00585731B088BCDF6', 21, 'BATANGAS', 'Gel Pens x3', 'ready', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(32, 'PKG-20', 'DLV-B5309B2A1F5F4B2796F5', 20, 'BATANGAS', 'Black Ink Cartridges x1', 'ready', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(33, 'PKG-19', 'DLV-D8F22519CE66A60E35B7', 19, 'BATANGAS', 'A4 Notebooks x1, Ballpoint Pens x1, Binder Clips x1', 'ready', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(34, 'PKG-18', 'DLV-8BE62E512EE024A92AC6', 18, 'BATANGAS', 'A4 Notebooks x1, Ballpoint Pens x1, Black Ink Cartridges x1', 'ready', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(35, 'PKG-15', 'DLV-4E74314F85B3577D0355', 15, 'BATANGAS', 'Ballpoint Pens x1', 'ready', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(36, 'PKG-14', 'DLV-AC2BDEF03C4D28308AF0', 14, 'BATANGAS', 'Black Ink Cartridges x1', 'ready', '—', 'Kurt Aquino', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(37, 'PKG-13', 'DLV-3E1EE5A6DA8CE53D6687', 13, 'Cavite', 'Printer Paper x20', 'ready', '—', 'Flavio Deza', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(38, 'PKG-4', 'DLV-7ECF814A8AF970CA831E', 4, 'Cavite', 'Calculator x5', 'ready', '—', 'Flavio Deza', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(39, 'PKG-11', 'DLV-3D27764DC7A6B7B22EAC', 11, 'Laguna', 'Envelope (Long) x30', 'ready', '—', NULL, NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(40, 'PKG-7', 'DLV-8D06F2BBEAEA5AF7F04F', 7, 'Quezon', 'Ballpoint Pen (Black) x30', 'ready', '—', 'Donna Karen Juan', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57'),
(41, 'PKG-5', 'DLV-9DE6FDDDDB077C287A48', 5, 'Rizal', 'Binder Clips x5', 'ready', '—', 'Gabrielle Gruela', NULL, NULL, '2026-09-11 13:00:57', '2026-09-11 13:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `category` varchar(120) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `unit` varchar(50) NOT NULL DEFAULT 'pcs',
  `min_stock` int(11) NOT NULL DEFAULT 0,
  `image_path` varchar(255) DEFAULT NULL,
  `last_modified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_items`
--

INSERT INTO `inventory_items` (`id`, `item_name`, `category`, `stock`, `unit`, `min_stock`, `image_path`, `last_modified`) VALUES
(1, 'Black Ink Cartridges', 'Printer Supplies', 45, 'box', 10, NULL, '2026-09-29 17:19:25'),
(2, 'Laser Toner', 'Printer Supplies', 5, 'cartridge', 8, NULL, '2026-04-27 14:10:56'),
(3, 'Photo Paper', 'Printer Supplies', 12, 'pack', 20, NULL, '2026-04-27 14:10:56'),
(4, 'Ballpoint Pens', 'Writing Supplies', 9, 'dozen', 40, NULL, '2026-09-29 16:12:12'),
(5, 'Whiteboard Markers', 'Writing Supplies', 4, 'box', 30, NULL, '2026-04-27 14:10:56'),
(6, 'Blue Ink Pens', 'Writing Supplies', 50, 'pack', 20, NULL, '2026-09-06 14:55:23'),
(7, 'Gel Pens', 'Writing Supplies', 22, 'dozen', 30, NULL, '2026-08-05 03:05:23'),
(8, 'Correction Fluid', 'Writing Supplies', 3, 'bottle', 15, NULL, '2026-09-29 12:12:07'),
(9, 'Highlighters', 'Writing Supplies', 60, 'pack', 10, NULL, '2026-09-06 14:55:36'),
(10, 'A4 Notebooks', 'Office Supplies', 102, 'dozen', 25, NULL, '2026-09-29 16:09:58'),
(11, 'Paper Clips', 'Office Supplies', 50, 'box', 150, NULL, '2026-04-27 14:10:56'),
(12, 'Staplers', 'Office Supplies', 10, 'pcs', 5, NULL, '2026-09-06 14:55:44'),
(13, 'Binder Clips', 'Office Supplies', 9, 'box', 40, NULL, '2026-09-29 17:19:25'),
(14, 'Desk Organizer', 'Office Supplies', 0, 'pcs', 10, NULL, '2026-09-06 14:56:02'),
(15, 'Printer Paper', 'Paper Products', 5, 'ream', 20, NULL, '2026-09-06 14:55:52'),
(16, 'Sticky Notes', 'Paper Products', 0, 'pack', 10, NULL, '2026-04-27 14:10:56'),
(17, 'Manila Folders', 'Paper Products', 30, 'pack', 60, NULL, '2026-04-27 14:10:56'),
(18, 'Notepads', 'Paper Products', 15, 'pad', 35, NULL, '2026-08-05 14:21:35'),
(19, 'Computer', 'Office Supplies', 5, 'pcs', 5, NULL, '2026-09-06 14:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `ip_address` varchar(45) NOT NULL,
  `attempts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `window_started` datetime NOT NULL,
  `locked_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token_hash` char(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ppmp_items`
--

CREATE TABLE `ppmp_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `ppmp_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT 'pcs',
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ppmp_items`
--

INSERT INTO `ppmp_items` (`id`, `ppmp_id`, `item_name`, `unit`, `quantity`, `created_at`) VALUES
(7, 3, 'Copy Paper, A4, 70gsm', 'Ream', 100, '2026-09-06 10:10:49'),
(8, 3, 'Printer Ink Cartridge', 'Piece', 12, '2026-09-06 10:10:49'),
(9, 3, 'Ballpoint Pen, Black', 'Box', 25, '2026-09-06 10:10:49'),
(10, 4, 'Copy Paper, A4, 70gsm', 'Ream', 100, '2026-09-06 10:24:32'),
(11, 4, 'Printer Ink Cartridge', 'Piece', 12, '2026-09-06 10:24:32'),
(12, 4, 'Ballpoint Pen, Black', 'Box', 25, '2026-09-06 10:24:32'),
(13, 5, 'Copy Paper, A4, 70gsm', 'Ream', 100, '2026-09-06 10:28:12'),
(14, 5, 'Printer Ink Cartridge', 'Piece', 12, '2026-09-06 10:28:12'),
(15, 5, 'Ballpoint Pen, Black', 'Box', 25, '2026-09-06 10:28:12'),
(16, 6, 'Copy Paper, A4, 70gsm', 'Ream', 100, '2026-09-06 10:46:59'),
(17, 6, 'Printer Ink Cartridge', 'Piece', 12, '2026-09-06 10:46:59'),
(18, 6, 'Ballpoint Pen, Black', 'Box', 25, '2026-09-06 10:46:59'),
(19, 7, 'Copy Paper, A4, 70gsm', 'Ream', 100, '2026-09-06 11:52:29'),
(20, 7, 'Printer Ink Cartridge', 'Piece', 12, '2026-09-06 11:52:29'),
(21, 7, 'Ballpoint Pen, Black', 'Box', 25, '2026-09-06 11:52:29'),
(22, 8, 'Black Ink Cartridges', 'box', 12, '2026-09-06 12:02:10'),
(23, 8, 'Ballpoint Pens', 'dozen', 8, '2026-09-06 12:02:10'),
(24, 8, 'A4 Notebooks', 'dozen', 5, '2026-09-06 12:02:10'),
(25, 8, 'Binder Clips', 'box', 10, '2026-09-06 12:02:10'),
(26, 9, 'Black Ink Cartridges', 'box', 12, '2026-09-06 12:08:34'),
(27, 9, 'Ballpoint Pens', 'dozen', 8, '2026-09-06 12:08:34'),
(28, 9, 'A4 Notebooks', 'dozen', 5, '2026-09-06 12:08:34'),
(29, 9, 'Binder Clips', 'box', 10, '2026-09-06 12:08:34'),
(30, 10, 'Whiteboard Markers', 'box', 6, '2026-09-06 12:15:14'),
(31, 10, 'Gel Pens', 'dozen', 4, '2026-09-06 12:15:14'),
(32, 10, 'Correction Fluid', 'bottle', 9, '2026-09-06 12:15:14'),
(33, 10, 'Manila Folders', 'pack', 15, '2026-09-06 12:15:14'),
(34, 11, 'Whiteboard Markers', 'box', 6, '2026-09-11 10:44:44'),
(35, 11, 'Gel Pens', 'dozen', 4, '2026-09-11 10:44:44'),
(36, 11, 'Correction Fluid', 'bottle', 9, '2026-09-11 10:44:44'),
(37, 11, 'Manila Folders', 'pack', 15, '2026-09-11 10:44:44'),
(38, 12, 'Whiteboard Markers', 'box', 6, '2026-09-11 12:03:00'),
(39, 12, 'Gel Pens', 'dozen', 4, '2026-09-11 12:03:00'),
(40, 12, 'Correction Fluid', 'bottle', 9, '2026-09-11 12:03:00'),
(41, 12, 'Manila Folders', 'pack', 15, '2026-09-11 12:03:00'),
(43, 14, 'Correction Fluid', 'bottle', 2, '2026-09-29 14:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `ppmp_records`
--

CREATE TABLE `ppmp_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `requestor_id` int(10) UNSIGNED NOT NULL,
  `requestor_name` varchar(150) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `stored_file` varchar(255) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `fiscal_year` varchar(10) NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `reason` text DEFAULT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp(),
  `reviewed_at` datetime DEFAULT NULL,
  `reviewed_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ppmp_records`
--

INSERT INTO `ppmp_records` (`id`, `requestor_id`, `requestor_name`, `file_name`, `stored_file`, `province`, `fiscal_year`, `status`, `reason`, `uploaded_at`, `reviewed_at`, `reviewed_by`) VALUES
(3, 4071, 'RequestorDemo', 'tmp_demo_ppmp.xlsx', NULL, 'CAVITE', '2026', 'Approved', NULL, '2026-09-06 10:10:49', '2026-09-06 10:11:01', 'AdminFMD03'),
(4, 1084, 'RequestorKFA', 'tmp_demo_ppmp.xlsx', 'ppmp_1788661472_119fce76.xlsx', 'BATANGAS', '2026', 'Approved', NULL, '2026-09-06 10:24:32', '2026-09-06 10:24:50', 'ApproverDKJ'),
(5, 4071, 'RequestorDemo', 'tmp_demo_ppmp.xlsx', 'ppmp_1788661692_760a0358.xlsx', 'CAVITE', '2026', 'Approved', 'Restored after correction test', '2026-09-06 10:28:12', '2026-09-06 10:40:57', 'AdminFMD03'),
(6, 1084, 'RequestorKFA', 'tmp_demo_ppmp.xlsx', 'ppmp_1788662819_e7376d79.xlsx', 'BATANGAS', '2026', 'Rejected', 'duplicate', '2026-09-06 10:46:59', '2026-09-06 10:48:01', 'ApproverDKJ'),
(7, 1084, 'RequestorKFA', 'tmp_demo_ppmp.xlsx', 'ppmp_1788666749_59420b27.xlsx', 'BATANGAS', '2026', 'Approved', NULL, '2026-09-06 11:52:29', '2026-09-06 11:53:18', 'ApproverDKJ'),
(8, 1084, 'RequestorKFA', 'sample_ppmp_requestor_test.xlsx', 'ppmp_1788667330_59956c11.xlsx', 'BATANGAS', '2026', 'Approved', NULL, '2026-09-06 12:02:10', '2026-09-06 12:02:34', 'ApproverDKJ'),
(9, 1084, 'RequestorKFA', 'sample_ppmp_requestor_test_2.xlsx', 'ppmp_1788667714_2a1f097b.xlsx', 'BATANGAS', '2026', 'Approved', NULL, '2026-09-06 12:08:34', '2026-09-06 12:09:17', 'ApproverDKJ'),
(10, 1084, 'RequestorKFA', 'sample_ppmp_different_items.xlsx', 'ppmp_1788668114_979a03fc.xlsx', 'BATANGAS', '2026', 'Approved', NULL, '2026-09-06 12:15:14', '2026-09-06 12:23:16', 'ApproverDKJ'),
(11, 1084, 'RequestorKFA', 'sample_ppmp_different_items.xlsx', 'ppmp_1789094684_e90f6832.xlsx', 'BATANGAS', '2026', 'Approved', NULL, '2026-09-11 10:44:44', '2026-09-11 11:50:45', 'ApproverDKJ'),
(12, 8335, 'RequestorGLG', 'sample_ppmp_different_items.xlsx', 'ppmp_1789099380_bd04e733.xlsx', 'RIZAL', '2026', 'Approved', NULL, '2026-09-11 12:03:00', '2026-09-11 12:03:32', 'ApproverDKJ'),
(14, 29299, 'z_live_requester_20260929', 'live_flow_2a6448c2b9ea45df895fd696939ad9ad.xlsx', 'ppmp_1790661764_4a674543.xlsx', 'RIZAL', '2026', 'Approved', NULL, '2026-09-29 14:02:44', '2026-09-29 14:05:01', 'z_live_approver_20260929');

-- --------------------------------------------------------

--
-- Table structure for table `requestor_inventory_audit`
--

CREATE TABLE `requestor_inventory_audit` (
  `id` int(10) UNSIGNED NOT NULL,
  `province` varchar(100) NOT NULL,
  `inventory_item_id` int(10) UNSIGNED DEFAULT NULL,
  `ppmp_id` int(10) UNSIGNED NOT NULL,
  `ppmp_file_name` varchar(255) DEFAULT NULL,
  `requestor_name` varchar(150) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `quantity_added` int(10) UNSIGNED NOT NULL,
  `quantity_change` int(11) NOT NULL DEFAULT 0,
  `resulting_quantity` int(10) UNSIGNED NOT NULL,
  `accepted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `accepted_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requestor_inventory_audit`
--

INSERT INTO `requestor_inventory_audit` (`id`, `province`, `inventory_item_id`, `ppmp_id`, `ppmp_file_name`, `requestor_name`, `item_name`, `unit`, `quantity_added`, `quantity_change`, `resulting_quantity`, `accepted_at`, `accepted_by`) VALUES
(7, 'CAVITE', 7, 3, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Copy Paper, A4, 70gsm', 'Ream', 100, 100, 100, '2026-09-06 10:11:01', 'AdminFMD03'),
(8, 'CAVITE', 8, 3, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Printer Ink Cartridge', 'Piece', 12, 12, 12, '2026-09-06 10:11:01', 'AdminFMD03'),
(9, 'CAVITE', 9, 3, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Ballpoint Pen, Black', 'Box', 25, 25, 25, '2026-09-06 10:11:01', 'AdminFMD03'),
(10, 'BATANGAS', 10, 4, 'tmp_demo_ppmp.xlsx', 'RequestorKFA', 'Copy Paper, A4, 70gsm', 'Ream', 100, 100, 100, '2026-09-06 10:24:50', 'ApproverDKJ'),
(11, 'BATANGAS', 11, 4, 'tmp_demo_ppmp.xlsx', 'RequestorKFA', 'Printer Ink Cartridge', 'Piece', 12, 12, 12, '2026-09-06 10:24:50', 'ApproverDKJ'),
(12, 'BATANGAS', 12, 4, 'tmp_demo_ppmp.xlsx', 'RequestorKFA', 'Ballpoint Pen, Black', 'Box', 25, 25, 25, '2026-09-06 10:24:50', 'ApproverDKJ'),
(13, 'CAVITE', 7, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Copy Paper, A4, 70gsm', 'Ream', 100, 100, 200, '2026-09-06 10:28:26', 'AdminFMD03'),
(14, 'CAVITE', 8, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Printer Ink Cartridge', 'Piece', 12, 12, 24, '2026-09-06 10:28:26', 'AdminFMD03'),
(15, 'CAVITE', 9, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Ballpoint Pen, Black', 'Box', 25, 25, 50, '2026-09-06 10:28:26', 'AdminFMD03'),
(16, 'CAVITE', 7, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Copy Paper, A4, 70gsm', 'Ream', 0, -100, 100, '2026-09-06 10:35:30', 'AdminFMD03'),
(17, 'CAVITE', 8, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Printer Ink Cartridge', 'Piece', 0, -12, 12, '2026-09-06 10:35:30', 'AdminFMD03'),
(18, 'CAVITE', 9, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Ballpoint Pen, Black', 'Box', 0, -25, 25, '2026-09-06 10:35:30', 'AdminFMD03'),
(19, 'CAVITE', 7, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Copy Paper, A4, 70gsm', 'Ream', 100, 100, 200, '2026-09-06 10:40:57', 'AdminFMD03'),
(20, 'CAVITE', 8, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Printer Ink Cartridge', 'Piece', 12, 12, 24, '2026-09-06 10:40:57', 'AdminFMD03'),
(21, 'CAVITE', 9, 5, 'tmp_demo_ppmp.xlsx', 'RequestorDemo', 'Ballpoint Pen, Black', 'Box', 25, 25, 50, '2026-09-06 10:40:57', 'AdminFMD03'),
(22, 'BATANGAS', 10, 7, 'tmp_demo_ppmp.xlsx', 'RequestorKFA', 'Copy Paper, A4, 70gsm', 'Ream', 100, 100, 200, '2026-09-06 11:53:18', 'ApproverDKJ'),
(23, 'BATANGAS', 11, 7, 'tmp_demo_ppmp.xlsx', 'RequestorKFA', 'Printer Ink Cartridge', 'Piece', 12, 12, 24, '2026-09-06 11:53:18', 'ApproverDKJ'),
(24, 'BATANGAS', 12, 7, 'tmp_demo_ppmp.xlsx', 'RequestorKFA', 'Ballpoint Pen, Black', 'Box', 25, 25, 50, '2026-09-06 11:53:18', 'ApproverDKJ'),
(25, 'BATANGAS', 22, 8, 'sample_ppmp_requestor_test.xlsx', 'RequestorKFA', 'Black Ink Cartridges', 'box', 12, 12, 12, '2026-09-06 12:02:34', 'ApproverDKJ'),
(26, 'BATANGAS', 23, 8, 'sample_ppmp_requestor_test.xlsx', 'RequestorKFA', 'Ballpoint Pens', 'dozen', 8, 8, 8, '2026-09-06 12:02:34', 'ApproverDKJ'),
(27, 'BATANGAS', 24, 8, 'sample_ppmp_requestor_test.xlsx', 'RequestorKFA', 'A4 Notebooks', 'dozen', 5, 5, 5, '2026-09-06 12:02:34', 'ApproverDKJ'),
(28, 'BATANGAS', 25, 8, 'sample_ppmp_requestor_test.xlsx', 'RequestorKFA', 'Binder Clips', 'box', 10, 10, 10, '2026-09-06 12:02:34', 'ApproverDKJ'),
(29, 'BATANGAS', 22, 9, 'sample_ppmp_requestor_test_2.xlsx', 'RequestorKFA', 'Black Ink Cartridges', 'box', 12, 12, 24, '2026-09-06 12:09:17', 'ApproverDKJ'),
(30, 'BATANGAS', 23, 9, 'sample_ppmp_requestor_test_2.xlsx', 'RequestorKFA', 'Ballpoint Pens', 'dozen', 8, 8, 16, '2026-09-06 12:09:17', 'ApproverDKJ'),
(31, 'BATANGAS', 24, 9, 'sample_ppmp_requestor_test_2.xlsx', 'RequestorKFA', 'A4 Notebooks', 'dozen', 5, 5, 10, '2026-09-06 12:09:17', 'ApproverDKJ'),
(32, 'BATANGAS', 25, 9, 'sample_ppmp_requestor_test_2.xlsx', 'RequestorKFA', 'Binder Clips', 'box', 10, 10, 20, '2026-09-06 12:09:17', 'ApproverDKJ'),
(33, 'BATANGAS', 30, 10, 'sample_ppmp_different_items.xlsx', 'RequestorKFA', 'Whiteboard Markers', 'box', 6, 6, 6, '2026-09-06 12:23:16', 'ApproverDKJ'),
(34, 'BATANGAS', 31, 10, 'sample_ppmp_different_items.xlsx', 'RequestorKFA', 'Gel Pens', 'dozen', 4, 4, 4, '2026-09-06 12:23:16', 'ApproverDKJ'),
(35, 'BATANGAS', 32, 10, 'sample_ppmp_different_items.xlsx', 'RequestorKFA', 'Correction Fluid', 'bottle', 9, 9, 9, '2026-09-06 12:23:16', 'ApproverDKJ'),
(36, 'BATANGAS', 33, 10, 'sample_ppmp_different_items.xlsx', 'RequestorKFA', 'Manila Folders', 'pack', 15, 15, 15, '2026-09-06 12:23:16', 'ApproverDKJ'),
(37, 'BATANGAS', 30, 11, 'sample_ppmp_different_items.xlsx', 'RequestorKFA', 'Whiteboard Markers', 'box', 6, 6, 12, '2026-09-11 11:50:45', 'ApproverDKJ'),
(38, 'BATANGAS', 31, 11, 'sample_ppmp_different_items.xlsx', 'RequestorKFA', 'Gel Pens', 'dozen', 4, 4, 8, '2026-09-11 11:50:45', 'ApproverDKJ'),
(39, 'BATANGAS', 32, 11, 'sample_ppmp_different_items.xlsx', 'RequestorKFA', 'Correction Fluid', 'bottle', 9, 9, 18, '2026-09-11 11:50:45', 'ApproverDKJ'),
(40, 'BATANGAS', 33, 11, 'sample_ppmp_different_items.xlsx', 'RequestorKFA', 'Manila Folders', 'pack', 15, 15, 30, '2026-09-11 11:50:45', 'ApproverDKJ'),
(41, 'RIZAL', 38, 12, 'sample_ppmp_different_items.xlsx', 'RequestorGLG', 'Whiteboard Markers', 'box', 6, 6, 6, '2026-09-11 12:03:32', 'ApproverDKJ'),
(42, 'RIZAL', 39, 12, 'sample_ppmp_different_items.xlsx', 'RequestorGLG', 'Gel Pens', 'dozen', 4, 4, 4, '2026-09-11 12:03:32', 'ApproverDKJ'),
(43, 'RIZAL', 40, 12, 'sample_ppmp_different_items.xlsx', 'RequestorGLG', 'Correction Fluid', 'bottle', 9, 9, 9, '2026-09-11 12:03:32', 'ApproverDKJ'),
(44, 'RIZAL', 41, 12, 'sample_ppmp_different_items.xlsx', 'RequestorGLG', 'Manila Folders', 'pack', 15, 15, 15, '2026-09-11 12:03:32', 'ApproverDKJ'),
(46, 'RIZAL', 40, 14, 'live_flow_2a6448c2b9ea45df895fd696939ad9ad.xlsx', 'z_live_requester_20260929', 'Correction Fluid', 'bottle', 2, 2, 11, '2026-09-29 14:05:01', 'z_live_approver_20260929');

-- --------------------------------------------------------

--
-- Table structure for table `requestor_inventory_items`
--

CREATE TABLE `requestor_inventory_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `province` varchar(100) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `quantity_left` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requestor_inventory_items`
--

INSERT INTO `requestor_inventory_items` (`id`, `province`, `item_name`, `unit`, `quantity_left`, `created_at`, `updated_at`) VALUES
(7, 'CAVITE', 'Copy Paper, A4, 70gsm', 'Ream', 200, '2026-09-06 10:11:01', '2026-09-06 10:40:57'),
(8, 'CAVITE', 'Printer Ink Cartridge', 'Piece', 24, '2026-09-06 10:11:01', '2026-09-06 10:40:57'),
(9, 'CAVITE', 'Ballpoint Pen, Black', 'Box', 50, '2026-09-06 10:11:01', '2026-09-06 10:40:57'),
(10, 'BATANGAS', 'Copy Paper, A4, 70gsm', 'Ream', 200, '2026-09-06 10:24:50', '2026-09-06 11:53:18'),
(11, 'BATANGAS', 'Printer Ink Cartridge', 'Piece', 24, '2026-09-06 10:24:50', '2026-09-06 11:53:18'),
(12, 'BATANGAS', 'Ballpoint Pen, Black', 'Box', 50, '2026-09-06 10:24:50', '2026-09-06 11:53:18'),
(22, 'BATANGAS', 'Black Ink Cartridges', 'box', 15, '2026-09-06 12:02:34', '2026-09-29 17:18:30'),
(23, 'BATANGAS', 'Ballpoint Pens', 'dozen', 16, '2026-09-06 12:02:34', '2026-09-06 12:09:17'),
(24, 'BATANGAS', 'A4 Notebooks', 'dozen', 10, '2026-09-06 12:02:34', '2026-09-06 12:09:17'),
(25, 'BATANGAS', 'Binder Clips', 'box', 15, '2026-09-06 12:02:34', '2026-09-29 17:18:30'),
(30, 'BATANGAS', 'Whiteboard Markers', 'box', 12, '2026-09-06 12:23:16', '2026-09-11 11:50:45'),
(31, 'BATANGAS', 'Gel Pens', 'dozen', 8, '2026-09-06 12:23:16', '2026-09-11 11:50:45'),
(32, 'BATANGAS', 'Correction Fluid', 'bottle', 18, '2026-09-06 12:23:16', '2026-09-11 11:50:45'),
(33, 'BATANGAS', 'Manila Folders', 'pack', 30, '2026-09-06 12:23:16', '2026-09-11 11:50:45'),
(38, 'RIZAL', 'Whiteboard Markers', 'box', 6, '2026-09-11 12:03:32', '2026-09-11 12:03:32'),
(39, 'RIZAL', 'Gel Pens', 'dozen', 4, '2026-09-11 12:03:32', '2026-09-29 13:06:19'),
(40, 'RIZAL', 'Correction Fluid', 'bottle', 11, '2026-09-11 12:03:32', '2026-09-29 14:05:01'),
(41, 'RIZAL', 'Manila Folders', 'pack', 15, '2026-09-11 12:03:32', '2026-09-11 12:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `requestor` varchar(100) NOT NULL,
  `approver` varchar(100) DEFAULT NULL,
  `stock_status` enum('In Stock','Low Stock','Out of Stock') NOT NULL DEFAULT 'In Stock',
  `status` enum('Pending','Approved','Declined') NOT NULL DEFAULT 'Pending',
  `request_date` datetime NOT NULL DEFAULT current_timestamp(),
  `approved_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `item_details` text DEFAULT NULL,
  `ris_number` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `item_name`, `quantity`, `requestor`, `approver`, `stock_status`, `status`, `request_date`, `approved_date`, `remarks`, `note`, `item_details`, `ris_number`) VALUES
(1, 'Sticky Notes', 12, 'Cavite', 'ApproverDonna', 'In Stock', 'Approved', '2026-02-10 00:00:00', '2026-02-10 00:00:00', 'In Stock', 'Ubos na lh.', NULL, 'RIS-20260210-0001'),
(2, 'Ballpoint Pen (Black)', 8, 'Batangas', 'ApproverDKJ', 'Low Stock', 'Declined', '2026-02-15 00:00:00', '2026-08-05 04:05:41', 'Low Stock', 'Need restock', NULL, 'RIS-20260215-0001'),
(3, 'A4 Notebook', 45, 'Batangas', 'ApproverGab', 'In Stock', 'Approved', '2026-01-28 00:00:00', '2026-01-28 00:00:00', 'In Stock', 'Ubos na lh.', NULL, 'RIS-20260128-0001'),
(4, 'Calculator', 5, 'Cavite', 'AdminFMD03', 'Low Stock', 'Approved', '2026-02-18 00:00:00', '2026-08-05 00:06:24', 'Low Stock', '', NULL, 'RIS-20260218-0001'),
(5, 'Binder Clips', 5, 'Rizal', 'ApproverKurt', 'In Stock', 'Approved', '2026-01-20 00:00:00', '2026-01-20 00:00:00', 'In Stock', '', NULL, 'RIS-20260120-0001'),
(6, 'Highlighter', 0, 'Rizal', 'ApproverGab', 'Out of Stock', 'Declined', '2026-01-30 00:00:00', '2026-01-30 00:00:00', 'Out of Stock', 'Declined by Kurt', NULL, 'RIS-20260130-0001'),
(7, 'Ballpoint Pen (Black)', 30, 'Quezon', 'ApproverDonna', 'In Stock', 'Approved', '2026-02-05 00:00:00', '2026-02-05 00:00:00', 'In Stock', '', NULL, 'RIS-20260205-0001'),
(8, 'Stapler', 0, 'Quezon', 'ApproverKurt', 'Out of Stock', 'Declined', '2026-01-25 00:00:00', '2026-01-25 00:00:00', 'Out of Stock', 'Declined by Kurt', NULL, 'RIS-20260125-0001'),
(9, 'Folder (Expandable)', 6, 'Batangas', 'ApproverDKJ', 'Low Stock', 'Declined', '2026-02-12 00:00:00', '2026-08-05 04:05:46', 'Low Stock', '', NULL, 'RIS-20260212-0001'),
(10, 'Bond Paper (Short)', 5, 'Cavite', 'ApproverDKJ', 'Low Stock', 'Declined', '2026-02-10 00:00:00', '2026-08-05 04:05:54', 'Low Stock', 'Ubos na lh.', NULL, 'RIS-20260210-0002'),
(11, 'Envelope (Long)', 30, 'Laguna', 'ApproverKurt', 'In Stock', 'Approved', '2026-02-08 00:00:00', '2026-02-08 00:00:00', 'In Stock', '', NULL, 'RIS-20260208-0001'),
(12, 'Correction Tape', 4, 'Batangas', 'ApproverDKJ', 'Low Stock', 'Declined', '2026-02-11 00:00:00', '2026-08-05 04:05:52', 'Low Stock', '', NULL, 'RIS-20260211-0001'),
(13, 'Printer Paper', 20, 'Cavite', 'ApproverDonna', 'Out of Stock', 'Approved', '2026-02-20 00:00:00', '2026-02-20 00:00:00', 'Out of Stock', '', NULL, 'RIS-20260220-0001'),
(14, 'Black Ink Cartridges', 1, 'BATANGAS', 'AdminFMD03', 'In Stock', 'Approved', '2026-07-18 17:13:18', '2026-07-18 17:14:35', NULL, 'Demo request - office restock', NULL, 'RIS-20260718-0001'),
(15, 'Ballpoint Pens', 1, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Approved', '2026-07-18 17:26:33', '2026-07-18 17:27:43', NULL, 'demo lang po', NULL, 'RIS-20260718-0002'),
(16, 'A4 Notebooks', 5, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Declined', '2026-07-28 16:35:20', '2026-08-05 04:05:32', NULL, NULL, NULL, 'RIS-20260728-0001'),
(17, 'A4 Notebooks', 5, 'BATANGAS', 'AdminFMD03', 'Low Stock', 'Declined', '2026-07-28 17:25:36', '2026-08-05 00:08:29', NULL, NULL, '[{\"item_name\":\"A4 Notebooks\",\"quantity\":5,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260728-0002'),
(18, 'A4 Notebooks', 3, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Approved', '2026-07-28 17:25:48', '2026-07-28 17:29:11', NULL, NULL, '[{\"item_name\":\"A4 Notebooks\",\"quantity\":1,\"note\":null,\"stock_status\":\"Low Stock\"},{\"item_name\":\"Ballpoint Pens\",\"quantity\":1,\"note\":null,\"stock_status\":\"Low Stock\"},{\"item_name\":\"Black Ink Cartridges\",\"quantity\":1,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260728-0003'),
(19, 'A4 Notebooks', 3, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Approved', '2026-07-28 17:35:46', '2026-07-28 17:36:13', NULL, NULL, '[{\"item_name\":\"A4 Notebooks\",\"quantity\":1,\"note\":null,\"stock_status\":\"Low Stock\"},{\"item_name\":\"Ballpoint Pens\",\"quantity\":1,\"note\":null,\"stock_status\":\"Low Stock\"},{\"item_name\":\"Binder Clips\",\"quantity\":1,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260728-0004'),
(20, 'Black Ink Cartridges', 1, 'BATANGAS', 'Donna', 'In Stock', 'Approved', '2026-08-04 19:38:20', '2026-08-04 19:38:20', NULL, 'Demo request - office restock', NULL, 'RIS-20260804-0001'),
(21, 'Gel Pens', 3, 'BATANGAS', 'AdminFMD03', 'Low Stock', 'Approved', '2026-08-05 03:04:46', '2026-08-05 03:05:23', NULL, NULL, '[{\"item_name\":\"Gel Pens\",\"quantity\":3,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260805-0001'),
(22, 'A4 Notebooks', 3, 'BATANGAS', 'AdminFMD03', 'Low Stock', 'Approved', '2026-08-05 03:57:28', '2026-08-05 03:58:51', NULL, NULL, '[{\"item_name\":\"A4 Notebooks\",\"quantity\":3,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260805-0002'),
(23, 'Binder Clips', 3, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Approved', '2026-08-05 04:01:25', '2026-08-05 04:04:55', NULL, NULL, '[{\"item_name\":\"Binder Clips\",\"quantity\":3,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260805-0003'),
(24, 'Desk Organizer', 1, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Approved', '2026-08-05 04:09:57', '2026-08-05 04:10:18', NULL, NULL, '[{\"item_name\":\"Desk Organizer\",\"quantity\":1,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260805-0004'),
(25, 'Correction Fluid', 4, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Approved', '2026-08-05 13:44:31', '2026-08-05 13:45:32', NULL, NULL, '[{\"item_name\":\"Correction Fluid\",\"quantity\":4,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260805-0005'),
(26, 'Notepads', 5, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Approved', '2026-08-05 14:19:31', '2026-08-05 14:21:35', NULL, NULL, '[{\"item_name\":\"Notepads\",\"quantity\":5,\"note\":\"restock\",\"stock_status\":\"Low Stock\"}]', 'RIS-20260805-0006'),
(27, 'Correction Fluid', 1, 'BATANGAS', 'ApproverDKJ', 'Low Stock', 'Approved', '2026-08-22 11:32:22', '2026-08-22 11:44:24', NULL, NULL, '[{\"item_name\":\"Correction Fluid\",\"quantity\":1,\"note\":null,\"stock_status\":\"Low Stock\"}]', 'RIS-20260822-0001'),
(28, 'Ballpoint Pens', 1, 'BATANGAS', 'AdminFMD03', 'In Stock', 'Approved', '2026-09-06 13:21:44', '2026-09-11 09:16:38', NULL, NULL, '[{\"item_name\":\"Ballpoint Pens\",\"quantity\":1,\"note\":null,\"stock_status\":\"In Stock\"}]', 'RIS-20260906-0001'),
(29, 'Binder Clips', 3, 'BATANGAS', 'ApproverDKJ', 'In Stock', 'Approved', '2026-09-11 11:51:41', '2026-09-11 11:52:26', NULL, NULL, '[{\"item_name\":\"Binder Clips\",\"quantity\":1,\"note\":null,\"stock_status\":\"In Stock\"},{\"item_name\":\"Black Ink Cartridges\",\"quantity\":1,\"note\":null,\"stock_status\":\"In Stock\"},{\"item_name\":\"Ballpoint Pens\",\"quantity\":1,\"note\":null,\"stock_status\":\"In Stock\"}]', 'RIS-20260911-0001'),
(30, 'Correction Fluid', 3, 'RIZAL', 'ApproverDKJ', 'In Stock', 'Approved', '2026-09-11 12:04:12', '2026-09-11 12:05:06', NULL, NULL, '[{\"item_name\":\"Correction Fluid\",\"quantity\":1,\"note\":null,\"stock_status\":\"In Stock\"},{\"item_name\":\"Gel Pens\",\"quantity\":1,\"note\":null,\"stock_status\":\"In Stock\"},{\"item_name\":\"Manila Folders\",\"quantity\":1,\"note\":null,\"stock_status\":\"In Stock\"}]', 'RIS-20260911-0002'),
(31, 'Gel Pens', 5, 'RIZAL', 'ApproverDKJ', 'In Stock', 'Approved', '2026-09-11 12:10:50', '2026-09-11 12:12:32', NULL, NULL, '[{\"item_name\":\"Gel Pens\",\"quantity\":1,\"note\":null,\"stock_status\":\"In Stock\"},{\"item_name\":\"Correction Fluid\",\"quantity\":4,\"note\":null,\"stock_status\":\"In Stock\"}]', 'RIS-20260911-0003'),
(32, 'Black Ink Cartridges', 4, 'BATANGAS', 'ApproverDKJ', 'In Stock', 'Approved', '2026-09-11 12:15:02', '2026-09-11 12:15:49', NULL, NULL, '[{\"item_name\":\"Black Ink Cartridges\",\"quantity\":4,\"note\":null,\"stock_status\":\"In Stock\"}]', 'RIS-20260911-0004'),
(38, 'Binder Clips', 10, 'BATANGAS', 'ApproverDKJ', 'In Stock', 'Approved', '2026-09-29 17:18:30', '2026-09-29 17:19:25', NULL, NULL, '[{\"inventory_item_id\":25,\"item_name\":\"Binder Clips\",\"unit\":\"box\",\"quantity\":5,\"note\":null,\"stock_status\":\"In Stock\"},{\"inventory_item_id\":22,\"item_name\":\"Black Ink Cartridges\",\"unit\":\"box\",\"quantity\":5,\"note\":null,\"stock_status\":\"In Stock\"}]', 'RIS-20260929-0002');

-- --------------------------------------------------------

--
-- Table structure for table `request_ris_sequences`
--

CREATE TABLE `request_ris_sequences` (
  `request_day` date NOT NULL,
  `last_sequence` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_ris_sequences`
--

INSERT INTO `request_ris_sequences` (`request_day`, `last_sequence`) VALUES
('2026-01-20', 1),
('2026-01-25', 1),
('2026-01-28', 1),
('2026-01-30', 1),
('2026-02-05', 1),
('2026-02-08', 1),
('2026-02-10', 2),
('2026-02-11', 1),
('2026-02-12', 1),
('2026-02-15', 1),
('2026-02-18', 1),
('2026-02-20', 1),
('2026-07-18', 2),
('2026-07-28', 4),
('2026-08-04', 1),
('2026-08-05', 6),
('2026-08-22', 1),
('2026-09-06', 1),
('2026-09-11', 4),
('2026-09-29', 2);

-- --------------------------------------------------------

--
-- Table structure for table `system_activity_log`
--

CREATE TABLE `system_activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_type` varchar(64) NOT NULL,
  `entity_type` varchar(64) NOT NULL,
  `entity_id` varchar(64) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `actor_username` varchar(100) DEFAULT NULL,
  `actor_role` varchar(32) DEFAULT NULL,
  `summary` varchar(500) NOT NULL,
  `details_json` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_activity_log`
--

INSERT INTO `system_activity_log` (`id`, `event_type`, `entity_type`, `entity_id`, `province`, `actor_username`, `actor_role`, `summary`, `details_json`, `created_at`) VALUES
(3, 'admin_access_recovered', 'user', '1', 'MANILA', NULL, NULL, 'Admin account access recovered', '{\"username\":\"AdminFMD03\",\"method\":\"password reset\"}', '2026-09-29 12:43:39'),
(4, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 12:45:18'),
(5, 'report_exported', 'report', NULL, NULL, 'AdminFMD03', 'Admin', 'CSV activity report exported', '{\"type\":\"csv\",\"start_date\":\"2026-09-29\",\"end_date\":\"2026-09-29\"}', '2026-09-29 12:46:36'),
(7, 'report_exported', 'report', NULL, NULL, 'AdminFMD03', 'Admin', 'CSV activity report exported', '{\"type\":\"csv\",\"start_date\":\"2026-09-29\",\"end_date\":\"2026-09-29\"}', '2026-09-29 12:53:44'),
(10, 'user_updated', 'user', '1', 'LAGUNA', 'AdminFMD03', 'Admin', 'User account updated', '{\"username\":\"AdminFMD03\",\"before\":{\"id\":1,\"full_name\":\"Admin FMD\",\"email\":\"admin@example.com\",\"role\":\"Admin\",\"province\":\"MANILA\",\"status\":\"Operational\"},\"after\":{\"full_name\":\"Admin FMD\",\"email\":\"admin@gmail.com\",\"role\":\"Admin\",\"province\":\"LAGUNA\",\"status\":\"Operational\",\"password_changed\":true}}', '2026-09-29 13:21:42'),
(11, 'user_login', 'user', '29299', 'RIZAL', 'z_live_requester_20260929', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 14:02:12'),
(12, 'ppmp_submitted', 'ppmp', '14', 'RIZAL', 'z_live_requester_20260929', 'Requester', 'PPMP submitted for review', '{\"file_name\":\"live_flow_2a6448c2b9ea45df895fd696939ad9ad.xlsx\",\"fiscal_year\":\"2026\",\"items\":[{\"name\":\"Correction Fluid\",\"unit\":\"bottle\",\"qty\":2}]}', '2026-09-29 14:02:44'),
(13, 'user_login', 'user', '29300', 'LAGUNA', 'z_live_approver_20260929', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 14:03:06'),
(14, 'ppmp_status_changed', 'ppmp', '14', 'RIZAL', 'z_live_approver_20260929', 'Approver', 'PPMP status changed to Approved', '{\"from_status\":\"Pending\",\"to_status\":\"Approved\",\"requestor_name\":\"z_live_requester_20260929\",\"reason\":\"\",\"items\":[{\"item_name\":\"Correction Fluid\",\"unit\":\"bottle\",\"quantity\":2}]}', '2026-09-29 14:05:01'),
(15, 'user_login', 'user', '29299', 'RIZAL', 'z_live_requester_20260929', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 14:05:53'),
(16, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 14:40:28'),
(17, 'user_login', 'user', '1084', 'BATANGAS', 'RequestorKFA', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 14:41:12'),
(18, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 14:42:04'),
(19, 'user_login', 'user', '1724', 'RIZAL', 'DeliveryGLG', 'Delivery', 'User signed in', '{\"role\":\"Delivery\"}', '2026-09-29 14:42:19'),
(20, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 14:43:07'),
(21, 'user_login', 'user', '1724', 'RIZAL', 'DeliveryGLG', 'Delivery', 'User signed in', '{\"role\":\"Delivery\"}', '2026-09-29 14:43:12'),
(22, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 14:46:05'),
(23, 'user_login', 'user', '1084', 'BATANGAS', 'RequestorKFA', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 14:46:30'),
(24, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 14:47:24'),
(25, 'user_login', 'user', '1084', 'BATANGAS', 'RequestorKFA', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 14:48:27'),
(26, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 15:21:07'),
(27, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 15:23:06'),
(28, 'user_deleted', 'user', '29299', 'RIZAL', 'AdminFMD03', 'Admin', 'User account deleted', '{\"id\":29299,\"username\":\"z_live_requester_20260929\",\"full_name\":\"Live Process Test\",\"email\":null,\"role\":\"Requester\",\"province\":\"RIZAL\",\"status\":\"Operational\"}', '2026-09-29 15:23:15'),
(29, 'user_deleted', 'user', '29300', 'LAGUNA', 'AdminFMD03', 'Admin', 'User account deleted', '{\"id\":29300,\"username\":\"z_live_approver_20260929\",\"full_name\":\"Live Process Test\",\"email\":null,\"role\":\"Approver\",\"province\":\"LAGUNA\",\"status\":\"Operational\"}', '2026-09-29 15:23:19'),
(30, 'user_deleted', 'user', '29301', 'RIZAL', 'AdminFMD03', 'Admin', 'User account deleted', '{\"id\":29301,\"username\":\"z_live_delivery_20260929\",\"full_name\":\"Live Process Test\",\"email\":null,\"role\":\"Delivery\",\"province\":\"RIZAL\",\"status\":\"Operational\"}', '2026-09-29 15:23:25'),
(31, 'user_deleted', 'user', '29302', 'MANILA', 'AdminFMD03', 'Admin', 'User account deleted', '{\"id\":29302,\"username\":\"z_live_admin_20260929\",\"full_name\":\"Live Process Test\",\"email\":null,\"role\":\"Admin\",\"province\":\"MANILA\",\"status\":\"Operational\"}', '2026-09-29 15:23:30'),
(32, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 15:59:14'),
(33, 'user_updated', 'user', '1078', 'LAGUNA', 'AdminFMD03', 'Admin', 'User account updated', '{\"username\":\"ApproverDKJ\",\"before\":{\"id\":1078,\"full_name\":\"Donna Karen Juan\",\"email\":\"Donna@gmail.com\",\"role\":\"Approver\",\"province\":\"LAGUNA\",\"status\":\"Operational\"},\"after\":{\"full_name\":\"Donna Karen Juan\",\"email\":\"Donna@gmail.com\",\"role\":\"Approver\",\"province\":\"LAGUNA\",\"status\":\"Operational\",\"password_changed\":true}}', '2026-09-29 15:59:42'),
(34, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 15:59:58'),
(35, 'supply_stock_adjusted', 'inventory_item', '10', NULL, 'ApproverDKJ', 'Approver', 'Supply inventory stock manually adjusted', '{\"item_name\":\"A4 Notebooks\",\"unit\":\"dozen\",\"before_stock\":100,\"after_stock\":101,\"quantity_change\":1}', '2026-09-29 16:09:30'),
(36, 'supply_stock_adjusted', 'inventory_item', '4', NULL, 'ApproverDKJ', 'Approver', 'Supply inventory stock manually adjusted', '{\"item_name\":\"Ballpoint Pens\",\"unit\":\"dozen\",\"before_stock\":7,\"after_stock\":8,\"quantity_change\":1}', '2026-09-29 16:09:38'),
(37, 'supply_stock_adjusted', 'inventory_item', '10', NULL, 'ApproverDKJ', 'Approver', 'Supply inventory stock manually adjusted', '{\"item_name\":\"A4 Notebooks\",\"unit\":\"dozen\",\"before_stock\":101,\"after_stock\":102,\"quantity_change\":1}', '2026-09-29 16:09:58'),
(38, 'supply_stock_adjusted', 'inventory_item', '4', NULL, 'ApproverDKJ', 'Approver', 'Supply inventory stock manually adjusted', '{\"item_name\":\"Ballpoint Pens\",\"unit\":\"dozen\",\"before_stock\":8,\"after_stock\":9,\"quantity_change\":1}', '2026-09-29 16:12:12'),
(39, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 16:20:17'),
(40, 'user_updated', 'user', '8335', 'RIZAL', 'AdminFMD03', 'Admin', 'User account updated', '{\"username\":\"RequestorGLG\",\"before\":{\"id\":8335,\"full_name\":\"Gabrielle Gruela\",\"email\":\"GabG@gmail.com\",\"role\":\"Requester\",\"province\":\"RIZAL\",\"status\":\"Operational\"},\"after\":{\"full_name\":\"Gabrielle Gruela\",\"email\":\"GabG@gmail.com\",\"role\":\"Requester\",\"province\":\"RIZAL\",\"status\":\"Operational\",\"password_changed\":true}}', '2026-09-29 16:21:07'),
(41, 'user_login', 'user', '8335', 'RIZAL', 'RequestorGLG', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 16:21:26'),
(42, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 16:22:27'),
(43, 'user_updated', 'user', '1084', 'BATANGAS', 'AdminFMD03', 'Admin', 'User account updated', '{\"username\":\"RequestorKFA\",\"before\":{\"id\":1084,\"full_name\":\"Kurt Ferdinand Aquino\",\"email\":\"Kurt@gmail.com\",\"role\":\"Requester\",\"province\":\"BATANGAS\",\"status\":\"Operational\"},\"after\":{\"full_name\":\"Kurt Ferdinand Aquino\",\"email\":\"Kurt@gmail.com\",\"role\":\"Requester\",\"province\":\"BATANGAS\",\"status\":\"Operational\",\"password_changed\":true}}', '2026-09-29 16:23:06'),
(44, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 17:15:07'),
(45, 'user_updated', 'user', '1084', 'BATANGAS', 'AdminFMD03', 'Admin', 'User account updated', '{\"username\":\"RequestorKFA\",\"before\":{\"id\":1084,\"full_name\":\"Kurt Ferdinand Aquino\",\"email\":\"Kurt@gmail.com\",\"role\":\"Requester\",\"province\":\"BATANGAS\",\"status\":\"Operational\"},\"after\":{\"full_name\":\"Kurt Ferdinand Aquino\",\"email\":\"Kurt@gmail.com\",\"role\":\"Requester\",\"province\":\"BATANGAS\",\"status\":\"Operational\",\"password_changed\":true}}', '2026-09-29 17:15:47'),
(46, 'user_login', 'user', '1084', 'BATANGAS', 'RequestorKFA', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 17:16:11'),
(47, 'request_submitted', 'request', '38', 'BATANGAS', 'RequestorKFA', 'Requester', 'Item request submitted', '{\"ris_number\":\"RIS-20260929-0002\",\"items\":[{\"inventory_item_id\":25,\"item_name\":\"Binder Clips\",\"unit\":\"box\",\"quantity\":5,\"note\":null,\"stock_status\":\"In Stock\"},{\"inventory_item_id\":22,\"item_name\":\"Black Ink Cartridges\",\"unit\":\"box\",\"quantity\":5,\"note\":null,\"stock_status\":\"In Stock\"}],\"requestor_stock_reserved\":true}', '2026-09-29 17:18:30'),
(48, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 17:19:15'),
(49, 'request_status_changed', 'request', '38', 'BATANGAS', 'ApproverDKJ', 'Approver', 'Item request status changed to Approved', '{\"from_status\":\"Pending\",\"to_status\":\"Approved\",\"ris_number\":\"RIS-20260929-0002\",\"items\":[{\"inventory_item_id\":25,\"item_name\":\"Binder Clips\",\"unit\":\"box\",\"quantity\":5,\"note\":null,\"stock_status\":\"In Stock\"},{\"inventory_item_id\":22,\"item_name\":\"Black Ink Cartridges\",\"unit\":\"box\",\"quantity\":5,\"note\":null,\"stock_status\":\"In Stock\"}],\"supply_stock_deducted\":{\"Binder Clips\":5,\"Black Ink Cartridges\":5},\"requestor_stock_restored\":false}', '2026-09-29 17:19:25'),
(50, 'delivery_status_changed', 'delivery', 'PKG-38', 'BATANGAS', 'ApproverDKJ', 'Approver', 'Delivery status changed to ready', '{\"request_id\":38,\"from_status\":null,\"to_status\":\"ready\",\"item_name\":\"Pending sync\",\"courier_name\":\"Kurt Aquino\"}', '2026-09-29 17:19:26'),
(51, 'user_login', 'user', '1084', 'BATANGAS', 'RequestorKFA', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 17:20:10'),
(52, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 17:24:59'),
(53, 'user_updated', 'user', '8368', 'BATANGAS', 'AdminFMD03', 'Admin', 'User account updated', '{\"username\":\"DeliveryKFA\",\"before\":{\"id\":8368,\"full_name\":\"Kurt Aquino\",\"email\":\"KurtA@gmail.com\",\"role\":\"Delivery\",\"province\":\"BATANGAS\",\"status\":\"Operational\"},\"after\":{\"full_name\":\"Kurt Aquino\",\"email\":\"KurtA@gmail.com\",\"role\":\"Delivery\",\"province\":\"BATANGAS\",\"status\":\"Operational\",\"password_changed\":true}}', '2026-09-29 17:25:34'),
(54, 'user_login', 'user', '8368', 'BATANGAS', 'DeliveryKFA', 'Delivery', 'User signed in', '{\"role\":\"Delivery\"}', '2026-09-29 17:26:01'),
(55, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 17:26:52'),
(56, 'user_login', 'user', '8368', 'BATANGAS', 'DeliveryKFA', 'Delivery', 'User signed in', '{\"role\":\"Delivery\"}', '2026-09-29 17:27:45'),
(57, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 17:29:40'),
(58, 'user_login', 'user', '8368', 'BATANGAS', 'DeliveryKFA', 'Delivery', 'User signed in', '{\"role\":\"Delivery\"}', '2026-09-29 17:33:04'),
(59, 'delivery_status_changed', 'delivery', 'PKG-38', 'BATANGAS', 'DeliveryKFA', 'Delivery', 'Delivery marked completed', '{\"request_id\":38,\"from_status\":\"ready\",\"to_status\":\"completed\",\"item_name\":\"Pending sync\",\"courier_name\":\"Kurt Aquino\"}', '2026-09-29 17:33:23'),
(60, 'user_login', 'user', '1084', 'BATANGAS', 'RequestorKFA', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 17:33:51'),
(61, 'user_login', 'user', '8335', 'RIZAL', 'RequestorGLG', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 17:34:21'),
(62, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 17:34:45'),
(63, 'user_login', 'user', '8368', 'BATANGAS', 'DeliveryKFA', 'Delivery', 'User signed in', '{\"role\":\"Delivery\"}', '2026-09-29 17:37:26'),
(64, 'user_login', 'user', '8368', 'BATANGAS', 'DeliveryKFA', 'Delivery', 'User signed in', '{\"role\":\"Delivery\"}', '2026-09-29 17:43:13'),
(65, 'user_login', 'user', '1084', 'BATANGAS', 'RequestorKFA', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 17:43:27'),
(66, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 17:44:47'),
(67, 'report_exported', 'report', NULL, NULL, 'AdminFMD03', 'Admin', 'PDF activity report exported', '{\"type\":\"pdf\",\"start_date\":\"2026-09-29\",\"end_date\":\"2026-09-29\"}', '2026-09-29 17:46:30'),
(68, 'report_exported', 'report', NULL, NULL, 'AdminFMD03', 'Admin', 'CSV activity report exported', '{\"type\":\"csv\",\"start_date\":\"2026-09-29\",\"end_date\":\"2026-09-29\"}', '2026-09-29 17:48:09'),
(69, 'report_exported', 'report', NULL, NULL, 'AdminFMD03', 'Admin', 'CSV activity report exported', '{\"type\":\"csv\",\"start_date\":\"2026-09-29\",\"end_date\":\"2026-09-29\"}', '2026-09-29 17:50:34'),
(70, 'report_exported', 'report', NULL, NULL, 'AdminFMD03', 'Admin', 'XLSX activity report exported', '{\"type\":\"xlsx\",\"start_date\":\"2026-09-29\",\"end_date\":\"2026-09-29\"}', '2026-09-29 17:54:25'),
(71, 'user_updated', 'user', '1', 'LAGUNA', 'AdminFMD03', 'Admin', 'User account updated', '{\"username\":\"AdminFMD03\",\"before\":{\"id\":1,\"full_name\":\"Admin FMD\",\"email\":\"admin@example.com\",\"role\":\"Admin\",\"province\":\"MANILA\",\"status\":\"Operational\"},\"after\":{\"full_name\":\"Admin FMD\",\"email\":\"admin@gmail.com\",\"role\":\"Admin\",\"province\":\"LAGUNA\",\"status\":\"Operational\",\"password_changed\":false}}', '2026-09-29 17:56:55'),
(72, 'user_login', 'user', '1078', 'LAGUNA', 'ApproverDKJ', 'Approver', 'User signed in', '{\"role\":\"Approver\"}', '2026-09-29 17:58:58'),
(73, 'user_login', 'user', '1', 'MANILA', 'AdminFMD03', 'Admin', 'User signed in', '{\"role\":\"Admin\"}', '2026-09-29 17:59:38'),
(74, 'user_login', 'user', '1084', 'BATANGAS', 'RequestorKFA', 'Requester', 'User signed in', '{\"role\":\"Requester\"}', '2026-09-29 18:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` enum('Admin','Approver','Requester','Delivery') NOT NULL DEFAULT 'Requester',
  `province` varchar(100) DEFAULT NULL,
  `status` enum('Operational','Not Operational') NOT NULL DEFAULT 'Operational',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `full_name`, `email`, `avatar`, `role`, `province`, `status`, `created_at`, `last_login`) VALUES
(1, 'AdminFMD03', '$2y$10$ZxppjsOYj1CJXAm1L.l1BORx1zh4IjJhiDti7zWhCrwWucoc3QhkS', 'Admin FMD', 'admin@example.com', 'Images/avatars/avatar_AdminFMD03.png', 'Admin', 'MANILA', 'Operational', '2026-04-27 14:01:57', '2026-09-29 17:59:38'),
(1078, 'ApproverDKJ', '$2y$10$mSL4W5UIHv/AI.7fjjMjDeYNdD.pNXG7oO59pyofXhcaTpP6KYHxa', 'Donna Karen Juan', 'Donna@gmail.com', 'Images/avatars/avatar_ApproverDKJ.jpg', 'Approver', 'LAGUNA', 'Operational', '2026-07-18 17:22:42', '2026-09-29 17:58:58'),
(1084, 'RequestorKFA', '$2y$10$P9P/4qJRf4jAgOjIL0O3BumTGHEsPvld0NVWJqQt57ePmq6VzpAcq', 'Kurt Ferdinand Aquino', 'Kurt@gmail.com', 'Images/avatars/avatar_RequestorKFA.jpg', 'Requester', 'BATANGAS', 'Operational', '2026-07-18 17:23:55', '2026-09-29 18:00:17'),
(1724, 'DeliveryGLG', '$2y$10$So2VchxIQbJouJUzdRsgn.E38XR2h33xsXqVhtEuh2vI1aaUn6NnK', 'Gabrielle Gruela', 'Gab@gmail.com', NULL, 'Delivery', 'RIZAL', 'Operational', '2026-08-04 20:56:40', '2026-09-29 14:43:12'),
(8129, 'RequestorFMD', '$2y$10$rN2lddOGlNXEImgf84Kmu.RRJoenJazdke0o7bm1Ksotgz2u35s.W', 'Flavio Deza III', 'FlavioD@gmail.com', NULL, 'Requester', 'CAVITE', 'Operational', '2026-09-06 15:05:20', NULL),
(8307, 'DeliveryFMD', '$2y$10$63CfK8MDYme6Psyf1iilOeZRxz/b7hQRmT2bSHl0xo4L2/sO6.eOe', 'Flavio Deza', 'FlavioMD@gmail.com', NULL, 'Delivery', 'CAVITE', 'Operational', '2026-09-06 15:11:40', NULL),
(8335, 'RequestorGLG', '$2y$10$tgQhJliX5nHF2udhiZhQgOkEUjQqQ/pkotby90rCQ9TDQLcopLnxK', 'Gabrielle Gruela', 'GabG@gmail.com', NULL, 'Requester', 'RIZAL', 'Operational', '2026-09-06 15:12:34', '2026-09-29 17:34:21'),
(8368, 'DeliveryKFA', '$2y$10$N017QsbwKNXGgopvCG3Ieu9uLItH3w/8OpDQ7MmWPym9Kw45KonNy', 'Kurt Aquino', 'KurtA@gmail.com', NULL, 'Delivery', 'BATANGAS', 'Operational', '2026-09-06 15:13:35', '2026-09-29 17:43:13'),
(8397, 'RequestorDKJ', '$2y$10$XGM.2d4StJVBoAVyibM9ZeiB8AaXnBGIxlSC66Zv9XdUKrre2HMI.', 'Donna Juan', 'DonnaJ@gmail.com', NULL, 'Requester', 'QUEZON', 'Operational', '2026-09-06 15:14:25', NULL),
(8424, 'DeliveryDKJ', '$2y$10$UizAq106lpo9ZCNtvO0oo.DGxdO7cAg2db2JXZsqpFI0HYjkVumDa', 'Donna Karen Juan', 'DonnaKJ@gmail.com', NULL, 'Delivery', 'QUEZON', 'Operational', '2026-09-06 15:15:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery_logs`
--
ALTER TABLE `delivery_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `package_id` (`package_id`),
  ADD KEY `status` (`status`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `delivery_packages`
--
ALTER TABLE `delivery_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `package_id` (`package_id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `status` (`status`),
  ADD KEY `package_id_2` (`package_id`);

--
-- Indexes for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`ip_address`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_hash` (`token_hash`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `expires_at` (`expires_at`);

--
-- Indexes for table `ppmp_items`
--
ALTER TABLE `ppmp_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ppmp_id` (`ppmp_id`),
  ADD KEY `item_name` (`item_name`);

--
-- Indexes for table `ppmp_records`
--
ALTER TABLE `ppmp_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requestor_id` (`requestor_id`),
  ADD KEY `status` (`status`),
  ADD KEY `fiscal_year` (`fiscal_year`);

--
-- Indexes for table `requestor_inventory_audit`
--
ALTER TABLE `requestor_inventory_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `province` (`province`),
  ADD KEY `inventory_item_id` (`inventory_item_id`),
  ADD KEY `ppmp_id` (`ppmp_id`),
  ADD KEY `item_name` (`item_name`);

--
-- Indexes for table `requestor_inventory_items`
--
ALTER TABLE `requestor_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_requestor_inventory_province_item_unit` (`province`,`item_name`,`unit`),
  ADD KEY `province` (`province`),
  ADD KEY `item_name` (`item_name`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_requests_ris_number` (`ris_number`),
  ADD KEY `status` (`status`),
  ADD KEY `request_date` (`request_date`),
  ADD KEY `requestor` (`requestor`);

--
-- Indexes for table `request_ris_sequences`
--
ALTER TABLE `request_ris_sequences`
  ADD PRIMARY KEY (`request_day`);

--
-- Indexes for table `system_activity_log`
--
ALTER TABLE `system_activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `province` (`province`,`created_at`),
  ADD KEY `entity_type` (`entity_type`,`entity_id`),
  ADD KEY `event_type` (`event_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delivery_logs`
--
ALTER TABLE `delivery_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `delivery_packages`
--
ALTER TABLE `delivery_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `inventory_items`
--
ALTER TABLE `inventory_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ppmp_items`
--
ALTER TABLE `ppmp_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ppmp_records`
--
ALTER TABLE `ppmp_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `requestor_inventory_audit`
--
ALTER TABLE `requestor_inventory_audit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `requestor_inventory_items`
--
ALTER TABLE `requestor_inventory_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `system_activity_log`
--
ALTER TABLE `system_activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36253;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `fk_password_resets_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
