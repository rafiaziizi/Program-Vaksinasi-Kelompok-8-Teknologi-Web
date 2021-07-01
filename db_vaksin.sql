-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2021 at 08:07 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vaksin`
--

-- --------------------------------------------------------

--
-- Table structure for table `nakes`
--

CREATE TABLE `nakes` (
  `nakes_id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nakes`
--

INSERT INTO `nakes` (`nakes_id`, `nip`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(2, '1234567812345670', 'Testing', 'L', '085155433580', 'Bandung', '0000-00-00 00:00:00', '2021-06-30 21:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `pasien_id` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`pasien_id`, `nik`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(1, '321041230899017', 'Grace Christian', 'L', '085155433588', 'Jakarta', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_vaksin`
--

CREATE TABLE `tabel_vaksin` (
  `vaksin_id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `nakes_id` int(11) NOT NULL,
  `nama_vak` varchar(128) NOT NULL,
  `nik_vak` varchar(20) NOT NULL,
  `jenis_vak` varchar(128) NOT NULL,
  `nama_nakes` varchar(128) NOT NULL,
  `lokasi_vak` varchar(128) NOT NULL,
  `alamat_vak` varchar(128) NOT NULL,
  `status_vak1` varchar(50) NOT NULL,
  `status_vak2` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(128) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `level` int(1) NOT NULL COMMENT '1:admin,2:nakes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `address`, `level`) VALUES
(1, 'gchrist23', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Grace Christian', 'Bandung', 1),
(7, 'xchrist23', 'b321e6ed1e103384a8b0623e80b65521282e71e7', 'Xavier Christian', 'Bandung', 2),
(9, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', '-', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nakes`
--
ALTER TABLE `nakes`
  ADD PRIMARY KEY (`nakes_id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`pasien_id`);

--
-- Indexes for table `tabel_vaksin`
--
ALTER TABLE `tabel_vaksin`
  ADD PRIMARY KEY (`vaksin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nakes`
--
ALTER TABLE `nakes`
  MODIFY `nakes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `pasien_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_vaksin`
--
ALTER TABLE `tabel_vaksin`
  MODIFY `vaksin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
