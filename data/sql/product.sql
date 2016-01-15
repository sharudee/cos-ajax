/*
Navicat MySQL Data Transfer

Source Server         : Cos
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : modal_app

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-01-11 08:29:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'SLS7RNS BR60', 'SEALY BED STEAD & HB. RENAISSANCE D.57178 6 FOOT', '8852012011213', 'HB', 'SL', 'RNS', '60', 'BR', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'BROWN', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:10:04', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('2', 'SLFTRNS BA51X250', 'FOOT PROTECTOR-RENAISSANCE / BL 30/15 / 51X250 CM.', '8852012072504', 'PF', 'SL', 'RNS', '51X250', 'BA', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '51X250CM', 'BLACK', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('3', 'SL5PRNS BA58X250', 'PILLOW SHAM-RENAISSANCE / BL 30/15 / 58X250 CM.', '8852012072511', 'PF', 'SL', 'RNS', '58X250', 'BA', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '58X250CM', 'BLACK', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('4', 'SLMURNS LB210X198', 'SEALY MATT.UNICASED RENAISSANCE D.57224/210X198CM', '8852012039163', 'MT', 'SL', 'RNS', '210X198', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '210X198 CM', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('5', 'SLMURNS LB77X81', 'SEALY MATT.UNICASED RENAISSANCE D.57224/77\"X81\"', '8852012046949', 'MT', 'SL', 'RNS', '77X81', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '77\"x81\"', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('6', 'SLMURNS LB207X202', 'SEALY MATT.UNICASED RENAISSANCE D.57224/207X202CM.', '8852012030160', 'MT', 'SL', 'RNS', '207X202', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '207X202CM', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('7', 'SL5PRNS BA58X233', 'SEALY PILLOW SHAM RENAISSANCE-BL30/15/58X233', '8852012074140', 'PF', 'SL', 'RNS', '58X233', 'BA', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '58X233 CM.', 'BLACK', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('8', 'SLMURNS LB200X202', 'SEALY MATT. UNICASED RENAISSANCE D.57224/200X202CM', '8852012073785', 'MT', 'SL', 'RNS', '200X202', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '200X202CM', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('9', 'SLSTRNS LB01', 'SEALY SIDETABLE RENAISSANCE D.57224 (มีพนักพิง)', '8852012534385', 'HB', 'SL', 'RNS', '01', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '1 PERSON', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('10', 'SLMURNS LB60', 'SEALY MATT. UNICASED RENAISSANCE D.57224 / 6\'X6.5\'', '8852012534293', 'MT', 'SL', 'RNS', '60', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('11', 'SLMURNS LB50', 'SEALY MATT. UNICASED RENAISSANCE D.57224 / 5\'X6.5\'', '8852012534309', 'MT', 'SL', 'RNS', '50', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5\'X6.5\'', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('12', 'SLMURNS LB78X85', 'SEALY MATT. UNICASED RENAISSANCE D.57224 /6\'6\"X7\'1', '8852012545961', 'MT', 'SL', 'RNS', '78X85', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '78\"X85\"', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('13', 'SLS7RNS LB60', 'SEALY BED STEADS&HB.RENAISSANCE D.57224 / 6 FOOT', '8852012534330', 'HB', 'SL', 'RNS', '60', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('14', 'SLS7RNS LB50', 'SEALY BED STEADS&HB.RENAISSANCE D.57224 / 5 FOOT', '8852012534347', 'HB', 'SL', 'RNS', '50', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '5\'X6.5\'', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:14', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('15', 'SL5PRNS LB58X233', 'SEALY PILLOW SHAM RENAISSANCE D.57224 58X233CM.', '8852012534361', 'PF', 'SL', 'RNS', '58X233', 'LB', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '58X233 CM.', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('16', 'SLMURNS LB600710', 'SEALY MATT.UNICASED RENAISSANCE D.57224/6\'X7\'1\"', '8852012659637', 'MT', 'SL', 'RNS', '600710', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6\'x7\'.1\"', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('17', 'SLMURNS LB78X80', 'SEALY MATT. UNICASED RENAISSANCE D.57224/6\'6\"X6\'8\"', '8852012546982', 'MT', 'SL', 'RNS', '78X80', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '78\"X80\"', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('18', 'SLMURNS LB061080', 'SEALY MATT. UNICASED RENAISSANCE D.57224/5\'1\"X6\'8\"', '8852012546944', 'MT', 'SL', 'RNS', '061080', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '61\"X80\"', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('19', 'SLMURNS LB63X80', 'SEALY MATT. UNICASED RENAISSANCE D.57224/5\'3\"X6\'8\"', '8852012546968', 'MT', 'SL', 'RNS', '63X80', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '63\"X80\"', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('20', 'SLFTRNS LB51X233', 'SEALY FOOT PROTECTOR RENAISSANCE D.57224 51X233CM.', '8852012534354', 'PF', 'SL', 'RNS', '51X233', 'LB', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '51X233 CM.', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('21', 'SLMURNS LB76X81', 'SEALY MATT. UNICASED RENAISSANCE D.57224 /76\"x81\"', '8852012560834', 'MT', 'SL', 'RNS', '76X81', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '76X81INCH', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('22', 'SLMURNS LB200X203', 'SEALY MATT. UNICASED RENAISSANCE D.57224/200x203cm', '8852012609434', 'MT', 'SL', 'RNS', '200X203', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '200X203 CM', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('23', 'SLSTRNS LB00', 'SEALY SIDE TABLE RENAISSANCE D.57224 ไม่มีพนักพิง', '8852012076014', 'HB', 'SL', 'RNS', '00', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '00', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('24', 'SLMURNS LB72X80', 'SEALY MATT. UNICASED RENAISSANCE D.57224/72\"x80\"', '8852012623553', 'MT', 'SL', 'RNS', '72X80', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '72\"X80\"', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('25', 'SLMURNS LB184X210', 'SEALY MATT.UNICASED RENAISSANCE D.57224 184X210cm.', '8852012642257', 'MT', 'SL', 'RNS', '184X210', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '184X210CM', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('26', 'SLMURNS LB35', 'SEALY MATT.UNICASED RENAISSANCE D.57224/3.5\'', '8852012648624', 'MT', 'SL', 'RNS', '35', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5\'X6.5\'', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('27', 'SLMURNS LB79X81', 'SEALY MATT.UNICASED RENAISSANCE D.57224/79\"X81\"', '8852012091550', 'MT', 'SL', 'RNS', '79X81', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '79X81INCH', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('28', 'SLMURNS LB77X82', 'SEALY MATT.UNICASED RENISSANCE D.57224/77\"X82\"', '8852012106704', 'MT', 'SL', 'RNS', '77X82', 'LB', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '77\"x82\"', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('29', 'SLS7RNS AM50', 'SEALY BED STEADS & HB.RENAISSANCE D.TA-109/5\'X6.5\'', '8852012109958', 'HB', 'SL', 'RNS', '50', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '5\'X6.5\'', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('30', 'SLMURNS AM60', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/6\'X6.5\'', '8852012109880', 'MT', 'SL', 'RNS', '60', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('31', 'SLMURNS AM35', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/3.5\'X6.5\'', '8852012109903', 'MT', 'SL', 'RNS', '35', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5\'X6.5\'', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('32', 'SLS7RNS LB6F_R', 'SEALY BED STEADS RENAISSANCE -57224 /6\' / โอ๊คแดง', '8852012104519', 'HB', 'SL', 'RNS', '6F_R', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6X6.5FOOT ', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:15', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('33', 'SLSTRNS LB01_R', 'SEALY Sidetable RENAISSANCE-577224-มีพนัก-โอ๊คแดง', '8852012104557', 'HB', 'SL', 'RNS', '01_R', 'LB', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '1 PERSON R', 'LIGHT BROW', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('34', 'SLSTRNS AM01', 'SEALY SIDE TABLE RENAISSANCE D.TA-109 ( มีพนักพิง)', '8852012109965', 'HB', 'SL', 'RNS', '01', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '1 PERSON', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('35', 'SLMURNS AM77X80', 'SEALY MATT.UNICASED RENAISSANCE D.TA109/77\"X80\"', '8852012127723', 'MT', 'SL', 'RNS', '77X80', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '77X80INCH', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('36', 'SLMURNS AM196X206', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/196X206CM', '8852012135100', 'MT', 'SL', 'RNS', '196X206', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '196X206CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('37', 'SLSTRNS AM01_R', 'SEALYsidetable renaissance D.TA-109 พนักพิงโอ๊คแดง', '8852012134820', 'HB', 'SL', 'RNS', '01_R', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '1 PERSON R', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('38', 'SLMURNS AM205X203', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/205X203CM', '8852012138101', 'MT', 'SL', 'RNS', '205X203', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '205X203CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('39', 'SLMURNS AM193X203', 'SEALY MATT.UNICASED RENAISSANCE-D.TA-109/193X203CM', '8852012134554', 'MT', 'SL', 'RNS', '193X203', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '193X203 CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('40', 'SLS7RNS AM60', 'SEALY BED STEADS & HB.RENAISSANCE D.TA-109/6\'X6.5\'', '8852012109941', 'HB', 'SL', 'RNS', '60', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('41', 'SLMURNS AM50', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/5\'X6.5\'', '8852012109897', 'MT', 'SL', 'RNS', '50', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5\'X6.5\'', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('42', 'SLMURNS AM78X80', 'SEALY MATT. UNICASED RENAISSANCE D.57224/78\"X80\"', '8852012158451', 'MT', 'SL', 'RNS', '78X80', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '78\"X80\"', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('43', 'SLMURNS AM89X78', 'SEALY MATT.UNICASE RENAISSANCE /TA-109/7\'5\"X6\'6\"', '8852012165947', 'MT', 'SL', 'RNS', '89X78', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '89X78INCH', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('44', 'SLS7RNS AM60_R', 'SEALY BED STEADS RENAISSANCE D.TA-109/6\'-โอ๊คแดง', '8852012168559', 'HB', 'SL', 'RNS', '60_R', 'AM', 'RNS', 'Head Board', 'SEALY', 'RENAISSANC', '6\'X6.5\' RE', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('45', 'SLMURNS AM197X205', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/197X205CM', '8852012162182', 'MT', 'SL', 'RNS', '197X205', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '197X205CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('46', 'SLMURNS AM500630', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/5\'X6\'.3\"', '8852012169259', 'MT', 'SL', 'RNS', '500630', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5\'X6\'.3\"', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('47', 'SLMURNS AM200X200', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/200X200', '8852012183927', 'MT', 'SL', 'RNS', '200X200', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '200X200 CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('48', 'SLFTRNS G351X280', 'SEALY FOOTPROTECTOR RENAISSANCE-HT20/05-51X280CM.', '8852012204561', 'PF', 'SL', 'RNS', '51X280', 'G3', 'RNS', 'Pillow Sha', 'SEALY', 'RENAISSANC', '51X280CM', 'GOLDEN BRO', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('49', 'SLMURNS AM40', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/4\'X6.5\'', '8852012224033', 'MT', 'SL', 'RNS', '40', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '4\'X6.5\'', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('50', 'PJMURNS AM205X216', 'UNICASED RENAISSANCE D.TA109 205X216 CM', '8852012224316', 'MT', 'PJ', 'RNS', '205X216', 'AM', 'RNS', 'Mattress', 'PROJECT', 'RENAISSANC', '205X216CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('51', 'SLMURNS AM180X198', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/180X198CM', '8852012223166', 'MT', 'SL', 'RNS', '180X198', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '180X198 CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('52', 'SLMURNS AM195X206', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/195X206CM', '8852012244635', 'MT', 'SL', 'RNS', '195X206', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '195X206CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('53', 'SLMURNS AM60X80', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/60\"X80\"', '8852012258229', 'MT', 'SL', 'RNS', '60X80', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '60\"X80\"', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('54', 'SLMURNS AM210X207', 'SEALY MATT UNICASED RENAISSANCE D.TA-109/210X207', '8852012276421', 'MT', 'SL', 'RNS', '210X207', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '210X207CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('55', 'SLMURNS AM55', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109_5.5\'X6.5\'', '8852012289773', 'MT', 'SL', 'RNS', '55', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5.5\'X6.5\'', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('56', 'SLMURNS AM183X215', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109_183X215cm', '8852012289780', 'MT', 'SL', 'RNS', '183X215', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '183X215CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('57', 'SLMURNS AM76X80', 'SEALY MATT.UNICASED RENAISSANCE D.TA-109/76\"X80\"', '8852012362841', 'MT', 'SL', 'RNS', '76X80', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '76\"X80\"', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('58', 'SLMURNS GT60', 'SEALY CLASSIC LUXURY COLL.RENAISSANCE-57321_6\'X6.5', '8852012389282', 'MT', 'SL', 'RNS', '60', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'GOLD FONTA', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('59', 'SLMURNS GT35', 'SEALY CLASSIC LUXURY CO.RENAISSANCE-57321_3.5\'X6.5', '8852012389305', 'MT', 'SL', 'RNS', '35', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5\'X6.5\'', 'GOLD FONTA', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('60', 'SLMURNS RJ35', 'SEALY MU CLASSIC LUXURY RENAISSANCE-CD203C_3.5X6.5', '8852012465450', 'MT', 'SL', 'RNS', '35', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5\'X6.5\'', 'RUBY', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('61', 'SLMURNS GT84X84', 'SEALY CLASSIC LUXURY COLL.RENAISSANCE-57321_7\'X7\'', '8852012430540', 'MT', 'SL', 'RNS', '84X84', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '84\"X84\"', 'GOLD FONTA', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('62', 'SLMURNS RJ60', 'SEALY MU CLASSIC LUXURY RENAISSANCE-CD203C_6X6.5', '8852012465436', 'MT', 'SL', 'RNS', '60', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'RUBY', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('63', 'SLMURNS RJ50', 'SEALY MU CLASSIC LUXURY RENAISSANCE-CD203C_5X6.5', '8852012465443', 'MT', 'SL', 'RNS', '50', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5\'X6.5\'', 'RUBY', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('64', 'SLMURNS GT800650', 'SEALY CLASSIC LUXURY RENAISSANCE D.57321_8\'X6.5\'', '8852012720399', 'MT', 'SL', 'RNS', '800650', 'GT', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '8\'x6.5\'', 'GOLD FONTA', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('65', 'SLMURNS RJ180X195', 'SEALY MU NEW! RENAISSANCE D.CD203C_180X195 CM', '8852012683465', 'MT', 'SL', 'RNS', '180X195', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '180X195CM', 'RUBY', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('66', 'SLMURNS AJ35', 'SEALY MU NEW!  RENAISSANCE D.PAESTUM927-7_3.5X6.5', ' 0000000002243', 'MT', 'SL', 'RNS', '35', 'AJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5\'X6.5\'', 'APPEAL', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('67', 'SLMURNS AJ50', 'SEALY MU NEW!  RENAISSANCE D.PAESTUM927-7_5\'X6.5\'', ' 0000000002244', 'MT', 'SL', 'RNS', '50', 'AJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5\'X6.5\'', 'APPEAL', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('68', 'SLMURNS AJ60', 'SEALY MU NEW!  RENAISSANCE D.PAESTUM927-7_6\'X6.5\'', '8852012462633', 'MT', 'SL', 'RNS', '60', 'AJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'APPEAL', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('69', 'SLMURNS RJ194X206', 'SEALY MU NEW! RENAISANCE D.CD203C_194X206 CM.', '8859232503078', 'MT', 'SL', 'RNS', '194X206', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '194X206CM', 'RUBY', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('70', 'SLMURNS RJ194X205', 'SEALY MU NEW! RENAISSANCE D.CD203C_194X205 CM', '8852012967145', 'MT', 'SL', 'RNS', '194X205', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '194X205CM', 'RUBY', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('71', 'SLMURNS AM197X204', 'SEALY MU RENAISSANCE D.TA-109_197X204', '8852012922496', 'MT', 'SL', 'RNS', '197X204', 'AM', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '197X204CM', 'AMETHYST', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('72', 'SLMURNS RJ200X200', 'SEALY MU NEW! RENAISSANCE D.CD203C_200X200 CM.', '8859232569753', 'MT', 'SL', 'RNS', '200X200', 'RJ', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '200X200 CM', 'RUBY', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('73', 'SLMURNS ZY60', 'SEALY MU CLASSIC LUXURY RENAISSANCE W5691D_6X6.5', '8859232599316', 'MT', 'SL', 'RNS', '60', 'ZY', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '6\'X6.5\'', 'ZYVOTA', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('74', 'SLMURNS ZY50', 'SEALY MU CLASSIC LUXURY RENAISSANCE W5691D_5X6.5', '8859232599323', 'MT', 'SL', 'RNS', '50', 'ZY', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '5\'X6.5\'', 'ZYVOTA', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('75', 'SLMURNS ZY35', 'SEALY MU CLASSIC LUXURY RENAISSANCE W5691D_3.5X6.5', '8859232599330', 'MT', 'SL', 'RNS', '35', 'ZY', 'RNS', 'Mattress', 'SEALY', 'RENAISSANC', '3.5\'X6.5\'', 'ZYVOTA', 'RENAISSANC', '0.00', null, null, '2016-01-08 11:11:18', '', '0000-00-00 00:00:00');
