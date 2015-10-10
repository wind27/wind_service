-- ----------------------------
-- Table structure for `entity_admin`
-- ----------------------------
DROP TABLE IF EXISTS `entity_admin`;
CREATE TABLE `entity_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `login_user` varchar(50) DEFAULT NULL COMMENT '用户名',
  `login_pass` varchar(64) DEFAULT NULL COMMENT '密码',
  `stats` tinyint(3) DEFAULT NULL COMMENT '状态0：正常；1：停止',
  `type` tinyint(3) DEFAULT NULL COMMENT '类型：-1、超级管理员；1、普通用户',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `flag` tinyint(3) DEFAULT '1' COMMENT '标识',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_login_user` (`login_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12817 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of entity_admin
-- ----------------------------
INSERT INTO `entity_admin` VALUES ('1', '运营超级管理员', '110', '000@xdf.cn', '110', 'admin', 'NDQyMzM1MDE1OTNmNDIwNjE1YmVmYzI0YTQwMTZmOWQ=', '0', '-1', '2015-02-28 15:34:57', '1', null);