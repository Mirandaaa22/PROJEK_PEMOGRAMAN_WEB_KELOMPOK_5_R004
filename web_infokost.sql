-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 05:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_infokost`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muzza', 'Muzza@gmail.com', NULL, '$2y$12$996c0K8RkAcVDm1ukr7m8OIDHWBtX7sWIvh.GL5cnlUgFMzoNmLGy', NULL, '2024-06-17 10:39:43', '2024-06-17 03:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kost`
--

CREATE TABLE `kost` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kost` varchar(50) NOT NULL,
  `alamat_kost` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `nominal_harga` text NOT NULL,
  `spesifikasi_tipe_kamar` text DEFAULT NULL,
  `fasilitas_kamar` text DEFAULT NULL,
  `fasilitas_kamar_mandi` text DEFAULT NULL,
  `fasilitas_umum` text DEFAULT NULL,
  `peraturan` text DEFAULT NULL,
  `ketentuan_pengajuan_sewa` text DEFAULT NULL,
  `unggulan` enum('ya','tidak') DEFAULT 'tidak',
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kost`
--

INSERT INTO `kost` (`id`, `nama`, `jenis_kost`, `alamat_kost`, `telepon`, `nominal_harga`, `spesifikasi_tipe_kamar`, `fasilitas_kamar`, `fasilitas_kamar_mandi`, `fasilitas_umum`, `peraturan`, `ketentuan_pengajuan_sewa`, `unggulan`, `gambar`) VALUES
(10, 'Kost Sejati', 'Perempuan', 'Lebak Bandung', '08654321654', '1.000.000/bulan', 'AC, Sofa, dan 2 kasur', 'apa adanya', 'Bak mandi, sower dan toilet', 'parkiran', 'tidak boleh berisik', 'terlambat pembayaran hingga 1 bulan dikenakan denda atau keluar dari kost', 'tidak', '1.png'),
(11, 'Kost Telanai Sejati', 'Campuran', 'Kenali Besar', '086543218765', '1.000.000/bulan', 'AC, Sofa, dan 2 kasur', 'Wifi', 'apa adanya', 'parkiran', 'tidak boleh berisik', 'terlambat pembayaran hingga 1 bulan dikenakan denda atau keluar dari kost', 'ya', 'Screenshot (4).png'),
(12, 'Kost Patah Hati', 'Perempuan', 'Mendalo Asri', '085887654321', '1.500.000/bulan', 'Kursi, kasur, kipas angin', 'wifi', 'sower,bak mandi', 'parkiran, satpam penjaga', 'tidak boleh berisik hingga menggangu tentangga lain', 'terlambat pembayaran hingga 1 bulan dikenakan denda atau keluar dari kost', 'tidak', 'images (1).jpeg'),
(13, 'Kost Jelutung', 'Campuran', 'Jelutung, Lebak Bandung', '089654321765', '1.500.000/bulan', 'Kursi, kasur, kipas angin', 'Wifi', 'Bak mandi, sower dan toilet', 'parkiran, satpam penjaga', 'tidak boleh berisik hingga menggangu tentangga lain', 'terlambat pembayaran hingga 1 bulan dikenakan denda atau keluar dari kost', 'tidak', 'kost2.jpeg'),
(16, 'Kost Fitri Kota Jambi', 'Perempuan', 'Jalan Arafah', '0854321234', '1.000.000/bulan', '3 x 4 meter Tidak termasuk listrik', 'AC  Meja Lemari baju Bantal Jendela,Kasur TV Cermin Kursi', 'Kamar mandi dalam Shower Kloset duduk Bathtub', 'parkiran, satpam penjaga', 'tidak boleh berisik hingga menggangu tentangga lain', 'Waktu mulai ngekos terdekat:       Bisa di hari H setelah pengajuan sewa. Waktu mulai ngekos terjauh:       2 bulan setelah pengajuan sewa.', 'ya', 'images (1).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rahman', 'rahman@gmail.com', NULL, '$2y$12$6uDHxFPGvEf1eQxlcmS9IO5h/P3w2cTd63YJWamcZDp0A8WSCn.7O', NULL, '2024-06-17 10:42:30', '2024-06-17 09:50:23'),
(2, 'Test User', 'testuser@example.com', NULL, '$2y$10$7W0wJ8VgjNCb12lf/2nCJe90SbLe58NbR6nAZtWxBA8jH.hLBlUY2', NULL, '2024-06-17 10:37:15', '2024-06-17 10:37:15'),
(3, 'Eunice', 'eunice@gmail.com', NULL, '$2y$12$U6xINeumsGshzvOm6H4GFeRwwowuVo6wjhowejKReBOjPjE37KEey', NULL, '2024-06-17 11:19:04', '2024-06-17 11:19:04'),
(4, 'cobalagi', 'coba@gmail.com', NULL, '$2y$12$QdYF4KqrLDwm.1rFQcon3ugZwEA01dhu1NyXZ5cCtZJ2UBUNoWbOi', NULL, '2024-06-17 11:31:33', '2024-06-17 11:31:33'),
(5, 'Zafran', 'zafran@gmail.com', NULL, '$2y$12$2zkwdtAV/ZEuK/Dy8gJgoOVpcv5799pqojqKhFfbhxzum1FSKyRKy', NULL, '2024-06-19 07:59:47', '2024-06-19 07:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1LvkvsIwxLrxT8YK0OYkTLD8bkclK5AJpvpp4AOC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUVNHa0JmVlQzNGVDOG5yRVRFME4xMDNabTFhakp3Z3FKUFdMakszOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2RhZnRhcmtvc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU1OiJsb2dpbl9wZW5nZ3VuYV81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czo1MToibG9naW5fdXNlcl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1718809469);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rahman', 'user', 'mmuzzainurrahman@gmail.com', NULL, '$2y$12$3ikFbuGlA9.X4o5T4Y2wWOtfbzHYvtN0TLziOlw0yx1odWp1SRxa6', NULL, '2024-06-16 16:04:31', '2024-06-16 09:41:05'),
(2, 'Pengelola-kost', 'admin', 'admin@gmail.com', NULL, '$2y$12$XGThLUpYEKQ7WNICwHa46ulrl16AqbgRkSY19WrpkjFfuGZIciziK', NULL, '2024-06-16 16:55:30', '2024-06-16 10:13:36'),
(3, 'Muzza', '', 'Muzza', NULL, '12345', NULL, '2024-06-17 10:37:11', '2024-06-17 10:37:11'),
(4, 'Muzza', '', 'muzza@gmail.com', NULL, '12345', NULL, '2024-06-17 10:38:17', '2024-06-17 10:38:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kost`
--
ALTER TABLE `kost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengguna_email_unique` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kost`
--
ALTER TABLE `kost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
