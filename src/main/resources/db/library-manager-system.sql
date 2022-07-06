/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : library-manager-system

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 06/07/2022 21:22:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '1005681737@qq.com');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_category` int NULL DEFAULT NULL,
  `book_price` double NULL DEFAULT NULL,
  `book_introduction` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE,
  INDEX `book_category`(`book_category` ASC) USING BTREE,
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`book_category`) REFERENCES `book_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '巨人的陨落', '肯.福莱特', '江苏凤凰文艺出版社', 1, 129, '在第一次世界大战中发生的故事');
INSERT INTO `book` VALUES (2, '三体', '刘慈欣', '南京大学出版社', 1, 68, '科幻小说');
INSERT INTO `book` VALUES (3, '复活', '列夫.托尔斯泰', '上海译文出版社', 1, 19, '俄国小说');
INSERT INTO `book` VALUES (6, '平凡的世界', '路遥', '上海文艺出版社', 1, 88, '孙少平和孙少安两兄弟...');
INSERT INTO `book` VALUES (15, '白鹿原', '陈忠实', '南京出版社', 1, 36, '当代小说');
INSERT INTO `book` VALUES (16, '计算机网络', '谢希仁', '电子工业出版社', 3, 49, '计算机专业书籍');
INSERT INTO `book` VALUES (17, '霍乱时期的爱情', '加西亚·马尔克斯', '译林出版社', 9, 39, '外国小说');
INSERT INTO `book` VALUES (18, '天才在左疯子在右', '高铭', '北京联合出版公司', 1, 39.8, '心理学');
INSERT INTO `book` VALUES (19, '废都', '贾平凹', '商务印书馆', 8, 29, '当代小说');
INSERT INTO `book` VALUES (20, 'jQuery', 'Ryan', '中国电力出版社', 3, 78, 'js库');
INSERT INTO `book` VALUES (21, 'python数据爬虫', '张博文', '清华大学出版社', 3, 52, '带你走进爬虫的世界');
INSERT INTO `book` VALUES (22, '入门python可视化', 'variation', '电子大学出版社', 8, 61, '探究数据背后的秘密');
INSERT INTO `book` VALUES (71, 'Springboot从入门到实践', '筱威', '北京大学出版社', 3, 78, '带你走进spirngboot');
INSERT INTO `book` VALUES (73, 'a', 'a', 'a', 2, 100, 'a');

-- ----------------------------
-- Table structure for book_category
-- ----------------------------
DROP TABLE IF EXISTS `book_category`;
CREATE TABLE `book_category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_category
-- ----------------------------
INSERT INTO `book_category` VALUES (1, '小说');
INSERT INTO `book_category` VALUES (2, '历史');
INSERT INTO `book_category` VALUES (3, '计算机');
INSERT INTO `book_category` VALUES (4, '哲学');
INSERT INTO `book_category` VALUES (5, '社会科学');
INSERT INTO `book_category` VALUES (6, '政治法律');
INSERT INTO `book_category` VALUES (7, '军事科学');
INSERT INTO `book_category` VALUES (8, '中国文学');
INSERT INTO `book_category` VALUES (9, '外国文学');
INSERT INTO `book_category` VALUES (10, '外国传记');
INSERT INTO `book_category` VALUES (11, '英语');
INSERT INTO `book_category` VALUES (12, '俄国小说');
INSERT INTO `book_category` VALUES (13, '心理学');
INSERT INTO `book_category` VALUES (14, '言情小说');
INSERT INTO `book_category` VALUES (15, '武侠小说');
INSERT INTO `book_category` VALUES (16, '环境科学');
INSERT INTO `book_category` VALUES (17, '纪实文学');

-- ----------------------------
-- Table structure for borrowingbooks
-- ----------------------------
DROP TABLE IF EXISTS `borrowingbooks`;
CREATE TABLE `borrowingbooks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `book_id` int NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `book_id`(`book_id` ASC) USING BTREE,
  CONSTRAINT `borrowingbooks_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `borrowingbooks_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrowingbooks
-- ----------------------------
INSERT INTO `borrowingbooks` VALUES (9, 5, 1, '2020-08-04');
INSERT INTO `borrowingbooks` VALUES (28, 5, 19, '2020-08-01');
INSERT INTO `borrowingbooks` VALUES (55, 1, 21, '2020-08-19');
INSERT INTO `borrowingbooks` VALUES (57, 1, 17, '2020-08-19');
INSERT INTO `borrowingbooks` VALUES (61, 1, 16, '2020-08-21');
INSERT INTO `borrowingbooks` VALUES (65, 2, 20, '2022-07-06');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '野兽先辈', '123456', '1005681737@qq.com');
INSERT INTO `user` VALUES (2, 'PYS', '114514', 'p13638345457@outlook.com');
INSERT INTO `user` VALUES (5, '我修院', '123456', '1919810@163.com');
INSERT INTO `user` VALUES (6, 'LeBronJames', '123456', '114514@gmail.com');
INSERT INTO `user` VALUES (7, '科比', '123456', 'p13638345457@outlook.com');
INSERT INTO `user` VALUES (8, '柏拉图', '123456', '1005681737@qq.com');
INSERT INTO `user` VALUES (9, '李田所', '123456', '114514@gmail.com');
INSERT INTO `user` VALUES (10, '欧文', '123456', '1005681737@qq.com');
INSERT INTO `user` VALUES (11, '库兹马', '123456', 'p13638345457@outlook.com');
INSERT INTO `user` VALUES (13, '德川', '123456', '114514@gmail.com');
INSERT INTO `user` VALUES (23, '远野', '123456', '114514@gmail.com');
INSERT INTO `user` VALUES (29, 'test', 'test', 'test@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
