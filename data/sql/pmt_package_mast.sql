/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:28:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_package_mast
-- ----------------------------
DROP TABLE IF EXISTS `pmt_package_mast`;
CREATE TABLE `pmt_package_mast` (
  `package_mast_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`package_mast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_package_mast
-- ----------------------------
INSERT INTO `pmt_package_mast` VALUES ('1', '1', '12', 'RNS', '60', 'RENAISSANCE', '6\'X6.5\'', '311970.00', 'BAHT', '0.0000', '169000.00', 'BAHT', null, null, '150000.00', 'ACTIVE', null, '2016-01-08 14:11:07', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_package_mast` VALUES ('2', '1', '13', 'RNS', '50', 'RENAISSANCE', '5\'X6.5\'', '287970.00', 'BAHT', null, '152000.00', 'BAHT', null, null, '135000.00', 'ACTIVE', null, '2016-01-08 14:11:08', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_package_mast` VALUES ('3', '1', '14', 'RNS', '35', 'RENAISSANCE', '3.5\'X6.5\'', '210390.00', 'BAHT', null, '121000.00', 'BAHT', null, null, '107000.00', 'ACTIVE', null, '2016-01-08 14:12:17', '', '0000-00-00 00:00:00');
