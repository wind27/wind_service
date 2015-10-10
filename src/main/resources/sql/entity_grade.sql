-- ----------------------------
-- Table structure for `entity_grade`
-- ----------------------------
DROP TABLE IF EXISTS `entity_grade`;
CREATE TABLE `entity_grade` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(36) DEFAULT '' COMMENT '学科名称',
  `stage_id` bigint(20) DEFAULT NULL,
  `fullname` varchar(36) DEFAULT NULL COMMENT '别名',
  `seq` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='公立学校年级表';

-- ----------------------------
-- Records of entity_grade
-- ----------------------------
INSERT INTO `entity_grade` VALUES ('1', '一年级', '3', '一年级', '1');
INSERT INTO `entity_grade` VALUES ('2', '二年级', '3', '二年级', '2');
INSERT INTO `entity_grade` VALUES ('3', '三年级', '3', '三年级', '3');
INSERT INTO `entity_grade` VALUES ('4', '四年级', '3', '四年级', '4');
INSERT INTO `entity_grade` VALUES ('5', '五年级', '3', '五年级', '5');
INSERT INTO `entity_grade` VALUES ('6', '六年级', '3', '六年级', '6');
INSERT INTO `entity_grade` VALUES ('7', '七年级', '1', '七年级', '7');
INSERT INTO `entity_grade` VALUES ('8', '八年级', '1', '八年级', '8');
INSERT INTO `entity_grade` VALUES ('9', '九年级', '1', '九年级', '9');
INSERT INTO `entity_grade` VALUES ('10', '高一', '2', '高一', '10');
INSERT INTO `entity_grade` VALUES ('11', '高二', '2', '高二', '11');
INSERT INTO `entity_grade` VALUES ('12', '高三', '2', '高三', '12');