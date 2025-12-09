SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- 如无 dbms 库可取消注释创建
-- CREATE DATABASE IF NOT EXISTS dbms CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE dbms;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `client_addre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `client_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `client_credit` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `client` VALUES
(1, '杨鑫', '安徽蚌埠市', '18654211254 ', 4),
(2, '胡悦', '贵州贵阳市', '13985461125 ', 5),
(3, '刘佳', '山东日照市', '19954125412 ', 5),
(4, '赵兴', '北京', '18515699985 ', 3),
(5, '孙丽', '安徽马鞍山市', '15212369854 ', 5),
(6, '李梅', '河北廊坊市', '13785466511 ', 5),
(7, '马瑞', '广东深圳市', '13425169877 ', 2),
(8, '杨欣', '山东日照市', '11000000000', 1),
(9, '刘旭', '山东日照市', '11243243230', 2),
(10,'李烈', '山东日照市', '12343434312', 4);

-- ----------------------------
-- Table structure for duty
-- ----------------------------
DROP TABLE IF EXISTS `duty`;
CREATE TABLE `duty`  (
  `duty_id` int(11) NOT NULL AUTO_INCREMENT,
  `duty_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `duty_addtime` datetime(0) NULL DEFAULT NULL,
  `duty_is_true` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`duty_id`) USING BTREE,
  UNIQUE INDEX `duty_name`(`duty_name`) USING BTREE,
  INDEX `ix_duty_duty_addtime`(`duty_addtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `duty` VALUES
(1, '管理员',     '2025-01-01 09:00:00', 0),
(2, '普通员工',   '2025-01-01 09:00:00', 0),
(4, '部门经理',   '2025-01-01 09:00:00', 0);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE,
  UNIQUE INDEX `goods_name`(`goods_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `goods` VALUES
(2, '华为 Mate 60 Pro',         '6999', '华为旗舰手机，5G，全焦段影像系统'),
(3, '小米 15 Ultra',            '4999', '小米高端旗舰，2K 屏，长焦微距'),
(4, 'OPPO Find X8',             '4599', 'OPPO 全面屏手机，主打影像与快充'),
(5, '联想 拯救者 Y9000P',       '8999', '高性能游戏本，RTX 显卡，2.5K 高刷屏'),
(6, '华硕 天选 5',              '7599', '轻薄游戏本，独立显卡，RGB 键盘'),
(7, '三只松鼠 每日坚果',        '69.9', '每日坚果礼盒，混合坚果零食'),
(8, '元气森林 苏打气泡水',      '4.5',  '0 糖 0 脂 0 卡，气泡饮料'),
(9, '陕西洛川苹果',             '59.9', '陕西洛川红富士苹果'),
(12,'云南冰糖橙',               '49.9', '云南产地直发冰糖橙');
-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `salary_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_base` int(11) NULL DEFAULT NULL,
  `salary_grade` int(11) NULL DEFAULT NULL,
  `salary_subsidy` int(11) NULL DEFAULT NULL,
  `salary_other` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`salary_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `section_addtime` datetime(0) NULL DEFAULT NULL,
  `section_is_true` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`section_id`) USING BTREE,
  UNIQUE INDEX `section_name`(`section_name`) USING BTREE,
  INDEX `ix_section_section_addtime`(`section_addtime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `section` VALUES
(1, '管理部门', '2025-07-01 09:00:00', 0),
(2, '临时部',   '2025-04-01 09:00:00', 0),
(3, '销售部',   '2025-01-01 09:00:00', 0),
(4, '采购部',   '2025-09-01 09:00:00', 0);

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power`  (
  `power_id` int(11) NOT NULL AUTO_INCREMENT,
  `power_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `power_addtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`power_id`) USING BTREE,
  UNIQUE INDEX `power_name`(`power_name`) USING BTREE,
  INDEX `ix_power_power_addtime`(`power_addtime`) USING BTREE,
  INDEX `ix_power_power_id`(`power_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `power` VALUES
(1, 'root',  '2025-01-01 09:00:00'),
(2, 'staff', '2025-01-01 09:00:00');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `supplier_addre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `supplier_credit` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`supplier_id`) USING BTREE,
  UNIQUE INDEX `supplier_name`(`supplier_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `supplier` VALUES
(1, '四平市新华汽车销售维修服务有限公司', '四平市铁东区国道102南出口与国道303交汇处东行500米', 1),
(2, '龙泉绿瓯食品有限公司',               '河南', 2),
(3, '庆元县兰天绿谷实业有限公司',         '浙江庆元', 4),
(4, '缙云县夏氏饮料有限公司',             '浙江丽水缙云', 3),
(5, '深圳市兴鑫磊光电科技有限公司',       '深圳市南山区西丽旺棠工业区16栋5、6楼 ', 5),
(6, '湖北博聚信息技术有限公司',           '湖北省襄阳市追日路2号襄阳软件园 ', 5),
(7, '大雅计算机技术有限公司',             '浙江省绍兴解放大道735号 ', 3),
(8, '上海易果电子商务有限公司',           '上海市长宁区金钟路999号c幢5楼', 4),
(9, '上海水果电子商务有限公司',           '上海市长宁区金钟路', 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_count` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_sex` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_mail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_addtime` datetime(0) NULL DEFAULT NULL,
  `user_photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_ispass` tinyint(1) NULL DEFAULT NULL,
  `user_section` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_duty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_power` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_salary` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_count`(`user_count`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name`) USING BTREE,
  INDEX `user_section`(`user_section`) USING BTREE,
  INDEX `user_duty`(`user_duty`) USING BTREE,
  INDEX `user_power`(`user_power`) USING BTREE,
  INDEX `user_salary`(`user_salary`) USING BTREE,
  INDEX `ix_user_user_addtime`(`user_addtime`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_section`) REFERENCES `section` (`section_name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`user_duty`)    REFERENCES `duty`   (`duty_name`)   ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`user_power`)   REFERENCES `power`  (`power_name`)  ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ibfk_4` FOREIGN KEY (`user_salary`)  REFERENCES `salary` (`salary_id`)   ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `user` VALUES
(1, 'root',  '超级管理员', '男',
 'pbkdf2:sha256:50000$WuO0dDYG$bc6abb402d99663d82737a36898bc862d672465cece851764078845cb0445f25',
 '916149179@qq.com', '13000000000', '2025-01-01 10:00:00', NULL, 1, '管理部门', '管理员', 'root',  NULL),
 (5, 'cc',  '星星', '女',
 '123456',
 '1096120648@qq.com', '130343445435', '2025-01-01 10:00:00', NULL, 1, '管理部门', '管理员', 'root',  NULL),
(3, 'limao', '李茂',     '男',
 'pbkdf2:sha256:50000$vi4b5LR1$b8e5578dcd412bf25e06c924ae11c6f92e5f077fff709660796c93e15a3f679d',
 'limao@wesm.com', '18965441256', '2025-01-02 09:30:00', NULL, 0, '临时部',   '普通员工', 'staff', NULL);

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `purchase_count` int(11) NULL DEFAULT NULL,
  `purchase_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `purchase_addtime` datetime(0) NULL DEFAULT NULL,
  `purchase_goods` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `purchase_supplier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `purchase_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`purchase_id`) USING BTREE,
  UNIQUE INDEX `purchase_num`(`purchase_num`) USING BTREE,
  INDEX `purchase_goods`(`purchase_goods`) USING BTREE,
  INDEX `purchase_supplier`(`purchase_supplier`) USING BTREE,
  INDEX `purchase_user_name`(`purchase_user_name`) USING BTREE,
  INDEX `ix_purchase_purchase_addtime`(`purchase_addtime`) USING BTREE,
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`purchase_goods`)    REFERENCES `goods`    (`goods_name`)   ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`purchase_supplier`) REFERENCES `supplier` (`supplier_name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`purchase_user_name`)REFERENCES `user`     (`user_name`)    ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- 2025 年采购：覆盖 1,2,3,4,6,7,9,11,12 等多个月份
INSERT INTO `purchase`
  (purchase_num, purchase_count, purchase_price, purchase_addtime,
   purchase_goods,              purchase_supplier,                  purchase_user_name)
VALUES
  -- 1 月：手机
  ('202501010001', 10, '69990', '2025-01-01 09:30:00', '华为 Mate 60 Pro',       '深圳市兴鑫磊光电科技有限公司', '超级管理员'),
  ('202501150001',  8, '39992', '2025-01-15 10:15:00', '小米 15 Ultra',          '深圳市兴鑫磊光电科技有限公司', '超级管理员'),

  -- 2 月：电脑
  ('202502030001',  6, '53994', '2025-02-03 14:00:00', '联想 拯救者 Y9000P',     '大雅计算机技术有限公司',     '超级管理员'),
  ('202502180001',  4, '30396', '2025-02-18 09:50:00', '华硕 天选 5',            '大雅计算机技术有限公司',     '李茂'),

  -- 3–4 月：零食 + 饮料
  ('202503020001', 50, '349.5', '2025-03-02 15:20:00', '三只松鼠 每日坚果',      '龙泉绿瓯食品有限公司',       '李茂'),
  ('202503150001', 80, '360',   '2025-03-15 11:45:00', '元气森林 苏打气泡水',    '龙泉绿瓯食品有限公司',       '超级管理员'),
  ('202504050001', 30, '209.7', '2025-04-05 10:40:00', '三只松鼠 每日坚果',      '龙泉绿瓯食品有限公司',       '超级管理员'),
  ('202504200001', 60, '270',   '2025-04-20 16:10:00', '元气森林 苏打气泡水',    '龙泉绿瓯食品有限公司',       '李茂'),

  -- 6–7 月：水果 + 手机
  ('202506100001', 40, '2396',  '2025-06-10 14:05:00', '陕西洛川苹果',           '上海水果电子商务有限公司',   '超级管理员'),
  ('202507010001', 30, '1497',  '2025-07-01 11:30:00', '云南冰糖橙',             '上海水果电子商务有限公司',   '超级管理员'),
  ('202507200001', 12, '55992', '2025-07-20 10:20:00', 'OPPO Find X8',           '深圳市兴鑫磊光电科技有限公司','李茂'),

  -- 9 月：电脑
  ('202509080001',  5, '44995', '2025-09-08 16:30:00', '联想 拯救者 Y9000P',     '大雅计算机技术有限公司',     '超级管理员'),
  ('202509120001',  8, '60792', '2025-09-12 10:00:00', '华硕 天选 5',            '湖北博聚信息技术有限公司',   '超级管理员'),

  -- 11–12 月：混合
  ('202511050001', 20, '9998',  '2025-11-05 09:50:00', 'OPPO Find X8',           '深圳市兴鑫磊光电科技有限公司','超级管理员'),
  ('202511180001',100, '699',   '2025-11-18 13:25:00', '三只松鼠 每日坚果',      '龙泉绿瓯食品有限公司',       '李茂'),
  ('202511250001',120, '540',   '2025-11-25 15:40:00', '元气森林 苏打气泡水',    '龙泉绿瓯食品有限公司',       '超级管理员'),
  ('202512050001', 50, '2995',  '2025-12-05 09:15:00', '陕西洛川苹果',           '上海水果电子商务有限公司',   '超级管理员'),
  ('202512200001', 40, '1996',  '2025-12-20 10:00:00', '云南冰糖橙',             '上海水果电子商务有限公司',   '超级管理员');

-- ----------------------------
-- Table structure for returngoods
-- ----------------------------
DROP TABLE IF EXISTS `returngoods`;
CREATE TABLE `returngoods`  (
  `returngoods_id` int(11) NOT NULL AUTO_INCREMENT,
  `returngoods_count` int(11) NULL DEFAULT NULL,
  `returngoods_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `returngoods_addtime` datetime(0) NULL DEFAULT NULL,
  `returngoods_goods` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `returngoods_supplier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `returngoods_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `returngoods_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`returngoods_id`) USING BTREE,
  INDEX `returngoods_num`(`returngoods_num`) USING BTREE,
  INDEX `ix_returngoods_returngoods_addtime`(`returngoods_addtime`) USING BTREE,
  CONSTRAINT `returngoods_ibfk_1` FOREIGN KEY (`returngoods_num`) REFERENCES `purchase` (`purchase_num`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- 2025 年部分退货
INSERT INTO `returngoods` VALUES
(2,  1, '11665', '2025-02-28 11:00:00', 'OPPO Find X8',           '5', '李茂',       '202507050001'),
(4, 10, '69.9',  '2025-03-30 09:20:00', '三只松鼠 每日坚果',      '3', '超级管理员', '202503080001');

-- ----------------------------
-- Table structure for inwarehouse
-- ----------------------------
DROP TABLE IF EXISTS `inwarehouse`;
CREATE TABLE `inwarehouse`  (
  `inwarehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `inwarehouse_count` int(11) NULL DEFAULT NULL,
  `inwarehouse_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inwarehouse_addtime` datetime(0) NULL DEFAULT NULL,
  `inwarehouse_goods` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inwarehouse_supplier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inwarehouse_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inwarehouse_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`inwarehouse_id`) USING BTREE,
  INDEX `ix_inwarehouse_inwarehouse_addtime`(`inwarehouse_addtime`) USING BTREE,
  INDEX `inwarehouse_ibfk_1`(`inwarehouse_num`) USING BTREE,
  CONSTRAINT `inwarehouse_ibfk_1` FOREIGN KEY (`inwarehouse_num`) REFERENCES `purchase` (`purchase_num`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `inwarehouse`
  (inwarehouse_count, inwarehouse_price, inwarehouse_addtime,
   inwarehouse_goods,         inwarehouse_supplier,               inwarehouse_user_name, inwarehouse_num)
VALUES
 (10, '69990', '2025-01-01 10:00:00', '华为 Mate 60 Pro',       '深圳市兴鑫磊光电科技有限公司', '超级管理员', '202501010001'),
  ( 8, '39992', '2025-01-16 09:30:00', '小米 15 Ultra',          '深圳市兴鑫磊光电科技有限公司', '超级管理员', '202501150001'),
  ( 6, '53994', '2025-02-03 15:00:00', '联想 拯救者 Y9000P',     '大雅计算机技术有限公司',     '超级管理员', '202502030001'),
  ( 4, '30396', '2025-02-18 10:30:00', '华硕 天选 5',            '大雅计算机技术有限公司',     '李茂',       '202502180001'),
  (50, '349.5', '2025-03-02 16:00:00', '三只松鼠 每日坚果',      '龙泉绿瓯食品有限公司',       '李茂',       '202503020001'),
  (80, '360',   '2025-03-15 12:30:00', '元气森林 苏打气泡水',    '龙泉绿瓯食品有限公司',       '超级管理员', '202503150001'),
  (30, '209.7', '2025-04-05 11:20:00', '三只松鼠 每日坚果',      '龙泉绿瓯食品有限公司',       '超级管理员', '202504050001'),
  (60, '270',   '2025-04-20 17:00:00', '元气森林 苏打气泡水',    '龙泉绿瓯食品有限公司',       '李茂',       '202504200001'),
  (40, '2396',  '2025-06-10 15:00:00', '陕西洛川苹果',           '上海水果电子商务有限公司',   '超级管理员', '202506100001'),
  (30, '1497',  '2025-07-01 12:10:00', '云南冰糖橙',             '上海水果电子商务有限公司',   '超级管理员', '202507010001'),
  (12, '55992', '2025-07-20 11:00:00', 'OPPO Find X8',           '深圳市兴鑫磊光电科技有限公司','李茂',       '202507200001'),
  ( 5, '44995', '2025-09-08 17:00:00', '联想 拯救者 Y9000P',     '大雅计算机技术有限公司',     '超级管理员', '202509080001'),
  ( 8, '60792', '2025-09-12 11:00:00', '华硕 天选 5',            '湖北博聚信息技术有限公司',   '超级管理员', '202509120001'),
  (20, '9998',  '2025-11-05 10:30:00', 'OPPO Find X8',           '深圳市兴鑫磊光电科技有限公司','超级管理员', '202511050001'),
  (100,'699',   '2025-11-18 14:10:00', '三只松鼠 每日坚果',      '龙泉绿瓯食品有限公司',       '李茂',       '202511180001'),
  (120,'540',   '2025-11-25 16:20:00', '元气森林 苏打气泡水',    '龙泉绿瓯食品有限公司',       '超级管理员', '202511250001'),
  (50, '2995',  '2025-12-05 10:00:00', '陕西洛川苹果',           '上海水果电子商务有限公司',   '超级管理员', '202512050001'),
  (40, '1996',  '2025-12-20 11:00:00', '云南冰糖橙',             '上海水果电子商务有限公司',   '超级管理员', '202512200001');

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sales_count` int(11) NULL DEFAULT NULL,
  `sales_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sales_addtime` datetime(0) NULL DEFAULT NULL,
  `sales_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sales_client_id` int(11) NULL DEFAULT NULL,
  `sales_goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sales_id`) USING BTREE,
  UNIQUE INDEX `sales_num`(`sales_num`) USING BTREE,
  INDEX `sales_user_name`(`sales_user_name`) USING BTREE,
  INDEX `sales_client_id`(`sales_client_id`) USING BTREE,
  INDEX `sales_goods_name`(`sales_goods_name`) USING BTREE,
  INDEX `ix_sales_sales_addtime`(`sales_addtime`) USING BTREE,
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`sales_user_name`)  REFERENCES `user`   (`user_name`)  ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`sales_client_id`) REFERENCES `client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`sales_goods_name`)REFERENCES `goods`  (`goods_name`)ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- 2025 年销售单：基本覆盖全年多个月份
INSERT INTO `sales`
  (sales_num,    sales_count, sales_price, sales_addtime,
   sales_user_name, sales_client_id, sales_goods_name)
