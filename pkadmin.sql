/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : pkadmin

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-12-05 17:36:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pk_admin`
-- ----------------------------
DROP TABLE IF EXISTS `pk_admin`;
CREATE TABLE `pk_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id，表id',
  `username` varchar(225) NOT NULL COMMENT '用户名',
  `head_pic` varchar(1024) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '0保密，1男，2女',
  `birthday` date NOT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL COMMENT '登录密码',
  `reg_time` int(10) unsigned NOT NULL COMMENT '注册时间',
  `identifier` varchar(32) NOT NULL COMMENT '用户标识',
  `token` varchar(32) NOT NULL COMMENT '用户令牌',
  `salt` varchar(10) NOT NULL COMMENT '备用',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of pk_admin
-- ----------------------------
INSERT INTO `pk_admin` VALUES ('1', 'admin', 'a:3:{s:8:\"head_pic\";s:60:\"Data/upload/head_pic/201611/pkadmin_20161122141903Tg95cB.jpg\";s:18:\"head_pic_140_thump\";s:85:\"Data/upload/head_pic/201611/head_pic_140_thumb/pkadmin_20161122141903Tg95cB_140px.jpg\";s:17:\"head_pic_30_thump\";s:83:\"Data/upload/head_pic/201611/head_pic_30_thumb/pkadmin_20161122141903Tg95cB_30px.jpg\";}', '1', '1992-03-11', '18003829681', '214564382', 'zhihua_wei@foxmail.com', '0906e4cc92492f0fb2609f1736a61380', '1478244478', '6bb3113adf981bbb621181da50b8dff6', 'c79c93a358456afccc0ed862b69bb738', 'gVh9drpxex');
INSERT INTO `pk_admin` VALUES ('2', 'test1', '', '2', '2012-05-08', '15000000002', '2222222222', 'zhihua_wei@sina.com', '1dae0c241202523c5eb7c0208523789f', '0', '', '', '');
INSERT INTO `pk_admin` VALUES ('3', 'test2', 'a:3:{s:8:\"head_pic\";s:61:\"Data/upload/head_pic/201611/pkadmin_20161122143149mjRby4.jpeg\";s:18:\"head_pic_140_thump\";s:86:\"Data/upload/head_pic/201611/head_pic_140_thumb/pkadmin_20161122143149mjRby4_140px.jpeg\";s:17:\"head_pic_30_thump\";s:84:\"Data/upload/head_pic/201611/head_pic_30_thumb/pkadmin_20161122143149mjRby4_30px.jpeg\";}', '1', '2013-05-07', '15000000001', '55555555', 'zhihua_wei@qq.com', '1dae0c241202523c5eb7c0208523789f', '0', '', '', '');
INSERT INTO `pk_admin` VALUES ('4', 'test3', '', '0', '0000-00-00', '', '', '', '', '0', '', '', '');

-- ----------------------------
-- Table structure for `pk_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `pk_admin_log`;
CREATE TABLE `pk_admin_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id,表id',
  `admin_id` int(11) NOT NULL COMMENT '操作管理员id',
  `username` varchar(100) NOT NULL COMMENT '管理员用户名',
  `time` int(10) NOT NULL COMMENT '操作时间',
  `ip` varchar(16) NOT NULL COMMENT '操作ip',
  `log` varchar(255) NOT NULL COMMENT '日志描述',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COMMENT='管理员操作日志表';

