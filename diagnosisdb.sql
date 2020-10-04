-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Okt 2020 pada 10.56
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagnosisdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode` varchar(4) NOT NULL,
  `nama_gejala` text NOT NULL,
  `mb` float NOT NULL,
  `md` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode`, `nama_gejala`, `mb`, `md`) VALUES
(1, 'G1', 'Memiliki pergaulan yang bebas, tanpa ada bimbingan dan pemantauan dari orang tua', 0.75, 0.25),
(2, 'G2', 'Sering mengikuti dan melakukan yang teman-teman perbuat', 0.8, 0.04),
(3, 'G3', 'Merasa dijauhi oleh teman- teman, sehingga tidak mau sekolah', 0.7, 0.08),
(4, 'G4', 'Selalu dicurigai dan dimusuhi oleh teman-teman anda', 0.8, 0.02),
(5, 'G5', 'Terlambat sekolah karena mendapat tugas dari orang tua', 0.85, 0.02),
(6, 'G6', 'Kesulitan dalam memahami mata pelajaran tertentu, sehingga malas mengerjakan tugas', 0.75, 0.01),
(7, 'G7', 'Tidak memiliki motivasi belajar dari orang terdekat ataupun dari diri anda sendiri', 0.7, 0.02),
(8, 'G8', 'Merasa alat, sarana dan prasarana belajar terbatas atau kurang lengkap', 0.25, 0.05),
(9, 'G9', 'Kurang menyukai atau tidak menyukai guru dari mata pelajaran tertentu', 0.85, 0.05),
(10, 'G10', 'Memiliki mata pelajaran yang tidak disukai atau dikuasai', 0.5, 0.01),
(11, 'G11', 'Memiliki potensi dan bakat yang sudah anda ketahui ', 0.75, 0.02),
(12, 'G12', 'Mengalami penurunan prestasi belajar', 0.07, 0.07),
(13, 'G13', 'Sering terlambat masuk sekolah', 0.6, 0.01),
(14, 'G14', 'Saling melemparkan ejekan dengan teman', 0.75, 0.01),
(15, 'G15', 'Memiliki pertengkaran pribadi atau kelompok', 0.8, 0.02),
(16, 'G16', 'Memiliki permasalahan seputar teman atau pacar', 0.8, 0.02),
(17, 'G17', 'Merasa direndahkan dan diacuhkan oleh salah satu teman', 0.8, 0.02),
(18, 'G18', 'Sering mengalami kekecewaan dan frustasi', 0.75, 0.01),
(19, 'G19', 'Terpengaruh dengan permasalahan yang sedang dihadapi keluarga', 0.08, 0.02),
(20, 'G20', 'Merasa masalah keluarga sudah mempengaruhi terlalu berat.', 0.85, 0.08),
(21, 'G21', 'Mengerjakan soal selalu merasa kurang mampu untuk menjawabnya', 0.75, 0.01),
(22, 'G22', 'Merasa kurangnya sarana dan prasarana membuat kesulitan menguasai mata pelajaran tertentu', 0.75, 0.02),
(23, 'G23', 'Bermasalah dengan kepercayaan diri dan mental', 0.8, 0.02),
(24, 'G24', 'Memiliki potensi yang terbatas', 0.8, 0.05),
(25, 'G25', 'Mengalami kesulitan mendapatkan angkutan umum atau transportasi ke sekolah', 0.75, 0.03),
(26, 'G26', 'Sering bangun kesiangan', 0.8, 0.06),
(27, 'G27', 'Bermasalah dengan tanggung jawab yang harus anda terima', 0.75, 0.01),
(28, 'G28', 'Memiliki masalah dalam diri anda sendiri, atau dengan teman dan keluarga', 0.75, 0.01),
(29, 'G29', 'Merasa tidak nyaman dalam kondisi apapun dikarenakan terpengaruh atas keadaan keluarga', 0.7, 0.09),
(30, 'G30', 'Orang yang tidak sabaran, mudah marah dan sering terpengaruh', 0.86, 0.2),
(31, 'G31', 'Merasa hal yang dilakukan karena keterpaksaan keadaan ekonomi', 0.65, 0.05),
(32, 'G32', 'Kurang mendapatkan perhatian dari orang tua', 0.75, 0.01),
(33, 'G33', 'Memiliki sifat iri terhadap teman', 0.75, 0.03),
(34, 'G34', 'Mengalami permasalahan pribadi yang berat', 0.75, 0.02),
(35, 'G35', 'Mempunyai masalah keluarga yang membuat putus asa dalam hidup', 0.8, 0.05);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masalah`
--

CREATE TABLE `masalah` (
  `id_masalah` int(11) NOT NULL,
  `kode_masalah` varchar(100) NOT NULL,
  `nama_masalah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masalah`
--

INSERT INTO `masalah` (`id_masalah`, `kode_masalah`, `nama_masalah`) VALUES
(1, 'M1', 'Suka bolos'),
(2, 'M2', 'Malas'),
(3, 'M3', 'Kesulitan belajar pada bidang tertentu'),
(4, 'M4', 'Berkelahi dengan teman sekolah'),
(5, 'M5', 'Frustasi'),
(6, 'M6', 'Suka menyontek'),
(7, 'M7', 'Sering terlambat masuk sekolah'),
(8, 'M8', 'Memiliki Gangguan emosional'),
(9, 'M9', 'Memiliki Sifat Pelaku kriminalitas'),
(10, 'M10', 'Berkeinginan Untuk Melakukan Percobaan Bunuh Diri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengetahuan`
--

