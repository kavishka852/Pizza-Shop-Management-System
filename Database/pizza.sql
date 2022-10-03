-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 03, 2022 at 04:59 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `addmember`
--

DROP TABLE IF EXISTS `addmember`;
CREATE TABLE IF NOT EXISTS `addmember` (
  `id` varchar(10) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `mobile` int(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `addmember`
--

INSERT INTO `addmember` (`id`, `name`, `mobile`, `email`, `password`) VALUES
('001', 'Lakshan', 714578123, 'lak@gmail.com', 'lak1233'),
('002', 'Chamara', 754512789, 'cha@gmail.com', 'cha.123');

-- --------------------------------------------------------

--
-- Table structure for table `addpizza`
--

DROP TABLE IF EXISTS `addpizza`;
CREATE TABLE IF NOT EXISTS `addpizza` (
  `pid` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `addpizza`
--

INSERT INTO `addpizza` (`pid`, `pname`, `image`, `price`, `category`, `description`) VALUES
('001', 'Chiken pizza', 'E:NetPizza Shop Management Systemchiken pizza.jpg', 2450, 'Non veg', 'Saucepackets included in the box'),
('002', 'Chiken masala', 'E:NetPizza Shop Management SystemChiken masala.jpg', 2100, 'Non veg', 'Saucepackets included in the box'),
('003', 'Chese chiken', 'E:NetPizza Shop Management Systemchese chiken.jpg', 2130, 'Non veg', 'Source packets included in the box'),
('004', 'Vegetable pan pizza', 'E:NetPizza Shop Management Systemvege [+pizza.jpg', 1800, 'Veg', 'Saucepackets included in the box');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `memid` varchar(10) DEFAULT NULL,
  `feedback` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`memid`, `feedback`) VALUES
('001', 'Chilen pizza was very tasty! Thank u!');

-- --------------------------------------------------------

--
-- Table structure for table `orderpizza`
--

DROP TABLE IF EXISTS `orderpizza`;
CREATE TABLE IF NOT EXISTS `orderpizza` (
  `memid` varchar(10) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `memno` int(10) DEFAULT NULL,
  `pid` varchar(10) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `total` int(20) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orderpizza`
--

INSERT INTO `orderpizza` (`memid`, `mname`, `memno`, `pid`, `pname`, `quantity`, `total`, `address`, `Date`, `Time`) VALUES
('001', 'Lakshan', 714578123, '001', 'Chiken pizza', 1, 2450, 'Colombo', '28-09-2022', '17:25:27');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