-- ----------------------------
-- Records of pk_admin_log
-- ----------------------------
INSERT INTO `pk_admin_log` VALUES ('145', '1', 'admin', '1480910276', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('144', '1', 'admin', '1480910158', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('7', '1', 'admin', '1478324991', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('8', '1', 'admin', '1478328819', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('9', '1', 'admin', '1478333063', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('10', '1', 'admin', '1478336740', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('11', '1', 'admin', '1478479514', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('12', '1', 'admin', '1478483303', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('13', '1', 'admin', '1478486995', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('14', '1', 'admin', '1478490914', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('15', '1', 'admin', '1478497214', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('16', '1', 'admin', '1478500936', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('17', '1', 'admin', '1478504690', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('18', '1', 'admin', '1478509867', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('19', '1', 'admin', '1478513618', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('20', '1', 'admin', '1478564761', '::1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('21', '1', 'admin', '1478568565', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('22', '1', 'admin', '1478573612', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('23', '1', 'admin', '1478577250', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('24', '1', 'admin', '1478586169', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('25', '1', 'admin', '1478589897', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('26', '1', 'admin', '1478593616', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('27', '1', 'admin', '1478597277', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('28', '1', 'admin', '1478597579', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('29', '0', '', '1478598645', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('30', '1', 'admin', '1478599471', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('31', '1', 'admin', '1478651747', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('32', '1', 'admin', '1478663493', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('33', '1', 'admin', '1478671718', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('34', '1', 'admin', '1478674684', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('35', '1', 'admin', '1478679192', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('36', '1', 'admin', '1478683019', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('37', '1', 'admin', '1478686706', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('38', '1', 'admin', '1478738498', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('39', '1', 'admin', '1478742139', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('40', '1', 'admin', '1478745799', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('41', '1', 'admin', '1478748905', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('42', '1', 'admin', '1478758217', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('43', '1', 'admin', '1478762792', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('44', '1', 'admin', '1478766446', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('45', '1', 'admin', '1479084727', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('46', '1', 'admin', '1479088431', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('47', '1', 'admin', '1479260583', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('48', '1', 'admin', '1479262037', '127.0.0.1', '修改网站配置信息！');
INSERT INTO `pk_admin_log` VALUES ('49', '1', 'admin', '1479264256', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('50', '1', 'admin', '1479275095', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('51', '1', 'admin', '1479278951', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('52', '1', 'admin', '1479289867', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('53', '1', 'admin', '1479343174', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('54', '1', 'admin', '1479344449', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('55', '1', 'admin', '1479348109', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('56', '1', 'admin', '1479349012', '127.0.0.1', '删除操作菜单，ID：56');
INSERT INTO `pk_admin_log` VALUES ('57', '1', 'admin', '1479353453', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('58', '1', 'admin', '1479361095', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('59', '1', 'admin', '1479364759', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('60', '1', 'admin', '1479372299', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('61', '1', 'admin', '1479374925', '127.0.0.1', '编辑更新操作菜单(自定义变量)，ID：58');
INSERT INTO `pk_admin_log` VALUES ('62', '1', 'admin', '1479374964', '127.0.0.1', '编辑更新操作菜单(自定义变量)，ID：58');
INSERT INTO `pk_admin_log` VALUES ('63', '1', 'admin', '1479376545', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('64', '1', 'admin', '1479376940', '127.0.0.1', '新增操作菜单(一个菜单)，ID：1');
INSERT INTO `pk_admin_log` VALUES ('65', '1', 'admin', '1479377034', '127.0.0.1', '新增操作菜单(苹果)，ID：1');
INSERT INTO `pk_admin_log` VALUES ('66', '1', 'admin', '1479377053', '127.0.0.1', '删除操作菜单，ID：80');
INSERT INTO `pk_admin_log` VALUES ('67', '1', 'admin', '1479377065', '127.0.0.1', '删除操作菜单，ID：79');
INSERT INTO `pk_admin_log` VALUES ('68', '1', 'admin', '1479377183', '127.0.0.1', '新增操作菜单()，ID：1');
INSERT INTO `pk_admin_log` VALUES ('69', '1', 'admin', '1479377272', '127.0.0.1', '新增操作菜单()，ID：1');
INSERT INTO `pk_admin_log` VALUES ('70', '1', 'admin', '1479439139', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('71', '1', 'admin', '1479448452', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('72', '1', 'admin', '1479452132', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('73', '1', 'admin', '1479452587', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('74', '1', 'admin', '1479453310', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('75', '1', 'admin', '1479457424', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('76', '1', 'admin', '1479462786', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('77', '1', 'admin', '1479689667', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('78', '1', 'admin', '1479694959', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('79', '1', 'admin', '1479698912', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('80', '1', 'admin', '1479706929', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('81', '1', 'admin', '1479711266', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('82', '1', 'admin', '1479711344', '127.0.0.1', '删除管理员用户，ID：8');
INSERT INTO `pk_admin_log` VALUES ('83', '1', 'admin', '1479714997', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('84', '1', 'admin', '1479719067', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('85', '1', 'admin', '1479722571', '127.0.0.1', '修改管理员信息，管理员ID：3');
INSERT INTO `pk_admin_log` VALUES ('86', '1', 'admin', '1479785269', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('87', '1', 'admin', '1479793630', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('88', '1', 'admin', '1479794977', '127.0.0.1', '修改管理员信息，管理员ID：5');
INSERT INTO `pk_admin_log` VALUES ('89', '1', 'admin', '1479795478', '127.0.0.1', '修改管理员信息，管理员ID：3');
INSERT INTO `pk_admin_log` VALUES ('90', '1', 'admin', '1479796310', '127.0.0.1', '修改管理员信息，管理员ID：3');
INSERT INTO `pk_admin_log` VALUES ('91', '1', 'admin', '1479796402', '127.0.0.1', '修改管理员信息，管理员ID：3');
INSERT INTO `pk_admin_log` VALUES ('92', '1', 'admin', '1479797354', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('93', '1', 'admin', '1479798194', '127.0.0.1', '添加管理员信息，管理员用户名：fafadsfdasf');
INSERT INTO `pk_admin_log` VALUES ('94', '10', 'fafadsfdasf', '1479798240', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('95', '1', 'admin', '1479798420', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('96', '1', 'admin', '1479798452', '127.0.0.1', '删除管理员用户，ID：9');
INSERT INTO `pk_admin_log` VALUES ('97', '1', 'admin', '1479798472', '127.0.0.1', '删除管理员用户，ID：10');
INSERT INTO `pk_admin_log` VALUES ('98', '1', 'admin', '1479798494', '127.0.0.1', '删除管理员用户，ID：7');
INSERT INTO `pk_admin_log` VALUES ('99', '1', 'admin', '1479798529', '127.0.0.1', '删除管理员用户，ID：6');
INSERT INTO `pk_admin_log` VALUES ('100', '1', 'admin', '1479798538', '127.0.0.1', '删除管理员用户，ID：5');
INSERT INTO `pk_admin_log` VALUES ('101', '1', 'admin', '1479802133', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('102', '1', 'admin', '1479967665', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('103', '1', 'admin', '1479968292', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('104', '1', 'admin', '1479968465', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('105', '1', 'admin', '1479972309', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('106', '1', 'admin', '1479972378', '127.0.0.1', '修改管理员信息，管理员ID：2');
INSERT INTO `pk_admin_log` VALUES ('107', '1', 'admin', '1479973355', '127.0.0.1', '删除角色权限组，ID：5');
INSERT INTO `pk_admin_log` VALUES ('108', '1', 'admin', '1479975809', '127.0.0.1', '删除角色权限组，ID：8');
INSERT INTO `pk_admin_log` VALUES ('109', '1', 'admin', '1479975945', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('110', '1', 'admin', '1479980499', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('111', '1', 'admin', '1480034770', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('112', '1', 'admin', '1480038445', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('113', '1', 'admin', '1480055006', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('114', '1', 'admin', '1480058659', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('115', '1', 'admin', '1480297402', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('116', '1', 'admin', '1480301263', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('117', '1', 'admin', '1480304886', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('118', '1', 'admin', '1480313117', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('119', '1', 'admin', '1480314496', '127.0.0.1', '新增角色权限组：测试管理员');
INSERT INTO `pk_admin_log` VALUES ('120', '1', 'admin', '1480315754', '127.0.0.1', '新增角色权限组：测试管理员');
INSERT INTO `pk_admin_log` VALUES ('121', '1', 'admin', '1480315797', '127.0.0.1', '删除角色权限组，ID：10');
INSERT INTO `pk_admin_log` VALUES ('122', '1', 'admin', '1480315812', '127.0.0.1', '修改角色权限组：测试管理员');
INSERT INTO `pk_admin_log` VALUES ('123', '1', 'admin', '1480316851', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('124', '1', 'admin', '1480320553', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('125', '1', 'admin', '1480495845', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('126', '1', 'admin', '1480558206', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('127', '1', 'admin', '1480559890', '127.0.0.1', '新增文章分类：关于我们');
INSERT INTO `pk_admin_log` VALUES ('128', '1', 'admin', '1480562379', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('129', '1', 'admin', '1480563116', '127.0.0.1', '新增文章分类：测试分类');
INSERT INTO `pk_admin_log` VALUES ('130', '1', 'admin', '1480564049', '127.0.0.1', '修改文章分类：测试分类');
INSERT INTO `pk_admin_log` VALUES ('131', '1', 'admin', '1480577818', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('132', '1', 'admin', '1480747561', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('133', '1', 'admin', '1480747792', '127.0.0.1', '新增文章分类：测试分类1');
INSERT INTO `pk_admin_log` VALUES ('134', '1', 'admin', '1480749892', '127.0.0.1', '新增文章：关于我们');
INSERT INTO `pk_admin_log` VALUES ('135', '1', 'admin', '1480753305', '127.0.0.1', '登录成功！');
INSERT INTO `pk_admin_log` VALUES ('136', '1', 'admin', '1480753335', '127.0.0.1', '新增文章：测试文章');
INSERT INTO `pk_admin_log` VALUES ('137', '1', 'admin', '1480753441', '127.0.0.1', '新增文章：测试文章1');
INSERT INTO `pk_admin_log` VALUES ('138', '1', 'admin', '1480755199', '127.0.0.1', '修改文章：测试文章短发散发');
INSERT INTO `pk_admin_log` VALUES ('139', '1', 'admin', '1480755471', '127.0.0.1', '删除文章，ID：3');
INSERT INTO `pk_admin_log` VALUES ('140', '1', 'admin', '1480755507', '127.0.0.1', '修改文章：测试文章');
INSERT INTO `pk_admin_log` VALUES ('141', '1', 'admin', '1480756075', '127.0.0.1', '修改文章：测试文章');
INSERT INTO `pk_admin_log` VALUES ('142', '1', 'admin', '1480756093', '127.0.0.1', '删除文章分类，ID：4');
INSERT INTO `pk_admin_log` VALUES ('143', '1', 'admin', '1480908430', '127.0.0.1', '登录成功！');

-- ----------------------------
-- Table structure for `pk_article`
-- ----------------------------
DROP TABLE IF EXISTS `pk_article`;
CREATE TABLE `pk_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id，表id',
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `article_title` varchar(255) NOT NULL COMMENT '文章标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键词',
  `article_desc` varchar(255) NOT NULL COMMENT '文章摘要',
  `article_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '文章插图',
  `content` text NOT NULL COMMENT '文章内容',
  `issue_time` int(10) unsigned NOT NULL COMMENT '发布时间',
  `edit_time` int(10) NOT NULL COMMENT '最后更新修改时间',
  `click_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of pk_article
-- ----------------------------
INSERT INTO `pk_article` VALUES ('1', '1', '关于我们', '关于我们', '关于我们', 'Data/upload/article_pic/201612/pkadmin_20161203152452D5MBdG.png', '关于我们', '1480749892', '1480749892', '0');
INSERT INTO `pk_article` VALUES ('2', '3', '测试文章', '测试文章', '测试文章', '', '<b>测试文章内容</b>', '1480753335', '1480756075', '0');

-- ----------------------------
-- Table structure for `pk_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `pk_auth_group`;
CREATE TABLE `pk_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '组(表)id',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '角色(用户组)中文名称',
  `rules` varchar(512) NOT NULL DEFAULT '' COMMENT '角色(用户组)拥有的规则id，多个规则","隔开',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '角色(用户组)状态：1正常，0禁用',
  `note` text NOT NULL COMMENT '角色(用户组)描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户组表';

-- ----------------------------
-- Records of pk_auth_group
-- ----------------------------
INSERT INTO `pk_auth_group` VALUES ('1', '超级管理员', '1,2,58,65,59,60,61,62,3,56,4,6,5,7,8,9,10,51,52,53,57,11,54,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,63,48,49,50,55', '1', '拥有系统所有权限！');
INSERT INTO `pk_auth_group` VALUES ('2', '管理员', '13,14,23,22,21,20,19,18,17,16,15,24,36,34,33,32,31,30,29,27,26,25,1', '1', '拥有系统后台部分权限');
INSERT INTO `pk_auth_group` VALUES ('3', '普通用户', '1', '1', '普通用户权限');
INSERT INTO `pk_auth_group` VALUES ('4', '测试用户', '1,2', '0', '测试用户');
INSERT INTO `pk_auth_group` VALUES ('9', '测试管理员', '1,2,6,8,9', '0', '仅仅用于测试');

-- ----------------------------
-- Table structure for `pk_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `pk_auth_group_access`;
CREATE TABLE `pk_auth_group_access` (
  `admin_id` mediumint(8) unsigned NOT NULL COMMENT '管理员用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `admin_id_group_id` (`admin_id`,`group_id`),
  KEY `admin_id` (`admin_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户权限组关联明细表';

-- ----------------------------
-- Records of pk_auth_group_access
-- ----------------------------
INSERT INTO `pk_auth_group_access` VALUES ('1', '1');
INSERT INTO `pk_auth_group_access` VALUES ('2', '2');
INSERT INTO `pk_auth_group_access` VALUES ('3', '2');
INSERT INTO `pk_auth_group_access` VALUES ('4', '3');

-- ----------------------------
-- Table structure for `pk_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `pk_auth_rule`;
CREATE TABLE `pk_auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `pid` int(11) NOT NULL COMMENT '父id',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '操作规则唯一标识（控制器/方法）',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '操作规则中文名称',
  `icon` varchar(255) NOT NULL COMMENT '操作规则图标（仅是父类有效）',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1正常，0禁用',
  `condition` char(100) NOT NULL DEFAULT '' COMMENT '操作规则表达式',
  `islink` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示状态：1 显示，0 不显示',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `tips` text NOT NULL COMMENT '提示描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='操作规则表';

-- ----------------------------
-- Records of pk_auth_rule
-- ----------------------------
INSERT INTO `pk_auth_rule` VALUES ('1', '0', 'Admin/index', '控制台', 'fa fa-tachometer', '1', '1', '', '1', '1', '友情提示：经常查看操作日志，发现异常以便及时追查原因。');
INSERT INTO `pk_auth_rule` VALUES ('2', '0', '', '系统设置', 'fa fa-cogs', '1', '1', '', '1', '2', '');
INSERT INTO `pk_auth_rule` VALUES ('3', '2', 'Setting/setting', '网站设置', 'fa fa-caret-right', '1', '1', '', '1', '3', '友情提示：这是网站设置的提示。');
INSERT INTO `pk_auth_rule` VALUES ('4', '2', 'Menu/index', '后台菜单', 'fa fa-caret-right', '1', '1', '', '1', '4', '关于后台菜单，新增时输入控制器方法名时一定要细心！');
INSERT INTO `pk_auth_rule` VALUES ('5', '2', 'Menu/add', '新增菜单', 'fa fa-caret-right', '1', '1', '', '1', '5', '');
INSERT INTO `pk_auth_rule` VALUES ('6', '4', 'Menu/edit', '编辑菜单', 'fa fa-caret-right', '1', '1', '', '0', '6', '');
INSERT INTO `pk_auth_rule` VALUES ('7', '4', 'Menu/update', '保存菜单', 'fa fa-caret-right', '1', '1', '', '0', '7', '');
INSERT INTO `pk_auth_rule` VALUES ('8', '4', 'Menu/del', '删除菜单', 'fa fa-caret-right', '1', '1', '', '0', '8', '');
INSERT INTO `pk_auth_rule` VALUES ('9', '2', 'Database/index', '数据库表', 'fa fa-caret-right', '1', '1', '', '1', '9', '');
INSERT INTO `pk_auth_rule` VALUES ('10', '9', 'Database/backup', '数据库备份', 'fa fa-caret-right', '1', '1', '', '0', '10', '');
INSERT INTO `pk_auth_rule` VALUES ('11', '9', 'Database/optimize', '数据库优化', 'fa fa-caret-right', '1', '1', '', '1', '11', '');
INSERT INTO `pk_auth_rule` VALUES ('12', '9', 'Database/repair', '数据库修复', 'fa fa-caret-right', '1', '1', '', '1', '12', '');
INSERT INTO `pk_auth_rule` VALUES ('13', '0', '', '权限管理', 'fa fa-users', '1', '1', '', '1', '13', '');
INSERT INTO `pk_auth_rule` VALUES ('14', '13', 'Administrator/index', '用户管理', 'fa fa-caret-right', '1', '1', '', '1', '14', '');
INSERT INTO `pk_auth_rule` VALUES ('15', '13', 'Administrator/add', '新增用户', 'fa fa-caret-right', '1', '1', '', '1', '15', '');
INSERT INTO `pk_auth_rule` VALUES ('16', '13', 'Administrator/edit', '编辑用户', 'fa fa-caret-right', '1', '1', '', '0', '16', '');
INSERT INTO `pk_auth_rule` VALUES ('17', '13', 'Administrator/addeditadmininfo', '保存用户', 'fa fa-caret-right', '1', '1', '', '0', '17', '');
INSERT INTO `pk_auth_rule` VALUES ('18', '13', 'Administrator/del', '删除用户', 'fa fa-caret-right', '1', '1', '', '0', '18', '');
INSERT INTO `pk_auth_rule` VALUES ('19', '13', 'Authgroup/index', '角色管理', 'fa fa-caret-right', '1', '1', '', '1', '19', '');
INSERT INTO `pk_auth_rule` VALUES ('20', '13', 'Authgroup/add', '新增角色', 'fa fa-caret-right', '1', '1', '', '1', '20', '');
INSERT INTO `pk_auth_rule` VALUES ('21', '13', 'Authgroup/edit', '编辑角色', 'fa fa-caret-right', '1', '1', '', '0', '21', '');
INSERT INTO `pk_auth_rule` VALUES ('22', '13', 'Authgroup/update', '保存角色', 'fa fa-caret-right', '1', '1', '', '0', '22', '');
INSERT INTO `pk_auth_rule` VALUES ('23', '13', 'Authgroup/del', '删除角色', 'fa fa-caret-right', '1', '1', '', '0', '23', '');
INSERT INTO `pk_auth_rule` VALUES ('24', '0', '', '内容管理', 'fa fa-desktop', '1', '1', '', '1', '24', '');
INSERT INTO `pk_auth_rule` VALUES ('25', '24', 'Article/index', '文章管理', 'fa fa-caret-right', '1', '1', '', '1', '25', '网站虽然重要，身体更重要，出去走走吧。');
INSERT INTO `pk_auth_rule` VALUES ('26', '24', 'Article/add', '新增文章', 'fa fa-caret-right', '1', '1', '', '1', '26', '');
INSERT INTO `pk_auth_rule` VALUES ('27', '24', 'Article/edit', '编辑文章', 'fa fa-caret-right', '1', '1', '', '0', '27', '');
INSERT INTO `pk_auth_rule` VALUES ('29', '24', 'Article/update', '保存文章', 'fa fa-caret-right', '1', '1', '', '0', '29', '');
INSERT INTO `pk_auth_rule` VALUES ('30', '24', 'Article/del', '删除文章', 'fa fa-caret-right', '1', '1', '', '0', '30', '');
INSERT INTO `pk_auth_rule` VALUES ('31', '24', 'Category/index', '分类管理', 'fa fa-caret-right', '1', '1', '', '1', '31', '');
INSERT INTO `pk_auth_rule` VALUES ('32', '24', 'Category/add', '新增分类', 'fa fa-caret-right', '1', '1', '', '1', '32', '');
INSERT INTO `pk_auth_rule` VALUES ('33', '24', 'Category/edit', '编辑分类', 'fa fa-caret-right', '1', '1', '', '0', '33', '');
INSERT INTO `pk_auth_rule` VALUES ('34', '24', 'Category/update', '保存分类', 'fa fa-caret-right', '1', '1', '', '0', '34', '');
INSERT INTO `pk_auth_rule` VALUES ('36', '24', 'Category/del', '删除分类', 'fa fa-caret-right', '1', '1', '', '0', '36', '');
INSERT INTO `pk_auth_rule` VALUES ('37', '0', '', '其它功能', 'fa fa-legal', '1', '1', '', '1', '37', '');
INSERT INTO `pk_auth_rule` VALUES ('38', '37', 'Admin/index', '自行开发', 'fa fa-caret-right', '1', '1', '', '1', '38', '');
INSERT INTO `pk_auth_rule` VALUES ('39', '37', 'Admin/index', '自行设计', 'fa fa-caret-right', '1', '1', '', '1', '39', '');
INSERT INTO `pk_auth_rule` VALUES ('40', '37', 'Link/edit', '编辑链接', 'fa fa-caret-right', '1', '1', '', '0', '40', '');
INSERT INTO `pk_auth_rule` VALUES ('41', '37', 'Link/update', '保存链接', 'fa fa-caret-right', '1', '1', '', '0', '41', '');
INSERT INTO `pk_auth_rule` VALUES ('42', '37', 'Link/del', '删除链接', 'fa fa-caret-right', '1', '1', '', '0', '42', '');
INSERT INTO `pk_auth_rule` VALUES ('48', '0', '', '个人中心', 'fa fa-user', '1', '1', '', '1', '48', '');
INSERT INTO `pk_auth_rule` VALUES ('49', '48', 'Personal/index', '个人资料', 'fa fa-caret-right', '1', '1', '', '1', '49', '友情提示：请注意牢记自己所填的信息！');
INSERT INTO `pk_auth_rule` VALUES ('51', '48', 'Logout/index', '退出', 'fa fa-caret-right', '1', '1', '', '1', '51', '');
INSERT INTO `pk_auth_rule` VALUES ('63', '2', 'Setting/devlog', '开发日志', 'fa fa-caret-right', '1', '1', '', '1', '77', '');
INSERT INTO `pk_auth_rule` VALUES ('55', '48', 'Personal/update', '资料保存', 'fa fa-caret-right', '1', '1', '', '0', '55', '');
INSERT INTO `pk_auth_rule` VALUES ('50', '48', 'Personal/changepwd', '修改密码', 'fa fa-caret-right', '1', '1', '', '1', '50', '友情提示：请保护好自己的登录密码！');

-- ----------------------------
-- Table structure for `pk_category`
-- ----------------------------
DROP TABLE IF EXISTS `pk_category`;
CREATE TABLE `pk_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id，表id',
  `category_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分类类型，备用',
  `category_pid` int(11) NOT NULL DEFAULT '0' COMMENT '父ID，备用',
  `category_name` varchar(100) NOT NULL COMMENT '分类名称',
  `keywords` varchar(255) NOT NULL COMMENT '分类关键字',
  `sort` int(11) NOT NULL COMMENT '排序,越小越靠前',
  `category_desc` varchar(512) NOT NULL COMMENT '文章分类简单描述',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- ----------------------------
-- Records of pk_category
-- ----------------------------
INSERT INTO `pk_category` VALUES ('1', '0', '0', '关于我们', '关于我们', '1', '关于我们主要是我们的一些信息');
INSERT INTO `pk_category` VALUES ('3', '0', '0', '测试分类', '测试分类', '2', '测试分类发达省份的');

-- ----------------------------
-- Table structure for `pk_devlog`
-- ----------------------------
DROP TABLE IF EXISTS `pk_devlog`;
CREATE TABLE `pk_devlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `version` varchar(225) NOT NULL COMMENT '版本号',
  `year` varchar(32) NOT NULL COMMENT '年份',
  `time` int(10) NOT NULL COMMENT '发布日期',
  `log` text NOT NULL COMMENT '更新日志描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='开发日志表';

-- ----------------------------
-- Records of pk_devlog
-- ----------------------------
INSERT INTO `pk_devlog` VALUES ('1', '0.0.1', '2016/11/03', '1478166301', 'PKADMIN第一个版本发布。');
INSERT INTO `pk_devlog` VALUES ('2', '0.1.0', '2016/11/11', '1478857527', 'PKADMIN测试版本发布。');
INSERT INTO `pk_devlog` VALUES ('3', '1.0.0', '2016/11/18', '1440259200', '修改session过于简单的安全风险。');

-- ----------------------------
-- Table structure for `pk_setting`
-- ----------------------------
DROP TABLE IF EXISTS `pk_setting`;
CREATE TABLE `pk_setting` (
  `key` varchar(100) NOT NULL COMMENT '变量',
  `val` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统 不可删除，1 自定义 可修该、可删除',
  `note` varchar(255) NOT NULL COMMENT '说明',
  PRIMARY KEY (`key`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统设置表';

-- ----------------------------
-- Records of pk_setting
-- ----------------------------
INSERT INTO `pk_setting` VALUES ('sitename', '小刀科技', '0', '网站');
INSERT INTO `pk_setting` VALUES ('title', 'PKADMIN', '0', '头部');
INSERT INTO `pk_setting` VALUES ('keywords', 'PKADMIN，小刀科技', '0', '关键词');
INSERT INTO `pk_setting` VALUES ('description', 'pkadmin后台管理系统是基于Codeigniter框架和Olive Admin后台模版进行开发的。', '0', '描述');
INSERT INTO `pk_setting` VALUES ('footer', 'Copyright © 2016 PKADMIN design by', '0', '版权信息');
INSERT INTO `pk_setting` VALUES ('author', 'zhihua_w', '0', '开发者');
INSERT INTO `pk_setting` VALUES ('version', 'v1.0.0', '0', '版本信息');
