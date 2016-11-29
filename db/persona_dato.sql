/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : tamiyo

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-11-28 21:46:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for persona_dato
-- ----------------------------
DROP TABLE IF EXISTS `persona_dato`;
CREATE TABLE `persona_dato` (
  `id_persona` bigint(20) NOT NULL,
  `dato_adicional` varchar(255) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'sysadmin' COMMENT 'usuario creacion registro',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha creacion del registro',
  `updated_by` varchar(50) DEFAULT 'sysadmin',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'fecha modificacion del registro',
  `status` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO' COMMENT 'estado del registro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
