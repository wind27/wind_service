-- ----------------------------
-- Table structure for `auth_role`
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` tinyint(4) DEFAULT '1' COMMENT '角色类型：-1、超级角色；1、一般角色',
  `stats` tinyint(4) DEFAULT '0' COMMENT '状态：0、启用；1、停用',
  `domain_id` bigint(20) DEFAULT '1' COMMENT '所属域 id',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_role
-- ----------------------------
INSERT INTO `auth_role` VALUES ('1', '超级管理员', '-1', '0', '1', '超级管理员');