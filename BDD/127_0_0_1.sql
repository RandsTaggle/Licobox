-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2016 at 03:35 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `licobox`
--
CREATE DATABASE IF NOT EXISTS `licobox` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `licobox`;

-- --------------------------------------------------------

--
-- Table structure for table `licorne`
--

CREATE TABLE `licorne` (
  `id` int(11) NOT NULL,
  `nom` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type_pelage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `couleur_yeux` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_corne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `habitat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_prise` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `licorne`
--

INSERT INTO `licorne` (`id`, `nom`, `type_pelage`, `couleur_yeux`, `type_corne`, `habitat`, `date_prise`) VALUES
(1, 'JolieCorne', 'Soyeux', 'orange', 'Droite et fière', 'Les grottes de la forêt de Fontainebleau.', '2016-10-06 15:22:00'),
(2, 'Rainbow Dash', 'bleu au poil arc-en-ciel', 'Rose/Violet', 'Pas de corne', 'Les nuages en sucre roses', '2016-10-06 15:23:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `licorne`
--
ALTER TABLE `licorne`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `licorne`
--
ALTER TABLE `licorne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;