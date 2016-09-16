-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 16, 2016 at 06:42 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `adresses`
--

CREATE TABLE `adresses` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(75) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adresses`
--

INSERT INTO `adresses` (`id`, `id_user`, `nom`, `prenom`, `adresse`, `code_postal`, `ville`) VALUES
(19, 112, 'azerty', '1234', '5 gtyyh llglfg', 52100, 'frrgghhhyty'),
(20, 112, 'NEW LIV', 'LIV LIV', 'A LOKIJ 4 OKO', 54110, 'fort de france'),
(21, 112, 'uryreury', 'germain', '3 rue des violettes', 67500, 'strasbourg'),
(22, 112, 'uryreury', 'germain', 'A LOKIJ 4 OKO', 54110, 'strasbourg'),
(23, 114, 'uryreury', 'germain', '3 rue des violettes', 67500, 'strasbourg'),
(24, 114, 'uryreury', 'germain', '3 rue des violettes', 67500, 'strasbourg'),
(25, 114, 'uryreury', 'germain', '3 rue des violettes', 67500, 'strasbourg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(5, 'Homme'),
(6, 'Femme'),
(7, 'Enfant'),
(8, 'Promotions');

-- --------------------------------------------------------

--
-- Table structure for table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produits` varchar(500) NOT NULL,
  `nbr_produits` varchar(500) NOT NULL,
  `id_adresse` int(11) NOT NULL,
  `reglee` int(11) NOT NULL,
  `envoyee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commandes`
--

