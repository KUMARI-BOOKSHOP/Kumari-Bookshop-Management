DROP DATABASE IF EXISTS `pos`;
CREATE DATABASE `pos`;
USE `pos`;
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `buying_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `nic` int(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `emploees`;
CREATE TABLE `emploees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `nic` int(21) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `proName` varchar(45) NOT NULL,
  `nic` int(21) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `transaction_products`;
CREATE TABLE `transaction_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `privilage`;
CREATE TABLE `privilage` (
  `holderId` int(11) NOT NULL AUTO_INCREMENT,
  `holderName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`holderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump completed on 2023-03-25 07:18:30

--© 2023 KUMARI BOOKSHOP #Sahan Nimesha
