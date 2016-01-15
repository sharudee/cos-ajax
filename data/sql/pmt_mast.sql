/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:27:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_mast
-- ----------------------------
DROP TABLE IF EXISTS `pmt_mast`;
CREATE TABLE `pmt_mast` (
  `pmt_mast_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pmt_mast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_mast
-- ----------------------------
INSERT INTO `pmt_mast` VALUES ('1', 'MBS2015001', 'Sealy Brand Sale # 2 Mail Super Shock', '2016-01-01', '2016-01-08', null, 'จัดรายการ', 'PROMOTION', '0.2500', 'ACTIVE', null, '2016-01-08 10:06:28', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_mast` VALUES ('2', 'MBS2015002', 'Sealy LUXE Living Sale UP to 60% off', '2016-01-01', '2016-01-08', null, 'เพื่อการส่งเสริมการขาย', 'CAMPAIGN', '0.2500', 'ACTIVE', null, '2016-01-08 10:06:29', '', '0000-00-00 00:00:00');
