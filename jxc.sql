SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- 如果没有库自己建一下（已有就可以注释掉）
-- CREATE DATABASE IF NOT EXISTS dbms CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

USE dbms;

-----------------------------
-- Table: client
-----------------------------
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
(9, '刘旭', '山东日照市', '110', 2),
(10,'李烈', '山东日照市', '112', 4);

-----------------------------
-- Table: duty
-----------------------------
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
(1, '管理员', '2018-11-08 19:00:56', 0),
(2, '普通员工', '2018-11-08 19:00:56', 0),
(4, '部门经理', '2018-11-09 13:10:05', 0);

-----------------------------
-- Table: goods
-----------------------------
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
(2, 'Apple 苹果 iPhone Xs Max ', '10038', '商品名称：Apple苹果Xs Max\r\n商品毛重：0.6kg\r\n多卡支持：双卡双待单4G\r\n机身厚度：薄（7mm-8.5mm）\r\n拍照特点：后置双摄像头，光学变焦，智能拍照\r\n网络制式：4G LTE全网通'),
(3, '小米Mix3 ', '3299', '商品名称：小米MIX3\r\n商品毛重：0.88kg\r\n商品产地：中国大陆'),
(4, 'Apple iPhone X ', '6999', '商品名称：AppleiPhone X \r\n商品毛重：435.00g \r\n商品产地：中国大陆'),
(5, '戴尔DELL游匣G3烈焰版', '5899', '商品名称：戴尔G3\r\n商品毛重：3.63kg\r\n商品产地：中国大陆\r\n系统：Windows 10\r\n分辨率：全高清屏（1920×1080）\r\n显卡类别：高性能游戏独立显卡\r\n屏幕尺寸：15.6英寸\r\n内存容量：8G\r\n待机时长：9小时以上\r\n游戏性能：吃鸡性能，骨灰级\r\n显卡型号：GTX1050Ti\r\n处理器：Intel i5标准电压版\r\n特性：其他\r\n系列：戴尔-G系列\r\n裸机重量：大于2.5KG\r\n优选服务：两年质保\r\n显存容量：4G\r\n硬盘容量：128G+1T\r\n厚度：20.0mm以上'),
(6, '联想ThinkPad 翼480', '5499', '商品名称：ThinkPad翼480\r\n商品毛重：2.68kg\r\n商品产地：中国大陆\r\n系统：Windows 10\r\n分辨率：全高清屏（1920×1080）\r\n显卡类别：入门级游戏独立显卡\r\n屏幕尺寸：14.0英寸\r\n内存容量：8G\r\n待机时长：5-7小时\r\n色系：其他色系\r\n显卡型号：其他'),
(7, 'Apple MacBook Pro', '10499', '商品名称：AppleMPXU2CH/A\r\n商品毛重：2.64kg\r\n商品产地：中国大陆\r\n系统：MAC\r\n分辨率：其他\r\n显卡类别：集成显卡\r\n屏幕尺寸：13.3英寸\r\n内存容量：8G\r\n待机时长：9小时以上\r\n色系：其他色系\r\n显卡型号：其他'),
(8, '港荣蒸蛋糕', '38.5', '商品名称：港荣港荣蒸奶香蛋糕整箱1kg 蒸蛋糕 饼干蛋糕软面包零食品\r\n商品毛重：1.28kg\r\n商品产地：中国广东揭阳\r\n国产/进口：国产\r\n加工工艺：蒸蛋糕\r\n包装单位：箱装\r\n是否含糖：含糖'),
(9, '手撕面包', '29', '商品名称：良品铺子 手撕面包1050g整箱装 早餐食品蛋糕口袋小糕点点心孕妇儿童零食大礼包礼盒\r\n店铺： 良品铺子官方旗舰店\r\n商品毛重：1.05kg\r\n商品产地：中国大陆\r\n资质认证：其它\r\n国产/进口：国产'),
(12,'烟台红富士苹果', '49.9', '商品名称：京东生鲜12个烟台红富士\r\n商品毛重：3.11kg\r\n商品产地：山东烟台');

