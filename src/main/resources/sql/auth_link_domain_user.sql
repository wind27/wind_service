-- ----------------------------
-- Table structure for `auth_link_domain_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_link_domain_user`;
CREATE TABLE `auth_link_domain_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain_id` bigint(20) DEFAULT NULL COMMENT '域 id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '户用id',
  `user_type` tinyint(4) DEFAULT '1' COMMENT '用户类型：1、运营门户；2、学校门户；3、区域门户；4、教师门户；5、学生门户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_link_domain_user
-- ----------------------------
INSERT INTO `auth_link_domain_user` VALUES ('1', '1', '1', '1');
INSERT INTO `auth_link_domain_user` VALUES ('10', '1', '10', '1');
INSERT INTO `auth_link_domain_user` VALUES ('5', '1', '5', '1');
INSERT INTO `auth_link_domain_user` VALUES ('9', '1', '9', '1');
INSERT INTO `auth_link_domain_user` VALUES ('8', '1', '8', '1');
INSERT INTO `auth_link_domain_user` VALUES ('2', '1', '2', '1');
INSERT INTO `auth_link_domain_user` VALUES ('3', '1', '3', '1');
INSERT INTO `auth_link_domain_user` VALUES ('7', '1', '7', '1');
INSERT INTO `auth_link_domain_user` VALUES ('11', '1', '11', '1');
INSERT INTO `auth_link_domain_user` VALUES ('4', '1', '4', '1');
INSERT INTO `auth_link_domain_user` VALUES ('6', '1', '6', '1');