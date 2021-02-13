-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 08:48 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arc360_menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `dish_id` int(5) NOT NULL,
  `dish_name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `portions` int(5) NOT NULL,
  `price1` int(5) NOT NULL,
  `price2` int(5) NOT NULL,
  `cat_id` int(5) NOT NULL,
  `scat_id` int(5) NOT NULL,
  `is_veg` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`dish_id`, `dish_name`, `description`, `image`, `portions`, `price1`, `price2`, `cat_id`, `scat_id`, `is_veg`) VALUES
(1, 'Sp. Chicken Soup', 'Special Chicken Soup', '', 1, 155, 0, 1, 1, 0),
(2, 'Crab Meat Soup', 'Crab Meat soup', '', 1, 175, 0, 1, 1, 0),
(3, 'Paya Soup', 'This is Paya Soup.', '', 1, 165, 0, 1, 1, 0),
(4, 'Alu Wadi', 'This is Alu Wadi', '', 1, 105, 0, 2, 3, 0),
(5, 'Kothimbirwadi', 'This is Kothimbirwadi.', '', 1, 105, 0, 2, 3, 0),
(6, 'Veg Pakoda', 'This is veg pakoda.', '', 1, 115, 0, 2, 3, 0),
(7, 'Veg. Saguti', 'This is veg saguti', '', 1, 175, 0, 3, 5, 0),
(8, 'Dalimbi Usal', 'This is Dalimbi Usal.', '', 1, 145, 0, 3, 5, 0),
(9, 'Vangi Bharit', 'This is Vangi Bharit', '', 1, 155, 0, 3, 5, 0),
(10, 'Tomato Soup', 'This is tomato soup.', '', 1, 105, 0, 1, 2, 0),
(11, 'Veg. Hot & Sour soup', 'This is veg hot and sour soup.', '', 1, 115, 0, 1, 2, 0),
(12, 'Veg. Manchow Soup', 'This is veg Machow Soup', '', 1, 115, 0, 1, 2, 0),
(13, 'Paneer Tikka', 'This is Paneer Tikka', '', 1, 195, 0, 2, 4, 0),
(14, 'Veg Seekh Kabab', 'This is veg Seekh kabab', '', 1, 245, 0, 2, 4, 0),
(15, 'Paneer 65', 'This is Paneer 65', '', 1, 195, 0, 2, 4, 0),
(16, 'Alu Mutter', 'This is Alu Mutter.', '', 1, 155, 0, 3, 6, 0),
(17, 'Bhendi Masala', 'This is Bhendi Masala.', '', 1, 165, 0, 3, 6, 0),
(18, 'Chana Masala', 'This is Chana Masala', '', 1, 155, 0, 3, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `cat_id` int(5) NOT NULL,
  `cat_name` varchar(20) NOT NULL,
  `has_sc` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`cat_id`, `cat_name`, `has_sc`) VALUES
(1, 'Soup', 1),
(2, 'Starters', 1),
(3, 'Veg Main Course', 1),
(4, 'Non-veg Main Course', 1),
(5, 'Dry Fish', 0),
(6, 'Eggs', 0),
(7, 'Fish Masala / Suka', 0),
(8, 'Fish Fry', 0),
(9, 'Dal', 0),
(10, 'Tandoori / Kabab', 0),
(11, 'Rice / Biryani', 1),
(12, 'Non-veg Biryani', 0),
(13, 'Chapati / Bhakri', 0),
(14, 'Assorted Accomplishm', 0),
(15, 'Sharbat', 0),
(16, 'Thali', 0),
(17, 'Sweets', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `scat_id` int(5) NOT NULL,
  `scat_name` varchar(20) NOT NULL,
  `cat_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`scat_id`, `scat_name`, `cat_id`) VALUES
(1, 'Specials', 1),
(2, 'Punjabi & Chinese', 1),
(3, 'Specials', 2),
(4, 'Punjabi & Chinese', 2),
(5, 'Specials', 3),
(6, 'Punjabi & Chinese', 3),
(7, 'Specials', 4),
(8, 'Punjabi & Chinese', 4),
(9, 'Specials', 11),
(10, 'Punjabi & Chinese', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`dish_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `scat_id` (`scat_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`scat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dish`
--
ALTER TABLE `dish`
  ADD CONSTRAINT `dish_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `menu` (`cat_id`),
  ADD CONSTRAINT `dish_ibfk_2` FOREIGN KEY (`scat_id`) REFERENCES `subcategory` (`scat_id`),
  ADD CONSTRAINT `dish_ibfk_3` FOREIGN KEY (`scat_id`) REFERENCES `subcategory` (`scat_id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `menu` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
