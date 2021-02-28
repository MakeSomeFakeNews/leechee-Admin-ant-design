/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : leechee

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-02-28 23:56:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('3', '男', '1', '1', '男人啊，男人真难啊', '2021-02-27 23:03:19', null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(32) NOT NULL,
  `dict_code` varchar(32) NOT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('4', '性别', 'sex', '性别啊', '0', null, '2021-02-27 23:22:04', null);
INSERT INTO `sys_dict_type` VALUES ('2', '状态', 'status', '通用状态', '0', null, '2021-02-27 19:34:21', null);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `operation` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `exec_time` int(11) NOT NULL,
  `params` text NOT NULL,
  `ip` varchar(16) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('195', 'admin', '查看系统操作日志', 'http://localhost:8080/system/sys-log/list', '23', '  params: {current=1, pageSize=10}  sysLog: SysLog(id=null, username=null, operation=null, link=null, execTime=null, params=null, ip=null, createTime=null)', '127.0.0.1', '2021-02-28 23:53:20');
INSERT INTO `sys_log` VALUES ('196', 'admin', '获取字典类型列表', 'http://localhost:8080/system/sys-dict-type/list', '7', '  params: {current=1, pageSize=20}  dictType: SysDictType(id=null, dictName=null, dictCode=null, descript=null, status=null, createBy=null, createTime=null, updateTime=null)', '127.0.0.1', '2021-02-28 23:53:26');
INSERT INTO `sys_log` VALUES ('197', 'admin', '添加字典类型', 'http://localhost:8080/system/sys-dict-type/add', '2', '  dictType: SysDictType(id=5, dictName=发货状态, dictCode=send, descript=null, status=null, createBy=null, createTime=2021-02-28T23:53:46.361, updateTime=null)', '127.0.0.1', '2021-02-28 23:53:46');
INSERT INTO `sys_log` VALUES ('198', 'admin', '获取字典类型列表', 'http://localhost:8080/system/sys-dict-type/list', '2', '  params: {current=1, pageSize=20}  dictType: SysDictType(id=null, dictName=null, dictCode=null, descript=null, status=null, createBy=null, createTime=null, updateTime=null)', '127.0.0.1', '2021-02-28 23:53:46');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) NOT NULL COMMENT '菜单名',
  `component` varchar(255) DEFAULT NULL,
  `component_name` varchar(32) DEFAULT NULL,
  `redirect` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `link` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT '0' COMMENT '父级ID',
  `icon` varchar(255) DEFAULT NULL,
  `permission` varchar(32) DEFAULT NULL COMMENT '权限',
  `permission_type` tinyint(4) NOT NULL COMMENT '菜单类型:1,菜单,2,按钮',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `descript` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` int(11) DEFAULT '0',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '系统管理', 'RouteView', 'system', null, null, null, '0', 'setting', null, '1', '0', null, '100', 'system', null, '2021-02-24 02:22:40', null, '0');
INSERT INTO `sys_permission` VALUES ('2', '用户管理', 'modules/system/user/user', 'user', null, null, null, '1', 'team', null, '1', '0', null, '4', 'system', null, '2021-02-24 02:25:06', null, '0');
INSERT INTO `sys_permission` VALUES ('3', '角色管理', 'modules/system/role/role', 'role', null, null, null, '1', 'solution', null, '1', '0', null, '5', 'system', null, '2021-02-24 02:26:13', null, '0');
INSERT INTO `sys_permission` VALUES ('4', '仪表盘', 'RouteView', 'anylayzer', null, '/dashboard/Analysis', null, '0', 'home', null, '1', '0', null, '1', 'system', null, '2021-02-24 02:56:00', null, '0');
INSERT INTO `sys_permission` VALUES ('5', '工作台', 'dashboard/Workplace', 'workplace', null, '/dashboard', null, '4', 'code', null, '1', '0', null, '2', 'system', null, '2021-02-24 02:56:00', null, '0');
INSERT INTO `sys_permission` VALUES ('6', '添加用户', null, null, null, null, null, '2', null, 'sys:user:add', '2', '0', null, '0', 'system', null, '2021-02-24 21:23:55', null, '0');
INSERT INTO `sys_permission` VALUES ('7', '编辑用户', null, null, null, null, null, '2', null, 'sys:user:update', '2', '0', null, '0', 'system', null, '2021-02-24 21:23:55', null, '0');
INSERT INTO `sys_permission` VALUES ('8', '删除用户', null, null, null, null, null, '2', null, 'sys:user:del', '2', '0', null, '0', 'system', null, '2021-02-24 21:23:55', null, '0');
INSERT INTO `sys_permission` VALUES ('12', '菜单管理', 'modules/system/menu/menu', 'menu', null, '', null, '1', 'home', null, '1', '0', null, '6', 'system', null, '2021-02-25 11:45:30', null, '0');
INSERT INTO `sys_permission` VALUES ('14', '开发管理', 'RouteView', 'code', null, '/system/code', null, '0', 'robot', null, '1', '0', null, '100', 'admin', null, '2021-02-27 13:23:32', null, '0');
INSERT INTO `sys_permission` VALUES ('20', '添加菜单', null, null, null, null, null, '12', null, 'sys:permission:add', '2', '0', null, '100', 'admin', null, '2021-02-27 14:35:35', null, '0');
INSERT INTO `sys_permission` VALUES ('21', '更新菜单', null, null, null, null, null, '12', null, 'sys:permission:update', '2', '0', null, '100', 'admin', null, '2021-02-27 14:36:09', null, '0');
INSERT INTO `sys_permission` VALUES ('16', '字典管理', 'modules/system/dict/dictType', 'dict', null, '/system/dict', null, '14', 'wallet', null, '1', '0', '字典管理', '99', 'admin', null, '2021-02-27 14:07:34', null, '0');
INSERT INTO `sys_permission` VALUES ('17', '添加字典', null, null, null, null, null, '16', null, 'sys:dict:add', '2', '0', '添加字典', '100', 'admin', null, '2021-02-27 14:11:46', null, '0');
INSERT INTO `sys_permission` VALUES ('18', '删除字典', null, null, null, null, null, '16', null, 'sys:dict:del', '2', '0', '删除字典', '100', 'admin', null, '2021-02-27 14:12:17', null, '0');
INSERT INTO `sys_permission` VALUES ('19', '编辑字典', null, null, null, null, null, '16', null, 'sys:dict:update', '2', '0', '编辑字典', '100', 'admin', null, '2021-02-27 14:12:44', null, '0');
INSERT INTO `sys_permission` VALUES ('22', '删除菜单', null, null, null, null, null, '12', null, 'sys:permission:del', '2', '0', null, '100', 'admin', null, '2021-02-27 14:36:32', null, '0');
INSERT INTO `sys_permission` VALUES ('30', '系统监控', 'RouteView', 'sysMonitor', null, '/system/monitor', null, '0', 'radar-chart', null, '1', '0', null, '99', 'admin', null, '2021-02-28 00:03:15', null, '0');
INSERT INTO `sys_permission` VALUES ('23', '添加角色', null, null, null, null, null, '3', null, 'sys:role:add', '2', '0', null, '100', 'admin', null, '2021-02-27 14:44:59', null, '0');
INSERT INTO `sys_permission` VALUES ('24', '删除角色', null, null, null, null, null, '3', null, 'sys:role:del', '2', '0', null, '100', 'admin', null, '2021-02-27 14:45:49', null, '0');
INSERT INTO `sys_permission` VALUES ('25', '编辑角色', null, null, null, null, null, '3', null, 'sys:role:update', '2', '0', null, '100', 'admin', null, '2021-02-27 14:46:05', null, '0');
INSERT INTO `sys_permission` VALUES ('28', '查看菜单', null, null, null, null, null, '12', null, 'sys:permission:view', '2', '0', null, '100', 'admin', null, '2021-02-27 18:44:31', null, '0');
INSERT INTO `sys_permission` VALUES ('27', '查看角色', null, null, null, null, null, '3', null, 'sys:role:view', '2', '0', null, '100', 'admin', null, '2021-02-27 18:44:06', null, '0');
INSERT INTO `sys_permission` VALUES ('26', '查看用户', null, null, null, null, null, '2', null, 'sys:user:view', '2', '0', null, '100', 'admin', null, '2021-02-27 18:43:40', null, '0');
INSERT INTO `sys_permission` VALUES ('29', '查看字典', null, null, null, null, null, '16', null, 'sys:dict:view', '2', '0', null, '100', 'admin', null, '2021-02-27 18:45:03', null, '0');
INSERT INTO `sys_permission` VALUES ('31', '服务器监控', 'modules/system/monitor/sysInfo', 'serverMonitor', null, '/system/monitor/sysinfo', null, '30', 'laptop', null, '1', '0', null, '100', 'admin', null, '2021-02-28 00:08:45', null, '0');
INSERT INTO `sys_permission` VALUES ('32', '查看', null, null, null, null, null, '31', null, 'sys:sysinfo:view', '2', '0', null, '100', 'admin', null, '2021-02-28 00:17:22', null, '0');
INSERT INTO `sys_permission` VALUES ('34', '操作日志', 'modules/system/log/log', 'sysLog', null, '/system/log', null, '30', 'audit', null, '1', '0', null, '100', 'admin', null, '2021-02-28 03:12:33', null, '0');
INSERT INTO `sys_permission` VALUES ('36', '查看日志', null, null, null, null, null, '34', null, 'sys:log:view', '2', '0', null, '100', 'admin', null, '2021-02-28 03:12:58', null, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'roleid',
  `role_name` varchar(32) NOT NULL COMMENT '角色名',
  `role_code` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '角色状态',
  `descript` varchar(255) NOT NULL COMMENT '描述',
  `create_by` varchar(32) NOT NULL COMMENT '创建人',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'superAdmin', '0', '超级管理员拥有所有权限', 'system', null, '2021-02-25 00:08:19', '2021-02-26 11:39:56', '0');
INSERT INTO `sys_role` VALUES ('4', '客服', 'service', '0', '网站客服', 'admin', null, '2021-02-27 14:57:02', null, '0');
INSERT INTO `sys_role` VALUES ('7', '技术支持', 'support', '0', '提供客户技术支持', 'admin', null, '2021-02-28 03:14:14', null, '0');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('329', '1', '30', '0');
INSERT INTO `sys_role_permission` VALUES ('328', '1', '21', '0');
INSERT INTO `sys_role_permission` VALUES ('327', '1', '25', '0');
INSERT INTO `sys_role_permission` VALUES ('326', '1', '24', '0');
INSERT INTO `sys_role_permission` VALUES ('325', '1', '23', '0');
INSERT INTO `sys_role_permission` VALUES ('324', '1', '19', '0');
INSERT INTO `sys_role_permission` VALUES ('323', '1', '18', '0');
INSERT INTO `sys_role_permission` VALUES ('322', '1', '17', '0');
INSERT INTO `sys_role_permission` VALUES ('112', '4', '4', '0');
INSERT INTO `sys_role_permission` VALUES ('321', '1', '14', '0');
INSERT INTO `sys_role_permission` VALUES ('320', '1', '22', '0');
INSERT INTO `sys_role_permission` VALUES ('319', '1', '1', '0');
INSERT INTO `sys_role_permission` VALUES ('318', '1', '32', '0');
INSERT INTO `sys_role_permission` VALUES ('317', '1', '31', '0');
INSERT INTO `sys_role_permission` VALUES ('316', '1', '29', '0');
INSERT INTO `sys_role_permission` VALUES ('315', '1', '28', '0');
INSERT INTO `sys_role_permission` VALUES ('314', '1', '27', '0');
INSERT INTO `sys_role_permission` VALUES ('313', '1', '26', '0');
INSERT INTO `sys_role_permission` VALUES ('312', '1', '20', '0');
INSERT INTO `sys_role_permission` VALUES ('311', '1', '34', '0');
INSERT INTO `sys_role_permission` VALUES ('113', '4', '5', '0');
INSERT INTO `sys_role_permission` VALUES ('310', '1', '36', '0');
INSERT INTO `sys_role_permission` VALUES ('309', '1', '16', '0');
INSERT INTO `sys_role_permission` VALUES ('308', '1', '12', '0');
INSERT INTO `sys_role_permission` VALUES ('307', '1', '3', '0');
INSERT INTO `sys_role_permission` VALUES ('306', '1', '2', '0');
INSERT INTO `sys_role_permission` VALUES ('305', '1', '5', '0');
INSERT INTO `sys_role_permission` VALUES ('304', '1', '4', '0');
INSERT INTO `sys_role_permission` VALUES ('303', '1', '8', '0');
INSERT INTO `sys_role_permission` VALUES ('302', '1', '7', '0');
INSERT INTO `sys_role_permission` VALUES ('335', '7', '14', '0');
INSERT INTO `sys_role_permission` VALUES ('301', '1', '6', '0');
INSERT INTO `sys_role_permission` VALUES ('334', '7', '30', '0');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `salt` varchar(255) NOT NULL COMMENT '密码盐',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户状态',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(4) DEFAULT '1' COMMENT '用户性别',
  `login_ip` varchar(64) DEFAULT NULL COMMENT '登录IP',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '逻辑删除（0：未删除 1：删除）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '123456', 'ca2ec7d8231165d0e3652b8fb386caa2', 'd0dc1621f3028f2feb14e9d292dfd93d', '0', '18320168121', '190055506@qq.com', '1', '0:0:0:0:0:0:0:1', '2021-02-23 08:21:29', null, '0');
INSERT INTO `sys_user` VALUES ('2', 'admin', '6a11c6e8fb6595ec1168fd06af60f1e3', '336dd08aeccb908336903e8cd51bd3c8', '0', '13058132477', 'zmissu@163.com', '1', '0:0:0:0:0:0:0:1', '2021-02-24 00:16:54', null, '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `is_delete` tinyint(4) NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '2', '1', '0');
