/*
Navicat MySQL Data Transfer

Source Server         : 47.107.227.121
Source Server Version : 50562
Source Host           : 47.107.227.121:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-06-21 09:07:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `userpwd` varchar(100) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin', '18');
INSERT INTO `t_admin` VALUES ('4', 'admin5', '888888', '19');
INSERT INTO `t_admin` VALUES ('5', 'adminUser', '888888', '20');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_goods_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------

-- ----------------------------
-- Table structure for t_house
-- ----------------------------
DROP TABLE IF EXISTS `t_house`;
CREATE TABLE `t_house` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_desc` varchar(255) NOT NULL COMMENT '租房描述',
  `house_model` varchar(20) NOT NULL COMMENT '房屋类型，几室几厅',
  `house_area` varchar(20) NOT NULL COMMENT '房屋面积',
  `house_floor` varchar(20) NOT NULL COMMENT '房屋楼层',
  `house_type` varchar(20) NOT NULL COMMENT '出租方式',
  `house_price` int(10) NOT NULL COMMENT '出租价格',
  `house_address` varchar(100) NOT NULL COMMENT '出租地址',
  `house_image` varchar(1000) DEFAULT NULL COMMENT '房屋简介照片',
  `community_name` varchar(100) NOT NULL COMMENT '小区名字',
  `house_linkman` varchar(11) NOT NULL COMMENT '房屋联系电话',
  `house_oriented` varchar(20) NOT NULL COMMENT '房屋朝向',
  `house_detailes_img` varchar(1000) DEFAULT NULL COMMENT '房屋详细页面展示图片',
  `publisher` varchar(50) NOT NULL DEFAULT '管理员' COMMENT '发布人',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  `address_lat` varchar(255) DEFAULT NULL COMMENT '经度',
  `address_lon` varchar(255) DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house
-- ----------------------------
INSERT INTO `t_house` VALUES ('1', '毕业生福利，无押金无中介', '三室一厅一卫', '13平', '中层', '合租-次卧', '770', '河西 柳林', 'img/banner-4.jpg', '景致里', '鹿小飞', '南', '/img/banner-1.jpg:-:/img/banner-2.jpg', '管理员', '2020-04-12 00:00:00', null, null);
INSERT INTO `t_house` VALUES ('22', '首月五折，近地铁刘园 隔音好签约，不满可退换，精装修', '三室一厅一卫', '24平', '高层', '合租-主卧', '1200', '北辰 瑞景街', 'img/banner-4.jpg', '瑞英里', '周光源', '南', '/img/banner-1.jpg:-:/img/banner-2.jpg', '管理员', '2020-04-14 20:47:04', null, null);
INSERT INTO `t_house` VALUES ('23', '远洋城滨雅花园 精装两室紧邻未来汇 菜市场 家电齐全拎包入住', '两室一厅一卫', '78平', '中层', '整租', '1500', '塘沽 胡家园街', 'img/banner-4.jpg', '远洋城滨涯花园', '王馨颖', '南北', '/img/banner-1.jpg:-:/img/banner-2.jpg', '管理员', '2020-04-14 20:50:37', null, null);
INSERT INTO `t_house` VALUES ('24', '精装，婚房，带电梯，家电齐全，随时入住', '两室一厅一卫', '90平', '低层', '整租', '1300', '津南 小站', 'img/banner-4.jpg', '故乡园', '郑富华', '南北', '/img/banner-1.jpg:-:/img/banner-2.jpg', '管理员', '2020-04-14 20:55:47', null, null);
INSERT INTO `t_house` VALUES ('25', '隔音好，首月立减两百，无接触线上签约', '一室一厅一卫', '39.37平', '高层', '整租', '1220', '津南 双港', 'img/banner-4.jpg', '龙翰南园', '邢学斌', '东', '/img/banner-1.jpg:-:/img/banner-2.jpg', '管理员', '2020-04-14 21:02:44', null, null);
INSERT INTO `t_house` VALUES ('26', '鲁能泰山七号 豪华装修 品牌电器 直接拎包入住 可押一付三', '三室两厅一卫', '95平', '高层', '整租', '2200', '津南 咸水沽', 'img/banner-4.jpg', '鲁能七号', '张阳阳', '南', '/img/banner-1.jpg:-:/img/banner-2.jpg', '管理员', '2020-04-14 21:07:13', null, null);
INSERT INTO `t_house` VALUES ('27', '水电南院中装全齐', '两室一厅', '77', '中层', '整租', '700', '武清 杨村街', 'img/banner-4.jpg', '水电部南院', '13752267515', '南北', '/img/banner-1.jpg:-:/img/banner-2.jpg', 'nnnn', '2020-04-14 23:08:48', null, null);
INSERT INTO `t_house` VALUES ('28', 'aweraw', 'd', 'sd', 'sd', '整租', '12', 'ds', '/hrs/cf0c3348231649e6b22ce7547ee6e717.png', 'sd', '15326959946', '南北', '', '管理员', '2020-05-04 11:08:55', null, null);
INSERT INTO `t_house` VALUES ('29', '上海现代技术房屋', '三室两厅', '25', '5楼', '整租', '2000', '上海北京', '/hrs/25cb0d550ac643408ace424aadf8756b.png', '仙法磨圆', '18649294465', '南北', '', '管理员', '2020-05-04 11:34:34', null, null);
INSERT INTO `t_house` VALUES ('30', '奇热去玩儿', '一室一厅', '25', '3', '整租', '223', '北京函数', '/hrs/08a4a6bff21f4f5db5f68b45ffc44dc9.png', '花花话语', '18564931136', '南北', '', '管理员', '2020-05-04 12:59:49', null, null);
INSERT INTO `t_house` VALUES ('31', '到年底', '打的', '12', '12', '整租', '12', '12', '/hrs/41f91eca1dbe49d085c134e900bb3f99.png', '12', '12312345678', '东西', '', '管理员', '2020-05-04 13:04:40', null, null);
INSERT INTO `t_house` VALUES ('32', '上海浦东新场地铁口', '一室一厅', '25', '高层', '整租', '123', '上海浦东新区', 'hrs/a3f0128074b3444d9e3ac6e6edcb5fb0.png', '花园', '14548946695', '南北', 'hrs/a3f0128074b3444d9e3ac6e6edcb5fb0.pngdetails/d7b7b77e-a702-4928-8ba0-a404269d83ba.png:-:', '管理员', '2020-05-04 13:55:13', null, null);
INSERT INTO `t_house` VALUES ('33', '上海', '一室两厅', '13', '5楼', '整租', '256', '北京', '/hrs/bf698e9f1ffd4c41a4adfb3790d03180.png', '上海', '14868946465', '东西', '', '管理员', '2020-05-04 14:46:49', null, null);
INSERT INTO `t_house` VALUES ('34', '上海', '一室两厅', '13', '5楼', '整租', '256', '北京', '/hrs/bf698e9f1ffd4c41a4adfb3790d03180.png', '上海', '14868946465', '东西', '/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:', '管理员', '2020-05-04 14:47:30', null, null);
INSERT INTO `t_house` VALUES ('35', '上海', '一室两厅', '13', '5楼', '整租', '256', '北京', '/hrs/bf698e9f1ffd4c41a4adfb3790d03180.png', '上海', '14868946465', '东西', '/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:', '管理员', '2020-05-04 14:47:31', null, null);
INSERT INTO `t_house` VALUES ('36', '上海', '一室两厅', '13', '5楼', '整租', '256', '北京', '/hrs/bf698e9f1ffd4c41a4adfb3790d03180.png', '上海', '14868946465', '东西', '/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:', '管理员', '2020-05-04 14:47:31', null, null);
INSERT INTO `t_house` VALUES ('37', '上海被打', '一室两厅', '13', '5楼', '整租', '256', '北京', '/hrs/bf698e9f1ffd4c41a4adfb3790d03180.png', '上海', '14868946465', '东西', '/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:/hrs/a943e876-c34e-442c-b652-80f8beb88b3f.png:-:', '管理员', '2020-05-04 14:48:01', null, null);
INSERT INTO `t_house` VALUES ('38', '日期为人', '一听2是', '24', '5楼', '整租', '23', '随时随地的', '/hrs/351689920c954f1c89efb9af75a6b837.jpg', '多得是', '14659422222', '南北', '/hrs/f4d95143-3b23-44ab-b074-636bdce4e937.png/hrs/61a4b120-e225-4259-9ebf-d32c79c62295.jpg', '管理员', '2020-05-04 14:55:32', null, null);
INSERT INTO `t_house` VALUES ('39', '上海浦东新区123', '1232', '24', '6', '整租', '24', '北京市北京市丰台区莲花池东路118号北京西站', '/hrs/8ded726576844b60b865da14f0f621d4.png', '花园', '15464959984', '南北', '/hrs/026330f6-60c4-453a-acd2-9fce876e693d.jpg:-:/hrs/2c19a61b-7d9d-4574-a0d9-3f279813a6cc.jpg:-:', '管理员', '2020-05-04 15:30:02', '116.322056', '39.89491');
INSERT INTO `t_house` VALUES ('44', '米兰花园', '3室2厅', '110', '3楼', '整租', '1500', '天津市天津市津南区131路;131路区间;204路;212路西线;213路;217路;226路西线;627路;629路;704路;808路米兰花园(公交站)', '/hrs/0fd6c0351d654cfa9bc7d8988b74a300.jpg', '米兰花园', '13752267515', '南北', '/hrs/0f69c958-8cb8-4cea-84e3-b1febe1cc33c.jpg:-:/hrs/84ada661-6a89-4a8d-a43d-6a222a8df391.jpg:-:', '管理员', '2020-05-04 22:06:50', '117.381172', '38.996414');
INSERT INTO `t_house` VALUES ('48', '上海房产', '一厅一室', '24', '6楼', '整租', '1500', '上海市上海市黄浦区黄浦区上海市', '/hrs/8b7abf0e80d94f24a32d52185193aee6.jpg', '花花园', '18646599956', '南北', '/hrs/0099b7e7-b47f-43b4-a224-de2f050bb497.jpg:-:/hrs/5acff937-918c-4c77-a1c7-a32841ea541f.jpg:-:', '管理员', '2020-05-06 20:08:39', '121.473658', '31.230378');
INSERT INTO `t_house` VALUES ('49', '地铁附近，5层电梯房', '三室一厅', '100', '5层', '整租', '8000', '上海市上海市黄浦区黄浦区上海市', '/hrs/b4da220734734d90b512c030f26ba4ba.jpg', '花花花园', '18641256695', '南北', '/hrs/71d87fa0-b00d-4e2a-a896-aa8b1ed6a4d0.jpg:-:/hrs/58e4d373-8de8-44cf-af6d-9d10b4c42efd.jpg:-:', '管理员', '2020-05-15 00:27:43', '121.473658', '31.230378');

-- ----------------------------
-- Table structure for t_house_equipment
-- ----------------------------
DROP TABLE IF EXISTS `t_house_equipment`;
CREATE TABLE `t_house_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '类型:',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_house_fault_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_equipment
-- ----------------------------
INSERT INTO `t_house_equipment` VALUES ('1', '31', '1');
INSERT INTO `t_house_equipment` VALUES ('2', '31', '6');
INSERT INTO `t_house_equipment` VALUES ('3', '31', '8');
INSERT INTO `t_house_equipment` VALUES ('4', '31', '9');
INSERT INTO `t_house_equipment` VALUES ('5', '31', '12');
INSERT INTO `t_house_equipment` VALUES ('6', '32', '1');
INSERT INTO `t_house_equipment` VALUES ('7', '32', '4');
INSERT INTO `t_house_equipment` VALUES ('8', '32', '5');
INSERT INTO `t_house_equipment` VALUES ('9', '32', '6');
INSERT INTO `t_house_equipment` VALUES ('10', '32', '11');
INSERT INTO `t_house_equipment` VALUES ('11', '32', '13');
INSERT INTO `t_house_equipment` VALUES ('12', '37', '1');
INSERT INTO `t_house_equipment` VALUES ('13', '37', '4');
INSERT INTO `t_house_equipment` VALUES ('14', '37', '7');
INSERT INTO `t_house_equipment` VALUES ('15', '37', '10');
INSERT INTO `t_house_equipment` VALUES ('16', '37', '13');
INSERT INTO `t_house_equipment` VALUES ('17', '37', '14');
INSERT INTO `t_house_equipment` VALUES ('18', '38', '1');
INSERT INTO `t_house_equipment` VALUES ('19', '38', '5');
INSERT INTO `t_house_equipment` VALUES ('20', '38', '6');
INSERT INTO `t_house_equipment` VALUES ('21', '38', '11');
INSERT INTO `t_house_equipment` VALUES ('22', '38', '13');
INSERT INTO `t_house_equipment` VALUES ('29', '44', '1');
INSERT INTO `t_house_equipment` VALUES ('30', '44', '2');
INSERT INTO `t_house_equipment` VALUES ('31', '44', '3');
INSERT INTO `t_house_equipment` VALUES ('32', '44', '4');
INSERT INTO `t_house_equipment` VALUES ('33', '44', '5');
INSERT INTO `t_house_equipment` VALUES ('34', '44', '6');
INSERT INTO `t_house_equipment` VALUES ('35', '44', '8');
INSERT INTO `t_house_equipment` VALUES ('36', '44', '9');
INSERT INTO `t_house_equipment` VALUES ('37', '44', '10');
INSERT INTO `t_house_equipment` VALUES ('38', '44', '11');
INSERT INTO `t_house_equipment` VALUES ('39', '44', '12');
INSERT INTO `t_house_equipment` VALUES ('40', '44', '13');
INSERT INTO `t_house_equipment` VALUES ('41', '44', '14');
INSERT INTO `t_house_equipment` VALUES ('42', '48', '1');
INSERT INTO `t_house_equipment` VALUES ('43', '48', '4');
INSERT INTO `t_house_equipment` VALUES ('44', '48', '8');
INSERT INTO `t_house_equipment` VALUES ('45', '48', '9');
INSERT INTO `t_house_equipment` VALUES ('46', '48', '10');
INSERT INTO `t_house_equipment` VALUES ('47', '49', '1');
INSERT INTO `t_house_equipment` VALUES ('48', '49', '4');
INSERT INTO `t_house_equipment` VALUES ('49', '49', '5');
INSERT INTO `t_house_equipment` VALUES ('50', '49', '7');
INSERT INTO `t_house_equipment` VALUES ('51', '49', '8');
INSERT INTO `t_house_equipment` VALUES ('52', '49', '14');

-- ----------------------------
-- Table structure for t_house_fault
-- ----------------------------
DROP TABLE IF EXISTS `t_house_fault`;
CREATE TABLE `t_house_fault` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '1 未维修  2 已维修  ',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_house_fault
-- ----------------------------
INSERT INTO `t_house_fault` VALUES ('1', '56465', '23', '4', '2', '2020-05-08 07:03:41');
INSERT INTO `t_house_fault` VALUES ('2', '54654', '48', '4', '2', '2020-05-08 07:15:23');
INSERT INTO `t_house_fault` VALUES ('3', '546546644655', '48', '4', '2', '2020-05-08 07:15:29');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `operation` varchar(50) NOT NULL COMMENT '操作',
  `method` varchar(100) DEFAULT NULL COMMENT '执行方法',
  `params` varchar(500) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'ip',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2632 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('2540', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-01 14:59:40');
INSERT INTO `t_log` VALUES ('2541', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-01 16:06:19');
INSERT INTO `t_log` VALUES ('2542', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-01 16:09:05');
INSERT INTO `t_log` VALUES ('2543', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-01 16:11:09');
INSERT INTO `t_log` VALUES ('2544', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-01 16:40:05');
INSERT INTO `t_log` VALUES ('2545', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-01 18:40:31');
INSERT INTO `t_log` VALUES ('2546', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 09:13:49');
INSERT INTO `t_log` VALUES ('2547', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 09:35:26');
INSERT INTO `t_log` VALUES ('2548', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 09:41:45');
INSERT INTO `t_log` VALUES ('2549', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 09:47:17');
INSERT INTO `t_log` VALUES ('2550', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 15:40:08');
INSERT INTO `t_log` VALUES ('2551', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 15:41:02');
INSERT INTO `t_log` VALUES ('2552', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 16:26:08');
INSERT INTO `t_log` VALUES ('2553', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 16:31:02');
INSERT INTO `t_log` VALUES ('2554', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 16:33:13');
INSERT INTO `t_log` VALUES ('2555', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 17:02:18');
INSERT INTO `t_log` VALUES ('2556', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 17:05:47');
INSERT INTO `t_log` VALUES ('2557', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 17:13:46');
INSERT INTO `t_log` VALUES ('2558', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-02 20:34:39');
INSERT INTO `t_log` VALUES ('2559', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 08:05:59');
INSERT INTO `t_log` VALUES ('2560', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 08:26:02');
INSERT INTO `t_log` VALUES ('2561', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 08:31:42');
INSERT INTO `t_log` VALUES ('2562', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 09:24:24');
INSERT INTO `t_log` VALUES ('2563', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 09:30:23');
INSERT INTO `t_log` VALUES ('2564', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 09:30:23');
INSERT INTO `t_log` VALUES ('2565', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 09:33:49');
INSERT INTO `t_log` VALUES ('2566', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 09:42:17');
INSERT INTO `t_log` VALUES ('2567', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 09:45:11');
INSERT INTO `t_log` VALUES ('2568', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 10:40:08');
INSERT INTO `t_log` VALUES ('2569', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 10:43:35');
INSERT INTO `t_log` VALUES ('2570', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 10:53:06');
INSERT INTO `t_log` VALUES ('2571', 'admin5', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 11:14:50');
INSERT INTO `t_log` VALUES ('2572', 'admin5', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 11:17:31');
INSERT INTO `t_log` VALUES ('2573', 'admin5', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 11:26:59');
INSERT INTO `t_log` VALUES ('2574', 'admin5', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 11:29:36');
INSERT INTO `t_log` VALUES ('2575', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 11:29:42');
INSERT INTO `t_log` VALUES ('2576', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 12:13:44');
INSERT INTO `t_log` VALUES ('2577', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 12:14:10');
INSERT INTO `t_log` VALUES ('2578', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 12:14:39');
INSERT INTO `t_log` VALUES ('2579', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 12:18:35');
INSERT INTO `t_log` VALUES ('2580', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-03 12:33:12');
INSERT INTO `t_log` VALUES ('2581', '13066002222', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 10:39:14');
INSERT INTO `t_log` VALUES ('2582', '13066002222', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 10:39:16');
INSERT INTO `t_log` VALUES ('2583', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 10:39:23');
INSERT INTO `t_log` VALUES ('2584', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 10:39:27');
INSERT INTO `t_log` VALUES ('2585', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 11:03:25');
INSERT INTO `t_log` VALUES ('2586', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 11:32:10');
INSERT INTO `t_log` VALUES ('2587', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 12:58:25');
INSERT INTO `t_log` VALUES ('2588', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 13:03:55');
INSERT INTO `t_log` VALUES ('2589', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 13:09:57');
INSERT INTO `t_log` VALUES ('2590', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 13:09:57');
INSERT INTO `t_log` VALUES ('2591', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 13:50:40');
INSERT INTO `t_log` VALUES ('2592', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 14:44:52');
INSERT INTO `t_log` VALUES ('2593', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 14:49:45');
INSERT INTO `t_log` VALUES ('2594', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 14:54:10');
INSERT INTO `t_log` VALUES ('2595', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 15:27:58');
INSERT INTO `t_log` VALUES ('2596', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 15:46:24');
INSERT INTO `t_log` VALUES ('2597', 'nini', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 16:25:41');
INSERT INTO `t_log` VALUES ('2598', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 16:25:46');
INSERT INTO `t_log` VALUES ('2599', 'nini', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 16:33:28');
INSERT INTO `t_log` VALUES ('2600', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 16:33:33');
INSERT INTO `t_log` VALUES ('2601', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 21:44:39');
INSERT INTO `t_log` VALUES ('2602', 'adminUser', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 21:49:16');
INSERT INTO `t_log` VALUES ('2603', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 21:49:36');
INSERT INTO `t_log` VALUES ('2604', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-04 21:53:05');
INSERT INTO `t_log` VALUES ('2605', 'adminUseri', '登录后台', '/admin/adminAccess', null, '127.0.0.1', '2020-05-04 22:03:46');
INSERT INTO `t_log` VALUES ('2606', 'admin', '登录后台', '/admin/adminAccess', null, '127.0.0.1', '2020-05-04 22:03:53');
INSERT INTO `t_log` VALUES ('2607', 'admin', '登录后台', '/admin/adminAccess', null, '127.0.0.1', '2020-05-04 23:01:26');
INSERT INTO `t_log` VALUES ('2608', 'nini', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-06 20:06:56');
INSERT INTO `t_log` VALUES ('2609', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-06 20:07:02');
INSERT INTO `t_log` VALUES ('2610', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-07 19:35:17');
INSERT INTO `t_log` VALUES ('2611', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-07 19:41:28');
INSERT INTO `t_log` VALUES ('2612', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-07 19:56:14');
INSERT INTO `t_log` VALUES ('2613', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-07 20:06:47');
INSERT INTO `t_log` VALUES ('2614', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-07 20:11:02');
INSERT INTO `t_log` VALUES ('2615', 'nini', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 06:33:32');
INSERT INTO `t_log` VALUES ('2616', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 06:33:38');
INSERT INTO `t_log` VALUES ('2617', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 06:37:18');
INSERT INTO `t_log` VALUES ('2618', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 06:45:33');
INSERT INTO `t_log` VALUES ('2619', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 06:48:28');
INSERT INTO `t_log` VALUES ('2620', 'nini', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 06:52:54');
INSERT INTO `t_log` VALUES ('2621', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 06:53:00');
INSERT INTO `t_log` VALUES ('2622', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 07:04:44');
INSERT INTO `t_log` VALUES ('2623', 'nini', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 07:14:02');
INSERT INTO `t_log` VALUES ('2624', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 07:14:06');
INSERT INTO `t_log` VALUES ('2625', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-08 07:15:45');
INSERT INTO `t_log` VALUES ('2626', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-09 07:21:49');
INSERT INTO `t_log` VALUES ('2627', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-15 00:23:51');
INSERT INTO `t_log` VALUES ('2628', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-15 00:34:07');
INSERT INTO `t_log` VALUES ('2629', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-05-16 09:57:28');
INSERT INTO `t_log` VALUES ('2630', 'liuBei', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-06-08 21:26:28');
INSERT INTO `t_log` VALUES ('2631', 'admin', '登录后台', '/admin/adminAccess', null, '0:0:0:0:0:0:0:1', '2020-06-08 21:27:05');

-- ----------------------------
-- Table structure for t_menus
-- ----------------------------
DROP TABLE IF EXISTS `t_menus`;
CREATE TABLE `t_menus` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL COMMENT '菜单名',
  `icon` varchar(20) DEFAULT NULL COMMENT '图标',
  `href` varchar(100) DEFAULT NULL COMMENT '资源地址',
  `perms` varchar(500) DEFAULT NULL COMMENT '权限',
  `spread` varchar(10) DEFAULT NULL COMMENT 'true：展开，false：不展开',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父节点',
  `sorting` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menus
-- ----------------------------
INSERT INTO `t_menus` VALUES ('100', '系统管理', null, null, null, null, '0', '999');
INSERT INTO `t_menus` VALUES ('103', '菜单管理', null, 'menus/menusList.html', null, null, '100', '60');
INSERT INTO `t_menus` VALUES ('104', '角色管理', null, 'roles/rolesList.html', null, null, '100', '50');
INSERT INTO `t_menus` VALUES ('105', '日志管理', null, 'log/logList.html', null, null, '100', '40');
INSERT INTO `t_menus` VALUES ('106', '用户管理', null, 'undefined', null, null, '0', '888');
INSERT INTO `t_menus` VALUES ('107', '查看所有用户', null, 'admin/allUser.html', null, null, '106', '50');
INSERT INTO `t_menus` VALUES ('108', '管理员密码更改', null, 'admin/changePassword.html', null, null, '106', '40');
INSERT INTO `t_menus` VALUES ('109', '房源信息管理', null, null, null, null, '0', '777');
INSERT INTO `t_menus` VALUES ('110', '所有房源信息', null, 'admin/houseList.html', null, null, '109', '50');
INSERT INTO `t_menus` VALUES ('111', '添加房源信息', null, 'house/addHouse.html', null, null, '109', '40');
INSERT INTO `t_menus` VALUES ('112', '管理员管理', null, 'admin/adminList.html', null, null, '100', '70');
INSERT INTO `t_menus` VALUES ('113', '订单管理', null, 'house/order.html', null, null, '109', '30');
INSERT INTO `t_menus` VALUES ('115', '房屋报障', null, 'houseFault/houseFaultAllList.html', null, null, '109', '20');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_id` int(11) NOT NULL COMMENT '房屋租赁id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `order_time` datetime NOT NULL,
  `order_user` varchar(20) NOT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1申请看房, 2申请签合同',
  `status` int(2) DEFAULT NULL COMMENT '1.申请看房, 2看房完毕, 3申请签合同,4签合同完毕',
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('4', '23', '6', '2019-12-05 12:40:58', 'xiaoming', '1', '2');
INSERT INTO `t_order` VALUES ('9', '23', '4', '2020-04-15 20:12:02', 'nnnn', '1', '1');
INSERT INTO `t_order` VALUES ('11', '39', '4', '2020-05-06 19:42:52', 'nnnn', '1', '1');
INSERT INTO `t_order` VALUES ('12', '48', '4', '2020-05-08 07:11:55', 'nnnn', '1', '1');
INSERT INTO `t_order` VALUES ('13', '48', '4', '2020-05-08 07:13:06', 'nnnn', '2', '1');
INSERT INTO `t_order` VALUES ('14', '48', '4', '2020-05-08 07:13:46', 'nnnn', '1', '2');
INSERT INTO `t_order` VALUES ('15', '48', '4', '2020-05-08 07:13:50', 'nnnn', '2', '2');

-- ----------------------------
-- Table structure for t_roles
-- ----------------------------
DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名',
  `role_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_roles
-- ----------------------------
INSERT INTO `t_roles` VALUES ('18', '超级管理员', '超级管理员');
INSERT INTO `t_roles` VALUES ('19', '普通管理员', '');
INSERT INTO `t_roles` VALUES ('20', '业务管理员', '');

-- ----------------------------
-- Table structure for t_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `t_roles_menus`;
CREATE TABLE `t_roles_menus` (
  `menu_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`menu_id`,`role_id`),
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_roles_menus
-- ----------------------------
INSERT INTO `t_roles_menus` VALUES ('16', '1');
INSERT INTO `t_roles_menus` VALUES ('21', '1');
INSERT INTO `t_roles_menus` VALUES ('22', '1');
INSERT INTO `t_roles_menus` VALUES ('23', '1');
INSERT INTO `t_roles_menus` VALUES ('11', '2');
INSERT INTO `t_roles_menus` VALUES ('21', '2');
INSERT INTO `t_roles_menus` VALUES ('22', '2');
INSERT INTO `t_roles_menus` VALUES ('23', '2');
INSERT INTO `t_roles_menus` VALUES ('34', '2');
INSERT INTO `t_roles_menus` VALUES ('35', '2');
INSERT INTO `t_roles_menus` VALUES ('36', '2');
INSERT INTO `t_roles_menus` VALUES ('21', '3');
INSERT INTO `t_roles_menus` VALUES ('22', '3');
INSERT INTO `t_roles_menus` VALUES ('23', '3');
INSERT INTO `t_roles_menus` VALUES ('100', '16');
INSERT INTO `t_roles_menus` VALUES ('103', '16');
INSERT INTO `t_roles_menus` VALUES ('104', '16');
INSERT INTO `t_roles_menus` VALUES ('105', '16');
INSERT INTO `t_roles_menus` VALUES ('100', '18');
INSERT INTO `t_roles_menus` VALUES ('103', '18');
INSERT INTO `t_roles_menus` VALUES ('104', '18');
INSERT INTO `t_roles_menus` VALUES ('105', '18');
INSERT INTO `t_roles_menus` VALUES ('106', '18');
INSERT INTO `t_roles_menus` VALUES ('107', '18');
INSERT INTO `t_roles_menus` VALUES ('108', '18');
INSERT INTO `t_roles_menus` VALUES ('109', '18');
INSERT INTO `t_roles_menus` VALUES ('110', '18');
INSERT INTO `t_roles_menus` VALUES ('111', '18');
INSERT INTO `t_roles_menus` VALUES ('112', '18');
INSERT INTO `t_roles_menus` VALUES ('113', '18');
INSERT INTO `t_roles_menus` VALUES ('115', '18');
INSERT INTO `t_roles_menus` VALUES ('100', '19');
INSERT INTO `t_roles_menus` VALUES ('103', '19');
INSERT INTO `t_roles_menus` VALUES ('104', '19');
INSERT INTO `t_roles_menus` VALUES ('105', '19');
INSERT INTO `t_roles_menus` VALUES ('106', '20');
INSERT INTO `t_roles_menus` VALUES ('107', '20');
INSERT INTO `t_roles_menus` VALUES ('108', '20');
INSERT INTO `t_roles_menus` VALUES ('109', '20');
INSERT INTO `t_roles_menus` VALUES ('110', '20');
INSERT INTO `t_roles_menus` VALUES ('111', '20');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) NOT NULL,
  `u_password` varchar(100) NOT NULL,
  `u_phone_number` varchar(11) DEFAULT NULL COMMENT '用户注册手机号码，用于找回密码',
  `u_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '昵称',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('3', 'nwy', 'nwy0411', '13752267515', 'keai');
INSERT INTO `t_users` VALUES ('4', 'nini', 'nini', '17622839534', 'nnnn');
INSERT INTO `t_users` VALUES ('5', '1234', '5678', '13920837895', 'jbmk');
INSERT INTO `t_users` VALUES ('6', 'xiaoming', 'xiaoming', '13652198113', 'xiaoming');
INSERT INTO `t_users` VALUES ('7', 'mingtian', 'jinjin', '17622839534', 'haha');
