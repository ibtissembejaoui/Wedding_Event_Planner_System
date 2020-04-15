-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 14 avr. 2020 à 18:45
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wedding_event_system`
--

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_04_14_120244_create_packages_table', 1),
(4, '2020_04_14_121752_create_planners_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_date` date NOT NULL,
  `package_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `packages`
--

INSERT INTO `packages` (`id`, `package_type`, `photo`, `package_date`, `package_description`, `package_amount`, `created_at`, `updated_at`) VALUES
(1, 'quidem', 'http://lorempixel.com/640/480/food/9', '2000-06-12', 'Possimus aut similique eveniet nobis eveniet autem consequatur.', 144.755, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(2, 'dolore', 'http://lorempixel.com/640/480/food/7', '2012-05-14', 'Qui eum quisquam omnis labore.', 51.97, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(3, 'ut', 'http://lorempixel.com/640/480/food/8', '1980-09-21', 'Reprehenderit sint voluptatibus animi et.', 100.291, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(4, 'facilis', 'http://lorempixel.com/640/480/food/9', '1990-04-27', 'Assumenda rerum dolore veniam.', 61.706, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(5, 'sed', 'http://lorempixel.com/640/480/food/2', '1973-11-01', 'Incidunt asperiores distinctio voluptatem et illum hic.', 88.284, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(6, 'voluptates', 'http://lorempixel.com/640/480/food/6', '1985-08-20', 'Explicabo similique blanditiis voluptatem est tenetur voluptas.', 74.244, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(7, 'aspernatur', 'http://lorempixel.com/640/480/food/3', '2006-09-14', 'Iure dolorem delectus illum quis nobis.', 148.374, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(8, 'repellat', 'http://lorempixel.com/640/480/food/5', '1979-03-06', 'Quis molestias perspiciatis eum.', 22.187, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(9, 'rerum', 'http://lorempixel.com/640/480/food/3', '1979-09-07', 'Error hic qui nesciunt sint eius et.', 13.941, '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(10, 'voluptas', 'http://lorempixel.com/640/480/food/4', '1988-10-10', 'Consectetur voluptatibus laborum quia numquam eum deserunt sed.', 121.311, '2020-04-14 17:18:07', '2020-04-14 17:18:07');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `planners`
--

DROP TABLE IF EXISTS `planners`;
CREATE TABLE IF NOT EXISTS `planners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `planners_email_unique` (`email`),
  KEY `planners_package_id_foreign` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dejuan Stiedemann', '98327 Chandler Ports\nPort Eliezerview, VA 11613-6408', '+8992926812029', 'julia.jacobs@example.net', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3XSack0UIF', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(2, 'Novella Satterfield', '69367 Cullen Rapid Suite 636\nNew Madilyn, OR 87463-8802', '+7454950642401', 'pagac.maurice@example.com', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XdZUPWOrHe', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(3, 'Judd Zemlak DDS', '3444 Luettgen Square\nHarristown, HI 70995-4445', '+4164651809129', 'schowalter.joanne@example.net', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S8LQnLnA43', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(4, 'Ms. Gabrielle Green IV', '488 Luettgen Vista Suite 699\nPort Rashawn, MA 87794', '+3070823297962', 'joana.goodwin@example.com', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PzlWBWjRAZ', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(5, 'Oral Ratke', '2425 Agnes Divide\nNorth Annamarieport, MS 16299', '+8112661287427', 'dock.goldner@example.org', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KX6iGn7QwO', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(6, 'Isaiah Effertz', '93310 Sally Track Apt. 173\nLake Jodymouth, IN 34783', '+8114304553671', 'everette85@example.net', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4ytHH9u5EQ', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(7, 'Mrs. Maiya Trantow', '434 Elisha Mountain Suite 993\nNew Makenzieshire, NY 83400-5756', '+9669447110694', 'mdeckow@example.org', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rhNcoSNsdI', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(8, 'Alda Kshlerin', '887 Nicolas Key\nNorth Kianaburgh, NE 17763', '+6165373424333', 'margot.gutkowski@example.org', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hq9PlhhgwE', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(9, 'Ms. Norene Dicki', '293 Braden Junction Suite 379\nIkeshire, UT 26021', '+6149577951853', 'heidenreich.benny@example.org', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HcAikQo84i', '2020-04-14 17:18:07', '2020-04-14 17:18:07'),
(10, 'Ms. River Stamm IV', '1820 Durgan Square Apt. 070\nJanaside, MA 64213', '+9747339002166', 'mdicki@example.com', '2020-04-14 17:18:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fxRSLc0hGk', '2020-04-14 17:18:07', '2020-04-14 17:18:07');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `planners`
--
ALTER TABLE `planners`
  ADD CONSTRAINT `planners_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
