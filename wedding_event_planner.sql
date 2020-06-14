-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 14 juin 2020 à 17:05
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
-- Structure de la table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_deco` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_food` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guests_number` int(11) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `user_id`, `event_type`, `event_date`, `event_time`, `event_place`, `event_deco`, `event_food`, `guests_number`, `confirmed`, `created_at`, `updated_at`) VALUES
(1, 3, 'ab', '1983-08-14', '19:57:00', 'rerum', 'voluptas', 'veritatis', 9, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(2, 7, 'perferendis', '2009-12-18', '23:44:00', 'porro', 'aut', 'eos', 1, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(3, 3, 'nostrum', '1988-10-11', '17:33:00', 'incidunt', 'culpa', 'aperiam', 5, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(4, 3, 'laudantium', '1983-10-26', '09:47:00', 'sed', 'consectetur', 'cumque', 8, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(5, 1, 'rerum', '2006-05-13', '07:55:00', 'velit', 'illum', 'laboriosam', 5, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(6, 4, 'repudiandae', '2003-08-21', '18:58:00', 'laudantium', 'officia', 'magni', 9, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(7, 4, 'officiis', '1977-08-31', '07:39:00', 'velit', 'aperiam', 'iusto', 8, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(8, 9, 'ut', '2005-03-20', '00:45:00', 'necessitatibus', 'quia', 'aut', 8, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(9, 6, 'velit', '1971-08-27', '18:37:00', 'officia', 'voluptatum', 'impedit', 9, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(10, 7, 'ipsam', '2004-02-13', '17:21:00', 'sint', 'ea', 'dolor', 2, 0, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(11, 8, 'ibtissem', '2020-06-13', '19:03:00', 'bizerte', 'azert', 'dffghjk', 8, 0, '2020-06-13 16:03:50', '2020-06-13 16:03:50'),
(13, 1, 'uiiop', '2020-06-14', '20:39:00', 'ffghhj', 'kklmm', 'cvvbn', 7, 0, '2020-06-13 16:39:31', '2020-06-13 16:39:31'),
(14, 1, 'uiiop', '2020-06-14', '20:39:00', 'ffghhj', 'kklmm', 'cvvbn', 7, 0, '2020-06-13 16:41:16', '2020-06-13 16:41:16'),
(15, 2, 'dffghjh', '2020-06-19', '19:45:00', 'ghhllll', 'bbnn', 'kllmm', 16, 0, '2020-06-13 16:45:45', '2020-06-14 14:28:30'),
(16, 1, 'birthday', '2020-06-14', '18:00:00', 'beach', 'fleurs', 'pizza cake', 9, 0, '2020-06-14 09:35:13', '2020-06-14 09:35:13'),
(17, 1, 'birthday', '2020-06-14', '18:00:00', 'beach', 'fleurs', 'pizza cake', 9, 0, '2020-06-14 09:39:09', '2020-06-14 09:39:09'),
(18, 1, 'birthday', '2020-06-14', '18:00:00', 'beach', 'fleurs', 'pizza cake', 9, 0, '2020-06-14 09:39:49', '2020-06-14 09:39:49'),
(19, 3, 'fiancailles', '2020-06-15', '18:47:00', 'hjjkk', 'ghjk', 'cvbbn', 6, 0, '2020-06-14 09:42:00', '2020-06-14 09:42:00'),
(21, 2, 'cvbnsdfg', '2020-06-14', '14:08:00', 'cvvbn', 'hjuttr', 'mlkhgfdsze', 6, 0, '2020-06-14 11:09:06', '2020-06-14 11:09:06'),
(22, 2, 'dffghj', '2020-06-14', '18:00:00', 'vbnnjhu', 'srdtryg', 'xnffdr', 5, 0, '2020-06-14 15:00:19', '2020-06-14 15:00:19'),
(23, 4, 'bbnngtdeee', '2020-06-15', '20:00:00', 'bvcxwqs', 'nbbgg', 'bhfgfd', 6, 0, '2020-06-14 15:10:48', '2020-06-14 15:10:48');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_28_141004_create_planners_table', 1),
(4, '2020_03_28_141323_create_packages_table', 1),
(5, '2020_06_13_164712_create_events_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_date` date NOT NULL,
  `package_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `packages_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `package_type`, `photo`, `package_date`, `package_description`, `package_amount`, `created_at`, `updated_at`) VALUES
