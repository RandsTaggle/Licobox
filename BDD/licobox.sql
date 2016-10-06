-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2016 at 07:55 PM
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
  `habitat` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_prise` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `licorne`
--

INSERT INTO `licorne` (`id`, `nom`, `type_pelage`, `couleur_yeux`, `type_corne`, `habitat`, `date_prise`) VALUES
(1, 'JolieCorne', 'Soyeux', 'orange', 'Droite et fière', 'Les grottes de la forêt de Fontainebleau.', '2016-10-06 15:22:00'),
(2, 'Rainbow Dash', 'bleu au poil arc-en-ciel', 'Rose/Violet', 'Pas de corne', 'Les nuages en sucre roses', '2016-10-06 15:23:00'),
(3, 'nom', 'Blanc', 'Noir', 'unique', 'Dans les arbres de la forêt', '2016-10-06 17:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `licorne_categorie`
--

CREATE TABLE `licorne_categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_pelage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `couleur_yeux` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_corne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `habitat` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `licorne_categorie`
--

INSERT INTO `licorne_categorie` (`id`, `nom`, `type_pelage`, `couleur_yeux`, `type_corne`, `habitat`) VALUES
(1, 'Licorne sylvestre', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.'),
(2, 'Alicorne', 'Blanc', 'Bleu profond à rose clair', 'Noueuse, tordue et d''une couleur brun pâle', 'Elle préfère les forêts très anciennes où la moyenne d''âge des arbres est de cinq cents ans.'),
(3, 'Pyrocorne', 'Rouge sombre, avec une crinière telle une rangée de flammes.', 'Rouge scintillant', 'Incandescente', 'Elle vit sous la terre dans des galeries ou des cavernes ne dépassant pas cent mètres de profondeur.'),
(4, 'Licorne noire', 'Noir', 'Noir', 'Noire, empoisonnée', 'Elle vit dans des forêts d''arbres pétrifiés.'),
(5, 'Rouanicorne', 'Brun pâle', 'Brun très foncé', 'Antenne télépathique', 'Elle vit dans les déserts les plus arides.'),
(6, 'Licorne de féerie', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.'),
(7, 'Cryonicorne', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.'),
(8, 'Chromacorne', 'Tacheté', 'Vairons (violet et orange)', 'Sans corne', 'Elle vit dans les plaines des régions très chaudes.'),
(9, 'Licorne de mer', 'Ecailles (scintillantes)', 'Blancs', 'Torsadé', 'Elle vit dans un fond marin bien déterminé n''excédant toutefois pas cinquante mètres de profondeurs en cela dans les mers à haute salinité.'),
(10, 'Unisus', 'Blanc ailé', 'Rose', 'Droite', 'Elle vit dans les nuages rose au coucher du soleil.'),
(11, 'Zebracorne', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `licorne`
--
ALTER TABLE `licorne`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licorne_categorie`
--
ALTER TABLE `licorne_categorie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `licorne`
--
ALTER TABLE `licorne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `licorne_categorie`
--
ALTER TABLE `licorne_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
