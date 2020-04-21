/*
Navicat MySQL Data Transfer

Source Server         : AION SERVER TEST
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : al_server_gs

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-21 19:45:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `player_shugo_sweep`
-- ----------------------------
DROP TABLE IF EXISTS `player_shugo_sweep`;
CREATE TABLE `player_shugo_sweep` (
  `player_id` int(11) NOT NULL,
  `free_dice` int(11) NOT NULL,
  `sweep_step` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  PRIMARY KEY (`player_id`),
  CONSTRAINT `player_shugo_sweep_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of player_shugo_sweep
-- ----------------------------
INSERT INTO `player_shugo_sweep` VALUES ('104477', '5', '0', '1');
