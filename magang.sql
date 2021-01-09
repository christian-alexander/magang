-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2021 at 03:58 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magang`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_utama` int(11) NOT NULL,
  `entitas` int(1) NOT NULL,
  `password` char(20) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `status` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_utama`, `entitas`, `password`, `email`, `status`) VALUES
(1, 1, '1234', 'su1', 'on'),
(2, 2, '1234', 'dosen1@email.com', 'on'),
(3, 3, '1234', 'pemlap1@email.com', 'on'),
(4, 4, '1234', 'satdua86@gmail.com', 'on'),
(5, 1, '1234', 'su2', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `dosen_pembimbing`
--

CREATE TABLE `dosen_pembimbing` (
  `id` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `nama` char(100) NOT NULL,
  `nidn` char(10) NOT NULL,
  `nowa` char(15) NOT NULL,
  `instansi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen_pembimbing`
--

INSERT INTO `dosen_pembimbing` (`id`, `id_utama`, `email`, `nama`, `nidn`, `nowa`, `instansi`) VALUES
(1, 2, 'dosen1@email.com', 'Dosen1', '1014070101', '08123456789', 'im20210002');

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` int(11) NOT NULL,
  `id_instansi` char(10) NOT NULL,
  `nama` char(100) NOT NULL,
  `notelp` char(15) NOT NULL,
  `nofax` char(15) NOT NULL,
  `alamat` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `id_instansi`, `nama`, `notelp`, `nofax`, `alamat`) VALUES
(1, 'im20210001', 'PT. Jaya', '03123456789', '03123456789', 'jalan buah'),
(2, 'im20210002', 'Universitas Widya Kartika', '03123456', '03123456', 'Sutorejo Prima Utara II / 1');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `nama` char(100) NOT NULL,
  `nrp` char(8) NOT NULL,
  `nowa` char(15) NOT NULL,
  `dosenpembimbing` char(50) NOT NULL,
  `pembimbinglapangan` char(50) NOT NULL,
  `instansi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `id_utama`, `email`, `nama`, `nrp`, `nowa`, `dosenpembimbing`, `pembimbinglapangan`, `instansi`) VALUES
(1, 4, 'satdua86@gmail.com', 'Christian Alexander', '31119003', '082233574795', '2', '3', 'im20210001');

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing_lapangan`
--

CREATE TABLE `pembimbing_lapangan` (
  `id` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `nama` char(100) NOT NULL,
  `nowa` char(15) NOT NULL,
  `instansi` char(10) NOT NULL,
  `nip` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembimbing_lapangan`
--

INSERT INTO `pembimbing_lapangan` (`id`, `id_utama`, `email`, `nama`, `nowa`, `instansi`, `nip`) VALUES
(1, 3, 'pemlap1@email.com', 'Pemlap1', '08123456789', 'im20210001', '');

-- --------------------------------------------------------

--
-- Table structure for table `super_user`
--

CREATE TABLE `super_user` (
  `id` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `nama` char(100) NOT NULL,
  `email` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `super_user`
--

INSERT INTO `super_user` (`id`, `id_utama`, `nama`, `email`) VALUES
(1, 1, 'Koordinator Magang', 'su1'),
(2, 5, 'Tata Usaha UWIKA', 'su2');

-- --------------------------------------------------------

--
-- Table structure for table `total_entitas`
--

CREATE TABLE `total_entitas` (
  `entitas` int(1) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `total_entitas`
--

INSERT INTO `total_entitas` (`entitas`, `jumlah`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(9, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_utama`);

--
-- Indexes for table `dosen_pembimbing`
--
ALTER TABLE `dosen_pembimbing`
  ADD PRIMARY KEY (`id_utama`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_utama`);

--
-- Indexes for table `pembimbing_lapangan`
--
ALTER TABLE `pembimbing_lapangan`
  ADD PRIMARY KEY (`id_utama`);

--
-- Indexes for table `super_user`
--
ALTER TABLE `super_user`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `total_entitas`
--
ALTER TABLE `total_entitas`
  ADD PRIMARY KEY (`entitas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
