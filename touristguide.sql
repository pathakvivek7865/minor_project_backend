-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2018 at 05:38 AM
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
-- Table structure for table `geo_location`
--

CREATE TABLE `geo_location` (
  `geo_location_id` bigint(20) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `place_id` bigint(20) NOT NULL,
  `place_place_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geo_location`
--

INSERT INTO `geo_location` (`geo_location_id`, `latitude`, `longitude`, `place_id`, `place_place_id`) VALUES
(1, 23244.24242, 2324.2424, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(32),
(32);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` bigint(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `place_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image`, `place_id`) VALUES
(1, 'file:///D:/APPLICATIONS/springboot2/ITG/src/main/uploads/places/download.jpg', 1),
(2, 'file:///D:/APPLICATIONS/springboot2/ITG/src/main/uploads/places/1.jpg', 1),
(3, 'file:///D:/APPLICATIONS/springboot2/ITG/src/main/uploads/places/2.jpg', 1),
(4, 'file:///D:/APPLICATIONS/springboot2/ITG/src/main/uploads/places/3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `established` date DEFAULT NULL,
  `importance` text NOT NULL,
  `prefered_activities` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `name`, `address`, `description`, `established`, `importance`, `prefered_activities`) VALUES
(1, 'PashupatiNath Temple', 'Gaushala,Kathmandu,Nepal', 'Famous temple among the Hindus.\r\nThe Pashupatinath Temple is a famous and sacred Hindu temple complex that is located on the banks of the Bagmati River, approximately 5 kilometres north-east of Kathmandu in the eastern part of Kathmandu Valley, the capital of Nepal.', '1817-07-04', 'Lord PashupatiNath ki jai.', 'https://travelmassif.com/wp-content/uploads/pashupatinath-temple.jpg'),
(2, 'Swayambhunath Stupa', 'Kathmandu,Nepal', 'Find peace and prayers on the little hillock of Swaymbhunath northwest of Kathmandu Valley.', '2018-07-02', 'The huge gold plated Vajra ‘thunderbolt’ set in the east side of the stupa\r\n\r\nBuddha statue on the west side of Swayambhu\r\n\r\nThe Sleeping Buddha\r\n\r\nThe Dewa Dharma Monastery, noted for a bronze icon of Buddha and traditional Tibetan paintings\r\n\r\nThe temple dedicated to Harati, the goddess of all children. It is said that she was an ogress before Lord Buddha converted her to be the caretaker of all children.', 'https://www.welcomenepal.com/imagecache/crop_featured_image/swayambhu-leisure-1.jpeg');

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
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'ADMIN'),
(2, 'USER'),
(3, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `id` bigint(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourist`
--

INSERT INTO `tourist` (`id`, `name`, `status`) VALUES
(1, 'vivek', 0),
(2, 'updated something', 1),
(3, 'pathak', 0),
(8, 'vivek', 0),
(11, 'pathak', 0),
(12, 'vivek pathak', 1),
(14, 'new', 0),
(15, 'new and new', 0),
(16, 'tourist', 0),
(18, 'v', 1),
(19, 'a', 1),
(20, 'g', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `name`, `last_name`) VALUES
(1, 'vivek', '$2a$10$QV7Cax1520gpjaA9WVh2N./.hkUqSPej39.G.Q/NEFij4los9N/eO', 'dai', 'pathak'),
(25, 'pathak', '$2a$10$sfNXwkqG7Fd4.918sp48ae3qgXqVAcKSLig/5mRTmI9CL0degIz1W', 'Vivek', 'Pathak'),
(29, 'v', '$2a$10$KRleRjaPnRRdZauRcpE4..HpK7bcvN.SADvXbqG1DZa5L8hpBY0dC', 'v', 'v'),
(30, 'a', '$2a$10$HkLV79hCPgpG8y1RV7ykNO3VSQFw8QySn.308FyCeu0c7I6h7Ct8G', 'a', 'a'),
(31, 'g', '$2a$10$fZsHFhZJYg.WRFR.g53/OuKeC6MqKtcj7OmVw1BxBebFHBjb746ki', 'g', 'g');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `afterSignup` AFTER INSERT ON `user` FOR EACH ROW BEGIN


   INSERT INTO tourist(name,status)
   VALUES
   ( NEW.name,
     1
   );

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users_places`
--

CREATE TABLE `users_places` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `place_id` bigint(20) NOT NULL,
  `rating` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_places`
--

INSERT INTO `users_places` (`id`, `user_id`, `place_id`, `rating`) VALUES
(5, 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1);

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
-- Indexes for table `geo_location`
--
ALTER TABLE `geo_location`
  ADD PRIMARY KEY (`geo_location_id`),
  ADD UNIQUE KEY `UK_dblgsp0uk3q2adavmj0qnchv2` (`place_place_id`),
  ADD KEY `FKclqnor45sjhjmsj4hxf4nc5vr` (`place_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `FK9c8l45da3h0hylfbw3i118e3l` (`place_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_places`
--
ALTER TABLE `users_places`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`place_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD UNIQUE KEY `UK_it77eq964jhfqtu54081ebtio` (`role_id`);

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
-- AUTO_INCREMENT for table `geo_location`
--
ALTER TABLE `geo_location`
  MODIFY `geo_location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tourist`
--
ALTER TABLE `tourist`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_places`
--
ALTER TABLE `users_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- Constraints for table `geo_location`
--
ALTER TABLE `geo_location`
  ADD CONSTRAINT `FKclqnor45sjhjmsj4hxf4nc5vr` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK9c8l45da3h0hylfbw3i118e3l` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