INSERT INTO `commandes` (`id`, `id_user`, `id_produits`, `nbr_produits`, `id_adresse`, `reglee`, `envoyee`) VALUES
(124, 114, 'a:2:{i:0;s:2:"59";i:1;s:2:"74";}', 'a:2:{i:0;s:1:"1";i:1;s:1:"1";}', 0, 1, 0),
(125, 114, 'a:2:{i:0;s:2:"59";i:1;s:2:"65";}', 'a:2:{i:0;i:2;i:1;s:1:"1";}', 24, 0, 0),
(126, 114, 'a:2:{i:0;s:2:"59";i:1;s:2:"65";}', 'a:2:{i:0;i:2;i:1;s:1:"1";}', 25, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poids`
--

CREATE TABLE `poids` (
  `id` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poids`
--

INSERT INTO `poids` (`id`, `poid`, `prix`) VALUES
(3, 5, 2),
(4, 10, 3),
(5, 15, 5),
(6, 20, 7),
(7, 25, 8),
(8, 30, 10),
(9, 35, 11),
(10, 40, 13),
(11, 45, 15),
(12, 50, 15),
(13, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `prix` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_sous_category` int(11) NOT NULL,
  `tva` float NOT NULL,
  `poid` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `total_tva` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `titre`, `description`, `prix`, `stock`, `img`, `id_category`, `id_sous_category`, `tva`, `poid`, `shipping`, `total_tva`) VALUES
(56, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'product-lacoste-sweat-shirt-droit-en-molleton1-23200149.jpg', 5, 1, 8, 2, 0, 54),
(59, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'product-lacoste-sweat-shirt-droit-en-molleton1-23200149.jpg', 5, 1, 8, 2, 0, 54),
(60, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'G_31388791_402_VPP_1.jpg', 6, 1, 8, 2, 0, 54),
(61, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'G_31388791_402_VPP_1.jpg', 6, 1, 8, 2, 0, 54),
(62, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'G_31388791_402_VPP_1.jpg', 6, 1, 8, 2, 0, 54),
(63, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'G_31388791_402_VPP_1.jpg', 6, 1, 8, 2, 0, 54),
(64, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 25, 10, '10300109-pull-d-hiver-isol-sur-blanc.jpg', 7, 1, 8, 2, 0, 27),
(65, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 25, 10, '10300109-pull-d-hiver-isol-sur-blanc.jpg', 7, 1, 8, 2, 0, 27),
(66, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 25, 10, '10300109-pull-d-hiver-isol-sur-blanc.jpg', 7, 1, 8, 2, 0, 27),
(67, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 25, 10, '10300109-pull-d-hiver-isol-sur-blanc.jpg', 7, 1, 8, 2, 0, 27),
(69, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-des-hommes-bleus-25889945.jpg', 5, 2, 8, 2, 0, 37.8),
(70, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-des-hommes-bleus-25889945.jpg', 5, 2, 8, 2, 0, 37.8),
(71, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-des-hommes-bleus-25889945.jpg', 5, 2, 8, 2, 0, 37.8),
(72, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'dirigez-le-t-shirt-avec-un-dessin-de-belle-femme-32944478.jpg', 6, 2, 8, 2, 0, 37.8),
(73, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'dirigez-le-t-shirt-avec-un-dessin-de-belle-femme-32944478.jpg', 6, 2, 8, 2, 0, 37.8),
(74, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'dirigez-le-t-shirt-avec-un-dessin-de-belle-femme-32944478.jpg', 6, 2, 8, 2, 0, 37.8),
(75, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'dirigez-le-t-shirt-avec-un-dessin-de-belle-femme-32944478.jpg', 6, 2, 8, 2, 0, 37.8),
(76, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-rayÃ©-des-enfants-32471579.jpg', 7, 2, 8, 2, 0, 37.8),
(77, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-rayÃ©-des-enfants-32471579.jpg', 7, 2, 8, 2, 0, 37.8),
(79, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-rayÃ©-des-enfants-32471579.jpg', 7, 2, 8, 2, 0, 37.8),
(80, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, '34751320-pantalons-pantalons-homme-sur-fond.jpg', 5, 3, 8, 2, 0, 75.6),
(82, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, '34751320-pantalons-pantalons-homme-sur-fond.jpg', 5, 3, 8, 2, 0, 75.6),
(83, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, '34751320-pantalons-pantalons-homme-sur-fond.jpg', 5, 3, 8, 2, 0, 75.6),
(84, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, 'femme-d-isolement-de-pantalons-9871248.jpg', 6, 3, 8, 2, 0, 75.6),
(85, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, 'femme-d-isolement-de-pantalons-9871248.jpg', 6, 3, 8, 2, 0, 75.6),
(86, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, 'femme-d-isolement-de-pantalons-9871248.jpg', 6, 3, 8, 2, 0, 75.6),
(87, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, 'femme-d-isolement-de-pantalons-9871248.jpg', 6, 3, 8, 2, 0, 75.6),
(88, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 45, 10, 'pantalon-pantalon-d-enfant-sur-le-fond-37595796.jpg', 7, 3, 8, 2, 0, 48.6),
(89, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 45, 10, 'pantalon-pantalon-d-enfant-sur-le-fond-37595796.jpg', 7, 3, 8, 2, 0, 48.6),
(90, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 45, 10, 'pantalon-pantalon-d-enfant-sur-le-fond-37595796.jpg', 7, 3, 8, 2, 0, 48.6),
(91, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 45, 10, 'pantalon-pantalon-d-enfant-sur-le-fond-37595796.jpg', 7, 3, 15, 2, 0, 51.75),
(92, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 65, 10, 'chaussures-de-luxe-03-d-homme-2058509.jpg', 5, 4, 15, 2, 0, 74.75),
(93, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 65, 10, 'chaussures-de-luxe-03-d-homme-2058509.jpg', 5, 4, 15, 2, 0, 74.75),
(94, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 65, 10, 'chaussures-de-luxe-03-d-homme-2058509.jpg', 5, 4, 15, 2, 0, 74.75),
(95, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 65, 10, 'chaussures-de-luxe-03-d-homme-2058509.jpg', 5, 4, 15, 2, 0, 74.75),
(96, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 65, 10, 'chaussures-de-femmes-de-fantaisie-16126516.jpg', 6, 4, 15, 2, 0, 74.75),
(97, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 65, 10, 'chaussures-de-femmes-de-fantaisie-16126516.jpg', 6, 4, 15, 2, 0, 74.75),
(98, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 65, 10, 'chaussures-de-femmes-de-fantaisie-16126516.jpg', 6, 4, 15, 2, 0, 74.75),
(99, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 65, 10, 'chaussures-de-femmes-de-fantaisie-16126516.jpg', 6, 4, 15, 2, 0, 74.75),
(100, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 55, 10, 'les-chaussures-noires-de-l-enfant-19497738.jpg', 7, 4, 15, 2, 0, 63.25),
(101, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 55, 10, 'les-chaussures-noires-de-l-enfant-19497738.jpg', 7, 4, 15, 2, 0, 63.25),
(102, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 55, 10, 'les-chaussures-noires-de-l-enfant-19497738.jpg', 7, 4, 15, 2, 0, 63.25),
(103, 'chaussure', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 55, 10, 'les-chaussures-noires-de-l-enfant-19497738.jpg', 7, 4, 15, 2, 0, 63.25),
(104, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'product-lacoste-sweat-shirt-droit-en-molleton1-23200149.jpg', 5, 1, 8, 2, 0, 54),
(105, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'product-lacoste-sweat-shirt-droit-en-molleton1-23200149.jpg', 5, 1, 8, 2, 0, 54),
(108, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'G_31388791_402_VPP_1.jpg', 6, 1, 8, 2, 0, 54),
(109, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 50, 10, 'G_31388791_402_VPP_1.jpg', 6, 1, 8, 2, 0, 54),
(111, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 25, 10, '10300109-pull-d-hiver-isol-sur-blanc.jpg', 7, 1, 8, 2, 0, 27),
(112, 'pull', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 25, 10, '10300109-pull-d-hiver-isol-sur-blanc.jpg', 7, 1, 8, 2, 0, 27),
(115, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-des-hommes-bleus-25889945.jpg', 5, 2, 8, 2, 0, 37.8),
(116, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-des-hommes-bleus-25889945.jpg', 5, 2, 8, 2, 0, 37.8),
(117, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-des-hommes-bleus-25889945.jpg', 5, 2, 8, 2, 0, 37.8),
(118, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'dirigez-le-t-shirt-avec-un-dessin-de-belle-femme-32944478.jpg', 6, 2, 8, 2, 0, 37.8),
(119, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'dirigez-le-t-shirt-avec-un-dessin-de-belle-femme-32944478.jpg', 6, 2, 8, 2, 0, 37.8),
(122, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-rayÃ©-des-enfants-32471579.jpg', 7, 2, 8, 2, 0, 37.8),
(123, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-rayÃ©-des-enfants-32471579.jpg', 7, 2, 8, 2, 0, 37.8),
(124, 't-shirt', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 35, 10, 'le-t-shirt-rayÃ©-des-enfants-32471579.jpg', 7, 2, 8, 2, 0, 37.8),
(126, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, '34751320-pantalons-pantalons-homme-sur-fond.jpg', 5, 3, 8, 2, 0, 75.6),
(128, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, '34751320-pantalons-pantalons-homme-sur-fond.jpg', 5, 3, 8, 2, 0, 75.6),
(131, 'pantalon', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment', 70, 10, '34751320-pantalons-pantalons-homme-sur-fond.jpg', 5, 3, 8, 2, 0, 75.6);

-- --------------------------------------------------------

--
-- Table structure for table `sous_categories`
--

CREATE TABLE `sous_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sous_categories`
--

INSERT INTO `sous_categories` (`id`, `name`) VALUES
(1, 'Pulls'),
(2, 'T-shirt'),
(3, 'Pantalon'),
(4, 'Chaussure');

-- --------------------------------------------------------

--
-- Table structure for table `tva`
--

CREATE TABLE `tva` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tva`
--

INSERT INTO `tva` (`id`, `value`) VALUES
(0, 15),
(0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `connecte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `adresse`, `code_postal`, `ville`, `pseudo`, `password`, `connecte`) VALUES
(112, 'azerty', '1234', '5 gtyyh llglfg', 52100, 'frrgghhhyty', 'azerty', '$2y$08$Nw4vMbSOMoZQfquaop9B3uL7TCHrCjmhlOdw5Rc.KMZNQNH41ENlO', 0),
(113, 'admin', 'admin', 'admin admin', 78100, 'admin admin admin', 'admin', '$2y$08$OgJb22YKGPqi3R29ewFMjuwpQS4SzK1D3aPeynElhKnoGWxp/n4iy', 0),
(114, 'test', 'test', 'adresse test 0000', 0, 'ville test', 'test', '$2y$08$w2.2HSPrKx1BcMSEpRdzlOEFgpeInmLq6x6DFnGqcnIkdwx6oVwOS', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adresses`
--
ALTER TABLE `adresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poids`
--
ALTER TABLE `poids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sous_categories`
--
ALTER TABLE `sous_categories`
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
-- AUTO_INCREMENT for table `adresses`
--
ALTER TABLE `adresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `poids`
--
ALTER TABLE `poids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `sous_categories`
--
ALTER TABLE `sous_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
