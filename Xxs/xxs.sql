/*
Navicat MySQL Data Transfer

Source Server         : yuechen
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : xxs

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-04-24 20:08:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_name` varchar(10) NOT NULL,
  `admin_dept` varchar(20) DEFAULT NULL,
  `admin_password` varchar(10) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for complaints
-- ----------------------------
DROP TABLE IF EXISTS `complaints`;
CREATE TABLE `complaints` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(20) NOT NULL,
  `comp_event` varchar(100) NOT NULL COMMENT '投诉事件',
  `comp_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `result_sat_rest` int(11) DEFAULT NULL,
  `reult_sat_stu` int(11) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complaints
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=2320 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1000', '菜夹饼', '100', '3', '早餐', '11');
INSERT INTO `food` VALUES ('1001', '肉夹馍', '100', '5', '早餐', '11');
INSERT INTO `food` VALUES ('1002', '卤鸡蛋', '100', '1', '早餐', '11');
INSERT INTO `food` VALUES ('1003', '豆浆', '100', '2', '早餐', '11');
INSERT INTO `food` VALUES ('1004', '豆腐脑', '100', '2', '早餐', '11');
INSERT INTO `food` VALUES ('1005', '小米粥', '100', '2', '粥', '11');
INSERT INTO `food` VALUES ('1006', '八宝粥', '100', '2', '粥', '11');
INSERT INTO `food` VALUES ('1007', '黑米粥', '100', '2', '粥', '11');
INSERT INTO `food` VALUES ('1008', '果味醪糟', '100', '2', '粥', '11');
INSERT INTO `food` VALUES ('1010', '素菜', '102', '13', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1011', '宽粉', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1012', '韭叶粉', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1013', '红薯细分', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1014', '米线', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1015', '手擀粉', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1016', '素卤饭', '102', '7', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1017', '排骨饭', '102', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1018', '红烧肉饭', '102', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1019', '红烧鸡块饭', '102', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1020', '黄焖羊肉饭', '102', '15', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1021', '酱牛肉饭', '102', '15', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1022', '荷叶饼夹菜', '208', '3', '特色小吃', '3');
INSERT INTO `food` VALUES ('1023', '生菜+花干+豆皮+土豆片', '208', '4', '特色小吃', '3');
INSERT INTO `food` VALUES ('1024', '生菜+花干+豆皮+土豆片+鸡蛋', '208', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1025', '生菜+花干+豆皮+土豆片+火腿', '208', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1026', '生菜+花干+豆皮+土豆片+鸡蛋+火腿', '208', '6', '特色小吃', '3');
INSERT INTO `food` VALUES ('1027', '香辣培根（肉）夹饼', '208', '7', '特色小吃', '3');
INSERT INTO `food` VALUES ('1028', '香辣毛肚夹饼', '208', '7', '特色小吃', '3');
INSERT INTO `food` VALUES ('1029', '土豆片+豆皮+海带+宽粉', '208', '8', '特色小吃', '3');
INSERT INTO `food` VALUES ('1030', '香辣土豆片', '208', '0.3', '特色小吃', '3');
INSERT INTO `food` VALUES ('1031', '豆皮', '208', '0.3', '特色小吃', '3');
INSERT INTO `food` VALUES ('1032', '小油饼', '208', '1', '特色小吃', '3');
INSERT INTO `food` VALUES ('1033', '烤花卷', '208', '1', '特色小吃', '3');
INSERT INTO `food` VALUES ('1034', '五香卤鸡蛋', '208', '1', '特色小吃', '3');
INSERT INTO `food` VALUES ('1035', '花干', '208', '1.5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1036', '葱花饼', '208', '2', '特色小吃', '3');
INSERT INTO `food` VALUES ('1037', '玫瑰饼', '208', '2.5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1038', '糖酥饼', '208', '2.5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1039', '红枣小米粥', '208', '2', '粥', '11');
INSERT INTO `food` VALUES ('1040', '八宝醪糟', '208', '2', '粥', '11');
INSERT INTO `food` VALUES ('1041', '黑米燕麦粥', '208', '2', '粥', '11');
INSERT INTO `food` VALUES ('1042', '红枣豆浆', '208', '2', '粥', '11');
INSERT INTO `food` VALUES ('1043', '腊八粥', '208', '3', '粥', '11');
INSERT INTO `food` VALUES ('1044', '冰糖雪梨', '208', '3', '粥', '11');
INSERT INTO `food` VALUES ('1045', '养颜木瓜粥', '208', '4', '粥', '11');
INSERT INTO `food` VALUES ('1046', '荤菜', '209', '13', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1047', '素菜', '209', '13', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1048', '宽粉', '209', '4', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1049', '韭叶粉', '209', '4', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1050', '细粉', '209', '4', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1051', '米线', '209', '4', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1052', '凉皮', '209', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1053', '擀面皮', '209', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1054', '牛筋面', '209', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('1055', '热冬果', '209', '4', '粥', '11');
INSERT INTO `food` VALUES ('1056', '银耳莲子羹', '209', '4', '粥', '11');
INSERT INTO `food` VALUES ('1057', '香葱鲜肉包', '210', '6', '包子', '11');
INSERT INTO `food` VALUES ('1058', '菠菜鸡蛋包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1059', '山野地达包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1060', '香菇白菜包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1061', '青椒火腿包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1062', '酸菜粉条包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1063', '可口洋芋包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1064', '韭菜豆腐包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1065', '西芹木耳包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1066', '香甜豆沙包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1067', '胡萝卜包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('1068', '现磨豆浆', '210', '2', '粥', '11');
INSERT INTO `food` VALUES ('1069', '小米粥', '210', '2', '粥', '11');
INSERT INTO `food` VALUES ('1070', '绿豆粥', '210', '2', '粥', '11');
INSERT INTO `food` VALUES ('1071', '黑米粥', '210', '2', '粥', '11');
INSERT INTO `food` VALUES ('1072', '八宝粥', '210', '2.5', '粥', '11');
INSERT INTO `food` VALUES ('1073', '灰豆粥', '210', '2.5', '粥', '11');
INSERT INTO `food` VALUES ('1074', '甜醅子', '210', '2.5', '粥', '11');
INSERT INTO `food` VALUES ('1075', '果味醪糟', '210', '3', '粥', '11');
INSERT INTO `food` VALUES ('1076', '牛奶鸡蛋醪糟', '210', '6', '粥', '11');
INSERT INTO `food` VALUES ('1077', '一素', '201', '3.5', '快餐', '5');
INSERT INTO `food` VALUES ('1078', '二素', '201', '5', '快餐', '5');
INSERT INTO `food` VALUES ('1079', '三素', '201', '6', '快餐', '5');
INSERT INTO `food` VALUES ('1080', '一荤', '201', '5', '快餐', '5');
INSERT INTO `food` VALUES ('1081', '一荤一素', '201', '6', '快餐', '5');
INSERT INTO `food` VALUES ('1082', '一荤两素', '201', '7', '快餐', '5');
INSERT INTO `food` VALUES ('1083', '二荤', '201', '7', '快餐', '5');
INSERT INTO `food` VALUES ('1084', '二荤一素', '201', '8', '快餐', '5');
INSERT INTO `food` VALUES ('1085', '二荤二素', '201', '10', '快餐', '5');
INSERT INTO `food` VALUES ('1086', '一素', '202', '3.5', '快餐', '5');
INSERT INTO `food` VALUES ('1087', '二素', '202', '5', '快餐', '5');
INSERT INTO `food` VALUES ('1088', '三素', '202', '6', '快餐', '5');
INSERT INTO `food` VALUES ('1089', '一荤', '202', '5', '快餐', '5');
INSERT INTO `food` VALUES ('1090', '一荤一素', '202', '6', '快餐', '5');
INSERT INTO `food` VALUES ('1091', '一荤两素', '202', '7', '快餐', '5');
INSERT INTO `food` VALUES ('1092', '二荤', '202', '7', '快餐', '5');
INSERT INTO `food` VALUES ('1093', '二荤一素', '202', '8', '快餐', '5');
INSERT INTO `food` VALUES ('1094', '二荤二素', '202', '10', '快餐', '5');
INSERT INTO `food` VALUES ('1095', '重庆小面', '202', '6', '面', '4');
INSERT INTO `food` VALUES ('1096', '红烧鸡块面', '202', '8', '面', '4');
INSERT INTO `food` VALUES ('1097', '红烧排骨面', '202', '8', '面', '4');
INSERT INTO `food` VALUES ('1098', '红烧牛肉面', '202', '10', '面', '4');
INSERT INTO `food` VALUES ('1099', '酸汤面', '202', '6', '面', '4');
INSERT INTO `food` VALUES ('1100', '饸烙面', '202', '6', '面', '4');
INSERT INTO `food` VALUES ('1101', '西红柿鸡蛋面', '202', '6', '面', '4');
INSERT INTO `food` VALUES ('1102', '炸酱面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('1103', '酸菜肉丝面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('1104', '香菇鸡蛋面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('1105', '油泼面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('1106', '炒面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('1107', '臊子肉干拌面', '202', '8', '面', '4');
INSERT INTO `food` VALUES ('1108', '腊汁肉拌面', '202', '8', '面', '4');
INSERT INTO `food` VALUES ('1109', '老潼关肉夹馍', '202', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1110', '凉皮', '202', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1111', '米皮', '202', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1112', '酸辣粉', '202', '6', '特色小吃', '3');
INSERT INTO `food` VALUES ('1113', '米线', '202', '6', '特色小吃', '3');
INSERT INTO `food` VALUES ('1114', '一素', '203', '3.5', '快餐', '5');
INSERT INTO `food` VALUES ('1115', '二素', '203', '5', '快餐', '5');
INSERT INTO `food` VALUES ('1116', '三素', '203', '6', '快餐', '5');
INSERT INTO `food` VALUES ('1117', '一荤', '203', '5', '快餐', '5');
INSERT INTO `food` VALUES ('1118', '一荤一素', '203', '6', '快餐', '5');
INSERT INTO `food` VALUES ('1119', '一荤两素', '203', '7', '快餐', '5');
INSERT INTO `food` VALUES ('1120', '二荤', '203', '7', '快餐', '5');
INSERT INTO `food` VALUES ('1121', '二荤一素', '203', '8', '快餐', '5');
INSERT INTO `food` VALUES ('1122', '二荤二素', '203', '10', '快餐', '5');
INSERT INTO `food` VALUES ('1123', '素砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('1124', '方便面砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('1125', '火腿砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('1126', '什锦砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('1127', '鸡腿砂锅', '204', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('1128', '排骨砂锅', '204', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('1129', '鸡块砂锅', '204', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('1130', '羊肉砂锅', '204', '10', '砂锅', '6');
INSERT INTO `food` VALUES ('1131', '牛肉鲜肉水饺', '204', '10', '水饺', '10');
INSERT INTO `food` VALUES ('1132', '大肉鲜肉水饺', '204', '10', '水饺', '10');
INSERT INTO `food` VALUES ('1133', '香菇鲜肉水饺', '204', '10', '水饺', '10');
INSERT INTO `food` VALUES ('1134', '芹菜鲜肉水饺', '204', '10', '水饺', '10');
INSERT INTO `food` VALUES ('1135', '红烧肉面', '204', '10', '面', '4');
INSERT INTO `food` VALUES ('1136', '红烧排骨面', '204', '8', '面', '4');
INSERT INTO `food` VALUES ('1137', '香辣鸡块面', '204', '7', '面', '4');
INSERT INTO `food` VALUES ('1138', '炸酱面', '204', '6', '面', '4');
INSERT INTO `food` VALUES ('1139', '油泼面', '204', '6', '面', '4');
INSERT INTO `food` VALUES ('1140', '香菇肉丝面', '204', '6', '面', '4');
INSERT INTO `food` VALUES ('1141', '西红柿鸡蛋面', '204', '6', '面', '4');
INSERT INTO `food` VALUES ('1142', '臊子面', '204', '5', '面', '4');
INSERT INTO `food` VALUES ('1143', '酸汤面', '204', '5', '面', '4');
INSERT INTO `food` VALUES ('1144', '肉炒刀削面', '204', '8', '面', '4');
INSERT INTO `food` VALUES ('1145', '蛋炒刀削面', '204', '7', '面', '4');
INSERT INTO `food` VALUES ('1146', '素菜砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('1147', '金针菇砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('1148', '千叶豆腐砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('1149', '脆皮肠砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('1150', '鱼豆腐砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('1151', '羊肉砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('1152', '什锦砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('1153', '鸡块砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('1154', '排骨砂锅', '204', '10', '砂锅', '6');
INSERT INTO `food` VALUES ('1155', '全家福砂锅', '204', '12', '砂锅', '6');
INSERT INTO `food` VALUES ('1156', '黄焖鸡', '204', '12', '砂锅', '6');
INSERT INTO `food` VALUES ('1157', '鸡汤面', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('1158', '酸汤面', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('1159', '三鲜面', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('1160', '西红柿鸡蛋面', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('1161', '臊子面', '205', '6', '面', '4');
INSERT INTO `food` VALUES ('1162', '炸酱面', '205', '6', '面', '4');
INSERT INTO `food` VALUES ('1163', '炒拉条', '205', '7', '面', '4');
INSERT INTO `food` VALUES ('1164', '炒刀削', '205', '7', '面', '4');
INSERT INTO `food` VALUES ('1165', '酸辣土豆丝', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('1166', '地三鲜', '205', '6', '面', '4');
INSERT INTO `food` VALUES ('1167', '西红柿鸡蛋干拌', '205', '7', '面', '4');
INSERT INTO `food` VALUES ('1168', '火腿干拌', '205', '7', '面', '4');
INSERT INTO `food` VALUES ('1169', '卤肉拌面', '205', '8', '面', '4');
INSERT INTO `food` VALUES ('1170', '肉臊干拌', '205', '8', '面', '4');
INSERT INTO `food` VALUES ('1171', '大盘鸡', '205', '8', '面', '4');
INSERT INTO `food` VALUES ('1172', '酸辣米线', '205', '5', '米线', '7');
INSERT INTO `food` VALUES ('1173', '麻辣米线', '205', '5', '米线', '7');
INSERT INTO `food` VALUES ('1174', '三鲜米线', '205', '7', '米线', '7');
INSERT INTO `food` VALUES ('1175', '素炒米线', '205', '7', '米线', '7');
INSERT INTO `food` VALUES ('1176', '酸菜炒米线', '205', '7', '米线', '7');
INSERT INTO `food` VALUES ('1177', '鸡蛋炒米线', '205', '8', '米线', '7');
INSERT INTO `food` VALUES ('1178', '鸡丝炒米线', '205', '8', '米线', '7');
INSERT INTO `food` VALUES ('1179', '火腿炒米线', '205', '8', '米线', '7');
INSERT INTO `food` VALUES ('1180', '汉中米皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1181', '黑米皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1182', '擀面皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1183', '酿皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1184', '牛筋面', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1185', '纯面筋', '205', '7', '特色小吃', '3');
INSERT INTO `food` VALUES ('1186', '肉夹馍', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1187', '蜜汁烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('1188', '咖喱烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('1189', '沙拉烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('1190', '麻辣烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('1191', '原味烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('1192', '孜然烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('1193', '红烧肉', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1194', '红烧排骨', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1195', '红烧鸡块', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1196', '红烧丸子', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1197', '各式炒饭', '206', '6', '炒饭', '5');
INSERT INTO `food` VALUES ('1198', '肉末米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('1199', '牛肉米粉', '207', '10', '米粉', '8');
INSERT INTO `food` VALUES ('1200', '金针菇米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('1201', '鱼豆腐米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('1202', '鱼丸米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('1203', '排骨米粉', '207', '9', '米粉', '8');
INSERT INTO `food` VALUES ('1204', '原味米粉', '207', '7', '米粉', '8');
INSERT INTO `food` VALUES ('1205', '酸辣粉', '207', '7', '米粉', '8');
INSERT INTO `food` VALUES ('1206', '笋尖米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('1207', '酸菜米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('1208', '凉拌米粉', '207', '7', '米粉', '8');
INSERT INTO `food` VALUES ('1209', '卤蛋', '207', '1', '米粉', '8');
INSERT INTO `food` VALUES ('1210', '卤猪手', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1211', '卤肉', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1212', '卤排骨', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1213', '卤鸡块', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1214', '卤鸡腿', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1215', '红烧肉', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1216', '卤牛肉', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('1217', '老干妈土豆片', '207', '5.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1218', '盐煎鸡柳', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1219', '土豆回锅肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1220', '香火鸡', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1221', '香辣千叶豆腐炒肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1222', '回锅鸡蛋', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1223', '香辣回锅肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1224', '干煸西兰花', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1225', '干煸菜花', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1226', '西兰花炒肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1227', '虎皮辣子烧茄子', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1228', '香辣素牛排', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1229', '烤肠炒肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1230', '香辣鱼卷', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1231', '糖醋菜花', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1232', '豆干盐煎肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1233', '大盘鸡', '207', '38', '小炒', '9');
INSERT INTO `food` VALUES ('1234', '干锅土豆片', '207', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1235', '香辣千叶豆腐炒肉', '207', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1236', '红烧肉', '207', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1237', '虎皮辣子', '207', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1238', '孜然炒肉', '207', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1239', '香辣牛肉', '207', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1240', '红烧排骨', '207', '24', '小炒', '9');
INSERT INTO `food` VALUES ('1241', '水煮肉片', '207', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1242', '京酱肉丝', '207', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1243', '京酱肉丝', '207', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1244', '土豆丝', '207', '7', '小炒', '9');
INSERT INTO `food` VALUES ('1245', '香辣土豆片', '207', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1246', '锅仔羊肉', '207', '24', '锅仔', '9');
INSERT INTO `food` VALUES ('1247', '锅仔牛肉', '207', '24', '锅仔', '9');
INSERT INTO `food` VALUES ('1248', '什锦锅仔', '207', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('1249', '素锅仔', '207', '14', '锅仔', '9');
INSERT INTO `food` VALUES ('1250', '锅仔鸡块', '207', '18', '锅仔', '9');
INSERT INTO `food` VALUES ('1251', '锅仔排骨', '207', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('1252', '锅仔火腿蟹肉', '207', '18', '锅仔', '9');
INSERT INTO `food` VALUES ('1253', '干锅土豆片18', '301', '14', '干锅', '9');
INSERT INTO `food` VALUES ('1254', '干锅千叶豆腐24', '301', '18', '干锅', '9');
INSERT INTO `food` VALUES ('1255', '干锅排骨虾50', '301', '50', '干锅', '9');
INSERT INTO `food` VALUES ('1256', '干锅蹄花虾50', '301', '50', '干锅', '9');
INSERT INTO `food` VALUES ('1257', '铁板牛肉', '301', '32', '铁板', '9');
INSERT INTO `food` VALUES ('1258', '铁板羊肉30', '301', '30', '铁板', '9');
INSERT INTO `food` VALUES ('1259', '铁板茄子16', '301', '16', '铁板', '9');
INSERT INTO `food` VALUES ('1260', '铁板千叶豆腐24', '301', '24', '铁板', '9');
INSERT INTO `food` VALUES ('1261', '排骨锅仔32', '301', '32', '锅仔', '9');
INSERT INTO `food` VALUES ('1262', '小鸡炖蘑菇锅仔28', '301', '28', '锅仔', '9');
INSERT INTO `food` VALUES ('1263', '酸菜肥牛锅仔32', '301', '32', '锅仔', '9');
INSERT INTO `food` VALUES ('1264', '土豆丝6', '301', '6', '小炒', '9');
INSERT INTO `food` VALUES ('1265', '鱼香茄子14', '301', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1266', '红烧日本豆腐18', '301', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1267', '干煸豆角16', '301', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1268', '蒜蓉油麦菜13', '301', '13', '小炒', '9');
INSERT INTO `food` VALUES ('1269', '宫保鸡丁20', '301', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1270', '回锅肉26', '301', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1271', '孜然羊肉30', '301', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1272', '水煮肉26', '301', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1273', '酸菜鱼20', '301', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1274', '重庆辣子鸡28', '301', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1275', '重庆辣子鱼28', '301', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1276', '酸菜肥牛30', '301', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1277', '豆角烧茄子16', '301', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1278', '农家小炒肉28', '301', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1279', '红烧鱼18', '301', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1280', '炝锅鱼32', '301', '32', '小炒', '9');
INSERT INTO `food` VALUES ('1281', '大盘鸡（小份）38', '301', '38', '小炒', '9');
INSERT INTO `food` VALUES ('1282', '干锅土豆片盖饭7', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1283', '木耳肉片盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1284', '孜然牛肉盖饭10', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1285', '鱼香肉丝盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1286', '老干妈回锅肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1287', '青椒肉丝盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1288', '火腿鸡柳盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1289', '老干妈火腿盖饭7', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1290', '蟹肉火腿盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1291', '豆干炒肉盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1292', '老干妈盐煎肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1293', '火腿炒蛋盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1294', '茶树菇炒肉盖饭9', '301', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1295', '土豆丝盖饭6', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1296', '麻辣豆腐盖饭6', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1297', '老干妈土豆片盖饭6', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1298', '家常豆腐盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1299', '红烧茄子盖饭7', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1300', '干煸龙豆盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1301', '茄子炒肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1302', '鱼香日本豆腐盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1303', '莲花菜炒牛肉盖饭10', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1304', '农家小炒肉盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1305', '辣子回锅肉盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1306', '酸菜粉条肉盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1307', '茄辣西炒肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1308', '老干妈鸡柳盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1309', '油麦菜蛋盖饭7', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1310', '地三鲜炒肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1311', '宫保鸡丁盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1312', '老干妈火腿鸡片盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1313', '回锅肉盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1314', '红烧肉盖饭9', '301', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1315', '白菜回锅肉盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1316', '糖醋里脊盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1317', '土豆片炒肉盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1318', '孜然羊肉盖饭', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1319', '孜然肉盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1320', '千叶豆腐盖饭7', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1321', '玉米鸡丁盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1322', '土豆牛肉盖饭10', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1323', '蒜苔鸡柳盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1324', '汤饸烙面', '302', '6', '面', '4');
INSERT INTO `food` VALUES ('1325', '干饸烙面', '302', '7', '面', '4');
INSERT INTO `food` VALUES ('1326', '炒饸烙面', '302', '8', '面', '4');
INSERT INTO `food` VALUES ('1327', '臊子饸烙面', '302', '8', '面', '4');
INSERT INTO `food` VALUES ('1328', '鸡蛋炒饼', '302', '7', '炒饼', '9');
INSERT INTO `food` VALUES ('1329', '肉炒饼', '302', '8', '炒饼', '9');
INSERT INTO `food` VALUES ('1330', '特色炒面片', '302', '8', '炒饼', '9');
INSERT INTO `food` VALUES ('1331', '烩面片', '302', '6', '炒饼', '9');
INSERT INTO `food` VALUES ('1332', '老干妈土豆片', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1333', '老干妈火腿鸡柳', '302', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1334', '虎皮辣子回锅肉', '302', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1335', '鱼香茄子', '302', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1336', '麻辣豆腐', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1337', '酸菜粉条', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1338', '鱼香肉丝', '302', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1339', '青椒肉丝', '302', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1340', '宫保鸡丁', '302', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1341', '鱼香土豆条', '302', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1342', '老干妈西葫芦', '302', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1343', '神仙豆腐', '302', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1344', '油焖茄子', '302', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1345', '鱼香烘蛋', '302', '15', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1346', '烧土鸡', '302', '35', '小炒', '9');
INSERT INTO `food` VALUES ('1347', '石锅排骨', '302', '35', '小炒', '9');
INSERT INTO `food` VALUES ('1348', '香辣鱿鱼虾', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1349', '特色鱼', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1350', '炝锅鱼', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1351', '素菜', '303', '13', '火锅', '9');
INSERT INTO `food` VALUES ('1352', '荤菜', '303', '13', '火锅', '9');
INSERT INTO `food` VALUES ('1353', '粉', '303', '13', '火锅', '9');
INSERT INTO `food` VALUES ('1354', '粒粒香荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1355', '腊肉荷叶饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1356', '香香肉丝荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1357', '鸡肉荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1358', '荷叶牛肉饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1359', '双菇肉荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1360', '素菜荷叶饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1361', '脆肠荷叶饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1362', '齿留香荷叶饭', '303', '14', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1363', '五色荷叶饭', '303', '8', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1364', '双包菜荷叶饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1365', '三鲜荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1366', '扬州炒饭', '303', '8', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1367', '酱油鸡蛋炒饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1368', '玉米肉丁荷叶饭', '303', '80', '荷叶饭', '5');
INSERT INTO `food` VALUES ('1369', '土豆牛肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1370', '宫爆鸡丁盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1371', '土豆烧牛肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1372', '鸡肉香菇盖饭', '303', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1373', '什锦肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1374', '香菇土豆肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1375', '鱼香肉丝盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1376', '土豆香菇肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1377', '西红柿鸡蛋盖饭', '303', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1378', '木耳蒜薹肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1379', '肉沫茄子盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1380', '土豆鸡块盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1381', '回锅肉丝盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1382', '香菇菜心盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1383', '京酱肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1384', '蒜薹肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1385', '双椒肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1386', '干妈回锅肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1387', '干妈蟹肉段盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1388', '老伙鸡盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1389', '鱼香茄子盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1390', '胡萝卜粉条盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1391', '青椒茄子盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1392', '双椒鸡肉丁盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1393', '老干妈鸡片盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1394', '土豆茄子盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1395', '酸菜炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1396', '白菜粉条盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1397', '苜蓿肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1398', '酸辣土豆丝盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1399', '圆葱炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1400', '香菇肉胡萝卜盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1401', '大杂烩炒肉盖饭7', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1402', '平菇炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1403', '香菇油菜', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1404', '土豆丝', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1405', '木耳鸡蛋炒蒜薹肉', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1406', '圆葱双椒肉', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1407', '西红柿鸡蛋', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1408', '土豆茄子', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1409', '花菜烩土豆片', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1410', '干兰炒粉条', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1411', '大杂烩鸡肉', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1412', '盖椒鱼宽面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('1413', '炝炒土豆丝', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1414', '小炒豆芽粉', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1415', '金针肥牛锅', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('1416', '韭菜炒鸡蛋', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1417', '乐山辣子鸡', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1418', '干锅有机菜花肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1419', '麻婆豆腐', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1420', '炝炒藕片', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1421', '鱼香肉丝', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('1422', '肉沫茄子', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1423', '毛氏红烧肉', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('1424', '蛋炒木耳肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1425', '碗肉干豆腐粉', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1426', '蟹黄小土豆', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1427', '干锅娃娃菜', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1428', '红烧鸡块', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('1429', '宫保鸡丁', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1430', '炝锅鱼', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('1431', '川蜀口味鱼', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('1432', '尖椒土豆片', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1433', '香菇炒油菜', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1434', '家常豆腐', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1435', '竹芭小牛肉', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('1436', '蒜蓉油麦菜', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1437', '鱼香鸡丝', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1438', '清炒笋片', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1439', '炝炒油麦菜', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1440', '芹菜沫汆肉丸', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1441', '香辣鸡脆骨', '303', '36', '小炒', '9');
INSERT INTO `food` VALUES ('1442', '什锦锅仔鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1443', '炝甘兰', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1444', '小土豆荷叶排骨', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('1445', '土豆片炒香菇肉', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1446', '荷叶齿香鸡', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1447', '酸菜炒粉条', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1448', '炝炒空心菜', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1449', '嘎巴锅', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('1450', '蒜薹炒肉', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1451', '干锅土豆片肉', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1452', '鲜菇炒肉片', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1453', '川渝回锅肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1454', '青菜钵钵肉', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1455', '茄子烧土豆片', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1456', '芹菜炒土豆丝', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1457', '青笋烧排骨', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('1458', '干锅千叶豆腐', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1459', '农家小炒肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1460', '什锦锅仔', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1461', '熘炒夹沙', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1462', '红烧小丸子', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1463', '绿豆芽炒韭菜', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1464', '麻辣锅仔鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1465', '土豆烧鸡块', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1466', '锅仔丸子', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1467', '水煮肉片', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1468', '荷叶香芽菜肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1469', '素材锅仔夹沙', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1470', '豆干炒韭菜', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1471', '香香炒脆骨', '303', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1472', '黑椒牛肉杏鲍菇', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('1473', '山药木耳炒鸡肉片', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1474', '川渝粉蒸肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1475', '乡村碗肉', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1476', '宫爆双丁', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1477', '锅仔排骨', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1478', '锅仔米线老火鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1479', '菠菜豆腐汤', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1480', '煎蛋肉炒双椒', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1481', '东北压锅菜', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1482', '竹芭香酥骨', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('1483', '尖椒土豆炒肉片', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1484', '大盘鸡38', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('1485', '葱爆手撕肉', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1486', '韭黄炒肉丝', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1487', '双椒炒脆肉', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1488', '毛血旺', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('1489', '三鲜日本豆腐', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1490', '外婆菜炒鸡肉丁', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1491', '外婆菜炒腊肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1492', '龙腾香辣虾', '303', '48', '小炒', '9');
INSERT INTO `food` VALUES ('1493', '手撕肉炒三样', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1494', '鸡肉炒双菇', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1495', '蛋黄玉米粒', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1496', '泡菜回锅肉', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('1497', '精品酸菜鱼', '303', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1498', '精品酸菜鱼', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('1499', '西红柿鸡蛋汤', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1500', '紫菜蛋黄汤', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1501', '西湖牛肉羹', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1502', '老干妈土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1503', '老干老妈盐煎肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1504', '老干妈回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1505', '老干妈火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1506', '老干妈蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1507', '老干妈鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1508', '老干妈牛肉', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1509', '老干妈鸡蛋炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1510', '老干妈火腿鸡片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1511', '老干妈腊肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1512', '老干妈鸡片', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1513', '老干妈鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1514', '老丁火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1515', '老干妈肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1516', '老干妈青椒肉片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1517', '老干妈豆干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1518', '老干妈豆皮', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1519', '老干妈鱼豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1520', '老干妈土豆丁', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1521', '老丁回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1522', '老丁腊肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1523', '老丁盐煎肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1524', '老丁鸡蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1525', '辣味老干妈鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1526', '辣味老干妈鸡片', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1527', '辣味老干妈回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1528', '老干妈火腿鸡蛋肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1529', '辣味老干妈土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1530', '老干妈豆皮炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1531', '老干妈火腿蟹排', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1532', '老丁鸡丁', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1533', '香辣鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1534', '红三剁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1535', '肉末茄子', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1536', '西红柿回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1537', '西红柿盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1538', '豆皮火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1539', '豆腐火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1540', '香辣鱼豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1541', '香辣鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1542', '香辣鸡片', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1543', '香辣蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1544', '香辣火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1545', '香辣土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1546', '香辣千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1547', '香辣肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1548', '香辣腐竹', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1549', '香辣牛肉', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1550', '香辣土豆丁', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1551', '韭菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1552', '木耳炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1553', '豆腐炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1554', '黄瓜炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1555', '火腿炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1556', '鱼香炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1557', '蟹排炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1558', '青椒炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1559', '西红柿炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1560', '油菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1561', '油麦菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1562', '干煸西兰花烤肠', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1563', '豆皮炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1564', '回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1565', '回锅鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1566', '回锅肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1567', '回锅火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1568', '回锅鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1569', '回锅蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1570', '回锅连花菜', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1571', '豆干炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1572', '豆皮鸡丝', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1573', '豆皮鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1574', '豆干煸鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1575', '辣子豆干', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1576', '辣子肉末', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1577', '豆干盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1578', '豆干回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1579', '豆腐炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1580', '豆皮木耳肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1581', '家常豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1582', '麻婆豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1583', '火腿烧豆腐', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1584', '香辣豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1585', '芹菜豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1586', '青椒豆腐', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1587', '青椒豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1588', '白菜豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1589', '酸菜粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1590', '木耳粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1591', '白菜粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1592', '火腿粉条', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1593', '红萝卜粉条', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1594', '老丁火腿鸡片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1595', '干煸菜花', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1596', '干煸菜花肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1597', '干煸豆角肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1598', '干煸西兰花肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1599', '香辣千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1600', '千叶豆腐肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1601', '素炒千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1602', '家常千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1603', '千叶豆腐火腿', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1604', '千叶豆腐火腿肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1605', '千叶豆腐鸡蛋肉', '304', '9.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1606', '千叶豆腐炒鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1607', '老干妈千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1608', '老干妈千叶豆腐肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1609', '老干妈千叶豆腐火腿', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1610', '老干妈豆皮火腿肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1611', '盐煎肉火腿', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1612', '蒜苔炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1613', '农家小炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1614', '香辣豆皮火腿', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1615', '回锅鱼肉卷鸡蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1616', '粉条炒肉', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1617', '番瓜炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1618', '肉末豆角', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1619', '酸豆角肉末', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1620', '豆角炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1621', '老丁火腿鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1622', '大盘鸡', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1623', '玉米鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1624', '香辣火腿鸡柳', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1625', '千叶豆腐炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1626', '千叶豆腐炒鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1627', '香辣素鸡肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1628', '豆皮盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1629', '回锅千叶豆腐肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1630', '豆皮木耳肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1631', '孜然三丁蟹肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1632', '孜然土豆火腿蟹肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1633', '孜然土豆火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1634', '腐竹火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1635', '老干妈豆皮火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1636', '老丁鸡丁火腿蟹肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1637', '老丁鸡丁火腿鸡蛋', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1638', '干煸菠菜', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1639', '老干妈鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1640', '酸菜土豆丝', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1641', '蒜蓉西兰花', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1642', '韭菜豆干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1643', '韭菜豆干肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1644', '虎皮辣子豆角', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1645', '虎皮辣子茄子', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1646', '虎皮辣子', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1647', '虎皮辣子肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1648', '虎皮辣子豆角肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1649', '虎皮辣子茄子肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1650', '豆角烧茄子', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1651', '红烧日本豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1652', '萝卜干炒腊肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1653', '香辣萝卜干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1654', '萝卜干炒肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1655', '素牛排炒肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1656', '素炒素牛排', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1657', '韭菜炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1658', '豆芽炒肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1659', '豆芽粉条肉', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1660', '豆芽粉条', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1661', '老干妈火腿鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1662', '杏鲍菇炒肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1663', '素炒杏鲍菇', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1664', '苦瓜炒肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1665', '杏鲍菇烤肠', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1666', '豆角茄子肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1667', '苦瓜炒蛋', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1668', '干煸苦瓜', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1669', '素炒苦瓜', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1670', '孜然鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1671', '洋葱鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1672', '洋葱回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1673', '老干妈鱿鱼', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1674', '香辣鱿鱼', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1675', '红烧丸子', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1676', '土豆烧丸子', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1677', '土豆烧茄子', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1678', '黄焖鸡', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1679', '油麦菜回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1680', '老干妈烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1681', '香辣烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1682', '烤肠炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1683', '回锅烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1684', '千叶豆腐烤肠', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1685', '土豆茄子肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('1686', '素炒米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('1687', '蛋炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('1688', '什锦炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('1689', '火腿炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('1690', '烤肠炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('1691', '蟹肉炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('1692', '鸡丝炒米线', '304', '7.5', '米线', '7');
INSERT INTO `food` VALUES ('1693', '五花肉炒米线', '304', '10', '米线', '7');
INSERT INTO `food` VALUES ('1694', '牛肉炒米线', '304', '12', '米线', '7');
INSERT INTO `food` VALUES ('1695', '酸菜汤米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('1696', '麻辣汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('1697', '鸡蛋汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('1698', '鸡肉汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('1699', '丸子汤米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('1700', '红烧肉汤米线', '304', '10', '米线', '7');
INSERT INTO `food` VALUES ('1701', '排骨汤米线', '304', '12', '米线', '7');
INSERT INTO `food` VALUES ('1702', '鸡块烩菜', '304', '10', '烩菜', '9');
INSERT INTO `food` VALUES ('1703', '丸子烩菜', '304', '9', '烩菜', '9');
INSERT INTO `food` VALUES ('1704', '五花肉烩菜', '304', '10', '烩菜', '9');
INSERT INTO `food` VALUES ('1705', '什锦烩菜', '304', '12', '烩菜', '9');
INSERT INTO `food` VALUES ('1706', '牛肉烩菜', '304', '15', '烩菜', '9');
INSERT INTO `food` VALUES ('1707', '青菜火腿豆花羹', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1708', '肉末豆花', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1709', '椒盐杏鲍菇', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1710', '青菜肉末', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1711', '鱼香肉丝', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1712', '宫爆鸡丁', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1713', '西湖牛肉羹', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1714', '鱼香藕饼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1715', '豆花鸡块', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('1716', '家常红烧带鱼', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1717', '过油肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1718', '四川回锅肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1719', '萝卜干炒腊肉', '304', '22', '小炒', '9');
INSERT INTO `food` VALUES ('1720', '水煮肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('1721', '水煮鱼2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1722', '黄焖排骨', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1723', '水煮牛肉', '304', '35', '小炒', '9');
INSERT INTO `food` VALUES ('1724', '糖醋里脊', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1725', '四川腊肉2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1726', '老干妈鸡片', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1727', '老干妈火腿', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1728', '老干妈烤肠', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1729', '地三鲜烧肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1730', '芹菜炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1731', '孜然炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1732', '老干妈火腿鸡蛋', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1733', '老干妈火腿蟹肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1734', '豆芽炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1735', '辣子鸡丁', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1736', '老火鸡', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1737', '杏鲍菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1738', '木耳炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1739', '金针菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1740', '西兰花炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1741', '茄辣西炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1742', '青椒肉丝', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1743', '葱爆肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1744', '玉米鸡丁', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1745', '农家小炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1746', '蒜苔炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1747', '平菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1748', '粉条炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1749', '老干妈回锅肉2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1750', '木须肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1751', '香菇烧肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1752', '虎皮辣子茄子肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1753', '虎皮辣子豆角肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1754', '腐竹烧肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1755', '油麦菜回锅肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('1756', '莲花菜盐煎肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('1757', '豆干炒肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1758', '干煸鸡块', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1759', '红烧肉', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('1760', '小盘鸡3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1761', '黄焖鸡3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1762', '孜然羊肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('1763', '香辣牛肉3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1764', '红烧鲤鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1765', '糖醋鲤鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1766', '糖醋排骨3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1767', '酸菜鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1768', '豆腐鱼', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('1769', '火爆鱿鱼2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1770', '酸辣土豆丝', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1771', '虎皮辣子', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1772', '家常千叶豆腐', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1773', '虎皮辣子豆角', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1774', '虎皮辣子茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1775', '豆角烧茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1776', '土豆烧茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1777', '素炒杏鲍菇', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1778', '韭菜炒豆干', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1779', '素炒苦瓜', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1780', '蒜蓉西兰花', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1781', '干煸西兰花', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1782', '素炒腐竹', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1783', '干煸豆角', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1784', '手撕包菜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1785', '宫保豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1786', '酸菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1787', '老干妈土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1788', '蒜蓉油麦菜', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1789', '香菇油菜', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1790', '白菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1791', '炝炒菠菜', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1792', '豆芽粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1793', '鱼香茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1794', '胡萝卜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1795', '莲花菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1796', '西红柿炒蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1797', '鱼香烘蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1798', '葱花炒蛋', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('1799', '老干妈土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1800', '东乡土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1801', '麻婆豆腐', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1802', '家常豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1803', '鱼香日本豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1804', '茄辣西', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1805', '木耳炒蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('1806', '地三鲜', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1807', '素炒平菇', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1808', '虎皮辣子', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1809', '火腿蟹排锅', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('1810', '酸菜鱼锅仔', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('1811', '鸡块锅仔', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('1812', '什锦锅仔2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1813', '牛肉锅仔3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1814', '排骨锅仔', '304', '35', '小炒', '9');
INSERT INTO `food` VALUES ('1815', '四川泡菜', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1816', '蒜泥黄瓜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1817', '凉拌豆皮', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1818', '姜汁菠菜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('1819', '红油金针菇', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('1820', '雪盖火山', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('1821', '西红柿鸡蛋汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('1822', '虾米紫菜汤', '304', '5', '汤', '1');
INSERT INTO `food` VALUES ('1823', '紫菜蛋花汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('1824', '醪糟汤', '304', '8', '汤', '1');
INSERT INTO `food` VALUES ('1825', '青菜汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('1826', '三鲜汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('1827', '干锅土豆', '304', '16', '干锅', '9');
INSERT INTO `food` VALUES ('1828', '干锅千叶豆腐', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('1829', '干锅菜花', '304', '16', '干锅', '9');
INSERT INTO `food` VALUES ('1830', '干锅西兰花', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('1831', '干锅排骨', '304', '40', '干锅', '9');
INSERT INTO `food` VALUES ('1832', '干锅鸡3', '304', '8', '干锅', '9');
INSERT INTO `food` VALUES ('1833', '干锅牛肉', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('1834', '干锅鱼3', '304', '8', '干锅', '9');
INSERT INTO `food` VALUES ('1835', '干锅鱿鱼3', '304', '8', '干锅', '9');
INSERT INTO `food` VALUES ('1836', '干锅莲藕', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('1837', '干锅年糕', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('1838', '干锅虾', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('1839', '干锅翅中虾', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('1840', '烤鲤鱼3', '304', '8', '烤鱼', '9');
INSERT INTO `food` VALUES ('1841', '烤草鱼4', '304', '8', '烤鱼', '9');
INSERT INTO `food` VALUES ('1842', '炸酱面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1843', '香辣干拌面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1844', '臊子面', '305', '5', '面', '4');
INSERT INTO `food` VALUES ('1845', '臊子麻食', '305', '5', '面', '4');
INSERT INTO `food` VALUES ('1846', '浆水面', '305', '5', '面', '4');
INSERT INTO `food` VALUES ('1847', '酸汤面', '305', '5', '面', '4');
INSERT INTO `food` VALUES ('1848', '鸡丝面', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('1849', '烩面片', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('1850', '烩麻食', '305', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1851', '西红柿鸡蛋面/片', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('1852', '鸡块面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1853', '鸡块面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1854', '酸菜鸡块面 ', '305', '7.5 ', '面', '4');
INSERT INTO `food` VALUES ('1855', '酸菜鸡块面 ', '305', '8.5', '面', '4');
INSERT INTO `food` VALUES ('1856', '香菇肉丝面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1857', '木耳香菇面', '305', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1858', '排骨面 ', '305', '7.5 ', '面', '4');
INSERT INTO `food` VALUES ('1859', '排骨面 ', '305', '8.5', '面', '4');
INSERT INTO `food` VALUES ('1860', '加煎鸡蛋', '305', '1.5', '特色小吃', '3');
INSERT INTO `food` VALUES ('1861', '麻辣米线（汤）', '305', '5.5', '米线', '7');
INSERT INTO `food` VALUES ('1862', '酸菜米线（汤）', '305', '5.5', '米线', '7');
INSERT INTO `food` VALUES ('1863', '火腿米线（汤）', '305', '6', '米线', '7');
INSERT INTO `food` VALUES ('1864', '鸡块米线（汤）', '305', '6.5', '米线', '7');
INSERT INTO `food` VALUES ('1865', '排骨米线', '305', '8', '米线', '7');
INSERT INTO `food` VALUES ('1866', '鸡蛋炒米线', '305', '7', '米线', '7');
INSERT INTO `food` VALUES ('1867', '蛋炒米线', '305', '7', '米线', '7');
INSERT INTO `food` VALUES ('1868', '包菜鸡丝炒米线', '305', '7', '米线', '7');
INSERT INTO `food` VALUES ('1869', '酸菜鸡丝炒米线', '305', '7', '米线', '7');
INSERT INTO `food` VALUES ('1870', '韭菜饺子 ', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('1871', '韭菜饺子 ', '305', '10', '饺子', '10');
INSERT INTO `food` VALUES ('1872', '大葱肉饺子', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('1873', '大葱肉饺子', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('1874', ' 芹菜肉饺子 ', '305', '10', '饺子', '10');
INSERT INTO `food` VALUES ('1875', ' 芹菜肉饺子 ', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('1876', '素三鲜饺子 ', '305', '10', '饺子', '10');
INSERT INTO `food` VALUES ('1877', '素三鲜饺子 ', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('1878', '香菇肉饺子', '305', '10', '饺子', '10');
INSERT INTO `food` VALUES ('1879', '香菇肉饺子', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('1880', '素炒面片', '305', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1881', '素炒拉条', '305', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1882', ' 蛋炒拉条 ', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1883', ' 蛋炒拉条 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1884', '肉炒拉条 ', '305', '7 ', '面', '4');
INSERT INTO `food` VALUES ('1885', '蛋炒面片 ', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1886', '肉炒面片 ', '305', '7 ', '面', '4');
INSERT INTO `food` VALUES ('1887', '蛋炒麻食', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1888', '肉炒麻食 ', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1889', '孜然肉炒面 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1890', '大盘鸡盖面 ', '305', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1891', '蒜苗回锅肉盖面', '305', '9', '面', '4');
INSERT INTO `food` VALUES ('1892', '莲花菜回锅肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1893', '千叶豆腐炒肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1894', '千叶豆腐炒鸡柳盖面', '305', '8.5', '面', '4');
INSERT INTO `food` VALUES ('1895', '香辣千叶豆腐盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1896', '老干妈火腿鸡蛋肉盖面', '305', '9', '面', '4');
INSERT INTO `food` VALUES ('1897', '老干妈鸡柳盖面', '305', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1898', '老干妈鸡蛋盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1899', '老干妈火腿盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1900', '老干妈火腿鸡柳盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1901', '酸辣土豆丝盖面', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('1902', '香辣土豆丝盖面', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('1903', '香辣土豆片盖面', '305', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1904', '麻辣粉条盖面', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('1905', '酸辣粉条盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1906', '酸辣豆干盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1907', '地三鲜盖面', '305', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1908', '地三鲜炒肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1909', '火腿炒肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1910', '火腿炒蛋盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('1911', '孜然鸡柳盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1912', '金针菇炒肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('1913', '千叶豆腐烧排骨盖面', '305', '10', '面', '4');
INSERT INTO `food` VALUES ('1914', '土豆红烧肉盖面', '305', '10', '面', '4');
INSERT INTO `food` VALUES ('1915', '特色鸡汤刀削面', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1916', '炒面片', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1917', '炒猫耳朵（麻食）', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1918', '孜然肉炒面', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1919', '特色鸡块面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1920', '特色红烧肉面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1921', '特色大盘鸡拌面', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1922', '炒拉条', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1923', '炒搓鱼', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1924', '炒刀削面', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1925', '特色排骨面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1926', '特色二合一拌面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1927', '酸汤面', '306', '6', '面', '4');
INSERT INTO `food` VALUES ('1928', '炸酱面', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1929', '三鲜剪刀面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1930', '烩面片', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1931', '素炒面片', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1932', '鸡蛋面片', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1933', '酸菜面片', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1934', '猪肉香菇水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('1935', '猪肉韭菜水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('1936', '韭菜鸡蛋水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('1937', '青椒土豆丝', '306', '6', '面', '4');
INSERT INTO `food` VALUES ('1938', '酸辣白菜', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1939', '白菜粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1940', '醋溜番瓜', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1941', '酸辣笋丝', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1942', '红烧土豆', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1943', '肉沫茄子', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1944', '辣子鸡丁', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1945', '红烧茄子', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1946', '韭菜炒蛋', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1947', '香辣豆皮', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1948', '麻辣粉条', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1949', '土豆回锅肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1950', '豆腐炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1951', '老干妈土豆片', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1952', '茄子炒豆角', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1953', '青椒火腿', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1954', '粉条炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1955', '香辣鸡蛋火腿', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1956', '回锅肉鸡柳', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('1957', '红烧鸡块', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('1958', '红烧排骨', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('1959', '香菇炒肉', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('1960', '酸烂肉拌面', '306', '12', '面', '4');
INSERT INTO `food` VALUES ('1961', '臊子面', '306', '5', '面', '4');
INSERT INTO `food` VALUES ('1962', '浆水面', '306', '5', '面', '4');
INSERT INTO `food` VALUES ('1963', '什锦剪刀面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1964', '烩猫耳朵（麻食）', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1965', '素炒拉条', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1966', '木耳鸡丝面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1967', '酸汤剪刀面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1968', '猪肉白菜水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('1969', '猪肉芹菜水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('1970', '干饺', '306', '12', '面', '4');
INSERT INTO `food` VALUES ('1971', '香辣土豆丝', '306', '6', '面', '4');
INSERT INTO `food` VALUES ('1972', '土豆丝粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1973', '莲花菜粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1974', '孜然土豆片', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1975', '地三鲜', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1976', '青椒肉丝', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1977', '莲花菜回锅肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1978', '孜然牛肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1979', '黄瓜炒蛋', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1980', '鱼香茄子', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1981', '木耳炒蛋', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('1982', '鱼香肉丝', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1983', '宫爆土豆', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1984', '平菇炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1985', '莲花菜炒肉', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1986', '千叶豆腐炒蛋', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1987', '腐竹炒木耳', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('1988', '洋葱炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1989', '韭菜炒蛋', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1990', '葱爆羊肉', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('1991', '腊肠菜花', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('1992', '虎皮辣子红烧肉', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('1993', '卤肉拌面', '306', '11', '面', '4');
INSERT INTO `food` VALUES ('1994', '三鲜面', '306', '6', '面', '4');
INSERT INTO `food` VALUES ('1995', '香菇粉条剪刀面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('1996', '西红柿鸡蛋剪刀面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1997', '烩搓鱼', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1998', '西红柿鸡蛋面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('1999', '酸菜肉丝面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('2000', '臊子剪刀面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2001', '猪肉大葱水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('2002', '三鲜水饺', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('2003', '肉臊子干拌面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2004', '鱼香土豆丝', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('2005', '红萝卜粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('2006', '酸菜粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('2007', '西红柿炒鸡蛋', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2008', '青笋炒木耳', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2009', '菜花炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2010', '茄子炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2011', '茄辣西', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2012', '青椒茄子', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2013', '鱼香茄子丝', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2014', '麻婆豆腐', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2015', '豆角炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2016', '油麦菜炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2017', '大盘鸡拌面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2018', '家常千叶', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('2019', '老干妈千叶豆腐', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('2020', '火腿炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2021', '葱爆肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2022', '老干妈千叶豆腐鸡蛋肉', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2023', '老干妈鸡柳火腿蛋', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2024', '腊肠炒蒜苔', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2025', '农家菜花炒腊肉', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('2026', '土豆烧牛肉', '306', '12', '面', '4');
INSERT INTO `food` VALUES ('2027', '豆皮炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2028', '地三鲜炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2029', '平菇油菜', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2030', '土豆烧茄子', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2031', '白菜豆腐', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2032', '白菜木耳', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2033', '苜蓿肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2034', '宫爆鸡丁', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2035', '蒜茸油麦菜', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('2036', '腐竹炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2037', '香辣肉片', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2038', '蒜苗回锅肉', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2039', '千叶豆腐炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2040', '农家小炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2041', '千叶豆腐炒火腿', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2042', '特色油泼面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('2043', '蒜苔炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2044', '肉沫豆角', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2045', '孜然炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2046', '老干妈鸡柳', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2047', '木耳炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2048', '盐煎肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2049', '酸豆角肉沫', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2050', '土豆红烧肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2051', '孜然土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2052', '回锅土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2053', '青椒火腿', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2054', '香辣火腿', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2055', '盐煎豆干', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2056', '蒜苗回锅肉', '307', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2057', '老干妈鸡片', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2058', '老干妈鸡柳', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2059', '千叶豆腐炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2060', '香辣蟹排', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2061', '土豆片炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2062', '茄子炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2063', '红烧土豆', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2064', '土豆鸡块', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2065', '鱼香豆腐', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2066', '红烧茄子', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2067', '鱼香平菇', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2068', '白菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2069', '白菜粉条炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2070', '莲花菜炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2071', '蒜苔炒鸡蛋', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2072', '玉米鸡丁', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2073', '韭菜鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2074', '火腿鸡柳', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2075', '西兰花炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2076', '酸豆角炒肉沫', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2077', '蒜蓉油麦菜', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2078', '油麦菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2079', '油麦菜炒蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2080', '油菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2081', '糖醋里脊', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2082', '西红柿炒鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2083', '老干妈鱼肉卷', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2084', '豆干盐煎肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2085', '老干妈腐竹炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2086', '老干妈炒素鸡', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2087', '香辣素鸡', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2088', '菜花炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2089', '素鸡炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2090', '西红柿炒菜花', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2091', '蒜苔炒菜花', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2092', '干煸菜花', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2093', '火腿炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2094', '老干妈土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2095', '青椒土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2096', '盐煎火腿', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2097', '盐煎鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2098', '豆干回锅肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2099', '盐煎鸡片', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2100', '老干妈鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2101', '韭菜炒豆皮', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2102', '老干妈火腿鸡蛋', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2103', '火腿豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2104', '蒜苗粉条炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2105', '地三鲜', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2106', '土豆烧丸子', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2107', '土豆烧排骨', '307', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2108', '麻婆豆腐', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2109', '家常豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2110', '香辣鸡丝', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2111', '麻辣肉丝', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2112', '白菜炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2113', '素炒莲花菜', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2114', '宫爆豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2115', '火腿鸡丁', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2116', '韭菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2117', '老干妈鱼豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2118', '蒜蓉西兰花', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2119', '木耳炒粉条', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2120', '木耳炒腐竹', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2121', '腐竹炒鸡蛋', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2122', '腐竹炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2123', '土豆丝', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2124', '辣子鸡丁', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2125', '酸菜炒粉条', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2126', '酸菜粉条炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2127', '青笋炒木耳', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2128', '宫爆鸡丁', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2129', '土豆丝炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2130', '平菇炒油菜', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2131', '香菇豆腐', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2132', '芹菜豆干', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2133', '芹菜炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2134', '鱼香平菇', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2135', '洋葱炒木耳', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2136', '香菇炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2137', '香辣土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2138', '老干妈火腿', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2139', '火腿油菜', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2140', '盐煎肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2141', '回锅肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2142', '香辣鸡片', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2143', '香辣鸡柳', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2144', '老干妈千叶豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2145', '老干妈火腿蟹肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2146', '土豆丝炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2147', '青笋炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2148', '鱼香茄子', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2149', '地三鲜炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2150', '土豆红烧肉', '307', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2151', '红烧丸子', '307', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2152', '鱼香肉丝', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2153', '鱼香鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2154', '酸辣白菜', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2155', '莲花菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2156', '蒜苔炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2157', '土豆鸡丁', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2158', '红萝卜炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2159', '韭菜炒豆干', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2160', '杏鲍菇炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2161', '洋葱炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2162', '洋葱炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2163', '鸡蛋炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2164', '平菇炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2165', '酸菜炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2166', '豆皮炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2167', '豆干炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2168', '黄瓜炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2169', '木耳炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2170', '木耳炒鸡蛋', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2171', '孜然羊肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2172', '孜然炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2173', '大盘鸡', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2174', '木须肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2175', '干煸豆角', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2176', '豆角炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2177', '豆腐炒蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2178', '蛋炒饭', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2179', '牛肉砂锅', '307', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2180', '什锦砂锅', '307', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2181', '金针菇砂锅', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('2182', '鱼卷砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('2183', '排骨砂锅', '307', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('2184', '蟹排', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('2185', '三鲜砂锅', '307', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('2186', '素砂锅', '307', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('2187', '鸡块砂锅', '307', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('2188', '鱼豆腐', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('2189', '香豆腐砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('2190', '方便面砂锅', '307', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('2191', '红烧肉砂锅', '307', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('2192', '火腿砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('2193', '脆皮肠砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('2194', '千叶豆腐砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('2195', '水煮肉片', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('2196', '糖醋里脊', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('2197', '过油肉', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('2198', '酸辣鱿鱼', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('2199', '红烧鸡块', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('2200', '京酱肉丝', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('2201', '宫保鸡丁', '307', '18', '小炒', '9');
INSERT INTO `food` VALUES ('2202', '土豆红烧肉', '307', '22', '小炒', '9');
INSERT INTO `food` VALUES ('2203', '农家红烧肉', '307', '28', '小炒', '9');
INSERT INTO `food` VALUES ('2204', '盐煎肉', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('2205', '麻花回锅肉', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('2206', '回锅肉', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('2207', '西芹肉片', '307', '14', '小炒', '9');
INSERT INTO `food` VALUES ('2208', '青笋肉片', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2209', '干煸鸡块', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('2210', '鱼香肉丝', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2211', '蒜薹肉丝', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2212', '京城爆仔鸡', '307', '25', '小炒', '9');
INSERT INTO `food` VALUES ('2213', '麻花脆皮肠', '307', '18', '小炒', '9');
INSERT INTO `food` VALUES ('2214', '虎皮辣子炒回锅肉', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('2215', '平菇肉片', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2216', '腐竹炒肉', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2217', '青椒炒蛋', '307', '14', '小炒', '9');
INSERT INTO `food` VALUES ('2218', '青椒肉丝', '307', '18', '小炒', '9');
INSERT INTO `food` VALUES ('2219', '莲花菜炒肉', '307', '14', '小炒', '9');
INSERT INTO `food` VALUES ('2220', '香干肉丝', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2221', '粉条炒肉', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2222', '土豆丝炒肉', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('2223', '土豆鸡块', '307', '22', '小炒', '9');
INSERT INTO `food` VALUES ('2224', '红烧排骨', '307', '22', '小炒', '9');
INSERT INTO `food` VALUES ('2225', '木耳炒肉', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2226', '孜然羊肉', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('2227', '酸豆角炒肉沫', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2228', '农家小炒肉', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('2229', '茄辣西', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('2230', '虎皮辣子', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('2231', '香菇油菜', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('2232', '家常豆腐', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('2233', '麻婆豆腐', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('2234', '红烧茄子', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('2235', '干煸豆角', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2236', '干煸油菜', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('2237', '干煸油麦菜', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('2238', '孜然土豆片', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('2239', '东乡土豆片', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('2240', '油麦菜（清炒蒜蓉）', '307', '8', '小炒', '9');
INSERT INTO `food` VALUES ('2241', '土豆丝（酸辣清炒）', '307', '6', '小炒', '9');
INSERT INTO `food` VALUES ('2242', '蒜蓉西兰花', '307', '14', '小炒', '9');
INSERT INTO `food` VALUES ('2243', '酸辣蕨根粉', '307', '10', '凉菜', '9');
INSERT INTO `food` VALUES ('2244', '麻辣牛肉', '307', '28', '凉菜', '9');
INSERT INTO `food` VALUES ('2245', '香油金针菇', '307', '10', '凉菜', '9');
INSERT INTO `food` VALUES ('2246', '红油泡菜', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('2247', '蒜泥黄瓜', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('2248', '油炸花生', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('2249', '五香驴肉', '307', '15', '凉菜', '9');
INSERT INTO `food` VALUES ('2250', '洋葱木耳', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('2251', '青椒变蛋', '307', '10', '凉菜', '9');
INSERT INTO `food` VALUES ('2252', '凉拌三丝', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('2253', '姜汁菠菜', '307', '10', '凉菜', '9');
INSERT INTO `food` VALUES ('2254', '老醋花生米', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('2255', '炝拌莲藕', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('2256', '糖拌西红柿', '307', '6', '凉菜', '9');
INSERT INTO `food` VALUES ('2257', '锅仔牛腩', '307', '26', '锅仔', '9');
INSERT INTO `food` VALUES ('2258', '锅仔鸡块', '307', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('2259', '锅仔鱼头豆腐', '307', '18', '锅仔', '9');
INSERT INTO `food` VALUES ('2260', '锅仔全家福', '307', '24', '锅仔', '9');
INSERT INTO `food` VALUES ('2261', '锅仔腐竹排骨', '307', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('2262', '锅仔川味鱼', '307', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('2263', '锅仔脆皮肠', '307', '18', '锅仔', '9');
INSERT INTO `food` VALUES ('2264', '干锅土豆片', '307', '14', '干锅', '9');
INSERT INTO `food` VALUES ('2265', '干锅千页豆腐', '307', '18', '干锅', '9');
INSERT INTO `food` VALUES ('2266', '铁板羊肉', '307', '28', '铁板', '9');
INSERT INTO `food` VALUES ('2267', '铁板鱿鱼', '307', '24', '铁板', '9');
INSERT INTO `food` VALUES ('2268', '铁板日本豆腐', '307', '18', '铁板', '9');
INSERT INTO `food` VALUES ('2269', '铁板飘香鸡柳', '307', '18', '铁板', '9');
INSERT INTO `food` VALUES ('2270', '干锅菜花', '307', '16', '干锅', '9');
INSERT INTO `food` VALUES ('2271', '干锅虾', '307', '40', '干锅', '9');
INSERT INTO `food` VALUES ('2272', '大盘鸡', '307', '45', '小炒', '9');
INSERT INTO `food` VALUES ('2273', '重庆辣子鸡', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('2274', '串烧鸡柳', '307', '18', '小炒', '9');
INSERT INTO `food` VALUES ('2275', '老干妈火腿片', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2276', '老干妈火腿蟹肉', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('2277', '手擀粉炖排骨', '307', '30', '小炒', '9');
INSERT INTO `food` VALUES ('2278', '酥辣虾', '307', '38', '小炒', '9');
INSERT INTO `food` VALUES ('2279', '香辣鱿鱼虾', '307', '30', '小炒', '9');
INSERT INTO `food` VALUES ('2280', '剁椒鱼', '307', '28', '小炒', '9');
INSERT INTO `food` VALUES ('2281', '炝锅鱼', '307', '38', '小炒', '9');
INSERT INTO `food` VALUES ('2282', '干烧鱼', '307', '22', '小炒', '9');
INSERT INTO `food` VALUES ('2283', '红烧鲤鱼', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('2284', '西红柿鸡蛋汤', '307', '6', '汤', '1');
INSERT INTO `food` VALUES ('2285', '三鲜汤', '307', '6', '汤', '1');
INSERT INTO `food` VALUES ('2286', '醪糟蛋花汤', '307', '6', '汤', '1');
INSERT INTO `food` VALUES ('2287', '酸辣汤', '307', '8', '汤', '1');
INSERT INTO `food` VALUES ('2288', '紫菜蛋花汤', '307', '6', '汤', '1');
INSERT INTO `food` VALUES ('2289', '肉炒拉条 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('2290', '蛋炒面片 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('2291', '肉炒面片 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('2292', '蛋炒麻食', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('2293', '肉炒麻食 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('2294', '孜然肉炒面 ', '305', '8.5', '面', '4');
INSERT INTO `food` VALUES ('2295', '大盘鸡盖面 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('2296', '特色鸡汤刀削面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2297', '炒面片', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2298', '炒猫耳朵（麻食）', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2299', '孜然肉炒面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2300', '特色鸡块面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2301', '特色红烧肉面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2302', '特色大盘鸡拌面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2303', '炒拉条', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2304', '炒搓鱼', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2305', '炒刀削面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('2306', '特色排骨面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2307', '特色二合一拌面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2308', '猪肉香菇水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('2309', '猪肉韭菜水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('2310', '韭菜鸡蛋水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('2311', '猪肉白菜水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('2312', '猪肉芹菜水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('2313', '猪肉大葱水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('2314', '三鲜水饺', '306', '12', '面', '4');
INSERT INTO `food` VALUES ('2315', '肉臊子干拌面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('2316', '过油肉', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('2317', '京酱肉丝', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('2318', '红烧排骨', '307', '28', '小炒', '9');
INSERT INTO `food` VALUES ('2319', '大盘鸡', '307', '50', '小炒', '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodkey
-- ----------------------------
INSERT INTO `foodkey` VALUES ('8', '6E2', '20180422', '102');
INSERT INTO `foodkey` VALUES ('10', 'E7B', '20180422', '102');
INSERT INTO `foodkey` VALUES ('11', '69C', '20180422', '102');
INSERT INTO `foodkey` VALUES ('12', 'AA4', '20180422', '102');

-- ----------------------------
-- Table structure for food_eval
-- ----------------------------
DROP TABLE IF EXISTS `food_eval`;
CREATE TABLE `food_eval` (
  `eval_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(20) NOT NULL,
  `food_id` int(10) NOT NULL,
  `eval_content` varchar(100) NOT NULL COMMENT '食物评价内容',
  `eval_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `eval_fraction` int(11) NOT NULL,
  PRIMARY KEY (`eval_id`),
  KEY `stu_id` (`stu_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `food_eval_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu` (`stu_id`),
  CONSTRAINT `food_eval_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food_eval
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of img
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('8', '1', '1', '1002', '102', '201671020227', '1001', 'q', '2018-04-22 17:43:04', '2018-04-22 17:43:04');
INSERT INTO `indent` VALUES ('10', '0', '1', '1010', '102', '201671020227', '0', '请备注及填写取餐时间后购买！', '2018-04-22 18:40:17', '2018-04-22 18:40:00');
INSERT INTO `indent` VALUES ('11', '0', '1', '1010', '102', '201671020227', '0', '请备注及填写取餐时间后购买！', '2018-04-22 18:40:52', '2018-04-22 18:40:00');
INSERT INTO `indent` VALUES ('12', '13', '4', '1010', '102', '201671020227', '1', '请备注及填写取餐时间后购买！', '2018-04-23 01:11:55', '2018-04-22 18:40:00');

-- ----------------------------
-- Table structure for rent
-- ----------------------------
DROP TABLE IF EXISTS `rent`;
CREATE TABLE `rent` (
  `rent_id` int(11) NOT NULL AUTO_INCREMENT,
  `rent_dept` varchar(20) DEFAULT NULL,
  `stu_id` varchar(20) NOT NULL,
  `rent_describe` varchar(50) NOT NULL COMMENT '描述时间和事件',
  `rent_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `rent_demand` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rent_id`),
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rent
-- ----------------------------

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
INSERT INTO `rest` VALUES ('102', '小唐麻辣烫', '刘来福', '15193165006', '111111', '0', '0', '1', '0', '0');
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
INSERT INTO `rest` VALUES ('301', '天天香', '杜小明', '13239627777', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('302', '多味轩', '张文龙', '15352304362', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('303', '楼中楼', '杨亚兵', '13389481979', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('304', '最后一家', '张学国', '15352010049', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('305', '四面八方', '丁红霞', '15117265189', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('306', '面面聚到', '秦广志', '13893259271', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('307', '学生之家', '王建明', '13919813455', '111111', '0', '0', '3', '0', '0');
INSERT INTO `rest` VALUES ('﻿100', '一楼南', '田师傅', '18893702418', '111111', '0', '0', '1', '0', '0');

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
  CONSTRAINT `rest_evaluation_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `rest` (`rest_id`),
  CONSTRAINT `rest_evaluation_ibfk_3` FOREIGN KEY (`stu_id`) REFERENCES `stu` (`stu_id`),
  CONSTRAINT `rest_evaluation_ibfk_4` FOREIGN KEY (`rest_id`) REFERENCES `rest` (`rest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rest_evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_stu` varchar(10) DEFAULT NULL,
  `stu_id` varchar(20) DEFAULT NULL,
  `song_name` varchar(20) DEFAULT NULL,
  `song_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `song_event` varchar(20) DEFAULT NULL,
  `song_state` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `song_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `stu` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------

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
INSERT INTO `stu` VALUES ('201671020104', 'huyanli', 'huer', '15693164520', '123456', null, null, '824', '计算机', null);
INSERT INTO `stu` VALUES ('201671020227', 'wh', '越尘', '123456', '123456', '0', '0', '', '', '0');
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
