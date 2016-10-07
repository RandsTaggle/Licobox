-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2016 at 08:09 AM
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
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `licorne_id` int(11) NOT NULL,
  `contenu` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `commentaire`
--

INSERT INTO `commentaire` (`id`, `licorne_id`, `contenu`) VALUES
(1, 11, 'GG ! Les commentaires ne peuvent plus être laissés sans licorne !'),
(2, 14, 'test comment'),
(3, 2, 'J''adore MLP'),
(4, 2, 'Rainbow dash mon amouuuuur <3 <3 <3');

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
  `date_prise` datetime NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `licorne`
--

INSERT INTO `licorne` (`id`, `nom`, `type_pelage`, `couleur_yeux`, `type_corne`, `habitat`, `date_prise`, `categorie_id`) VALUES
(2, 'Rainbow Dash', 'bleu au poil arc-en-ciel', 'Rose/Violet', 'Pas de corne', 'Les nuages en sucre roses', '2016-10-06 15:23:00', 1),
(5, 'Mirabelle', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', '2016-10-06 22:09:54', 2),
(11, 'Véronique', 'Blanc', 'Bleu profond à rose clair', 'Noueuse, tordue et d''une couleur brun pâle', 'Elle préfère les forêts très anciennes où la moyenne d''âge des arbres est de cinq cents ans.', '2016-10-06 22:24:04', 11),
(13, 'Mirabelle', 'Blanc ailé', 'Rose', 'Droite', 'Elle vit dans les nuages rose au coucher du soleil.', '2016-10-06 23:34:59', 8),
(14, 'Fluttershy', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.', '2016-10-07 05:28:26', 7);

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
  `habitat` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `licorne_categorie`
--

INSERT INTO `licorne_categorie` (`id`, `nom`, `type_pelage`, `couleur_yeux`, `type_corne`, `habitat`, `image`) VALUES
(1, 'Licorne sylvestre', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', 'bundles/licornes/img/licorne_sylvestre.png'),
(2, 'Alicorne', 'Blanc', 'Bleu profond à rose clair', 'Noueuse, tordue et d''une couleur brun pâle', 'Elle préfère les forêts très anciennes où la moyenne d''âge des arbres est de cinq cents ans.', 'bundles/licornes/img/alicorn.jpg'),
(3, 'Pyrocorne', 'Rouge sombre, avec une crinière telle une rangée de flammes.', 'Rouge scintillant', 'Incandescente', 'Elle vit sous la terre dans des galeries ou des cavernes ne dépassant pas cent mètres de profondeur.', 'bundles/licornes/img/pyrocorne.jpg'),
(4, 'Licorne noire', 'Noir', 'Noir', 'Noire, empoisonnée', 'Elle vit dans des forêts d''arbres pétrifiés.', 'bundles/licornes/img/licorne_noire.jpg'),
(5, 'Rouanicorne', 'Brun pâle', 'Brun très foncé', 'Antenne télépathique', 'Elle vit dans les déserts les plus arides.', 'bundles/licornes/img/rouanicorne.jpg'),
(6, 'Licorne de féerie', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.', 'bundles/licornes/img/licorne_de_feerie.jpg'),
(7, 'Cryonicorne', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.', 'bundles/licornes/img/cryonicorne.jpg'),
(8, 'Chromacorne', 'Tacheté', 'Vairons (violet et orange)', 'Sans corne', 'Elle vit dans les plaines des régions très chaudes.', 'bundles/licornes/img/chromacorne.jpg'),
(9, 'Licorne de mer', 'Ecailles (scintillantes)', 'Blancs', 'Torsadée', 'Elle vit dans un fond marin bien déterminé n''excédant toutefois pas cinquante mètres de profondeurs en cela dans les mers à haute salinité.', 'bundles/licornes/img/licorne_des_mers.jpg'),
(10, 'Unisus', 'Blanc ailé', 'Roses', 'Droite', 'Elle vit dans les nuages rose au coucher du soleil.', 'bundles/licornes/img/unisus.png'),
(11, 'Zebracorne', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', 'bundles/licornes/img/zebracorne.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_67F068BCE1B5ED6` (`licorne_id`);

--
-- Indexes for table `licorne`
--
ALTER TABLE `licorne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D2852275BCF5E72D` (`categorie_id`);

--
-- Indexes for table `licorne_categorie`
--
ALTER TABLE `licorne_categorie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `licorne`
--
ALTER TABLE `licorne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `licorne_categorie`
--
ALTER TABLE `licorne_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BCE1B5ED6` FOREIGN KEY (`licorne_id`) REFERENCES `licorne` (`id`);

--
-- Constraints for table `licorne`
--
ALTER TABLE `licorne`
  ADD CONSTRAINT `FK_D2852275BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `licorne_categorie` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
