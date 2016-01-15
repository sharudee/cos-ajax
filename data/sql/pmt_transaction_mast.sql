/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:28:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_transaction_mast
-- ----------------------------
DROP TABLE IF EXISTS `pmt_transaction_mast`;
CREATE TABLE `pmt_transaction_mast` (
  `transaction_code` varchar(10) NOT NULL DEFAULT '',
  `pmt_group_code` varchar(10) DEFAULT NULL,
  `trnsaction_name` varchar(50) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`transaction_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_transaction_mast
-- ----------------------------
INSERT INTO `pmt_transaction_mast` VALUES ('DISC-CASH', 'DISCOUNT', 'ส่วนลดเงินสด', 'ACTIVE', null, '2016-01-08 08:08:42', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_transaction_mast` VALUES ('DISC-PM', 'DISCOUNT', 'ส่วนลดให้ชุดของแถม', 'ACTIVE', null, '2016-01-08 08:21:54', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_transaction_mast` VALUES ('PAY-CARD06', 'PAYMENT', 'ผ่อนชำระด้วยบัตรร่วมรายการ 0% 6 เดือน', 'ACTIVE', null, '2016-01-08 08:23:59', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_transaction_mast` VALUES ('PAY-CASH', 'PAYMENT', 'ชำระด้วยเงินสด', 'ACTIVE', null, '2016-01-08 08:21:54', '', '0000-00-00 00:00:00');
