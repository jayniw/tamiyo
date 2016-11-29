/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : tamiyo

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-11-28 21:45:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id de la persona',
  `nombre` varchar(255) NOT NULL,
  `paterno` varchar(255) NOT NULL,
  `materno` varchar(255) DEFAULT NULL,
  `nro_doc` varchar(50) NOT NULL COMMENT 'numero/codigo de documento',
  `tipo_doc` enum('CI','PASAPORTE','LIBRETA MILITAR') NOT NULL DEFAULT 'CI' COMMENT 'tipo de documento',
  `lugar_doc` varchar(100) DEFAULT NULL COMMENT 'departamento/ ciudad expedicion del documento',
  `fch_nac` date DEFAULT NULL COMMENT 'fecha de nacimiento de la persona',
  `lugar_nac` varchar(100) DEFAULT NULL COMMENT 'lugar de nacimiento',
  `estado_civil` varchar(50) DEFAULT NULL COMMENT 'estado civil de la persona',
  `profesion` varchar(150) DEFAULT NULL COMMENT 'profesion/ocupacion de la persona',
  `direccion` varchar(255) DEFAULT NULL COMMENT 'direccion/domicilio de la persona',
  `created_by` varchar(50) NOT NULL DEFAULT 'sysadmin' COMMENT 'usuario alta registro',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de creacion del registro',
  `updated_by` varchar(50) DEFAULT 'sysadmin' COMMENT 'usuario modificacion registro',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'fecha modificacion del registro',
  `status` enum('ACTIVO','INACTIVO','BLOQUEADO') NOT NULL DEFAULT 'ACTIVO' COMMENT 'estado del registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
