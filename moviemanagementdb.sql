-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 05:47 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviemanagementdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `movie` varchar(50) NOT NULL DEFAULT '0',
  `format` varchar(50) NOT NULL DEFAULT '0',
  `seat` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '0',
  `showtime` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`id`, `name`, `phone`, `movie`, `format`, `seat`, `price`, `showdate`, `showtime`) VALUES
(2, 'Ramki', '0114784878', 'Black panther', '3d', 4, 600, '0000-00-00', '04:20:00'),
(3, 'Kadam', '01154878', 'Black Panther', '2d', 3, 1050, '2018-01-01', '4:20'),
(4, 'Ramakrishna', 'Sayee', 'I see yoou', '2d', 0, 0, '2018-01-01', '4:20'),
(5, 'ramakrishna', '3153958823', 'Rocking shack', '2d', 4, 2000, '2018-12-01', '3:20 PM');

-- --------------------------------------------------------

--
-- Table structure for table `movie_tb`
--

CREATE TABLE `movie_tb` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(50) NOT NULL DEFAULT '0',
  `m_genre` varchar(50) NOT NULL DEFAULT '0',
  `m_format` varchar(50) NOT NULL,
  `m_showdate` varchar(50) NOT NULL,
  `m_showtime` varchar(50) NOT NULL,
  `m_ticketprice` float NOT NULL,
  `m_seat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_tb`
--

INSERT INTO `movie_tb` (`m_id`, `m_name`, `m_genre`, `m_format`, `m_showdate`, `m_showtime`, `m_ticketprice`, `m_seat`) VALUES
(3, 'I see you', 'Romantic', '2d', '2019-01-01', '4:20', 350, 42),
(4, 'The Detail', 'Action', '2d', '2018-11-01', '6:30PM', 200, 45),
(5, 'Black Panther ', 'Adventure', '2d', '2018-12-01', '3:20 PM', 500, 41),
(7, 'Rocking shack', 'Funny', '2d', '2018-12-12', '5:30 PM', 400, 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_tb`
--
ALTER TABLE `movie_tb`
  ADD PRIMARY KEY (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movie_tb`
--
ALTER TABLE `movie_tb`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
