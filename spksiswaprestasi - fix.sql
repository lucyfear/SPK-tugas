-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2025 at 02:30 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spksiswaprestasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_User` int NOT NULL,
  `username` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_User`, `username`, `password`) VALUES
(1, 'adminsekolah', 'c5a9c89e63451dfcd9f6b6d07f4c9fd0'),
(2, 'smantap', 'f57da074b436fb52e228c4e7ff113bac');

-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `ID_Alter` int NOT NULL,
  `NISN` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_Siswa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `JK` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_alternatif`
--

INSERT INTO `data_alternatif` (`ID_Alter`, `NISN`, `Nama_Siswa`, `JK`, `Kelas`) VALUES
(26, '0081343919', 'AHMAD RIZA', 'L', 'XI 3'),
(27, '0088636381', 'AL - MUNAWIR SULTAN', 'L', 'XI 3'),
(28, '0088266578', 'ANDI FAJAR MAKMUR MAPPATUNRU', 'L', 'XI 3'),
(29, '0081381455', 'ANGGUN RAMADAN', 'P', 'XI 3'),
(30, '0071284556', 'ARUM KUSUMA WARDANI', 'P', 'XI 3'),
(31, '0081364371', 'CHANDRA', 'L', 'XI 3'),
(32, '3083926895', 'ESTIANTI MITRAJAYA', 'P', 'XI 3'),
(33, '0079053730', 'FAHMI', 'L', 'XI 3'),
(34, '0082617617', 'FATHUL RESQI', 'L', 'XI 3'),
(35, '0081872510', 'Haerum Nisa.N', 'P', 'XI 3'),
(36, '0089071835', 'JUNAIDI', 'L', 'XI 3'),
(37, '0088299797', 'Khusnul Fatimah', 'P', 'XI 3'),
(38, '0085644169', 'MARIO', 'L', 'XI 3'),
(39, '0082374879', 'Mudhiu Fauziyah', 'P', 'XI 3'),
(40, '0082115749', 'MUH. AKBAR', 'L', 'XI 3'),
(41, '0083083541', 'MUH. IRSYAM', 'L', 'XI 3'),
(42, '0082675750', 'MUH. YAHYA', 'L', 'XI 3'),
(43, '0076240384', 'Muh. Yusran', 'L', 'XI 3'),
(44, '0082770389', 'MUH. ZAHRAN HAQ', 'L', 'XI 3'),
(45, '0085708111', 'Musyawwir Ahadi', 'L', 'XI 3'),
(46, '0086892965', 'NABIL', 'L', 'XI 3'),
(47, '0083015924', 'NABILA MUNIR', 'P', 'XI 3'),
(48, '0078886621', 'NADYA SAL SHABILA SAHAFI', 'P', 'XI 3'),
(49, '0082771113', 'NUR FADILLAH', 'P', 'XI 3'),
(50, '0082778936', 'NURAWALIAH', 'P', 'XI 3'),
(51, '0087078071', 'Nurhidaya', 'P', 'XI 3'),
(52, '0055117788', 'NURRY ANJANI', 'P', 'XI 3'),
(53, '3074140948', 'RIFALDI', 'L', 'XI 3'),
(54, '0085712336', 'Riswan Ramli', 'L', 'XI 3'),
(55, '0081353638', 'SAKIR MUBARAK', 'L', 'XI 3'),
(56, '0087467674', 'TAKWA', 'L', 'XI 3'),
(57, '0072110553', 'Zaskia Syahra Ramadhani', 'P', 'XI 3'),
(1, '0082504994', 'Afrianggi', 'P', 'XI 3');

-- --------------------------------------------------------

--
-- Table structure for table `data_kriteria`
--

CREATE TABLE `data_kriteria` (
  `ID_Kriteria` int NOT NULL,
  `Nama_Kriteria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nilai_Bobot` float DEFAULT NULL,
  `Atribut` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_kriteria`
--

