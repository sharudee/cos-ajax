/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:28:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_package_det
-- ----------------------------
DROP TABLE IF EXISTS `pmt_package_det`;
CREATE TABLE `pmt_package_det` (
  `package_det_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_mast_id` int(10) NOT NULL,
  `pmt_product_set_id` int(10) DEFAULT NULL,
  `set_qty` decimal(18,2) DEFAULT NULL,
  `unit_price_amt` decimal(18,2) DEFAULT NULL,
  `set_price_amt` decimal(18,2) DEFAULT NULL,
  `uom` varchar(15) NOT NULL,
  `rec_status` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`package_det_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_package_det
-- ----------------------------
INSERT INTO `pmt_package_det` VALUES ('1', '1', '2', '4.00', '595.00', '2380.00', 'PCS', null, null, '2016-01-08 14:05:27', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_package_det` VALUES ('2', '2', '2', '4.00', '595.00', '2380.00', 'PCS', null, null, '2016-01-08 14:08:30', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_package_det` VALUES ('3', '3', '2', '1.00', '595.00', '595.00', 'PCS', null, null, '2016-01-08 14:08:57', '', '0000-00-00 00:00:00');
