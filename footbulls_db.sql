-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 06:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footbulls_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market_value`
--

CREATE TABLE `market_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `mv_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`mv_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_value`
--

INSERT INTO `market_value` (`id`, `player_id`, `mv_data`, `created_at`, `updated_at`) VALUES
(2, 1, '{\"06\\/2010\":25000,\"07\\/2010\":25000,\"08\\/2010\":25000,\"09\\/2010\":25000,\"10\\/2010\":25000,\"11\\/2010\":25000,\"12\\/2010\":25000,\"01\\/2011\":25000,\"02\\/2011\":25000,\"03\\/2011\":25000,\"04\\/2011\":25000,\"05\\/2011\":50000,\"06\\/2011\":50000,\"07\\/2011\":150000,\"08\\/2011\":150000,\"09\\/2011\":150000,\"10\\/2011\":150000,\"11\\/2011\":150000,\"12\\/2011\":300000,\"01\\/2012\":300000,\"02\\/2012\":300000,\"03\\/2012\":300000,\"04\\/2012\":300000,\"05\\/2012\":1500000,\"06\\/2012\":1500000,\"07\\/2012\":1500000,\"08\\/2012\":1500000,\"09\\/2012\":4000000,\"10\\/2012\":4000000,\"11\\/2012\":4000000,\"12\\/2012\":4000000,\"01\\/2013\":4000000,\"02\\/2013\":4000000,\"03\\/2013\":4000000,\"04\\/2013\":5000000,\"05\\/2013\":5000000,\"06\\/2013\":6500000,\"07\\/2013\":6500000,\"08\\/2013\":6500000,\"09\\/2013\":6500000,\"10\\/2013\":6500000,\"11\\/2013\":8500000,\"12\\/2013\":8500000,\"01\\/2014\":8500000,\"02\\/2014\":13000000,\"03\\/2014\":13000000,\"04\\/2014\":13000000,\"05\\/2014\":13000000,\"06\\/2014\":13000000,\"07\\/2014\":13000000,\"08\\/2014\":13000000,\"09\\/2014\":13000000,\"10\\/2014\":13000000,\"11\\/2014\":13000000,\"12\\/2014\":13000000,\"01\\/2015\":13000000,\"02\\/2015\":10000000,\"03\\/2015\":12000000,\"04\\/2015\":12000000,\"05\\/2015\":12000000,\"06\\/2015\":12000000,\"07\\/2015\":18000000,\"08\\/2015\":18000000,\"09\\/2015\":18000000,\"10\\/2015\":18000000,\"11\\/2015\":20000000,\"12\\/2015\":20000000,\"01\\/2016\":20000000,\"02\\/2016\":20000000,\"03\\/2016\":20000000,\"04\\/2016\":23000000,\"05\\/2016\":23000000,\"06\\/2016\":23000000,\"07\\/2016\":27000000,\"08\\/2016\":27000000,\"09\\/2016\":27000000,\"10\\/2016\":27000000,\"11\\/2016\":27000000,\"12\\/2016\":27000000,\"01\\/2017\":30000000,\"02\\/2017\":30000000,\"03\\/2017\":30000000,\"04\\/2017\":30000000,\"05\\/2017\":30000000,\"06\\/2017\":35000000,\"07\\/2017\":35000000,\"08\\/2017\":35000000,\"09\\/2017\":35000000,\"10\\/2017\":40000000,\"11\\/2017\":40000000,\"12\\/2017\":40000000,\"01\\/2018\":80000000,\"02\\/2018\":80000000,\"03\\/2018\":80000000,\"04\\/2018\":80000000,\"05\\/2018\":150000000,\"06\\/2018\":150000000,\"07\\/2018\":150000000,\"08\\/2018\":150000000,\"09\\/2018\":150000000,\"10\\/2018\":150000000,\"11\\/2018\":150000000,\"12\\/2018\":150000000,\"01\\/2019\":150000000,\"02\\/2019\":150000000,\"03\\/2019\":150000000,\"04\\/2019\":150000000,\"05\\/2019\":150000000,\"06\\/2019\":150000000,\"07\\/2019\":150000000,\"08\\/2019\":150000000,\"09\\/2019\":150000000,\"10\\/2019\":150000000,\"11\\/2019\":150000000,\"12\\/2019\":150000000,\"01\\/2020\":150000000,\"02\\/2020\":150000000,\"03\\/2020\":150000000,\"04\\/2020\":120000000,\"05\\/2020\":120000000,\"06\\/2020\":120000000,\"07\\/2020\":120000000,\"08\\/2020\":120000000,\"09\\/2020\":120000000,\"10\\/2020\":120000000,\"11\\/2020\":120000000,\"12\\/2020\":120000000,\"01\\/2021\":120000000,\"02\\/2021\":120000000,\"03\\/2021\":110000000,\"05\\/2021\":110000000,\"06\\/2021\":100000000,\"07\\/2021\":100000000,\"08\\/2021\":100000000,\"09\\/2021\":100000000,\"10\\/2021\":100000000,\"11\\/2021\":100000000,\"12\\/2021\":100000000,\"01\\/2022\":100000000,\"02\\/2022\":100000000,\"03\\/2022\":100000000,\"04\\/2022\":100000000,\"05\\/2022\":100000000,\"06\\/2022\":90000000,\"07\\/2022\":90000000,\"08\\/2022\":90000000,\"09\\/2022\":90000000,\"10\\/2022\":90000000,\"11\\/2022\":90000000}', '2022-11-24 09:24:25', '2022-11-24 09:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_19_203127_players_data', 1),
(6, '2022_11_19_204327_players_data_mv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players_data`
--

CREATE TABLE `players_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players_data`
--

INSERT INTO `players_data` (`id`, `player_name`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Salah', '2022-11-24 09:24:19', '2022-11-24 09:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `market_value`
--
ALTER TABLE `market_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_value_player_id_foreign` (`player_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `players_data`
--
ALTER TABLE `players_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market_value`
--
ALTER TABLE `market_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players_data`
--
ALTER TABLE `players_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `market_value`
--
ALTER TABLE `market_value`
  ADD CONSTRAINT `market_value_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players_data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
