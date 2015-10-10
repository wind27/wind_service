-- ----------------------------
-- Table structure for `auth_link_admin_subject`
-- ----------------------------
DROP TABLE IF EXISTS `auth_link_admin_subject`;
CREATE TABLE `auth_link_admin_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `subject_id` bigint(20) DEFAULT NULL COMMENT '学科id',
  `grade_type` tinyint(4) DEFAULT NULL COMMENT '学段id',
  `domain_id` bigint(20) DEFAULT '1' COMMENT '所属域 id',
  `user_type` int(4) DEFAULT '1' COMMENT '用户类型：1、运营门户；2、学校门户；3、区域门户',
  PRIMARY KEY (`id`),
  KEY `idx_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_link_admin_subject
-- ----------------------------
INSERT INTO `auth_link_admin_subject` VALUES ('1', '1', '1', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('2', '1', '3', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('3', '1', '5', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('4', '1', '7', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('5', '1', '9', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('6', '1', '11', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('7', '1', '13', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('8', '1', '15', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('9', '1', '17', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('10', '1', '2', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('11', '1', '4', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('12', '1', '6', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('13', '1', '8', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('14', '1', '10', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('15', '1', '12', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('16', '1', '14', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('17', '1', '16', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('18', '1', '18', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('19', '1', '19', '3', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('20', '1', '20', '3', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('21', '1', '21', '3', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('22', '1', '22', '1', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('23', '1', '23', '2', '1', '1');
INSERT INTO `auth_link_admin_subject` VALUES ('24', '1', '24', '3', '1', '1');