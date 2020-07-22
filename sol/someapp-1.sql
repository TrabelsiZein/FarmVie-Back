-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 28 Juin 2020 à 20:11
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `someapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id_artcile` bigint(20) NOT NULL,
  `articlevote` float NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `isfavorite` bit(1) NOT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `nom_article` varchar(255) DEFAULT NULL,
  `prix` varchar(255) DEFAULT NULL,
  `uservote` float NOT NULL,
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_artcile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `idc` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`idc`, `description`, `email`, `name`, `subject`) VALUES
(2, 'jkjkjkkj', 'jkjjkjk', 'jkjjkjk', 'kjkjkjk');

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(34),
(34),
(34),
(34);

-- --------------------------------------------------------

--
-- Structure de la table `investe`
--

CREATE TABLE IF NOT EXISTS `investe` (
  `idi` bigint(20) NOT NULL AUTO_INCREMENT,
  `idp` bigint(20) NOT NULL,
  `idu` bigint(20) NOT NULL,
  `montant` float NOT NULL,
  PRIMARY KEY (`idi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `investe`
--

INSERT INTO `investe` (`idi`, `idp`, `idu`, `montant`) VALUES
(8, 9, 3, 15000),
(9, 9, 2, 4000),
(10, 11, 2, 8000),
(11, 10, 3, 1000),
(12, 10, 2, 500),
(13, 12, 2, 107000),
(14, 9, 4, 500),
(15, 13, 4, 20000),
(16, 14, 4, 7000);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `id_projet` bigint(20) NOT NULL,
  `biologique` varchar(255) DEFAULT NULL,
  `delegation` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gevernorat` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) NOT NULL,
  `irrigation` varchar(255) DEFAULT NULL,
  `isfavorite` bit(1) NOT NULL,
  `montant_min` varchar(255) DEFAULT NULL,
  `nom_projet` varchar(255) DEFAULT NULL,
  `photo_projet` varchar(255) DEFAULT NULL,
  `siege` varchar(255) DEFAULT NULL,
  `sol` varchar(255) DEFAULT NULL,
  `superficiee` varchar(255) DEFAULT NULL,
  `superficiet` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_finance` varchar(255) DEFAULT NULL,
  `datadeployment` date DEFAULT NULL,
  `etat` varchar(11) NOT NULL,
  `montant_total` float NOT NULL,
  `montant_recu` float NOT NULL,
  `pourcentage` float NOT NULL,
  `ip` char(1) NOT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_projet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`id_projet`, `biologique`, `delegation`, `description`, `gevernorat`, `id_user`, `irrigation`, `isfavorite`, `montant_min`, `nom_projet`, `photo_projet`, `siege`, `sol`, `superficiee`, `superficiet`, `type`, `type_finance`, `datadeployment`, `etat`, `montant_total`, `montant_recu`, `pourcentage`, `ip`, `email_user`) VALUES
(10, 'oui', '', '', 'tunis', 3, 'oui', b'0', '500', 'projects-01', 'photos_profil/projects-01.PNG', 'oui', 'sol/reactor_shorty_starter_kit_black_2.jpg', '', '', 'elevage', 'invertissement', '2020-06-22', 'accepter', 1500, 1500, 100, '', 'beji.hamza@gmail.com'),
(11, 'oui', '', '', 'beja', 2, 'oui', b'0', '500', 'projects-02', 'photos_profil/projects-02.png', 'oui', 'sol/profil_26.png', '', '', '', 'invertissement', '2020-06-22', 'accepter', 5000, 5000, 100, '', 'hbeji54433@gmail.com'),
(13, 'oui', '', '', 'feriana', 2, 'oui', b'0', '500', 'projects-03', 'photos_profil/projects-03.PNG', 'oui', 'sol/reactor_mega_starter_kit_silver_2.jpg', '', '', '', 'invertissement', '2020-06-22', 'accepter', 20000, 20000, 100, '', 'hbeji54433@gmail.com'),
(14, 'oui', '', '', 'teboursouk', 2, 'oui', b'0', '500', 'projects-04', 'photos_profil/projects-04.png', 'oui', 'sol/reactor_mega_starter_kit_silver_2.jpg', '', '', '', 'invertissement', '2020-06-22', 'accepter', 10000, 7000, 70, '', 'hbeji54433@gmail.com'),
(15, 'oui', '', '', '', 2, 'oui', b'0', '500', 'projects-05', 'photos_profil/projects-05.png', 'oui', 'sol/reactor_mega_starter_kit_silver_2.jpg', '', '', '', 'invertissement', '2020-06-22', 'accepter', 20000, 0, 0, '', 'hbeji54433@gmail.com'),
(16, 'non', 'azeae', 'zaea', 'aaa', 2, 'oui', b'0', '500', 'projects-06', 'photos_profil/projects-06.PNG', 'oui', 'sol/Capture 3.PNG', '500', '2200', 'saab', 'invertissement', '2020-06-23', 'accepter', 500000, 0, 0, '', 'hbeji54433@gmail.com'),
(29, 'non', 'lkkl', '&é"&é"', 'nnnnn', 4, 'oui', b'0', '20000', 'projects-07', 'photos_profil/projects-07.png', 'non', 'sol/reactor_mega_starter_kit_silver_2.jpg', 'undefined', 'undefined', 'volvo', 'invertissement', '2020-06-27', 'accepter', 500000, 0, 0, '', 'hamza.bejii2@gmail.com'),
(30, 'oui', 'azeaze', 'azeazeaeaeazeaaa', 'rgeb', 4, 'oui', b'0', '20000', 'projects-08', 'photos_profil/projects-08.png', 'oui', 'sol/Capture9.PNG', '1100', '111111', '', 'invertissement', '2020-06-28', 'accepter', 1000000, 0, 0, '', 'hamza.bejii2@gmail.com'),
(31, 'non', 'Teboursouk', 'Apiculteur passionné, je désire créer un rucher de fécondation afin de faire perdurer les abeilles sur notre territoire.', 'Béja', 4, 'oui', b'0', '30000', 'projects-09', 'photos_profil/projects-09.png', 'oui', 'sol/c.jpg', '3 Ha', '5 Ha', '', 'invertissement', '2020-06-28', 'accepter', 50000, 0, 0, '', 'hamza.bejii2@gmail.com'),
(32, 'Non', '2', '852652', '15', 4, 'Non', b'0', '4', 'projects-10', 'photos_profil/projects-10.png', 'Non', NULL, 'undefined', 'undefined', 'Transformation', 'Don avec contre partie', '2020-06-28', 'accepter', 3, 0, 0, '', NULL),
(33, 'Non', '2', '852652', '15', 4, 'Non', b'0', '10000', 'projects-11', 'photos_profil/projects-01.png', 'Non', NULL, 'undefined', 'undefined', 'Production animale', 'Don avec contre partie', '2020-06-28', 'accepter', 11000, 0, 0, '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nb4h0p6txrmfc0xbrd1kglp9t` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(2, 'ROLE_ADMIN'),
(1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `suivie`
--

CREATE TABLE IF NOT EXISTS `suivie` (
  `id_suivie` bigint(20) NOT NULL,
  `id_articel` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `id_projet` bigint(20) NOT NULL,
  PRIMARY KEY (`id_suivie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `rs` varchar(255) DEFAULT NULL,
  `adressep` varchar(255) DEFAULT NULL,
  `codep` varchar(255) DEFAULT NULL,
  `ddn` datetime DEFAULT NULL,
  `delegation` varchar(255) DEFAULT NULL,
  `governorat` varchar(255) DEFAULT NULL,
  `numtel` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `argent` float NOT NULL,
  `ep` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `photo`, `rs`, `adressep`, `codep`, `ddn`, `delegation`, `governorat`, `numtel`, `prenom`, `argent`, `ep`) VALUES
(2, 'hbeji54433@gmail.com', 'hamza', '$2a$10$oLsvZWU/w1R.7ati10OuLeZA7SKsl8A66N3ZRIAcFPShJxab/N4.a', 'photos_profil/u.jpg', 'undefined', 'undefined', 'undefined', NULL, 'undefined', 'undefined', '245454577575', 'azeaz', 50000, '1'),
(3, 'beji.hamza@gmail.com', 'beji', '$2a$10$7hgM/RQpmU0N.NOlDvGDGOxkI.6FTt1TZzYN6zg0xbC8h.vti7eLi', 'photos_profil/u.jpg', 'undefined', 'undefined', 'undefined', NULL, 'undefined', 'undefined', '1111111', 'hamza', 15000, 'particulier'),
(4, 'hamza.bejii2@gmail.com', 'hamza', '$2a$10$X9atr267ekl6wzgf7824QuPYA3hGlamFiH6E.2Jx5kRDvA9HIRlwW', 'photos_profil/51eq39cA1AL._SX522_.jpg', 'undefined', 'undefined', 'undefined', NULL, 'undefined', 'undefined', '1111111111111111111', 'beji', 22500, 'particulier'),
(5, 'hamza.bejii3@gmail.com', 'hamza', '$2a$10$TBbK5Mi/P3gjwfwxmQ75SuehVBOuy0yKK1R6yIfkXUqd4wbP.UASu', 'photos_profil/u.jpg', 'undefined', 'undefined', 'undefined', NULL, 'undefined', 'undefined', '1111111111111111111', 'beji', 50000, 'particulier'),
(6, 'hbeji54433@gmail.com', 'hamza', '$2a$10$e15YmEe.HIw1XsyJsluwruRee9xNidwZcUCL8iCP9Yi1oyxCZ.IJC', 'photos_profil/u.jpg', 'undefined', 'undefined', 'undefined', NULL, 'undefined', 'undefined', '245454577575', 'azeaz', 50000, '1'),
(8, 'hbeji544333@gmail.com', 'hamza', '$2a$10$/.BGi0I.VKEzirPbjMh/O.uVUx6d2YMxWFHl.Ndp04dL.xsefETEa', 'photos_profil/u.jpg', 'zaeza', 'azeazaze', 'azeaz', NULL, 'aze', 'zae', '245454577575', 'azeaz', 50000, '2'),
(9, 'k', 'k', '$2a$10$MkM.EwOyiM5T31ap.ohSGOXv7mDXYrfZ6h3.L5nEnJFo3mGEgXIPi', 'photos_profil/u.jpg', 'undefined', 'undefined', 'undefined', NULL, 'undefined', 'undefined', '1111111111111111111', 'k', 50000, 'particulier'),
(10, 'hh@gmail.com', 'hamza', '$2a$10$5ZG08VAPhdqcK.uPrhIPZukeuEy1t9XgFlM78fiJCSTeq.SfjuChC', 'photos_profil/51eq39cA1AL._SX522_.jpg', NULL, NULL, NULL, '2020-06-11 00:00:00', '5', '5', '12454545', 'beji', 50000, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 1),
(4, 1),
(5, 1),
(6, 1),
(8, 1),
(9, 1),
(10, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

CREATE TABLE IF NOT EXISTS `vote` (
  `id_vote` bigint(20) NOT NULL,
  `id_articel` bigint(20) NOT NULL,
  `note` int(11) NOT NULL,
  `userid` bigint(20) NOT NULL,
  PRIMARY KEY (`id_vote`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
