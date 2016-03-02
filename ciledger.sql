-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2016 at 09:42 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblaccess_card`
--

CREATE TABLE IF NOT EXISTS `tblaccess_card` (
`access_card_id` int(11) NOT NULL,
  `access_card_name` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblhouse`
--

CREATE TABLE IF NOT EXISTS `tblhouse` (
`house_id` int(11) NOT NULL,
  `house_block_no` int(11) DEFAULT NULL,
  `house_lot_no` int(11) DEFAULT NULL,
  `house_area` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblhouse_owner`
--

CREATE TABLE IF NOT EXISTS `tblhouse_owner` (
`house_owner_id` int(11) NOT NULL,
  `house_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblmembers`
--

CREATE TABLE IF NOT EXISTS `tblmembers` (
`member_id` int(11) NOT NULL,
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
  `member_dependets` int(10) DEFAULT NULL,
  `member_religion` varchar(40) DEFAULT NULL,
  `member_monthly_income` varchar(20) DEFAULT NULL,
  `member_previous_occupation` varchar(50) DEFAULT NULL,
  `member_present_occupation` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblmember_access_card`
--

CREATE TABLE IF NOT EXISTS `tblmember_access_card` (
  `member_id` int(11) DEFAULT NULL,
  `access_card_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblmember_house_status`
--

CREATE TABLE IF NOT EXISTS `tblmember_house_status` (
`house_status_id` int(11) NOT NULL,
  `house_status` varchar(30) DEFAULT NULL,
  `house_member_status` varchar(30) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_fname` varchar(50) DEFAULT NULL,
  `user_lname` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`user_id`, `user_name`, `user_password`, `user_fname`, `user_lname`, `deleted`, `date_created`, `date_modified`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'steven', 'anasco', 0, '2016-02-22 19:35:37', '2016-02-22 19:35:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`id`,`ip_address`), ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tblaccess_card`
--
ALTER TABLE `tblaccess_card`
 ADD PRIMARY KEY (`access_card_id`);

--
-- Indexes for table `tblhouse`
--
ALTER TABLE `tblhouse`
 ADD PRIMARY KEY (`house_id`);

--
-- Indexes for table `tblhouse_owner`
--
ALTER TABLE `tblhouse_owner`
 ADD PRIMARY KEY (`house_owner_id`);

--
-- Indexes for table `tblmembers`
--
ALTER TABLE `tblmembers`
 ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tblmember_house_status`
--
ALTER TABLE `tblmember_house_status`
 ADD PRIMARY KEY (`house_status_id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccess_card`
--
ALTER TABLE `tblaccess_card`
MODIFY `access_card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblhouse`
--
ALTER TABLE `tblhouse`
MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblhouse_owner`
--
ALTER TABLE `tblhouse_owner`
MODIFY `house_owner_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblmembers`
--
ALTER TABLE `tblmembers`
MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblmember_house_status`
--
ALTER TABLE `tblmember_house_status`
MODIFY `house_status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
