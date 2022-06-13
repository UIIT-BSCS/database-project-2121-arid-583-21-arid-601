-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 09:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metro bus autthority`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Bus_No` int(11) NOT NULL,
  `Departure_time` varchar(40) NOT NULL,
  `Arrival_time` varchar(40) NOT NULL,
  `Office_Location` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Bus_No`, `Departure_time`, `Arrival_time`, `Office_Location`) VALUES
(11, '12 am', '1 pm', '6 Road'),
(12, '12 am', '1 pm', 'Khana Pull'),
(13, '12 am', '1 pm', '7th Road'),
(14, '12 am', '1 pm', 'Sadar'),
(15, '12 am', '1 pm', 'Rwp'),
(16, '12 am', '1 pm', 'Islamabad'),
(17, '12 am', '1 pm', 'Mall Road'),
(18, '12 am', '1 pm', 'Muzafarabad'),
(19, '12 am', '1 pm', '7th Avenue'),
(20, '12 am', '1 pm', 'Lahore'),
(21, '12 am', '1 pm', 'Gujarwala'),
(22, '12 am', '1 pm', 'Sialkot'),
(23, '12 am', '1 pm', 'Sindh'),
(24, '12 am', '1 pm', 'Kashmir'),
(25, '12 am', '1 pm', 'Miawali'),
(26, '12 am', '1 pm', 'Muree'),
(27, '12 am', '1 pm', 'Swaat valley'),
(28, '12 am', '1 pm', 'Taxila'),
(29, '12 am', '1 pm', 'Service Road'),
(30, '12 am', '1 pm', 'Karachi');

-- --------------------------------------------------------

--
-- Table structure for table `consultant`
--

CREATE TABLE `consultant` (
  `E_Id` int(11) NOT NULL,
  `Hourly_Rate` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consultant`
--

INSERT INTO `consultant` (`E_Id`, `Hourly_Rate`, `Name`) VALUES
(120, 900, 'abid ali'),
(127, 1700, 'ahmed ali'),
(115, 1500, 'asif ghafoor'),
(112, 1000, 'atif butt'),
(122, 2000, 'fahad ahmed'),
(117, 1250, 'fahad paracha'),
(123, 1700, 'hamza abbasi'),
(130, 1100, 'haris mehmood'),
(129, 1000, 'haseeb mughal'),
(119, 1500, 'ishfaq ahmed'),
(118, 1300, 'junaid ahmed'),
(111, 1500, 'mansoor qureshi'),
(125, 1300, 'nadeem ali'),
(116, 1100, 'nadir ali'),
(113, 1000, 'naseem ali'),
(114, 2000, 'qasim ali'),
(124, 2000, 'tayyab mughal'),
(128, 1500, 'usman ahmed'),
(126, 1200, 'waqas ahmed'),
(121, 1800, 'waseem badami');

-- --------------------------------------------------------

--
-- Table structure for table `contact  no of driver`
--

