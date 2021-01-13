-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 05:41 PM
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
  `nama` char(100) NOT NULL,
  `entitas` int(1) NOT NULL,
  `password` char(200) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `status` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_utama`, `nama`, `entitas`, `password`, `email`, `status`) VALUES
(1, 'Koordinator Magang', 1, '1234', 'su1', 'on'),
(2, 'Administrasi UWIKA', 1, '1234', 'su2', 'on'),
(3, 'Dosen1', 2, '1234', 'dosen1@email.com', 'on'),
(4, 'PemLap1', 3, '1234', 'pemlap1@email.com', 'on'),
(5, 'Mahasiswa1', 4, '1234', 'mahasiswa1@email.com', 'on'),
(6, 'mhs2', 4, '1234', 'mhs2@email.com', 'on'),
(7, 'mhs3', 4, '1234', 'mhs3@gmail.com', 'on'),
(8, 'mhs4', 4, '1234', 'mhs4@email.com', 'on'),
(9, 'mhs5', 4, '1234', 'mhs5@email.com', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `dosen_pembimbing`
--

CREATE TABLE `dosen_pembimbing` (
  `id` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `nama` char(100) NOT NULL,
  `nidn` char(50) NOT NULL,
  `nowa` char(15) NOT NULL,
  `instansi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen_pembimbing`
--

INSERT INTO `dosen_pembimbing` (`id`, `id_utama`, `email`, `nama`, `nidn`, `nowa`, `instansi`) VALUES
(1, 3, 'dosen1@email.com', 'Dosen1', '12345678', '12345678', '2');

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` char(10) NOT NULL,
  `nama` char(100) NOT NULL,
  `notelp` char(15) NOT NULL,
  `nofax` char(15) NOT NULL,
  `email` char(100) NOT NULL,
  `alamat` char(100) NOT NULL,
  `status` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `nama`, `notelp`, `nofax`, `email`, `alamat`, `status`) VALUES
('1', 'PT. Jaya', '03123456789', '03123456789', 'jaya@jaya.com', 'jalan buah', 'on'),
('2', 'Universitas Widya Kartika', '03123456', '03123456', 'email@widyakartika.ac.id', 'Sutorejo Prima Utara II / 1', 'on'),
('3', 'UD. Bangkit', '198198', '', 'bangkit@bangkit.com', 'jalan salak', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `nama` char(100) NOT NULL,
  `nrp` char(50) NOT NULL,
  `nowa` char(15) NOT NULL,
  `dosenpembimbing` char(50) NOT NULL,
  `pembimbinglapangan` char(50) NOT NULL,
  `instansi` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `id_utama`, `email`, `nama`, `nrp`, `nowa`, `dosenpembimbing`, `pembimbinglapangan`, `instansi`) VALUES
(1, 5, 'mahasiswa1@email.com', 'Mahasiswa1', '12345678', '12345678', '3', '4', '1'),
(2, 6, 'mhs2@email.com', 'mhs2', '1234', '1234', '3', '', '2'),
(3, 7, 'mhs3@gmail.com', 'mhs3', '123', '1234', '3', '4', '1'),
(4, 8, 'mhs4@email.com', 'mhs4', '123', '123', '3', '4', '1'),
(5, 9, 'mhs5@email.com', 'mhs5', '1234', '1234', '3', '', '1');

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
(1, 4, 'pemlap1@email.com', 'PemLap1', '12345678', '1', '');

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
(2, 2, 'Administrasi UWIKA', 'su2');

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
  ADD PRIMARY KEY (`id_utama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
