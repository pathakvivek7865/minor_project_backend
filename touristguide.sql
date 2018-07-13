-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 11:59 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `touristguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip_code` int(7) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `house_number` varchar(50) DEFAULT NULL,
  `tourist_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `country`, `state`, `city`, `zip_code`, `street`, `house_number`, `tourist_id`) VALUES
(18, 'Nepal', '3', 'ktm', 4600, 'Koteshwor, Near BhatBhateni', '5425', 1),
(56, 'india', 'Tamil Nadu', 'Chennai', 12345, 'something', '34454', 2),
(57, 'india', 'tamilnadu', 'chennai', 1234, 'something', '123', 3),
(58, 'Nepal', '3', 'ktm', 4600, 'Koteshwor, Near BhatBhateni', '5425', 8);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint(10) DEFAULT NULL,
  `tourist_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `email`, `phone`, `tourist_id`) VALUES
(1, 'pathakvivek7865@gmail.com', 9803065373, 1),
(2, 'v@gmail.com', 9803065373, 2);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `img1` varchar(100) DEFAULT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `img4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `PlaceId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Established` varchar(20) NOT NULL,
  `Importance` text NOT NULL,
  `Rating` int(1) NOT NULL,
  `PreferredActivities` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `PlaceId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `id` bigint(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourist`
--

INSERT INTO `tourist` (`id`, `name`, `status`) VALUES
(1, 'vivek', 0),
(2, 'updated something', 1),
(3, 'pathak', 0),
(8, 'vivek', 0),
(9, 'updated something', 1),
(10, 'swekshya', 0),
(11, 'pathak', 0),
(12, 'vivek pathak', 1),
(14, 'new', 0),
(15, 'new and new', 0),
(16, 'tourist', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK8eighrh4x8n0858arplvwpy2d` (`tourist_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `FKkbcphunnkhq5r8bopmqrxh392` (`tourist_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`PlaceId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `PlaceId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourist`
--
ALTER TABLE `tourist`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK8eighrh4x8n0858arplvwpy2d` FOREIGN KEY (`tourist_id`) REFERENCES `tourist` (`id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FKkbcphunnkhq5r8bopmqrxh392` FOREIGN KEY (`tourist_id`) REFERENCES `tourist` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