CREATE TABLE `contact  no of driver` (
  `Contact_No` int(11) NOT NULL,
  `D_Id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact  no of driver`
--

INSERT INTO `contact  no of driver` (`Contact_No`, `D_Id`, `Name`) VALUES
(36752, 519, 'abbasi tayyab'),
(32478, 512, 'ahmed adeel'),
(32147, 527, 'ahmed hassan'),
(32678, 517, 'ahmed jamil'),
(32345, 514, 'ahmed junaid'),
(34987, 523, 'ahmed waqas'),
(32654, 524, 'ali asgar'),
(39579, 525, 'ali asif'),
(32134, 521, 'ali atif'),
(32256, 520, 'ali haseeb'),
(39571, 529, 'ali Hassan'),
(32689, 518, 'chowdry zahid'),
(32657, 528, 'iqbal fahad'),
(31246, 511, 'mughal ali'),
(36547, 526, 'mughal junaid'),
(32935, 522, 'mughal shabeer'),
(32457, 516, 'mughal shakeel'),
(32648, 530, 'sheikh usman'),
(36458, 515, 'ullah safi'),
(32145, 513, 'zia usman');

-- --------------------------------------------------------

--
-- Table structure for table `contact no of  employe`
--

CREATE TABLE `contact no of  employe` (
  `E_Id` int(11) NOT NULL,
  `Contact_no` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact no of  employe`
--

INSERT INTO `contact no of  employe` (`E_Id`, `Contact_no`, `Name`) VALUES
(111, 31156, 'ahmed junaid'),
(112, 31254, 'ghafoor ali'),
(113, 35267, 'batti asif'),
(114, 31479, 'ahmed shakeel'),
(115, 32567, 'ahmed hassan'),
(116, 32478, 'haider ali'),
(117, 32648, 'sheikh qasim'),
(118, 32254, 'ahmed adeel'),
(119, 32324, 'mughal ahmed'),
(120, 31124, 'ali waqas'),
(121, 32899, 'ahmed abdullah'),
(122, 32655, 'malik asif'),
(123, 33345, 'butt ehtsham'),
(124, 33567, 'haris nouman'),
(125, 33987, 'ali haris'),
(126, 33849, 'rehman abdur'),
(127, 38461, 'khokhar junaid'),
(128, 32247, 'ali abid'),
(129, 32654, 'abbas osaid'),
(130, 32957, 'butt yonus');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `D_Id` int(11) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `Street_No` varchar(40) NOT NULL,
  `House_No` varchar(40) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Age` int(11) NOT NULL,
  `Bus_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`D_Id`, `lname`, `fname`, `Street_No`, `House_No`, `City`, `Age`, `Bus_No`) VALUES
(511, 'mughal', 'ali', '24', 'b6-190', 'Rwp', 26, 11),
(512, 'ahmed', 'adeel', '05', 'a1-140', 'Lahore', 24, 12),
(513, 'zia', 'usman', '11', 'c3-450', 'Kashmir', 27, 13),
(514, 'ahmed', 'junaid', '09', 'c2-161', 'Karachi', 25, 14),
(515, 'ullah', 'safi', '12', 'a9-154', 'Islamabad', 22, 15),
(516, 'mughal', 'shakeel', '13', 'c9-254', 'chekshazad', 28, 16),
(517, 'ahmed', 'jamil', '04', 'c8-879', 'Taxila', 26, 17),
(518, 'chowdry', 'zahid', '02', 'c2-546', 'Sadar', 24, 18),
(519, 'abbasi', 'tayyab', '07', 'c5-257', 'Sindh', 22, 19),
(520, 'ali', 'haseeb', '17', 'c5-757', 'Punjab', 28, 20),
(521, 'ali', 'atif', '21', 'c9-918', 'Muree', 25, 21),
(522, 'mughal', 'shabeer', '11', 'a9-246', 'Multan', 24, 22),
(523, 'ahmed', 'waqas', '12', 'b4-197', 'Miawali', 26, 23),
(524, 'ali', 'asgar', '13', 'b7-121', 'F-9 Markaz', 27, 24),
(525, 'ali', 'asif', '15', 'b2-160', 'Wah-Cant', 23, 25),
(526, 'mughal', 'junaid', '16', 'b9-193', 'G-10', 29, 26),
(527, 'ahmed', 'hassan', '13', 'a2-167', 'Kuree Road', 22, 27),
(528, 'iqbal', 'fahad', '11', 'a3-157', 'Sialkot', 26, 28),
(529, 'ali', 'Hassan', '18', 'a9-156', 'Gujarkhan', 29, 29),
(530, 'sheikh', 'usman', '13', 'a5-525', 'Chakwal', 31, 30);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `E_Id` int(11) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `Street_No` int(11) NOT NULL,
  `House_No` varchar(40) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Age` int(11) NOT NULL,
  `S_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`E_Id`, `lname`, `fname`, `Street_No`, `House_No`, `City`, `Age`, `S_No`) VALUES
(111, 'ahmed', 'junaid', 2, 'b8-597', 'Karachi', 24, 1),
(112, 'ghafoor', 'ali', 3, 'b6-194', 'Wah-Cant', 27, 2),
(113, 'batti', 'asif', 11, 'a9-159', 'Multan', 31, 3),
(114, 'ahmed', 'shakeel', 13, 'c9-164', 'Isalamabd', 25, 4),
(115, 'ahmed', 'hassan', 18, 'a8-134', 'Lhore', 34, 5),
(116, 'haider', 'ali', 15, 'a6-357', 'Lahore', 33, 6),
(117, 'sheikh', 'qasim', 21, 'c6-354', 'Sindh', 36, 7),
(118, 'ahmed', 'adeel', 9, 'b6-193', 'Naval Anchorage', 27, 8),
(119, 'mughal', 'ahmed', 1, 'b4-157', 'Korang Town', 29, 9),
(120, 'ali', 'waqas', 4, 'c8-192', 'Sawaa Garden', 40, 10),
(121, 'ahmed', 'abdullah', 16, 'a5-524', 'Iqbal Town', 22, 11),
(122, 'malik', 'asif', 13, 'c2-327', 'Kaacheri', 30, 12),
(123, 'butt', 'ehtsham', 17, 'c5-529', 'Muree', 24, 13),
(124, 'haris', 'nouman', 8, 'a3-951', 'Sialkot', 29, 14),
(125, 'ali', 'haris', 24, 'c1-456', 'Pishawar', 27, 15),
(126, 'rehman', 'abdur', 16, 'b7-991', 'Kashmir', 32, 16),
(127, 'khokhar', 'junaid', 19, 'b1-253', 'Rawalpindi', 33, 17),
(128, 'ali', 'abid', 20, 'a4-452', 'Sadar', 34, 18),
(129, 'abbas', 'osaid', 7, 'a7-729', 'Shamsabad', 42, 19),
(130, 'butt', 'yonus', 26, 'a6-623', 'Quetta', 24, 20);

-- --------------------------------------------------------

--
-- Table structure for table `mba`
--

CREATE TABLE `mba` (
  `Office_Location` varchar(40) NOT NULL,
  `Office_Staff` int(40) NOT NULL,
  `Working_Employee` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mba`
--

INSERT INTO `mba` (`Office_Location`, `Office_Staff`, `Working_Employee`) VALUES
('6 Road', 3, 8),
('7th Avenue', 4, 5),
('7th Road', 4, 7),
('Gujarwala', 4, 7),
('Islamabad', 9, 14),
('Karachi', 9, 11),
('Kashmir', 2, 6),
('Khana Pull', 3, 8),
('Lahore', 7, 4),
('Mall Road', 5, 7),
('Miawali', 3, 7),
('Muree', 5, 13),
('Muzafarabad', 3, 11),
('Rwp', 5, 10),
('Sadar', 2, 7),
('Service Road', 2, 6),
('Sialkot', 6, 10),
('Sindh', 7, 14),
('Swaat valley', 8, 13),
('Taxila', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Entering_time` varchar(11) NOT NULL,
  `Exiting_time` varchar(11) NOT NULL,
  `Token_No` int(11) NOT NULL,
  `Bus_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`Entering_time`, `Exiting_time`, `Token_No`, `Bus_No`) VALUES
('10 am', '5 pm', 1, 11),
('9 am', '1 pm', 2, 12),
('6 am', '12 pm', 3, 13),
('11 am', '2 pm', 4, 14),
('11 am', '3 pm', 5, 15),
('7 am', '10 am', 6, 16),
('1 pm', '4 pm', 7, 17),
('10 am', '2 pm', 8, 18),
('11 am', '1 pm', 9, 19),
('7 am', '2 pm', 10, 20),
('8 am', '1 pm', 11, 21),
('9 am', '11 am', 12, 22),
('6 am', '8 am', 13, 23),
('2 pm', '5 pm', 14, 24),
('6 am', '10 am', 15, 25),
('5 pm', '7 pm', 16, 26),
('6 pm', '7 pm', 17, 27),
('4 pm', '6 pm', 18, 28),
('10 am', '11 pm', 19, 29),
('7 pm', '10 pm', 20, 30);

-- --------------------------------------------------------

--
-- Table structure for table `permanent employee`
--

CREATE TABLE `permanent employee` (
  `Salary` int(11) NOT NULL,
  `E_Id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permanent employee`
--

INSERT INTO `permanent employee` (`Salary`, `E_Id`, `Name`) VALUES
(30000, 111, 'hamza abbasi'),
(40000, 112, 'ali hamza'),
(50000, 113, 'junaid ahmed'),
(30000, 114, 'mudassir saleem'),
(20000, 115, 'umer ali'),
(25000, 116, 'asif butt'),
(40000, 117, 'adeel ahmed'),
(75000, 118, 'safi ullah'),
(61000, 119, 'nawaz ali'),
(27000, 120, 'nasrullah'),
(35000, 121, 'nadir ali'),
(40000, 122, 'mansoor ahmed'),
(50000, 123, 'waqas mughal'),
(55000, 124, 'osaid abbas'),
(35000, 125, 'hassan ali'),
(25000, 126, 'ahmed ali'),
(75000, 127, 'junaid khokhar'),
(80000, 128, 'hussan amjad'),
(18000, 129, 'usman zia'),
(48000, 130, 'haseeb gondal');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `S_No` int(11) NOT NULL,
  `Location` varchar(40) NOT NULL,
  `Opening_Time` varchar(11) NOT NULL,
  `Closing_Time` varchar(11) NOT NULL,
  `No_of_Employes` int(11) NOT NULL,
  `Office_Location` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`S_No`, `Location`, `Opening_Time`, `Closing_Time`, `No_of_Employes`, `Office_Location`) VALUES
(1, '2nd Road', '8 am', '10pm', 11, '6 Road'),
(2, '2nd Road', '8 am', '10pm', 11, 'Khana Pull'),
(3, '3rd Road', '8 am', '10 pm', 14, '7th Road'),
(4, '4th Road', '8 am', '10 pm', 16, 'Sadar'),
(5, '5th Road', '8 am', '10 pm', 8, 'Rwp'),
(6, '6th Road', '8 am', '10 pm', 10, 'Islamabad'),
(7, '9th Road', '8 am', '10 pm', 9, 'Mall Road'),
(8, '7th Road', '8 am', '10 pm', 8, 'Muzafarabad'),
(9, '8th Road', '8 am', '10 pm', 5, '7th Avenue'),
(10, '10th Road', '8 am', '10 pm', 8, 'Lahore'),
(11, '11th Road', '8 am', '10 pm', 12, 'Gujarwala'),
(12, '12th Road', '8 am', '10 pm', 9, 'Sialkot'),
(13, '13th Road', '8 am', '10 pm', 6, 'Sindh'),
(14, '20th Road', '8 am', '10 pm', 4, 'Kashmir'),
(15, '21th Road', '8 am', '10 pm', 7, 'Miawali'),
(16, '14th Road', '8 am', '10 pm', 4, 'Muree'),
(17, '15th Road', '8 am', '10 pm', 9, 'Swaat valley'),
(18, '16th Road', '8 am', '10 pm', 11, 'Taxila'),
(19, '17th Road', '8 am', '10 pm', 7, 'Service Road'),
(20, '18th Road', '8 am', '10 pm', 15, 'Karachi');

-- --------------------------------------------------------

--
-- Table structure for table `toekn`
--

CREATE TABLE `toekn` (
  `Token_No` int(11) NOT NULL,
  `No_of_Tokens_used` int(11) NOT NULL,
  `No_of_Tokens_issued` int(11) NOT NULL,
  `S_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toekn`
--

INSERT INTO `toekn` (`Token_No`, `No_of_Tokens_used`, `No_of_Tokens_issued`, `S_No`) VALUES
(1, 52, 100, 1),
(2, 25, 200, 2),
(3, 57, 150, 3),
(4, 48, 125, 4),
(5, 123, 170, 5),
(6, 164, 175, 6),
(7, 89, 120, 7),
(8, 197, 250, 8),
(9, 38, 80, 9),
(10, 54, 75, 10),
(11, 98, 160, 11),
(12, 206, 300, 12),
(13, 119, 350, 13),
(14, 57, 90, 14),
(15, 198, 315, 15),
(16, 233, 260, 16),
(17, 264, 325, 17),
(18, 34, 55, 18),
(19, 17, 65, 19),
(20, 27, 85, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Bus_No`) USING BTREE,
  ADD KEY `Office_Location` (`Office_Location`);

--
-- Indexes for table `consultant`
--
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`Name`,`E_Id`) USING BTREE,
  ADD UNIQUE KEY `E_Id` (`E_Id`);

--
-- Indexes for table `contact  no of driver`
--
ALTER TABLE `contact  no of driver`
  ADD PRIMARY KEY (`Name`,`D_Id`) USING BTREE,
  ADD KEY `D_Id` (`D_Id`);

--
-- Indexes for table `contact no of  employe`
--
ALTER TABLE `contact no of  employe`
  ADD PRIMARY KEY (`E_Id`,`Name`) USING BTREE,
  ADD UNIQUE KEY `E_Id` (`E_Id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`D_Id`) USING BTREE,
  ADD KEY `Bus_No` (`Bus_No`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`E_Id`) USING BTREE,
  ADD KEY `S_No` (`S_No`);

--
-- Indexes for table `mba`
--
ALTER TABLE `mba`
  ADD PRIMARY KEY (`Office_Location`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Bus_No`,`Token_No`),
  ADD KEY `Token_No` (`Token_No`);

--
-- Indexes for table `permanent employee`
--
ALTER TABLE `permanent employee`
  ADD PRIMARY KEY (`E_Id`,`Name`) USING BTREE,
  ADD UNIQUE KEY `E_Id` (`E_Id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`S_No`) USING BTREE,
  ADD KEY `Office_Location` (`Office_Location`);

--
-- Indexes for table `toekn`
--
ALTER TABLE `toekn`
  ADD PRIMARY KEY (`Token_No`) USING BTREE,
  ADD KEY `S_No` (`S_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`Office_Location`) REFERENCES `mba` (`Office_Location`);

--
-- Constraints for table `consultant`
--
ALTER TABLE `consultant`
  ADD CONSTRAINT `consultant_ibfk_1` FOREIGN KEY (`E_Id`) REFERENCES `employe` (`E_Id`);

--
-- Constraints for table `contact  no of driver`
--
ALTER TABLE `contact  no of driver`
  ADD CONSTRAINT `contact  no of driver_ibfk_1` FOREIGN KEY (`D_Id`) REFERENCES `driver` (`D_Id`);

--
-- Constraints for table `contact no of  employe`
--
ALTER TABLE `contact no of  employe`
  ADD CONSTRAINT `contact no of  employe_ibfk_1` FOREIGN KEY (`E_Id`) REFERENCES `employe` (`E_Id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`Bus_No`) REFERENCES `bus` (`Bus_No`);

--
-- Constraints for table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`S_No`) REFERENCES `station` (`S_No`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`Token_No`) REFERENCES `toekn` (`Token_No`),
  ADD CONSTRAINT `passenger_ibfk_2` FOREIGN KEY (`Bus_No`) REFERENCES `bus` (`Bus_No`);

--
-- Constraints for table `permanent employee`
--
ALTER TABLE `permanent employee`
  ADD CONSTRAINT `permanent employee_ibfk_1` FOREIGN KEY (`E_Id`) REFERENCES `employe` (`E_Id`);

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`Office_Location`) REFERENCES `mba` (`Office_Location`);

--
-- Constraints for table `toekn`
--
ALTER TABLE `toekn`
  ADD CONSTRAINT `toekn_ibfk_1` FOREIGN KEY (`S_No`) REFERENCES `station` (`S_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
