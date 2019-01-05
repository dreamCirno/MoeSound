/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : moe

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-01-05 21:05:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classify`
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `ClassifyID` int(11) NOT NULL AUTO_INCREMENT,
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
-- Table structure for `list`
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `ListID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ListName` varchar(100) NOT NULL,
  `SetTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ListID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `list_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------

-- ----------------------------
-- Table structure for `listconnect`
-- ----------------------------
DROP TABLE IF EXISTS `listconnect`;
CREATE TABLE `listconnect` (
  `MusicID` int(11) NOT NULL,
  `ListID` int(11) NOT NULL,
  PRIMARY KEY (`MusicID`,`ListID`),
  KEY `ListID` (`ListID`),
  CONSTRAINT `listconnect_ibfk_1` FOREIGN KEY (`MusicID`) REFERENCES `music` (`MusicID`),
  CONSTRAINT `listconnect_ibfk_2` FOREIGN KEY (`ListID`) REFERENCES `list` (`ListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listconnect
-- ----------------------------

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `UserID` int(11) NOT NULL,
  `LoginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IP` varchar(15) NOT NULL,
  PRIMARY KEY (`UserID`,`LoginTime`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------

-- ----------------------------
-- Table structure for `lyric`
-- ----------------------------
DROP TABLE IF EXISTS `lyric`;
CREATE TABLE `lyric` (
  `MusicID` int(11) NOT NULL,
  `Word` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`MusicID`),
  CONSTRAINT `lyric_ibfk_1` FOREIGN KEY (`MusicID`) REFERENCES `music` (`MusicID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lyric
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
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `NoticeID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `NoticeContent` varchar(200) NOT NULL,
  PRIMARY KEY (`NoticeID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for `nplaymusic`
-- ----------------------------
DROP TABLE IF EXISTS `nplaymusic`;
CREATE TABLE `nplaymusic` (
  `MusicID` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  PRIMARY KEY (`MusicID`),
  CONSTRAINT `nplaymusic_ibfk_1` FOREIGN KEY (`MusicID`) REFERENCES `music` (`MusicID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nplaymusic
-- ----------------------------

-- ----------------------------
-- Table structure for `playsonglist`
-- ----------------------------
DROP TABLE IF EXISTS `playsonglist`;
CREATE TABLE `playsonglist` (
  `ListID` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  PRIMARY KEY (`ListID`),
  CONSTRAINT `playsonglist_ibfk_1` FOREIGN KEY (`ListID`) REFERENCES `list` (`ListID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of playsonglist
-- ----------------------------

-- ----------------------------
-- Table structure for `upload`
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `MusicID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UploadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `Question` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `yplaymusic`
-- ----------------------------
DROP TABLE IF EXISTS `yplaymusic`;
CREATE TABLE `yplaymusic` (
  `UserID` int(11) NOT NULL,
  `MusicID` int(11) NOT NULL,
  `PlayTime` int(11) NOT NULL,
  PRIMARY KEY (`UserID`,`PlayTime`),
  KEY `MusicID` (`MusicID`),
  CONSTRAINT `yplaymusic_ibfk_2` FOREIGN KEY (`MusicID`) REFERENCES `music` (`MusicID`),
  CONSTRAINT `yplaymusic_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yplaymusic
-- ----------------------------
