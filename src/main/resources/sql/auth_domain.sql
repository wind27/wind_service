-- ----------------------------
-- Table structure for `auth_domain`
-- ----------------------------
DROP TABLE IF EXISTS `auth_domain`;
CREATE TABLE `auth_domain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键 id',
  `name` varchar(64) DEFAULT NULL COMMENT '称名',
  `stats` tinyint(4) DEFAULT '0' COMMENT '状态：0、启用；1、禁用',
  `uri` varchar(64) DEFAULT NULL COMMENT '域名 URI',
  `org_id` bigint(20) DEFAULT NULL COMMENT '属所机构id',
  `org_type` tinyint(4) DEFAULT NULL COMMENT '所属机构类型：1、 公立主管方； 2、公立学校；3、集团机构主管方、4、集团机构学校；',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_domain
-- ----------------------------
INSERT INTO `auth_domain` VALUES ('1', '运营平台', '0', null, null, null, '运营平台');