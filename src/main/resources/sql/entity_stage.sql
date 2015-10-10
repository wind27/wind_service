-- ----------------------------
-- Table structure for `entity_stage`
-- ----------------------------
DROP TABLE IF EXISTS `entity_stage`;
CREATE TABLE `entity_stage` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(36) DEFAULT '' COMMENT '学段名称',
  `seq` smallint(6) DEFAULT NULL,
  `generate_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='学段表';

-- ----------------------------
-- Records of entity_stage
-- ----------------------------
INSERT INTO `entity_stage` VALUES ('1', '初中', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `entity_stage` VALUES ('2', '高中', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `entity_stage` VALUES ('3', '小学', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');