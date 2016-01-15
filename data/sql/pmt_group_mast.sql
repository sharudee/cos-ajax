/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:27:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_group_mast
-- ----------------------------
DROP TABLE IF EXISTS `pmt_group_mast`;
CREATE TABLE `pmt_group_mast` (
  `pmt_group_code` varchar(10) NOT NULL DEFAULT '',
  `pmt_group_code_name` varchar(25) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pmt_group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_group_mast
-- ----------------------------
INSERT INTO `pmt_group_mast` VALUES ('BOX', 'ฐานรอง', 'ACTIVE', null, '2016-01-08 08:49:21', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_group_mast` VALUES ('DISCOUNT', 'ประเภทส่วนลด', 'ACTIVE', null, '2016-01-08 08:01:36', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_group_mast` VALUES ('HB', 'หัวเตียง', 'ACTIVE', null, '2016-01-08 08:46:27', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_group_mast` VALUES ('PAYMENT', 'ประเภทการชำระเงิน', 'ACTIVE', null, '2016-01-08 08:02:42', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_group_mast` VALUES ('PD', 'ชุดสินค้าจัดรายการ', 'ACTIVE', null, '2016-01-08 07:59:56', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_group_mast` VALUES ('PM', 'ชุดของแถม', 'ACTIVE', null, '2016-01-08 07:59:08', '', '0000-00-00 00:00:00');
