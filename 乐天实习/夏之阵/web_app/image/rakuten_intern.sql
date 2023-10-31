/*
 Navicat Premium Data Transfer

 Source Server         : connection
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : rakuten_intern

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 22/08/2023 20:58:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `item_id` int NOT NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `cost_price` int NULL DEFAULT NULL,
  `discount_rate` int NULL DEFAULT NULL,
  `production_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `expiration_date` datetime NULL DEFAULT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `store_id` int NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_as_cs ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for recipe
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe`  (
  `recipe_id` int NOT NULL,
  `recipe_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `preparation_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `steps` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  PRIMARY KEY (`recipe_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_as_cs ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe
-- ----------------------------

-- ----------------------------
-- Table structure for store_a
-- ----------------------------
DROP TABLE IF EXISTS `store_a`;
CREATE TABLE `store_a`  (
  `store_id` int NOT NULL,
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `stock_quantity` int NULL DEFAULT NULL,
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_as_cs ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_a
-- ----------------------------

-- ----------------------------
-- Table structure for store_b
-- ----------------------------
DROP TABLE IF EXISTS `store_b`;
CREATE TABLE `store_b`  (
  `store_id` int NOT NULL,
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `stock_quantity` int NULL DEFAULT NULL,
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_as_cs ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_b
-- ----------------------------

-- ----------------------------
-- Table structure for store_c
-- ----------------------------
DROP TABLE IF EXISTS `store_c`;
CREATE TABLE `store_c`  (
  `store_id` int NOT NULL,
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `item_id` int NULL DEFAULT NULL,
  `stock_quantity` int NULL DEFAULT NULL,
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_as_cs ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_c
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
