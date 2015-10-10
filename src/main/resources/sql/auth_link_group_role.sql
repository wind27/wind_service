-- ----------------------------
-- Table structure for `auth_link_group_role`
-- ----------------------------
DROP TABLE IF EXISTS `auth_link_group_role`;
CREATE TABLE `auth_link_group_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL COMMENT '组id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`role_id`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_link_group_role
-- ----------------------------
INSERT INTO `auth_link_group_role` VALUES ('1', '1', '1');