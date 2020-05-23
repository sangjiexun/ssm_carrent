/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : cars

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/05/2020 22:47:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_car
-- ----------------------------
DROP TABLE IF EXISTS `bus_car`;
CREATE TABLE `bus_car`  (
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cartype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `rentprice` double(10, 2) NULL DEFAULT NULL,
  `deposit` double NULL DEFAULT NULL,
  `isrenting` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`carnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bus_car
-- ----------------------------
INSERT INTO `bus_car` VALUES ('A90Q2', '轿车', '黑色', 199999.00, 5000.00, 5000, 1, '迈巴赫', '2020-05-23/202005231830452493316.jpg', '2020-05-23 16:33:02');
INSERT INTO `bus_car` VALUES ('XA77777', 'SUV', '白色', 350000.00, 1500.00, 12000, 1, '宝马X3', '2020-05-23/202005232244207314453.jpg', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('XA88888', '轿车', '黑色', 880000.00, 1000.00, 10000, 1, '保时捷 卡宴', '2020-05-23/202005232245271587023.jpg', '2019-05-07 14:52:15');
INSERT INTO `bus_car` VALUES ('XA99999', '新能源', '黄', 500000.00, 3000.00, 20000, 0, '动力强劲', '2020-05-23/202005232245394385568.jpg', '2019-06-10 14:50:12');
INSERT INTO `bus_car` VALUES ('XBA7788', '跑车', '红色', 123.22, 40000.00, 8000, 0, '红色法拉利', '2020-05-23/202005232245506157820.jpg', '2020-04-25 14:34:21');

-- ----------------------------
-- Table structure for bus_check
-- ----------------------------
DROP TABLE IF EXISTS `bus_check`;
CREATE TABLE `bus_check`  (
  `checkid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checkdate` datetime(0) NULL DEFAULT NULL,
  `checkdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymoney` double(255, 0) NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`checkid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bus_check
-- ----------------------------
INSERT INTO `bus_check` VALUES ('JC_20180612_170407_0385_63960', '2018-06-12 00:00:00', '在G50高速超速', '超速', 500, '习大大', 'CZ_20180611_171304_0732_57330', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180612_172559_0323_71959', '2018-06-13 00:00:00', '无', '无', 0, '习大大', 'CZ_20180612_164747_0573_26177', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20180718_091454_0191_93480', '2018-07-18 00:00:00', '无', '无', 0, '习大大', 'CZ_20180718_091206_0365_62161', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181024_170206_355_7589', '2018-10-24 17:02:06', '无', '无', 0, '超级管理员', 'CZ_20181024_102327_735_9111', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_105333_218_89516', '2018-12-02 00:00:00', '1231321', '111122', 200, '超级管理员', 'CZ_20180612_164808_0385_37625', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20181201_111951_947_77152', '2018-12-03 00:00:00', '无', '无', 0, '超级管理员', 'CZ_20181201_111936_383_31565', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_2018_0901_175053_57325085', '2018-09-01 00:00:00', '在G50  1127-1130段超速20%未达50%', '有违章未处理', 500, '超级管理员', 'CZ_2018_0901_175000_97637709', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190322_142814_147_8624', '2019-03-22 14:28:14', '222', '11', 100, '超级管理员', 'CZ_20190320_141553_303_8141', '2019-05-07 14:55:30');
INSERT INTO `bus_check` VALUES ('JC_20190611_111021_41215259', '2019-06-11 11:10:21', '没有1', '无1', 0, '超级管理员', 'CZ_20190611_094617_32192683', '2019-06-11 11:10:32');
INSERT INTO `bus_check` VALUES ('JC_20190727_173816_738_26810', '2019-07-27 17:38:16', '无1', '无22222', 1, '超级管理员', 'CZ_20190727_152634_863_83662', '2019-07-27 17:38:24');
INSERT INTO `bus_check` VALUES ('JC_20200516_231129_287_38499', '2020-05-16 23:11:29', '还没还', '还没还', 100, '管理员', 'CZ_20200516_231024_784_96201', '2020-05-16 23:11:48');
INSERT INTO `bus_check` VALUES ('JC_20200518_214837_336_23115', '2020-05-18 21:48:37', '2222', '3333', 333, '业务员', 'CZ_20200518_214506_267_18391', '2020-05-18 21:48:49');
INSERT INTO `bus_check` VALUES ('JC_20200518_215104_739_88957', '2020-05-18 21:51:04', '123', '123', 123, '管理员', 'CZ_20200518_215048_005_57260', '2020-05-18 21:51:09');

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer`  (
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` int(255) NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `career` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `createtime` datetime(0) NULL DEFAULT NULL,
  `money` int(255) NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`identity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES ('123', '11111', 1, '123', '13599999911', '123', '2020-05-17 11:10:40', 0);
INSERT INTO `bus_customer` VALUES ('1234567', 'sang2', 1, '', '13354222222', '', '2020-05-23 22:42:27', 4000);
INSERT INTO `bus_customer` VALUES ('123456789', 'sang', NULL, '', NULL, '', '2020-05-23 22:38:46', 0);
INSERT INTO `bus_customer` VALUES ('3', 'd', 1, '3', '13354282222', '3', '2020-05-16 21:16:28', 0);
INSERT INTO `bus_customer` VALUES ('421087133414144412', '张小明', 1, '武昌', '13354281998', '程序员', '2019-05-07 14:52:24', 323);
INSERT INTO `bus_customer` VALUES ('431341134191311311', '李四', 0, '汉阳', '13451313113', 'CEO', '2019-05-07 14:52:24', 1);
INSERT INTO `bus_customer` VALUES ('431341134191311314', '王小明', 1, '汉口', '13413131113', 'CEO', '2019-05-07 14:52:24', 66);

-- ----------------------------
-- Table structure for bus_rent
-- ----------------------------
DROP TABLE IF EXISTS `bus_rent`;
CREATE TABLE `bus_rent`  (
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `begindate` datetime(0) NULL DEFAULT NULL,
  `returndate` datetime(0) NULL DEFAULT NULL,
  `rentflag` int(11) NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`rentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bus_rent
-- ----------------------------
INSERT INTO `bus_rent` VALUES ('CZ_20180611_171304_0732_57330', 1600.00, '2017-01-01 00:00:00', '2017-06-18 00:00:00', 1, '421087133414144412', '鄂A77777', '李四', '2017-01-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164747_0573_26177', 500.00, '2018-01-13 00:00:00', '2018-06-23 00:00:00', 1, '431321199291331131', '鄂A66666', '李四', '2018-01-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180612_164808_0385_37625', 1000.00, '2018-03-13 00:00:00', '2018-06-15 00:00:00', 1, '421087133414144412', '鄂A88888', '王五', '2018-03-13 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20180718_091206_0365_62161', 500.00, '2018-05-18 00:00:00', '2018-07-21 00:00:00', 1, '421087133414144412', '鄂A66666', '张三', '2018-05-18 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20181024_102327_735_9111', 500.00, '2018-07-23 10:23:27', '2018-10-31 10:23:29', 1, '421087133414144412', '鄂A66666', '李四', '2018-07-23 10:23:27');
INSERT INTO `bus_rent` VALUES ('CZ_20181201_111936_383_31565', 1500.00, '2018-09-01 00:00:00', '2018-12-29 00:00:00', 1, '43131334113331131', '鄂A77777', '王五', '2018-09-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_2018_0901_175000_97637709', 500.00, '2018-12-01 00:00:00', '2018-09-10 00:00:00', 1, '431321199291331131', '鄂A66666', '李四', '2018-12-01 00:00:00');
INSERT INTO `bus_rent` VALUES ('CZ_20190611_094617_32192683', 500.00, '2019-06-11 09:46:17', '2019-06-15 09:46:19', 1, '43131334113331131', '鄂A66666', '超级管理员', '2019-06-11 09:46:25');
INSERT INTO `bus_rent` VALUES ('CZ_20190727_152634_863_83662', 500.00, '2019-07-27 15:26:34', '2019-07-31 00:00:00', 1, '43131334113331131', '鄂A66666', '超级管理员', '2019-07-27 15:26:40');
INSERT INTO `bus_rent` VALUES ('CZ_20200516_231024_784_96201', 40000.00, '2020-05-16 23:10:24', '2020-05-17 00:00:00', 1, '3', '辽BA7788', '管理员', '2020-05-16 23:10:31');
INSERT INTO `bus_rent` VALUES ('CZ_20200518_214506_267_18391', 40000.00, '2020-05-18 21:45:06', '2020-05-21 00:00:00', 1, '123', '辽BA7788', '业务员', '2020-05-18 21:45:12');
INSERT INTO `bus_rent` VALUES ('CZ_20200518_215048_005_57260', 40000.00, '2020-05-18 21:50:48', '2020-05-18 21:50:51', 1, '123', '辽BA7788', '管理员', '2020-05-18 21:50:52');
INSERT INTO `bus_rent` VALUES ('CZ_20200523_220727_240_55630', 5000.00, '2020-05-23 22:07:27', NULL, NULL, NULL, 'A90Q2', '123', '2020-05-23 22:07:27');
INSERT INTO `bus_rent` VALUES ('CZ_20200523_222133_616_46312', 3000.00, '2020-05-23 22:21:33', NULL, 1, '123456', 'XA99999', 'yewu3', '2020-05-23 22:21:33');
INSERT INTO `bus_rent` VALUES ('CZ_20200523_224303_646_20120', 5000.00, '2020-05-23 22:43:03', NULL, 1, '1234567', 'A90Q2', 'sang2', '2020-05-23 22:43:03');
INSERT INTO `bus_rent` VALUES ('CZ_20200523_224626_351_81053', 1500.00, '2020-05-23 22:46:26', '2020-05-30 00:00:00', 0, '1234567', 'XA77777', '业务员', '2020-05-23 22:46:34');
INSERT INTO `bus_rent` VALUES ('CZ_20200523_224657_120_96871', 1000.00, '2020-05-23 22:46:57', NULL, 1, '1234567', 'XA88888', 'sang2', '2020-05-23 22:46:57');

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 312 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES (5, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:18:31');
INSERT INTO `sys_log_login` VALUES (6, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:21:26');
INSERT INTO `sys_log_login` VALUES (7, '超级管理员-admin', '127.0.0.1', '2019-06-10 10:22:20');
INSERT INTO `sys_log_login` VALUES (8, '超级管理员-admin', '127.0.0.1', '2019-06-10 11:01:47');
INSERT INTO `sys_log_login` VALUES (9, '超级管理员-admin', '127.0.0.1', '2019-06-10 11:12:34');
INSERT INTO `sys_log_login` VALUES (10, '超级管理员-admin', '127.0.0.1', '2019-06-10 14:42:41');
INSERT INTO `sys_log_login` VALUES (11, '超级管理员-admin', '127.0.0.1', '2019-06-10 14:53:57');
INSERT INTO `sys_log_login` VALUES (12, '超级管理员-admin', '127.0.0.1', '2019-06-10 15:35:46');
INSERT INTO `sys_log_login` VALUES (13, '超级管理员-admin', '127.0.0.1', '2019-06-10 15:35:51');
INSERT INTO `sys_log_login` VALUES (14, '超级管理员-admin', '127.0.0.1', '2019-06-10 15:41:25');
INSERT INTO `sys_log_login` VALUES (15, '超级管理员-admin', '127.0.0.1', '2019-06-10 16:15:34');
INSERT INTO `sys_log_login` VALUES (16, '超级管理员-admin', '127.0.0.1', '2019-06-10 16:38:44');
INSERT INTO `sys_log_login` VALUES (17, '超级管理员-admin', '127.0.0.1', '2019-06-10 16:53:20');
INSERT INTO `sys_log_login` VALUES (18, '超级管理员-admin', '127.0.0.1', '2019-06-11 09:19:33');
INSERT INTO `sys_log_login` VALUES (19, '超级管理员-admin', '127.0.0.1', '2019-06-11 09:41:54');
INSERT INTO `sys_log_login` VALUES (20, '超级管理员-admin', '127.0.0.1', '2019-06-11 10:57:54');
INSERT INTO `sys_log_login` VALUES (21, '超级管理员-admin', '127.0.0.1', '2019-06-11 11:07:57');
INSERT INTO `sys_log_login` VALUES (22, '超级管理员-admin', '127.0.0.1', '2019-06-11 11:10:04');
INSERT INTO `sys_log_login` VALUES (23, '超级管理员-admin', '127.0.0.1', '2019-06-11 11:30:00');
INSERT INTO `sys_log_login` VALUES (24, '超级管理员-admin', '127.0.0.1', '2019-06-11 11:38:28');
INSERT INTO `sys_log_login` VALUES (25, '超级管理员-admin', '127.0.0.1', '2019-06-11 14:22:43');
INSERT INTO `sys_log_login` VALUES (26, '超级管理员-admin', '127.0.0.1', '2019-06-11 14:37:13');
INSERT INTO `sys_log_login` VALUES (27, '超级管理员-admin', '127.0.0.1', '2019-06-11 14:45:35');
INSERT INTO `sys_log_login` VALUES (28, '超级管理员-admin', '127.0.0.1', '2019-06-11 15:57:16');
INSERT INTO `sys_log_login` VALUES (29, '超级管理员-admin', '127.0.0.1', '2019-06-11 16:42:55');
INSERT INTO `sys_log_login` VALUES (30, '超级管理员-admin', '127.0.0.1', '2019-06-11 17:01:10');
INSERT INTO `sys_log_login` VALUES (31, '超级管理员-admin', '127.0.0.1', '2019-06-12 09:35:50');
INSERT INTO `sys_log_login` VALUES (32, '超级管理员-admin', '127.0.0.1', '2019-06-12 09:54:09');
INSERT INTO `sys_log_login` VALUES (33, '超级管理员-admin', '127.0.0.1', '2019-06-12 09:59:20');
INSERT INTO `sys_log_login` VALUES (34, '超级管理员-admin', '127.0.0.1', '2019-06-12 09:59:43');
INSERT INTO `sys_log_login` VALUES (35, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:00:13');
INSERT INTO `sys_log_login` VALUES (36, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:00:44');
INSERT INTO `sys_log_login` VALUES (37, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:02:29');
INSERT INTO `sys_log_login` VALUES (38, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:05:57');
INSERT INTO `sys_log_login` VALUES (39, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:16:26');
INSERT INTO `sys_log_login` VALUES (40, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:20:36');
INSERT INTO `sys_log_login` VALUES (41, '超级管理员-admin', '127.0.0.1', '2019-06-12 10:24:14');
INSERT INTO `sys_log_login` VALUES (42, '超级管理员-admin', '127.0.0.1', '2019-06-12 11:17:46');
INSERT INTO `sys_log_login` VALUES (43, '超级管理员-admin', '127.0.0.1', '2019-06-12 11:32:29');
INSERT INTO `sys_log_login` VALUES (44, '超级管理员-admin', '127.0.0.1', '2019-06-12 11:35:05');
INSERT INTO `sys_log_login` VALUES (45, '超级管理员-admin', '127.0.0.1', '2019-06-12 11:51:48');
INSERT INTO `sys_log_login` VALUES (46, '超级管理员-admin', '127.0.0.1', '2019-06-12 14:31:34');
INSERT INTO `sys_log_login` VALUES (47, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:01:15');
INSERT INTO `sys_log_login` VALUES (48, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:26:55');
INSERT INTO `sys_log_login` VALUES (49, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:31:17');
INSERT INTO `sys_log_login` VALUES (50, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:40:38');
INSERT INTO `sys_log_login` VALUES (51, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:40:52');
INSERT INTO `sys_log_login` VALUES (52, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:41');
INSERT INTO `sys_log_login` VALUES (53, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:50');
INSERT INTO `sys_log_login` VALUES (54, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:44:53');
INSERT INTO `sys_log_login` VALUES (55, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:45:59');
INSERT INTO `sys_log_login` VALUES (56, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:45:59');
INSERT INTO `sys_log_login` VALUES (57, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:47:29');
INSERT INTO `sys_log_login` VALUES (58, '超级管理员-admin', '127.0.0.1', '2019-06-12 15:48:56');
INSERT INTO `sys_log_login` VALUES (59, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:10:49');
INSERT INTO `sys_log_login` VALUES (60, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:37:03');
INSERT INTO `sys_log_login` VALUES (61, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:38:45');
INSERT INTO `sys_log_login` VALUES (62, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:39:08');
INSERT INTO `sys_log_login` VALUES (63, '超级管理员-admin', '127.0.0.1', '2019-06-14 09:41:16');
INSERT INTO `sys_log_login` VALUES (64, '超级管理员-admin', '127.0.0.1', '2019-06-14 10:49:01');
INSERT INTO `sys_log_login` VALUES (65, '超级管理员-admin', '127.0.0.1', '2019-06-14 10:56:58');
INSERT INTO `sys_log_login` VALUES (66, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:03:40');
INSERT INTO `sys_log_login` VALUES (67, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:06:35');
INSERT INTO `sys_log_login` VALUES (68, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:19:40');
INSERT INTO `sys_log_login` VALUES (69, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:21:08');
INSERT INTO `sys_log_login` VALUES (70, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:22:51');
INSERT INTO `sys_log_login` VALUES (71, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:23:07');
INSERT INTO `sys_log_login` VALUES (72, '超级管理员-admin', '127.0.0.1', '2019-06-14 11:27:18');
INSERT INTO `sys_log_login` VALUES (120, '习大大-xdd', '127.0.0.1', '2019-07-23 15:58:24');
INSERT INTO `sys_log_login` VALUES (121, '习大大-xdd', '127.0.0.1', '2019-07-23 16:15:51');
INSERT INTO `sys_log_login` VALUES (122, '习大大-xdd', '127.0.0.1', '2019-07-23 16:21:10');
INSERT INTO `sys_log_login` VALUES (123, '习大大-xdd', '127.0.0.1', '2019-07-23 16:21:29');
INSERT INTO `sys_log_login` VALUES (124, '习大大-xdd', '127.0.0.1', '2019-07-23 16:25:45');
INSERT INTO `sys_log_login` VALUES (125, '习大大-xdd', '127.0.0.1', '2019-07-23 16:29:54');
INSERT INTO `sys_log_login` VALUES (126, '习大大-xdd', '127.0.0.1', '2019-07-23 16:34:37');
INSERT INTO `sys_log_login` VALUES (127, '习大大-xdd', '127.0.0.1', '2019-07-23 16:36:28');
INSERT INTO `sys_log_login` VALUES (128, '习大大-xdd', '127.0.0.1', '2019-07-23 16:36:40');
INSERT INTO `sys_log_login` VALUES (129, '习大大-xdd', '127.0.0.1', '2019-07-23 16:52:14');
INSERT INTO `sys_log_login` VALUES (130, '习大大-xdd', '127.0.0.1', '2019-07-23 16:54:47');
INSERT INTO `sys_log_login` VALUES (131, '习大大-xdd', '127.0.0.1', '2019-07-23 17:00:09');
INSERT INTO `sys_log_login` VALUES (132, '习大大-xdd', '127.0.0.1', '2019-07-23 17:00:29');
INSERT INTO `sys_log_login` VALUES (133, '超级管理员-admin', '127.0.0.1', '2019-07-24 09:03:14');
INSERT INTO `sys_log_login` VALUES (134, '超级管理员-admin', '127.0.0.1', '2019-07-24 10:05:49');
INSERT INTO `sys_log_login` VALUES (135, '超级管理员-admin', '127.0.0.1', '2019-07-24 10:08:04');
INSERT INTO `sys_log_login` VALUES (136, '超级管理员-admin', '127.0.0.1', '2019-07-24 10:08:47');
INSERT INTO `sys_log_login` VALUES (137, '超级管理员-admin', '127.0.0.1', '2019-07-24 11:44:27');
INSERT INTO `sys_log_login` VALUES (138, '超级管理员-admin', '127.0.0.1', '2019-07-24 11:44:57');
INSERT INTO `sys_log_login` VALUES (139, '超级管理员-admin', '127.0.0.1', '2019-07-24 11:45:42');
INSERT INTO `sys_log_login` VALUES (140, '超级管理员-admin', '127.0.0.1', '2019-07-24 11:48:08');
INSERT INTO `sys_log_login` VALUES (141, '超级管理员-admin', '127.0.0.1', '2019-07-24 11:49:07');
INSERT INTO `sys_log_login` VALUES (142, '超级管理员-admin', '127.0.0.1', '2019-07-24 11:50:09');
INSERT INTO `sys_log_login` VALUES (143, '超级管理员-admin', '127.0.0.1', '2019-07-24 11:50:19');
INSERT INTO `sys_log_login` VALUES (144, '超级管理员-admin', '127.0.0.1', '2019-07-25 09:33:38');
INSERT INTO `sys_log_login` VALUES (145, '超级管理员-admin', '127.0.0.1', '2019-07-25 09:33:52');
INSERT INTO `sys_log_login` VALUES (146, '超级管理员-admin', '127.0.0.1', '2019-07-25 09:34:06');
INSERT INTO `sys_log_login` VALUES (147, '超级管理员-admin', '127.0.0.1', '2019-07-25 09:54:03');
INSERT INTO `sys_log_login` VALUES (148, '超级管理员-admin', '127.0.0.1', '2019-07-25 09:54:23');
INSERT INTO `sys_log_login` VALUES (149, '超级管理员-admin', '127.0.0.1', '2019-07-25 10:11:30');
INSERT INTO `sys_log_login` VALUES (150, '超级管理员-admin', '127.0.0.1', '2019-07-25 10:13:11');
INSERT INTO `sys_log_login` VALUES (151, '超级管理员-admin', '127.0.0.1', '2019-07-25 10:28:31');
INSERT INTO `sys_log_login` VALUES (152, '超级管理员-admin', '127.0.0.1', '2019-07-25 10:36:34');
INSERT INTO `sys_log_login` VALUES (153, '超级管理员-admin', '127.0.0.1', '2019-07-25 10:42:21');
INSERT INTO `sys_log_login` VALUES (154, '超级管理员-admin', '127.0.0.1', '2019-07-25 10:50:50');
INSERT INTO `sys_log_login` VALUES (155, '超级管理员-admin', '127.0.0.1', '2019-07-25 10:53:32');
INSERT INTO `sys_log_login` VALUES (156, '超级管理员-admin', '127.0.0.1', '2019-07-25 11:01:51');
INSERT INTO `sys_log_login` VALUES (157, '超级管理员-admin', '127.0.0.1', '2019-07-25 11:37:32');
INSERT INTO `sys_log_login` VALUES (158, '超级管理员-admin', '127.0.0.1', '2019-07-25 11:41:40');
INSERT INTO `sys_log_login` VALUES (159, '超级管理员-admin', '127.0.0.1', '2019-07-25 14:06:26');
INSERT INTO `sys_log_login` VALUES (160, '超级管理员-admin', '127.0.0.1', '2019-07-25 14:14:47');
INSERT INTO `sys_log_login` VALUES (161, '超级管理员-admin', '127.0.0.1', '2019-07-25 14:21:50');
INSERT INTO `sys_log_login` VALUES (162, '超级管理员-admin', '127.0.0.1', '2019-07-25 14:24:28');
INSERT INTO `sys_log_login` VALUES (163, '超级管理员-admin', '127.0.0.1', '2019-07-27 09:09:17');
INSERT INTO `sys_log_login` VALUES (164, '超级管理员-admin', '127.0.0.1', '2019-07-27 09:10:16');
INSERT INTO `sys_log_login` VALUES (165, '超级管理员-admin', '127.0.0.1', '2019-07-27 09:10:43');
INSERT INTO `sys_log_login` VALUES (166, '超级管理员-admin', '127.0.0.1', '2019-07-27 09:30:29');
INSERT INTO `sys_log_login` VALUES (167, '超级管理员-admin', '127.0.0.1', '2019-07-27 09:30:55');
INSERT INTO `sys_log_login` VALUES (168, '超级管理员-admin', '127.0.0.1', '2019-07-27 10:07:16');
INSERT INTO `sys_log_login` VALUES (169, '超级管理员-admin', '127.0.0.1', '2019-07-27 10:20:13');
INSERT INTO `sys_log_login` VALUES (170, '超级管理员-admin', '127.0.0.1', '2019-07-27 11:02:10');
INSERT INTO `sys_log_login` VALUES (171, '超级管理员-admin', '127.0.0.1', '2019-07-27 11:20:13');
INSERT INTO `sys_log_login` VALUES (172, '超级管理员-admin', '127.0.0.1', '2019-07-27 11:20:17');
INSERT INTO `sys_log_login` VALUES (173, '超级管理员-admin', '127.0.0.1', '2019-07-27 11:20:53');
INSERT INTO `sys_log_login` VALUES (174, '超级管理员-admin', '127.0.0.1', '2019-07-27 11:21:51');
INSERT INTO `sys_log_login` VALUES (175, '超级管理员-admin', '127.0.0.1', '2019-07-27 11:57:34');
INSERT INTO `sys_log_login` VALUES (176, '超级管理员-admin', '127.0.0.1', '2019-07-27 11:57:34');
INSERT INTO `sys_log_login` VALUES (177, '超级管理员-admin', '127.0.0.1', '2019-07-27 11:57:55');
INSERT INTO `sys_log_login` VALUES (178, '超级管理员-admin', '127.0.0.1', '2019-07-27 12:00:42');
INSERT INTO `sys_log_login` VALUES (179, '超级管理员-admin', '127.0.0.1', '2019-07-27 12:15:17');
INSERT INTO `sys_log_login` VALUES (180, '超级管理员-admin', '127.0.0.1', '2019-07-27 12:15:25');
INSERT INTO `sys_log_login` VALUES (181, '超级管理员-admin', '127.0.0.1', '2019-07-27 15:06:34');
INSERT INTO `sys_log_login` VALUES (182, '超级管理员-admin', '127.0.0.1', '2019-07-27 15:23:37');
INSERT INTO `sys_log_login` VALUES (183, '超级管理员-admin', '127.0.0.1', '2019-07-27 15:24:02');
INSERT INTO `sys_log_login` VALUES (184, '超级管理员-admin', '127.0.0.1', '2019-07-27 15:57:34');
INSERT INTO `sys_log_login` VALUES (185, '超级管理员-admin', '127.0.0.1', '2019-07-27 15:58:10');
INSERT INTO `sys_log_login` VALUES (186, '超级管理员-admin', '127.0.0.1', '2019-07-27 16:57:37');
INSERT INTO `sys_log_login` VALUES (187, '超级管理员-admin', '127.0.0.1', '2019-07-27 16:57:56');
INSERT INTO `sys_log_login` VALUES (188, '超级管理员-admin', '127.0.0.1', '2019-07-27 17:36:53');
INSERT INTO `sys_log_login` VALUES (189, '超级管理员-admin', '127.0.0.1', '2019-07-27 17:52:43');
INSERT INTO `sys_log_login` VALUES (190, '超级管理员-admin', '127.0.0.1', '2019-07-27 17:53:07');
INSERT INTO `sys_log_login` VALUES (191, '超级管理员-admin', '127.0.0.1', '2019-07-27 17:54:45');
INSERT INTO `sys_log_login` VALUES (192, '超级管理员-admin', '127.0.0.1', '2019-07-27 17:54:59');
INSERT INTO `sys_log_login` VALUES (193, '超级管理员-admin', '127.0.0.1', '2019-07-27 18:03:40');
INSERT INTO `sys_log_login` VALUES (194, '超级管理员-admin', '127.0.0.1', '2019-07-27 18:03:43');
INSERT INTO `sys_log_login` VALUES (195, '超级管理员-admin', '127.0.0.1', '2019-07-27 18:04:12');
INSERT INTO `sys_log_login` VALUES (196, '超级管理员-admin', '127.0.0.1', '2019-07-28 11:02:51');
INSERT INTO `sys_log_login` VALUES (197, '超级管理员-admin', '127.0.0.1', '2019-07-28 12:08:57');
INSERT INTO `sys_log_login` VALUES (198, '超级管理员-admin', '127.0.0.1', '2019-07-28 12:10:29');
INSERT INTO `sys_log_login` VALUES (199, '超级管理员-admin', '127.0.0.1', '2019-07-28 12:11:00');
INSERT INTO `sys_log_login` VALUES (200, '超级管理员-admin', '127.0.0.1', '2019-07-28 12:22:41');
INSERT INTO `sys_log_login` VALUES (201, '超级管理员-admin', '127.0.0.1', '2019-07-28 15:36:26');
INSERT INTO `sys_log_login` VALUES (202, '超级管理员-admin', '127.0.0.1', '2019-07-28 15:54:23');
INSERT INTO `sys_log_login` VALUES (203, '超级管理员-admin', '127.0.0.1', '2019-07-28 15:54:42');
INSERT INTO `sys_log_login` VALUES (204, '超级管理员-admin', '127.0.0.1', '2019-07-28 16:04:00');
INSERT INTO `sys_log_login` VALUES (205, '超级管理员-admin', '127.0.0.1', '2019-07-28 16:05:22');
INSERT INTO `sys_log_login` VALUES (206, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:11:54');
INSERT INTO `sys_log_login` VALUES (207, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:11:54');
INSERT INTO `sys_log_login` VALUES (208, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:12:14');
INSERT INTO `sys_log_login` VALUES (209, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:14:41');
INSERT INTO `sys_log_login` VALUES (210, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:16:02');
INSERT INTO `sys_log_login` VALUES (211, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:16:16');
INSERT INTO `sys_log_login` VALUES (212, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:16:20');
INSERT INTO `sys_log_login` VALUES (213, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:17:35');
INSERT INTO `sys_log_login` VALUES (214, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:24:40');
INSERT INTO `sys_log_login` VALUES (215, '超级管理员-admin', '127.0.0.1', '2019-07-28 17:33:56');
INSERT INTO `sys_log_login` VALUES (216, '超级管理员-admin', '127.0.0.1', '2019-07-28 18:08:42');
INSERT INTO `sys_log_login` VALUES (217, '超级管理员-admin', '127.0.0.1', '2019-07-29 11:09:19');
INSERT INTO `sys_log_login` VALUES (218, '超级管理员-admin', '127.0.0.1', '2019-07-30 10:23:21');
INSERT INTO `sys_log_login` VALUES (219, '超级管理员-admin', '127.0.0.1', '2019-07-30 10:27:41');
INSERT INTO `sys_log_login` VALUES (220, '超级管理员-admin', '127.0.0.1', '2019-07-30 21:25:43');
INSERT INTO `sys_log_login` VALUES (221, '超级管理员-admin', '127.0.0.1', '2019-08-01 15:02:28');
INSERT INTO `sys_log_login` VALUES (222, '超级管理员-admin', '127.0.0.1', '2019-09-07 09:31:40');
INSERT INTO `sys_log_login` VALUES (223, '超级管理员-admin', '127.0.0.1', '2019-09-07 09:39:27');
INSERT INTO `sys_log_login` VALUES (224, '最代码官方-zuidaima', '0:0:0:0:0:0:0:1', '2020-04-04 12:02:29');
INSERT INTO `sys_log_login` VALUES (225, '最代码官方-zuidaima', '0:0:0:0:0:0:0:1', '2020-04-04 12:03:59');
INSERT INTO `sys_log_login` VALUES (226, '最代码官方-zuidaima', '0:0:0:0:0:0:0:1', '2020-04-04 12:08:50');
INSERT INTO `sys_log_login` VALUES (227, '最代码官方-zuidaima', '0:0:0:0:0:0:0:1', '2020-04-04 12:22:26');
INSERT INTO `sys_log_login` VALUES (228, '最代码官方-zuidaima', '0:0:0:0:0:0:0:1', '2020-04-04 12:24:38');
INSERT INTO `sys_log_login` VALUES (229, '最代码官方-zuidaima', '0:0:0:0:0:0:0:1', '2020-04-04 12:27:30');
INSERT INTO `sys_log_login` VALUES (230, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 13:58:40');
INSERT INTO `sys_log_login` VALUES (231, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:00:09');
INSERT INTO `sys_log_login` VALUES (232, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:00:32');
INSERT INTO `sys_log_login` VALUES (233, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:08:49');
INSERT INTO `sys_log_login` VALUES (234, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:16:02');
INSERT INTO `sys_log_login` VALUES (235, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:20:01');
INSERT INTO `sys_log_login` VALUES (236, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:25:28');
INSERT INTO `sys_log_login` VALUES (237, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:26:49');
INSERT INTO `sys_log_login` VALUES (238, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:32:35');
INSERT INTO `sys_log_login` VALUES (239, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:39:56');
INSERT INTO `sys_log_login` VALUES (240, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:42:08');
INSERT INTO `sys_log_login` VALUES (241, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:46:26');
INSERT INTO `sys_log_login` VALUES (242, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 14:59:00');
INSERT INTO `sys_log_login` VALUES (243, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:03:27');
INSERT INTO `sys_log_login` VALUES (244, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:19:48');
INSERT INTO `sys_log_login` VALUES (245, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:22:53');
INSERT INTO `sys_log_login` VALUES (246, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:29:48');
INSERT INTO `sys_log_login` VALUES (247, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:33:40');
INSERT INTO `sys_log_login` VALUES (248, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:43:20');
INSERT INTO `sys_log_login` VALUES (249, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:44:34');
INSERT INTO `sys_log_login` VALUES (250, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:45:16');
INSERT INTO `sys_log_login` VALUES (251, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:50:52');
INSERT INTO `sys_log_login` VALUES (252, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:51:01');
INSERT INTO `sys_log_login` VALUES (253, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:51:11');
INSERT INTO `sys_log_login` VALUES (254, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:52:04');
INSERT INTO `sys_log_login` VALUES (255, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:52:13');
INSERT INTO `sys_log_login` VALUES (256, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:52:31');
INSERT INTO `sys_log_login` VALUES (257, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:52:40');
INSERT INTO `sys_log_login` VALUES (258, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:53:05');
INSERT INTO `sys_log_login` VALUES (259, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:53:14');
INSERT INTO `sys_log_login` VALUES (260, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:54:01');
INSERT INTO `sys_log_login` VALUES (261, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:55:23');
INSERT INTO `sys_log_login` VALUES (262, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:56:45');
INSERT INTO `sys_log_login` VALUES (263, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-04-25 15:56:47');
INSERT INTO `sys_log_login` VALUES (264, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 07:52:09');
INSERT INTO `sys_log_login` VALUES (265, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 07:54:48');
INSERT INTO `sys_log_login` VALUES (266, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 08:15:39');
INSERT INTO `sys_log_login` VALUES (267, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 08:30:56');
INSERT INTO `sys_log_login` VALUES (268, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 08:52:12');
INSERT INTO `sys_log_login` VALUES (269, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:01:53');
INSERT INTO `sys_log_login` VALUES (270, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:09:19');
INSERT INTO `sys_log_login` VALUES (271, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:10:37');
INSERT INTO `sys_log_login` VALUES (272, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:11:44');
INSERT INTO `sys_log_login` VALUES (273, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:12:15');
INSERT INTO `sys_log_login` VALUES (274, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:12:47');
INSERT INTO `sys_log_login` VALUES (275, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:19:43');
INSERT INTO `sys_log_login` VALUES (276, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:22:00');
INSERT INTO `sys_log_login` VALUES (277, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:23:19');
INSERT INTO `sys_log_login` VALUES (278, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:26:13');
INSERT INTO `sys_log_login` VALUES (279, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:27:31');
INSERT INTO `sys_log_login` VALUES (280, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:29:07');
INSERT INTO `sys_log_login` VALUES (281, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:29:07');
INSERT INTO `sys_log_login` VALUES (282, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:30:47');
INSERT INTO `sys_log_login` VALUES (283, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:31:17');
INSERT INTO `sys_log_login` VALUES (284, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:33:53');
INSERT INTO `sys_log_login` VALUES (285, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:35:22');
INSERT INTO `sys_log_login` VALUES (286, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:36:11');
INSERT INTO `sys_log_login` VALUES (287, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 09:49:18');
INSERT INTO `sys_log_login` VALUES (288, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 20:52:21');
INSERT INTO `sys_log_login` VALUES (289, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 21:12:48');
INSERT INTO `sys_log_login` VALUES (290, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 21:13:44');
INSERT INTO `sys_log_login` VALUES (291, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 21:14:25');
INSERT INTO `sys_log_login` VALUES (292, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 21:16:06');
INSERT INTO `sys_log_login` VALUES (293, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-16 23:09:25');
INSERT INTO `sys_log_login` VALUES (294, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-16 23:19:15');
INSERT INTO `sys_log_login` VALUES (295, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-17 01:37:26');
INSERT INTO `sys_log_login` VALUES (296, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-17 10:49:56');
INSERT INTO `sys_log_login` VALUES (297, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-17 11:08:18');
INSERT INTO `sys_log_login` VALUES (298, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-17 11:35:14');
INSERT INTO `sys_log_login` VALUES (299, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-17 13:24:24');
INSERT INTO `sys_log_login` VALUES (300, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-18 21:44:30');
INSERT INTO `sys_log_login` VALUES (301, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-18 21:48:01');
INSERT INTO `sys_log_login` VALUES (302, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-18 21:49:12');
INSERT INTO `sys_log_login` VALUES (303, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-18 21:50:34');
INSERT INTO `sys_log_login` VALUES (304, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-18 21:52:07');
INSERT INTO `sys_log_login` VALUES (305, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-18 21:52:43');
INSERT INTO `sys_log_login` VALUES (306, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-23 18:30:08');
INSERT INTO `sys_log_login` VALUES (307, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-23 18:36:10');
INSERT INTO `sys_log_login` VALUES (308, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-23 18:49:42');
INSERT INTO `sys_log_login` VALUES (309, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-23 18:54:08');
INSERT INTO `sys_log_login` VALUES (310, '管理员-admin', '0:0:0:0:0:0:0:1', '2020-05-23 19:33:26');
INSERT INTO `sys_log_login` VALUES (311, '业务员-yewu', '0:0:0:0:0:0:0:1', '2020-05-23 22:43:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spread` int(255) NULL DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(255) NULL DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '汽车出租系统', NULL, 1, NULL, '&#xe68e;', 1);
INSERT INTO `sys_menu` VALUES (2, 1, '基础管理', '', 1, '', '&#xe653;', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '业务管理', '', 1, '', '&#xe663;', 1);
INSERT INTO `sys_menu` VALUES (4, 1, '系统管理', '', 0, '', '&#xe716;', 1);
INSERT INTO `sys_menu` VALUES (6, 2, '客户管理', '../bus/toCustomerManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (7, 2, '车辆管理', '../bus/toCarManager.action', 0, '', '&#xe657;', 1);
INSERT INTO `sys_menu` VALUES (8, 3, '汽车出租', '../bus/toRentCarManager.action', 1, '', '&#xe65b;', 1);
INSERT INTO `sys_menu` VALUES (9, 3, '出租单管理', '../bus/toRentManager.action', 0, '', '&#xe6b2;', 1);
INSERT INTO `sys_menu` VALUES (10, 3, '汽车入库', '../bus/toCheckCarManager.action', 0, '', '&#xe65a;', 1);
INSERT INTO `sys_menu` VALUES (11, 3, '检查单管理', '../bus/toCheckManager.action', 0, '', '&#xe705;', 1);
INSERT INTO `sys_menu` VALUES (12, 4, '菜单管理', '../sys/toMenuManager.action', 0, NULL, '&#xe60f;', 1);
INSERT INTO `sys_menu` VALUES (13, 4, '角色管理', '../sys/toRoleManager.action', 0, '', '&#xe66f;', 1);
INSERT INTO `sys_menu` VALUES (14, 4, '用户管理', '../sys/toUserManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (15, 4, '日志管理', '../sys/toLogInfoManager.action', 0, '', '&#xe655;', 1);
INSERT INTO `sys_menu` VALUES (16, 4, '公告管理', '../sys/toNewsManager.action', 0, '', '&#xe645;', 1);
INSERT INTO `sys_menu` VALUES (18, 5, '客户地区统计', '../stat/toCustomerAreaStat.action', 0, '', '&#xe63c;', 1);
INSERT INTO `sys_menu` VALUES (19, 5, '公司年度月份销售额', '../stat/toCompanyYearGradeStat.action', 0, '', '&#xe62c;', 1);
INSERT INTO `sys_menu` VALUES (20, 5, '业务员年度销售额', '../stat/toOpernameYearGradeStat.action', 0, '', '&#xe62d;', 1);

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1);
INSERT INTO `sys_role` VALUES (2, '业务管理员', '拥有所以业务菜单', 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 17);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (2, 10);
INSERT INTO `sys_role_menu` VALUES (2, 11);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (4, 2);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(255) NULL DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(255) NULL DEFAULT 2 COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) NULL DEFAULT NULL,
  `money` int(255) NULL DEFAULT NULL COMMENT '余额',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '4313341334413', '管理员', 1, 'admin', '13520109202', 'e10adc3949ba59abbe56e057f20f883e', 'CEO', 1, 1, 1);
INSERT INTO `sys_user` VALUES (4, 'yewu', '43311341311314341', '业务员', 0, '业务员', '13999999999', 'e10adc3949ba59abbe56e057f20f883e', '业务员', 2, 1, 3);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `identity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `identity`(`identity`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '123', '123', '123');
INSERT INTO `tb_user` VALUES (3, 'yewu3', '123456', '123456');
INSERT INTO `tb_user` VALUES (4, 'sang', 'jjjjjj', '123456789');
INSERT INTO `tb_user` VALUES (5, 'sang2', '111111', '1234567');

SET FOREIGN_KEY_CHECKS = 1;
