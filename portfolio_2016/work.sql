-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 01, 2016 at 04:55 
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
-- Table structure for table `recuperation`
--

CREATE TABLE `recuperation` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` int(11) NOT NULL,
  `valide` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `sexe` varchar(25) NOT NULL,
  `situation` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `region` varchar(75) NOT NULL,
  `ville` varchar(95) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `apropos` varchar(500) NOT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `sexe`, `situation`, `age`, `region`, `ville`, `pseudo`, `password`, `email`, `apropos`, `avatar`) VALUES
(42, 'Homme', 'Celibataire', 1, 'Alsace', 'strasbourg', 'azerty', '$2y$08$cq9IKoc0YAE9cFSF9AeLzuliR.1UatzACZdRYnvrYF00J8rZdvNtS', 'toto@toto.fr', 'ddddddddd', 'default.jpg'),
(43, 'Homme', 'Celibataire', 1, 'Alsace', 'strasbourg', 'azerty1', '$2y$08$lCIDq07LjgVi3sZ6cn.2MuI8k52jWCFiXC.3l2cOruaq8YrUbwvOC', 'titi@toto.fr', 'ssssddsdddd', 'default.jpg'),
(44, 'Homme', 'Celibataire', 1, 'Alsace', 'strasbourg', 'azerty2', '$2y$08$KNpXcdb0ayO1cBtcuke2DuKNgXJUSLUqsjMb.OA9htdMZS9gpcRmK', 'toto@titi.fr', 'dddfdfddf', 'default.jpg');

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
-- Indexes for table `recuperation`
--
ALTER TABLE `recuperation`
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
  MODIFY `id_invitation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `recuperation`
--
ALTER TABLE `recuperation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
