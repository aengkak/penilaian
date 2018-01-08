-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2018 at 10:36 PM
-- Server version: 10.2.3-MariaDB-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web6`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses`
--

CREATE TABLE `akses` (
  `id_akses` int(11) NOT NULL,
  `akses` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses`
--

INSERT INTO `akses` (`id_akses`, `akses`, `status`) VALUES
(1, 'user', 1),
(2, 'akses', 1),
(3, 'kategori', 1),
(5, 'peraturan', 1),
(6, 'subkategori', 1),
(7, 'divisi', 1),
(9, 'karyawan', 1),
(11, 'aktivitas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `divisi` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `divisi`, `status`) VALUES
(1, 'Seluler', 1),
(2, 'Travel', 1),
(3, 'IT', 1),
(4, 'Administrasi', 1),
(5, 'Sales', 1),
(6, 'Desainer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `karyawan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `divisi_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `email`, `divisi_id`, `status`) VALUES
(1, 'Hakiki', 'hakiki@karuniatravel.com', 3, 1),
(2, 'Ari', 'arie@karuniaseluler.com', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`, `status`) VALUES
(1, 'Absensi', 1),
(2, 'Pekerjaan', 1),
(3, 'Perilaku', 1),
(4, 'Tambahan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `ket`, `user_id`, `tgl`) VALUES
(19, 'Menambah Nilai Ari 2018-01-06', 1, '2018-01-05 14:48:15'),
(20, 'Tambah Akses aktivitas', 1, '2018-01-05 14:59:00'),
(21, 'Update User admin', 1, '2018-01-05 14:59:10'),
(22, 'Menambah Nilai Ari 2018-01-01', 1, '2018-01-06 22:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `karyawan_id` int(11) NOT NULL,
  `ket` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `sub_id`, `tgl`, `karyawan_id`, `ket`, `user_id`, `status`) VALUES
(1, 1, '2018-01-01', 2, 'bolos', 1, 0),
(2, 0, '2018-01-02', 2, 'Ok', 1, 1),
(3, 2, '2018-01-03', 2, 'telat', 1, 1),
(4, 0, '2018-01-01', 1, 'Ok', 1, 1),
(5, 0, '2018-01-02', 1, 'Ok', 1, 1),
(6, 0, '2018-01-03', 1, 'Ok', 1, 1),
(7, 2, '2018-01-04', 1, 'karena<br />\r\nkesiangan', 1, 1),
(8, 0, '2018-01-05', 1, 'Ok', 1, 1),
(9, 0, '2018-01-06', 1, 'Ok', 1, 1),
(23, 0, '2018-01-04', 2, 'Ok', 1, 1),
(24, 0, '2018-01-05', 2, 'Ok', 1, 1),
(25, 0, '2018-01-06', 2, 'Ok', 1, 1),
(26, 0, '2018-01-01', 2, 'Ok', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `dari` int(12) NOT NULL,
  `sampai` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `ket`, `warna`, `dari`, `sampai`, `status`) VALUES
(1, 'Teguran', 'yellow', 61, 79, 1),
(2, 'Sp', 'red', 51, 60, 1),
(3, 'Keluar', 'black', 0, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `id_sub` int(11) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `divisi_id` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`id_sub`, `sub`, `jumlah`, `kategori_id`, `divisi_id`, `status`) VALUES
(1, 'Bolos', 20, 1, '4,6,3,5,1,2', 1),
(2, 'Telat', 10, 1, '4,6,3,5,1,2', 1),
(3, 'Ijin', 4, 1, '4,6,3,5,1,2', 1),
(4, 'Sikap', 10, 3, '4,6,3,5,1,2', 1),
(5, 'Tanggung Jawab', 10, 2, '4,6,3,5,1,2', 1),
(6, 'Tepat Waktu', 10, 2, '4,6,3,5,1,2', 1),
(7, 'Target', 20, 4, '5', 1),
(8, 'tes', 10, 4, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `akses_id` varchar(255) NOT NULL,
  `divisi_id` varchar(255) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `akses_id`, `divisi_id`, `chat_id`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2,11,7,9,3,5,6,1', '4,6,3,5,1,2', 424182261, 1),
(2, 'adit', '486b6c6b267bc61677367eb6b6458764', '2,7,9,3,5,6', '1', 219223583, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses`
--
ALTER TABLE `akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
