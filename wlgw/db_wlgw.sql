/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_wlgw
Target Host: localhost
Target Database: db_wlgw
Date: 2013-03-18 15:11:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) default NULL,
  `catelog_del` varchar(50) default NULL,
  PRIMARY KEY  (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
CREATE TABLE `t_gonggao` (
  `id` int(11) NOT NULL,
  `biaoti` varchar(255) default NULL,
  `neirong` varchar(255) default NULL,
  `shijian` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(50) default NULL,
  `goods_miaoshu` longtext,
  `goods_pic` varchar(50) default NULL,
  `goods_shichangjia` int(11) default NULL,
  `goods_tejia` int(11) default NULL,
  `goods_isnottejia` varchar(50) default NULL,
  `goods_isnottuijian` varchar(50) default NULL,
  `goods_catelog_id` int(11) default NULL,
  `goods_kucun` int(11) default NULL,
  `goods_Del` varchar(50) default NULL,
  PRIMARY KEY  (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) default NULL,
  `liuyan_content` longtext,
  `liuyan_date` varchar(50) default NULL,
  `liuyan_user` varchar(50) default NULL,
  PRIMARY KEY  (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `order_bianhao` varchar(50) default NULL,
  `order_date` varchar(50) default NULL,
  `order_zhuangtai` varchar(50) default NULL,
  `order_songhuodizhi` varchar(50) default NULL,
  `order_fukuangfangshi` varchar(50) default NULL,
  `order_jine` int(11) default NULL,
  `order_user_id` int(11) default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_orderitem
-- ----------------------------
CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL,
  `order_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goods_quantity` int(11) default NULL,
  PRIMARY KEY  (`orderItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) default NULL,
  `user_pw` varchar(50) default NULL,
  `user_realname` varchar(50) default NULL,
  `user_sex` varchar(50) default NULL,
  `user_age` varchar(50) default NULL,
  `user_address` varchar(50) default NULL,
  `user_tel` varchar(50) default NULL,
  `user_del` varchar(50) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');
INSERT INTO `t_catelog` VALUES ('1', '保健按摩器材', 'no');
INSERT INTO `t_catelog` VALUES ('2', '户外运动用品', 'no');
INSERT INTO `t_gonggao` VALUES ('2', '测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息', '测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息测试公告信息', '2013-03-18 19:12');
INSERT INTO `t_gonggao` VALUES ('3', '333333333333333333333333333333333333333333333333333333333333333', '3333333333333333333333333333333333333333333333333', '2013-03-18 19:12');
INSERT INTO `t_goods` VALUES ('1', 'NBA手指护套', 'NBA手指护套', '/upload/1363582080271.jpg', '100', '100', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('2', '活力龙举重腰带', '活力龙举重腰带', '/upload/1363582472752.jpg', '100', '100', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('3', '护腕助力弹力带', '护腕助力弹力带', '/upload/1363582537954.jpg', '100', '100', 'no', null, '1', '-2', 'no');
INSERT INTO `t_goods` VALUES ('4', '专业运动护膝', '专业运动护膝', '/upload/1363582628564.jpg', '100', '100', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('5', '护肘运动护具', '护肘运动护具', '/upload/1363582712347.jpg', '100', '100', 'no', null, '1', '0', 'no');
INSERT INTO `t_goods` VALUES ('6', '户外铝运动水壶', '户外铝运动水壶', '/upload/1363582798510.jpg', '100', '100', 'no', null, '2', '0', 'no');
INSERT INTO `t_goods` VALUES ('7', '高档仿皮防水沙袋', '高档仿皮防水沙袋', '/upload/1363582866553.jpg', '100', '100', 'no', null, '2', '-3', 'no');
INSERT INTO `t_goods` VALUES ('8', '绑腿沙袋沙绑腿', '绑腿沙袋沙绑腿', '/upload/1363582895478.jpg', '100', '100', 'no', null, '2', '0', 'no');
INSERT INTO `t_goods` VALUES ('9', '弗洛特臂力器 ', '弗洛特臂力器', '/upload/1363582947184.jpg', '100', '100', 'no', null, '2', '0', 'no');
INSERT INTO `t_goods` VALUES ('10', 'JOEREX车缝足球', 'JOEREX车缝足球', '/upload/1363583019495.jpg', '100', '100', 'no', null, '2', '-2', 'no');
INSERT INTO `t_liuyan` VALUES ('1', '1111111111111', '<p>11111111</p>', '2013-3-18 13:13:59', 'liusan');
INSERT INTO `t_order` VALUES ('1', '20130318011345', '2013-03-18 01:13:45', 'yes', 'xxxxxxxxxxxxxx', '货到付款', '700', '1');
INSERT INTO `t_orderitem` VALUES ('1', '1', '3', '2');
INSERT INTO `t_orderitem` VALUES ('2', '1', '7', '3');
INSERT INTO `t_orderitem` VALUES ('3', '1', '10', '2');
INSERT INTO `t_user` VALUES ('1', 'liusan', '000000', '刘三', '男', '22', '北京路1', '13555555555', 'no');
INSERT INTO `t_user` VALUES ('3', 'liusiss', '000000', '李斯', '男', '25', '上海路', '13666666666', 'no');
