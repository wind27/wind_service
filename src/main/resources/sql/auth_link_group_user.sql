-- ----------------------------
-- Table structure for `auth_link_group_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_link_group_user`;
CREATE TABLE `auth_link_group_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL COMMENT '组id',
  `person_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `user_type` tinyint(4) DEFAULT NULL,
  `domain_id` bigint(20) DEFAULT '1' COMMENT '所属域 id',
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`person_id`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_link_group_user
-- ----------------------------
INSERT INTO `auth_link_group_user` VALUES ('1', '1', '1', '1', '1');