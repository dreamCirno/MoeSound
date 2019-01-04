/*
 Navicat Premium Data Transfer

 Source Server         : JSP
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : moe

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 04/01/2019 21:43:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PassWord` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Head` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `Grade` int(11) NOT NULL,
  PRIMARY KEY (`UserID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
