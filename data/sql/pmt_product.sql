/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:28:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_product
-- ----------------------------
DROP TABLE IF EXISTS `pmt_product`;
CREATE TABLE `pmt_product` (
  `pmt_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pmt_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmt_product
-- ----------------------------
INSERT INTO `pmt_product` VALUES ('1', '12', 'SLMURNS LB60', 'SEALY MATT. UNICASED RENAISSANCE D.57224 / 6\'X6.5\'', '8852012534293', 'MT', 'SL', 'RNS', '60', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6\'X6.5\'', 'LIGHT BROWN', 'RENAISSANCE', '129000.00', null, null, '2016-01-08 13:37:14', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product` VALUES ('2', '12', 'SLMURNS AM60', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/6\'X6.5\'', '8852012109880', 'MT', 'SL', 'RNS', '60', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6\'X6.5\'', 'AMETHYST', 'RENAISSANCE', '0.00', null, null, '2016-01-08 13:37:15', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product` VALUES ('3', '12', 'SLMURNS GT60', 'SEALY CLASSIC LUXURY COLL.RENAISSANCE-57321_6\'X6.5', '8852012389282', 'MT', 'SL', 'RNS', '60', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6\'X6.5\'', 'GOLD FONTAINEBLEAU', 'RENAISSANCE', '299000.00', null, null, '2016-01-08 13:37:16', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product` VALUES ('4', '12', 'SLMURNS RJ60', 'SEALY MU CLASSIC LUXURY RENAISSANCE-CD203C_6X6.5', '8852012465436', 'MT', 'SL', 'RNS', '60', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6\'X6.5\'', 'RUBY', 'RENAISSANCE', '279000.00', 'D', null, '2016-01-08 13:37:17', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product` VALUES ('5', '12', 'SLMURNS AJ60', 'SEALY MU NEW!  RENAISSANCE D.PAESTUM927-7_6\'X6.5\'', '8852012462633', 'MT', 'SL', 'RNS', '60', 'AJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6\'X6.5\'', 'APPEAL', 'RENAISSANCE', '0.00', null, null, '2016-01-08 13:37:18', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product` VALUES ('6', '12', 'SLMURNS ZY60', 'SEALY MU CLASSIC LUXURY RENAISSANCE W5691D_6X6.5', '8859232599316', 'MT', 'SL', 'RNS', '60', 'ZY', 'RNS', 'Mattress', 'SEALY', 'RENAISSANCE', '6\'X6.5\'', 'ZYVOTA', 'RENAISSANCE', '279000.00', null, null, '2016-01-08 13:37:19', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product` VALUES ('7', '2', 'PMPCBN01LYSTD', 'PILLOW CASE BARCELONA STANDARD', '8852012911032', 'PM', 'PM', 'BN01', 'STD', 'LY', 'BN01', 'Premium', 'PREMIUM', 'BARCELONA', 'STANDARD', 'L-YELLOW', 'BARCELONA', '0.00', null, null, '2016-01-08 13:58:06', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product` VALUES ('8', '2', 'PMPCL93 CRSTD', 'PILLOW CASE STANDARD LORIA CREAM', '8852012492371', 'PM', 'PM', 'L93', 'STD', 'CR', 'L93', 'Premium', 'PREMIUM', 'Loria', 'STANDARD', 'CREAM', 'Loria', '0.00', 'D', null, '2016-01-08 13:59:56', '', '0000-00-00 00:00:00');
INSERT INTO `pmt_product` VALUES ('9', '2', 'PMPCL93 BLSTD', 'PILLOW CASE STANDARD LORIA BLUE', '8852012492364', 'PM', 'PM', 'L93', 'STD', 'BL', 'L93', 'Premium', 'PREMIUM', 'Loria', 'STANDARD', 'BLUE', 'Loria', '0.00', null, null, '2016-01-08 14:01:20', '', '0000-00-00 00:00:00');
