-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2019 at 03:54 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `construction`
--

-- --------------------------------------------------------

--
-- Table structure for table `20190410`
--

DROP TABLE IF EXISTS `20190410`;
CREATE TABLE IF NOT EXISTS `20190410` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM` varchar(100) NOT NULL,
  `QUANTITY` int(100) NOT NULL,
  `RATE` bigint(20) NOT NULL DEFAULT '0',
  `TOTAL` bigint(20) NOT NULL DEFAULT '0',
  `PROJECTNO` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20190410`
--

INSERT INTO `20190410` (`ID`, `ITEM`, `QUANTITY`, `RATE`, `TOTAL`, `PROJECTNO`) VALUES
(1, 'haha', 26521, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `20190419`
--

DROP TABLE IF EXISTS `20190419`;
CREATE TABLE IF NOT EXISTS `20190419` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM` varchar(100) NOT NULL,
  `QUANTITY` int(100) NOT NULL,
  `RATE` bigint(20) NOT NULL DEFAULT '0',
  `TOTAL` bigint(20) NOT NULL DEFAULT '0',
  `PROJECTNO` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `20190420`
--

DROP TABLE IF EXISTS `20190420`;
CREATE TABLE IF NOT EXISTS `20190420` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM` varchar(100) NOT NULL,
  `QUANTITY` int(100) NOT NULL,
  `RATE` bigint(20) NOT NULL DEFAULT '0',
  `TOTAL` bigint(20) NOT NULL DEFAULT '0',
  `PROJECTNO` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `20190420`
--

INSERT INTO `20190420` (`ID`, `ITEM`, `QUANTITY`, `RATE`, `TOTAL`, `PROJECTNO`) VALUES
(1, 'sdfsdf', 85, 2511, 213435, 12),
(2, 'rwed', 85, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catering_employees`
--

DROP TABLE IF EXISTS `catering_employees`;
CREATE TABLE IF NOT EXISTS `catering_employees` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(15) NOT NULL,
  `ADDRESS` varchar(20) NOT NULL,
  `CONTACT` bigint(10) NOT NULL,
  `PROJECT_NO` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering_employees`
--

INSERT INTO `catering_employees` (`ID`, `NAME`, `ADDRESS`, `CONTACT`, `PROJECT_NO`) VALUES
(5, 'sdfsdf', 'sdfsdf', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `demands`
--

DROP TABLE IF EXISTS `demands`;
CREATE TABLE IF NOT EXISTS `demands` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM_NAME` text NOT NULL,
  `QUANTITY` bigint(20) NOT NULL,
  `FULFUILLED` text NOT NULL,
  `DEMANDOF` text NOT NULL,
  `PROJECT_NO` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demands`
--

INSERT INTO `demands` (`ID`, `ITEM_NAME`, `QUANTITY`, `FULFUILLED`, `DEMANDOF`, `PROJECT_NO`) VALUES
(8, 'dds', 15, 'NO', 'Technician', '12'),
(5, 'dsfsd', 25, 'NO', 'Engineer', '12'),
(6, 'sdfsd', 15, 'NO', 'Engineer', '12'),
(7, 'sdfsd', 25, 'NO', 'Manager', '12'),
(9, 'erer', 79, 'NO', 'Catering', '12'),
(10, 'hhhfyt', 123, 'NO', 'Technician', '12'),
(11, 'frog', 123, 'NO', 'Technician', '12');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` text NOT NULL,
  `ADDRESS` text NOT NULL,
  `CONTACT_NO` bigint(10) NOT NULL,
  `PROJECT_NO` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `NAME`, `ADDRESS`, `CONTACT_NO`, `PROJECT_NO`) VALUES
(1, 'raju kumar', 'birgunj', 7895832564, 1),
(2, 'ram rajak', 'jagadhhri', 9875832641, 1),
(3, 'bikash gupta', 'hungary', 9842030054, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ext_eng`
--

DROP TABLE IF EXISTS `ext_eng`;
CREATE TABLE IF NOT EXISTS `ext_eng` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `project_no` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ext_eng`
--

INSERT INTO `ext_eng` (`id`, `name`, `project_no`, `username`) VALUES
(8, 'kjsdkljfsd dlfkdsljf', 1, 'nikett'),
(6, 'fdgfdfd dfgfdgfdg', 1, 'rupesh1'),
(9, 'ram bhai', 7, 'ram401');

-- --------------------------------------------------------

--
-- Table structure for table `projectrequest`
--

DROP TABLE IF EXISTS `projectrequest`;
CREATE TABLE IF NOT EXISTS `projectrequest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECT_NAME` text NOT NULL,
  `PROJECT_DESC` text NOT NULL,
  `PROJECT_COMP` text,
  `USERNAME` text NOT NULL,
  `APPROVED` text NOT NULL,
  `ADDED` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectrequest`
--

INSERT INTO `projectrequest` (`ID`, `PROJECT_NAME`, `PROJECT_DESC`, `PROJECT_COMP`, `USERNAME`, `APPROVED`, `ADDED`) VALUES
(17, 'road construction', 'dfgsdfgassdf', 'sfsdfsfsdf with 251452451', 'Rupesh401', 'YES', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `PROJECT_NO` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECT_NAME` text NOT NULL,
  `ENGINEER` varchar(15) NOT NULL,
  `MANAGER` varchar(15) NOT NULL,
  `CUSTOMER` varchar(15) NOT NULL,
  `TECHNICIANS` varchar(15) NOT NULL,
  `CATERING_MANAGER` varchar(15) NOT NULL,
  PRIMARY KEY (`PROJECT_NO`),
  UNIQUE KEY `ENGINEER` (`ENGINEER`),
  UNIQUE KEY `MANAGER` (`MANAGER`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`PROJECT_NO`, `PROJECT_NAME`, `ENGINEER`, `MANAGER`, `CUSTOMER`, `TECHNICIANS`, `CATERING_MANAGER`) VALUES
(12, 'road construction', 'prabin401', 'devraj123', 'Rupesh401', 'sunny123', 'rupesh');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

DROP TABLE IF EXISTS `technicians`;
CREATE TABLE IF NOT EXISTS `technicians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `address` text NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `email` text NOT NULL,
  `user_password` text NOT NULL,
  `acc_type` text NOT NULL,
  `assigned` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`id`, `username`, `f_name`, `l_name`, `address`, `contact_no`, `email`, `user_password`, `acc_type`, `assigned`) VALUES
(4, 'mukund401', 'mukund', 'bhai', 'delhi', 4785485795, 'mukund401@gmail.com', 'mukund401', 'PLUMBER', 'NO'),
(6, 'sunny123', 'sunny', 'tamang', 'nepal', 4785480000, 'sunny123@gmail.com', 'sunny123', 'ELECTRICIAN', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `address` text NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `email` text NOT NULL,
  `user_password` text NOT NULL,
  `acc_type` text NOT NULL,
  `assigned` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `f_name`, `l_name`, `address`, `contact_no`, `email`, `user_password`, `acc_type`, `assigned`) VALUES
(1, 'admin', 'gamik', 'budhathoki', 'biratnagar nepal', 7056984685, 'gamiksingz@gmail.com', 'gamik123', 'OWNER', 'YES'),
(2, 'niket', 'niket', 'kishetri', 'kathmandu,nepal', 8684020988, 'niket@gmail.com', 'niket123', 'CUSTOMER', 'YES'),
(4, 'rupesh', 'rupesh', 'gautam', 'hetauda', 7056953068, 'rupesh@gmail.com', 'rupesh123', 'CATERING', 'YES'),
(51, 'mukund401', 'mukund', 'bhai', 'delhi', 4785485795, 'mukund401@gmail.com', 'mukund401', 'TECHNICIAN', 'NO'),
(7, 'Rupesh401', 'Rupesh', 'Gautam', 'nepal', 7056958236, 'rupeh@gmail.com', 'rupesh401', 'CUSTOMER', 'YES'),
(41, 'rupesh4001', 'rupesh', 'gautam', 'nepal', 1582562562, 'gautamrupesh401@gmail.com', 'rupesh401', 'ENGINEER', 'NO'),
(42, 'saroj403', 'saroj', 'parajuli', 'nepal', 4125369870, 'saroj403@gmail.com', 'saroj403', 'MANAGER', 'NO'),
(43, 'bikash406', 'bikash', 'gupta', 'biratnagar', 1596825814, 'bikash406@gmail.com', 'bikash406', 'ENGINEER', 'NO'),
(44, 'sanjay401', 'sanjay', 'bhai', 'haryana', 1472589635, 'sanjay401@gmail.com', 'sanjay401', 'ENGINEER', 'NO'),
(45, 'prabin401', 'prabin', 'gautam', 'hetauda', 1593578642, 'prabin401@gmail.com', 'prabin401', 'ENGINEER', 'YES'),
(46, 'bibek127', 'bibek', 'paudel', 'nepal', 1475283690, 'bibek127@gmail.com', 'bibek127', 'MANAGER', 'NO'),
(47, 'manoj126', 'manoj', 'badda', 'dang', 7056852154, 'manoj@gmail.com', 'manoj126', 'MANAGER', 'NO'),
(48, 'devraj123', 'devraj', 'gautam', 'nepal', 7056852146, 'devraj123@gmail.com', 'devraj123', 'MANAGER', 'YES'),
(49, 'gamik402', 'gamik', 'budhathoki', 'brt', 7056954685, 'gamik402@gmail.com', 'gamik402', 'ENGINEER', 'NO'),
(50, 'krishna402', 'krishna', 'gautam', 'nepal', 4586586586, 'krishna402@gmail.co', 'krishna402', 'ENGINEER', 'NO'),
(54, 'gamik007', 'gamik', 'budhathoki', 'hostel', 7056984685, 'gamik@g.com', '123456789', 'CUSTOMER', 'YES'),
(53, 'sunny123', 'sunny', 'tamang', 'nepal', 4785480000, 'sunny123@gmail.com', 'sunny123', 'TECHNICIAN', 'YES'),
(52, 'ishar402', 'ishar', 'bhai', 'delhi', 4785485795, 'mukund401@gmail.com', 'mukund401', 'TECHNICIAN', 'NO');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
