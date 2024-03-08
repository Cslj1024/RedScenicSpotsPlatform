/*
 Navicat Premium Data Transfer

 Source Server         : MySQL5.7.41
 Source Server Type    : MySQL
 Source Server Version : 50741 (5.7.41-log)
 Source Host           : localhost:3306
 Source Schema         : redscenic

 Target Server Type    : MySQL
 Target Server Version : 50741 (5.7.41-log)
 File Encoding         : 65001

 Date: 04/01/2024 20:26:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_scenic
-- ----------------------------
DROP TABLE IF EXISTS `t_scenic`;
CREATE TABLE `t_scenic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `images` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `type_name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `create_user` bigint(20) NOT NULL,
  `update_user` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'ÉÌÆ·ÐÅÏ¢±í' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_scenic
-- ----------------------------
INSERT INTO `t_scenic` VALUES (8, '井冈山', 'aaaa', '江西省吉安市', 1, '主要革命圣地', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (9, '遵义', 'aaaa', '贵州省', 1, '主要革命圣地', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (11, '延安', 'aaaa', '陕西省', 1, '主要革命圣地', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (12, '西柏坡', 'aaaa', '河北省石家庄市平山县', 1, '主要革命圣地', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (15, '嘉兴', 'aaaa', '浙江省', 1, '主要革命圣地', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (16, '遵义', 'aaaa', '贵州', 1, '主要革命圣地', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (17, '南昌八一起义纪念馆', 'aaaa', '江西省南昌市友竹路7号', 2, '红色旧址', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (18, '泸定桥', 'aaaa', '四川省甘孜藏族自治州泸定县泸桥镇', 2, '红色旧址', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (19, '毛泽东同志故居', 'aaaa', '湖南省湘潭市韶山市韶山乡韶山村', 2, '红色旧址', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (20, '瑞金革命遗址', 'aaaa', '江西省东南部、武夷山西麓的瑞金市', 2, '红色旧址', 1, '2019-06-05 00:10:29', '2019-06-21 00:10:34', 1, 1);
INSERT INTO `t_scenic` VALUES (21, '中共三大会址', 'aaaa', '广州市恤孤院路3号', 3, '革命历史纪念场所', 1, '2019-07-01 09:40:59', '2019-07-01 09:40:59', 1, 1);
INSERT INTO `t_scenic` VALUES (22, '中共二大会址', 'aaaa', '上海市老成都北路7弄30号', 3, '革命历史纪念场所', 1, '2019-07-01 09:41:17', '2019-07-01 09:41:17', 1, 1);
INSERT INTO `t_scenic` VALUES (23, '中共一大会址2', 'aaaa', '浙江省嘉兴市南湖', 3, '革命历史纪念场所', 1, '2019-07-01 09:41:55', '2019-07-01 09:41:55', 1, 1);
INSERT INTO `t_scenic` VALUES (24, '中共一大会址1', 'aaaa', '上海市兴亚路76号', 3, '革命历史纪念场所', 1, '2019-07-01 09:43:08', '2019-07-01 09:43:08', 1, 1);

-- ----------------------------
-- Table structure for t_scenic_desc
-- ----------------------------
DROP TABLE IF EXISTS `t_scenic_desc`;
CREATE TABLE `t_scenic_desc`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `scenic_id` bigint(20) NOT NULL,
  `scenic_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'ÉÌÆ·ÃèÊö' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_scenic_desc
-- ----------------------------

-- ----------------------------
-- Table structure for t_scenic_type
-- ----------------------------
DROP TABLE IF EXISTS `t_scenic_type`;
CREATE TABLE `t_scenic_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sid` bigint(20) NOT NULL,
  `sname` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `create_user` bigint(20) NOT NULL,
  `update_user` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'ÉÌÆ·µÄÀà±ð' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_scenic_type
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
