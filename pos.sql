/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : pos

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 25/03/2023 06:27:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nic` int(0) NOT NULL,
  `address` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emploees
-- ----------------------------
DROP TABLE IF EXISTS `emploees`;
CREATE TABLE `emploees`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nic` int(0) NOT NULL,
  `address` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for privilage
-- ----------------------------
DROP TABLE IF EXISTS `privilage`;
CREATE TABLE `privilage`  (
  `register_id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`register_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `productId` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `buying_price` int(0) NOT NULL,
  `selling_price` int(0) NOT NULL,
  `stock` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (2, 'ABuP01', 'Atlas Blue Pen', 10, 20, 100);
INSERT INTO `products` VALUES (3, 'ABaP01', 'Atlas Black Pen', 10, 20, 100);
INSERT INTO `products` VALUES (4, 'ARP01', 'Atlas Red pen', 10, 20, 100);
INSERT INTO `products` VALUES (5, 'APP01', 'Atlas Pink Pen', 10, 20, 100);
INSERT INTO `products` VALUES (6, 'AOP01', 'Atlas Orange Pen', 10, 20, 100);
INSERT INTO `products` VALUES (7, 'ALBP01', 'Atlas Light Blue Pen', 10, 20, 100);
INSERT INTO `products` VALUES (8, 'AGP01', 'Atlas Green Pen', 10, 20, 100);
INSERT INTO `products` VALUES (9, 'ASGP01', 'Atlas Solver Gel Pen', 25, 35, 100);
INSERT INTO `products` VALUES (10, 'AGGP01', 'Atlas Gold Gel Pen', 25, 35, 100);
INSERT INTO `products` VALUES (11, 'MBuP01', 'Mango Blue Pen', 10, 20, 100);
INSERT INTO `products` VALUES (12, 'MBaP01', 'Mango Black Pen', 10, 20, 100);
INSERT INTO `products` VALUES (13, 'MRP01', 'Mango Red Pen', 10, 20, 100);
INSERT INTO `products` VALUES (14, 'MOP01', 'Mango Orange Pen', 10, 20, 100);
INSERT INTO `products` VALUES (15, 'MPP01', 'Mango Pink Pen', 10, 20, 100);
INSERT INTO `products` VALUES (16, 'MGP01', 'Mango Green pen ', 10, 20, 100);
INSERT INTO `products` VALUES (17, 'MLBP01', 'MANGO Light Blue Pen', 10, 20, 100);
INSERT INTO `products` VALUES (18, 'MGGP01', 'Mango gold Gel Pen', 25, 35, 100);
INSERT INTO `products` VALUES (19, 'MSGP01', 'Mango Silver Gel Pen', 25, 35, 100);
INSERT INTO `products` VALUES (20, 'AR01', 'Atlas Ruler', 15, 30, 100);
INSERT INTO `products` VALUES (21, 'MR01', 'Mango Ruler', 15, 30, 100);
INSERT INTO `products` VALUES (22, 'NR01', 'Nataraj Ruler', 15, 30, 100);
INSERT INTO `products` VALUES (23, 'NRP01', 'Nataraj Red Pen', 10, 20, 100);
INSERT INTO `products` VALUES (24, 'NOP01', 'Nataraj Orange Pen', 10, 20, 100);
INSERT INTO `products` VALUES (25, 'NPP01', 'Nataraj Pink Pen', 10, 20, 100);
INSERT INTO `products` VALUES (26, 'NBP01', 'Nataraj Blue Pen', 10, 20, 100);
INSERT INTO `products` VALUES (27, 'ABuP02', 'Atlas Blue Pen', 15, 25, 50);
INSERT INTO `products` VALUES (28, 'AOP01', 'Atlas Orange Pen', 10, 20, 100);

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `proName` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nic` int(0) NOT NULL,
  `address` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transaction_products
-- ----------------------------
DROP TABLE IF EXISTS `transaction_products`;
CREATE TABLE `transaction_products`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(0) NOT NULL,
  `product_id` int(0) NOT NULL,
  `product_qty` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `create_on` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- Dump completed on 2023-03-09 20:18:30

--© 2023 KUMARI BOOKSHOP #Sahan Nimesha 
