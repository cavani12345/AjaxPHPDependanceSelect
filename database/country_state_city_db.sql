-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 02:13 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `country_state_city_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries_tb`
--

CREATE TABLE `countries_tb` (
  `country_id` int(22) NOT NULL,
  `country_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries_tb`
--

INSERT INTO `countries_tb` (`country_id`, `country_name`) VALUES
(1, 'Rwanda'),
(2, 'Burundi'),
(3, 'Uganda'),
(4, 'Kenya'),
(5, 'Tanzania');

-- --------------------------------------------------------

--
-- Table structure for table `district_tb`
--

CREATE TABLE `district_tb` (
  `distrct_id` int(22) NOT NULL,
  `country_id` int(22) NOT NULL,
  `province_id` int(22) NOT NULL,
  `district_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district_tb`
--

INSERT INTO `district_tb` (`distrct_id`, `country_id`, `province_id`, `district_name`) VALUES
(1, 1, 1, 'Rusizi'),
(2, 1, 1, 'Rubavu'),
(3, 1, 1, 'Nyabihu'),
(4, 1, 1, 'Rutsiro'),
(5, 1, 2, 'Musanze'),
(6, 1, 2, 'Rulindo'),
(7, 1, 2, 'Gicumbi'),
(8, 1, 3, 'Huye'),
(9, 1, 2, 'Nyanza'),
(10, 1, 3, 'Kamonyi'),
(11, 1, 4, 'Kirehe'),
(12, 1, 4, 'Kayonza'),
(13, 1, 4, 'Rwamagana');

-- --------------------------------------------------------

--
-- Table structure for table `province_tb`
--

CREATE TABLE `province_tb` (
  `province_id` int(22) NOT NULL,
  `country_id` int(22) NOT NULL,
  `province_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `province_tb`
--

INSERT INTO `province_tb` (`province_id`, `country_id`, `province_name`) VALUES
(1, 1, 'Western'),
(2, 1, 'Southern'),
(3, 1, 'Nothern'),
(4, 1, 'Eastern'),
(5, 2, 'Gitega'),
(6, 2, 'Bujumbura'),
(7, 3, 'Kampala'),
(8, 3, 'Mirembi'),
(9, 4, 'Nairobi'),
(10, 4, 'Mwanza'),
(11, 5, 'Dodoma'),
(12, 5, 'Adisabeba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries_tb`
--
ALTER TABLE `countries_tb`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `district_tb`
--
ALTER TABLE `district_tb`
  ADD PRIMARY KEY (`distrct_id`);

--
-- Indexes for table `province_tb`
--
ALTER TABLE `province_tb`
  ADD PRIMARY KEY (`province_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries_tb`
--
ALTER TABLE `countries_tb`
  MODIFY `country_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `district_tb`
--
ALTER TABLE `district_tb`
  MODIFY `distrct_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `province_tb`
--
ALTER TABLE `province_tb`
  MODIFY `province_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