CREATE TABLE `pengetahuan` (
  `id_pengetahuan` int(11) NOT NULL,
  `kode_masalah` varchar(100) NOT NULL,
  `id_gejala` varchar(12) NOT NULL,
  `mb` float NOT NULL,
  `md` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengetahuan`
--

INSERT INTO `pengetahuan` (`id_pengetahuan`, `kode_masalah`, `id_gejala`, `mb`, `md`) VALUES
(1, 'SB', 'G1', 0.75, 0.25),
(2, 'SB', 'G2', 0.8, 0.04),
(3, 'SB', 'G3', 0.7, 0.08),
(4, 'SB', 'G4', 0.8, 0.02),
(5, 'SB', 'G5', 0.85, 0.02),
(6, 'M', 'G6', 0.75, 0.01),
(7, 'M', 'G7', 0.7, 0.02),
(8, 'M', 'G8', 0.25, 0.05),
(9, 'KB', 'G9', 0.85, 0.05),
(10, 'KB', 'G10', 0.5, 0.01),
(11, 'KB', 'G11', 0.75, 0.02),
(12, 'KB', 'G12', 0.7, 0.07),
(13, 'KB', 'G13', 0.6, 0.05),
(14, 'B', 'G14', 0.75, 0.01),
(15, 'B', 'G15', 0.8, 0.02),
(16, 'B', 'G16', 0.8, 0.02),
(17, 'B', 'G17', 0.8, 0.02),
(18, 'F', 'G18', 0.75, 0.01),
(19, 'F', 'G19', 0.8, 0.02),
(20, 'F', 'G20', 0.85, 0.08),
(21, 'SM', 'G21', 0.75, 0.01),
(22, 'SM', 'G22', 0.75, 0.02),
(23, 'SM', 'G23', 0.8, 0.02),
(24, 'SM', 'G24', 0.8, 0.05),
(25, 'ST', 'G25', 0.75, 0.03),
(26, 'ST', 'G26', 0.8, 0.06),
(27, 'ST', 'G27', 0.75, 0.01),
(28, 'MGE', 'G28', 0.75, 0.01),
(29, 'MGE', 'G29', 0.7, 0.09),
(30, 'MGE', 'G30', 0.85, 0.2),
(31, 'MSK', 'G31', 0.65, 0.05),
(32, 'MSK', 'G32', 0.75, 0.01),
(33, 'MSK', 'G33', 0.7, 0.03),
(34, 'BD', 'G34', 0.75, 0.02),
(35, 'BD', 'G35', 0.8, 0.05);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `masalah`
--
ALTER TABLE `masalah`
  ADD PRIMARY KEY (`id_masalah`);

--
-- Indeks untuk tabel `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD PRIMARY KEY (`id_pengetahuan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `masalah`
--
ALTER TABLE `masalah`
  MODIFY `id_masalah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pengetahuan`
--
ALTER TABLE `pengetahuan`
  MODIFY `id_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
