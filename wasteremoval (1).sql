-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2022 at 05:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wasteremoval`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_vendors`
--

CREATE TABLE `assigned_vendors` (
  `assigned_id` int(11) NOT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `pemail` varchar(100) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `type_pricing` varchar(255) DEFAULT NULL,
  `reservedBy` varchar(255) DEFAULT NULL,
  `reservedByname` varchar(255) DEFAULT NULL,
  `reservedByrole` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `colour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `colour`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Red', 'FFA1A1', '2021-07-22 13:49:53', '2021-07-22 13:49:53'),
(2, 'Green', 'BEFFBB', '2021-07-22 13:49:53', '2021-07-22 13:49:53'),
(3, 'Orange', 'FEDC95', '2021-07-22 13:49:53', '2021-07-22 13:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `makerId` varchar(11) DEFAULT NULL,
  `manageByName` varchar(100) DEFAULT NULL,
  `manageById` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `street_address` varchar(100) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `billing_country` varchar(200) DEFAULT NULL,
  `billing_street_address` varchar(200) DEFAULT NULL,
  `billing_zipcode` int(11) DEFAULT NULL,
  `termsCustomer` int(11) DEFAULT 0,
  `termDays` varchar(100) DEFAULT NULL,
  `CustomerCreationDate` varchar(100) DEFAULT NULL,
  `requiredSize` varchar(100) DEFAULT NULL,
  `PricePdf` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `first_name`, `last_name`, `company_name`, `email`, `contact_number`, `makerId`, `manageByName`, `manageById`, `country`, `street_address`, `zipcode`, `billing_country`, `billing_street_address`, `billing_zipcode`, `termsCustomer`, `termDays`, `CustomerCreationDate`, `requiredSize`, `PricePdf`) VALUES
(1, 'Bhupender', 'Singh', 'Downtown', 'bkanyal824@gmail.com', '(790) 633-5103', '1', 'Bhupender', '2', NULL, 'Acworth Beach, Acworth, GA, USA', 63010, NULL, 'Acworth Guns, N Main St, Acworth, GA, USA', 63010, 0, '-', '02/22/2022', '10', '1646992267.pdf'),
(2, 'Miska', 'Tiwari', 'Miska@co.in', 'rajshekhartiwari14@gmail.com', '(897) 485-9583', '1', 'waste removal', '1', NULL, 'Lucknow, Uttar Pradesh, India', 63010, NULL, 'Lucknow, Uttar Pradesh, India', 63010, 0, '-', '02/24/2022', '10', NULL),
(15, 'Ratan', 'Tata', NULL, 'rajshekhartiwari14@gmail.com', '(521) 635-2525', '5', NULL, NULL, NULL, 'Dadar, Mumbai, Maharashtra, India', 63010, NULL, 'Dadar, Mumbai, Maharashtra, India', 63010, 1, '21 Days', '03/02/2022', '10', '1646921353.pdf'),
(16, 'Bhupender', 'Singh', '', 'bkanyal824@gmail.com', '(000) 516-5626', '1', '', '', NULL, 'Acworth Guns, N Main St, Acworth, GA, USA', 63010, NULL, 'Acworth Guns, N Main St, Acworth, GA, USA', 63010, 0, '-', '03/11/2022', '10', '1646992106.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `customer_emails`
--

CREATE TABLE `customer_emails` (
  `ce_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_type` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_emails`
--

INSERT INTO `customer_emails` (`ce_id`, `cust_id`, `email`, `email_type`, `created_at`, `updated_at`) VALUES
(5, 1, 'bkanyal825@gmail.com', 1, '2022-03-09 00:30:32', '2022-03-09 00:30:32'),
(8, 1, 'bkanyal828@gmail.com', 2, '2022-03-09 00:30:33', '2022-03-09 00:30:33'),
(9, 1, 'bkanyal8244@gmail.com', 2, '2022-03-09 00:30:33', '2022-03-09 00:30:33'),
(11, 16, 'bkanyal825@gmail.com', 1, '2022-03-11 04:20:16', '2022-03-11 04:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPARTMENT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(50) DEFAULT NULL,
  `ADD_DATE` datetime DEFAULT NULL,
  `ADD_USER_ID` int(11) DEFAULT 0,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_USER_ID` int(11) DEFAULT 0,
  `ACTIVE` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `ADD_DATE`, `ADD_USER_ID`, `UPDATE_DATE`, `UPDATE_USER_ID`, `ACTIVE`) VALUES
(1, 'Sales', NULL, 0, NULL, 0, 1),
(2, 'Opeation', NULL, 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expenseId` int(11) NOT NULL,
  `ProviderID` varchar(100) DEFAULT NULL,
  `paymentDate` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `PaymentWay` varchar(100) DEFAULT NULL,
  `Subcategory` varchar(11) DEFAULT NULL,
  `CheckNo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expenseId`, `ProviderID`, `paymentDate`, `description`, `amount`, `category`, `PaymentWay`, `Subcategory`, `CheckNo`) VALUES
(5, '1', '02/01/2022', 'Hotal expense', '250.60', '4', 'card', '', ''),
(12, '1', '02/19/2022', 'Carpet', '856', '1', 'check', '12', 'HK92522652'),
(21, '12', '03/02/2022', 'New Types woods', '2000', '2', 'card', '3', ''),
(24, '1', '03/03/2022', 'New services', '200', '4', 'check', '8', '528858585'),
(33, '12', '03/01/2022', 'Bill March', '100', '2', 'card', '10', ''),
(34, '12', '03/08/2022', 'Bill new', '50', '15', 'card', '', ''),
(35, '1', '03/01/2022', 'New jarcy', '45', '15', 'card', '29', ''),
(37, '12', '03/03/2022', 'Air india', '8000', '3', 'card', '', ''),
(38, '12', '03/04/2022', 'S400', '150', '12', 'card', '31', ''),
(39, '1', '03/01/2022', 'abc', '100', '12', 'card', '31', ''),
(40, '1', '03/15/2022', 'P2', '20', '13', 'card', '', ''),
(41, '1', '03/15/2022', 'P2', '20', '13', 'card', '', ''),
(42, '1', '03/09/2022', 'det', '400', '3', 'card', '14', ''),
(43, '1', '03/08/2022', 'KJ', '500', '4', 'card', '7', ''),
(44, '1', '03/08/2022', 'Des', '800', '10', 'check', '', '255525252525'),
(45, '1', '03/23/2022', 'kjl', '500', '13', 'card', '', '');

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
-- Table structure for table `i_check`
--

CREATE TABLE `i_check` (
  `ip_id` int(11) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `Qstatus` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `i_check`
--

INSERT INTO `i_check` (`ip_id`, `ip`, `QID`, `status`, `Qstatus`) VALUES
(1, '127.0.0.1', 2, 0, 1),
(2, '127.0.0.1', 1, 0, 1),
(3, '127.0.0.1', 1, 0, 1),
(4, '127.0.0.1', 3, 0, 1),
(5, '127.0.0.1', 4, 0, 1),
(6, '127.0.0.1', 4, 0, 1),
(7, '127.0.0.1', 4, 0, 1),
(8, '127.0.0.1', 4, 0, 1),
(9, '127.0.0.1', 4, 0, 1),
(10, '127.0.0.1', 4, 0, 1),
(11, '127.0.0.1', 4, 0, 1),
(12, '127.0.0.1', 4, 0, 1),
(13, '127.0.0.1', 4, 0, 1),
(14, '127.0.0.1', 4, 0, 1),
(15, '127.0.0.1', 4, 0, 1),
(16, '127.0.0.1', 4, 0, 1),
(17, '127.0.0.1', 4, 0, 1),
(18, '127.0.0.1', 4, 0, 1),
(19, '127.0.0.1', 4, 0, 1),
(20, '127.0.0.1', 4, 0, 1),
(21, '127.0.0.1', 4, 0, 1),
(22, '127.0.0.1', 4, 0, 1),
(23, '127.0.0.1', 4, 0, 1),
(24, '127.0.0.1', 4, 0, 1),
(25, '127.0.0.1', 4, 0, 1),
(26, '127.0.0.1', 4, 0, 1),
(27, '127.0.0.1', 4, 0, 1),
(28, '127.0.0.1', 4, 0, 1),
(29, '127.0.0.1', 4, 0, 1),
(30, '127.0.0.1', 4, 0, 1),
(31, '127.0.0.1', 4, 0, 1),
(32, '127.0.0.1', 4, 0, 1),
(33, '127.0.0.1', 4, 0, 1),
(34, '127.0.0.1', 4, 0, 1),
(35, '127.0.0.1', 4, 0, 1),
(36, '127.0.0.1', 4, 0, 1),
(37, '127.0.0.1', 4, 0, 1),
(38, '127.0.0.1', 4, 0, 1),
(39, '127.0.0.1', 4, 0, 1),
(40, '127.0.0.1', 4, 0, 1),
(41, '127.0.0.1', 4, 0, 1),
(42, '127.0.0.1', 4, 0, 1),
(43, '127.0.0.1', 4, 0, 1),
(44, '127.0.0.1', 4, 0, 1),
(45, '127.0.0.1', 4, 0, 1),
(46, '127.0.0.1', 4, 0, 1),
(47, '127.0.0.1', 3, 0, 1),
(48, '127.0.0.1', 3, 0, 1),
(49, '127.0.0.1', 5, 0, 1),
(50, '127.0.0.1', 6, 0, 1),
(51, '127.0.0.1', 6, 0, 1),
(52, '127.0.0.1', 6, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `masterdataproperties`
--

CREATE TABLE `masterdataproperties` (
  `id` int(11) NOT NULL,
  `clname` varchar(100) DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `recordno` varchar(100) DEFAULT NULL,
  `Gid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterdataproperties`
--

INSERT INTO `masterdataproperties` (`id`, `clname`, `properties`, `recordno`, `Gid`) VALUES
(1, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '2', 76),
(2, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '2', 76),
(3, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '2', 76),
(4, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '2', 76),
(5, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '2', 76),
(6, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '2', 76),
(7, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '2', 76),
(8, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '2', 76),
(9, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '2', 76),
(10, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '2', 76),
(11, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '2', 76),
(12, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '2', 76),
(13, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '2', 76),
(14, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '2', 76),
(15, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '2', 76),
(16, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '2', 76),
(17, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '3', 76),
(18, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '3', 76),
(19, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '3', 76),
(20, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '3', 76),
(21, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '3', 76),
(22, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '3', 76),
(23, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '3', 76),
(24, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '3', 76),
(25, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '3', 76),
(26, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '3', 76),
(27, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '3', 76),
(28, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '3', 76),
(29, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '3', 76),
(30, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '3', 76),
(31, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '3', 76),
(32, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '3', 76),
(33, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '4', 76),
(34, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '4', 76),
(35, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '4', 76),
(36, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '4', 76),
(37, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '4', 76),
(38, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '4', 76),
(39, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '4', 76),
(40, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '4', 76),
(41, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '4', 76),
(42, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '4', 76),
(43, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '4', 76),
(44, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '4', 76),
(45, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '4', 76),
(46, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '4', 76),
(47, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '4', 76),
(48, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '4', 76),
(49, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '5', 76),
(50, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '5', 76),
(51, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '5', 76),
(52, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '5', 76),
(53, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '5', 76),
(54, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '5', 76),
(55, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '5', 76),
(56, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '5', 76),
(57, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '5', 76),
(58, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '5', 76),
(59, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '5', 76),
(60, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '5', 76),
(61, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '5', 76),
(62, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '5', 76),
(63, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '5', 76),
(64, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '5', 76),
(65, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '6', 76),
(66, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '6', 76),
(67, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '6', 76),
(68, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '6', 76),
(69, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '6', 76),
(70, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '6', 76),
(71, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '6', 76),
(72, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '6', 76),
(73, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '6', 76),
(74, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '6', 76),
(75, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '6', 76),
(76, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '6', 76),
(77, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '6', 76),
(78, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '6', 76),
(79, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '6', 76),
(80, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '6', 76),
(81, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '7', 76),
(82, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '7', 76),
(83, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '7', 76),
(84, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '7', 76),
(85, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '7', 76),
(86, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '7', 76),
(87, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '7', 76),
(88, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '7', 76),
(89, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '7', 76),
(90, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '7', 76),
(91, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '7', 76),
(92, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '7', 76),
(93, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '7', 76),
(94, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '7', 76),
(95, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '7', 76),
(96, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '7', 76),
(97, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '8', 76),
(98, 'MATERIAL_TO_DISPOSE', '#Arial#10##none#000000#FFFFFF', '8', 76),
(99, 'DUMPSTER_SIZE', '#Arial#10##none#000000#FFFFFF', '8', 76),
(100, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '8', 76),
(101, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '8', 76),
(102, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '8', 76),
(103, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '8', 76),
(104, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '8', 76),
(105, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '8', 76),
(106, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '8', 76),
(107, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '8', 76),
(108, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '8', 76),
(109, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '8', 76),
(110, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '8', 76),
(111, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '8', 76),
(112, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '8', 76),
(113, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '9', 76),
(114, 'MATERIAL_TO_DISPOSE', '#Arial#10##none#000000#FFFFFF', '9', 76),
(115, 'DUMPSTER_SIZE', '#Arial#10##none#000000#FFFFFF', '9', 76),
(116, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '9', 76),
(117, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '9', 76),
(118, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '9', 76),
(119, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '9', 76),
(120, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '9', 76),
(121, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '9', 76),
(122, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '9', 76),
(123, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '9', 76),
(124, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '9', 76),
(125, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '9', 76),
(126, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '9', 76),
(127, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '9', 76),
(128, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '9', 76),
(129, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '10', 76),
(130, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '10', 76),
(131, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '10', 76),
(132, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '10', 76),
(133, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '10', 76),
(134, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '10', 76),
(135, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '10', 76),
(136, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '10', 76),
(137, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '10', 76),
(138, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '10', 76),
(139, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '10', 76),
(140, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '10', 76),
(141, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '10', 76),
(142, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '10', 76),
(143, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '10', 76),
(144, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '10', 76),
(145, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '11', 76),
(146, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '11', 76),
(147, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '11', 76),
(148, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '11', 76),
(149, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '11', 76),
(150, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '11', 76),
(151, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '11', 76),
(152, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '11', 76),
(153, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '11', 76),
(154, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '11', 76),
(155, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '11', 76),
(156, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '11', 76),
(157, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '11', 76),
(158, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '11', 76),
(159, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '11', 76),
(160, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '11', 76),
(161, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '12', 76),
(162, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '12', 76),
(163, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '12', 76),
(164, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '12', 76),
(165, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '12', 76),
(166, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '12', 76),
(167, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '12', 76),
(168, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '12', 76),
(169, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '12', 76),
(170, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '12', 76),
(171, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '12', 76),
(172, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '12', 76),
(173, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '12', 76),
(174, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '12', 76),
(175, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '12', 76),
(176, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '12', 76),
(177, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '13', 76),
(178, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '13', 76),
(179, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '13', 76),
(180, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '13', 76),
(181, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '13', 76),
(182, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '13', 76),
(183, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '13', 76),
(184, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '13', 76),
(185, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '13', 76),
(186, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '13', 76),
(187, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '13', 76),
(188, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '13', 76),
(189, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '13', 76),
(190, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '13', 76),
(191, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '13', 76),
(192, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '13', 76),
(193, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '14', 76),
(194, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '14', 76),
(195, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '14', 76),
(196, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '14', 76),
(197, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '14', 76),
(198, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '14', 76),
(199, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '14', 76),
(200, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '14', 76),
(201, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '14', 76),
(202, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '14', 76),
(203, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '14', 76),
(204, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '14', 76),
(205, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '14', 76),
(206, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '14', 76),
(207, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '14', 76),
(208, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '14', 76),
(209, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '15', 76),
(210, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '15', 76),
(211, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '15', 76),
(212, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '15', 76),
(213, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '15', 76),
(214, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '15', 76),
(215, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '15', 76),
(216, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '15', 76),
(217, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '15', 76),
(218, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '15', 76),
(219, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '15', 76),
(220, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '15', 76),
(221, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '15', 76),
(222, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '15', 76),
(223, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '15', 76),
(224, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '15', 76),
(225, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '1', 1),
(226, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '1', 1),
(227, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '1', 1),
(228, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '1', 1),
(229, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '1', 1),
(230, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '1', 1),
(231, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '1', 1),
(232, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '1', 1),
(233, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '1', 1),
(234, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '1', 1),
(235, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '1', 1),
(236, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '1', 1),
(237, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '1', 1),
(238, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '1', 1),
(239, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '1', 1),
(240, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '1', 1),
(241, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '2', 1),
(242, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '2', 1),
(243, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '2', 1),
(244, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '2', 1),
(245, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '2', 1),
(246, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '2', 1),
(247, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '2', 1),
(248, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '2', 1),
(249, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '2', 1),
(250, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '2', 1),
(251, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '2', 1),
(252, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '2', 1),
(253, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '2', 1),
(254, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '2', 1),
(255, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '2', 1),
(256, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '2', 1),
(257, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '3', 1),
(258, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '3', 1),
(259, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '3', 1),
(260, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '3', 1),
(261, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '3', 1),
(262, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '3', 1),
(263, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '3', 1),
(264, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '3', 1),
(265, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '3', 1),
(266, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '3', 1),
(267, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '3', 1),
(268, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '3', 1),
(269, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '3', 1),
(270, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '3', 1),
(271, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '3', 1),
(272, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '3', 1),
(273, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '4', 1),
(274, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '4', 1),
(275, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '4', 1),
(276, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '4', 1),
(277, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '4', 1),
(278, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '4', 1),
(279, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '4', 1),
(280, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '4', 1),
(281, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '4', 1),
(282, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '4', 1),
(283, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '4', 1),
(284, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '4', 1),
(285, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '4', 1),
(286, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '4', 1),
(287, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '4', 1),
(288, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '4', 1),
(289, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '5', 1),
(290, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '5', 1),
(291, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '5', 1),
(292, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '5', 1),
(293, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '5', 1),
(294, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '5', 1),
(295, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '5', 1),
(296, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '5', 1),
(297, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '5', 1),
(298, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '5', 1),
(299, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '5', 1),
(300, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '5', 1),
(301, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '5', 1),
(302, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '5', 1),
(303, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '5', 1),
(304, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '5', 1),
(305, 'ZIP_CODE', '1#Calibri#11#1#none#000000#FF6600', '6', 1),
(306, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FF6600', '6', 1),
(307, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FF6600', '6', 1),
(308, 'WEIGHT_CAPACITY', '#Calibri#11##none#000000#FF6600', '6', 1),
(309, 'SERVICES_FREQUENCY', '#Calibri#11##none#000000#FF6600', '6', 1),
(310, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '6', 1),
(311, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '6', 1),
(312, 'TYPE_OF_PRICING', '#Calibri#11##none#000000#FF6600', '6', 1),
(313, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '6', 1),
(314, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '6', 1),
(315, 'AVERAGE_COST_PER_TON', '#Calibri#11##none#000000#FF6600', '6', 1),
(316, 'AVERAGE_RETAIL_PER_TON', '#Calibri#11##none#000000#FF6600', '6', 1),
(317, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '6', 1),
(318, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '6', 1),
(319, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '6', 1),
(320, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '6', 1),
(321, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '7', 1),
(322, 'MATERIAL_TO_DISPOSE', '#Arial#10##none#000000#FFFFFF', '7', 1),
(323, 'DUMPSTER_SIZE', '#Arial#10##none#000000#FFFFFF', '7', 1),
(324, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '7', 1),
(325, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '7', 1),
(326, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '7', 1),
(327, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '7', 1),
(328, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '7', 1),
(329, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '7', 1),
(330, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '7', 1),
(331, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '7', 1),
(332, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '7', 1),
(333, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '7', 1),
(334, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '7', 1),
(335, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '7', 1),
(336, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '7', 1),
(337, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '8', 1),
(338, 'MATERIAL_TO_DISPOSE', '#Arial#10##none#000000#FFFFFF', '8', 1),
(339, 'DUMPSTER_SIZE', '#Arial#10##none#000000#FFFFFF', '8', 1),
(340, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '8', 1),
(341, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '8', 1),
(342, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '8', 1),
(343, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '8', 1),
(344, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '8', 1),
(345, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '8', 1),
(346, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '8', 1),
(347, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '8', 1),
(348, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '8', 1),
(349, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '8', 1),
(350, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '8', 1),
(351, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '8', 1),
(352, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '8', 1),
(353, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '9', 1),
(354, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '9', 1),
(355, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '9', 1),
(356, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '9', 1),
(357, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '9', 1),
(358, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '9', 1),
(359, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '9', 1),
(360, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '9', 1),
(361, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '9', 1),
(362, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '9', 1),
(363, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '9', 1),
(364, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '9', 1),
(365, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '9', 1),
(366, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '9', 1),
(367, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '9', 1),
(368, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '9', 1),
(369, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '10', 1),
(370, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '10', 1),
(371, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '10', 1),
(372, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '10', 1),
(373, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '10', 1),
(374, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '10', 1),
(375, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '10', 1),
(376, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '10', 1),
(377, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '10', 1),
(378, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '10', 1),
(379, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '10', 1),
(380, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '10', 1),
(381, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '10', 1),
(382, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '10', 1),
(383, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '10', 1),
(384, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '10', 1),
(385, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '11', 1),
(386, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '11', 1),
(387, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '11', 1),
(388, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '11', 1),
(389, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '11', 1),
(390, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '11', 1),
(391, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '11', 1),
(392, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '11', 1),
(393, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '11', 1),
(394, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '11', 1),
(395, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '11', 1),
(396, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '11', 1),
(397, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '11', 1),
(398, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '11', 1),
(399, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '11', 1),
(400, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '11', 1),
(401, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '12', 1),
(402, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '12', 1),
(403, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '12', 1),
(404, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '12', 1),
(405, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '12', 1),
(406, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '12', 1),
(407, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '12', 1),
(408, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '12', 1),
(409, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '12', 1),
(410, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '12', 1),
(411, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '12', 1),
(412, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '12', 1),
(413, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '12', 1),
(414, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '12', 1),
(415, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '12', 1),
(416, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '12', 1),
(417, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '13', 1),
(418, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '13', 1),
(419, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '13', 1),
(420, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '13', 1),
(421, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '13', 1),
(422, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '13', 1),
(423, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '13', 1),
(424, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '13', 1),
(425, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '13', 1),
(426, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '13', 1),
(427, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '13', 1),
(428, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '13', 1),
(429, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '13', 1),
(430, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '13', 1),
(431, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '13', 1),
(432, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '13', 1),
(433, 'ZIP_CODE', '#Arial#10##none#000000#FFFFFF', '14', 1),
(434, 'MATERIAL_TO_DISPOSE', '1#Calibri#11##none#000000#FFFFFF', '14', 1),
(435, 'DUMPSTER_SIZE', '1#Calibri#11##none#000000#FFFFFF', '14', 1),
(436, 'WEIGHT_CAPACITY', '#Arial#10##none#000000#FFFFFF', '14', 1),
(437, 'SERVICES_FREQUENCY', '#Arial#10##none#000000#FFFFFF', '14', 1),
(438, 'RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '14', 1),
(439, 'OUR_RENTAL_PERIOD', '1#Calibri#11##none#000000#FF6600', '14', 1),
(440, 'TYPE_OF_PRICING', '#Arial#10##none#000000#FFFFFF', '14', 1),
(441, 'COST_OF_DUMPSTER', '#Calibri#11##none#000000#FF6600', '14', 1),
(442, 'RETAIL_COST_OF_DUMPSTER', '1#Calibri#11#1#none#000000#FF6600', '14', 1),
(443, 'AVERAGE_COST_PER_TON', '#Arial#10##none#000000#FFFFFF', '14', 1),
(444, 'AVERAGE_RETAIL_PER_TON', '#Arial#10##none#000000#FFFFFF', '14', 1),
(445, 'EXTRA_DAY_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '14', 1),
(446, 'EXTRA_DAY_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '14', 1),
(447, 'TRIP_CHARGE_COST', '#Calibri#11##none#000000#FF6600', '14', 1),
(448, 'TRIP_CHARGE_RETAIL', '#Calibri#11##none#000000#FF6600', '14', 1);

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
(1, '2022_01_18_064323_create_categories_table', 1),
(2, '2022_01_18_102826_create_pay_category_table', 2),
(5, '2022_01_18_103231_create_pay_sub_category_table', 3),
(6, '2014_10_12_000000_create_users_table', 4),
(7, '2014_10_12_100000_create_password_resets_table', 4),
(8, '2019_08_19_000000_create_failed_jobs_table', 4),
(9, '2021_05_07_130636_create_passports_table', 4),
(10, '2021_06_29_104453_create_countries_table', 4),
(11, '2019_10_12_100000_create_customer_emails_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `module_configure`
--

CREATE TABLE `module_configure` (
  `MODULE_ID` int(11) NOT NULL,
  `MODULE_NAME` varchar(50) DEFAULT NULL,
  `PARENT_MODULE_ID` int(11) DEFAULT 0,
  `MASTER_URL` varchar(500) DEFAULT NULL,
  `CAPTION` varchar(100) DEFAULT NULL,
  `MODULE_ICON` varchar(500) DEFAULT NULL,
  `ADD_DATE` datetime DEFAULT NULL,
  `ADD_USER_ID` int(11) DEFAULT 0,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_USER_ID` int(11) DEFAULT 0,
  `ACTIVE` int(11) DEFAULT 0,
  `ARIA_CONTROL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_configure`
--

INSERT INTO `module_configure` (`MODULE_ID`, `MODULE_NAME`, `PARENT_MODULE_ID`, `MASTER_URL`, `CAPTION`, `MODULE_ICON`, `ADD_DATE`, `ADD_USER_ID`, `UPDATE_DATE`, `UPDATE_USER_ID`, `ACTIVE`, `ARIA_CONTROL`) VALUES
(1, 'Dashboards', 0, 'dashboard', 'Dashboard', NULL, NULL, 0, NULL, 0, 1, ''),
(2, 'Users', 0, NULL, 'Users', NULL, NULL, 0, NULL, 0, 1, 'userList'),
(3, 'Customers', 0, 'customer', 'Customers', NULL, NULL, 0, NULL, 0, 1, NULL),
(4, 'Provider Master', 0, 'provider', 'Provider Master', NULL, NULL, 0, NULL, 0, 1, NULL),
(5, 'Quotes', 0, NULL, 'Quotes', NULL, NULL, 0, NULL, 0, 1, 'quoteList'),
(6, 'Reservations', 0, NULL, 'Reservations', NULL, NULL, 0, NULL, 0, 1, 'reservationList'),
(7, 'Active Quotes', 5, 'quotes', 'Active Quotes', NULL, NULL, 0, NULL, 0, 1, 'quoteList'),
(8, 'Customer Services', 0, NULL, 'Customer Services', NULL, NULL, 0, NULL, 0, 1, 'customerServiceList'),
(9, 'Incomplete Quotes', 5, 'inactivequote', 'Incomplete Quotes', NULL, NULL, 0, NULL, 0, 1, 'quoteList'),
(10, 'Active Reservation', 6, 'activereservation', 'Active Reservation', NULL, NULL, 0, NULL, 0, 1, 'reservationList'),
(11, 'Past Reservation', 6, 'pastReservation', 'Past Reservation', NULL, NULL, 0, NULL, 0, 1, 'reservationList'),
(12, 'Completed List', 8, 'completedCustomerService', 'Completed Orders', NULL, NULL, 0, NULL, 0, 1, 'customerServiceList'),
(13, 'Current List', 8, 'customer_services', 'Current Orders', NULL, NULL, 0, NULL, 0, 1, 'customerServiceList'),
(14, 'Archived Quotes', 5, 'archivedQuote', 'Archived Quotes', NULL, NULL, 0, NULL, 0, 1, 'quoteList'),
(15, 'Expenses', 0, 'expenses', 'Expenses', NULL, NULL, 0, NULL, 0, 1, NULL),
(16, 'Revenue', 0, 'revenue', 'Revenue', NULL, NULL, 0, NULL, 0, 1, NULL),
(17, 'Reports', 0, 'reports', 'Reports', NULL, NULL, 0, NULL, 0, 1, NULL),
(33, 'Active User', 2, 'activeuser', 'Active User', NULL, NULL, 0, NULL, 0, 1, 'userList'),
(34, 'Pending User', 2, 'pendinguser', 'Pending User', NULL, NULL, 0, NULL, 0, 1, 'userList'),
(35, 'Setting', 0, NULL, 'Setting', NULL, NULL, 0, NULL, 0, 1, 'settingList'),
(36, 'Role', 35, 'role', 'Role', NULL, NULL, 0, NULL, 0, 1, ''),
(37, 'Department', 35, 'department', 'Department', NULL, NULL, 0, NULL, 0, 1, NULL),
(38, 'Module', 35, 'module', 'Module', NULL, NULL, 0, NULL, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passports`
--

CREATE TABLE `passports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `office` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `paycategory`
--

CREATE TABLE `paycategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paycategory`
--

INSERT INTO `paycategory` (`id`, `name`) VALUES
(1, 'Luxury'),
(2, 'Cheap'),
(3, 'Travel'),
(4, 'Third party apis'),
(5, 'erteter'),
(6, 'x xx gx 5x5sx484xs5sx18s4x5s1x5s45s45sx45s4sx84x54xs84xs5xs48xs45sx4'),
(7, 'Aniket'),
(8, 'Yes'),
(9, 'Soft game'),
(10, 'Entertainment'),
(11, 'Exide'),
(12, 'Mumbai'),
(13, 'Delhi'),
(14, 'Ranchi'),
(15, 'US');

-- --------------------------------------------------------

--
-- Table structure for table `payee`
--

CREATE TABLE `payee` (
  `PayeeId` int(11) NOT NULL,
  `PayeeName` varchar(100) DEFAULT NULL,
  `PayeeEmail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payee`
--

INSERT INTO `payee` (`PayeeId`, `PayeeName`, `PayeeEmail`) VALUES
(1, 'Bhupender', 'bhupender@gmail.com'),
(2, 'Aman', 'aman@gmail.com'),
(3, 'test', 'tesy@gmail.com'),
(4, 'FindNerd', 'fn@gmail.com'),
(5, 'Audi', 'audi@gmail.com'),
(6, 'Kia', 'Kia@gmail.com'),
(8, 'Namn', 'Nam@gmail.com'),
(9, 'Ukrain', 'uk@gmail.com'),
(10, 'Waste Removal USA', 'tommy@wasteremovalusa.co'),
(11, 'Payee One', 'payee@gmail.com'),
(12, 'Biden', 'biden@gmail.com'),
(13, 'LS', 'Ls@gmail.com'),
(18, 'BMW', 'bmw@gmail.com'),
(19, 'testing', ''),
(20, 'with-email', 'aman2@gmail.com'),
(21, 'James', 'James@gmail.com'),
(22, 'RAJ', 'Raj@gmai'),
(23, 'Raj New', 'Raj@gmail'),
(24, 'Trump', 'trump@gmail.com'),
(25, 'Avul Pakir Jainulabdeen Abdul Kalam', 'Raj@gmail.com'),
(26, 'France', 'France@gmail.com'),
(27, 'France', 'France@gmail.com'),
(28, 'France', 'France@gmail.com'),
(29, 'France3', 'Raj@gmail.com'),
(30, 'France3', 'Raj@gmail.com'),
(31, 'France3', 'Raj@gmail.com'),
(32, 'UK', 'Raj@gmail'),
(33, 'UK', 'Raj@gmail'),
(34, 'UK', 'Raj@gmail'),
(35, 'UK', 'Raj@gmail.com'),
(36, 'UK', 'Raj@gmail'),
(37, 'fsdfsd', '');

-- --------------------------------------------------------

--
-- Table structure for table `paysubcategory`
--

CREATE TABLE `paysubcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paysubcategory`
--

INSERT INTO `paysubcategory` (`id`, `parent_id`, `name`) VALUES
(1, 1, 'Car Rent'),
(2, 2, 'Phone Bill'),
(3, 2, 'Wifi Bill'),
(4, 3, 'Food'),
(5, 3, 'Hotel'),
(6, 4, 'Google api'),
(7, 4, 'Zipcode api'),
(8, 4, 'Geo location api'),
(9, 4, 'Place holder api'),
(10, 2, 'Electricity Bill'),
(11, 4, 'Crop image api'),
(12, 1, 'Flight'),
(13, 2, 'Cab rent'),
(14, 3, 'clubbing'),
(15, 3, 'testing travel'),
(16, 2, 'Sweden'),
(17, 4, '87898'),
(18, 4, 'Car Race'),
(19, 2, 'ONE'),
(20, 1, 'Music'),
(21, 1, 'Movie'),
(22, 1, 'Music'),
(23, 2, 'Exide'),
(24, 1, 'New mumbai'),
(25, 2, 'Exide'),
(26, 3, 'CP'),
(27, 1, 'Noida'),
(28, 1, 'Califonia'),
(29, 15, 'Biden'),
(30, 2, 'Light'),
(31, 12, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `PROFILE_ID` int(11) NOT NULL,
  `PROFILE_NAME` varchar(50) DEFAULT NULL,
  `DEPID` varchar(100) DEFAULT NULL,
  `ADD_DATE` datetime DEFAULT NULL,
  `ADD_USER_ID` int(11) DEFAULT 0,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_USER_ID` int(11) DEFAULT 0,
  `ACTIVE` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`PROFILE_ID`, `PROFILE_NAME`, `DEPID`, `ADD_DATE`, `ADD_USER_ID`, `UPDATE_DATE`, `UPDATE_USER_ID`, `ACTIVE`) VALUES
(1, 'Super admin', '1', '2021-07-05 00:00:00', 1, '2021-07-05 00:00:00', 1, 1),
(7, 'Admin', '2', NULL, 0, NULL, 0, 1),
(8, 'Operations', '2', NULL, 0, NULL, 0, 1),
(9, 'Billings', '1', NULL, 0, NULL, 0, 1),
(10, 'Manager', '2', NULL, 0, NULL, 0, 1),
(11, 'Sales', '1', NULL, 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile_module`
--

CREATE TABLE `profile_module` (
  `PROFILE_MODULE_ID` int(11) NOT NULL,
  `PROFILE_ID` int(11) DEFAULT NULL,
  `MODULE_ID` int(11) DEFAULT NULL,
  `ADD_PERMISSION` int(11) DEFAULT 1,
  `EDIT_PERMISSION` int(11) DEFAULT 1,
  `DELETE_PERMISSION` int(11) DEFAULT 1,
  `VIEW_PERMISSION` int(11) DEFAULT NULL,
  `VISIBLE` int(11) DEFAULT 1,
  `MODULE_ORDER` int(11) DEFAULT NULL,
  `MODULE_TYPE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_module`
--

INSERT INTO `profile_module` (`PROFILE_MODULE_ID`, `PROFILE_ID`, `MODULE_ID`, `ADD_PERMISSION`, `EDIT_PERMISSION`, `DELETE_PERMISSION`, `VIEW_PERMISSION`, `VISIBLE`, `MODULE_ORDER`, `MODULE_TYPE`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL),
(2, 1, 2, 1, 1, 1, 1, 1, NULL, NULL),
(3, 1, 3, 1, 1, 1, 1, 1, NULL, NULL),
(4, 1, 4, 1, 1, 1, 1, 1, NULL, NULL),
(5, 1, 5, 1, 1, 1, 1, 1, NULL, NULL),
(6, 1, 6, 1, 1, 1, 1, 1, NULL, NULL),
(7, 1, 7, 1, 1, 1, 1, 1, NULL, NULL),
(8, 1, 8, 1, 1, 1, 1, 1, NULL, NULL),
(9, 1, 9, 1, 1, 1, 1, 1, NULL, NULL),
(10, 1, 10, 1, 1, 1, 1, 1, NULL, NULL),
(11, 1, 11, 1, 1, 1, 1, 1, NULL, NULL),
(12, 1, 12, 1, 1, 1, 1, 1, NULL, NULL),
(13, 1, 13, 1, 1, 1, 1, 1, NULL, NULL),
(14, 1, 14, 1, 1, 1, 1, 1, NULL, NULL),
(15, 1, 15, 1, 1, 1, 1, 1, NULL, NULL),
(16, 1, 16, 1, 1, 1, 1, 1, NULL, NULL),
(17, 1, 17, 1, 1, 1, 1, 1, NULL, NULL),
(18, 1, 33, 1, 1, 1, 1, 1, NULL, NULL),
(19, 1, 34, 1, 1, 1, 1, 1, NULL, NULL),
(20, 1, 35, 1, 1, 1, 1, 1, NULL, NULL),
(21, 1, 36, 1, 1, 1, 1, 1, NULL, NULL),
(22, 1, 37, 1, 1, 1, 1, 1, NULL, NULL),
(23, 1, 38, 1, 1, 1, 1, 1, NULL, NULL),
(24, 7, 1, 1, 1, 1, 1, 1, NULL, NULL),
(25, 7, 2, 1, 1, 1, 1, 1, NULL, NULL),
(26, 7, 3, 1, 1, 1, 1, 1, NULL, NULL),
(27, 7, 4, 1, 1, 1, 1, 1, NULL, NULL),
(28, 7, 5, 1, 1, 1, 1, 1, NULL, NULL),
(29, 7, 6, 1, 1, 1, 1, 1, NULL, NULL),
(30, 7, 7, 1, 1, 1, 1, 1, NULL, NULL),
(31, 7, 8, 1, 1, 1, 1, 1, NULL, NULL),
(32, 7, 9, 1, 1, 1, 1, 1, NULL, NULL),
(33, 7, 10, 1, 1, 1, 1, 1, NULL, NULL),
(34, 7, 11, 1, 1, 1, 1, 1, NULL, NULL),
(35, 7, 12, 1, 1, 1, 1, 1, NULL, NULL),
(36, 7, 13, 1, 1, 1, 1, 1, NULL, NULL),
(37, 7, 14, 1, 0, 0, 0, 1, NULL, NULL),
(38, 7, 15, 1, 1, 1, 1, 1, NULL, NULL),
(39, 7, 16, 1, 1, 1, 1, 1, NULL, NULL),
(40, 7, 17, 1, 1, 1, 1, 1, NULL, NULL),
(41, 7, 33, 1, 1, 1, 1, 1, NULL, NULL),
(42, 7, 34, 1, 1, 1, 1, 1, NULL, NULL),
(43, 7, 35, 1, 1, 1, 1, 1, NULL, NULL),
(44, 7, 36, 1, 1, 1, 1, 1, NULL, NULL),
(45, 7, 37, 1, 1, 1, 1, 1, NULL, NULL),
(46, 7, 38, 1, 1, 1, 1, 1, NULL, NULL),
(47, 8, 1, 1, 1, 1, 1, 1, NULL, NULL),
(48, 8, 2, 1, 1, 1, 1, 1, NULL, NULL),
(49, 8, 3, 0, 0, 0, 0, 1, NULL, NULL),
(50, 8, 4, 0, 0, 0, 0, 1, NULL, NULL),
(51, 8, 5, 0, 0, 0, 0, 1, NULL, NULL),
(52, 8, 6, 0, 0, 0, 0, 1, NULL, NULL),
(53, 8, 7, 0, 0, 0, 0, 1, NULL, NULL),
(54, 8, 8, 0, 0, 0, 0, 1, NULL, NULL),
(55, 8, 9, 0, 0, 0, 0, 1, NULL, NULL),
(56, 8, 10, 0, 0, 0, 0, 1, NULL, NULL),
(57, 8, 11, 0, 0, 0, 0, 1, NULL, NULL),
(58, 8, 12, 0, 0, 0, 0, 1, NULL, NULL),
(59, 8, 13, 0, 0, 0, 0, 1, NULL, NULL),
(60, 8, 14, 0, 0, 0, 0, 1, NULL, NULL),
(61, 8, 15, 0, 0, 0, 0, 1, NULL, NULL),
(62, 8, 16, 0, 0, 0, 0, 1, NULL, NULL),
(63, 8, 17, 0, 0, 0, 0, 1, NULL, NULL),
(64, 8, 33, 0, 0, 0, 0, 1, NULL, NULL),
(65, 8, 34, 0, 0, 0, 0, 1, NULL, NULL),
(66, 8, 35, 0, 0, 0, 0, 1, NULL, NULL),
(67, 8, 36, 0, 0, 0, 0, 1, NULL, NULL),
(68, 8, 37, 0, 0, 0, 0, 1, NULL, NULL),
(69, 8, 38, 0, 0, 0, 0, 1, NULL, NULL),
(70, 9, 1, 1, 1, 1, 1, 1, NULL, NULL),
(71, 9, 2, 1, 1, 1, 1, 1, NULL, NULL),
(72, 9, 3, 0, 0, 0, 0, 1, NULL, NULL),
(73, 9, 4, 0, 0, 0, 0, 1, NULL, NULL),
(74, 9, 5, 0, 0, 0, 0, 1, NULL, NULL),
(75, 9, 6, 0, 0, 0, 0, 1, NULL, NULL),
(76, 9, 7, 0, 0, 0, 0, 1, NULL, NULL),
(77, 9, 8, 0, 0, 0, 0, 1, NULL, NULL),
(78, 9, 9, 0, 0, 0, 0, 1, NULL, NULL),
(79, 9, 10, 0, 0, 0, 0, 1, NULL, NULL),
(80, 9, 11, 0, 0, 0, 0, 1, NULL, NULL),
(81, 9, 12, 0, 0, 0, 0, 1, NULL, NULL),
(82, 9, 13, 0, 0, 0, 0, 1, NULL, NULL),
(83, 9, 14, 0, 0, 0, 0, 1, NULL, NULL),
(84, 9, 15, 0, 0, 0, 0, 1, NULL, NULL),
(85, 9, 16, 0, 0, 0, 0, 1, NULL, NULL),
(86, 9, 17, 0, 0, 0, 0, 1, NULL, NULL),
(87, 9, 33, 0, 0, 0, 0, 1, NULL, NULL),
(88, 9, 34, 0, 0, 0, 0, 1, NULL, NULL),
(89, 9, 35, 0, 0, 0, 0, 1, NULL, NULL),
(90, 9, 36, 0, 0, 0, 0, 1, NULL, NULL),
(91, 9, 37, 0, 0, 0, 0, 1, NULL, NULL),
(92, 9, 38, 0, 0, 0, 0, 1, NULL, NULL),
(93, 10, 1, 1, 1, 1, 1, 1, NULL, NULL),
(94, 10, 2, 1, 1, 1, 1, 1, NULL, NULL),
(95, 10, 3, 1, 1, 1, 1, 1, NULL, NULL),
(96, 10, 4, 1, 1, 1, 1, 1, NULL, NULL),
(97, 10, 5, 0, 0, 0, 0, 1, NULL, NULL),
(98, 10, 6, 0, 0, 0, 0, 1, NULL, NULL),
(99, 10, 7, 0, 0, 0, 0, 1, NULL, NULL),
(100, 10, 8, 0, 0, 0, 0, 1, NULL, NULL),
(101, 10, 9, 0, 0, 0, 0, 1, NULL, NULL),
(102, 10, 10, 0, 0, 0, 0, 1, NULL, NULL),
(103, 10, 11, 0, 0, 0, 0, 1, NULL, NULL),
(104, 10, 12, 0, 0, 0, 0, 1, NULL, NULL),
(105, 10, 13, 0, 0, 0, 0, 1, NULL, NULL),
(106, 10, 14, 0, 0, 0, 0, 1, NULL, NULL),
(107, 10, 15, 0, 0, 0, 0, 1, NULL, NULL),
(108, 10, 16, 0, 0, 0, 0, 1, NULL, NULL),
(109, 10, 17, 0, 0, 0, 0, 1, NULL, NULL),
(110, 10, 33, 0, 0, 0, 0, 1, NULL, NULL),
(111, 10, 34, 0, 0, 0, 0, 1, NULL, NULL),
(112, 10, 35, 0, 0, 0, 0, 1, NULL, NULL),
(113, 10, 36, 0, 0, 0, 0, 1, NULL, NULL),
(114, 10, 37, 0, 0, 0, 0, 1, NULL, NULL),
(115, 10, 38, 0, 0, 0, 0, 1, NULL, NULL),
(116, 11, 1, 1, 1, 1, 1, 1, NULL, NULL),
(117, 11, 2, 1, 1, 1, 1, 1, NULL, NULL),
(118, 11, 3, 0, 0, 0, 0, 1, NULL, NULL),
(119, 11, 4, 0, 0, 0, 0, 1, NULL, NULL),
(120, 11, 5, 0, 0, 0, 0, 1, NULL, NULL),
(121, 11, 6, 0, 0, 0, 0, 1, NULL, NULL),
(122, 11, 7, 0, 0, 0, 0, 1, NULL, NULL),
(123, 11, 8, 0, 0, 0, 0, 1, NULL, NULL),
(124, 11, 9, 0, 0, 0, 0, 1, NULL, NULL),
(125, 11, 10, 0, 0, 0, 0, 1, NULL, NULL),
(126, 11, 11, 0, 0, 0, 0, 1, NULL, NULL),
(127, 11, 12, 0, 0, 0, 0, 1, NULL, NULL),
(128, 11, 13, 0, 0, 0, 0, 1, NULL, NULL),
(129, 11, 14, 0, 0, 0, 0, 1, NULL, NULL),
(130, 11, 15, 0, 0, 0, 0, 1, NULL, NULL),
(131, 11, 16, 0, 0, 0, 0, 1, NULL, NULL),
(132, 11, 17, 0, 0, 0, 0, 1, NULL, NULL),
(133, 11, 33, 0, 0, 0, 0, 1, NULL, NULL),
(134, 11, 34, 0, 0, 0, 0, 1, NULL, NULL),
(135, 11, 35, 0, 0, 0, 0, 1, NULL, NULL),
(136, 11, 36, 0, 0, 0, 0, 1, NULL, NULL),
(137, 11, 37, 0, 0, 0, 0, 1, NULL, NULL),
(138, 11, 38, 0, 0, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `pId` int(11) DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_count` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colour` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `pId`, `business_name`, `email`, `phone_number`, `city`, `state`, `reservation_count`, `notes`, `colour`, `active`, `created_at`, `updated_at`) VALUES
(1, 595085, 'Test vendor', 'tommy@wasteremovalusa.com', '(111) 111-1111', 'Acworth', 'Georgia', 11, '', 'BEFFBB', 0, NULL, NULL),
(2, 229640, 'Waste Removal USA', 'tommy@wasteremovalusa.co', '(770) 954-7888', 'Atlanta', 'Georgia', 0, '', 'FFA1A1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provider_master_details`
--

CREATE TABLE `provider_master_details` (
  `ID` int(11) NOT NULL,
  `pId` varchar(100) NOT NULL,
  `ZIP_CODE` varchar(100) DEFAULT NULL,
  `MATERIAL_TO_DISPOSE` varchar(100) DEFAULT NULL,
  `DUMPSTER_SIZE` varchar(100) DEFAULT NULL,
  `WEIGHT_CAPACITY` varchar(100) DEFAULT NULL,
  `SERVICES_FREQUENCY` varchar(100) DEFAULT NULL,
  `RENTAL_PERIOD` varchar(100) DEFAULT NULL,
  `OUR_RENTAL_PERIOD` varchar(100) DEFAULT NULL,
  `TYPE_OF_PRICING` varchar(100) DEFAULT NULL,
  `COST_OF_DUMPSTER` varchar(100) DEFAULT NULL,
  `RETAIL_COST_OF_DUMPSTER` varchar(100) DEFAULT NULL,
  `AVERAGE_COST_PER_TON` varchar(100) DEFAULT NULL,
  `AVERAGE_RETAIL_PER_TON` varchar(100) DEFAULT NULL,
  `EXTRA_DAY_CHARGE_COST` varchar(100) DEFAULT NULL,
  `EXTRA_DAY_CHARGE_RETAIL` varchar(100) DEFAULT NULL,
  `TRIP_CHARGE_COST` varchar(100) DEFAULT NULL,
  `TRIP_CHARGE_RETAIL` varchar(100) DEFAULT NULL,
  `TAX` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider_master_details`
--

INSERT INTO `provider_master_details` (`ID`, `pId`, `ZIP_CODE`, `MATERIAL_TO_DISPOSE`, `DUMPSTER_SIZE`, `WEIGHT_CAPACITY`, `SERVICES_FREQUENCY`, `RENTAL_PERIOD`, `OUR_RENTAL_PERIOD`, `TYPE_OF_PRICING`, `COST_OF_DUMPSTER`, `RETAIL_COST_OF_DUMPSTER`, `AVERAGE_COST_PER_TON`, `AVERAGE_RETAIL_PER_TON`, `EXTRA_DAY_CHARGE_COST`, `EXTRA_DAY_CHARGE_RETAIL`, `TRIP_CHARGE_COST`, `TRIP_CHARGE_RETAIL`, `TAX`) VALUES
(1, '1', '63010', 'C&D', '10', '1 Tons', NULL, '14 days', '14 days', 'Haul + tonnage', '$225 ', '$298 ', '$50.00 ', '$79 ', '$5 per day', '$10 per day', '$75 ', '$150 ', NULL),
(2, '1', '63011', 'C&D', '10', '1 Tons', NULL, '14 days', '14 days', 'Haul + tonnage', '$225 ', '$298 ', '$50.00 ', '$79 ', '$5 per day', '$10 per day', '$75 ', '$150 ', NULL),
(3, '1', '63012', 'cement', '11', '2 Tons', '1', '15 days', '15 days', 'Haul + tonnage', '$226 ', '$299 ', '$51.00 ', '$80 ', '$5 per day', '$10 per day', '$76 ', '$151 ', NULL),
(4, '1', '63013', 'cement', '11', '2 Tons', '1', '15 days', '15 days', 'Haul + tonnage', '$226 ', '$299 ', '$51.00 ', '$80 ', '$5 per day', '$10 per day', '$76 ', '$151 ', NULL),
(5, '1', '63014', 'cement', '12', '3 Tons', '2', '16 days', '16 days', 'Haul + tonnage', '$227 ', '$300 ', '$52.00 ', '$81 ', '$5 per day', '$10 per day', '$77 ', '$152 ', NULL),
(6, '1', '63015', 'cement', '13', '4 Tons', '3', '17 days', '17 days', 'Haul + tonnage', '$228 ', '$301 ', '$53.00 ', '$82 ', '$5 per day', '$10 per day', '$78 ', '$153 ', NULL),
(7, '1', '29601', 'Portable Toilets', NULL, NULL, 'Daily', '7 days', '7 days', NULL, '$229 ', '$302 ', NULL, NULL, '$5 per day', '$10 per day', '$79 ', '$154 ', NULL),
(8, '1', '29601', 'Portable Toilets', NULL, NULL, 'Daily', '8 days', '8 days', NULL, '$230 ', '$303 ', NULL, NULL, '$5 per day', '$10 per day', '$80 ', '$155 ', NULL),
(9, '1', '30044', 'sand', '9', NULL, NULL, '8 days', '8 days', 'Haul + tonnage', '$230 ', '$303 ', '$51 ', '$81', '$5 per day', '$10 per day', '$80 ', '$155 ', NULL),
(10, '1', '30044', 'cement', '22', '4 Tons', NULL, '9 days', '9 days', 'Haul + tonnage', '$231 ', '$304 ', '$52 ', '$82', '$5 per day', '$10 per day', '$81 ', '$156 ', NULL),
(11, '1', '30046', 'cement', '11', '4 Tons', NULL, '9 days', '9 days', 'Haul + tonnage', '$231 ', '$304 ', '$52 ', '$82', '$5 per day', '$10 per day', '$81 ', '$156 ', NULL),
(12, '1', '30008', 'cement', '11', '4 Tons', NULL, '9 days', '9 days', 'Haul + tonnage', '$231 ', '$304 ', '$52 ', '$82', '$5 per day', '$10 per day', '$81 ', '$156 ', NULL),
(13, '1', '30009', 'sand', '18', '4 Tons', NULL, '9 days', '9 days', 'Haul + tonnage', '$231 ', '$304 ', '$52 ', '$82', '$5 per day', '$10 per day', '$81 ', '$156 ', NULL),
(14, '1', '30038', 'sand', '18', '4 Tons', NULL, '9 days', '9 days', 'Haul + tonnage', '$231 ', '$304 ', '$52 ', '$82', '$5 per day', '$10 per day', '$81 ', '$156 ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `Qid` int(11) NOT NULL,
  `delivery_address` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `onSiteName` varchar(100) DEFAULT NULL,
  `onSitecontact_number` varchar(100) DEFAULT NULL,
  `set_range` varchar(244) DEFAULT NULL,
  `type_of_material` varchar(255) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `delivery_date` varchar(255) DEFAULT NULL,
  `pickup_date` varchar(255) DEFAULT NULL,
  `call_for_pickup_flag` varchar(11) DEFAULT '0',
  `deliverTime` varchar(255) DEFAULT NULL,
  `pickupTime` varchar(255) DEFAULT NULL,
  `cust_id` varchar(11) DEFAULT NULL,
  `orp` varchar(255) DEFAULT NULL,
  `rental_period` varchar(255) DEFAULT NULL,
  `dumpstersize` varchar(255) DEFAULT NULL,
  `placement` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `ponumber` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `tcost` varchar(255) DEFAULT NULL,
  `lastTransactionAmount` varchar(100) DEFAULT '0',
  `paidAmount` varchar(100) DEFAULT '0',
  `amountLeft` varchar(100) DEFAULT '0',
  `trip` varchar(100) DEFAULT NULL,
  `overage` varchar(100) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `term` varchar(100) DEFAULT NULL,
  `service_frequency` varchar(100) DEFAULT NULL,
  `w_capacity_initial` varchar(11) DEFAULT NULL,
  `w_capacity` varchar(100) DEFAULT NULL,
  `e_day_retail` varchar(100) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL,
  `quantover` varchar(10) DEFAULT NULL,
  `quantday` varchar(10) DEFAULT NULL,
  `edcost` varchar(100) DEFAULT NULL,
  `eweight` varchar(100) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `orange_flag` int(11) DEFAULT 0,
  `green_flag` int(11) NOT NULL DEFAULT 0,
  `minDump` varchar(11) DEFAULT NULL,
  `maxDump` varchar(11) DEFAULT NULL,
  `expiredQuote` int(11) DEFAULT 0,
  `ptn` varchar(255) DEFAULT NULL,
  `ptndesc` varchar(255) DEFAULT NULL,
  `customer_service_flag` varchar(11) NOT NULL DEFAULT '0',
  `paidStatus` int(11) NOT NULL DEFAULT 0,
  `PartialPayment` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ImagePic` varchar(100) DEFAULT NULL,
  `discount` varchar(11) DEFAULT NULL,
  `discountDescription` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`Qid`, `delivery_address`, `lead_source`, `zipcode`, `email`, `first_name`, `last_name`, `phone_number`, `onSiteName`, `onSitecontact_number`, `set_range`, `type_of_material`, `sales_id`, `delivery_date`, `pickup_date`, `call_for_pickup_flag`, `deliverTime`, `pickupTime`, `cust_id`, `orp`, `rental_period`, `dumpstersize`, `placement`, `note`, `provider_id`, `ponumber`, `cost`, `tcost`, `lastTransactionAmount`, `paidAmount`, `amountLeft`, `trip`, `overage`, `tax`, `term`, `service_frequency`, `w_capacity_initial`, `w_capacity`, `e_day_retail`, `quantity`, `quantover`, `quantday`, `edcost`, `eweight`, `date`, `token`, `status`, `orange_flag`, `green_flag`, `minDump`, `maxDump`, `expiredQuote`, `ptn`, `ptndesc`, `customer_service_flag`, `paidStatus`, `PartialPayment`, `created_at`, `updated_at`, `ImagePic`, `discount`, `discountDescription`) VALUES
(1, 'Acworth Guns, N Main St, Acworth, GA, USA', 'Newspaper', '63010', 'bkanyal824@gmail.com', 'Bhupender', 'Singh', '(790) 633-5103', NULL, NULL, '10-20', 'C&D', 1, '03/11/2022', '03/11/2022', '0', 'After 1 PM', 'After 1 PM', '1', '14', '14 days', '10', '', '', '595085', '', '$298', '310.59', '0', '0', '310.59', '0', '$79', 0.04225, '7 Days', '', '1 Tons', '1Ton', '$10 per day', '1', '0', '0', '0', '0', '03/10/2022', '13e7trjnhx', 1, 0, 0, '10', '20', 0, NULL, NULL, '0', 0, 0, '2022-03-10 14:13:01', '2022-03-10 19:51:01', NULL, '0', ''),
(2, 'Lucknow, Uttar Pradesh, India', 'Newspaper', '63010', 'rajshekhartiwari14@gmail.com', 'Miska', 'Tiwari', '(897) 485-9583', NULL, NULL, '10-20', 'C&D', 1, '03/23/2022', '03/23/2022', '0', 'After 1 PM', 'After 1 PM', '2', '14', '14 days', '10', '', '', '595085', '', '$298', '310.59', '0', '310.59', '0', '0', '$79', 0.04225, '-', '', '1 Tons', '1Ton', '$10 per day', '1', '0', '0', '0', '0', '03/10/2022', 'laxm7siy2d', 1, 0, 0, '10', '20', 0, NULL, NULL, '0', 1, 0, '2022-03-10 14:19:12', '2022-03-10 19:49:48', NULL, '0', ''),
(3, 'Acworth Guns, N Main St, Acworth, GA, USA', 'Newspaper', '63010', 'bkanyal824@gmail.com', 'Bhupender', 'Singh', '(000) 516-5626', '', '', '10-20', 'C&D', 1, '03/12/2022', '03/12/2022', '0', 'Before 11 AM', 'Before 11 AM', '16', '14', '14 days', '10', '', '', '595085', '', '$298', '310.59', '0', '0', '310.59', '0', '$79', 0.04225, '14 Days', '', '1 Tons', '1Ton', '$10 per day', '1', '0', '0', '0', '0', '03/11/2022', '6n8qy9amkx', 1, 0, 0, '10', '20', 0, NULL, NULL, '0', 0, 0, '2022-03-11 02:33:43', '2022-03-11 08:21:50', NULL, '0', ''),
(4, 'Acworth Guns, N Main St, Acworth, GA, USA', 'Friends', '63010', 'bkanyal824@gmail.com', 'Bhupender', 'Singh', '(790) 633-5103', NULL, NULL, '10-20', 'C&D', 1, '03/24/2022', '03/12/2022', '0', 'Before 11 AM', 'Before 11 AM', '1', '14', '14 days', '10', '', '', '595085', '', '$298', '310.59', '200', '310.59', '0', '0', '$79', 0.04225, '-', '', '1 Tons', '1Ton', '$10 per day', '1', '0', '0', '0', '0', '03/11/2022', 'hr2w4pca9d', 1, 0, 0, '10', '20', 0, NULL, NULL, '0', 1, 1, '2022-03-11 02:55:15', '2022-03-11 10:00:50', NULL, '0', ''),
(5, 'Acworth Guns, N Main St, Acworth, GA, USA', 'Newspaper', '63010', 'bkanyal824@gmail.com', 'Bhupender', 'Singh', '(000) 516-5626', NULL, NULL, '10-20', 'C&D', 1, '03/25/2022', '03/25/2022', '0', 'After 1 PM', 'After 1 PM', '16', '14', '14 days', '10', '', '', '595085', '', '$298', '310.59', '0', '0', '310.59', '0', '$79', 0.04225, '14 Days', '', '1 Tons', '1Ton', '$10 per day', '1', '0', '0', '0', '0', '03/11/2022', 'agr2pmjxqs', 1, 0, 0, '10', '20', 0, NULL, NULL, '0', 0, 0, '2022-03-11 09:56:34', '2022-03-11 15:28:27', NULL, '0', ''),
(6, 'Acworth Guns, N Main St, Acworth, GA, USA', 'Newspaper', '63010', 'bkanyal824@gmail.com', 'Bhupender', 'Singh', '(000) 516-5626', NULL, NULL, '10-20', 'C&D', 1, '03/17/2022', '03/17/2022', '0', 'Before 11 AM', 'Before 11 AM', '16', '14', '14 days', '10', '', '', '595085', '', '$298', '310.59', '200', '200', '110.59', '0', '$79', 0.04225, '-', '', '1 Tons', '1Ton', '$10 per day', '1', '0', '0', '0', '0', '03/11/2022', 'nse8a4k6jg', 1, 0, 0, '10', '20', 0, NULL, NULL, '0', 0, 1, '2022-03-11 10:02:28', '2022-03-11 15:34:05', NULL, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tId` int(11) NOT NULL,
  `tquote_id` bigint(20) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `provider_id` varchar(100) DEFAULT NULL,
  `Card_Number` varchar(100) DEFAULT NULL,
  `cardexp` varchar(100) DEFAULT NULL,
  `cardtype` varchar(100) DEFAULT NULL,
  `accountNumber` varchar(100) DEFAULT NULL,
  `routingNumber` varchar(100) DEFAULT NULL,
  `tokenpayment` varchar(100) DEFAULT NULL,
  `token_from_quote` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `operation` varchar(1000) DEFAULT NULL,
  `tresponse` varchar(1000) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `tstatus` int(11) DEFAULT 0,
  `charges_status` int(11) DEFAULT 0,
  `transactionDate` varchar(100) DEFAULT NULL,
  `transactionDateTime` datetime DEFAULT NULL,
  `tCust_id` varchar(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tId`, `tquote_id`, `firstName`, `lastName`, `provider_id`, `Card_Number`, `cardexp`, `cardtype`, `accountNumber`, `routingNumber`, `tokenpayment`, `token_from_quote`, `source`, `operation`, `tresponse`, `amount`, `tstatus`, `charges_status`, `transactionDate`, `transactionDateTime`, `tCust_id`, `description`) VALUES
(1, 2, 'Miska', 'Tiwari', '595085', '1111', '1223', 'Visa', NULL, NULL, '2f8dd1c4df5e4300996f8a43203013b4', 'laxm7siy2d', 'iCheck', '', 'APPROVED|XABJ|Tiwari|Miska||Lucknow, Uttar Pradesh, India||82ea8fdccca0|||||**************1111|1223|310.59|||rajshekhartiwari14@gmail.com|N|| - |3/10/2022 9:19:46 AM||||Visa|', '310.59', 1, 0, '03/10/2022', '2022-03-10 14:19:48', '2', NULL),
(4, 4, 'Bhupender', 'Singh', '595085', '1111', '1225', 'Visa', NULL, NULL, '82cf33b8b9c74f249450bb740c202d9c', 'hr2w4pca9d', 'iCheck', '', 'APPROVED|XABJ|Singh|Bhupender||Acworth Guns, N Main St, Acworth, GA, USA||1570805cc75c|||||**************1111|1225|200|||bkanyal824@gmail.com|N|| - |3/10/2022 11:13:21 PM||||Visa|', '200', 0, 0, '03/11/2022', '2022-03-11 04:13:22', NULL, 'Partial payment'),
(5, 4, 'Bhupender', 'Singh', '595085', '1111', '1225', 'Visa', NULL, NULL, '15e607547911429ea2c732ed4b302441', 'hr2w4pca9d', 'iCheck', '', 'APPROVED|XABJ|Singh|Bhupender||Acworth Guns, N Main St, Acworth, GA, USA||a53c34916cd7|||||**************1111|1225|110.59|||bkanyal824@gmail.com|N|| - |3/10/2022 11:21:36 PM||||Visa|', '110.59', 1, 0, '03/11/2022', '2022-03-11 04:21:38', '1', 'Partial payment'),
(6, 3, NULL, NULL, '595085', NULL, NULL, NULL, NULL, NULL, NULL, '6n8qy9amkx', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL),
(7, 5, NULL, NULL, '595085', NULL, NULL, NULL, NULL, NULL, NULL, 'agr2pmjxqs', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL),
(8, 6, 'Bhupender', 'Singh', '595085', '1111', '1224', 'Visa', NULL, NULL, '1e2d891e3edf4c90a5f67d40dfc0a3f3', 'nse8a4k6jg', 'iCheck', '', 'APPROVED|XABJ|Singh|Bhupender||Acworth Guns, N Main St, Acworth, GA, USA||5c6942a8d8eb|||||**************1111|1224|200|||bkanyal824@gmail.com|N|| - |3/11/2022 5:04:03 AM||||Visa|', '200', 0, 0, '03/11/2022', '2022-03-11 10:04:05', NULL, 'Partial payment');

-- --------------------------------------------------------

--
-- Table structure for table `update_charges`
--

CREATE TABLE `update_charges` (
  `uId` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `Qid` int(11) DEFAULT NULL,
  `addextraweight` varchar(100) DEFAULT NULL,
  `addextraday` varchar(100) DEFAULT NULL,
  `addextratrip` varchar(100) DEFAULT NULL,
  `eweight` varchar(100) DEFAULT NULL,
  `eday` varchar(100) DEFAULT NULL,
  `etrip` varchar(100) DEFAULT NULL,
  `eweightcost` varchar(100) DEFAULT NULL,
  `edaycost` varchar(100) DEFAULT NULL,
  `etripcost` varchar(100) DEFAULT NULL,
  `etcost` varchar(100) DEFAULT NULL,
  `misc` varchar(255) DEFAULT NULL,
  `utoken` varchar(100) DEFAULT NULL,
  `udate` varchar(100) DEFAULT NULL,
  `deliver_extra` varchar(110) DEFAULT NULL,
  `pickup_extra` varchar(100) DEFAULT NULL,
  `e_d_desc` varchar(255) DEFAULT NULL,
  `e_w_desc` varchar(255) DEFAULT NULL,
  `t_c_desc` varchar(255) DEFAULT NULL,
  `misc_type` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `Paid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `USER_ID` int(11) NOT NULL,
  `EMAIL` varchar(1000) DEFAULT NULL,
  `USER_PASSWORD` varchar(1000) DEFAULT NULL,
  `CONTACT_NO` varchar(15) DEFAULT NULL,
  `PROFILE_ID` int(11) DEFAULT 1,
  `FIRST_NAME` varchar(200) DEFAULT NULL,
  `LAST_NAME` varchar(200) DEFAULT NULL,
  `USER_NAME` varchar(100) DEFAULT NULL,
  `ACTIVE` int(11) DEFAULT 0,
  `EMPLOYEE_CODE` varchar(50) DEFAULT NULL,
  `DATE_OF_JOINING` datetime DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT 0,
  `ADDRESS` varchar(150) DEFAULT NULL,
  `CITY` int(11) DEFAULT 0,
  `STATE` int(11) DEFAULT 0,
  `COUNTRY` int(11) DEFAULT 0,
  `ADD_DATE` datetime DEFAULT NULL,
  `ADD_USER_ID` int(11) DEFAULT 0,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_USER_ID` int(11) DEFAULT 0,
  `ATTEMPT_FLAG` int(11) DEFAULT 0,
  `NEXT_ATTEMPT_TIME` datetime DEFAULT NULL,
  `BLOCKED_FLAG` int(11) DEFAULT 0,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `PROFILE_PIC` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`USER_ID`, `EMAIL`, `USER_PASSWORD`, `CONTACT_NO`, `PROFILE_ID`, `FIRST_NAME`, `LAST_NAME`, `USER_NAME`, `ACTIVE`, `EMPLOYEE_CODE`, `DATE_OF_JOINING`, `PARENT_ID`, `ADDRESS`, `CITY`, `STATE`, `COUNTRY`, `ADD_DATE`, `ADD_USER_ID`, `UPDATE_DATE`, `UPDATE_USER_ID`, `ATTEMPT_FLAG`, `NEXT_ATTEMPT_TIME`, `BLOCKED_FLAG`, `DATE_OF_BIRTH`, `PROFILE_PIC`) VALUES
(1, 'admin@wasteremoval.com', '1', '(123) 123-1231', 1, 'waste removal', 'usa', 'wasteremoval', 1, NULL, NULL, 0, 'home', 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, '1642492804.jpg'),
(2, 'bhupendersingh.evontech@gmail.com', '1', '790-633-5103', 1, 'Bhupender', 'Singh', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, '/img/Dummy-Icon-Male.jpg'),
(4, 'ankur@wasteremovalusa.com', 'Waste2019!', '100-000-0000', 1, 'Ankur', 'Patel', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, '/img/Dummy-Icon-Male.jpg'),
(5, 'rajshekhartiwari14@gmail.com', 'Evon@123', '857-496-8574', 1, 'Tester', 'Evon', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, '/img/Dummy-Icon-Male.jpg'),
(6, 'tommy@wasteremovalusa.com', 'Golfball19!', '(770) 954-7888', 1, 'Tommy', 'Ford', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, '/img/Dummy-Icon-Male.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_vendors`
--
ALTER TABLE `assigned_vendors`
  ADD PRIMARY KEY (`assigned_id`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_emails`
--
ALTER TABLE `customer_emails`
  ADD PRIMARY KEY (`ce_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPARTMENT_ID`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenseId`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `i_check`
--
ALTER TABLE `i_check`
  ADD PRIMARY KEY (`ip_id`);

--
-- Indexes for table `masterdataproperties`
--
ALTER TABLE `masterdataproperties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_configure`
--
ALTER TABLE `module_configure`
  ADD PRIMARY KEY (`MODULE_ID`);

--
-- Indexes for table `passports`
--
ALTER TABLE `passports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passports_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paycategory`
--
ALTER TABLE `paycategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payee`
--
ALTER TABLE `payee`
  ADD PRIMARY KEY (`PayeeId`);

--
-- Indexes for table `paysubcategory`
--
ALTER TABLE `paysubcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`PROFILE_ID`);

--
-- Indexes for table `profile_module`
--
ALTER TABLE `profile_module`
  ADD PRIMARY KEY (`PROFILE_MODULE_ID`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_master_details`
--
ALTER TABLE `provider_master_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tId`);

--
-- Indexes for table `update_charges`
--
ALTER TABLE `update_charges`
  ADD PRIMARY KEY (`uId`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_vendors`
--
ALTER TABLE `assigned_vendors`
  MODIFY `assigned_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer_emails`
--
ALTER TABLE `customer_emails`
  MODIFY `ce_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPARTMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `i_check`
--
ALTER TABLE `i_check`
  MODIFY `ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `masterdataproperties`
--
ALTER TABLE `masterdataproperties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `module_configure`
--
ALTER TABLE `module_configure`
  MODIFY `MODULE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `passports`
--
ALTER TABLE `passports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paycategory`
--
ALTER TABLE `paycategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payee`
--
ALTER TABLE `payee`
  MODIFY `PayeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `paysubcategory`
--
ALTER TABLE `paysubcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `PROFILE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profile_module`
--
ALTER TABLE `profile_module`
  MODIFY `PROFILE_MODULE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `provider_master_details`
--
ALTER TABLE `provider_master_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `update_charges`
--
ALTER TABLE `update_charges`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
