-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `stats` tinyint(4) NOT NULL COMMENT '态状：0、正常；1、异常',
  `type` tinyint(4) DEFAULT '1' COMMENT '组类型：-1、超级组；1、一般组',
  `domain_id` bigint(20) DEFAULT '1' COMMENT '所属域 id',
  `remark` varchar(255) DEFAULT NULL COMMENT '注备',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '超级管理员', '0', '-1', '1', '超级管理员');
