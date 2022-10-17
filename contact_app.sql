-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Okt 2022 pada 19.12
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `noHp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `propict` varchar(255) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `deletedBy` int(11) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `nama`, `noHp`, `email`, `propict`, `createdBy`, `updatedBy`, `deletedBy`, `deletedAt`, `isDeleted`, `createdAt`, `updatedAt`) VALUES
(2, 'sirup marjan', '082288129102', 'marjan@gmail.com', NULL, NULL, NULL, NULL, '2022-06-24 10:19:13', 0, '2022-06-24 10:19:13', '2022-06-24 10:19:13'),
(6, 'hilman ', '082299101921', 'hilman@gmail.com', 'null', NULL, NULL, NULL, '2022-10-15 16:14:14', 1, '2022-06-25 05:17:47', '2022-10-15 16:14:14'),
(9, 'ucup di sini', '0899229102919', 'ucup@gmail.com', NULL, NULL, NULL, NULL, '2022-08-18 16:50:46', 0, '2022-08-18 16:50:46', '2022-10-15 16:40:08'),
(10, 'julio jamal', '089988192876', 'julio.jamal@gmail.com', NULL, NULL, NULL, NULL, '2022-10-15 16:07:10', 0, '2022-10-15 16:07:10', '2022-10-15 16:09:33'),
(11, 'alexander ucup', '087289098765', 'alex@gmail.com', NULL, NULL, NULL, NULL, '2022-10-15 16:12:39', 0, '2022-10-15 16:12:39', '2022-10-15 16:12:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20220623072410-create-contact.js'),
('20220623082046-create-user.js'),
('20220623153449-create-contact.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tes`
--

CREATE TABLE `tes` (
  `id` int(11) NOT NULL,
  `eno` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tes`
--

INSERT INTO `tes` (`id`, `eno`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `noHp` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `propict` varchar(255) DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `nama`, `noHp`, `bio`, `propict`, `deletedAt`, `isDeleted`, `createdAt`, `updatedAt`) VALUES
(1, 'dadang pardede', 'dadang@gmail.com', 'dadang123', 'dadang pardede pernandes', '082288192010', 'fuck', NULL, '2022-06-23 20:24:40', NULL, '2022-06-23 20:24:40', '2022-06-23 20:24:40'),
(3, 'babang tamvan', 'kangenban@gmail.com', '8b82383b2638c47568a4e8d8cd85ceff9ea9d6b9', 'kangenban@gmail.com', '089988198291', 'musisi ni bos', NULL, NULL, 0, '2022-06-27 10:26:18', '2022-06-27 10:26:18'),
(4, 'julio123', 'julio@gmail.com', '4d76c3bfe6d3922aef80505f04725bb9a192d208', 'julio@gmail.com', '089988192876', 'nobody', NULL, NULL, 0, '2022-10-15 16:03:33', '2022-10-15 16:03:33'),
(5, 'done123', 'done@gmail.com', '9d6da75dc2b22e03cecdccab1b66b000c4919a30', 'done@gmail.com', '089988192876', 'nobody', NULL, NULL, 0, '2022-10-15 16:37:55', '2022-10-15 16:37:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `tes`
--
ALTER TABLE `tes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tes`
--
ALTER TABLE `tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