VALUES
 ('202501050001',  3, '20997', '2025-01-05 10:20:00', '超级管理员', 1, '华为 Mate 60 Pro'),
  ('202501200001',  2, '9998',  '2025-01-20 15:10:00', '李茂',       2, '小米 15 Ultra'),

  ('202502050001',  2, '17998', '2025-02-05 11:25:00', '超级管理员', 3, '联想 拯救者 Y9000P'),
  ('202502200001',  2, '15198', '2025-02-20 16:40:00', '李茂',       4, '华硕 天选 5'),

  ('202503080001', 20, '139.8', '2025-03-08 09:35:00', '超级管理员', 5, '三只松鼠 每日坚果'),
  ('202503220001', 24, '108',   '2025-03-22 14:05:00', '李茂',       6, '元气森林 苏打气泡水'),

  ('202504100001', 30, '209.7', '2025-04-10 10:00:00', '超级管理员', 7, '三只松鼠 每日坚果'),
  ('202504260001', 36, '162',   '2025-04-26 16:20:00', '超级管理员', 8, '元气森林 苏打气泡水'),

  ('202506150001', 15, '899',   '2025-06-15 11:15:00', '李茂',       9, '陕西洛川苹果'),
  ('202506280001', 10, '499',   '2025-06-28 15:30:00', '超级管理员', 10,'云南冰糖橙'),

  ('202507050001',  5, '23330', '2025-07-05 09:50:00', '超级管理员', 1, 'OPPO Find X8'),
  ('202507220001',  3, '17499', '2025-07-22 13:40:00', '李茂',       2, 'OPPO Find X8'),

  ('202509100001',  2, '17998', '2025-09-10 10:10:00', '超级管理员', 3, '联想 拯救者 Y9000P'),
  ('202509250001',  1, '7599',  '2025-09-25 15:05:00', '李茂',       4, '华硕 天选 5'),

  ('202511060001', 40, '180',   '2025-11-06 09:30:00', '超级管理员', 5, '元气森林 苏打气泡水'),
  ('202511200001', 50, '349.5', '2025-11-20 14:10:00', '李茂',       6, '三只松鼠 每日坚果'),

  ('202512100001', 20, '1198',  '2025-12-10 10:00:00', '超级管理员', 7, '陕西洛川苹果'),
  ('202512230001', 10, '499',   '2025-12-23 16:30:00', '超级管理员', 8, '云南冰糖橙');

