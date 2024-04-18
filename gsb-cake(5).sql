-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 18 avr. 2024 à 10:43
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsb-cake`
--

-- --------------------------------------------------------

--
-- Structure de la table `cake_d_c_users_phinxlog`
--

CREATE TABLE `cake_d_c_users_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cake_d_c_users_phinxlog`
--

INSERT INTO `cake_d_c_users_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20150513201111, 'Initial', '2023-11-14 09:19:25', '2023-11-14 09:19:25', 0),
(20161031101316, 'AddSecretToUsers', '2023-11-14 09:19:25', '2023-11-14 09:19:25', 0),
(20190208174112, 'AddAdditionalDataToUsers', '2023-11-14 09:19:25', '2023-11-14 09:19:25', 0),
(20210929202041, 'AddLastLoginToUsers', '2023-11-14 09:19:25', '2023-11-14 09:19:25', 0);

-- --------------------------------------------------------

--
-- Structure de la table `month`
--

CREATE TABLE `month` (
  `id` int(12) NOT NULL,
  `mois` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `month`
--

INSERT INTO `month` (`id`, `mois`) VALUES
(1, 'janvier'),
(2, 'fevrier');

-- --------------------------------------------------------

--
-- Structure de la table `outpackages`
--

CREATE TABLE `outpackages` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `price` float NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `outpackages`
--

INSERT INTO `outpackages` (`id`, `date`, `price`, `title`, `body`) VALUES
(120, '2023-11-24 13:41:38', 299.99, 'Échappez à l\'ordinaire', ' Préparez-vous à l\'aventure de votre vie avec notre pack extrême ! Comprend une séance de saut en parachute, une expédition en montagne, et une journée de rafting palpitante. Des sensations fortes garanties !'),
(121, '2023-11-24 13:42:10', 129.99, 'Voyage dans le Temps', 'Plongez dans l\'histoire et la culture avec notre pack spécial. Inclut des billets pour des musées renommés, une visite guidée du centre historique de la ville, et un spectacle captivant mettant en lumière le patrimoine local.'),
(122, '2023-11-24 13:45:58', 199.99, 'Voyage Culinaire', 'Explorez les délices de la gastronomie avec notre pack exclusif. Dégustez un repas gourmet dans un restaurant étoilé, suivi d\'une visite guidée dans une chocolaterie artisanale. Un festin pour les amateurs de bonne cuisine !'),
(123, '2023-11-24 13:46:20', 149.99, 'Oubliez le stress', 'Offrez-vous une pause bien méritée avec notre pack détente totale. Profitez d\'un massage relaxant dans un spa haut de gamme, suivi d\'une journée d\'accès à un centre de bien-être. Le moyen idéal de se ressourcer.'),
(124, '2023-11-24 14:18:54', 1, 'a', 'bbb'),
(125, '2023-11-24 14:19:04', 5, 'abc', 'body'),
(126, '2023-11-24 14:32:45', 55, 'df', ''),
(127, '2023-11-27 13:27:49', 2, 'petit pain', ''),
(128, '2023-11-27 13:28:13', 13, 'diner midi hors hotel', ''),
(129, '2023-12-05 09:19:55', 1234, 'ze', 'zedz'),
(130, '2024-04-17 10:01:49', 120, 'tst', 'test\r\n'),
(131, '2024-04-17 10:01:49', 120, 'tst', 'test\r\n'),
(132, '2024-04-17 10:01:49', 120, 'tst', 'test\r\n'),
(133, '2024-04-18 08:41:11', 30, 'test', 'zzzz');

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `packages`
--

INSERT INTO `packages` (`id`, `price`, `title`, `body`) VALUES
(1, 50, 'Hotel', 'Ressourcez-vous dans le luxe absolu avec notre carte \'Hôtel\'. Des escapades de rêve, des nuits inoubliables. Découvrez le confort et le charme à chaque séjour.'),
(2, 20, 'Taxi', 'Prenez le volant de l\'excitation avec Taxi! Des trajets sans tracas, des aventures urbaines en toute simplicité. Faites de chaque course une expérience mémorable.'),
(4, 40, 'TESST', 'DD');

-- --------------------------------------------------------

--
-- Structure de la table `sheets`
--

CREATE TABLE `sheets` (
  `id` int(11) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `sheetvalidated` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` datetime NOT NULL,
  `mois_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sheets`
--

INSERT INTO `sheets` (`id`, `user_id`, `state_id`, `sheetvalidated`, `created`, `modified`, `mois_id`) VALUES
(8, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 1, 1, '2023-11-14 12:43:51', '2024-04-18 06:10:17', 0),
(44, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 1, 1, '2023-11-23 15:40:11', '2023-11-24 14:22:35', 0),
(45, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 2, 0, '2023-11-24 13:08:41', '2024-04-17 10:04:04', 0),
(47, '92127281-9667-4410-8301-afafbc406394', 3, 1, '2023-11-24 14:18:00', '2024-04-17 10:29:39', 0),
(49, '24835e29-d050-4f29-91c1-82d08ec6a40f', 4, 1, '2023-11-24 14:20:48', '2024-04-17 10:16:55', 0),
(50, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 5, 1, '2023-11-24 15:00:55', '2023-11-24 15:03:47', 0),
(51, '92127281-9667-4410-8301-afafbc406394', 1, 0, '2023-11-27 13:27:19', '2023-11-27 13:27:19', 0),
(52, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 1, 0, '2023-12-05 08:07:49', '2023-12-05 08:07:49', 0),
(54, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 2, 1, '2023-12-05 09:19:35', '2023-12-15 07:58:27', 0),
(57, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 1, 0, '2023-12-07 14:40:11', '2023-12-07 14:40:11', 0),
(58, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 1, 0, '2023-12-07 15:03:42', '2023-12-07 15:03:42', 0),
(59, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 1, 0, '2023-12-15 07:57:57', '2023-12-15 07:57:57', 0),
(60, '83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 1, 0, '2023-12-15 07:58:10', '2023-12-15 07:58:10', 0),
(61, 'b9d244bf-43d1-4a09-952b-361435aa9d03', 1, 0, '2024-03-12 07:54:59', '2024-03-12 07:54:59', 0),
(62, 'd960552a-368f-4da9-bbab-db65f3be2cdd', 1, 0, '2024-03-14 13:53:39', '2024-03-14 13:53:39', 0),
(63, 'b9d244bf-43d1-4a09-952b-361435aa9d03', 1, 0, '2024-03-16 11:19:41', '2024-03-16 11:19:41', 0),
(64, 'b9d244bf-43d1-4a09-952b-361435aa9d03', 1, 0, '2024-03-16 11:25:27', '2024-03-16 11:25:27', 0),
(65, 'b9d244bf-43d1-4a09-952b-361435aa9d03', 1, 0, '2024-03-16 11:25:32', '2024-03-16 11:25:32', 0),
(66, 'b9d244bf-43d1-4a09-952b-361435aa9d03', 1, 0, '2024-03-17 20:46:42', '2024-03-17 20:46:42', 0),
(67, 'd960552a-368f-4da9-bbab-db65f3be2cdd', 1, 0, '2024-04-17 10:01:26', '2024-04-17 10:01:26', 0),
(68, 'b9d244bf-43d1-4a09-952b-361435aa9d03', 1, 0, '2024-04-17 10:32:18', '2024-04-17 10:32:18', 0),
(69, '24835e29-d050-4f29-91c1-82d08ec6a40f', 1, 1, '2024-04-17 19:48:21', '2024-04-17 19:48:21', 0),
(70, '6ce815a0-ef68-4a2c-8d95-833792f13b94', 1, 1, '2024-04-17 19:49:38', '2024-04-17 19:49:38', 0),
(71, 'd960552a-368f-4da9-bbab-db65f3be2cdd', 1, 1, '2024-04-17 19:50:20', '2024-04-17 19:50:20', 0),
(72, 'f432f20f-4054-49ac-bbea-c8543a22a28b', 1, 0, '2024-04-18 05:51:37', '2024-04-18 05:51:37', 0),
(73, 'f432f20f-4054-49ac-bbea-c8543a22a28b', 1, 0, '2024-04-18 07:25:39', '2024-04-18 07:25:39', 0),
(74, 'f432f20f-4054-49ac-bbea-c8543a22a28b', 1, 0, '2024-04-18 07:25:45', '2024-04-18 07:25:45', 0),
(75, 'f432f20f-4054-49ac-bbea-c8543a22a28b', 1, 0, '2024-04-18 07:57:59', '2024-04-18 07:57:59', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sheets_outpackages`
--

CREATE TABLE `sheets_outpackages` (
  `outpackage_id` int(11) NOT NULL,
  `sheet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sheets_outpackages`
--

INSERT INTO `sheets_outpackages` (`outpackage_id`, `sheet_id`) VALUES
(120, 51),
(121, 8),
(122, 44),
(123, 44),
(126, 47),
(127, 51),
(128, 51),
(129, 54),
(130, 62),
(131, 62),
(132, 62),
(133, 61);

-- --------------------------------------------------------

--
-- Structure de la table `sheets_packages`
--

CREATE TABLE `sheets_packages` (
  `sheet_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sheets_packages`
--

INSERT INTO `sheets_packages` (`sheet_id`, `package_id`, `quantity`) VALUES
(8, 1, 16),
(44, 1, 1),
(47, 1, 3),
(49, 1, 0),
(50, 1, 0),
(51, 1, 2),
(52, 1, 0),
(54, 1, 5),
(57, 1, 0),
(58, 1, 0),
(59, 1, 0),
(60, 1, 0),
(61, 1, 2),
(62, 1, 0),
(63, 1, 0),
(64, 1, 0),
(65, 1, 0),
(66, 1, 0),
(67, 1, 0),
(68, 1, 0),
(72, 1, 2),
(73, 1, 0),
(74, 1, 0),
(75, 1, 0),
(8, 2, 11),
(44, 2, 1),
(47, 2, 0),
(49, 2, 0),
(50, 2, 0),
(51, 2, 5),
(52, 2, 0),
(54, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 2),
(62, 2, 0),
(63, 2, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(67, 2, 0),
(68, 2, 0),
(72, 2, 0),
(73, 2, 0),
(74, 2, 0),
(75, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `token` varchar(500) NOT NULL,
  `token_secret` varchar(500) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `data` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `states`
--

INSERT INTO `states` (`id`, `state`) VALUES
(1, 'Créé'),
(2, 'Clôturé'),
(3, 'Mise en paiement'),
(4, 'Remboursé'),
(5, 'Fini');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `activation_date` datetime DEFAULT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `secret_verified` tinyint(1) DEFAULT NULL,
  `tos_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(255) DEFAULT 'user',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `additional_data` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `token`, `token_expires`, `api_token`, `activation_date`, `secret`, `secret_verified`, `tos_date`, `active`, `is_superuser`, `role`, `created`, `modified`, `additional_data`, `last_login`) VALUES
('24835e29-d050-4f29-91c1-82d08ec6a40f', 'cleem', 'delattre.v@outlook.fr', '$2y$10$WPsHM3U/pwP2NVbgCuShL.wO.b9ZA0OeXxiki0dnKpq7IgklQd3xu', 'cleme', 'kkk', '77c81a7963defef95843bb040dc3619b', '2024-03-12 08:23:38', NULL, NULL, NULL, NULL, '2024-03-12 07:23:38', 0, 0, 'user', '2024-03-12 07:23:38', '2024-03-12 07:23:38', NULL, NULL),
('6ce815a0-ef68-4a2c-8d95-833792f13b94', 'comptable', 'comptable@test.test', '$2y$10$XdyWGiRMVtXoCbi2Z.ae4..NN0QOTvXs2WIk2D2rYBqqA8ZFnWemO', '', '', 'f6a2be9b3c7c993139c15ef6161a7fc8', '2023-11-24 08:20:41', '', NULL, NULL, NULL, '2023-11-24 07:20:41', 1, 0, 'comptable', '2023-11-24 07:20:41', '2023-11-24 07:21:24', NULL, NULL),
('76314eaa-11a9-40ec-aaa8-768c57b31e28', 'clement', 'clement@gmail.com', '$2y$10$rQvVRZREnJWry7SNsLhHdOEDn8Crv7AfhFvnaXlJo1lSDh1IXtxSa', 'cl&ment', 'butez', 'd2e9ae435a63c36e1d1138c582c838da', '2024-03-12 08:22:13', NULL, NULL, NULL, NULL, '2024-03-12 07:22:13', 0, 0, 'user', '2024-03-12 07:22:13', '2024-03-12 07:22:13', NULL, NULL),
('83ccb8fd-b212-4f0c-8067-2d238eb9c0b3', 'superadmin', 'superadmin@example.com', '$2y$10$zsU7SNm5sZMgClAM.Is4euIim.7VcwpL.SjOHdAhaGyQtrCEXnqfa', 'Valentin', 'Delattre', '', NULL, '', NULL, NULL, NULL, NULL, 1, 1, 'superuser', '2023-11-14 10:19:26', '2023-11-21 10:18:19', NULL, '2023-12-15 07:34:55'),
('92127281-9667-4410-8301-afafbc406394', 'client', 'client@test.test', '$2y$10$n6vE1JWFIIoc0PGLk/dOMuwQ2SQPgsieSC91BMKbQBP/CAdyKsYAq', '', '', '761d0a44ee252588b60674f444f6d5ce', '2023-11-24 08:20:57', '', NULL, NULL, NULL, '2023-11-24 07:20:57', 1, 0, 'user', '2023-11-24 07:20:57', '2023-11-24 07:21:28', NULL, '2023-12-15 07:29:26'),
('b9d244bf-43d1-4a09-952b-361435aa9d03', 'superadmin01', 'superadmin@example.com', '$2y$10$D8MN2M54bLsaNnnZZ26lIOYN3Z9e2epvJfnMF/x2AQVS5fJ6S5K.m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'superuser', '2024-03-12 07:49:59', '2024-03-12 07:49:59', NULL, '2024-04-18 08:34:03'),
('d960552a-368f-4da9-bbab-db65f3be2cdd', 'client1', 'client@outlook.fr', '$2y$10$GARlTHY5RnX64Owo0d3HZu0EP4ZcHL90TEpIP9GuJLO397fBPwSZO', 'VL', 'SS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'user', '2024-03-14 13:49:43', '2024-03-14 13:49:43', NULL, '2024-04-17 15:56:36'),
('e4085840-b7f3-4800-9f79-9ce5278fe801', 'superadmin0', 'superadmin@example.com', '$2y$10$ZuP33zbakl37AcWwDEBzs.rt4jNeclt3rUIkxMhwbM.1sV6mTuI6.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'superuser', '2024-01-09 07:38:50', '2024-01-09 07:38:50', NULL, '2024-01-11 15:26:22'),
('f432f20f-4054-49ac-bbea-c8543a22a28b', 'testuser', 'delattre.v@outlook.fr', '$2y$10$5J6Y.P1wy.Cg/XABLf.k4OM9Zp5u7uP75Ta4gx4/WAEoY.YsEMVmK', 'us', 's', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'user', '2024-04-18 05:49:38', '2024-04-18 05:49:38', NULL, '2024-04-18 05:50:54');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cake_d_c_users_phinxlog`
--
ALTER TABLE `cake_d_c_users_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `outpackages`
--
ALTER TABLE `outpackages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sheets`
--
ALTER TABLE `sheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id --> id - FK` (`user_id`),
  ADD KEY `etat_id --> id - FK` (`state_id`);

--
-- Index pour la table `sheets_outpackages`
--
ALTER TABLE `sheets_outpackages`
  ADD PRIMARY KEY (`outpackage_id`,`sheet_id`),
  ADD KEY `fichefrais_id2 --> id - FK` (`sheet_id`),
  ADD KEY `lignefraishf_id --> id - FK` (`outpackage_id`);

--
-- Index pour la table `sheets_packages`
--
ALTER TABLE `sheets_packages`
  ADD PRIMARY KEY (`package_id`,`sheet_id`),
  ADD KEY `sheets_id` (`sheet_id`),
  ADD KEY `packages_id` (`package_id`);

--
-- Index pour la table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `outpackages`
--
ALTER TABLE `outpackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT pour la table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sheets`
--
ALTER TABLE `sheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `sheets`
--
ALTER TABLE `sheets`
  ADD CONSTRAINT `etat_id --> id - FK` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `sheets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `sheets_outpackages`
--
ALTER TABLE `sheets_outpackages`
  ADD CONSTRAINT `sheets_outpackages_ibfk_1` FOREIGN KEY (`outpackage_id`) REFERENCES `outpackages` (`id`),
  ADD CONSTRAINT `sheets_outpackages_ibfk_2` FOREIGN KEY (`sheet_id`) REFERENCES `sheets` (`id`);

--
-- Contraintes pour la table `sheets_packages`
--
ALTER TABLE `sheets_packages`
  ADD CONSTRAINT `sheets_packages_ibfk_1` FOREIGN KEY (`sheet_id`) REFERENCES `sheets` (`id`),
  ADD CONSTRAINT `sheets_packages_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`);

--
-- Contraintes pour la table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
