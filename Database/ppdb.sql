-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2021 at 09:30 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alur`
--

CREATE TABLE `alur` (
  `alur_id` int(11) NOT NULL,
  `alur_nama` text NOT NULL,
  `alur_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `alur_update` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alur`
--

INSERT INTO `alur` (`alur_id`, `alur_nama`, `alur_create`, `alur_update`) VALUES
(2, 'alur_ppdb.png', '2021-08-26 12:38:03', '2021-08-28 07:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `dfr_no` varchar(20) NOT NULL,
  `dfr_tanggal` date DEFAULT NULL,
  `dfr_password` varchar(50) NOT NULL,
  `dft_nama` varchar(50) NOT NULL,
  `dfr_jekel` enum('1','2') DEFAULT NULL,
  `dfr_tmp_lahir` varchar(20) DEFAULT NULL,
  `dfr_tgl_lahir` date DEFAULT NULL,
  `dft_agama` enum('1','2','3','4','5') DEFAULT NULL,
  `dfr_anak_dr` enum('1','2','3','4') DEFAULT NULL,
  `dfr_nisn` varchar(50) DEFAULT NULL,
  `dfr_asal_sekolah` text DEFAULT NULL,
  `dfr_almt_sekolah` text DEFAULT NULL,
  `dfr_pas_photo` text DEFAULT NULL,
  `dfr_nilai_mm` int(11) DEFAULT NULL,
  `dfr_nilai_indo` int(11) DEFAULT NULL,
  `dfr_nilai_eng` int(11) DEFAULT NULL,
  `dfr_nilai_ipa` int(11) DEFAULT NULL,
  `dfr_nilai_ips` int(11) DEFAULT NULL,
  `dfr_ayah` varchar(20) DEFAULT NULL,
  `dfr_ibu` varchar(20) DEFAULT NULL,
  `dfr_alamat` text DEFAULT NULL,
  `dfr_hp_ortu` varchar(12) DEFAULT NULL,
  `status` enum('R','S') DEFAULT NULL,
  `filetf` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`dfr_no`, `dfr_tanggal`, `dfr_password`, `dft_nama`, `dfr_jekel`, `dfr_tmp_lahir`, `dfr_tgl_lahir`, `dft_agama`, `dfr_anak_dr`, `dfr_nisn`, `dfr_asal_sekolah`, `dfr_almt_sekolah`, `dfr_pas_photo`, `dfr_nilai_mm`, `dfr_nilai_indo`, `dfr_nilai_eng`, `dfr_nilai_ipa`, `dfr_nilai_ips`, `dfr_ayah`, `dfr_ibu`, `dfr_alamat`, `dfr_hp_ortu`, `status`, `filetf`) VALUES
('admin', '2021-08-23', '123', 'Admin', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('REG20210826001', '2021-08-26', '123456', 'Andi Sucipta', '1', 'Bogor', '2002-03-11', '1', '', '0023573580', 'SMP Sejahtera 1', 'Jalan Raya Bogor No.12', '821-1-16. sudirman_pas_photo.jpg', 80, 78, 81, 82, 83, 'Sucipto Kubowo', 'Ningrum Larasati', 'Bogor', '089672489112', 'S', '821-316-RBQD8269.JPG'),
('REG20210826002', '2021-08-26', '123456', 'Haris Suritman', '1', 'Medan', '2021-08-16', '1', '1', '0023573547', 'SMP Senang 2', 'Jalan Raya Narogong No.12', '942-80-foto.jpg', 80, 86, 84, 83, 82, 'Sumandro', 'Suminten', 'bogor', '089643781234', 'S', '942-14-316-RBQD8269.JPG'),
('REG20210826003', '2021-08-26', '123456', 'Irgi Rama', '1', 'Bogor', '2002-08-31', '1', '1', '0025673585', 'SMP Klapanunggal', 'Jalan Raya Bojong Klapanunggal', '458-286-16. sudirman_pas_photo.jpg', 90, 91, 89, 86, 85, 'Suminta', 'Listiani', 'Bogor', '08967248945', 'S', '458-445-received_518032995563659.jpeg'),
('REG20210826005', '2021-08-26', '123456', 'Hezkia Rendy', '1', 'Medan', '2002-05-15', '1', '1', '00219485123', 'SMP Sejahtera 4', 'Bogor', '140-458-286-16. sudirman_pas_photo.jpg', 70, 65, 71, 68, 60, 'Putra Rendy', 'Viani Kusuma', 'Medan', '089672481456', 'R', '140-814-316-RBQD8269.JPG'),
('REG20210826006', '2021-08-26', '123456', 'Sulistio Pramono', '1', 'Bogor', '2002-04-17', '1', '1', '0021324243', 'MTS Alfurqon', 'Jalan Raya Bogor', '854-476-16. sudirman_pas_photo.jpg', 80, 91, 84, 83, 82, 'Encep ', 'Listiani', 'Bogor', '089672412314', 'S', '854-978-316-RBQD8269.JPG'),
('REG20210827007', '2021-08-27', '123456', 'Ahmad Sucipto', '1', 'Bogor', '2002-03-20', '1', '1', '0023573125', 'MTS Alfurqon 2', 'bogor', '385-1-16. sudirman_pas_photo.jpg', 90, 91, 81, 82, 85, 'Sumandroar', 'Ningrum Larasatianti', 'bogor', '089672489156', 'S', '385-14-316-RBQD8269.JPG'),
('REG20210827008', '2021-08-27', '123456', 'Sunando Prabowo', '1', 'Magelang', '2002-10-09', '1', '1', '002434325', 'SMP Sukamaju 2', 'Magelang', '607-1-16. sudirman_pas_photo.jpg', 66, 68, 70, 63, 71, 'Prabowo ', 'Giandri', 'Magelang', '08967248924', 'R', '607-14-316-RBQD8269.JPG'),
('REG20210828010', '2021-08-28', '123456', 'Dwi Mustika ', '', 'Bandung', '2001-08-09', '1', '1', '0023083639', 'SMP Padjajaran 2', 'Jalan Raya Bandung', '899-138-743-Test123.jpg', 80, 91, 89, 82, 83, 'Endang', 'Endah', 'Bandung', '08957248945', 'S', '899-743-test.jpg'),
('REG20210828011', '2021-08-28', '123456', 'Ningrum', '', 'Bandung', '2002-08-31', '1', '1', '002434214', 'SMP Sejahtera 2', 'Bandung', '469-138-743-Test123.jpg', 60, 70, 72, 65, 69, 'Endang', 'Labibah', 'Bandung', '089643781452', 'R', '469-138-743-test.jpg'),
('REG20210828012', '2021-08-28', '123456', 'Reyhan Putra', '1', 'Jakarta', '2002-08-31', '1', '1', '0024657357', 'SMP Bahagia 1', 'Jakarta Selatan', '273-1-16. sudirman_pas_photo.jpg', 50, 60, 70, 80, 68, 'Tio Prasetyo', 'Indah Kusuma', 'Jakarta Selatan', '08723456475', 'R', '273-469-138-743-test.jpg'),
('REG20210828013', '2021-08-28', '123456', 'Ujang Sutrisno', '1', 'Bogor', '2002-08-31', '1', '1', '0021964124', 'SMP Klapanunggal', 'Jalan Raya Bojong', '293-1-16. sudirman_pas_photo.jpg', 80, 78, 81, 82, 83, 'Sumandra', 'Kusumawati', 'Bogor', '08967248922', 'S', '293-187-14-316-RBQD8269.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `waktu`
--

CREATE TABLE `waktu` (
  `waktu_id` int(11) NOT NULL,
  `waktu_nama` text NOT NULL,
  `waktu_mulai` date NOT NULL,
  `waktu_akhir` date NOT NULL,
  `waktu_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waktu`
--

INSERT INTO `waktu` (`waktu_id`, `waktu_nama`, `waktu_mulai`, `waktu_akhir`, `waktu_create`) VALUES
(1, '2021', '2021-08-27', '2021-09-27', '2021-08-26 12:55:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alur`
--
ALTER TABLE `alur`
  ADD PRIMARY KEY (`alur_id`);

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`dfr_no`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`waktu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alur`
--
ALTER TABLE `alur`
  MODIFY `alur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `waktu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
