-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2024 at 10:24 AM
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
  `ID_User` int(15) NOT NULL AUTO_INCREMENT,
  `username` varchar(125) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insert hashed password
INSERT INTO `admin` (`username`, `password`) VALUES
('adminsekolah', 'adminsekolah');


-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `ID_Alter` int NOT NULL,
  `NISN` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nama_Siswa` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `JK` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Kelas` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_alternatif`
--

INSERT INTO `data_alternatif` (`ID_Alter`, `NISN`, `Nama_Siswa`, `JK`, `Kelas`) VALUES
(14, '0084913605', 'Muhammad Karim', 'L', 'X 1'),
(15, '0084913665', 'Indra Febrian', 'L', 'X 5'),
(16, '0084913667', 'Wiwir', 'P', 'XI 3'),
(17, '0067726025', 'Abdullah', 'L', 'XI 7'),
(18, '0067726099', 'mita', 'P', 'XI 5'),
(19, '00574612', 'La bawi', 'L', 'XI 5'),
(20, '00365697', 'irvan', 'L', 'X 6'),
(22, '21223331', 'la genggong', 'L', 'XII 2'),
(23, '08545512121', 'Baddu cepirit', 'L', 'X 1'),
(24, '00099333', 'la genggong joni', 'L', 'XII 3');

-- --------------------------------------------------------

--
-- Table structure for table `data_kriteria`
--

CREATE TABLE `data_kriteria` (
  `ID_Kriteria` int NOT NULL,
  `Nama_Kriteria` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Nilai_Bobot` float DEFAULT NULL,
  `Atribut` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
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
(199, 14, 2, 10),
(200, 14, 3, 4),
(201, 14, 4, 8),
(202, 14, 7, 7),
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
(238, 24, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_subkriteria`
--

CREATE TABLE `data_subkriteria` (
  `ID_Sub` int NOT NULL,
  `ID_Kriteria` int DEFAULT NULL,
  `Nama_Subkriteria` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Keterangan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
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
(1, 14, 2, 1),
(2, 14, 3, 0.8),
(3, 14, 4, 1),
(4, 14, 7, 1),
(5, 15, 2, 0.9),
(6, 15, 3, 0.8),
(7, 15, 4, 1),
(8, 15, 7, 0.71428571428571),
(9, 16, 2, 1),
(10, 16, 3, 0.6),
(11, 16, 4, 1),
(12, 16, 7, 1),
(13, 17, 2, 0.9),
(14, 17, 3, 1),
(15, 17, 4, 0.875),
(16, 17, 7, 1),
(17, 18, 2, 0.9),
(18, 18, 3, 1),
(19, 18, 4, 1),
(20, 18, 7, 0.71428571428571),
(21, 19, 2, 0.9),
(22, 19, 3, 1),
(23, 19, 4, 1),
(24, 19, 7, 0.71428571428571),
(25, 20, 2, 0.9),
(26, 20, 3, 0.8),
(27, 20, 4, 0.875),
(28, 20, 7, 1),
(29, 22, 2, 1),
(30, 22, 3, 0.6),
(31, 22, 4, 0.625),
(32, 22, 7, 0.71428571428571),
(33, 23, 2, 0.7),
(34, 23, 3, 0.6),
(35, 23, 4, 0.625),
(36, 23, 7, 0.71428571428571),
(37, 24, 2, 0.5),
(38, 24, 3, 0.8),
(39, 24, 4, 0.625),
(40, 24, 7, 0.71428571428571);

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
(1, 14, 0.94),
(2, 15, 0.87142857142857),
(3, 16, 0.88),
(4, 17, 0.935),
(5, 18, 0.93142857142857),
(6, 19, 0.93142857142857),
(7, 20, 0.875),
(8, 22, 0.77642857142857),
(9, 23, 0.65642857142857),
(10, 24, 0.63642857142857);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_User`);

--
-- Indexes for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD PRIMARY KEY (`ID_Alter`);

--
-- Indexes for table `data_kriteria`
--
ALTER TABLE `data_kriteria`
  ADD PRIMARY KEY (`ID_Kriteria`);

--
-- Indexes for table `data_penilaian`
--
ALTER TABLE `data_penilaian`
  ADD PRIMARY KEY (`ID_Penilaian`),
  ADD KEY `data_penilaian_FK_1` (`ID_Alter`),
  ADD KEY `data_penilaian_FK` (`ID_Kriteria`);

--
-- Indexes for table `data_subkriteria`
--
ALTER TABLE `data_subkriteria`
  ADD PRIMARY KEY (`ID_Sub`),
  ADD KEY `data_subkriteria_FK` (`ID_Kriteria`);

--
-- Indexes for table `hasil_normalisasi`
--
ALTER TABLE `hasil_normalisasi`
  ADD PRIMARY KEY (`ID_Norm`),
  ADD KEY `hasil_normalisasi_FK` (`ID_Alter`),
  ADD KEY `hasil_normalisasi_FK_1` (`ID_Kriteria`);

--
-- Indexes for table `hasil_preferensi`
--
ALTER TABLE `hasil_preferensi`
  ADD PRIMARY KEY (`ID_Pref`),
  ADD KEY `hasil_preferensi_FK` (`ID_Alter`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_User` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  MODIFY `ID_Alter` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `data_kriteria`
--
ALTER TABLE `data_kriteria`
  MODIFY `ID_Kriteria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `data_penilaian`
--
ALTER TABLE `data_penilaian`
  MODIFY `ID_Penilaian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `data_subkriteria`
--
ALTER TABLE `data_subkriteria`
  MODIFY `ID_Sub` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `hasil_normalisasi`
--
ALTER TABLE `hasil_normalisasi`
  MODIFY `ID_Norm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `hasil_preferensi`
--
ALTER TABLE `hasil_preferensi`
  MODIFY `ID_Pref` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_penilaian`
--
ALTER TABLE `data_penilaian`
  ADD CONSTRAINT `data_penilaian_FK` FOREIGN KEY (`ID_Kriteria`) REFERENCES `data_kriteria` (`ID_Kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_penilaian_FK_1` FOREIGN KEY (`ID_Alter`) REFERENCES `data_alternatif` (`ID_Alter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_subkriteria`
--
ALTER TABLE `data_subkriteria`
  ADD CONSTRAINT `data_subkriteria_FK` FOREIGN KEY (`ID_Kriteria`) REFERENCES `data_kriteria` (`ID_Kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hasil_normalisasi`
--
ALTER TABLE `hasil_normalisasi`
  ADD CONSTRAINT `hasil_normalisasi_FK` FOREIGN KEY (`ID_Alter`) REFERENCES `data_alternatif` (`ID_Alter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_normalisasi_FK_1` FOREIGN KEY (`ID_Kriteria`) REFERENCES `data_kriteria` (`ID_Kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hasil_preferensi`
--
ALTER TABLE `hasil_preferensi`
  ADD CONSTRAINT `hasil_preferensi_FK` FOREIGN KEY (`ID_Alter`) REFERENCES `data_alternatif` (`ID_Alter`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
