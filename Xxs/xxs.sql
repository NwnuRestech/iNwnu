/*
Navicat MySQL Data Transfer

Source Server         : yuechen
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : xxs

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-03-21 17:44:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(20) NOT NULL,
  `food_restid` varchar(20) DEFAULT NULL,
  `food_money` varchar(10) DEFAULT NULL,
  `food_introduce` varchar(100) DEFAULT NULL,
  `food_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`food_id`),
  KEY `food_type` (`food_type`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`food_type`) REFERENCES `type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=743 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1', '宫保鸡丁', '1', '3', '1', '1');
INSERT INTO `food` VALUES ('2', '小鸡炖蘑菇', '1', '4', '1', '1');
INSERT INTO `food` VALUES ('3', '西红柿炒蛋', '1', '6', '什么鬼', '1');
INSERT INTO `food` VALUES ('4', '鸡汁混沌', '1', '8', '超好吃', '1');
INSERT INTO `food` VALUES ('5', '麻辣烫', '1', '5', '很麻辣', '1');
INSERT INTO `food` VALUES ('6', '水煮牛肉', '304', '35', '小炒', '9');
INSERT INTO `food` VALUES ('7', '糖醋里脊', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('8', '四川腊肉', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('9', '老干妈鸡片', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('10', '老干妈火腿', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('11', '老干妈烤肠', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('12', '地三鲜烧肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('13', '芹菜炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('14', '孜然炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('15', '老干妈火腿鸡蛋', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('16', '老干妈火腿蟹肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('17', '豆芽炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('18', '辣子鸡丁', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('19', '老火鸡', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('20', '杏鲍菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('21', '木耳炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('22', '金针菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('23', '西兰花炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('24', '茄辣西炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('25', '青椒肉丝', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('26', '葱爆肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('27', '玉米鸡丁', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('28', '农家小炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('29', '蒜苔炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('30', '平菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('31', '粉条炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('32', '老干妈回锅肉', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('33', '木须肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('34', '香菇烧肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('35', '虎皮辣子茄子肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('36', '虎皮辣子豆角肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('37', '腐竹烧肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('38', '油麦菜回锅肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('39', '莲花菜盐煎肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('40', '豆干炒肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('41', '干煸鸡块', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('42', '红烧肉', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('43', '小盘鸡', '304', '38', '小炒', '9');
INSERT INTO `food` VALUES ('44', '黄焖鸡', '304', '38', '小炒', '9');
INSERT INTO `food` VALUES ('45', '孜然羊肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('46', '香辣牛肉', '304', '38', '小炒', '9');
INSERT INTO `food` VALUES ('47', '红烧鲤鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('48', '糖醋鲤鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('49', '酸菜鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('50', '豆腐鱼', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('51', '火爆鱿鱼', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('52', '酸辣土豆丝', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('53', '虎皮辣子', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('54', '家常千页豆腐', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('55', '虎皮辣子豆角', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('56', '虎皮辣子茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('57', '豆角烧茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('58', '土豆烧茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('59', '素炒杏鲍菇', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('60', '韭菜炒豆干', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('61', '素炒苦瓜', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('62', '蒜蓉西兰花', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('63', '干煸西兰花', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('64', '素炒腐竹', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('65', '干煸豆角', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('66', '手撕包菜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('67', '宫保豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('68', '酸菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('69', '老干妈土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('70', '蒜蓉油麦菜', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('71', '香菇油菜', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('72', '白菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('73', '炝炒菠菜', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('74', '豆芽粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('75', '鱼香茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('76', '胡萝卜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('77', '莲花菜粉条', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('78', '西红柿炒蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('79', '鱼香烘蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('80', '葱花炒蛋', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('81', '老干妈土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('82', '东乡土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('83', '麻婆豆腐', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('84', '家常豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('85', '鱼香日本豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('86', '茄辣西', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('111', '', null, null, null, null);
INSERT INTO `food` VALUES ('112', '红烧肉饭', '102', '10', '红烧肉盖浇饭', '5');
INSERT INTO `food` VALUES ('113', '黄焖羊肉饭', '102', '15', '黄焖羊肉盖米饭', '5');
INSERT INTO `food` VALUES ('114', '酱牛肉饭', '102', '15', '酱牛肉盖米饭', '5');
INSERT INTO `food` VALUES ('115', '荷叶饼夹菜', '208', '3', '荷叶饼夹菜', '3');
INSERT INTO `food` VALUES ('116', '小油饼', '208', '1', '油饼', '3');
INSERT INTO `food` VALUES ('117', '葱花饼', '208', '2', '葱花饼', '3');
INSERT INTO `food` VALUES ('118', '玫瑰饼', '208', '2.5', '玫瑰饼', '3');
INSERT INTO `food` VALUES ('119', '银耳莲子羹', '209', '4', '银耳莲子羹', '1');
INSERT INTO `food` VALUES ('120', '麻辣烫', '209', '13', '荤素每斤', '2');
INSERT INTO `food` VALUES ('123', '小米粥', '210', '2', '小米粥', '1');
INSERT INTO `food` VALUES ('124', '牛奶鸡蛋醪糟', '210', '6', '牛奶鸡蛋醪糟', '1');
INSERT INTO `food` VALUES ('125', '二荤', '201', '7', '快餐', '5');
INSERT INTO `food` VALUES ('126', '二荤一素', '201', '8', '快餐', '5');
INSERT INTO `food` VALUES ('127', '三素', '201', '6', '快餐', '5');
INSERT INTO `food` VALUES ('128', '三素', '202', '6', '快餐', '5');
INSERT INTO `food` VALUES ('129', '一荤', '202', '5', '快餐', '5');
INSERT INTO `food` VALUES ('130', '二素', '202', '5', '快餐', '5');
INSERT INTO `food` VALUES ('131', '油泼面', '202', '7', '油泼面', '4');
INSERT INTO `food` VALUES ('132', '臊子肉干拌面', '202', '8', '臊子肉干拌面', '4');
INSERT INTO `food` VALUES ('133', '凉皮', '202', '5', '凉皮', '3');
INSERT INTO `food` VALUES ('134', '二荤二素', '203', '10', '快餐', '5');
INSERT INTO `food` VALUES ('135', '一荤二素', '203', '7', '快餐', '5');
INSERT INTO `food` VALUES ('136', '什锦砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('137', '香菇鲜肉水饺', '204', '10', '饺子', '10');
INSERT INTO `food` VALUES ('138', '红烧排骨面', '204', '8', '红烧排骨面', '4');
INSERT INTO `food` VALUES ('139', '炒刀削', '205', '7', '炒刀削面', '4');
INSERT INTO `food` VALUES ('140', '西红柿鸡蛋干拌', '205', '7', '西红柿干拌面', '4');
INSERT INTO `food` VALUES ('141', '酸辣米线', '205', '5', '酸辣米线', '7');
INSERT INTO `food` VALUES ('142', '黑面皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('143', '原味烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('144', '红烧排骨', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('145', '炒饭', '206', '6', '炒饭', '5');
INSERT INTO `food` VALUES ('146', '金针菇米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('147', '牛肉米粉', '207', '10', '米粉', '8');
INSERT INTO `food` VALUES ('148', '卤鸡块饭', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('149', '烤肠炒肉盖饭', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('150', '大盘鸡', '207', '38', '菜', '9');
INSERT INTO `food` VALUES ('151', '什锦锅仔', '207', '20', '菜', '9');
INSERT INTO `food` VALUES ('152', '干锅土豆片', '301', '14', '菜', '9');
INSERT INTO `food` VALUES ('153', '锅仔羊肉', '207', '24', '菜', '9');
INSERT INTO `food` VALUES ('154', '锅仔牛肉', '207', '24', '菜', '9');
INSERT INTO `food` VALUES ('155', '什锦锅仔', '207', '18', '菜', '9');
INSERT INTO `food` VALUES ('156', '素锅仔', '207', '14', '菜', '9');
INSERT INTO `food` VALUES ('157', '锅仔鸡块', '207', '18', '菜', '9');
INSERT INTO `food` VALUES ('158', '锅仔排骨', '207', '20', '菜', '9');
INSERT INTO `food` VALUES ('159', '锅仔火腿蟹肉', '207', '18', '菜', '9');
INSERT INTO `food` VALUES ('160', '干锅土豆片', '301', '14', '菜', '9');
INSERT INTO `food` VALUES ('161', '干锅千叶豆腐脑', '301', '18', '菜', '9');
INSERT INTO `food` VALUES ('162', '干锅排骨虾', '301', '50', '菜', '9');
INSERT INTO `food` VALUES ('163', '干锅蹄花虾', '301', '50', '菜', '9');
INSERT INTO `food` VALUES ('164', '铁板牛肉', '301', '32', '菜', '9');
INSERT INTO `food` VALUES ('165', '铁板羊肉', '301', '30', '菜', '9');
INSERT INTO `food` VALUES ('166', '铁板茄子', '301', '16', '菜', '9');
INSERT INTO `food` VALUES ('167', '铁板千页豆腐', '301', '24', '菜', '9');
INSERT INTO `food` VALUES ('168', '排骨锅仔', '301', '32', '菜', '9');
INSERT INTO `food` VALUES ('169', '小鸡炖蘑菇锅仔', '301', '28', '菜', '9');
INSERT INTO `food` VALUES ('170', '酸菜肥牛锅仔', '301', '32', '菜', '9');
INSERT INTO `food` VALUES ('171', '土豆丝', '301', '6', '菜', '9');
INSERT INTO `food` VALUES ('172', '鱼香茄子', '301', '14', '菜', '9');
INSERT INTO `food` VALUES ('173', '红烧日本豆腐', '301', '18', '菜', '9');
INSERT INTO `food` VALUES ('174', '干煸豆角', '301', '16', '菜', '9');
INSERT INTO `food` VALUES ('175', '蒜蓉油麦菜', '301', '13', '菜', '9');
INSERT INTO `food` VALUES ('176', '宫保鸡丁', '301', '20', '菜', '9');
INSERT INTO `food` VALUES ('177', '回锅肉', '301', '26', '菜', '9');
INSERT INTO `food` VALUES ('178', '孜然羊肉', '301', '30', '菜', '9');
INSERT INTO `food` VALUES ('179', '水煮肉', '301', '26', '菜', '9');
INSERT INTO `food` VALUES ('180', '酸菜鱼', '301', '20', '菜', '9');
INSERT INTO `food` VALUES ('181', '重庆辣子鸡', '301', '28', '菜', '9');
INSERT INTO `food` VALUES ('182', '重庆辣子鱼', '301', '28', '菜', '9');
INSERT INTO `food` VALUES ('183', '酸菜肥牛', '301', '28', '菜', '9');
INSERT INTO `food` VALUES ('184', '豆角烧茄子', '301', '16', '菜', '9');
INSERT INTO `food` VALUES ('185', '农家小炒肉', '301', '28', '菜', '9');
INSERT INTO `food` VALUES ('186', '红烧鱼', '301', '18', '菜', '9');
INSERT INTO `food` VALUES ('187', '炝锅鱼', '301', '32', '菜', '9');
INSERT INTO `food` VALUES ('188', '大盘鸡', '301', '38', '菜', '9');
INSERT INTO `food` VALUES ('190', '干锅土豆片盖饭', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('191', '木耳肉片盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('192', '孜然牛肉盖饭', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('193', '鱼香肉丝盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('194', '老干妈回锅肉盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('195', '青椒肉丝盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('196', '火腿鸡柳盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('197', '老干妈火腿盖饭', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('198', '蟹肉火腿盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('199', '豆干炒肉盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('200', '老干妈盐煎肉盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('201', '火腿炒蛋盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('202', '茶树菇炒肉盖饭', '301', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('203', '土豆丝盖饭', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('204', '麻辣豆腐盖饭', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('205', '老干妈土豆片', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('206', '家常豆腐盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('207', '红烧茄子盖饭', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('208', '干煸龙豆盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('209', '茄子炒肉盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('210', '鱼香日本豆腐盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('211', '莲花菜炒牛肉盖饭', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('212', '农家小炒肉盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('213', '辣子回锅肉盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('214', '酸菜粉条肉盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('215', '茄辣西炒肉盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('216', '老干妈鸡柳盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('217', '油麦菜蛋盖饭', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('218', '地三鲜炒肉盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('219', '宫保鸡丁盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('220', '老干妈火腿鸡片盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('221', '回锅肉盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('222', '红烧肉盖饭', '301', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('223', '白菜回锅肉盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('224', '糖醋里脊盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('225', '土豆片炒肉盖饭', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('226', '孜然羊肉盖饭', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('227', '千页豆腐盖饭', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('228', '玉米鸡丁盖饭', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('229', '土豆牛肉盖饭', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('230', '蒜苔鸡柳盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('231', '汤饸烙面', '302', '6', '面', '4');
INSERT INTO `food` VALUES ('232', '干饸烙面', '302', '7', '面', '4');
INSERT INTO `food` VALUES ('233', '炒饸烙面', '302', '8', '面', '4');
INSERT INTO `food` VALUES ('234', '臊子饸烙面', '302', '8', '面', '4');
INSERT INTO `food` VALUES ('235', '鸡蛋炒饼', '302', '7', '炒饼', '4');
INSERT INTO `food` VALUES ('236', '肉炒饼', '302', '8', '炒饼', '4');
INSERT INTO `food` VALUES ('237', '特色炒面片', '302', '8', '面', '4');
INSERT INTO `food` VALUES ('238', '烩面片', '302', '6', '面', '4');
INSERT INTO `food` VALUES ('239', '老干妈土豆片', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('240', '老干妈火腿鸡柳', '302', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('241', '虎皮辣子炒肉', '302', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('242', '鱼香茄子', '302', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('243', '麻辣豆腐', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('244', '酸菜粉条', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('245', '鱼香肉丝', '302', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('246', '青椒肉丝', '302', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('247', '宫保鸡丁', '302', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('248', '鱼香土豆条', '302', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('249', '老干妈西葫芦', '302', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('250', '神仙豆腐', '302', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('251', '油焖茄子', '302', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('252', '鱼香烘蛋', '302', '15', '盖浇饭', '5');
INSERT INTO `food` VALUES ('253', '烧土鸡', '302', '35', '小炒', '9');
INSERT INTO `food` VALUES ('254', '石锅排骨', '302', '35', '小炒', '9');
INSERT INTO `food` VALUES ('255', '香辣鱿鱼虾', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('256', '特色鱼', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('257', '烧土鸡', '302', '35', '小炒', '9');
INSERT INTO `food` VALUES ('258', '炝锅鱼', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('259', '粒粒香荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('260', '腊肉荷叶饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('261', '香香肉丝荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('262', '荷叶牛肉饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('263', '双菇肉荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('264', '素菜荷叶饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('265', '脆肠荷叶饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('266', '齿留香荷叶饭', '303', '14', '荷叶饭', '5');
INSERT INTO `food` VALUES ('267', '五色荷叶饭', '303', '8', '荷叶饭', '5');
INSERT INTO `food` VALUES ('268', '双包菜荷叶饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('269', '三鲜荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('270', '扬州炒饭', '303', '8', '荷叶饭', '5');
INSERT INTO `food` VALUES ('271', '酱油鸡蛋炒饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('272', '玉米肉丁荷叶饭', '303', '8', '荷叶饭', '5');
INSERT INTO `food` VALUES ('273', '土豆牛肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('274', '宫保鸡丁盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('275', '土豆烧牛肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('276', '鸡肉香菇盖饭', '303', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('277', '什锦肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('278', '香菇土豆肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('279', '鱼香肉丝盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('280', '土豆香菇肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('281', '西红柿鸡蛋盖饭', '303', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('282', '木耳蒜蓉肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('283', '肉沫茄子盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('284', '土豆鸡块盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('285', '回锅肉丝盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('286', '香菇菜心盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('287', '京酱肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('288', '蒜蓉肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('289', '双椒肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('290', '老干妈回锅肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('291', '老干妈蟹肉段盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('292', '老火鸡盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('293', '鱼香茄子盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('294', '胡萝卜粉条盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('295', '青椒茄子盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('296', '双椒鸡肉丁盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('297', '老干妈鸡片盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('298', '土豆茄子盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('299', '酸菜炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('300', '白菜粉条盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('301', '苜蓿肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('302', '酸辣土豆丝盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('303', '圆葱炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('304', '香菇肉胡萝卜盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('305', '大杂烩炒肉盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('306', '平菇炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('307', '香菇油菜盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('308', '土豆丝盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('309', '木耳鸡蛋炒蒜蓉肉盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('310', '圆葱双椒肉盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('311', '西红柿鸡蛋盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('312', '土豆茄子盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('313', '花菜烩土豆片盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('314', '甘蓝炒粉条盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('315', '大杂烩炖鸡肉盖面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('316', '盖椒鱼宽面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('317', '炝炒土豆丝', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('318', '小炒豆芽粉', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('319', '金针肥牛锅', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('320', '韭菜炒鸡蛋', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('321', '乐山辣子鸡', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('322', '干锅有机菜花肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('323', '麻婆豆腐', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('324', '炝炒藕片', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('325', '鱼香肉丝', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('326', '肉沫茄子', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('327', '毛氏红烧肉', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('328', '蛋炒木耳肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('329', '碗肉干豆腐粉', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('330', '蟹黄小土豆', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('331', '干锅娃娃菜', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('332', '红烧鸡块', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('333', '宫保鸡丁', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('334', '炝锅鱼', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('335', '川蜀口味鱼', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('336', '尖椒土豆片', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('337', '香菇炒油菜', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('338', '家常豆腐', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('339', '竹芭小牛肉', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('340', '蒜蓉油麦菜', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('341', '鱼香鸡丝', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('342', '清炒笋片', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('343', '炝炒油麦菜', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('344', '芹菜沫汆肉丸', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('345', '香辣鸡脆骨', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('346', '什锦锅仔鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('347', '炝甘蓝', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('348', '小土豆荷叶排骨', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('349', '荷叶齿香鸡', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('350', '酸菜粉条', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('351', '炝炒空心菜', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('352', '嘎巴锅', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('353', '蒜蓉炒肉', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('354', '干锅土豆片肉', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('355', '鲜菇炒肉片', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('356', '川渝回锅肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('357', '青菜钵钵肉', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('358', '茄子烧土豆片', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('359', '芹菜炒土豆丝', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('360', '青笋烧排骨', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('361', '干锅千页豆腐', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('362', '农家小炒肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('363', '什锦锅仔', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('364', '溜炒夹沙', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('365', '红烧小丸子', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('366', '绿豆芽炒韭菜', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('367', '麻辣锅仔鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('368', '土豆烧鸡块', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('369', '锅仔丸子', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('370', '水煮肉片', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('371', '荷叶香芽菜肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('372', '素菜锅仔夹沙', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('373', '豆干炒韭菜', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('374', '香香炒脆骨', '303', '30', '小炒', '9');
INSERT INTO `food` VALUES ('375', '黑椒牛肉杏鲍菇', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('376', '山药木耳炒鸡肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('377', '川渝粉蒸肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('378', '乡村碗肉', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('379', '宫爆双丁', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('380', '锅仔排骨', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('381', '锅仔米线老火鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('382', '菠菜豆腐汤', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('383', '煎蛋肉炒双椒', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('384', '东北压锅菜', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('385', '竹芭香酥骨', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('386', '尖椒土豆炒肉片', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('387', '大盘鸡', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('388', '葱爆手撕肉', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('389', '韭黄炒肉丝', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('390', '双椒炒脆肉', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('391', '毛血旺', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('392', '三鲜日本豆腐', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('393', '外婆菜炒鸡肉丁', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('394', '外婆菜炒腊肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('395', '龙腾香辣虾', '303', '48', '小炒', '9');
INSERT INTO `food` VALUES ('396', '手撕肉炒三样', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('397', '鸡肉炒双菇', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('398', '蛋黄玉米粒', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('399', '泡菜回锅肉', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('400', '精品酸菜鱼', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('401', '精品酸菜鱼', '303', '30', '小炒', '9');
INSERT INTO `food` VALUES ('402', '西红柿鸡蛋汤', '303', '10', '汤', '1');
INSERT INTO `food` VALUES ('403', '紫菜蛋花汤', '303', '10', '小炒', '1');
INSERT INTO `food` VALUES ('404', '西湖牛肉羹', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('405', '老干妈土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('406', '老干妈盐煎肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('407', '老干妈回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('408', '老干妈火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('409', '老干妈蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('410', '老干妈鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('411', '老干妈牛肉', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('412', '老干妈鸡蛋炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('413', '老干妈火腿鸡片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('414', '老干妈腊肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('415', '老干妈鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('416', '老丁火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('417', '老干妈肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('418', '老干妈青椒肉片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('419', '老干妈豆干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('420', '老干妈豆皮', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('421', '老干妈鱼豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('422', '老干妈土豆丁', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('423', '老丁回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('424', '老丁腊肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('425', '老丁盐煎肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('426', '老丁鸡蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('427', '辣味老干妈鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('428', '辣味老干妈鸡片', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('429', '辣味老干妈回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('430', '老干妈火腿鸡蛋肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('431', '辣味老干妈土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('432', '老干妈豆皮炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('433', '老干妈火腿蟹排', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('434', '老丁鸡丁', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('435', '香辣鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('436', '红三剁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('437', '肉沫茄子', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('438', '西红柿回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('439', '西红柿盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('440', '豆皮火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('441', '豆腐火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('442', '香辣鱼豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('443', '香辣鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('444', '香辣鸡片', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('445', '香辣蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('446', '香辣火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('447', '香辣土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('448', '香辣千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('449', '香辣肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('450', '香辣腐竹', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('451', '香辣牛肉', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('452', '香辣土豆丁', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('453', '韭菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('454', '木耳炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('455', '豆腐炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('456', '黄瓜炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('457', '老干妈土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('458', '火腿炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('459', '鱼香炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('460', '蟹排炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('461', '青椒炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('462', '西红柿炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('463', '油菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('464', '油麦菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('465', '干煸西兰花烤肠', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('466', '豆皮炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('467', '回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('468', '回锅鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('469', '回锅肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('470', '回锅火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('471', '回锅鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('472', '回锅蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('473', '回锅莲花菜', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('474', '豆干炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('475', '豆皮鸡丝', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('476', '老干妈土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('477', '豆皮鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('478', '豆干煸鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('479', '辣子豆干', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('480', '辣子肉沫', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('481', '豆干盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('482', '豆干回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('483', '豆腐炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('484', '豆皮木耳炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('485', '家常豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('486', '麻婆豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('487', '火腿烧豆腐', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('488', '香辣豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('489', '芹菜豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('490', '青椒豆腐', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('491', '青椒豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('492', '白菜豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('493', '酸菜粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('494', '木耳粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('495', '白菜粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('496', '火腿粉条', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('497', '胡萝卜粉条', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('498', '老丁火腿鸡片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('499', '干煸菜花', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('500', '干煸菜花肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('501', '干煸豆角肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('502', '干煸西兰花肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('503', '香辣千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('504', '千叶豆腐肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('505', '素炒千页豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('506', '家常千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('507', '千页豆腐火腿', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('508', '千页豆腐火腿肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('509', '千页豆腐鸡蛋肉', '304', '9.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('510', '千页豆腐炒鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('511', '老干妈千页豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('512', '老干妈千页豆腐肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('513', '老干妈千页豆腐火腿', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('514', '老干妈豆皮火腿肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('515', '盐煎肉火腿', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('516', '蒜苔炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('517', '农家小炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('518', '香辣豆皮火腿', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('519', '回锅鱼肉卷鸡蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('520', '粉条炒肉', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('521', '番瓜炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('522', '肉沫豆角', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('523', '酸豆角肉沫', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('524', '豆角炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('525', '老丁火腿鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('526', '大盘鸡', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('527', '玉米鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('528', '香辣火腿鸡柳', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('529', '千页豆腐炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('530', '千页豆腐炒鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('531', '香辣素鸡肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('532', '豆皮盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('533', '回锅千叶豆腐肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('534', '豆皮木耳肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('535', '孜然三丁蟹肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('536', '孜然土豆火腿蟹肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('537', '孜然土豆火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('538', '腐竹火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('539', '老干妈豆皮火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('540', '老丁鸡丁火腿蟹肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('541', '老丁鸡丁火腿鸡蛋', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('542', '干煸菠菜', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('543', '老干妈鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('544', '酸菜土豆丝', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('545', '蒜蓉西兰花', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('546', '韭菜豆干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('547', '韭菜豆干肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('548', '虎皮辣子豆角', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('549', '虎皮辣子茄子', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('550', '虎皮辣子', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('551', '虎皮辣子肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('552', '虎皮辣子豆角肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('553', '虎皮辣子茄子肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('554', '豆角烧茄子', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('555', '红烧日本豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('556', '萝卜干炒腊肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('557', '香辣萝卜干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('558', '萝卜干炒肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('559', '素牛排炒肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('560', '素炒素牛排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('561', '韭菜炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('562', '豆芽炒肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('563', '豆芽粉条肉', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('564', '豆芽粉条', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('565', '老干妈火腿鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('566', '杏鲍菇炒肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('567', '素炒杏鲍菇', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('568', '苦瓜炒肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('569', '杏鲍菇烤肠', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('570', '豆角茄子肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('571', '苦瓜炒蛋', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('572', '干煸苦瓜', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('573', '素炒苦瓜', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('574', '孜然鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('575', '洋葱鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('576', '洋葱回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('577', '老干妈鱿鱼', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('578', '香辣鱿鱼', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('579', '红烧丸子', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('580', '土豆烧丸子', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('581', '土豆烧茄子', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('582', '黄焖鸡', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('583', '油麦菜回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('584', '老干妈烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('585', '香辣烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('586', '烤肠炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('587', '回锅烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('588', '千页豆腐烤肠', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('589', '土豆茄子肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('590', '素炒米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('591', '蛋炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('592', '什锦炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('593', '火腿炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('594', '烤肠炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('595', '蟹肉炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('596', '鸡丝炒米线', '304', '7.5', '米线', '7');
INSERT INTO `food` VALUES ('597', '五花肉炒米线', '304', '10', '米线', '7');
INSERT INTO `food` VALUES ('598', '牛肉炒米线', '304', '12', '米线', '7');
INSERT INTO `food` VALUES ('599', '酸菜汤米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('600', '麻辣汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('601', '鸡蛋汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('602', '鸡肉汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('603', '丸子汤米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('604', '红烧肉汤米线', '304', '10', '米线', '7');
INSERT INTO `food` VALUES ('605', '排骨汤米线', '304', '12', '米线', '7');
INSERT INTO `food` VALUES ('606', '鸡块烩菜', '304', '10', '烩菜', '9');
INSERT INTO `food` VALUES ('607', '丸子烩菜', '304', '9', '烩菜', '9');
INSERT INTO `food` VALUES ('608', '五花肉烩菜', '304', '10', '米线', '9');
INSERT INTO `food` VALUES ('609', '什锦烩菜', '304', '12', '烩菜', '9');
INSERT INTO `food` VALUES ('610', '牛肉烩菜', '304', '15', '米线', '7');
INSERT INTO `food` VALUES ('611', '青菜火腿豆花羹', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('612', '肉沫豆花', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('613', '椒盐杏鲍菇', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('614', '青菜肉沫', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('615', '鱼香肉丝', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('616', '宫保鸡丁', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('617', '西湖牛肉羹', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('618', '鱼香藕饼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('619', '豆花鸡块', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('620', '家常红烧带鱼', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('621', '过油肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('622', '四川回锅肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('623', '萝卜干炒腊肉', '304', '22', '小炒', '9');
INSERT INTO `food` VALUES ('624', '水煮肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('625', '水煮鱼', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('626', '黄焖排骨', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('627', '水煮牛肉', '304', '35', '小炒', '9');
INSERT INTO `food` VALUES ('628', '糖醋里脊', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('629', '四川腊肉', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('630', '老干妈鸡片', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('631', '老干妈火腿', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('632', '老干妈烤肠', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('633', '地三鲜烧肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('634', '芹菜炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('635', '孜然炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('636', '老干妈火腿鸡蛋', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('637', '老干妈火腿蟹肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('638', '豆芽炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('639', '辣子鸡丁', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('640', '老火鸡', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('641', '杏鲍菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('642', '木耳炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('643', '金针菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('644', '西兰花炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('645', '茄辣西炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('646', '青椒肉丝', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('647', '葱爆肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('648', '玉米鸡丁', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('649', '农家小炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('650', '蒜苔炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('651', '平菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('652', '粉条炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('653', '老干妈回锅肉', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('654', '木须肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('655', '香菇烧肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('656', '虎皮辣子茄子肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('657', '虎皮辣子豆角肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('658', '腐竹烧肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('659', '油麦菜回锅肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('660', '莲花菜盐煎肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('661', '豆干炒肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('662', '干煸鸡块', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('663', '红烧肉', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('664', '小盘鸡', '304', '38', '小炒', '9');
INSERT INTO `food` VALUES ('665', '黄焖鸡', '304', '38', '小炒', '9');
INSERT INTO `food` VALUES ('666', '孜然羊肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('667', '香辣牛肉', '304', '38', '小炒', '9');
INSERT INTO `food` VALUES ('668', '红烧鲤鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('669', '糖醋鲤鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('670', '酸菜鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('671', '豆腐鱼', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('672', '火爆鱿鱼', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('673', '酸辣土豆丝', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('674', '虎皮辣子', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('675', '家常千页豆腐', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('676', '虎皮辣子豆角', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('677', '虎皮辣子茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('678', '豆角烧茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('679', '土豆烧茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('680', '素炒杏鲍菇', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('681', '韭菜炒豆干', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('682', '素炒苦瓜', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('683', '蒜蓉西兰花', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('684', '干煸西兰花', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('685', '素炒腐竹', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('686', '干煸豆角', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('687', '手撕包菜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('688', '宫保豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('689', '酸菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('690', '老干妈土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('691', '蒜蓉油麦菜', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('692', '香菇油菜', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('693', '白菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('694', '炝炒菠菜', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('695', '豆芽粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('696', '鱼香茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('697', '胡萝卜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('698', '莲花菜粉条', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('699', '西红柿炒蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('700', '鱼香烘蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('701', '葱花炒蛋', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('702', '老干妈土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('703', '东乡土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('704', '麻婆豆腐', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('705', '家常豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('706', '鱼香日本豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('707', '茄辣西', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('708', '木耳炒蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('709', '地三鲜', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('710', '素炒平菇', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('711', '火腿蟹排锅', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('712', '酸菜鱼锅仔', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('713', '什锦锅仔', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('714', '牛肉锅仔', '304', '38', '小炒', '9');
INSERT INTO `food` VALUES ('715', '排骨锅仔', '304', '35', '小炒', '9');
INSERT INTO `food` VALUES ('716', '四川泡菜', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('717', '蒜泥黄瓜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('718', '凉拌豆皮', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('719', '姜汁菠菜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('720', '红油金针菇', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('721', '雪盖火山', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('722', '西红柿鸡蛋汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('723', '虾米紫菜汤', '304', '5', '汤', '1');
INSERT INTO `food` VALUES ('724', '紫菜蛋花汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('725', '醪糟汤', '304', '8', '汤', '1');
INSERT INTO `food` VALUES ('726', '青菜汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('727', '三鲜汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('728', '干锅土豆', '304', '16', '干锅', '9');
INSERT INTO `food` VALUES ('729', '干锅千叶豆腐', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('730', '干锅菜花', '304', '16', '干锅', '9');
INSERT INTO `food` VALUES ('731', '干锅西兰花', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('732', '干锅排骨', '304', '40', '干锅', '9');
INSERT INTO `food` VALUES ('733', '干锅鸡', '304', '38', '干锅', '9');
INSERT INTO `food` VALUES ('734', '干锅牛肉', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('735', '干锅鱼', '304', '38', '干锅', '9');
INSERT INTO `food` VALUES ('736', '干锅鱿鱼', '304', '38', '干锅', '9');
INSERT INTO `food` VALUES ('737', '干锅莲藕', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('738', '干锅年糕', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('739', '干锅虾', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('740', '干锅翅中虾', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('741', '烤鲤鱼', '304', '38', '小炒', '9');
INSERT INTO `food` VALUES ('742', '烤草鱼', '304', '48', '小炒', '9');

-- ----------------------------
-- Table structure for foodkey
-- ----------------------------
DROP TABLE IF EXISTS `foodkey`;
CREATE TABLE `foodkey` (
  `foodkey_id` int(11) NOT NULL AUTO_INCREMENT,
  `foodkey_key` varchar(5) DEFAULT NULL,
  `foodkey_date` int(11) DEFAULT NULL,
  `foodkey_restid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`foodkey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodkey
-- ----------------------------
INSERT INTO `foodkey` VALUES ('1', 'C0F', '20180114', '1');
INSERT INTO `foodkey` VALUES ('2', '40A', '20180114', '1');
INSERT INTO `foodkey` VALUES ('3', '2D6', '20180118', '1');
INSERT INTO `foodkey` VALUES ('5', '0DD', '20180117', '1');
INSERT INTO `foodkey` VALUES ('6', '79C', '20180201', '1');
INSERT INTO `foodkey` VALUES ('7', '5CC', '20180202', '1');
INSERT INTO `foodkey` VALUES ('8', '444', '20180112', '1');
INSERT INTO `foodkey` VALUES ('9', '9DC', '20180202', '1');
INSERT INTO `foodkey` VALUES ('10', 'F2D', '20180116', '1');
INSERT INTO `foodkey` VALUES ('12', 'FB9', '20180117', '1');
INSERT INTO `foodkey` VALUES ('13', '0F0', '20180117', '1');
INSERT INTO `foodkey` VALUES ('14', '989', '20180118', '1');
INSERT INTO `foodkey` VALUES ('15', '77C', '20180319', '1');
INSERT INTO `foodkey` VALUES ('16', 'F7D', '20180319', '1');

-- ----------------------------
-- Table structure for img
-- ----------------------------
DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_loc` varchar(50) DEFAULT NULL,
  `img_type` int(11) DEFAULT NULL,
  `img_espid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of img
-- ----------------------------
INSERT INTO `img` VALUES ('1', '0', '1', null);
INSERT INTO `img` VALUES ('2', '0', '2', null);
INSERT INTO `img` VALUES ('3', '0', '3', null);
INSERT INTO `img` VALUES ('4', '0', '4', null);
INSERT INTO `img` VALUES ('5', '0', '0', '201671020227');
INSERT INTO `img` VALUES ('6', '0', '6', '');
INSERT INTO `img` VALUES ('7', '0', '7', '5');
INSERT INTO `img` VALUES ('8', '0', '7', '1');
INSERT INTO `img` VALUES ('9', '0', '7', '2');
INSERT INTO `img` VALUES ('10', '0', '7', '3');
INSERT INTO `img` VALUES ('11', '0', '7', '4');
INSERT INTO `img` VALUES ('12', '0', '7', '6');
INSERT INTO `img` VALUES ('13', '0', '0', '1');
INSERT INTO `img` VALUES ('14', '0', '0', '2');
INSERT INTO `img` VALUES ('15', '0', '0', '3');

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent` (
  `indent_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `indent_money` varchar(11) DEFAULT NULL,
  `indent_stat` int(11) DEFAULT NULL,
  `food_id` int(11) NOT NULL,
  `rest_id` varchar(20) NOT NULL,
  `stu_id` varchar(20) NOT NULL,
  `food_num` int(11) NOT NULL,
  `indent_remk` varchar(50) NOT NULL,
  `indent_foodtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `get_foodtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`indent_id`),
  KEY `stu_id` (`stu_id`),
  KEY `food_id` (`food_id`),
  KEY `rest_id` (`rest_id`),
  CONSTRAINT `indent_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu` (`stu_id`),
  CONSTRAINT `indent_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`),
  CONSTRAINT `indent_ibfk_3` FOREIGN KEY (`rest_id`) REFERENCES `rest` (`rest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('1', '9', '4', '1', '1', '1', '2', '1', '2018-01-15 20:37:50', '2018-01-14 10:36:56');
INSERT INTO `indent` VALUES ('2', '10', '1', '1', '1', '1', '1', '1', '2018-01-16 11:21:56', '2018-01-14 10:38:31');
INSERT INTO `indent` VALUES ('3', '45', '1', '1', '1', '1', '3', '少放辣', '2018-01-16 11:36:31', '2018-01-18 16:10:22');
INSERT INTO `indent` VALUES ('5', '3', '3', '1', '1', '1', '1', '宿舍', '2018-01-16 11:36:14', '2018-01-17 17:06:00');
INSERT INTO `indent` VALUES ('6', '5', '2', '2', '1', '1', '2', '2', '2018-01-16 11:36:12', '2018-02-01 17:06:55');
INSERT INTO `indent` VALUES ('7', '6', '2', '1', '1', '1', '3', '哈哈', '2018-01-16 11:36:18', '2018-02-02 17:07:27');
INSERT INTO `indent` VALUES ('8', '7', '1', '1', '1', '1', '2', '啊啊', '2018-01-16 11:36:22', '2018-01-12 17:10:26');
INSERT INTO `indent` VALUES ('9', '5', '4', '1', '1', '1', '2', '2', '2018-01-16 11:34:23', '2018-02-01 17:06:55');
INSERT INTO `indent` VALUES ('10', '8', '3', '4', '1', '1', '1', '请备注及填写取餐时间后购买！', '2018-01-17 12:15:49', '2018-01-16 22:58:00');
INSERT INTO `indent` VALUES ('12', '8', '4', '4', '1', '201671020227', '1', '能不能快点啊啊啊啊', '2018-01-17 12:16:11', '2018-01-17 13:09:00');
INSERT INTO `indent` VALUES ('13', '8', '4', '4', '1', '201671020227', '1', '给我快快的哦', '2018-03-19 16:42:06', '2018-01-17 20:47:00');
INSERT INTO `indent` VALUES ('14', '7', '1', '420', '1', '201671020227', '1', '尽快谢谢', '2018-01-18 15:50:01', '2018-01-18 16:49:00');
INSERT INTO `indent` VALUES ('15', '5', '1', '133', '1', '201671020227', '1', '我很想吃', '2018-03-19 16:40:49', '2018-03-19 16:39:00');
INSERT INTO `indent` VALUES ('16', '0', '1', '133', '1', '201671020227', '0', '请备注及填写取餐时间后购买！', '2018-03-19 16:40:52', '2018-03-19 16:40:00');

-- ----------------------------
-- Table structure for rest
-- ----------------------------
DROP TABLE IF EXISTS `rest`;
CREATE TABLE `rest` (
  `rest_id` varchar(20) NOT NULL,
  `rest_name` varchar(20) DEFAULT NULL,
  `rest_peoplename` varchar(10) DEFAULT NULL,
  `rest_tel` varchar(20) DEFAULT NULL,
  `rest_password` varchar(20) DEFAULT NULL,
  `rest_garde` int(11) DEFAULT '0',
  `rest_credit` int(11) DEFAULT '0',
  `rest_loc` int(11) DEFAULT '0',
  `rest_hot` int(11) DEFAULT '0',
  `rest_money` int(11) DEFAULT '0',
  PRIMARY KEY (`rest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rest
-- ----------------------------
INSERT INTO `rest` VALUES ('1', '四面八芳', '12', '1', '123456', '0', '0', '0', '0', '0');
INSERT INTO `rest` VALUES ('102', '小唐麻辣烫', '刘来福', '15193165006', '111111', '0', '0', '1', '0', '0');
INSERT INTO `rest` VALUES ('2', '天天快餐', null, null, '123456', '0', '0', '0', '0', '0');
INSERT INTO `rest` VALUES ('201', '唯美快餐', '王晓军', '13893164724', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('202', '西北快餐', '豆明明', '15193128051', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('203', '蜀香快餐', '冯先强', '13239620898', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('204', '山西食府', '贾云岗', '13519498900', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('205', '城固老味', '薛存明', '13669307370', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('206', '金城拌饭', '耿宝红', '15117279859', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('207', '湖南米粉', '姚孙喜', '13659429957', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('208', '陇原小苑', '候霞霞', '15002533633', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('209', '成都麻辣烫', '耿文业', '13919888578', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('210', '天津味道', '杨敏娜', '17789605570', '111111', '0', '0', '2', '0', '0');
INSERT INTO `rest` VALUES ('3', '最后一家', null, null, 'asdasda', '0', '0', '0', '6', '0');
INSERT INTO `rest` VALUES ('301', '天天香', '杜小明', '13239627777', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('302', '多味轩', '张文龙', '15352304362', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('303', '楼中楼', '杨亚兵', '13389481979', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('304', '最后一家', '张学国', '15352010049', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('305', '四面八方', '丁红霞', '15117265189', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('306', '面面聚到', '秦广志', '13893259271', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('307', '学生之家', '王建明', '13919813455', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('4', '港岛咖喱', null, null, '123456', '0', '0', '0', '1', '0');
INSERT INTO `rest` VALUES ('5', '张先生的店', null, null, '12wads', '0', '0', '0', '8', '0');
INSERT INTO `rest` VALUES ('6', '唯美快餐', '张三', '15639651234', '123456', '5', '2', '3', '4', '0');
INSERT INTO `rest` VALUES ('9', '最后一家', '陈先生', '1366', '123456', '123', '123', '123', '123', '123');

-- ----------------------------
-- Table structure for rest_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `rest_evaluation`;
CREATE TABLE `rest_evaluation` (
  `eval_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(20) DEFAULT NULL,
  `rest_id` varchar(10) DEFAULT NULL,
  `eval_content` varchar(100) NOT NULL,
  `eval_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `eval_fraction` int(11) DEFAULT NULL,
  PRIMARY KEY (`eval_id`),
  KEY `stu_id` (`stu_id`),
  KEY `rest_id` (`rest_id`),
  CONSTRAINT `rest_evaluation_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu` (`stu_id`),
  CONSTRAINT `rest_evaluation_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `rest` (`rest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rest_evaluation
-- ----------------------------
INSERT INTO `rest_evaluation` VALUES ('1', '201671020227', '302', '多味轩真好吃', '2018-01-18 16:26:56', '3');
INSERT INTO `rest_evaluation` VALUES ('2', '1', '302', '多味轩真难吃', '2018-01-18 16:27:25', '4');
INSERT INTO `rest_evaluation` VALUES ('3', '201671020227', '302', 'åå', '2018-01-18 18:01:50', '0');
INSERT INTO `rest_evaluation` VALUES ('4', '201671020227', '302', 'i am hungerttsndcb', '2018-01-18 18:02:19', '0');
INSERT INTO `rest_evaluation` VALUES ('5', '201671020227', '202', '啦啦啦', '2018-03-19 16:35:50', '0');
INSERT INTO `rest_evaluation` VALUES ('6', '201671020227', '202', '哈哈哈哈', '2018-03-19 16:35:58', '0');

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `stu_id` varchar(20) NOT NULL,
  `stu_name` varchar(10) NOT NULL,
  `stu_nickname` varchar(10) NOT NULL,
  `stu_tel` varchar(20) NOT NULL,
  `stu_password` varchar(20) NOT NULL,
  `stu_grade` int(11) DEFAULT NULL,
  `stu_credit` int(11) DEFAULT NULL,
  `stu_dorm` varchar(30) DEFAULT NULL,
  `stu_dept` varchar(30) DEFAULT NULL,
  `stu_money` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES ('1', '路人甲', '甲甲甲', '1366', '123', '0', '0', 'beijin', '0', '0');
INSERT INTO `stu` VALUES ('123', 'wh', '123', '123', '123456', '0', '0', '', '', '0');
INSERT INTO `stu` VALUES ('2', 'bb', 'bb', '13667921886', '123456', '0', '0', '', '', '0');
INSERT INTO `stu` VALUES ('201671', 'wh', 'wh', '13667921886', '123456', '0', '0', '', '', '0');
INSERT INTO `stu` VALUES ('201671020104', 'huyanli', 'huer', '15693164520', '123456', null, null, '824', '计算机', null);
INSERT INTO `stu` VALUES ('201671020227', 'wh', '越尘', '123456', '123456', '0', '0', '', '', '0');
INSERT INTO `stu` VALUES ('201672', 'wh', 'wh', '13667921886', '123456', '0', '0', '', '', '0');
INSERT INTO `stu` VALUES ('201673', 'wh', 'wh', '13667921886', '123456', '0', '0', '', '', '0');
INSERT INTO `stu` VALUES ('201674', 'wh', 'wh', '13667921886', '123456', '0', '0', '', '', '0');
INSERT INTO `stu` VALUES ('3', 'djk2', 'djk2', '123456484564', '1234567', null, null, '827', '文学院', null);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(10) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '汤');
INSERT INTO `type` VALUES ('2', '麻辣烫');
INSERT INTO `type` VALUES ('3', '小吃');
INSERT INTO `type` VALUES ('4', '面');
INSERT INTO `type` VALUES ('5', '米饭');
INSERT INTO `type` VALUES ('6', '砂锅');
INSERT INTO `type` VALUES ('7', '米线');
INSERT INTO `type` VALUES ('8', '米粉');
INSERT INTO `type` VALUES ('9', '菜');
INSERT INTO `type` VALUES ('10', '饺子');
INSERT INTO `type` VALUES ('11', '早餐');
