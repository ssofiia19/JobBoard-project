-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 04 avr. 2024 à 12:38
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Job Board IT`
--

-- --------------------------------------------------------

--
-- Structure de la table `Domaine`
--

CREATE TABLE `Domaine` (
  `domaine_id` int(11) NOT NULL,
  `domaine_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Domaine`
--

INSERT INTO `Domaine` (`domaine_id`, `domaine_name`) VALUES
(1, 'Developpeur'),
(2, 'Administrateur Réseau et Système');

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE `experience` (
  `exp_id` int(11) NOT NULL,
  `experience_years` varchar(40) NOT NULL,
  `job_abroad` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `experience`
--

INSERT INTO `experience` (`exp_id`, `experience_years`, `job_abroad`) VALUES
(1, 'Débutant', 1),
(2, 'Débutant', 0),
(3, 'Avancé', 1),
(4, 'Avancé', 0),
(5, 'Senior', 0),
(6, 'Senior', 1);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `profil_id` int(11) NOT NULL,
  `sp_id` int(11) NOT NULL,
  `domaine_id` int(11) NOT NULL,
  `mode_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  `departement` int(11) NOT NULL,
  `mail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`profil_id`, `sp_id`, `domaine_id`, `mode_id`, `experience_id`, `departement`, `mail`) VALUES
(1, 1, 1, 2, 1, 69, 'user1@gmail.com'),
(2, 2, 1, 3, 4, 69, 'user2@gmail.com'),
(3, 3, 1, 1, 5, 69, 'user3@gmail.com'),
(4, 5, 2, 2, 2, 69, 'user3@gmail.com'),
(5, 3, 1, 1, 6, 69, 'user4@gmail.com'),
(6, 6, 2, 2, 4, 69, 'user6@gmail.com'),
(7, 3, 1, 1, 5, 69, 'user7@gmail.com'),
(8, 2, 1, 2, 2, 34, 'user8@gmail.com'),
(9, 2, 1, 3, 4, 34, 'user9@gmail.com'),
(10, 6, 2, 3, 5, 77, 'user10@gmail.com'),
(11, 6, 2, 2, 6, 93, 'u11ser@yahoo.com'),
(12, 5, 2, 2, 3, 27, 'user1212@yandex.con'),
(13, 6, 2, 3, 6, 93, 'user13@gmail.com'),
(14, 1, 1, 3, 1, 34, 'u14ser@job.com'),
(15, 6, 2, 1, 4, 13, 'user15@gmail.com'),
(16, 6, 2, 3, 1, 13, 'user16user@yahoo.com'),
(17, 2, 1, 2, 2, 34, 'dev17user@orange.fr');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `sp_id` int(11) NOT NULL,
  `sp_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`sp_id`, `sp_name`) VALUES
(1, 'Front-end'),
(2, 'Back-end'),
(3, 'Full-stack'),
(4, 'Architecte réseau'),
(5, 'Administrateur système et réseau'),
(6, 'Maintenance de systéme informatique');

-- --------------------------------------------------------

--
-- Structure de la table `work_mode`
--

CREATE TABLE `work_mode` (
  `mode_id` int(11) NOT NULL,
  `mode_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `work_mode`
--

INSERT INTO `work_mode` (`mode_id`, `mode_name`) VALUES
(1, 'Télétravail'),
(2, 'Présentiel'),
(3, 'Hybride');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Domaine`
--
ALTER TABLE `Domaine`
  ADD PRIMARY KEY (`domaine_id`);

--
-- Index pour la table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`exp_id`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`profil_id`),
  ADD KEY `sp_id` (`sp_id`),
  ADD KEY `domaine_id` (`domaine_id`),
  ADD KEY `experience_id` (`experience_id`),
  ADD KEY `mode_id` (`mode_id`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`sp_id`);

--
-- Index pour la table `work_mode`
--
ALTER TABLE `work_mode`
  ADD PRIMARY KEY (`mode_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Domaine`
--
ALTER TABLE `Domaine`
  MODIFY `domaine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `experience`
--
ALTER TABLE `experience`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `profil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `work_mode`
--
ALTER TABLE `work_mode`
  MODIFY `mode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `specialite` (`sp_id`),
  ADD CONSTRAINT `profil_ibfk_2` FOREIGN KEY (`domaine_id`) REFERENCES `Domaine` (`domaine_id`),
  ADD CONSTRAINT `profil_ibfk_3` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`exp_id`),
  ADD CONSTRAINT `profil_ibfk_4` FOREIGN KEY (`mode_id`) REFERENCES `work_mode` (`mode_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
