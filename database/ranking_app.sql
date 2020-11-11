-- Adminer 4.7.4 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';

CREATE DATABASE `ranking_app` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `ranking_app`;

CREATE TABLE `lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `list_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `in_list` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_bin NOT NULL,
  `artist` varchar(500) COLLATE utf8_bin NOT NULL,
  `image_filename` varchar(900) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `in_list` (`in_list`),
  CONSTRAINT `list_elements_ibfk_1` FOREIGN KEY (`in_list`) REFERENCES `lists` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


-- 2020-11-11 14:37:54