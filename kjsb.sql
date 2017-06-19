/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : kjsb
Target Host     : localhost:3306
Target Database : kjsb
Date: 2017-05-31 22:20:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(15) DEFAULT NULL,
  `department` varchar(15) DEFAULT NULL,
  `ausername` varchar(15) DEFAULT NULL,
  `apassword` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '张勇', '管理部', 'admin', 'admin');

-- ----------------------------
-- Table structure for expert
-- ----------------------------
DROP TABLE IF EXISTS `expert`;
CREATE TABLE `expert` (
  `expertid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `unitname` varchar(255) DEFAULT NULL,
  `eusername` varchar(15) DEFAULT NULL,
  `epassword` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`expertid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expert
-- ----------------------------
INSERT INTO `expert` VALUES ('1', '刘美丽', '男', '项目评审师', '1551515551', '对生物科技有研究', '生物科技部', 'expert', 'expert');
INSERT INTO `expert` VALUES ('2', '张晓芳', '女', '项目评审师', '1563941584', '航空航天', '航空部', 'expert1', 'expert1');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `projectid` int(11) NOT NULL AUTO_INCREMENT,
  `applicant` varchar(15) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `fill_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `future` varchar(255) DEFAULT NULL,
  `analysis` varchar(255) DEFAULT NULL,
  `way` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `projectname` varchar(100) DEFAULT NULL,
  `capital` varchar(20) DEFAULT NULL,
  `expert_opinion` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `ispass` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `unitid` int(11) DEFAULT NULL,
  PRIMARY KEY (`projectid`),
  KEY `FKk49ps4gl5et148ayd0x74le0a` (`categoryid`),
  KEY `FKg6gc3ihl7g5u3jc1f3jb47t5q` (`unitid`),
  CONSTRAINT `FKg6gc3ihl7g5u3jc1f3jb47t5q` FOREIGN KEY (`unitid`) REFERENCES `unit` (`unitid`),
  CONSTRAINT `FKk49ps4gl5et148ayd0x74le0a` FOREIGN KEY (`categoryid`) REFERENCES `project_category` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for project_category
-- ----------------------------
DROP TABLE IF EXISTS `project_category`;
CREATE TABLE `project_category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) DEFAULT NULL,
  `rep_start_time` datetime DEFAULT NULL,
  `rep_stop_time` datetime DEFAULT NULL,
  `exp_start_time` datetime DEFAULT NULL,
  `exp_stop_time` datetime DEFAULT NULL,
  `expertId` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`),
  KEY `FK92x7ehqr6evsod2ewrpehog7x` (`expertId`),
  CONSTRAINT `FK92x7ehqr6evsod2ewrpehog7x` FOREIGN KEY (`expertId`) REFERENCES `expert` (`expertid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_category
-- ----------------------------

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `unitid` int(11) NOT NULL AUTO_INCREMENT,
  `unitname` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `corporation` varchar(20) DEFAULT NULL,
  `investment` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `zipcode` varchar(30) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `uusername` varchar(20) DEFAULT NULL,
  `upassword` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('1', '郑州生物科技', '科学大道188号', '李刚', '100万', '研究生物方面', '4008219999', '400821@sw.com', '1122554477', '462222', '很好很好很好', 'unit', 'unit');
INSERT INTO `unit` VALUES ('2', '北京食品', '朝阳大道88好', null, null, null, null, null, null, null, null, 'unit1', 'unit1');
INSERT INTO `unit` VALUES ('3', '上海网络科技', null, null, null, null, null, null, null, null, null, 'unit2', 'unit2');
INSERT INTO `unit` VALUES ('6', null, null, null, null, null, null, null, null, null, null, '11', '11');