INSERT INTO `data_kriteria` (`ID_Kriteria`, `Nama_Kriteria`, `Nilai_Bobot`, `Atribut`) VALUES
(2, 'Nilai Rapot (rata-rata)', 0.4, 'Benefit'),
(3, 'Sikap/Karakter', 0.3, 'Benefit'),
(4, 'Ekstrakurikuler', 0.2, 'Benefit'),
(7, 'Kehadiran/Absensi', 0.1, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `data_penilaian`
--

CREATE TABLE `data_penilaian` (
  `ID_Penilaian` int NOT NULL,
  `ID_Alter` int DEFAULT NULL,
  `ID_Kriteria` int DEFAULT NULL,
  `Nilai` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_penilaian`
--

INSERT INTO `data_penilaian` (`ID_Penilaian`, `ID_Alter`, `ID_Kriteria`, `Nilai`) VALUES
(199, 14, 2, 1),
(200, 14, 3, 1),
(201, 14, 4, 5),
(202, 14, 7, 1),
(203, 15, 2, 9),
(204, 15, 3, 4),
(205, 15, 4, 8),
(206, 15, 7, 5),
(207, 16, 2, 10),
(208, 16, 3, 3),
(209, 16, 4, 8),
(210, 16, 7, 7),
(211, 17, 2, 9),
(212, 17, 3, 5),
(213, 17, 4, 7),
(214, 17, 7, 7),
(215, 18, 2, 9),
(216, 18, 3, 5),
(217, 18, 4, 8),
(218, 18, 7, 5),
(219, 19, 2, 9),
(220, 19, 3, 5),
(221, 19, 4, 8),
(222, 19, 7, 5),
(223, 20, 2, 9),
(224, 20, 3, 4),
(225, 20, 4, 7),
(226, 20, 7, 7),
(227, 22, 2, 10),
(228, 22, 3, 3),
(229, 22, 4, 5),
(230, 22, 7, 5),
(231, 23, 2, 7),
(232, 23, 3, 3),
(233, 23, 4, 5),
(234, 23, 7, 5),
(235, 24, 2, 5),
(236, 24, 3, 4),
(237, 24, 4, 5),
(238, 24, 7, 5),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 26, 7, 7),
(0, 27, 2, 10),
(0, 27, 3, 5),
(0, 27, 4, 5),
(0, 27, 7, 5),
(0, 28, 2, 7),
(0, 28, 3, 3),
(0, 28, 4, 7),
(0, 28, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_subkriteria`
--

CREATE TABLE `data_subkriteria` (
  `ID_Sub` int NOT NULL,
  `ID_Kriteria` int DEFAULT NULL,
  `Nama_Subkriteria` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Keterangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nilai` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_subkriteria`
--

INSERT INTO `data_subkriteria` (`ID_Sub`, `ID_Kriteria`, `Nama_Subkriteria`, `Keterangan`, `Nilai`) VALUES
(1, 2, '95-100', 'Sangat Tinggi', 10),
(3, 2, '93-95', 'Tinggi', 9),
(4, 2, '90-92', 'Cukup Tinggi', 8),
(5, 2, '86-88', 'Sangat Baik', 7),
(6, 2, '83-85', 'Baik', 6),
(7, 2, '80-82', 'Cukup Baik', 5),
(8, 2, '77-79', 'Sedang', 4),
(9, 2, '74-76', 'Kurang', 3),
(10, 2, '71-73', 'Cukup Kurang ', 2),
(11, 2, '-70', 'Sangat Kurang', 1),
(12, 3, 'A', 'Sangat Baik', 5),
(13, 3, 'B', 'Baik', 4),
(14, 3, 'C', 'Cukup', 3),
(15, 3, 'D', 'Kurang ', 2),
(16, 3, 'E', 'Sangat Kurang', 1),
(17, 4, 'A', 'Sangat Baik', 8),
(18, 4, 'B', 'Baik', 7),
(19, 4, 'C', 'Cukup', 5),
(20, 4, 'D', 'Kurang', 3),
(21, 4, 'E', 'Nihil', 1),
(23, 7, '1 sampai 3', 'Baik', 7),
(24, 7, '4 sampai 5', 'Cukup', 5),
(25, 7, '6 sampai 10', 'Kurang', 3),
(26, 7, 'lebih dari 10', 'Sangat Kurang', 1),
(67, 2, '-10', 'Buruk Sekali', 0),
(68, 3, 'F', 'Buruk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_normalisasi`
--

CREATE TABLE `hasil_normalisasi` (
  `ID_Norm` int NOT NULL,
  `ID_Alter` int DEFAULT NULL,
  `ID_Kriteria` int DEFAULT NULL,
  `Hasil_Norm` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hasil_normalisasi`
--

INSERT INTO `hasil_normalisasi` (`ID_Norm`, `ID_Alter`, `ID_Kriteria`, `Hasil_Norm`) VALUES
(0, 26, 2, 1),
(0, 26, 3, 1),
(0, 26, 4, 1),
(0, 26, 7, 1),
(0, 27, 2, 1),
(0, 27, 3, 1),
(0, 27, 4, 0.625),
(0, 27, 7, 0.71428571428571),
(0, 28, 2, 0.7),
(0, 28, 3, 0.6),
(0, 28, 4, 0.875),
(0, 28, 7, 0.71428571428571),
(0, 29, 2, 0),
(0, 29, 3, 0),
(0, 29, 4, 0),
(0, 29, 7, 0),
(0, 30, 2, 0),
(0, 30, 3, 0),
(0, 30, 4, 0),
(0, 30, 7, 0),
(0, 31, 2, 0),
(0, 31, 3, 0),
(0, 31, 4, 0),
(0, 31, 7, 0),
(0, 32, 2, 0),
(0, 32, 3, 0),
(0, 32, 4, 0),
(0, 32, 7, 0),
(0, 33, 2, 0),
(0, 33, 3, 0),
(0, 33, 4, 0),
(0, 33, 7, 0),
(0, 34, 2, 0),
(0, 34, 3, 0),
(0, 34, 4, 0),
(0, 34, 7, 0),
(0, 35, 2, 0),
(0, 35, 3, 0),
(0, 35, 4, 0),
(0, 35, 7, 0),
(0, 36, 2, 0),
(0, 36, 3, 0),
(0, 36, 4, 0),
(0, 36, 7, 0),
(0, 37, 2, 0),
(0, 37, 3, 0),
(0, 37, 4, 0),
(0, 37, 7, 0),
(0, 38, 2, 0),
(0, 38, 3, 0),
(0, 38, 4, 0),
(0, 38, 7, 0),
(0, 39, 2, 0),
(0, 39, 3, 0),
(0, 39, 4, 0),
(0, 39, 7, 0),
(0, 40, 2, 0),
(0, 40, 3, 0),
(0, 40, 4, 0),
(0, 40, 7, 0),
(0, 41, 2, 0),
(0, 41, 3, 0),
(0, 41, 4, 0),
(0, 41, 7, 0),
(0, 42, 2, 0),
(0, 42, 3, 0),
(0, 42, 4, 0),
(0, 42, 7, 0),
(0, 43, 2, 0),
(0, 43, 3, 0),
(0, 43, 4, 0),
(0, 43, 7, 0),
(0, 44, 2, 0),
(0, 44, 3, 0),
(0, 44, 4, 0),
(0, 44, 7, 0),
(0, 45, 2, 0),
(0, 45, 3, 0),
(0, 45, 4, 0),
(0, 45, 7, 0),
(0, 46, 2, 0),
(0, 46, 3, 0),
(0, 46, 4, 0),
(0, 46, 7, 0),
(0, 47, 2, 0),
(0, 47, 3, 0),
(0, 47, 4, 0),
(0, 47, 7, 0),
(0, 48, 2, 0),
(0, 48, 3, 0),
(0, 48, 4, 0),
(0, 48, 7, 0),
(0, 49, 2, 0),
(0, 49, 3, 0),
(0, 49, 4, 0),
(0, 49, 7, 0),
(0, 50, 2, 0),
(0, 50, 3, 0),
(0, 50, 4, 0),
(0, 50, 7, 0),
(0, 51, 2, 0),
(0, 51, 3, 0),
(0, 51, 4, 0),
(0, 51, 7, 0),
(0, 52, 2, 0),
(0, 52, 3, 0),
(0, 52, 4, 0),
(0, 52, 7, 0),
(0, 53, 2, 0),
(0, 53, 3, 0),
(0, 53, 4, 0),
(0, 53, 7, 0),
(0, 54, 2, 0),
(0, 54, 3, 0),
(0, 54, 4, 0),
(0, 54, 7, 0),
(0, 55, 2, 0),
(0, 55, 3, 0),
(0, 55, 4, 0),
(0, 55, 7, 0),
(0, 56, 2, 0),
(0, 56, 3, 0),
(0, 56, 4, 0),
(0, 56, 7, 0),
(0, 57, 2, 0),
(0, 57, 3, 0),
(0, 57, 4, 0),
(0, 57, 7, 0),
(0, 1, 2, 0),
(0, 1, 3, 0),
(0, 1, 4, 0),
(0, 1, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_preferensi`
--

CREATE TABLE `hasil_preferensi` (
  `ID_Pref` int NOT NULL,
  `ID_Alter` int DEFAULT NULL,
  `hasil_pref` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hasil_preferensi`
--

INSERT INTO `hasil_preferensi` (`ID_Pref`, `ID_Alter`, `hasil_pref`) VALUES
(0, 26, 1),
(0, 27, 0.89642857142857),
(0, 28, 0.70642857142857),
(0, 29, 0),
(0, 30, 0),
(0, 31, 0),
(0, 32, 0),
(0, 33, 0),
(0, 34, 0),
(0, 35, 0),
(0, 36, 0),
(0, 37, 0),
(0, 38, 0),
(0, 39, 0),
(0, 40, 0),
(0, 41, 0),
(0, 42, 0),
(0, 43, 0),
(0, 44, 0),
(0, 45, 0),
(0, 46, 0),
(0, 47, 0),
(0, 48, 0),
(0, 49, 0),
(0, 50, 0),
(0, 51, 0),
(0, 52, 0),
(0, 53, 0),
(0, 54, 0),
(0, 55, 0),
(0, 56, 0),
(0, 57, 0),
(0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_User` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
