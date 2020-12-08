/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100504
 Source Host           : localhost:3306
 Source Schema         : his

 Target Server Type    : MariaDB
 Target Server Version : 100504
 File Encoding         : 65001

 Date: 07/12/2020 16:35:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for s_company
-- ----------------------------
DROP TABLE IF EXISTS `s_company`;
CREATE TABLE `s_company`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公司名称',
  `abbreviation` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简称',
  `establishment_date` date NULL DEFAULT NULL COMMENT '成立日期',
  `province_id` bigint(20) NULL DEFAULT NULL COMMENT '省',
  `city_id` bigint(20) NULL DEFAULT NULL COMMENT '市',
  `district_id` bigint(20) NULL DEFAULT NULL COMMENT '县区',
  `province` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '市',
  `district` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '县区',
  `comp_addr` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公司地址',
  `registered_addr` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '注册地址',
  `registered_capital` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '注册资本',
  `unified_social_credit_code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `taxpayer_identification_no` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '纳税人识别号',
  `registered_no` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '工商注册号',
  `comp_type` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公司类型',
  `business_term_begin` date NULL DEFAULT NULL COMMENT '营业期限开始',
  `business_term_end` date NULL DEFAULT NULL COMMENT '营业期限结束',
  `legal_person` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '法人',
  `state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `tel` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `e_mail` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modified_at` datetime(0) NULL DEFAULT NULL,
  `modified_by` bigint(20) NULL DEFAULT NULL,
  `modified_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '物业公司表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_company
