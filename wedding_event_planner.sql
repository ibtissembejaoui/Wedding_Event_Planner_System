-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 avr. 2020 à 01:36
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wedding_event_planner`
--

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Candice Sanford Jr.', 'goodwin.dawson@example.com', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '520 Deshaun Rapid Apt. 644\nJacobsport, WI 72966-3549', '+7335345862589', 'ww9W3IpSISYImJmQWKmQaxXalthkf1xnsrJek4EWC1F8ToXjse9igFIbaJ2E', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(2, 'Fanny Goldner DVM', 'edwardo.mcglynn@example.net', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '405 Freda Mountains\nDelilahstad, NY 18333-9178', '+4469287795579', 'IoaNuAhH9S', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(3, 'Prof. Candice Littel', 'rice.jerome@example.net', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6335 Lindgren Green Apt. 543\nFredericfurt, HI 68195', '+4209207578468', 'PDvuNnSPs6', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(4, 'Adrain Parker Jr.', 'tevin.kulas@example.org', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '18041 Veum Place\nNedraville, RI 06587', '+8223682023693', 'ZvhleRNQbM', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(5, 'Irving Considine', 'jpredovic@example.com', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6660 Hudson Path Suite 746\nPort Mazie, WA 75472-3019', '+5987213900384', 'NepA1zLHOh', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(6, 'Prof. Haskell Stokes I', 'moen.raphaelle@example.com', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '88282 Hipolito Burg\nWillmouth, MN 35213', '+9410850540739', 'cy8ubo2rWy', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(7, 'Dr. Lourdes Zulauf DDS', 'ward.brennon@example.net', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9361 Reinger Mission\nMeaghanport, AK 62146-0246', '+9405477674118', 'XW3Uo2Mnep', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(8, 'Rafaela Spencer', 'reichel.toni@example.net', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '73119 Abshire Underpass Apt. 288\nNew Keira, OK 37696', '+6682843193917', 'hmQI8Cb6Fj', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(9, 'Delaney Jaskolski DDS', 'pschroeder@example.net', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '52334 Hertha Lane\nEast Lilyan, NH 65045-9859', '+6621545707645', 'LNU96SYZyA', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(10, 'Sunny Von', 'bria.bins@example.com', '2020-04-14 17:51:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '658 Kovacek Haven Suite 031\nPort Joyce, WV 41457', '+7432695903822', 'ekMovX4p8F', '2020-04-14 17:51:35', '2020-04-14 17:51:35'),
(11, 'nesrine', 'nesrine.ms@gmail.com', NULL, '$2y$10$xT1ndktHOaV/Tkn1ihzlH.qpy5kmk9gwsn9AAgCzmA6GKObpQbNga', 'TUNIS', '+21621343232', NULL, '2020-04-14 21:15:42', '2020-04-14 21:15:42');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