-- ----------------------------
-- Table structure for sealreturngoods
-- ----------------------------
DROP TABLE IF EXISTS `sealreturngoods`;
CREATE TABLE `sealreturngoods`  (
  `sealreturngoods_id` int(11) NOT NULL AUTO_INCREMENT,
  `sealreturngoods_count` int(11) NULL DEFAULT NULL,
  `sealreturngoods_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sealreturngoods_addtime` datetime(0) NULL DEFAULT NULL,
  `sealreturngoods_goods` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sealreturngoods_supplier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sealreturngoods_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sealreturngoods_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sealreturngoods_id`) USING BTREE,
  INDEX `sealreturngoods_num`(`sealreturngoods_num`) USING BTREE,
  INDEX `ix_sealreturngoods_sealreturngoods_addtime`(`sealreturngoods_addtime`) USING BTREE,
  CONSTRAINT `sealreturngoods_ibfk_1` FOREIGN KEY (`sealreturngoods_num`) REFERENCES `sales` (`sales_num`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- 2025 年销售退货（少量）
INSERT INTO `sealreturngoods` VALUES
(2,  2, '20998', '2025-02-28 11:00:00', 'Apple MacBook Pro', '6', '李茂',       '202502200001'),
(4,  5, '192.5', '2025-03-30 09:20:00', '港荣蒸蛋糕',         '3', '超级管理员', '202503080001');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_count` int(11) NULL DEFAULT NULL,
  `stock_price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stock_addtime` datetime(0) NULL DEFAULT NULL,
  `stock_goods` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stock_supplier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stock_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stock_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stock_id`) USING BTREE,
  INDEX `stock_num`(`stock_num`) USING BTREE,
  INDEX `ix_stock_stock_addtime`(`stock_addtime`) USING BTREE,
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`stock_num`) REFERENCES `sales` (`sales_num`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `stock`
  (stock_count, stock_price, stock_addtime,
   stock_goods,               stock_supplier, stock_user_name, stock_num)
VALUES
  ( 3, '20997', '2025-01-05 11:00:00', '华为 Mate 60 Pro',         '5', '超级管理员', '202501050001'),
  ( 2, '9998',  '2025-01-20 16:00:00', '小米 15 Ultra',            '5', '李茂',       '202501200001'),
  ( 2, '17998', '2025-02-05 12:10:00', '联想 拯救者 Y9000P',       '7', '超级管理员', '202502050001'),
  ( 2, '15198', '2025-02-20 17:10:00', '华硕 天选 5',              '7', '李茂',       '202502200001'),
  (20, '139.8', '2025-03-08 10:10:00', '三只松鼠 每日坚果',        '3', '超级管理员', '202503080001'),
  (24, '108',   '2025-03-22 15:00:00', '元气森林 苏打气泡水',      '3', '李茂',       '202503220001'),
  (30, '209.7', '2025-04-10 11:00:00', '三只松鼠 每日坚果',        '3', '超级管理员', '202504100001'),
  (36, '162',   '2025-04-26 17:10:00', '元气森林 苏打气泡水',      '3', '超级管理员', '202504260001'),
  (15, '899',   '2025-06-15 12:00:00', '陕西洛川苹果',             '8', '李茂',       '202506150001'),
  (10, '499',   '2025-06-28 16:10:00', '云南冰糖橙',               '8', '超级管理员', '202506280001'),
  ( 5, '23330', '2025-07-05 10:30:00', 'OPPO Find X8',             '2', '超级管理员', '202507050001'),
  ( 3, '17499', '2025-07-22 14:20:00', 'OPPO Find X8',             '2', '李茂',       '202507220001'),
  ( 2, '17998', '2025-09-10 11:00:00', '联想 拯救者 Y9000P',       '7', '超级管理员', '202509100001'),
  ( 1, '7599',  '2025-09-25 16:00:00', '华硕 天选 5',              '6', '李茂',       '202509250001'),
  (40, '180',   '2025-11-06 10:10:00', '元气森林 苏打气泡水',      '3', '超级管理员', '202511060001'),
  (50, '349.5', '2025-11-20 15:00:00', '三只松鼠 每日坚果',        '3', '李茂',       '202511200001'),
  (20, '1198',  '2025-12-10 11:00:00', '陕西洛川苹果',             '8', '超级管理员', '202512100001'),
  (10, '499',   '2025-12-23 17:10:00', '云南冰糖橙',               '8', '超级管理员', '202512230001');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `warehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_goods_num` int(11) NULL DEFAULT NULL,
  `warehouse_goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warehouse_supplier_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`warehouse_id`) USING BTREE,
  INDEX `warehouse_goods_name`(`warehouse_goods_name`) USING BTREE,
  INDEX `warehouse_supplier_name`(`warehouse_supplier_name`) USING BTREE,
  CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`warehouse_goods_name`)   REFERENCES `goods`    (`goods_name`)   ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `warehouse_ibfk_2` FOREIGN KEY (`warehouse_supplier_name`)REFERENCES `supplier` (`supplier_name`)ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- 简单按 2025 年进出库结果给一些期末库存（大概即可，统计图不依赖这个表）
INSERT INTO `warehouse` VALUES
(1,  7,  '华为 Mate 60 Pro',         '深圳市兴鑫磊光电科技有限公司'),
(2,  6,  '小米 15 Ultra',            '深圳市兴鑫磊光电科技有限公司'),
(3,  9,  '联想 拯救者 Y9000P',       '大雅计算机技术有限公司'),
(4, 10,  '华硕 天选 5',              '大雅计算机技术有限公司'),
(5, 90,  '三只松鼠 每日坚果',        '龙泉绿瓯食品有限公司'),
(6,120,  '元气森林 苏打气泡水',      '龙泉绿瓯食品有限公司'),
(7, 45,  '陕西洛川苹果',             '上海水果电子商务有限公司'),
(8, 60,  '云南冰糖橙',               '上海水果电子商务有限公司'),
(9, 15,  'OPPO Find X8',             '深圳市兴鑫磊光电科技有限公司');

SET FOREIGN_KEY_CHECKS = 1;