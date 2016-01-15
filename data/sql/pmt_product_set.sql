/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:28:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_product_set
-- ----------------------------
DROP TABLE IF EXISTS `pmt_product_set`;
CREATE TABLE `pmt_product_set` (
  `pmt_product_set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pmt_product_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_product_set
-- ----------------------------
INSERT INTO `pmt_product_set` VALUES ('1', 'PM01', 'PM', 'เซ็ทเครื่องนอน 13 ชิ้น', '13.00', '20900.00', '20900.00', 'SET', null, null, 'ACTIVE', null, '2016-01-08 08:35:56', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('2', 'PM02', 'PM', 'ชุดหมอนหนุน', '4.00', '595.00', '2380.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 08:36:12', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('3', 'PM03', 'PM', 'ชุดหมอนอิง', '2.00', '350.00', '700.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 08:37:46', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('4', 'PM04', 'PM', 'ชุดหมอนข้าง', '2.00', '695.00', '1390.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 08:38:50', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('5', 'PM05', 'PM', 'ไส้ผ้านวม', '1.00', '3250.00', '3250.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 08:40:43', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('6', 'HB001', 'HB', 'หัวเตียง  RENAISSANCE 6.0X6.5', '1.00', '159500.00', '159500.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 08:54:37', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('7', 'BOX001', 'BOX', 'ฐานรอง   RENAISSANCE 6.0X6.5', '1.00', '0.00', '0.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 08:54:41', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('8', 'HB002', 'HB', 'หัวเตียง   RENAISSANCE 5.0X6.5', '1.00', '145500.00', '145500.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 08:55:53', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('9', 'BOX002', 'BOX', 'ฐานรอง   RENAISSANCE 5.0X6.5', '1.00', null, null, 'PCS', null, null, 'ACTIVE', null, '2016-01-08 08:56:22', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('10', 'HB003', 'HB', 'หัวเตียงและปลายเตียง  PLUSH King (39x72) 2 หลัง', '1.00', '0.00', '0.00', 'SET', 'BAHT', '30000.0000', 'ACTIVE', null, '2016-01-08 13:46:32', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('11', 'HB004', 'HB', 'หัวเตียงและปลายเตียง  PLUSH King (39x72) 1 หลัง', '1.00', '0.00', '0.00', 'SET', 'BAHT', '15000.0000', 'ACTIVE', null, '2016-01-08 13:46:36', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('12', 'RNS60', 'PD', 'ที่นอน RENAISSANCE 6.0X6.5', '1.00', '279000.00', '279000.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 13:35:54', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('13', 'RNS50', 'PD', 'ที่นอน RENAISSANCE 5.0X6.5', '1.00', '255000.00', '255000.00', 'PCS', 'BAHT', '0.0000', 'ACTIVE', null, '2016-01-08 14:13:23', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product_set` VALUES ('14', 'RNS35', 'PD', 'ที่นอน RENAISSANCE 3.5X6.5', '1.00', '199000.00', '199000.00', 'PCS', null, null, 'ACTIVE', null, '2016-01-08 14:14:07', '', '0000-00-00 00:00:00');
