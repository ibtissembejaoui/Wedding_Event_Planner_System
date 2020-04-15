-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 15 avr. 2020 à 11:27
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wedding_event_planner`
--

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_28_141004_create_planners_table', 1),
(4, '2020_03_28_141323_create_packages_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `planner_id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_date` date NOT NULL,
  `package_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_amount` double(8,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `packages_planner_id_foreign` (`planner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(211) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planners`
--

INSERT INTO `planners` (`id`, `name`, `photo`, `phone`, `email`, `adress`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Reinhold Lueilwitz IV', 'http://lorempixel.com/640/480/people/2', '+8592985862410', 'leola.hauck@example.com', '227 Niko Port Apt. 551\nLake Rickie, MO 90579', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(2, 'Abe Towne', 'http://lorempixel.com/640/480/people/4', '+2337717684752', 'gerhold.jacques@example.com', '35957 Xavier Circles\nNorth Blairhaven, AZ 32506', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(3, 'Frances Weissnat', 'http://lorempixel.com/640/480/people/4', '+6946834060995', 'melody.damore@example.org', '4234 Hammes Motorway Suite 693\nWest Keithchester, IA 12491', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(4, 'Melvin Funk', 'http://lorempixel.com/640/480/people/2', '+9630009240585', 'anita56@example.org', '79576 Nienow Forge\nNew Donmouth, SD 82441', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(5, 'Dr. Laurine Barton III', 'http://lorempixel.com/640/480/people/9', '+1564262502192', 'runolfsson.joanny@example.net', '27670 Haley Pike\nHoppeborough, RI 07818-4330', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(6, 'Raegan Hirthe', 'http://lorempixel.com/640/480/people/8', '+1513952334448', 'hessel.ray@example.net', '61319 Tromp Brook\nLloydmouth, TX 85721', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(7, 'Garland Veum', 'http://lorempixel.com/640/480/people/4', '+6263985388406', 'deangelo.grant@example.net', '856 O\'Reilly Isle Suite 928\nSouth Princess, AK 99252-5988', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(8, 'Dr. Gregory Steuber III', 'http://lorempixel.com/640/480/people/9', '+1928071618941', 'mwilkinson@example.com', '7796 Nader Corners Suite 381\nNorth Lia, NE 96018', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(9, 'Destany Goodwin', 'http://lorempixel.com/640/480/people/7', '+1848416491856', 'bernier.elliott@example.net', '668 Eichmann Springs\nSherwoodburgh, MO 90931', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(10, 'Keely Krajcik', 'http://lorempixel.com/640/480/people/1', '+9624026220461', 'dziemann@example.org', '5939 Albin Motorway\nCummingsbury, PA 68005', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(11, 'Brandyn Okuneva', 'http://lorempixel.com/640/480/people/1', '+2679657596677', 'bpredovic@example.net', '89036 Naomi Rue Apt. 909\nPort Fidel, IL 78829', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(12, 'Arvilla Brown', 'http://lorempixel.com/640/480/people/7', '+4042505013002', 'ubergnaum@example.com', '18604 Thiel Park Apt. 442\nEast Hortensehaven, MT 71390-6310', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(13, 'Miss Sonia Russel', 'http://lorempixel.com/640/480/people/5', '+5245498405791', 'jaqueline73@example.com', '138 Casper Grove\nNew Corybury, IA 18496-2036', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(14, 'Brenden Schulist', 'http://lorempixel.com/640/480/people/5', '+1510550696688', 'lakin.alvena@example.net', '28172 Clyde Camp\nKlockoshire, OK 28418-2443', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(15, 'Dr. Thalia Schulist Sr.', 'http://lorempixel.com/640/480/people/7', '+7837680930020', 'eloy.turcotte@example.org', '909 Hand Turnpike Apt. 133\nNorth Jaunita, IN 91510', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(16, 'Prof. Elton Waelchi MD', 'http://lorempixel.com/640/480/people/9', '+7514437691153', 'bkeebler@example.org', '3761 Cormier Drive Suite 307\nCarrollmouth, NC 30228', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(17, 'Elmore Schoen II', 'http://lorempixel.com/640/480/people/2', '+3143363066023', 'xglover@example.org', '2334 Theron Branch\nAnnettestad, WV 36545', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(18, 'Kristy Kassulke', 'http://lorempixel.com/640/480/people/5', '+3053615004235', 'nikko.boyer@example.com', '60479 Diego Grove Suite 842\nForrestfort, AZ 39585-3995', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(19, 'Cassandre Glover', 'http://lorempixel.com/640/480/people/1', '+4660134206632', 'hgraham@example.net', '355 Medhurst Rest Apt. 276\nEast Johannafurt, UT 71962', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(20, 'Morris Strosin', 'http://lorempixel.com/640/480/people/1', '+5812842164161', 'helmer28@example.com', '80247 Bud Gardens Suite 925\nNew Vergie, NH 48442-2588', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(21, 'Yoshiko Hamill', 'http://lorempixel.com/640/480/people/8', '+6095313446355', 'muller.reanna@example.org', '43959 Seth Loop\nPort Kay, DC 17552-4427', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(22, 'Dortha Kessler', 'http://lorempixel.com/640/480/people/9', '+8448122568983', 'antonio03@example.net', '6668 Ahmed Spur Apt. 575\nMaxiemouth, WV 14261-5682', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(23, 'Nona Pacocha Sr.', 'http://lorempixel.com/640/480/people/6', '+3164639758219', 'samantha04@example.org', '5974 Hermann Crescent\nNorth Chaim, AZ 52935', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(24, 'Prof. Baron Doyle DDS', 'http://lorempixel.com/640/480/people/4', '+7735238262770', 'jacquelyn.schumm@example.org', '1231 Hickle Unions Apt. 987\nStantonville, DE 28200', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(25, 'Prof. Maryse Klein', 'http://lorempixel.com/640/480/people/2', '+5374413803319', 'gcummings@example.org', '1145 Evalyn Stream Suite 637\nProhaskahaven, IL 83941-1338', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(26, 'Dr. Theo Stehr', 'http://lorempixel.com/640/480/people/5', '+3634173288351', 'rharber@example.com', '8143 Fritsch Avenue Apt. 915\nPort Hillard, WA 95164-6246', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(27, 'Karolann Boyer', 'http://lorempixel.com/640/480/people/5', '+7750577516252', 'georgiana69@example.org', '40766 Johnston Cliffs Suite 622\nNew Giovanna, AZ 48670-0651', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(28, 'Herbert Klein I', 'http://lorempixel.com/640/480/people/6', '+3581271496675', 'edgardo.hilpert@example.net', '4042 Sedrick Lodge\nGerholdshire, PA 70632-9183', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(29, 'Mittie Mohr', 'http://lorempixel.com/640/480/people/7', '+3766494667361', 'pamela.eichmann@example.com', '66554 Walker Isle\nNew Carmen, ID 13834', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(30, 'Dion Boyle', 'http://lorempixel.com/640/480/people/4', '+8861764632156', 'buster38@example.net', '787 Jerde Land\nSouth Vesta, TX 59106', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-04-15 07:08:06', '2020-04-15 07:08:06');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(211) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','customer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `adress`, `phone`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Mariah Schaden', 'oren38@example.org', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '60178 Smith Field Suite 752\nYostville, TN 08545-2608', '+2285724460572', 'customer', 'bTEGpahb3UVbHySjYSjCkh3Sooi8t7yijU4bZFDxm7XQKgTpihlZri77ejRe', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(2, 'Dr. Jaeden Gislason', 'deonte59@example.net', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '19228 Fleta Freeway Suite 557\nMarcosburgh, IN 15896', '+6620625162289', 'customer', '9xIb2pz4EDpBljvDK6cfJJyJJqF5Ea8hg4hIxZ32W7M8do9cF8XG21UgsRcY', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(3, 'Miss Alivia Boyer IV', 'schowalter.nigel@example.org', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '826 Tromp Underpass\nNew Lorenburgh, IA 60332-4680', '+2449232948945', 'customer', 'PuNSm54nzb', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(4, 'Mr. Ariel Zieme PhD', 'haskell.von@example.com', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '31074 Macy Dale Suite 945\nRandaltown, MI 62995-8161', '+9389583227279', 'customer', 'adsRmZ9gfA', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(5, 'Kira Willms', 'harris.amari@example.net', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3195 Hamill Camp Suite 388\nEast Samanthashire, HI 40390', '+9890448545968', 'customer', 'Hb4JU7ovLI', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(6, 'Dorris Krajcik', 'lexi.schumm@example.com', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '34892 Alycia Inlet Suite 188\nSouth Justine, WI 35221-7024', '+5033533148850', 'admin', 'koMnlBbuY4', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(7, 'Ernie Stokes', 'jennings.bartell@example.net', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '680 Dicki Turnpike\nNew Jaclynhaven, MA 73684', '+5426445600078', 'admin', 'h8yGfPAtz8', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(8, 'Loyce Kuhlman', 'xlehner@example.com', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '653 Hipolito Isle Apt. 671\nKoepptown, MI 90616-4520', '+3461797814567', 'admin', 'lzaMZTv8dO', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(9, 'Phoebe Waelchi', 'hilpert.jane@example.com', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '62659 Chester Mills\nWest Alisa, NJ 40559', '+1744091703057', 'customer', 'scQbBuTEJ7', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(10, 'Nichole Langosh I', 'zbotsford@example.org', '2020-04-15 07:08:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1683 Diana Green\nLake Eileenfurt, MO 38030-5630', '+4158249101522', 'admin', 'z1keR8H1Fl', '2020-04-15 07:08:06', '2020-04-15 07:08:06'),
(11, 'Ibtissem Bejaoui', 'ibtissembejaoui@gmail.com', NULL, '$2y$10$Uxu6gI21ZuMKRNJP3FiDuub33dqyAz6PUlrI3oFdCPCasv0WeVP7i', 'Ras Jebel Bizerte', '23569874', 'admin', NULL, '2020-04-15 07:10:02', '2020-04-15 07:10:02');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_planner_id_foreign` FOREIGN KEY (`planner_id`) REFERENCES `planners` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
