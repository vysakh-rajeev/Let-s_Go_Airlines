-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 04:47 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport_location`
--

CREATE TABLE `airport_location` (
  `Airport_ID` int(11) NOT NULL,
  `City` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport_location`
--

INSERT INTO `airport_location` (`Airport_ID`, `City`) VALUES
(1, 'Delhi'),
(2, 'Mumbai'),
(3, 'Kolkata'),
(4, 'Chennai'),
(5, 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

CREATE TABLE `flight_details` (
  `Flight_ID` int(11) NOT NULL,
  `Source` varchar(250) NOT NULL,
  `Destination` varchar(250) NOT NULL,
  `Departure_time` time NOT NULL,
  `Arrival_time` time NOT NULL,
  `Ticket_Price` decimal(10,0) NOT NULL,
  `Seat_Availability` int(100) NOT NULL,
  `DOJ` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`Flight_ID`, `Source`, `Destination`, `Departure_time`, `Arrival_time`, `Ticket_Price`, `Seat_Availability`, `DOJ`) VALUES
(101, 'Delhi', 'Mumbai', '16:00:00', '18:05:00', '2100', 100, '2021-08-24'),
(102, 'Delhi', 'Kolkata', '17:00:00', '19:00:00', '2200', 100, '2021-08-24'),
(103, 'Delhi', 'Chennai', '18:00:00', '21:00:00', '2000', 100, '2021-08-24'),
(104, 'Delhi', 'Bangalore', '13:00:00', '15:40:00', '2800', 100, '2021-08-24'),
(105, 'Mumbai', 'Delhi', '10:00:00', '12:05:00', '2200', 100, '2021-08-24'),
(106, 'Mumbai', 'Kolkata', '11:00:00', '13:35:00', '2900', 100, '2021-08-24'),
(107, 'Mumbai', 'Chennai', '12:00:00', '13:50:00', '1500', 100, '2021-08-24'),
(108, 'Mumbai', 'Bangalore', '13:15:00', '14:55:00', '1800', 100, '2021-08-24'),
(109, 'Kolkata', 'Delhi', '04:30:00', '06:50:00', '2700', 100, '2021-08-24'),
(110, 'Kolkata', 'Mumbai', '06:00:00', '08:40:00', '3100', 100, '2021-08-24'),
(111, 'Kolkata', 'Chennai', '09:25:00', '11:40:00', '2700', 100, '2021-08-24'),
(112, 'Kolkata', 'Bangalore', '11:45:00', '14:25:00', '3500', 100, '2021-08-24'),
(113, 'Chennai', 'Delhi', '00:00:00', '02:50:00', '2000', 100, '2021-08-24'),
(114, 'Chennai', 'Mumbai', '02:00:00', '03:50:00', '1400', 100, '2021-08-24'),
(115, 'Chennai', 'Bangalore', '10:00:00', '11:00:00', '1200', 100, '2021-08-24'),
(116, 'Chennai', 'Kolkata', '09:00:00', '10:55:00', '2100', 100, '2021-08-24'),
(117, 'Bangalore', 'Mumbai', '03:00:00', '04:40:00', '1900', 100, '2021-08-24'),
(118, 'Bangalore', 'Delhi', '02:30:00', '05:05:00', '2900', 100, '2021-08-24'),
(119, 'Bangalore', 'Kolkata', '14:45:00', '17:15:00', '3100', 100, '2021-08-24'),
(120, 'Bangalore', 'Chennai', '15:20:00', '16:20:00', '1300', 100, '2021-08-24'),
(121, 'Chennai', 'Delhi', '01:00:00', '03:00:00', '1200', 100, '2021-08-24'),
(122, 'Chennai', 'Delhi', '03:00:00', '06:00:00', '1200', 100, '2021-08-24'),
(123, 'Chennai', 'Delhi', '03:00:00', '06:00:00', '1200', 100, '2021-08-23'),
(124, 'Delhi', 'Mumbai', '16:00:00', '18:05:00', '2100', 100, '2021-08-23'),
(125, 'Delhi', 'Kolkata', '17:00:00', '19:00:00', '2200', 100, '2021-08-23'),
(126, 'Delhi', 'Chennai', '18:00:00', '21:00:00', '2000', 100, '2021-08-23'),
(127, 'Delhi', 'Bangalore', '13:00:00', '15:40:00', '2800', 100, '2021-08-23'),
(128, 'Mumbai', 'Delhi', '10:00:00', '12:05:00', '2200', 100, '2021-08-23'),
(129, 'Mumbai', 'Kolkata', '11:00:00', '13:35:00', '2900', 100, '2021-08-23'),
(130, 'Mumbai', 'Chennai', '12:00:00', '13:50:00', '1500', 100, '2021-08-23'),
(131, 'Mumbai', 'Bangalore', '13:15:00', '14:55:00', '1800', 100, '2021-08-23'),
(132, 'Kolkata', 'Delhi', '04:30:00', '06:50:00', '2700', 100, '2021-08-23'),
(133, 'Kolkata', 'Mumbai', '06:00:00', '08:40:00', '3100', 100, '2021-08-23'),
(134, 'Kolkata', 'Chennai', '09:25:00', '11:40:00', '2700', 100, '2021-08-23'),
(135, 'Kolkata', 'Bangalore', '11:45:00', '14:25:00', '3500', 100, '2021-08-23'),
(136, 'Chennai', 'Delhi', '00:00:00', '02:50:00', '2000', 100, '2021-08-23'),
(137, 'Chennai', 'Mumbai', '02:00:00', '03:50:00', '1400', 100, '2021-08-23'),
(138, 'Chennai', 'Bangalore', '10:00:00', '11:00:00', '1200', 100, '2021-08-23'),
(139, 'Chennai', 'Kolkata', '09:00:00', '10:55:00', '2100', 100, '2021-08-23'),
(140, 'Bangalore', 'Mumbai', '03:00:00', '04:40:00', '1900', 100, '2021-08-23'),
(141, 'Bangalore', 'Delhi', '02:30:00', '05:05:00', '2900', 100, '2021-08-23'),
(142, 'Bangalore', 'Kolkata', '14:45:00', '17:15:00', '3100', 100, '2021-08-23'),
(143, 'Bangalore', 'Chennai', '15:20:00', '16:20:00', '1300', 100, '2021-08-23'),
(144, 'Chennai', 'Delhi', '01:00:00', '03:00:00', '1200', 100, '2021-08-23'),
(145, 'Chennai', 'Delhi', '03:00:00', '06:00:00', '1200', 100, '2021-08-23'),
(146, 'Delhi', 'Mumbai', '16:00:00', '18:05:00', '2100', 100, '2021-08-25'),
(147, 'Delhi', 'Kolkata', '17:00:00', '19:00:00', '2200', 100, '2021-08-25'),
(148, 'Delhi', 'Chennai', '18:00:00', '21:00:00', '2000', 100, '2021-08-25'),
(149, 'Delhi', 'Bangalore', '13:00:00', '15:40:00', '2800', 100, '2021-08-25'),
(150, 'Mumbai', 'Delhi', '10:00:00', '12:05:00', '2200', 100, '2021-08-25'),
(151, 'Mumbai', 'Kolkata', '11:00:00', '13:35:00', '2900', 100, '2021-08-25'),
(152, 'Mumbai', 'Chennai', '12:00:00', '13:50:00', '1500', 100, '2021-08-25'),
(153, 'Mumbai', 'Bangalore', '13:15:00', '14:55:00', '1800', 100, '2021-08-25'),
(154, 'Kolkata', 'Delhi', '04:30:00', '06:50:00', '2700', 100, '2021-08-25'),
(155, 'Kolkata', 'Mumbai', '06:00:00', '08:40:00', '3100', 100, '2021-08-25'),
(156, 'Kolkata', 'Chennai', '09:25:00', '11:40:00', '2700', 100, '2021-08-25'),
(157, 'Kolkata', 'Bangalore', '11:45:00', '14:25:00', '3500', 100, '2021-08-25'),
(158, 'Chennai', 'Delhi', '00:00:00', '02:50:00', '2000', 100, '2021-08-25'),
(159, 'Chennai', 'Mumbai', '02:00:00', '03:50:00', '1400', 100, '2021-08-25'),
(160, 'Chennai', 'Bangalore', '10:00:00', '11:00:00', '1200', 100, '2021-08-25'),
(161, 'Chennai', 'Kolkata', '09:00:00', '10:55:00', '2100', 100, '2021-08-25'),
(162, 'Bangalore', 'Mumbai', '03:00:00', '04:40:00', '1900', 100, '2021-08-25'),
(163, 'Bangalore', 'Delhi', '02:30:00', '05:05:00', '2900', 100, '2021-08-25'),
(164, 'Bangalore', 'Kolkata', '14:45:00', '17:15:00', '3100', 100, '2021-08-25'),
(165, 'Bangalore', 'Chennai', '15:20:00', '16:20:00', '1300', 100, '2021-08-25'),
(166, 'Chennai', 'Delhi', '01:00:00', '03:00:00', '1200', 97, '2021-08-25'),
(167, 'Chennai', 'Delhi', '03:00:00', '06:00:00', '1200', 100, '2021-08-25'),
(168, 'Chennai', 'Delhi', '03:00:00', '06:00:00', '1200', 100, '2021-08-23'),
(169, 'Delhi', 'Mumbai', '16:00:00', '18:05:00', '2100', 100, '2021-08-23'),
(170, 'Delhi', 'Kolkata', '17:00:00', '19:00:00', '2200', 100, '2021-08-23'),
(171, 'Delhi', 'Mumbai', '16:00:00', '18:05:00', '2100', 100, '2021-08-26'),
(172, 'Delhi', 'Kolkata', '17:00:00', '19:00:00', '2200', 100, '2021-08-26'),
(173, 'Delhi', 'Chennai', '18:00:00', '21:00:00', '2000', 100, '2021-08-26'),
(174, 'Delhi', 'Bangalore', '13:00:00', '15:40:00', '2800', 100, '2021-08-26'),
(175, 'Mumbai', 'Delhi', '10:00:00', '12:05:00', '2200', 100, '2021-08-26'),
(176, 'Mumbai', 'Kolkata', '11:00:00', '13:35:00', '2900', 100, '2021-08-26'),
(177, 'Mumbai', 'Chennai', '12:00:00', '13:50:00', '1500', 100, '2021-08-26'),
(178, 'Mumbai', 'Bangalore', '13:15:00', '14:55:00', '1800', 100, '2021-08-26'),
(179, 'Kolkata', 'Delhi', '04:30:00', '06:50:00', '2700', 100, '2021-08-26'),
(180, 'Kolkata', 'Mumbai', '06:00:00', '08:40:00', '3100', 100, '2021-08-26'),
(181, 'Kolkata', 'Chennai', '09:25:00', '11:40:00', '2700', 100, '2021-08-26'),
(182, 'Kolkata', 'Bangalore', '11:45:00', '14:25:00', '3500', 100, '2021-08-26'),
(183, 'Chennai', 'Delhi', '00:00:00', '02:50:00', '2000', 100, '2021-08-26'),
(184, 'Chennai', 'Mumbai', '02:00:00', '03:50:00', '1400', 100, '2021-08-26'),
(185, 'Chennai', 'Bangalore', '10:00:00', '11:00:00', '1200', 100, '2021-08-26'),
(186, 'Chennai', 'Kolkata', '09:00:00', '10:55:00', '2100', 100, '2021-08-26'),
(187, 'Bangalore', 'Mumbai', '03:00:00', '04:40:00', '1900', 100, '2021-08-26'),
(188, 'Bangalore', 'Delhi', '02:30:00', '05:05:00', '2900', 100, '2021-08-26'),
(189, 'Bangalore', 'Kolkata', '14:45:00', '17:15:00', '3100', 100, '2021-08-26'),
(190, 'Bangalore', 'Chennai', '15:20:00', '16:20:00', '1300', 100, '2021-08-26'),
(191, 'Chennai', 'Delhi', '01:00:00', '03:00:00', '1200', 100, '2021-08-26'),
(192, 'Chennai', 'Delhi', '03:00:00', '06:00:00', '1200', 100, '2021-08-26'),
(193, 'Delhi', 'Mumbai', '13:00:00', '15:05:00', '2100', 100, '2021-08-24'),
(194, 'Delhi', 'Kolkata', '15:00:00', '17:00:00', '2200', 100, '2021-08-24'),
(195, 'Delhi', 'Chennai', '09:00:00', '12:00:00', '2000', 100, '2021-08-24'),
(196, 'Delhi', 'Bangalore', '15:00:00', '17:40:00', '2800', 100, '2021-08-24'),
(197, 'Mumbai', 'Delhi', '12:00:00', '14:05:00', '2200', 100, '2021-08-24'),
(198, 'Mumbai', 'Kolkata', '10:00:00', '12:35:00', '2900', 100, '2021-08-24'),
(199, 'Mumbai', 'Chennai', '10:00:00', '11:50:00', '1500', 100, '2021-08-24'),
(200, 'Mumbai', 'Bangalore', '15:15:00', '16:55:00', '1800', 100, '2021-08-24'),
(201, 'Kolkata', 'Delhi', '06:30:00', '08:50:00', '2700', 100, '2021-08-24'),
(202, 'Delhi', 'Mumbai', '13:00:00', '15:05:00', '2100', 100, '2021-08-23'),
(203, 'Delhi', 'Kolkata', '15:00:00', '17:00:00', '2200', 100, '2021-08-23'),
(204, 'Delhi', 'Chennai', '09:00:00', '12:00:00', '2000', 100, '2021-08-23'),
(205, 'Delhi', 'Bangalore', '15:00:00', '17:40:00', '2800', 100, '2021-08-23'),
(206, 'Mumbai', 'Delhi', '12:00:00', '14:05:00', '2200', 100, '2021-08-23'),
(207, 'Mumbai', 'Kolkata', '10:00:00', '12:35:00', '2900', 100, '2021-08-23'),
(208, 'Mumbai', 'Chennai', '10:00:00', '11:50:00', '1500', 100, '2021-08-23'),
(209, 'Mumbai', 'Bangalore', '15:15:00', '16:55:00', '1800', 100, '2021-08-23'),
(210, 'Kolkata', 'Delhi', '06:30:00', '08:50:00', '2700', 100, '2021-08-23'),
(211, 'Delhi', 'Mumbai', '13:00:00', '15:05:00', '2100', 100, '2021-08-25'),
(212, 'Delhi', 'Kolkata', '15:00:00', '17:00:00', '2200', 100, '2021-08-25'),
(213, 'Delhi', 'Chennai', '09:00:00', '12:00:00', '2000', 100, '2021-08-25'),
(214, 'Delhi', 'Bangalore', '15:00:00', '17:40:00', '2800', 100, '2021-08-25'),
(215, 'Mumbai', 'Delhi', '12:00:00', '14:05:00', '2200', 100, '2021-08-25'),
(216, 'Mumbai', 'Kolkata', '10:00:00', '12:35:00', '2900', 100, '2021-08-25'),
(217, 'Mumbai', 'Chennai', '10:00:00', '11:50:00', '1500', 100, '2021-08-25'),
(218, 'Mumbai', 'Bangalore', '15:15:00', '16:55:00', '1800', 100, '2021-08-25'),
(219, 'Kolkata', 'Delhi', '06:30:00', '08:50:00', '2700', 100, '2021-08-25'),
(220, 'Delhi', 'Mumbai', '13:00:00', '15:05:00', '2100', 100, '2021-08-26'),
(221, 'Delhi', 'Kolkata', '15:00:00', '17:00:00', '2200', 100, '2021-08-26'),
(222, 'Delhi', 'Chennai', '09:00:00', '12:00:00', '2000', 100, '2021-08-26'),
(223, 'Delhi', 'Bangalore', '15:00:00', '17:40:00', '2800', 100, '2021-08-26'),
(224, 'Mumbai', 'Delhi', '12:00:00', '14:05:00', '2200', 100, '2021-08-26'),
(225, 'Mumbai', 'Kolkata', '10:00:00', '12:35:00', '2900', 100, '2021-08-26'),
(226, 'Mumbai', 'Chennai', '10:00:00', '11:50:00', '1500', 100, '2021-08-26'),
(227, 'Mumbai', 'Bangalore', '15:15:00', '16:55:00', '1800', 100, '2021-08-26'),
(228, 'Kolkata', 'Delhi', '06:30:00', '08:50:00', '2700', 100, '2021-08-26');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_infomation`
--

CREATE TABLE `passenger_infomation` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(200) NOT NULL,
  `Last_Name` varchar(200) NOT NULL,
  `Age` int(150) NOT NULL,
  `Gender` varchar(25) NOT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `FLIGHT_ID` int(11) NOT NULL,
  `BOOKING_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport_location`
--
ALTER TABLE `airport_location`
  ADD PRIMARY KEY (`Airport_ID`);

--
-- Indexes for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD PRIMARY KEY (`Flight_ID`);

--
-- Indexes for table `passenger_infomation`
--
ALTER TABLE `passenger_infomation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport_location`
--
ALTER TABLE `airport_location`
  MODIFY `Airport_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flight_details`
--
ALTER TABLE `flight_details`
  MODIFY `Flight_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `passenger_infomation`
--
ALTER TABLE `passenger_infomation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
