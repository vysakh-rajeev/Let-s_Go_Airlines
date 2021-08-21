-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 06:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

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
(101, 'Delhi', 'Mumbai', '16:00:00', '18:05:00', '2100', 100, '2021-08-19'),
(102, 'Delhi', 'Kolkata', '17:00:00', '19:00:00', '2200', 100, '2021-08-19'),
(103, 'Delhi', 'Chennai', '18:00:00', '21:00:00', '2000', 100, '2021-08-19'),
(104, 'Delhi', 'Bangalore', '13:00:00', '15:40:00', '2800', 100, '2021-08-19'),
(105, 'Mumbai', 'Delhi', '10:00:00', '12:05:00', '2200', 100, '2021-08-19'),
(106, 'Mumbai', 'Kolkata', '11:00:00', '13:35:00', '2900', 100, '2021-08-19'),
(107, 'Mumbai', 'Chennai', '12:00:00', '13:50:00', '1500', 100, '2021-08-19'),
(108, 'Mumbai', 'Bangalore', '13:15:00', '14:55:00', '1800', 100, '2021-08-19'),
(109, 'Kolkata', 'Delhi', '04:30:00', '06:50:00', '2700', 100, '2021-08-19'),
(110, 'Kolkata', 'Mumbai', '06:00:00', '08:40:00', '3100', 100, '2021-08-19'),
(111, 'Kolkata', 'Chennai', '09:25:00', '11:40:00', '2700', 100, '2021-08-19'),
(112, 'Kolkata', 'Bangalore', '11:45:00', '14:25:00', '3500', 100, '2021-08-19'),
(113, 'Chennai', 'Delhi', '00:00:00', '02:50:00', '2000', 100, '2021-08-19'),
(114, 'Chennai', 'Mumbai', '02:00:00', '03:50:00', '1400', 100, '2021-08-19'),
(115, 'Chennai', 'Bangalore', '10:00:00', '11:00:00', '1200', 100, '2021-08-19'),
(116, 'Chennai', 'Kolkata', '09:00:00', '10:55:00', '2100', 100, '2021-08-19'),
(117, 'Bangalore', 'Mumbai', '03:00:00', '04:40:00', '1900', 100, '2021-08-20'),
(118, 'Bangalore', 'Delhi', '02:30:00', '05:05:00', '2900', 100, '2021-08-20'),
(119, 'Bangalore', 'Kolkata', '14:45:00', '17:15:00', '3100', 100, '2021-08-19'),
(120, 'Bangalore', 'Chennai', '15:20:00', '16:20:00', '1300', 100, '2021-08-19');

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
  MODIFY `Flight_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `passenger_infomation`
--
ALTER TABLE `passenger_infomation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
