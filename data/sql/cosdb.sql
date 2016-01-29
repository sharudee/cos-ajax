

DROP TABLE IF EXISTS `commission_class`;
CREATE TABLE IF NOT EXISTS `commission_class` (
  `id` int(10) NOT NULL,
  `cust_code` varchar(8) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `class` varchar(2) NOT NULL,
  `sale_target` decimal(9,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL 
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

DROP TABLE IF EXISTS `commission_mast`;
CREATE TABLE IF NOT EXISTS `commission_mast` (
  `id` int(10) unsigned NOT NULL,
  `class` varchar(2) NOT NULL,
  `sale_start` decimal(9,2) NOT NULL,
  `sale_end` decimal(9,2) NOT NULL,
  `commission_rate` decimal(5,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL 
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

DROP TABLE IF EXISTS `commission_pc`;
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `cos_invdet`
--

DROP TABLE IF EXISTS `cos_invdet`;
CREATE TABLE IF NOT EXISTS `cos_invdet` (
  `id` int(10) unsigned NOT NULL,
  `cos_invmast_id` int(10) NOT NULL,
  `cos_entity` varchar(8) NOT NULL,
  `cos_no` varchar(2) NOT NULL,
  `doc_code` varchar(4) NOT NULL,
  `doc_no` varchar(12) NOT NULL,
  `item` int(3) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `bar_code` varchar(14) DEFAULT NULL,
  `uom_code` varchar(4) DEFAULT NULL,
  `unit_price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `disc_rate` decimal(5,2) DEFAULT NULL,
  `vat_rate` decimal(5,2) NOT NULL,
  `qty` decimal(8,2) NOT NULL,
  `amt` decimal(8,2) NOT NULL,
  `disc_amt` decimal(8,2) DEFAULT NULL,
  `vat_amt` decimal(8,2) DEFAULT NULL,
  `net_amt` decimal(8,2) DEFAULT NULL,
  `ds_no` varchar(12) DEFAULT NULL,
  `sku` varchar(22) DEFAULT NULL,
  `sp_size` varchar(1) DEFAULT NULL,
  `sp_size_desc` varchar(10) DEFAULT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL 
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cos_invdet`
--

INSERT INTO `cos_invdet` (`id`, `cos_invmast_id`, `cos_entity`, `cos_no`, `doc_code`, `doc_no`, `item`, `prod_code`, `prod_name`, `bar_code`, `uom_code`, `unit_price`, `sale_price`, `disc_rate`, `vat_rate`, `qty`, `amt`, `disc_amt`, `vat_amt`, `net_amt`, `ds_no`, `sku`, `sp_size`, `sp_size_desc`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 10, 'B10', '01', 'PO', 'PO0116010004', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 14:56:51', NULL, NULL),
(2, 10, 'B10', '01', 'PO', 'PO0116010004', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '6.5', 'admin', '2016-01-27 14:56:51', NULL, NULL),
(3, 11, 'B10', '01', 'PO', 'PO0116010005', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '121000.00', NULL, '7.00', '1.00', '121000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '4', 'admin', '2016-01-27 15:04:28', NULL, NULL),
(4, 11, 'B10', '01', 'PO', 'PO0116010005', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '121000.00', NULL, '7.00', '1.00', '121000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:04:28', NULL, NULL),
(5, 12, 'B10', '01', 'PO', 'PO0116010006', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '5', 'admin', '2016-01-27 15:06:09', NULL, NULL),
(6, 12, 'B10', '01', 'PO', 'PO0116010006', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:06:09', NULL, NULL),
(7, 13, 'B10', '01', 'PO', 'PO0116010007', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:12:39', NULL, NULL),
(8, 13, 'B10', '01', 'PO', 'PO0116010007', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '121000.00', NULL, '7.00', '1.00', '121000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '7', 'admin', '2016-01-27 15:12:39', NULL, NULL),
(9, 14, 'B10', '01', 'PO', 'PO0116010008', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'admin', '2016-01-27 15:23:26', NULL, NULL),
(10, 14, 'B10', '01', 'PO', 'PO0116010008', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, NULL, '4', 'admin', '2016-01-27 15:23:26', NULL, NULL),
(11, 15, 'B10', '01', 'PO', 'PO0116010009', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'admin', '2016-01-27 15:27:12', NULL, NULL),
(12, 15, 'B10', '01', 'PO', 'PO0116010009', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, NULL, '8', 'admin', '2016-01-27 15:27:12', NULL, NULL),
(13, 16, 'B10', '01', 'PO', 'PO0116010010', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:33:36', NULL, NULL),
(14, 16, 'B10', '01', 'PO', 'PO0116010010', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '2', 'admin', '2016-01-27 15:33:36', NULL, NULL),
(15, 17, 'B10', '01', 'PO', 'PO0116010001', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:45:22', NULL, NULL),
(16, 17, 'B10', '01', 'PO', 'PO0116010001', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:45:22', NULL, NULL),
(17, 18, 'B10', '01', 'PO', 'PO0116010001', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:46:41', NULL, NULL),
(18, 18, 'B10', '01', 'PO', 'PO0116010001', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:46:41', NULL, NULL),
(19, 19, 'B10', '01', 'PO', 'PO0116010001', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:47:05', NULL, NULL),
(20, 19, 'B10', '01', 'PO', 'PO0116010001', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:47:05', NULL, NULL),
(21, 20, 'B10', '01', 'PO', 'PO0116010001', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 15:47:28', NULL, NULL),
(22, 21, 'B10', '01', 'PO', 'PO0116010001', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'admin', '2016-01-27 15:48:16', NULL, NULL),
(23, 21, 'B10', '01', 'PO', 'PO0116010001', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'admin', '2016-01-27 15:48:16', NULL, NULL),
(24, 22, 'B10', '01', 'PO', 'PO0116010001', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'admin', '2016-01-27 15:48:32', NULL, NULL),
(25, 23, 'B10', '01', 'PO', 'PO0116010001', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'admin', '2016-01-27 15:50:06', NULL, NULL),
(26, 23, 'B10', '01', 'PO', 'PO0116010001', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'admin', '2016-01-27 15:50:06', NULL, NULL),
(27, 24, 'B10', '01', 'PO', 'PO0116010011', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'admin', '2016-01-27 15:52:54', NULL, NULL),
(28, 25, 'B10', '01', 'PO', 'PO0116010012', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'N', '', 'admin', '2016-01-27 16:04:39', NULL, NULL),
(29, 25, 'B10', '01', 'PO', 'PO0116010012', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, 'N', '', 'admin', '2016-01-27 16:04:39', NULL, NULL),
(30, 26, 'B10', '01', 'PO', 'PO0116010013', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 16:06:38', NULL, NULL),
(31, 26, 'B10', '01', 'PO', 'PO0116010013', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 16:06:38', NULL, NULL),
(32, 27, 'B10', '01', 'PO', 'PO0116010014', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'N', '', 'admin', '2016-01-27 16:07:17', NULL, NULL),
(33, 27, 'B10', '01', 'PO', 'PO0116010014', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'N', '', 'admin', '2016-01-27 16:07:17', NULL, NULL),
(34, 28, 'B10', '01', 'PO', 'PO0116010015', 1, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '169000.00', NULL, '7.00', '1.00', '169000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 16:16:22', NULL, NULL),
(35, 28, 'B10', '01', 'PO', 'PO0116010015', 2, 'RNS', 'RENAISSANCE', NULL, NULL, NULL, '152000.00', NULL, '7.00', '1.00', '152000.00', NULL, NULL, NULL, NULL, NULL, 'Y', '', 'admin', '2016-01-27 16:16:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cos_invmast`
--

DROP TABLE IF EXISTS `cos_invmast`;
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
  `ship_titlename` varchar(10) DEFAULT NULL,
  `ship_custcode` varchar(8) NOT NULL,
  `ship_custname` varchar(50) NOT NULL,
  `ship_custsurname` varchar(50) NOT NULL,
  `ship_address1` varchar(50) NOT NULL,
  `ship_address2` varchar(50) DEFAULT NULL,
  `ship_tel` varchar(30) NOT NULL,
  `prov_code` varchar(2) NOT NULL,
  `prov_name` varchar(30) NOT NULL,
  `post_code` varchar(5) NOT NULL,
  `email_address` varchar(30) DEFAULT NULL,
  `po_file` varchar(30) DEFAULT NULL,
  `map_file` varchar(30) DEFAULT NULL,
  `gp1` decimal(5,2) NOT NULL,
  `gp2` decimal(5,2) DEFAULT NULL,
  `gp3` decimal(5,2) DEFAULT NULL,
  `disc_cust` decimal(5,2) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `sm_code` varchar(8) DEFAULT NULL,
  `wh_code` varchar(8) DEFAULT NULL,
  `vat_rate` decimal(9,2) DEFAULT NULL,
  `tot_qty` decimal(9,2) DEFAULT NULL,
  `tot_amt` decimal(9,2) DEFAULT NULL,
  `tot_vatamt` decimal(9,2) DEFAULT NULL,
  `tot_netamt` decimal(9,2) DEFAULT NULL,
  `tot_discamt` decimal(9,2) DEFAULT NULL,
  `tot_subamt` decimal(9,2) DEFAULT NULL,
  `pay_code` varchar(10) NOT NULL,
  `pay_name` varchar(50) NOT NULL,
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cos_invmast`
--

INSERT INTO `cos_invmast` (`id`, `cos_entity`, `cos_no`, `doc_code`, `doc_no`, `doc_date`, `req_date`, `pmt_no`, `cust_code`, `cust_name`, `ship_titlename`, `ship_custcode`, `ship_custname`, `ship_custsurname`, `ship_address1`, `ship_address2`, `ship_tel`, `prov_code`, `prov_name`, `post_code`, `email_address`, `po_file`, `map_file`, `gp1`, `gp2`, `gp3`, `disc_cust`, `ref_no`, `sm_code`, `wh_code`, `vat_rate`, `tot_qty`, `tot_amt`, `tot_vatamt`, `tot_netamt`, `tot_discamt`, `tot_subamt`, `pay_code`, `pay_name`, `remark1`, `remark2`, `doccan_by`, `doccan_date`, `doccan_rem`, `tf_st`, `tf_by`, `tf_date`, `ictran_code`, `doc_status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'CXXXX', '01', 'PO', 'PO0116010001', '0000-00-00', NULL, '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '', NULL, '0.00', NULL, NULL, NULL, NULL, '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 'B10', '01', 'PO', 'PO0116010002', '2016-01-27', '2016-01-27', '', 'CXXXX', 'aa', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '', '', '2016-01-27 14:33:22', '', '0000-00-00 00:00:00'),
(3, 'B10', '01', 'PO', 'PO0116010003', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', NULL, '', 'สมศักดิ์', 'นาดี', '112 ถนนสุขุมวิท', 'คลองเตย', '0812222222', 'BK', 'กรุงเทพมหานคร', '10260', 'test@test', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 14:44:03', '', '0000-00-00 00:00:00'),
(4, 'B10', '01', 'PO', 'PO0116010003', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', NULL, '', 'สมศักดิ์', 'นาดี', '112 ถนนสุขุมวิท', 'คลองเตย', '0812222222', 'BK', 'กรุงเทพมหานคร', '10260', 'test@test', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 14:44:50', '', '0000-00-00 00:00:00'),
(5, 'B10', '01', 'PO', 'PO0116010003', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', NULL, '', 'สมศักดิ์', 'นาดี', '112 ถนนสุขุมวิท', 'คลองเตย', '0812222222', 'BK', 'กรุงเทพมหานคร', '10260', 'test@test', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 14:45:59', '', '0000-00-00 00:00:00'),
(6, 'B10', '01', 'PO', 'PO0116010003', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', NULL, '', 'สมศักดิ์', 'นาดี', '112 ถนนสุขุมวิท', 'คลองเตย', '0812222222', 'BK', 'กรุงเทพมหานคร', '10260', 'test@test', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 14:50:15', '', '0000-00-00 00:00:00'),
(7, 'B10', '01', 'PO', 'PO0116010004', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', 'คุณ', '', 'นธิ', 'ใจดี', 'ฟฟฟ', 'กกกก', '015', 'KA', 'กระบี่', '81000', 'test@test.com', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'ผ่อนชำระด้วยบัตรร่วมรายการ 0% 6 เดือน', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 14:53:39', '', '0000-00-00 00:00:00'),
(8, 'B10', '01', 'PO', 'PO0116010004', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', 'คุณ', '', 'นธิ', 'ใจดี', 'ฟฟฟ', 'กกกก', '015', 'KA', 'กระบี่', '81000', 'test@test.com', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'ผ่อนชำระด้วยบัตรร่วมรายการ 0% 6 เดือน', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 14:55:12', '', '0000-00-00 00:00:00'),
(9, 'B10', '01', 'PO', 'PO0116010004', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', 'คุณ', '', 'นธิ', 'ใจดี', 'ฟฟฟ', 'กกกก', '015', 'KA', 'กระบี่', '81000', 'test@test.com', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'ผ่อนชำระด้วยบัตรร่วมรายการ 0% 6 เดือน', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 14:56:21', '', '0000-00-00 00:00:00'),
(10, 'B10', '01', 'PO', 'PO0116010004', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', 'คุณ', '', 'นธิ', 'ใจดี', 'ฟฟฟ', 'กกกก', '015', 'KA', 'กระบี่', '81000', 'test@test.com', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'ผ่อนชำระด้วยบัตรร่วมรายการ 0% 6 เดือน', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 14:56:51', '', '0000-00-00 00:00:00'),
(11, 'B10', '01', 'PO', 'PO0116010005', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', 'คุณ', '', 'ประสิทธิ์', 'พนา', 'ฟกห', 'ฟหก', '012', 'KB', 'กาญจนบุรี', '71001', 'test@test.com', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'ชำระด้วยเงินสด', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:04:28', '', '0000-00-00 00:00:00'),
(12, 'B10', '01', 'PO', 'PO0116010006', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', 'นางสาว', '', 'นาสา', 'ปาการ', 'ฟหก', 'ฟหก', '015', 'KB', 'กาญจนบุรี', '71000', 'test@test.com', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', 'ชำระด้วยเงินสด', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:06:09', '', '0000-00-00 00:00:00'),
(13, 'B10', '01', 'PO', 'PO0116010007', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', 'คุณ', '', 'ดารณี', 'ใจสุข', 'ฟหก', 'ฟหก', '6465', 'NW', 'นครสวรรค์', '60001', 'test@re.com', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, 'PAY-CASH', 'ชำระด้วยเงินสด', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:12:39', '', '0000-00-00 00:00:00'),
(14, 'B10', '01', 'PO', 'PO0116010008', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', 'คุณ', '', 'as', 'asd', 'asd', 'asd', 'sd', 'KS', 'กาฬสินธ์', '46120', 'ads', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, 'PAY-CARD06', 'ผ่อนชำระด้วยบัตรร่วมรายการ 0% 6 เดือน', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:23:26', '', '0000-00-00 00:00:00'),
(15, 'B10', '01', 'PO', 'PO0116010009', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:27:12', '', '0000-00-00 00:00:00'),
(16, 'B10', '01', 'PO', 'PO0116010010', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:33:36', '', '0000-00-00 00:00:00'),
(17, 'B10', '01', 'PO', 'PO0116010001', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:45:22', '', '0000-00-00 00:00:00'),
(18, 'B10', '01', 'PO', 'PO0116010001', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:46:41', '', '0000-00-00 00:00:00'),
(19, 'B10', '01', 'PO', 'PO0116010001', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:47:05', '', '0000-00-00 00:00:00'),
(20, 'B10', '01', 'PO', 'PO0116010001', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:47:28', '', '0000-00-00 00:00:00'),
(21, 'B10', '01', 'PO', 'PO0116010001', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:48:16', '', '0000-00-00 00:00:00'),
(22, 'B10', '01', 'PO', 'PO0116010001', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:48:32', '', '0000-00-00 00:00:00'),
(23, 'B10', '01', 'PO', 'PO0116010001', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:50:06', '', '0000-00-00 00:00:00'),
(24, 'B10', '01', 'PO', 'PO0116010011', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 15:52:54', '', '0000-00-00 00:00:00'),
(25, 'B10', '01', 'PO', 'PO0116010012', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 16:04:38', '', '0000-00-00 00:00:00'),
(26, 'B10', '01', 'PO', 'PO0116010013', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 16:06:38', '', '0000-00-00 00:00:00'),
(27, 'B10', '01', 'PO', 'PO0116010014', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 16:07:17', '', '0000-00-00 00:00:00'),
(28, 'B10', '01', 'PO', 'PO0116010015', '2016-01-05', '2016-01-27', 'MBS2015001', 'CXXXX', 'aa', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0.25', '0.00', '0.00', NULL, NULL, NULL, NULL, '7.00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', 'PAL', 'admin', '2016-01-27 16:16:22', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cos_itemdet`
--

DROP TABLE IF EXISTS `cos_itemdet`;
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `cos_itemmast`
--

DROP TABLE IF EXISTS `cos_itemmast`;
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `cos_pcmast`
--

DROP TABLE IF EXISTS `cos_pcmast`;
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
  `updated_at` datetime NOT NULL 
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

DROP TABLE IF EXISTS `cos_pcwork`;
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
  `updated_at` datetime NOT NULL 
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

DROP TABLE IF EXISTS `cos_product`;
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cos_product_img`
--

DROP TABLE IF EXISTS `cos_product_img`;
CREATE TABLE IF NOT EXISTS `cos_product_img` (
  `id` int(10) unsigned NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `item` int(3) NOT NULL,
  `prod_img` varchar(30) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custgrp_mast`
--

DROP TABLE IF EXISTS `custgrp_mast`;
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

DROP TABLE IF EXISTS `cust_mast`;
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doc_mast`
--

DROP TABLE IF EXISTS `doc_mast`;
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doc_mast`
--

INSERT INTO `doc_mast` (`id`, `doc_code`, `doc_desc`, `doc_ctrl`, `ictran_code`, `post_type`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'DO', 'Delivery Order', 'DO', 'REC', 'HO', 'admin', '2016-01-06 06:45:43', 'admin', '2016-01-06 07:10:47'),
(3, 'DS', 'Daily Sales', 'DS', 'ISS', 'COS', 'admin', '2016-01-06 06:50:09', 'admin', '2016-01-06 06:50:09'),
(4, 'PO', 'Purchase Order', 'PO', 'ISS', 'COS', 'admin', '2016-01-25 08:30:04', 'admin', '2016-01-25 08:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

DROP TABLE IF EXISTS `entity`;
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entity`
--

INSERT INTO `entity` (`id`, `entity_code`, `entity_tname`, `entity_ename`, `cust_grp`, `tax_rate`, `ent_ctrl`, `cos_no`, `dsgrp_type`, `sale_type`, `ret_type`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(9, 'C0003', 'เซ็นทรัล บางนา', 'Central bangna', 'MDS', '7.00', '', '03', 'SKU', 'SO', 'RTDC', 'admin', '2015-12-16 04:25:09', 'admin', '2016-01-14 07:24:39'),
(10, 'C0002', 'เซ็นทรัล ลาดพร้าว', 'Central Ladprad', 'CDR', '7.00', '', '02', 'SKU', 'SO', 'RTDC', 'admin', '2016-01-14 07:24:30', 'admin', '2016-01-14 07:24:30'),
(11, 'CXXXX', 'aa', 'aa', 'CDR', '7.00', '', '01', 'SKU', 'CO', 'RTCO', 'admin', '2016-01-14 07:29:23', 'admin', '2016-01-25 08:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `incentive_mast`
--

DROP TABLE IF EXISTS `incentive_mast`;
CREATE TABLE IF NOT EXISTS `incentive_mast` (
  `id` int(10) unsigned NOT NULL,
  `pdmodel_code` varchar(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `incentive_amt` decimal(8,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `incentive_mast`
--

INSERT INTO `incentive_mast` (`id`, `pdmodel_code`, `start_date`, `end_date`, `incentive_amt`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'BB', '2016-01-15', '2016-01-31', '1000.00', 'admin', '2016-01-15 08:18:29', 'admin', '2016-01-19 15:53:20'),
(3, 'CC', '2016-01-15', '2016-01-31', '1000.00', 'admin', '2016-01-15 08:19:31', 'admin', '2016-01-15 08:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `incentive_pc`
--

DROP TABLE IF EXISTS `incentive_pc`;
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
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
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

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_consignee`
--

DROP TABLE IF EXISTS `pmt_consignee`;
CREATE TABLE IF NOT EXISTS `pmt_consignee` (
  `consignee_id` int(10) unsigned NOT NULL,
  `pmt_mast_id` int(10) NOT NULL,
  `entity_code` varchar(255) NOT NULL,
  `discount_amt` decimal(18,4) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_consignee`
--

INSERT INTO `pmt_consignee` (`consignee_id`, `pmt_mast_id`, `entity_code`, `discount_amt`, `rec_status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 1, 'CXXXX', '0.0000', NULL, NULL, '2016-01-22 08:04:59', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_discount`
--

DROP TABLE IF EXISTS `pmt_discount`;
CREATE TABLE IF NOT EXISTS `pmt_discount` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `disc_code` varchar(4) NOT NULL,
  `pdsize_code` varchar(4) NOT NULL,
  `disc_amt` decimal(8,2) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_disc_payment_rate`
--

DROP TABLE IF EXISTS `pmt_disc_payment_rate`;
CREATE TABLE IF NOT EXISTS `pmt_disc_payment_rate` (
  `disc_pay_rate_id` int(10) unsigned NOT NULL,
  `pmt_mast_id` int(10) NOT NULL,
  `transaction_type` varchar(10) DEFAULT NULL,
  `purchase_rate_amt` decimal(18,2) NOT NULL,
  `discount_type` varchar(10) DEFAULT NULL,
  `discount_amt` decimal(18,4) DEFAULT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_disc_premium_deny`
--

DROP TABLE IF EXISTS `pmt_disc_premium_deny`;
CREATE TABLE IF NOT EXISTS `pmt_disc_premium_deny` (
  `disc_premium_deny_id` int(10) unsigned NOT NULL,
  `pmt_mast_id` int(10) NOT NULL,
  `pdsize_code` varchar(15) DEFAULT NULL,
  `discount_type` char(1) DEFAULT NULL,
  `discount_amt` decimal(18,4) DEFAULT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_disc_shop_rate`
--

DROP TABLE IF EXISTS `pmt_disc_shop_rate`;
CREATE TABLE IF NOT EXISTS `pmt_disc_shop_rate` (
  `disc_shop_rate_id` int(10) unsigned NOT NULL,
  `pmt_mast_id` int(10) NOT NULL,
  `transaction_type` varchar(10) DEFAULT NULL,
  `purchase_rate_amt` decimal(18,2) NOT NULL,
  `discount_type` varchar(10) DEFAULT NULL,
  `discount_amt` decimal(18,4) DEFAULT NULL,
  `premium_qty` decimal(18,2) DEFAULT NULL,
  `premium_amt` decimal(18,2) DEFAULT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_group_mast`
--

DROP TABLE IF EXISTS `pmt_group_mast`;
CREATE TABLE IF NOT EXISTS `pmt_group_mast` (
  `pmt_group_code` varchar(10) NOT NULL DEFAULT '',
  `pmt_group_code_name` varchar(25) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_group_mast`
--

INSERT INTO `pmt_group_mast` (`pmt_group_code`, `pmt_group_code_name`, `rec_status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
('BOX', 'ฐานรอง', 'ACTIVE', NULL, '2016-01-08 01:49:21', '', '0000-00-00 00:00:00'),
('DISCOUNT', 'ประเภทส่วนลด', 'ACTIVE', NULL, '2016-01-08 01:01:36', '', '0000-00-00 00:00:00'),
('HB', 'หัวเตียง', 'ACTIVE', NULL, '2016-01-08 01:46:27', '', '0000-00-00 00:00:00'),
('PAYMENT', 'ประเภทการชำระเงิน', 'ACTIVE', NULL, '2016-01-08 01:02:42', '', '0000-00-00 00:00:00'),
('PD', 'ชุดสินค้าจัดรายการ', 'ACTIVE', NULL, '2016-01-08 00:59:56', '', '0000-00-00 00:00:00'),
('PM', 'ชุดของแถม', 'ACTIVE', NULL, '2016-01-08 00:59:08', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_mast`
--

DROP TABLE IF EXISTS `pmt_mast`;
CREATE TABLE IF NOT EXISTS `pmt_mast` (
  `pmt_mast_id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(25) NOT NULL,
  `pmt_name` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `ref_doc_no` varchar(30) DEFAULT NULL,
  `pmt_desc` text,
  `pmt_type` varchar(15) DEFAULT NULL,
  `gp_amt` decimal(10,4) DEFAULT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_mast`
--

INSERT INTO `pmt_mast` (`pmt_mast_id`, `pmt_no`, `pmt_name`, `start_date`, `end_date`, `ref_doc_no`, `pmt_desc`, `pmt_type`, `gp_amt`, `rec_status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'MBS2015001', 'Sealy Brand Sale # 2 Mail Super Shock', '2016-01-01', '2016-01-08', NULL, 'จัดรายการ', 'PROMOTION', '0.2500', 'ACTIVE', NULL, '2016-01-08 03:06:28', '', '0000-00-00 00:00:00'),
(2, 'MBS2015002', 'Sealy LUXE Living Sale UP to 60% off', '2016-01-01', '2016-01-08', NULL, 'เพื่อการส่งเสริมการขาย', 'CAMPAIGN', '0.2500', 'ACTIVE', NULL, '2016-01-08 03:06:29', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_package_det`
--

DROP TABLE IF EXISTS `pmt_package_det`;
CREATE TABLE IF NOT EXISTS `pmt_package_det` (
  `package_det_id` int(10) unsigned NOT NULL,
  `package_mast_id` int(10) NOT NULL,
  `pmt_product_set_id` int(10) DEFAULT NULL,
  `set_qty` decimal(18,2) DEFAULT NULL,
  `unit_price_amt` decimal(18,2) DEFAULT NULL,
  `set_price_amt` decimal(18,2) DEFAULT NULL,
  `uom` varchar(15) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_package_det`
--

INSERT INTO `pmt_package_det` (`package_det_id`, `package_mast_id`, `pmt_product_set_id`, `set_qty`, `unit_price_amt`, `set_price_amt`, `uom`, `rec_status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 1, 2, '4.00', '595.00', '2380.00', 'PCS', NULL, NULL, '2016-01-08 07:05:27', '', '0000-00-00 00:00:00'),
(2, 2, 2, '4.00', '595.00', '2380.00', 'PCS', NULL, NULL, '2016-01-08 07:08:30', '', '0000-00-00 00:00:00'),
(3, 3, 2, '1.00', '595.00', '595.00', 'PCS', NULL, NULL, '2016-01-08 07:08:57', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_package_mast`
--

DROP TABLE IF EXISTS `pmt_package_mast`;
CREATE TABLE IF NOT EXISTS `pmt_package_mast` (
  `package_mast_id` int(10) unsigned NOT NULL,
  `pmt_mast_id` int(10) NOT NULL,
  `pmt_product_set_id` int(10) DEFAULT NULL,
  `pdmodel_code` varchar(15) DEFAULT NULL,
  `pdsize_code` varchar(15) DEFAULT NULL,
  `pdmodel_desc` varchar(150) DEFAULT NULL,
  `pdsize_desc` varchar(150) DEFAULT NULL,
  `total_price_amt` decimal(18,2) DEFAULT NULL,
  `special1_price_type` varchar(15) DEFAULT NULL,
  `special1_disc_amt` decimal(18,4) DEFAULT NULL,
  `special1_price_amt` decimal(18,2) DEFAULT NULL,
  `special2_price_type` varchar(15) DEFAULT NULL,
  `special2_disc_amt1` decimal(18,4) DEFAULT NULL,
  `special2_disc_amt2` decimal(18,4) DEFAULT NULL,
  `special2_price_amt` decimal(18,2) DEFAULT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_package_mast`
--

INSERT INTO `pmt_package_mast` (`package_mast_id`, `pmt_mast_id`, `pmt_product_set_id`, `pdmodel_code`, `pdsize_code`, `pdmodel_desc`, `pdsize_desc`, `total_price_amt`, `special1_price_type`, `special1_disc_amt`, `special1_price_amt`, `special2_price_type`, `special2_disc_amt1`, `special2_disc_amt2`, `special2_price_amt`, `rec_status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 1, 12, 'RNS', '60', 'RENAISSANCE', '6''X6.5''', '311970.00', 'BAHT', '0.0000', '169000.00', 'BAHT', NULL, NULL, '150000.00', 'ACTIVE', NULL, '2016-01-08 07:11:07', '', '0000-00-00 00:00:00'),
(2, 1, 13, 'RNS', '50', 'RENAISSANCE', '5''X6.5''', '287970.00', 'BAHT', NULL, '152000.00', 'BAHT', NULL, NULL, '135000.00', 'ACTIVE', NULL, '2016-01-08 07:11:08', '', '0000-00-00 00:00:00'),
(3, 1, 14, 'RNS', '35', 'RENAISSANCE', '3.5''X6.5''', '210390.00', 'BAHT', NULL, '121000.00', 'BAHT', NULL, NULL, '107000.00', 'ACTIVE', NULL, '2016-01-08 07:12:17', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_premium_set_det`
--

DROP TABLE IF EXISTS `pmt_premium_set_det`;
CREATE TABLE IF NOT EXISTS `pmt_premium_set_det` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `premium_set_code` varchar(4) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_prenium_set`
--

DROP TABLE IF EXISTS `pmt_prenium_set`;
CREATE TABLE IF NOT EXISTS `pmt_prenium_set` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `premium_set_code` varchar(4) NOT NULL,
  `premium_set_desc` varchar(50) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_product`
--

DROP TABLE IF EXISTS `pmt_product`;
CREATE TABLE IF NOT EXISTS `pmt_product` (
  `pmt_product_id` int(10) unsigned NOT NULL,
  `pmt_product_set_id` int(10) NOT NULL,
  `prod_code` varchar(25) NOT NULL,
  `prod_tname` varchar(70) NOT NULL,
  `bar_code` varchar(15) NOT NULL,
  `pdgrp_code` varchar(10) NOT NULL,
  `pdbrnd_code` varchar(10) NOT NULL,
  `pddsgn_code` varchar(10) NOT NULL,
  `pdsize_code` varchar(10) NOT NULL,
  `pdcolor_code` varchar(10) NOT NULL,
  `pdmodel_code` varchar(10) NOT NULL,
  `pdgrp_desc` varchar(50) NOT NULL,
  `pdbrnd_desc` varchar(50) NOT NULL,
  `pddsgn_desc` varchar(50) NOT NULL,
  `pdsize_desc` varchar(50) NOT NULL,
  `pdcolor_desc` varchar(50) NOT NULL,
  `pdmodel_desc` varchar(50) NOT NULL,
  `unit_price_amt` decimal(10,2) NOT NULL,
  `sale_default` char(1) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_product`
--

INSERT INTO `pmt_product` (`pmt_product_id`, `pmt_product_set_id`, `prod_code`, `prod_tname`, `bar_code`, `pdgrp_code`, `pdbrnd_code`, `pddsgn_code`, `pdsize_code`, `pdcolor_code`, `pdmodel_code`, `pdgrp_desc`, `pdbrnd_desc`, `pddsgn_desc`, `pdsize_desc`, `pdcolor_desc`, `pdmodel_desc`, `unit_price_amt`, `sale_default`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 12, 'SLMURNS LB60', 'SEALY MATT. UNICASED RENAISSANCE D.57224 / 6''X6.5''', '8852012534293', 'MT', 'SL', 'RNS', '60', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6''X6.5''', 'LIGHT BROWN', 'RENAISSANCE', '129000.00', NULL, NULL, '2016-01-08 06:37:14', '', '0000-00-00 00:00:00'),
(2, 12, 'SLMURNS AM60', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/6''X6.5''', '8852012109880', 'MT', 'SL', 'RNS', '60', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6''X6.5''', 'AMETHYST', 'RENAISSANCE', '0.00', NULL, NULL, '2016-01-08 06:37:15', '', '0000-00-00 00:00:00'),
(3, 12, 'SLMURNS GT60', 'SEALY CLASSIC LUXURY COLL.RENAISSANCE-57321_6''X6.5', '8852012389282', 'MT', 'SL', 'RNS', '60', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6''X6.5''', 'GOLD FONTAINEBLEAU', 'RENAISSANCE', '299000.00', NULL, NULL, '2016-01-08 06:37:16', '', '0000-00-00 00:00:00'),
(4, 12, 'SLMURNS RJ60', 'SEALY MU CLASSIC LUXURY RENAISSANCE-CD203C_6X6.5', '8852012465436', 'MT', 'SL', 'RNS', '60', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6''X6.5''', 'RUBY', 'RENAISSANCE', '279000.00', 'D', NULL, '2016-01-08 06:37:17', '', '0000-00-00 00:00:00'),
(5, 12, 'SLMURNS AJ60', 'SEALY MU NEW!  RENAISSANCE D.PAESTUM927-7_6''X6.5''', '8852012462633', 'MT', 'SL', 'RNS', '60', 'AJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6''X6.5''', 'APPEAL', 'RENAISSANCE', '0.00', NULL, NULL, '2016-01-08 06:37:18', '', '0000-00-00 00:00:00'),
(6, 12, 'SLMURNS ZY60', 'SEALY MU CLASSIC LUXURY RENAISSANCE W5691D_6X6.5', '8859232599316', 'MT', 'SL', 'RNS', '60', 'ZY', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6''X6.5''', 'ZYVOTA', 'RENAISSANCE', '279000.00', NULL, NULL, '2016-01-08 06:37:19', '', '0000-00-00 00:00:00'),
(7, 2, 'PMPCBN01LYSTD', 'PILLOW CASE BARCELONA STANDARD', '8852012911032', 'PM', 'PM', 'BN01', 'STD', 'LY', 'BN01', 'Premium', 'PREMIUM', 'BARCELONA', 'STANDARD', 'L-YELLOW', 'BARCELONA', '0.00', NULL, NULL, '2016-01-08 06:58:06', '', '0000-00-00 00:00:00'),
(8, 2, 'PMPCL93 CRSTD', 'PILLOW CASE STANDARD LORIA CREAM', '8852012492371', 'PM', 'PM', 'L93', 'STD', 'CR', 'L93', 'Premium', 'PREMIUM', 'Loria', 'STANDARD', 'CREAM', 'Loria', '0.00', 'D', NULL, '2016-01-08 06:59:56', '', '0000-00-00 00:00:00'),
(9, 2, 'PMPCL93 BLSTD', 'PILLOW CASE STANDARD LORIA BLUE', '8852012492364', 'PM', 'PM', 'L93', 'STD', 'BL', 'L93', 'Premium', 'PREMIUM', 'Loria', 'STANDARD', 'BLUE', 'Loria', '0.00', NULL, NULL, '2016-01-08 07:01:20', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_product_set`
--

DROP TABLE IF EXISTS `pmt_product_set`;
CREATE TABLE IF NOT EXISTS `pmt_product_set` (
  `pmt_product_set_id` int(10) unsigned NOT NULL,
  `product_set_code` varchar(25) NOT NULL,
  `pmt_group_code` varchar(10) DEFAULT NULL,
  `product_set_desc` varchar(150) DEFAULT NULL,
  `set_qty` decimal(18,2) DEFAULT NULL,
  `unit_price_amt` decimal(18,2) DEFAULT NULL,
  `set_price_amt` decimal(18,2) DEFAULT NULL,
  `uom` varchar(15) NOT NULL,
  `discount_type` varchar(15) DEFAULT NULL,
  `discount_amt` decimal(18,4) DEFAULT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_product_set`
--

INSERT INTO `pmt_product_set` (`pmt_product_set_id`, `product_set_code`, `pmt_group_code`, `product_set_desc`, `set_qty`, `unit_price_amt`, `set_price_amt`, `uom`, `discount_type`, `discount_amt`, `rec_status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'PM01', 'PM', 'เซ็ทเครื่องนอน 13 ชิ้น', '13.00', '20900.00', '20900.00', 'SET', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:35:56', '', '0000-00-00 00:00:00'),
(2, 'PM02', 'PM', 'ชุดหมอนหนุน', '4.00', '595.00', '2380.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:36:12', '', '0000-00-00 00:00:00'),
(3, 'PM03', 'PM', 'ชุดหมอนอิง', '2.00', '350.00', '700.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:37:46', '', '0000-00-00 00:00:00'),
(4, 'PM04', 'PM', 'ชุดหมอนข้าง', '2.00', '695.00', '1390.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:38:50', '', '0000-00-00 00:00:00'),
(5, 'PM05', 'PM', 'ไส้ผ้านวม', '1.00', '3250.00', '3250.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:40:43', '', '0000-00-00 00:00:00'),
(6, 'HB001', 'HB', 'หัวเตียง  RENAISSANCE 6.0X6.5', '1.00', '159500.00', '159500.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:54:37', '', '0000-00-00 00:00:00'),
(7, 'BOX001', 'BOX', 'ฐานรอง   RENAISSANCE 6.0X6.5', '1.00', '0.00', '0.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:54:41', '', '0000-00-00 00:00:00'),
(8, 'HB002', 'HB', 'หัวเตียง   RENAISSANCE 5.0X6.5', '1.00', '145500.00', '145500.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:55:53', '', '0000-00-00 00:00:00'),
(9, 'BOX002', 'BOX', 'ฐานรอง   RENAISSANCE 5.0X6.5', '1.00', NULL, NULL, 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 01:56:22', '', '0000-00-00 00:00:00'),
(10, 'HB003', 'HB', 'หัวเตียงและปลายเตียง  PLUSH King (39x72) 2 หลัง', '1.00', '0.00', '0.00', 'SET', 'BAHT', '30000.0000', 'ACTIVE', NULL, '2016-01-08 06:46:32', '', '0000-00-00 00:00:00'),
(11, 'HB004', 'HB', 'หัวเตียงและปลายเตียง  PLUSH King (39x72) 1 หลัง', '1.00', '0.00', '0.00', 'SET', 'BAHT', '15000.0000', 'ACTIVE', NULL, '2016-01-08 06:46:36', '', '0000-00-00 00:00:00'),
(12, 'RNS60', 'PD', 'ที่นอน RENAISSANCE 6.0X6.5', '1.00', '279000.00', '279000.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 06:35:54', '', '0000-00-00 00:00:00'),
(13, 'RNS50', 'PD', 'ที่นอน RENAISSANCE 5.0X6.5', '1.00', '255000.00', '255000.00', 'PCS', 'BAHT', '0.0000', 'ACTIVE', NULL, '2016-01-08 07:13:23', '', '0000-00-00 00:00:00'),
(14, 'RNS35', 'PD', 'ที่นอน RENAISSANCE 3.5X6.5', '1.00', '199000.00', '199000.00', 'PCS', NULL, NULL, 'ACTIVE', NULL, '2016-01-08 07:14:07', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_product_set_det`
--

DROP TABLE IF EXISTS `pmt_product_set_det`;
CREATE TABLE IF NOT EXISTS `pmt_product_set_det` (
  `id` int(10) unsigned NOT NULL,
  `pmt_no` varchar(12) NOT NULL,
  `prod_set_code` varchar(4) NOT NULL,
  `prod_code` varchar(22) NOT NULL,
  `created_by` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pmt_transaction_mast`
--

DROP TABLE IF EXISTS `pmt_transaction_mast`;
CREATE TABLE IF NOT EXISTS `pmt_transaction_mast` (
  `transaction_code` varchar(10) NOT NULL DEFAULT '',
  `pmt_group_code` varchar(10) DEFAULT NULL,
  `transaction_name` varchar(50) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pmt_transaction_mast`
--

INSERT INTO `pmt_transaction_mast` (`transaction_code`, `pmt_group_code`, `transaction_name`, `rec_status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
('DISC-CASH', 'DISCOUNT', 'ส่วนลดเงินสด', 'ACTIVE', NULL, '2016-01-08 01:08:42', '', '0000-00-00 00:00:00'),
('DISC-PM', 'DISCOUNT', 'ส่วนลดให้ชุดของแถม', 'ACTIVE', NULL, '2016-01-08 01:21:54', '', '0000-00-00 00:00:00'),
('PAY-CARD06', 'PAYMENT', 'ผ่อนชำระด้วยบัตรร่วมรายการ 0% 6 เดือน', 'ACTIVE', NULL, '2016-01-08 01:23:59', '', '0000-00-00 00:00:00'),
('PAY-CASH', 'PAYMENT', 'ชำระด้วยเงินสด', 'ACTIVE', NULL, '2016-01-08 01:21:54', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_mast`
--

DROP TABLE IF EXISTS `post_mast`;
CREATE TABLE IF NOT EXISTS `post_mast` (
  `post_code` varchar(5) NOT NULL,
  `post_name` varchar(20) NOT NULL,
  `prov_code` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_mast`
--

INSERT INTO `post_mast` (`post_code`, `post_name`, `prov_code`) VALUES
('10000', 'ศป.กท.', 'BK'),
('10001', 'ศป.ดม.', 'BK'),
('10002', 'ปณฝ.สำนักงาน ปณท.', 'BK'),
('10003', 'ที่ทำการ ปณภ.คืน', 'BK'),
('10010', 'ศป.ลส.', 'BK'),
('10100', 'สัมพันธวงศ์', 'BK'),
('10101', 'ป้อมปราบ', 'BK'),
('10102', 'หลานหลวง', 'BK'),
('10103', 'สามแยก', 'BK'),
('10110', 'คลองเตย,วัฒนา', 'BK'),
('10111', 'คลองเตย', 'BK'),
('10112', 'นานา', 'BK'),
('10113', 'สันติสุข', 'BK'),
('10114', 'ประสานมิตร', 'BK'),
('10115', 'กล้วยน้ำไท', 'BK'),
('10116', 'คลองตัน', 'BK'),
('10117', 'ศรีนครินทรวิโรฒ', 'BK'),
('10120', 'บางคอแหลม,สาทร,ยานฯ', 'BK'),
('10121', 'สวนพลู', 'BK'),
('10122', 'บางคอแหลม', 'BK'),
('10123', 'วัดพระยาไกร', 'BK'),
('10124', 'สาธุประดิษฐ์', 'BK'),
('10125', 'บางโพงพาง', 'BK'),
('10130', 'พระประแดง', 'SP'),
('10131', 'สำโรงใต้', 'BK'),
('10132', 'ปากลัด', 'BK'),
('10140', 'ทุ่งครุ, ราษฎร์บูรณ', 'BK'),
('10141', 'บางปะแก้ว', 'BK'),
('10150', 'บางขุนเทียน, จอมทอง', 'BK'),
('10151', 'บางบอน', 'BK'),
('10160', 'หนองแขม,ภาษีเจริญ', 'BK'),
('10161', 'บางแค', 'BK'),
('10162', 'หนองแขม', 'BK'),
('10163', 'มหาวิทยาลัยสยาม', 'BK'),
('10170', 'ตลิ่งชัน,ทวีวัฒนา', 'BK'),
('10200', 'พระนคร', 'BK'),
('10201', 'วัดเลียบ', 'BK'),
('10202', 'หน้าพระลาน', 'BK'),
('10203', 'บางลำภูบน', 'BK'),
('10204', 'สหประชาชาติ', 'BK'),
('10205', 'วังเทวะเวสม์', 'BK'),
('10206', 'มหาดไทย', 'BK'),
('10210', 'ดอนเมือง', 'BK'),
('10211', 'ดอนเมือง', 'BK'),
('10212', 'ท่าอากาศยานกรุงเทพ', 'BK'),
('10213', 'กองทัพอากาศ', 'BK'),
('10214', 'ศฝ.แจ้งวัฒนะ', 'BK'),
('10220', 'บางเขน,สายไหม', 'BK'),
('10221', 'สะพานใหม่', 'BK'),
('10222', 'คลองถนน', 'BK'),
('10223', 'ไตรรัตน์', 'BK'),
('10230', 'คันนายาว', 'BK'),
('10231', 'บึงกุ่ม', 'BK'),
('10232', 'ศฝ.โชคชัย 4', 'BK'),
('10240', 'บางกะปิ,บึงกุ่ม', 'BK'),
('10241', 'รามคำแหง', 'BK'),
('10242', 'บึงทองหลาง', 'BK'),
('10243', 'หัวหมาก', 'BK'),
('10244', 'คลองกุ่ม', 'BK'),
('10245', 'มหาวิทยาลัยอัสสัมชัญ', 'BK'),
('10250', 'ประเวศ,สวนหลวง', 'BK'),
('10251', 'พัฒนาการ', 'BK'),
('10253', 'สวนหลวง', 'BK'),
('10254', 'ซีคอนสแควร์', 'BK'),
('10255', 'ศฝ.อ่อนนุช 28', 'BK'),
('10260', 'พระโขนง,บางนา', 'BK'),
('10261', 'อุดมสุข', 'BK'),
('10262', 'คลองบางนา', 'BK'),
('10263', 'ทุ่งเศรษฐี', 'BK'),
('10264', 'เซ็นทรัลซิตี้บางนา', 'BK'),
('10270', 'อ.เมืองสมุทรปราการ', 'SP'),
('10271', 'สำโรง', 'SP'),
('10272', 'ปากน้ำ', 'SP'),
('10273', 'ด่านสำโรง', 'SP'),
('10280', 'อ.เมือง', 'SP'),
('10290', 'อ.พระสมุทรเจดีย์', 'SP'),
('10300', 'ดุสิต', 'BK'),
('10301', 'บางกระบือ', 'BK'),
('10302', 'สำนักนายกรัฐมนตรี', 'BK'),
('10303', 'จิตรลดา', 'BK'),
('10304', 'ศึกษาธิการ', 'BK'),
('10305', 'รัฐสภา', 'BK'),
('10310', 'ลาดพร้าว', 'BK'),
('10311', 'เพชรบุรีตัดใหม่', 'BK'),
('10312', 'ศฝ.บดินทรเดชา', 'BK'),
('10320', 'ดินแดง', 'BK'),
('10321', 'สุทธิสาร', 'BK'),
('10323', 'มอนเทอเรย์ทาวเวอร์', 'BK'),
('10324', 'เมืองไทย-ภัทรคอมเพ็ก', 'BK'),
('10325', 'ม.หอการค้าไทย', 'BK'),
('10326', 'ไทยประกันชีวิต', 'BK'),
('10330', 'ปทุมวัน', 'BK'),
('10331', 'ศฝ.หัวลำโพง', 'BK'),
('10332', 'จุฬาลงกรณ์', 'BK'),
('10341', 'สาธร', 'BK'),
('10342', 'ศูนย์ประชุมสิริกิติ', 'BK'),
('10400', 'พญาไท', 'BK'),
('10401', 'ราชเทวี', 'BK'),
('10402', 'มักกะสัน', 'BK'),
('10403', 'ไทยพาณิชย์', 'BK'),
('10404', 'ประดิพัทธ์', 'BK'),
('10405', 'อุรุพงษ์', 'BK'),
('10406', 'สนามเป้า', 'BK'),
('10407', 'ดินแดง', 'BK'),
('10408', 'ราชวิถี', 'BK'),
('10409', 'ประตูน้ำ', 'BK'),
('10411', 'กระทรวงการคลัง', 'BK'),
('10500', 'บางรัก', 'BK'),
('10501', 'ปณก.', 'BK'),
('10503', 'จิวเวลรี่เทรดเซ็น', 'BK'),
('10504', 'สีลม', 'BK'),
('10506', 'พัฒนพงษ์', 'BK'),
('10510', 'คลองสามวา,มีนบุรี', 'BK'),
('10520', 'ลาดกระบัง', 'BK'),
('10521', 'เจ้าคุณทหาร', 'BK'),
('10530', 'หนองจอก', 'BK'),
('10540', 'บางพลี, บางเสาธง', 'SP'),
('10541', 'บางแก้ว', 'SP'),
('10542', 'บางเสาธง(บางพลีใหญ่)', 'SP'),
('10550', 'คลองด่าน', 'SP'),
('10560', 'บางบ่อ', 'SP'),
('10600', 'บางกอกใหญ่, ธนบุรี,', 'BK'),
('10601', 'ตลาดพลู', 'BK'),
('10602', 'วงเวียนใหญ่', 'BK'),
('10603', 'ท่าพระ', 'BK'),
('10604', 'คลองสาน', 'BK'),
('10605', 'บางกอกใหญ่', 'BK'),
('10700', 'บางกอกน้อย', 'BK'),
('10701', 'บางพลัด', 'BK'),
('10702', 'ศิริราช', 'BK'),
('10703', 'บางขุนนนท์', 'BK'),
('10704', 'บางอ้อ', 'BK'),
('10705', 'พระปิ่นเกล้า', 'BK'),
('10800', 'บางซื่อ', 'BK'),
('10801', 'บางโพ', 'BK'),
('10802', 'พระจอมเกล้า', 'BK'),
('10900', 'จตุจักร', 'BK'),
('10901', 'สามแยกลาดพร้าว', 'BK'),
('10902', 'เสนานิคม', 'BK'),
('10903', 'เกษตรศาสตร์', 'BK'),
('10904', 'จันทรเกษม', 'BK'),
('10905', 'ซันทาวเวอร์ส', 'BK'),
('10906', 'ตึกช้าง', 'BK'),
('10907', 'ยุติธรรม', 'BK'),
('10908', 'ปณฝ.สำนักงานใหญ่ปตท.', 'BK'),
('11000', 'อ.เมืองนนท์', 'NB'),
('11001', 'งามวงศ์วาน', 'BK'),
('11002', 'ตลาดขวัญ', 'BK'),
('11003', 'สวนใหญ่', 'BK'),
('11110', 'อ.บางบัวทอง', 'NB'),
('11120', 'ปากเกร็ด', 'NB'),
('11121', 'ห้าแยกปากเกร็ด', 'NB'),
('11130', 'อ.บางกรวย', 'NB'),
('11140', 'อ.บางใหญ่', 'NB'),
('11150', 'อ.ไทรน้อย', 'NB'),
('12000', 'อ.เมืองปทุมธานี', 'PT'),
('12001', 'เทศปทุม', 'PT'),
('12110', 'อ.ธัญบุรี', 'PT'),
('12120', 'อ.คลองหลวง', 'PT'),
('12121', 'ธรรมศาสตร์รังสิต', 'BK'),
('12130', 'อ.รังสิต', 'PT'),
('12131', 'คูคต', 'BK'),
('12132', 'ฟิวเจอร์พาร์ค รังสิต', 'BK'),
('12140', 'อ.ลาดหลุมแก้ว', 'PT'),
('12150', 'อ.ลำลูกกา', 'PT'),
('12160', 'อ.สามโคก', 'PT'),
('12170', 'อ.หนองเสือ', 'PT'),
('13000', 'พระนครศรีอยุธยา', 'AY'),
('13001', 'โรจนะ', 'AY'),
('13002', 'เดชาวุธ', 'AY'),
('13110', 'เสนา', 'AY'),
('13120', 'ผักไห่', 'AY'),
('13130', 'ท่าเรือ', 'AY'),
('13140', 'ภาชี', 'AY'),
('13150', 'มหาราช', 'AY'),
('13160', 'บางปะอิน', 'AY'),
('13170', 'วังน้อย', 'AY'),
('13180', 'ประตูน้ำพระอินทร์', 'AY'),
('13190', 'บางไทร', 'AY'),
('13210', 'อุทัย', 'AY'),
('13220', 'บางปะหัน', 'AY'),
('13230', 'ลาดบัวหลวง', 'AY'),
('13240', 'บ้านแพรก', 'AY'),
('13250', 'บางบาล', 'AY'),
('13260', 'นครหลวง', 'AY'),
('13270', 'บางซ้าย', 'AY'),
('13280', 'ผักไห่ ปณ.ลาดชะโด', 'AY'),
('13290', 'ศูนย์ศิลปาชีพบางไทร', 'AY'),
('14000', 'เมืองอ่างทอง', 'AT'),
('14110', 'วิเศษชัยชาญ', 'AT'),
('14120', 'โพธิ์ทอง', 'AT'),
('14130', 'ป่าโมก', 'AT'),
('14140', 'ไชโย', 'AT'),
('14150', 'แสวงหา', 'AT'),
('14160', 'สามโก้', 'AT'),
('15000', 'เมืองลพบุรี', 'LB'),
('15001', 'ท่าหิน', 'LB'),
('15002', 'พระนารายณ์', 'LB'),
('15110', 'บ้านหมี่', 'LB'),
('15120', 'โคกสำโรง', 'LB'),
('15130', 'ชัยบาดาล', 'LB'),
('15140', 'พัฒนานิคม', 'LB'),
('15150', 'ท่าวุ้ง', 'LB'),
('15160', 'โคกกะเทียม', 'LB'),
('15170', 'หนองม่วง', 'LB'),
('15180', 'ท่าโขลง', 'LB'),
('15190', 'ลำสนธิ', 'LB'),
('15210', 'โคกตูม', 'LB'),
('15220', 'ดีลัง', 'LB'),
('15230', 'ท่าหลวง', 'LB'),
('15240', 'สระโบสถ์', 'LB'),
('15250', 'โคกเจริญ', 'LB'),
('16000', 'เมืองสิงห์บุรี', 'SG'),
('16110', 'อินทร์บุรี', 'SG'),
('16111', 'ท่างาม', 'SG'),
('16120', 'พรหมบุรี', 'SG'),
('16130', 'บางระจัน', 'SG'),
('16140', 'ท่าช้าง', 'SG'),
('16150', 'ค่ายบางระจัน', 'SG'),
('16160', 'ปากบาง', 'SG'),
('17000', 'เมืองชัยนาท', 'CN'),
('17110', 'มโนรมย์,เมืองชัยนาท', 'CN'),
('17120', 'วัดสิงห์,หนองพะโมง', 'CN'),
('17130', 'หันคา,เนินขาม', 'CN'),
('17140', 'สรรคบุรี', 'CN'),
('17150', 'สรรพยา', 'CN'),
('17160', 'ห้วยงู', 'CN'),
('17170', 'หางน้ำสาคร', 'CN'),
('18000', 'เฉลิมฯ,เมืองสระบุรี', 'SB'),
('18001', 'ปากเพรียว', 'SB'),
('18110', 'แก่งคอย', 'SB'),
('18120', 'พระพุทธบาท', 'SB'),
('18130', 'บ้านหมอ', 'SB'),
('18140', 'หนองแค', 'SB'),
('18150', 'วิหารแดง', 'SB'),
('18160', 'เสาไห้', 'SB'),
('18170', 'หนองแซง', 'SB'),
('18180', 'มวกเหล็ก', 'SB'),
('18190', 'หนองโดน', 'SB'),
('18210', 'ดอนพุด', 'SB'),
('18220', 'วังม่วง', 'SB'),
('18230', 'หินกอง', 'SB'),
('18240', 'พุแค', 'SB'),
('18250', 'คชสิทธิ์', 'SB'),
('18260', 'ทับกวาง', 'SB'),
('18270', 'ท่าลาน', 'SB'),
('20000', 'เมืองชลบุรี', 'CB'),
('20001', 'บางปลาสร้อย', 'CB'),
('20010', 'ศป.ศช.', 'CB'),
('20110', 'ศรีราชา', 'CB'),
('20111', 'บางพระ', 'CB'),
('20120', 'เกาะสีชัง', 'CB'),
('20130', 'บางแสน', 'CB'),
('20131', 'มหาวิทยาลัยบูรพา', 'CB'),
('20140', 'พนัสนิคม', 'CB'),
('20150', 'บางละมุง', 'CB'),
('20160', 'พานทอง', 'CB'),
('20170', 'บ้านบึง', 'CB'),
('20180', 'สัตหีบ', 'CB'),
('20181', 'อู่ตะเภา', 'CB'),
('20182', 'ฐานทัพเรือสัตหีบ', 'CB'),
('20190', 'หนองใหญ่', 'CB'),
('20220', 'หนองอิรุณ', 'CB'),
('20230', 'อ่าวอุดม', 'CB'),
('20231', 'แหลมฉบัง', 'CB'),
('20232', 'หนองขาม', 'CB'),
('20240', 'เกาะจันทร์', 'CB'),
('20250', 'บ้านอำเภอ', 'CB'),
('20251', 'เกล็ดแก้ว', 'CB'),
('20260', 'พัทยา', 'CB'),
('20261', 'จอมเทียน', 'CB'),
('20270', 'บ่อทอง', 'CB'),
('20280', 'ต.หนองขาม', 'CB'),
('21000', 'เมืองระยอง', 'RY'),
('21001', 'ท่าประดู่', 'RY'),
('21100', 'กะเฉด', 'RY'),
('21110', 'แกลง,เขาชะเมา', 'RY'),
('21120', 'บ้านค่าย', 'RY'),
('21130', 'บ้านฉาง', 'RY'),
('21140', 'ปลวกแดง', 'RY'),
('21150', 'ต.มาบตาพุด,ห้วยโป่ง', 'RY'),
('21151', 'นิคมอุตฯ มาบตาพุด', 'RY'),
('21160', 'เพ', 'RY'),
('21170', 'ปากน้ำประแสร์', 'RY'),
('21180', 'นิคมพัฒนา', 'RY'),
('21190', 'ต.กร่ำ,ต.ชากพง', 'RY'),
('21210', 'วังจันทร์', 'RY'),
('22000', 'เมืองจันทบุรี', 'JB'),
('22001', 'จันท์ธานี (บางกะจะ)', 'JB'),
('22110', 'ขลุง', 'JB'),
('22120', 'แก่งหางแมว,ท่าใหม่', 'JB'),
('22130', 'แหลมสิงห์', 'JB'),
('22140', 'โป่งน้ำร้อน', 'JB'),
('22150', 'มะขาม,เขาคิชฌกูฎ', 'JB'),
('22160', 'นายายอาม', 'JB'),
('22170', 'ทุ่งเบญจา', 'JB'),
('22180', 'สอยดาว', 'JB'),
('22190', 'พลิ้ว', 'JB'),
('22210', 'เขาคิชฌกูฏ', 'JB'),
('23000', 'เมืองตราด,เกาะกูด', 'TR'),
('23110', 'คลองใหญ่', 'TR'),
('23130', 'เขาสมิง', 'TR'),
('23140', 'บ่อไร่', 'TR'),
('23150', 'แสนตุ้ง', 'TR'),
('23160', 'หนองบอน', 'TR'),
('23170', 'เกาะช้าง', 'TR'),
('24000', 'เมืองฉะเชิงเทรา', 'CS'),
('24001', 'ดอนทอง', 'CS'),
('24110', 'บางคล้า', 'CS'),
('24120', 'ราชสาส์น,พนมสารคาม', 'CS'),
('24130', 'บางปะกง', 'CS'),
('24140', 'บ้านโพธิ์', 'CS'),
('24150', 'บางน้ำเปรี้ยว', 'CS'),
('24160', 'ท่าตะเกียบ,สนามชัยฯ', 'CS'),
('24170', 'ดอนฉิมพลี', 'CS'),
('24180', 'บางบัว', 'CS'),
('24190', 'แปลงยาว', 'CS'),
('25000', 'เมืองปราจีนบุรี', 'PR'),
('25110', 'กบินทร์บุรี', 'PR'),
('25130', 'ประจันตคาม', 'PR'),
('25140', 'ศรีมหาโพธิ์', 'PR'),
('25150', 'บ้านสร้าง', 'PR'),
('25190', 'ศรีมโหสถ', 'PR'),
('25220', 'นาดี', 'PR'),
('25230', 'บ้านพระ', 'PR'),
('25240', 'กบินทร์เก่า', 'PR'),
('26000', 'เมืองนครนายก', 'NK'),
('26001', 'ร.ร. จปร.', 'NK'),
('26110', 'บ้านนา', 'NK'),
('26120', 'องครักษ์', 'NK'),
('26130', 'ปากพลี', 'NK'),
('27000', 'เขาฉกรรจ์,เมืองฯ', 'SA'),
('27120', 'ฺอรัญประเทศ,โคกสูง', 'SA'),
('27160', 'วัฒนานคร', 'SA'),
('27180', 'ตาพระยา', 'SA'),
('27210', 'วังน้ำเย็น', 'SA'),
('27250', 'วังสมบูรณ์', 'SA'),
('27260', 'คลองหาด', 'SA'),
('30000', 'เมืองนครราชสีมา', 'NS'),
('30001', 'จอมสุรางค์', 'NS'),
('30002', 'อัมพวัน', 'NS'),
('30003', 'สวนหม่อน', 'NS'),
('30010', 'ศป.นม.', 'NS'),
('30110', 'พิมาย', 'NS'),
('30120', 'บัวใหญ่,บัวลาย', 'NS'),
('30130', 'ปากช่อง', 'NS'),
('30140', 'สีคิ้ว', 'NS'),
('30150', 'ปักธงชัย', 'NS'),
('30160', 'โนนสูง', 'NS'),
('30170', 'สูงเนิน', 'NS'),
('30180', 'ประทาย', 'NS'),
('30190', 'โชคชัย', 'NS'),
('30210', 'ด่านขุนทด,เทพารักษ์', 'NS'),
('30220', 'โนนไทย,พระทองคำ', 'NS'),
('30230', 'จักรราช,เฉลิมฯ', 'NS'),
('30240', 'ห้วยแถลง', 'NS'),
('30250', 'ครบุรี', 'NS'),
('30260', 'คง', 'NS'),
('30270', 'ชุมพวง,เมืองยาง', 'NS'),
('30280', 'ขามทะเลสอ', 'NS'),
('30290', 'ขามสะแกแสง', 'NS'),
('30310', 'ปณ.จอหอ', 'NS'),
('30320', 'ปากช่อง', 'NS'),
('30330', 'เสิงสาง', 'NS'),
('30340', 'คลองไผ่', 'NS'),
('30350', 'บ้านเหลื่อม', 'NS'),
('30360', 'โนนแดง', 'NS'),
('30370', 'วังน้ำเขียว', 'NS'),
('30380', 'กุตจิกนากลางหนองตะไก', 'NS'),
('30410', 'หนองบุนนาค', 'NS'),
('30420', 'ตลาดแค', 'NS'),
('30430', 'สีดา', 'NS'),
('30440', 'แก้งสนามนาง', 'NS'),
('31000', 'เมืองบุรีรัมย์,ห้วยฯ', 'BR'),
('31110', 'ชำนิ,นางรอง,เฉลิมฯ', 'BR'),
('31120', 'บ้านใหม่ไชยพจน์', 'BR'),
('31130', 'ลำปลายมาศ', 'BR'),
('31140', 'ประโคนชัย,พลับพลาไชย', 'BR'),
('31150', 'สตึก,แคนดง', 'BR'),
('31160', 'กระสัง', 'BR'),
('31170', 'โนนสุวรรณ,ละหานทราย', 'BR'),
('31180', 'บ้านกรวด', 'BR'),
('31190', 'คูเมือง', 'BR'),
('31210', 'หนองกี่', 'BR'),
('31220', 'ปะคำ', 'BR'),
('31230', 'นาโพธิ์', 'BR'),
('31240', 'หนองหงษ์', 'BR'),
('31250', 'พลับพลาชัย', 'BR'),
('31260', 'โนนดินแดง', 'BR'),
('32000', 'เมืองสุรินทร์,เขวาฯ', 'SL'),
('32001', 'จุมพล', 'SL'),
('32110', 'ศีขรภูมิ', 'SL'),
('32120', 'ท่าตูม', 'SL'),
('32130', 'รัตนบุรี,โนนนารายณ์', 'SL'),
('32140', 'ปราสาท,พนมดงรัก', 'SL'),
('32150', 'สังขะ', 'SL'),
('32160', 'สนม', 'SL'),
('32170', 'สำโรงทาบ', 'SL'),
('32180', 'จอมพระ', 'SL'),
('32190', 'ชุมพลบุรี,ศรีณรงค์', 'SL'),
('32210', 'กาบเชิง', 'SL'),
('32220', 'ลำดวน', 'SL'),
('32230', 'บัวเชด', 'SL'),
('33000', 'เมืองศรีสะเกษ,วังหิน', 'SE'),
('33001', 'เมืองใต้', 'SE'),
('33110', 'กันทรลักษณ์', 'SE'),
('33120', 'เมืองจันทร์,อุทุมพรฯ', 'SE'),
('33130', 'กันทรารมย์', 'SE'),
('33140', 'ขุขันธ์', 'SE'),
('33150', 'ขุนหาญ', 'SE'),
('33160', 'ราศีไศล,ศิลาลาด', 'SE'),
('33170', 'ปรางค์กู่', 'SE'),
('33180', 'ไพรบึง', 'SE'),
('33190', 'ยางชุมน้อย', 'SE'),
('33210', 'ห้วยทับทัน', 'SE'),
('33220', 'บึงบูรพ์,ภูสิงห์', 'SE'),
('33230', 'พยุห์', 'SE'),
('33240', 'ศรีรัตนะ', 'SE'),
('33250', 'โนนคุณ', 'SE'),
('33270', 'วังหิน', 'SE'),
('34000', 'ดอนมดแดง,เมืองอุบลฯ', 'UB'),
('34001', 'ปทุมาลัย', 'UB'),
('34002', 'แจ้งสนิท', 'UB'),
('34110', 'ตาลสุม,พิบูลมังสาหาร', 'UB'),
('34130', 'ตระการพืชผล', 'UB'),
('34140', 'ม่วงสามสิบ', 'UB'),
('34150', 'เขื่องใน', 'UB'),
('34160', 'เดชอุดม,ทุ่งศรีอุดม', 'UB'),
('34170', 'เขมราฐ,นาตาล', 'UB'),
('34190', 'วารินชำราบ,สว่างวีระ', 'UB'),
('34220', 'โขงเจียม', 'UB'),
('34230', 'บุณฑริก', 'UB'),
('34250', 'ศรีเมืองใหม่', 'UB'),
('34260', 'น้ำยืน,น้ำขุ่น', 'UB'),
('34270', 'กุดข้าวปุ้น', 'UB'),
('34280', 'นาจะหลวย', 'UB'),
('34310', 'ห้วยขะยุง', 'UB'),
('34320', 'บ้านกอก', 'UB'),
('34330', 'ตาลสุม', 'UB'),
('34340', 'โพธิ์ไทร', 'UB'),
('34350', 'สิรินธร', 'UB'),
('34360', 'สำโรง', 'UB'),
('35000', 'เมืองยโสธร', 'YS'),
('35110', 'คำเขื่อนแก้ว', 'YS'),
('35120', 'ไทยเจริญ,เลิงนกทา', 'YS'),
('35130', 'มหาชนะชัย', 'YS'),
('35140', 'กุดชุม', 'YS'),
('35150', 'ป่าติ้ว', 'YS'),
('35160', 'ค้อวัง', 'YS'),
('35170', 'ทรายมูล', 'YS'),
('35180', 'ดงแคนใหญ่', 'YS'),
('36000', 'เมืองชัยภูมิ', 'CY'),
('36110', 'ภูเขียว', 'CY'),
('36120', 'เกษตรสมบูรณ์', 'CY'),
('36130', 'จตุรัส,เนินสง่า', 'CY'),
('36140', 'คอนสวรรค์', 'CY'),
('36150', 'แก้งคร้อ', 'CY'),
('36160', 'บำเหน็จณรงค์', 'CY'),
('36170', 'บ้านเขว้า', 'CY'),
('36180', 'คอนสาร', 'CY'),
('36190', 'บ้านแท่น', 'CY'),
('36210', 'หนองบัวแดง', 'CY'),
('36220', 'หนองบัวโคก', 'CY'),
('36230', 'เทพสถิตย์', 'CY'),
('36240', 'หมื่นแผ้ว', 'CY'),
('36250', 'หนองบัวระเหว', 'CY'),
('36260', 'ภักดีชุมพล', 'CY'),
('37000', 'เมืองอำนาจเจริญ', 'AN'),
('37110', 'ปทุมราชวงศา', 'AN'),
('37180', 'ปทุมราชวงศา,พนา', 'AN'),
('37210', 'ชานุมาน', 'AN'),
('37240', 'หัวตะพาน', 'AN'),
('37290', 'เสนานิคม', 'AN'),
('38000', 'เมืองบึงกาฬ,บุ่งคล้า', 'BG'),
('38150', 'เซกา', 'BG'),
('38170', 'โซ่พิสัย', 'BG'),
('38180', 'พรเจริญ', 'BG'),
('38190', 'ปากคาด', 'BG'),
('38210', 'ศรีวิลัย', 'BG'),
('38220', 'บึงโขงหลง', 'BG'),
('39000', 'เมืองหนองบัวลำภู', 'NL'),
('39140', 'โนนสัง', 'NL'),
('39170', 'นากลาง,นาวัง', 'NL'),
('39180', 'ศรีบุญเรือง', 'NL'),
('39270', 'สุวรรณคูหา', 'NL'),
('39350', 'กุดดินจี่', 'NL'),
('40000', 'เมืองขอนแก่น', 'KK'),
('40001', 'เทพารักษ์', 'KK'),
('40002', 'มหาวิทยาลัยขอนแก่น', 'KK'),
('40003', 'ศรีจันทร์', 'KK'),
('40010', 'ศป.ขก.', 'KK'),
('40110', 'บ้านไผ่,โนนศิลา', 'KK'),
('40120', 'พล', 'KK'),
('40130', 'ชุมแพ', 'KK'),
('40140', 'น้ำพอง', 'KK'),
('40150', 'ภูเวียง,หนองนาคำ', 'KK'),
('40160', 'มัญจาคีรี,โคกโพธิ์ฯ', 'KK'),
('40170', 'กระนวน,ซำสูง', 'KK'),
('40180', 'ชนบท', 'KK'),
('40190', 'หนองสองห้อง', 'KK'),
('40210', 'หนองเรือ', 'KK'),
('40220', 'สีชมพู', 'KK'),
('40230', 'แวงน้อย', 'KK'),
('40240', 'ดอนโมง', 'KK'),
('40250', 'อุบลรัตน์', 'KK'),
('40260', 'ท่าพระขอนแก่น', 'KK'),
('40270', 'บ้านฝาง', 'KK'),
('40280', 'เขาสวนกวาง', 'KK'),
('40290', 'โนนหัน', 'KK'),
('40310', 'น้ำพองเก่า', 'KK'),
('40320', 'พระยืน', 'KK'),
('40330', 'แวงใหญ่', 'KK'),
('40340', 'เปือยน้อย', 'KK'),
('40350', 'ภูผาม่าน', 'KK'),
('41000', 'เมืองอุดรธานี', 'UD'),
('41001', 'ศรีสุข', 'UD'),
('41002', 'โพศรี', 'UD'),
('41010', 'ศป.อด.', 'UD'),
('41110', 'กมภวาปี', 'UD'),
('41130', 'พิบูลย์รักษ์,หนองหาน', 'UD'),
('41150', 'เพ็ญ', 'UD'),
('41160', 'บ้านเผื่อ', 'UD'),
('41190', 'บ้านดุง', 'UD'),
('41210', 'นายูง,น้ำโสม', 'UD'),
('41220', 'หนองวัวซอ', 'UD'),
('41230', 'ศรีธาตุ', 'UD'),
('41240', 'โนนสะอาด', 'UD'),
('41250', 'กุดจับ', 'UD'),
('41260', 'สร้างคอม', 'UD'),
('41280', 'วังสามหมอ', 'UD'),
('41290', 'ไขยวาน', 'UD'),
('41310', 'ทุ่งฝน', 'UD'),
('41320', 'บ้านเชียง', 'UD'),
('41330', 'ค่ายรามสูร', 'UD'),
('41340', 'หนองแสง', 'UD'),
('41360', 'หมากหญ้า', 'UD'),
('41370', 'พันดอน', 'UD'),
('41380', 'นายูง', 'UD'),
('42000', 'เมืองเลย', 'LY'),
('42001', 'ราชภัฏเลย', 'LY'),
('42100', 'นาอ้อ', 'LY'),
('42110', 'เชียงคาน', 'LY'),
('42120', 'ด่านซ้าย', 'LY'),
('42130', 'วังสะพุง', 'LY'),
('42140', 'ท่าลี่', 'LY'),
('42150', 'ปากชม', 'LY'),
('42160', 'ภูเรือ', 'LY'),
('42170', 'นาแห้ว', 'LY'),
('42180', 'ผาขาว,ภูกระดึง', 'LY'),
('42190', 'หนองหิน', 'LY'),
('42210', 'นาด้วง', 'LY'),
('42220', 'เอราวัณ', 'LY'),
('42230', 'ภูหลวง', 'LY'),
('42240', 'ผาขาว', 'LY'),
('43000', 'เมืองหนองคาย', 'NG'),
('43100', 'สระใคร', 'NG'),
('43110', 'ท่าบ่อ', 'NG'),
('43120', 'โพนพิสัย,เผ้าไร่', 'NG'),
('43130', 'ศรีเชียงใหม่', 'NG'),
('43140', 'บึงกาฬ(ใช้38000 แทน)', 'NG'),
('43150', 'เซกา (ใช้38150 แทน)', 'NG'),
('43160', 'สังคม', 'NG'),
('43170', 'โซ่พิสัย(ใช้38170แทน', 'NG'),
('43180', 'พรเจริญ(ใช้38180แทน)', 'NG'),
('43190', 'ปากคาด(ใช้ 38190แทน)', 'NG'),
('43210', 'บุ่งคล้า (ใช้38000)', 'NG'),
('43220', 'บึงโขงหลง (ใช้38220)', 'NG'),
('44000', 'เมืองมหาสารคาม', 'MS'),
('44001', 'โนนศรีสวัสดิ์', 'MS'),
('44110', 'พยัคฆภูมิพิสัย', 'MS'),
('44120', 'วาปีปทุม', 'MS'),
('44130', 'บรบือ,กุดรัง', 'MS'),
('44140', 'โกสุมพิชัย', 'MS'),
('44150', 'กันทรวิชัย', 'MS'),
('44160', 'เชียงยืน,ชื่นชม', 'MS'),
('44170', 'นาเชือก', 'MS'),
('44180', 'นาดูน', 'MS'),
('44190', 'แกดำ', 'MS'),
('44210', 'ยางสีสุราช', 'MS'),
('45000', 'จังหาร,เมืองร้อยเอ็ด', 'RA'),
('45110', 'โพนทอง', 'RA'),
('45120', 'เสลภูมิ', 'RA'),
('45130', 'สุวรรณภูมิ,ทุ่งเขาฯ', 'RA'),
('45140', 'พนมไพร,หนองฮี', 'RA'),
('45150', 'เกษตรวิสัย', 'RA'),
('45160', 'อาจสามารถ', 'RA'),
('45170', 'ธวัชบุรี', 'RA'),
('45180', 'จตุรพักตร์พิมาน', 'RA'),
('45190', 'ปทุมรัตน์', 'RA'),
('45210', 'หนองพอก', 'RA'),
('45220', 'เมืองสรวง', 'RA'),
('45230', 'โพธิ์ชัย', 'RA'),
('45240', 'โพนทราย', 'RA'),
('45250', 'เมยวดี', 'RA'),
('45280', 'โสกเชือก', 'RA'),
('46000', 'เมืองกาฬสินธุ์', 'KS'),
('46110', 'กุฉินารายณ์', 'KS'),
('46120', 'ยางตลาด', 'KS'),
('46130', 'กมลาไสย,ฆ้องชัย', 'KS'),
('46140', 'สหัสขันธ์', 'KS'),
('46150', 'สมเด็จ', 'KS'),
('46160', 'เขาวง,นาคู', 'KS'),
('46170', 'ห้วยเม็ก', 'KS'),
('46180', 'คำม่วง,สามชัย', 'KS'),
('46190', 'ท่าทันโท', 'KS'),
('46210', 'ร่องคำ', 'KS'),
('46220', 'หนองกุงศรี', 'KS'),
('46230', 'นามน', 'KS'),
('46240', 'ห้วยผึ้ง', 'KS'),
('47000', 'เมืองสกลนคร', 'SN'),
('47001', 'ธาตุนาเวง', 'SN'),
('47110', 'เจริญศิลป์,สว่างแดนฯ', 'SN'),
('47120', 'วานรนิวาส', 'SN'),
('47130', 'พรรณานิคม', 'SN'),
('47140', 'บ้านม่วง', 'SN'),
('47150', 'วาริชภูมิ', 'SN'),
('47160', 'พังโคน', 'SN'),
('47170', 'อากาศอำนวย', 'SN'),
('47180', 'กุดบาก,ภูพาน', 'SN'),
('47190', 'ส่องดาว', 'SN'),
('47210', 'กุสุมาลย์', 'SN'),
('47220', 'ดงมะไฟ', 'SN'),
('47230', 'โพนนาแก้ว', 'SN'),
('47240', 'ดอนเขือง', 'SN'),
('47250', 'คำตากล้า', 'SN'),
('47260', 'เต่างอย', 'SN'),
('47270', 'นิคมน้ำอูน', 'SN'),
('47280', 'โคกศรีสุพรรณ', 'SN'),
('47290', 'เจริญศิลป์', 'SN'),
('48000', 'เมืองนครพนม', 'NM'),
('48110', 'ธาติพนม', 'NM'),
('48120', 'ท่าอุเทน', 'NM'),
('48130', 'นาแก,วังยาง', 'NM'),
('48140', 'นาทม,บ้านแพง', 'NM'),
('48150', 'ศรีสงคราม', 'NM'),
('48160', 'ปลาปาก', 'NM'),
('48170', 'เรณูนคร', 'NM'),
('48180', 'นาหว้า', 'NM'),
('48190', 'โพนสวรรค์', 'NM'),
('49000', 'เมืองมุกดาหาร', 'MD'),
('49110', 'คำชะอี', 'MD'),
('49120', 'ดอนตาล', 'MD'),
('49130', 'นิคมคำสร้อย', 'MD'),
('49140', 'ดงหลวง', 'MD'),
('49150', 'หว้านใหญ่', 'MD'),
('49160', 'หนองสูง', 'MD'),
('50000', 'เมืองเชียงใหม่', 'CM'),
('50007', 'หนองหอย', 'CM'),
('50100', 'ปณ.พระสิงห์', 'CM'),
('50101', 'ช้างคลาน', 'CM'),
('50110', 'ฝาง', 'CM'),
('50120', 'สันป่าตอง', 'CM'),
('50130', 'สันกำแพง,แม่ออน', 'CM'),
('50131', 'บ่อสร้าง', 'CM'),
('50140', 'สารภี', 'CM'),
('50150', 'แม่แตง', 'CM'),
('50160', 'จอมทอง,ดอยหล่อ', 'CM'),
('50170', 'เชียงดาว,เวียงแหง', 'CM'),
('50180', 'แม่ริม', 'CM'),
('50190', 'พร้าว', 'CM'),
('50200', 'ปณ.เชียงใหม่', 'CM'),
('50201', 'สามแยกสวนปรุง', 'CM'),
('50202', 'มหาวิทยาลัยเชียงใหม่', 'CM'),
('50203', 'ศรีภูมิ', 'CM'),
('50204', 'ท่าอากาศยานเชียงใหม่', 'CM'),
('50205', 'พระสิงห์', 'CM'),
('50210', 'สันทราย', 'CM'),
('50220', 'ดอยสะเก็ด', 'CM'),
('50230', 'หางตง', 'CM'),
('50240', 'ฮอด', 'CM'),
('50250', 'สะเมิง', 'CM'),
('50260', 'ดอยเต่า', 'CM'),
('50270', 'แม่แจ่ม', 'CM'),
('50280', 'แม่อาย', 'CM'),
('50290', 'แม่โจ้', 'CM'),
('50300', 'ปณ.พระสิงห์', 'CM'),
('50301', 'แม่ปิง', 'CM'),
('50302', 'ช้างเผือก', 'CM'),
('50303', 'ศาลากลางเชียงใหม่', 'CM'),
('50310', 'อมก๋อย', 'CM'),
('50320', 'ไชยปราการ', 'CM'),
('50330', 'สันป่ายาง', 'CM'),
('50340', 'หนองตอง', 'CM'),
('50350', 'เวียงแหง', 'CM'),
('50360', 'แม่วาง', 'CM'),
('51000', 'เมืองลำพูน', 'LN'),
('51010', 'ศป.ลพ.', 'LN'),
('51110', 'ลี้', 'LN'),
('51120', 'ป่าซาง', 'LN'),
('51130', 'บ้านโฮ่ง', 'LN'),
('51140', 'แม่ทา', 'LN'),
('51150', 'อุโมงค์', 'LN'),
('51160', 'ทุ่งหัวช้าง', 'LN'),
('51170', 'ทากาด', 'LN'),
('51180', 'บ้านธิ', 'LN'),
('52000', 'เมืองลำปาง', 'LP'),
('52100', 'สบตุ๋ย', 'LP'),
('52102', 'แม่วัง', 'LP'),
('52110', 'งาว', 'LP'),
('52120', 'แจ้ห่ม', 'LP'),
('52130', 'เกาะคา', 'LP'),
('52140', 'วังเหนือ', 'LP'),
('52150', 'แม่ทะ', 'LP'),
('52160', 'เถิน', 'LP'),
('52170', 'สบปราบ', 'LP'),
('52180', 'แม่พริก', 'LP'),
('52190', 'ห้างฉัตร', 'LP'),
('52210', 'เสริมงาม', 'LP'),
('52220', 'แม่เมาะ', 'LP'),
('52230', 'แม่วะ', 'LP'),
('52240', 'เมืองปาน', 'LP'),
('53000', 'เมืองอุตรดิตถ์', 'AD'),
('53001', 'ท่าเสา', 'AD'),
('53110', 'น้ำปาด', 'AD'),
('53120', 'พิชัย', 'AD'),
('53130', 'ลับแล', 'AD'),
('53140', 'ตรอน', 'AD'),
('53150', 'ท่าปลา', 'AD'),
('53160', 'ฟากท่า', 'AD'),
('53170', 'วังกะพี้', 'AD'),
('53180', 'บ้านโคก', 'AD'),
('53190', 'ร่วมจิต', 'AD'),
('53210', 'ทุ่งยั้ง', 'AD'),
('53220', 'ท่าสัก', 'AD'),
('53230', 'ทองแสงขัน', 'AD'),
('54000', 'เมืองแพร่', 'PA'),
('54001', 'บ้านทุ่ง', 'PA'),
('54010', 'ศป.ดช.', 'PA'),
('54110', 'เด่นชัย', 'PA'),
('54120', 'สอง', 'PA'),
('54130', 'สูงเม่น', 'PA'),
('54140', 'ร้องกวาง,หนองม่วงไข่', 'PA'),
('54150', 'ลอง', 'PA'),
('54160', 'วังชิ้น', 'PA'),
('54170', 'หนองม่วงไข่', 'PA'),
('55000', 'เมืองน่าน,สันติสุข', 'NN'),
('55110', 'เวียงสา', 'NN'),
('55120', 'บ่อเกลือ,ปัว', 'NN'),
('55130', 'เฉลิมพระเกียรติ', 'NN'),
('55140', 'ท่าวังผา', 'NN'),
('55150', 'นาน้อย', 'NN'),
('55160', 'เชียงกลาง,สองแคว', 'NN'),
('55170', 'แม่จริม', 'NN'),
('55180', 'นาหมื่น', 'NN'),
('55190', 'บ้านหลวง', 'NN'),
('55210', 'ดู่พงษ์', 'NN'),
('55220', 'บ่อเกลือ', 'NN'),
('56000', 'เมืองพะเยา,ภูกามยาว', 'PY'),
('56001', 'หนองระบู', 'PY'),
('56110', 'เชียงคำ,ภูซาง', 'PY'),
('56120', 'ดอกคำใต้', 'PY'),
('56130', 'แม่ใจ', 'PY'),
('56140', 'ปง', 'PY'),
('56150', 'จุน', 'PY'),
('56160', 'เชียงม่วน', 'PY'),
('57000', 'เมืองเชียงราย', 'CR'),
('57001', 'ลานนา', 'CR'),
('57100', 'บ้านดู่', 'CR'),
('57110', 'แม่จัน,แม่ฟ้าหลวง', 'CR'),
('57120', 'พาน', 'CR'),
('57130', 'แม่สาย', 'CR'),
('57140', 'เชียงของ', 'CR'),
('57150', 'เชียงแสน', 'CR'),
('57160', 'ขุนตาล,เทิง', 'CR'),
('57170', 'เวียงป่าเป้า', 'CR'),
('57180', 'แม่สรวย', 'CR'),
('57190', 'ป่าแดด', 'CR'),
('57210', 'เวียงชัย,เชียงรุ้ง', 'CR'),
('57220', 'ห้วยไคร้', 'CR'),
('57230', 'ปล้อง', 'CR'),
('57240', 'แม่คำ', 'CR'),
('57250', 'แม่ลาว', 'CR'),
('57260', 'แม่เจดีย์', 'CR'),
('57270', 'จันจว้า', 'CR'),
('57280', 'แม่เย็น', 'CR'),
('57290', 'พญาเม็งราย', 'CR'),
('57310', 'เวียงแก่น', 'CR'),
('57340', 'ขุนตาล', 'CR'),
('58000', 'ปางมะผ้า,เมืองแม่ฯ', 'MH'),
('58110', 'แม่สะเรียง,สบเมย', 'MH'),
('58120', 'แม่ลาน้อย', 'MH'),
('58130', 'ปาย', 'MH'),
('58140', 'ขุนยวม', 'MH'),
('58150', 'ปางมะผ้า', 'MH'),
('60000', 'เมืองนครสวรรค์', 'NW'),
('60001', 'สวรรค์วิถี', 'NW'),
('60002', 'จิรประวัติ', 'NW'),
('60010', 'ศป.นว.', 'NW'),
('60110', 'หนองบัว', 'NW'),
('60120', 'ชุมแสง', 'NW'),
('60130', 'พยุหะคีรี', 'NW'),
('60140', 'ตาคลี', 'NW'),
('60150', 'แม่วงศ์,แม่เปิน,ชุมฯ', 'NW'),
('60160', 'ท่าตะโก', 'NW'),
('60170', 'โกรกพระ', 'NW'),
('60180', 'บรรพตพิสัย', 'NW'),
('60190', 'ตากฟ้า', 'NW'),
('60210', 'ช่องแค', 'NW'),
('60220', 'ไพศาลี', 'NW'),
('60230', 'เก้าเลี้ยว', 'NW'),
('60240', 'หนองเบน', 'NW'),
('60250', 'ทับกฤช', 'NW'),
('60260', 'จันเสน', 'NW'),
('61000', 'เมืองอุทัยธานี', 'UT'),
('61110', 'หนองฉาง', 'UT'),
('61120', 'ทัพทัน', 'UT'),
('61130', 'หนองขาหย่าง', 'UT'),
('61140', 'บ้านไร่', 'UT'),
('61150', 'สว่างอารมณ์', 'UT'),
('61160', 'ลานสัก', 'UT'),
('61170', 'ห้วยคต', 'UT'),
('61180', 'เมืองการุ้ง', 'UT'),
('62000', 'เมืองกำแพงเพชร', 'KP'),
('62110', 'พรานกระต่าย', 'KP'),
('62120', 'คลองขลุง,ปางศืลาทอง', 'KP'),
('62130', 'ขาณุวรลักษบุรี', 'KP'),
('62140', 'สลกบาตร', 'KP'),
('62150', 'ไทรงาม', 'KP'),
('62160', 'ปากดง', 'KP'),
('62170', 'ลานกระบือ', 'KP'),
('62180', 'คลองสาน', 'KP'),
('62190', 'ทรายทองวัฒนา', 'KP'),
('62210', 'สามัคคี', 'KP'),
('63000', 'เมืองตาก,วังเจ้า', 'TK'),
('63110', 'แม่สอด', 'TK'),
('63120', 'บ้านตาก', 'TK'),
('63130', 'สามเงา', 'TK'),
('63140', 'แม่ระมาด', 'TK'),
('63150', 'ท่าสองยาง', 'TK'),
('63160', 'พบพระ', 'TK'),
('63170', 'อุ้มผาง', 'TK'),
('64000', 'เมืองสุโขทัย', 'SC'),
('64110', 'สวรรคโลก', 'SC'),
('64120', 'ศรีสำโรง', 'SC'),
('64130', 'ศรีสัชนาลัย', 'SC'),
('64140', 'บ้านด่านลานหอย', 'SC'),
('64150', 'ทุ่งเสลี่ยง', 'SC'),
('64160', 'คีรีมาศ', 'SC'),
('64170', 'กงไกรลาศ', 'SC'),
('64180', 'ศรีนคร', 'SC'),
('64190', 'ท่าชัย', 'SC'),
('64210', 'เมืองเก่า', 'SC'),
('64220', 'บ้านสวน', 'SC'),
('64230', 'บ้านใหม่ไชยมงคล', 'SC'),
('65000', 'เมืองพิษณุโลก', 'PL'),
('65001', 'อรัญญิก', 'PL'),
('65110', 'บางกระทุ่ม', 'PL'),
('65120', 'นครไทย', 'PL'),
('65130', 'วังทอง', 'PL'),
('65140', 'ชาติกตระการ,บางระกำ', 'PL'),
('65150', 'พรหมพิราม', 'PL'),
('65160', 'วัดโบสถ์', 'PL'),
('65170', 'ชาติตระการ', 'PL'),
('65180', 'หนองตม', 'PL'),
('65190', 'เนินมะปราง', 'PL'),
('65210', 'เนินกุ่ม', 'PL'),
('65220', 'แก่งโสภา', 'PL'),
('65230', 'วัดพริก', 'PL'),
('65240', 'ชุมแสงสงคราม', 'PL'),
('66000', 'เมืองพิจิตร', 'PJ'),
('66110', 'ตะพานหิน', 'PJ'),
('66120', 'บางมูลนาก', 'PJ'),
('66130', 'โพทะเล,บึงนาราง', 'PJ'),
('66140', 'วชิรบารมี,สามง่าม', 'PJ'),
('66150', 'ทับคล้อ', 'PJ'),
('66160', 'สากเหล็ก', 'PJ'),
('66170', 'หัวดง', 'PJ'),
('66180', 'วังทรายพูน', 'PJ'),
('66190', 'โพธิ์ประทับช้าง', 'PJ'),
('66210', 'ดงเจริญ', 'PJ'),
('66220', 'กำแพงดิน', 'PJ'),
('66230', 'เขาทราย', 'PJ'),
('67000', 'เมืองเพชรบูรณ์', 'PC'),
('67110', 'น้ำหนาว,หล่มสัก', 'PC'),
('67120', 'หล่มเก่า', 'PC'),
('67130', 'วิเชียรบุรี', 'PC'),
('67140', 'หนองไผ่', 'PC'),
('67150', 'ชนแดน', 'PC'),
('67160', 'บึงสามพัน', 'PC'),
('67170', 'ศรีเทพ', 'PC'),
('67180', 'พุเตย', 'PC'),
('67190', 'ดงขุย', 'PC'),
('67210', 'วังชมภู', 'PC'),
('67220', 'นาเฉลียง', 'PC'),
('67230', 'วังพิกุล', 'PC'),
('67240', 'วังโป่ง', 'PC'),
('67250', 'ท่าพล', 'PC'),
('67260', 'น้ำหนาว', 'PC'),
('67270', 'เขาค้อ', 'PC'),
('67280', 'แคมป์สน', 'PC'),
('70000', 'เมืองราชบุรี', 'RB'),
('70110', 'บ้านโป่ง', 'RB'),
('70120', 'โพธาราม', 'RB'),
('70130', 'ดำเนินสะดวก', 'RB'),
('70140', 'ปากท่อ', 'RB'),
('70150', 'จอมบึง', 'RB'),
('70160', 'บางแพ', 'RB'),
('70170', 'วัดเพลง', 'RB'),
('70180', 'สวนผึ้ง,บ้านคา', 'RB'),
('70190', 'ห้วยกระบอก', 'RB'),
('70210', 'หลักห้า', 'RB'),
('71000', 'ด่านมะขามเตี้ย,เมือง', 'KB'),
('71001', 'หน้าเมือง', 'KB'),
('71110', 'ท่าม่วง', 'KB'),
('71120', 'ท่ามะกา', 'KB'),
('71121', 'ลูกแก', 'KB'),
('71130', 'ท่าเรือพระแท่น', 'KB'),
('71140', 'พนมทวน', 'KB'),
('71150', 'ไทรโยค', 'KB'),
('71160', 'บ่อพลอย', 'KB'),
('71170', 'ห้วยกระเจา', 'KB'),
('71180', 'ทองผาภูมิ', 'KB'),
('71190', 'ลาดหญ้า', 'KB'),
('71210', 'เลาขวัญ', 'KB'),
('71220', 'หนองปรือ', 'KB'),
('71240', 'สังขละบุรี', 'KB'),
('71250', 'ศรีสวัสดิ์', 'KB'),
('71260', 'ด่านมะขามเตี้ย', 'KB'),
('72000', 'เมืองสุพรรณบุรี', 'SU'),
('72001', 'ป่าเลไลยก์', 'SU'),
('72110', 'สองพี่น้อง', 'SU'),
('72120', 'เดิมบางนางบวช', 'SU'),
('72130', 'สามชุก', 'SU'),
('72140', 'ศรีประจันต์', 'SU'),
('72150', 'บางปลาม้า', 'SU'),
('72160', 'อู่ทอง', 'SU'),
('72170', 'ดอนเจดีย์', 'SU'),
('72180', 'ด่านช้าง', 'SU'),
('72190', 'ทุ่งคอก', 'SU'),
('72210', 'สวนแตง', 'SU'),
('72220', 'สระยายโสม', 'SU'),
('72230', 'ท่าเสด็จ', 'SU'),
('72240', 'หนองหญ้าไซ', 'SU'),
('72250', 'สระกระโจม', 'SU'),
('73000', 'เมืองนครปฐม', 'NP'),
('73001', 'สนามจันทร์', 'NP'),
('73110', 'สามพราน', 'NP'),
('73120', 'นครชัยศรี,พุทธมณฑล', 'NP'),
('73130', 'บางเลน', 'NP'),
('73140', 'กำแพงแสน', 'NP'),
('73150', 'ดอนตูม', 'NP'),
('73160', 'อ้อมใหญ่', 'NP'),
('73170', 'พุทธมณฑล', 'NP'),
('73180', 'สระพัฒนา', 'NP'),
('73190', 'บางหลวง', 'NP'),
('73210', 'ไร่ขิง', 'NP'),
('73220', 'กระทุ่มล้ม', 'NP'),
('74000', 'เมืองสมุทรสาคร', 'SS'),
('74001', 'ท่าฉลอม', 'SS'),
('74110', 'กระทุ่มแบน', 'SS'),
('74120', 'บ้านแพ้ว', 'SS'),
('74130', 'อ้อมน้อย', 'SS'),
('75000', 'เมืองสมุทรสงคราม', 'SM'),
('75110', 'อัมพวา', 'SM'),
('75120', 'บางคนฑี', 'SM'),
('76000', 'เมืองเพชรบุรี', 'PB'),
('76100', 'หาดเจ้าสำราญ', 'PB'),
('76110', 'บ้านแหลม', 'PB'),
('76120', 'ชะอำ', 'PB'),
('76121', 'นราธิป', 'PB'),
('76130', 'ท่ายาง', 'PB'),
('76140', 'เขาย้อย', 'PB'),
('76150', 'บ้านลาด', 'PB'),
('76160', 'หนองหญ้าปล้อง', 'PB'),
('76170', 'แก่งกระจาน', 'PB'),
('77000', 'เมืองประจวบคีรีขันธ์', 'PK'),
('77110', 'หัวหิน', 'PK'),
('77120', 'ปราณบุรี', 'PK'),
('77130', 'ทับสะแก', 'PK'),
('77140', 'บางสะพาน', 'PK'),
('77150', 'กุยบุรี', 'PK'),
('77160', 'ธนะรัชต์', 'PK'),
('77170', 'บางสะพานน้อย', 'PK'),
('77180', 'สามร้อยยอด', 'PK'),
('77190', 'บ้านกรูด', 'PK'),
('77210', 'อ่าวน้อย', 'PK'),
('77220', 'ปากน้ำปราณ', 'PK'),
('77230', 'ร่อนทอง', 'PK'),
('80000', 'พระพรหม,เมือง', 'NR'),
('80001', 'ศาลามีชัย', 'NR'),
('80002', 'ท่าวัง', 'NR'),
('80003', 'หัวอิฐ', 'NR'),
('80010', 'ศป.ทส.', 'NR'),
('80110', 'ทุ่งสง', 'NR'),
('80120', 'สิชล', 'NR'),
('80130', 'จุฬาภรณ์,ร่อนพิบูลย์', 'NR'),
('80140', 'ปากพนัง', 'NR'),
('80141', 'ปากพนังตะวันตก', 'NR'),
('80150', 'ฉวาง,ถ้ำพรรณรา', 'NR'),
('80160', 'ท่าศาลา', 'NR'),
('80170', 'หัวไทร', 'NR'),
('80180', 'ชะอวด', 'NR'),
('80190', 'เฉลิมพระเกียรติ', 'NR'),
('80210', 'ขนอม', 'NR'),
('80220', 'นาบอน', 'NR'),
('80230', 'ลานสะกา', 'NR'),
('80240', 'ทุ่งใหญ่', 'NR'),
('80250', 'ช้างกลาง', 'NR'),
('80260', 'ทานพอ', 'NR'),
('80270', 'พิปูน', 'NR'),
('80280', 'เขามหาชัย', 'NR'),
('80290', 'ชะเมา', 'NR'),
('80310', 'บ้านพูน', 'NR'),
('80320', 'พรหมคีรี', 'NR'),
('80330', 'บางจาก', 'NR'),
('80340', 'เสาเภา', 'NR'),
('80350', 'ไม้หลา', 'NR'),
('80360', 'บางขัน', 'NR'),
('81000', 'เมืองกระบี่', 'KA'),
('81110', 'อ่าวลึก', 'KA'),
('81120', 'คลองท่อม,ลำทับ', 'KA'),
('81130', 'เหนือคลอง', 'KA'),
('81140', 'เขาพนม', 'KA'),
('81150', 'เกาะลันตา', 'KA'),
('81160', 'ปลายพระยา', 'KA'),
('81170', 'คลองพน', 'KA'),
('81180', 'อ่าวนาง', 'KA'),
('82000', 'เมืองพังงา', 'PG'),
('82110', 'ตะกั่วป่า', 'PG'),
('82111', 'ตลาดใหญ่', 'PG'),
('82120', '้ท้ายเหมือง', 'PG'),
('82130', 'ตะกั่วทุ่ง', 'PG'),
('82140', 'โคกกลอย', 'PG'),
('82150', 'คุระบุรี', 'PG'),
('82160', 'เกาะยาว', 'PG'),
('82170', 'กะปง', 'PG'),
('82180', 'ทับปุด', 'PG'),
('82190', 'บางม่วง', 'PG'),
('82210', 'ลำแก่น', 'PG'),
('83000', 'เมืองภูเก็ต', 'PP'),
('83001', 'รัษฎา', 'PP'),
('83002', 'เกาะแก้ว', 'PP'),
('83100', 'ปณ.กะรน', 'PP'),
('83101', 'ราไวย์', 'PP'),
('83110', 'ถลาง', 'PP'),
('83111', 'ท่าอากาศยานภูเก็ต', 'PP'),
('83120', 'กะทู้', 'PP'),
('83130', 'ปณ.ราไวย์', 'PP'),
('83140', 'ปณ.ท่าอากาศยานภูเก็ต', 'PP'),
('83150', 'ปณ.ป่าตอง', 'PP'),
('83151', 'ทวีวงศ์', 'PP'),
('83200', 'ปณ.เกาะแก้ว', 'PP'),
('84000', 'เมืองสุราษฎร์', 'SR'),
('84001', 'บ้านดอน', 'SR'),
('84100', 'ขุนทะเล', 'SR'),
('84110', 'ไชยา', 'SR'),
('84120', 'บ้านนาสาร', 'SR'),
('84130', 'พุนพิน', 'SR'),
('84131', 'สหกรณ์สุราษฎร์ธานี', 'SR'),
('84140', 'เกาะสมุย', 'SR'),
('84150', 'ท่าฉาง', 'SR'),
('84160', 'กาญจนดิษฐ์', 'SR'),
('84170', 'ท่าชนะ', 'SR'),
('84180', 'คีรีรัฐนิคม,วิภาวดี', 'SR'),
('84190', 'เวียงสระ', 'SR'),
('84210', 'ชัยบุรี,พระแสง', 'SR'),
('84220', 'ดอนสัก', 'SR'),
('84230', 'บ้านตาขุน', 'SR'),
('84240', 'บ้านนาเดิม', 'SR'),
('84250', 'พนม', 'SR'),
('84260', 'เคียนซา', 'SR'),
('84270', 'พรุพี', 'SR'),
('84280', 'เกาะพะงัน', 'SR'),
('84290', 'ท่าทองใหม่', 'SR'),
('84310', 'ละไม', 'SR'),
('84320', 'บ่อผุด', 'SR'),
('84330', 'แม่น้ำ', 'SR'),
('84340', 'ปากแพรก', 'SR'),
('84350', 'ชัยบุรี', 'SR'),
('84360', 'เกาะเต่า', 'SR'),
('85000', 'เมืองระนอง', 'RN'),
('85001', 'ปากน้ำระนอง', 'RN'),
('85110', 'กระบุรี', 'RN'),
('85120', 'กะเปอร์,สุขสำราญ', 'RN'),
('85130', 'ละอุ่น', 'RN'),
('86000', 'เมืองชุมพร', 'CP'),
('86010', 'ศป.ชพ.', 'CP'),
('86100', 'ทุ่งคา', 'CP'),
('86110', 'หลังสวน', 'CP'),
('86120', 'ปากน้ำชุมพร', 'CP'),
('86130', 'สวี', 'CP'),
('86140', 'ท่าแซะ', 'CP'),
('86150', 'ปากน้ำหลังสวน', 'CP'),
('86160', 'ปะทิว', 'CP'),
('86170', 'ละแม', 'CP'),
('86180', 'พะโต๊ะ', 'CP'),
('86190', 'ปฐมพร', 'CP'),
('86210', 'มาบอำมฤต', 'CP'),
('86220', 'ทุ่งตะโก', 'CP'),
('86230', 'สะพลี', 'CP'),
('90000', 'เมืองสงขลา', 'SK'),
('90001', 'เก้าเส้ง', 'SK'),
('90100', 'พะวง', 'SK'),
('90110', 'คลองหอยโข่ง,หาดใหญ่', 'SK'),
('90111', 'รัถการ', 'SK'),
('90112', 'คอหงส์', 'SK'),
('90113', 'ศรีภูวนารถ', 'SK'),
('90114', 'หาดใหญ่ใน', 'SK'),
('90115', 'ท่าอากาศยานหาดใหญ่', 'SK'),
('90120', 'สะเดา', 'SK'),
('90130', 'จะนะ', 'SK'),
('90140', 'ระโนด', 'SK'),
('90150', 'เทพา', 'SK'),
('90160', 'นาทวี', 'SK'),
('90170', 'คลองแงะ', 'SK'),
('90180', 'รัตภูมิ', 'SK'),
('90190', 'สทิงพระ', 'SK'),
('90210', 'สะบ้าย้อย', 'SK'),
('90220', 'ควนเนียง', 'SK'),
('90230', 'ทุ่งลุง', 'SK'),
('90240', 'ปาดังเบซาร์', 'SK'),
('90250', 'บ้านพรุ', 'SK'),
('90260', 'ลำไพล', 'SK'),
('90270', 'กระแสสินธุ์', 'SK'),
('90280', 'สิงหนคร', 'SK'),
('90310', 'นาหม่อม', 'SK'),
('90320', 'บ้านด่านนอก', 'SK'),
('90330', 'ม่วงงาม', 'SK'),
('91000', 'เมืองสตูล', 'ST'),
('91110', 'ละงู', 'ST'),
('91120', 'ทุ่งหว้า', 'ST'),
('91130', 'ควนกาหลง,มะนัง', 'ST'),
('91140', 'ฉลุง', 'ST'),
('91150', 'ท่าแพ', 'ST'),
('91160', 'ควนโดน', 'ST'),
('92000', 'เมืองตรัง', 'TU'),
('92001', 'ทับเที่ยง', 'TU'),
('92110', 'กันตัง', 'TU'),
('92120', 'หาดสำราญ,ปะเหลียน', 'TU'),
('92130', 'ห้วยยอด', 'TU'),
('92140', 'ย่านตาขาว', 'TU'),
('92150', 'สิเกา', 'TU'),
('92160', 'รัษฎา', 'TU'),
('92170', 'นาโยง', 'TU'),
('92180', 'ทุ่งยาว', 'TU'),
('92190', 'ลำภูรา', 'TU'),
('92210', 'นาวง', 'TU'),
('92220', 'วังวิเศษ', 'TU'),
('93000', 'เมืองพัทลุง,ศรีนคริน', 'PU'),
('93110', 'ควนขนุน,ป่าพะยอม', 'PU'),
('93120', 'ปากพะยูน', 'PU'),
('93130', 'เขาชัยสน', 'PU'),
('93140', 'บางแก้ว', 'PU'),
('93150', 'ปากคลอง', 'PU'),
('93160', 'ตะโหมด', 'PU'),
('93170', 'ป่าบอน', 'PU'),
('93180', 'กงหรา', 'PU'),
('93190', 'ศรีบรรพต', 'PU'),
('94000', 'เมืองปัตตานี', 'PN'),
('94001', 'รูสะมิแล', 'PN'),
('94110', 'สายบุรี', 'PN'),
('94120', 'โคกโพธิ์', 'PN'),
('94130', 'ปะนาเระ', 'PN'),
('94140', 'ทุ่งยางแดง,มายอ', 'PN'),
('94150', 'ยะหริ่ง', 'PN'),
('94160', 'ยะรัง', 'PN'),
('94170', 'หนองจิก', 'PN'),
('94180', 'แม่ลาน', 'PN'),
('94190', 'ปาลัส', 'PN'),
('94220', 'ไม้แก่น', 'PN'),
('94230', 'กะพ้อ', 'PN'),
('95000', 'เมืองยะลา,กงปินัง', 'YR'),
('95001', 'หลักเมือง', 'YR'),
('95110', 'เบตง', 'YR'),
('95120', 'กาบัง,ยะหา', 'YR'),
('95130', 'บันนังสตา', 'YR'),
('95140', 'รามัน', 'YR'),
('95150', 'ธารโต', 'YR'),
('95160', 'ลำใหม่', 'YR'),
('95170', 'แม่หวาด', 'YR'),
('96000', 'เมืองนราธิวาส', 'NT'),
('96110', 'ตากใบ', 'NT'),
('96120', 'สุไหงโก-ลก', 'NT'),
('96130', 'เจาะไอร้อง,ระแงะ', 'NT'),
('96140', 'สุไหงปาดี', 'NT'),
('96150', 'รือเสาะ', 'NT'),
('96160', 'แว้ง', 'NT'),
('96170', 'บาเจาะ', 'NT'),
('96180', 'ยี่งอ', 'NT'),
('96190', 'สุคิริน', 'NT'),
('96210', 'ศรีสาคร', 'NT'),
('96220', 'จะแนะ', 'NT');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(10) unsigned NOT NULL,
  `prod_code` varchar(25) NOT NULL,
  `prod_tname` varchar(70) NOT NULL,
  `bar_code` varchar(15) NOT NULL,
  `pdgrp_code` varchar(10) NOT NULL,
  `pdbrnd_code` varchar(10) NOT NULL,
  `pddsgn_code` varchar(10) NOT NULL,
  `pdsize_code` varchar(10) NOT NULL,
  `pdcolor_code` varchar(10) NOT NULL,
  `pdmodel_code` varchar(10) NOT NULL,
  `pdgrp_desc` varchar(50) NOT NULL,
  `pdbrnd_desc` varchar(50) NOT NULL,
  `pddsgn_desc` varchar(50) NOT NULL,
  `pdsize_desc` varchar(50) NOT NULL,
  `pdcolor_desc` varchar(50) NOT NULL,
  `pdmodel_desc` varchar(50) NOT NULL,
  `unit_price_amt` decimal(10,2) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `prod_code`, `prod_tname`, `bar_code`, `pdgrp_code`, `pdbrnd_code`, `pddsgn_code`, `pdsize_code`, `pdcolor_code`, `pdmodel_code`, `pdgrp_desc`, `pdbrnd_desc`, `pddsgn_desc`, `pdsize_desc`, `pdcolor_desc`, `pdmodel_desc`, `unit_price_amt`, `rec_status`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 'SLS7RNS BR60', 'SEALY BED STEAD & HB. RENAISSANCE D.57178 6 FOOT', '8852012011213', 'HB', 'SL', 'RNS', '60', 'BR', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6''X6.5''', 'BROWN', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:10:04', '', '0000-00-00 00:00:00'),
(2, 'SLFTRNS BA51X250', 'FOOT PROTECTOR-RENAISSANCE / BL 30/15 / 51X250 CM.', '8852012072504', 'PF', 'SL', 'RNS', '51X250', 'BA', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '51X250CM', 'BLACK', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(3, 'SL5PRNS BA58X250', 'PILLOW SHAM-RENAISSANCE / BL 30/15 / 58X250 CM.', '8852012072511', 'PF', 'SL', 'RNS', '58X250', 'BA', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '58X250CM', 'BLACK', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(4, 'SLMURNS LB210X198', 'SEALY MATT.UNICASED RENAISSANCE D.57224/210X198CM', '8852012039163', 'MT', 'SL', 'RNS', '210X198', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '210X198 CM', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(5, 'SLMURNS LB77X81', 'SEALY MATT.UNICASED RENAISSANCE D.57224/77"X81"', '8852012046949', 'MT', 'SL', 'RNS', '77X81', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '77"x81"', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(6, 'SLMURNS LB207X202', 'SEALY MATT.UNICASED RENAISSANCE D.57224/207X202CM.', '8852012030160', 'MT', 'SL', 'RNS', '207X202', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '207X202CM', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(7, 'SL5PRNS BA58X233', 'SEALY PILLOW SHAM RENAISSANCE-BL30/15/58X233', '8852012074140', 'PF', 'SL', 'RNS', '58X233', 'BA', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '58X233 CM.', 'BLACK', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(8, 'SLMURNS LB200X202', 'SEALY MATT. UNICASED RENAISSANCE D.57224/200X202CM', '8852012073785', 'MT', 'SL', 'RNS', '200X202', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '200X202CM', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(9, 'SLSTRNS LB01', 'SEALY SIDETABLE RENAISSANCE D.57224 (มีพนักพิง)', '8852012534385', 'HB', 'SL', 'RNS', '01', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '1 PERSON', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(10, 'SLMURNS LB60', 'SEALY MATT. UNICASED RENAISSANCE D.57224 / 6''X6.5''', '8852012534293', 'MT', 'SL', 'RNS', '60', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6''X6.5''', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(11, 'SLMURNS LB50', 'SEALY MATT. UNICASED RENAISSANCE D.57224 / 5''X6.5''', '8852012534309', 'MT', 'SL', 'RNS', '50', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5''X6.5''', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(12, 'SLMURNS LB78X85', 'SEALY MATT. UNICASED RENAISSANCE D.57224 /6''6"X7''1', '8852012545961', 'MT', 'SL', 'RNS', '78X85', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '78"X85"', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(13, 'SLS7RNS LB60', 'SEALY BED STEADS&HB.RENAISSANCE D.57224 / 6 FOOT', '8852012534330', 'HB', 'SL', 'RNS', '60', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6''X6.5''', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(14, 'SLS7RNS LB50', 'SEALY BED STEADS&HB.RENAISSANCE D.57224 / 5 FOOT', '8852012534347', 'HB', 'SL', 'RNS', '50', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '5''X6.5''', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:14', '', '0000-00-00 00:00:00'),
(15, 'SL5PRNS LB58X233', 'SEALY PILLOW SHAM RENAISSANCE D.57224 58X233CM.', '8852012534361', 'PF', 'SL', 'RNS', '58X233', 'LB', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '58X233 CM.', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(16, 'SLMURNS LB600710', 'SEALY MATT.UNICASED RENAISSANCE D.57224/6''X7''1"', '8852012659637', 'MT', 'SL', 'RNS', '600710', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6''x7''.1"', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(17, 'SLMURNS LB78X80', 'SEALY MATT. UNICASED RENAISSANCE D.57224/6''6"X6''8"', '8852012546982', 'MT', 'SL', 'RNS', '78X80', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '78"X80"', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(18, 'SLMURNS LB061080', 'SEALY MATT. UNICASED RENAISSANCE D.57224/5''1"X6''8"', '8852012546944', 'MT', 'SL', 'RNS', '061080', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '61"X80"', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(19, 'SLMURNS LB63X80', 'SEALY MATT. UNICASED RENAISSANCE D.57224/5''3"X6''8"', '8852012546968', 'MT', 'SL', 'RNS', '63X80', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '63"X80"', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(20, 'SLFTRNS LB51X233', 'SEALY FOOT PROTECTOR RENAISSANCE D.57224 51X233CM.', '8852012534354', 'PF', 'SL', 'RNS', '51X233', 'LB', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '51X233 CM.', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(21, 'SLMURNS LB76X81', 'SEALY MATT. UNICASED RENAISSANCE D.57224 /76"x81"', '8852012560834', 'MT', 'SL', 'RNS', '76X81', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '76X81INCH', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(22, 'SLMURNS LB200X203', 'SEALY MATT. UNICASED RENAISSANCE D.57224/200x203cm', '8852012609434', 'MT', 'SL', 'RNS', '200X203', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '200X203 CM', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(23, 'SLSTRNS LB00', 'SEALY SIDE TABLE RENAISSANCE D.57224 ไม่มีพนักพิง', '8852012076014', 'HB', 'SL', 'RNS', '00', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '00', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(24, 'SLMURNS LB72X80', 'SEALY MATT. UNICASED RENAISSANCE D.57224/72"x80"', '8852012623553', 'MT', 'SL', 'RNS', '72X80', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '72"X80"', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(25, 'SLMURNS LB184X210', 'SEALY MATT.UNICASED RENAISSANCE D.57224 184X210cm.', '8852012642257', 'MT', 'SL', 'RNS', '184X210', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '184X210CM', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(26, 'SLMURNS LB35', 'SEALY MATT.UNICASED RENAISSANCE D.57224/3.5''', '8852012648624', 'MT', 'SL', 'RNS', '35', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5''X6.5''', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(27, 'SLMURNS LB79X81', 'SEALY MATT.UNICASED RENAISSANCE D.57224/79"X81"', '8852012091550', 'MT', 'SL', 'RNS', '79X81', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '79X81INCH', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(28, 'SLMURNS LB77X82', 'SEALY MATT.UNICASED RENISSANCE D.57224/77"X82"', '8852012106704', 'MT', 'SL', 'RNS', '77X82', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '77"x82"', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(29, 'SLS7RNS AM50', 'SEALY BED STEADS & HB.RENAISSANCE D.TA-109/5''X6.5''', '8852012109958', 'HB', 'SL', 'RNS', '50', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '5''X6.5''', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(30, 'SLMURNS AM60', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/6''X6.5''', '8852012109880', 'MT', 'SL', 'RNS', '60', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6''X6.5''', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(31, 'SLMURNS AM35', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/3.5''X6.5''', '8852012109903', 'MT', 'SL', 'RNS', '35', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5''X6.5''', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(32, 'SLS7RNS LB6F_R', 'SEALY BED STEADS RENAISSANCE -57224 /6'' / โอ๊คแดง', '8852012104519', 'HB', 'SL', 'RNS', '6F_R', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6X6.5FOOT ', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:15', '', '0000-00-00 00:00:00'),
(33, 'SLSTRNS LB01_R', 'SEALY Sidetable RENAISSANCE-577224-มีพนัก-โอ๊คแดง', '8852012104557', 'HB', 'SL', 'RNS', '01_R', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '1 PERSON R', 'LIGHT BROW', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(34, 'SLSTRNS AM01', 'SEALY SIDE TABLE RENAISSANCE D.TA-109 ( มีพนักพิง)', '8852012109965', 'HB', 'SL', 'RNS', '01', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '1 PERSON', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(35, 'SLMURNS AM77X80', 'SEALY MATT.UNICASED RENAISSANCE D.TA109/77"X80"', '8852012127723', 'MT', 'SL', 'RNS', '77X80', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '77X80INCH', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(36, 'SLMURNS AM196X206', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/196X206CM', '8852012135100', 'MT', 'SL', 'RNS', '196X206', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '196X206CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(37, 'SLSTRNS AM01_R', 'SEALYsidetable renaissance D.TA-109 พนักพิงโอ๊คแดง', '8852012134820', 'HB', 'SL', 'RNS', '01_R', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '1 PERSON R', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(38, 'SLMURNS AM205X203', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/205X203CM', '8852012138101', 'MT', 'SL', 'RNS', '205X203', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '205X203CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(39, 'SLMURNS AM193X203', 'SEALY MATT.UNICASED RENAISSANCE-D.TA-109/193X203CM', '8852012134554', 'MT', 'SL', 'RNS', '193X203', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '193X203 CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(40, 'SLS7RNS AM60', 'SEALY BED STEADS & HB.RENAISSANCE D.TA-109/6''X6.5''', '8852012109941', 'HB', 'SL', 'RNS', '60', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6''X6.5''', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(41, 'SLMURNS AM50', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/5''X6.5''', '8852012109897', 'MT', 'SL', 'RNS', '50', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5''X6.5''', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(42, 'SLMURNS AM78X80', 'SEALY MATT. UNICASED RENAISSANCE D.57224/78"X80"', '8852012158451', 'MT', 'SL', 'RNS', '78X80', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '78"X80"', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(43, 'SLMURNS AM89X78', 'SEALY MATT.UNICASE RENAISSANCE /TA-109/7''5"X6''6"', '8852012165947', 'MT', 'SL', 'RNS', '89X78', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '89X78INCH', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(44, 'SLS7RNS AM60_R', 'SEALY BED STEADS RENAISSANCE D.TA-109/6''-โอ๊คแดง', '8852012168559', 'HB', 'SL', 'RNS', '60_R', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6''X6.5'' RE', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(45, 'SLMURNS AM197X205', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/197X205CM', '8852012162182', 'MT', 'SL', 'RNS', '197X205', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '197X205CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(46, 'SLMURNS AM500630', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/5''X6''.3"', '8852012169259', 'MT', 'SL', 'RNS', '500630', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5''X6''.3"', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(47, 'SLMURNS AM200X200', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/200X200', '8852012183927', 'MT', 'SL', 'RNS', '200X200', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '200X200 CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(48, 'SLFTRNS G351X280', 'SEALY FOOTPROTECTOR RENAISSANCE-HT20/05-51X280CM.', '8852012204561', 'PF', 'SL', 'RNS', '51X280', 'G3', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '51X280CM', 'GOLDEN BRO', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(49, 'SLMURNS AM40', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/4''X6.5''', '8852012224033', 'MT', 'SL', 'RNS', '40', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '4''X6.5''', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:16', '', '0000-00-00 00:00:00'),
(50, 'PJMURNS AM205X216', 'UNICASED RENAISSANCE D.TA109 205X216 CM', '8852012224316', 'MT', 'PJ', 'RNS', '205X216', 'AM', 'RNS', 'Mattress', 'PROJECT', 'RENAISSANC', '205X216CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(51, 'SLMURNS AM180X198', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/180X198CM', '8852012223166', 'MT', 'SL', 'RNS', '180X198', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '180X198 CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(52, 'SLMURNS AM195X206', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/195X206CM', '8852012244635', 'MT', 'SL', 'RNS', '195X206', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '195X206CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(53, 'SLMURNS AM60X80', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/60"X80"', '8852012258229', 'MT', 'SL', 'RNS', '60X80', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '60"X80"', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(54, 'SLMURNS AM210X207', 'SEALY MATT UNICASED RENAISSANCE D.TA-109/210X207', '8852012276421', 'MT', 'SL', 'RNS', '210X207', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '210X207CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(55, 'SLMURNS AM55', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109_5.5''X6.5''', '8852012289773', 'MT', 'SL', 'RNS', '55', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5.5''X6.5''', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(56, 'SLMURNS AM183X215', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109_183X215cm', '8852012289780', 'MT', 'SL', 'RNS', '183X215', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '183X215CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(57, 'SLMURNS AM76X80', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/76"X80"', '8852012362841', 'MT', 'SL', 'RNS', '76X80', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '76"X80"', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(58, 'SLMURNS GT60', 'SEALY CLASSIC LUXURY COLL.RENAISSANCE-57321_6''X6.5', '8852012389282', 'MT', 'SL', 'RNS', '60', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6''X6.5''', 'GOLD FONTA', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(59, 'SLMURNS GT35', 'SEALY CLASSIC LUXURY CO.RENAISSANCE-57321_3.5''X6.5', '8852012389305', 'MT', 'SL', 'RNS', '35', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5''X6.5''', 'GOLD FONTA', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(60, 'SLMURNS RJ35', 'SEALY MU CLASSIC LUXURY RENAISSANCE-CD203C_3.5X6.5', '8852012465450', 'MT', 'SL', 'RNS', '35', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5''X6.5''', 'RUBY', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(61, 'SLMURNS GT84X84', 'SEALY CLASSIC LUXURY COLL.RENAISSANCE-57321_7''X7''', '8852012430540', 'MT', 'SL', 'RNS', '84X84', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '84"X84"', 'GOLD FONTA', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:17', '', '0000-00-00 00:00:00'),
(62, 'SLMURNS RJ60', 'SEALY MU CLASSIC LUXURY RENAISSANCE-CD203C_6X6.5', '8852012465436', 'MT', 'SL', 'RNS', '60', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6''X6.5''', 'RUBY', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(63, 'SLMURNS RJ50', 'SEALY MU CLASSIC LUXURY RENAISSANCE-CD203C_5X6.5', '8852012465443', 'MT', 'SL', 'RNS', '50', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5''X6.5''', 'RUBY', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(64, 'SLMURNS GT800650', 'SEALY CLASSIC LUXURY RENAISSANCE D.57321_8''X6.5''', '8852012720399', 'MT', 'SL', 'RNS', '800650', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '8''x6.5''', 'GOLD FONTA', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(65, 'SLMURNS RJ180X195', 'SEALY MU NEW! RENAISSANCE D.CD203C_180X195 CM', '8852012683465', 'MT', 'SL', 'RNS', '180X195', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '180X195CM', 'RUBY', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(66, 'SLMURNS AJ35', 'SEALY MU NEW!  RENAISSANCE D.PAESTUM927-7_3.5X6.5', ' 0000000002243', 'MT', 'SL', 'RNS', '35', 'AJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5''X6.5''', 'APPEAL', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(67, 'SLMURNS AJ50', 'SEALY MU NEW!  RENAISSANCE D.PAESTUM927-7_5''X6.5''', ' 0000000002244', 'MT', 'SL', 'RNS', '50', 'AJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5''X6.5''', 'APPEAL', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(68, 'SLMURNS AJ60', 'SEALY MU NEW!  RENAISSANCE D.PAESTUM927-7_6''X6.5''', '8852012462633', 'MT', 'SL', 'RNS', '60', 'AJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6''X6.5''', 'APPEAL', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(69, 'SLMURNS RJ194X206', 'SEALY MU NEW! RENAISANCE D.CD203C_194X206 CM.', '8859232503078', 'MT', 'SL', 'RNS', '194X206', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '194X206CM', 'RUBY', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(70, 'SLMURNS RJ194X205', 'SEALY MU NEW! RENAISSANCE D.CD203C_194X205 CM', '8852012967145', 'MT', 'SL', 'RNS', '194X205', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '194X205CM', 'RUBY', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(71, 'SLMURNS AM197X204', 'SEALY MU RENAISSANCE D.TA-109_197X204', '8852012922496', 'MT', 'SL', 'RNS', '197X204', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '197X204CM', 'AMETHYST', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(72, 'SLMURNS RJ200X200', 'SEALY MU NEW! RENAISSANCE D.CD203C_200X200 CM.', '8859232569753', 'MT', 'SL', 'RNS', '200X200', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '200X200 CM', 'RUBY', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(73, 'SLMURNS ZY60', 'SEALY MU CLASSIC LUXURY RENAISSANCE W5691D_6X6.5', '8859232599316', 'MT', 'SL', 'RNS', '60', 'ZY', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6''X6.5''', 'ZYVOTA', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(74, 'SLMURNS ZY50', 'SEALY MU CLASSIC LUXURY RENAISSANCE W5691D_5X6.5', '8859232599323', 'MT', 'SL', 'RNS', '50', 'ZY', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5''X6.5''', 'ZYVOTA', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00'),
(75, 'SLMURNS ZY35', 'SEALY MU CLASSIC LUXURY RENAISSANCE W5691D_3.5X6.5', '8859232599330', 'MT', 'SL', 'RNS', '35', 'ZY', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5''X6.5''', 'ZYVOTA', 'RENAISSANC', '0.00', NULL, NULL, '2016-01-08 04:11:18', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prov_mast`
--

DROP TABLE IF EXISTS `prov_mast`;
CREATE TABLE IF NOT EXISTS `prov_mast` (
  `prov_code` varchar(2) NOT NULL,
  `prov_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prov_mast`
--

INSERT INTO `prov_mast` (`prov_code`, `prov_name`) VALUES
('AD', 'อุตรดิต'),
('AN', 'อำนาจเจริญ'),
('AT', 'อ่างทอง'),
('AY', 'อยุธยา'),
('BG', 'บึงกาฬ'),
('BK', 'กรุงเทพมหานคร'),
('BR', 'บุรีรัมย์'),
('CB', 'ชลบุรี'),
('CM', 'เชียงใหม่'),
('CN', 'ชัยนาท'),
('CP', 'ชุมพร'),
('CR', 'เชียงราย'),
('CS', 'ฉะเชิงเทรา'),
('CY', 'ชัยภูมิ'),
('JB', 'จันทบุรี'),
('KA', 'กระบี่'),
('KB', 'กาญจนบุรี'),
('KK', 'ขอนแก่น'),
('KP', 'กำแพงเพชร'),
('KS', 'กาฬสินธ์'),
('LB', 'ลพบุรี'),
('LN', 'ลำพูน'),
('LP', 'ลำปาง'),
('LY', 'เลย'),
('MD', 'มุกดาหาร'),
('MH', 'แม่ฮ่องสอน'),
('MS', 'มหาสารคาม'),
('NB', 'นนทบุรี'),
('NG', 'หนองคาย'),
('NK', 'นครนายก'),
('NL', 'หนองบัวลำภู'),
('NM', 'นครพนม'),
('NN', 'น่าน'),
('NP', 'นครปฐม'),
('NR', 'นครศรีธรรมราช'),
('NS', 'นครราชสีมา'),
('NT', 'นราธิวาส'),
('NW', 'นครสวรรค์'),
('PA', 'แพร่'),
('PB', 'เพชรบุรี'),
('PC', 'เพชรบูรณ์'),
('PG', 'พังงา'),
('PJ', 'พิจิตร'),
('PK', 'ประจวบคิรีขันธ์'),
('PL', 'พิษณุโลก'),
('PN', 'ปัตตานี'),
('PP', 'ภูเก็ต'),
('PR', 'ปราจีนบุรี'),
('PT', 'ปทุมธานี'),
('PU', 'พัทลุง'),
('PY', 'พะเยา'),
('RA', 'ร้อยเอ็ด'),
('RB', 'ราชบุรี'),
('RN', 'ระนอง'),
('RY', 'ระยอง'),
('SA', 'สระแก้ว'),
('SB', 'สระบุรี'),
('SC', 'สุโขทัย'),
('SE', 'ศรีสะเกษ'),
('SG', 'สิงห์บุรี'),
('SK', 'สงขลา'),
('SL', 'สุรินทร์'),
('SM', 'สมุทรสงคราม'),
('SN', 'สกลนคร'),
('SP', 'สมุทรปราการ'),
('SR', 'สุราษณ์ธานี'),
('SS', 'สมุทรสาคร'),
('ST', 'สตูล'),
('SU', 'สุพรรณบุรี'),
('TK', 'ตาก'),
('TR', 'ตราด'),
('TU', 'ตรัง'),
('UB', 'อุบลราชธานี'),
('UD', 'อุดรธานี'),
('UT', 'อุทัยธานี'),
('YR', 'ยะลา'),
('YS', 'ยโสธร');

-- --------------------------------------------------------

--
-- Table structure for table `title_mast`
--

DROP TABLE IF EXISTS `title_mast`;
CREATE TABLE IF NOT EXISTS `title_mast` (
  `id` int(11) NOT NULL,
  `title_name` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title_mast`
--

INSERT INTO `title_mast` (`id`, `title_name`) VALUES
(1, 'คุณ'),
(2, 'นาย'),
(3, 'นางสาว'),
(4, 'นาง');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
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

DROP TABLE IF EXISTS `wh_mast`;
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
  `updated_at` datetime NOT NULL 
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
  ADD PRIMARY KEY (`consignee_id`);

--
-- Indexes for table `pmt_discount`
--
ALTER TABLE `pmt_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_disc_payment_rate`
--
ALTER TABLE `pmt_disc_payment_rate`
  ADD PRIMARY KEY (`disc_pay_rate_id`);

--
-- Indexes for table `pmt_disc_premium_deny`
--
ALTER TABLE `pmt_disc_premium_deny`
  ADD PRIMARY KEY (`disc_premium_deny_id`);

--
-- Indexes for table `pmt_disc_shop_rate`
--
ALTER TABLE `pmt_disc_shop_rate`
  ADD PRIMARY KEY (`disc_shop_rate_id`);

--
-- Indexes for table `pmt_group_mast`
--
ALTER TABLE `pmt_group_mast`
  ADD PRIMARY KEY (`pmt_group_code`);

--
-- Indexes for table `pmt_mast`
--
ALTER TABLE `pmt_mast`
  ADD PRIMARY KEY (`pmt_mast_id`);

--
-- Indexes for table `pmt_package_det`
--
ALTER TABLE `pmt_package_det`
  ADD PRIMARY KEY (`package_det_id`);

--
-- Indexes for table `pmt_package_mast`
--
ALTER TABLE `pmt_package_mast`
  ADD PRIMARY KEY (`package_mast_id`);

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
  ADD PRIMARY KEY (`pmt_product_id`);

--
-- Indexes for table `pmt_product_set`
--
ALTER TABLE `pmt_product_set`
  ADD PRIMARY KEY (`pmt_product_set_id`);

--
-- Indexes for table `pmt_product_set_det`
--
ALTER TABLE `pmt_product_set_det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmt_transaction_mast`
--
ALTER TABLE `pmt_transaction_mast`
  ADD PRIMARY KEY (`transaction_code`);

--
-- Indexes for table `post_mast`
--
ALTER TABLE `post_mast`
  ADD PRIMARY KEY (`post_code`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `prov_mast`
--
ALTER TABLE `prov_mast`
  ADD PRIMARY KEY (`prov_code`);

--
-- Indexes for table `title_mast`
--
ALTER TABLE `title_mast`
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `cos_invmast`
--
ALTER TABLE `cos_invmast`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `consignee_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pmt_discount`
--
ALTER TABLE `pmt_discount`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_disc_payment_rate`
--
ALTER TABLE `pmt_disc_payment_rate`
  MODIFY `disc_pay_rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_disc_premium_deny`
--
ALTER TABLE `pmt_disc_premium_deny`
  MODIFY `disc_premium_deny_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_disc_shop_rate`
--
ALTER TABLE `pmt_disc_shop_rate`
  MODIFY `disc_shop_rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pmt_mast`
--
ALTER TABLE `pmt_mast`
  MODIFY `pmt_mast_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pmt_package_det`
--
ALTER TABLE `pmt_package_det`
  MODIFY `package_det_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pmt_package_mast`
--
ALTER TABLE `pmt_package_mast`
  MODIFY `package_mast_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `pmt_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pmt_product_set`
--
ALTER TABLE `pmt_product_set`
  MODIFY `pmt_product_set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pmt_product_set_det`
--
ALTER TABLE `pmt_product_set_det`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `title_mast`
--
ALTER TABLE `title_mast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
