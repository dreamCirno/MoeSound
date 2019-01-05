/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : moe

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-01-05 10:45:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classify`
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `ClassifyID` int(11) NOT NULL,
  `ClassifyName` varchar(66) NOT NULL,
  PRIMARY KEY (`ClassifyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify
-- ----------------------------

-- ----------------------------
-- Table structure for `discuss`
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss` (
  `MusicID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PublishTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Content` varchar(300) NOT NULL,
  PRIMARY KEY (`MusicID`,`UserID`,`PublishTime`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `discuss_ibfk_1` FOREIGN KEY (`MusicID`) REFERENCES `music` (`MusicID`),
  CONSTRAINT `discuss_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discuss
-- ----------------------------

-- ----------------------------
-- Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `MusicID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassifyID` int(11) NOT NULL,
  `MusicName` varchar(150) NOT NULL,
  `Singer` varchar(100) NOT NULL,
  `Duration` int(11) NOT NULL,
  `ImagePath` varchar(300) NOT NULL,
  `Path` varchar(300) NOT NULL,
  PRIMARY KEY (`MusicID`),
  KEY `ClassifyID` (`ClassifyID`),
  CONSTRAINT `music_ibfk_1` FOREIGN KEY (`ClassifyID`) REFERENCES `classify` (`ClassifyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------

-- ----------------------------
-- Table structure for `musicword`
-- ----------------------------
DROP TABLE IF EXISTS `musicword`;
CREATE TABLE `musicword` (
  `MusicID` int(11) NOT NULL,
  `Word` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`MusicID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musicword
-- ----------------------------

-- ----------------------------
-- Table structure for `secret`
-- ----------------------------
DROP TABLE IF EXISTS `secret`;
CREATE TABLE `secret` (
  `UserID` int(11) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secret
-- ----------------------------

-- ----------------------------
-- Table structure for `upload`
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `MusicID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`MusicID`,`UserID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `upload_ibfk_1` FOREIGN KEY (`MusicID`) REFERENCES `music` (`MusicID`),
  CONSTRAINT `upload_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(38) NOT NULL,
  `PassWord` varchar(59) NOT NULL,
  `Sex` char(10) NOT NULL,
  `Head` varchar(300) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Grade` int(11) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
