/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:27:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_consignee
-- ----------------------------
DROP TABLE IF EXISTS `pmt_consignee`;
CREATE TABLE `pmt_consignee` (
  `consignee_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pmt_mast_id` int(10) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  `discount_amt` decimal(18,4) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`consignee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_consignee
-- ----------------------------