-- ----------------------------
INSERT INTO `s_company` VALUES (1, '山东高科技公司', '高科技', '1999-02-03', 1, 3, 890, '山东省', '泰安市', '宁阳县', '山东省泰安市宁阳县', '济南', '5000000', '01234567899999', '963258741', '1856346438', '高科技', '2020-08-05', '2020-08-12', '测试', '在用', '13100121211', '110@163.com', '备注', NULL, 9, 'admin', '2020-09-08 08:55:11', 9, 'admin', 0);
INSERT INTO `s_company` VALUES (2, 'lisi', '高科技12', '1999-02-03', 1, 1, 1, '山东省', '济南市', '历下区', '万达', '济南', '5000000', '01234567899999', '963258741', '1856346438', '高科技', '2020-08-05', '2020-08-29', '测试', '在用', '13333333333', '按时', '备注', NULL, 9, 'admin', '2020-09-08 08:55:00', 9, 'admin', 0);
INSERT INTO `s_company` VALUES (3, '山东高科技公司21dsff', '高科技123', '1999-02-03', 1, 1, 1, '山东省', '济南市', '历下区', '万达', '济南', '5000000', '01234567899999', '963258741', '1856346438', '高科技', '2020-08-05', NULL, NULL, '11111', '110', '110@163.com', '备注', NULL, 9, 'admin', '2020-08-04 14:51:49', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (8, '山东高科技公司12', '高科技1234', '1999-02-03', 1, 1, 1, '山东省', '济南市', '历下区', '万达', '济南', '5000000', '01234567899999', '963258741', '1856346438', '高科技', '2020-08-05', NULL, '测试', '在用', '13333333333', '110@163.com', '备注', '2020-08-04 15:39:25', 9, 'admin', '2020-09-08 08:54:47', 9, 'admin', 0);
INSERT INTO `s_company` VALUES (9, 'asd', 'sad', '2020-08-18', NULL, NULL, NULL, NULL, NULL, NULL, 'asd', 'asda', 'da', 'dasd', 'sad', 'asd', 'asd', '2020-08-11', '2020-08-04', NULL, 'asd', 'asd', 'asd', NULL, '2020-08-04 16:11:51', 9, 'admin', '2020-08-04 16:11:51', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (10, 'xx', 'xx', '2020-08-04', NULL, NULL, NULL, NULL, NULL, NULL, 'xx', 'xx', 'xx', 'xx', 'xx', 'xxx', 'xx', '2020-08-12', '2020-08-22', NULL, 'xx', 'xx', 'xx', NULL, '2020-08-04 19:20:21', 9, 'admin', '2020-08-04 19:20:21', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (11, '测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '测试', NULL, '2020-08-05 09:09:49', 9, 'admin', '2020-08-05 09:09:49', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (12, '测试', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '测试', NULL, '2020-08-05 09:10:53', 9, 'admin', '2020-08-05 09:10:53', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-05 10:11:27', 9, 'admin', '2020-08-05 10:11:27', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '按时', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-05 10:19:25', 9, 'admin', '2020-08-05 10:19:25', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-05 18:14:57', 9, 'admin', '2020-08-05 18:14:57', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (16, '测试', 'cs', '2020-08-11', NULL, NULL, NULL, '山东省', '济南市', '历下区', '山东省济南市历下区xxxx号', '山东省济南市历下区xxxx号', 'a嗷嗷', '23142', '12312432', NULL, '按时', NULL, NULL, NULL, '按时', '13555558752', '撒', NULL, '2020-08-10 17:11:15', 9, 'admin', '2020-08-10 17:11:15', NULL, '', 1);
INSERT INTO `s_company` VALUES (17, '测试2', '测试2', '2020-08-10', 2, 37, 877, '甘肃省', '酒泉市', '肃北蒙古族自治县', '甘肃省酒泉市肃北蒙古族自治县', '测试2', '测试2', '测试2', '测试2', '测试2', '测试2', NULL, NULL, NULL, '测试2', '13511111111', '测试2', NULL, '2020-08-10 17:31:10', 9, 'admin', '2020-08-11 18:25:36', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (18, '测试3', '测试3', '2020-08-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '测试3', '测试3', '测试3', NULL, NULL, '阿萨德', NULL, NULL, NULL, '阿萨德', '13581111111', '按时', NULL, '2020-08-12 15:53:10', 9, 'admin', '2020-08-12 15:53:10', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (19, '测试4', '测试4', NULL, 1, 3, 860, '山东省', '泰安市', '泰山区', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-12 16:00:31', 9, 'admin', '2020-08-12 16:02:26', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (20, '测试', '测试5', '2020-08-12', 1, 3, 860, '山东省', '泰安市', '泰山区', '山东省泰安市泰山区xxx号', '山东省泰安市泰山区xxx号', '1000', '111', '1111', '111', '111', NULL, NULL, NULL, '1111', '13333333333', '11', NULL, '2020-08-12 17:06:34', 9, 'admin', '2020-08-13 11:23:24', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (22, '测试', '测试', '2020-07-29', 1, 3, 890, '山东省', '泰安市', '宁阳县', '山东省泰安市宁阳县', '12', '21', '12', '12', '12', '12', NULL, NULL, NULL, '在用', '13222222222', '12', NULL, '2020-08-25 11:08:44', 9, 'admin', '2020-08-25 11:08:44', NULL, NULL, 1);
INSERT INTO `s_company` VALUES (23, '测试', '测试', '2020-08-23', 1, 3, 890, '山东省', '泰安市', '宁阳县', '山东省泰安市宁阳县', '测试', '12', '12', '12', '12', '居住物业', '2020-08-23', '2020-08-23', '测试', '在用', '13222222222', '12', '123', '2020-08-26 14:19:19', 9, 'admin', '2020-08-26 17:37:31', 9, 'admin', 0);
INSERT INTO `s_company` VALUES (24, '测试2', '测试', '2020-08-24', 1, 3, 860, '山东省', '泰安市', '泰山区', '山东省泰安市泰山区', '测试', '测试', '测试', '测试', '测试', '居住物业', '2020-08-24', '2020-08-24', '测试', '在用', '13222222222', '测试', '测试', '2020-08-26 14:32:35', 9, 'admin', '2020-08-26 14:43:08', 9, 'admin', 1);
INSERT INTO `s_company` VALUES (25, '测试2', NULL, '2020-08-27', 1, 49, 134, '山东省', '潍坊市', '奎文区', '山东省潍坊市奎文区', '测试2', '测试2', '测试2', '测试2', '测试2', '居住物业', '2020-08-27', '2020-08-19', '测试2', '在用', '13333333333', '测试2', '测试', '2020-08-26 17:40:41', 9, 'admin', '2020-08-26 17:40:41', 9, 'admin', 0);

-- ----------------------------
-- Table structure for s_menu
-- ----------------------------
DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE `s_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单id',
  `parent_id_list` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '父菜单id列表',
  `url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'url',
  `order_no` int(11) NULL DEFAULT NULL COMMENT '排序',
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modified_at` datetime(0) NULL DEFAULT NULL,
  `modified_by` bigint(20) NULL DEFAULT NULL,
  `modified_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_menu
-- ----------------------------
INSERT INTO `s_menu` VALUES (1, '资源管理', NULL, '0', NULL, 2, NULL, 'el-icon-lx-home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (2, '收费管理', NULL, '0', NULL, 1, NULL, 'el-icon-lx-cascades', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (3, '系统管理', NULL, '0', NULL, 3, NULL, 'el-icon-lx-copy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (4, '物业公司管理', 31, '0,31', '/company', 1, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (5, '组织机构管理', 3, '0,3', '/donate', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (6, '会计', 2, '0,2', '/sdzy/sMenu/billuser', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (7, '人员列表', 3, '0,3', '/user', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (8, '角色管理', 3, '0,3', '/role', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (9, '菜单管理', 31, '0,31', '/menuList', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-13 14:21:17', 40, 'mmq', 0);
INSERT INTO `s_menu` VALUES (10, '字典管理', 31, '0,31', '/dict', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (11, '字典项管理', 31, '0,31', '/dictItem', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (12, '单元型号', 1, '0,1', '/unitModel', 10, NULL, '', NULL, NULL, NULL, NULL, NULL, '2020-08-12 18:24:27', 40, 'mmq', 0);
INSERT INTO `s_menu` VALUES (30, '建筑管理', 1, '0,1', '/buildings', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (31, '后台维护', NULL, '0', '', 4, NULL, NULL, NULL, NULL, '2020-08-14 15:03:49', 40, 'mmq', '2020-08-14 15:03:49', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (32, '协议管理', 31, '0,31', '/agreement', 2, NULL, NULL, NULL, NULL, '2020-08-17 10:08:04', 9, 'admin', '2020-08-17 10:08:04', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (33, '房间管理', 1, '0,1', '/rooms', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (34, '停车位', 1, '0,1', '/park', 6, NULL, NULL, NULL, NULL, '2020-08-18 09:57:04', 40, 'mmq', '2020-08-18 09:57:04', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (35, '收费类型', 3, '0,3', '/costtype', 4, NULL, NULL, NULL, NULL, '2020-08-21 14:33:47', 40, 'mmq', '2020-08-21 14:33:47', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (36, '费用项目', 2, '0,2', '/costitem', 6, NULL, NULL, NULL, NULL, '2020-08-21 15:28:27', 40, 'mmq', '2020-08-21 15:28:27', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (37, '费用标准', 2, '0,2', '/costrole', 7, NULL, NULL, NULL, NULL, '2020-08-21 15:30:41', 9, 'admin', '2020-08-21 15:30:41', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (38, '仪表管理', 1, '0,1', '/meter', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (41, '单元管理', 1, '0,1', '/unit', 4, NULL, NULL, NULL, NULL, '2020-08-26 11:15:02', 9, 'admin', '2020-08-26 11:15:02', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (45, '仪表抄表管理', 2, '0,2', '/meterRecord', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (46, '社区管理', 1, '0,1', '/comm', 1, NULL, NULL, NULL, NULL, '2020-08-31 11:06:44', 9, 'admin', '2020-08-31 11:06:44', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (47, '分区管理', 1, '0,1', '/commArea', 2, NULL, NULL, NULL, NULL, '2020-08-31 11:07:12', 9, 'admin', '2020-08-31 11:07:12', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (48, '账单管理', 2, '0,2', '/billList', 2, NULL, NULL, NULL, NULL, '2020-09-02 16:47:31', 40, 'mmq', '2020-09-02 16:47:31', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (49, '审核人配置', 3, '0,3', '/auditerCnf', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (51, '业主管理', 1, '0,1', '/ownerList', 8, NULL, NULL, NULL, NULL, '2020-09-02 18:39:23', 9, 'admin', '2020-09-02 18:39:23', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (53, '物业关系管理', 1, '0,1', '/ownerPropertyList', 9, NULL, NULL, NULL, NULL, '2020-09-02 18:41:02', 9, 'admin', '2020-09-02 18:41:02', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (55, '费用调整管理', 2, '0,2', '/billAlter', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (56, '费用预存', 2, '0,2', '/account', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (57, '缴费', 2, '0,2', '/billsearch', 1, NULL, NULL, NULL, NULL, '2020-09-14 09:14:27', 9, 'admin', '2020-09-14 09:14:27', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (58, '统计报表', NULL, '0', '/report', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (59, '缴费月报表', 58, '0,58', '/financeReport', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (60, '催款单备注信息管理', 2, '0,2', '/notes', 8, NULL, NULL, NULL, NULL, '2020-09-23 14:28:50', 40, 'mmq', '2020-09-23 14:28:50', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (61, '账单统计月报表', 58, '0,58', '/billReport', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (62, '缴费年报表', 58, '0,58', '/financeReportYear', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (63, '账单统计年报表', 58, '0,58', '/billReportYear', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (64, '消息通知', 58, '0,58', '/message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (65, '合同条款', 2, '0,2', '/contractterms', NULL, NULL, NULL, NULL, NULL, '2020-10-29 13:59:43', 9, 'admin', '2020-11-05 18:29:47', 9, 'admin', 0);
INSERT INTO `s_menu` VALUES (66, '合同模板', NULL, '0', '/template', NULL, NULL, NULL, NULL, NULL, '2020-11-04 15:44:15', 9, 'admin', '2020-11-04 15:44:15', NULL, NULL, 1);
INSERT INTO `s_menu` VALUES (67, '合同模板', 2, '0,2', '/template', NULL, NULL, NULL, NULL, NULL, '2020-11-04 15:46:59', 9, 'admin', '2020-11-04 15:46:59', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (68, '合同列表', 2, '0,2', '/contract', NULL, NULL, NULL, NULL, NULL, '2020-11-05 18:09:37', 9, 'admin', '2020-11-05 18:09:37', NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (69, '维修管理', 75, '0,75', '/maintain', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (70, '分组管理', 75, '0,75', '/group', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (71, '分组成员管理', 75, '0,75', '/groupUser', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (72, '我的任务', 75, '0,75', '/myTask', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (73, '会签管理', 75, '0,75', '/sign', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `s_menu` VALUES (75, '维修申请', NULL, '0', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for s_org
-- ----------------------------
DROP TABLE IF EXISTS `s_org`;
CREATE TABLE `s_org`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `comp_id` bigint(20) NULL DEFAULT NULL COMMENT '公司id',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父机构id',
  `parent_id_list` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '父机构id列表',
  `state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modified_at` datetime(0) NULL DEFAULT NULL,
  `modified_by` bigint(20) NULL DEFAULT NULL,
  `modified_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '机构表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_org
-- ----------------------------
INSERT INTO `s_org` VALUES (1, '财务部12', 1, NULL, '0,1,1', NULL, '添加公司自动生成机构信息', '2020-08-04 19:20:21', NULL, 'mmq', '2020-08-12 09:33:11', 40, 'mmq', 1);
INSERT INTO `s_org` VALUES (2, '管理部', 1, NULL, '0', NULL, '添加公司自动生成机构信息', '2020-08-05 09:09:50', NULL, 'mmq', '2020-08-05 09:09:50', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (3, '业务部1', 1, NULL, '0,3', NULL, '添加公司自动生成机构信息', '2020-08-05 09:10:53', NULL, 'mmq', '2020-08-12 09:31:24', 40, 'mmq', 1);
INSERT INTO `s_org` VALUES (4, '会计', 1, 1, '0,1', NULL, '添加公司自动生成机构信息', '2020-08-05 10:11:27', NULL, 'mmq', '2020-08-05 10:11:27', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (5, '出纳123', 1, 1, '0,1', NULL, '添加公司自动生成机构信息', '2020-08-05 10:19:25', NULL, 'mmq', '2020-08-12 09:23:56', 40, 'mmq', 0);
INSERT INTO `s_org` VALUES (6, '记账456', 1, 1, '0,1', NULL, NULL, NULL, NULL, 'mmq', '2020-08-12 09:25:13', 40, 'mmq', 0);
INSERT INTO `s_org` VALUES (7, '销售经理', 1, 3, '0,3', NULL, NULL, NULL, NULL, 'mmq', NULL, NULL, NULL, 1);
INSERT INTO `s_org` VALUES (8, '销售专员', 1, 3, '0,3', NULL, NULL, NULL, NULL, 'mmq', NULL, NULL, NULL, 1);
INSERT INTO `s_org` VALUES (9, '司机', 1, 3, '0,3', NULL, NULL, NULL, NULL, 'mmq', NULL, NULL, NULL, 1);
INSERT INTO `s_org` VALUES (10, '总经理', 1, 2, '0,2', NULL, NULL, NULL, NULL, 'mmq', NULL, NULL, NULL, 1);
INSERT INTO `s_org` VALUES (11, '总监', 1, 2, '0,2', NULL, NULL, NULL, NULL, 'mmq', NULL, NULL, NULL, 1);
INSERT INTO `s_org` VALUES (12, '学徒会计', 1, 4, '0,1,4', NULL, NULL, NULL, NULL, 'mmq', NULL, NULL, NULL, 1);
INSERT INTO `s_org` VALUES (13, '实习生', 1, 8, '0,3,8', NULL, NULL, NULL, NULL, 'mmq', NULL, NULL, NULL, 1);
INSERT INTO `s_org` VALUES (14, '销售', 1, 8, '0,3,8', NULL, '添加公司自动生成机构信息', '2020-08-05 18:14:57', NULL, 'mmq', '2020-08-05 18:14:57', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (15, 'cs', 16, NULL, NULL, NULL, '添加公司自动生成机构信息', '2020-08-10 17:11:15', NULL, 'mmq', '2020-08-10 17:11:15', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (21, '实习司机', 1, 9, '0,3,9', NULL, NULL, '2020-08-10 17:25:48', 40, 'mmq', '2020-08-10 17:25:48', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (22, '测试2', 17, NULL, NULL, NULL, '添加公司自动生成机构信息', '2020-08-10 17:31:10', NULL, NULL, '2020-08-10 17:31:10', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (23, '事业部', 1, NULL, '0', NULL, NULL, '2020-08-10 17:32:44', 40, 'mmq', '2020-08-10 17:32:44', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (24, '人事部', 1, 23, '0,23', NULL, NULL, '2020-08-10 17:32:56', 40, 'mmq', '2020-08-10 17:32:56', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (25, '人事总监', 1, 24, '0,23,24', NULL, NULL, '2020-08-10 17:33:08', 40, 'mmq', '2020-08-10 17:33:08', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (26, '人事专员', 1, 24, '0,23,24', NULL, NULL, '2020-08-10 17:33:20', 40, 'mmq', '2020-08-10 17:33:20', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (27, '商务部', 1, 23, '0,23', NULL, NULL, '2020-08-10 17:34:55', 40, 'mmq', '2020-08-10 17:34:55', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (28, '商务总监', 1, 27, '0,23,27', NULL, NULL, '2020-08-10 17:35:54', 40, 'mmq', '2020-08-10 17:35:54', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (29, '商务跑腿', 1, 27, '0,23,27', NULL, NULL, '2020-08-10 17:36:04', 40, 'mmq', '2020-08-10 17:36:04', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (30, '董事部', 1, NULL, '0', NULL, NULL, '2020-08-10 17:38:14', 40, 'mmq', '2020-08-10 17:38:14', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (31, '董事长', 1, 30, '0,30', NULL, NULL, '2020-08-10 17:38:22', 40, 'mmq', '2020-08-10 17:38:22', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (32, 'cs', 1, 1, '0,1', NULL, NULL, '2020-08-10 19:21:55', 40, 'mmq', '2020-08-10 19:21:55', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (33, 'SaaS', 1, 32, '0,1,32', NULL, NULL, '2020-08-10 19:22:01', 40, 'mmq', '2020-08-10 19:22:01', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (34, '范德萨', 1, NULL, '0', NULL, NULL, '2020-08-10 19:22:11', 40, 'mmq', '2020-08-10 19:22:11', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (35, '的手动蝶阀', 1, 34, '0,34', NULL, NULL, '2020-08-10 19:22:19', 40, 'mmq', '2020-08-10 19:22:19', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (36, '管理人员', 1, 2, '0,2', NULL, NULL, '2020-08-12 09:02:01', 40, 'mmq', '2020-08-12 09:02:01', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (37, '张三', 1, 36, '0,2,36', NULL, NULL, '2020-08-12 09:02:11', 40, 'mmq', '2020-08-12 09:02:11', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (38, '管理人员', 1, 2, '0,2', NULL, NULL, '2020-08-12 09:04:27', 40, 'mmq', '2020-08-12 09:04:27', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (39, '李四', 1, 38, '0,2,38', NULL, NULL, '2020-08-12 09:04:38', 40, 'mmq', '2020-08-12 09:04:38', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (40, '出纳1', 1, 1, '0,1', NULL, NULL, '2020-08-12 09:15:50', 40, 'mmq', '2020-08-12 09:15:50', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (41, '出纳12', 1, 1, '0,1', NULL, NULL, '2020-08-12 09:16:47', 40, 'mmq', '2020-08-12 09:16:47', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (42, '出纳123', 1, 1, '0,1', NULL, NULL, '2020-08-12 09:18:11', 40, 'mmq', '2020-08-12 09:18:11', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (43, '出纳1234', 1, 1, '0,1', NULL, NULL, '2020-08-12 09:18:16', 40, 'mmq', '2020-08-12 09:18:16', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (44, '123', 1, NULL, '0', NULL, NULL, '2020-08-12 09:24:34', 40, 'mmq', '2020-08-12 09:24:34', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (45, '456', 1, 44, '0,44', NULL, NULL, '2020-08-12 09:24:40', 40, 'mmq', '2020-08-12 09:24:40', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (46, '组织部', 1, NULL, '0', NULL, NULL, '2020-08-12 11:36:57', 40, 'mmq', '2020-08-12 11:36:57', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (47, '事业部', 1, NULL, '0', NULL, NULL, '2020-08-12 11:37:05', 40, 'mmq', '2020-08-12 11:37:05', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (48, '软件部', 1, NULL, '0', NULL, NULL, '2020-08-12 11:37:11', 40, 'mmq', '2020-08-12 11:37:11', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (49, '123', 1, 48, '0,48', NULL, NULL, '2020-08-12 11:37:22', 40, 'mmq', '2020-08-12 18:39:52', 40, 'mmq', 1);
INSERT INTO `s_org` VALUES (50, '开发1', 1, 48, '0,48', NULL, NULL, '2020-08-12 11:37:29', 40, 'mmq', '2020-08-13 08:50:23', 9, 'admin', 1);
INSERT INTO `s_org` VALUES (51, '测试', 1, 48, '0,48', NULL, NULL, '2020-08-12 11:37:34', 40, 'mmq', '2020-08-12 11:37:34', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (52, '测试3', 18, NULL, NULL, NULL, '添加公司自动生成机构信息', '2020-08-12 15:53:10', NULL, NULL, '2020-08-12 15:53:10', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (57, '人事部', 1, NULL, '0', NULL, NULL, '2020-08-13 08:46:51', 9, 'admin', '2020-08-13 08:46:51', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (58, 'ui', 1, 48, '0,48', NULL, NULL, '2020-08-13 08:48:53', 9, 'admin', '2020-08-13 08:48:53', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (59, '管理一', 1, 2, '0,2', NULL, NULL, '2020-08-13 08:55:16', 9, 'admin', '2020-08-13 08:55:16', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (60, '管理一1', 1, 59, '0,2,59', NULL, NULL, '2020-08-13 08:55:27', 9, 'admin', '2020-08-13 08:55:27', NULL, NULL, 1);
INSERT INTO `s_org` VALUES (70, '软件部', 1, NULL, '0', '正常', '软件部门', '2020-08-13 10:41:05', 40, 'mmq', '2020-08-13 10:41:05', 40, 'mmq', 0);
INSERT INTO `s_org` VALUES (72, 'java', 1, 70, '0,70', '正常啊', 'javac', '2020-08-13 10:43:06', 40, 'mmq', '2020-08-13 10:57:52', 40, 'mmq', 0);
INSERT INTO `s_org` VALUES (73, 'c++', 1, 70, '0,70', '正常', 'c', '2020-08-13 10:43:37', 40, 'mmq', '2020-08-13 10:43:37', 40, 'mmq', 1);
INSERT INTO `s_org` VALUES (74, '软件开发1', 1, 72, '0,70,72', '正常', '测试', '2020-08-13 10:43:52', 40, 'mmq', '2020-08-13 10:44:17', 40, 'mmq', 0);
INSERT INTO `s_org` VALUES (75, '测试', 1, 72, '0,70,72', '正常', '测试', '2020-08-13 10:44:02', 40, 'mmq', '2020-08-13 10:44:02', 40, 'mmq', 0);
INSERT INTO `s_org` VALUES (76, '测试', 22, NULL, NULL, NULL, '添加公司自动生成机构信息', '2020-08-25 11:08:44', NULL, NULL, '2020-08-25 11:08:44', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (77, '测试', 23, NULL, NULL, NULL, '添加公司自动生成机构信息', '2020-08-26 14:19:19', NULL, NULL, '2020-08-26 14:19:19', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (78, '测试', 24, NULL, NULL, NULL, '添加公司自动生成机构信息', '2020-08-26 14:32:35', NULL, NULL, '2020-08-26 14:32:35', NULL, NULL, 0);
INSERT INTO `s_org` VALUES (79, NULL, 25, NULL, NULL, NULL, '添加公司自动生成机构信息', '2020-08-26 17:40:41', NULL, NULL, '2020-08-26 17:40:41', NULL, NULL, 0);

-- ----------------------------
-- Table structure for s_role
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型（全局角色，物业公司角色）',
  `comp_id` bigint(20) NULL DEFAULT NULL COMMENT '公司id',
  `state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modified_at` datetime(0) NULL DEFAULT NULL,
  `modified_by` bigint(20) NULL DEFAULT NULL,
  `modified_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_role
-- ----------------------------
INSERT INTO `s_role` VALUES (1, '管理员', '子云物业管理员', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_role` VALUES (2, '测试', '测试', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_role` VALUES (3, '查询', '哈讯', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_role` VALUES (4, '录入', '录入', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_role` VALUES (6, '管理员', '全局角色', 0, '在用', NULL, '2020-08-12 11:02:57', 9, 'admin', '2020-08-12 11:02:57', 9, 'admin');
INSERT INTO `s_role` VALUES (7, '出纳', '物业公司角色', 1, '在用', NULL, '2020-08-13 09:30:26', 9, 'admin', '2020-08-13 09:30:26', 9, 'admin');
INSERT INTO `s_role` VALUES (8, '缴费', '物业公司角色', 1, '在用', NULL, '2020-08-13 09:31:24', 9, 'admin', '2020-08-13 09:31:24', 9, 'admin');
INSERT INTO `s_role` VALUES (9, '测试', '物业公司角色', 1, '在用', NULL, '2020-08-13 09:33:18', 9, 'admin', '2020-08-13 09:33:18', 9, 'admin');
INSERT INTO `s_role` VALUES (10, '测试', '物业公司角色', 1, '在用', NULL, '2020-08-13 09:34:14', 9, 'admin', '2020-08-13 09:34:14', 9, 'admin');
INSERT INTO `s_role` VALUES (11, '测试', '全局角色', 0, '在用', NULL, '2020-08-13 09:40:32', 9, 'admin', '2020-08-13 09:40:32', 9, 'admin');
INSERT INTO `s_role` VALUES (16, '马茂庆', '物业公司角色', 1, '在用', '马茂庆自己使用的', '2020-08-14 15:04:06', 40, 'mmq', '2020-08-14 15:04:06', 40, 'mmq');
INSERT INTO `s_role` VALUES (17, '测试2', '全局角色', 0, '在用', NULL, '2020-09-03 10:18:35', 9, 'admin', '2020-09-03 10:18:35', 9, 'admin');
INSERT INTO `s_role` VALUES (19, '12管理员', '物业公司角色', 8, '在用', NULL, '2020-09-03 14:55:09', 133, 'xiaoming', '2020-09-03 14:55:09', 133, 'xiaoming');

-- ----------------------------
-- Table structure for s_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `s_role_menu`;
CREATE TABLE `s_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `comp_id` bigint(20) NULL DEFAULT NULL COMMENT '公司id',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单id',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 924 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_role_menu
-- ----------------------------
INSERT INTO `s_role_menu` VALUES (121, 1, 2, 1, '2020-08-17 14:04:04', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (122, 1, 2, 8, '2020-08-17 14:04:04', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (123, 1, 2, 9, '2020-08-17 14:04:04', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (124, 1, 2, 10, '2020-08-17 14:04:04', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (125, 1, 2, 2, '2020-08-17 14:04:04', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (126, 1, 2, 5, '2020-08-17 14:04:04', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (460, 0, 17, 50, '2020-09-03 10:19:26', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (461, 0, 17, 51, '2020-09-03 10:19:26', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (462, 0, 17, 53, '2020-09-03 10:19:26', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (492, 0, 19, 1, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (493, 0, 19, 4, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (494, 0, 19, 8, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (495, 0, 19, 9, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (496, 0, 19, 10, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (497, 0, 19, 11, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (498, 0, 19, 12, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (499, 0, 19, 30, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (500, 0, 19, 33, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (501, 0, 19, 38, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (502, 0, 19, 41, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (503, 0, 19, 45, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (504, 0, 19, 2, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (505, 0, 19, 5, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (506, 0, 19, 6, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (507, 0, 19, 34, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (508, 0, 19, 35, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (509, 0, 19, 36, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (510, 0, 19, 37, '2020-09-03 14:56:55', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (511, 0, 19, 48, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (512, 0, 19, 3, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (513, 0, 19, 7, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (514, 0, 19, 49, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (515, 0, 19, 44, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (516, 0, 19, 46, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (517, 0, 19, 47, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (518, 0, 19, 50, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (519, 0, 19, 51, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (520, 0, 19, 53, '2020-09-03 14:56:56', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (570, 0, 9, 54, '2020-09-14 18:19:41', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (571, 0, 9, 55, '2020-09-14 18:19:41', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (572, 0, 9, 56, '2020-09-14 18:19:41', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (707, 1, 4, 58, '2020-09-27 11:02:20', 132, 'mzc');
INSERT INTO `s_role_menu` VALUES (708, 1, 4, 59, '2020-09-27 11:02:20', 132, 'mzc');
INSERT INTO `s_role_menu` VALUES (709, 1, 4, 61, '2020-09-27 11:02:20', 132, 'mzc');
INSERT INTO `s_role_menu` VALUES (710, 1, 4, 62, '2020-09-27 11:02:20', 132, 'mzc');
INSERT INTO `s_role_menu` VALUES (711, 1, 4, 63, '2020-09-27 11:02:20', 132, 'mzc');
INSERT INTO `s_role_menu` VALUES (807, 0, 16, 34, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (808, 0, 16, 41, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (809, 0, 16, 51, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (810, 0, 16, 53, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (811, 0, 16, 36, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (812, 0, 16, 37, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (813, 0, 16, 48, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (814, 0, 16, 57, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (815, 0, 16, 60, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (816, 0, 16, 65, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (817, 0, 16, 67, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (818, 0, 16, 68, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (819, 0, 16, 35, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (820, 0, 16, 32, '2020-11-09 13:35:47', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (821, 0, 8, 69, '2020-11-13 16:29:45', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (822, 0, 8, 70, '2020-11-13 16:29:45', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (823, 0, 8, 71, '2020-11-13 16:29:45', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (824, 0, 8, 72, '2020-11-13 16:29:45', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (825, 0, 8, 73, '2020-11-13 16:29:45', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (851, 0, 6, 34, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (852, 0, 6, 41, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (853, 0, 6, 46, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (854, 0, 6, 47, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (855, 0, 6, 51, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (856, 0, 6, 53, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (857, 0, 6, 2, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (858, 0, 6, 6, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (859, 0, 6, 55, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (860, 0, 6, 56, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (861, 0, 6, 3, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (862, 0, 6, 5, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (863, 0, 6, 7, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (864, 0, 6, 32, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (865, 0, 6, 58, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (866, 0, 6, 59, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (867, 0, 6, 61, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (868, 0, 6, 62, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (869, 0, 6, 63, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (870, 0, 6, 64, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (871, 0, 6, 75, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (872, 0, 6, 69, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (873, 0, 6, 70, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (874, 0, 6, 71, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (875, 0, 6, 72, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (876, 0, 6, 73, '2020-11-16 09:10:52', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (877, 0, 7, 64, '2020-11-16 09:11:01', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (878, 0, 7, 75, '2020-11-16 09:11:01', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (879, 0, 7, 69, '2020-11-16 09:11:01', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (880, 0, 7, 70, '2020-11-16 09:11:01', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (881, 0, 7, 71, '2020-11-16 09:11:01', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (882, 0, 7, 72, '2020-11-16 09:11:01', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (883, 0, 7, 73, '2020-11-16 09:11:01', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (884, 0, 1, 1, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (885, 0, 1, 12, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (886, 0, 1, 30, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (887, 0, 1, 33, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (888, 0, 1, 34, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (889, 0, 1, 38, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (890, 0, 1, 41, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (891, 0, 1, 46, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (892, 0, 1, 51, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (893, 0, 1, 53, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (894, 0, 1, 2, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (895, 0, 1, 6, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (896, 0, 1, 36, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (897, 0, 1, 37, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (898, 0, 1, 45, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (899, 0, 1, 48, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (900, 0, 1, 55, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (901, 0, 1, 3, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (902, 0, 1, 5, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (903, 0, 1, 7, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (904, 0, 1, 8, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (905, 0, 1, 35, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (906, 0, 1, 49, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (907, 0, 1, 4, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (908, 0, 1, 9, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (909, 0, 1, 10, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (910, 0, 1, 11, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (911, 0, 1, 32, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (912, 0, 1, 75, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (913, 0, 1, 69, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (914, 0, 1, 70, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (915, 0, 1, 71, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (916, 0, 1, 72, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (917, 0, 1, 73, '2020-11-16 09:11:15', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (918, 0, 3, 75, '2020-11-16 09:11:23', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (919, 0, 3, 69, '2020-11-16 09:11:23', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (920, 0, 3, 70, '2020-11-16 09:11:23', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (921, 0, 3, 71, '2020-11-16 09:11:23', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (922, 0, 3, 72, '2020-11-16 09:11:23', 9, 'admin');
INSERT INTO `s_role_menu` VALUES (923, 0, 3, 73, '2020-11-16 09:11:23', 9, 'admin');

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `comp_id` bigint(20) NULL DEFAULT NULL COMMENT '公司id',
  `org_id` bigint(20) NULL DEFAULT NULL COMMENT '机构id',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登陆用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '登陆密码',
  `tel` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modified_at` datetime(0) NULL DEFAULT NULL,
  `modified_by` bigint(20) NULL DEFAULT NULL,
  `modified_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES (2, '定时任务', NULL, NULL, 'cron', NULL, NULL, NULL, NULL, '定时任务', '2020-09-07 17:37:23', NULL, NULL, '2020-09-07 17:37:30', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (9, 'admin', 0, NULL, 'admin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NTg0MzA1NDc1Mw==', '18866881121', '超级管理员', '正常', NULL, '2020-07-27 17:44:14', NULL, NULL, '2020-08-07 16:24:05', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (10, '李四2', 2, NULL, 'hhwyadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NTkwNzYzODg4OA==', '13666666666', '管理员', '正常', '创建公司系统自动生成管理员账号', '2020-07-28 11:40:38', NULL, NULL, '2020-08-13 10:47:06', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (13, '数据管理员', NULL, NULL, 'dataadmin', 'MjU0NDYyNjcwYjZlZjU4Yzk4ODhmNTdhYTI4MmNjZjFfMTU5NjUxNTA1NTQ1MQ==', NULL, NULL, NULL, NULL, '2020-08-04 11:32:27', NULL, NULL, '2020-08-04 12:24:15', NULL, NULL, 1);
INSERT INTO `s_user` VALUES (14, NULL, 8, NULL, 'gkjadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NjUyNjc2NTY1Mw==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-04 15:39:25', NULL, NULL, '2020-08-04 15:39:25', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (15, NULL, 9, NULL, 'sadadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NjUyODcxMjA1NQ==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-04 16:11:52', NULL, NULL, '2020-08-04 16:11:52', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (16, '张涛', 1, 59, 'xxadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NjU0MDAyMTUxOQ==', '123', '管理员', '正常', '创建公司系统自动生成管理员账号', '2020-08-04 19:20:21', NULL, NULL, '2020-08-21 17:52:58', 40, 'mmq', 0);
INSERT INTO `s_user` VALUES (17, '刘凤', 1, NULL, 'nulladmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NjU4OTc5MDA1Mg==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-05 09:09:50', NULL, NULL, '2020-08-05 09:09:50', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (18, '李丽', 1, 0, 'nulladmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NjU4OTg1Mzc3MQ==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-05 09:10:53', NULL, NULL, '2020-08-05 09:10:53', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (19, '王芳', 1, NULL, 'nulladmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NjU5MzQ4NzQ0MQ==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-05 10:11:27', NULL, NULL, '2020-08-05 10:11:27', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (20, '张伟', 1, 0, 'nulladmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NjU5Mzk2NTMwMw==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-05 10:19:25', NULL, NULL, '2020-08-05 10:19:25', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (21, '李明', 1, 14, 'nulladmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NjYyMjQ5NzE3Mg==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-05 18:14:57', NULL, NULL, '2020-08-05 18:14:57', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (40, '马茂庆111', 1, 9, 'mmq', 'ZjIwMmIzNzc1ODU0YzA2NThmYjFhMGJhOTIzNjI1Y2JfMTU5NzI4NDA0Mjc0NQ==', '188668811211', '管理员', '正常', NULL, '2020-08-07 18:01:44', NULL, NULL, '2020-09-14 15:09:46', 40, 'mmq', 0);
INSERT INTO `s_user` VALUES (41, 'cfy', 3, 9, 'cfy', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5Njc5NDcwMTEyMA==', NULL, '管理员', NULL, NULL, '2020-08-07 18:05:01', NULL, NULL, '2020-08-07 18:05:01', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (46, '张三', 1, 9, 'zhangsan', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzA0NjgyODU4OA==', NULL, NULL, NULL, NULL, '2020-08-10 16:07:08', NULL, NULL, '2020-08-10 16:07:08', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (49, NULL, 16, NULL, 'csadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzA1MDY3NTQzOQ==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-10 17:11:15', NULL, NULL, '2020-08-10 17:11:15', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (50, NULL, 17, NULL, 'cs2admin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzA1MTg3MDQ0Mw==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-10 17:31:10', NULL, NULL, '2020-08-10 17:31:10', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (55, '张三', 1, 5, 'zhangsan', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzE5NzExNjg0OA==', '110', '普通用户', '正常', NULL, '2020-08-12 09:51:56', NULL, NULL, '2020-08-12 09:51:56', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (56, NULL, 18, NULL, 'cs3admin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzIxODc5MDczMg==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-12 15:53:10', NULL, NULL, '2020-08-12 15:53:10', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (57, NULL, 19, NULL, 'csadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzIxOTIzMTM1OA==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-12 16:00:31', NULL, NULL, '2020-08-12 16:00:31', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (58, NULL, 20, NULL, 'csadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzIyMzE5NDc4MQ==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-12 17:06:34', NULL, NULL, '2020-08-12 17:06:34', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (59, '你猜', 1, NULL, 'nicai', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzMwNDgyMzA0Mg==', '13000000000', '1', '1', NULL, '2020-08-13 15:47:03', NULL, NULL, '2020-08-13 15:47:03', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (83, '张三', 1, 74, 'zhangsan1', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5NzkyMTc1Nzc0NA==', '18866881121', '管理员', '正常', NULL, '2020-08-20 19:09:17', NULL, NULL, '2020-08-20 19:09:17', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (84, NULL, 22, NULL, 'csadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5ODMyNDkyNDcyOQ==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-25 11:08:44', NULL, NULL, '2020-08-25 11:08:44', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (85, NULL, 23, NULL, 'csadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5ODQyMjc1OTgxNQ==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-26 14:19:19', NULL, NULL, '2020-08-26 14:19:19', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (86, NULL, 24, NULL, 'csadmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5ODQyMzU1NTg4OA==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-26 14:32:35', NULL, NULL, '2020-08-26 14:32:35', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (87, NULL, 25, NULL, 'nulladmin', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5ODQzNDg0MTE4Ng==', NULL, '管理员', '', '创建公司系统自动生成管理员账号', '2020-08-26 17:40:41', NULL, NULL, '2020-08-26 17:40:41', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (132, '小马', 1, 59, 'mzc', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5OTAzNDIzNTY3OA==', '1', '1', '1', NULL, '2020-09-02 16:10:35', 83, 'zhangsan1', '2020-09-02 16:10:35', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (133, 'xiaoming', 8, NULL, 'xiaoming', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTU5OTExMjY1MDM4OQ==', '1', '1', '1', NULL, '2020-09-03 13:57:30', 9, 'admin', '2020-09-03 13:57:30', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (134, '测试', 1, 74, 'admin11', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTYwMjY2NzMzNjg0OA==', '11231232', '管理员', '正常', NULL, '2020-10-14 17:22:16', 40, 'mmq', '2020-10-14 17:22:16', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (135, 'guanli ', 1, 59, 'admin123', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTYwMjczMDE5MjAyNA==', '123', '管理员', '正常', NULL, '2020-10-15 10:49:52', 134, 'admin11', '2020-10-15 10:49:52', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (136, '超级管理员', 1, 2, 'administrator', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTYwNDI4MDk2NjE4MQ==', '18888888888', '超级管理员', '正常', NULL, '2020-11-02 09:36:06', 40, 'mmq', '2020-11-02 09:36:06', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (137, 'grq', 1, 2, 'grq', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTYwNDI4Mzc0NDc2NQ==', '123444', '超级管理员', '正常', NULL, '2020-11-02 10:22:24', 136, 'administrator', '2020-11-02 10:22:24', NULL, NULL, 0);
INSERT INTO `s_user` VALUES (138, NULL, NULL, NULL, 'mmq', 'NDFkMzU0M2U0YmQ3MmU0YTZkZDkzMGI3OTY5Y2U2NzNfMTYwNzMyNzk0ODc0Ng==', NULL, NULL, NULL, NULL, NULL, 40, 'mmq', NULL, NULL, NULL, 0);
INSERT INTO `s_user` VALUES (139, NULL, NULL, NULL, '周杰伦', 'N2RlZTNjZGU5YzNmZTJjMjEzNTc3MWRiM2Y5OGFmYjFfMTYwNzMyODkxNDA1NQ==', NULL, NULL, NULL, NULL, NULL, 40, 'mmq', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for s_user_role
-- ----------------------------
DROP TABLE IF EXISTS `s_user_role`;
CREATE TABLE `s_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `comp_id` bigint(20) NULL DEFAULT NULL COMMENT '公司id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `user_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modified_at` datetime(0) NULL DEFAULT NULL,
  `modified_by` bigint(20) NULL DEFAULT NULL,
  `modified_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 268 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s_user_role
-- ----------------------------
INSERT INTO `s_user_role` VALUES (192, 1, 22, NULL, 1, NULL, '2020-08-07 17:36:34', 9, 'admin', '2020-08-07 17:36:34', NULL, NULL);
INSERT INTO `s_user_role` VALUES (193, 1, 22, NULL, 2, NULL, '2020-08-07 17:36:34', 9, 'admin', '2020-08-07 17:36:34', NULL, NULL);
INSERT INTO `s_user_role` VALUES (194, 1, 22, NULL, 3, NULL, '2020-08-07 17:36:34', 9, 'admin', '2020-08-07 17:36:34', NULL, NULL);
INSERT INTO `s_user_role` VALUES (195, 1, 22, NULL, 4, NULL, '2020-08-07 17:36:34', 9, 'admin', '2020-08-07 17:36:34', NULL, NULL);
INSERT INTO `s_user_role` VALUES (197, 1, 9, NULL, 1, NULL, '2020-08-13 08:32:54', 9, 'admin', '2020-08-13 08:32:54', NULL, NULL);
INSERT INTO `s_user_role` VALUES (198, 1, 9, NULL, 2, NULL, '2020-08-13 08:32:54', 9, 'admin', '2020-08-13 08:32:54', NULL, NULL);
INSERT INTO `s_user_role` VALUES (199, 1, 9, NULL, 3, NULL, '2020-08-13 08:32:54', 9, 'admin', '2020-08-13 08:32:54', NULL, NULL);
INSERT INTO `s_user_role` VALUES (200, 1, 9, NULL, 4, NULL, '2020-08-13 08:32:54', 9, 'admin', '2020-08-13 08:32:54', NULL, NULL);
INSERT INTO `s_user_role` VALUES (213, 1, 9, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `s_user_role` VALUES (214, 1, 40, NULL, 1, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (215, 1, 40, NULL, 2, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (216, 1, 40, NULL, 3, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (217, 1, 40, NULL, 4, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (218, 1, 40, NULL, 7, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (219, 1, 40, NULL, 8, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (220, 1, 40, NULL, 9, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (221, 1, 40, NULL, 10, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (222, 1, 40, NULL, 16, NULL, '2020-08-14 15:05:07', 9, 'admin', '2020-08-14 15:05:07', NULL, NULL);
INSERT INTO `s_user_role` VALUES (223, 1, 132, NULL, 1, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (224, 1, 132, NULL, 9, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (225, 1, 132, NULL, 10, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (226, 1, 132, NULL, 2, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (227, 1, 132, NULL, 16, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (228, 1, 132, NULL, 3, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (229, 1, 132, NULL, 4, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (230, 1, 132, NULL, 7, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (231, 1, 132, NULL, 8, NULL, '2020-09-02 16:11:08', 9, 'admin', '2020-09-02 16:11:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (233, 8, 133, NULL, 19, NULL, '2020-09-03 14:58:25', 9, 'admin', '2020-09-03 14:58:25', NULL, NULL);
INSERT INTO `s_user_role` VALUES (234, 1, 20, NULL, 16, NULL, '2020-10-14 17:28:16', 9, 'admin', '2020-10-14 17:28:16', NULL, NULL);
INSERT INTO `s_user_role` VALUES (239, 1, 134, NULL, 1, NULL, '2020-10-14 17:31:08', 9, 'admin', '2020-10-14 17:31:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (240, 1, 134, NULL, 16, NULL, '2020-10-14 17:31:08', 9, 'admin', '2020-10-14 17:31:08', NULL, NULL);
INSERT INTO `s_user_role` VALUES (241, 1, 59, NULL, 2, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (242, 1, 59, NULL, 1, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (243, 1, 59, NULL, 3, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (244, 1, 59, NULL, 4, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (245, 1, 59, NULL, 7, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (246, 1, 59, NULL, 8, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (247, 1, 59, NULL, 16, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (248, 1, 59, NULL, 10, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (249, 1, 59, NULL, 9, NULL, '2020-11-02 09:36:39', 40, 'mmq', '2020-11-02 09:36:39', NULL, NULL);
INSERT INTO `s_user_role` VALUES (250, 1, 136, NULL, 9, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (251, 1, 136, NULL, 1, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (252, 1, 136, NULL, 2, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (253, 1, 136, NULL, 10, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (254, 1, 136, NULL, 16, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (255, 1, 136, NULL, 3, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (256, 1, 136, NULL, 4, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (257, 1, 136, NULL, 7, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (258, 1, 136, NULL, 8, NULL, '2020-11-02 09:36:59', 40, 'mmq', '2020-11-02 09:36:59', NULL, NULL);
INSERT INTO `s_user_role` VALUES (259, 1, 137, NULL, 1, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);
INSERT INTO `s_user_role` VALUES (260, 1, 137, NULL, 2, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);
INSERT INTO `s_user_role` VALUES (261, 1, 137, NULL, 3, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);
INSERT INTO `s_user_role` VALUES (262, 1, 137, NULL, 4, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);
INSERT INTO `s_user_role` VALUES (263, 1, 137, NULL, 7, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);
INSERT INTO `s_user_role` VALUES (264, 1, 137, NULL, 8, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);
INSERT INTO `s_user_role` VALUES (265, 1, 137, NULL, 16, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);
INSERT INTO `s_user_role` VALUES (266, 1, 137, NULL, 10, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);
INSERT INTO `s_user_role` VALUES (267, 1, 137, NULL, 9, NULL, '2020-11-02 10:22:37', 136, 'administrator', '2020-11-02 10:22:37', NULL, NULL);

-- ----------------------------
-- View structure for v_s_user_role
-- ----------------------------
DROP VIEW IF EXISTS `v_s_user_role`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_s_user_role` AS (select `aa`.`id` AS `id`,`aa`.`name` AS `name`,`aa`.`user_name` AS `user_name`,`aa`.`type` AS `type`,`aa`.`created_at` AS `created_at`,`aa`.`created_name` AS `created_name`,`aa`.`modified_at` AS `modified_at`,`aa`.`modified_name` AS `modified_name`,`bb`.`name` AS `compName`,`cc`.`name` AS `orgName`,`aa`.`comp_id` AS `comp_id`,`aa`.`org_id` AS `org_id`,concat(`cc`.`parent_id_list`,',',`cc`.`id`) AS `parent_id_list`,`aa`.`is_delete` AS `is_delete`,`aa`.`tel` AS `tel`,`aa`.`state` AS `state` from ((`s_user` `aa` left join `s_company` `bb` on(`aa`.`comp_id` = `bb`.`id`)) left join `s_org` `cc` on(`aa`.`org_id` = `cc`.`id`))) ;

SET FOREIGN_KEY_CHECKS = 1;
