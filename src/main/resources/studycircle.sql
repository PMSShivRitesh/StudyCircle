-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.5.48-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for studycircle
DROP DATABASE IF EXISTS `studycircle`;
CREATE DATABASE IF NOT EXISTS `studycircle` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `studycircle`;


-- Dumping structure for table studycircle.hibernate_sequence
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table studycircle.hibernate_sequence: ~3 rows (approximately)
DELETE FROM `hibernate_sequence`;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(29),
	(29),
	(29);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;


-- Dumping structure for table studycircle.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table studycircle.role: ~4 rows (approximately)
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `description`, `name`) VALUES
	(1, 'ROLE_ADMIN', 'ROLE_ADMIN'),
	(2, 'ROLE_OPERATOR', 'ROLE_OPERATOR'),
	(3, 'ROLE_SUPERADMIN', 'ROLE_SUPERADMIN'),
	(4, 'ROLE_SYSTEMADMIN', 'ROLE_SYSTEMADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table studycircle.student
DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `current_address` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_mobile_no` varchar(255) DEFAULT NULL,
  `parent_occupation` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `photo_id_proof_no` varchar(255) DEFAULT NULL,
  `photo_id_proof_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `student_exam_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Dumping data for table studycircle.student: ~15 rows (approximately)
DELETE FROM `student`;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `current_address`, `date`, `email_id`, `mobile_no`, `name`, `parent_mobile_no`, `parent_occupation`, `permanent_address`, `photo_id_proof_no`, `photo_id_proof_type`, `status`, `student_exam_desc`) VALUES
	(13, 'Sangavi', '2017-11-25 00:00:00', 'a@gmail.com', '8888888888', 'Vivek Nerle', '8888888888', 'Job', 'Kolhapur', '5555555555555555555555', '', NULL, 'SSC'),
	(14, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Gohil', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(16, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(17, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(18, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(19, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(20, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(21, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(22, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(23, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(24, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(25, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(26, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(27, 'Aundh Pune', '2017-11-25 00:00:00', 's.mhadiwale@gmail.com', '9999999999', 'Mahesh Joshi', '8888888888', 'Bussiness Man', 'Manwat', 'assad', 'ELECTION CARD', NULL, 'xyz'),
	(28, 'saf', '2017-11-25 00:00:00', 'a@gmail.com', '3242544444', 'Vivek Nerle', '2353333333', 'adsgf', 'asdf', 'assad', 'ELECTION CARD', NULL, 'sdg');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


-- Dumping structure for table studycircle.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table studycircle.user: ~1 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `mobile_no`, `name`, `password`, `username`) VALUES
	(1, 'vivek@gmail.com', '999999999999999', 'vivek', '$2a$10$GkDMrt13Kfefdbh.aoTIZepLWMFN435iCGaClH3c60D5SBtjN.FdO', 'vivek@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table studycircle.user_role
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table studycircle.user_role: ~1 rows (approximately)
DELETE FROM `user_role`;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
	(1, 4);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
