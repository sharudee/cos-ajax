-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2016 at 09:44 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `commission_class`
--

CREATE TABLE IF NOT EXISTS `commission_class` (
  `id` int(10) NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `class` varchar(2) NOT NULL,
  `sale_target` decimal(9,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commission_class`
--

INSERT INTO `commission_class` (`id`, `cust_code`, `cust_name`, `class`, `sale_target`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(4, 'C0003', 'เซ็นทรัล บางนา', 'A', '10000.00', 'admin', '2016-01-14 07:28:12', 'admin', '2016-01-14 07:28:12'),
(5, 'C0001', 'aa', 'B', '20000.00', 'admin', '2016-01-14 07:31:38', 'admin', '2016-01-14 07:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `commission_mast`
--

CREATE TABLE IF NOT EXISTS `commission_mast` (
  `id` int(10) unsigned NOT NULL,
  `class` varchar(2) NOT NULL,
  `sale_start` decimal(9,2) NOT NULL,
  `sale_end` decimal(9,2) NOT NULL,
  `commission_rate` decimal(5,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commission_mast`
--

INSERT INTO `commission_mast` (`id`, `class`, `sale_start`, `sale_end`, `commission_rate`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'B', '50.00', '75.00', '10.00', 'admin', '2016-01-13 08:58:00', 'admin', '2016-01-14 06:29:05'),
(3, 'A', '25.00', '50.00', '5.00', 'admin', '2016-01-14 06:31:26', 'admin', '2016-01-14 06:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `commission_pc`
--

CREATE TABLE IF NOT EXISTS `commission_pc` (
  `id` int(10) unsigned NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `emp_code` varchar(6) NOT NULL,
  `commission_amt` decimal(8,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `cos_invdet`
--

CREATE TABLE IF NOT EXISTS `cos_invdet` (
  `id` int(10) unsigned NOT NULL,
  `cos_entity` varchar(8) NOT NULL,
  `cos_no` varchar(2) NOT NULL,
  `doc_code` varchar(4) NOT NULL,
  `doc_no` varchar(12) NOT NULL,
  `item` int(3) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `bar_code` varchar(14) NOT NULL,
  `uom_code` varchar(4) NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `disc_rate` decimal(5,2) NOT NULL,
  `vat_rate` decimal(5,2) NOT NULL,
  `qty` decimal(8,2) NOT NULL,
  `amt` decimal(8,2) NOT NULL,
  `disc_amt` decimal(8,2) NOT NULL,
  `vat_amt` decimal(8,2) NOT NULL,
  `net_amt` decimal(8,2) NOT NULL,
  `ds_no` varchar(12) DEFAULT NULL,
  `sku` varchar(22) DEFAULT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `cos_invmast`
--

CREATE TABLE IF NOT EXISTS `cos_invmast` (
  `id` int(10) unsigned NOT NULL,
  `cos_entity` varchar(8) NOT NULL,
  `cos_no` varchar(2) NOT NULL,
  `doc_code` varchar(4) NOT NULL,
  `doc_no` varchar(12) NOT NULL,
  `doc_date` date NOT NULL,
  `req_date` date DEFAULT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `ship_titlename` varchar(10) NOT NULL,
  `ship_custcode` varchar(8) NOT NULL,
  `ship_custname` varchar(50) NOT NULL,
  `ship_custsurname` varchar(50) NOT NULL,
  `ship_address1` varchar(50) NOT NULL,
  `ship_address2` varchar(50) DEFAULT NULL,
  `ship_tel` varchar(30) NOT NULL,
  `prov_code` varchar(2) NOT NULL,
  `post_code` varchar(5) NOT NULL,
  `email_address` varchar(30) DEFAULT NULL,
  `po_file` varchar(30) NOT NULL,
  `map_file` varchar(30) DEFAULT NULL,
  `gp1` decimal(5,2) NOT NULL,
  `gp2` decimal(5,2) DEFAULT NULL,
  `gp3` decimal(5,2) DEFAULT NULL,
  `disc_cust` decimal(5,2) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `sm_code` varchar(8) NOT NULL,
  `wh_code` varchar(8) NOT NULL,
  `vat_rate` decimal(9,2) NOT NULL,
  `tot_qty` decimal(9,2) NOT NULL,
  `tot_amt` decimal(9,2) NOT NULL,
  `tot_vatamt` decimal(9,2) NOT NULL,
  `tot_netamt` decimal(9,2) NOT NULL,
  `tot_discamt` decimal(9,2) NOT NULL,
  `tot_subamt` decimal(9,2) NOT NULL,
  `remark1` varchar(50) DEFAULT NULL,
  `remark2` varchar(50) DEFAULT NULL,
  `doccan_by` varchar(15) DEFAULT NULL,
  `doccan_date` date DEFAULT NULL,
  `doccan_rem` varchar(50) DEFAULT NULL,
  `tf_st` varchar(1) DEFAULT '',
  `tf_by` varchar(15) DEFAULT NULL,
  `tf_date` date DEFAULT NULL,
  `ictran_code` varchar(4) NOT NULL,
  `doc_status` varchar(4) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cos_itemdet`
--

CREATE TABLE IF NOT EXISTS `cos_itemdet` (
  `id` int(10) unsigned NOT NULL,
  `cos_entity` varchar(8) NOT NULL,
  `cos_no` varchar(2) NOT NULL,
  `doc_code` varchar(4) NOT NULL,
  `doc_no` varchar(12) NOT NULL,
  `item` int(3) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `bar_code` varchar(14) NOT NULL,
  `uom_code` varchar(4) NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `qty` decimal(8,2) NOT NULL,
  `amt` decimal(8,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `cos_itemmast`
--

CREATE TABLE IF NOT EXISTS `cos_itemmast` (
  `id` int(10) unsigned NOT NULL,
  `cos_entity` varchar(8) NOT NULL,
  `cos_no` varchar(2) NOT NULL,
  `doc_code` varchar(4) NOT NULL,
  `doc_no` varchar(12) NOT NULL,
  `doc_date` date NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `wh_code` varchar(8) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `tot_qty` decimal(9,2) NOT NULL,
  `tot_amt` decimal(9,2) NOT NULL,
  `gen_by` varchar(15) DEFAULT NULL,
  `gen_date` date DEFAULT NULL,
  `doccan_by` varchar(15) DEFAULT NULL,
  `doccan_date` date DEFAULT NULL,
  `doc_status` varchar(4) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `cos_pcmast`
--

CREATE TABLE IF NOT EXISTS `cos_pcmast` (
  `id` int(10) unsigned NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `emp_code` varchar(6) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cos_pcmast`
--

INSERT INTO `cos_pcmast` (`id`, `cust_code`, `emp_code`, `emp_name`, `tel`, `email`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(26, '', '00024', 'อนันต์ สดใส', '021552315', 'test@test.com', 'admin', '2016-01-08 01:20:34', 'admin', '2016-01-08 01:20:34'),
(32, 'CXXXY', '00016', 'สมหมาย', '01', 't@t.com', 'admin', '2016-01-08 07:05:19', 'admin', '2016-01-08 07:05:19'),
(34, 'CXXXX', '00016', 'สมหมาย', '01', 't@t.com', 'admin', '2016-01-08 07:19:08', 'admin', '2016-01-08 07:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `cos_pcwork`
--

CREATE TABLE IF NOT EXISTS `cos_pcwork` (
  `id` int(10) unsigned NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `emp_code` varchar(6) NOT NULL,
  `work_date` date NOT NULL,
  `work_type` varchar(1) NOT NULL,
  `pc_type` varchar(1) NOT NULL,
  `time_start` varchar(5) NOT NULL,
  `time_end` varchar(5) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cos_pcwork`
--

INSERT INTO `cos_pcwork` (`id`, `year`, `month`, `cust_code`, `emp_code`, `work_date`, `work_type`, `pc_type`, `time_start`, `time_end`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(489, 2016, 1, 'CXXXX', '00016', '2016-01-01', '2', 'T', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-13 04:15:30'),
(490, 2016, 1, 'CXXXX', '00016', '2016-01-02', '2', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-13 04:15:51'),
(491, 2016, 1, 'CXXXX', '00016', '2016-01-03', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(492, 2016, 1, 'CXXXX', '00016', '2016-01-04', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(493, 2016, 1, 'CXXXX', '00016', '2016-01-05', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(494, 2016, 1, 'CXXXX', '00016', '2016-01-06', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(495, 2016, 1, 'CXXXX', '00016', '2016-01-07', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(496, 2016, 1, 'CXXXX', '00016', '2016-01-08', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(497, 2016, 1, 'CXXXX', '00016', '2016-01-09', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(498, 2016, 1, 'CXXXX', '00016', '2016-01-10', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(499, 2016, 1, 'CXXXX', '00016', '2016-01-11', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(500, 2016, 1, 'CXXXX', '00016', '2016-01-12', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(501, 2016, 1, 'CXXXX', '00016', '2016-01-13', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(502, 2016, 1, 'CXXXX', '00016', '2016-01-14', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(503, 2016, 1, 'CXXXX', '00016', '2016-01-15', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(504, 2016, 1, 'CXXXX', '00016', '2016-01-16', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(505, 2016, 1, 'CXXXX', '00016', '2016-01-17', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(506, 2016, 1, 'CXXXX', '00016', '2016-01-18', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(507, 2016, 1, 'CXXXX', '00016', '2016-01-19', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(508, 2016, 1, 'CXXXX', '00016', '2016-01-20', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(509, 2016, 1, 'CXXXX', '00016', '2016-01-21', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(510, 2016, 1, 'CXXXX', '00016', '2016-01-22', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(511, 2016, 1, 'CXXXX', '00016', '2016-01-23', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(512, 2016, 1, 'CXXXX', '00016', '2016-01-24', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(513, 2016, 1, 'CXXXX', '00016', '2016-01-25', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(514, 2016, 1, 'CXXXX', '00016', '2016-01-26', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(515, 2016, 1, 'CXXXX', '00016', '2016-01-27', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(516, 2016, 1, 'CXXXX', '00016', '2016-01-28', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(517, 2016, 1, 'CXXXX', '00016', '2016-01-29', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(518, 2016, 1, 'CXXXX', '00016', '2016-01-30', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(519, 2016, 1, 'CXXXX', '00016', '2016-01-31', '1', 'P', '', '', 'admin', '2016-01-12 09:08:36', 'admin', '2016-01-12 09:08:36'),
(520, 2016, 1, 'CXXXX', '00014', '2016-01-01', '1', 'P', '', '', 'admin', '2016-01-12 09:09:19', 'admin', '2016-01-12 09:09:19'),
(521, 2016, 1, 'CXXXX', '00014', '2016-01-02', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(522, 2016, 1, 'CXXXX', '00014', '2016-01-03', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(523, 2016, 1, 'CXXXX', '00014', '2016-01-04', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(524, 2016, 1, 'CXXXX', '00014', '2016-01-05', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(525, 2016, 1, 'CXXXX', '00014', '2016-01-06', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(526, 2016, 1, 'CXXXX', '00014', '2016-01-07', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(527, 2016, 1, 'CXXXX', '00014', '2016-01-08', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(528, 2016, 1, 'CXXXX', '00014', '2016-01-09', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(529, 2016, 1, 'CXXXX', '00014', '2016-01-10', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(530, 2016, 1, 'CXXXX', '00014', '2016-01-11', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(531, 2016, 1, 'CXXXX', '00014', '2016-01-12', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(532, 2016, 1, 'CXXXX', '00014', '2016-01-13', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(533, 2016, 1, 'CXXXX', '00014', '2016-01-14', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(534, 2016, 1, 'CXXXX', '00014', '2016-01-15', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(535, 2016, 1, 'CXXXX', '00014', '2016-01-16', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(536, 2016, 1, 'CXXXX', '00014', '2016-01-17', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(537, 2016, 1, 'CXXXX', '00014', '2016-01-18', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(538, 2016, 1, 'CXXXX', '00014', '2016-01-19', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(539, 2016, 1, 'CXXXX', '00014', '2016-01-20', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(540, 2016, 1, 'CXXXX', '00014', '2016-01-21', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(541, 2016, 1, 'CXXXX', '00014', '2016-01-22', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(542, 2016, 1, 'CXXXX', '00014', '2016-01-23', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(543, 2016, 1, 'CXXXX', '00014', '2016-01-24', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(544, 2016, 1, 'CXXXX', '00014', '2016-01-25', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(545, 2016, 1, 'CXXXX', '00014', '2016-01-26', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(546, 2016, 1, 'CXXXX', '00014', '2016-01-27', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(547, 2016, 1, 'CXXXX', '00014', '2016-01-28', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(548, 2016, 1, 'CXXXX', '00014', '2016-01-29', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(549, 2016, 1, 'CXXXX', '00014', '2016-01-30', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20'),
(550, 2016, 1, 'CXXXX', '00014', '2016-01-31', '1', 'P', '', '', 'admin', '2016-01-12 09:09:20', 'admin', '2016-01-12 09:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `cos_product`
--

CREATE TABLE IF NOT EXISTS `cos_product` (
  `id` int(10) unsigned NOT NULL,
  `cos_no` varchar(2) NOT NULL,
  `cos_entity` varchar(8) NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `bar_code` varchar(14) NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `qty_production` decimal(8,2) NOT NULL,
  `qty_return` decimal(8,2) NOT NULL,
  `qty_sale` decimal(8,2) NOT NULL,
  `qty_remand` decimal(8,2) NOT NULL,
  `qty_bal` decimal(8,2) NOT NULL,
  `pdgrp_code` varchar(4) DEFAULT NULL,
  `pdgrp_desc` varchar(40) DEFAULT NULL,
  `pdbrnd_code` varchar(4) DEFAULT NULL,
  `pdbrnd_desc` varchar(40) DEFAULT NULL,
  `pdtype_code` varchar(4) DEFAULT NULL,
  `pdtype_desc` varchar(40) DEFAULT NULL,
  `pddsgn_code` varchar(4) DEFAULT NULL,
  `pddsgn_desc` varchar(40) DEFAULT NULL,
  `pdsize_code` varchar(10) DEFAULT NULL,
  `pdsize_desc` varchar(40) DEFAULT NULL,
  `pdcolor_code` varchar(3) DEFAULT NULL,
  `pdcolor_desc` varchar(40) DEFAULT NULL,
  `pdmisc_code` varchar(2) DEFAULT NULL,
  `pdmisc_desc` varchar(40) DEFAULT NULL,
  `pdmodel_code` varchar(4) DEFAULT NULL,
  `pdmodel_desc` varchar(40) DEFAULT NULL,
  `tf_st` varchar(1) DEFAULT NULL,
  `tf_by` varchar(15) DEFAULT NULL,
  `tf_date` date DEFAULT NULL,
  `prod_st` varchar(1) DEFAULT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cos_product_img`
--

CREATE TABLE IF NOT EXISTS `cos_product_img` (
  `id` int(10) unsigned NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `item` int(3) NOT NULL,
  `prod_img` varchar(30) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custgrp_mast`
--

CREATE TABLE IF NOT EXISTS `custgrp_mast` (
  `custgrp_code` varchar(4) NOT NULL,
  `custgrp_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custgrp_mast`
--

INSERT INTO `custgrp_mast` (`custgrp_code`, `custgrp_name`) VALUES
('CDR', 'Central '),
('MDS', 'The Mall');

-- --------------------------------------------------------

--
-- Table structure for table `cust_mast`
--

CREATE TABLE IF NOT EXISTS `cust_mast` (
  `id` int(10) unsigned NOT NULL,
  `name_title` varchar(10) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `cust_surname` varchar(50) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `email_address` varchar(30) DEFAULT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `line_id` varchar(30) DEFAULT NULL,
  `map` varchar(30) DEFAULT NULL,
  `id_card` varchar(13) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `creared_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_mast`
--

CREATE TABLE IF NOT EXISTS `doc_mast` (
  `id` int(10) unsigned NOT NULL,
  `doc_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `doc_desc` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `doc_ctrl` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ictran_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `post_type` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doc_mast`
--

INSERT INTO `doc_mast` (`id`, `doc_code`, `doc_desc`, `doc_ctrl`, `ictran_code`, `post_type`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'DO', 'Delivery Order', 'DO', 'REC', 'HO', 'admin', '2016-01-06 06:45:43', 'admin', '2016-01-06 07:10:47'),
(3, 'DS', 'Daily Sales', 'DS', 'ISS', 'COS', 'admin', '2016-01-06 06:50:09', 'admin', '2016-01-06 06:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

CREATE TABLE IF NOT EXISTS `entity` (
  `id` int(10) unsigned NOT NULL,
  `entity_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `entity_tname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entity_ename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cust_grp` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` decimal(5,2) NOT NULL,
  `ent_ctrl` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cos_no` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `dsgrp_type` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `sale_type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `ret_type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entity`
--

INSERT INTO `entity` (`id`, `entity_code`, `entity_tname`, `entity_ename`, `cust_grp`, `tax_rate`, `ent_ctrl`, `cos_no`, `dsgrp_type`, `sale_type`, `ret_type`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(9, 'C0003', 'เซ็นทรัล บางนา', 'Central bangna', 'MDS', '7.00', '', '03', 'SKU', 'SO', 'RTDC', 'admin', '2015-12-16 04:25:09', 'admin', '2016-01-14 07:24:39'),
(10, 'C0002', 'เซ็นทรัล ลาดพร้าว', 'Central Ladprad', 'CDR', '7.00', '', '02', 'SKU', 'SO', 'RTDC', 'admin', '2016-01-14 07:24:30', 'admin', '2016-01-14 07:24:30'),
(11, 'C0001', 'aa', 'aa', 'CDR', '7.00', '', '01', 'SKU', 'CO', 'RTCO', 'admin', '2016-01-14 07:29:23', 'admin', '2016-01-14 07:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `incentive_mast`
--

CREATE TABLE IF NOT EXISTS `incentive_mast` (
  `id` int(10) unsigned NOT NULL,
  `pdmodel_code` varchar(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `incentive_amt` decimal(8,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `incentive_mast`
--

INSERT INTO `incentive_mast` (`id`, `pdmodel_code`, `start_date`, `end_date`, `incentive_amt`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'AA', '2016-01-15', '2016-01-31', '1000.00', 'admin', '2016-01-15 08:14:04', 'admin', '2016-01-15 08:14:04'),
(2, 'BB', '2016-01-15', '2016-01-31', '1000.00', 'admin', '2016-01-15 08:18:29', 'admin', '2016-01-15 08:18:29'),
(3, 'CC', '2016-01-15', '2016-01-31', '1000.00', 'admin', '2016-01-15 08:19:31', 'admin', '2016-01-15 08:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `incentive_pc`
--

CREATE TABLE IF NOT EXISTS `incentive_pc` (
  `id` int(10) unsigned NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `emp_code` varchar(6) NOT NULL,
  `incentive_amt` decimal(8,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_11_16_074755_create_entity_table', 1),
('2015_11_16_080527_create_doc_mast_table', 1),
('2015_11_16_083000_create_wh_mast_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_consignee`
--

CREATE TABLE IF NOT EXISTS `pmt_consignee` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `flag_grp` varchar(1) NOT NULL,
  `craeted_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_discount`
--

CREATE TABLE IF NOT EXISTS `pmt_discount` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `disc_code` varchar(4) NOT NULL,
  `pdsize_code` varchar(4) NOT NULL,
  `disc_amt` decimal(8,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_mast`
--

CREATE TABLE IF NOT EXISTS `pmt_mast` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `pmt_date` date NOT NULL,
  `pmt_desc` varchar(70) NOT NULL,
  `dept_code` varchar(6) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `ref_no` varchar(20) NOT NULL,
  `gp` decimal(5,2) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `status` varchar(4) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_premium_set_det`
--

CREATE TABLE IF NOT EXISTS `pmt_premium_set_det` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `premium_set_code` varchar(4) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_prenium_set`
--

CREATE TABLE IF NOT EXISTS `pmt_prenium_set` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `premium_set_code` varchar(4) NOT NULL,
  `premium_set_desc` varchar(50) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_product`
--

CREATE TABLE IF NOT EXISTS `pmt_product` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `disc1` decimal(8,2) DEFAULT NULL,
  `disc2` decimal(8,2) DEFAULT NULL,
  `disc_baht` decimal(8,2) DEFAULT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_product_set`
--

CREATE TABLE IF NOT EXISTS `pmt_product_set` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `prod_set_code` varchar(4) NOT NULL,
  `prod_set_desc` varchar(50) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_product_set_det`
--

CREATE TABLE IF NOT EXISTS `pmt_product_set_det` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `prod_set_code` varchar(4) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wh_mast`
--

CREATE TABLE IF NOT EXISTS `wh_mast` (
  `id` int(10) unsigned NOT NULL,
  `wh_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `wh_tdesc` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `wh_edesc` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wh_mast`
--

INSERT INTO `wh_mast` (`id`, `wh_code`, `wh_tdesc`, `wh_edesc`, `address1`, `address2`, `tel`, `contact_name`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'FH', 'FG-Homefashion ssss', 'FG-Homefashion', 'ccsdddd', 'ccsssss', '12333', 'vv', 'A', 'admin', '2016-01-07 01:44:33', 'admin', '2016-01-07 03:29:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commission_class`
--
ALTER TABLE `commission_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_mast`
--
ALTER TABLE `commission_mast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_pc`
--
ALTER TABLE `commission_pc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cos_invdet`
--
ALTER TABLE `cos_invdet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cos_invmast`
--
ALTER TABLE `cos_invmast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cos_itemdet`
--
ALTER TABLE `cos_itemdet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cos_itemmast`
--
ALTER TABLE `cos_itemmast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cos_pcmast`
--
ALTER TABLE `cos_pcmast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cust_code_3` (`cust_code`,`emp_code`);

--
-- Indexes for table `cos_pcwork`
--
ALTER TABLE `cos_pcwork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cos_product`
--
ALTER TABLE `cos_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cos_product_img`
--
ALTER TABLE `cos_product_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custgrp_mast`
--
ALTER TABLE `custgrp_mast`
  ADD PRIMARY KEY (`custgrp_code`);

--
-- Indexes for table `cust_mast`
--
ALTER TABLE `cust_mast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_mast`
--
ALTER TABLE `doc_mast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incentive_mast`
--
ALTER TABLE `incentive_mast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incentive_pc`
--
ALTER TABLE `incentive_pc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pmt_consignee`
--
ALTER TABLE `pmt_consignee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_discount`
--
ALTER TABLE `pmt_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_mast`
--
ALTER TABLE `pmt_mast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_premium_set_det`
--
ALTER TABLE `pmt_premium_set_det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_prenium_set`
--
ALTER TABLE `pmt_prenium_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_product`
--
ALTER TABLE `pmt_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_product_set`
--
ALTER TABLE `pmt_product_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_product_set_det`
--
ALTER TABLE `pmt_product_set_det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wh_mast`
--
ALTER TABLE `wh_mast`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commission_class`
--
ALTER TABLE `commission_class`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `commission_mast`
--
ALTER TABLE `commission_mast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `commission_pc`
--
ALTER TABLE `commission_pc`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cos_invdet`
--
ALTER TABLE `cos_invdet`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cos_invmast`
--
ALTER TABLE `cos_invmast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cos_itemdet`
--
ALTER TABLE `cos_itemdet`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cos_itemmast`
--
ALTER TABLE `cos_itemmast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cos_pcmast`
--
ALTER TABLE `cos_pcmast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `cos_pcwork`
--
ALTER TABLE `cos_pcwork`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=551;
--
-- AUTO_INCREMENT for table `cos_product`
--
ALTER TABLE `cos_product`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cos_product_img`
--
ALTER TABLE `cos_product_img`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cust_mast`
--
ALTER TABLE `cust_mast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doc_mast`
--
ALTER TABLE `doc_mast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `incentive_mast`
--
ALTER TABLE `incentive_mast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `incentive_pc`
--
ALTER TABLE `incentive_pc`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_consignee`
--
ALTER TABLE `pmt_consignee`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_discount`
--
ALTER TABLE `pmt_discount`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_mast`
--
ALTER TABLE `pmt_mast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_premium_set_det`
--
ALTER TABLE `pmt_premium_set_det`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_prenium_set`
--
ALTER TABLE `pmt_prenium_set`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_product`
--
ALTER TABLE `pmt_product`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_product_set`
--
ALTER TABLE `pmt_product_set`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_product_set_det`
--
ALTER TABLE `pmt_product_set_det`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wh_mast`
--
ALTER TABLE `wh_mast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
