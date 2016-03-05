-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2016 at 06:13 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ciledger`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('fa6a337bd3a485549f9524d2f7c676a5779e6056', '::1', 1457115938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373131353933383b),
('2f7f7f63331cb811421975294bce004ccb993f93', '::1', 1457117366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373131373037333b757365725f6e616d657c733a353a2261646d696e223b757365725f666e616d657c733a363a2273746576656e223b757365725f6c6e616d657c733a363a22616e6173636f223b),
('a816ef179da35fceed7ed253ff7fb660e6894487', '::1', 1457117588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373131373338383b757365725f6e616d657c733a353a2261646d696e223b757365725f666e616d657c733a363a2273746576656e223b757365725f6c6e616d657c733a363a22616e6173636f223b),
('7306b44feb1668797ba373da74e4d698ed80e372', '::1', 1457117441, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373131373430343b),
('760faf9891c8e483f67b3a0e0ca5578132bd01ab', '::1', 1457117982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373131373639363b757365725f6e616d657c733a353a2261646d696e223b757365725f666e616d657c733a363a2273746576656e223b757365725f6c6e616d657c733a363a22616e6173636f223b),
('3e8ce6f77623415779c52e1409a2d9c1db93bbd9', '::1', 1457118753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373131383338313b757365725f6e616d657c733a353a2261646d696e223b757365725f666e616d657c733a363a2273746576656e223b757365725f6c6e616d657c733a363a22616e6173636f223b),
('03dba9ca052579b7320687c0e029f5ea26d4652f', '::1', 1457118849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373131383735393b757365725f6e616d657c733a353a2261646d696e223b757365725f666e616d657c733a363a2273746576656e223b757365725f6c6e616d657c733a363a22616e6173636f223b),
('216759c0d40bbd653b99785c260637729e3d5214', '::1', 1457152548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373135323534383b),
('94ae99750e3d6268248642f5c6f74b59ec6884ae', '::1', 1457152895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313435373135323838333b);

-- --------------------------------------------------------

--
-- Table structure for table `tblaccess_card`
--

CREATE TABLE IF NOT EXISTS `tblaccess_card` (
  `access_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `access_card_name` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`access_card_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblaccess_card`
--

