/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : webshop-re

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-03-19 23:45:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_ID` int(4) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(16) NOT NULL,
  `admin_pwd` varchar(16) NOT NULL,
  PRIMARY KEY (`admin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('3', 'wang2007', 'wang2007');
INSERT INTO `admin` VALUES ('4', 'wang2000', 'wang2000');

-- ----------------------------
-- Table structure for animal
-- ----------------------------
DROP TABLE IF EXISTS `animal`;
CREATE TABLE `animal` (
  `animal_ID` int(8) NOT NULL AUTO_INCREMENT,
  `breed_name` varchar(20) CHARACTER SET gbk NOT NULL,
  `animal_sex` varchar(4) CHARACTER SET gbk NOT NULL,
  `animal_birth` date NOT NULL,
  `animal_price` double(10,2) NOT NULL,
  `animal_disprice` double(10,2) DEFAULT NULL COMMENT '折扣价/成交价',
  `animal_picurl` varchar(255) CHARACTER SET gbk NOT NULL,
  `animal_descr` text CHARACTER SET gbk,
  PRIMARY KEY (`animal_ID`),
  KEY `编号` (`animal_ID`) USING BTREE,
  KEY `种类` (`breed_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of animal
-- ----------------------------

-- ----------------------------
-- Table structure for breed
-- ----------------------------
DROP TABLE IF EXISTS `breed`;
CREATE TABLE `breed` (
  `breed_ID` int(8) NOT NULL AUTO_INCREMENT,
  `breed_name` varchar(20) NOT NULL,
  `breed_descr` text,
  PRIMARY KEY (`breed_ID`),
  KEY `breed_name` (`breed_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of breed
-- ----------------------------

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT '购物车编号',
  `user_ID` varchar(16) NOT NULL COMMENT '用户ID',
  `animal_ID` int(8) DEFAULT NULL COMMENT '动物编号',
  `good_ID` int(8) DEFAULT NULL COMMENT '商品编号',
  `cart_num` int(8) DEFAULT NULL COMMENT '数量',
  `cart_price` double(10,2) DEFAULT NULL COMMENT '定价',
  `cart_disprice` double(10,2) DEFAULT NULL COMMENT '折扣价/成交价',
  `cart_totle` double(15,2) DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`cart_ID`),
  KEY `动物编号` (`animal_ID`),
  KEY `商品编号` (`good_ID`),
  KEY `用户名` (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for cart_order
-- ----------------------------
DROP TABLE IF EXISTS `cart_order`;
CREATE TABLE `cart_order` (
  `cart_ID` int(8) NOT NULL,
  `order_ID` int(8) NOT NULL,
  PRIMARY KEY (`cart_ID`,`order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_order
-- ----------------------------

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `good_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `good_name` varchar(20) NOT NULL COMMENT '商品名',
  `good_stock` int(8) NOT NULL COMMENT '商品库存',
  `good_price` double(10,2) NOT NULL COMMENT '商品价格',
  `good_dicprice` double(10,2) DEFAULT NULL COMMENT '商品折扣价/成交价',
  `good_birth` date NOT NULL COMMENT '商品生产日期',
  `good_protect` int(8) NOT NULL COMMENT '商品保质期',
  `good_picurl` varchar(255) NOT NULL COMMENT '图片地址',
  `good_descr` text COMMENT '商品备注',
  PRIMARY KEY (`good_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT '订单号',
  `order_total` double(20,2) NOT NULL COMMENT '订单总价',
  `order_state` varchar(10) NOT NULL COMMENT '订单状态',
  `order_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  `cart_ID` int(8) NOT NULL COMMENT '购物车编号',
  `user_ID` varchar(16) NOT NULL COMMENT '用户编号',
  `order_logisticcom` varchar(255) DEFAULT NULL COMMENT '物流公司',
  `order_logisticnum` varchar(10) DEFAULT NULL COMMENT '物流单号',
  PRIMARY KEY (`order_ID`),
  KEY `用户编号` (`user_ID`),
  KEY `购物车编号` (`cart_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_ID` int(8) NOT NULL AUTO_INCREMENT COMMENT '用户名',
  `user_name` varchar(16) NOT NULL,
  `user_pwd` varchar(16) NOT NULL COMMENT '用户密码',
  `user_nickname` varchar(10) NOT NULL COMMENT '用户昵称',
  `user_truename` varchar(10) NOT NULL COMMENT '用户姓名',
  `user_address` text NOT NULL COMMENT '用户地址',
  `user_phone` varchar(11) NOT NULL COMMENT '用户电话',
  `user_point` int(5) DEFAULT NULL COMMENT '用户积分',
  `user_registime` datetime NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`user_ID`),
  KEY `用户编号` (`user_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
