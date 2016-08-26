-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2016 at 03:20 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work`
--

-- --------------------------------------------------------

--
-- Table structure for table `amis`
--

CREATE TABLE `amis` (
  `id_invitation` int(11) NOT NULL,
  `pseudo_exp` varchar(100) NOT NULL,
  `pseudo_dest` varchar(100) NOT NULL,
  `date_invitation` datetime NOT NULL,
  `date_confirmation` datetime NOT NULL,
  `date_vue` datetime NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `amis`
--

INSERT INTO `amis` (`id_invitation`, `pseudo_exp`, `pseudo_dest`, `date_invitation`, `date_confirmation`, `date_vue`, `active`) VALUES
(6, 'azerty', 'azerty1', '2016-08-26 02:49:14', '2016-08-26 02:50:29', '2016-08-26 02:51:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `a` varchar(100) NOT NULL,
  `de` varchar(100) NOT NULL,
  `sujet` varchar(175) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `date_vue` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `sexe` varchar(25) NOT NULL,
  `situation` varchar(25) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `apropos` varchar(500) NOT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `sexe`, `situation`, `pseudo`, `password`, `email`, `apropos`, `avatar`) VALUES
(4, 'Homme', 'Celibataire', 'azerty', '$2y$08$J8FmCR3CUQbbKhBUZ6Fyae.RUF7.2WldmDz5hF0f2nNefRzdOb/jS', 'toto@toto.fr', 'gggggggggggg', 'default.jpg'),
(5, 'Homme', 'Celibataire', 'azerty1', '$2y$08$pHfuV0rk4h0TkEkrAZs2I.VyVdbQYSshaRzweRZQ7KBt1g6o3lNw.', 'reasonres@gmail.com', 'fgggggggggggggg', 'default.jpg'),
(6, 'Homme', 'Celibataire', 'azerty2', '$2y$08$GNmq2Am7a2qDzp.wFaB4o.xYXzruJNg67GUBt.SYD295fbkA4THw.', 'titi@toto.fr', 'gggggggggggggggggggg', 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amis`
--
ALTER TABLE `amis`
  ADD PRIMARY KEY (`id_invitation`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amis`
--
ALTER TABLE `amis`
  MODIFY `id_invitation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
