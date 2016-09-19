-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 19, 2016 at 11:28 
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

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
  `active` int(11) NOT NULL,
  `refuse` int(11) NOT NULL
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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `photo` varchar(175) NOT NULL
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

--
-- Dumping data for table `recuperation`
--

INSERT INTO `recuperation` (`id`, `email`, `code`, `valide`) VALUES
(8, 'toto@toto.fr', 13454797, 0);

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
  `avatar` varchar(100) NOT NULL,
  `connecte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `sexe`, `situation`, `age`, `region`, `ville`, `pseudo`, `password`, `email`, `apropos`, `avatar`, `connecte`) VALUES
(1, 'Homme', 'Celibataire', 1, 'Alsace', 'ville test', 'azerty1', '$2y$08$TTSFwDA0QXcibIjKoKjkIeTygfxS//OXbDA7ohdweZb9vliNYUuii', 'toto@toto.fr', '..........................................................................................................................', 'default.jpg', 0),
(2, 'Homme', 'Celibataire', 15, '...', 'ville test', 'azerty2', '$2y$08$98wuA.4rq./80z6WCFAr.e8AwKXsZRHGL4Fc2OCE0wNp/S/lVJ2Zi', 'titi@toto.fr', '.....................................................................................', 'default.jpg', 1),
(3, 'Femme', 'Celibataire', 33, 'Languedoc-Roussillon', 'ville test', 'azerty3', '$2y$08$At.6EVmBUGtVUTJwH8hzjOeAUdGG4jz3aUHi3MkaUiuPvDEU3sMC6', 'tuto@toto.fr', '......................................................................................', 'default.jpg', 0),
(4, 'Homme', 'Celibataire', 28, 'Aquitaine', 'ville test', 'azerty4', '$2y$08$riJpGBw7XHHcg3THmgFxPuj2eNFRr8Z.U7AfDFdI2siTyqKHpnpzm', 'reksdixnres@gmail.com', '......................................................................................', 'default.jpg', 1),
(5, 'Femme', 'Celibataire', 19, 'Centre', 'ville test', 'azerty5', '$2y$08$jfvkx9WGAXJVKsbE04DR6OqhMAZ7gGghsTaNK9U5JNE0SntYSF14y', 'titu@toto.fr', '..........................................................................................................................', 'default.jpg', 0),
(6, 'Femme', 'Celibataire', 35, '...', 'ville test', 'azerty6', '$2y$08$4P.5GtjC.ON42MD/C9ClD.JzcRwGHN46m9DmzIKeVU42mCtERkVl.', 'reas@gmail.com', '.......................................................................................................', 'default.jpg', 1),
(7, 'Homme', 'Celibataire', 46, 'Centre', 'ville test', 'azerty7', '$2y$08$vgb1xu4TLNn9PU2Q339gMOX.wTCZv8f9Wplna9GVOofX2mSuH2SK6', 'totio@toto.fr', '.......................................................................................', 'default.jpg', 0),
(8, 'Homme', 'Celibataire', 36, 'Loraine', 'ville test', 'azerty8', '$2y$08$3VUXYuPEPmOQY0xDxVmDe.jQawF20kCqeVqW9hEkMKip5cPvzVDWG', 'toato@toto.fr', '......................................................................................................................', 'default.jpg', 1),
(9, 'Homme', 'Celibataire', 1, '...', 'ville test', 'azerty9', '$2y$08$3X7qW9EtyxMIgs0vBg82feNLyjaj27kg9MgaccYo0G4DU12ARK2j2', 'tata@toto.fr', '....................................................................................', 'default.jpg', 0),
(10, 'Femme', 'Celibataire', 25, 'Corse', 'ville test', 'azerty10', '$2y$08$uFxl/toOGNLgJNZveKM3VOt9cVK6KrEqCDYycMe77UI/evsVWc.ha', 'tita@toto.fr', '..................................................................................................', 'default.jpg', 0);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
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
  MODIFY `id_invitation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recuperation`
--
ALTER TABLE `recuperation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
