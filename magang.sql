-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 11:42 AM
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
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `id_utama` int(11) NOT NULL,
  `nama` char(100) NOT NULL,
  `entitas` int(1) NOT NULL,
  `password` char(200) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `status` char(3) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`timestamp`, `id_utama`, `nama`, `entitas`, `password`, `email`, `status`) VALUES
('2021-01-19 12:21:23', 1, 'Koordinator Magang', 1, '1234', 'su1', 'on'),
('2021-01-19 12:21:23', 2, 'Administrator', 1, '1234', 'su2', 'on'),
('2021-01-19 14:57:49', 3, 'Dosen1', 2, '12345678', 'dosen1@gmail.com', 'on'),
('2021-01-19 15:04:30', 4, 'pemlap1', 3, '12345678', 'pemlap1@gmail.com', 'on'),
('2021-01-19 15:04:36', 5, 'Mahasiswa 1', 4, '12345678', 'mhs1@gmail.com', 'off'),
('2021-01-19 15:04:40', 6, 'mhs2', 4, '12345678', 'mhs2@gmail.com', 'on'),
('2021-01-20 06:26:19', 7, 'mhs3', 4, '12345678', 'mhs3@gmail.com', 'on'),
('2021-01-20 06:39:50', 8, 'dosen2', 2, '12345678', 'dosen2@gmail.com', 'on'),
('2021-01-21 10:19:44', 9, 'tayo', 4, '12345678', 'tayo@gmail.com', 'on'),
('2021-01-23 09:15:10', 10, 'hehehehheh', 3, '12345678', '@', 'on'),
('2021-01-23 09:16:27', 11, 'hohohoho', 3, '12345678', '@', 'on'),
('2021-01-23 09:17:30', 12, 'heheuhuh', 3, '12345678', '@', 'on'),
('2021-01-23 09:17:57', 13, 'zozo', 3, '12345678', '@', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `dosen_pembimbing`
--

CREATE TABLE `dosen_pembimbing` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
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

INSERT INTO `dosen_pembimbing` (`timestamp`, `id`, `id_utama`, `email`, `nama`, `nidn`, `nowa`, `instansi`) VALUES
('2021-01-19 14:57:49', 1, 3, 'dosen1@gmail.com', 'Dosen1', '123456789', '082233574795', '2'),
('2021-01-20 06:39:50', 2, 8, 'dosen2@gmail.com', 'dosen2', '12345678', '12345678', '2');

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_instansi` int(11) NOT NULL,
  `nama` char(100) NOT NULL,
  `notelp` char(15) NOT NULL,
  `nofax` char(15) NOT NULL,
  `email` char(100) NOT NULL,
  `alamat` char(100) NOT NULL,
  `status` char(3) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`timestamp`, `id_instansi`, `nama`, `notelp`, `nofax`, `email`, `alamat`, `status`) VALUES
('2021-01-19 12:23:43', 1, 'PT. Jaya', '03123456789', '03123456789', 'jaya@jaya.com', 'jalan buah', 'on'),
('2021-01-19 12:23:43', 2, 'Universitas Widya Kartika', '03123456', '03123456', 'email@widyakartika.ac.id', 'Sutorejo Prima Utara II / 1', 'on'),
('2021-01-19 12:23:43', 3, 'UD. Bangkit', '198198', '', 'bangkit@bangkit.com', 'jalan salak', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `email` char(50) NOT NULL,
  `nama` char(100) NOT NULL,
  `nrp` char(50) NOT NULL,
  `nowa` char(15) NOT NULL,
  `dosenpembimbing` char(50) NOT NULL,
  `pembimbinglapangan` char(50) NOT NULL,
  `instansi` char(10) NOT NULL,
  `jam_magang` char(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`timestamp`, `id`, `id_utama`, `email`, `nama`, `nrp`, `nowa`, `dosenpembimbing`, `pembimbinglapangan`, `instansi`, `jam_magang`) VALUES
('2021-01-19 15:04:36', 1, 5, 'mhs1@gmail.com', 'Mahasiswa 1', '12345678', '12345678', '3', '4', '3', '720000'),
('2021-01-19 15:04:40', 2, 6, 'mhs2@gmail.com', 'mhs2', '12345678', '12345678', '3', '4', '1', '0'),
('2021-01-20 06:26:19', 3, 7, 'mhs3@gmail.com', 'mhs3', '12345678', '12345678', '3', '4', '3', '0'),
('2021-01-21 10:19:44', 4, 9, 'tayo@gmail.com', 'tayo', '12345', '12345', '3', '', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nama_status_magang`
--

CREATE TABLE `nama_status_magang` (
  `id_status` int(11) NOT NULL,
  `nama` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nama_status_magang`
--

INSERT INTO `nama_status_magang` (`id_status`, `nama`) VALUES
(1, 'Menunggu Surat TU'),
(2, 'Pengajuan Ke Instansi'),
(3, 'Masa Magang'),
(4, 'Laporan Magang'),
(5, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing_lapangan`
--

CREATE TABLE `pembimbing_lapangan` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
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

INSERT INTO `pembimbing_lapangan` (`timestamp`, `id`, `id_utama`, `email`, `nama`, `nowa`, `instansi`, `nip`) VALUES
('2021-01-19 15:04:30', 1, 4, 'pemlap1@gmail.com', 'pemlap1', '12345678', '1', '8989'),
('2021-01-23 09:15:10', 2, 10, '@', 'hehehehheh', '12', '1', ''),
('2021-01-23 09:16:27', 3, 11, '@', 'hohohoho', '11', '1', ''),
('2021-01-23 09:17:30', 4, 12, '@', 'heheuhuh', '2', '1', ''),
('2021-01-23 09:17:57', 5, 13, '@', 'zozo', '12', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up_akun`
--

CREATE TABLE `sign_up_akun` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL,
  `nama` char(100) NOT NULL,
  `nrp` char(15) NOT NULL,
  `entitas` int(11) NOT NULL,
  `instansi` char(11) NOT NULL,
  `nowa` char(15) NOT NULL,
  `email` char(100) NOT NULL,
  `dosenpembimbing` char(11) NOT NULL,
  `pembimbinglapangan` char(11) NOT NULL,
  `status` char(3) NOT NULL DEFAULT 'on',
  `password` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_up_akun`
--

INSERT INTO `sign_up_akun` (`timestamp`, `id`, `nama`, `nrp`, `entitas`, `instansi`, `nowa`, `email`, `dosenpembimbing`, `pembimbinglapangan`, `status`, `password`) VALUES
('2021-01-19 15:02:18', 1, 'pemlap1', '', 3, '1', '12345678', 'pemlap1@gmail.com', '', '', 'off', '12345678'),
('2021-01-19 15:03:15', 2, 'Mahasiswa 1', '12345678', 4, '2', '12345678', 'mhs1@gmail.com', '3', '', 'off', '12345678'),
('2021-01-19 15:04:15', 3, 'mhs2', '12345678', 4, '2', '12345678', 'mhs2@gmail.com', '3', '', 'off', '12345678'),
('2021-01-19 15:07:05', 4, 'mhs3', '12345678', 4, '3', '12345678', 'mhs3@gmail.com', '3', '4', 'off', '12345678'),
('2021-01-20 06:16:10', 5, 'Joko', '12345678', 4, '1', '12345678', 'Joko@gmail.com', '3', '4', 'on', '12345678'),
('2021-01-21 03:51:47', 6, 'tono', '123', 3, '3', '12345678', 'tono@gmail.com', '', '', 'on', '12345678'),
('2021-01-21 03:55:22', 7, 'hai', '12345678', 4, '2', '12345678', 'hai@gmail.com', '8', '', 'on', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up_instansi`
--

CREATE TABLE `sign_up_instansi` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL,
  `nama` char(100) NOT NULL,
  `notelp` char(15) NOT NULL,
  `nofax` char(15) NOT NULL,
  `email` char(100) NOT NULL,
  `alamat` char(100) NOT NULL,
  `status` char(3) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_up_instansi`
--

INSERT INTO `sign_up_instansi` (`timestamp`, `id`, `nama`, `notelp`, `nofax`, `email`, `alamat`, `status`) VALUES
('2021-01-19 15:01:42', 1, 'UD. YEYYY', '12345678', 'jl. yeyyy', ' yey@yey.com', 'jl. yeyyy', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `status_magang`
--

CREATE TABLE `status_magang` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_utama` int(11) NOT NULL,
  `id_status` int(11) NOT NULL DEFAULT 1,
  `time1` timestamp NOT NULL DEFAULT current_timestamp(),
  `time2` timestamp NOT NULL DEFAULT current_timestamp(),
  `time3` timestamp NOT NULL DEFAULT current_timestamp(),
  `time4` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_magang`
--

INSERT INTO `status_magang` (`timestamp`, `id_utama`, `id_status`, `time1`, `time2`, `time3`, `time4`) VALUES
('2021-01-23 02:18:45', 5, 5, '2021-01-20 03:35:11', '2021-01-20 03:38:20', '2021-01-23 00:57:59', '2021-01-23 02:08:09'),
('2021-01-23 02:18:55', 6, 3, '2021-01-20 03:35:11', '2021-01-20 03:35:11', '2021-01-20 03:35:11', '2021-01-20 03:35:11'),
('2021-01-23 10:01:19', 7, 1, '2020-03-20 06:26:19', '2021-01-20 06:26:19', '2021-01-20 06:26:19', '2021-01-20 06:26:19'),
('2021-01-23 10:01:39', 9, 1, '2020-01-29 10:14:44', '2021-01-21 10:14:44', '2021-01-21 10:14:44', '2021-01-21 10:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `super_user`
--

CREATE TABLE `super_user` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL,
  `id_utama` int(11) NOT NULL,
  `nama` char(100) NOT NULL,
  `email` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `super_user`
--

INSERT INTO `super_user` (`timestamp`, `id`, `id_utama`, `nama`, `email`) VALUES
('2021-01-19 12:26:30', 1, 1, 'Koordinator Magang', 'su1'),
('2021-01-19 12:26:30', 2, 2, 'Administrator', 'su2');

-- --------------------------------------------------------

--
-- Table structure for table `_data_absen_mhs5`
--

CREATE TABLE `_data_absen_mhs5` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_absen` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` char(50) NOT NULL,
  `jam_pulang` char(50) NOT NULL,
  `uraian_kegiatan` text NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'Diajukan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `_data_absen_mhs5`
--

INSERT INTO `_data_absen_mhs5` (`timestamp`, `id_absen`, `tanggal`, `jam_masuk`, `jam_pulang`, `uraian_kegiatan`, `status`) VALUES
('2021-01-22 15:29:55', 1, '2021-01-22', '08:00', '16:00', 'saya ga ngapa2in', 'Disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `_data_absen_mhs6`
--

CREATE TABLE `_data_absen_mhs6` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_absen` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` char(50) NOT NULL,
  `jam_pulang` char(50) NOT NULL,
  `uraian_kegiatan` text NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'Diajukan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `_data_absen_mhs7`
--

CREATE TABLE `_data_absen_mhs7` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_absen` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` char(50) NOT NULL,
  `jam_pulang` char(50) NOT NULL,
  `uraian_kegiatan` text NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'Diajukan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `_data_absen_mhs9`
--

CREATE TABLE `_data_absen_mhs9` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_absen` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` char(50) NOT NULL,
  `jam_pulang` char(50) NOT NULL,
  `uraian_kegiatan` text NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'Diajukan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `_data_file_absen_mhs5`
--

CREATE TABLE `_data_file_absen_mhs5` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_file` int(11) NOT NULL,
  `id_absen` int(11) NOT NULL,
  `file` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `_data_file_absen_mhs5`
--

INSERT INTO `_data_file_absen_mhs5` (`timestamp`, `id_file`, `id_absen`, `file`) VALUES
('2021-01-22 15:29:55', 1, 1, 'fer-nando-UMC5sfWci78-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `_data_file_absen_mhs6`
--

CREATE TABLE `_data_file_absen_mhs6` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_file` int(11) NOT NULL,
  `id_absen` int(11) NOT NULL,
  `file` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `_data_file_absen_mhs7`
--

CREATE TABLE `_data_file_absen_mhs7` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_file` int(11) NOT NULL,
  `id_absen` int(11) NOT NULL,
  `file` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `_data_file_absen_mhs9`
--

CREATE TABLE `_data_file_absen_mhs9` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_file` int(11) NOT NULL,
  `id_absen` int(11) NOT NULL,
  `file` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nama_status_magang`
--
ALTER TABLE `nama_status_magang`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `pembimbing_lapangan`
--
ALTER TABLE `pembimbing_lapangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_up_akun`
--
ALTER TABLE `sign_up_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_up_instansi`
--
ALTER TABLE `sign_up_instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_magang`
--
ALTER TABLE `status_magang`
  ADD PRIMARY KEY (`id_utama`);

--
-- Indexes for table `super_user`
--
ALTER TABLE `super_user`
  ADD PRIMARY KEY (`id_utama`);

--
-- Indexes for table `_data_absen_mhs5`
--
ALTER TABLE `_data_absen_mhs5`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `_data_absen_mhs6`
--
ALTER TABLE `_data_absen_mhs6`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `_data_absen_mhs7`
--
ALTER TABLE `_data_absen_mhs7`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `_data_absen_mhs9`
--
ALTER TABLE `_data_absen_mhs9`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `_data_file_absen_mhs5`
--
ALTER TABLE `_data_file_absen_mhs5`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `_data_file_absen_mhs6`
--
ALTER TABLE `_data_file_absen_mhs6`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `_data_file_absen_mhs7`
--
ALTER TABLE `_data_file_absen_mhs7`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `_data_file_absen_mhs9`
--
ALTER TABLE `_data_file_absen_mhs9`
  ADD PRIMARY KEY (`id_file`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