INSERT INTO `tblaccess_card` (`access_card_id`, `access_card_name`, `deleted`, `date_created`, `date_modified`) VALUES
(1, 'Tabang', 0, '2016-02-25 13:38:25', '2016-02-25 13:38:25'),
(2, 'CSWD', 0, '2016-02-25 13:38:39', '2016-02-25 13:38:39'),
(4, 'DSWD', 0, '2016-02-25 13:38:48', '2016-02-25 13:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblhouse`
--

CREATE TABLE IF NOT EXISTS `tblhouse` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_block_no` int(11) DEFAULT NULL,
  `house_lot_no` int(11) DEFAULT NULL,
  `house_area` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tblhouse`
--

INSERT INTO `tblhouse` (`house_id`, `house_block_no`, `house_lot_no`, `house_area`, `deleted`, `date_created`, `date_modified`) VALUES
(1, 12312, 123, 123, 0, '2016-03-04 15:26:45', '2016-03-04 15:26:45'),
(2, 56456, 3424, 234, 0, '2016-03-04 15:26:53', '2016-03-04 15:26:53'),
(3, 645645, 456456, 456, 0, '2016-03-04 17:15:52', '2016-03-04 17:15:52'),
(4, 5645, 6456, 456, 0, '2016-03-04 17:17:51', '2016-03-04 17:17:51'),
(5, 5645, 6456, 456, 0, '2016-03-04 17:18:26', '2016-03-04 17:18:26'),
(6, 35345, 345, 345, 0, '2016-03-04 17:22:42', '2016-03-04 17:22:42'),
(7, 123, 123, 123, 0, '2016-03-04 17:22:52', '2016-03-04 17:22:52'),
(8, 1234, 123, 123, 0, '2016-03-04 17:26:52', '2016-03-04 17:26:52'),
(9, 8768678, 678678, 78678, 0, '2016-03-04 17:47:51', '2016-03-04 17:47:51'),
(10, 324234, 234, 23423, 0, '2016-03-04 17:48:45', '2016-03-04 17:48:45'),
(11, 1234, 1234, 123, 0, '2016-03-04 19:12:33', '2016-03-04 19:12:33'),
(12, 0, 0, 0, 0, '2016-03-04 19:12:45', '2016-03-04 19:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblhouse_owner`
--

CREATE TABLE IF NOT EXISTS `tblhouse_owner` (
  `house_owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`house_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblmembers`
--

CREATE TABLE IF NOT EXISTS `tblmembers` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_fname` varchar(50) DEFAULT NULL,
  `member_lname` varchar(50) DEFAULT NULL,
  `member_account_no` varchar(50) DEFAULT NULL,
  `member_old_address` varchar(250) DEFAULT NULL,
  `member_old_address_no_of_years` varchar(10) DEFAULT NULL,
  `member_new_address` varchar(250) DEFAULT NULL,
  `member_new_address_no_of_years` varchar(10) DEFAULT NULL,
  `member_gender` varchar(7) DEFAULT NULL,
  `member_bdate` date DEFAULT NULL,
  `member_civil_status` varchar(20) DEFAULT NULL,
  `member_dependents` int(10) DEFAULT NULL,
  `member_religion` varchar(40) DEFAULT NULL,
  `member_monthly_income` varchar(20) DEFAULT NULL,
  `member_previous_occupation` varchar(50) DEFAULT NULL,
  `member_present_occupation` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tblmembers`
--

INSERT INTO `tblmembers` (`member_id`, `member_fname`, `member_lname`, `member_account_no`, `member_old_address`, `member_old_address_no_of_years`, `member_new_address`, `member_new_address_no_of_years`, `member_gender`, `member_bdate`, `member_civil_status`, `member_dependents`, `member_religion`, `member_monthly_income`, `member_previous_occupation`, `member_present_occupation`, `deleted`, `date_created`, `date_modified`) VALUES
(1, 'asdasd', 'sdfsdf', 'sdfgsdf', 'sdfsdf', '123', 'sdafsdf', '123', 'Male', '2016-02-23', 'Married', 123, 'Protestant', '1231234', 'asdasdas', 'asdfsdf', 0, '2016-02-25 13:25:33', '2016-02-25 13:25:33'),
(2, 'asdasd', 'sdasd', 'sdasd', 'asd', '12', 'sad', '12', 'Male', '2016-03-31', 'Married', 0, 'Baptist', 'asdasd', 'asd', 'asd', 0, '2016-03-01 16:40:14', '2016-03-01 16:40:14'),
(3, 'asdasd', 'sdasd', 'sdasd', 'asd', '12', 'sad', '12', 'Male', '2016-03-31', 'Married', 0, 'Baptist', 'asdasd', 'asd', 'asd', 0, '2016-03-01 16:44:58', '2016-03-01 16:44:58'),
(4, 'asdasd', 'sdasd', 'sdasd', 'asd', '12', 'sad', '12', 'Male', '2016-03-31', 'Married', 0, 'Baptist', 'asdasd', 'asd', 'asd', 0, '2016-03-01 16:45:39', '2016-03-01 16:45:39'),
(5, 'asdasd', 'sdasd', 'sdasd', 'asd', '12', 'sad', '12', 'Male', '2016-03-31', 'Married', 0, 'Baptist', 'asdasd', 'asd', 'asd', 0, '2016-03-01 16:46:41', '2016-03-01 16:46:41'),
(6, 'asdasd', 'sdasd', 'sdasd', 'asd', '12', 'sad', '12', 'Male', '2016-03-31', 'Married', 0, 'Baptist', 'asdasd', 'asd', 'asd', 0, '2016-03-01 16:47:14', '2016-03-01 16:47:14'),
(7, 'asdasd', 'sdasd', 'sdasd', 'asd', '12', 'sad', '12', 'Male', '2016-03-31', 'Married', 0, 'Baptist', 'asdasd', 'asd', 'asd', 0, '2016-03-01 16:47:33', '2016-03-01 16:47:33'),
(8, '', '', '', '', '', '', '', '', '1970-01-01', '', 0, '', '', '', '', 0, '2016-03-01 17:34:45', '2016-03-01 17:34:45'),
(9, 'asdasd', '', '', '', '', '', '', '', '1970-01-01', '', 0, '', '', '', '', 0, '2016-03-01 17:35:25', '2016-03-01 17:35:25'),
(10, '', '', '', '', '', '', '', '', '1970-01-01', '', 0, '', '', '', '', 0, '2016-03-01 17:35:43', '2016-03-01 17:35:43'),
(11, '', '', '', '', '', '', '', '', '1970-01-01', '', 0, '', '', '', '', 0, '2016-03-01 17:43:39', '2016-03-01 17:43:39'),
(12, 'asdasd', 'sadasd', 'sadasd', 'asda', '12', 'asd', '12', 'Male', '2016-03-29', 'Widow', 0, 'Protestant', 'asdasd', 'asd', 'sad', 0, '2016-03-01 17:47:13', '2016-03-01 17:47:13'),
(13, 'asd', 'sda', 'sad', 'sd', 'sd', 'ad', 'asd', 'Male', '2016-03-29', 'Widow', 0, 'Baptist', '12123', 'sad', 'sad', 0, '2016-03-01 17:50:11', '2016-03-01 17:50:11'),
(14, 'asd', 'sda', 'sad', 'sd', 'sd', 'ad', 'asd', 'Male', '2016-03-29', 'Widow', 0, 'Baptist', '12123', 'sad', 'sad', 0, '2016-03-01 17:51:06', '2016-03-01 17:51:06'),
(15, 'asd', 'sda', 'sad', 'sd', 'sd', 'ad', 'asd', 'Male', '2016-03-29', 'Widow', 0, 'Baptist', '12123', 'sad', 'sad', 0, '2016-03-01 17:52:19', '2016-03-01 17:52:19'),
(16, 'asdasd', 'asdasd', 'asdasd', 'asd', '12', 'sdasd', '12', 'Female', '2016-03-16', 'Single', 0, 'Protestant', '12312', 'asdasd', 'asd', 0, '2016-03-01 17:53:23', '2016-03-01 17:53:23'),
(17, 'asdasd', 'asdasd', 'asdasd', 'asd', '12', 'sdasd', '12', 'Female', '2016-03-16', 'Single', 0, 'Protestant', '12312', 'asdasd', 'asd', 0, '2016-03-02 04:45:18', '2016-03-02 04:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblmember_access_card`
--

CREATE TABLE IF NOT EXISTS `tblmember_access_card` (
  `member_id` int(11) DEFAULT NULL,
  `access_card_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmember_access_card`
--

INSERT INTO `tblmember_access_card` (`member_id`, `access_card_id`, `deleted`) VALUES
(3, 0, 0),
(3, 0, 0),
(4, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(6, 0, 0),
(6, 0, 0),
(7, 1, 0),
(7, 2, 0),
(7, 4, 0),
(12, 2, 0),
(12, 4, 0),
(13, 4, 0),
(14, 4, 0),
(16, 2, 0),
(17, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblmember_house_status`
--

CREATE TABLE IF NOT EXISTS `tblmember_house_status` (
  `house_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_status` varchar(30) DEFAULT NULL,
  `house_member_status` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`house_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tblmember_house_status`
--

INSERT INTO `tblmember_house_status` (`house_status_id`, `house_status`, `house_member_status`, `deleted`, `date_created`, `date_modified`) VALUES
(1, 'Moderately Flooded', 'Renter', 0, '2016-03-01 16:44:58', '2016-03-01 16:44:58'),
(2, 'Moderately Flooded', 'Renter', 0, '2016-03-01 16:45:39', '2016-03-01 16:45:39'),
(3, 'Moderately Flooded', 'Renter', 0, '2016-03-01 16:46:41', '2016-03-01 16:46:41'),
(4, 'Moderately Flooded', 'Renter', 0, '2016-03-01 16:47:14', '2016-03-01 16:47:14'),
(5, 'Moderately Flooded', 'Renter', 0, '2016-03-01 16:47:33', '2016-03-01 16:47:33'),
(6, '', '', 0, '2016-03-01 17:34:45', '2016-03-01 17:34:45'),
(7, '', '', 0, '2016-03-01 17:35:25', '2016-03-01 17:35:25'),
(8, '', '', 0, '2016-03-01 17:35:43', '2016-03-01 17:35:43'),
(9, '', '', 0, '2016-03-01 17:43:39', '2016-03-01 17:43:39'),
(10, 'Heavily Flooded', 'Sharer', 0, '2016-03-01 17:47:13', '2016-03-01 17:47:13'),
(11, 'Moderately Flooded', 'Renter', 0, '2016-03-01 17:50:11', '2016-03-01 17:50:11'),
(12, 'Moderately Flooded', 'Renter', 0, '2016-03-01 17:51:06', '2016-03-01 17:51:06'),
(13, 'Moderately Flooded', 'Renter', 0, '2016-03-01 17:52:19', '2016-03-01 17:52:19'),
(14, 'Moderately Flooded', 'Caretaker', 0, '2016-03-01 17:53:23', '2016-03-01 17:53:23'),
(15, 'Moderately Flooded', 'Caretaker', 0, '2016-03-02 04:45:18', '2016-03-02 04:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_fname` varchar(50) DEFAULT NULL,
  `user_lname` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`user_id`, `user_name`, `user_password`, `user_fname`, `user_lname`, `deleted`, `date_created`, `date_modified`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'steven', 'anasco', 0, '2016-02-22 19:35:37', '2016-02-22 19:35:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
