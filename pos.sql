-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 03:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(255) NOT NULL,
  `ac_number` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `type` varchar(65) NOT NULL,
  `status` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `bank_name`, `ac_name`, `ac_number`, `branch`, `type`, `status`) VALUES
(3, 'National Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 1),
(4, 'Bangaldesh Krishi Bank  Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 1),
(5, 'National Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 1),
(6, 'AB  Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 0),
(7, 'National Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 0),
(9, 'National Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 1),
(10, 'National Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 0),
(11, 'National Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CDD', 1),
(12, 'National Bank Ltd', 'Dev Panda', '01773280001', 'AMBARI', 'CD', 1),
(13, 'Rupali Bank  Ltd', 'M/S Mahafuz Traders', '41414140214', 'BIRAMPUR', 'CD', 1),
(14, 'NBR Bank Ltd', 'M/S Samsu and  Co.', '454714714241', 'DINAJPUR', 'CD', 1),
(15, 'Agroni Bank Ltd', 'M/S Agroni Traders', '405021410', 'DINAJPUR', 'CD', 0),
(16, 'Prime Bank  Ltd-E254', 'Kawsar and Co.', '405140EE254', 'SYLHET', 'CD', 0),
(17, 'Rupali Bank  Ltd', 'M/S Mahafuz Traders', '41414140214', 'DINAJPUR', 'CD', 0),
(18, 'Rupali Bank  Ltd', 'M/S Mahafuz Traders', '454714714241', 'BIRAMPUR', 'CD', 0),
(19, 'NBR Bank Ltd', 'M/S Samsu and  Co.', '454714714241', 'DINAJPUR', 'CD', 0),
(20, 'Agroni Bank Ltd', 'M/S Mahafuz Traders', '454714714241', 'DINAJPUR', 'CD', 0),
(23, 'National Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 0),
(24, 'National Bank Ltd', 'Dev Panda', '01773280001', 'BIRAMPUR', 'CD', 0),
(25, 'National Bank Ltd', 'Dev 05', '01773280001', 'BIRAMPUR', 'CD', 0),
(26, 'National Bank Ltd', 'Dev 111', '01773280001', 'BIRAMPUR', 'CD', 0),
(27, 'National Bank Ltd', 'Dev 100', '01773280001', 'BIRAMPUR', 'CD', 0),
(28, 'National Bank Ltd', 'Dev 200', '01773280001', 'BIRAMPUR', 'CD', 0),
(29, 'National Bank Ltd-0001', 'Dev 300', '01773280001', 'BIRAMPUR', 'CD', 0),
(31, 'National Bank Ltd-0008', 'Dev 500', '01773280008', 'BIRAMPUR', 'CD', 0);

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ac_id` int(12) NOT NULL,
  `e_date` date NOT NULL,
  `debit` float(65,2) NOT NULL,
  `credit` float(65,2) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `ac_id`, `e_date`, `debit`, `credit`, `description`) VALUES
(1, 1, '2021-01-17', 1500.00, 2000.00, 'Opening Balance'),
(2, 2, '2021-01-20', 1500.00, 2000.00, 'Opening Balance'),
(3, 4, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(4, 5, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(5, 6, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(6, 7, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(7, 8, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(8, 9, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(9, 10, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(10, 11, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(11, 12, '2021-01-20', 100.00, 1600.00, 'Opening Balance'),
(12, 13, '2021-01-18', 15000.00, 20000.00, 'Opening Balance'),
(13, 14, '2021-01-18', 25000.00, 50000.00, 'Opening Balance'),
(14, 15, '2021-01-18', 10000.00, 20000.00, 'Opening Balance'),
(15, 16, '2021-01-18', 15000.00, 10000.00, 'Opening Balance'),
(16, 21, '2021-01-18', 1000.00, 58000.00, 'Opening Balance'),
(17, 22, '2021-01-06', 100.00, 15000.00, 'Opening Balance'),
(18, 23, '2021-01-18', 15000.00, 16000.00, 'Opening Balance'),
(19, 24, '2021-01-19', 100.00, 500.00, 'Opening Balance'),
(20, 6, '2021-01-23', 100.00, 500.00, 'description'),
(21, 31, '2021-01-23', 100.00, 5000.00, 'desc 2'),
(22, 19, '2021-01-23', 4500.00, 500000.00, '-'),
(23, 19, '2021-01-23', 15400.00, 400.00, '-'),
(24, 28, '2021-01-23', 100.00, 500.00, 'desc'),
(25, 6, '2021-01-23', 500.00, 300.00, '-'),
(26, 19, '2021-01-23', 1500.00, 4000.00, 'description'),
(27, 19, '2021-01-23', 1500.00, 400.00, 'desc'),
(28, 19, '2021-01-23', 4500.00, 3500.00, 'description'),
(29, 19, '2021-01-23', 500.00, 400.00, '-'),
(30, 6, '2021-01-23', 500.00, 500.00, '-'),
(31, 16, '2021-01-25', 15000.00, 0.00, '-'),
(32, 16, '2021-01-25', 500.00, 144.00, '-'),
(33, 16, '2021-01-25', 1500.00, 3540.00, '-'),
(34, 16, '2021-01-25', 1500.00, 45844.00, '-'),
(35, 16, '2021-01-25', 350.00, 600.00, '-'),
(36, 16, '2021-01-25', 350.00, 4600.00, '-'),
(37, 16, '2021-01-25', 5054.00, 500124.00, '-'),
(38, 16, '2021-01-26', 400.00, 700.00, '-'),
(39, 16, '2021-01-26', 350.00, 450.00, '-'),
(40, 16, '2021-01-26', 7500.00, 3500.00, '-'),
(41, 16, '2021-01-26', 2500.00, 1700.00, '-'),
(42, 16, '2021-01-26', 500.00, 0.00, '-'),
(43, 16, '2021-01-26', 3500.00, 0.00, '-'),
(44, 16, '2021-01-26', 0.00, 1400.00, '-'),
(45, 16, '2021-01-26', 0.00, 700.00, '-'),
(46, 16, '2021-01-26', 0.00, 300.00, '-'),
(47, 16, '2021-01-26', 700.00, 800.00, '-'),
(48, 16, '2021-01-27', 500.00, 400.00, '-'),
(49, 16, '2021-01-27', 200.00, 300.00, '-'),
(50, 16, '2021-01-27', 500.00, 400.00, '-'),
(51, 16, '2021-01-27', 305.00, 407.00, '-'),
(52, 16, '2021-01-27', 500.00, 600.00, '-'),
(53, 16, '2021-01-27', 700.00, 2100.00, '-'),
(54, 16, '2021-01-27', 700.00, 500.00, '-'),
(55, 16, '2021-01-28', 350.00, 400.00, '-'),
(56, 16, '2021-01-28', 650.00, 700.00, '-'),
(57, 16, '2021-01-28', 900.00, 800.00, '-'),
(58, 16, '2021-01-28', 500.00, 0.00, '-'),
(59, 16, '2021-01-28', 300.00, 400.00, '-'),
(60, 16, '2021-01-28', 700.00, 1500.00, '-'),
(61, 16, '2021-01-28', 6000.00, 7040.00, '-'),
(62, 16, '2021-01-28', 3500.00, 400.00, '-'),
(63, 16, '2021-01-28', 3600.00, 2300.00, '-'),
(64, 19, '2021-02-02', 100.00, 500.00, '-'),
(65, 29, '2021-02-02', 100.00, 1500.00, '-'),
(66, 29, '2021-02-02', 15000.00, 27000.00, '-'),
(67, 16, '2021-02-02', 4500.00, 5500.00, '-'),
(68, 16, '2021-02-02', 600.00, 75000.00, '-'),
(69, 25, '2021-02-02', 100.00, 500.00, '-');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `title`, `pro_name`, `address`, `phone`, `email`) VALUES
(1, 'Palash international', 'Exporter and Importer', 'Md Aminul Islam (Palash)', 'Bangal Hili, Hakimpur, Dinajpur', '+8801550000000 or +8801303000000', 'conatact@palash.com');

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
-- Table structure for table `ledgerentries`
--

CREATE TABLE `ledgerentries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_type` int(6) NOT NULL,
  `ledger_id` int(12) NOT NULL,
  `product_id` int(12) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `e_date` date NOT NULL,
  `chalan` varchar(100) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `size` varchar(65) NOT NULL,
  `qty` float(65,2) NOT NULL,
  `price` float(65,2) NOT NULL,
  `credit` float(65,2) NOT NULL,
  `debit` float(65,2) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ledgerentries`
--

INSERT INTO `ledgerentries` (`id`, `e_type`, `ledger_id`, `product_id`, `product_name`, `e_date`, `chalan`, `vehicle`, `size`, `qty`, `price`, `credit`, `debit`, `location`) VALUES
(1, 1, 8, 1, 'Stone', '2021-01-22', '-', '-', '10/400', 500.00, 150.00, 1500.00, 75000.00, '-'),
(2, 1, 8, 1, 'Stone', '2021-01-22', '-', '-', '-', 15000.00, 300.00, 0.00, 4500000.00, '-'),
(3, 2, 3, 1, 'Stone', '2021-01-22', 'chalan', 'vehicle', '100', 900.00, 300.00, 270000.00, 150.00, 'location'),
(4, 2, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 955.00, 450.00, 429750.00, 0.00, '-'),
(5, 2, 12, 1, 'Stone', '2021-01-22', '-', '-', '-', 100.00, 300.00, 30000.00, 4500.00, '-'),
(6, 3, 11, 0, '-', '2021-01-22', '-', '-', '-', 0.00, 0.00, 3000.00, 1500.00, '-'),
(7, 1, 3, 1, 'Stone', '2021-01-22', 'chalan', 'vehicle', '10/40', 600.00, 300.00, 15400.00, 180000.00, 'location'),
(8, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 100.00, 500.00, 0.00, 50000.00, '-'),
(9, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 100.00, 500.00, 0.00, 50000.00, '-'),
(10, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 18.00, 400.00, 0.00, 7200.00, '-'),
(11, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 300.00, 400.00, 0.00, 120000.00, '-'),
(12, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 25.00, 400.00, 0.00, 10000.00, '-'),
(13, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 450.00, 520.00, 0.00, 234000.00, '-'),
(14, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 350.00, 400.00, 0.00, 140000.00, '-'),
(15, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 140.00, 500.00, 0.00, 70000.00, '-'),
(16, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 1540.00, 10.00, 0.00, 15400.00, '-'),
(17, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 45.00, 300.00, 0.00, 13500.00, '-'),
(18, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 25.00, 300.00, 0.00, 7500.00, '-'),
(19, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 450.00, 30.00, 0.00, 13500.00, '-'),
(20, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 100.00, 20.00, 0.00, 2000.00, '-'),
(21, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 250.00, 400.00, 0.00, 100000.00, '-'),
(22, 1, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 1450.00, 300.00, 0.00, 435000.00, '-'),
(23, 2, 3, 1, 'Stone', '2021-01-22', '-', '-', '-', 400.00, 300.00, 120000.00, 0.00, '-'),
(24, 3, 3, 0, '-', '2021-01-22', '-', '-', '-', 0.00, 0.00, 4500.00, 4500.00, '-'),
(25, 2, 4, 1, 'Stone', '2021-01-23', '-', '-', '-', 100.00, 150.00, 15000.00, 3000.00, '-'),
(26, 2, 4, 1, 'Stone', '2021-01-23', 'chalan', 'vehicle', '10/4', 150.00, 3000.00, 450000.00, 40000.00, 'location'),
(27, 2, 4, 1, 'Stone', '2021-01-23', '-', '-', '-', 10.00, 500.00, 5000.00, 0.00, '-'),
(28, 3, 4, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 5000.00, 100.00, '-'),
(29, 3, 4, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 15000.00, 0.00, 'desfc'),
(30, 1, 11, 1, 'Stone', '2021-01-23', 'chalna', 'vehicle', '10/8', 154.00, 5000.00, 15400.00, 770000.00, 'locaiton'),
(31, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 100.00, 50000.00, 0.00, 5000000.00, '-'),
(32, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 220.00, 20025.00, 0.00, 4405500.00, '-'),
(33, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 10.00, 40.00, 0.00, 400.00, '-'),
(34, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 25.00, 60.00, 0.00, 1500.00, '-'),
(35, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 30.00, 45.00, 0.00, 1350.00, '-'),
(36, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 35.00, 45.00, 0.00, 1575.00, '-'),
(37, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 60.00, 65.00, 0.00, 3900.00, '-'),
(38, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 540.00, 40.00, 0.00, 21600.00, '-'),
(39, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 56.00, 2584.00, 0.00, 144704.00, '-'),
(40, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 10.00, 50.00, 0.00, 500.00, '-'),
(41, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 15000.00, 20.00, 0.00, 300000.00, '-'),
(42, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 450.00, 60.00, 0.00, 27000.00, '-'),
(43, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 360.00, 10.00, 0.00, 3600.00, '-'),
(44, 1, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 480.00, 50.00, 0.00, 24000.00, '-'),
(45, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 10.00, 500.00, 5000.00, 0.00, '-'),
(46, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 5000.00, 10.00, 50000.00, 0.00, '-'),
(47, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 300.00, 40.00, 12000.00, 0.00, '-'),
(48, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 80.00, 15.00, 1200.00, 0.00, '-'),
(49, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 20.00, 25.00, 500.00, 0.00, '-'),
(50, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 30.00, 40.00, 1200.00, 0.00, '-'),
(51, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 30.00, 28.00, 840.00, 0.00, '-'),
(52, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 230.00, 10.00, 2300.00, 0.00, '-'),
(53, 2, 3, 1, 'Stone', '2021-01-23', '-', '-', '-', 25.00, 5.00, 125.00, 0.00, '-'),
(54, 3, 3, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 50.00, 10.00, '-'),
(55, 3, 3, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 30.00, 20.00, '-'),
(56, 3, 3, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 40.00, 80.00, '-'),
(57, 3, 3, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 40.00, 35.00, '-'),
(58, 3, 3, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 75.00, 45.00, '-'),
(59, 3, 3, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 55.00, 65.00, '-'),
(60, 3, 3, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 40.00, 60.00, '-'),
(61, 3, 3, 0, '-', '2021-01-23', '-', '-', '-', 0.00, 0.00, 90.00, 60.00, '-'),
(62, 1, 3, 1, 'Stone', '2021-01-01', '-', '-', '10/4', 100.00, 5000.00, 0.00, 500000.00, '-'),
(63, 1, 3, 1, 'Stone', '2021-01-01', '-', '-', '-', 1500.00, 400.00, 0.00, 600000.00, '-'),
(64, 1, 3, 1, 'Stone', '2021-01-01', '-', '-', '-', 10.00, 500.00, 0.00, 5000.00, '-'),
(65, 1, 3, 1, 'Stone', '2021-01-01', '-', '-', '-', 10.00, 50.00, 0.00, 500.00, '-'),
(66, 2, 3, 1, 'Stone', '2021-01-02', '-', '-', '-', 100.00, 500.00, 50000.00, 0.00, '-'),
(67, 2, 3, 1, 'Stone', '2021-01-02', '-', '-', '-', 300.00, 454.00, 136200.00, 0.00, '-'),
(68, 2, 3, 1, 'Stone', '2021-01-02', '-', '-', '-', 45.00, 10.00, 450.00, 0.00, '-'),
(69, 2, 3, 1, 'Stone', '2021-01-03', '-', '-', '-', 350.00, 45.00, 15750.00, 0.00, '-'),
(70, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '10/4', 100.00, 5000.00, 0.00, 500000.00, '-'),
(71, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 300.00, 400.00, 0.00, 120000.00, '-'),
(72, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 10.00, 25.00, 0.00, 250.00, '-'),
(73, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 50.00, 100.00, 0.00, 5000.00, '-'),
(74, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 40.00, 700.00, 0.00, 28000.00, '-'),
(75, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 80.00, 70.00, 0.00, 5600.00, '-'),
(76, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 26.00, 70.00, 0.00, 1820.00, '-'),
(77, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 80.00, 45.00, 0.00, 3600.00, '-'),
(78, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 35.00, 60.00, 0.00, 2100.00, '-'),
(79, 1, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 80.00, 470.00, 0.00, 37600.00, '-'),
(80, 2, 3, 1, 'Stone', '2021-01-24', '-', '-', '4054', 10.00, 450.00, 4500.00, 0.00, '-'),
(81, 2, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 10.00, 254.00, 2540.00, 0.00, '-'),
(82, 2, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 98.00, 5.00, 490.00, 0.00, '-'),
(83, 2, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 24.00, 70.00, 1680.00, 0.00, '-'),
(84, 2, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 1000.00, 80.00, 80000.00, 0.00, '-'),
(85, 2, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 30.00, 17.00, 510.00, 0.00, '-'),
(86, 2, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 25.00, 17.00, 425.00, 500.00, '-'),
(87, 2, 3, 1, 'Stone', '2021-01-24', '-', '-', '-', 25.00, 74.00, 1850.00, 0.00, '-'),
(88, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 41744.00, 15.00, '-'),
(89, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 0.00, 3654.00, '-'),
(90, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 54.00, 0.00, '-'),
(91, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 0.00, 574.00, '-'),
(92, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 784.00, 0.00, '-'),
(93, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 251.00, 0.00, '-'),
(94, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 0.00, 365.00, '-'),
(95, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 0.00, 50.00, '-'),
(96, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 54.00, 0.00, '-'),
(97, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 40.00, 150.00, '-'),
(98, 3, 3, 0, '-', '2021-01-24', '-', '-', '-', 0.00, 0.00, 40.00, 50.00, '-'),
(99, 2, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 45.00, 400.00, 18000.00, 500.00, '-'),
(100, 2, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 15.00, 42.00, 630.00, 0.00, '-'),
(101, 2, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 35.00, 12.00, 420.00, 0.00, '-'),
(102, 2, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 25.00, 78.00, 1950.00, 0.00, '-'),
(103, 2, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 65.00, 71.00, 4615.00, 0.00, '-'),
(104, 2, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 25.00, 17.00, 425.00, 0.00, '-'),
(105, 1, 3, 1, 'Stone', '2021-01-25', '-', '-', '10/4', 45.00, 74.00, 0.00, 3330.00, '-'),
(106, 1, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 566.00, 4.00, 0.00, 2264.00, '-'),
(107, 1, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 5674.00, 24.00, 0.00, 136176.00, '-'),
(108, 1, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 354.00, 42.00, 0.00, 14868.00, '-'),
(109, 1, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 657.00, 4225.00, 0.00, 2775825.00, '-'),
(110, 1, 3, 1, 'Stone', '2021-01-25', '-', '-', '-', 254.00, 40.00, 0.00, 10160.00, '-'),
(111, 1, 3, 1, 'Stone', '2021-01-26', '-', '-', '-', 45.00, 41.00, 0.00, 1845.00, '-'),
(112, 1, 3, 1, 'Stone', '2021-01-26', '-', '-', '-', 30.00, 45.00, 0.00, 1350.00, '-'),
(113, 1, 3, 1, 'Stone', '2021-01-26', '-', '-', '-', 40.00, 87.00, 0.00, 3480.00, '-'),
(114, 1, 3, 1, 'Stone', '2021-01-26', '-', '-', '-', 520.00, 254.00, 0.00, 132080.00, '-'),
(115, 1, 3, 1, 'Stone', '2021-02-02', '-', '-', '-', 100.00, 500.00, 0.00, 50000.00, '-'),
(116, 1, 3, 1, 'Stone', '2021-02-02', '-', '-', '-', 300.00, 450.00, 0.00, 135000.00, '-'),
(117, 1, 3, 1, 'Stone', '2021-02-02', '-', '-', '-', 100.00, 500.00, 0.00, 50000.00, '-'),
(118, 2, 10, 1, 'Stone', '2021-02-02', '-', '-', '10', 1400.00, 500.00, 700000.00, 300.00, '-'),
(119, 2, 10, 1, 'Stone', '2021-02-02', '-', '-', '-', 100.00, 500.00, 50000.00, 0.00, '-'),
(120, 2, 10, 1, 'Stone', '2021-02-02', '-', '-', '-', 300.00, 4000.00, 1200000.00, 0.00, '-'),
(121, 2, 10, 1, 'Stone', '2021-02-02', '-', '-', '-', 300.00, 420.00, 126000.00, 0.00, '-'),
(122, 3, 12, 0, '-', '2021-02-02', '-', '-', '-', 0.00, 0.00, 500.00, 100.00, '-'),
(123, 3, 12, 0, '-', '2021-02-02', '-', '-', '-', 0.00, 0.00, 5000.00, 300.00, '-'),
(124, 3, 12, 0, '-', '2021-02-02', '-', '-', '-', 0.00, 0.00, 700.00, 1400.00, '-'),
(125, 1, 5, 1, 'Stone', '2021-02-02', '-', '-', '-', 100.00, 500.00, 0.00, 50000.00, '-'),
(126, 2, 5, 1, 'Stone', '2021-02-02', '-', '-', '-', 100.00, 255.00, 25500.00, 0.00, '-'),
(127, 3, 5, 0, '-', '2021-02-02', '-', '-', '-', 0.00, 0.00, 500.00, 100.00, '-'),
(128, 3, 5, 0, '-', '2021-02-02', '-', '-', '-', 0.00, 0.00, 5000.00, 300.00, '-'),
(129, 3, 5, 0, '-', '2021-02-02', '-', '-', '-', 0.00, 0.00, 4000.00, 300.00, '-'),
(130, 3, 5, 0, '-', '2021-02-02', '-', '-', '-', 0.00, 0.00, 5000.00, 100.00, '-');

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `status` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ledgers`
--

INSERT INTO `ledgers` (`id`, `name`, `address`, `phone`, `email`, `company`, `status`) VALUES
(3, 'NAVANA Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'navana@gmail.com', 'NAVANA GROUP', 0),
(4, 'PRAN Choudhuri', 'Rangpur, Bangladesh', '01773280001', 'pran@gmail.com', 'PRAN Group', 0),
(5, 'Bashundhara Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'bashundhara@gmail.com', 'Bashundhara Group', 0),
(6, 'Square Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'square@gmail.com', 'Square Group', 0),
(7, 'Beximco Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'beximco@gmail.com', 'Beximco Group Ltd', 0),
(8, 'Akij Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'akij @gmail.com', 'Akij Group', 0),
(9, 'Cities Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'cities@gmail.com', 'Cities Group', 0),
(10, 'Partex Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'partex@gmail.com', 'Partex Group', 0),
(11, 'Genex Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'gene@gmail.com', 'Genex Infosys LTD', 0),
(12, 'ASL BPO Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'asl@gmail.com', 'ASL BPO', 0),
(17, 'BCS Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'bcs@gmail.com', 'BCS', 0),
(18, 'Quintos Choudhuri', 'Dhaka, Bangladesh', '01773280001', 'quintos@gmail.com', 'Quintos Market Solutions', 1),
(20, 'Nagad Choudhuri', 'Mirpur-10, Dhaka', '01773280001', 'contact@nagad.com', 'Nagad', 1);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` float(65,2) NOT NULL,
  `unit` varchar(52) NOT NULL,
  `price` float(65,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `unit`, `price`, `status`) VALUES
(1, 'Stone', 13300.00, 'TON', 200000.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$gu53MjvRkIgYclp9cbiUWeU7DOYKK2Jz6iBD6voanaXrR/WBVxa6G', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `ledgerentries`
--
ALTER TABLE `ledgerentries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ledgerentries`
--
ALTER TABLE `ledgerentries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
