-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 06, 2020 at 08:35 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codflix`
--
CREATE DATABASE codflix;
USE codflix;
-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Horreur'),
(3, 'Science-Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `release_date` date NOT NULL,
  `summary` longtext NOT NULL,
  `trailer_url` varchar(100) NOT NULL,
  `duration` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `genre_id`, `title`, `type`, `status`, `release_date`, `summary`, `trailer_url`, `duration`) VALUES
(1, 2, 'Scream', 'film', 'available', '1997-07-16', 'Casey Becker, une belle adolescente, est seule dans la maison familiale. Elle s''apprête à regarder un film d''horreur, mais le téléphone sonne. Au bout du fil, un serial killer la malmène, et la force à jouer à un jeu terrible : si elle répond mal à ses questions portant sur les films d''horreur, celui-ci tuera son copain. Sidney Prescott sait qu''elle est l''une des victimes potentielles du tueur de Woodsboro. Celle-ci ne sait plus à qui faire confiance.', 'https://www.youtube.com/embed/d7yWagIcCLE', '01:30:31'),
(2, 3, 'Alien', 'film', 'available', '1979-06-15', 'Durant le voyage-retour du cargo spatial Nostromo après une mission commerciale de routine, l''équipage, cinq hommes et deux femmes plongés en hibernation1 depuis dix mois sont tirés de leur léthargie plus tôt que prévu par l''ordinateur de bord du vaisseau1. Ce dernier a en effet capté des signaux radio inconnus dans l''espace et, du fait d''une clause attenante à leur contrat de navigation, l''équipage du vaisseau est tenu de vérifier tout indice de vie extraterrestre.Mais, au cours de cette vérification sur une planète désertique, l''officier Kane est attaqué par une forme de vie inconnue, une sorte de créature arachnide qui recouvre son visage en l''étouffant avec sa queue. Après avoir été délivré de la créature étrangère qui semble être morte, l''équipage retrouve le sourire et fait un dernier repas tous ensemble avant de se rendormir2. Mais, lors du dîner, Kane est pris de convulsions et voit soudainement son abdomen perforé par une créature qui sort de son corps3 et qui s''échappe dans les coursives du vaisseau4. Un jeu macabre du chat et de la souris débute alors entre l''équipage et la créature, l''« Alien ».', 'https://www.youtube.com/embed/o_rfh8wBnGE', '01:38:04'),
(3, 1, 'Stranger things', 'serie', 'available', '2016-07-15', 'En 1983, à Hawkins dans l''Indiana, Will Byers disparaît de son domicile. Ses amis se lancent alors dans une recherche semée d''embûches pour le retrouver. Pendant leur quête de réponses, les garçons rencontrent une étrange jeune fille en fuite.', 'https://www.youtube.com/embed/IZeBDCuApTo', '01:48:04'),
(4, 3, 'The 100', 'serie', 'available', '2014-03-19', 'Après une apocalypse nucléaire, les 318 survivants se réfugient dans des stations spatiales et parviennent à y vivre et à se reproduire, atteignant le nombre de 4000 ; 97 ans plus tard, une centaine de jeunes délinquants redescendent sur Terre.', 'https://www.youtube.com/embed/YIx4nbTSV_Q', '02:08:04'),
(5, 5, 'Mirage', 'film', 'no available', '2020-09-01', 'Vera Durán, une femme heureuse en ménage, voit sa vie devenir un cauchemar lorsqu''elle essaie d''éviter un crime qui entraîne une série de réactions en chaîne.', 'https://www.youtube.com/embed/ZqHlAPHviNM', '01:50:04'),
(6, 4, 'Agent presque secret', 'film', 'available', '2016-08-24', 'Un ancien geek devenu agent d’élite à la CIA, revient chez lui à l’occasion de la réunion des anciens du lycée dont il était à l’époque le souffre-douleur. Se vantant d’être sur une affaire top secrète, il recrute alors pour le seconder le gars le plus populaire de sa promo d’alors, aujourd’hui comptable désabusé. Avant même que notre col blanc ne réalise ce dans quoi il s’est embarqué, il est trop tard pour faire marche arrière. Le voilà propulsé sans autre cérémonie par son nouveau « meilleur ami » dans le monde du contre-espionnage où, sous le feu croisé des balles et des trahisons, les statistiques de leur survie deviennent bien difficile à chiffrer… même pour un comptable.', 'https://www.youtube.com/embed/RLNeNnAkCrk', '01:47:24'),
(7, 1, 'Le loup de WallStreet', 'film', 'available', '2013-12-25', 'L’argent. Le pouvoir. Les femmes. La drogue. Les tentations étaient là, à portée de main, et les autorités n’avaient aucune prise. Aux yeux de Jordan et de sa meute, la modestie était devenue complètement inutile. Trop n’était jamais assez…', 'https://www.youtube.com/embed/GT9UfSqBz9o', '02:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `finish_date` datetime DEFAULT NULL,
  `watch_duration` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_genre_id_fk_genre_id` (`genre_id`) USING BTREE;


--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_user_id_fk_media_id` (`user_id`),
  ADD KEY `history_media_id_fk_media_id` (`media_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_genre_id_b1257088_fk_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_media_id_fk_media_id` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_user_id_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
