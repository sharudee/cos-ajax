/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:27:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_disc_premium_deny
-- ----------------------------
DROP TABLE IF EXISTS `pmt_disc_premium_deny`;
CREATE TABLE `pmt_disc_premium_deny` (
  `disc_premium_deny_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pmt_mast_id` int(10) NOT NULL,
  `pdsize_code` varchar(15) DEFAULT NULL,
  `discount_type` char(1) DEFAULT NULL,
  `discount_amt` decimal(18,4) DEFAULT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`disc_premium_deny_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_disc_premium_deny
-- ----------------------------
