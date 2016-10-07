-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2016 at 12:29 PM
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
(3, 2, 'J''adore MLP'),
(4, 2, 'Rainbow dash mon amouuuuur <3 <3 <3'),
(6, 2, 'test comment'),
(7, 2, 'test 2'),
(8, 14, 'J''adore le rooooose'),
(9, 5, 'test'),
(11, 11, 'yolo');

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
(14, 'Fluttershy', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.', '2016-10-07 05:28:26', 7),
(15, 'Twilight Sparkle', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 11:46:43', 11),
(16, 'Applejack', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 11:48:41', 11),
(17, 'Rarity', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', '2016-10-07 11:48:58', 1),
(18, 'Pinkie Pie', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.', '2016-10-07 11:49:09', 7),
(19, 'Spike', 'Ecailles (scintillantes)', 'Blancs', 'Torsadée', 'Elle vit dans un fond marin bien déterminé n''excédant toutefois pas cinquante mètres de profondeurs en cela dans les mers à haute salinité.', '2016-10-07 11:49:21', 9),
(20, 'Apple Bloom', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', '2016-10-07 11:49:32', 1),
(21, 'Scootaloo', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.', '2016-10-07 11:49:41', 6),
(22, 'Sweetie Belle', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.', '2016-10-07 11:49:52', 7),
(23, 'Babs Seed', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.', '2016-10-07 11:50:02', 6),
(24, 'Gabby', 'Blanc ailé', 'Roses', 'Droite', 'Elle vit dans les nuages rose au coucher du soleil.', '2016-10-07 11:50:11', 10),
(25, 'Princess Celestia', 'Ecailles (scintillantes)', 'Blancs', 'Torsadée', 'Elle vit dans un fond marin bien déterminé n''excédant toutefois pas cinquante mètres de profondeurs en cela dans les mers à haute salinité.', '2016-10-07 11:50:29', 9),
(26, 'Princess Luna', 'Blanc ailé', 'Roses', 'Droite', 'Elle vit dans les nuages rose au coucher du soleil.', '2016-10-07 11:50:40', 10),
(27, 'Prince Blueblood', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.', '2016-10-07 11:50:54', 6),
(28, 'Shining Armor', 'Blanc ailé', 'Roses', 'Droite', 'Elle vit dans les nuages rose au coucher du soleil.', '2016-10-07 11:52:12', 10),
(29, 'Princess Cadance', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 11:52:31', 11),
(30, 'Prince Rutherford', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', '2016-10-07 11:52:44', 1),
(31, 'Flurry Heart', 'Blanc', 'Bleu profond à rose clair', 'Noueuse, tordue et d''une couleur brun pâle', 'Elle préfère les forêts très anciennes où la moyenne d''âge des arbres est de cinq cents ans.', '2016-10-07 11:52:53', 2),
(32, 'Princess Ember', 'Tacheté', 'Vairons (violet et orange)', 'Sans corne', 'Elle vit dans les plaines des régions très chaudes.', '2016-10-07 11:53:01', 8),
(33, 'Princess Amore', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.', '2016-10-07 11:53:11', 7),
(34, 'Granny Smith', 'Ecailles (scintillantes)', 'Blancs', 'Torsadée', 'Elle vit dans un fond marin bien déterminé n''excédant toutefois pas cinquante mètres de profondeurs en cela dans les mers à haute salinité.', '2016-10-07 11:58:06', 9),
(35, 'Big McIntosh', 'Blanc', 'Bleu profond à rose clair', 'Noueuse, tordue et d''une couleur brun pâle', 'Elle préfère les forêts très anciennes où la moyenne d''âge des arbres est de cinq cents ans.', '2016-10-07 11:58:15', 2),
(36, 'Braeburn', 'Tacheté', 'Vairons (violet et orange)', 'Sans corne', 'Elle vit dans les plaines des régions très chaudes.', '2016-10-07 11:58:22', 8),
(37, 'Uncle Orange', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', '2016-10-07 11:58:43', 1),
(38, 'Aunt Orange', 'Noir', 'Noir', 'Noire, empoisonnée', 'Elle vit dans des forêts d''arbres pétrifiés.', '2016-10-07 11:58:50', 4),
(39, 'Hayseed Turnip Truck', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', '2016-10-07 11:59:01', 1),
(40, 'Apple Strudel', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.', '2016-10-07 11:59:10', 7),
(41, 'Auntie Applesauce', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 11:59:21', 11),
(42, 'Apple Rose', 'Blanc ailé', 'Roses', 'Droite', 'Elle vit dans les nuages rose au coucher du soleil.', '2016-10-07 11:59:29', 10),
(43, 'Goldie Delicious', 'Blanc à bleu clair', 'Jade', 'Grande stalactite de cristal', 'Elle vit dans les régions arctiques.', '2016-10-07 11:59:45', 7),
(44, 'Zephyr Breeze', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', '2016-10-07 12:00:00', 1),
(45, 'Diamond Tiara', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 12:00:14', 11),
(46, 'Silver Spoon', 'Blanc', 'Bleu profond à rose clair', 'Frontale unique', 'La licorne sylvestre se fait invisible, on ne peut la voir mais elle se trouve souvent derrière nous, tapie dans un bosquet en attente de nous charger si nous ne respectons pas la nature et les animaux qui y vivent.', '2016-10-07 12:00:22', 1),
(47, 'Twist', 'Brun pâle', 'Brun très foncé', 'Antenne télépathique', 'Elle vit dans les déserts les plus arides.', '2016-10-07 12:00:28', 5),
(48, 'Snips', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.', '2016-10-07 12:00:37', 6),
(49, 'Snails', 'Brun pâle', 'Brun très foncé', 'Antenne télépathique', 'Elle vit dans les déserts les plus arides.', '2016-10-07 12:00:45', 5),
(50, 'Pipsqueak', 'Blanc ailé', 'Roses', 'Droite', 'Elle vit dans les nuages rose au coucher du soleil.', '2016-10-07 12:00:55', 10),
(51, 'Featherweight', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 12:01:05', 11),
(52, 'Rumble', 'Ecailles (scintillantes)', 'Blancs', 'Torsadée', 'Elle vit dans un fond marin bien déterminé n''excédant toutefois pas cinquante mètres de profondeurs en cela dans les mers à haute salinité.', '2016-10-07 12:01:11', 9),
(53, 'Filly Guides', 'Brun pâle', 'Brun très foncé', 'Antenne télépathique', 'Elle vit dans les déserts les plus arides.', '2016-10-07 12:01:24', 5),
(54, 'Zipporwhill', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 12:01:33', 11),
(55, 'Tender Taps', 'Tacheté', 'Vairons (violet et orange)', 'Sans corne', 'Elle vit dans les plaines des régions très chaudes.', '2016-10-07 12:01:43', 8),
(56, 'Nightmare Moon', 'Blanc', 'Bleu profond à rose clair', 'Noueuse, tordue et d''une couleur brun pâle', 'Elle préfère les forêts très anciennes où la moyenne d''âge des arbres est de cinq cents ans.', '2016-10-07 12:01:52', 2),
(57, 'Discord', 'Brun pâle', 'Brun très foncé', 'Antenne télépathique', 'Elle vit dans les déserts les plus arides.', '2016-10-07 12:02:02', 5),
(58, 'Queen Chrysalis', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.', '2016-10-07 12:02:11', 6),
(59, 'King Sombra', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 12:02:18', 11),
(60, 'Sunset Shimmer', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.', '2016-10-07 12:02:27', 6),
(61, 'Lord Tirek', 'Noir', 'Noir', 'Noire, empoisonnée', 'Elle vit dans des forêts d''arbres pétrifiés.', '2016-10-07 12:02:36', 4),
(62, 'Adagio Dazzle', 'Blanc zebré de noir... Ou l''inverse, personne ne sait vraiment.', 'Bruns', 'Mi-noire, mi-blanche', 'Elle vit dans les savanes équatoriales.', '2016-10-07 12:02:43', 11),
(63, 'Aria Blaze', 'Vert', 'Doré', 'Puissant porte-bonheur (sans doute en forme d''étoile).', 'Elle vit dans la forêt des fées et mange des petits bonshommes vert qui refusent de grandir.', '2016-10-07 12:02:50', 6),
(64, 'Sonata Dusk', 'Rouge sombre, avec une crinière telle une rangée de flammes.', 'Rouge scintillant', 'Incandescente', 'Elle vit sous la terre dans des galeries ou des cavernes ne dépassant pas cent mètres de profondeur.', '2016-10-07 12:03:03', 3);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `licorne`
--
ALTER TABLE `licorne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
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
