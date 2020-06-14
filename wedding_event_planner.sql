-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 28 avr. 2020 à 11:16
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planners`
--

INSERT INTO `planners` (`id`, `name`, `photo`, `phone`, `email`, `adress`, `created_at`, `updated_at`) VALUES
(1, 'Cordia Kohler DVM', 'http://lorempixel.com/640/480/people/2', '+6019524531432', 'idella88@example.org', '76972 Lockman Falls\nParkerhaven, LA 52220', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(2, 'Floyd Crist II', 'http://lorempixel.com/640/480/people/3', '+6956487147303', 'imetz@example.org', '42656 Marks Points Apt. 395\nGarfieldfurt, KY 88010', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(3, 'Vivien Bailey', 'http://lorempixel.com/640/480/people/7', '+1926752560537', 'rframi@example.org', '114 Lynch Hills Apt. 716\nNorth Samantha, SC 46093', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(4, 'Glennie Hoeger', 'http://lorempixel.com/640/480/people/7', '+9379583928743', 'kautzer.janis@example.net', '5301 Sporer Mountains Apt. 050\nHansenborough, PA 94681', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(5, 'Dr. Sandrine Rolfson', 'http://lorempixel.com/640/480/people/1', '+1743917340820', 'chaim.mayer@example.org', '2941 Mohammad Fields\nReicherttown, AZ 36300', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(6, 'Sid Tremblay', 'http://lorempixel.com/640/480/people/3', '+6547581226447', 'doyle95@example.org', '8756 Juvenal Track\nNorth Aurelie, MT 20302-5362', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(7, 'Aliza Legros', 'http://lorempixel.com/640/480/people/1', '+5296538931279', 'kirlin.ila@example.net', '6320 Mortimer Route Suite 179\nMohrburgh, GA 89610', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(8, 'Dr. Elwyn Heidenreich', 'http://lorempixel.com/640/480/people/9', '+6335372003473', 'hill.jaylen@example.net', '830 Kemmer Lake Apt. 861\nFeestfurt, MA 37671', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(9, 'Prof. Enoch Torphy', 'http://lorempixel.com/640/480/people/5', '+1972256389612', 'senger.alvina@example.com', '69803 Rosenbaum Throughway\nNorth Keshawnport, WI 13988-6637', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(10, 'Mrs. Tianna Morissette', 'http://lorempixel.com/640/480/people/1', '+8085137890629', 'lebsack.clifton@example.net', '832 Mosciski Trafficway Apt. 486\nLake Vitatown, RI 15150', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(11, 'Juana Anderson', 'http://lorempixel.com/640/480/people/1', '+8468708531200', 'mpowlowski@example.com', '9921 Schimmel Junctions Suite 268\nWest Anissa, NH 70239-8428', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(12, 'D\'angelo Mosciski', 'http://lorempixel.com/640/480/people/6', '+8393503277765', 'burley.bartoletti@example.net', '837 Sammie Court Apt. 663\nSouth Devon, KS 09150', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(13, 'Callie Wisoky', 'http://lorempixel.com/640/480/people/4', '+6631014078964', 'loren85@example.com', '258 Leon Roads Suite 293\nWest Anabelfurt, MO 70377-4766', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(14, 'Giovanna Halvorson', 'http://lorempixel.com/640/480/people/1', '+2955444422477', 'qbayer@example.net', '6263 Fisher Drives\nGussieport, NC 09707', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(15, 'Milton Gaylord', 'http://lorempixel.com/640/480/people/5', '+8778656456530', 'gebert@example.net', '64690 Abagail Corners Apt. 764\nNew Cletachester, WY 88166', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(16, 'Delbert Harvey', 'http://lorempixel.com/640/480/people/8', '+2147125678002', 'ubradtke@example.org', '72498 Yoshiko Rest\nTyreeland, AZ 00532-0264', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(17, 'Marlene Rempel III', 'http://lorempixel.com/640/480/people/1', '+5011498816042', 'wilfrid.boyle@example.net', '67469 Marcelina Parks Suite 702\nNorth Alivia, NM 13813', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(18, 'Marie Moore', 'http://lorempixel.com/640/480/people/8', '+5215012435209', 'orlando.treutel@example.net', '90344 Mosciski Fall Apt. 496\nBorerland, ND 85933', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(19, 'Missouri Goyette', 'http://lorempixel.com/640/480/people/6', '+3531118246106', 'deshaun92@example.com', '19471 Jany Lodge\nLake King, MN 69721-9167', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(20, 'Prof. Kamryn Kuphal MD', 'http://lorempixel.com/640/480/people/2', '+5064236137512', 'jada.hintz@example.net', '297 Daphnee Trace Suite 784\nNorth Jackyborough, MS 26112-2776', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(21, 'Sigurd Gusikowski', 'http://lorempixel.com/640/480/people/1', '+2099991430311', 'alice14@example.com', '7619 Robyn Pines\nNew Jaida, KS 14748-6829', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(22, 'Aniyah Schumm', 'http://lorempixel.com/640/480/people/8', '+7937164438177', 'mante.manuela@example.org', '346 Emie Canyon Suite 248\nDylanborough, MT 16886-7549', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(23, 'Harrison Russel', 'http://lorempixel.com/640/480/people/5', '+9072663150453', 'hsanford@example.com', '24056 Lubowitz Pine\nSouth Chelsie, LA 87936', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(24, 'Rhett Bode', 'http://lorempixel.com/640/480/people/2', '+3035621977028', 'trevion.jenkins@example.org', '382 Mohr Valley Apt. 680\nBoscoville, NE 82911', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(25, 'Oran Steuber', 'http://lorempixel.com/640/480/people/7', '+5799988585847', 'bechtelar.hans@example.net', '94814 Cletus Spring\nBeerton, MO 57725', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(26, 'Prof. Rasheed Vandervort PhD', 'http://lorempixel.com/640/480/people/2', '+4422105919229', 'qtrantow@example.org', '8358 Lurline Lodge\nPort Tressamouth, SD 63929-3051', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(27, 'Rosario Reynolds', 'http://lorempixel.com/640/480/people/9', '+6718435288585', 'francisco33@example.com', '520 Cartwright Stream Apt. 798\nRylanport, WY 20781', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(28, 'Jimmie Cole', 'http://lorempixel.com/640/480/people/4', '+4825824822414', 'dewitt41@example.com', '7258 Dorthy Ports Apt. 945\nHowebury, MT 69164', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(29, 'Godfrey Haag', 'http://lorempixel.com/640/480/people/4', '+1316381023464', 'marta73@example.net', '3666 Obie Club\nAdeliaport, MI 81964-1845', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(30, 'Felix Howe', 'http://lorempixel.com/640/480/people/1', '+2282170417457', 'jennifer01@example.com', '382 Tamara Crossroad\nPort Ewaldchester, DE 35850', '2020-04-28 09:58:12', '2020-04-28 09:58:12');

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
(1, 'Fidel Boyle', 'yabshire@example.org', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '29625 Ankunding Valley\nKaylinton, CO 94243-2336', '+8867742914644', 0, 'OhB57GwCGcMbCybN5MkM5PEbZGDinFQ5xpdwHoH0SVB4igFYSi4HYiQ2dnkR', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(2, 'Dr. Wilber Kilback', 'runolfsdottir.mckenzie@example.com', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '39289 Ritchie Islands Suite 361\nNorth Felton, NH 68437', '+9417572673132', 0, 'XDYBfNnEu8', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(3, 'Mrs. Crystal Fadel I', 'abel28@example.net', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9037 Wisoky Mission Suite 226\nLake Ashtynmouth, RI 85129-6480', '+8029409952864', 0, 'XLyJ967tmT', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(4, 'Prof. Brice Cummings Jr.', 'katelyn96@example.org', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '222 Rose Green\nWest Fannieville, OK 71554', '+6187633431304', 0, '6DPqqgbLnr', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(5, 'Queenie Kuhn', 'heaney.green@example.com', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '28112 Conrad Spur Apt. 096\nToreyburgh, NJ 99382', '+1132079909985', 0, 'PRpYZXeLe3', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(6, 'Meghan Huels', 'kuhn.hans@example.com', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3432 Hilton Common Apt. 961\nCartwrightborough, TX 71564', '+7173373447894', 0, 'YhaVtkQG6v', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(7, 'Camren Stamm', 'emmy.langosh@example.org', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '892 Alisha Landing\nNoreneland, MD 70281', '+4302090763499', 0, 'AdxCfNinQQ', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(8, 'Prof. Ted Labadie III', 'pwolf@example.com', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7264 Jayne Street\nLake Maya, OH 45574', '+1333064091481', 0, 'i7GIdZLmO1', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(9, 'Andrew Wehner MD', 'schamberger.jany@example.com', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4098 Priscilla Rest Suite 059\nWest Terrenceton, MA 88675', '+4402200027536', 0, 'cSs5cr5RTe', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(10, 'Rebeca Labadie', 'wiza.margaretta@example.org', '2020-04-28 09:58:12', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '853 McGlynn Harbor\nHerzogport, CO 27043', '+7867056009266', 0, 'npl387zPcA', '2020-04-28 09:58:12', '2020-04-28 09:58:12'),
(11, 'Ibtissem Bejaoui', 'ibtissembejaoui7@gmail.com', NULL, '$2y$10$2hyKTpBoryOJh4z5rXn4pOi/z95F7Q/whiQnsgQF6rHnP0m8kRrPO', 'Bizerte', '24569874', 1, NULL, '2020-04-28 10:00:41', '2020-04-28 10:00:41');

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
