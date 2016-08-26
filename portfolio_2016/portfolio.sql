-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2016 at 03:18 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `email`, `message`) VALUES
(11, 'uryreury', 'toto@toto.fr', 'rrr'),
(12, 'uryreury', 'toto@toto.fr', 'rrr'),
(13, 'uryreury', 'toto@toto.fr', 'rrr'),
(14, 'uryreury', 'toto@toto.fr', 'rrr'),
(15, 'uryreury', 'toto@toto.fr', 'rrr'),
(16, 'uryreury', 'toto@toto.fr', 'rrr'),
(17, 'uryreury', 'toto@toto.fr', 'rrr'),
(18, 'uryreury', 'toto@toto.fr', 'rrr'),
(19, 'uryreury', 'toto@toto.fr', 'rrr'),
(20, 'uryreury', 'toto@toto.fr', 'rrr'),
(21, 'uryreury', 'toto@toto.fr', 'rrr');

-- --------------------------------------------------------

--
-- Table structure for table `realisation`
--

CREATE TABLE `realisation` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `image` varchar(175) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `realisation`
--

INSERT INTO `realisation` (`id`, `titre`, `image`) VALUES
(1, 'officialwork', 'projet1.png'),
(2, 'ile-yoga', 'projet2.png'),
(3, 'red-wolf', 'projet3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realisation`
--
ALTER TABLE `realisation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `realisation`
--
ALTER TABLE `realisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