-----------------------------
-- Table: salary
-----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `salary_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_base` int(11) NULL DEFAULT NULL,
  `salary_grade` int(11) NULL DEFAULT NULL,
  `salary_subsidy` int(11) NULL DEFAULT NULL,
  `salary_other` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`salary_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-----------------------------
-- Table: section
-----------------------------
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
(1, '管理部门', '2018-11-08 19:00:56', 0),
(2, '临时部',   '2018-11-08 19:00:56', 0),
(3, '销售部',   '2018-11-09 13:09:46', 0),
(4, '采购部',   '2018-11-09 13:14:20', 0);

-----------------------------
-- Table: power
-----------------------------
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
(1, 'root',  '2018-11-08 19:00:56'),
(2, 'staff', '2018-11-08 19:00:56');

-----------------------------
-- Table: user
-----------------------------
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
 '916149179@qq.com', '13000000000', '2018-11-08 19:00:56', NULL, 1, '管理部门', '管理员', 'root',  NULL),
(3, 'limao', '李茂',     '男',
 'pbkdf2:sha256:50000$vi4b5LR1$b8e5578dcd412bf25e06c924ae11c6f92e5f077fff709660796c93e15a3f679d',
 'limao@wesm.com', '18965441256', '2018-11-08 19:30:16', NULL, 0, '临时部',   '普通员工', 'staff', NULL);

-----------------------------
-- Table: supplier
-----------------------------
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

-----------------------------
-- Table: purchase
-----------------------------
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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `purchase` VALUES
(1,  '2018110819270831', 10, '100380', '2018-11-01 19:27:09', 'Apple 苹果 iPhone Xs Max ', '深圳市兴鑫磊光电科技有限公司', '超级管理员'),
(4,  '2018110819304186', 60, '4740',   '2018-11-05 19:30:42', '小米Mix3 ',                 '龙泉绿瓯食品有限公司',       '超级管理员'),
(13, '2018110820455295', 2,  '6598',   '2018-11-05 20:45:53', '小米Mix3 ',                 '大雅计算机技术有限公司',     '超级管理员'),
(15, '2018110820503816', 10, '54990',  '2018-11-05 20:50:39', '联想ThinkPad 翼480',        '大雅计算机技术有限公司',     '超级管理员'),
(20, '2018110821283258', 15, '577.5',  '2018-11-08 21:28:32', '港荣蒸蛋糕',               '龙泉绿瓯食品有限公司',       '李茂'),
(21, '2018110821422694', 5,  '249.5',  '2018-11-08 21:42:26', '烟台红富士苹果',           '四平市新华汽车销售维修服务有限公司', '超级管理员');

-----------------------------
-- Table: returngoods
-----------------------------
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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `returngoods` VALUES
(11, 10, '54990', NULL, '联想ThinkPad 翼480', '大雅计算机技术有限公司', '超级管理员', '2018110820503816'),
(14, 2,  '6598',  NULL, '小米Mix3 ',          '大雅计算机技术有限公司', '超级管理员', '2018110820455295');

-----------------------------
-- Table: sales
-----------------------------
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `sales` VALUES
(3, '2018110820530679', 10, '104990', '2018-11-06 20:53:07', '超级管理员', 1, 'Apple MacBook Pro'),
(4, '2018110821044480', 10, '54990',  '2018-11-07 21:04:44', '李茂',       6, '联想ThinkPad 翼480'),
(9, '2018110821330233', 10, '385',    '2018-11-06 21:33:03', '超级管理员', 3, '港荣蒸蛋糕');

-----------------------------
-- Table: sealreturngoods
-----------------------------
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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `sealreturngoods` VALUES
(2, 10, '54990', NULL, '联想ThinkPad 翼480', '6', '李茂',       '2018110821044480'),
(4, 10, '385',   NULL, '港荣蒸蛋糕',         '3', '超级管理员', '2018110821330233');

-----------------------------
-- Table: inwarehouse
-----------------------------
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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `inwarehouse` VALUES
(22, 10, '54990', NULL, '联想ThinkPad 翼480', '大雅计算机技术有限公司', '超级管理员', '2018110820503816'),
(25, 2,  '6598',  NULL, '小米Mix3 ',          '大雅计算机技术有限公司', '超级管理员', '2018110820455295'),
(26, 15, '577.5', NULL, '港荣蒸蛋糕',         '龙泉绿瓯食品有限公司',   '李茂',       '2018110821283258'),
(27, 15, '577.5', NULL, '港荣蒸蛋糕',         '龙泉绿瓯食品有限公司',   '李茂',       '2018110821283258'),
(28, 10, '54990', NULL, '联想ThinkPad 翼480', '大雅计算机技术有限公司', '超级管理员', '2018110820503816'),
(29, 2,  '6598',  NULL, '小米Mix3 ',          '大雅计算机技术有限公司', '超级管理员', '2018110820455295');

-----------------------------
-- Table: warehouse
-----------------------------
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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `warehouse` VALUES
(2,  6,  'Apple MacBook Pro',               '大雅计算机技术有限公司'),
(3,  10, '联想ThinkPad 翼480',             '大雅计算机技术有限公司'),
(4,  10, 'Apple 苹果 iPhone Xs Max ',      '深圳市兴鑫磊光电科技有限公司'),
(8,  10, '小米Mix3 ',                      '深圳市兴鑫磊光电科技有限公司'),
(10, 10, 'Apple MacBook Pro',               '大雅计算机技术有限公司'),
(18, 10, 'Apple MacBook Pro',               '大雅计算机技术有限公司'),
(19, 90, '港荣蒸蛋糕',                     '缙云县夏氏饮料有限公司'),
(20, 2,  '小米Mix3 ',                      '大雅计算机技术有限公司'),
(21, 10, '手撕面包',                       '龙泉绿瓯食品有限公司'),
(22, 10, '联想ThinkPad 翼480',             '大雅计算机技术有限公司'),
(23, 15, '手撕面包',                       '龙泉绿瓯食品有限公司'),
(24, 10, '港荣蒸蛋糕',                     '龙泉绿瓯食品有限公司'),
(25, 2,  '小米Mix3 ',                      '大雅计算机技术有限公司'),
(26, 15, '港荣蒸蛋糕',                     '龙泉绿瓯食品有限公司'),
(27, 15, '港荣蒸蛋糕',                     '龙泉绿瓯食品有限公司'),
(28, 10, '联想ThinkPad 翼480',             '大雅计算机技术有限公司'),
(29, 2,  '小米Mix3 ',                      '大雅计算机技术有限公司');

-----------------------------
-- Table: stock
-----------------------------
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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

INSERT INTO `stock` VALUES
(2, 10, '54990', NULL, '联想ThinkPad 翼480', '6', '李茂',       '2018110821044480'),
(4, 10, '385',   NULL, '港荣蒸蛋糕',         '3', '超级管理员', '2018110821330233');


/* ==== 下面是 2025 年的数据更新和新增 ==== */

-- 把原有 2018 的采购/销售时间整体平移到 2025
UPDATE purchase
SET purchase_addtime = DATE_ADD(purchase_addtime, INTERVAL 7 YEAR)
WHERE purchase_addtime IS NOT NULL;

UPDATE sales
SET sales_addtime = DATE_ADD(sales_addtime, INTERVAL 7 YEAR)
WHERE sales_addtime IS NOT NULL;

/* 新增 2025 年采购 + 入库 */
INSERT INTO purchase
  (purchase_num, purchase_count, purchase_price, purchase_addtime,
   purchase_goods,              purchase_supplier,                  purchase_user_name)
VALUES
  ('202501010001', 10, '69990', '2025-01-01 09:30:00', 'Apple iPhone X ',        '深圳市兴鑫磊光电科技有限公司', '超级管理员'),
  ('202501050001',  6, '62994', '2025-01-05 10:10:00', '联想ThinkPad 翼480',    '大雅计算机技术有限公司',     '超级管理员'),
  ('202503020001', 30, '1155',  '2025-03-02 15:20:00', '港荣蒸蛋糕',             '龙泉绿瓯食品有限公司',       '李茂'),
  ('202503150001', 40, '1160',  '2025-03-15 11:45:00', '手撕面包',               '龙泉绿瓯食品有限公司',       '超级管理员'),
  ('202506100001', 25, '1247.5','2025-06-10 14:05:00', '烟台红富士苹果',         '上海水果电子商务有限公司',   '超级管理员'),
  ('202509080001',  5, '52495', '2025-09-08 16:30:00', 'Apple MacBook Pro',      '大雅计算机技术有限公司',     '超级管理员'),
  ('202509120001',  8, '47192', '2025-09-12 10:00:00', '戴尔DELL游匣G3烈焰版',   '湖北博聚信息技术有限公司',   '超级管理员'),
  ('202511050001', 12, '39588', '2025-11-05 09:50:00', '小米Mix3 ',              '深圳市兴鑫磊光电科技有限公司','超级管理员'),
  ('202511180001', 50, '1925',  '2025-11-18 13:25:00', '港荣蒸蛋糕',             '龙泉绿瓯食品有限公司',       '李茂'),
  ('202511250001', 60, '1740',  '2025-11-25 15:40:00', '手撕面包',               '龙泉绿瓯食品有限公司',       '超级管理员');

INSERT INTO inwarehouse
  (inwarehouse_count, inwarehouse_price, inwarehouse_addtime,
   inwarehouse_goods,         inwarehouse_supplier,               inwarehouse_user_name, inwarehouse_num)
VALUES
  (10, '69990', '2025-01-01 10:00:00', 'Apple iPhone X ',      '深圳市兴鑫磊光电科技有限公司', '超级管理员', '202501010001'),
  ( 6, '62994', '2025-01-05 11:00:00', '联想ThinkPad 翼480',  '大雅计算机技术有限公司',     '超级管理员', '202501050001'),
  (30, '1155',  '2025-03-02 16:00:00', '港荣蒸蛋糕',           '龙泉绿瓯食品有限公司',       '李茂',       '202503020001'),
  (40, '1160',  '2025-03-15 12:30:00', '手撕面包',             '龙泉绿瓯食品有限公司',       '超级管理员', '202503150001'),
  (25, '1247.5','2025-06-10 15:00:00', '烟台红富士苹果',       '上海水果电子商务有限公司',   '超级管理员', '202506100001'),
  ( 5, '52495', '2025-09-08 17:00:00', 'Apple MacBook Pro',    '大雅计算机技术有限公司',     '超级管理员', '202509080001'),
  ( 8, '47192', '2025-09-12 11:00:00', '戴尔DELL游匣G3烈焰版', '湖北博聚信息技术有限公司',   '超级管理员', '202509120001'),
  (12, '39588', '2025-11-05 10:30:00', '小米Mix3 ',            '深圳市兴鑫磊光电科技有限公司','超级管理员', '202511050001'),
  (50, '1925',  '2025-11-18 14:10:00', '港荣蒸蛋糕',           '龙泉绿瓯食品有限公司',       '李茂',       '202511180001'),
  (60, '1740',  '2025-11-25 16:20:00', '手撕面包',             '龙泉绿瓯食品有限公司',       '超级管理员', '202511250001');

/* 新增 2025 年销售 + 出库 */
INSERT INTO sales
  (sales_num,    sales_count, sales_price, sales_addtime,
   sales_user_name, sales_client_id, sales_goods_name)
VALUES
  ('202502030001',  4, '27996', '2025-02-03 09:20:00', '超级管理员', 1, 'Apple iPhone X '),
  ('202502150001',  3, '31497', '2025-02-15 14:10:00', '李茂',       6, 'Apple MacBook Pro'),
  ('202504060001', 15, '577.5', '2025-04-06 10:05:00', '超级管理员', 3, '港荣蒸蛋糕'),
  ('202504200001', 18, '522.0', '2025-04-20 16:25:00', '超级管理员', 8, '手撕面包'),
  ('202507010001', 10, '32990', '2025-07-01 11:40:00', '李茂',       4, '小米Mix3 '),
  ('202507150001',  6, '31494', '2025-07-15 09:50:00', '超级管理员', 7, '联想ThinkPad 翼480'),
  ('202510050001', 25, '962.5', '2025-10-05 13:30:00', '超级管理员', 2, '港荣蒸蛋糕'),
  ('202510060001', 20, '580.0', '2025-10-06 10:30:00', '李茂',       5, '手撕面包'),
  ('202512020001', 12, '599.0', '2025-12-02 15:10:00', '超级管理员', 9, '烟台红富士苹果'),
  ('202512150001',  3, '31497', '2025-12-15 17:45:00', '超级管理员', 1, 'Apple MacBook Pro');

INSERT INTO stock
  (stock_count, stock_price, stock_addtime,
   stock_goods,               stock_supplier, stock_user_name, stock_num)
VALUES
  ( 4, '27996', '2025-02-03 10:00:00', 'Apple iPhone X ',      '5', '超级管理员', '202502030001'),
  ( 3, '31497', '2025-02-15 15:00:00', 'Apple MacBook Pro',    '6', '李茂',       '202502150001'),
  (15, '577.5', '2025-04-06 11:00:00', '港荣蒸蛋糕',           '3', '超级管理员', '202504060001'),
  (18, '522.0', '2025-04-20 17:00:00', '手撕面包',             '3', '超级管理员', '202504200001'),
  (10, '32990', '2025-07-01 12:10:00', '小米Mix3 ',            '2', '李茂',       '202507010001'),
  ( 6, '31494', '2025-07-15 10:30:00', '联想ThinkPad 翼480',  '6', '超级管理员', '202507150001'),
  (25, '962.5', '2025-10-05 14:10:00', '港荣蒸蛋糕',           '3', '超级管理员', '202510050001'),
  (20, '580.0', '2025-10-06 11:20:00', '手撕面包',             '3', '李茂',       '202510060001'),
  (12, '599.0', '2025-12-02 16:00:00', '烟台红富士苹果',       '8', '超级管理员', '202512020001'),
  ( 3, '31497', '2025-12-15 18:20:00', 'Apple MacBook Pro',    '7', '超级管理员', '202512150001');

SET FOREIGN_KEY_CHECKS = 1;