(1, 5, 'vero', 'archivage.PNG', '2003-07-19', 'zzeerr', 95.058, '2020-06-13 15:57:55', '2020-06-14 09:23:58'),
(2, 5, 'quibusdam', 'http://lorempixel.com/640/480/people8', '2006-02-08', 'Necessitatibus repellendus eos totam sapiente atque esse minus.', 7.99, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(3, 7, 'laboriosam', 'http://lorempixel.com/640/480/people2', '1983-04-24', 'Libero temporibus expedita reprehenderit eaque.', 120.763, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(4, 4, 'delectus', 'http://lorempixel.com/640/480/people1', '1998-07-10', 'Nobis dolore eaque eum eos.', 15.418, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(5, 4, 'fugit', 'http://lorempixel.com/640/480/people1', '1999-03-18', 'Et odit nulla eum consequuntur.', 23.222, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(6, 3, 'sed', 'http://lorempixel.com/640/480/people8', '2013-01-31', 'Qui amet impedit possimus quibusdam sed aut.', 76.584, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(7, 10, 'sit', 'http://lorempixel.com/640/480/people1', '1970-06-29', 'Beatae perspiciatis ipsum aliquam ab.', 93.146, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(8, 9, 'ipsam', 'http://lorempixel.com/640/480/people1', '1973-07-31', 'Mollitia non explicabo itaque veniam.', 120.208, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(9, 3, 'nihil', 'http://lorempixel.com/640/480/people1', '1985-05-27', 'Et blanditiis architecto eum blanditiis sed qui.', 104.258, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(10, 8, 'dolorum', 'http://lorempixel.com/640/480/people3', '1995-11-02', 'Earum maiores placeat accusantium sunt qui.', 35.083, '2020-06-13 15:57:55', '2020-06-13 15:57:55'),
(11, 11, 'wedding', 'C:\\wamp64\\tmp\\phpE8AC.tmp', '2020-06-14', 'azzertyuiio', 2, '2020-06-14 09:15:55', '2020-06-14 09:15:55'),
(13, 11, 'birthday', 'ajouteradmin.PNG', '2020-06-15', 'bnfderzasx', 8, '2020-06-14 09:28:47', '2020-06-14 10:53:25'),
(14, 11, 'azsedrftgyh', 'gestionCongé.PNG', '2020-06-15', 'bnnkjhhgg', 6, '2020-06-14 10:48:53', '2020-06-14 10:55:06'),
(15, 11, 'fgfgygytft', 'C:\\wamp64\\tmp\\phpA2A1.tmp', '2020-06-14', 'vvcffdsese', 3, '2020-06-14 15:16:47', '2020-06-14 15:16:47'),
(16, 11, 'dgvhjjk', 'C:\\wamp64\\tmp\\php5B9E.tmp', '2020-06-21', 'ccfdse', 3, '2020-06-14 15:21:56', '2020-06-14 15:21:56');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planners`
--

INSERT INTO `planners` (`id`, `name`, `photo`, `phone`, `email`, `adress`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Blake Farrell III', 'http://lorempixel.com/640/480/people/1', '+3887522648145', 'corkery.catharine@example.org', '8740 Corrine Spur Apt. 641\nPort Thurmanshire, AR 90233', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(2, 'Thurman Schneider', 'http://lorempixel.com/640/480/people/8', '+2001956001828', 'sporer.elsa@example.com', '1756 McClure Grove\nWest Hester, KY 70772', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(3, 'Dino Hammes', 'http://lorempixel.com/640/480/people/6', '+2329879618358', 'sophia47@example.net', '8788 Leannon Village Suite 215\nShermanshire, MS 21190', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(4, 'Madilyn O\'Keefe', 'http://lorempixel.com/640/480/people/7', '+6907419118312', 'xjohns@example.org', '98295 Brock Ways\nSouth Preciousstad, LA 19480-0474', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(5, 'Neal Mueller I', 'http://lorempixel.com/640/480/people/3', '+1792566115696', 'tankunding@example.org', '32363 Kassulke Plaza\nEast Efren, UT 87549', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(6, 'Dusty Muller', 'http://lorempixel.com/640/480/people/8', '+8018451525362', 'ihauck@example.com', '85615 Alda Ports Suite 723\nSouth Neomamouth, HI 77836', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(7, 'Pink Fisher Jr.', 'http://lorempixel.com/640/480/people/6', '+2273336629610', 'samanta89@example.org', '7367 Stark Estates\nOrnfurt, NH 85166-1022', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(8, 'Verla Schuster', 'http://lorempixel.com/640/480/people/1', '+6425478446372', 'mraynor@example.org', '64727 Cartwright Gardens\nAltheaberg, NJ 68768', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(9, 'Rosalinda Toy Sr.', 'http://lorempixel.com/640/480/people/5', '+1154591536206', 'xhermann@example.com', '12876 Hettinger Burgs\nSchambergerberg, NJ 01842-0757', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(10, 'Callie Predovic DDS', 'http://lorempixel.com/640/480/people/3', '+2007538400177', 'myles76@example.org', '118 Padberg Summit\nNew Rollinland, MS 92181-8039', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(11, 'Callie Carter', 'http://lorempixel.com/640/480/people/4', '+7217289381124', 'oran76@example.net', '285 Friesen Burg\nOrlochester, LA 72599-6163', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(12, 'Terrill Schultz', 'http://lorempixel.com/640/480/people/7', '+7903373907714', 'jaquelin33@example.net', '6586 Graciela Fall\nPort Leta, IA 23234', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(13, 'Nova Schmidt', 'http://lorempixel.com/640/480/people/2', '+2730328429567', 'travon.franecki@example.com', '7918 Nader Fork Suite 284\nEast Mable, TN 00904', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(14, 'Santino Schamberger', 'http://lorempixel.com/640/480/people/1', '+2445632155780', 'wiza.kelly@example.net', '78262 Mary Mills\nWymanton, HI 24101', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(15, 'Lon Botsford DDS', 'http://lorempixel.com/640/480/people/9', '+8716623837119', 'earl75@example.com', '619 Crooks Islands Suite 370\nChristiansenton, RI 16861', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(16, 'Elisha Senger', 'http://lorempixel.com/640/480/people/6', '+3358998524498', 'rodrick.schulist@example.net', '9623 Dickinson Green Apt. 848\nPearlton, VT 69703', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(17, 'Mya Lemke', 'http://lorempixel.com/640/480/people/8', '+9417972410258', 'adrien87@example.org', '649 Joan Ways\nLake Nelleside, NV 03099-2904', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(18, 'Mara Fisher', 'http://lorempixel.com/640/480/people/1', '+2964234556542', 'darwin.ullrich@example.com', '167 Christophe Brook\nSouth Baronchester, AL 38654', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(19, 'Kole Bartoletti', 'http://lorempixel.com/640/480/people/2', '+4505905158482', 'greenfelder.alene@example.com', '9077 Wehner Light\nTamarachester, SC 20677', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(20, 'Reece Kautzer Sr.', 'http://lorempixel.com/640/480/people/1', '+6066779309338', 'miles55@example.net', '36239 Alta Ridge\nEast Maritzahaven, MI 61611', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(21, 'Martine Koepp PhD', 'http://lorempixel.com/640/480/people/8', '+7668945738871', 'rowan32@example.org', '955 Houston Underpass Suite 600\nWest Rae, CA 66647', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(22, 'Addie Kunde', 'http://lorempixel.com/640/480/people/5', '+1631599676327', 'miller50@example.org', '69410 Kaleb Turnpike\nRunteland, CA 88296-7719', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(23, 'Courtney Gibson', 'http://lorempixel.com/640/480/people/2', '+9282745649021', 'kuphal.assunta@example.org', '812 Moen Club\nDamonview, WV 10252-0008', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(24, 'Green Larkin', 'http://lorempixel.com/640/480/people/7', '+2592936908603', 'assunta55@example.net', '39553 Nikolaus Parks Apt. 386\nJakubowskifurt, NE 00601', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(25, 'Mr. Keon Deckow PhD', 'http://lorempixel.com/640/480/people/3', '+1266102127856', 'hettinger.lauriane@example.com', '90643 Crawford Trafficway\nPort Kamren, WA 03010', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(26, 'Lorenz Abernathy', 'http://lorempixel.com/640/480/people/5', '+3334762884431', 'abdullah.grady@example.org', '24003 Madaline Club\nLake Joanniemouth, NE 35579-8321', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(27, 'Neoma Denesik', 'http://lorempixel.com/640/480/people/7', '+8764788037868', 'runolfsdottir.wilhelm@example.com', '90915 Felicia Common Apt. 012\nPort Briachester, IL 48543', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(28, 'Felton Yost', 'http://lorempixel.com/640/480/people/5', '+2088762827450', 'sarina71@example.net', '621 Hills Square Suite 428\nSouth Imelda, UT 70754-1475', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(29, 'Toni Schinner', 'http://lorempixel.com/640/480/people/6', '+8747095298878', 'garland64@example.net', '290 Flatley Dam\nNew Camila, MN 13545', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(30, 'Earnestine Kshlerin', 'http://lorempixel.com/640/480/people/3', '+7762740461697', 'ophelia68@example.com', '82833 Parker Vista Suite 808\nBoehmport, NY 47469-2024', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(34, 'mohamed ibrahim', 'base de données.PNG', '23456723', 'medibr@gmail.com', 'bizerte', '2020-06-14 11:03:22', '2020-06-14 11:03:52');

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
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `adress`, `phone`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trudie Becker', 'von.grant@example.com', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '98053 Florence Stravenue\nNikolausbury, CA 67137', '+7110956434324', 0, 'zOxmEHK0DUcvK2KUhgoEbc7INvpCl4FSQGXqXIUhez6zoDPuafnrQ6e0xs0S', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(2, 'Mrs. Berneice Mayer I', 'kerluke.opal@example.org', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '41339 Emmerich Drive Suite 864\nPort Rubyeburgh, RI 56657-0310', '+5526589865103', 0, 'Ni3rQu360zM9M7qZOPWaazIQA9om4jIMN4Vu1gsNEhcupdlUUrVSWymRnJDP', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(3, 'Dovie Beier', 'taurean70@example.net', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2374 Durgan Forest\nMoriahville, WV 07980-2137', '+9522174825670', 0, 'FuVKKIzqApDYdKYqlqT0mXalL5E3gwtVwLnOOHyz8gBR2WjPkwNk5xs60Jki', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(4, 'Miss Gilda Murazik Jr.', 'casper.delta@example.com', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '56087 Torey Plains Apt. 891\nKyliestad, ID 48612', '+6491621944444', 0, 'VR61BQJWWtrHSFIEQzD0c4N621abnaW7ahKLW8rIvjVTKK0QUUVdeQWfmhCg', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(5, 'May Upton', 'block.xander@example.com', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '33146 Mayer Corners\nMacejkovicchester, TN 14796-3709', '+9947294882849', 0, 'uNE2ikI8eZ', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(6, 'Leann Ritchie', 'grace56@example.org', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '74544 Wunsch Plain\nKlockofort, MN 24411-3138', '+4283701280038', 0, 'Jc5gKoVQFZ', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(7, 'Lonny Funk', 'tommie.huels@example.org', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9349 Xzavier Unions Suite 206\nLake Adriana, AZ 84394', '+6458371065052', 0, 'TOeQtLqg1Q', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(8, 'Miss Rosetta Willms III', 'felipa.labadie@example.net', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '47435 Daniela Point Suite 103\nNorth Rachael, IA 98511', '+3969420627875', 0, 'g9OYGUtdnyJD5XcH5zNi5GLmSY5HJbq78ggiELVyBZbwxT1o0TBl9wvwyMBS', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(9, 'Miss Nya Torphy IV', 'bboehm@example.org', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '70275 Nicklaus Park Suite 976\nEast Eldora, MN 51573-2985', '+6674050243923', 0, '08mKZt5mnc', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(10, 'Pearl Schamberger', 'ewalter@example.com', '2020-06-13 15:57:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '436 Nader Lane Suite 185\nHarrytown, CT 78851-8306', '+1191086241748', 0, 'jg5TaQHHFq', '2020-06-13 15:57:54', '2020-06-13 15:57:54'),
(11, 'Ibtissem Bejaoui', 'ibtissembejaoui7@gmail.com', NULL, '$2y$10$5heLxbNbkb39v.5jCP.1tufvjV/tJ8w3wg3.9aABPDO5r0iObCu4m', 'Bizerte', '28446727', 1, NULL, '2020-06-13 15:59:26', '2020-06-13 15:59:26');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
