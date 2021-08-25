-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2021 at 08:03 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengadaan_2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `email`, `alamat`, `password`, `status`, `token`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'admin@gmail.com', 'Jl Admin Satu', 'eyJpdiI6IjBta080cytqbDVFSzFkQVRPRFZxdHc9PSIsInZhbHVlIjoiSnhBT0lQRmpsbmpQa21rK2lcL1ZYRlE9PSIsIm1hYyI6ImE5MGE1MzAxMmI0MTk4ZjVjNmQyOTIxZjc0NzQ2YjY1NDdjZDhlMWQ1Mjk4N2U4YjI3N2QzZjFiNDk1NWNhYjEifQ==', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZF9hZG1pbiI6NH0.gOVmakM42WZPBZrUWbCDpZaYIKJWNokZMkRDetPad48', '2021-08-12 21:26:42', '2021-08-18 21:35:23'),
(6, 'Admin2', 'admin2@gmail.com', 'Jalan Yang Selalu Dilalui', 'eyJpdiI6IjBOS1pmUGh6TFNTbE91SUlSSlhTTXc9PSIsInZhbHVlIjoiTzdVXC9lZ2pKdE1tWmVnRCtnRGVnbDNEcGlRSnRPVkY4ckNEXC9idTc3RkpVPSIsIm1hYyI6IjFmNTg4MTlmNzQzNTc4OWJhOTIyOTg5ZTVhZmMyOTNhMTJkZGQwZWY3ODQ1OTBjYWJiNWI1ZDFjNzg3NDVkZmMifQ==', 1, NULL, '2021-08-12 21:28:55', '2021-08-12 21:28:55'),
(7, 'Admin3', 'admin3@gmail.com', 'Jalan Jalan Jalan Jalan', 'eyJpdiI6ImljbW53U25ycUZ1SHVhTitVNUhyMmc9PSIsInZhbHVlIjoiU2RIVVlMWFE2cFBkVHlRUHFRQXRodVNleEVMdk9UTmJJUU5GWjlyWWdMOD0iLCJtYWMiOiJiYTVlNmY3ODc1ZDBhMjBjYzNhNDg3ZTIyODRjMGNiNjQ0MGZhZTM0NDkyNzM2YWZmNzM2MTFkNGFhNTA0YmU2In0=', 1, NULL, '2021-08-12 21:29:20', '2021-08-12 21:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laporan`
--

CREATE TABLE `tbl_laporan` (
  `id_laporan` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `laporan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_laporan`
--

INSERT INTO `tbl_laporan` (`id_laporan`, `id_pengajuan`, `id_suplier`, `laporan`, `created_at`, `updated_at`) VALUES
(2, 4, 2, 'public/laporan/VAZLXKkcLUe9OSL5qPw3lUNRisLtsycbsoWRE238.pdf', '2021-08-12 21:53:52', '2021-08-12 21:53:52'),
(4, 9, 3, 'public/laporan/poQtW7TvOiAWINNZsmkKkAHQfcOn81dvm1V9Gp3N.pdf', '2021-08-17 20:55:24', '2021-08-17 20:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengadaan`
--

CREATE TABLE `tbl_pengadaan` (
  `id_pengadaan` int(11) NOT NULL,
  `nama_pengadaan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `anggaran` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengadaan`
--

INSERT INTO `tbl_pengadaan` (`id_pengadaan`, `nama_pengadaan`, `deskripsi`, `gambar`, `anggaran`, `status`, `created_at`, `updated_at`) VALUES
(9, 'motor', 'https://www.tokopedia.com/rekomendasi/1602924156?ref=googleshopping&c=6475677831&m=282529205&p=1602924156&gclid=CjwKCAjwjdOIBhA_EiwAHz8xm1SV6CHuWeS04k980IJUAEYxNGb9p3RXbKznt-xIXfphjvvW_p43QxoCil4QAvD_BwE&gclsrc=aw.ds', 'public/gambar/ewWBB2ctWAWG2biHJQUO6WuEqAKaeyd9TI1kMaWy.png', 9000000, 1, '2021-08-12 21:42:31', '2021-08-12 21:42:31'),
(10, 'meja', 'https://www.ruparupa.com/informa/york-meja-lipat-120x60x75-cm.html?gclid=CjwKCAjwjdOIBhA_EiwAHz8xmyI_DJp4b9L2L3zBm0sXASELskjqDU9QO7_Y3IeAtvyym18-4krUjBoCCYcQAvD_BwE', 'public/gambar/6cuPK2L4fqaMTkiDSYHRJ6SmYY3rJ9V75nk4DAxL.png', 10000000, 1, '2021-08-12 21:43:12', '2021-08-12 21:48:00'),
(11, 'buku', 'https://mamikos.com/info/situs-download-buku-gratis-dan-legal/', 'public/gambar/wYah6NXo7ERXsof8wdUboCc3kcPgKJbp9sBPWd4P.png', 2000000, 1, '2021-08-12 21:44:02', '2021-08-12 21:44:02'),
(12, 'mobil', 'https://lite.shopee.co.id/Body-Cover-Mobil-Jimny--Sarung-Mobil-Suzuki-Jimny-2019-2020--Mantel-Penutup-Pelindung-Outdoor-i.50296318.3973410141?smtt=307.1.2&gclid=CjwKCAjwjdOIBhA_EiwAHz8xmyZZV0IJk848ixlzqDLLWN5Def_uMymVT7wvDeFS-bqbdSeJyk7XWxoCzQ4QAvD_BwE', 'public/gambar/lnrI0IawQivMGnAcm1n9EmlMutEVg7oscDqLif9B.png', 4000000, 1, '2021-08-12 21:44:33', '2021-08-12 21:44:33'),
(13, 'kursi', 'https://www.researchgate.net/publication/338715686_Fungsi_dan_Makna_Simbolis_Kursi_Batu_dan_Replika_Kursi_Kayu_Pada_Masyarakat_Nias', 'public/gambar/oFYFZiNhy9bmhyRdWixFMak2cSP357YGs5SEJoaC.png', 8000000, 1, '2021-08-12 21:46:47', '2021-08-12 21:46:47'),
(14, 'lemari', 'https://www.ikea.co.id/in/ruangan?gclid=CjwKCAjwjdOIBhA_EiwAHz8xm3ADKbgUzBrTVzRKDbenq-eemsV8MQGtbNFBppeUhcw7Yey2B1omgxoCqK4QAvD_BwE&gclsrc=aw.ds', 'public/gambar/QnwNt7oLiWDpeHuOlHnYCbGOEBsws2J830uvnawL.jpg', 6000000, 1, '2021-08-12 21:47:44', '2021-08-12 21:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `id_pengadaan` int(11) NOT NULL,
  `anggaran` double NOT NULL,
  `proposal` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengajuan`
--

INSERT INTO `tbl_pengajuan` (`id_pengajuan`, `id_suplier`, `id_pengadaan`, `anggaran`, `proposal`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 9, 9000000, 'public/proposal/92cQ8uwAsngPqsubrIKAZjVwLEXHiy5vEMCk70SZ.pdf', 3, '2021-08-12 21:50:52', '2021-08-12 21:52:40'),
(5, 2, 10, 9500000, 'public/proposal/WXjFeXQi2bUUDwYo1MrjFWcqi2hJkIWJorzVyBpe.pdf', 0, '2021-08-12 21:51:19', '2021-08-12 21:52:46'),
(6, 2, 11, 2500000, 'public/proposal/4ssuobYZXGmPQxGTlwiqIQ0QTJboFY5XlE84izju.pdf', 2, '2021-08-12 21:51:35', '2021-08-15 19:12:46'),
(7, 2, 12, 4200000, 'public/proposal/KspTjsSjmNu1aLjhd9ReffgCCWg34123lwyuQaqx.pdf', 2, '2021-08-15 19:20:15', '2021-08-15 19:20:55'),
(8, 2, 13, 7800000, 'public/proposal/2uxyT9PQsWbchYiShyrs5vKLrBr5F0bltlpgodPR.pdf', 2, '2021-08-15 19:20:30', '2021-08-17 20:52:48'),
(9, 3, 10, 11000000, 'public/proposal/yf0m9Gf3klgpwhovx0Z0sb16gOJJDCXNiTJcMO1Z.pdf', 2, '2021-08-17 20:51:47', '2021-08-17 20:54:44'),
(10, 3, 11, 1990000, 'public/proposal/nxzAdntV1onx1JtQtwKNEVF8av1rjQ8KFI5YUFfj.pdf', 1, '2021-08-17 20:52:13', '2021-08-17 20:52:13'),
(11, 3, 12, 4500000, 'public/proposal/cK77CRTCu0QeTVFf4bsu0G3UNYjcUKOMxAKcJjl7.pdf', 1, '2021-08-17 20:52:24', '2021-08-17 20:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_usaha` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_npwp` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`id_suplier`, `nama_usaha`, `email`, `alamat`, `no_npwp`, `password`, `status`, `token`, `created_at`, `updated_at`) VALUES
(2, 'PT Maju Terus', 'suplier@gmail.com', 'Jalan maju terus', '123456789', 'eyJpdiI6IlhRV2JDMVFTeE9uSVlpOHQyWTRRVmc9PSIsInZhbHVlIjoiY1Bha1ZDaTdJUHBkZGY1aU4yTGs4V2VHRlc2TjRyS0Z1aXJKSlR1YVwvQ009IiwibWFjIjoiOTg1OWYzNDFkNWI3YzJjZTc2YzU2YjdhZDhlYmQyMGIwNGVhZGE5MDQwN2U4MzQ3NTgwYmEzODcxZjEyNjlhNiJ9', 1, 'keluar', '2021-08-12 20:51:18', '2021-08-17 20:49:26'),
(3, 'PT Selalu Berkah', 'berkah@gmail.com', 'Jalan Selalu Berkah No.01 Rt/Rw 001/001', '1357924680', 'eyJpdiI6ImtuNnBCS21tenRWYTVWUG5LU1c3dWc9PSIsInZhbHVlIjoidnpSY05ONVVuWUhoTUlvR1hVT0xhcGpTbzllaEJzWGVFc1FibWhZeWc5ND0iLCJtYWMiOiI3Yzk4YjIzMjUxNjQwNjEyZjJjOTllNGVlMjc2MWJlZTJjYzczODlkYmI2NzZiM2JiZWM3NzMyMjNmODk2ZjdjIn0=', 0, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZF9zdXBsaWVyIjozfQ.YL8BC-eu5ODYMSzXacbMG3XIW2FufW9PhohHJTTGXPE', '2021-08-17 18:45:32', '2021-08-18 21:34:50');

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
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `tbl_pengadaan`
--
ALTER TABLE `tbl_pengadaan`
  ADD PRIMARY KEY (`id_pengadaan`);

--
-- Indexes for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`id_suplier`);

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
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pengadaan`
--
ALTER TABLE `tbl_pengadaan`
  MODIFY `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `id_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
