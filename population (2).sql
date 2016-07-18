-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2014 at 03:14 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `population`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `district_id` int(100) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(45) NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`) VALUES
(1, 'Dhaka'),
(2, 'Faridpur'),
(3, 'Gazipur'),
(4, 'Gopalganj'),
(5, 'Jamalpur'),
(6, 'Kishoreganj '),
(7, 'Madaripur'),
(8, 'Manikganj'),
(9, 'Munshiganj'),
(10, 'Mymensingh '),
(11, 'Narayanganj '),
(12, 'Narsingdi'),
(13, 'Netrokona'),
(14, 'Rajbari'),
(15, 'Shariatpur'),
(16, 'Sherpur'),
(17, 'Tangail');

-- --------------------------------------------------------

--
-- Table structure for table `district_thana`
--

CREATE TABLE IF NOT EXISTS `district_thana` (
  `thana_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_id` int(100) NOT NULL,
  `thana_name` varchar(45) NOT NULL,
  PRIMARY KEY (`thana_id`),
  KEY `districtg_id_idx` (`district_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `district_thana`
--

INSERT INTO `district_thana` (`thana_id`, `district_id`, `thana_name`) VALUES
(1, 1, 'Badda'),
(2, 1, 'Biman Bandar'),
(3, 1, 'Cantonment'),
(4, 1, 'Dhanmondi'),
(5, 1, 'Demra'),
(6, 1, 'Dhamrai'),
(7, 1, 'Dohar'),
(8, 1, 'Keraniganj'),
(9, 1, 'Kotwali'),
(10, 1, 'Kafrul'),
(11, 1, 'Kamringir Char'),
(12, 1, 'Khilgaon'),
(13, 1, 'Lalbagh'),
(14, 1, 'Mugda'),
(15, 1, 'Mirpur'),
(16, 1, 'Mohammadpur'),
(17, 1, 'Motijheel'),
(18, 1, 'Gulshan'),
(19, 1, 'Hazaribagh'),
(20, 1, 'Pallabi'),
(21, 1, 'Nawabganj'),
(22, 1, 'Paltan'),
(23, 1, 'Ramna'),
(24, 1, 'Sabujbagh'),
(25, 1, 'Shyampur'),
(26, 1, 'Sutrapur'),
(27, 1, 'Savar'),
(28, 1, 'Tejgaon'),
(29, 1, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `division_id` int(100) NOT NULL AUTO_INCREMENT,
  `division_name` varchar(45) NOT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`) VALUES
(1, 'Barisal'),
(2, 'Chittagong'),
(3, 'Dhaka '),
(4, 'Khulna'),
(5, 'Rajshahi '),
(6, 'Rangpur'),
(7, 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `division_district`
--

CREATE TABLE IF NOT EXISTS `division_district` (
  `division_id` int(100) DEFAULT NULL,
  `district_id` int(100) DEFAULT NULL,
  KEY `division_id_idx` (`division_id`),
  KEY `district_id_idx` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `division_district`
--

INSERT INTO `division_district` (`division_id`, `district_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `people_id` int(255) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `parent_id` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL,
  `country` varchar(145) NOT NULL,
  `district` varchar(45) DEFAULT NULL,
  `thana` varchar(45) DEFAULT NULL,
  `village` varchar(45) DEFAULT NULL,
  `edu_status` varchar(45) DEFAULT NULL,
  `marital_status` varchar(45) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `email` varchar(145) NOT NULL,
  `image_path` varchar(500) NOT NULL,
  `year` varchar(255) NOT NULL,
  PRIMARY KEY (`people_id`),
  UNIQUE KEY `people_id_UNIQUE` (`people_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`people_id`, `first_name`, `last_name`, `parent_id`, `date_of_birth`, `mobile_no`, `blood_group`, `country`, `district`, `thana`, `village`, `edu_status`, `marital_status`, `occupation`, `sex`, `religion`, `email`, `image_path`, `year`) VALUES
(1, 'Md. Zobaidul Karim', 'Rony', '3', '1990  Jul  19', '+8801556651130', 'O+', 'Bangladesh', 'Jhenaidah', 'Maheshpur', 'Shibanandopur', 'BSC IN CSE', 'Single', 'Student', 'Male', 'Islam', 'zkronyjnu@hotmail.com', 'image/6fjij65db6n8ifspz71s41lnk977z9oh524jnfq25udr4jlse9rony.JPG', '1990'),
(2, 'Md. Imran Al', 'Fahad', '89654712', '1990  Aug  14', '+8801714569832', 'A+', 'Bangladesh', 'Dhaka', 'Motijheel', 'Arambagh', 'BSC IN ZOOLOGY', 'Single', 'Student', 'Male', 'Islam', 'imranalfahad@gmail.com', 'image/g5ir1up2df7kt8k3vjygvmm7js8c72xus9stpovkjrhea7ddk8imran.PNG', '1990'),
(3, 'Md. Shawokat', 'Ali', 'No Data', '1971  Dec  13', '+8801236547', 'AB+', 'Bangladesh', 'Dhaka', 'Maheshpur', 'Shibanondapur', 'SSC Pass', 'Married', 'Businessman', 'Male', 'Islam', 'showkatali@gmail.com', '', '1971'),
(4, 'Md.Nuruzzaman', 'Sarker', '4', '1990  Nov  20', '+8801923786136', 'A+', 'Bangladesh', 'Dhaka', 'Daudkandi', 'Vagolpur', 'Bsc in CSE', 'Single', 'Student', 'Male', 'Islam', 'nuruzzamancse100@gmail.com', 'image/qmd9645kqlwfjl3r0e8tvldul9218a1exmzfzq6u8vk1dbihqsnuru.jpg', '1990'),
(5, 'Shafiur ', 'Rahman', '6', '1991  Mar  20', '+8801723506770', 'A+', 'Bangladesh', 'Dhaka', 'Daudkandi', 'vagolpur', 'Bsc in CSE', 'Single', 'Student', 'Male', 'Islam', 'shafiurrahman@gmail.com', 'image/43rkddtmtw3zhszf2v9ctcoh4b2luuie2xu1s9966ui6m1futpshafiur.JPG', '1991'),
(6, 'Anwar', 'Abir', '5', '1992  Mar  20', '+8801754817730', 'A+', 'Bangladesh', 'Dhaka', 'Savar', 'Savar', 'Bsc in CSE', 'Single', 'Student', 'Male', 'Islam', 'anwarabir@gmail.com', 'image/0ofwgpf94sdykkjqipnd9eipntz81am6o6t7z9bhoeog5cuys7abir.jpg', '1992'),
(7, 'Rotan', 'Ray', '7', '1991  Oct  20', '+8801683079666', 'B+', 'Bangladesh', 'Dhaka', 'Homna', 'chandgoan', 'Bcs in CSE', 'Single', 'Student', 'Male', 'Hinduism', 'rotan@gmail.com', 'image/aaxlq4xt8dyzynfnedxywrkrmrveuxxt1k8bk13jzr242ltkvdrotan ray.jpg', '1991'),
(8, 'Hasan Hafiz', 'Pasha', '6776', '1991  Jul  12', '+8801737104224', 'A+', 'Bangladesh', 'Dhaka', 'Cantoment', 'chandgoan', 'Bcs in CSE', 'Single', 'Student', 'Male', 'Islam', 'pasha@gmail.com', 'image/gvk8nybxqmbh7pbnr6yomrdpq7abimdzb1nzbrendplp5bapsfpasha.jpg', '1991'),
(10, 'Arnisha Aktar', 'Jubly', '1', '1991  Jun  18', '+8801520090569', 'A+', 'Bangladesh', 'Dhaka', 'pustokhula', 'chandgoan', 'Bcs in CSE', 'Single', 'Student', 'Female', 'Islam', 'jubly@gmail.com', 'image/3mq6kji1farelk9q5dmulan2m6cr55wkpgtmqzbhsacv18hj47arnisha.JPG', '1991'),
(11, 'Raju ', 'Islam', '399', '1991  Jun  27', '+8801913094076', 'A+', 'Bangladesh', 'Dhaka', 'Tongi', 'Tngi sadar', 'Bcs in CSE', 'Single', 'Student', 'Male', 'Islam', 'rajuislam@gmail.com', 'image/uvt2kgad4pswp2u9owtbhzaio78j8il45n7xejuzuu85320s8oraju.jpg', '1991'),
(13, 'Mehedi Hasan', 'Raju', '3', '1991  Aug  16', '+8801925900277', 'B+', 'Bangladesh', 'Dhaka', 'Rajbari', 'Rajbarisadar', 'Bcs in CSE', 'Single', 'Student', 'Male', 'Islam', 'mehedihasanraju@gmail.com', '', '1991'),
(14, 'Md. Nazmul', 'Haque Rakib', '896523', '1992  Nov  22', '+8801245879', 'B+', 'Bangladesh', 'Dhaka', 'Motijheel', 'Arambagh', 'BSC IN State', 'Single', 'Student', 'Male', 'Islam', 'nazmulhoqrakib23@gmail.com', 'image/0lss4ve81v1ku4yeo4agcjqvcm8ion2id3d1v94gdgzdl1g7tpnazmul.jpg', '1992');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(255) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(145) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`) VALUES
(1, 'zkrony', '123'),
(2, 'nuruzzaman', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user_record`
--

CREATE TABLE IF NOT EXISTS `user_record` (
  `user_id` int(255) NOT NULL,
  `people_id` int(255) NOT NULL,
  `operation` varchar(145) DEFAULT NULL,
  KEY `user_id_idx` (`user_id`),
  KEY `people_id_idx` (`people_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`user_id`, `people_id`, `operation`) VALUES
(1, 1, 'Insert Data'),
(1, 2, 'Insert Data'),
(1, 3, 'Insert Data'),
(1, 1, 'Update Data'),
(1, 1, 'Update Data'),
(1, 1, 'Update Data'),
(1, 1, 'Update Data'),
(1, 1, 'Update Data'),
(1, 4, 'Insert Data'),
(1, 1, 'Update Data'),
(1, 1, 'Update Data'),
(1, 1, 'Update Data'),
(1, 4, 'Update Data'),
(1, 4, 'Update Data'),
(1, 1, 'Update Data'),
(2, 5, 'Insert Data'),
(2, 6, 'Insert Data'),
(2, 7, 'Insert Data'),
(2, 8, 'Insert Data'),
(2, 10, 'Insert Data'),
(2, 11, 'Insert Data'),
(2, 13, 'Insert Data'),
(2, 8, 'Update Data'),
(2, 8, 'Update Data'),
(2, 8, 'Update Data'),
(2, 8, 'Update Data'),
(2, 8, 'Update Data'),
(1, 1, 'Update Data'),
(1, 13, 'Update Data'),
(1, 1, 'Update Data'),
(1, 1, 'Update Data'),
(1, 14, 'Insert Data'),
(1, 3, 'Update Data'),
(1, 3, 'Update Data'),
(1, 11, 'Update Data'),
(1, 11, 'Update Data'),
(1, 11, 'Update Data');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `district_thana`
--
ALTER TABLE `district_thana`
  ADD CONSTRAINT `districtg_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `division_district`
--
ALTER TABLE `division_district`
  ADD CONSTRAINT `district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `division_id` FOREIGN KEY (`division_id`) REFERENCES `division` (`division_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_record`
--
ALTER TABLE `user_record`
  ADD CONSTRAINT `people_id` FOREIGN KEY (`people_id`) REFERENCES `people` (`people_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
