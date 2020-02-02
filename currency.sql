-- Adminer 4.7.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `currency` (`id`, `symbol`, `name`, `code`) VALUES
(1,	'Br',	'Belarus Ruble',	'by'),
(2,	'₽',	'Russian Ruble',	'ru'),
(3,	'₴',	'Ukrainian Hryvnia',	'ua'),
(4,	'₸',	'Kazakhstan Tenge',	'kz'),
(5,	'лв',	'Uzbekistani Som',	'uz'),
(6,	'$',	'US Dollar',	'us');

-- 2020-02-02 16:34:53
