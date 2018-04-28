/*
Navicat MySQL Data Transfer

Source Server         : fff
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : xxs

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-04-28 20:31:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
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
-- Table structure for `complaints`
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
-- Table structure for `favorite`
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(20) NOT NULL,
  `food_money` varchar(10) NOT NULL,
  `fav_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fav_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorite
-- ----------------------------

-- ----------------------------
-- Table structure for `food`
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
) ENGINE=InnoDB AUTO_INCREMENT=6172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1000', '肉夹馍', '100', '5', '早餐', '11');
INSERT INTO `food` VALUES ('4853', '菜夹饼', '100', '3', '早餐', '11');
INSERT INTO `food` VALUES ('4854', '卤鸡蛋', '100', '1', '早餐', '11');
INSERT INTO `food` VALUES ('4855', '豆浆', '100', '2', '早餐', '11');
INSERT INTO `food` VALUES ('4856', '豆腐脑', '100', '2', '早餐', '11');
INSERT INTO `food` VALUES ('4857', '小米粥', '100', '2', '粥', '11');
INSERT INTO `food` VALUES ('4858', '八宝粥', '100', '2', '粥', '11');
INSERT INTO `food` VALUES ('4859', '黑米粥', '100', '2', '粥', '11');
INSERT INTO `food` VALUES ('4860', '果味醪糟', '100', '2', '粥', '11');
INSERT INTO `food` VALUES ('4861', '荤菜', '102', '13', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4862', '素菜', '102', '13', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4863', '宽粉', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4864', '韭叶粉', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4865', '红薯细分', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4866', '米线', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4867', '手擀粉', '102', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4868', '素卤饭', '102', '7', '卤肉饭', '5');
INSERT INTO `food` VALUES ('4869', '排骨饭', '102', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('4870', '红烧肉饭', '102', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('4871', '红烧鸡块饭', '102', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('4872', '黄焖羊肉饭', '102', '15', '卤肉饭', '5');
INSERT INTO `food` VALUES ('4873', '酱牛肉饭', '102', '15', '卤肉饭', '5');
INSERT INTO `food` VALUES ('4874', '荷叶饼夹菜', '208', '3', '特色小吃', '3');
INSERT INTO `food` VALUES ('4875', '生菜+花干+豆皮+土豆片', '208', '4', '特色小吃', '3');
INSERT INTO `food` VALUES ('4876', '生菜+花干+豆皮+土豆片+鸡蛋', '208', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('4877', '生菜+花干+豆皮+土豆片+火腿', '208', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('4878', '生菜+花干+豆皮+土豆片+鸡蛋+火腿', '208', '6', '特色小吃', '3');
INSERT INTO `food` VALUES ('4879', '香辣培根（肉）夹饼', '208', '7', '特色小吃', '3');
INSERT INTO `food` VALUES ('4880', '香辣毛肚夹饼', '208', '7', '特色小吃', '3');
INSERT INTO `food` VALUES ('4881', '土豆片+豆皮+海带+宽粉', '208', '8', '特色小吃', '3');
INSERT INTO `food` VALUES ('4882', '香辣土豆片', '208', '0.3', '特色小吃', '3');
INSERT INTO `food` VALUES ('4883', '豆皮', '208', '0.3', '特色小吃', '3');
INSERT INTO `food` VALUES ('4884', '小油饼', '208', '1', '特色小吃', '3');
INSERT INTO `food` VALUES ('4885', '烤花卷', '208', '1', '特色小吃', '3');
INSERT INTO `food` VALUES ('4886', '五香卤鸡蛋', '208', '1', '特色小吃', '3');
INSERT INTO `food` VALUES ('4887', '花干', '208', '1.5', '特色小吃', '3');
INSERT INTO `food` VALUES ('4888', '葱花饼', '208', '2', '特色小吃', '3');
INSERT INTO `food` VALUES ('4889', '玫瑰饼', '208', '2.5', '特色小吃', '3');
INSERT INTO `food` VALUES ('4890', '糖酥饼', '208', '2.5', '特色小吃', '3');
INSERT INTO `food` VALUES ('4891', '红枣小米粥', '208', '2', '粥', '11');
INSERT INTO `food` VALUES ('4892', '八宝醪糟', '208', '2', '粥', '11');
INSERT INTO `food` VALUES ('4893', '黑米燕麦粥', '208', '2', '粥', '11');
INSERT INTO `food` VALUES ('4894', '红枣豆浆', '208', '2', '粥', '11');
INSERT INTO `food` VALUES ('4895', '腊八粥', '208', '3', '粥', '11');
INSERT INTO `food` VALUES ('4896', '冰糖雪梨', '208', '3', '粥', '11');
INSERT INTO `food` VALUES ('4897', '养颜木瓜粥', '208', '4', '粥', '11');
INSERT INTO `food` VALUES ('4898', '荤菜', '209', '13', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4899', '素菜', '209', '13', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4900', '宽粉', '209', '4', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4901', '韭叶粉', '209', '4', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4902', '细粉', '209', '4', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4903', '米线', '209', '4', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4904', '凉皮', '209', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4905', '擀面皮', '209', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4906', '牛筋面', '209', '5', '麻辣烫', '2');
INSERT INTO `food` VALUES ('4907', '热冬果', '209', '4', '粥', '11');
INSERT INTO `food` VALUES ('4908', '银耳莲子羹', '209', '4', '粥', '11');
INSERT INTO `food` VALUES ('4909', '香葱鲜肉包', '210', '6', '包子', '11');
INSERT INTO `food` VALUES ('4910', '菠菜鸡蛋包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4911', '山野地达包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4912', '香菇白菜包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4913', '青椒火腿包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4914', '酸菜粉条包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4915', '可口洋芋包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4916', '韭菜豆腐包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4917', '西芹木耳包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4918', '香甜豆沙包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4919', '胡萝卜包', '210', '5', '包子', '11');
INSERT INTO `food` VALUES ('4920', '现磨豆浆', '210', '2', '粥', '11');
INSERT INTO `food` VALUES ('4921', '小米粥', '210', '2', '粥', '11');
INSERT INTO `food` VALUES ('4922', '绿豆粥', '210', '2', '粥', '11');
INSERT INTO `food` VALUES ('4923', '黑米粥', '210', '2', '粥', '11');
INSERT INTO `food` VALUES ('4924', '八宝粥', '210', '2.5', '粥', '11');
INSERT INTO `food` VALUES ('4925', '灰豆粥', '210', '2.5', '粥', '11');
INSERT INTO `food` VALUES ('4926', '甜醅子', '210', '2.5', '粥', '11');
INSERT INTO `food` VALUES ('4927', '果味醪糟', '210', '3', '粥', '11');
INSERT INTO `food` VALUES ('4928', '牛奶鸡蛋醪糟', '210', '6', '粥', '11');
INSERT INTO `food` VALUES ('4929', '一素', '201', '3.5', '快餐', '5');
INSERT INTO `food` VALUES ('4930', '二素', '201', '5', '快餐', '5');
INSERT INTO `food` VALUES ('4931', '三素', '201', '6', '快餐', '5');
INSERT INTO `food` VALUES ('4932', '一荤', '201', '5', '快餐', '5');
INSERT INTO `food` VALUES ('4933', '一荤一素', '201', '6', '快餐', '5');
INSERT INTO `food` VALUES ('4934', '一荤两素', '201', '7', '快餐', '5');
INSERT INTO `food` VALUES ('4935', '二荤', '201', '7', '快餐', '5');
INSERT INTO `food` VALUES ('4936', '二荤一素', '201', '8', '快餐', '5');
INSERT INTO `food` VALUES ('4937', '二荤二素', '201', '10', '快餐', '5');
INSERT INTO `food` VALUES ('4938', '一素', '202', '3.5', '快餐', '5');
INSERT INTO `food` VALUES ('4939', '二素', '202', '5', '快餐', '5');
INSERT INTO `food` VALUES ('4940', '三素', '202', '6', '快餐', '5');
INSERT INTO `food` VALUES ('4941', '一荤', '202', '5', '快餐', '5');
INSERT INTO `food` VALUES ('4942', '一荤一素', '202', '6', '快餐', '5');
INSERT INTO `food` VALUES ('4943', '一荤两素', '202', '7', '快餐', '5');
INSERT INTO `food` VALUES ('4944', '二荤', '202', '7', '快餐', '5');
INSERT INTO `food` VALUES ('4945', '二荤一素', '202', '8', '快餐', '5');
INSERT INTO `food` VALUES ('4946', '二荤二素', '202', '10', '快餐', '5');
INSERT INTO `food` VALUES ('4947', '重庆小面', '202', '6', '面', '4');
INSERT INTO `food` VALUES ('4948', '红烧鸡块面', '202', '8', '面', '4');
INSERT INTO `food` VALUES ('4949', '红烧排骨面', '202', '8', '面', '4');
INSERT INTO `food` VALUES ('4950', '红烧牛肉面', '202', '10', '面', '4');
INSERT INTO `food` VALUES ('4951', '酸汤面', '202', '6', '面', '4');
INSERT INTO `food` VALUES ('4952', '饸烙面', '202', '6', '面', '4');
INSERT INTO `food` VALUES ('4953', '西红柿鸡蛋面', '202', '6', '面', '4');
INSERT INTO `food` VALUES ('4954', '炸酱面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('4955', '酸菜肉丝面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('4956', '香菇鸡蛋面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('4957', '油泼面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('4958', '炒面', '202', '7', '面', '4');
INSERT INTO `food` VALUES ('4959', '臊子肉干拌面', '202', '8', '面', '4');
INSERT INTO `food` VALUES ('4960', '腊汁肉拌面', '202', '8', '面', '4');
INSERT INTO `food` VALUES ('4961', '老潼关肉夹馍', '202', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('4962', '凉皮', '202', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('4963', '米皮', '202', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('4964', '酸辣粉', '202', '6', '特色小吃', '3');
INSERT INTO `food` VALUES ('4965', '米线', '202', '6', '特色小吃', '3');
INSERT INTO `food` VALUES ('4966', '一素', '203', '3.5', '快餐', '5');
INSERT INTO `food` VALUES ('4967', '二素', '203', '5', '快餐', '5');
INSERT INTO `food` VALUES ('4968', '三素', '203', '6', '快餐', '5');
INSERT INTO `food` VALUES ('4969', '一荤', '203', '5', '快餐', '5');
INSERT INTO `food` VALUES ('4970', '一荤一素', '203', '6', '快餐', '5');
INSERT INTO `food` VALUES ('4971', '一荤两素', '203', '7', '快餐', '5');
INSERT INTO `food` VALUES ('4972', '二荤', '203', '7', '快餐', '5');
INSERT INTO `food` VALUES ('4973', '二荤一素', '203', '8', '快餐', '5');
INSERT INTO `food` VALUES ('4974', '二荤二素', '203', '10', '快餐', '5');
INSERT INTO `food` VALUES ('4975', '素砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('4976', '方便面砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('4977', '火腿砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('4978', '什锦砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('4979', '鸡腿砂锅', '204', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('4980', '排骨砂锅', '204', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('4981', '鸡块砂锅', '204', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('4982', '羊肉砂锅', '204', '10', '砂锅', '6');
INSERT INTO `food` VALUES ('4983', '牛肉鲜肉水饺', '204', '10', '水饺', '10');
INSERT INTO `food` VALUES ('4984', '大肉鲜肉水饺', '204', '10', '水饺', '10');
INSERT INTO `food` VALUES ('4985', '香菇鲜肉水饺', '204', '10', '水饺', '10');
INSERT INTO `food` VALUES ('4986', '芹菜鲜肉水饺', '204', '10', '水饺', '10');
INSERT INTO `food` VALUES ('4987', '红烧肉面', '204', '10', '面', '4');
INSERT INTO `food` VALUES ('4988', '红烧排骨面', '204', '8', '面', '4');
INSERT INTO `food` VALUES ('4989', '香辣鸡块面', '204', '7', '面', '4');
INSERT INTO `food` VALUES ('4990', '炸酱面', '204', '6', '面', '4');
INSERT INTO `food` VALUES ('4991', '油泼面', '204', '6', '面', '4');
INSERT INTO `food` VALUES ('4992', '香菇肉丝面', '204', '6', '面', '4');
INSERT INTO `food` VALUES ('4993', '西红柿鸡蛋面', '204', '6', '面', '4');
INSERT INTO `food` VALUES ('4994', '臊子面', '204', '5', '面', '4');
INSERT INTO `food` VALUES ('4995', '酸汤面', '204', '5', '面', '4');
INSERT INTO `food` VALUES ('4996', '肉炒刀削面', '204', '8', '面', '4');
INSERT INTO `food` VALUES ('4997', '蛋炒刀削面', '204', '7', '面', '4');
INSERT INTO `food` VALUES ('4998', '素菜砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('4999', '金针菇砂锅', '204', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('5000', '千叶豆腐砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('5001', '脆皮肠砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('5002', '鱼豆腐砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('5003', '羊肉砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('5004', '什锦砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('5005', '鸡块砂锅', '204', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('5006', '排骨砂锅', '204', '10', '砂锅', '6');
INSERT INTO `food` VALUES ('5007', '全家福砂锅', '204', '12', '砂锅', '6');
INSERT INTO `food` VALUES ('5008', '黄焖鸡', '204', '12', '砂锅', '6');
INSERT INTO `food` VALUES ('5009', '鸡汤面', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('5010', '酸汤面', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('5011', '三鲜面', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('5012', '西红柿鸡蛋面', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('5013', '臊子面', '205', '6', '面', '4');
INSERT INTO `food` VALUES ('5014', '炸酱面', '205', '6', '面', '4');
INSERT INTO `food` VALUES ('5015', '炒拉条', '205', '7', '面', '4');
INSERT INTO `food` VALUES ('5016', '炒刀削', '205', '7', '面', '4');
INSERT INTO `food` VALUES ('5017', '酸辣土豆丝', '205', '5', '面', '4');
INSERT INTO `food` VALUES ('5018', '地三鲜', '205', '6', '面', '4');
INSERT INTO `food` VALUES ('5019', '西红柿鸡蛋干拌', '205', '7', '面', '4');
INSERT INTO `food` VALUES ('5020', '火腿干拌', '205', '7', '面', '4');
INSERT INTO `food` VALUES ('5021', '卤肉拌面', '205', '8', '面', '4');
INSERT INTO `food` VALUES ('5022', '肉臊干拌', '205', '8', '面', '4');
INSERT INTO `food` VALUES ('5023', '大盘鸡', '205', '8', '面', '4');
INSERT INTO `food` VALUES ('5024', '酸辣米线', '205', '5', '米线', '7');
INSERT INTO `food` VALUES ('5025', '麻辣米线', '205', '5', '米线', '7');
INSERT INTO `food` VALUES ('5026', '三鲜米线', '205', '7', '米线', '7');
INSERT INTO `food` VALUES ('5027', '素炒米线', '205', '7', '米线', '7');
INSERT INTO `food` VALUES ('5028', '酸菜炒米线', '205', '7', '米线', '7');
INSERT INTO `food` VALUES ('5029', '鸡蛋炒米线', '205', '8', '米线', '7');
INSERT INTO `food` VALUES ('5030', '鸡丝炒米线', '205', '8', '米线', '7');
INSERT INTO `food` VALUES ('5031', '火腿炒米线', '205', '8', '米线', '7');
INSERT INTO `food` VALUES ('5032', '汉中米皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('5033', '黑米皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('5034', '擀面皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('5035', '酿皮', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('5036', '牛筋面', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('5037', '纯面筋', '205', '7', '特色小吃', '3');
INSERT INTO `food` VALUES ('5038', '肉夹馍', '205', '5', '特色小吃', '3');
INSERT INTO `food` VALUES ('5039', '蜜汁烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('5040', '咖喱烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('5041', '沙拉烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('5042', '麻辣烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('5043', '原味烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('5044', '孜然烤肉饭', '206', '10', '烤肉饭', '5');
INSERT INTO `food` VALUES ('5045', '红烧肉', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5046', '红烧排骨', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5047', '红烧鸡块', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5048', '红烧丸子', '206', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5049', '各式炒饭', '206', '6', '炒饭', '5');
INSERT INTO `food` VALUES ('5050', '肉末米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('5051', '牛肉米粉', '207', '10', '米粉', '8');
INSERT INTO `food` VALUES ('5052', '金针菇米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('5053', '鱼豆腐米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('5054', '鱼丸米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('5055', '排骨米粉', '207', '9', '米粉', '8');
INSERT INTO `food` VALUES ('5056', '原味米粉', '207', '7', '米粉', '8');
INSERT INTO `food` VALUES ('5057', '酸辣粉', '207', '7', '米粉', '8');
INSERT INTO `food` VALUES ('5058', '笋尖米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('5059', '酸菜米粉', '207', '8', '米粉', '8');
INSERT INTO `food` VALUES ('5060', '凉拌米粉', '207', '7', '米粉', '8');
INSERT INTO `food` VALUES ('5061', '卤蛋', '207', '1', '米粉', '8');
INSERT INTO `food` VALUES ('5062', '卤猪手', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5063', '卤肉', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5064', '卤排骨', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5065', '卤鸡块', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5066', '卤鸡腿', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5067', '红烧肉', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5068', '卤牛肉', '207', '10', '卤肉饭', '5');
INSERT INTO `food` VALUES ('5069', '老干妈土豆片', '207', '5.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5070', '盐煎鸡柳', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5071', '土豆回锅肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5072', '香火鸡', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5073', '香辣千叶豆腐炒肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5074', '回锅鸡蛋', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5075', '香辣回锅肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5076', '干煸西兰花', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5077', '干煸菜花', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5078', '西兰花炒肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5079', '虎皮辣子烧茄子', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5080', '香辣素牛排', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5081', '烤肠炒肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5082', '香辣鱼卷', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5083', '糖醋菜花', '207', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5084', '豆干盐煎肉', '207', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5085', '大盘鸡', '207', '38', '小炒', '9');
INSERT INTO `food` VALUES ('5086', '干锅土豆片', '207', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5087', '香辣千叶豆腐炒肉', '207', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5088', '红烧肉', '207', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5089', '虎皮辣子', '207', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5090', '孜然炒肉', '207', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5091', '香辣牛肉', '207', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5092', '红烧排骨', '207', '24', '小炒', '9');
INSERT INTO `food` VALUES ('5093', '水煮肉片', '207', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5094', '京酱肉丝', '207', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5095', '京酱肉丝', '207', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5096', '土豆丝', '207', '7', '小炒', '9');
INSERT INTO `food` VALUES ('5097', '香辣土豆片', '207', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5098', '锅仔羊肉', '207', '24', '锅仔', '9');
INSERT INTO `food` VALUES ('5099', '锅仔牛肉', '207', '24', '锅仔', '9');
INSERT INTO `food` VALUES ('5100', '什锦锅仔', '207', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('5101', '素锅仔', '207', '14', '锅仔', '9');
INSERT INTO `food` VALUES ('5102', '锅仔鸡块', '207', '18', '锅仔', '9');
INSERT INTO `food` VALUES ('5103', '锅仔排骨', '207', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('5104', '锅仔火腿蟹肉', '207', '18', '锅仔', '9');
INSERT INTO `food` VALUES ('5105', '干锅土豆片18', '301', '14', '干锅', '9');
INSERT INTO `food` VALUES ('5106', '干锅千叶豆腐24', '301', '18', '干锅', '9');
INSERT INTO `food` VALUES ('5107', '干锅排骨虾50', '301', '50', '干锅', '9');
INSERT INTO `food` VALUES ('5108', '干锅蹄花虾50', '301', '50', '干锅', '9');
INSERT INTO `food` VALUES ('5109', '铁板牛肉', '301', '32', '铁板', '9');
INSERT INTO `food` VALUES ('5110', '铁板羊肉30', '301', '30', '铁板', '9');
INSERT INTO `food` VALUES ('5111', '铁板茄子16', '301', '16', '铁板', '9');
INSERT INTO `food` VALUES ('5112', '铁板千叶豆腐24', '301', '24', '铁板', '9');
INSERT INTO `food` VALUES ('5113', '排骨锅仔32', '301', '32', '锅仔', '9');
INSERT INTO `food` VALUES ('5114', '小鸡炖蘑菇锅仔28', '301', '28', '锅仔', '9');
INSERT INTO `food` VALUES ('5115', '酸菜肥牛锅仔32', '301', '32', '锅仔', '9');
INSERT INTO `food` VALUES ('5116', '土豆丝6', '301', '6', '小炒', '9');
INSERT INTO `food` VALUES ('5117', '鱼香茄子14', '301', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5118', '红烧日本豆腐18', '301', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5119', '干煸豆角16', '301', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5120', '蒜蓉油麦菜13', '301', '13', '小炒', '9');
INSERT INTO `food` VALUES ('5121', '宫保鸡丁20', '301', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5122', '回锅肉26', '301', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5123', '孜然羊肉30', '301', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5124', '水煮肉26', '301', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5125', '酸菜鱼20', '301', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5126', '重庆辣子鸡28', '301', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5127', '重庆辣子鱼28', '301', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5128', '酸菜肥牛30', '301', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5129', '豆角烧茄子16', '301', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5130', '农家小炒肉28', '301', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5131', '红烧鱼18', '301', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5132', '炝锅鱼32', '301', '32', '小炒', '9');
INSERT INTO `food` VALUES ('5133', '大盘鸡（小份）38', '301', '38', '小炒', '9');
INSERT INTO `food` VALUES ('5134', '干锅土豆片盖饭7', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5135', '木耳肉片盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5136', '孜然牛肉盖饭10', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5137', '鱼香肉丝盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5138', '老干妈回锅肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5139', '青椒肉丝盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5140', '火腿鸡柳盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5141', '老干妈火腿盖饭7', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5142', '蟹肉火腿盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5143', '豆干炒肉盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5144', '老干妈盐煎肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5145', '火腿炒蛋盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5146', '茶树菇炒肉盖饭9', '301', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5147', '土豆丝盖饭6', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5148', '麻辣豆腐盖饭6', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5149', '老干妈土豆片盖饭6', '301', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5150', '家常豆腐盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5151', '红烧茄子盖饭7', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5152', '干煸龙豆盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5153', '茄子炒肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5154', '鱼香日本豆腐盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5155', '莲花菜炒牛肉盖饭10', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5156', '农家小炒肉盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5157', '辣子回锅肉盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5158', '酸菜粉条肉盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5159', '茄辣西炒肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5160', '老干妈鸡柳盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5161', '油麦菜蛋盖饭7', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5162', '地三鲜炒肉盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5163', '宫保鸡丁盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5164', '老干妈火腿鸡片盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5165', '回锅肉盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5166', '红烧肉盖饭9', '301', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5167', '白菜回锅肉盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5168', '糖醋里脊盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5169', '土豆片炒肉盖饭7.5', '301', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5170', '孜然羊肉盖饭', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5171', '孜然肉盖饭', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5172', '千叶豆腐盖饭7', '301', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5173', '玉米鸡丁盖饭8', '301', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5174', '土豆牛肉盖饭10', '301', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5175', '蒜苔鸡柳盖饭8.5', '301', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5176', '汤饸烙面', '302', '6', '面', '4');
INSERT INTO `food` VALUES ('5177', '干饸烙面', '302', '7', '面', '4');
INSERT INTO `food` VALUES ('5178', '炒饸烙面', '302', '8', '面', '4');
INSERT INTO `food` VALUES ('5179', '臊子饸烙面', '302', '8', '面', '4');
INSERT INTO `food` VALUES ('5180', '鸡蛋炒饼', '302', '7', '炒饼', '9');
INSERT INTO `food` VALUES ('5181', '肉炒饼', '302', '8', '炒饼', '9');
INSERT INTO `food` VALUES ('5182', '特色炒面片', '302', '8', '炒饼', '9');
INSERT INTO `food` VALUES ('5183', '烩面片', '302', '6', '炒饼', '9');
INSERT INTO `food` VALUES ('5184', '老干妈土豆片', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5185', '老干妈火腿鸡柳', '302', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5186', '虎皮辣子回锅肉', '302', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5187', '鱼香茄子', '302', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5188', '麻辣豆腐', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5189', '酸菜粉条', '302', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5190', '鱼香肉丝', '302', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5191', '青椒肉丝', '302', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5192', '宫保鸡丁', '302', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5193', '鱼香土豆条', '302', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5194', '老干妈西葫芦', '302', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5195', '神仙豆腐', '302', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5196', '油焖茄子', '302', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5197', '鱼香烘蛋', '302', '15', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5198', '烧土鸡', '302', '35', '小炒', '9');
INSERT INTO `food` VALUES ('5199', '石锅排骨', '302', '35', '小炒', '9');
INSERT INTO `food` VALUES ('5200', '香辣鱿鱼虾', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5201', '特色鱼', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5202', '炝锅鱼', '302', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5203', '素菜', '303', '13', '火锅', '9');
INSERT INTO `food` VALUES ('5204', '荤菜', '303', '13', '火锅', '9');
INSERT INTO `food` VALUES ('5205', '粉', '303', '13', '火锅', '9');
INSERT INTO `food` VALUES ('5206', '粒粒香荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5207', '腊肉荷叶饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5208', '香香肉丝荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5209', '鸡肉荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5210', '荷叶牛肉饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5211', '双菇肉荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5212', '素菜荷叶饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5213', '脆肠荷叶饭', '303', '12', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5214', '齿留香荷叶饭', '303', '14', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5215', '五色荷叶饭', '303', '8', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5216', '双包菜荷叶饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5217', '三鲜荷叶饭', '303', '10', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5218', '扬州炒饭', '303', '8', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5219', '酱油鸡蛋炒饭', '303', '7', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5220', '玉米肉丁荷叶饭', '303', '80', '荷叶饭', '5');
INSERT INTO `food` VALUES ('5221', '土豆牛肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5222', '宫爆鸡丁盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5223', '土豆烧牛肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5224', '鸡肉香菇盖饭', '303', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5225', '什锦肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5226', '香菇土豆肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5227', '鱼香肉丝盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5228', '土豆香菇肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5229', '西红柿鸡蛋盖饭', '303', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5230', '木耳蒜薹肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5231', '肉沫茄子盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5232', '土豆鸡块盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5233', '回锅肉丝盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5234', '香菇菜心盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5235', '京酱肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5236', '蒜薹肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5237', '双椒肉丝盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5238', '干妈回锅肉盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5239', '干妈蟹肉段盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5240', '老伙鸡盖饭', '303', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5241', '鱼香茄子盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5242', '胡萝卜粉条盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5243', '青椒茄子盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5244', '双椒鸡肉丁盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5245', '老干妈鸡片盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5246', '土豆茄子盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5247', '酸菜炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5248', '白菜粉条盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5249', '苜蓿肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5250', '酸辣土豆丝盖饭', '303', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5251', '圆葱炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5252', '香菇肉胡萝卜盖饭', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5253', '大杂烩炒肉盖饭7', '303', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5254', '平菇炒肉盖饭', '303', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5255', '香菇油菜', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5256', '土豆丝', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5257', '木耳鸡蛋炒蒜薹肉', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5258', '圆葱双椒肉', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5259', '西红柿鸡蛋', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5260', '土豆茄子', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5261', '花菜烩土豆片', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5262', '干兰炒粉条', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5263', '大杂烩鸡肉', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5264', '盖椒鱼宽面', '303', '10', '盖浇面', '4');
INSERT INTO `food` VALUES ('5265', '炝炒土豆丝', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5266', '小炒豆芽粉', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5267', '金针肥牛锅', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('5268', '韭菜炒鸡蛋', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5269', '乐山辣子鸡', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5270', '干锅有机菜花肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5271', '麻婆豆腐', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5272', '炝炒藕片', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5273', '鱼香肉丝', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('5274', '肉沫茄子', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5275', '毛氏红烧肉', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('5276', '蛋炒木耳肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5277', '碗肉干豆腐粉', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5278', '蟹黄小土豆', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5279', '干锅娃娃菜', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5280', '红烧鸡块', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('5281', '宫保鸡丁', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5282', '炝锅鱼', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('5283', '川蜀口味鱼', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('5284', '尖椒土豆片', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5285', '香菇炒油菜', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5286', '家常豆腐', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5287', '竹芭小牛肉', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('5288', '蒜蓉油麦菜', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5289', '鱼香鸡丝', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5290', '清炒笋片', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5291', '炝炒油麦菜', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5292', '芹菜沫汆肉丸', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5293', '香辣鸡脆骨', '303', '36', '小炒', '9');
INSERT INTO `food` VALUES ('5294', '什锦锅仔鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5295', '炝甘兰', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5296', '小土豆荷叶排骨', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('5297', '土豆片炒香菇肉', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5298', '荷叶齿香鸡', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5299', '酸菜炒粉条', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5300', '炝炒空心菜', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5301', '嘎巴锅', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('5302', '蒜薹炒肉', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5303', '干锅土豆片肉', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5304', '鲜菇炒肉片', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5305', '川渝回锅肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5306', '青菜钵钵肉', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5307', '茄子烧土豆片', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5308', '芹菜炒土豆丝', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5309', '青笋烧排骨', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('5310', '干锅千叶豆腐', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5311', '农家小炒肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5312', '什锦锅仔', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5313', '熘炒夹沙', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5314', '红烧小丸子', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5315', '绿豆芽炒韭菜', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5316', '麻辣锅仔鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5317', '土豆烧鸡块', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5318', '锅仔丸子', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5319', '水煮肉片', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5320', '荷叶香芽菜肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5321', '素材锅仔夹沙', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5322', '豆干炒韭菜', '303', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5323', '香香炒脆骨', '303', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5324', '黑椒牛肉杏鲍菇', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('5325', '山药木耳炒鸡肉片', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5326', '川渝粉蒸肉', '303', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5327', '乡村碗肉', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5328', '宫爆双丁', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5329', '锅仔排骨', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5330', '锅仔米线老火鸡', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5331', '菠菜豆腐汤', '303', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5332', '煎蛋肉炒双椒', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5333', '东北压锅菜', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5334', '竹芭香酥骨', '303', '24', '小炒', '9');
INSERT INTO `food` VALUES ('5335', '尖椒土豆炒肉片', '303', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5336', '大盘鸡38', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('5337', '葱爆手撕肉', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5338', '韭黄炒肉丝', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5339', '双椒炒脆肉', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5340', '毛血旺', '303', '32', '小炒', '9');
INSERT INTO `food` VALUES ('5341', '三鲜日本豆腐', '303', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5342', '外婆菜炒鸡肉丁', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5343', '外婆菜炒腊肉', '303', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5344', '龙腾香辣虾', '303', '48', '小炒', '9');
INSERT INTO `food` VALUES ('5345', '手撕肉炒三样', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5346', '鸡肉炒双菇', '303', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5347', '蛋黄玉米粒', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5348', '泡菜回锅肉', '303', '26', '小炒', '9');
INSERT INTO `food` VALUES ('5349', '精品酸菜鱼', '303', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5350', '精品酸菜鱼', '303', '38', '小炒', '9');
INSERT INTO `food` VALUES ('5351', '西红柿鸡蛋汤', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5352', '紫菜蛋黄汤', '303', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5353', '西湖牛肉羹', '303', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5354', '老干妈土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5355', '老干老妈盐煎肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5356', '老干妈回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5357', '老干妈火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5358', '老干妈蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5359', '老干妈鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5360', '老干妈牛肉', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5361', '老干妈鸡蛋炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5362', '老干妈火腿鸡片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5363', '老干妈腊肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5364', '老干妈鸡片', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5365', '老干妈鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5366', '老丁火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5367', '老干妈肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5368', '老干妈青椒肉片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5369', '老干妈豆干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5370', '老干妈豆皮', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5371', '老干妈鱼豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5372', '老干妈土豆丁', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5373', '老丁回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5374', '老丁腊肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5375', '老丁盐煎肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5376', '老丁鸡蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5377', '辣味老干妈鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5378', '辣味老干妈鸡片', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5379', '辣味老干妈回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5380', '老干妈火腿鸡蛋肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5381', '辣味老干妈土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5382', '老干妈豆皮炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5383', '老干妈火腿蟹排', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5384', '老丁鸡丁', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5385', '香辣鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5386', '红三剁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5387', '肉末茄子', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5388', '西红柿回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5389', '西红柿盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5390', '豆皮火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5391', '豆腐火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5392', '香辣鱼豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5393', '香辣鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5394', '香辣鸡片', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5395', '香辣蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5396', '香辣火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5397', '香辣土豆片', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5398', '香辣千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5399', '香辣肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5400', '香辣腐竹', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5401', '香辣牛肉', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5402', '香辣土豆丁', '304', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5403', '韭菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5404', '木耳炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5405', '豆腐炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5406', '黄瓜炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5407', '火腿炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5408', '鱼香炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5409', '蟹排炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5410', '青椒炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5411', '西红柿炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5412', '油菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5413', '油麦菜炒蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5414', '干煸西兰花烤肠', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5415', '豆皮炒蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5416', '回锅肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5417', '回锅鱼肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5418', '回锅肉卷', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5419', '回锅火腿', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5420', '回锅鸡蛋', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5421', '回锅蟹排', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5422', '回锅连花菜', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5423', '豆干炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5424', '豆皮鸡丝', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5425', '豆皮鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5426', '豆干煸鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5427', '辣子豆干', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5428', '辣子肉末', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5429', '豆干盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5430', '豆干回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5431', '豆腐炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5432', '豆皮木耳肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5433', '家常豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5434', '麻婆豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5435', '火腿烧豆腐', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5436', '香辣豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5437', '芹菜豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5438', '青椒豆腐', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5439', '青椒豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5440', '白菜豆皮', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5441', '酸菜粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5442', '木耳粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5443', '白菜粉条肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5444', '火腿粉条', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5445', '红萝卜粉条', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5446', '老丁火腿鸡片', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5447', '干煸菜花', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5448', '干煸菜花肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5449', '干煸豆角肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5450', '干煸西兰花肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5451', '香辣千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5452', '千叶豆腐肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5453', '素炒千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5454', '家常千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5455', '千叶豆腐火腿', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5456', '千叶豆腐火腿肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5457', '千叶豆腐鸡蛋肉', '304', '9.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5458', '千叶豆腐炒鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5459', '老干妈千叶豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5460', '老干妈千叶豆腐肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5461', '老干妈千叶豆腐火腿', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5462', '老干妈豆皮火腿肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5463', '盐煎肉火腿', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5464', '蒜苔炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5465', '农家小炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5466', '香辣豆皮火腿', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5467', '回锅鱼肉卷鸡蛋', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5468', '粉条炒肉', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5469', '番瓜炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5470', '肉末豆角', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5471', '酸豆角肉末', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5472', '豆角炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5473', '老丁火腿鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5474', '大盘鸡', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5475', '玉米鸡丁', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5476', '香辣火腿鸡柳', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5477', '千叶豆腐炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5478', '千叶豆腐炒鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5479', '香辣素鸡肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5480', '豆皮盐煎肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5481', '回锅千叶豆腐肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5482', '豆皮木耳肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5483', '孜然三丁蟹肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5484', '孜然土豆火腿蟹肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5485', '孜然土豆火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5486', '腐竹火腿鸡蛋', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5487', '老干妈豆皮火腿鸡蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5488', '老丁鸡丁火腿蟹肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5489', '老丁鸡丁火腿鸡蛋', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5490', '干煸菠菜', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5491', '老干妈鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5492', '酸菜土豆丝', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5493', '蒜蓉西兰花', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5494', '韭菜豆干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5495', '韭菜豆干肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5496', '虎皮辣子豆角', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5497', '虎皮辣子茄子', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5498', '虎皮辣子', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5499', '虎皮辣子肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5500', '虎皮辣子豆角肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5501', '虎皮辣子茄子肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5502', '豆角烧茄子', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5503', '红烧日本豆腐', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5504', '萝卜干炒腊肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5505', '香辣萝卜干', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5506', '萝卜干炒肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5507', '素牛排炒肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5508', '素炒素牛排', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5509', '韭菜炒肉', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5510', '豆芽炒肉', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5511', '豆芽粉条肉', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5512', '豆芽粉条', '304', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5513', '老干妈火腿鸡柳', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5514', '杏鲍菇炒肉', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5515', '素炒杏鲍菇', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5516', '苦瓜炒肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5517', '杏鲍菇烤肠', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5518', '豆角茄子肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5519', '苦瓜炒蛋', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5520', '干煸苦瓜', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5521', '素炒苦瓜', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5522', '孜然鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5523', '洋葱鸡柳', '304', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5524', '洋葱回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5525', '老干妈鱿鱼', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5526', '香辣鱿鱼', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5527', '红烧丸子', '304', '8.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5528', '土豆烧丸子', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5529', '土豆烧茄子', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5530', '黄焖鸡', '304', '12', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5531', '油麦菜回锅肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5532', '老干妈烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5533', '香辣烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5534', '烤肠炒蛋', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5535', '回锅烤肠', '304', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5536', '千叶豆腐烤肠', '304', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5537', '土豆茄子肉', '304', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5538', '素炒米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('5539', '蛋炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('5540', '什锦炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('5541', '火腿炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('5542', '烤肠炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('5543', '蟹肉炒米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('5544', '鸡丝炒米线', '304', '7.5', '米线', '7');
INSERT INTO `food` VALUES ('5545', '五花肉炒米线', '304', '10', '米线', '7');
INSERT INTO `food` VALUES ('5546', '牛肉炒米线', '304', '12', '米线', '7');
INSERT INTO `food` VALUES ('5547', '酸菜汤米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('5548', '麻辣汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('5549', '鸡蛋汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('5550', '鸡肉汤米线', '304', '7', '米线', '7');
INSERT INTO `food` VALUES ('5551', '丸子汤米线', '304', '6', '米线', '7');
INSERT INTO `food` VALUES ('5552', '红烧肉汤米线', '304', '10', '米线', '7');
INSERT INTO `food` VALUES ('5553', '排骨汤米线', '304', '12', '米线', '7');
INSERT INTO `food` VALUES ('5554', '鸡块烩菜', '304', '10', '烩菜', '9');
INSERT INTO `food` VALUES ('5555', '丸子烩菜', '304', '9', '烩菜', '9');
INSERT INTO `food` VALUES ('5556', '五花肉烩菜', '304', '10', '烩菜', '9');
INSERT INTO `food` VALUES ('5557', '什锦烩菜', '304', '12', '烩菜', '9');
INSERT INTO `food` VALUES ('5558', '牛肉烩菜', '304', '15', '烩菜', '9');
INSERT INTO `food` VALUES ('5559', '青菜火腿豆花羹', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5560', '肉末豆花', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5561', '椒盐杏鲍菇', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5562', '青菜肉末', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5563', '鱼香肉丝', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5564', '宫爆鸡丁', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5565', '西湖牛肉羹', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5566', '鱼香藕饼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5567', '豆花鸡块', '304', '28', '小炒', '9');
INSERT INTO `food` VALUES ('5568', '家常红烧带鱼', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5569', '过油肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5570', '四川回锅肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5571', '萝卜干炒腊肉', '304', '22', '小炒', '9');
INSERT INTO `food` VALUES ('5572', '水煮肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('5573', '水煮鱼2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5574', '黄焖排骨', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5575', '水煮牛肉', '304', '35', '小炒', '9');
INSERT INTO `food` VALUES ('5576', '糖醋里脊', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5577', '四川腊肉2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5578', '老干妈鸡片', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5579', '老干妈火腿', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5580', '老干妈烤肠', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5581', '地三鲜烧肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5582', '芹菜炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5583', '孜然炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5584', '老干妈火腿鸡蛋', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5585', '老干妈火腿蟹肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5586', '豆芽炒肉', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5587', '辣子鸡丁', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5588', '老火鸡', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5589', '杏鲍菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5590', '木耳炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5591', '金针菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5592', '西兰花炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5593', '茄辣西炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5594', '青椒肉丝', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5595', '葱爆肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5596', '玉米鸡丁', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5597', '农家小炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5598', '蒜苔炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5599', '平菇炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5600', '粉条炒肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5601', '老干妈回锅肉2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5602', '木须肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5603', '香菇烧肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5604', '虎皮辣子茄子肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5605', '虎皮辣子豆角肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5606', '腐竹烧肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5607', '油麦菜回锅肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('5608', '莲花菜盐煎肉', '304', '18', '小炒', '9');
INSERT INTO `food` VALUES ('5609', '豆干炒肉', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5610', '干煸鸡块', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5611', '红烧肉', '304', '30', '小炒', '9');
INSERT INTO `food` VALUES ('5612', '小盘鸡3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5613', '黄焖鸡3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5614', '孜然羊肉', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('5615', '香辣牛肉3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5616', '红烧鲤鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5617', '糖醋鲤鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5618', '糖醋排骨3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5619', '酸菜鱼', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5620', '豆腐鱼', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('5621', '火爆鱿鱼2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5622', '酸辣土豆丝', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5623', '虎皮辣子', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5624', '家常千叶豆腐', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5625', '虎皮辣子豆角', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5626', '虎皮辣子茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5627', '豆角烧茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5628', '土豆烧茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5629', '素炒杏鲍菇', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5630', '韭菜炒豆干', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5631', '素炒苦瓜', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5632', '蒜蓉西兰花', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5633', '干煸西兰花', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5634', '素炒腐竹', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5635', '干煸豆角', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5636', '手撕包菜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5637', '宫保豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5638', '酸菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5639', '老干妈土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5640', '蒜蓉油麦菜', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5641', '香菇油菜', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5642', '白菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5643', '炝炒菠菜', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5644', '豆芽粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5645', '鱼香茄子', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5646', '胡萝卜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5647', '莲花菜粉条', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5648', '西红柿炒蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5649', '鱼香烘蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5650', '葱花炒蛋', '304', '16', '小炒', '9');
INSERT INTO `food` VALUES ('5651', '老干妈土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5652', '东乡土豆片', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5653', '麻婆豆腐', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5654', '家常豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5655', '鱼香日本豆腐', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5656', '茄辣西', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5657', '木耳炒蛋', '304', '14', '小炒', '9');
INSERT INTO `food` VALUES ('5658', '地三鲜', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5659', '素炒平菇', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5660', '虎皮辣子', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5661', '火腿蟹排锅', '304', '20', '小炒', '9');
INSERT INTO `food` VALUES ('5662', '酸菜鱼锅仔', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('5663', '鸡块锅仔', '304', '25', '小炒', '9');
INSERT INTO `food` VALUES ('5664', '什锦锅仔2', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5665', '牛肉锅仔3', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5666', '排骨锅仔', '304', '35', '小炒', '9');
INSERT INTO `food` VALUES ('5667', '四川泡菜', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5668', '蒜泥黄瓜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5669', '凉拌豆皮', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5670', '姜汁菠菜', '304', '10', '小炒', '9');
INSERT INTO `food` VALUES ('5671', '红油金针菇', '304', '12', '小炒', '9');
INSERT INTO `food` VALUES ('5672', '雪盖火山', '304', '8', '小炒', '9');
INSERT INTO `food` VALUES ('5673', '西红柿鸡蛋汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('5674', '虾米紫菜汤', '304', '5', '汤', '1');
INSERT INTO `food` VALUES ('5675', '紫菜蛋花汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('5676', '醪糟汤', '304', '8', '汤', '1');
INSERT INTO `food` VALUES ('5677', '青菜汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('5678', '三鲜汤', '304', '6', '汤', '1');
INSERT INTO `food` VALUES ('5679', '干锅土豆', '304', '16', '干锅', '9');
INSERT INTO `food` VALUES ('5680', '干锅千叶豆腐', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('5681', '干锅菜花', '304', '16', '干锅', '9');
INSERT INTO `food` VALUES ('5682', '干锅西兰花', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('5683', '干锅排骨', '304', '40', '干锅', '9');
INSERT INTO `food` VALUES ('5684', '干锅鸡3', '304', '8', '干锅', '9');
INSERT INTO `food` VALUES ('5685', '干锅牛肉', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('5686', '干锅鱼3', '304', '8', '干锅', '9');
INSERT INTO `food` VALUES ('5687', '干锅鱿鱼3', '304', '8', '干锅', '9');
INSERT INTO `food` VALUES ('5688', '干锅莲藕', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('5689', '干锅年糕', '304', '18', '干锅', '9');
INSERT INTO `food` VALUES ('5690', '干锅虾', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('5691', '干锅翅中虾', '304', '48', '干锅', '9');
INSERT INTO `food` VALUES ('5692', '烤鲤鱼3', '304', '8', '烤鱼', '9');
INSERT INTO `food` VALUES ('5693', '烤草鱼4', '304', '8', '烤鱼', '9');
INSERT INTO `food` VALUES ('5694', '炸酱面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5695', '香辣干拌面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5696', '臊子面', '305', '5', '面', '4');
INSERT INTO `food` VALUES ('5697', '臊子麻食', '305', '5', '面', '4');
INSERT INTO `food` VALUES ('5698', '浆水面', '305', '5', '面', '4');
INSERT INTO `food` VALUES ('5699', '酸汤面', '305', '5', '面', '4');
INSERT INTO `food` VALUES ('5700', '鸡丝面', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('5701', '烩面片', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('5702', '烩麻食', '305', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5703', '西红柿鸡蛋面/片', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('5704', '鸡块面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5705', '鸡块面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5706', '酸菜鸡块面 ', '305', '7.5 ', '面', '4');
INSERT INTO `food` VALUES ('5707', '酸菜鸡块面 ', '305', '8.5', '面', '4');
INSERT INTO `food` VALUES ('5708', '香菇肉丝面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5709', '木耳香菇面', '305', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5710', '排骨面 ', '305', '7.5 ', '面', '4');
INSERT INTO `food` VALUES ('5711', '排骨面 ', '305', '8.5', '面', '4');
INSERT INTO `food` VALUES ('5712', '加煎鸡蛋', '305', '1.5', '特色小吃', '3');
INSERT INTO `food` VALUES ('5713', '麻辣米线（汤）', '305', '5.5', '米线', '7');
INSERT INTO `food` VALUES ('5714', '酸菜米线（汤）', '305', '5.5', '米线', '7');
INSERT INTO `food` VALUES ('5715', '火腿米线（汤）', '305', '6', '米线', '7');
INSERT INTO `food` VALUES ('5716', '鸡块米线（汤）', '305', '6.5', '米线', '7');
INSERT INTO `food` VALUES ('5717', '排骨米线', '305', '8', '米线', '7');
INSERT INTO `food` VALUES ('5718', '鸡蛋炒米线', '305', '7', '米线', '7');
INSERT INTO `food` VALUES ('5719', '蛋炒米线', '305', '7', '米线', '7');
INSERT INTO `food` VALUES ('5720', '包菜鸡丝炒米线', '305', '7', '米线', '7');
INSERT INTO `food` VALUES ('5721', '酸菜鸡丝炒米线', '305', '7', '米线', '7');
INSERT INTO `food` VALUES ('5722', '韭菜饺子 ', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('5723', '韭菜饺子 ', '305', '10', '饺子', '10');
INSERT INTO `food` VALUES ('5724', '大葱肉饺子', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('5725', '大葱肉饺子', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('5726', ' 芹菜肉饺子 ', '305', '10', '饺子', '10');
INSERT INTO `food` VALUES ('5727', ' 芹菜肉饺子 ', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('5728', '素三鲜饺子 ', '305', '10', '饺子', '10');
INSERT INTO `food` VALUES ('5729', '素三鲜饺子 ', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('5730', '香菇肉饺子', '305', '10', '饺子', '10');
INSERT INTO `food` VALUES ('5731', '香菇肉饺子', '305', '12', '饺子', '10');
INSERT INTO `food` VALUES ('5732', '素炒面片', '305', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5733', '素炒拉条', '305', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5734', ' 蛋炒拉条 ', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5735', ' 蛋炒拉条 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5736', '肉炒拉条 ', '305', '7 ', '面', '4');
INSERT INTO `food` VALUES ('5737', '蛋炒面片 ', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5738', '肉炒面片 ', '305', '7 ', '面', '4');
INSERT INTO `food` VALUES ('5739', '蛋炒麻食', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5740', '肉炒麻食 ', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5741', '孜然肉炒面 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5742', '大盘鸡盖面 ', '305', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5743', '蒜苗回锅肉盖面', '305', '9', '面', '4');
INSERT INTO `food` VALUES ('5744', '莲花菜回锅肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5745', '千叶豆腐炒肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5746', '千叶豆腐炒鸡柳盖面', '305', '8.5', '面', '4');
INSERT INTO `food` VALUES ('5747', '香辣千叶豆腐盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5748', '老干妈火腿鸡蛋肉盖面', '305', '9', '面', '4');
INSERT INTO `food` VALUES ('5749', '老干妈鸡柳盖面', '305', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5750', '老干妈鸡蛋盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5751', '老干妈火腿盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5752', '老干妈火腿鸡柳盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5753', '酸辣土豆丝盖面', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('5754', '香辣土豆丝盖面', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('5755', '香辣土豆片盖面', '305', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5756', '麻辣粉条盖面', '305', '6', '面', '4');
INSERT INTO `food` VALUES ('5757', '酸辣粉条盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5758', '酸辣豆干盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5759', '地三鲜盖面', '305', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5760', '地三鲜炒肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5761', '火腿炒肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5762', '火腿炒蛋盖面', '305', '7', '面', '4');
INSERT INTO `food` VALUES ('5763', '孜然鸡柳盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5764', '金针菇炒肉盖面', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('5765', '千叶豆腐烧排骨盖面', '305', '10', '面', '4');
INSERT INTO `food` VALUES ('5766', '土豆红烧肉盖面', '305', '10', '面', '4');
INSERT INTO `food` VALUES ('5767', '特色鸡汤刀削面', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5768', '炒面片', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5769', '炒猫耳朵（麻食）', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5770', '孜然肉炒面', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5771', '特色鸡块面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5772', '特色红烧肉面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5773', '特色大盘鸡拌面', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5774', '炒拉条', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5775', '炒搓鱼', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5776', '炒刀削面', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5777', '特色排骨面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5778', '特色二合一拌面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5779', '酸汤面', '306', '6', '面', '4');
INSERT INTO `food` VALUES ('5780', '炸酱面', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5781', '三鲜剪刀面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5782', '烩面片', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5783', '素炒面片', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5784', '鸡蛋面片', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5785', '酸菜面片', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5786', '猪肉香菇水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('5787', '猪肉韭菜水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('5788', '韭菜鸡蛋水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('5789', '青椒土豆丝', '306', '6', '面', '4');
INSERT INTO `food` VALUES ('5790', '酸辣白菜', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5791', '白菜粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5792', '醋溜番瓜', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5793', '酸辣笋丝', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5794', '红烧土豆', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5795', '肉沫茄子', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5796', '辣子鸡丁', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5797', '红烧茄子', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5798', '韭菜炒蛋', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5799', '香辣豆皮', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5800', '麻辣粉条', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5801', '土豆回锅肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5802', '豆腐炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5803', '老干妈土豆片', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5804', '茄子炒豆角', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5805', '青椒火腿', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5806', '粉条炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5807', '香辣鸡蛋火腿', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5808', '回锅肉鸡柳', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('5809', '红烧鸡块', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('5810', '红烧排骨', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('5811', '香菇炒肉', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('5812', '酸烂肉拌面', '306', '12', '面', '4');
INSERT INTO `food` VALUES ('5813', '臊子面', '306', '5', '面', '4');
INSERT INTO `food` VALUES ('5814', '浆水面', '306', '5', '面', '4');
INSERT INTO `food` VALUES ('5815', '什锦剪刀面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5816', '烩猫耳朵（麻食）', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5817', '素炒拉条', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5818', '木耳鸡丝面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5819', '酸汤剪刀面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5820', '猪肉白菜水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('5821', '猪肉芹菜水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('5822', '干饺', '306', '12', '面', '4');
INSERT INTO `food` VALUES ('5823', '香辣土豆丝', '306', '6', '面', '4');
INSERT INTO `food` VALUES ('5824', '土豆丝粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5825', '莲花菜粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5826', '孜然土豆片', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5827', '地三鲜', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5828', '青椒肉丝', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5829', '莲花菜回锅肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5830', '孜然牛肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5831', '黄瓜炒蛋', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5832', '鱼香茄子', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5833', '木耳炒蛋', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5834', '鱼香肉丝', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5835', '宫爆土豆', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5836', '平菇炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5837', '莲花菜炒肉', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5838', '千叶豆腐炒蛋', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5839', '腐竹炒木耳', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5840', '洋葱炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5841', '韭菜炒蛋', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5842', '葱爆羊肉', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('5843', '腊肠菜花', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('5844', '虎皮辣子红烧肉', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('5845', '卤肉拌面', '306', '11', '面', '4');
INSERT INTO `food` VALUES ('5846', '三鲜面', '306', '6', '面', '4');
INSERT INTO `food` VALUES ('5847', '香菇粉条剪刀面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5848', '西红柿鸡蛋剪刀面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5849', '烩搓鱼', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5850', '西红柿鸡蛋面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5851', '酸菜肉丝面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5852', '臊子剪刀面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5853', '猪肉大葱水饺', '306', '10', '水饺', '10');
INSERT INTO `food` VALUES ('5854', '三鲜水饺', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('5855', '肉臊子干拌面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5856', '鱼香土豆丝', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5857', '红萝卜粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5858', '酸菜粉条', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5859', '西红柿炒鸡蛋', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5860', '青笋炒木耳', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5861', '菜花炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5862', '茄子炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5863', '茄辣西', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5864', '青椒茄子', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5865', '鱼香茄子丝', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5866', '麻婆豆腐', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5867', '豆角炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5868', '油麦菜炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5869', '大盘鸡拌面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5870', '家常千叶', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5871', '老干妈千叶豆腐', '306', '7.5', '面', '4');
INSERT INTO `food` VALUES ('5872', '火腿炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5873', '葱爆肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5874', '老干妈千叶豆腐鸡蛋肉', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('5875', '老干妈鸡柳火腿蛋', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('5876', '腊肠炒蒜苔', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('5877', '农家菜花炒腊肉', '306', '10', '面', '4');
INSERT INTO `food` VALUES ('5878', '土豆烧牛肉', '306', '12', '面', '4');
INSERT INTO `food` VALUES ('5879', '豆皮炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5880', '地三鲜炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5881', '平菇油菜', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5882', '土豆烧茄子', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5883', '白菜豆腐', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5884', '白菜木耳', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5885', '苜蓿肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5886', '宫爆鸡丁', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5887', '蒜茸油麦菜', '306', '7', '面', '4');
INSERT INTO `food` VALUES ('5888', '腐竹炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5889', '香辣肉片', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5890', '蒜苗回锅肉', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('5891', '千叶豆腐炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5892', '农家小炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5893', '千叶豆腐炒火腿', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5894', '特色油泼面', '306', '6.5', '面', '4');
INSERT INTO `food` VALUES ('5895', '蒜苔炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5896', '肉沫豆角', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5897', '孜然炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5898', '老干妈鸡柳', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5899', '木耳炒肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5900', '盐煎肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5901', '酸豆角肉沫', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5902', '土豆红烧肉', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('5903', '孜然土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5904', '回锅土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5905', '青椒火腿', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5906', '香辣火腿', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5907', '盐煎豆干', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5908', '蒜苗回锅肉', '307', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5909', '老干妈鸡片', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5910', '老干妈鸡柳', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5911', '千叶豆腐炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5912', '香辣蟹排', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5913', '土豆片炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5914', '茄子炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5915', '红烧土豆', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5916', '土豆鸡块', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5917', '鱼香豆腐', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5918', '红烧茄子', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5919', '鱼香平菇', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5920', '白菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5921', '白菜粉条炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5922', '莲花菜炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5923', '蒜苔炒鸡蛋', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5924', '玉米鸡丁', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5925', '韭菜鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5926', '火腿鸡柳', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5927', '西兰花炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5928', '酸豆角炒肉沫', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5929', '蒜蓉油麦菜', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5930', '油麦菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5931', '油麦菜炒蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5932', '油菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5933', '糖醋里脊', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5934', '西红柿炒鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5935', '老干妈鱼肉卷', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5936', '豆干盐煎肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5937', '老干妈腐竹炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5938', '老干妈炒素鸡', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5939', '香辣素鸡', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5940', '菜花炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5941', '素鸡炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5942', '西红柿炒菜花', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5943', '蒜苔炒菜花', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5944', '干煸菜花', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5945', '火腿炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5946', '老干妈土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5947', '青椒土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5948', '盐煎火腿', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5949', '盐煎鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5950', '豆干回锅肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5951', '盐煎鸡片', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5952', '老干妈鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5953', '韭菜炒豆皮', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5954', '老干妈火腿鸡蛋', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5955', '火腿豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5956', '蒜苗粉条炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5957', '地三鲜', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5958', '土豆烧丸子', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5959', '土豆烧排骨', '307', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5960', '麻婆豆腐', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5961', '家常豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5962', '香辣鸡丝', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5963', '麻辣肉丝', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5964', '白菜炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5965', '素炒莲花菜', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5966', '宫爆豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5967', '火腿鸡丁', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5968', '韭菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5969', '老干妈鱼豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5970', '蒜蓉西兰花', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5971', '木耳炒粉条', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5972', '木耳炒腐竹', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5973', '腐竹炒鸡蛋', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5974', '腐竹炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5975', '土豆丝', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5976', '辣子鸡丁', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5977', '酸菜炒粉条', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5978', '酸菜粉条炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5979', '青笋炒木耳', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5980', '宫爆鸡丁', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5981', '土豆丝炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5982', '平菇炒油菜', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5983', '香菇豆腐', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5984', '芹菜豆干', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5985', '芹菜炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5986', '鱼香平菇', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5987', '洋葱炒木耳', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5988', '香菇炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5989', '香辣土豆片', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5990', '老干妈火腿', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5991', '火腿油菜', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5992', '盐煎肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5993', '回锅肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5994', '香辣鸡片', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5995', '香辣鸡柳', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5996', '老干妈千叶豆腐', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5997', '老干妈火腿蟹肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5998', '土豆丝炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('5999', '青笋炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6000', '鱼香茄子', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6001', '地三鲜炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6002', '土豆红烧肉', '307', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6003', '红烧丸子', '307', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6004', '鱼香肉丝', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6005', '鱼香鸡蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6006', '酸辣白菜', '307', '6', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6007', '莲花菜炒肉', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6008', '蒜苔炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6009', '土豆鸡丁', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6010', '红萝卜炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6011', '韭菜炒豆干', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6012', '杏鲍菇炒肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6013', '洋葱炒粉条', '307', '6.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6014', '洋葱炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6015', '鸡蛋炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6016', '平菇炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6017', '酸菜炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6018', '豆皮炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6019', '豆干炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6020', '黄瓜炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6021', '木耳炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6022', '木耳炒鸡蛋', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6023', '孜然羊肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6024', '孜然炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6025', '大盘鸡', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6026', '木须肉', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6027', '干煸豆角', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6028', '豆角炒肉', '307', '7.5', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6029', '豆腐炒蛋', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6030', '蛋炒饭', '307', '7', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6031', '牛肉砂锅', '307', '10', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6032', '什锦砂锅', '307', '9', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6033', '金针菇砂锅', '307', '8', '盖浇饭', '5');
INSERT INTO `food` VALUES ('6034', '鱼卷砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('6035', '排骨砂锅', '307', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('6036', '蟹排', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('6037', '三鲜砂锅', '307', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('6038', '素砂锅', '307', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('6039', '鸡块砂锅', '307', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('6040', '鱼豆腐', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('6041', '香豆腐砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('6042', '方便面砂锅', '307', '7', '砂锅', '6');
INSERT INTO `food` VALUES ('6043', '红烧肉砂锅', '307', '9', '砂锅', '6');
INSERT INTO `food` VALUES ('6044', '火腿砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('6045', '脆皮肠砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('6046', '千叶豆腐砂锅', '307', '8', '砂锅', '6');
INSERT INTO `food` VALUES ('6047', '水煮肉片', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('6048', '糖醋里脊', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('6049', '过油肉', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('6050', '酸辣鱿鱼', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('6051', '红烧鸡块', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('6052', '京酱肉丝', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('6053', '宫保鸡丁', '307', '18', '小炒', '9');
INSERT INTO `food` VALUES ('6054', '土豆红烧肉', '307', '22', '小炒', '9');
INSERT INTO `food` VALUES ('6055', '农家红烧肉', '307', '28', '小炒', '9');
INSERT INTO `food` VALUES ('6056', '盐煎肉', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('6057', '麻花回锅肉', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('6058', '回锅肉', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('6059', '西芹肉片', '307', '14', '小炒', '9');
INSERT INTO `food` VALUES ('6060', '青笋肉片', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6061', '干煸鸡块', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('6062', '鱼香肉丝', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6063', '蒜薹肉丝', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6064', '京城爆仔鸡', '307', '25', '小炒', '9');
INSERT INTO `food` VALUES ('6065', '麻花脆皮肠', '307', '18', '小炒', '9');
INSERT INTO `food` VALUES ('6066', '虎皮辣子炒回锅肉', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('6067', '平菇肉片', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6068', '腐竹炒肉', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6069', '青椒炒蛋', '307', '14', '小炒', '9');
INSERT INTO `food` VALUES ('6070', '青椒肉丝', '307', '18', '小炒', '9');
INSERT INTO `food` VALUES ('6071', '莲花菜炒肉', '307', '14', '小炒', '9');
INSERT INTO `food` VALUES ('6072', '香干肉丝', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6073', '粉条炒肉', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6074', '土豆丝炒肉', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('6075', '土豆鸡块', '307', '22', '小炒', '9');
INSERT INTO `food` VALUES ('6076', '红烧排骨', '307', '22', '小炒', '9');
INSERT INTO `food` VALUES ('6077', '木耳炒肉', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6078', '孜然羊肉', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('6079', '酸豆角炒肉沫', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6080', '农家小炒肉', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('6081', '茄辣西', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('6082', '虎皮辣子', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('6083', '香菇油菜', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('6084', '家常豆腐', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('6085', '麻婆豆腐', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('6086', '红烧茄子', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('6087', '干煸豆角', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6088', '干煸油菜', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('6089', '干煸油麦菜', '307', '10', '小炒', '9');
INSERT INTO `food` VALUES ('6090', '孜然土豆片', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('6091', '东乡土豆片', '307', '12', '小炒', '9');
INSERT INTO `food` VALUES ('6092', '油麦菜（清炒蒜蓉）', '307', '8', '小炒', '9');
INSERT INTO `food` VALUES ('6093', '土豆丝（酸辣清炒）', '307', '6', '小炒', '9');
INSERT INTO `food` VALUES ('6094', '蒜蓉西兰花', '307', '14', '小炒', '9');
INSERT INTO `food` VALUES ('6095', '酸辣蕨根粉', '307', '10', '凉菜', '9');
INSERT INTO `food` VALUES ('6096', '麻辣牛肉', '307', '28', '凉菜', '9');
INSERT INTO `food` VALUES ('6097', '香油金针菇', '307', '10', '凉菜', '9');
INSERT INTO `food` VALUES ('6098', '红油泡菜', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('6099', '蒜泥黄瓜', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('6100', '油炸花生', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('6101', '五香驴肉', '307', '15', '凉菜', '9');
INSERT INTO `food` VALUES ('6102', '洋葱木耳', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('6103', '青椒变蛋', '307', '10', '凉菜', '9');
INSERT INTO `food` VALUES ('6104', '凉拌三丝', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('6105', '姜汁菠菜', '307', '10', '凉菜', '9');
INSERT INTO `food` VALUES ('6106', '老醋花生米', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('6107', '炝拌莲藕', '307', '8', '凉菜', '9');
INSERT INTO `food` VALUES ('6108', '糖拌西红柿', '307', '6', '凉菜', '9');
INSERT INTO `food` VALUES ('6109', '锅仔牛腩', '307', '26', '锅仔', '9');
INSERT INTO `food` VALUES ('6110', '锅仔鸡块', '307', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('6111', '锅仔鱼头豆腐', '307', '18', '锅仔', '9');
INSERT INTO `food` VALUES ('6112', '锅仔全家福', '307', '24', '锅仔', '9');
INSERT INTO `food` VALUES ('6113', '锅仔腐竹排骨', '307', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('6114', '锅仔川味鱼', '307', '20', '锅仔', '9');
INSERT INTO `food` VALUES ('6115', '锅仔脆皮肠', '307', '18', '锅仔', '9');
INSERT INTO `food` VALUES ('6116', '干锅土豆片', '307', '14', '干锅', '9');
INSERT INTO `food` VALUES ('6117', '干锅千页豆腐', '307', '18', '干锅', '9');
INSERT INTO `food` VALUES ('6118', '铁板羊肉', '307', '28', '铁板', '9');
INSERT INTO `food` VALUES ('6119', '铁板鱿鱼', '307', '24', '铁板', '9');
INSERT INTO `food` VALUES ('6120', '铁板日本豆腐', '307', '18', '铁板', '9');
INSERT INTO `food` VALUES ('6121', '铁板飘香鸡柳', '307', '18', '铁板', '9');
INSERT INTO `food` VALUES ('6122', '干锅菜花', '307', '16', '干锅', '9');
INSERT INTO `food` VALUES ('6123', '干锅虾', '307', '40', '干锅', '9');
INSERT INTO `food` VALUES ('6124', '大盘鸡', '307', '45', '小炒', '9');
INSERT INTO `food` VALUES ('6125', '重庆辣子鸡', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('6126', '串烧鸡柳', '307', '18', '小炒', '9');
INSERT INTO `food` VALUES ('6127', '老干妈火腿片', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6128', '老干妈火腿蟹肉', '307', '16', '小炒', '9');
INSERT INTO `food` VALUES ('6129', '手擀粉炖排骨', '307', '30', '小炒', '9');
INSERT INTO `food` VALUES ('6130', '酥辣虾', '307', '38', '小炒', '9');
INSERT INTO `food` VALUES ('6131', '香辣鱿鱼虾', '307', '30', '小炒', '9');
INSERT INTO `food` VALUES ('6132', '剁椒鱼', '307', '28', '小炒', '9');
INSERT INTO `food` VALUES ('6133', '炝锅鱼', '307', '38', '小炒', '9');
INSERT INTO `food` VALUES ('6134', '干烧鱼', '307', '22', '小炒', '9');
INSERT INTO `food` VALUES ('6135', '红烧鲤鱼', '307', '20', '小炒', '9');
INSERT INTO `food` VALUES ('6136', '西红柿鸡蛋汤', '307', '6', '汤', '1');
INSERT INTO `food` VALUES ('6137', '三鲜汤', '307', '6', '汤', '1');
INSERT INTO `food` VALUES ('6138', '醪糟蛋花汤', '307', '6', '汤', '1');
INSERT INTO `food` VALUES ('6139', '酸辣汤', '307', '8', '汤', '1');
INSERT INTO `food` VALUES ('6140', '紫菜蛋花汤', '307', '6', '汤', '1');
INSERT INTO `food` VALUES ('6141', '肉炒拉条 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('6142', '蛋炒面片 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('6143', '肉炒面片 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('6144', '蛋炒麻食', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('6145', '肉炒麻食 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('6146', '孜然肉炒面 ', '305', '8.5', '面', '4');
INSERT INTO `food` VALUES ('6147', '大盘鸡盖面 ', '305', '8', '面', '4');
INSERT INTO `food` VALUES ('6148', '特色鸡汤刀削面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('6149', '炒面片', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('6150', '炒猫耳朵（麻食）', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('6151', '孜然肉炒面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('6152', '特色鸡块面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('6153', '特色红烧肉面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('6154', '特色大盘鸡拌面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('6155', '炒拉条', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('6156', '炒搓鱼', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('6157', '炒刀削面', '306', '8', '面', '4');
INSERT INTO `food` VALUES ('6158', '特色排骨面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('6159', '特色二合一拌面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('6160', '猪肉香菇水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('6161', '猪肉韭菜水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('6162', '韭菜鸡蛋水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('6163', '猪肉白菜水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('6164', '猪肉芹菜水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('6165', '猪肉大葱水饺', '306', '12', '水饺', '10');
INSERT INTO `food` VALUES ('6166', '三鲜水饺', '306', '12', '面', '4');
INSERT INTO `food` VALUES ('6167', '肉臊子干拌面', '306', '9', '面', '4');
INSERT INTO `food` VALUES ('6168', '过油肉', '307', '24', '小炒', '9');
INSERT INTO `food` VALUES ('6169', '京酱肉丝', '307', '26', '小炒', '9');
INSERT INTO `food` VALUES ('6170', '红烧排骨', '307', '28', '小炒', '9');
INSERT INTO `food` VALUES ('6171', '大盘鸡', '307', '50', '小炒', '9');

-- ----------------------------
-- Table structure for `foodkey`
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
-- Table structure for `food_eval`
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
-- Table structure for `history`
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `hist_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_id` int(11) NOT NULL,
  `food_name` varchar(20) NOT NULL,
  `food_money` varchar(10) NOT NULL COMMENT '单价',
  `food_num` int(11) NOT NULL DEFAULT '1',
  `money` varchar(10) NOT NULL DEFAULT '0' COMMENT '消费额',
  `end_description` varchar(100) NOT NULL COMMENT '追评',
  PRIMARY KEY (`hist_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------

-- ----------------------------
-- Table structure for `img`
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
-- Table structure for `indent`
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
-- Table structure for `rent`
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
-- Table structure for `rest`
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
INSERT INTO `rest` VALUES ('101', '简餐鱼庄', '刘来福', '15193165006', '111111', '0', '0', '0', '0', '0');
INSERT INTO `rest` VALUES ('102', '来福手工营养早餐', '刘来福', '15193165006', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('103', '黄茶', null, null, '111111', '0', '0', '0', '0', '0');
INSERT INTO `rest` VALUES ('111', '智慧餐厅', null, null, null, '0', '0', '0', '0', '0');
INSERT INTO `rest` VALUES ('201', '唯美快餐', '王晓军', '13893164724', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('202', '港味咖喱', '豆明明', '15193128051', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('203', '蜀香快餐', '冯先强', '13239620898', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('204', '山西食府', '贾云岗', '13519498900', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('205', '城固老味', '薛存明', '13669307370', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('206', '金城拌饭', '耿宝红', '15117279859', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('207', '川味饭吧', '姚孙喜', '13659429957', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('208', '陇原小苑', '候霞霞', '15002533633', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('209', '成都麻辣烫', '耿文业', '13919888578', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('210', '天津味道', '杨敏娜', '17789605570', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('301', '天天香', '杜小明', '13239627777', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('302', '多味轩', '张文龙', '15352304362', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('303', '楼中楼', '杨亚兵', '13389481979', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('304', '最后一家', '张学国', '15352010049', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('305', '四面八方', '丁红霞', '15117265189', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('306', '面面聚到', '秦广志', '13893259271', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('307', '学生之家', '王建明', '13919813455', '111111', '0', '0', null, '0', '0');
INSERT INTO `rest` VALUES ('﻿100', '一楼南', '田师傅', '18893702418', '111111', '0', '0', null, '0', '0');

-- ----------------------------
-- Table structure for `rest_evaluation`
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
-- Table structure for `song`
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
-- Table structure for `stu`
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
-- Table structure for `type`
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
