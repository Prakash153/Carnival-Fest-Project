-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 04:03 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carnival`
--

-- --------------------------------------------------------

--
-- Table structure for table `audition_form`
--

CREATE TABLE `audition_form` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(75) NOT NULL,
  `skill` varchar(30) NOT NULL,
  `hotel_room` tinyint(1) NOT NULL,
  `vehicle` tinyint(1) NOT NULL,
  `food` tinyint(1) NOT NULL,
  `about` varchar(250) NOT NULL,
  `consent` tinyint(1) NOT NULL,
  `username` varchar(40) NOT NULL,
  `passwd` varchar(40) NOT NULL,
  `picpname` varchar(40) NOT NULL,
  `clippname` varchar(40) NOT NULL,
  `uid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `f_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`f_name`, `email`, `message`) VALUES
('aniket ', 'aniket@gmail.com', 'you made a really nice website\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audition_form`
--
ALTER TABLE `audition_form`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audition_form`
--
ALTER TABLE `audition_form`
  MODIFY `uid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
