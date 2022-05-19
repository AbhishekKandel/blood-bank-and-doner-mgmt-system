-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 06:50 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Zone` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Zone`, `Message`, `PostingDate`, `status`) VALUES
(11, 'Sita', '1237569378', 'sita@html.com', 'Female', 27, 'A+', 'Bheri', ' hi', '2021-11-28 06:16:09', 1),
(12, 'Ram', '8775276890', 'ram@google.com', 'Male', 30, 'A+', 'Seti', ' No', '2021-11-28 06:38:32', 1),
(13, 'Sumi', '9861276316', 'sumi@gmail.com', 'Female', 22, 'B+', 'Lumbini', 'Hi! K cha? ', '2021-11-29 05:26:50', 1),
(14, 'Abhishek Kandel', '8632282910', 'abhishek@gmail.com', 'Male', 20, 'A+', 'Lumbini', 'Proud to help someone', '2021-12-02 03:19:39', 1),
(15, 'Mansing', '9872678392', 'man@gmail.com', 'Male', 21, 'A+', 'Janakpur', 'Hello ', '2021-12-02 03:20:22', 1),
(16, 'Sandeep', '9867232285', 'saa@gmail.com', 'Male', 22, 'B+', 'Lumbini', 'Hi ', '2021-12-02 03:20:54', 1),
(17, 'Madameee', '9873921034', 'madamme@gmail.com', 'Female', 32, 'A-', 'India', ' Hello', '2021-12-04 13:36:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(7, 'A+', '2022-11-19 05:25:49'),
(8, 'A-', '2022-11-19 05:26:15'),
(9, 'B+', '2022-11-19 05:26:23'),
(10, 'B-', '2022-11-19 05:26:29'),
(11, 'AB+', '2022-11-19 05:26:32'),
(12, 'AB-', '2022-11-19 05:26:36'),
(13, 'O+', '2022-11-19 05:26:40'),
(14, 'O-', '2022-11-19 05:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodlocation`
--

CREATE TABLE `tblbloodlocation` (
  `id` int(11) NOT NULL,
  `BloodLocation` varchar(50) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbloodlocation`
--

INSERT INTO `tblbloodlocation` (`id`, `BloodLocation`, `PostingDate`) VALUES
(1, 'Lumbini', '2022-11-28 05:39:39'),
(2, 'Narayani', '2022-11-28 05:56:55'),
(3, 'Gandaki', '2022-11-28 05:57:11'),
(5, 'Mechi', '2022-11-28 05:58:51'),
(6, 'Koshi', '2022-11-28 05:58:54'),
(7, 'Sagarmatha', '2022-11-28 05:58:59'),
(8, 'Janakpur', '2022-11-28 05:59:14'),
(9, 'Bagmati', '2022-11-28 05:59:18'),
(11, 'Rapti', '2022-11-28 05:59:45'),
(12, 'Karnali', '2022-11-28 05:59:48'),
(13, 'Bheri', '2022-11-28 05:59:51'),
(14, 'Seti', '2022-11-28 05:59:54'),
(15, 'Mahakali', '2022-11-28 05:59:58'),
(16, 'Dhawalagiri', '2022-11-28 06:00:23'),
(17, 'Test', '2022-12-02 03:17:54'),
(18, 'India', '2022-12-02 04:06:22'),
(19, 'Uttar Pradesh', '2022-12-04 13:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'BloodBank																									', 'test@test.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(5, 'Ravui', 'asdhj@jajsd.com', '2138012938', 'hi whts up', '2022-11-28 07:00:48', 1),
(7, 'sadja', 'asdhi@as', 'sahdja', 'dasdhjhd', '2022-11-28 07:02:41', 1),
(8, 'Harry Pandey', 'hari@gmail.com', '9872374921', 'Help me', '2022-12-02 03:36:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Donating blood helps in maintaining the iron level in the body</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;and thus reduce those risk. Cancer is the most feared and deadly disease. By donating blood regularly the iron level in the blood is balanced and the risk of cancer-related to the liver, lungs, and intestine gets lower.</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">A blood bank is&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">a place where blood is collected and stored before it is used for transfusions</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Blood banking takes place in the lab. This is to make sure that donated blood and blood products are safe before they are used.</span><br>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodlocation`
--
ALTER TABLE `tblbloodlocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblbloodlocation`
--
ALTER TABLE `tblbloodlocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
