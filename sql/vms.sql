-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2019 at 05:11 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`admin_id`, `username`, `password`, `email`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 'sdfsd', '123', 'harish.doublecodes@gmail.com', 1, '2018-12-08 08:51:06', NULL),
(2, 'sdfsd', '123', 'harish.doublecodes@gmail.com', 1, '2018-12-08 08:53:25', NULL),
(3, 'sdfsd', '123', 'harish.doublecodes@gmail.com', 1, '2018-12-08 08:56:35', NULL),
(4, 'sdfsd', '123', 'harish.doublecodes@gmail.com', 1, '2018-12-08 08:57:53', NULL),
(5, 'sdfsd', '123', 'harish.doublecodes@gmail.com', 1, '2018-12-08 08:59:47', NULL),
(6, 'sdfsd', '123', 'harish.doublecodes@gmail.com', 1, '2018-12-08 09:01:06', NULL),
(7, 'sdfsd', '123', 'harish.doublecodes@gmail.com', 1, '2018-12-08 09:01:37', NULL),
(8, 'avinash', '123', 'harish.doublecodes@gmail.com', 1, '2018-12-08 09:03:25', NULL),
(9, 'dinesh', '123', 'dinesh@gmail.com', 1, '2018-12-08 10:53:01', NULL),
(20, 'dineshdamin', '111', 'dinesh1ads@gmail.com', 1, '2018-12-08 12:25:13', NULL),
(21, 'dc', '123', 'dc@gmail.com', 1, '2018-12-09 13:00:56', NULL),
(22, 'sdfsd', '123', 'harishasfsdf.doublecodes@gmail.com', 1, '2018-12-29 14:37:39', NULL),
(23, 'sdfsd', '123', 'harishasfsdf.doublecodes@gmail.com', 1, '2018-12-29 14:39:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_role`
--

CREATE TABLE `admin_user_role` (
  `user_role_id` int(11) NOT NULL,
  `adin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_role`
--

INSERT INTO `admin_user_role` (`user_role_id`, `adin_id`, `role_id`) VALUES
(1, 8, 2),
(2, 9, 1),
(3, 10, 1),
(4, 11, 1),
(5, 12, 1),
(6, 13, 2),
(7, 14, 2),
(8, 15, 2),
(9, 16, 2),
(10, 17, 2),
(11, 18, 2),
(12, 19, 2),
(13, 20, 1),
(14, 21, 1),
(15, 22, 2),
(16, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table is used for cart Items ';

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`s_no`, `p_id`, `qty`, `user_id`, `created_on`, `updated_on`) VALUES
(1, 1, 110, 2, '2018-11-18 13:53:12', '2018-12-29 09:19:27'),
(2, 6, 30, 2, '2018-12-05 09:39:10', '2018-12-05 09:39:33'),
(3, 8, 20, 2, '2018-12-05 09:39:47', '2018-12-05 09:39:53'),
(4, 2, 10, 2, '2018-12-06 08:26:14', NULL),
(5, 2, 10, 11, '2019-01-05 08:55:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(2, 'adsfs');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ordered_by` int(200) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ordered_by`, `created_on`, `updated_on`, `total_amount`) VALUES
(1, 10, '2018-12-26 09:34:06', NULL, 123213),
(2, 10, '2018-12-26 09:34:47', NULL, 123213),
(3, 2, '2018-12-27 08:32:33', NULL, 123213),
(4, 2, '2018-12-27 08:43:41', NULL, 223),
(5, 2, '2018-12-27 08:45:25', NULL, 223),
(6, 2, '2018-12-27 08:45:40', NULL, 223),
(7, 2, '2018-12-27 08:46:47', NULL, 223),
(8, 2, '2018-12-27 09:10:26', NULL, 123213),
(9, 2, '2018-12-27 09:11:25', NULL, 123213),
(10, 2, '2018-12-27 09:11:56', NULL, 123213),
(11, 2, '2018-12-27 09:12:11', NULL, 123213),
(12, 2, '2018-12-27 09:12:48', NULL, 123213),
(13, 2, '2019-01-03 08:54:16', NULL, 123213),
(14, 11, '2019-01-05 08:55:54', NULL, 223);

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `order_line_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`order_line_id`, `p_id`, `qty`, `user_id`, `order_id`, `total_amount`, `created_on`, `updated_on`) VALUES
(1, 6, 1, 10, 0, 123213, '2018-12-26 09:34:48', NULL),
(2, 8, 1, 2, 0, 123213, '2018-12-27 08:32:33', NULL),
(3, 2, 1, 2, 7, 223, '2018-12-27 08:46:47', NULL),
(4, 7, 1, 2, 12, 123213, '2018-12-27 09:12:48', NULL),
(5, 5, 1, 2, 13, 123213, '2019-01-03 08:54:16', NULL),
(6, 2, 1, 11, 14, 223, '2019-01-05 08:55:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(200) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_description` varchar(200) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_description`, `p_price`, `p_img`, `cat_id`, `subcat_id`, `created_on`, `updated_on`) VALUES
(1, 'product1', 'test', 2000, 'ÿØÿá\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0ÿì\0Ducky\0\0\0\0\02\0\0ÿá*http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.6-c1', 1, 2, '2018-12-06 08:54:03', '2018-12-15 08:45:38'),
(2, 'sdfg', 'My Product', 223, '6iyo5kRAT.jpg', 2, 2, '2018-12-06 08:54:03', '2018-12-15 08:45:42'),
(4, 'dinesh', 'sdfgd', 111, '', 2, 3, '2018-12-06 08:54:03', '2018-12-15 08:45:45'),
(5, 'sdfgsdASFs', 'sdf', 123213, '', 3, 1, '2018-12-06 08:54:03', '2018-12-15 08:45:49'),
(6, 'sdfgsdASFs', 'sdf', 123213, '66iyo5kRAT.jpg', 1, 4, '2018-12-06 08:54:03', '2018-12-15 08:45:54'),
(7, 'sdfgsdASFs', 'sdf', 123213, '76iyo5kRAT.jpg', 2, 4, '2018-12-06 08:54:03', '2018-12-15 08:45:58'),
(8, 'sdfgsdASFs', 'sdf', 2, '86iyo5kRAT.jpg', 4, 4, '2018-12-06 08:54:03', '2018-12-15 08:46:00'),
(14, 'sdgdfs', 'dsfgdxfhdh', 1, 'dfghdfgd', 4, 3, '2019-02-05 09:18:58', '0000-00-00 00:00:00'),
(15, 'sdgdfs', 'dsfgdxfhdh', 1, 'dfghdfgd', 4, 3, '2019-02-05 09:30:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `s_no` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cpassword` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`s_no`, `name`, `username`, `password`, `cpassword`) VALUES
(1, 'dinesh', 'dinesh@shiftonesystems.com', '307154d76f9d105acf1f66943f6c794d', '307154d76f9d105acf1f66943f6c794d'),
(2, 'Harish Vivekanandan', 'harish.doublecodes@gmail.com', '123', '123'),
(4, 'babu', 'babu@gmail.com', 'chennai789', 'chennai789'),
(5, 'Avinash', 'avinashachu000@123.com', '123456', '123456'),
(6, 'fetr', '', '', ''),
(7, 'gopi', 'gopi@shit.com', '123', '123'),
(8, 'Harish Vivekanandan', 'harish.ameex@gmail.com', 'harish', 'harish'),
(9, 'dinesh', 'dinesh@dgf.com', '123', '123'),
(10, 'balaji', 'balaji@gmail.com', '123', '123'),
(11, 'avinash', 'avinash@gmail.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `subcat_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`subcat_id`, `cat_id`, `subcat_name`) VALUES
(1, 2, 'subcat1dinesh'),
(2, 2, 'subcat3'),
(3, 2, 'subcat1'),
(4, 2, 'subcat1'),
(5, 4, 'dinesh'),
(6, 5, 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_user_role`
--
ALTER TABLE `admin_user_role`
  ADD PRIMARY KEY (`user_role_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`order_line_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`subcat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `admin_user_role`
--
ALTER TABLE `admin_user_role`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `order_line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `s_no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
