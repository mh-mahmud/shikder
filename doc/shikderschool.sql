-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2016 at 08:17 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shikderschool`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `admit_student_to_hostel`
--

INSERT INTO `admit_student_to_hostel` (`ADMIT_STUDENT_TO_HOSTEL_ID`, `CLASS_ID`, `SECTION_ID`, `STUDENT_DATA_ID`, `HOUSE_ID`, `ROOM_NO`, `SEAT_NO`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 2, 4, 27, 5, '5', '7', 2016, 1, '2016-08-14', 1, '2016-08-14', 7),
(2, 1, 3, 13, 1, '8', '2', 2016, 1, '2016-08-14', 1, '2016-08-14', 7),
(3, 1, 3, 4, 1, '1', '2', 2016, 1, '2016-08-14', 1, '2016-08-14', 7),
(4, 1, 3, 14, 1, '10', '3', 2016, 1, '2016-08-14', 0, '0000-00-00', 7),
(5, 2, 4, 23, 9, '5', '3', 2016, 1, '2016-08-14', 0, '0000-00-00', 7),
(6, 3, 5, 32, 9, '13', '1', 2016, 1, '2016-08-14', 0, '0000-00-00', 7),
(7, 3, 5, 33, 9, '20', '4', 2016, 1, '2016-08-14', 0, '0000-00-00', 7),
(8, 3, 5, 39, 5, '10', '2', 2016, 1, '2016-08-14', 0, '0000-00-00', 7),
(9, 1, 3, 17, 5, '10', '4', 2016, 1, '2016-08-14', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `assign_hostel_teacher`
--

INSERT INTO `assign_hostel_teacher` (`ASSIGN_HOSTEL_TEACHER_ID`, `HOUSE_ID`, `TEACHER_ID`, `SESSION`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(4, 1, 1, '2016-2017', 2016, 1, '2016-08-14', 1, '2016-08-14', 7),
(5, 5, 5, '2015-2016', 2016, 1, '2016-08-14', 1, '2016-08-14', 7),
(6, 9, 6, '2015-2017', 2016, 1, '2016-08-14', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

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
(78, 1, 2, 10, 0, '', 9, '2016-08-13', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_NAME`, `CLASS_NAME_NUMERIC`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Six', 6, 1, '2016-06-02', 1, '2016-07-19', 7),
(2, 'Seven', 7, 1, '2016-06-04', 0, '0000-00-00', 7),
(3, 'Eight', 8, 1, '2016-06-04', 0, '0000-00-00', 7),
(4, 'Nine', 0, 1, '2016-08-02', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`ROUTINE_ID`, `CLASS_ID`, `SECTION_ID`, `SUBJECT_ID`, `TEACHER_ID`, `DAY`, `TIME_FROM`, `TIME_TO`, `YEAR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 3, 5, 9, 1, 'Saturday', '10 AM', '11 AM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(2, 3, 5, 13, 2, 'Sunday', '10 AM', '12 PM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(3, 3, 5, 11, 3, 'Sunday', '12 PM', '01 PM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(4, 3, 5, 14, 4, 'Sunday', '02 PM', '04 PM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(5, 3, 5, 12, 1, 'Sunday', '04 PM', '05 PM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(6, 3, 5, 15, 3, 'Sunday', '09 AM', '10 AM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(7, 1, 2, 5, 1, 'Monday', '09 AM', '10 AM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(9, 3, 5, 12, 2, 'Monday', '10 AM', '11 AM', 2016, 1, '2016-06-19', 1, '2016-06-26', 7),
(10, 3, 5, 14, 3, 'Monday', '11 AM', '01 PM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(11, 3, 5, 15, 4, 'Monday', '02 PM', '03 PM', 2016, 1, '2016-06-19', 1, '2016-06-26', 7),
(12, 3, 5, 13, 1, 'Monday', '03 PM', '04 PM', 2016, 1, '2016-06-19', 0, '0000-00-00', 7),
(13, 1, 2, 3, 3, 'Wednesday', '10 AM', '11 AM', 2016, 1, '2016-06-26', 0, '0000-00-00', 7),
(14, 1, 2, 4, 2, 'Monday', '10 AM', '12 PM', 2016, 1, '2016-06-26', 1, '2016-06-26', 7),
(15, 2, 4, 8, 1, 'Sunday', '09 AM', '10 AM', 2016, 1, '2016-07-12', 0, '0000-00-00', 7),
(16, 2, 4, 7, 1, 'Monday', '01 PM', '07 AM', 2016, 1, '2016-08-08', 0, '0000-00-00', 7),
(17, 1, 3, 1, 8, 'Saturday', '05 PM', '08 AM', 2016, 1, '2016-08-08', 0, '0000-00-00', 7),
(18, 3, 5, 11, 8, 'Saturday', '06 AM', '08 AM', 2016, 1, '2016-08-08', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EXAM_ID`, `EXAM_NAME`, `EXAM_DATE`, `EXAM_COMMENT`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Final Exam', '2016-10-27', 'final', 1, '2016-06-08', 1, '2016-06-12', 7),
(3, 'First Term', '2016-08-03', 'Good', 1, '2016-06-08', 1, '2016-06-11', 7),
(4, 'Second Term', '2016-06-08', 'Hello World', 1, '2016-06-11', 0, '0000-00-00', 7),
(5, 'weekly exam', '2016-08-14', 'test', 9, '2016-08-13', 0, '0000-00-00', 7);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`FILE_ID`, `CAT_ID`, `SUB_CAT_ID`, `FILE_CAPTION`, `FILE_LINK`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(9, 9, 5, 'Aplication For', '8.pdf', 1, '2016-07-20', 0, '0000-00-00', 7),
(10, 9, 4, 'registration card-correction form', 'registration-card-correction-form.pdf', 1, '2016-07-20', 0, '0000-00-00', 7),
(11, 9, 4, 'Hostel Admission Form', 'hostel_adm_form.pdf', 1, '2016-07-20', 0, '0000-00-00', 7),
(12, 9, 5, 'School membership Application Form', 'MbrApp.pdf', 1, '2016-07-20', 0, '0000-00-00', 7),
(13, 9, 4, 'CLASS V', '1_One.pdf', 1, '2016-08-22', 0, '0000-00-00', 7),
(14, 9, 4, 'Class VI', '1_One.pdf', 1, '2016-08-22', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=375 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`MARK_ID`, `CLASS_ID`, `SECTION_ID`, `STUDENT_ID`, `ROLL_NO`, `SUBJECT_ID`, `EXAM_ID`, `MARK_OBTAINED`, `GRADE_ID`, `YEAR`, `COMMENT`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 2, 1, 1, 1, 3, 47, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(2, 1, 2, 2, 2, 1, 3, 78, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(3, 1, 2, 3, 3, 1, 3, 88, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(4, 1, 2, 4, 4, 1, 3, 73, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(5, 1, 2, 5, 5, 1, 3, 22, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(6, 1, 2, 6, 6, 1, 3, 27, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(7, 1, 2, 7, 7, 1, 3, 23, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(8, 1, 2, 8, 8, 1, 3, 68, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(9, 1, 2, 9, 9, 1, 3, 86, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(10, 1, 2, 10, 10, 1, 3, 75, 0, 2016, '', 9, '2016-08-02', 9, '2016-08-02', 7),
(11, 1, 3, 11, 1, 1, 3, 88, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(12, 1, 3, 12, 2, 1, 3, 95, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(13, 1, 3, 13, 3, 1, 3, 39, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(14, 1, 3, 14, 4, 1, 3, 62, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(15, 1, 3, 15, 5, 1, 3, 92, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(16, 1, 3, 16, 6, 1, 3, 76, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(17, 1, 3, 17, 7, 1, 3, 18, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(18, 1, 3, 18, 8, 1, 3, 27, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(19, 1, 3, 19, 9, 1, 3, 52, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(20, 1, 3, 20, 10, 1, 3, 55, 0, 2016, '', 9, '2016-08-02', 0, '0000-00-00', 7),
(31, 4, 6, 40, 1, 16, 3, 85, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(32, 4, 6, 41, 2, 16, 3, 47, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(33, 4, 6, 42, 3, 16, 3, 73, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(34, 4, 6, 40, 1, 17, 3, 87, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(35, 4, 6, 41, 2, 17, 3, 92, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(36, 4, 6, 42, 3, 17, 3, 89, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(37, 4, 6, 40, 1, 18, 3, 67, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(38, 4, 6, 41, 2, 18, 3, 87, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(39, 4, 6, 42, 3, 18, 3, 55, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(40, 4, 6, 40, 1, 19, 3, 48, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(41, 4, 6, 41, 2, 19, 3, 73, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(42, 4, 6, 42, 3, 19, 3, 82, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(43, 4, 6, 40, 1, 20, 3, 80, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(44, 4, 6, 41, 2, 20, 3, 71, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(45, 4, 6, 42, 3, 20, 3, 85, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(46, 4, 6, 40, 1, 21, 3, 77, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(47, 4, 6, 41, 2, 21, 3, 81, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(48, 4, 6, 42, 3, 21, 3, 84, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(49, 4, 6, 40, 1, 22, 3, 56, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(50, 4, 6, 41, 2, 22, 3, 71, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(51, 4, 6, 42, 3, 22, 3, 55, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(52, 4, 6, 40, 1, 23, 3, 61, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(53, 4, 6, 41, 2, 23, 3, 75, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(54, 4, 6, 42, 3, 23, 3, 86, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(55, 4, 6, 40, 1, 24, 3, 53, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(56, 4, 6, 41, 2, 24, 3, 58, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(57, 4, 6, 42, 3, 24, 3, 78, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(58, 4, 6, 40, 1, 25, 3, 76, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(59, 4, 6, 41, 2, 25, 3, 45, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(60, 4, 6, 42, 3, 25, 3, 35, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(61, 4, 6, 40, 1, 26, 3, 42, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(62, 4, 6, 41, 2, 26, 3, 83, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(63, 4, 6, 42, 3, 26, 3, 29, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(64, 4, 6, 40, 1, 27, 3, 52, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(65, 4, 6, 41, 2, 27, 3, 83, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(66, 4, 6, 42, 3, 27, 3, 95, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(67, 4, 6, 40, 1, 28, 3, 72, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(68, 4, 6, 41, 2, 28, 3, 96, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(69, 4, 6, 42, 3, 28, 3, 93, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(70, 4, 6, 40, 1, 29, 3, 87, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(71, 4, 6, 41, 2, 29, 3, 77, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(72, 4, 6, 42, 3, 29, 3, 53, 0, 2016, '', 1, '2016-08-02', 0, '0000-00-00', 7),
(73, 1, 2, 1, 1, 31, 3, 78, 0, 2016, 'good', 1, '2016-08-08', 1, '2016-08-08', 7),
(74, 1, 2, 2, 2, 31, 3, 88, 0, 2016, 'very good', 1, '2016-08-08', 1, '2016-08-08', 7),
(75, 1, 2, 3, 3, 31, 3, 67, 0, 2016, '', 1, '2016-08-08', 1, '2016-08-08', 7),
(76, 1, 2, 4, 4, 31, 3, 58, 0, 2016, '', 1, '2016-08-08', 1, '2016-08-08', 7),
(77, 1, 2, 5, 5, 31, 3, 38, 0, 2016, 'bad', 1, '2016-08-08', 1, '2016-08-08', 7),
(78, 1, 2, 6, 6, 31, 3, 26, 0, 2016, '', 1, '2016-08-08', 1, '2016-08-08', 7),
(79, 1, 2, 7, 7, 31, 3, 23, 0, 2016, '', 1, '2016-08-08', 1, '2016-08-08', 7),
(80, 1, 2, 8, 8, 31, 3, 73, 0, 2016, '', 1, '2016-08-08', 1, '2016-08-08', 7),
(81, 1, 2, 9, 9, 31, 3, 62, 0, 2016, '', 1, '2016-08-08', 1, '2016-08-08', 7),
(82, 1, 2, 10, 10, 31, 3, 33, 0, 2016, '', 1, '2016-08-08', 1, '2016-08-08', 7),
(83, 1, 3, 11, 1, 31, 3, 78, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(84, 1, 3, 12, 2, 31, 3, 86, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(85, 1, 3, 13, 3, 31, 3, 77, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(86, 1, 3, 14, 4, 31, 3, 53, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(87, 1, 3, 15, 5, 31, 3, 89, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(88, 1, 3, 16, 6, 31, 3, 63, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(89, 1, 3, 17, 7, 31, 3, 71, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(90, 1, 3, 18, 8, 31, 3, 82, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(91, 1, 3, 19, 9, 31, 3, 55, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(92, 1, 3, 20, 10, 31, 3, 39, 0, 2016, '', 1, '2016-08-09', 0, '0000-00-00', 7),
(93, 4, 6, 40, 1, 16, 4, 78, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(94, 4, 6, 41, 2, 16, 4, 86, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(95, 4, 6, 42, 3, 16, 4, 82, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(96, 4, 6, 40, 1, 17, 4, 83, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(97, 4, 6, 41, 2, 17, 4, 78, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(98, 4, 6, 42, 3, 17, 4, 71, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(99, 4, 6, 40, 1, 18, 4, 65, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(100, 4, 6, 41, 2, 18, 4, 63, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(101, 4, 6, 42, 3, 18, 4, 81, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(102, 4, 6, 40, 1, 19, 4, 85, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(103, 4, 6, 41, 2, 19, 4, 92, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(104, 4, 6, 42, 3, 19, 4, 71, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(105, 4, 6, 40, 1, 20, 4, 85, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(106, 4, 6, 41, 2, 20, 4, 88, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(107, 4, 6, 42, 3, 20, 4, 92, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(108, 4, 6, 40, 1, 21, 4, 51, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(109, 4, 6, 41, 2, 21, 4, 69, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(110, 4, 6, 42, 3, 21, 4, 75, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(111, 4, 6, 40, 1, 22, 4, 52, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(112, 4, 6, 41, 2, 22, 4, 55, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(113, 4, 6, 42, 3, 22, 4, 41, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(114, 4, 6, 40, 1, 23, 4, 81, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(115, 4, 6, 41, 2, 23, 4, 76, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(116, 4, 6, 42, 3, 23, 4, 65, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(117, 4, 6, 40, 1, 24, 4, 84, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(118, 4, 6, 41, 2, 24, 4, 89, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(119, 4, 6, 42, 3, 24, 4, 81, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(120, 4, 6, 40, 1, 25, 4, 62, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(121, 4, 6, 41, 2, 25, 4, 72, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(122, 4, 6, 42, 3, 25, 4, 60, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(123, 4, 6, 40, 1, 26, 4, 80, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(124, 4, 6, 41, 2, 26, 4, 72, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(125, 4, 6, 42, 3, 26, 4, 71, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(126, 4, 6, 40, 1, 27, 4, 67, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(127, 4, 6, 41, 2, 27, 4, 55, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(128, 4, 6, 42, 3, 27, 4, 82, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(129, 4, 6, 40, 1, 28, 4, 97, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(130, 4, 6, 41, 2, 28, 4, 84, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(131, 4, 6, 42, 3, 28, 4, 87, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(132, 4, 6, 40, 1, 29, 4, 86, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(133, 4, 6, 41, 2, 29, 4, 71, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(134, 4, 6, 42, 3, 29, 4, 81, 0, 2016, '', 1, '2016-08-10', 0, '0000-00-00', 7),
(135, 1, 2, 1, 1, 2, 3, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(136, 1, 2, 2, 2, 2, 3, 74, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(137, 1, 2, 3, 3, 2, 3, 44, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(138, 1, 2, 4, 4, 2, 3, 72, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(139, 1, 2, 5, 5, 2, 3, 51, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(140, 1, 2, 6, 6, 2, 3, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(141, 1, 2, 7, 7, 2, 3, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(142, 1, 2, 8, 8, 2, 3, 93, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(143, 1, 2, 9, 9, 2, 3, 70, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(144, 1, 2, 10, 10, 2, 3, 60, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(145, 1, 3, 11, 1, 2, 3, 75, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(146, 1, 3, 12, 2, 2, 3, 76, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(147, 1, 3, 13, 3, 2, 3, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(148, 1, 3, 14, 4, 2, 3, 63, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(149, 1, 3, 15, 5, 2, 3, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(150, 1, 3, 16, 6, 2, 3, 58, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(151, 1, 3, 17, 7, 2, 3, 55, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(152, 1, 3, 18, 8, 2, 3, 83, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(153, 1, 3, 19, 9, 2, 3, 92, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(154, 1, 3, 20, 10, 2, 3, 66, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(155, 1, 2, 1, 1, 3, 3, 84, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(156, 1, 2, 2, 2, 3, 3, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(157, 1, 2, 3, 3, 3, 3, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(158, 1, 2, 4, 4, 3, 3, 70, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(159, 1, 2, 5, 5, 3, 3, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(160, 1, 2, 6, 6, 3, 3, 85, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(161, 1, 2, 7, 7, 3, 3, 39, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(162, 1, 2, 8, 8, 3, 3, 46, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(163, 1, 2, 9, 9, 3, 3, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(164, 1, 2, 10, 10, 3, 3, 52, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(165, 1, 3, 11, 1, 3, 3, 98, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(166, 1, 3, 12, 2, 3, 3, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(167, 1, 3, 13, 3, 3, 3, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(168, 1, 3, 14, 4, 3, 3, 86, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(169, 1, 3, 15, 5, 3, 3, 36, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(170, 1, 3, 16, 6, 3, 3, 72, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(171, 1, 3, 17, 7, 3, 3, 65, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(172, 1, 3, 18, 8, 3, 3, 35, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(173, 1, 3, 19, 9, 3, 3, 53, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(174, 1, 3, 20, 10, 3, 3, 89, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(175, 1, 2, 1, 1, 4, 3, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(176, 1, 2, 2, 2, 4, 3, 73, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(177, 1, 2, 3, 3, 4, 3, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(178, 1, 2, 4, 4, 4, 3, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(179, 1, 2, 5, 5, 4, 3, 65, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(180, 1, 2, 6, 6, 4, 3, 76, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(181, 1, 2, 7, 7, 4, 3, 80, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(182, 1, 2, 8, 8, 4, 3, 80, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(183, 1, 2, 9, 9, 4, 3, 73, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(184, 1, 2, 10, 10, 4, 3, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(185, 1, 3, 11, 1, 4, 3, 79, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(186, 1, 3, 12, 2, 4, 3, 73, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(187, 1, 3, 13, 3, 4, 3, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(188, 1, 3, 14, 4, 4, 3, 74, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(189, 1, 3, 15, 5, 4, 3, 72, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(190, 1, 3, 16, 6, 4, 3, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(191, 1, 3, 17, 7, 4, 3, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(192, 1, 3, 18, 8, 4, 3, 56, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(193, 1, 3, 19, 9, 4, 3, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(194, 1, 3, 20, 10, 4, 3, 40, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(195, 1, 2, 1, 1, 5, 3, 60, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(196, 1, 2, 2, 2, 5, 3, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(197, 1, 2, 3, 3, 5, 3, 77, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(198, 1, 2, 4, 4, 5, 3, 65, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(199, 1, 2, 5, 5, 5, 3, 52, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(200, 1, 2, 6, 6, 5, 3, 51, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(201, 1, 2, 7, 7, 5, 3, 69, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(202, 1, 2, 8, 8, 5, 3, 42, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(203, 1, 2, 9, 9, 5, 3, 53, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(204, 1, 2, 10, 10, 5, 3, 66, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(205, 1, 3, 11, 1, 5, 3, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(206, 1, 3, 12, 2, 5, 3, 55, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(207, 1, 3, 13, 3, 5, 3, 59, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(208, 1, 3, 14, 4, 5, 3, 68, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(209, 1, 3, 15, 5, 5, 3, 89, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(210, 1, 3, 16, 6, 5, 3, 83, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(211, 1, 3, 17, 7, 5, 3, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(212, 1, 3, 18, 8, 5, 3, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(213, 1, 3, 19, 9, 5, 3, 66, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(214, 1, 3, 20, 10, 5, 3, 68, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(215, 1, 2, 1, 1, 30, 3, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(216, 1, 2, 2, 2, 30, 3, 77, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(217, 1, 2, 3, 3, 30, 3, 75, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(218, 1, 2, 4, 4, 30, 3, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(219, 1, 2, 5, 5, 30, 3, 80, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(220, 1, 2, 6, 6, 30, 3, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(221, 1, 2, 7, 7, 30, 3, 73, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(222, 1, 2, 8, 8, 30, 3, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(223, 1, 2, 9, 9, 30, 3, 59, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(224, 1, 2, 10, 10, 30, 3, 56, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(225, 1, 3, 11, 1, 30, 3, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(226, 1, 3, 12, 2, 30, 3, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(227, 1, 3, 13, 3, 30, 3, 76, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(228, 1, 3, 14, 4, 30, 3, 70, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(229, 1, 3, 15, 5, 30, 3, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(230, 1, 3, 16, 6, 30, 3, 76, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(231, 1, 3, 17, 7, 30, 3, 75, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(232, 1, 3, 18, 8, 30, 3, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(233, 1, 3, 19, 9, 30, 3, 77, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(234, 1, 3, 20, 10, 30, 3, 52, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(235, 1, 2, 1, 1, 1, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(236, 1, 2, 2, 2, 1, 4, 85, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(237, 1, 2, 3, 3, 1, 4, 87, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(238, 1, 2, 4, 4, 1, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(239, 1, 2, 5, 5, 1, 4, 73, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(240, 1, 2, 6, 6, 1, 4, 55, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(241, 1, 2, 7, 7, 1, 4, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(242, 1, 2, 8, 8, 1, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(243, 1, 2, 9, 9, 1, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(244, 1, 2, 10, 10, 1, 4, 66, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(245, 1, 3, 11, 1, 1, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(246, 1, 3, 12, 2, 1, 4, 89, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(247, 1, 3, 13, 3, 1, 4, 86, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(248, 1, 3, 14, 4, 1, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(249, 1, 3, 15, 5, 1, 4, 83, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(250, 1, 3, 16, 6, 1, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(251, 1, 3, 17, 7, 1, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(252, 1, 3, 18, 8, 1, 4, 70, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(253, 1, 3, 19, 9, 1, 4, 68, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(254, 1, 3, 20, 10, 1, 4, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(255, 1, 2, 1, 1, 2, 4, 68, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(256, 1, 2, 2, 2, 2, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(257, 1, 2, 3, 3, 2, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(258, 1, 2, 4, 4, 2, 4, 93, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(259, 1, 2, 5, 5, 2, 4, 88, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(260, 1, 2, 6, 6, 2, 4, 75, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(261, 1, 2, 7, 7, 2, 4, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(262, 1, 2, 8, 8, 2, 4, 69, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(263, 1, 2, 9, 9, 2, 4, 60, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(264, 1, 2, 10, 10, 2, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(265, 1, 3, 11, 1, 2, 4, 89, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(266, 1, 3, 12, 2, 2, 4, 88, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(267, 1, 3, 13, 3, 2, 4, 87, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(268, 1, 3, 14, 4, 2, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(269, 1, 3, 15, 5, 2, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(270, 1, 3, 16, 6, 2, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(271, 1, 3, 17, 7, 2, 4, 56, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(272, 1, 3, 18, 8, 2, 4, 58, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(273, 1, 3, 19, 9, 2, 4, 59, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(274, 1, 3, 20, 10, 2, 4, 52, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(275, 1, 2, 1, 1, 3, 4, 70, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(276, 1, 2, 2, 2, 3, 4, 69, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(277, 1, 2, 3, 3, 3, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(278, 1, 2, 4, 4, 3, 4, 86, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(279, 1, 2, 5, 5, 3, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(280, 1, 2, 6, 6, 3, 4, 63, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(281, 1, 2, 7, 7, 3, 4, 56, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(282, 1, 2, 8, 8, 3, 4, 50, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(283, 1, 2, 9, 9, 3, 4, 49, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(284, 1, 2, 10, 10, 3, 4, 48, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(285, 1, 3, 11, 1, 3, 4, 83, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(286, 1, 3, 12, 2, 3, 4, 96, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(287, 1, 3, 13, 3, 3, 4, 94, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(288, 1, 3, 14, 4, 3, 4, 91, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(289, 1, 3, 15, 5, 3, 4, 90, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(290, 1, 3, 16, 6, 3, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(291, 1, 3, 17, 7, 3, 4, 79, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(292, 1, 3, 18, 8, 3, 4, 73, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(293, 1, 3, 19, 9, 3, 4, 87, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(294, 1, 3, 20, 10, 3, 4, 88, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(295, 1, 2, 1, 1, 4, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(296, 1, 2, 2, 2, 4, 4, 76, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(297, 1, 2, 3, 3, 4, 4, 87, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(298, 1, 2, 4, 4, 4, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(299, 1, 2, 5, 5, 4, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(300, 1, 2, 6, 6, 4, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(301, 1, 2, 7, 7, 4, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(302, 1, 2, 8, 8, 4, 4, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(303, 1, 2, 9, 9, 4, 4, 63, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(304, 1, 2, 10, 10, 4, 4, 69, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(305, 1, 3, 11, 1, 4, 4, 87, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(306, 1, 3, 12, 2, 4, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(307, 1, 3, 13, 3, 4, 4, 83, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(308, 1, 3, 14, 4, 4, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(309, 1, 3, 15, 5, 4, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(310, 1, 3, 16, 6, 4, 4, 56, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(311, 1, 3, 17, 7, 4, 4, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(312, 1, 3, 18, 8, 4, 4, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(313, 1, 3, 19, 9, 4, 4, 72, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(314, 1, 3, 20, 10, 4, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(315, 1, 2, 1, 1, 5, 4, 62, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(316, 1, 2, 2, 2, 5, 4, 79, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(317, 1, 2, 3, 3, 5, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(318, 1, 2, 4, 4, 5, 4, 88, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(319, 1, 2, 5, 5, 5, 4, 67, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(320, 1, 2, 6, 6, 5, 4, 73, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(321, 1, 2, 7, 7, 5, 4, 79, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(322, 1, 2, 8, 8, 5, 4, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(323, 1, 2, 9, 9, 5, 4, 50, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(324, 1, 2, 10, 10, 5, 4, 55, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(325, 1, 3, 11, 1, 5, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(326, 1, 3, 12, 2, 5, 4, 89, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(327, 1, 3, 13, 3, 5, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(328, 1, 3, 14, 4, 5, 4, 77, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(329, 1, 3, 15, 5, 5, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(330, 1, 3, 16, 6, 5, 4, 52, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(331, 1, 3, 17, 7, 5, 4, 59, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(332, 1, 3, 18, 8, 5, 4, 88, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(333, 1, 3, 19, 9, 5, 4, 56, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(334, 1, 3, 20, 10, 5, 4, 68, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(335, 1, 2, 1, 1, 30, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(336, 1, 2, 2, 2, 30, 4, 89, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(337, 1, 2, 3, 3, 30, 4, 76, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(338, 1, 2, 4, 4, 30, 4, 89, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(339, 1, 2, 5, 5, 30, 4, 83, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(340, 1, 2, 6, 6, 30, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(341, 1, 2, 7, 7, 30, 4, 61, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(342, 1, 2, 8, 8, 30, 4, 60, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(343, 1, 2, 9, 9, 30, 4, 57, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(344, 1, 2, 10, 10, 30, 4, 51, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(345, 1, 3, 11, 1, 30, 4, 89, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(346, 1, 3, 12, 2, 30, 4, 80, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(347, 1, 3, 13, 3, 30, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(348, 1, 3, 14, 4, 30, 4, 66, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(349, 1, 3, 15, 5, 30, 4, 82, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(350, 1, 3, 16, 6, 30, 4, 76, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(351, 1, 3, 17, 7, 30, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(352, 1, 3, 18, 8, 30, 4, 76, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(353, 1, 3, 19, 9, 30, 4, 69, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(354, 1, 3, 20, 10, 30, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(355, 1, 2, 1, 1, 31, 4, 70, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(356, 1, 2, 2, 2, 31, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(357, 1, 2, 3, 3, 31, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(358, 1, 2, 4, 4, 31, 4, 87, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(359, 1, 2, 5, 5, 31, 4, 73, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(360, 1, 2, 6, 6, 31, 4, 75, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(361, 1, 2, 7, 7, 31, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(362, 1, 2, 8, 8, 31, 4, 55, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(363, 1, 2, 9, 9, 31, 4, 51, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(364, 1, 2, 10, 10, 31, 4, 48, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(365, 1, 3, 11, 1, 31, 4, 86, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(366, 1, 3, 12, 2, 31, 4, 88, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(367, 1, 3, 13, 3, 31, 4, 83, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(368, 1, 3, 14, 4, 31, 4, 85, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(369, 1, 3, 15, 5, 31, 4, 81, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(370, 1, 3, 16, 6, 31, 4, 78, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(371, 1, 3, 17, 7, 31, 4, 79, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(372, 1, 3, 18, 8, 31, 4, 66, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(373, 1, 3, 19, 9, 31, 4, 65, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7),
(374, 1, 3, 20, 10, 31, 4, 71, 0, 2016, '', 1, '2016-08-11', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`PARENT_ID`, `PARENT_NAME`, `STUDENT_ID`, `PHONE`, `EMAIL`, `NATIONAL_ID_NO`, `GENDER`, `RELATION_WITH_STU`, `ADDRESS`, `OCCOPATION`, `IMAGES`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Asif Khan', 1, '01727743522', 'tofiz@gmail.com', '7587545', 'Male', 'Father', 'dsaf sadfsdaf sdaf', 'Business Man', '', 1, '2016-06-06', 1, '2016-08-08', 7),
(2, 'Cristiano Coman', 2, '01744724905', 'shawkatali527@gmail.com', '78564545', 'Male', 'Father', 'asdfasd', 'Job Holder', '', 1, '2016-06-09', 1, '2016-07-13', 7),
(3, 'Mosharaf Karim', 3, '+8801722731566', 'masaraf@hotmail.com', '867364734683683', 'Male', 'Father', 'Mohammadpur, Dhaka', 'Business Man', 'image14-250x250.jpg', 1, '2016-07-13', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

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
(154, 'student_id_card', NULL, 'student', 'student_id_card', 'student_id_card', 0, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`SECTION_ID`, `CLASS_ID`, `SECTION_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(2, 1, 'A', 1, '2016-06-04', 1, '2016-06-04', 7),
(3, 1, 'B', 1, '2016-06-04', 1, '2016-06-04', 7),
(4, 2, 'A', 1, '2016-06-04', 1, '2016-06-12', 7),
(5, 3, 'A', 1, '2016-06-12', 0, '0000-00-00', 7),
(6, 4, 'A', 1, '2016-08-02', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`STUDENT_DATA_ID`, `STUDENT_ID`, `PUBLIC_ID`, `YEAR`, `CLASS_ID`, `SECTION_ID`, `ROLL_NO`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 40, 1234, 2016, 1, 2, 1, 9, '2016-07-23', 0, '0000-00-00', 7),
(2, 37, 1234, 2016, 1, 2, 2, 9, '2016-07-23', 0, '0000-00-00', 7),
(3, 36, 1234, 2016, 1, 2, 3, 9, '2016-07-23', 0, '0000-00-00', 7),
(4, 39, 1234, 2016, 1, 2, 4, 9, '2016-07-23', 0, '0000-00-00', 7),
(5, 38, 1234, 2016, 1, 2, 5, 9, '2016-07-23', 0, '0000-00-00', 7),
(6, 35, 1234, 2016, 1, 2, 6, 9, '2016-07-23', 0, '0000-00-00', 7),
(7, 34, 1234, 2016, 1, 2, 7, 9, '2016-07-23', 0, '0000-00-00', 7),
(8, 30, 1234, 2016, 1, 2, 8, 9, '2016-07-23', 0, '0000-00-00', 7),
(9, 33, 1234, 2016, 1, 2, 9, 9, '2016-07-23', 0, '0000-00-00', 7),
(10, 29, 1234, 2016, 1, 2, 10, 9, '2016-07-23', 0, '0000-00-00', 7),
(11, 1, 1234, 2016, 1, 3, 1, 9, '2016-07-23', 0, '0000-00-00', 7),
(12, 2, 1234, 2016, 1, 3, 2, 9, '2016-07-23', 0, '0000-00-00', 7),
(13, 3, 1234, 2016, 1, 3, 3, 9, '2016-07-23', 0, '0000-00-00', 7),
(14, 4, 1234, 2016, 1, 3, 4, 9, '2016-07-23', 0, '0000-00-00', 7),
(15, 5, 1234, 2016, 1, 3, 5, 9, '2016-07-23', 0, '0000-00-00', 7),
(16, 6, 1234, 2016, 1, 3, 6, 9, '2016-07-23', 9, '2016-07-23', 7),
(17, 7, 1234, 2016, 1, 3, 7, 9, '2016-07-23', 9, '2016-07-23', 7),
(18, 8, 1234, 2016, 1, 3, 8, 9, '2016-07-23', 0, '0000-00-00', 7),
(19, 12, 1234, 2016, 1, 3, 9, 9, '2016-07-23', 0, '0000-00-00', 7),
(20, 9, 1234, 2016, 1, 3, 10, 9, '2016-07-23', 0, '0000-00-00', 7),
(21, 10, 1234, 2016, 2, 4, 1, 9, '2016-07-23', 0, '0000-00-00', 7),
(22, 11, 1234, 2016, 2, 4, 2, 9, '2016-07-23', 0, '0000-00-00', 7),
(23, 15, 1234, 2016, 2, 4, 3, 9, '2016-07-23', 9, '2016-07-23', 7),
(24, 13, 1234, 2016, 2, 4, 4, 9, '2016-07-23', 0, '0000-00-00', 7),
(25, 14, 1234, 2016, 2, 4, 5, 9, '2016-07-23', 0, '0000-00-00', 7),
(26, 16, 1234, 2016, 2, 4, 6, 9, '2016-07-23', 0, '0000-00-00', 7),
(27, 17, 1234, 2016, 2, 4, 7, 9, '2016-07-23', 0, '0000-00-00', 7),
(28, 21, 1234, 2016, 2, 4, 8, 9, '2016-07-23', 0, '0000-00-00', 7),
(29, 26, 1234, 2016, 2, 4, 9, 9, '2016-07-23', 0, '0000-00-00', 7),
(30, 18, 1234, 2016, 2, 4, 10, 9, '2016-07-23', 0, '0000-00-00', 7),
(31, 19, 1234, 2016, 3, 5, 1, 9, '2016-07-23', 0, '0000-00-00', 7),
(32, 20, 1234, 2016, 3, 5, 2, 9, '2016-07-23', 0, '0000-00-00', 7),
(33, 25, 1234, 2016, 3, 5, 3, 9, '2016-07-23', 0, '0000-00-00', 7),
(34, 23, 1234, 2016, 3, 5, 4, 9, '2016-07-23', 0, '0000-00-00', 7),
(35, 27, 1234, 2016, 3, 5, 5, 9, '2016-07-23', 9, '2016-07-23', 7),
(36, 24, 1234, 2016, 3, 5, 6, 9, '2016-07-23', 9, '2016-07-23', 7),
(37, 22, 1234, 2016, 3, 5, 7, 9, '2016-07-23', 9, '2016-07-23', 7),
(38, 32, 1234, 2016, 3, 5, 8, 9, '2016-07-23', 0, '0000-00-00', 7),
(39, 28, 1234, 2016, 3, 5, 9, 9, '2016-07-23', 0, '0000-00-00', 7),
(40, 41, 1234, 2016, 4, 6, 1, 1, '2016-08-02', 0, '0000-00-00', 7),
(41, 42, 1234, 2016, 4, 6, 2, 1, '2016-08-02', 0, '0000-00-00', 7),
(42, 43, 1234, 2016, 4, 6, 3, 1, '2016-08-02', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  `BIRTHDAY` date NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`STUDENT_ID`, `NAME`, `BIRTHDAY`, `GENDER`, `RELIGION`, `BLOOD_GROUP`, `AGE`, `ADDRESS`, `PHONE`, `EMAIL`, `FATHER_NAME`, `MOTHER_NAME`, `PUBLIC_ID`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Md. Muhayminul Islam Rayhan', '2000-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '0174854878', 'rayhan@gmail.com', 'Md. Anisur Rohman', 'Md. Murshida Begumq', 1234, 9, '2016-07-23', 1, '2016-08-08', 7),
(2, 'Nayim Khondokar', '1999-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '017488587', 'nayim@gmail.com', 'Shah Alom', 'Madobi Begom', 1234, 9, '2016-07-23', 9, '2016-07-23', 7),
(3, 'Ratul Islam', '1999-07-01', 'Male', 'Islam', 'B+', 16, 'Dhaka, Bangldesh', '017485488', 'ratul@gmail.com', 'Md. Saidur Rohman', 'Laboni Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(4, 'Farzana Akhter', '2000-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '017487598', 'farzana@gmail.com', 'Md. Zohirul Islam', 'Sorna Begum', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(5, 'Md. Liyakot Ali', '1999-07-01', 'Male', 'Islam', 'O-', 17, 'Dhaka, Bangladesh', '0178565845', 'liyakot@gmail.com', 'Md. Fahim', 'Forida Begum', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(6, 'Eyasmin Akhter', '2000-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '017487578', 'eyasmin@gmail.com', 'Md. Jibon', 'Tabbassum Akhter', 1234, 9, '2016-07-23', 9, '2016-07-23', 7),
(7, 'Esrafil Islam', '2000-07-01', 'Male', 'Islam', 'O-', 16, 'Dhaka, Bangladesh', '0187546954', 'esrafil@gmail.com', 'Md. Jubayer', 'Poli', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(8, 'Rahin Ahmed', '2000-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '01958755', 'rahinahmed@gmail.com', 'Md. Shafiul Bashar', 'Nadiya Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(9, 'Adnan Sami', '2000-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '019864588', 'adnansami@gmail.com', 'Md. Azizur Rohman', 'Khaleda Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(10, 'Shoriful Islam', '2000-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '0174885494', 'shoriful@gmail.com', 'Md. Shohidul Islam', 'Sadiya Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(11, 'Rafiqul Islam', '1999-07-23', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '017488456', 'rafiqul@gmail.com', 'Al-amin', 'Sabrina Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(12, 'Sorna Akhter', '1999-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '0174784757', 'sorna@gmail.com', 'Abu Saleh', 'Parbin', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(13, 'Amdad Khan', '2000-07-01', 'Male', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '0187548547', 'amdad@gmail.com', 'Md. Khairul Islam', 'Jannat Begum', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(14, 'Emran Khan', '1999-07-01', 'Male', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '0174854985', 'emran@gmail.com', 'Md. Fahim', 'Mukta Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(15, 'Tahmina Akhter', '1999-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '019854885', 'tahmina@gmail.com', 'Sabbir Ahmed', 'Farzana Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(16, 'Mahmuda Akhter', '2000-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '0174845874', 'mahmuda@gmail.com', 'Md. Monirul Islam', 'Sadiya Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(17, 'Lovly Akhter', '1999-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '0174854985', 'lovly@gmail.com', 'Md. Shahriur Islam', 'Mukta Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(18, 'Sadiya Akhter', '2000-07-01', 'Male', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '019885175', 'sadiya@gmail.com', 'Md. MIzanur Rohman', 'Mahmuda Begum', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(19, 'Taniya Akhter', '2000-07-01', 'Female', 'Islam', 'O-', 16, 'Dhaka, Bangldesh', '017145689', 'taniya@gmail.com', 'Md. Jubayer', 'Nadiya Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(20, 'Nadiya Akhter', '2000-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '0174784757', 'nadiya@gmail.com', 'Md. Shohidul Islam', 'Tabbassum Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(21, 'Monirul Islam', '1999-07-01', 'Male', 'Islam', 'O+', 17, 'Dhaka, Bangladesh', '0198547874', 'monirul@gmail.com', 'Md. Rahin Ahmed', 'Sadiya Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(22, 'Lucky Akhter', '2000-07-01', 'Female', 'Islam', 'O+', 16, 'Dhaka, Bangldesh', '0174784757', 'lucky@gmail.com', 'Md. Shakib', 'Shi-shir', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(23, 'Md. Rafi', '2000-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '019857486', 'rafi@gmail.com', 'Abu Saleh', 'Sabrina Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(24, 'Riya Akhter', '2000-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '017455845', 'riya@gmail.com', 'Md. Mukhlesur Rohman', 'Mamoni Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(25, 'Sabrina Akhter', '2000-07-01', 'Female', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '0174784757', 'sabiran@gmail.com', 'Md. shakib', 'Mukta Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(26, 'Nasir Uddin', '2000-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '0174845889', 'nasir@gmail.com', 'Md. Khairul Islam', 'Lucky Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(27, 'Mohiuddin Ahmed', '2000-07-01', 'Male', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '01985454', 'mohiuddin@gmail.com', 'Md. Hafizur Rohman', 'Fatema Begum', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(28, 'Ferdus Islam', '1999-07-01', 'Male', 'Islam', 'O-', 16, 'Dhaka, Bangladesh', '0174784757', 'ferdus@gmail.com', 'Md. Jubayer', 'Hajera Begum', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(29, 'Md. Tuhin', '2000-07-01', 'Male', 'Islam', 'B-', 16, 'Dhaka, Bangladesh', '019587456', 'tuhin@gmail.com', 'Md. Anisur Rohmanq', 'Lovly Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(30, 'Rasel Khan', '1999-07-01', 'Male', 'Islam', 'B+', 17, 'Dhaka, Bangladesh', '017484588', 'rasel@gmail.com', 'Md. Foysal Khan', 'Zerin Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(31, 'Zerin Akhter', '1999-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '019851547', 'zerin@gmail.com', 'Md. Zohirul Islam', 'Ruma Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(32, 'Ruma Akhter', '1999-07-01', 'Female', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '019854873', 'ruma@gmail.com', 'Md. Sobuj', 'Halim akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(33, 'Runa Akhter', '2000-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '0174784757', 'runa@gmail.com', 'Md. Fahim', 'Nabila akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(34, 'Nabila Akhter', '2000-07-01', 'Female', 'Islam', 'O-', 16, 'Dhaka, Bangladesh', '019854753', 'nabila@gmail.com', 'Md. Afjal Islam', 'Nasrin Begum', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(35, 'Md. Imon', '1999-07-01', 'Male', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '017455845', 'imon@gmail.com', 'Md. Khursed Kha', 'Nadiya Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(36, 'Md. Redoyan Khan', '1999-07-01', 'Male', 'Islam', 'B-', 17, 'Dhaka,  Bangladesh', '01986548', 'redoyan@gmail.com', 'Md.  Nasir Uddin', 'Riya Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(37, 'Md. Rony', '2000-07-01', 'Male', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '01895545', 'rony@gmail.com', 'Md. Shohidul Islam', 'Zerin Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(38, 'Nasrin Akhter', '2000-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '019587415', 'nasrin@gmail.com', 'Md. Suhel', 'Khaleda Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(39, 'Rubina Akhter', '1999-07-01', 'Female', 'Islam', 'B+', 16, 'Dhaka, Bangladesh', '01875465', 'rubian@gmail.com', 'Md. Imon', 'Nusrat akhter', 1234, 9, '2016-07-23', 9, '2016-07-23', 7),
(40, 'Nusrat Fariha', '2000-07-01', 'Female', 'Islam', 'O+', 16, 'Dhaka, Bangladesh', '0174784757', 'nusrat@gmail.com', 'Md. Shoriful Islam', 'Fariha Akhter', 1234, 9, '2016-07-23', 0, '0000-00-00', 7),
(41, 'Riyad Mahmud', '1991-06-12', 'Male', 'Islam', 'A-', 18, 'Dhanmondi', '0259883670', 'riyad@hotmail.com', 'Abul Kashem', 'Sajeda Khan', 1234, 1, '2016-08-02', 0, '0000-00-00', 7),
(42, 'Rokon Uddin', '2016-04-26', 'Male', 'Islam', 'O+', 17, 'Moghbazar', '0258639', 'rokon@yahoo.com', 'Amir Hossian', 'Zobeda Nur', 1234, 1, '2016-08-02', 0, '0000-00-00', 7),
(43, 'Nipa Akter', '2016-08-01', 'Female', 'Islam', 'O-', 18, 'Puran Dhaka', '02528261', 'nipa@ymail.com', 'Ayub ALi', 'Kamrun Nahar', 1234, 1, '2016-08-02', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJECT_ID`, `SUBJECT_NAME`, `CLASS_ID`, `OPTIONAL`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Bangla', 1, 0, 1, '2016-06-08', 1, '2016-08-06', 7),
(2, 'English', 1, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(3, 'Math', 1, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(4, 'Social Science', 1, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(5, 'General Science', 1, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(6, 'Bangla', 2, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(7, 'English', 2, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(8, 'Math', 2, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(9, 'General Science', 2, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(10, 'Social Science', 2, 0, 1, '2016-06-08', 0, '0000-00-00', 7),
(11, 'Bangla', 3, 0, 1, '2016-06-13', 0, '0000-00-00', 7),
(12, 'English', 3, 0, 1, '2016-06-13', 0, '0000-00-00', 7),
(13, 'General Science', 3, 0, 1, '2016-06-13', 0, '0000-00-00', 7),
(14, 'Math', 3, 0, 1, '2016-06-13', 0, '0000-00-00', 7),
(15, 'Social Science', 3, 0, 1, '2016-06-13', 0, '0000-00-00', 7),
(16, 'Bangla 1st Paper', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(17, 'Bangla 2nd Paper', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(18, 'English 1st Paper', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(19, 'English 2nd Paper', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(20, 'Religion', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(21, 'Career', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(22, 'ICT', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(23, 'Physical Education', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(24, 'Bangladesh &amp; Global Stadies', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(25, 'Physics', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(26, 'Chemistry', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(27, 'Biology', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(28, 'General Math', 4, 0, 1, '2016-08-02', 0, '0000-00-00', 7),
(29, 'Higher Mathmatics', 4, 1, 1, '2016-08-02', 1, '2016-08-06', 7),
(30, 'ICT', 1, 0, 1, '2016-08-06', 1, '2016-08-06', 7),
(31, 'Bangladesh Studies', 1, 0, 1, '2016-08-08', 0, '0000-00-00', 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `ROLE_ID`, `COMPANY_ID`, `STUDENT_ID`, `TEACHER_ID`, `PARENT_ID`, `USER_NAME`, `USER_EMAIL`, `USER_PHONE`, `USER_TYPE`, `USER_PASSWORD`, `USER_PASSWORD_HISTORY`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 0, 0, 0, 0, 0, 'Admin', 'admin@base4.com', '', 'admin', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', NULL, 1, '2015-09-16 11:12:13', 1, '2017-01-01 02:17:08', 9),
(4, 3, NULL, 0, 0, 0, 'mh', 'developer.mh.me@gmail.com', '+8801722432578', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', 'Ki6tIkfo7hfTTVmvPsu-ZWwv-qSZKw2i5OPaErEWAF0%2C', 1, '2016-06-22 05:58:45', NULL, '2016-06-22 05:59:23', 7),
(5, 2, NULL, 1, 0, 0, 'Eric Abidal', 'abidal@hotmail.com', '+8801919228690', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', NULL, 1, '2016-07-12 05:04:58', NULL, NULL, 6),
(6, 4, NULL, 2, 0, 0, 'Nayim Khondokar', 'student@base4.com', '+8801733180725', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', 'Ki6tIkfo7hfTTVmvPsu-ZWwv-qSZKw2i5OPaErEWAF0%2C', 1, '2016-07-12 05:08:02', NULL, '2016-07-12 05:09:24', 7),
(7, 5, NULL, 0, 1, 0, 'Bijoy Kumar Roy', 'teacher@base4.com', '01727743522', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', 'MHOmrGVmfGwS1B-CO3YWyY6JwBHx_trqYr4m7pBMVPQ%2C', 1, '2016-07-13 05:11:27', NULL, '2016-07-13 05:14:32', 7),
(8, 6, NULL, 2, 0, 2, 'Cristiano Coman', 'parents@base4.com', '01744724905', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', 'MHOmrGVmfGwS1B-CO3YWyY6JwBHx_trqYr4m7pBMVPQ%2C', 1, '2016-07-13 06:17:31', NULL, '2016-07-13 06:20:27', 7),
(9, 7, NULL, 0, 0, 0, 'Admin', 'admin@base4bd.com', '', 'admin', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', NULL, 1, '2016-07-11 00:00:00', 9, '2016-08-13 06:02:46', 7),
(10, 4, NULL, 9, 0, 0, 'Adnan Sami', 'adnansami@gmail.com', '019864588', '', 'AvPzL4oU37R9-2KTQOqYgMLWTcsCmFG3U8jLemJx4V8', NULL, 1, '2016-07-28 06:37:51', NULL, NULL, 7);

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
