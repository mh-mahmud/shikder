-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: 198.38.82.89
-- Generation Time: Dec 01, 2016 at 03:22 AM
-- Server version: 5.6.23
-- PHP Version: 5.4.31

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shikder_db`
--
CREATE DATABASE `shikder_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shikder_db`;

-- --------------------------------------------------------

--
-- Table structure for table `additional_data`
--

CREATE TABLE IF NOT EXISTS `additional_data` (
  `ADD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(50) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `URL` varchar(300) NOT NULL,
  `DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`ADD_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `additional_data`
--

INSERT INTO `additional_data` (`ADD_ID`, `TYPE`, `TITLE`, `URL`, `DETAILS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(2, 'notice', 'BCS (Tax) Academy is the apex training institution', 'http://bcstax.xom', 'This is a description', 1, '2016-05-20', 1, '2016-06-11', -7),
(3, 'notice', 'Taxes Department of National Board of Revenue in Bangladesh', '#', 'This is a information', 1, '2016-05-20', 0, '0000-00-00', 7),
(4, 'notice', 'This is photoshop version of Lorem Ipsum. Proin gravida nibh vel velit', '#', 'This is a data', 1, '2016-05-20', 0, '0000-00-00', 7),
(5, 'links', 'Bangabhaban', 'http://www.bangabhaban.gov.bd/index.php', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(6, 'links', 'Cabinet Division', 'http://www.cabinet.gov.bd/', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(7, 'links', 'The Prime Ministers Office', 'http://www.pmo.gov.bd/', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(8, 'links', 'Ministry of Finance', 'http://www.mof.gov.bd/en/', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(9, 'links', 'National Board of Revenue', 'http://www.nbr.gov.bd/', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(10, 'links', 'Ministry of Commerce', 'http://www.mincom.gov.bd/', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(11, 'links', 'Ministry of Foreign Affairs', 'http://www.mofa.gov.bd/', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(12, 'links', 'Ministry of Public Administration', 'http://www.mopa.gov.bd/en', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(13, 'links', 'BPATC', 'http://www.bpatc.org.bd/', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(14, 'events', 'Event One', '#', '', 1, '2016-05-20', 1, '2016-05-20', 7),
(15, 'events', 'Event Two', '#', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(16, 'events', 'Event Three', '#', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(17, 'events', 'Event Four', '#', '', 1, '2016-05-20', 0, '0000-00-00', 7),
(19, 'contact', 'Contact Us', '', '47 Bir Uttam Samsul Alam Sarak,\nDhaka 1000-1200,\nBangladesh', 1, '2016-05-25', 1, '2016-05-26', 7);

-- --------------------------------------------------------

--
-- Table structure for table `admit_student_to_hostel`
--

CREATE TABLE IF NOT EXISTS `admit_student_to_hostel` (
  `ADMIT_STUDENT_TO_HOSTEL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `STUDENT_DATA_ID` int(11) NOT NULL,
  `HOUSE_ID` int(11) NOT NULL,
  `ROOM_NO` varchar(15) NOT NULL,
  `SEAT_NO` varchar(12) NOT NULL,
  `YEAR` year(4) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`ADMIT_STUDENT_TO_HOSTEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `assign_hostel_teacher`
--

CREATE TABLE IF NOT EXISTS `assign_hostel_teacher` (
  `ASSIGN_HOSTEL_TEACHER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HOUSE_ID` int(11) NOT NULL,
  `TEACHER_ID` int(11) NOT NULL,
  `SESSION` varchar(100) NOT NULL,
  `YEAR` year(4) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`ASSIGN_HOSTEL_TEACHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `assign_subject`
--

CREATE TABLE IF NOT EXISTS `assign_subject` (
  `ASSIGN_SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEACHER_ID` int(11) NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`ASSIGN_SUBJECT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `assign_subject`
--

INSERT INTO `assign_subject` (`ASSIGN_SUBJECT_ID`, `TEACHER_ID`, `CLASS_ID`, `SECTION_ID`, `SUBJECT_ID`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 2, 3, 3, 2016, 1, '2016-06-08', 1, '2016-06-09', 7),
(2, 1, 1, 2, 8, 2016, 1, '2016-06-08', 1, '2016-06-09', 7),
(3, 1, 2, 4, 4, 2016, 1, '2016-06-08', 1, '2016-06-09', 7),
(4, 1, 1, 2, 4, 2016, 1, '2016-06-08', 1, '2016-06-09', 7),
(5, 1, 2, 4, 8, 2016, 1, '2016-06-08', 1, '2016-06-09', 7),
(6, 1, 2, 4, 10, 2016, 1, '2016-06-08', 1, '2016-06-09', 7),
(7, 2, 2, 3, 5, 2016, 1, '2016-06-09', 0, '0000-00-00', 7),
(8, 2, 1, 3, 5, 2016, 1, '2016-06-09', 0, '0000-00-00', 7),
(9, 1, 1, 2, 3, 2016, 1, '2016-06-09', 0, '0000-00-00', 7),
(10, 2, 2, 3, 8, 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(11, 1, 3, 5, 14, 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(12, 1, 3, 5, 12, 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(13, 2, 3, 5, 15, 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(14, 2, 3, 5, 13, 2016, 1, '2016-06-19', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `ATT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `ATT_STATUS` int(11) NOT NULL,
  `ATT_COMMENT` varchar(300) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`ATT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ATT_ID`, `CLASS_ID`, `SECTION_ID`, `STUDENT_ID`, `ATT_STATUS`, `ATT_COMMENT`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 2, 4, 21, 1, 'p', 9, '2016-07-25', 0, '0000-00-00', 7),
(2, 2, 4, 22, 1, 'p', 9, '2016-07-25', 0, '0000-00-00', 7),
(3, 2, 4, 23, 0, '', 9, '2016-07-25', 0, '0000-00-00', 7),
(4, 2, 4, 24, 0, '', 9, '2016-07-25', 0, '0000-00-00', 7),
(5, 2, 4, 25, 0, '', 9, '2016-07-25', 0, '0000-00-00', 7),
(6, 2, 4, 26, 0, '', 9, '2016-07-25', 0, '0000-00-00', 7),
(7, 2, 4, 27, 0, '', 9, '2016-07-25', 0, '0000-00-00', 7),
(8, 2, 4, 28, 0, '', 9, '2016-07-25', 0, '0000-00-00', 7),
(9, 2, 4, 29, 1, 'p', 9, '2016-07-25', 0, '0000-00-00', 7),
(10, 2, 4, 30, 1, 'p', 9, '2016-07-25', 0, '0000-00-00', 7),
(11, 1, 2, 1, 1, 'p', 1, '2016-07-25', 0, '0000-00-00', 7),
(12, 1, 2, 2, 1, 'p', 1, '2016-07-25', 0, '0000-00-00', 7),
(13, 1, 2, 3, 1, 'p', 1, '2016-07-25', 0, '0000-00-00', 7),
(14, 1, 2, 4, 1, 'p', 1, '2016-07-25', 0, '0000-00-00', 7),
(15, 1, 2, 5, 1, 'p', 1, '2016-07-25', 0, '0000-00-00', 7),
(16, 1, 2, 6, 1, 'p', 1, '2016-07-25', 0, '0000-00-00', 7),
(17, 1, 2, 7, 0, 'a', 1, '2016-07-25', 0, '0000-00-00', 7),
(18, 1, 2, 8, 1, 'p', 1, '2016-07-25', 0, '0000-00-00', 7),
(19, 1, 2, 9, 1, 'p', 1, '2016-07-25', 0, '0000-00-00', 7),
(20, 1, 2, 10, 0, 'a', 1, '2016-07-25', 0, '0000-00-00', 7),
(21, 1, 3, 11, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(22, 1, 3, 12, 0, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(23, 1, 3, 13, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(24, 1, 3, 14, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(25, 1, 3, 15, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(26, 1, 3, 16, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(27, 1, 3, 17, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(28, 1, 3, 18, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(29, 1, 3, 19, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(30, 1, 3, 20, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(31, 3, 5, 31, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(32, 3, 5, 32, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(33, 3, 5, 33, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(34, 3, 5, 34, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(35, 3, 5, 35, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(36, 3, 5, 36, 0, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(37, 3, 5, 37, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(38, 3, 5, 38, 1, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(39, 3, 5, 39, 0, '', 1, '2016-07-25', 0, '0000-00-00', 7),
(40, 1, 2, 1, 1, 'present', 1, '2016-08-08', 0, '0000-00-00', 7),
(41, 1, 2, 2, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(42, 1, 2, 3, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(43, 1, 2, 4, 0, 'absent', 1, '2016-08-08', 0, '0000-00-00', 7),
(44, 1, 2, 5, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(45, 1, 2, 6, 0, 'sick', 1, '2016-08-08', 0, '0000-00-00', 7),
(46, 1, 2, 7, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(47, 1, 2, 8, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(48, 1, 2, 9, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(49, 1, 2, 10, 0, 'joined a ceremony', 1, '2016-08-08', 0, '0000-00-00', 7),
(50, 1, 2, 1, 1, '', 1, '2016-08-07', 0, '0000-00-00', 7),
(51, 1, 2, 2, 0, 'Always Absent', 1, '2016-08-07', 0, '0000-00-00', 7),
(52, 1, 2, 3, 1, '', 1, '2016-08-07', 0, '0000-00-00', 7),
(53, 1, 2, 4, 1, '', 1, '2016-08-07', 0, '0000-00-00', 7),
(54, 1, 2, 5, 0, 'Bad student', 1, '2016-08-07', 0, '0000-00-00', 7),
(55, 1, 2, 6, 1, '', 1, '2016-08-07', 0, '0000-00-00', 7),
(56, 1, 2, 7, 1, '', 1, '2016-08-07', 0, '0000-00-00', 7),
(57, 1, 2, 8, 1, '', 1, '2016-08-07', 0, '0000-00-00', 7),
(58, 1, 2, 9, 0, 'Absent', 1, '2016-08-07', 0, '0000-00-00', 7),
(59, 1, 3, 11, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(60, 1, 3, 12, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(61, 1, 3, 13, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(62, 1, 3, 14, 0, 'Sick', 1, '2016-08-08', 0, '0000-00-00', 7),
(63, 1, 3, 15, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(64, 1, 3, 16, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(65, 1, 3, 17, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(66, 1, 3, 18, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(67, 1, 3, 19, 0, 'Sick', 1, '2016-08-08', 0, '0000-00-00', 7),
(68, 1, 3, 20, 1, '', 1, '2016-08-08', 0, '0000-00-00', 7),
(69, 1, 2, 1, 0, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(70, 1, 2, 2, 1, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(71, 1, 2, 3, 0, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(72, 1, 2, 4, 1, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(73, 1, 2, 5, 1, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(74, 1, 2, 6, 1, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(75, 1, 2, 7, 1, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(76, 1, 2, 8, 1, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(77, 1, 2, 9, 1, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(78, 1, 2, 10, 0, '', 9, '2016-08-13', 0, '0000-00-00', 7),
(79, 1, 1, 1, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(80, 1, 1, 4, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(81, 1, 1, 5, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(82, 1, 1, 7, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(83, 1, 1, 9, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(84, 1, 1, 10, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(85, 1, 1, 11, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(86, 1, 1, 12, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(87, 1, 1, 14, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(88, 1, 1, 16, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(89, 1, 1, 18, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(90, 1, 1, 19, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(91, 1, 1, 20, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(92, 1, 1, 21, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(93, 1, 1, 25, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(94, 1, 1, 31, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(95, 1, 1, 32, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(96, 1, 1, 33, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(97, 1, 1, 34, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(98, 1, 1, 35, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(99, 1, 1, 36, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(100, 1, 1, 37, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(101, 1, 1, 38, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(102, 1, 1, 40, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(103, 1, 1, 42, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(104, 1, 1, 43, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(105, 1, 1, 44, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(106, 1, 1, 45, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(107, 1, 1, 46, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(108, 1, 1, 47, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(109, 1, 1, 50, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(110, 1, 1, 52, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(111, 1, 1, 53, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(112, 1, 1, 54, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(113, 1, 1, 56, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(114, 1, 1, 57, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(115, 1, 1, 58, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(116, 1, 1, 59, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(117, 1, 1, 61, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(118, 1, 1, 67, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(119, 1, 1, 69, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(120, 1, 1, 70, 1, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(121, 1, 1, 73, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(122, 1, 1, 74, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(123, 1, 1, 75, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(124, 1, 1, 76, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(125, 1, 1, 82, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(126, 1, 1, 83, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(127, 1, 1, 85, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(128, 1, 1, 86, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(129, 1, 1, 87, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(130, 1, 1, 89, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7),
(131, 1, 1, 90, 0, '', 1, '2016-10-27', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE IF NOT EXISTS `book_category` (
  `BOOK_CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(150) NOT NULL,
  `CATEGORY_DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`BOOK_CATEGORY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`BOOK_CATEGORY_ID`, `CATEGORY_NAME`, `CATEGORY_DETAILS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Novel', 'This is Novel.', 1, '2016-07-26', 1, 2016, 7),
(2, 'Poem', 'This is Poem.\r\n', 1, '2016-07-26', 1, 2016, 7),
(3, 'Story Book', 'This is Story Book', 1, '2016-07-26', 0, 0, 7),
(4, 'Science Fiction', 'This is Science Fiction', 1, '2016-07-26', 0, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `book_issue`
--

CREATE TABLE IF NOT EXISTS `book_issue` (
  `BOOK_ISSUE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_ID` varchar(112) NOT NULL,
  `LIBRARY_MEMBER_ID` int(11) NOT NULL,
  `ISSUE_DATE` date NOT NULL,
  `ISSUE_EXPIREDATE` date NOT NULL,
  `TOTAL_BOOK_ISSUE` int(11) NOT NULL,
  `RETURN_STATUS` int(11) NOT NULL DEFAULT '0',
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`BOOK_ISSUE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `book_issue`
--

INSERT INTO `book_issue` (`BOOK_ISSUE_ID`, `BOOK_ID`, `LIBRARY_MEMBER_ID`, `ISSUE_DATE`, `ISSUE_EXPIREDATE`, `TOTAL_BOOK_ISSUE`, `RETURN_STATUS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, '1,5', 2, '2016-07-02', '2016-07-12', 2, 0, 1, '2016-07-28', 1, '2016-07-28', 7),
(2, '3,4', 3, '2016-07-28', '2016-08-03', 2, 1, 1, '2016-07-28', 1, '2016-07-28', 7),
(4, '1,3,6', 5, '2016-07-19', '2016-07-30', 3, 0, 1, '2016-07-28', 0, '0000-00-00', 7),
(5, '5', 6, '2016-07-12', '2016-07-27', 1, 0, 1, '2016-07-28', 1, '2016-07-28', 7),
(6, '1,3,4', 7, '2016-07-13', '2016-07-29', 3, 0, 1, '2016-07-28', 0, '0000-00-00', 7),
(7, '3,4', 8, '2016-06-06', '2016-06-22', 2, 1, 1, '2016-07-28', 0, '0000-00-00', 7),
(8, '1,4,5', 8, '2016-06-23', '2016-06-29', 3, 1, 1, '2016-07-28', 0, '0000-00-00', 7),
(9, '6', 8, '2016-07-03', '2016-07-15', 1, 0, 1, '2016-07-28', 0, '0000-00-00', 7),
(10, '4,2,5', 8, '2016-07-20', '2016-08-20', 3, 0, 1, '2016-07-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `book_request`
--

CREATE TABLE IF NOT EXISTS `book_request` (
  `REQUEST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBER_ID` int(11) NOT NULL,
  `BOOK_NAME` varchar(200) NOT NULL,
  `WRITER_NAME` varchar(100) NOT NULL,
  `BOOK_DESCRIPTION` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`REQUEST_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `book_request`
--

INSERT INTO `book_request` (`REQUEST_ID`, `MEMBER_ID`, `BOOK_NAME`, `WRITER_NAME`, `BOOK_DESCRIPTION`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 'Shsher Kobita', 'Robi', 'sadf', 1, '2016-07-28', 0, '0000-00-00', 7),
(2, 1, 'Ek Veza Biralir Biborton', 'Al Mahmud', 'Book Review: Al Mahmud is Bangladeshi poet, journalist and writer. His full name is Mir Abdus Shukur Al Mahmud', 1, '2016-07-28', 0, '0000-00-00', 7),
(3, 8, 'sdgsdg', 'fdgvdsfgbv', 'sgvsr', 6, '2016-07-28', 0, '0000-00-00', 7),
(4, 8, 'dfbgfd', 'dhb', 'gfhjnfghjnfjmnf', 6, '2016-07-28', 0, '0000-00-00', 7),
(5, 8, 'fcgbfgnh', 'fgjnmn', 'fgykhkm', 6, '2016-07-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `book_writer`
--

CREATE TABLE IF NOT EXISTS `book_writer` (
  `WRITER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_CATEGORY_ID` int(11) NOT NULL,
  `WRITER_NAME` varchar(70) NOT NULL,
  `COUNTRY_NAME` varchar(50) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `DATE_OF_DEATH` date NOT NULL,
  `FULL_ADDRESS` text NOT NULL,
  `ACHIEVEMENT` text NOT NULL,
  `EDUCATIONAL_DETAILS` text NOT NULL,
  `MARITAL_STATUS` varchar(20) NOT NULL,
  `SPOUSE_NAME` varchar(70) NOT NULL,
  `FATHER_NAME` varchar(70) NOT NULL,
  `MOTHER_NAME` varchar(70) NOT NULL,
  `CHILDREN_DETAILS` text NOT NULL,
  `IMAGES` varchar(150) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`WRITER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `book_writer`
--

INSERT INTO `book_writer` (`WRITER_ID`, `BOOK_CATEGORY_ID`, `WRITER_NAME`, `COUNTRY_NAME`, `DATE_OF_BIRTH`, `DATE_OF_DEATH`, `FULL_ADDRESS`, `ACHIEVEMENT`, `EDUCATIONAL_DETAILS`, `MARITAL_STATUS`, `SPOUSE_NAME`, `FATHER_NAME`, `MOTHER_NAME`, `CHILDREN_DETAILS`, `IMAGES`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 'Humayun Ahmed', 'Bangldesh', '2016-07-27', '2016-07-27', 'Kutubpur, Mymensingh', 'Bangladesh National Film Award for Best Story', '(SSC) examination from Bogra Zilla School in 1967 and was listed as second in merit by the Rajshahi Education Board (HSC) examination from Dhaka College in 1969. Ahmed then attended the University of Dhaka and graduated with a Bachelor of Science in Chemistry', 'Married', 'Shaon Ahmed (m. 20052012), Gultekin Ahmed (m. 19732003)', 'Faizur Rahman', 'Ayesha Begum', ' Shila Ahmed, Bipasha Ahmed, Ninit Ahmed, Nova Ahmed, Nishad Ahmed, Nuhash Ahmed', '', 1, '2016-07-26', 1, '2016-07-27', 7),
(2, 1, 'Rabindranath Tagore', 'Bangldesh', '1970-01-01', '1941-08-07', 'Tagore was born in the city of Kolkata (formerly called Calcutta), at No. 6 Dwarkanath Tagore Lane, Jorasanko Thakur Bari. He was the youngest of his parents'' 14 children. His father was Debendranath Tagore; his mother was Sarada Devi.', 'Nobel Prize in Literature', 'University of Calcutta', 'Married', 'Mrinalini Devi', 'Debendranath Tagore', 'Sarada Devi', '1. Renuka Tagore\r\nDaughter\r\n2. Meera Tagore\r\nDaughter\r\n3. Madhurilata Tagore\r\nDaughter\r\n4. Rathindranath Tagore\r\nSon\r\n5. Shamindranath Tagore\r\nChild', 'Rabindranat_7.jpg', 1, '2016-07-26', 1, '2016-07-27', 7),
(3, 1, 'Kazi Nozrul Islam', 'Bangldesh', '0000-00-00', '0000-00-00', 'ASDF', 'ASDF', 'ASDF', '', '', '', '', '', '', 1, '2016-07-26', 0, '0000-00-00', 7),
(4, 1, 'SADF', 'DAFS', '1970-01-01', '1970-01-01', 'DSA', 'ADS', 'DASF', 'SDF', '', '', '', '', '', 1, '2016-07-26', 1, '2016-07-26', 7),
(5, 1, 'SD', 'ASD', '0000-00-00', '0000-00-00', 'ADSF', 'FDA', 'ASD', 'ASD', 'AS', 'ASD', '', '', '', 1, '2016-07-26', 0, '0000-00-00', 7),
(6, 1, 'DSAF', 'ASD', '0000-00-00', '0000-00-00', 'ASD', 'ASD', 'ADS', 'DSAF', 'DSAF', 'DSAF', 'ASD', '', '', 1, '2016-07-26', 0, '0000-00-00', 7),
(7, 1, 'HumayuASAn Ahmed', 'ASDF', '0000-00-00', '0000-00-00', 'ASDF', 'ADSF', 'ASDF', 'ASDF', 'Shaon Ahmed (m. 20052012), Gultekin Ahmed (m. 19732003)', 'ASD', 'Ayesha Begum', 'ASD', '', 1, '2016-07-26', 1, '2016-07-26', 7),
(8, 2, 'Joshim Uddin', 'Bangladesh', '0000-00-00', '0000-00-00', 'Dhaka, Bangladesh', 'Ekushe Podok', 'PHD', 'Married', 'N/A', 'Md. Johir uddin', 'Sarada Dev', '3', 'images.jpg', 1, '2016-07-28', 0, '0000-00-00', 7),
(9, 4, 'Jafor Iqbal', 'Bangladesh', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', 'images.jpg', 1, '2016-07-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOK_CATEGORY_ID` int(11) NOT NULL,
  `WRITER_ID` int(11) NOT NULL,
  `BOOK_NAME` varchar(150) NOT NULL,
  `BOOK_DESCRIPTION` text NOT NULL,
  `BOOK_CODE` varchar(100) NOT NULL,
  `ISBN_NO` varchar(100) NOT NULL,
  `NUMBER_OF_COPIES` int(11) NOT NULL,
  `BOOK_LOCATION` text NOT NULL,
  `EDITION_NO` int(11) NOT NULL,
  `EDITION_YEAR` date NOT NULL,
  `IMAGES` varchar(70) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`BOOK_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BOOK_ID`, `BOOK_CATEGORY_ID`, `WRITER_ID`, `BOOK_NAME`, `BOOK_DESCRIPTION`, `BOOK_CODE`, `ISBN_NO`, `NUMBER_OF_COPIES`, `BOOK_LOCATION`, `EDITION_NO`, `EDITION_YEAR`, `IMAGES`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 2, 'Himu', 'dsaf', '4545', '787578578', 45, 'asdf', 4, '2016-07-06', '321d8a25eb0c51dd8de4141341204adf.jpg', 1, '2016-07-26', 1, '2016-07-28', 7),
(2, 3, 1, 'Podda Nodir Maji', 'Nodi', '154', '2844', 10, '3no ', 45, '2016-06-29', '1390582732-470_Book2.jpg', 1, '2016-07-28', 0, '0000-00-00', 7),
(3, 2, 2, 'The Last Poem', 'Shesher Kabita  is a novel by Rabindranath Tagore, widely considered a ... Chaturange  Chokher Bali  Ghare Baire  Nastanirh  Jogajog  Shesher Kobita  The Wreck. Stories. Kabuliwala. Poetry.', '45', '45757', 10, '3 Numbers shelves', 485, '2016-06-28', '', 1, '2016-07-28', 1, '2016-07-28', 7),
(4, 2, 8, 'Kobor', 'Kobor', '787', '2844', 10, '3 no shelf', 45, '2016-06-29', 'a3f57eca249b293457c57818fb97d6a5.jpg', 1, '2016-07-28', 0, '0000-00-00', 7),
(5, 4, 9, 'Amar Bondhu Rasel', 'Amar bondhu rasel', '024', '787878', 10, '3 no', 12, '2016-07-07', 'Book3693.jpg', 1, '2016-07-28', 1, '2016-07-28', 7),
(6, 4, 9, 'Finix', 'This is Science Fiction', '458', '56585ASD', 12, '3 NO SHELFS', 1, '2016-07-07', '3918805.jpg', 1, '2016-07-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `EVENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` varchar(100) NOT NULL,
  `DATA` varchar(400) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`EVENT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`EVENT_ID`, `DATE`, `DATA`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, '2016-08-1', 'Tragedy Moth', 1, '2016-08-10', 1, '2016-08-23', 7),
(2, '2016-08-15', 'National Mourning Day', 1, '2016-08-16', 1, '2016-08-23', 7),
(3, '2016-08-3', 'womens Day', 1, '2016-08-23', 1, '2016-08-23', 7),
(4, '2016-09-14', 'Eid-Ul-Azha', 1, '2016-08-23', 1, '2016-08-23', 7),
(5, '2016-08-19', 'Friday', 1, '2016-08-23', 1, '2016-08-23', 7),
(6, '2016-02-14', 'Roni Bhai'' Birthday', 1, '2016-08-24', 1, '2016-08-24', 7);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(50) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CATEGORY_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(8, 'Gallery', 1, '2016-05-04', 4, 2016, 7),
(9, 'Downloads', 1, '2016-05-04', 0, 0, 7),
(10, 'Videos', 1, '2016-05-20', 0, 0, 7),
(11, 'Page', 1, '2016-05-23', 0, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE IF NOT EXISTS `checkin` (
  `CHECKIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HOUSE_ID` int(11) NOT NULL,
  `STUDENT_DATA_ID` int(11) NOT NULL,
  `CHECKOUT_DATE` date NOT NULL,
  `CHECKIN_DATE` date NOT NULL,
  `EXPIRE_DATE` date NOT NULL,
  `GURDIUN_TYPE` varchar(200) NOT NULL,
  `GURDIUN_NAME` varchar(100) NOT NULL,
  `MOBILE_NO` varchar(15) NOT NULL,
  `CHECKIN_STATUS` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`CHECKIN_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `checkin`
--

INSERT INTO `checkin` (`CHECKIN_ID`, `HOUSE_ID`, `STUDENT_DATA_ID`, `CHECKOUT_DATE`, `CHECKIN_DATE`, `EXPIRE_DATE`, `GURDIUN_TYPE`, `GURDIUN_NAME`, `MOBILE_NO`, `CHECKIN_STATUS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 27, '2016-08-14', '2016-08-15', '2016-08-15', 'Brother', 'Sabbir Rohman', '445151', 1, 1, '2016-08-14', 1, '2016-08-16', 7),
(2, 5, 13, '2016-08-10', '2016-08-14', '2016-08-13', 'Mother', 'Nafija Begum', '5487455', 1, 1, '2016-08-14', 1, '2016-08-16', 7),
(3, 1, 27, '2016-08-10', '0000-00-00', '2016-08-13', 'Father', 'Jibon Mahmud', '2348552', 0, 1, '2016-08-14', 1, '2016-08-16', 7),
(4, 1, 27, '2016-08-15', '2016-08-16', '2016-08-14', 'Father', 'Azizur Rohman', '4545241', 1, 1, '2016-08-14', 1, '2016-08-16', 7),
(5, 5, 33, '2016-08-14', '2016-08-14', '2016-08-15', 'Brother', 'Asad', '4865443', 1, 1, '2016-08-14', 1, '2016-08-16', 7),
(6, 1, 13, '2016-08-10', '2016-08-14', '2016-08-15', 'Father', 'Hasibur Rohman', '451485', 1, 1, '2016-08-14', 1, '2016-08-16', 7),
(7, 5, 39, '2016-08-12', '0000-00-00', '2016-08-17', 'Father', 'Arman', '554525', 0, 1, '2016-08-14', 1, '2016-08-16', 7),
(8, 1, 14, '2016-08-11', '0000-00-00', '2016-08-16', 'Father', 'Jubayer Rohman', '4141', 0, 1, '2016-08-14', 1, '2016-08-16', 7),
(9, 1, 13, '2016-08-16', '0000-00-00', '2016-09-01', 'Brother', 'Rayhan', '25787', 0, 1, '2016-08-16', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(200) CHARACTER SET latin1 NOT NULL,
  `CLASS_NAME_NUMERIC` tinyint(2) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`CLASS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_NAME`, `CLASS_NAME_NUMERIC`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Six', 0, 1, '2016-09-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE IF NOT EXISTS `class_routine` (
  `ROUTINE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL,
  `TEACHER_ID` int(11) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `TIME_FROM` varchar(100) NOT NULL,
  `TIME_TO` varchar(100) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`ROUTINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE IF NOT EXISTS `class_teacher` (
  `TEACEHR_INFO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEACHER_ID` int(11) NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`TEACEHR_INFO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `class_teacher`
--

INSERT INTO `class_teacher` (`TEACEHR_INFO_ID`, `TEACHER_ID`, `CLASS_ID`, `SECTION_ID`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(4, 1, 1, 2, 2016, 1, '2016-06-07', 0, '0000-00-00', 7),
(5, 2, 2, 4, 2016, 1, '2016-06-19', 1, '2016-06-19', 7),
(6, 3, 1, 3, 2016, 1, '2016-06-19', 1, '2016-06-19', 7),
(7, 4, 3, 5, 2016, 1, '2016-06-19', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `DESIGNATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESIGNATION_NAME` varchar(300) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`DESIGNATION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`DESIGNATION_ID`, `DESIGNATION_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Principal', 1, '2016-06-04', 1, '2016-06-04', 7),
(2, 'Senior Teacher', 1, '2016-06-19', 0, '0000-00-00', 7),
(3, 'Assistant Teacher', 1, '2016-06-19', 0, '0000-00-00', 7),
(4, 'Junior Teacher', 1, '2016-06-19', 0, '0000-00-00', 7),
(5, 'Temporary Teacher', 1, '2016-06-19', 0, '0000-00-00', 7),
(6, 'Accounting', 1, '2016-07-20', 0, '0000-00-00', 7),
(7, 'Part Time Teacher', 1, '2016-08-08', 1, '2016-08-08', 7);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `EXAM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EXAM_NAME` varchar(300) NOT NULL,
  `EXAM_DATE` date NOT NULL,
  `EXAM_COMMENT` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`EXAM_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EXAM_ID`, `EXAM_NAME`, `EXAM_DATE`, `EXAM_COMMENT`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(3, 'Model Test 13', '2016-10-28', '', 1, '2016-11-02', 0, '0000-00-00', 7),
(5, 'Model Test 15', '2016-11-11', '', 1, '2016-11-14', 0, '0000-00-00', 7),
(6, 'Model Test 16', '2016-11-18', '', 1, '2016-11-24', 0, '0000-00-00', 7),
(7, 'Model Test 17', '2016-11-25', '', 1, '2016-12-01', 0, '0000-00-00', 7),
(8, 'model test 18', '2016-12-02', '', 1, '2016-12-01', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `FILE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_ID` int(11) NOT NULL,
  `SUB_CAT_ID` int(11) NOT NULL,
  `FILE_CAPTION` varchar(200) NOT NULL,
  `FILE_LINK` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`FILE_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`FILE_ID`, `CAT_ID`, `SUB_CAT_ID`, `FILE_CAPTION`, `FILE_LINK`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(9, 9, 5, 'Aplication For', '8.pdf', 1, '2016-07-20', 0, '0000-00-00', 7),
(10, 9, 4, 'registration card-correction form', 'registration-card-correction-form.pdf', 1, '2016-07-20', 0, '0000-00-00', 7),
(11, 9, 4, 'Hostel Admission Form', 'hostel_adm_form.pdf', 1, '2016-07-20', 0, '0000-00-00', 7),
(12, 9, 5, 'School membership Application Form', 'MbrApp.pdf', 1, '2016-07-20', 0, '0000-00-00', 7),
(13, 9, 4, 'CLASS V', '1_One.pdf', 1, '2016-08-22', 0, '0000-00-00', 7),
(14, 9, 4, 'Class VI', '1_One.pdf', 1, '2016-08-22', 0, '0000-00-00', 7),
(15, 9, 5, 'Admission Form', 'Shikder Form.pdf', 1, '2016-10-01', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_ID` int(11) NOT NULL,
  `SUB_CAT_ID` int(11) NOT NULL,
  `IMAGE_CAPTION` varchar(200) NOT NULL,
  `IMAGE_LINK` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`IMAGE_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`IMAGE_ID`, `CAT_ID`, `SUB_CAT_ID`, `IMAGE_CAPTION`, `IMAGE_LINK`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(9, 8, 2, 'On a misty winter morning of December 15th, 2012, the very young members of International Turkish Hope School, Gulshan Preschool Section, celebrated the glorious independence of Bangladesh.', 'DSC00475.JPG', 1, '2016-07-24', 0, '0000-00-00', 7),
(10, 8, 2, 'On a misty winter morning of December 15th, 2012, the very young members of International Turkish Hope School, Gulshan Preschool Section, celebrated the glorious independence of Bangladesh.', '25397_bd36.JPG', 1, '2016-07-24', 0, '0000-00-00', 7),
(11, 8, 2, 'On a misty winter morning of December 15th, 2012, the very young members of International Turkish Hope School, Gulshan Preschool Section, celebrated the glorious independence of Bangladesh.', '14_Children+Parade+_260313.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(12, 8, 2, 'On a misty winter morning of December 15th, 2012, the very young members of International Turkish Hope School, Gulshan Preschool Section, celebrated the glorious independence of Bangladesh.', '19_Children+Parade+_260313.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(13, 8, 1, 'school sports images', 'SPORTS-DAY-3.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(14, 8, 1, 'school sports images', 'RepublicDay-IICS-SportsDay-26Jan2016-7-Big.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(15, 8, 1, 'school sports images', 'PYP-Sports-Day-29Jan16-6-Big.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(16, 8, 1, 'school sports images', 'kucuk-0f3e.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(17, 8, 1, 'school sports images', 'IISH-SportsDay2014-12.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(18, 8, 1, 'school sports images', '23273911.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(19, 8, 1, 'school sports images', '3a40128081fc3e2e784bfdd145c5d1f9.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(20, 8, 1, 'school sports images', 'annual-sports-1120150604041515.jpg', 1, '2016-07-24', 0, '0000-00-00', 7),
(21, 8, 1, 'school sports images', 'british-school-of-bucharest-sports-day-2011.jpg', 1, '2016-07-24', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GRADE_NAME` varchar(250) NOT NULL,
  `MARK_FROM` int(11) NOT NULL,
  `MARK_UPTO` int(11) NOT NULL,
  `COMMENT` varchar(150) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`GRADE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`GRADE_ID`, `GRADE_NAME`, `MARK_FROM`, `MARK_UPTO`, `COMMENT`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'A+', 80, 99, 'very good', 1, '2016-06-09', 1, '2016-06-09', 7),
(2, 'A', 70, 79, 'Good', 1, '2016-06-09', 0, '0000-00-00', 7),
(3, 'B', 50, 59, 'not bad', 1, '2016-06-09', 0, '0000-00-00', 7),
(4, 'A-', 60, 69, 'Good', 1, '2016-06-09', 1, '2016-08-22', 7),
(5, 'F', 0, 32, 'very bad vai', 1, '2016-06-09', 1, '2016-06-11', 7);

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE IF NOT EXISTS `house` (
  `HOUSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `HOUSE_NAME` varchar(150) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `LOCATION` text NOT NULL,
  `TOTAL_ROOM` int(11) NOT NULL,
  `TOTAL_SET` int(11) NOT NULL,
  `IMAGES` varchar(70) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`HOUSE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`HOUSE_ID`, `HOUSE_NAME`, `DESCRIPTION`, `LOCATION`, `TOTAL_ROOM`, `TOTAL_SET`, `IMAGES`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Bongobondhu Hall', 'Bongobondhu Hall', 'Elephante road, Dhaka', 12, 36, '', 1, '2016-08-14', 1, '2016-08-14', 7),
(5, 'Shohid Jiyaur Rohman Hall', 'Shohid Jiyaur Rohman Hostel', 'Dhaka University', 25, 100, '', 1, '2016-08-14', 1, '2016-08-14', 7),
(9, 'Begum Rokeya Hall', 'Begum Rokeya Hall', 'Elephante road', 25, 100, '', 1, '2016-08-14', 1, '2016-08-14', 7);

-- --------------------------------------------------------

--
-- Table structure for table `leave_data`
--

CREATE TABLE IF NOT EXISTS `leave_data` (
  `LEAVE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEACHER_ID` int(11) NOT NULL,
  `LEAVE_SETTINGS_ID` int(11) NOT NULL,
  `LEAVE_DURATION` varchar(100) NOT NULL,
  `REASON_FOR_LEAVE` varchar(300) NOT NULL,
  `DATE_FROM` date NOT NULL,
  `DATE_TO` date NOT NULL,
  `YEAR` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`LEAVE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `leave_data`
--

INSERT INTO `leave_data` (`LEAVE_ID`, `TEACHER_ID`, `LEAVE_SETTINGS_ID`, `LEAVE_DURATION`, `REASON_FOR_LEAVE`, `DATE_FROM`, `DATE_TO`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 1, '2', 'He is tired', '2016-07-07', '2016-07-09', 2016, 1, '2016-07-12', 1, '2016-07-12', 7),
(2, 1, 1, '1', 'dcvsfd', '2016-07-03', '2016-07-04', 2016, 1, '2016-07-17', 0, '0000-00-00', 7),
(3, 7, 3, '4', '', '2016-08-21', '2016-08-24', 2016, 1, '2016-08-21', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `leave_settings`
--

CREATE TABLE IF NOT EXISTS `leave_settings` (
  `LEAVE_SETTINGS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LEAVE_NAME` varchar(100) NOT NULL,
  `LEAVE_DESCRIPTION` text NOT NULL,
  `LEAVE_DURATION` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`LEAVE_SETTINGS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `leave_settings`
--

INSERT INTO `leave_settings` (`LEAVE_SETTINGS_ID`, `LEAVE_NAME`, `LEAVE_DESCRIPTION`, `LEAVE_DURATION`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Sick Leave', 'This is a sick', 7, 1, '2016-07-12', 0, '0000-00-00', 7),
(2, 'Casual Leave', 'This is casual leave', 5, 1, '2016-07-12', 1, '2016-08-21', 7),
(3, 'Festive Leave', '', 10, 1, '2016-08-21', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `library_member`
--

CREATE TABLE IF NOT EXISTS `library_member` (
  `LIBRARY_MEMBER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `STUDENT_DATA_ID` int(11) NOT NULL,
  `ROLL_NO` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`LIBRARY_MEMBER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `library_member`
--

INSERT INTO `library_member` (`LIBRARY_MEMBER_ID`, `CLASS_ID`, `SECTION_ID`, `STUDENT_DATA_ID`, `ROLL_NO`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 2, 2, 2, 2015, 1, '2016-07-27', 1, '2016-07-27', 7),
(2, 1, 2, 1, 1, 2016, 1, '2016-07-27', 0, '0000-00-00', 7),
(3, 1, 2, 2, 2, 2016, 1, '2016-07-27', 0, '0000-00-00', 7),
(4, 1, 2, 3, 3, 2016, 1, '2016-07-27', 0, '0000-00-00', 7),
(5, 2, 4, 30, 10, 2016, 1, '2016-07-27', 0, '0000-00-00', 7),
(6, 1, 3, 19, 9, 2016, 1, '2016-07-27', 0, '0000-00-00', 7),
(7, 3, 5, 38, 8, 2016, 1, '2016-07-27', 0, '0000-00-00', 7),
(8, 1, 3, 12, 2, 2016, 1, '2016-07-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `library_settings`
--

CREATE TABLE IF NOT EXISTS `library_settings` (
  `LIBRARY_SETTING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAX_BOOK_ISSUE` int(11) NOT NULL,
  `MAX_RETURN_DAY` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`LIBRARY_SETTING_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `library_settings`
--

INSERT INTO `library_settings` (`LIBRARY_SETTING_ID`, `MAX_BOOK_ISSUE`, `MAX_RETURN_DAY`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 5, 7, 1, '2016-07-27', 1, '2016-07-27', 7);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `MARK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `ROLL_NO` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL,
  `EXAM_ID` int(11) NOT NULL,
  `TOTAL_MARK` int(11) NOT NULL,
  `MARK_OBTAINED` int(11) NOT NULL,
  `GRADE_ID` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `COMMENT` varchar(400) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`MARK_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1489 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`MARK_ID`, `CLASS_ID`, `SECTION_ID`, `STUDENT_ID`, `ROLL_NO`, `SUBJECT_ID`, `EXAM_ID`, `TOTAL_MARK`, `MARK_OBTAINED`, `GRADE_ID`, `YEAR`, `COMMENT`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 1, 36, 2, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(2, 1, 1, 58, 3, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(3, 1, 1, 90, 4, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(4, 1, 1, 4, 6, 2, 4, 40, 30, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(5, 1, 1, 35, 8, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(6, 1, 1, 89, 10, 2, 4, 40, 24, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(7, 1, 1, 42, 14, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(8, 1, 1, 14, 16, 2, 4, 40, 32, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(9, 1, 1, 37, 18, 2, 4, 40, 28, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(10, 1, 1, 56, 19, 2, 4, 40, 30, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(11, 1, 1, 43, 20, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(12, 1, 1, 76, 22, 2, 4, 40, 25, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(13, 1, 1, 73, 24, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(14, 1, 1, 34, 26, 2, 4, 40, 13, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(15, 1, 1, 61, 28, 2, 4, 40, 0, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(16, 1, 1, 54, 30, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(17, 1, 1, 74, 32, 2, 4, 40, 23, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(18, 1, 1, 44, 34, 2, 4, 40, 26, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(19, 1, 1, 47, 36, 2, 4, 40, 24, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(20, 1, 1, 53, 38, 2, 4, 40, 30, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(21, 1, 1, 9, 42, 2, 4, 40, 26, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(22, 1, 1, 45, 44, 2, 4, 40, 28, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(23, 1, 1, 21, 46, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(24, 1, 1, 82, 48, 2, 4, 40, 37, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(25, 1, 1, 1, 49, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(26, 1, 1, 67, 50, 2, 4, 40, 26, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(27, 1, 1, 12, 54, 2, 4, 40, 35, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(28, 1, 1, 57, 56, 2, 4, 40, 22, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(29, 1, 1, 11, 57, 2, 4, 40, 18, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(30, 1, 1, 18, 58, 2, 4, 40, 25, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(31, 1, 1, 16, 64, 2, 4, 40, 14, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(32, 1, 1, 33, 66, 2, 4, 40, 20, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(33, 1, 1, 7, 67, 2, 4, 40, 24, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(34, 1, 1, 69, 68, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(35, 1, 1, 10, 70, 2, 4, 40, 28, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(36, 1, 1, 31, 72, 2, 4, 40, 25, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(37, 1, 1, 5, 76, 2, 4, 40, 23, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(38, 1, 1, 59, 78, 2, 4, 40, 30, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(39, 1, 1, 38, 80, 2, 4, 40, 32, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(40, 1, 1, 86, 81, 2, 4, 40, 37, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(41, 1, 1, 83, 82, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(42, 1, 1, 50, 83, 2, 4, 40, 28, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(43, 1, 1, 32, 84, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(44, 1, 1, 85, 88, 2, 4, 40, 33, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(45, 1, 1, 52, 90, 2, 4, 40, 18, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(46, 1, 1, 40, 94, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(47, 1, 1, 87, 96, 2, 4, 40, 21, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(48, 1, 1, 75, 100, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(49, 1, 1, 19, 101, 2, 4, 40, 34, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(50, 1, 1, 46, 102, 2, 4, 40, 24, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(51, 1, 1, 20, 106, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(52, 1, 1, 25, 110, 2, 4, 40, 32, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(53, 1, 1, 70, 112, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-06', 0, '0000-00-00', 7),
(54, 1, 1, 36, 2, 1, 4, 65, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(55, 1, 1, 58, 3, 1, 4, 65, 36, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(56, 1, 1, 90, 4, 1, 4, 65, 37, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(57, 1, 1, 4, 6, 1, 4, 65, 55, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(58, 1, 1, 35, 8, 1, 4, 65, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(59, 1, 1, 89, 10, 1, 4, 65, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(60, 1, 1, 42, 14, 1, 4, 65, 41, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(61, 1, 1, 14, 16, 1, 4, 65, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(62, 1, 1, 37, 18, 1, 4, 65, 44, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(63, 1, 1, 56, 19, 1, 4, 65, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(64, 1, 1, 43, 20, 1, 4, 65, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(65, 1, 1, 76, 22, 1, 4, 65, 48, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(66, 1, 1, 73, 24, 1, 4, 65, 56, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(67, 1, 1, 34, 26, 1, 4, 65, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(68, 1, 1, 61, 28, 1, 4, 65, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(69, 1, 1, 54, 30, 1, 4, 65, 57, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(70, 1, 1, 74, 32, 1, 4, 65, 40, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(71, 1, 1, 44, 34, 1, 4, 65, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(72, 1, 1, 47, 36, 1, 4, 65, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(73, 1, 1, 53, 38, 1, 4, 65, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(74, 1, 1, 9, 42, 1, 4, 65, 42, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(75, 1, 1, 45, 44, 1, 4, 65, 37, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(76, 1, 1, 21, 46, 1, 4, 65, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(77, 1, 1, 82, 48, 1, 4, 65, 20, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(78, 1, 1, 1, 49, 1, 4, 65, 47, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(79, 1, 1, 67, 50, 1, 4, 65, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(80, 1, 1, 12, 54, 1, 4, 65, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(81, 1, 1, 57, 56, 1, 4, 65, 20, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(82, 1, 1, 11, 57, 1, 4, 65, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(83, 1, 1, 18, 58, 1, 4, 65, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(84, 1, 1, 16, 64, 1, 4, 65, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(85, 1, 1, 33, 66, 1, 4, 65, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(86, 1, 1, 7, 67, 1, 4, 65, 23, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(87, 1, 1, 69, 68, 1, 4, 65, 42, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(88, 1, 1, 10, 70, 1, 4, 65, 50, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(89, 1, 1, 31, 72, 1, 4, 65, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(90, 1, 1, 5, 76, 1, 4, 65, 51, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(91, 1, 1, 59, 78, 1, 4, 65, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(92, 1, 1, 38, 80, 1, 4, 65, 37, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(93, 1, 1, 86, 81, 1, 4, 65, 59, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(94, 1, 1, 83, 82, 1, 4, 65, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(95, 1, 1, 50, 83, 1, 4, 65, 59, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(96, 1, 1, 32, 84, 1, 4, 65, 44, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(97, 1, 1, 85, 88, 1, 4, 65, 40, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(98, 1, 1, 52, 90, 1, 4, 65, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(99, 1, 1, 40, 94, 1, 4, 65, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(100, 1, 1, 87, 96, 1, 4, 65, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(101, 1, 1, 75, 100, 1, 4, 65, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(102, 1, 1, 19, 101, 1, 4, 65, 47, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(103, 1, 1, 46, 102, 1, 4, 65, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(104, 1, 1, 20, 106, 1, 4, 65, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(105, 1, 1, 25, 110, 1, 4, 65, 51, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(106, 1, 1, 70, 112, 1, 4, 65, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(107, 1, 1, 36, 2, 3, 4, 55, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(108, 1, 1, 58, 3, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(109, 1, 1, 90, 4, 3, 4, 55, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(110, 1, 1, 4, 6, 3, 4, 55, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(111, 1, 1, 35, 8, 3, 4, 55, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(112, 1, 1, 89, 10, 3, 4, 55, 23, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(113, 1, 1, 42, 14, 3, 4, 55, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(114, 1, 1, 14, 16, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(115, 1, 1, 37, 18, 3, 4, 55, 42, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(116, 1, 1, 56, 19, 3, 4, 55, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(117, 1, 1, 43, 20, 3, 4, 55, 41, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(118, 1, 1, 76, 22, 3, 4, 55, 50, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(119, 1, 1, 73, 24, 3, 4, 55, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(120, 1, 1, 34, 26, 3, 4, 55, 18, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(121, 1, 1, 61, 28, 3, 4, 55, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(122, 1, 1, 54, 30, 3, 4, 55, 44, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(123, 1, 1, 74, 32, 3, 4, 55, 51, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(124, 1, 1, 44, 34, 3, 4, 55, 43, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(125, 1, 1, 47, 36, 3, 4, 55, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(126, 1, 1, 53, 38, 3, 4, 55, 41, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(127, 1, 1, 9, 42, 3, 4, 55, 44, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(128, 1, 1, 45, 44, 3, 4, 55, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(129, 1, 1, 21, 46, 3, 4, 55, 43, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(130, 1, 1, 82, 48, 3, 4, 55, 40, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(131, 1, 1, 1, 49, 3, 4, 55, 42, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(132, 1, 1, 67, 50, 3, 4, 55, 40, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(133, 1, 1, 12, 54, 3, 4, 55, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(134, 1, 1, 57, 56, 3, 4, 55, 36, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(135, 1, 1, 11, 57, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(136, 1, 1, 18, 58, 3, 4, 55, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(137, 1, 1, 16, 64, 3, 4, 55, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(138, 1, 1, 33, 66, 3, 4, 55, 34, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(139, 1, 1, 7, 67, 3, 4, 55, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(140, 1, 1, 69, 68, 3, 4, 55, 43, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(141, 1, 1, 10, 70, 3, 4, 55, 43, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(142, 1, 1, 31, 72, 3, 4, 55, 36, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(143, 1, 1, 5, 76, 3, 4, 55, 44, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(144, 1, 1, 59, 78, 3, 4, 55, 35, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(145, 1, 1, 38, 80, 3, 4, 55, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(146, 1, 1, 86, 81, 3, 4, 55, 54, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(147, 1, 1, 83, 82, 3, 4, 55, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(148, 1, 1, 50, 83, 3, 4, 55, 49, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(149, 1, 1, 32, 84, 3, 4, 55, 47, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(150, 1, 1, 85, 88, 3, 4, 55, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(151, 1, 1, 52, 90, 3, 4, 55, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(152, 1, 1, 40, 94, 3, 4, 55, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(153, 1, 1, 87, 96, 3, 4, 55, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(154, 1, 1, 75, 100, 3, 4, 55, 49, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(155, 1, 1, 19, 101, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(156, 1, 1, 46, 102, 3, 4, 55, 40, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(157, 1, 1, 20, 106, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(158, 1, 1, 25, 110, 3, 4, 55, 48, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(159, 1, 1, 70, 112, 3, 4, 55, 18, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(160, 1, 1, 36, 2, 4, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(161, 1, 1, 58, 3, 4, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(162, 1, 1, 90, 4, 4, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(163, 1, 1, 4, 6, 4, 4, 40, 50, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(164, 1, 1, 35, 8, 4, 4, 40, 22, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(165, 1, 1, 89, 10, 4, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(166, 1, 1, 42, 14, 4, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(167, 1, 1, 14, 16, 4, 4, 40, 23, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(168, 1, 1, 37, 18, 4, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(169, 1, 1, 56, 19, 4, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(170, 1, 1, 43, 20, 4, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(171, 1, 1, 76, 22, 4, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(172, 1, 1, 73, 24, 4, 4, 40, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(173, 1, 1, 34, 26, 4, 4, 40, 18, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(174, 1, 1, 61, 28, 4, 4, 40, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(175, 1, 1, 54, 30, 4, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(176, 1, 1, 74, 32, 4, 4, 40, 21, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(177, 1, 1, 44, 34, 4, 4, 40, 23, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(178, 1, 1, 47, 36, 4, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(179, 1, 1, 53, 38, 4, 4, 40, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(180, 1, 1, 9, 42, 4, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(181, 1, 1, 45, 44, 4, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(182, 1, 1, 21, 46, 4, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(183, 1, 1, 82, 48, 4, 4, 40, 14, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(184, 1, 1, 1, 49, 4, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(185, 1, 1, 67, 50, 4, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(186, 1, 1, 12, 54, 4, 4, 40, 23, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(187, 1, 1, 57, 56, 4, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(188, 1, 1, 11, 57, 4, 4, 40, 21, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(189, 1, 1, 18, 58, 4, 4, 40, 20, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(190, 1, 1, 16, 64, 4, 4, 40, 23, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(191, 1, 1, 33, 66, 4, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(192, 1, 1, 7, 67, 4, 4, 40, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(193, 1, 1, 69, 68, 4, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(194, 1, 1, 10, 70, 4, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(195, 1, 1, 31, 72, 4, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(196, 1, 1, 5, 76, 4, 4, 40, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(197, 1, 1, 59, 78, 4, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(198, 1, 1, 38, 80, 4, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(199, 1, 1, 86, 81, 4, 4, 40, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(200, 1, 1, 83, 82, 4, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(201, 1, 1, 50, 83, 4, 4, 40, 36, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(202, 1, 1, 32, 84, 4, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(203, 1, 1, 85, 88, 4, 4, 40, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(204, 1, 1, 52, 90, 4, 4, 40, 22, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(205, 1, 1, 40, 94, 4, 4, 40, 21, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(206, 1, 1, 87, 96, 4, 4, 40, 23, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(207, 1, 1, 75, 100, 4, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(208, 1, 1, 19, 101, 4, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(209, 1, 1, 46, 102, 4, 4, 40, 22, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(210, 1, 1, 20, 106, 4, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(211, 1, 1, 25, 110, 4, 4, 40, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(212, 1, 1, 70, 112, 4, 4, 40, 22, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(213, 1, 2, 77, 1, 2, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(214, 1, 2, 62, 5, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(215, 1, 2, 49, 7, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(216, 1, 2, 79, 9, 2, 4, 40, 22, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(217, 1, 2, 81, 11, 2, 4, 40, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(218, 1, 2, 94, 12, 2, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(219, 1, 2, 64, 13, 2, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(220, 1, 2, 23, 15, 2, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(221, 1, 2, 71, 17, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(222, 1, 2, 84, 21, 2, 4, 40, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(223, 1, 2, 72, 23, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(224, 1, 2, 55, 25, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(225, 1, 2, 41, 27, 2, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(226, 1, 2, 88, 29, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(227, 1, 2, 80, 31, 2, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(228, 1, 2, 28, 35, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(229, 1, 2, 29, 37, 2, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(230, 1, 2, 63, 39, 2, 4, 40, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(231, 1, 2, 93, 40, 2, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(232, 1, 2, 66, 41, 2, 4, 40, 19, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(233, 1, 2, 3, 45, 2, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(234, 1, 2, 17, 47, 2, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(235, 1, 2, 6, 51, 2, 4, 40, 22, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(236, 1, 2, 13, 53, 2, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(237, 1, 2, 27, 61, 2, 4, 40, 17, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(238, 1, 2, 78, 65, 2, 4, 40, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(239, 1, 2, 91, 69, 2, 4, 40, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(240, 1, 2, 48, 71, 2, 4, 40, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(241, 1, 2, 30, 73, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(242, 1, 2, 68, 74, 2, 4, 40, 21, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(243, 1, 2, 2, 75, 2, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(244, 1, 2, 15, 77, 2, 4, 40, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(245, 1, 2, 22, 79, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(246, 1, 2, 92, 85, 2, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(247, 1, 2, 65, 91, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(248, 1, 2, 60, 95, 2, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(249, 1, 2, 24, 99, 2, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(250, 1, 2, 26, 107, 2, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(251, 1, 2, 39, 111, 2, 4, 40, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(252, 1, 2, 51, 115, 2, 4, 40, 20, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(253, 1, 2, 77, 1, 1, 4, 65, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(254, 1, 2, 62, 5, 1, 4, 65, 55, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(255, 1, 2, 49, 7, 1, 4, 65, 42, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(256, 1, 2, 79, 9, 1, 4, 65, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(257, 1, 2, 81, 11, 1, 4, 65, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(258, 1, 2, 94, 12, 1, 4, 65, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(259, 1, 2, 64, 13, 1, 4, 65, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(260, 1, 2, 23, 15, 1, 4, 65, 53, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(261, 1, 2, 71, 17, 1, 4, 65, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(262, 1, 2, 84, 21, 1, 4, 65, 50, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(263, 1, 2, 72, 23, 1, 4, 65, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(264, 1, 2, 55, 25, 1, 4, 65, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(265, 1, 2, 41, 27, 1, 4, 65, 49, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(266, 1, 2, 88, 29, 1, 4, 65, 50, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(267, 1, 2, 80, 31, 1, 4, 65, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(268, 1, 2, 28, 35, 1, 4, 65, 48, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(269, 1, 2, 29, 37, 1, 4, 65, 53, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(270, 1, 2, 63, 39, 1, 4, 65, 42, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(271, 1, 2, 93, 40, 1, 4, 65, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(272, 1, 2, 66, 41, 1, 4, 65, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(273, 1, 2, 3, 45, 1, 4, 65, 35, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(274, 1, 2, 17, 47, 1, 4, 65, 50, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(275, 1, 2, 6, 51, 1, 4, 65, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(276, 1, 2, 13, 53, 1, 4, 65, 43, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(277, 1, 2, 27, 61, 1, 4, 65, 18, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(278, 1, 2, 78, 65, 1, 4, 65, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(279, 1, 2, 91, 69, 1, 4, 65, 35, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(280, 1, 2, 48, 71, 1, 4, 65, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(281, 1, 2, 30, 73, 1, 4, 65, 40, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(282, 1, 2, 68, 74, 1, 4, 65, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(283, 1, 2, 2, 75, 1, 4, 65, 50, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(284, 1, 2, 15, 77, 1, 4, 65, 43, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(285, 1, 2, 22, 79, 1, 4, 65, 37, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(286, 1, 2, 92, 85, 1, 4, 65, 60, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(287, 1, 2, 65, 91, 1, 4, 65, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(288, 1, 2, 60, 95, 1, 4, 65, 40, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(289, 1, 2, 24, 99, 1, 4, 65, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(290, 1, 2, 26, 107, 1, 4, 65, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(291, 1, 2, 39, 111, 1, 4, 65, 41, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(292, 1, 2, 51, 115, 1, 4, 65, 35, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(293, 1, 2, 77, 1, 3, 4, 55, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(294, 1, 2, 62, 5, 3, 4, 55, 52, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(295, 1, 2, 49, 7, 3, 4, 55, 47, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(296, 1, 2, 79, 9, 3, 4, 55, 48, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(297, 1, 2, 81, 11, 3, 4, 55, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(298, 1, 2, 94, 12, 3, 4, 55, 39, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(299, 1, 2, 64, 13, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(300, 1, 2, 23, 15, 3, 4, 55, 51, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(301, 1, 2, 71, 17, 3, 4, 55, 42, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(302, 1, 2, 84, 21, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(303, 1, 2, 72, 23, 3, 4, 55, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(304, 1, 2, 55, 25, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(305, 1, 2, 41, 27, 3, 4, 55, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(306, 1, 2, 88, 29, 3, 4, 55, 52, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(307, 1, 2, 80, 31, 3, 4, 55, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(308, 1, 2, 28, 35, 3, 4, 55, 46, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(309, 1, 2, 29, 37, 3, 4, 55, 47, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(310, 1, 2, 63, 39, 3, 4, 55, 42, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(311, 1, 2, 93, 40, 3, 4, 55, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(312, 1, 2, 66, 41, 3, 4, 55, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(313, 1, 2, 3, 45, 3, 4, 55, 41, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(314, 1, 2, 17, 47, 3, 4, 55, 48, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(315, 1, 2, 6, 51, 3, 4, 55, 34, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(316, 1, 2, 13, 53, 3, 4, 55, 45, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(317, 1, 2, 27, 61, 3, 4, 55, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(318, 1, 2, 78, 65, 3, 4, 55, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(319, 1, 2, 91, 69, 3, 4, 55, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(320, 1, 2, 48, 71, 3, 4, 55, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(321, 1, 2, 30, 73, 3, 4, 55, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(322, 1, 2, 68, 74, 3, 4, 55, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(323, 1, 2, 2, 75, 3, 4, 55, 48, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(324, 1, 2, 15, 77, 3, 4, 55, 50, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(325, 1, 2, 22, 79, 3, 4, 55, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(326, 1, 2, 92, 85, 3, 4, 55, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(327, 1, 2, 65, 91, 3, 4, 55, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(328, 1, 2, 60, 95, 3, 4, 55, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(329, 1, 2, 24, 99, 3, 4, 55, 40, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(330, 1, 2, 26, 107, 3, 4, 55, 44, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(331, 1, 2, 39, 111, 3, 4, 55, 43, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(332, 1, 2, 51, 115, 3, 4, 55, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(333, 1, 2, 77, 1, 4, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(334, 1, 2, 62, 5, 4, 4, 40, 34, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(335, 1, 2, 49, 7, 4, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(336, 1, 2, 79, 9, 4, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(337, 1, 2, 81, 11, 4, 4, 40, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(338, 1, 2, 94, 12, 4, 4, 40, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(339, 1, 2, 64, 13, 4, 4, 40, 23, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(340, 1, 2, 23, 15, 4, 4, 40, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(341, 1, 2, 71, 17, 4, 4, 40, 34, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(342, 1, 2, 84, 21, 4, 4, 40, 31, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(343, 1, 2, 72, 23, 4, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(344, 1, 2, 55, 25, 4, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(345, 1, 2, 41, 27, 4, 4, 40, 33, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(346, 1, 2, 88, 29, 4, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(347, 1, 2, 80, 31, 4, 4, 40, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(348, 1, 2, 28, 35, 4, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(349, 1, 2, 29, 37, 4, 4, 40, 28, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(350, 1, 2, 63, 39, 4, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(351, 1, 2, 93, 40, 4, 4, 40, 34, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(352, 1, 2, 66, 41, 4, 4, 40, 20, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(353, 1, 2, 3, 45, 4, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(354, 1, 2, 17, 47, 4, 4, 40, 32, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(355, 1, 2, 6, 51, 4, 4, 40, 17, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(356, 1, 2, 13, 53, 4, 4, 40, 38, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(357, 1, 2, 27, 61, 4, 4, 40, 18, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(358, 1, 2, 78, 65, 4, 4, 40, 0, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(359, 1, 2, 91, 69, 4, 4, 40, 24, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(360, 1, 2, 48, 71, 4, 4, 40, 20, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(361, 1, 2, 30, 73, 4, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(362, 1, 2, 68, 74, 4, 4, 40, 26, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(363, 1, 2, 2, 75, 4, 4, 40, 34, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(364, 1, 2, 15, 77, 4, 4, 40, 36, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(365, 1, 2, 22, 79, 4, 4, 40, 22, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(366, 1, 2, 92, 85, 4, 4, 40, 37, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(367, 1, 2, 65, 91, 4, 4, 40, 27, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(368, 1, 2, 60, 95, 4, 4, 40, 20, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(369, 1, 2, 24, 99, 4, 4, 40, 35, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(370, 1, 2, 26, 107, 4, 4, 40, 29, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(371, 1, 2, 39, 111, 4, 4, 40, 30, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(372, 1, 2, 51, 115, 4, 4, 40, 25, 0, 2016, '', 1, '2016-11-07', 0, '0000-00-00', 7),
(373, 1, 1, 36, 2, 2, 5, 40, 37, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(374, 1, 1, 58, 3, 2, 5, 40, 37, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(375, 1, 1, 90, 4, 2, 5, 40, 37, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(376, 1, 1, 4, 6, 2, 5, 40, 38, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(377, 1, 1, 35, 8, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(378, 1, 1, 89, 10, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(379, 1, 1, 42, 14, 2, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(380, 1, 1, 14, 16, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(381, 1, 1, 37, 18, 2, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(382, 1, 1, 56, 19, 2, 5, 40, 38, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(383, 1, 1, 43, 20, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(384, 1, 1, 76, 22, 2, 5, 40, 38, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(385, 1, 1, 73, 24, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(386, 1, 1, 34, 26, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(387, 1, 1, 61, 28, 2, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(388, 1, 1, 54, 30, 2, 5, 40, 37, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(389, 1, 1, 74, 32, 2, 5, 40, 36, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(390, 1, 1, 44, 34, 2, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(391, 1, 1, 47, 36, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(392, 1, 1, 53, 38, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(393, 1, 1, 9, 42, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(394, 1, 1, 45, 44, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(395, 1, 1, 21, 46, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(396, 1, 1, 82, 48, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(397, 1, 1, 1, 49, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(398, 1, 1, 67, 50, 2, 5, 40, 39, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(399, 1, 1, 12, 54, 2, 5, 40, 25, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(400, 1, 1, 57, 56, 2, 5, 40, 16, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(401, 1, 1, 11, 57, 2, 5, 40, 28, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(402, 1, 1, 18, 58, 2, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(403, 1, 1, 16, 64, 2, 5, 40, 25, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(404, 1, 1, 33, 66, 2, 5, 40, 22, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(405, 1, 1, 7, 67, 2, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(406, 1, 1, 69, 68, 2, 5, 40, 29, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(407, 1, 1, 10, 70, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(408, 1, 1, 31, 72, 2, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(409, 1, 1, 5, 76, 2, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(410, 1, 1, 59, 78, 2, 5, 40, 38, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(411, 1, 1, 38, 80, 2, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(412, 1, 1, 86, 81, 2, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(413, 1, 1, 83, 82, 2, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(414, 1, 1, 50, 83, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(415, 1, 1, 32, 84, 2, 5, 40, 28, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(416, 1, 1, 85, 88, 2, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(417, 1, 1, 52, 90, 2, 5, 40, 26, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(418, 1, 1, 40, 94, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(419, 1, 1, 87, 96, 2, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(420, 1, 1, 75, 100, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(421, 1, 1, 19, 101, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(422, 1, 1, 46, 102, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(423, 1, 1, 20, 106, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(424, 1, 1, 25, 110, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(425, 1, 1, 70, 112, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(426, 1, 1, 36, 2, 1, 5, 65, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(427, 1, 1, 58, 3, 1, 5, 65, 53, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(428, 1, 1, 90, 4, 1, 5, 65, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(429, 1, 1, 4, 6, 1, 5, 65, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(430, 1, 1, 35, 8, 1, 5, 65, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(431, 1, 1, 89, 10, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(432, 1, 1, 42, 14, 1, 5, 65, 54, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(433, 1, 1, 14, 16, 1, 5, 65, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(434, 1, 1, 37, 18, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(435, 1, 1, 56, 19, 1, 5, 65, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(436, 1, 1, 43, 20, 1, 5, 65, 45, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(437, 1, 1, 76, 22, 1, 5, 65, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(438, 1, 1, 73, 24, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(439, 1, 1, 34, 26, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(440, 1, 1, 61, 28, 1, 5, 65, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(441, 1, 1, 54, 30, 1, 5, 65, 53, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(442, 1, 1, 74, 32, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(443, 1, 1, 44, 34, 1, 5, 65, 42, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(444, 1, 1, 47, 36, 1, 5, 65, 39, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(445, 1, 1, 53, 38, 1, 5, 65, 55, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(446, 1, 1, 9, 42, 1, 5, 65, 45, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(447, 1, 1, 45, 44, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(448, 1, 1, 21, 46, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(449, 1, 1, 82, 48, 1, 5, 65, 58, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(450, 1, 1, 1, 49, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(451, 1, 1, 67, 50, 1, 5, 65, 53, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(452, 1, 1, 12, 54, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(453, 1, 1, 57, 56, 1, 5, 65, 14, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(454, 1, 1, 11, 57, 1, 5, 65, 40, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(455, 1, 1, 18, 58, 1, 5, 65, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(456, 1, 1, 16, 64, 1, 5, 65, 25, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(457, 1, 1, 33, 66, 1, 5, 65, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(458, 1, 1, 7, 67, 1, 5, 65, 46, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(459, 1, 1, 69, 68, 1, 5, 65, 46, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(460, 1, 1, 10, 70, 1, 5, 65, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(461, 1, 1, 31, 72, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(462, 1, 1, 5, 76, 1, 5, 65, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(463, 1, 1, 59, 78, 1, 5, 65, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(464, 1, 1, 38, 80, 1, 5, 65, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(465, 1, 1, 86, 81, 1, 5, 65, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(466, 1, 1, 83, 82, 1, 5, 65, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(467, 1, 1, 50, 83, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(468, 1, 1, 32, 84, 1, 5, 65, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(469, 1, 1, 85, 88, 1, 5, 65, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(470, 1, 1, 52, 90, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(471, 1, 1, 40, 94, 1, 5, 65, 57, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(472, 1, 1, 87, 96, 1, 5, 65, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(473, 1, 1, 75, 100, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(474, 1, 1, 19, 101, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(475, 1, 1, 46, 102, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(476, 1, 1, 20, 106, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(477, 1, 1, 25, 110, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(478, 1, 1, 70, 112, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(479, 1, 1, 36, 2, 3, 5, 55, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(480, 1, 1, 58, 3, 3, 5, 55, 40, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(481, 1, 1, 90, 4, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(482, 1, 1, 4, 6, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(483, 1, 1, 35, 8, 3, 5, 55, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(484, 1, 1, 89, 10, 3, 5, 55, 53, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(485, 1, 1, 42, 14, 3, 5, 55, 46, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(486, 1, 1, 14, 16, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(487, 1, 1, 37, 18, 3, 5, 55, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(488, 1, 1, 56, 19, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(489, 1, 1, 43, 20, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(490, 1, 1, 76, 22, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(491, 1, 1, 73, 24, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(492, 1, 1, 34, 26, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(493, 1, 1, 61, 28, 3, 5, 55, 49, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(494, 1, 1, 54, 30, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(495, 1, 1, 74, 32, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(496, 1, 1, 44, 34, 3, 5, 55, 46, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(497, 1, 1, 47, 36, 3, 5, 55, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(498, 1, 1, 53, 38, 3, 5, 55, 45, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(499, 1, 1, 9, 42, 3, 5, 55, 49, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(500, 1, 1, 45, 44, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(501, 1, 1, 21, 46, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(502, 1, 1, 82, 48, 3, 5, 55, 49, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(503, 1, 1, 1, 49, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(504, 1, 1, 67, 50, 3, 5, 55, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(505, 1, 1, 12, 54, 3, 5, 55, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(506, 1, 1, 57, 56, 3, 5, 55, 26, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(507, 1, 1, 11, 57, 3, 5, 55, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(508, 1, 1, 18, 58, 3, 5, 55, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(509, 1, 1, 16, 64, 3, 5, 55, 20, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(510, 1, 1, 33, 66, 3, 5, 55, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(511, 1, 1, 7, 67, 3, 5, 55, 42, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(512, 1, 1, 69, 68, 3, 5, 55, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(513, 1, 1, 10, 70, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(514, 1, 1, 31, 72, 3, 5, 55, 46, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(515, 1, 1, 5, 76, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(516, 1, 1, 59, 78, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(517, 1, 1, 38, 80, 3, 5, 55, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(518, 1, 1, 86, 81, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(519, 1, 1, 83, 82, 3, 5, 55, 45, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(520, 1, 1, 50, 83, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(521, 1, 1, 32, 84, 3, 5, 55, 46, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(522, 1, 1, 85, 88, 3, 5, 55, 40, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(523, 1, 1, 52, 90, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(524, 1, 1, 40, 94, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(525, 1, 1, 87, 96, 3, 5, 55, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(526, 1, 1, 75, 100, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(527, 1, 1, 19, 101, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(528, 1, 1, 46, 102, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(529, 1, 1, 20, 106, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(530, 1, 1, 25, 110, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(531, 1, 1, 70, 112, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(532, 1, 1, 36, 2, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(533, 1, 1, 58, 3, 4, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(534, 1, 1, 90, 4, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(535, 1, 1, 4, 6, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(536, 1, 1, 35, 8, 4, 5, 40, 37, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(537, 1, 1, 89, 10, 4, 5, 40, 28, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(538, 1, 1, 42, 14, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(539, 1, 1, 14, 16, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(540, 1, 1, 37, 18, 4, 5, 40, 28, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(541, 1, 1, 56, 19, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(542, 1, 1, 43, 20, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(543, 1, 1, 76, 22, 4, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(544, 1, 1, 73, 24, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(545, 1, 1, 34, 26, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(546, 1, 1, 61, 28, 4, 5, 40, 29, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(547, 1, 1, 54, 30, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(548, 1, 1, 74, 32, 4, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(549, 1, 1, 44, 34, 4, 5, 40, 36, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(550, 1, 1, 47, 36, 4, 5, 40, 36, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(551, 1, 1, 53, 38, 4, 5, 40, 38, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(552, 1, 1, 9, 42, 4, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(553, 1, 1, 45, 44, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(554, 1, 1, 21, 46, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(555, 1, 1, 82, 48, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(556, 1, 1, 1, 49, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(557, 1, 1, 67, 50, 4, 5, 40, 36, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(558, 1, 1, 12, 54, 4, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(559, 1, 1, 57, 56, 4, 5, 40, 20, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(560, 1, 1, 11, 57, 4, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(561, 1, 1, 18, 58, 4, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(562, 1, 1, 16, 64, 4, 5, 40, 12, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(563, 1, 1, 33, 66, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(564, 1, 1, 7, 67, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(565, 1, 1, 69, 68, 4, 5, 40, 29, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(566, 1, 1, 10, 70, 4, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(567, 1, 1, 31, 72, 4, 5, 40, 36, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(568, 1, 1, 5, 76, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(569, 1, 1, 59, 78, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(570, 1, 1, 38, 80, 4, 5, 40, 28, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(571, 1, 1, 86, 81, 4, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(572, 1, 1, 83, 82, 4, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(573, 1, 1, 50, 83, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(574, 1, 1, 32, 84, 4, 5, 40, 27, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(575, 1, 1, 85, 88, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(576, 1, 1, 52, 90, 4, 5, 40, 29, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(577, 1, 1, 40, 94, 4, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(578, 1, 1, 87, 96, 4, 5, 40, 25, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(579, 1, 1, 75, 100, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(580, 1, 1, 19, 101, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(581, 1, 1, 46, 102, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(582, 1, 1, 20, 106, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(583, 1, 1, 25, 110, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(584, 1, 1, 70, 112, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(585, 1, 2, 77, 1, 2, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(586, 1, 2, 62, 5, 2, 5, 40, 37, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(587, 1, 2, 49, 7, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(588, 1, 2, 79, 9, 2, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(589, 1, 2, 81, 11, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(590, 1, 2, 94, 12, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(591, 1, 2, 64, 13, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(592, 1, 2, 23, 15, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(593, 1, 2, 71, 17, 2, 5, 40, 36, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(594, 1, 2, 84, 21, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(595, 1, 2, 72, 23, 2, 5, 40, 29, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(596, 1, 2, 55, 25, 2, 5, 40, 37, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(597, 1, 2, 41, 27, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(598, 1, 2, 88, 29, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(599, 1, 2, 80, 31, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(600, 1, 2, 28, 35, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(601, 1, 2, 29, 37, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(602, 1, 2, 63, 39, 2, 5, 40, 26, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7);
INSERT INTO `marks` (`MARK_ID`, `CLASS_ID`, `SECTION_ID`, `STUDENT_ID`, `ROLL_NO`, `SUBJECT_ID`, `EXAM_ID`, `TOTAL_MARK`, `MARK_OBTAINED`, `GRADE_ID`, `YEAR`, `COMMENT`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(603, 1, 2, 93, 40, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(604, 1, 2, 66, 41, 2, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(605, 1, 2, 3, 45, 2, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(606, 1, 2, 17, 47, 2, 5, 40, 28, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(607, 1, 2, 6, 51, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(608, 1, 2, 13, 53, 2, 5, 40, 27, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(609, 1, 2, 27, 61, 2, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(610, 1, 2, 78, 65, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(611, 1, 2, 91, 69, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(612, 1, 2, 48, 71, 2, 5, 40, 36, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(613, 1, 2, 30, 73, 2, 5, 40, 29, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(614, 1, 2, 68, 74, 2, 5, 40, 37, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(615, 1, 2, 2, 75, 2, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(616, 1, 2, 15, 77, 2, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(617, 1, 2, 22, 79, 2, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(618, 1, 2, 92, 85, 2, 5, 40, 23, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(619, 1, 2, 65, 91, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(620, 1, 2, 60, 95, 2, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(621, 1, 2, 24, 99, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(622, 1, 2, 26, 107, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(623, 1, 2, 39, 111, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(624, 1, 2, 51, 115, 2, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(625, 1, 2, 77, 1, 1, 5, 65, 58, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(626, 1, 2, 62, 5, 1, 5, 65, 55, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(627, 1, 2, 49, 7, 1, 5, 65, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(628, 1, 2, 79, 9, 1, 5, 65, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(629, 1, 2, 81, 11, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(630, 1, 2, 94, 12, 1, 5, 65, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(631, 1, 2, 64, 13, 1, 5, 65, 46, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(632, 1, 2, 23, 15, 1, 5, 65, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(633, 1, 2, 71, 17, 1, 5, 65, 29, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(634, 1, 2, 84, 21, 1, 5, 65, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(635, 1, 2, 72, 23, 1, 5, 65, 38, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(636, 1, 2, 55, 25, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(637, 1, 2, 41, 27, 1, 5, 65, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(638, 1, 2, 88, 29, 1, 5, 65, 46, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(639, 1, 2, 80, 31, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(640, 1, 2, 28, 35, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(641, 1, 2, 29, 37, 1, 5, 65, 55, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(642, 1, 2, 63, 39, 1, 5, 65, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(643, 1, 2, 93, 40, 1, 5, 65, 57, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(644, 1, 2, 66, 41, 1, 5, 65, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(645, 1, 2, 3, 45, 1, 5, 65, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(646, 1, 2, 17, 47, 1, 5, 65, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(647, 1, 2, 6, 51, 1, 5, 65, 54, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(648, 1, 2, 13, 53, 1, 5, 65, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(649, 1, 2, 27, 61, 1, 5, 65, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(650, 1, 2, 78, 65, 1, 5, 65, 40, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(651, 1, 2, 91, 69, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(652, 1, 2, 48, 71, 1, 5, 65, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(653, 1, 2, 30, 73, 1, 5, 65, 45, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(654, 1, 2, 68, 74, 1, 5, 65, 57, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(655, 1, 2, 2, 75, 1, 5, 65, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(656, 1, 2, 15, 77, 1, 5, 65, 53, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(657, 1, 2, 22, 79, 1, 5, 65, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(658, 1, 2, 92, 85, 1, 5, 65, 24, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(659, 1, 2, 65, 91, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(660, 1, 2, 60, 95, 1, 5, 65, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(661, 1, 2, 24, 99, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(662, 1, 2, 26, 107, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(663, 1, 2, 39, 111, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(664, 1, 2, 51, 115, 1, 5, 65, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(665, 1, 2, 77, 1, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(666, 1, 2, 62, 5, 3, 5, 55, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(667, 1, 2, 49, 7, 3, 5, 55, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(668, 1, 2, 79, 9, 3, 5, 55, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(669, 1, 2, 81, 11, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(670, 1, 2, 94, 12, 3, 5, 55, 45, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(671, 1, 2, 64, 13, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(672, 1, 2, 23, 15, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(673, 1, 2, 71, 17, 3, 5, 55, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(674, 1, 2, 84, 21, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(675, 1, 2, 72, 23, 3, 5, 55, 43, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(676, 1, 2, 55, 25, 3, 5, 55, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(677, 1, 2, 41, 27, 3, 5, 55, 53, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(678, 1, 2, 88, 29, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(679, 1, 2, 80, 31, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(680, 1, 2, 28, 35, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(681, 1, 2, 29, 37, 3, 5, 55, 42, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(682, 1, 2, 63, 39, 3, 5, 55, 44, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(683, 1, 2, 93, 40, 3, 5, 55, 42, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(684, 1, 2, 66, 41, 3, 5, 55, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(685, 1, 2, 3, 45, 3, 5, 55, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(686, 1, 2, 17, 47, 3, 5, 55, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(687, 1, 2, 6, 51, 3, 5, 55, 49, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(688, 1, 2, 13, 53, 3, 5, 55, 38, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(689, 1, 2, 27, 61, 3, 5, 55, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(690, 1, 2, 78, 65, 3, 5, 55, 52, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(691, 1, 2, 91, 69, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(692, 1, 2, 48, 71, 3, 5, 55, 40, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(693, 1, 2, 30, 73, 3, 5, 55, 42, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(694, 1, 2, 68, 74, 3, 5, 55, 53, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(695, 1, 2, 2, 75, 3, 5, 55, 51, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(696, 1, 2, 15, 77, 3, 5, 55, 48, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(697, 1, 2, 22, 79, 3, 5, 55, 47, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(698, 1, 2, 92, 85, 3, 5, 55, 25, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(699, 1, 2, 65, 91, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(700, 1, 2, 60, 95, 3, 5, 55, 50, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(701, 1, 2, 24, 99, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(702, 1, 2, 26, 107, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(703, 1, 2, 39, 111, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(704, 1, 2, 51, 115, 3, 5, 55, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(705, 1, 2, 77, 1, 4, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(706, 1, 2, 62, 5, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(707, 1, 2, 49, 7, 4, 5, 40, 34, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(708, 1, 2, 79, 9, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(709, 1, 2, 81, 11, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(710, 1, 2, 94, 12, 4, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(711, 1, 2, 64, 13, 4, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(712, 1, 2, 23, 15, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(713, 1, 2, 71, 17, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(714, 1, 2, 84, 21, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(715, 1, 2, 72, 23, 4, 5, 40, 42, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(716, 1, 2, 55, 25, 4, 5, 40, 36, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(717, 1, 2, 41, 27, 4, 5, 40, 26, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(718, 1, 2, 88, 29, 4, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(719, 1, 2, 80, 31, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(720, 1, 2, 28, 35, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(721, 1, 2, 29, 37, 4, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(722, 1, 2, 63, 39, 4, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(723, 1, 2, 93, 40, 4, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(724, 1, 2, 66, 41, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(725, 1, 2, 3, 45, 4, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(726, 1, 2, 17, 47, 4, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(727, 1, 2, 6, 51, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(728, 1, 2, 13, 53, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(729, 1, 2, 27, 61, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(730, 1, 2, 78, 65, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(731, 1, 2, 91, 69, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(732, 1, 2, 48, 71, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(733, 1, 2, 30, 73, 4, 5, 40, 27, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(734, 1, 2, 68, 74, 4, 5, 40, 38, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(735, 1, 2, 2, 75, 4, 5, 40, 31, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(736, 1, 2, 15, 77, 4, 5, 40, 32, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(737, 1, 2, 22, 79, 4, 5, 40, 33, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(738, 1, 2, 92, 85, 4, 5, 40, 30, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(739, 1, 2, 65, 91, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(740, 1, 2, 60, 95, 4, 5, 40, 35, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(741, 1, 2, 24, 99, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(742, 1, 2, 26, 107, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(743, 1, 2, 39, 111, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(744, 1, 2, 51, 115, 4, 5, 40, 0, 0, 2016, '', 1, '2016-11-21', 0, '0000-00-00', 7),
(745, 1, 1, 36, 2, 1, 6, 65, 42, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(746, 1, 1, 58, 3, 1, 6, 65, 39, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(747, 1, 1, 90, 4, 1, 6, 65, 37, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(748, 1, 1, 4, 6, 1, 6, 65, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(749, 1, 1, 35, 8, 1, 6, 65, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(750, 1, 1, 89, 10, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(751, 1, 1, 42, 14, 1, 6, 65, 43, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(752, 1, 1, 14, 16, 1, 6, 65, 44, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(753, 1, 1, 37, 18, 1, 6, 65, 49, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(754, 1, 1, 56, 19, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(755, 1, 1, 43, 20, 1, 6, 65, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(756, 1, 1, 76, 22, 1, 6, 65, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(757, 1, 1, 73, 24, 1, 6, 65, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(758, 1, 1, 34, 26, 1, 6, 65, 42, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(759, 1, 1, 61, 28, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(760, 1, 1, 54, 30, 1, 6, 65, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(761, 1, 1, 74, 32, 1, 6, 65, 49, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(762, 1, 1, 44, 34, 1, 6, 65, 38, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(763, 1, 1, 47, 36, 1, 6, 65, 44, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(764, 1, 1, 53, 38, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(765, 1, 1, 9, 42, 1, 6, 65, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(766, 1, 1, 45, 44, 1, 6, 65, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(767, 1, 1, 21, 46, 1, 6, 65, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(768, 1, 1, 82, 48, 1, 6, 65, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(769, 1, 1, 1, 49, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(770, 1, 1, 67, 50, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(771, 1, 1, 12, 54, 1, 6, 65, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(772, 1, 1, 57, 56, 1, 6, 65, 21, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(773, 1, 1, 11, 57, 1, 6, 65, 42, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(774, 1, 1, 18, 58, 1, 6, 65, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(775, 1, 1, 16, 64, 1, 6, 65, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(776, 1, 1, 33, 66, 1, 6, 65, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(777, 1, 1, 7, 67, 1, 6, 65, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(778, 1, 1, 69, 68, 1, 6, 65, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(779, 1, 1, 10, 70, 1, 6, 65, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(780, 1, 1, 31, 72, 1, 6, 65, 38, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(781, 1, 1, 5, 76, 1, 6, 65, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(782, 1, 1, 59, 78, 1, 6, 65, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(783, 1, 1, 38, 80, 1, 6, 65, 15, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(784, 1, 1, 86, 81, 1, 6, 65, 44, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(785, 1, 1, 83, 82, 1, 6, 65, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(786, 1, 1, 50, 83, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(787, 1, 1, 32, 84, 1, 6, 65, 43, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(788, 1, 1, 85, 88, 1, 6, 65, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(789, 1, 1, 52, 90, 1, 6, 65, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(790, 1, 1, 40, 94, 1, 6, 65, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(791, 1, 1, 87, 96, 1, 6, 65, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(792, 1, 1, 75, 100, 1, 6, 65, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(793, 1, 1, 19, 101, 1, 6, 65, 23, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(794, 1, 1, 46, 102, 1, 6, 65, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(795, 1, 1, 20, 106, 1, 6, 65, 47, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(796, 1, 1, 25, 110, 1, 6, 65, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(797, 1, 1, 70, 112, 1, 6, 65, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(798, 1, 1, 36, 2, 3, 6, 55, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(799, 1, 1, 58, 3, 3, 6, 55, 44, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(800, 1, 1, 90, 4, 3, 6, 55, 50, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(801, 1, 1, 4, 6, 3, 6, 55, 48, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(802, 1, 1, 35, 8, 3, 6, 55, 37, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(803, 1, 1, 89, 10, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(804, 1, 1, 42, 14, 3, 6, 55, 54, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(805, 1, 1, 14, 16, 3, 6, 55, 50, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(806, 1, 1, 37, 18, 3, 6, 55, 47, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(807, 1, 1, 56, 19, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(808, 1, 1, 43, 20, 3, 6, 55, 50, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(809, 1, 1, 76, 22, 3, 6, 55, 47, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(810, 1, 1, 73, 24, 3, 6, 55, 49, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(811, 1, 1, 34, 26, 3, 6, 55, 38, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(812, 1, 1, 61, 28, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(813, 1, 1, 54, 30, 3, 6, 55, 51, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(814, 1, 1, 74, 32, 3, 6, 55, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(815, 1, 1, 44, 34, 3, 6, 55, 49, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(816, 1, 1, 47, 36, 3, 6, 55, 49, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(817, 1, 1, 53, 38, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(818, 1, 1, 9, 42, 3, 6, 55, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(819, 1, 1, 45, 44, 3, 6, 55, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(820, 1, 1, 21, 46, 3, 6, 55, 54, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(821, 1, 1, 82, 48, 3, 6, 55, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(822, 1, 1, 1, 49, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(823, 1, 1, 67, 50, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(824, 1, 1, 12, 54, 3, 6, 55, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(825, 1, 1, 57, 56, 3, 6, 55, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(826, 1, 1, 11, 57, 3, 6, 55, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(827, 1, 1, 18, 58, 3, 6, 55, 37, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(828, 1, 1, 16, 64, 3, 6, 55, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(829, 1, 1, 33, 66, 3, 6, 55, 38, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(830, 1, 1, 7, 67, 3, 6, 55, 46, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(831, 1, 1, 69, 68, 3, 6, 55, 39, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(832, 1, 1, 10, 70, 3, 6, 55, 47, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(833, 1, 1, 31, 72, 3, 6, 55, 46, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(834, 1, 1, 5, 76, 3, 6, 55, 43, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(835, 1, 1, 59, 78, 3, 6, 55, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(836, 1, 1, 38, 80, 3, 6, 55, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(837, 1, 1, 86, 81, 3, 6, 55, 55, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(838, 1, 1, 83, 82, 3, 6, 55, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(839, 1, 1, 50, 83, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(840, 1, 1, 32, 84, 3, 6, 55, 41, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(841, 1, 1, 85, 88, 3, 6, 55, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(842, 1, 1, 52, 90, 3, 6, 55, 48, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(843, 1, 1, 40, 94, 3, 6, 55, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(844, 1, 1, 87, 96, 3, 6, 55, 46, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(845, 1, 1, 75, 100, 3, 6, 55, 44, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(846, 1, 1, 19, 101, 3, 6, 55, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(847, 1, 1, 46, 102, 3, 6, 55, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(848, 1, 1, 20, 106, 3, 6, 55, 46, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(849, 1, 1, 25, 110, 3, 6, 55, 48, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(850, 1, 1, 70, 112, 3, 6, 55, 41, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(851, 1, 1, 36, 2, 2, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(852, 1, 1, 58, 3, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(853, 1, 1, 90, 4, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(854, 1, 1, 4, 6, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(855, 1, 1, 35, 8, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(856, 1, 1, 89, 10, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(857, 1, 1, 42, 14, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(858, 1, 1, 14, 16, 2, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(859, 1, 1, 37, 18, 2, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(860, 1, 1, 56, 19, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(861, 1, 1, 43, 20, 2, 6, 40, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(862, 1, 1, 76, 22, 2, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(863, 1, 1, 73, 24, 2, 6, 40, 37, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(864, 1, 1, 34, 26, 2, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(865, 1, 1, 61, 28, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(866, 1, 1, 54, 30, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(867, 1, 1, 74, 32, 2, 6, 40, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(868, 1, 1, 44, 34, 2, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(869, 1, 1, 47, 36, 2, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(870, 1, 1, 53, 38, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(871, 1, 1, 9, 42, 2, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(872, 1, 1, 45, 44, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(873, 1, 1, 21, 46, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(874, 1, 1, 82, 48, 2, 6, 40, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(875, 1, 1, 1, 49, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(876, 1, 1, 67, 50, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(877, 1, 1, 12, 54, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(878, 1, 1, 57, 56, 2, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(879, 1, 1, 11, 57, 2, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(880, 1, 1, 18, 58, 2, 6, 40, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(881, 1, 1, 16, 64, 2, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(882, 1, 1, 33, 66, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(883, 1, 1, 7, 67, 2, 6, 40, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(884, 1, 1, 69, 68, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(885, 1, 1, 10, 70, 2, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(886, 1, 1, 31, 72, 2, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(887, 1, 1, 5, 76, 2, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(888, 1, 1, 59, 78, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(889, 1, 1, 38, 80, 2, 6, 40, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(890, 1, 1, 86, 81, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(891, 1, 1, 83, 82, 2, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(892, 1, 1, 50, 83, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(893, 1, 1, 32, 84, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(894, 1, 1, 85, 88, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(895, 1, 1, 52, 90, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(896, 1, 1, 40, 94, 2, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(897, 1, 1, 87, 96, 2, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(898, 1, 1, 75, 100, 2, 6, 40, 23, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(899, 1, 1, 19, 101, 2, 6, 40, 38, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(900, 1, 1, 46, 102, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(901, 1, 1, 20, 106, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(902, 1, 1, 25, 110, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(903, 1, 1, 70, 112, 2, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(904, 1, 1, 36, 2, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(905, 1, 1, 58, 3, 4, 6, 40, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(906, 1, 1, 90, 4, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(907, 1, 1, 4, 6, 4, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(908, 1, 1, 35, 8, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(909, 1, 1, 89, 10, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(910, 1, 1, 42, 14, 4, 6, 40, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(911, 1, 1, 14, 16, 4, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(912, 1, 1, 37, 18, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(913, 1, 1, 56, 19, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(914, 1, 1, 43, 20, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(915, 1, 1, 76, 22, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(916, 1, 1, 73, 24, 4, 6, 40, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(917, 1, 1, 34, 26, 4, 6, 40, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(918, 1, 1, 61, 28, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(919, 1, 1, 54, 30, 4, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(920, 1, 1, 74, 32, 4, 6, 40, 23, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(921, 1, 1, 44, 34, 4, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(922, 1, 1, 47, 36, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(923, 1, 1, 53, 38, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(924, 1, 1, 9, 42, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(925, 1, 1, 45, 44, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(926, 1, 1, 21, 46, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(927, 1, 1, 82, 48, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(928, 1, 1, 1, 49, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(929, 1, 1, 67, 50, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(930, 1, 1, 12, 54, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(931, 1, 1, 57, 56, 4, 6, 40, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(932, 1, 1, 11, 57, 4, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(933, 1, 1, 18, 58, 4, 6, 40, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(934, 1, 1, 16, 64, 4, 6, 40, 18, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(935, 1, 1, 33, 66, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(936, 1, 1, 7, 67, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(937, 1, 1, 69, 68, 4, 6, 40, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(938, 1, 1, 10, 70, 4, 6, 40, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(939, 1, 1, 31, 72, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(940, 1, 1, 5, 76, 4, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(941, 1, 1, 59, 78, 4, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(942, 1, 1, 38, 80, 4, 6, 40, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(943, 1, 1, 86, 81, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(944, 1, 1, 83, 82, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(945, 1, 1, 50, 83, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(946, 1, 1, 32, 84, 4, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(947, 1, 1, 85, 88, 4, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(948, 1, 1, 52, 90, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(949, 1, 1, 40, 94, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(950, 1, 1, 87, 96, 4, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(951, 1, 1, 75, 100, 4, 6, 40, 22, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(952, 1, 1, 19, 101, 4, 6, 40, 23, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(953, 1, 1, 46, 102, 4, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(954, 1, 1, 20, 106, 4, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(955, 1, 1, 25, 110, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(956, 1, 1, 70, 112, 4, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(957, 1, 2, 77, 1, 1, 6, 65, 44, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(958, 1, 2, 62, 5, 1, 6, 65, 39, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(959, 1, 2, 49, 7, 1, 6, 65, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(960, 1, 2, 79, 9, 1, 6, 65, 48, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(961, 1, 2, 81, 11, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(962, 1, 2, 94, 12, 1, 6, 65, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(963, 1, 2, 64, 13, 1, 6, 65, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(964, 1, 2, 23, 15, 1, 6, 65, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(965, 1, 2, 71, 17, 1, 6, 65, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(966, 1, 2, 84, 21, 1, 6, 65, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(967, 1, 2, 72, 23, 1, 6, 65, 42, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(968, 1, 2, 55, 25, 1, 6, 65, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(969, 1, 2, 41, 27, 1, 6, 65, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(970, 1, 2, 88, 29, 1, 6, 65, 41, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(971, 1, 2, 80, 31, 1, 6, 65, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(972, 1, 2, 28, 35, 1, 6, 65, 42, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(973, 1, 2, 29, 37, 1, 6, 65, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(974, 1, 2, 63, 39, 1, 6, 65, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(975, 1, 2, 93, 40, 1, 6, 65, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(976, 1, 2, 66, 41, 1, 6, 65, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(977, 1, 2, 3, 45, 1, 6, 65, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(978, 1, 2, 17, 47, 1, 6, 65, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(979, 1, 2, 6, 51, 1, 6, 65, 15, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(980, 1, 2, 13, 53, 1, 6, 65, 39, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(981, 1, 2, 27, 61, 1, 6, 65, 10, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(982, 1, 2, 78, 65, 1, 6, 65, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(983, 1, 2, 91, 69, 1, 6, 65, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(984, 1, 2, 48, 71, 1, 6, 65, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(985, 1, 2, 30, 73, 1, 6, 65, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(986, 1, 2, 68, 74, 1, 6, 65, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(987, 1, 2, 2, 75, 1, 6, 65, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(988, 1, 2, 15, 77, 1, 6, 65, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(989, 1, 2, 22, 79, 1, 6, 65, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(990, 1, 2, 92, 85, 1, 6, 65, 43, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(991, 1, 2, 65, 91, 1, 6, 65, 37, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(992, 1, 2, 60, 95, 1, 6, 65, 10, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(993, 1, 2, 24, 99, 1, 6, 65, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(994, 1, 2, 26, 107, 1, 6, 65, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(995, 1, 2, 39, 111, 1, 6, 65, 39, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(996, 1, 2, 51, 115, 1, 6, 65, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(997, 1, 2, 77, 1, 3, 6, 55, 46, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(998, 1, 2, 62, 5, 3, 6, 55, 50, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(999, 1, 2, 49, 7, 3, 6, 55, 53, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1000, 1, 2, 79, 9, 3, 6, 55, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1001, 1, 2, 81, 11, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1002, 1, 2, 94, 12, 3, 6, 55, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1003, 1, 2, 64, 13, 3, 6, 55, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1004, 1, 2, 23, 15, 3, 6, 55, 51, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1005, 1, 2, 71, 17, 3, 6, 55, 48, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1006, 1, 2, 84, 21, 3, 6, 55, 51, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1007, 1, 2, 72, 23, 3, 6, 55, 53, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1008, 1, 2, 55, 25, 3, 6, 55, 46, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1009, 1, 2, 41, 27, 3, 6, 55, 39, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1010, 1, 2, 88, 29, 3, 6, 55, 52, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1011, 1, 2, 80, 31, 3, 6, 55, 37, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1012, 1, 2, 28, 35, 3, 6, 55, 48, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1013, 1, 2, 29, 37, 3, 6, 55, 50, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1014, 1, 2, 63, 39, 3, 6, 55, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1015, 1, 2, 93, 40, 3, 6, 55, 42, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1016, 1, 2, 66, 41, 3, 6, 55, 40, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1017, 1, 2, 3, 45, 3, 6, 55, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1018, 1, 2, 17, 47, 3, 6, 55, 47, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1019, 1, 2, 6, 51, 3, 6, 55, 23, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1020, 1, 2, 13, 53, 3, 6, 55, 48, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1021, 1, 2, 27, 61, 3, 6, 55, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1022, 1, 2, 78, 65, 3, 6, 55, 47, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1023, 1, 2, 91, 69, 3, 6, 55, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1024, 1, 2, 48, 71, 3, 6, 55, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1025, 1, 2, 30, 73, 3, 6, 55, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1026, 1, 2, 68, 74, 3, 6, 55, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1027, 1, 2, 2, 75, 3, 6, 55, 41, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1028, 1, 2, 15, 77, 3, 6, 55, 41, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1029, 1, 2, 22, 79, 3, 6, 55, 49, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1030, 1, 2, 92, 85, 3, 6, 55, 49, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1031, 1, 2, 65, 91, 3, 6, 55, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1032, 1, 2, 60, 95, 3, 6, 55, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1033, 1, 2, 24, 99, 3, 6, 55, 51, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1034, 1, 2, 26, 107, 3, 6, 55, 43, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1035, 1, 2, 39, 111, 3, 6, 55, 46, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1036, 1, 2, 51, 115, 3, 6, 55, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1037, 1, 2, 77, 1, 2, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1038, 1, 2, 62, 5, 2, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1039, 1, 2, 49, 7, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1040, 1, 2, 79, 9, 2, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1041, 1, 2, 81, 11, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1042, 1, 2, 94, 12, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1043, 1, 2, 64, 13, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1044, 1, 2, 23, 15, 2, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1045, 1, 2, 71, 17, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1046, 1, 2, 84, 21, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1047, 1, 2, 72, 23, 2, 6, 40, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1048, 1, 2, 55, 25, 2, 6, 40, 19, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1049, 1, 2, 41, 27, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1050, 1, 2, 88, 29, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1051, 1, 2, 80, 31, 2, 6, 40, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1052, 1, 2, 28, 35, 2, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1053, 1, 2, 29, 37, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1054, 1, 2, 63, 39, 2, 6, 40, 45, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1055, 1, 2, 93, 40, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1056, 1, 2, 66, 41, 2, 6, 40, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1057, 1, 2, 3, 45, 2, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1058, 1, 2, 17, 47, 2, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1059, 1, 2, 6, 51, 2, 6, 40, 15, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1060, 1, 2, 13, 53, 2, 6, 40, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1061, 1, 2, 27, 61, 2, 6, 40, 15, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1062, 1, 2, 78, 65, 2, 6, 40, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1063, 1, 2, 91, 69, 2, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1064, 1, 2, 48, 71, 2, 6, 40, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1065, 1, 2, 30, 73, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1066, 1, 2, 68, 74, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1067, 1, 2, 2, 75, 2, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1068, 1, 2, 15, 77, 2, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1069, 1, 2, 22, 79, 2, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1070, 1, 2, 92, 85, 2, 6, 40, 36, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1071, 1, 2, 65, 91, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1072, 1, 2, 60, 95, 2, 6, 40, 23, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1073, 1, 2, 24, 99, 2, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1074, 1, 2, 26, 107, 2, 6, 40, 31, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1075, 1, 2, 39, 111, 2, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1076, 1, 2, 51, 115, 2, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1077, 1, 2, 77, 1, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1078, 1, 2, 62, 5, 4, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1079, 1, 2, 49, 7, 4, 6, 40, 27, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1080, 1, 2, 79, 9, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1081, 1, 2, 81, 11, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1082, 1, 2, 94, 12, 4, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1083, 1, 2, 64, 13, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1084, 1, 2, 23, 15, 4, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1085, 1, 2, 71, 17, 4, 6, 40, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1086, 1, 2, 84, 21, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1087, 1, 2, 72, 23, 4, 6, 40, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1088, 1, 2, 55, 25, 4, 6, 40, 16, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1089, 1, 2, 41, 27, 4, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1090, 1, 2, 88, 29, 4, 6, 40, 29, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1091, 1, 2, 80, 31, 4, 6, 40, 21, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1092, 1, 2, 28, 35, 4, 6, 40, 35, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1093, 1, 2, 29, 37, 4, 6, 40, 23, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1094, 1, 2, 63, 39, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1095, 1, 2, 93, 40, 4, 6, 40, 24, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1096, 1, 2, 66, 41, 4, 6, 40, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1097, 1, 2, 3, 45, 4, 6, 40, 22, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1098, 1, 2, 17, 47, 4, 6, 40, 32, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1099, 1, 2, 6, 51, 4, 6, 40, 14, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1100, 1, 2, 13, 53, 4, 6, 40, 33, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1101, 1, 2, 27, 61, 4, 6, 40, 22, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1102, 1, 2, 78, 65, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1103, 1, 2, 91, 69, 4, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1104, 1, 2, 48, 71, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1105, 1, 2, 30, 73, 4, 6, 40, 18, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1106, 1, 2, 68, 74, 4, 6, 40, 20, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1107, 1, 2, 2, 75, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1108, 1, 2, 15, 77, 4, 6, 40, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1109, 1, 2, 22, 79, 4, 6, 40, 26, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1110, 1, 2, 92, 85, 4, 6, 40, 34, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1111, 1, 2, 65, 91, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1112, 1, 2, 60, 95, 4, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1113, 1, 2, 24, 99, 4, 6, 40, 30, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1114, 1, 2, 26, 107, 4, 6, 40, 25, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1115, 1, 2, 39, 111, 4, 6, 40, 28, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1116, 1, 2, 51, 115, 4, 6, 40, 0, 0, 2016, '', 1, '2016-11-24', 0, '0000-00-00', 7),
(1117, 1, 1, 36, 2, 1, 7, 65, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1118, 1, 1, 58, 3, 1, 7, 65, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1119, 1, 1, 90, 4, 1, 7, 65, 56, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1120, 1, 1, 4, 6, 1, 7, 65, 55, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1121, 1, 1, 35, 8, 1, 7, 65, 46, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1122, 1, 1, 89, 10, 1, 7, 65, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1123, 1, 1, 42, 14, 1, 7, 65, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1124, 1, 1, 14, 16, 1, 7, 65, 59, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1125, 1, 1, 37, 18, 1, 7, 65, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1126, 1, 1, 56, 19, 1, 7, 65, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1127, 1, 1, 43, 20, 1, 7, 65, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1128, 1, 1, 76, 22, 1, 7, 65, 55, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1129, 1, 1, 73, 24, 1, 7, 65, 56, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1130, 1, 1, 34, 26, 1, 7, 65, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1131, 1, 1, 61, 28, 1, 7, 65, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1132, 1, 1, 54, 30, 1, 7, 65, 57, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1133, 1, 1, 74, 32, 1, 7, 65, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1134, 1, 1, 44, 34, 1, 7, 65, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1135, 1, 1, 47, 36, 1, 7, 65, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1136, 1, 1, 53, 38, 1, 7, 65, 37, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1137, 1, 1, 9, 42, 1, 7, 65, 44, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1138, 1, 1, 45, 44, 1, 7, 65, 55, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1139, 1, 1, 21, 46, 1, 7, 65, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1140, 1, 1, 82, 48, 1, 7, 65, 45, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1141, 1, 1, 1, 49, 1, 7, 65, 38, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1142, 1, 1, 67, 50, 1, 7, 65, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1143, 1, 1, 12, 54, 1, 7, 65, 44, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1144, 1, 1, 57, 56, 1, 7, 65, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1145, 1, 1, 11, 57, 1, 7, 65, 61, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1146, 1, 1, 18, 58, 1, 7, 65, 46, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1147, 1, 1, 16, 64, 1, 7, 65, 45, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1148, 1, 1, 33, 66, 1, 7, 65, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1149, 1, 1, 7, 67, 1, 7, 65, 40, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1150, 1, 1, 69, 68, 1, 7, 65, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1151, 1, 1, 10, 70, 1, 7, 65, 59, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1152, 1, 1, 31, 72, 1, 7, 65, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1153, 1, 1, 5, 76, 1, 7, 65, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1154, 1, 1, 59, 78, 1, 7, 65, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1155, 1, 1, 38, 80, 1, 7, 65, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1156, 1, 1, 86, 81, 1, 7, 65, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1157, 1, 1, 83, 82, 1, 7, 65, 38, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1158, 1, 1, 50, 83, 1, 7, 65, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1159, 1, 1, 32, 84, 1, 7, 65, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1160, 1, 1, 85, 88, 1, 7, 65, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1161, 1, 1, 52, 90, 1, 7, 65, 55, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1162, 1, 1, 40, 94, 1, 7, 65, 21, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1163, 1, 1, 87, 96, 1, 7, 65, 40, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1164, 1, 1, 75, 100, 1, 7, 65, 46, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1165, 1, 1, 19, 101, 1, 7, 65, 42, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1166, 1, 1, 46, 102, 1, 7, 65, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1167, 1, 1, 20, 106, 1, 7, 65, 45, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1168, 1, 1, 25, 110, 1, 7, 65, 46, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1169, 1, 1, 70, 112, 1, 7, 65, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1170, 1, 1, 36, 2, 3, 7, 55, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1171, 1, 1, 58, 3, 3, 7, 55, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1172, 1, 1, 90, 4, 3, 7, 55, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1173, 1, 1, 4, 6, 3, 7, 55, 55, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1174, 1, 1, 35, 8, 3, 7, 55, 46, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1175, 1, 1, 89, 10, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1176, 1, 1, 42, 14, 3, 7, 55, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1177, 1, 1, 14, 16, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1178, 1, 1, 37, 18, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1179, 1, 1, 56, 19, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1180, 1, 1, 43, 20, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1181, 1, 1, 76, 22, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1182, 1, 1, 73, 24, 3, 7, 55, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1183, 1, 1, 34, 26, 3, 7, 55, 44, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1184, 1, 1, 61, 28, 3, 7, 55, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1185, 1, 1, 54, 30, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1186, 1, 1, 74, 32, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1187, 1, 1, 44, 34, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1188, 1, 1, 47, 36, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1189, 1, 1, 53, 38, 3, 7, 55, 44, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1190, 1, 1, 9, 42, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1191, 1, 1, 45, 44, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1192, 1, 1, 21, 46, 3, 7, 55, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1193, 1, 1, 82, 48, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1194, 1, 1, 1, 49, 3, 7, 55, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1195, 1, 1, 67, 50, 3, 7, 55, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1196, 1, 1, 12, 54, 3, 7, 55, 38, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1197, 1, 1, 57, 56, 3, 7, 55, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1198, 1, 1, 11, 57, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1199, 1, 1, 18, 58, 3, 7, 55, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1200, 1, 1, 16, 64, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7);
INSERT INTO `marks` (`MARK_ID`, `CLASS_ID`, `SECTION_ID`, `STUDENT_ID`, `ROLL_NO`, `SUBJECT_ID`, `EXAM_ID`, `TOTAL_MARK`, `MARK_OBTAINED`, `GRADE_ID`, `YEAR`, `COMMENT`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1201, 1, 1, 33, 66, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1202, 1, 1, 7, 67, 3, 7, 55, 42, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1203, 1, 1, 69, 68, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1204, 1, 1, 10, 70, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1205, 1, 1, 31, 72, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1206, 1, 1, 5, 76, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1207, 1, 1, 59, 78, 3, 7, 55, 45, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1208, 1, 1, 38, 80, 3, 7, 55, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1209, 1, 1, 86, 81, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1210, 1, 1, 83, 82, 3, 7, 55, 39, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1211, 1, 1, 50, 83, 3, 7, 55, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1212, 1, 1, 32, 84, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1213, 1, 1, 85, 88, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1214, 1, 1, 52, 90, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1215, 1, 1, 40, 94, 3, 7, 55, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1216, 1, 1, 87, 96, 3, 7, 55, 36, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1217, 1, 1, 75, 100, 3, 7, 55, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1218, 1, 1, 19, 101, 3, 7, 55, 42, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1219, 1, 1, 46, 102, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1220, 1, 1, 20, 106, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1221, 1, 1, 25, 110, 3, 7, 55, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1222, 1, 1, 70, 112, 3, 7, 55, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1223, 1, 1, 36, 2, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1224, 1, 1, 58, 3, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1225, 1, 1, 90, 4, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1226, 1, 1, 4, 6, 2, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1227, 1, 1, 35, 8, 2, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1228, 1, 1, 89, 10, 2, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1229, 1, 1, 42, 14, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1230, 1, 1, 14, 16, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1231, 1, 1, 37, 18, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1232, 1, 1, 56, 19, 2, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1233, 1, 1, 43, 20, 2, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1234, 1, 1, 76, 22, 2, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1235, 1, 1, 73, 24, 2, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1236, 1, 1, 34, 26, 2, 7, 40, 22, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1237, 1, 1, 61, 28, 2, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1238, 1, 1, 54, 30, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1239, 1, 1, 74, 32, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1240, 1, 1, 44, 34, 2, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1241, 1, 1, 47, 36, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1242, 1, 1, 53, 38, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1243, 1, 1, 9, 42, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1244, 1, 1, 45, 44, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1245, 1, 1, 21, 46, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1246, 1, 1, 82, 48, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1247, 1, 1, 1, 49, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1248, 1, 1, 67, 50, 2, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1249, 1, 1, 12, 54, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1250, 1, 1, 57, 56, 2, 7, 40, 22, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1251, 1, 1, 11, 57, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1252, 1, 1, 18, 58, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1253, 1, 1, 16, 64, 2, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1254, 1, 1, 33, 66, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1255, 1, 1, 7, 67, 2, 7, 40, 26, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1256, 1, 1, 69, 68, 2, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1257, 1, 1, 10, 70, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1258, 1, 1, 31, 72, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1259, 1, 1, 5, 76, 2, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1260, 1, 1, 59, 78, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1261, 1, 1, 38, 80, 2, 7, 40, 22, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1262, 1, 1, 86, 81, 2, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1263, 1, 1, 83, 82, 2, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1264, 1, 1, 50, 83, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1265, 1, 1, 32, 84, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1266, 1, 1, 85, 88, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1267, 1, 1, 52, 90, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1268, 1, 1, 40, 94, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1269, 1, 1, 87, 96, 2, 7, 40, 24, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1270, 1, 1, 75, 100, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1271, 1, 1, 19, 101, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1272, 1, 1, 46, 102, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1273, 1, 1, 20, 106, 2, 7, 40, 26, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1274, 1, 1, 25, 110, 2, 7, 40, 26, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1275, 1, 1, 70, 112, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1276, 1, 1, 36, 2, 4, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1277, 1, 1, 58, 3, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1278, 1, 1, 90, 4, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1279, 1, 1, 4, 6, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1280, 1, 1, 35, 8, 4, 7, 40, 36, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1281, 1, 1, 89, 10, 4, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1282, 1, 1, 42, 14, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1283, 1, 1, 14, 16, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1284, 1, 1, 37, 18, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1285, 1, 1, 56, 19, 4, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1286, 1, 1, 43, 20, 4, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1287, 1, 1, 76, 22, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1288, 1, 1, 73, 24, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1289, 1, 1, 34, 26, 4, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1290, 1, 1, 61, 28, 4, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1291, 1, 1, 54, 30, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1292, 1, 1, 74, 32, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1293, 1, 1, 44, 34, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1294, 1, 1, 47, 36, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1295, 1, 1, 53, 38, 4, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1296, 1, 1, 9, 42, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1297, 1, 1, 45, 44, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1298, 1, 1, 21, 46, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1299, 1, 1, 82, 48, 4, 7, 40, 25, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1300, 1, 1, 1, 49, 4, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1301, 1, 1, 67, 50, 4, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1302, 1, 1, 12, 54, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1303, 1, 1, 57, 56, 4, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1304, 1, 1, 11, 57, 4, 7, 40, 37, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1305, 1, 1, 18, 58, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1306, 1, 1, 16, 64, 4, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1307, 1, 1, 33, 66, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1308, 1, 1, 7, 67, 4, 7, 40, 25, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1309, 1, 1, 69, 68, 4, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1310, 1, 1, 10, 70, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1311, 1, 1, 31, 72, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1312, 1, 1, 5, 76, 4, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1313, 1, 1, 59, 78, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1314, 1, 1, 38, 80, 4, 7, 40, 23, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1315, 1, 1, 86, 81, 4, 7, 40, 38, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1316, 1, 1, 83, 82, 4, 7, 40, 26, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1317, 1, 1, 50, 83, 4, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1318, 1, 1, 32, 84, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1319, 1, 1, 85, 88, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1320, 1, 1, 52, 90, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1321, 1, 1, 40, 94, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1322, 1, 1, 87, 96, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1323, 1, 1, 75, 100, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1324, 1, 1, 19, 101, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1325, 1, 1, 46, 102, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1326, 1, 1, 20, 106, 4, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1327, 1, 1, 25, 110, 4, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1328, 1, 1, 70, 112, 4, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1329, 1, 2, 77, 1, 1, 7, 65, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1330, 1, 2, 62, 5, 1, 7, 65, 55, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1331, 1, 2, 49, 7, 1, 7, 65, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1332, 1, 2, 79, 9, 1, 7, 65, 57, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1333, 1, 2, 81, 11, 1, 7, 65, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1334, 1, 2, 94, 12, 1, 7, 65, 42, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1335, 1, 2, 64, 13, 1, 7, 65, 42, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1336, 1, 2, 23, 15, 1, 7, 65, 59, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1337, 1, 2, 71, 17, 1, 7, 65, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1338, 1, 2, 84, 21, 1, 7, 65, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1339, 1, 2, 72, 23, 1, 7, 65, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1340, 1, 2, 55, 25, 1, 7, 65, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1341, 1, 2, 41, 27, 1, 7, 65, 59, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1342, 1, 2, 88, 29, 1, 7, 65, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1343, 1, 2, 80, 31, 1, 7, 65, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1344, 1, 2, 28, 35, 1, 7, 65, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1345, 1, 2, 29, 37, 1, 7, 65, 40, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1346, 1, 2, 63, 39, 1, 7, 65, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1347, 1, 2, 93, 40, 1, 7, 65, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1348, 1, 2, 66, 41, 1, 7, 65, 39, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1349, 1, 2, 3, 45, 1, 7, 65, 44, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1350, 1, 2, 17, 47, 1, 7, 65, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1351, 1, 2, 6, 51, 1, 7, 65, 43, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1352, 1, 2, 13, 53, 1, 7, 65, 59, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1353, 1, 2, 27, 61, 1, 7, 65, 39, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1354, 1, 2, 78, 65, 1, 7, 65, 42, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1355, 1, 2, 91, 69, 1, 7, 65, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1356, 1, 2, 48, 71, 1, 7, 65, 26, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1357, 1, 2, 30, 73, 1, 7, 65, 46, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1358, 1, 2, 68, 74, 1, 7, 65, 42, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1359, 1, 2, 2, 75, 1, 7, 65, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1360, 1, 2, 15, 77, 1, 7, 65, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1361, 1, 2, 22, 79, 1, 7, 65, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1362, 1, 2, 92, 85, 1, 7, 65, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1363, 1, 2, 65, 91, 1, 7, 65, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1364, 1, 2, 60, 95, 1, 7, 65, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1365, 1, 2, 24, 99, 1, 7, 65, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1366, 1, 2, 26, 107, 1, 7, 65, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1367, 1, 2, 39, 111, 1, 7, 65, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1368, 1, 2, 51, 115, 1, 7, 65, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1369, 1, 2, 77, 1, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1370, 1, 2, 62, 5, 3, 7, 55, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1371, 1, 2, 49, 7, 3, 7, 55, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1372, 1, 2, 79, 9, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1373, 1, 2, 81, 11, 3, 7, 55, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1374, 1, 2, 94, 12, 3, 7, 55, 41, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1375, 1, 2, 64, 13, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1376, 1, 2, 23, 15, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1377, 1, 2, 71, 17, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1378, 1, 2, 84, 21, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1379, 1, 2, 72, 23, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1380, 1, 2, 55, 25, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1381, 1, 2, 41, 27, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1382, 1, 2, 88, 29, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1383, 1, 2, 80, 31, 3, 7, 55, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1384, 1, 2, 28, 35, 3, 7, 55, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1385, 1, 2, 29, 37, 3, 7, 55, 45, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1386, 1, 2, 63, 39, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1387, 1, 2, 93, 40, 3, 7, 55, 49, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1388, 1, 2, 66, 41, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1389, 1, 2, 3, 45, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1390, 1, 2, 17, 47, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1391, 1, 2, 6, 51, 3, 7, 55, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1392, 1, 2, 13, 53, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1393, 1, 2, 27, 61, 3, 7, 55, 37, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1394, 1, 2, 78, 65, 3, 7, 55, 45, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1395, 1, 2, 91, 69, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1396, 1, 2, 48, 71, 3, 7, 55, 38, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1397, 1, 2, 30, 73, 3, 7, 55, 51, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1398, 1, 2, 68, 74, 3, 7, 55, 48, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1399, 1, 2, 2, 75, 3, 7, 55, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1400, 1, 2, 15, 77, 3, 7, 55, 53, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1401, 1, 2, 22, 79, 3, 7, 55, 50, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1402, 1, 2, 92, 85, 3, 7, 55, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1403, 1, 2, 65, 91, 3, 7, 55, 54, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1404, 1, 2, 60, 95, 3, 7, 55, 41, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1405, 1, 2, 24, 99, 3, 7, 55, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1406, 1, 2, 26, 107, 3, 7, 55, 52, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1407, 1, 2, 39, 111, 3, 7, 55, 47, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1408, 1, 2, 51, 115, 3, 7, 55, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1409, 1, 2, 77, 1, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1410, 1, 2, 62, 5, 2, 7, 40, 37, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1411, 1, 2, 49, 7, 2, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1412, 1, 2, 79, 9, 2, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1413, 1, 2, 81, 11, 2, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1414, 1, 2, 94, 12, 2, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1415, 1, 2, 64, 13, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1416, 1, 2, 23, 15, 2, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1417, 1, 2, 71, 17, 2, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1418, 1, 2, 84, 21, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1419, 1, 2, 72, 23, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1420, 1, 2, 55, 25, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1421, 1, 2, 41, 27, 2, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1422, 1, 2, 88, 29, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1423, 1, 2, 80, 31, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1424, 1, 2, 28, 35, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1425, 1, 2, 29, 37, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1426, 1, 2, 63, 39, 2, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1427, 1, 2, 93, 40, 2, 7, 40, 26, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1428, 1, 2, 66, 41, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1429, 1, 2, 3, 45, 2, 7, 40, 25, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1430, 1, 2, 17, 47, 2, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1431, 1, 2, 6, 51, 2, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1432, 1, 2, 13, 53, 2, 7, 40, 36, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1433, 1, 2, 27, 61, 2, 7, 40, 23, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1434, 1, 2, 78, 65, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1435, 1, 2, 91, 69, 2, 7, 40, 22, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1436, 1, 2, 48, 71, 2, 7, 40, 24, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1437, 1, 2, 30, 73, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1438, 1, 2, 68, 74, 2, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1439, 1, 2, 2, 75, 2, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1440, 1, 2, 15, 77, 2, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1441, 1, 2, 22, 79, 2, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1442, 1, 2, 92, 85, 2, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1443, 1, 2, 65, 91, 2, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1444, 1, 2, 60, 95, 2, 7, 40, 19, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1445, 1, 2, 24, 99, 2, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1446, 1, 2, 26, 107, 2, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1447, 1, 2, 39, 111, 2, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1448, 1, 2, 51, 115, 2, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1449, 1, 2, 77, 1, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1450, 1, 2, 62, 5, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1451, 1, 2, 49, 7, 4, 7, 40, 36, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1452, 1, 2, 79, 9, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1453, 1, 2, 81, 11, 4, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1454, 1, 2, 94, 12, 4, 7, 40, 24, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1455, 1, 2, 64, 13, 4, 7, 40, 25, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1456, 1, 2, 23, 15, 4, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1457, 1, 2, 71, 17, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1458, 1, 2, 84, 21, 4, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1459, 1, 2, 72, 23, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1460, 1, 2, 55, 25, 4, 7, 40, 24, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1461, 1, 2, 41, 27, 4, 7, 40, 37, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1462, 1, 2, 88, 29, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1463, 1, 2, 80, 31, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1464, 1, 2, 28, 35, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1465, 1, 2, 29, 37, 4, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1466, 1, 2, 63, 39, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1467, 1, 2, 93, 40, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1468, 1, 2, 66, 41, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1469, 1, 2, 3, 45, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1470, 1, 2, 17, 47, 4, 7, 40, 34, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1471, 1, 2, 6, 51, 4, 7, 40, 26, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1472, 1, 2, 13, 53, 4, 7, 40, 35, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1473, 1, 2, 27, 61, 4, 7, 40, 27, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1474, 1, 2, 78, 65, 4, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1475, 1, 2, 91, 69, 4, 7, 40, 24, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1476, 1, 2, 48, 71, 4, 7, 40, 28, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1477, 1, 2, 30, 73, 4, 7, 40, 26, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1478, 1, 2, 68, 74, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1479, 1, 2, 2, 75, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1480, 1, 2, 15, 77, 4, 7, 40, 31, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1481, 1, 2, 22, 79, 4, 7, 40, 29, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1482, 1, 2, 92, 85, 4, 7, 40, 33, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1483, 1, 2, 65, 91, 4, 7, 40, 32, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1484, 1, 2, 60, 95, 4, 7, 40, 25, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1485, 1, 2, 24, 99, 4, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1486, 1, 2, 26, 107, 4, 7, 40, 30, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1487, 1, 2, 39, 111, 4, 7, 40, 36, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7),
(1488, 1, 2, 51, 115, 4, 7, 40, 0, 0, 2016, '', 1, '2016-12-01', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `MEMBER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEMBER_NAME` varchar(250) NOT NULL,
  `MEMBER_BIRTHDAY` varchar(250) NOT NULL,
  `SEX` varchar(150) NOT NULL,
  `ADDRESS` text NOT NULL,
  `AGE` int(11) NOT NULL,
  `OCCUPATION` varchar(300) NOT NULL,
  `EDUCATION_BACK` varchar(500) NOT NULL,
  `VOTER_ID` varchar(50) NOT NULL,
  `SESSION_START` date NOT NULL,
  `SESSION_END` date NOT NULL,
  `MARRIAGE_STATUS` varchar(50) NOT NULL,
  `PHONE` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `IMAGES` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MEMBER_ID`, `MEMBER_NAME`, `MEMBER_BIRTHDAY`, `SEX`, `ADDRESS`, `AGE`, `OCCUPATION`, `EDUCATION_BACK`, `VOTER_ID`, `SESSION_START`, `SESSION_END`, `MARRIAGE_STATUS`, `PHONE`, `EMAIL`, `IMAGES`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Shariful Islam', '06/05/2016', 'Male', 'adsf ssadfe sdf', 45, 'student', ' asdf asdafadsf', '565868596', '2016-06-05', '2016-06-05', 'single', '01727743522', 'sharif@gmail.com', '', 1, '2016-06-05', 1, '2016-07-20', 7),
(2, 'Abid Shohan', '07/01/1978', 'Male', 'Dhaka', 64, 'Business Men', 'HSC', '7856534875638', '2013-01-01', '2016-12-01', 'Married', '02563218', 'abid@ymail.com', 'McCarthy.jpg', 1, '2016-07-18', 1, '2016-07-20', 7),
(3, 'Khairul Islam Rafi', '07/01/1984', 'Male', 'Dhaka, Bangladesh', 25, 'Police', 'SSC, HSC', '4875255', '2015-06-01', '2017-07-01', 'single', '017484588', 'khairulisalm@gmail.com', 'chairman.jpg', 1, '2016-07-21', 0, '0000-00-00', 7),
(4, 'Rahin Ahmed', '07/01/1985', 'Male', 'Dhaka, Bangladesh', 30, 'Bussinessman', 'SSC, HSC, MS', '4784125', '2015-07-01', '2017-07-01', 'marige', '0174854985', 'rahinahmed@gmail.com', 'Chairman-message.jpg', 1, '2016-07-21', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 NOT NULL,
  `msg` longtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `name`, `msg`) VALUES
(1, 'shawkat ali', ' উচ্চ মাধ্যমিক, স্নাতক সম্মান ও স্নাতকোত্তর পর্যায়ে বিদ্যালাভের সুষ্ঠু পরিবেশ এখানে রচিত হয়েছে বহু মানুষের ত্যাগে, শ্রমে ও মেধায়। ঢাকা সিটি কলেজের আদর্শ নবীনবিদ্যার্থীদের মানবতা বোধের মন্ত্রে উজ্জীবিত করাসংস্কারমুক্ত স্বাধীন চিন্তার সৎ, সাহসী ও সচেতন প্রজন্ম গড়ে তোলা। বোর্ড ও বিশ্ববিদ্যালয়ের মেধা তালিকায় প্রথম সারিতে স্থান পেলেই যে মানুষ মানুষ হয় না তার প্রমাণ আমরা প্রতিনিয়ত পাচ্ছি। তাই দেশ ও দশের কল্যাণব্রতে স্নিগ্ধ মানব সন্তান আমাদের আজ একান্তভাবে কাম্য। তারাই গড়বে আমাদের কাঙ্খিত সোনার বাংলাদেশ। শিক্ষা আজ পণ্যে রূপান্তরিত হয়েছে। অনেক প্রতিষ্ঠান ডিগ্রি বিক্রি করে মুনাফা লুটে চলেছে। বাজার অর্থনীতি ও বিশ্বায়নের যুগে শিক্ষা প্রতিষ্ঠানের আদর্শে অনড় থেকে নানা প্রতিযোগিতার মধ্য দিয়ে আমরা নিজের ভিত মজবুত রাখবো; এ অঙ্গীকারে আমরা অবিচল। ডিগ্রি লাভের সুযোগ করে দেয়া নয় শুধু, শিক্ষার্থীদের শারীরিক ও মানসিক স্বাস্থ্য পরিচর্যার এক উৎকৃষ্ট কেন্দ্র এই ঢাকা সিটি কলেজ সব সময় নতুন সূর্যের দিকে অগ্রসরমাণ থাকবেএই আমার বিশ্বাস। ');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_salary`
--

CREATE TABLE IF NOT EXISTS `monthly_salary` (
  `MONTHLY_SALARY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEACHER_ID` int(11) NOT NULL,
  `SALARY` int(11) NOT NULL,
  `MONTH` varchar(50) NOT NULL,
  `PAYMENT_TYPE` varchar(250) NOT NULL,
  `YEAR` year(4) NOT NULL,
  `PAY_DATE` date NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`MONTHLY_SALARY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `monthly_salary`
--

INSERT INTO `monthly_salary` (`MONTHLY_SALARY_ID`, `TEACHER_ID`, `SALARY`, `MONTH`, `PAYMENT_TYPE`, `YEAR`, `PAY_DATE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(2, 4, 12000, 'january', 'asdf', 2016, '2016-08-17', 1, '2016-04-06', 1, '0000-00-00', 7),
(3, 3, 10000, 'january', 'ASDF', 2016, '2016-08-17', 1, '2016-08-01', 0, '0000-00-00', 7),
(4, 3, 10000, 'february', 'ADSF', 2016, '2016-08-17', 1, '2016-08-03', 0, '0000-00-00', 7),
(5, 3, 10000, 'march', 'SDAF', 2016, '2016-08-17', 1, '2016-08-17', 0, '0000-00-00', 7),
(6, 1, 14500, 'january', 'ASDF', 2016, '2016-08-17', 1, '2016-08-17', 0, '0000-00-00', 7),
(7, 1, 14500, 'february', 'ASDF', 2016, '2016-08-17', 1, '2016-08-17', 0, '0000-00-00', 7),
(8, 1, 14500, 'march', 'ASDF', 2016, '2016-08-24', 1, '2016-08-17', 0, '0000-00-00', 7),
(9, 4, 12000, 'february', 'SADF', 2016, '2016-08-17', 1, '2016-08-17', 0, '0000-00-00', 7),
(10, 4, 12000, 'march', 'SDAF', 2016, '2016-08-17', 1, '2016-08-17', 0, '0000-00-00', 7),
(11, 2, 8000, 'january', 'SADF', 2016, '2016-08-17', 1, '2016-08-17', 0, '0000-00-00', 7),
(12, 2, 8000, 'february', 'SADF', 2016, '2016-08-17', 1, '2016-08-02', 1, '2016-08-17', 7),
(13, 2, 8000, 'march', 'SSADF', 2016, '2016-08-17', 1, '2016-08-04', 0, '0000-00-00', 7),
(14, 3, 10000, 'april', 'asdf', 2016, '2016-07-31', 1, '2016-08-17', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `NOTICE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTICE_TITLE` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `NOTICE_DETAILS` text COLLATE utf8_unicode_ci NOT NULL,
  `PUBLISH_DATE` date NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`NOTICE_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`NOTICE_ID`, `NOTICE_TITLE`, `NOTICE_DETAILS`, `PUBLISH_DATE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(2, 'Result', 'Dear Students,\r\n\r\nSeat plan of first model test-2016 of class VIII &amp;amp; X has been published.\r\n\r\nTo see the seat plan please click the link below:\r\n\r\nSeat Plan (VIII &amp;amp; X) of First Model Test -2016\r\n\r\nThanks', '2016-08-22', 1, '2016-06-04', 1, '2016-08-22', 7),
(5, 'SSC Result', 'SSC result published Tomorrow', '2016-08-24', 1, '2016-07-14', 1, '2016-08-22', 7),
(4, 'Admission result', 'Admission result published.', '2016-08-10', 1, '2016-07-14', 1, '2016-08-22', 7),
(6, 'Second Term Exam', 'Second Term exam will held as 06-08-2016', '2016-08-02', 1, '2016-07-14', 1, '2016-08-22', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `PAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUB_SUB_CATEGORY_ID` int(11) NOT NULL,
  `PAGE_TITLE` varchar(500) NOT NULL,
  `PAGE_DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`PAGE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`PAGE_ID`, `SUB_SUB_CATEGORY_ID`, `PAGE_TITLE`, `PAGE_DETAILS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(2, 2, 'About Academy', '<P>BCS (Tax) Academy is the apex training institution for the officers and staff of the Taxes Department of National Board of Revenue in Bangladesh. It has been set up with tremendous vision and foresight of expectation.</p>\n\n<p>It performs the critical and overarching goal of developing, enhancing, monitoring and modeling the human capital fortunes of the nation interest by upgrading human capital and functioning as a best think–tank in tax policy and administration. The Academic import proficiency in core competence areas, disseminates knowledge and information about the best practices regarding tax issues and provides an international perspective, high quality professional capabilities and cultural sensitivities to officers.</p>\n\n<p>Besides training, high quality career planning, profiling and continued developments of the Direct Taxes Academy’s responsibility. </p>\n\n<p>Without human resources development and without required logistic facilities the growth of revenue collection will not be possible to maintain.</p>\n\n<p>The officer and staffs working at Taxes Department have no scope of proper and sufficient training, working, seminar and higher education on the respective fields. On the other hand, lack of sufficient logistics in the major crisis of the department.</p>\n', 1, '2016-05-25', 1, '2016-05-31', 7);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `PARENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_NAME` varchar(100) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `PHONE` varchar(30) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `NATIONAL_ID_NO` varchar(30) NOT NULL,
  `GENDER` varchar(7) NOT NULL,
  `RELATION_WITH_STU` varchar(100) NOT NULL,
  `ADDRESS` text NOT NULL,
  `OCCOPATION` varchar(100) NOT NULL,
  `IMAGES` varchar(250) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `PAYMENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAYMENT_CAT_ID` int(11) NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `AMOUNT` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `MONTH` varchar(20) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAYMENT_ID`, `PAYMENT_CAT_ID`, `CLASS_ID`, `SECTION_ID`, `STUDENT_ID`, `AMOUNT`, `YEAR`, `MONTH`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(2, 3, 3, 5, 5, 6500, 2016, 'january', 1, '2016-06-12', 1, '2016-06-27', 7),
(3, 3, 3, 3, 3, 7000, 2016, 'january', 1, '2016-06-12', 1, '2016-06-15', 7),
(4, 4, 1, 2, 1, 500, 2016, 'january', 1, '2016-06-12', 0, '0000-00-00', 7),
(5, 5, 2, 2, 2, 600, 2016, 'january', 1, '2016-06-12', 0, '0000-00-00', 7),
(6, 6, 3, 3, 3, 700, 2016, 'january', 1, '2016-06-12', 0, '0000-00-00', 7),
(7, 5, 2, 3, 2, 554, 2016, 'february', 1, '2016-06-14', 1, '2016-06-15', 7),
(8, 2, 2, 4, 2, 8000, 2016, 'january', 1, '2016-07-13', 0, '0000-00-00', 7),
(9, 5, 2, 4, 2, 1500, 2016, 'january', 1, '2016-07-13', 0, '0000-00-00', 7),
(10, 5, 2, 4, 2, 1500, 2016, 'february', 1, '2016-07-13', 0, '0000-00-00', 7),
(11, 5, 2, 4, 2, 1500, 2016, 'march', 1, '2016-07-13', 0, '0000-00-00', 7),
(12, 5, 2, 4, 2, 1500, 2016, 'april', 1, '2016-07-13', 0, '0000-00-00', 7),
(13, 5, 2, 4, 2, 1500, 2016, 'may', 1, '2016-07-13', 0, '0000-00-00', 7),
(14, 4, 1, 2, 2, 500, 2016, 'august', 1, '2016-08-08', 0, '0000-00-00', 7),
(15, 4, 1, 2, 1, 500, 2016, 'august', 9, '2016-08-13', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE IF NOT EXISTS `payment_category` (
  `PAYMENT_CAT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(150) NOT NULL,
  `CATEGORY_DESCRIPTION` text NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `AMOUNT` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`PAYMENT_CAT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `payment_category`
--

INSERT INTO `payment_category` (`PAYMENT_CAT_ID`, `CATEGORY_NAME`, `CATEGORY_DESCRIPTION`, `CLASS_ID`, `AMOUNT`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Admission Fee', 'details about admission fee', 1, 5000, 2016, 1, '2016-06-12', 0, '0000-00-00', 7),
(2, 'Admission Fee', 'all about data', 2, 6500, 2016, 1, '2016-06-12', 0, '0000-00-00', 7),
(3, 'Admission Fee', 'all admission data', 3, 7000, 2016, 1, '2016-06-12', 0, '0000-00-00', 7),
(4, 'Monthly Fee', 'all about monthly fee', 1, 500, 2016, 1, '2016-06-12', 0, '0000-00-00', 7),
(5, 'Monthly Fee', 'Monthly fee data', 2, 600, 2016, 1, '2016-06-12', 0, '0000-00-00', 7),
(6, 'Monthly Fee', 'all about monthly fee', 3, 700, 2016, 1, '2016-06-12', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `PERMISSION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERMISSION_NAME` varchar(100) NOT NULL COMMENT 'example: create order, edit PI, Create User etc',
  `DETAILS` varchar(250) DEFAULT NULL,
  `GROUP_NAME` varchar(200) DEFAULT NULL,
  `MENU_NAME` varchar(50) NOT NULL,
  `ROUTE_NAME` varchar(100) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `STATUS` tinyint(4) NOT NULL COMMENT '1=Pending | 2=Approved | 3=Resolved | 4=Forwarded  | 5=Deployed  | 6=New  | 7=Active  | 8=Initiated  | 9=On Progress  | 10=Delivered  | -2=Declined | -3=Canceled | -5=Taking out | -6=Renewed/Replaced | -7=Inactive',
  PRIMARY KEY (`PERMISSION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`PERMISSION_ID`, `PERMISSION_NAME`, `DETAILS`, `GROUP_NAME`, `MENU_NAME`, `ROUTE_NAME`, `PARENT_ID`, `STATUS`) VALUES
(5, 'create_category', NULL, 'control_website', 'create_category', 'create_category', 0, 1),
(6, 'manage_category', NULL, 'control_website', 'manage_category', 'manage_category', 0, 1),
(7, 'create_sub_category', NULL, 'control_website', 'create_sub_category', 'create_sub_category', 0, 1),
(8, 'manage_sub_category', NULL, 'control_website', 'manage_sub_category', 'manage_sub_category', 0, 1),
(11, 'create_slider', NULL, 'control_website', 'add_slider', 'create_slider', 0, 1),
(12, 'manage_slider', NULL, 'control_website', 'manage_slider', 'manage_slider', 0, 1),
(15, 'add_images', NULL, 'control_website', 'add_images', 'add_images', 0, 1),
(16, 'manage_gallery', NULL, 'control_website', 'manage_gallery', 'manage_gallery', 0, 1),
(19, 'add_downloads', NULL, 'control_website', 'add_downloads', 'add_downloads', 0, 1),
(20, 'manage_downloads', NULL, 'control_website', 'manage_downloads', 'manage_downloads', 0, 1),
(21, 'add_additional_data', NULL, 'control_website', 'add_additional_data', 'add_additional_data', 0, 1),
(22, 'manage_additional_data', NULL, 'control_website', 'manage_additional_data', 'manage_additional_data', 0, 1),
(25, 'add_person', NULL, 'control_website', 'add_person', 'add_person', 0, 1),
(26, 'manage_person', NULL, 'control_website', 'manage_person', 'manage_person', 0, 1),
(27, 'create_sub_sub_category', NULL, 'control_website', 'create_sub_sub_category', 'create_sub_sub_category', 0, 1),
(28, 'manage_sub_sub_category', NULL, 'control_website', 'manage_sub_sub_category', 'manage_sub_sub_category', 0, 1),
(29, 'create_page', NULL, 'control_website', 'create_page', 'create_page', 0, 1),
(30, 'manage_pages', NULL, 'control_website', 'manage_pages', 'manage_pages', 0, 1),
(31, 'manage_user_data', NULL, 'control_website', 'manage_user_data', 'manage_user_data', 0, 1),
(32, 'create_class', NULL, 'class', 'create_class', 'create_class', 0, 1),
(33, 'manage_class', NULL, 'class', 'manage_class', 'manage_class', 0, 1),
(34, 'create_section', NULL, 'class', 'create_section', 'create_section', 0, 1),
(35, 'manage_section', NULL, 'class', 'manage_section', 'manage_section', 0, 1),
(36, 'create_designation', NULL, 'settings', 'create_designation', 'create_designation', 0, 1),
(37, 'manage_designation', NULL, 'settings', 'manage_designation', 'manage_designation', 0, 1),
(38, 'create_notice', NULL, 'settings', 'create_notice', 'create_notice', 0, 1),
(39, 'manage_notice', NULL, 'settings', 'manage_notice', 'manage_notice', 0, 1),
(40, 'add_student_info', NULL, 'student', 'add_student_info', 'add_student_info', 0, 1),
(41, 'manage_student_info', NULL, 'student', 'manage_student_info', 'manage_student_info', 0, 1),
(42, 'admit_student', NULL, 'student', 'admit_student', 'admit_student', 0, 1),
(43, 'manage_student_admission', NULL, 'student', 'manage_student_admission', 'manage_student_admission', 0, 1),
(44, 'create_class_routine', NULL, 'class', 'create_class_routine', 'create_class_routine', 0, 1),
(45, 'manage_class_routine', NULL, 'class', 'manage_class_routine', 'manage_class_routine', 0, 1),
(46, 'create_subject', NULL, 'settings', 'create_subject', 'create_subject', 0, 1),
(47, 'manage_subject', NULL, 'settings', 'manage_subject', 'manage_subject', 0, 1),
(48, 'assign_subject', NULL, 'teacher', 'assign_subject', 'assign_subject', 0, 1),
(49, 'manage_assign_subject', NULL, 'teacher', 'manage_assign_subject', 'manage_assign_subject', 0, 1),
(50, 'assign_teacher', NULL, 'teacher', 'assign_class_teacher', 'assign_teacher', 0, 1),
(51, 'manage_assign_teacher', NULL, 'teacher', 'manage_class_teacher', 'manage_assign_teacher', 0, 1),
(52, 'create_teacher', NULL, 'teacher', 'create_teacher', 'create_teacher', 0, 1),
(53, 'manage_teacher', NULL, 'teacher', 'manage_teacher', 'manage_teacher', 0, 1),
(54, 'create_board', NULL, 'settings', 'create_board_member', 'create_board', 0, 1),
(55, 'manage_board', NULL, 'settings', 'manage_board_member', 'manage_board', 0, 1),
(56, 'create_parent', NULL, 'student', 'create_parent', 'create_parent', 0, 1),
(57, 'manage_parent', NULL, 'student', 'manage_parent', 'manage_parent', 0, 1),
(58, 'create_staff', NULL, 'settings', 'create_staff', 'create_staff', 0, 1),
(59, 'manage_staff', NULL, 'settings', 'manage_staff', 'manage_staff', 0, 1),
(60, 'create_exam', NULL, 'exam', 'create_exam', 'create_exam', 0, 1),
(61, 'manage_exam_list', NULL, 'exam', 'manage_exam_list', 'manage_exam_list', 0, 1),
(62, 'create_grade', NULL, 'exam', 'create_grade', 'create_grade', 0, 1),
(63, 'manage_grade', NULL, 'exam', 'manage_grade', 'manage_grade', 0, 1),
(64, 'insert_marks', NULL, 'exam', 'insert_marks', 'insert_marks', 0, 1),
(65, 'manage_marks', NULL, 'exam', 'manage_marks', 'manage_marks', 0, 1),
(66, 'create_payment', NULL, 'payment', 'create_payment', 'create_payment', 0, 1),
(67, 'manage_payment', NULL, 'payment', 'manage_payment', 'manage_payment', 0, 1),
(68, 'create_payment_category', NULL, 'payment', 'create_payment_category', 'create_payment_category', 0, 1),
(69, 'manage_payment_category', NULL, 'payment', 'manage_payment_category', 'manage_payment_category', 0, 1),
(70, 'payment_report', NULL, 'report', 'payment_report', 'payment_report', 0, 1),
(71, 'daily_attendance', NULL, 'attendance', 'daily_attendance', 'daily_attendance', 0, 1),
(72, 'manage_attendance', NULL, 'attendance', 'manage_attendance', 'manage_attendance', 0, 1),
(73, 'student_marksheet', NULL, 'report', 'student_marksheet', 'student_marksheet', 0, 1),
(74, 'create_user', NULL, 'user', 'create_user', 'create_user', 0, 1),
(75, 'manage_user', NULL, 'user', 'manage_user', 'manage_user', 0, 1),
(76, 'create_role', NULL, 'user', 'create_role', 'create_role', 0, 1),
(77, 'manage_role', NULL, 'user', 'manage_role', 'manage_role', 0, 1),
(78, 'attendance_report', '', 'report', 'attendance_report', 'attendance_report', 0, 1),
(79, 'class_wise_marksheet', NULL, 'report', 'class_wise_marksheet', 'class_wise_marksheet', 0, 1),
(80, 'section_wise_marksheet', NULL, 'report', 'section_wise_marksheet', 'section_wise_marksheet', 0, 1),
(81, 'send_sms', NULL, 'sms', 'send_sms', 'send_sms', 0, 1),
(83, 'upload_csv_file', NULL, 'attendance', 'upload_csv_file', 'upload_csv_file', 0, 1),
(84, 'view_class_routine', NULL, 'student_panel', 'class_routine', 'view_class_routine', 0, 1),
(85, 'view_mark_sheet', NULL, 'student_panel', 'mark_sheet', 'view_mark_sheet', 0, 1),
(86, 'view_attendance', NULL, 'student_panel', 'attendance', 'view_attendance', 0, 1),
(87, 'view_notice', NULL, 'student_panel', 'notice', 'view_notice', 0, 1),
(88, 'create_student', NULL, 'user', 'create_student', 'create_student', 0, 1),
(89, 'create_teacher', NULL, 'user', 'create_teacher', 'create_teacher', 0, 1),
(90, 'view_teachers', NULL, 'student_panel', 'teachers', 'view_teachers', 0, 1),
(91, 'view_subjects', NULL, 'student_panel', 'subjects', 'view_subjects', 0, 1),
(92, 'view_payment', NULL, 'student_panel', 'payment', 'view_payment', 0, 1),
(93, 'create_parents', NULL, 'user', 'create_parents', 'create_parents', 0, 1),
(94, 'view_notice_parents', NULL, 'parents_panel', 'notice', 'view_notice_parents', 0, 1),
(95, 'view_class_routine_parents', NULL, 'parents_panel', 'class_routine', 'view_class_routine_parents', 0, 1),
(96, 'view_mark_sheet_parents', NULL, 'parents_panel', 'mark_sheet', 'view_mark_sheet_parents', 0, 1),
(97, 'view_subjects_parents', NULL, 'parents_panel', 'subjects', 'view_subjects_parents', 0, 1),
(98, 'view_teachers_parents', NULL, 'parents_panel', 'teachers', 'view_teachers_parents', 0, 1),
(99, 'view_payment_parents', NULL, 'parents_panel', 'payment', 'view_payment_parents', 0, 1),
(100, 'view_attendance_parents', NULL, 'parents_panel', 'attendance', 'view_attendance_parents', 0, 1),
(101, 'create_book_category', NULL, 'library', 'create_book_category', 'create_book_category', 0, 1),
(102, 'manage_book_category', NULL, 'library', 'manage_book_category', 'manage_book_category', 0, 1),
(103, 'create_writer', NULL, 'library', 'create_writer', 'create_writer', 0, 1),
(104, 'manage_writer', NULL, 'library', 'manage_writer', 'manage_writer', 0, 1),
(105, 'add_book', NULL, 'library', 'add_book', 'add_book', 0, 1),
(106, 'manage_book', NULL, 'library', 'manage_book', 'manage_book', 0, 1),
(107, 'Add_library_member', NULL, 'library', 'add_library_member', 'add_library_member', 0, 1),
(108, 'manage_library_member', NULL, 'library', 'manage_library_member', 'manage_library_member', 0, 1),
(109, 'general_settings', NULL, 'library', 'general_settings', 'general_settings', 0, 1),
(110, 'manage_settings', NULL, 'library', 'manage_settings', 'manage_settings', 0, 1),
(111, 'send_notification', NULL, 'library', 'send_notification', 'send_notification', 0, 1),
(112, 'manage_notification', NULL, 'library', 'manage_notification', 'manage_notification', 0, 1),
(113, 'book_issue', NULL, 'library', 'book_issue', 'book_issue', 0, 1),
(114, 'manage_issue_and_return', NULL, 'library', 'manage_issue_&_return', 'manage_issue_and_return', 0, 1),
(115, 'send_book_request', NULL, 'library', 'send_book_request', 'send_book_request', 0, 1),
(116, 'manage_book_request', NULL, 'library', 'manage_book_request', 'manage_book_request', 0, 1),
(117, 'my_notifications', NULL, 'library', 'my_notifications', 'my_notifications', 0, 1),
(118, 'my_book_request', NULL, 'library', 'my_book_request', 'my_book_request', 0, 1),
(119, 'view_library_books', NULL, 'library', 'view_library_books', 'view_library_books', 0, 1),
(120, 'my_issues_and_returns', NULL, 'library', 'my_issues_and_returns', 'my_issues_and_returns', 0, 1),
(121, 'create_testimonial', NULL, 'certificates', 'create_testimonial', 'create_testimonial', 0, 1),
(123, 'create_transfer_certificate', NULL, 'certificates', 'create_transfer_certificate', 'create_transfer_certificate', 0, 1),
(125, 'student_report_card', NULL, 'certificates', 'student_report_card', 'student_report_card', 0, 1),
(126, 'student_mark_sheet', NULL, 'certificates', 'student_mark_sheet', 'student_mark_sheet', 0, 1),
(127, 'average_marksheet', NULL, 'report', 'average_marksheet', 'average_marksheet', 0, 1),
(128, 'add_house', '', 'hostel', 'add_house', 'add_house', 0, 1),
(129, 'manage_house', NULL, 'hostel', 'manage_house', 'manage_house', 0, 1),
(130, 'assign_house_teacher', NULL, 'hostel', 'assign_house_teacher', 'assign_house_teacher', 0, 1),
(131, 'manage_house_teacher', NULL, 'hostel', 'manage_house_teacher', 'manage_house_teacher', 0, 1),
(132, 'admit_student_to_hostel', NULL, 'hostel', 'admit_student_to_hostel', 'admit_student_to_hostel', 0, 1),
(133, 'manage_hostel_student', NULL, 'hostel', 'manage_hostel_student', 'manage_hostel_student', 0, 1),
(134, 'student_checkin', NULL, 'hostel', 'student_checkin_/_checkout', 'student_checkin', 0, 1),
(135, 'manage_checkin', NULL, 'hostel', 'manage_student_checkin_/_checkout', 'manage_checkin', 0, 1),
(136, 'salary_settings', NULL, 'payroll', 'salary_settings', 'salary_settings', 0, 1),
(137, 'manage_salary_settings', NULL, 'payroll', 'manage_salary_settings', 'manage_salary_settings', 0, 1),
(138, 'monthly_salary', NULL, 'payroll', 'monthly_salary', 'monthly_salary', 0, 1),
(139, 'manage_salary', NULL, 'payroll', 'manage_salary', 'manage_salary', 0, 1),
(140, 'salary_report', NULL, 'payroll', 'salary_report', 'salary_report', 0, 1),
(141, 'download_csv_file', NULL, 'attendance', 'download_csv_file', 'download_csv_file', 0, 1),
(142, 'leave_settings', NULL, 'payroll', 'leave_settings', 'leave_settings', 0, 1),
(143, 'manage_leave_settings', NULL, 'payroll', 'manage_leave_settings', 'manage_leave_settings', 0, 1),
(144, 'add_leave', NULL, 'payroll', 'add_leave', 'add_leave', 0, 1),
(145, 'manage_leave', NULL, 'payroll', 'manage_leave', 'manage_leave', 0, 1),
(146, 'leave_report', NULL, 'payroll', 'leave_report', 'leave_report', 0, 1),
(147, 'create_event', NULL, 'settings', 'create_event', 'create_event', 0, 1),
(148, 'manage_event', NULL, 'settings', 'manage_event', 'manage_event', 0, 1),
(149, 'view_events', NULL, 'settings', 'view_events', 'view_events', 0, 1),
(150, 'download_csv_file', NULL, 'attendance', 'download_csv_file', 'download_csv_file', 0, 1),
(151, 'add_videos', NULL, 'control_website', 'add_videos', 'add_videos', 0, 1),
(152, 'manage_videos', NULL, 'control_website', 'manage_videos', 'manage_videos', 0, 1),
(153, 'progress_report', NULL, 'report', 'progress_report', 'progress_report', 0, 1),
(154, 'student_id_card', NULL, 'student', 'student_id_card', 'student_id_card', 0, 1),
(155, 'model_test_report', NULL, 'report', 'model_test_report', 'model_test_report', 0, 1),
(156, 'create_parent', NULL, 'parents', 'create_parent', 'create_parent', 0, 1),
(157, 'manage_parent', NULL, 'parents', 'manage_parent', 'manage_parent', 0, 1),
(158, 'sms_to_parents', NULL, 'sms', 'sms_to_parents', 'sms_to_parents', 0, 1),
(159, 'sms_configuration', NULL, 'sms', 'sms_configuration', 'sms_configuration', 0, 1),
(160, 'sms_marksheet', NULL, 'sms', 'sms_marksheet', 'sms_marksheet', 0, 1),
(161, 'sms_classwise_result', NULL, 'sms', 'sms_classwise_result', 'sms_classwise_result', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `PERSON_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSON_TYPE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `IMAGES` varchar(200) NOT NULL,
  `DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`PERSON_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`PERSON_ID`, `PERSON_TYPE`, `NAME`, `IMAGES`, `DETAILS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'chairman', 'Chairman Name goes here', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.', 1, '2016-05-21', 1, '2016-05-22', 7),
(2, 'dg', 'D.G Name goes here', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s.', 1, '2016-05-21', 1, '2016-05-22', 7);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(100) NOT NULL,
  `DETAILS` varchar(255) DEFAULT NULL,
  `PERMISSION_NAME` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ROLE_ID`, `ROLE_NAME`, `DETAILS`, `PERMISSION_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Super Admin', NULL, '', 0, '2015-10-03 17:01:53', 1, '2016-06-21 02:51:14', 7),
(2, 'Additional USer', NULL, 'add_additional_data,manage_additional_data,manage_user_data', 1, '2016-06-21 02:46:46', 1, '2016-06-21 02:51:12', 7),
(3, 'Website Controller', NULL, 'add_additional_data,add_downloads,add_images,add_person,create_category,create_page,create_slider,create_sub_category,create_sub_sub_category,manage_additional_data,manage_category,manage_downloads,manage_gallery,manage_pages,manage_person,manage_slider,manage_sub_category,manage_sub_sub_category,manage_user_data', 1, '2016-06-22 05:58:22', NULL, NULL, 7),
(4, 'Student', NULL, 'my_book_request,my_issues_and_returns,my_notifications,send_book_request,view_library_books,view_attendance,view_class_routine,view_mark_sheet,view_notice,view_payment,view_subjects,view_teachers', 1, '2016-07-12 05:07:39', 1, '2016-07-28 05:30:28', 7),
(5, 'Teacher', NULL, 'daily_attendance,manage_attendance,create_class_routine,manage_class_routine,insert_marks,manage_marks,attendance_report,class_wise_marksheet,section_wise_marksheet,student_marksheet,send_sms,manage_assign_subject,manage_assign_teacher,manage_teacher', 1, '2016-07-13 05:11:11', NULL, NULL, 7),
(6, 'Parents', NULL, 'view_attendance_parents,view_class_routine_parents,view_mark_sheet_parents,view_notice_parents,view_payment_parents,view_subjects_parents,view_teachers_parents', 1, '2016-07-13 06:16:23', 1, '2016-07-13 06:51:14', 7),
(7, 'Admin', NULL, 'daily_attendance,manage_attendance,upload_csv_file,create_board,manage_board,create_testimonial,create_transfer_certificate,student_mark_sheet,student_report_card,create_class,create_class_routine,create_section,manage_class,manage_class_routine,manage_section,add_additional_data,add_downloads,add_images,add_person,create_category,create_page,create_slider,create_sub_category,create_sub_sub_category,manage_additional_data,manage_category,manage_downloads,manage_gallery,manage_pages,manage_person,manage_slider,manage_sub_category,manage_sub_sub_category,manage_user_data,create_exam,create_grade,insert_marks,manage_exam_list,manage_grade,manage_marks,add_house,admit_student_to_hostel,assign_house_teacher,manage_checkin,manage_hostel_student,manage_house,manage_house_teacher,student_checkin,add_book,Add_library_member,book_issue,create_book_category,create_writer,general_settings,manage_book,manage_book_category,manage_book_request,manage_issue_and_return,manage_library_member,manage_notification,manage_settings,manage_writer,send_notification,create_parent,manage_parent,create_payment,create_payment_category,manage_payment,manage_payment_category,attendance_report,average_marksheet,class_wise_marksheet,payment_report,section_wise_marksheet,student_marksheet,create_designation,create_notice,create_subject,manage_designation,manage_notice,manage_subject,send_sms,create_staff,manage_staff,add_student_info,admit_student,manage_student_admission,manage_student_info,assign_subject,assign_teacher,create_teacher,manage_assign_subject,manage_assign_teacher,manage_teacher,create_parents,create_role,create_student,create_teacher,create_user,manage_role,manage_user', 1, '2016-07-14 05:24:24', 1, '2016-08-14 08:02:23', 7);

-- --------------------------------------------------------

--
-- Table structure for table `salary_settings`
--

CREATE TABLE IF NOT EXISTS `salary_settings` (
  `SALARY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEACHER_ID` int(11) NOT NULL,
  `SALARY` int(11) NOT NULL,
  `YEAR` year(4) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`SALARY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `salary_settings`
--

INSERT INTO `salary_settings` (`SALARY_ID`, `TEACHER_ID`, `SALARY`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 3, 10000, 2016, 1, '2016-08-17', 1, '2016-08-17', 7),
(2, 1, 14500, 2016, 1, '2016-08-17', 1, '2016-08-17', 7),
(3, 4, 12000, 2016, 1, '2016-08-17', 1, '2016-08-17', 7),
(4, 2, 8000, 2016, 1, '2016-08-17', 1, '2016-08-17', 7),
(5, 1, 15000, 2015, 1, '2017-08-17', 0, '0000-00-00', 7),
(6, 3, 12000, 2015, 1, '2017-08-17', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `SECTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_NAME` longtext NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`SECTION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`SECTION_ID`, `CLASS_ID`, `SECTION_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 'Lily', 1, '2016-09-28', 0, '0000-00-00', 7),
(2, 1, 'Rose', 1, '2016-09-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE IF NOT EXISTS `send_notification` (
  `NOTIFICATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LIBRARY_MEMBER_ID` int(11) NOT NULL,
  `SUBJECT` varchar(250) NOT NULL,
  `MESSAGE` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `send_notification`
--

INSERT INTO `send_notification` (`NOTIFICATION_ID`, `LIBRARY_MEMBER_ID`, `SUBJECT`, `MESSAGE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 2, 'Test', 'Hello, Nusrat Fariha', 1, '2016-07-27', 0, '0000-00-00', 7),
(2, 3, 'Return Book', 'Hi Rony.', 1, '2016-07-28', 0, '0000-00-00', 7),
(3, 8, 'Please return the previuous books', 'Dear Nayim,\r\nPlease return our previous book. You picked it from us at 2016-07-03 and your date expired at 2016-07-15. So please return this book otherwise I will complain to your parents &amp; class teacher.', 1, '2016-07-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `send_sms`
--

CREATE TABLE IF NOT EXISTS `send_sms` (
  `SEND_SMS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLASS_ID` int(11) NOT NULL,
  `EXAM_ID` int(11) NOT NULL,
  `STUDENT_DATA_ID` int(11) NOT NULL,
  `MESSAGE` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`SEND_SMS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

--
-- Dumping data for table `send_sms`
--

INSERT INTO `send_sms` (`SEND_SMS_ID`, `CLASS_ID`, `EXAM_ID`, `STUDENT_DATA_ID`, `MESSAGE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 6, 1, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:86\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(2, 1, 6, 3, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:110 Position:74\nHighest Mark Obtained:162\nEnglish:(28/65) Math:(35/55) Bangla:(25/40) General Knowledge:(22/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(3, 1, 6, 2, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:139 Position:46\nHighest Mark Obtained:162\nEnglish:(35/65) Math:(41/55) Bangla:(33/40) General Knowledge:(30/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(4, 1, 6, 4, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:156 Position:14\nHighest Mark Obtained:162\nEnglish:(45/65) Math:(48/55) Bangla:(31/40) General Knowledge:(32/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(5, 1, 6, 5, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:156 Position:15\nHighest Mark Obtained:162\nEnglish:(45/65) Math:(43/55) Bangla:(34/40) General Knowledge:(34/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(6, 1, 6, 6, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:67 Position:84\nHighest Mark Obtained:162\nEnglish:(15/65) Math:(23/55) Bangla:(15/40) General Knowledge:(14/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(7, 1, 6, 7, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:119 Position:69\nHighest Mark Obtained:162\nEnglish:(20/65) Math:(46/55) Bangla:(29/40) General Knowledge:(24/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(8, 1, 6, 9, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:120 Position:68\nHighest Mark Obtained:162\nEnglish:(40/65) Math:(32/55) Bangla:(24/40) General Knowledge:(24/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(9, 1, 6, 28, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:158 Position:9\nHighest Mark Obtained:162\nEnglish:(42/65) Math:(48/55) Bangla:(33/40) General Knowledge:(35/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(10, 1, 6, 29, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:135 Position:49\nHighest Mark Obtained:162\nEnglish:(32/65) Math:(50/55) Bangla:(30/40) General Knowledge:(23/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(11, 1, 6, 30, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:133 Position:52\nHighest Mark Obtained:162\nEnglish:(40/65) Math:(45/55) Bangla:(30/40) General Knowledge:(18/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(12, 1, 6, 31, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:146 Position:29\nHighest Mark Obtained:162\nEnglish:(38/65) Math:(46/55) Bangla:(32/40) General Knowledge:(30/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(13, 1, 6, 32, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:146 Position:28\nHighest Mark Obtained:162\nEnglish:(43/65) Math:(41/55) Bangla:(30/40) General Knowledge:(32/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(14, 1, 6, 33, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:126 Position:58\nHighest Mark Obtained:162\nEnglish:(30/65) Math:(38/55) Bangla:(30/40) General Knowledge:(28/40) ', 1, '2016-11-28', 0, '0000-00-00', 7),
(15, 1, 6, 34, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:135 Position:47\nHighest Mark Obtained:162\nEnglish:(42/65) Math:(38/55) Bangla:(28/40) General Knowledge:(27/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(16, 1, 6, 35, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:125 Position:60\nHighest Mark Obtained:162\nEnglish:(29/65) Math:(37/55) Bangla:(35/40) General Knowledge:(24/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(17, 1, 6, 36, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:149 Position:25\nHighest Mark Obtained:162\nEnglish:(42/65) Math:(45/55) Bangla:(34/40) General Knowledge:(28/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(18, 1, 6, 37, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:159 Position:6\nHighest Mark Obtained:162\nEnglish:(49/65) Math:(47/55) Bangla:(33/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(19, 1, 6, 38, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:96 Position:81\nHighest Mark Obtained:162\nEnglish:(15/65) Math:(34/55) Bangla:(20/40) General Knowledge:(27/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(20, 1, 6, 39, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:145 Position:31\nHighest Mark Obtained:162\nEnglish:(39/65) Math:(46/55) Bangla:(32/40) General Knowledge:(28/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(21, 1, 6, 40, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:116 Position:72\nHighest Mark Obtained:162\nEnglish:(27/65) Math:(31/55) Bangla:(34/40) General Knowledge:(24/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(22, 1, 6, 41, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:135 Position:49\nHighest Mark Obtained:162\nEnglish:(26/65) Math:(39/55) Bangla:(35/40) General Knowledge:(35/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(23, 1, 6, 27, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:79 Position:83\nHighest Mark Obtained:162\nEnglish:(10/65) Math:(32/55) Bangla:(15/40) General Knowledge:(22/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(24, 1, 6, 42, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:159 Position:5\nHighest Mark Obtained:162\nEnglish:(43/65) Math:(54/55) Bangla:(35/40) General Knowledge:(27/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(25, 1, 6, 44, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:145 Position:30\nHighest Mark Obtained:162\nEnglish:(38/65) Math:(49/55) Bangla:(25/40) General Knowledge:(33/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(26, 1, 6, 45, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:109 Position:75\nHighest Mark Obtained:162\nEnglish:(20/65) Math:(35/55) Bangla:(30/40) General Knowledge:(24/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(27, 1, 6, 23, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:159 Position:7\nHighest Mark Obtained:162\nEnglish:(40/65) Math:(51/55) Bangla:(34/40) General Knowledge:(34/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(28, 1, 6, 20, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:155 Position:18\nHighest Mark Obtained:162\nEnglish:(47/65) Math:(46/55) Bangla:(31/40) General Knowledge:(31/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(29, 1, 6, 43, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:147 Position:27\nHighest Mark Obtained:162\nEnglish:(40/65) Math:(50/55) Bangla:(27/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(30, 1, 6, 47, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:155 Position:17\nHighest Mark Obtained:162\nEnglish:(44/65) Math:(49/55) Bangla:(32/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(31, 1, 6, 49, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:160 Position:4\nHighest Mark Obtained:162\nEnglish:(45/65) Math:(53/55) Bangla:(35/40) General Knowledge:(27/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(32, 1, 6, 51, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:93\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(33, 1, 6, 52, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:143 Position:35\nHighest Mark Obtained:162\nEnglish:(36/65) Math:(48/55) Bangla:(31/40) General Knowledge:(28/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(34, 1, 6, 53, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:92\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(35, 1, 6, 54, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:153 Position:21\nHighest Mark Obtained:162\nEnglish:(35/65) Math:(51/55) Bangla:(35/40) General Knowledge:(32/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(36, 1, 6, 55, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:101 Position:79\nHighest Mark Obtained:162\nEnglish:(20/65) Math:(46/55) Bangla:(19/40) General Knowledge:(16/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(37, 1, 6, 56, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:88\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(38, 1, 6, 57, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:120 Position:67\nHighest Mark Obtained:162\nEnglish:(21/65) Math:(45/55) Bangla:(25/40) General Knowledge:(29/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(39, 1, 6, 58, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:143 Position:33\nHighest Mark Obtained:162\nEnglish:(39/65) Math:(44/55) Bangla:(31/40) General Knowledge:(29/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(40, 1, 6, 59, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:126 Position:57\nHighest Mark Obtained:162\nEnglish:(36/65) Math:(25/55) Bangla:(30/40) General Knowledge:(35/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(41, 1, 6, 60, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:91 Position:82\nHighest Mark Obtained:162\nEnglish:(10/65) Math:(33/55) Bangla:(23/40) General Knowledge:(25/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(42, 1, 6, 61, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:86\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(43, 1, 6, 62, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:153 Position:20\nHighest Mark Obtained:162\nEnglish:(39/65) Math:(50/55) Bangla:(32/40) General Knowledge:(32/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(44, 1, 6, 63, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:143 Position:32\nHighest Mark Obtained:162\nEnglish:(34/65) Math:(36/55) Bangla:(45/40) General Knowledge:(28/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(45, 1, 6, 64, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:140 Position:42\nHighest Mark Obtained:162\nEnglish:(40/65) Math:(40/55) Bangla:(30/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(46, 1, 6, 10, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:143 Position:34\nHighest Mark Obtained:162\nEnglish:(35/65) Math:(47/55) Bangla:(32/40) General Knowledge:(29/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(47, 1, 6, 66, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:108 Position:76\nHighest Mark Obtained:162\nEnglish:(28/65) Math:(40/55) Bangla:(20/40) General Knowledge:(20/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(48, 1, 6, 65, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:141 Position:38\nHighest Mark Obtained:162\nEnglish:(37/65) Math:(45/55) Bangla:(31/40) General Knowledge:(28/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(49, 1, 6, 68, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:118 Position:70\nHighest Mark Obtained:162\nEnglish:(33/65) Math:(35/55) Bangla:(30/40) General Knowledge:(20/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(50, 1, 6, 69, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:123 Position:63\nHighest Mark Obtained:162\nEnglish:(27/65) Math:(39/55) Bangla:(31/40) General Knowledge:(26/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(51, 1, 6, 70, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:128 Position:56\nHighest Mark Obtained:162\nEnglish:(28/65) Math:(41/55) Bangla:(34/40) General Knowledge:(25/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(52, 1, 6, 71, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:140 Position:42\nHighest Mark Obtained:162\nEnglish:(36/65) Math:(48/55) Bangla:(30/40) General Knowledge:(26/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(53, 1, 6, 72, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:157 Position:10\nHighest Mark Obtained:162\nEnglish:(42/65) Math:(53/55) Bangla:(36/40) General Knowledge:(26/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(54, 1, 6, 73, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:148 Position:26\nHighest Mark Obtained:162\nEnglish:(36/65) Math:(49/55) Bangla:(37/40) General Knowledge:(26/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(55, 1, 6, 74, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:134 Position:50\nHighest Mark Obtained:162\nEnglish:(49/65) Math:(35/55) Bangla:(27/40) General Knowledge:(23/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(56, 1, 6, 75, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:120 Position:65\nHighest Mark Obtained:162\nEnglish:(31/65) Math:(44/55) Bangla:(23/40) General Knowledge:(22/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(57, 1, 6, 76, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:155 Position:19\nHighest Mark Obtained:162\nEnglish:(45/65) Math:(47/55) Bangla:(33/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(58, 1, 6, 77, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:150 Position:24\nHighest Mark Obtained:162\nEnglish:(44/65) Math:(46/55) Bangla:(32/40) General Knowledge:(28/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(59, 1, 6, 78, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:139 Position:44\nHighest Mark Obtained:162\nEnglish:(35/65) Math:(47/55) Bangla:(27/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(60, 1, 6, 79, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:151 Position:23\nHighest Mark Obtained:162\nEnglish:(48/65) Math:(45/55) Bangla:(28/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(61, 1, 6, 67, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:88\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(62, 1, 6, 81, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:90\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(63, 1, 6, 82, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:124 Position:61\nHighest Mark Obtained:162\nEnglish:(34/65) Math:(40/55) Bangla:(26/40) General Knowledge:(24/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(64, 1, 6, 83, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:134 Position:51\nHighest Mark Obtained:162\nEnglish:(30/65) Math:(40/55) Bangla:(34/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(65, 1, 6, 46, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:128 Position:55\nHighest Mark Obtained:162\nEnglish:(29/65) Math:(36/55) Bangla:(31/40) General Knowledge:(32/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(66, 1, 6, 85, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:123 Position:64\nHighest Mark Obtained:162\nEnglish:(30/65) Math:(31/55) Bangla:(30/40) General Knowledge:(32/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(67, 1, 6, 86, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:162 Position:2\nHighest Mark Obtained:162\nEnglish:(44/65) Math:(55/55) Bangla:(35/40) General Knowledge:(28/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(68, 1, 6, 87, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:125 Position:59\nHighest Mark Obtained:162\nEnglish:(30/65) Math:(46/55) Bangla:(24/40) General Knowledge:(25/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(69, 1, 6, 88, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:157 Position:11\nHighest Mark Obtained:162\nEnglish:(41/65) Math:(52/55) Bangla:(35/40) General Knowledge:(29/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(70, 1, 6, 89, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:91\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(71, 1, 6, 90, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:152 Position:22\nHighest Mark Obtained:162\nEnglish:(37/65) Math:(50/55) Bangla:(35/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(72, 1, 6, 91, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:104 Position:77\nHighest Mark Obtained:162\nEnglish:(35/65) Math:(20/55) Bangla:(24/40) General Knowledge:(25/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(73, 1, 6, 92, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:162 Position:1\nHighest Mark Obtained:162\nEnglish:(43/65) Math:(49/55) Bangla:(36/40) General Knowledge:(34/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(74, 1, 6, 93, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:130 Position:54\nHighest Mark Obtained:162\nEnglish:(33/65) Math:(42/55) Bangla:(31/40) General Knowledge:(24/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(75, 1, 6, 94, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:140 Position:39\nHighest Mark Obtained:162\nEnglish:(40/65) Math:(40/55) Bangla:(35/40) General Knowledge:(25/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(76, 1, 6, 84, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:140 Position:42\nHighest Mark Obtained:162\nEnglish:(31/65) Math:(51/55) Bangla:(30/40) General Knowledge:(28/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(77, 1, 6, 80, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:112 Position:73\nHighest Mark Obtained:162\nEnglish:(25/65) Math:(37/55) Bangla:(29/40) General Knowledge:(21/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(78, 1, 6, 50, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:87\nHighest Mark Obtained:162\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(79, 1, 6, 48, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:100 Position:80\nHighest Mark Obtained:162\nEnglish:(20/65) Math:(30/55) Bangla:(20/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(80, 1, 6, 26, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:139 Position:43\nHighest Mark Obtained:162\nEnglish:(40/65) Math:(43/55) Bangla:(31/40) General Knowledge:(25/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(81, 1, 6, 25, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:158 Position:8\nHighest Mark Obtained:162\nEnglish:(45/65) Math:(48/55) Bangla:(35/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(82, 1, 6, 24, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:156 Position:13\nHighest Mark Obtained:162\nEnglish:(40/65) Math:(51/55) Bangla:(35/40) General Knowledge:(30/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(83, 1, 6, 22, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:142 Position:37\nHighest Mark Obtained:162\nEnglish:(34/65) Math:(49/55) Bangla:(33/40) General Knowledge:(26/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(84, 1, 6, 21, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:139 Position:45\nHighest Mark Obtained:162\nEnglish:(26/65) Math:(54/55) Bangla:(35/40) General Knowledge:(24/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(85, 1, 6, 19, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:124 Position:62\nHighest Mark Obtained:162\nEnglish:(23/65) Math:(40/55) Bangla:(38/40) General Knowledge:(23/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(86, 1, 6, 18, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:116 Position:71\nHighest Mark Obtained:162\nEnglish:(24/65) Math:(37/55) Bangla:(29/40) General Knowledge:(26/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(87, 1, 6, 11, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:142 Position:36\nHighest Mark Obtained:162\nEnglish:(42/65) Math:(34/55) Bangla:(33/40) General Knowledge:(33/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(88, 1, 6, 12, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:120 Position:65\nHighest Mark Obtained:162\nEnglish:(30/65) Math:(36/55) Bangla:(30/40) General Knowledge:(24/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(89, 1, 6, 13, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:156 Position:16\nHighest Mark Obtained:162\nEnglish:(39/65) Math:(48/55) Bangla:(36/40) General Knowledge:(33/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(90, 1, 6, 14, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:160 Position:3\nHighest Mark Obtained:162\nEnglish:(44/65) Math:(50/55) Bangla:(34/40) General Knowledge:(32/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(91, 1, 6, 15, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:130 Position:53\nHighest Mark Obtained:162\nEnglish:(33/65) Math:(41/55) Bangla:(30/40) General Knowledge:(26/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(92, 1, 6, 16, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:101 Position:78\nHighest Mark Obtained:162\nEnglish:(27/65) Math:(32/55) Bangla:(24/40) General Knowledge:(18/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(93, 1, 6, 17, 'Model Test 16 Held on:2016-11-18\nTotal Mark:200 Total Examinee:93\nObtained Mark:157 Position:12\nHighest Mark Obtained:162\nEnglish:(45/65) Math:(47/55) Bangla:(33/40) General Knowledge:(32/40) ', 1, '2016-11-29', 0, '0000-00-00', 7),
(94, 1, 7, 20, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:149 Position:67\nHighest Mark Obtained:181\nEnglish:(45/65) Math:(50/55) Bangla:(26/40) General Knowledge:(28/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(95, 1, 7, 21, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:157 Position:51\nHighest Mark Obtained:181\nEnglish:(49/65) Math:(47/55) Bangla:(31/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(96, 1, 7, 22, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:163 Position:40\nHighest Mark Obtained:181\nEnglish:(52/65) Math:(50/55) Bangla:(32/40) General Knowledge:(29/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(97, 1, 7, 23, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:179 Position:6\nHighest Mark Obtained:181\nEnglish:(59/65) Math:(53/55) Bangla:(34/40) General Knowledge:(33/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(98, 1, 7, 24, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:91\nHighest Mark Obtained:181\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(99, 1, 7, 19, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:146 Position:70\nHighest Mark Obtained:181\nEnglish:(42/65) Math:(42/55) Bangla:(32/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(100, 1, 7, 26, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:160 Position:46\nHighest Mark Obtained:181\nEnglish:(50/65) Math:(52/55) Bangla:(28/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(101, 1, 7, 27, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:126 Position:83\nHighest Mark Obtained:181\nEnglish:(39/65) Math:(37/55) Bangla:(23/40) General Knowledge:(27/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(102, 1, 7, 28, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:170 Position:21\nHighest Mark Obtained:181\nEnglish:(49/65) Math:(54/55) Bangla:(32/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(103, 1, 7, 29, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:143 Position:74\nHighest Mark Obtained:181\nEnglish:(40/65) Math:(45/55) Bangla:(30/40) General Knowledge:(28/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(104, 1, 7, 30, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:151 Position:62\nHighest Mark Obtained:181\nEnglish:(46/65) Math:(51/55) Bangla:(28/40) General Knowledge:(26/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(105, 1, 7, 31, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:166 Position:34\nHighest Mark Obtained:181\nEnglish:(51/65) Math:(51/55) Bangla:(32/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(106, 1, 7, 32, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:169 Position:25\nHighest Mark Obtained:181\nEnglish:(52/65) Math:(51/55) Bangla:(32/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(107, 1, 7, 33, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:160 Position:45\nHighest Mark Obtained:181\nEnglish:(47/65) Math:(50/55) Bangla:(28/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(108, 1, 7, 34, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:140 Position:76\nHighest Mark Obtained:181\nEnglish:(47/65) Math:(44/55) Bangla:(22/40) General Knowledge:(27/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(109, 1, 7, 35, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:157 Position:49\nHighest Mark Obtained:181\nEnglish:(46/65) Math:(46/55) Bangla:(29/40) General Knowledge:(36/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(110, 1, 7, 14, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:174 Position:12\nHighest Mark Obtained:181\nEnglish:(59/65) Math:(50/55) Bangla:(31/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(111, 1, 7, 16, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:152 Position:59\nHighest Mark Obtained:181\nEnglish:(45/65) Math:(53/55) Bangla:(27/40) General Knowledge:(27/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(112, 1, 7, 38, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:112 Position:88\nHighest Mark Obtained:181\nEnglish:(34/65) Math:(33/55) Bangla:(22/40) General Knowledge:(23/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(113, 1, 7, 39, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:170 Position:20\nHighest Mark Obtained:181\nEnglish:(54/65) Math:(47/55) Bangla:(33/40) General Knowledge:(36/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(114, 1, 7, 40, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:119 Position:85\nHighest Mark Obtained:181\nEnglish:(21/65) Math:(34/55) Bangla:(30/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(115, 1, 7, 41, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:180 Position:2\nHighest Mark Obtained:181\nEnglish:(59/65) Math:(50/55) Bangla:(34/40) General Knowledge:(37/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(116, 1, 7, 10, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:176 Position:9\nHighest Mark Obtained:181\nEnglish:(59/65) Math:(53/55) Bangla:(32/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(117, 1, 7, 25, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:147 Position:69\nHighest Mark Obtained:181\nEnglish:(46/65) Math:(48/55) Bangla:(26/40) General Knowledge:(27/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(118, 1, 7, 42, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:159 Position:48\nHighest Mark Obtained:181\nEnglish:(48/65) Math:(47/55) Bangla:(32/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(119, 1, 7, 37, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:168 Position:28\nHighest Mark Obtained:181\nEnglish:(54/65) Math:(51/55) Bangla:(32/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(120, 1, 7, 43, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:160 Position:43\nHighest Mark Obtained:181\nEnglish:(52/65) Math:(50/55) Bangla:(29/40) General Knowledge:(29/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(121, 1, 7, 45, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:166 Position:35\nHighest Mark Obtained:181\nEnglish:(55/65) Math:(50/55) Bangla:(30/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(122, 1, 7, 44, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:171 Position:16\nHighest Mark Obtained:181\nEnglish:(52/65) Math:(51/55) Bangla:(34/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(123, 1, 7, 47, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:169 Position:24\nHighest Mark Obtained:181\nEnglish:(51/65) Math:(53/55) Bangla:(31/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(124, 1, 7, 79, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:171 Position:18\nHighest Mark Obtained:181\nEnglish:(57/65) Math:(50/55) Bangla:(34/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(125, 1, 7, 48, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:116 Position:86\nHighest Mark Obtained:181\nEnglish:(26/65) Math:(38/55) Bangla:(24/40) General Knowledge:(28/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(126, 1, 7, 49, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:170 Position:23\nHighest Mark Obtained:181\nEnglish:(47/65) Math:(52/55) Bangla:(35/40) General Knowledge:(36/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(127, 1, 7, 51, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:92\nHighest Mark Obtained:181\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(128, 1, 7, 53, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:138 Position:77\nHighest Mark Obtained:181\nEnglish:(37/65) Math:(44/55) Bangla:(28/40) General Knowledge:(29/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(129, 1, 7, 54, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:170 Position:22\nHighest Mark Obtained:181\nEnglish:(57/65) Math:(51/55) Bangla:(30/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(130, 1, 7, 55, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:150 Position:66\nHighest Mark Obtained:181\nEnglish:(47/65) Math:(51/55) Bangla:(28/40) General Knowledge:(24/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(131, 1, 7, 52, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:167 Position:31\nHighest Mark Obtained:181\nEnglish:(55/65) Math:(50/55) Bangla:(31/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(132, 1, 7, 57, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:114 Position:87\nHighest Mark Obtained:181\nEnglish:(30/65) Math:(35/55) Bangla:(22/40) General Knowledge:(27/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(133, 1, 7, 56, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:150 Position:63\nHighest Mark Obtained:181\nEnglish:(35/65) Math:(53/55) Bangla:(33/40) General Knowledge:(29/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(134, 1, 7, 59, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:156 Position:55\nHighest Mark Obtained:181\nEnglish:(48/65) Math:(45/55) Bangla:(28/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(135, 1, 7, 60, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:120 Position:84\nHighest Mark Obtained:181\nEnglish:(35/65) Math:(41/55) Bangla:(19/40) General Knowledge:(25/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(136, 1, 7, 61, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:89\nHighest Mark Obtained:181\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(137, 1, 7, 58, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:165 Position:37\nHighest Mark Obtained:181\nEnglish:(52/65) Math:(48/55) Bangla:(31/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(138, 1, 7, 50, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:153 Position:58\nHighest Mark Obtained:181\nEnglish:(49/65) Math:(49/55) Bangla:(28/40) General Knowledge:(27/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(139, 1, 7, 63, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:168 Position:27\nHighest Mark Obtained:181\nEnglish:(50/65) Math:(50/55) Bangla:(34/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(140, 1, 7, 64, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:146 Position:71\nHighest Mark Obtained:181\nEnglish:(42/65) Math:(51/55) Bangla:(28/40) General Knowledge:(25/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(141, 1, 7, 62, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:177 Position:7\nHighest Mark Obtained:181\nEnglish:(55/65) Math:(54/55) Bangla:(37/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(142, 1, 7, 46, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:160 Position:44\nHighest Mark Obtained:181\nEnglish:(52/65) Math:(50/55) Bangla:(28/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(143, 1, 7, 67, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:90\nHighest Mark Obtained:181\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(144, 1, 7, 68, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:151 Position:62\nHighest Mark Obtained:181\nEnglish:(42/65) Math:(48/55) Bangla:(30/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(145, 1, 7, 66, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:152 Position:60\nHighest Mark Obtained:181\nEnglish:(39/65) Math:(50/55) Bangla:(31/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(146, 1, 7, 65, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:165 Position:36\nHighest Mark Obtained:181\nEnglish:(48/65) Math:(54/55) Bangla:(31/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(147, 1, 7, 18, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:154 Position:57\nHighest Mark Obtained:181\nEnglish:(46/65) Math:(48/55) Bangla:(30/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(148, 1, 7, 70, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:156 Position:53\nHighest Mark Obtained:181\nEnglish:(49/65) Math:(48/55) Bangla:(30/40) General Knowledge:(29/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(149, 1, 7, 36, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:164 Position:38\nHighest Mark Obtained:181\nEnglish:(47/65) Math:(52/55) Bangla:(32/40) General Knowledge:(33/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(150, 1, 7, 69, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:167 Position:29\nHighest Mark Obtained:181\nEnglish:(51/65) Math:(50/55) Bangla:(33/40) General Knowledge:(33/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(151, 1, 7, 73, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:179 Position:4\nHighest Mark Obtained:181\nEnglish:(56/65) Math:(54/55) Bangla:(34/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(152, 1, 7, 76, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:176 Position:10\nHighest Mark Obtained:181\nEnglish:(55/65) Math:(53/55) Bangla:(33/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(153, 1, 7, 77, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:160 Position:47\nHighest Mark Obtained:181\nEnglish:(47/65) Math:(51/55) Bangla:(32/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(154, 1, 7, 75, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:160 Position:43\nHighest Mark Obtained:181\nEnglish:(46/65) Math:(48/55) Bangla:(31/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(155, 1, 7, 74, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:164 Position:39\nHighest Mark Obtained:181\nEnglish:(52/65) Math:(50/55) Bangla:(31/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(156, 1, 7, 78, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:143 Position:74\nHighest Mark Obtained:181\nEnglish:(42/65) Math:(45/55) Bangla:(28/40) General Knowledge:(28/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(157, 1, 7, 82, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:150 Position:63\nHighest Mark Obtained:181\nEnglish:(45/65) Math:(50/55) Bangla:(30/40) General Knowledge:(25/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(158, 1, 7, 83, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:132 Position:80\nHighest Mark Obtained:181\nEnglish:(38/65) Math:(39/55) Bangla:(29/40) General Knowledge:(26/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(159, 1, 7, 81, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:0 Position:91\nHighest Mark Obtained:181\nEnglish:(0/65) Math:(0/55) Bangla:(0/40) General Knowledge:(0/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(160, 1, 7, 86, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:180 Position:2\nHighest Mark Obtained:181\nEnglish:(54/65) Math:(53/55) Bangla:(35/40) General Knowledge:(38/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(161, 1, 7, 85, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:170 Position:21\nHighest Mark Obtained:181\nEnglish:(53/65) Math:(53/55) Bangla:(32/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(162, 1, 7, 88, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:167 Position:30\nHighest Mark Obtained:181\nEnglish:(53/65) Math:(51/55) Bangla:(31/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(163, 1, 7, 89, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:156 Position:54\nHighest Mark Obtained:181\nEnglish:(49/65) Math:(51/55) Bangla:(29/40) General Knowledge:(27/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(164, 1, 7, 87, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:130 Position:81\nHighest Mark Obtained:181\nEnglish:(40/65) Math:(36/55) Bangla:(24/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(165, 1, 7, 91, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:129 Position:82\nHighest Mark Obtained:181\nEnglish:(33/65) Math:(50/55) Bangla:(22/40) General Knowledge:(24/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(166, 1, 7, 90, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:175 Position:11\nHighest Mark Obtained:181\nEnglish:(56/65) Math:(52/55) Bangla:(32/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(167, 1, 7, 93, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:154 Position:56\nHighest Mark Obtained:181\nEnglish:(49/65) Math:(49/55) Bangla:(26/40) General Knowledge:(30/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(168, 1, 7, 94, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:134 Position:78\nHighest Mark Obtained:181\nEnglish:(42/65) Math:(41/55) Bangla:(27/40) General Knowledge:(24/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(169, 1, 7, 80, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:156 Position:52\nHighest Mark Obtained:181\nEnglish:(47/65) Math:(48/55) Bangla:(30/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(170, 1, 7, 92, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:173 Position:13\nHighest Mark Obtained:181\nEnglish:(53/65) Math:(54/55) Bangla:(33/40) General Knowledge:(33/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(171, 1, 7, 72, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:173 Position:14\nHighest Mark Obtained:181\nEnglish:(53/65) Math:(53/55) Bangla:(32/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(172, 1, 7, 84, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:168 Position:26\nHighest Mark Obtained:181\nEnglish:(54/65) Math:(53/55) Bangla:(32/40) General Knowledge:(29/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(173, 1, 7, 71, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:171 Position:18\nHighest Mark Obtained:181\nEnglish:(54/65) Math:(50/55) Bangla:(35/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(174, 1, 7, 17, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:166 Position:33\nHighest Mark Obtained:181\nEnglish:(49/65) Math:(50/55) Bangla:(33/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(175, 1, 7, 12, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:145 Position:72\nHighest Mark Obtained:181\nEnglish:(44/65) Math:(38/55) Bangla:(32/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(176, 1, 7, 15, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:167 Position:32\nHighest Mark Obtained:181\nEnglish:(50/65) Math:(53/55) Bangla:(33/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(177, 1, 7, 13, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:181 Position:1\nHighest Mark Obtained:181\nEnglish:(59/65) Math:(51/55) Bangla:(36/40) General Knowledge:(35/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(178, 1, 7, 11, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:179 Position:5\nHighest Mark Obtained:181\nEnglish:(61/65) Math:(51/55) Bangla:(30/40) General Knowledge:(37/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(179, 1, 7, 2, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:172 Position:15\nHighest Mark Obtained:181\nEnglish:(54/65) Math:(52/55) Bangla:(34/40) General Knowledge:(32/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(180, 1, 7, 1, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:148 Position:68\nHighest Mark Obtained:181\nEnglish:(38/65) Math:(47/55) Bangla:(30/40) General Knowledge:(33/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(181, 1, 7, 3, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:150 Position:66\nHighest Mark Obtained:181\nEnglish:(44/65) Math:(50/55) Bangla:(25/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(182, 1, 7, 4, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:177 Position:8\nHighest Mark Obtained:181\nEnglish:(55/65) Math:(55/55) Bangla:(33/40) General Knowledge:(34/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(183, 1, 7, 5, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:161 Position:41\nHighest Mark Obtained:181\nEnglish:(53/65) Math:(51/55) Bangla:(29/40) General Knowledge:(28/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(184, 1, 7, 6, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:144 Position:73\nHighest Mark Obtained:181\nEnglish:(43/65) Math:(48/55) Bangla:(27/40) General Knowledge:(26/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(185, 1, 7, 6, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:144 Position:73\nHighest Mark Obtained:181\nEnglish:(43/65) Math:(48/55) Bangla:(27/40) General Knowledge:(26/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(186, 1, 7, 7, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:133 Position:79\nHighest Mark Obtained:181\nEnglish:(40/65) Math:(42/55) Bangla:(26/40) General Knowledge:(25/40) ', 1, '2016-12-01', 0, '0000-00-00', 7),
(187, 1, 7, 9, 'Model Test 17 Held on:2016-11-25\nTotal Mark:200 Total Examinee:93\nObtained Mark:157 Position:51\nHighest Mark Obtained:181\nEnglish:(44/65) Math:(51/55) Bangla:(31/40) General Knowledge:(31/40) ', 1, '2016-12-01', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `SLIDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SLIDER_NAME` varchar(50) NOT NULL,
  `SLIDER_LINK` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`SLIDER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`SLIDER_ID`, `SLIDER_NAME`, `SLIDER_LINK`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(14, 'slider six', 'slider_6.jpg', 1, '2016-05-02', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE IF NOT EXISTS `sms_config` (
  `SMS_ID` int(11) NOT NULL,
  `SMS_USER` varchar(200) NOT NULL,
  `SMS_PASS` varchar(200) NOT NULL,
  `SMS_URL` varchar(350) NOT NULL,
  `SMS_HEADER_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`SMS_ID`, `SMS_USER`, `SMS_PASS`, `SMS_URL`, `SMS_HEADER_NAME`) VALUES
(1, 'base4', 'dvbd3214', 'http://api.bulksms.icombd.com/restapi/sms/1/text/single', 'Shikder');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `STAFF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STAFF_CARD_NO` varchar(20) NOT NULL,
  `STAFF_NAME` varchar(250) NOT NULL,
  `STAFF_BIRTHDAY` date NOT NULL,
  `DESIGNATION_ID` int(11) NOT NULL,
  `ADDRESS` text NOT NULL,
  `SEX` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE` varchar(50) NOT NULL,
  `IMAGES` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`STAFF_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`STAFF_ID`, `STAFF_CARD_NO`, `STAFF_NAME`, `STAFF_BIRTHDAY`, `DESIGNATION_ID`, `ADDRESS`, `SEX`, `EMAIL`, `PHONE`, `IMAGES`, `PASSWORD`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(3, '1234589', 'Anisur Rohman', '1990-07-01', 5, 'Dhaka, Bangladesh', 'Male', 'anisur@gmail.com', '017487548', '', '1234', 1, '2016-06-04', 1, '2016-07-20', 7),
(4, '7587589', 'Asadur Rohman', '1990-07-01', 6, 'Dhaka, Bangladesh', 'Male', 'asadur@gmail.com', '017458844', '', '1234', 1, '2016-06-05', 1, '2016-07-20', 7),
(5, '457454', 'Obaidul Islam', '1994-06-01', 5, 'Dhaka, Bangladesh', 'Male', 'obaidur@gmail.com', '01744724905', '', '123', 1, '2016-06-05', 1, '2016-07-20', 7),
(6, '45785', 'Rayhan Islam', '1990-07-01', 5, 'Dhaka, Bangldesh', 'Male', 'rayhan@gmail.com', '0174784757', 'Ploch-WiSys-Staff.jpg', '1234', 1, '2016-07-21', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE IF NOT EXISTS `student_data` (
  `STUDENT_DATA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` int(11) NOT NULL,
  `PUBLIC_ID` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ROLL_NO` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`STUDENT_DATA_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`STUDENT_DATA_ID`, `STUDENT_ID`, `PUBLIC_ID`, `YEAR`, `CLASS_ID`, `SECTION_ID`, `ROLL_NO`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 2016049, 2016, 1, 1, 49, 1, '2016-10-01', 0, '0000-00-00', 7),
(2, 2, 2016075, 2016, 1, 2, 75, 1, '2016-10-01', 0, '0000-00-00', 7),
(3, 4, 2016045, 2016, 1, 2, 45, 1, '2016-10-01', 0, '0000-00-00', 7),
(4, 5, 2016006, 2016, 1, 1, 6, 1, '2016-10-01', 0, '0000-00-00', 7),
(5, 6, 2016076, 2016, 1, 1, 76, 1, '2016-10-01', 0, '0000-00-00', 7),
(6, 7, 2016051, 2016, 1, 2, 51, 1, '2016-10-01', 0, '0000-00-00', 7),
(7, 8, 2016067, 2016, 1, 1, 67, 1, '2016-10-01', 0, '0000-00-00', 7),
(9, 11, 2016042, 2016, 1, 1, 42, 1, '2016-10-01', 0, '0000-00-00', 7),
(10, 13, 2016070, 2016, 1, 1, 70, 1, '2016-10-02', 0, '0000-00-00', 7),
(11, 14, 2016057, 2016, 1, 1, 57, 1, '2016-10-02', 0, '0000-00-00', 7),
(12, 15, 2016054, 2016, 1, 1, 54, 1, '2016-10-02', 0, '0000-00-00', 7),
(13, 16, 2016053, 2016, 1, 2, 53, 1, '2016-10-02', 1, '2016-10-06', 7),
(14, 17, 2016016, 2016, 1, 1, 16, 1, '2016-10-02', 0, '0000-00-00', 7),
(15, 18, 2016077, 2016, 1, 2, 77, 1, '2016-10-02', 0, '0000-00-00', 7),
(16, 19, 2016064, 2016, 1, 1, 64, 1, '2016-10-02', 0, '0000-00-00', 7),
(17, 20, 2016047, 2016, 1, 2, 47, 1, '2016-10-02', 0, '0000-00-00', 7),
(18, 21, 2016058, 2016, 1, 1, 58, 1, '2016-10-02', 0, '0000-00-00', 7),
(19, 23, 2016101, 2016, 1, 1, 101, 1, '2016-10-02', 0, '0000-00-00', 7),
(20, 24, 2016106, 2016, 1, 1, 106, 1, '2016-10-02', 0, '0000-00-00', 7),
(21, 25, 2016046, 2016, 1, 1, 46, 1, '2016-10-02', 0, '0000-00-00', 7),
(22, 26, 2016079, 2016, 1, 2, 79, 1, '2016-10-02', 0, '0000-00-00', 7),
(23, 27, 2016015, 2016, 1, 2, 15, 1, '2016-10-02', 0, '0000-00-00', 7),
(24, 28, 2016099, 2016, 1, 2, 99, 1, '2016-10-02', 0, '0000-00-00', 7),
(25, 29, 2016110, 2016, 1, 1, 110, 1, '2016-10-02', 0, '0000-00-00', 7),
(26, 30, 2016107, 2016, 1, 2, 107, 1, '2016-10-02', 0, '0000-00-00', 7),
(27, 31, 2016061, 2016, 1, 2, 61, 1, '2016-10-02', 0, '0000-00-00', 7),
(28, 32, 2016035, 2016, 1, 2, 35, 1, '2016-10-02', 0, '0000-00-00', 7),
(29, 33, 2016037, 2016, 1, 2, 37, 1, '2016-10-02', 0, '0000-00-00', 7),
(30, 34, 2016073, 2016, 1, 2, 73, 1, '2016-10-02', 0, '0000-00-00', 7),
(31, 35, 2016072, 2016, 1, 1, 72, 1, '2016-10-02', 0, '0000-00-00', 7),
(32, 36, 2016084, 2016, 1, 1, 84, 1, '2016-10-02', 0, '0000-00-00', 7),
(33, 37, 2016066, 2016, 1, 1, 66, 1, '2016-10-02', 0, '0000-00-00', 7),
(34, 38, 2016026, 2016, 1, 1, 26, 1, '2016-10-02', 0, '0000-00-00', 7),
(35, 39, 2016008, 2016, 1, 1, 8, 1, '2016-10-02', 0, '0000-00-00', 7),
(36, 40, 2016002, 2016, 1, 1, 2, 1, '2016-10-02', 0, '0000-00-00', 7),
(37, 41, 2016018, 2016, 1, 1, 18, 1, '2016-10-02', 0, '0000-00-00', 7),
(38, 42, 2016080, 2016, 1, 1, 80, 1, '2016-10-02', 0, '0000-00-00', 7),
(39, 43, 2016111, 2016, 1, 2, 111, 1, '2016-10-02', 0, '0000-00-00', 7),
(40, 44, 2016094, 2016, 1, 1, 94, 1, '2016-10-02', 0, '0000-00-00', 7),
(41, 46, 2016027, 2016, 1, 2, 27, 1, '2016-10-04', 0, '0000-00-00', 7),
(42, 47, 2016014, 2016, 1, 1, 14, 1, '2016-10-04', 0, '0000-00-00', 7),
(43, 48, 2016020, 2016, 1, 1, 20, 1, '2016-10-04', 0, '0000-00-00', 7),
(44, 49, 2016034, 2016, 1, 1, 34, 1, '2016-10-04', 0, '0000-00-00', 7),
(45, 50, 2016044, 2016, 1, 1, 44, 1, '2016-10-04', 0, '0000-00-00', 7),
(46, 51, 2016102, 2016, 1, 1, 102, 1, '2016-10-04', 0, '0000-00-00', 7),
(47, 52, 2016036, 2016, 1, 1, 36, 1, '2016-10-04', 0, '0000-00-00', 7),
(48, 53, 2016071, 2016, 1, 2, 71, 1, '2016-10-04', 0, '0000-00-00', 7),
(49, 54, 2016007, 2016, 1, 2, 7, 1, '2016-10-04', 0, '0000-00-00', 7),
(50, 55, 2016083, 2016, 1, 1, 83, 1, '2016-10-04', 0, '0000-00-00', 7),
(51, 56, 2016115, 2016, 1, 2, 115, 1, '2016-10-04', 0, '0000-00-00', 7),
(52, 57, 2016090, 2016, 1, 1, 90, 1, '2016-10-04', 0, '0000-00-00', 7),
(53, 58, 2016038, 2016, 1, 1, 38, 1, '2016-10-04', 0, '0000-00-00', 7),
(54, 59, 2016030, 2016, 1, 1, 30, 1, '2016-10-04', 0, '0000-00-00', 7),
(55, 60, 2016025, 2016, 1, 2, 25, 1, '2016-10-04', 0, '0000-00-00', 7),
(56, 61, 2016019, 2016, 1, 1, 19, 1, '2016-10-04', 0, '0000-00-00', 7),
(57, 62, 2016056, 2016, 1, 1, 56, 1, '2016-10-04', 0, '0000-00-00', 7),
(58, 63, 2016003, 2016, 1, 1, 3, 1, '2016-10-06', 0, '0000-00-00', 7),
(59, 64, 2016078, 2016, 1, 1, 78, 1, '2016-10-06', 0, '0000-00-00', 7),
(60, 65, 2016095, 2016, 1, 2, 95, 1, '2016-10-06', 0, '0000-00-00', 7),
(61, 66, 2016028, 2016, 1, 1, 28, 1, '2016-10-06', 0, '0000-00-00', 7),
(62, 67, 2016005, 2016, 1, 2, 5, 1, '2016-10-06', 0, '0000-00-00', 7),
(63, 68, 2016039, 2016, 1, 2, 39, 1, '2016-10-06', 0, '0000-00-00', 7),
(64, 69, 2016013, 2016, 1, 2, 13, 1, '2016-10-06', 0, '0000-00-00', 7),
(65, 70, 2016091, 2016, 1, 2, 91, 1, '2016-10-06', 0, '0000-00-00', 7),
(66, 71, 2016041, 2016, 1, 2, 41, 1, '2016-10-06', 0, '0000-00-00', 7),
(67, 72, 2016050, 2016, 1, 1, 50, 1, '2016-10-06', 0, '0000-00-00', 7),
(68, 73, 2016074, 2016, 1, 2, 74, 1, '2016-10-06', 0, '0000-00-00', 7),
(69, 74, 2016068, 2016, 1, 1, 68, 1, '2016-10-06', 0, '0000-00-00', 7),
(70, 75, 2016112, 2016, 1, 1, 112, 1, '2016-10-06', 0, '0000-00-00', 7),
(71, 76, 2016017, 2016, 1, 2, 17, 1, '2016-10-06', 1, '2016-11-01', 7),
(72, 77, 2016023, 2016, 1, 2, 23, 1, '2016-10-06', 0, '0000-00-00', 7),
(73, 78, 2016024, 2016, 1, 1, 24, 1, '2016-10-06', 0, '0000-00-00', 7),
(74, 79, 2016032, 2016, 1, 1, 32, 1, '2016-10-06', 0, '0000-00-00', 7),
(75, 80, 2016100, 2016, 1, 1, 100, 1, '2016-10-06', 0, '0000-00-00', 7),
(76, 81, 2016022, 2016, 1, 1, 22, 1, '2016-10-06', 0, '0000-00-00', 7),
(77, 82, 2016001, 2016, 1, 2, 1, 1, '2016-10-06', 0, '0000-00-00', 7),
(78, 83, 2016065, 2016, 1, 2, 65, 1, '2016-10-07', 0, '0000-00-00', 7),
(79, 84, 2016009, 2016, 1, 2, 9, 1, '2016-10-07', 1, '2016-10-20', 7),
(80, 85, 2016031, 2016, 1, 2, 31, 1, '2016-10-07', 0, '0000-00-00', 7),
(81, 86, 2016011, 2016, 1, 2, 11, 1, '2016-10-07', 0, '0000-00-00', 7),
(82, 87, 2016048, 2016, 1, 1, 48, 1, '2016-10-07', 0, '0000-00-00', 7),
(83, 88, 2016082, 2016, 1, 1, 82, 1, '2016-10-07', 0, '0000-00-00', 7),
(84, 89, 2016021, 2016, 1, 2, 21, 1, '2016-10-07', 0, '0000-00-00', 7),
(85, 90, 2016088, 2016, 1, 1, 88, 1, '2016-10-07', 0, '0000-00-00', 7),
(86, 91, 2016081, 2016, 1, 1, 81, 1, '2016-10-07', 0, '0000-00-00', 7),
(87, 92, 2016096, 2016, 1, 1, 96, 1, '2016-10-07', 0, '0000-00-00', 7),
(88, 93, 2016029, 2016, 1, 2, 29, 1, '2016-10-07', 0, '0000-00-00', 7),
(89, 94, 2016010, 2016, 1, 1, 10, 1, '2016-10-07', 0, '0000-00-00', 7),
(90, 95, 2016004, 2016, 1, 1, 4, 1, '2016-10-07', 0, '0000-00-00', 7),
(91, 96, 2016069, 2016, 1, 2, 69, 1, '2016-10-07', 0, '0000-00-00', 7),
(92, 97, 2016085, 2016, 1, 2, 85, 1, '2016-10-07', 0, '0000-00-00', 7),
(93, 98, 2016040, 2016, 1, 2, 40, 1, '2016-10-07', 1, '2016-10-12', 7),
(94, 99, 2016012, 2016, 1, 2, 12, 1, '2016-10-07', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  `BIRTHDAY` varchar(100) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `RELIGION` varchar(50) NOT NULL,
  `BLOOD_GROUP` varchar(20) NOT NULL,
  `AGE` int(11) NOT NULL,
  `ADDRESS` text NOT NULL,
  `PHONE` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `FATHER_NAME` varchar(100) NOT NULL,
  `MOTHER_NAME` varchar(100) NOT NULL,
  `PUBLIC_ID` int(11) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`STUDENT_ID`, `NAME`, `BIRTHDAY`, `GENDER`, `RELIGION`, `BLOOD_GROUP`, `AGE`, `ADDRESS`, `PHONE`, `EMAIL`, `FATHER_NAME`, `MOTHER_NAME`, `PUBLIC_ID`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Md. Niloy Talukder', '2005-01-20', 'Male', 'Islam', '0+', 11, 'Village:Maijbari\nP.O:Folthe\nP.S:Bhuapur\nDist:Tangail', '01773418530', '', 'Md.Ruhul Amin Talukder Suzon', 'Miss.Lipi', 2016049, 1, '2016-10-01', 1, '2016-10-09', 7),
(2, 'Md. Shahriar Shihab', '2005-10-25', 'Male', 'Islam', 'A+', 11, 'Kalihati,Tangail', '01718387043', '', 'Md. Abdul Latif', 'Shilpe Begum', 2016, 1, '2016-10-01', 1, '2016-10-09', 7),
(4, 'Md.Fahad Hossen', '2004-12-10', 'Male', 'Islam', 'B+', 11, 'Kutichiara,Tangail', '01916328947', '', 'M. Humaayun Kabir', 'Mrs. Foriya Yesmin', 2016, 1, '2016-10-01', 1, '2016-11-12', 7),
(5, 'Talha Jubayer Rafi', '2005-01-01', 'Male', 'Islam', 'A+', 12, '4/3 MN Road,Shantinagar,Ghatail ,Tangail', '01711961632', '', 'Saydur Rahman', 'Rehana Parvin', 2016, 1, '2016-10-01', 1, '2016-10-09', 7),
(6, 'Zareef Islam', '2004-08-31', 'Male', 'Islam', '0+', 12, '12 BK road,Banyan Khamar, Khulna', '01770190925', '', 'SM. Merazul Islam', 'Afsana Sadia', 2016, 1, '2016-10-01', 1, '2016-10-09', 7),
(7, 'Md.Samsul Haque Shishir', '2005-07-27', 'Male', 'Islam', '0+', 11, 'Kamdebari,Shajahanpur,Gopalpur,Tangail', '01709062588', '', 'Md. Sanower Hossen', 'Sammy Akter (Sumi)', 2016, 1, '2016-10-01', 0, '0000-00-00', 7),
(8, 'Md. Rukonzzaman (Rased)', '2006-09-11', 'Male', 'Islam', 'A+', 10, 'Chalkshumnagar (Meherpur)', '01735742520', '', 'Miarul Islam', 'Chumki Akter', 2016, 1, '2016-10-01', 0, '0000-00-00', 7),
(11, 'Md. Rifat Hossen', '2005-12-01', 'Male', 'Islam', '0+', 11, 'Dopajahani', '01745220285', '', 'Md. Rafiqul Islam', 'Mrs.Nurjahan', 2016, 1, '2016-10-01', 0, '0000-00-00', 7),
(13, 'Md.Tauhidur Rahman', '2005-10-28', 'Male', 'Islam', '0+', 11, 'Charbirshigh,Panctikari,Ghatail,Tangail', '01719960904', '', 'Abdul Momen', 'Nazma khatun', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(14, 'Md.Rafiul Islam Khan', '2005-01-01', 'Male', 'Islam', 'AB+', 12, 'Bhuapur', '01724360585', '', 'Md. Shahiduzzaman Khan', 'Ratna Zaman', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(15, 'Nadia Israt', '2005-11-06', 'Female', 'Islam', '0+', 11, 'Purbasinda,Kusturipara,Kalihati ,Tangail', '01712345602', '', 'Md. Nazrul Islam', 'Bilkis Akter', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(16, 'Tasmia Rahman', '2005-03-10', 'Female', 'Islam', 'B+', 11, 'Kusturipara,Kalihati, Tangail', '01712298141', '', 'Arifur Rahman Sikder', 'Rina Akter', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(17, 'K.H.Zobayed Zaman', '2004-12-17', 'Male', '12', '0+', 12, 'Avungi,Gupalpur,Tangail', '01712408163', '', 'Md.Rezaul Karim', 'Jobyda Khondokar', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(18, 'Afrin Jannat', '2005-12-27', 'Female', 'Islam', 'A+', 11, 'Chanpur Road,Kaimakanda,Netrokona', '01914571885', '', 'Md. Bazlur Rahman', 'Hosne Ara Khatun', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(19, 'Md. Shahariyer Islam Siyam', '2005-11-04', 'Male', 'Islam', '0+', 11, 'Monohara,Athail Shimul,Ghatail,Tangail', '01922840810', '', 'Md.Aminul Islam', 'Bilkis', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(20, 'Sarowar Hossain', '2005-06-25', 'Male', 'Islam', 'B+', 11, 'Nirchintapur, Kalihati', '01718360003', '', 'Shahadat  Hossen', 'Laily Begum', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(21, 'Sumaya Akter Sumi', '2005-08-18', 'Female', 'Islam', 'B+', 11, 'Charkoshonda,Ghior,Manikgonj', '01867879184', '', 'Md.Abdul Kader', 'Hasina Begum', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(23, 'Md. Nahiduzzaman (Noman)', '2005-12-06', 'Male', 'Islam', 'B+', 11, 'Kamarpukur,Sayidpur,Nilfamare', '01712515758', '', 'Md.Ziaur Rahman', 'Habia Akter(Bathu)', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(24, 'Al-Arafat Radib', '2005-05-31', 'Male', 'Islam', '0+', 11, 'Miarbazar,Choddogram,Jamburra,Jamalpur', '01715850780', '', 'Abdur Razzak', 'Bilkis Akter', 2016, 1, '2016-10-02', 1, '2016-10-09', 7),
(25, 'Sajib Chandra Bormon', '2005-01-10', 'Male', 'Islam', 'B+', 11, 'Zharka,Banikatra,Ghatail,Tangail', '01777069612', '', 'Suivil chandra Bormon', 'Bobita Riny', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(26, 'Marzia Rahman Promi', '2005-04-29', 'Female', 'Islam', 'A+', 11, 'Batterghati,Mohongonj,Netrokona', '01741269651', '', 'Md.Mizanur Rahman', 'Maksuda rahman Mita', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(27, 'Raiyan Zaman Khan', '2004-12-20', 'Male', 'Islam', 'B+', 12, 'Ghatai Dakkhin Para,Ghatail', '01614548684', '', 'Md. Akhiruzzaman Khan', 'Nahida Naznin', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(28, 'Md. Salehin Fardin', '2004-09-20', 'Male', 'Islam', '0+', 12, 'Islampara,Gosherchor,Gopalgonj', '01736199028', '', 'Md. Kamrul Islam', 'Mrs.Nazmun Nahar', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(29, 'Talha Ibne Firoz', '2005-08-28', 'Male', 'Islam', 'A+', 11, 'Rouha,Mohonpur,Ghatail,Tangail', '01716359957', '', 'Md. Firoz Ali Khan', 'Fahima Easmin', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(30, 'Md. Jahid Hasan (Sayem)', '2004-03-11', 'Male', 'Islam', 'B+', 12, 'Jayda,Raniganj,Trishal', '01780560161', '', 'Md.Abdul Jalil', 'Mrs.Ashia khatun', 2016, 1, '2016-10-02', 1, '2016-11-12', 7),
(31, 'Salman Kadir Niloy', '2005-08-01', 'Male', 'Islam', 'B+', 11, 'Dopajani,Ghatail,Tangail', '01712179032', '', 'Md.Raju Ahmed', 'Nurunnahar', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(32, 'Debangshu Bhadra', '2006-11-11', 'Male', 'hindu', 'B+', 10, 'Pakutia,Ghatail,Tangail', '01789885462', '', 'Deboebon Bhadra', 'Kanika Badra', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(33, 'Md.NAzmul Hasan (Manik)', '1970-01-01', 'Male', 'Islam', 'B+', 11, 'Bir Ghatail', '01716525504', '', 'Md.Raihan Uddin', 'Nazma Akter', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(34, 'Md.Abu Bakar Siddik Udoy', '2005-03-21', 'Male', 'Islam', 'A+', 11, 'Addiot para,Modhupur', '01713562474', '', 'Md. Mohir Uddin', 'Usha Akter', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(35, 'All Mahmud Hassan (Sanik)', '2005-07-06', 'Male', 'Islam', '0+', 11, 'East Khukhsia,Tarakan,Kazipur,Sirajganj', '01721590890', '', 'Md.Zahidul Islam', 'Mrs.Maksuda Khatun', 2016, 1, '2016-10-02', 1, '2016-10-23', 7),
(36, 'Mosabbin Islam Mahin', '2006-01-01', 'Male', 'Islam', 'B+', 10, 'Monohara,Athail Shimul,Ghatail,Tangail', '0177020644', '', 'Ma,Ferdous Akter', 'Miss.Fatama Aakter', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(37, 'Sumia Akter Akhi', '2004-10-09', 'Female', 'Islam', 'A+', 12, 'Koloha,Porabari,Ghatail,Tangail', '01732417084', '', 'Md.Arshed Ali', 'Monowara Begum', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(38, 'Md.Atif Abrar Sayed', '2004-02-15', 'Male', 'Islam', 'B+', 12, 'Coyra,Jamalpur,Madarganj', '01712700099', '', 'Md.Sayed Hasan', 'Azadi Afroz (Shimu)', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(39, 'Md.Ashraful Islam (Tusher)', '2005-05-13', 'Male', 'Islam', 'B+', 11, 'Parail,ChorGhaghra ,Mymensing', '01731930975', '', 'Md.Saiful Islam', 'Mrs.ferdousi Begum', 2016, 1, '2016-10-02', 1, '2016-11-12', 7),
(40, 'Md.Redouan islam (Reyan)', '2005-09-07', 'Male', 'Islam', 'B+', 11, 'Jamuriya,Karimpur,Ghatail,Tangail', '01724303427', '', 'Md.Rafiqul Islam', 'Kazi Nihar (Rema)', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(41, 'Md.Shohaib Hossain Sadi', '2005-12-15', 'Male', 'Islam', 'B+', 11, 'Kumarpara,Ghatail,Tangail', '01719223003', '', 'Md.Mosharof Hossain', 'Mrs.Shome Talukder', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(42, 'Mahmudul Hasan Apul', '2005-07-17', 'Male', 'Islam', 'A+', 11, 'Nayapara,Modhupur,Tangail', '01760516697', '', 'Md.Abdul Kader', 'Monira Begum', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(43, 'Sabikunnaher', '2025-07-25', 'Female', 'Islam', 'B+', 11, 'Sharifpur,Mirzapur,Gupalpur,Tangail', '01719335675', '', 'Mohammad Abdus Sattaer', 'Asma Khatun', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(44, 'Kanig Fatema Eshita', '2005-11-20', 'Female', 'Islam', 'B+', 11, 'Judopur,Burichong,Comilla', '01722958134', '', 'Abul Kalam Azad', 'Mst.Shamsunnahar', 2016, 1, '2016-10-02', 0, '0000-00-00', 7),
(46, 'Yasir Abrar Siyam', '2005-08-23', 'Male', 'Islam', '0+', 11, 'Madhupur,Tangail', '01953253666', '', 'Iqbal Ahmed', 'Suriya Shahanaz', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(47, 'Sajjad Ahmed Sabbir', '2005-05-22', 'Male', 'Islam', '0+', 11, 'Konabari,Gala, Ghatail,Tangail', '01723906969', '', 'Shofiul Alam', 'Airin Sultana', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(48, 'Fahim Hasan', '2005-10-28', 'Male', 'Islam', 'B+', 11, 'Shekhshimul,Kadamtoli,Ghatail,Tangail', '01724012205', '', 'Mohammad Anowar Hosen', 'Bithi', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(49, 'Tanvir Ahmed Sadib', '2006-01-01', 'Male', 'Islam', '0+', 10, 'Bhuapur,Tangail', '01780291105', '', 'Mohammad Shafiqul Islam', 'Shaheda Begum', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(50, 'Md.Asraful Islam Shanto', '2004-01-01', 'Male', 'Islam', 'AB+', 12, 'Kolaha', '01736418131', '', 'Bablu Miah', 'Momota Begum', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(51, 'Md.Khalid Hasan', '2006-06-11', 'Male', 'Islam', 'A+', 10, 'Noorpur,Boliabari,Singra,Natore', '01715673380', '', 'Md.Hayet Ali Shaikh', 'Miss Khadiza', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(52, 'Asibul Hasan (Shoref)', '2005-03-23', 'Male', 'Islam', 'B+', 11, 'Comilla,Patura', '01712968089', '', 'Md.Shajahan', 'Mst.Sovra Yeasmin', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(53, 'Md.Atik Hasan', '2005-02-07', 'Male', 'Islam', '0+', 11, 'Ghatail,Tangail', '01732167937', '', 'Md.Abdul Kader Hossen Dabi', 'Mst.Selina Begum', 2016, 1, '2016-10-04', 1, '2016-11-12', 7),
(54, 'Rakibul Hasan Sajib', '2005-09-09', 'Male', 'Islam', 'A+', 11, 'Kandi,Chowgacha,Jossore', '01715754227', '', 'Md.Abdul Latif', 'Mrs.Selina Khatun', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(55, 'Zafril ayed Pranto', '2005-07-11', 'Male', 'Islam', 'B+', 11, 'Shekh shimul,Kodomtoli,Ghatail,Tangail', '01726441563', '', 'Md.Muzammel Haque', 'Mrs.Zerin Akter', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(56, 'Md.Ahad Siddique (Apon)', '2005-06-25', 'Male', 'Islam', '0+', 11, 'Akshia', '01711077633', '', 'Abdul Halim Siddique', 'Asma Siddika', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(57, 'Tanvir Hassan Bulbul', '2004-10-01', 'Male', 'Islam', 'B+', 12, 'Kadomtoli,Dabuir,Ghatail,Tangail', '01625104746', '', 'Md.Anisur Rahman Babul', 'Miss.Tahmina Akter Lipy', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(58, 'Mostafizur Rahman Limon', '2004-09-15', 'Male', 'Islam', '0+', 12, 'sujraban,Khatlal,Joypurhat', '01714566636', '', 'Mahfuzar Rahman', 'Mohsina Khanam', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(59, 'Ratul Khandakar', '2005-01-01', 'Male', 'Islam', 'B+', 11, 'Bamanhata,Bhuyapur,Tangail', '01711945441', '', 'Kamrul Islam', 'Lipy Begum', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(60, 'Md.Maruf Billah', '2005-09-17', 'Male', 'Islam', '0+', 11, 'Sabujbag,Ghtail,Tangail', '01752071331', '', 'Md.Dulal Mia', 'Maksuda Begum', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(61, 'Mst.Habiba Hasan Heme', '2005-08-18', 'Female', 'Islam', '0+', 11, 'Kandulia,Karimpur,Ghatail,Tangail', '01721165447', '', 'Md,Hafizur Rahman', 'Mst,Rajia Sulta', 2147483647, 1, '2016-10-04', 0, '0000-00-00', 7),
(62, 'Muktadir Jamil Khan', '2005-01-04', 'Male', 'Islam', 'A+', 11, 'Ghatmajhi,Madaripur', '01716043201', '', 'SWO Md.Salim Khan', 'Tyaba Kamrun Nur', 2016, 1, '2016-10-04', 0, '0000-00-00', 7),
(63, 'Noushin Tabassum Usha', '2005-03-01', 'Female', 'Islam', 'A+', 11, 'Tengri,Modhupur,Tangail', '01716625229', '', 'Md.Sohel Rana', 'Mst.Shirina Sultana', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(64, 'Faria Sultana', '2006-05-22', 'Female', 'Islam', '0+', 10, 'Podipara,Sunaimuru,Noakhali', '01720602674', '', 'Md.Imam Hasan', 'Mrs.Rasheda Sultana', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(65, 'Rifat Siddique Rifat', '2005-07-09', 'Male', 'Islam', 'AB+', 11, 'Main road,Ghatail', '01715133194', '', 'Md.Nuruzzaman Siddique', 'Farzana Akter Rita', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(66, 'Md.Mahmudul Hasan', '2005-11-17', 'Male', 'Islam', 'AB+', 11, '17/3 Main road,Shantinagar,Ghatail,Tangail', '01716832100', '', 'Md.Gulam Mostafa', 'Hosne Ara', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(67, 'Fabia Bushra Badhan', '2005-12-12', 'Female', 'Islam', 'B+', 11, 'Ghatail South para', '01712572704', '', 'Md.Aminur Rahman Khan', 'Runa Laila', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(68, 'Mahfuza Khandoker', '2005-04-16', 'Female', 'Islam', '0+', 11, 'Ghatail,Tangail', '01716271177', '', 'Khandokar Mashiur Rahman', 'Mosa. Rina Rahman', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(69, 'Ishita Zahan Erin', '2005-03-16', 'Female', 'Islam', '0+', 11, 'Collage Road,Ghatail', '01731829494', '', 'Md.Abdul Hamid', 'Shilpy Begum', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(70, 'Sarowar Ahmed Shamim', '2004-01-15', 'Male', 'Islam', '0+', 12, 'Raniganj,Trishal,Mymensingh', '01780560161', '', 'Moklesur Rahman', 'Kamrunnahar', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(71, 'Usha Ebne Atik', '2005-12-25', 'Male', 'Islam', '0+', 11, 'Gourangi,Ghatail', '01792097129', '', 'Atikur Rahman', 'Easmin Talukder', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(72, 'Akif Sawant Hossain', '2005-11-13', 'Male', 'Islam', 'B+', 11, 'Chapai-Nawabganj', '01716645795', '', 'Md.Mosharrof Hossain', 'Mds.Alema Khatun', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(73, 'Md.Arafat Zaman (Junaid)', '2005-09-01', 'Male', 'Islam', 'B+', 11, 'Zawdanga,Taratia Bazar,Dewanganj,Jamalpur', '01724177627', '', 'Md.Abdus Salam', 'Mrs.Jesmin Zaman', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(74, 'Nishad Farzana', '2006-02-15', 'Female', 'Islam', 'AB+', 10, 'Bera ,Holdia,Saghata,Gaibandha', '01725233768', '', 'Harun-OR-Rashid', 'Jesmin Akhter', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(75, 'Tanjila Tithi Adhora', '2004-08-14', 'Female', 'Islam', 'A+', 12, 'Collegemore,Ghatail', '01673900371', '', 'Zakir Hasan', 'Tanjina Piash', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(76, 'Sumaia Farzana Sumi', '2005-03-31', 'Female', 'Islam', '0+', 11, 'Shiberpara,Deopara,Ghatail,Tangail', '01715943555', '', 'Md.Shaha Juddin', 'Mst.Salma Akter', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(77, 'Misbah-Ul-Hasan', '2005-11-15', 'Male', 'Islam', 'B+', 11, 'Madhabozra,Bozrahat,Ulipur,Kurigram', '01776002406', '', 'Md.Abul Basar', 'Mst.Gole Jahan', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(78, 'Md.Sifullah Walide Sifat', '2005-08-30', 'Male', 'Islam', 'A+', 11, 'Dhalapara,Ghatail,Tangail', '01732937094', '', 'Md.Ansar Ali', 'Shilpy Akter', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(79, 'Md.Rabby Al Fahad (Apon)', '2005-10-27', 'Male', 'Islam', 'AB+', 11, 'Bhuyapur,Tangail', '01984272018', '', 'Abu Bakar Siddik', 'Kohinur Begum', 2016, 1, '2016-10-06', 1, '2016-11-12', 7),
(80, 'Read Hasan', '2005-10-01', 'Male', 'Islam', '0+', 11, 'Birchare,Jahidganj ,Ghatail,Tangail', '01738292004', '', 'Md.Sadeque raza', 'Rashida Akter', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(81, 'Atiqur Rahman', '2004-04-22', 'Male', 'Islam', 'AB+', 12, 'Moddho Mondia,falda,Gopalpur', '01713509589', '', 'Md.Arif Hossain', 'Ms.Sabina Yesmin', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(82, 'Naim Joadder', '2005-12-31', 'Male', 'Islam', 'AB+', 11, 'Boali,Modhupur,,Tangail', '01712695634', '', 'Md.Nazim Uddin', 'Mrs.Atia Sultana', 2016, 1, '2016-10-06', 0, '0000-00-00', 7),
(83, 'MD.Tawhidul Islam', '2005-11-16', 'Male', 'Islam', 'B+', 11, 'Dhalapara ,Ghatail,Tangail', '01770316702', '', 'Md.Sirajul Islam', 'Mst.Ruma Akter', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(84, 'Hamim Jawad Shikder', '2005-02-01', 'Male', 'Islam', 'A+', 11, 'Jarka,Ghatail,Tangail', '01711702635', '', 'Md.Shajahan Shikder', 'Nelufa Sarkar', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(85, 'Tania Akter Mukta', '2005-09-17', 'Female', 'Islam', 'A-', 11, 'Morjai,Patpura,Norshingdi', '01710669513', '', 'Md.Mobarak Hossain', 'Rahela Begum', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(86, 'Ahmed Imtiaz Alim', '2005-06-01', 'Male', 'Islam', '0+', 11, 'Shotabaria,Galachipa,Patuakhali', '01720410582', '', 'Md.Alamgir Hossain', 'Momena Khanom', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(87, 'Joairia Islam', '2004-02-14', 'Female', 'Islam', '0+', 12, 'Kojishohor,Joypurhat', '01756051628', '', 'Sarjent Rashedul Islam', 'Ayesha Siddiqua', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(88, 'Jannatul Diba', '2005-02-15', 'Female', 'Islam', 'A+', 11, 'Shantinagar,Ghatail', '01712175119', '', 'Abdus Salim', 'Morshada Akter', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(89, 'Mobasshira Mou', '2005-05-31', 'Female', 'Islam', '0+', 11, 'Dighopalpur,Tangail', '01718915354', '', 'Md.Abdqueul Male', 'Shahida Sultana', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(90, 'Sadia Akter Rakty', '2004-07-29', 'Female', 'Islam', 'B+', 12, 'Ghatail,Tangail', '01748547204', '', 'Ramzan', 'Khaleda', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(91, 'Abida Awwal Ava', '2005-11-27', 'Female', 'Islam', 'B+', 11, 'Joynabari,Ghatail,Tangail', '01731901965', '', 'Abdul Awwal', 'Fatema Khatun', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(92, 'Md.Mehedi Hasan', '2005-04-16', 'Male', 'Islam', 'B+', 11, 'Beldha,Ghatail,Tangail', '01718700655', '', 'Md.Saiful Islam (Milon)', 'Mst.Hasina Akter', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(93, 'Kazi Golam Shahariar', '2005-06-10', 'Male', 'Islam', 'B+', 11, 'Dattagram,Ghatail,Tangail', '01725541153', '', 'Kazi Fazlul Haqe', 'Salina Haqe', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(94, 'Israt Jahan Afrin', '2004-09-09', 'Female', 'Islam', 'B+', 12, 'Padmapur,Jamalpur', '01741292505', '', 'Shohidul Islam', 'Salma Begum', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(95, 'Nazmul Sakib Jisun', '2003-08-11', 'Male', 'Islam', 'B+', 13, 'Tarobaria,Ghatail', '01739761464', '', 'Jahurul Islam', 'Nazly Begum', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(96, 'Sadia Akter Methila', '2005-11-24', 'Female', 'Islam', 'A+', 11, 'Holdia,Shagatia,Gaibanda', '01716025771', '', 'Md.Mohidul Islam', 'Monoara Lipe', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(97, 'Md.Sajid-Bin-Abir (Anik)', '2006-01-01', 'Male', 'Islam', '0+', 10, 'Shataripara,Bokshiganj,Jamalpur', '01726024171', '', 'Md.Abdul Awal', 'Mrs.Shahana Pervin', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(98, 'Sanjida Jahan Mim', '2005-02-25', 'Female', 'Islam', 'AB+', 11, 'Serirampur,Patuakhali', '01731545258', '', 'Abdur Rahman', 'Tamanna Akter', 2016, 1, '2016-10-07', 0, '0000-00-00', 7),
(99, 'Md.Sakibul Islam', '2004-09-03', 'Male', 'Islam', 'AB+', 12, 'Modanagar,Raipura,Narsingdi', '01867051219', '', 'Md.Sadekul Islam', 'Mrs.Sahida Akter Poli', 2016, 1, '2016-10-07', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_category` (
  `SUB_CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_ID` int(11) NOT NULL,
  `SUB_CATEGORY_NAME` varchar(50) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`SUB_CATEGORY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`SUB_CATEGORY_ID`, `CAT_ID`, `SUB_CATEGORY_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 8, 'Sports', 1, '2016-07-24', 0, '0000-00-00', 7),
(2, 8, 'Independence Day', 1, '2016-07-24', 0, '0000-00-00', 7),
(3, 8, 'International Mother Language Day', 1, '2016-07-24', 0, '0000-00-00', 7),
(4, 9, 'Syllabus', 1, '2016-08-22', 0, '0000-00-00', 7),
(5, 9, 'Admission', 1, '2016-08-22', 0, '0000-00-00', 7),
(6, 9, 'TC', 1, '2016-08-23', 0, '0000-00-00', 7),
(7, 9, 'Online Education', 1, '2016-08-23', 0, '0000-00-00', 7),
(8, 10, 'Musice', 1, '2016-09-07', 0, '0000-00-00', 7),
(9, 10, 'FAREWELL', 1, '2016-09-07', 0, '0000-00-00', 7),
(10, 10, 'Class', 1, '2016-09-07', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_category`
--

CREATE TABLE IF NOT EXISTS `sub_sub_category` (
  `SUB_SUB_CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUB_CATEGORY_ID` int(11) NOT NULL,
  `SUB_SUB_CATEGORY_NAME` varchar(50) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`SUB_SUB_CATEGORY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `sub_sub_category`
--

INSERT INTO `sub_sub_category` (`SUB_SUB_CATEGORY_ID`, `SUB_CATEGORY_ID`, `SUB_SUB_CATEGORY_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(2, 15, 'Academy', 1, '2016-05-23', 0, '0000-00-00', 7),
(3, 15, 'Mission &amp; Vision', 1, '2016-05-23', 0, '0000-00-00', 7),
(4, 15, 'Our Values', 1, '2016-05-23', 0, '0000-00-00', 7),
(5, 16, 'Training One', 1, '2016-05-23', 0, '0000-00-00', 7),
(6, 16, 'Training Two', 1, '2016-05-23', 0, '0000-00-00', 7),
(9, 15, 'Faculty Members', 1, '2016-05-26', 0, '0000-00-00', 7),
(10, 15, 'Citizen Charter', 1, '2016-05-26', 0, '0000-00-00', 7),
(11, 20, 'Course 01', 1, '2016-05-31', 0, '0000-00-00', 7),
(12, 4, 'Class Vi', 1, '2016-08-22', 0, '0000-00-00', 7),
(13, 4, 'Class Vii', 1, '2016-08-22', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJECT_NAME` varchar(300) CHARACTER SET latin1 NOT NULL,
  `CLASS_ID` int(11) NOT NULL,
  `OPTIONAL` tinyint(1) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`SUBJECT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJECT_ID`, `SUBJECT_NAME`, `CLASS_ID`, `OPTIONAL`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'English', 1, 0, 1, '2016-09-28', 0, '0000-00-00', 7),
(2, 'Bangla', 1, 0, 1, '2016-09-28', 0, '0000-00-00', 7),
(3, 'Math', 1, 0, 1, '2016-09-28', 0, '0000-00-00', 7),
(4, 'General Knowledge', 1, 0, 1, '2016-09-28', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `TEACHER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEACHER_NAME` varchar(150) CHARACTER SET utf8 NOT NULL,
  `TEACHER_BIRTHDAY` date NOT NULL,
  `DESIGNATION_ID` int(11) NOT NULL,
  `TEACHER_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GENDER` varchar(15) CHARACTER SET utf8 NOT NULL,
  `RELIGION` varchar(150) CHARACTER SET utf8 NOT NULL,
  `BLOOD_GROUP` varchar(5) CHARACTER SET utf8 NOT NULL,
  `PRESENT_ADDRESS` text CHARACTER SET utf8 NOT NULL,
  `PERMANENT_ADDRESS` text COLLATE utf8_unicode_ci NOT NULL,
  `VOTER_ID` varchar(30) CHARACTER SET utf8 NOT NULL,
  `PHONE` varchar(30) CHARACTER SET utf8 NOT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8 NOT NULL,
  `EDUCATIONAL_BACK` text COLLATE utf8_unicode_ci NOT NULL,
  `IMAGES` varchar(200) CHARACTER SET utf8 NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`TEACHER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`TEACHER_ID`, `TEACHER_NAME`, `TEACHER_BIRTHDAY`, `DESIGNATION_ID`, `TEACHER_TYPE`, `GENDER`, `RELIGION`, `BLOOD_GROUP`, `PRESENT_ADDRESS`, `PERMANENT_ADDRESS`, `VOTER_ID`, `PHONE`, `EMAIL`, `EDUCATIONAL_BACK`, `IMAGES`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Bijoy Kumar Roy', '2016-06-06', 1, 'Senior_section', 'Male', 'Hindu', 'O+', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', '7857544578', '01727743522', 'bijoykumar@gmail.com', 'SSC, HSC, MS', '', 1, '2016-06-06', 1, '2016-08-08', 7),
(2, 'Afroza Akter', '2016-06-01', 2, 'Senior_section', 'Female', 'Islam', 'O+', 'sdfvsdgvdfg', 'fvdfbghed', '3464567547yy', '+8801912871203', 'afroza@hotmail.com', 'sdbgvdfhbfghn', 'Lisa-Villarreal.jpg', 1, '2016-06-01', 1, '2016-07-21', 7),
(3, 'Harizur Rahman', '2016-06-14', 2, 'Senior_section', 'Male', 'Islam', 'A-', 'Comilla', 'Comilla', '7857438956438956439', '02915738', 'hariz@gmail.com', 'Graduated', 'Jellyfish.jpg', 1, '2016-06-19', 0, '0000-00-00', 7),
(4, 'Khaja Hossian', '2016-06-05', 3, 'Senior_section', 'Male', 'Islam', 'A+', 'Comilla', 'Lakshlam', '658465438654848', '02975123', 'khaza@ymail.com', 'Graduated', 'Desert.jpg', 1, '2016-06-19', 0, '0000-00-00', 7),
(5, 'MIzanur Rahman', '2000-07-01', 3, 'Senior_section', 'Male', 'Islam', 'B+', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', '54852598578', '017484588', 'mizanur@gmail.com', 'SSC, HSC, Ms', 'math for secondary school.jpg', 1, '2016-07-21', 0, '0000-00-00', 7),
(6, 'Sabrina Akhter', '2000-07-01', 3, 'Junior_section', 'Female', '', 'O+', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', '78874458', '0174784757', 'sabiran@gmail.com', 'SSC, HSC, MS', '', 1, '2016-07-21', 1, '2016-07-21', 7),
(7, 'Mehzabin Akhter', '1990-07-21', 3, 'Junior_section', 'Female', 'Islam', 'O-', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', '1788758', '017487548', 'mehzabin@gmail.com', 'SSC, HSC, MS', 'highschoolteacher.jpg', 1, '2016-07-21', 0, '0000-00-00', 7),
(8, 'Rezaul Islam', '1990-07-21', 6, 'Junior_section', 'Male', 'Islam', 'B+', 'Dhaka, Bangladesh', 'Dhaka, Banladesh', '84775578', '017848785', 'rezaul@gmail.com', 'SSC, HSC, MA', '', 1, '2016-07-21', 1, '2016-08-22', 7),
(9, 'Mahmuda Akhter', '1990-07-21', 3, 'Senior_section', 'Female', 'Islam', 'O+', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', '201648877', '017848585', 'mahmuda@gmail.com', 'SSC, HSC, MA', 'b71d3a075ec99b64d77eef5de49f88ac.jpeg', 1, '2016-07-21', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `TEACHER_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_EMAIL` varchar(50) NOT NULL,
  `USER_PHONE` varchar(50) NOT NULL,
  `USER_TYPE` varchar(50) NOT NULL,
  `USER_PASSWORD` varchar(50) NOT NULL,
  `USER_PASSWORD_HISTORY` varchar(250) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL COMMENT '1=active | -1=inactive',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `ROLE_ID`, `COMPANY_ID`, `STUDENT_ID`, `TEACHER_ID`, `PARENT_ID`, `USER_NAME`, `USER_EMAIL`, `USER_PHONE`, `USER_TYPE`, `USER_PASSWORD`, `USER_PASSWORD_HISTORY`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 0, 0, 0, 0, 0, 'Admin', 'admin@base4.com', '', 'admin', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', NULL, 1, '2015-09-16 11:12:13', 1, '2016-12-11 07:03:39', 9),
(4, 3, NULL, 0, 0, 0, 'mh', 'developer.mh.me@gmail.com', '+8801722432578', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', 'Ki6tIkfo7hfTTVmvPsu-ZWwv-qSZKw2i5OPaErEWAF0%2C', 1, '2016-06-22 05:58:45', NULL, '2016-06-22 05:59:23', 7),
(5, 2, NULL, 1, 0, 0, 'Eric Abidal', 'abidal@hotmail.com', '+8801919228690', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', NULL, 1, '2016-07-12 05:04:58', NULL, NULL, 6),
(6, 4, NULL, 2, 0, 0, 'Nayim Khondokar', 'student@base4.com', '+8801733180725', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', 'Ki6tIkfo7hfTTVmvPsu-ZWwv-qSZKw2i5OPaErEWAF0%2C', 1, '2016-07-12 05:08:02', NULL, '2016-07-12 05:09:24', 7),
(7, 5, NULL, 0, 1, 0, 'Bijoy Kumar Roy', 'teacher@base4.com', '01727743522', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', 'MHOmrGVmfGwS1B-CO3YWyY6JwBHx_trqYr4m7pBMVPQ%2C', 1, '2016-07-13 05:11:27', NULL, '2016-07-13 05:14:32', 7),
(8, 6, NULL, 2, 0, 2, 'Cristiano Coman', 'parents@base4.com', '01744724905', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', 'MHOmrGVmfGwS1B-CO3YWyY6JwBHx_trqYr4m7pBMVPQ%2C', 1, '2016-07-13 06:17:31', NULL, '2016-07-13 06:20:27', 7),
(9, 7, NULL, 0, 0, 0, 'Admin', 'admin@base4bd.com', '', 'admin', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', NULL, 1, '2016-07-11 00:00:00', 9, '2016-08-13 06:02:46', 7),
(10, 4, NULL, 9, 0, 0, 'Adnan Sami', 'adnansami@gmail.com', '019864588', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', NULL, 1, '2016-07-28 06:37:51', NULL, NULL, 7),
(11, 4, NULL, 0, 0, 0, 'test student', 'tareq07@gmail.com', '01922606668', '', 'r0mLFHHndlUJcOn9mlbcScfqoro6Muo4woj8vFBABXQ', 'r0mLFHHndlUJcOn9mlbcScfqoro6Muo4woj8vFBABXQ', 1, '2016-11-12 01:43:33', NULL, '2016-11-12 01:51:04', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `MOBILE` varchar(50) NOT NULL,
  `SUBJECT` varchar(150) NOT NULL,
  `MESSAGE` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`ID`, `NAME`, `EMAIL`, `MOBILE`, `SUBJECT`, `MESSAGE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Ami', 'ami@gmail.com', '0174857445', 'Test', 'Hello', 0, '2016-07-14', 0, '0000-00-00', 7),
(2, 'Abul Kasem', 'abulkasem@gmail.com', '017485458', 'Exam', 'Hello', 0, '2016-07-14', 0, '0000-00-00', 7),
(3, 'Rayhan', 'rayhan@gmail.com', '0', 'test', 'Hi, Dear', 0, '2016-08-16', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `VIDEO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CAT_ID` int(11) NOT NULL,
  `SUB_CAT_ID` int(11) NOT NULL,
  `CAPTION` varchar(200) NOT NULL,
  `EMBED_CODE` text NOT NULL,
  `DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL,
  PRIMARY KEY (`VIDEO_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`VIDEO_ID`, `CAT_ID`, `SUB_CAT_ID`, `CAPTION`, `EMBED_CODE`, `DETAILS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 10, 8, 'BCS Tax Video', 'https://www.youtube.com/embed/lbZiatgQ9uU', 'my video', 1, '2016-05-20', 1, '2016-09-07', 7),
(2, 10, 8, 'musice', 'https://www.youtube.com/embed/QU_vQb7jxKA', 'https://www.youtube.com/embed/QU_vQb7jxKA', 1, '2016-09-07', 0, '0000-00-00', 7),
(3, 10, 9, 'Farewell', 'https://www.youtube.com/embed/GAG2AW9JGyM', 'https://www.youtube.com/embed/GAG2AW9JGyM', 1, '2016-09-07', 0, '0000-00-00', 7),
(4, 10, 9, 'Farewell', 'https://www.youtube.com/embed/S2XmG_pgjCY', 'https://www.youtube.com/embed/S2XmG_pgjCY', 1, '2016-09-07', 0, '0000-00-00', 7),
(5, 10, 10, 'Class', 'https://www.youtube.com/embed/5x5Te-ctEzA', 'https://www.youtube.com/embed/5x5Te-ctEzA', 1, '2016-09-07', 0, '0000-00-00', 7),
(6, 10, 10, 'Class', 'https://www.youtube.com/embed/gXxuHzSUu-Q', 'https://www.youtube.com/embed/gXxuHzSUu-Q', 1, '2016-09-07', 0, '0000-00-00', 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
