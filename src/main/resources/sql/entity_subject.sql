-- ----------------------------
-- Table structure for `entity_subject`
-- ----------------------------
DROP TABLE IF EXISTS `entity_subject`;
CREATE TABLE `entity_subject` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(36) DEFAULT '' COMMENT '学科名称',
  `semester_id` bigint(20) DEFAULT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `fullname` varchar(36) DEFAULT NULL COMMENT '别名',
  `seq` smallint(6) DEFAULT NULL,
  `iconurl` varchar(128) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `subject_index` (`id`,`name`,`fullname`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='学科表';

-- ----------------------------
-- Records of entity_subject
-- ----------------------------
INSERT INTO `entity_subject` VALUES ('1', '语文', '1', '1', '初中语文', '5', 'chinese_20150730.png');
INSERT INTO `entity_subject` VALUES ('2', '语文', '2', '2', '高中语文', '15', 'chinese_20150730.png');
INSERT INTO `entity_subject` VALUES ('3', '数学', '1', '1', '初中数学', '6', 'math_20150730.png');
INSERT INTO `entity_subject` VALUES ('4', '数学', '2', '2', '高中数学', '16', 'math_20150730.png');
INSERT INTO `entity_subject` VALUES ('5', '英语', '1', '1', '初中英语', '7', 'english_20150730.png');
INSERT INTO `entity_subject` VALUES ('6', '英语', '2', '2', '高中英语', '17', 'english_20150730.png');
INSERT INTO `entity_subject` VALUES ('7', '物理', '1', '1', '初中物理', '8', 'physical_20150730.png');
INSERT INTO `entity_subject` VALUES ('8', '物理', '2', '2', '高中物理', '18', 'physical_20150730.png');
INSERT INTO `entity_subject` VALUES ('9', '化学', '1', '1', '初中化学', '9', 'chemical_20150730.png');
INSERT INTO `entity_subject` VALUES ('10', '化学', '2', '2', '高中化学', '19', 'chemical_20150730.png');
INSERT INTO `entity_subject` VALUES ('11', '生物', '1', '1', '初中生物', '10', 'biological_20150730.png');
INSERT INTO `entity_subject` VALUES ('12', '生物', '2', '2', '高中生物', '20', 'biological_20150730.png');
INSERT INTO `entity_subject` VALUES ('13', '历史', '1', '1', '初中历史', '12', 'history_20150730.png');
INSERT INTO `entity_subject` VALUES ('14', '历史', '2', '2', '高中历史', '22', 'history_20150730.png');
INSERT INTO `entity_subject` VALUES ('15', '地理', '1', '1', '初中地理', '13', 'geographic_20150730.png');
INSERT INTO `entity_subject` VALUES ('16', '地理', '2', '2', '高中地理', '23', 'geographic_20150730.png');
INSERT INTO `entity_subject` VALUES ('17', '政治', '1', '1', '初中政治', '11', 'political_20150730.png');
INSERT INTO `entity_subject` VALUES ('18', '政治', '2', '2', '高中政治', '21', 'political_20150730.png');
INSERT INTO `entity_subject` VALUES ('19', '语文', '3', '3', '小学语文', '1', 'chinese_20150730.png');
INSERT INTO `entity_subject` VALUES ('20', '数学', '3', '3', '小学数学', '2', 'math_20150730.png');
INSERT INTO `entity_subject` VALUES ('21', '英语', '3', '3', '小学英语', '3', 'english_20150730.png');
INSERT INTO `entity_subject` VALUES ('22', '家庭教育', '1', '1', '初中家庭教育', '14', null);
INSERT INTO `entity_subject` VALUES ('23', '家庭教育', '2', '2', '高中家庭教育', '24', null);
INSERT INTO `entity_subject` VALUES ('24', '家庭教育', '3', '3', '小学家庭教育', '4', null);