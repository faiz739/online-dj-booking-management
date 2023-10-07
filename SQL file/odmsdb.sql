-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 03:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Faithful', 'admin', 5689784589, 'Dj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-09-17 10:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `BookingID` int(10) DEFAULT NULL,
  `ServiceID` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `EventDate` varchar(200) DEFAULT NULL,
  `EventStartingtime` varchar(200) DEFAULT NULL,
  `EventEndingtime` varchar(200) DEFAULT NULL,
  `VenueAddress` mediumtext DEFAULT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `AdditionalInformation` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `BookingID`, `ServiceID`, `Name`, `MobileNumber`, `Email`, `EventDate`, `EventStartingtime`, `EventEndingtime`, `VenueAddress`, `EventType`, `AdditionalInformation`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 233064613, 1, 'Kele', 90784638398, 'Kele@gmail.com', '2023-11-02', '2 p.m', '10 p.m', 'peperoni ', 'Engagement', 'jguytugvnvjhgh', '2023-09-15 11:46:29', 'Approved', 'Approved', '2020-01-15 12:50:44'),
(2, 750016128, 1, 'Jone', 4654644648, 'jon@gmail.com', '2023-11-04', '2 p.m', '7 p.m', 'kilomajaro', 'Social', 'kjhiuyughjvhsdadfs', '2023-01-16 04:44:37', 'Approved', 'Approved', '2023-01-16 10:11:17'),
(3, 215398258, 3, 'Love', 7846466478, 'livi@gmail.com', '2023-11-06', '1 p.m', '10 p.m', 'Kampala', 'Government', 'kjiououbouiosydieskjfhbbcxmcbjhfkdsfkjdljkdljfkdn', '2023-09-17 04:47:10', 'Approved', 'Approved', '2023-09-17 10:12:01'),
(4, 206423586, 3, 'King', 5555643433, 'ing@gmail.com', '2023-11-08', '11 a.m', '3 p.m', 'Juviana', 'Sangeet', 'ghjgjhuywergcnxcjyhgfsdnbvxnzcgdsygtewghdfc', '2023-09-18 04:37:40', NULL, NULL, NULL),
(5, 365319422, 5, 'Kind', 8097867576, 'kind@gmail.com', '2023-11-10', '7 p.m', '10 p.m', 'J&j center', 'Get Together', 'xskjhj nbzxjhgagwejmb gdjswgdscbxzmnb', '2023-09-19 04:39:29', 'Cancelled', 'Cancelled', '2023-09-19 04:44:23'),
(6, 534626649, 6, 'Cozy', 7674343543, 'cozy@gmail.com', '2023-11-11', '9 a.m', '4 p.m', 'bungari', 'Concert', 'gjydywetyuavxeweytugauygshghwgfdyasywsgdg', '2023-09-20 04:41:01', NULL, NULL, NULL),
(7, 761769920, 1, 'Berry', 1234567890, 'bberry@gmail.com', '2023-12-12', '6 p.m', '10 p.m', 'Sujuku', 'Wedding', 'NA', '2023-09-21 14:32:17', 'Test remark', 'Approved', '2023-09-21 14:33:44'),
(8, 439400085, 2, 'Bike', 21234567, 'bike@gmail.com', '2023-10-17', '6 p.m', '6 a.m', '20 yama street', 'Night Club', 'na', '2023-10-07 12:21:29', 'okay its a date we need to meet\r\n\r\nacct opay 9033322134', 'Approved', '2023-10-07 12:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbleventtype`
--

CREATE TABLE `tbleventtype` (
  `ID` int(10) NOT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbleventtype`
--

INSERT INTO `tbleventtype` (`ID`, `EventType`, `CreationDate`) VALUES
(1, 'Anniversary', '2023-09-15 06:01:39'),
(2, 'Birthday Party', '2023-09-15 06:02:34'),
(3, 'Charity', '2023-09-15 06:02:43'),
(4, 'Cocktail', '2023-09-15 06:03:00'),
(5, 'College', '2023-09-15 06:03:11'),
(6, 'Community', '2023-09-15 06:03:24'),
(7, 'Concert', '2023-09-15 06:03:35'),
(8, 'Engagement', '2023-09-15 06:03:51'),
(9, 'Get Together', '2023-09-15 06:04:04'),
(10, 'Government', '2023-09-15 06:04:15'),
(11, 'Night Club', '2023-09-15 06:04:26'),
(13, 'Post Wedding', '2023-09-15 06:05:01'),
(14, 'Pre Engagement', '2023-09-15 06:05:18'),
(15, 'Religious', '2023-09-15 06:05:27'),
(16, 'Sangeet', '2023-09-15 06:05:43'),
(17, 'Social', '2023-09-15 06:05:58'),
(18, 'Wedding', '2023-09-15 06:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(100) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<b>Online DJ Management System</b><div><b>ODJMS&nbsp;is one of the Internet\'s largest and trusted Online DJ Booking Service. ODMS has done several placements locally &amp; globally for top artists.</b></div><div><b><br></b></div><div><b>&nbsp;Test data for testing.</b></div>', NULL, NULL, '2023-10-07 12:12:51'),
(2, 'contactus', 'Contact Us', '23, East West Road,Port-harcourt,Nigeria', 'Dj@gmail.com', 1234567890, '2023-09-15 14:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblservice`
--

CREATE TABLE `tblservice` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `SerDes` varchar(250) NOT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblservice`
--

INSERT INTO `tblservice` (`ID`, `ServiceName`, `SerDes`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Wedding DJ', '(we install the DJ equipment before your ceremony or after your wedding breakfast)', '800', '2023-09-15 06:17:43'),
(2, 'Party DJ', '(we install the DJ equipment 1 hour before your selected event start time)', '700', '2023-09-15 06:18:32'),
(3, 'Ceremony Music', 'Our ceremony music service is a popular add on to our wedding DJ stay all day hire.', '650', '2023-09-15 06:19:14'),
(4, 'Photo Booth Hire', '(early equipment setup included)', '500', '2023-09-15 06:19:51'),
(5, 'Karaoke Add-on', 'Karaoke is a great alternative to a disco. It’s perfect for staff parties and children’s parties.', '450', '2023-09-15 06:20:36'),
(6, 'Uplighters', 'Uplighters are bright lighting fixtures which are installed on the floor and shine a vibrant wash of colour over the walls of your venue', '200', '2023-09-15 06:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `MsgDate` timestamp NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Name`, `MobileNumber`, `Email`, `Message`, `MsgDate`, `IsRead`) VALUES
(1, 'Test', 7887878787, 'test@gmail.com', 'Hello', '2023-09-24 06:00:34', 1),
(2, 'Maker', 5545445444, 'maka@yahoo.com', 'Hello I want to know you are taking booking for Haryana', '2023-09-24 06:02:57', 1),
(3, 'Test', 7654659878, 'test@gmail.com', 'Sample test.', '2023-09-29 05:05:08', NULL),
(4, 'King', 9999857867, 'king@gmail.com', 'NA', '2023-09-11 14:37:38', 1),
(5, 'Bike', 21234567, 'bike@gmail.com', 'Okay no p', '2023-10-07 12:55:49', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `EventType` (`EventType`);

--
-- Indexes for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventType` (`EventType`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
