-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2018 at 10:41 AM
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
(5, 'penilaian', 1),
(6, 'nilai', 1),
(7, 'divisi', 1),
(9, 'karyawan', 1),
(11, 'aktivitas', 1),
(12, 'ubah', 1),
(13, 'email', 1);

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
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id_email` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id_email`, `email`, `password`) VALUES
(1, 'norok.event3@gmail.com', '30april2011');

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

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `nilai`, `tgl`, `karyawan_id`) VALUES
(1, -60, '2018-01-23', 4),
(2, 65, '2018-01-23', 5),
(3, 42, '2018-01-22', 3),
(4, 48, '2018-01-23', 2),
(5, 100, '2018-01-03', 1),
(6, 90, '2018-01-18', 7);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `divisi_id` int(11) NOT NULL,
  `masuk` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `email`, `divisi_id`, `masuk`, `status`) VALUES
(1, 'Hakiki', 'hakiki@karuniatravel.com', 3, '0000-00-00', 1),
(2, 'Ari', 'arie@karuniaseluler.com', 1, '0000-00-00', 1),
(3, 'Yuliana', 'yuliana@karuniatravel.com', 5, '2018-01-12', 1),
(4, 'Zuhri', 'zuhri@karuniatravel.com', 2, '2018-01-01', 1),
(5, 'Hendrik', 'hendrik@karuniaseluler.com', 1, '0000-00-00', 1),
(6, 'Sinta', 'sinta@karuniatravel.com', 5, '2018-01-20', 1),
(7, 'Deni', 'deni@karuniatravel.com', 2, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`, `warna`, `status`) VALUES
(1, 'Absensi', 'red', 1),
(2, 'Pekerjaan', 'yellow', 1),
(3, 'Perilaku', 'blue', 1),
(4, 'Tambahan', 'black', 1);

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
(22, 'Menambah Nilai Ari 2018-01-01', 1, '2018-01-06 22:12:20'),
(23, 'Menambah Nilai Ari 2018-01-31', 1, '2018-01-08 08:55:51'),
(24, 'Menambah Nilai Hakiki 2018-01-31', 1, '2018-01-08 08:56:06'),
(25, 'Menambah Nilai Ari 2018-01-07', 1, '2018-01-08 09:17:48'),
(26, 'Menambah Nilai Ari 2018-01-08', 1, '2018-01-08 11:31:58'),
(27, 'Menambah Nilai Hakiki 2018-01-08', 1, '2018-01-08 11:32:20'),
(28, 'Menambah Nilai Hakiki 2018-01-07', 1, '2018-01-08 11:33:24'),
(29, 'Menambah Nilai Ari 2018-01-09', 1, '2018-01-08 15:54:42'),
(30, 'Menambah Nilai Ari 2018-01-11', 1, '2018-01-08 16:05:31'),
(31, 'Mengubah Nilai Ari 2018-01-11', 1, '2018-01-08 16:05:31'),
(32, 'Menambah Nilai Hakiki 2018-01-09', 1, '2018-01-08 16:07:50'),
(33, 'Menambah Nilai Hakiki 2018-01-10', 1, '2018-01-08 16:08:06'),
(34, 'Menambah Nilai Ari 2018-01-10', 1, '2018-01-08 16:52:34'),
(35, 'Menambah Nilai Hakiki 2018-01-11', 1, '2018-01-08 16:52:48'),
(36, 'Menambah Nilai Ari 2018-01-12', 1, '2018-01-09 09:14:13'),
(37, 'Menambah Nilai Hakiki 2018-01-12', 1, '2018-01-09 09:14:38'),
(38, 'Menambah Nilai Ari 2018-01-11', 1, '2018-01-09 09:26:18'),
(39, 'Menambah Nilai Ari 2018-01-13', 1, '2018-01-09 09:26:29'),
(40, 'Menambah Nilai Hakiki 2018-01-13', 1, '2018-01-09 09:26:40'),
(41, 'Menambah Nilai Ari 2018-01-07', 1, '2018-01-09 09:44:07'),
(42, 'Mengubah Nilai Ari 2018-01-03', 1, '2018-01-09 09:52:38'),
(43, 'Mengubah Nilai Ari 2018-01-03', 1, '2018-01-09 09:54:00'),
(44, 'Mengubah Nilai Ari 2018-01-03', 1, '2018-01-09 09:54:00'),
(45, 'Menambah Nilai Ari 2018-01-03', 1, '2018-01-09 09:54:31'),
(46, 'Mengubah Nilai Ari 2018-01-03', 1, '2018-01-09 09:54:31'),
(47, 'Mengubah Nilai Ari 2018-01-03', 1, '2018-01-09 09:54:31'),
(48, 'Menambah Nilai Ari 2018-01-11', 1, '2018-01-09 09:55:05'),
(49, 'Menambah Nilai Hakiki 2018-01-10', 1, '2018-01-09 09:55:54'),
(50, 'Tambah Akses ubah', 1, '2018-01-09 09:57:50'),
(51, 'Update User admin', 1, '2018-01-09 09:58:02'),
(52, 'Update Divisi Seluler', 1, '2018-01-09 15:46:55'),
(53, 'Tambah User arif', 1, '2018-01-11 15:53:07'),
(54, 'Tambah Karyawan Yuliana', 3, '2018-01-11 15:54:52'),
(55, 'Menambah Nilai Yuliana 2018-01-11', 3, '2018-01-11 16:04:03'),
(56, 'Update Subkategori Target', 1, '2018-01-11 16:41:06'),
(57, 'Menambah Nilai Yuliana 2018-01-10', 1, '2018-01-11 16:44:11'),
(58, 'Menambah Nilai Yuliana 2018-01-10', 1, '2018-01-11 16:55:13'),
(59, 'Menambah Nilai Yuliana 2018-01-12', 1, '2018-01-11 17:16:19'),
(60, 'Mengubah Nilai Yuliana 2018-01-12', 1, '2018-01-11 17:17:03'),
(61, 'Mengubah Nilai Yuliana 2018-01-12', 1, '2018-01-11 17:17:04'),
(62, 'Tambah Peraturan Hijau', 1, '2018-01-11 17:37:40'),
(63, 'Update Peraturan Bagus', 1, '2018-01-11 17:37:59'),
(64, 'Menambah Nilai Ari 2018-01-10', 1, '2018-01-11 18:04:02'),
(65, 'Update Subkategori Target Tercapai', 1, '2018-01-11 20:38:02'),
(66, 'Tambah Subkategori Target Tidak Tercapai', 1, '2018-01-11 20:38:17'),
(67, 'Update Karyawan Yuliana', 1, '2018-01-12 09:48:24'),
(68, 'Update Karyawan Ari', 1, '2018-01-12 09:48:31'),
(69, 'Update Karyawan Ari', 1, '2018-01-12 09:48:41'),
(70, 'Update Karyawan Hakiki', 1, '2018-01-12 09:48:48'),
(71, 'Update Peraturan Teguran', 1, '2018-01-12 11:08:49'),
(72, 'Update Peraturan Sp', 1, '2018-01-12 11:09:22'),
(73, 'Update Peraturan Keluar', 1, '2018-01-12 11:09:36'),
(74, 'Update Peraturan Bagus', 1, '2018-01-12 11:09:43'),
(75, 'Update Karyawan Hakiki', 1, '2018-01-12 12:56:54'),
(76, 'Update Karyawan Ari', 1, '2018-01-12 12:57:04'),
(77, 'Tambah Subkategori Telat', 1, '2018-01-15 20:39:30'),
(78, 'Tambah Subkategori Bolos', 1, '2018-01-15 20:40:05'),
(79, 'Tambah Subkategori Ijin', 1, '2018-01-15 20:40:24'),
(80, 'Tambah Subkategori Pemahaman', 1, '2018-01-15 20:40:57'),
(81, 'Tambah Subkategori Kesalahan', 1, '2018-01-15 20:42:10'),
(82, 'Tambah Subkategori Kewajiban Tugas', 1, '2018-01-15 20:42:36'),
(83, 'Tambah Subkategori Kecepatan', 1, '2018-01-15 20:42:54'),
(84, 'Tambah Subkategori Sikap', 1, '2018-01-15 20:43:13'),
(85, 'Tambah Subkategori Bahasa', 1, '2018-01-15 20:43:34'),
(86, 'Tambah Subkategori Kerapian', 1, '2018-01-15 20:43:53'),
(87, 'Tambah Subkategori Mencapai Target', 1, '2018-01-15 20:44:19'),
(88, 'Tambah Subkategori Target Tidak Tercapai', 1, '2018-01-15 20:44:31'),
(89, 'Tambah Karyawan Zuhri', 1, '2018-01-18 14:46:17'),
(90, 'Tambah Karyawan Hendrik', 2, '2018-01-18 17:45:37'),
(91, 'Menambah Nilai Zuhri 2018-01-17', 1, '2018-01-18 17:48:31'),
(92, 'Menambah Nilai Zuhri 2018-01-17', 1, '2018-01-18 17:51:54'),
(93, 'Menambah Nilai Hendrik 2018-01-17', 2, '2018-01-18 17:53:43'),
(94, 'Menambah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:10:14'),
(95, 'Menambah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:10:22'),
(96, 'Menambah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:10:31'),
(97, 'Menambah Nilai Ari 2018-01-17', 1, '2018-01-18 18:10:34'),
(98, 'Menambah Nilai Yuliana 2018-01-17', 1, '2018-01-18 18:10:37'),
(99, 'Menambah Nilai Yuliana 2018-01-17', 1, '2018-01-18 18:10:37'),
(100, 'Menambah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:10:57'),
(101, 'Menambah Nilai Yuliana 2018-01-17', 1, '2018-01-18 18:11:13'),
(102, 'Mengubah Nilai Yuliana 2018-01-17', 1, '2018-01-18 18:11:13'),
(103, 'Menambah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:11:18'),
(104, 'Menambah Nilai Hendrik 2018-01-18', 1, '2018-01-18 18:14:26'),
(105, 'Menambah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:14:31'),
(106, 'Menambah Nilai Hendrik 2018-01-18', 1, '2018-01-18 18:14:34'),
(107, 'Menambah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:14:36'),
(108, 'Menambah Nilai Hakiki 2018-01-17', 1, '2018-01-18 18:14:53'),
(109, 'Menambah Nilai Hendrik 2018-01-18', 1, '2018-01-18 18:15:55'),
(110, 'Menambah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:16:07'),
(111, 'Mengubah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:16:08'),
(112, 'Mengubah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:16:08'),
(113, 'Menambah Nilai Ari 2018-01-18', 1, '2018-01-18 18:16:22'),
(114, 'Menambah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:17:17'),
(115, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:17:18'),
(116, 'Menambah Nilai Ari 2018-01-18', 1, '2018-01-18 18:17:27'),
(117, 'Mengubah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:17:36'),
(118, 'Mengubah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:17:36'),
(119, 'Mengubah Nilai Yuliana 2018-01-18', 1, '2018-01-18 18:17:36'),
(120, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:17:52'),
(121, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:17:52'),
(122, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:17:52'),
(123, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:17:52'),
(124, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:02'),
(125, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:02'),
(126, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:02'),
(127, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:02'),
(128, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:03'),
(129, 'Mengubah Nilai Yuliana 2018-01-17', 1, '2018-01-18 18:18:21'),
(130, 'Mengubah Nilai Yuliana 2018-01-17', 1, '2018-01-18 18:18:22'),
(131, 'Mengubah Nilai Yuliana 2018-01-17', 1, '2018-01-18 18:18:22'),
(132, 'Mengubah Nilai Yuliana 2018-01-17', 1, '2018-01-18 18:18:22'),
(133, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:24'),
(134, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:24'),
(135, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:24'),
(136, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:24'),
(137, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:24'),
(138, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:25'),
(139, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:37'),
(140, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:37'),
(141, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:37'),
(142, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:37'),
(143, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:38'),
(144, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:38'),
(145, 'Mengubah Nilai Yuliana 2018-01-19', 1, '2018-01-18 18:18:38'),
(146, 'Menambah Nilai Yuliana 2018-01-20', 1, '2018-01-18 18:18:44'),
(147, 'Menambah Nilai Yuliana 2018-01-20', 1, '2018-01-18 18:18:51'),
(148, 'Menambah Nilai Ari 2018-01-19', 1, '2018-01-18 18:19:21'),
(149, 'Menambah Nilai Zuhri 2018-01-18', 1, '2018-01-18 18:26:05'),
(150, 'Menambah Nilai Zuhri 2018-01-18', 1, '2018-01-18 18:26:13'),
(151, 'Mengubah Nilai Zuhri 2018-01-18', 1, '2018-01-18 18:26:13'),
(152, 'Menambah Nilai Hendrik 2018-01-19', 1, '2018-01-18 18:26:17'),
(153, 'Menambah Nilai Hendrik 2018-01-19', 1, '2018-01-18 18:26:59'),
(154, 'Menambah Nilai Hendrik 2018-01-21', 1, '2018-01-18 18:27:54'),
(155, 'Menambah Nilai Hendrik 2018-01-20', 1, '2018-01-18 18:28:21'),
(156, 'Menambah Nilai Yuliana 2018-01-21', 1, '2018-01-18 18:29:36'),
(157, 'Menambah Nilai Zuhri 2018-01-19', 1, '2018-01-18 18:32:16'),
(158, 'Menambah Nilai Zuhri 2018-01-19', 1, '2018-01-18 18:32:28'),
(159, 'Mengubah Nilai Zuhri 2018-01-19', 1, '2018-01-18 18:32:28'),
(160, 'Menambah Nilai Yuliana 2018-01-23', 1, '2018-01-18 18:35:46'),
(161, 'Menambah Nilai Zuhri 2018-01-20', 1, '2018-01-18 18:36:05'),
(162, 'Menambah Nilai Zuhri 2018-01-20', 1, '2018-01-18 18:36:13'),
(163, 'Mengubah Nilai Zuhri 2018-01-20', 1, '2018-01-18 18:36:13'),
(164, 'Menambah Nilai Zuhri 2018-01-21', 1, '2018-01-18 18:45:40'),
(165, 'Menambah Nilai Zuhri 2018-01-21', 1, '2018-01-18 18:45:48'),
(166, 'Mengubah Nilai Zuhri 2018-01-21', 1, '2018-01-18 18:45:48'),
(167, 'Menambah Nilai Zuhri 2018-01-17', 1, '2018-01-18 18:47:05'),
(168, 'Mengubah Nilai Zuhri 2018-01-17', 1, '2018-01-18 18:47:05'),
(169, 'Mengubah Nilai Zuhri 2018-01-17', 1, '2018-01-18 18:47:05'),
(170, 'Mengubah Nilai Zuhri 2018-01-17', 1, '2018-01-18 18:47:05'),
(171, 'Menambah Nilai Yuliana 2018-01-22', 1, '2018-01-18 18:48:50'),
(172, 'Menambah Nilai Yuliana 2018-01-22', 1, '2018-01-18 18:49:00'),
(173, 'Mengubah Nilai Yuliana 2018-01-22', 1, '2018-01-18 18:49:00'),
(174, 'Menambah Nilai Zuhri 2018-01-20', 1, '2018-01-18 18:53:05'),
(175, 'Menambah Nilai Zuhri 2018-01-20', 1, '2018-01-18 18:53:14'),
(176, 'Mengubah Nilai Zuhri 2018-01-20', 1, '2018-01-18 18:53:14'),
(177, 'Menambah Nilai Ari 2018-01-20', 1, '2018-01-18 18:54:45'),
(178, 'Menambah Nilai Ari 2018-01-20', 1, '2018-01-18 18:54:52'),
(179, 'Mengubah Nilai Ari 2018-01-20', 1, '2018-01-18 18:54:53'),
(180, 'Mengubah Nilai Yuliana 2018-01-22', 1, '2018-01-18 18:59:28'),
(181, 'Mengubah Nilai Yuliana 2018-01-22', 1, '2018-01-18 18:59:50'),
(182, 'Mengubah Nilai Yuliana 2018-01-22', 1, '2018-01-18 18:59:50'),
(183, 'Menambah Nilai Hendrik 2018-01-17', 1, '2018-01-18 19:03:16'),
(184, 'Mengubah Nilai Hendrik 2018-01-17', 1, '2018-01-18 19:03:16'),
(185, 'Mengubah Nilai Hendrik 2018-01-17', 1, '2018-01-18 19:03:17'),
(186, 'Mengubah Nilai Hendrik 2018-01-17', 1, '2018-01-18 19:03:17'),
(187, 'Menambah Nilai Zuhri 2018-01-22', 1, '2018-01-18 19:06:26'),
(188, 'Menambah Nilai Zuhri 2018-01-23', 1, '2018-01-18 19:06:42'),
(189, 'Menambah Nilai Zuhri 2018-01-23', 1, '2018-01-18 19:07:02'),
(190, 'Menambah Nilai Zuhri 2018-01-23', 1, '2018-01-18 19:07:20'),
(191, 'Mengubah Nilai Ari 2018-01-20', 1, '2018-01-18 19:07:32'),
(192, 'Menambah Nilai Ari 2018-01-20', 1, '2018-01-18 19:07:45'),
(193, 'Menambah Nilai Hendrik 2018-01-23', 1, '2018-01-18 19:08:00'),
(194, 'Tambah Karyawan Sinta', 1, '2018-01-18 19:56:38'),
(195, 'Tambah Karyawan Deni', 1, '2018-01-18 19:59:56'),
(196, 'Menambah Nilai Deni 2018-01-17', 1, '2018-01-18 20:00:26'),
(197, 'Menambah Nilai Deni 2018-01-18', 1, '2018-01-18 20:01:10'),
(198, 'Update Akses nilai', 1, '2018-01-18 20:08:39'),
(199, 'Update Akses penilaian', 1, '2018-01-18 20:11:42'),
(200, 'Tambah User arif', 1, '2018-01-18 20:15:18'),
(201, 'Delete Karyawan Yuliana', 1, '2018-01-18 20:20:03'),
(202, 'Delete Karyawan Yuliana', 1, '2018-01-19 09:32:27'),
(203, 'Menambah Nilai Ari 2018-01-21', 1, '2018-01-20 10:12:41'),
(204, 'Menambah Nilai Ari 2018-01-22', 1, '2018-01-20 10:13:37'),
(205, 'Menambah Nilai Ari 2018-01-23', 1, '2018-01-20 10:14:39'),
(206, 'Menambah Nilai Ari 2018-01-23', 1, '2018-01-20 10:15:20'),
(207, 'Mengubah Nilai Ari 2018-01-23', 1, '2018-01-20 10:15:20'),
(208, 'Menambah Nilai Hakiki 2018-01-01', 1, '2018-01-20 11:22:57'),
(209, 'Menambah Nilai Hakiki 2018-01-02', 1, '2018-01-20 11:23:19'),
(210, 'Menambah Nilai Hakiki 2018-01-03', 1, '2018-01-20 11:23:32'),
(211, 'Tambah Akses email', 1, '2018-01-22 16:58:48'),
(212, 'Update User admin', 1, '2018-01-22 16:59:00'),
(213, 'Tambah User user', 1, '2018-01-22 16:59:33'),
(214, 'Update Akses surat', 1, '2018-01-22 17:03:56'),
(215, 'Update Akses email', 1, '2018-01-22 17:04:28'),
(216, 'Set Email norok.event@gmail.com', 1, '2018-01-22 19:53:42'),
(217, 'Set Email norok.event3@gmail.com', 1, '2018-01-22 19:54:01'),
(218, 'Update Akses user', 1, '2018-01-24 10:32:51');

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
(1, 18, '2018-01-17', 4, 'enter<br />\r\nenter<br />\r\nenter', 1, 1),
(2, 10, '2018-01-17', 4, 'bb bbb nnn      GGGGGGG', 1, 1),
(3, 18, '2018-01-17', 5, 'Bahasa kurang baik, tidak tau perbedaan koreksi dan edit', 2, 1),
(4, 0, '2018-01-18', 3, 'Ok', 1, 0),
(5, 0, '2018-01-18', 3, 'Ok', 1, 0),
(6, 0, '2018-01-18', 3, 'Ok', 1, 0),
(7, 12, '2018-01-17', 2, 'jfjfdjfjsd kdfmkdgfs', 1, 1),
(8, 0, '2018-01-17', 3, 'Ok', 1, 0),
(9, 0, '2018-01-17', 3, 'Ok', 1, 1),
(10, 0, '2018-01-18', 3, 'Ok', 1, 0),
(11, 10, '2018-01-17', 3, 'yagysjnspks', 1, 1),
(12, 0, '2018-01-18', 3, 'Ok', 1, 0),
(13, 0, '2018-01-18', 5, 'Ok', 1, 0),
(14, 0, '2018-01-19', 3, 'Ok', 1, 1),
(15, 0, '2018-01-18', 5, 'Ok', 1, 0),
(16, 0, '2018-01-18', 3, 'Ok', 1, 1),
(17, 0, '2018-01-17', 1, 'Ok', 1, 1),
(18, 0, '2018-01-18', 5, 'Ok', 1, 1),
(19, 12, '2018-01-18', 3, 'fsdfsd', 1, 1),
(20, 0, '2018-01-18', 2, 'Ok', 1, 0),
(21, 11, '2018-01-19', 3, 'fsdasdf', 1, 1),
(22, 0, '2018-01-18', 2, 'Ok', 1, 1),
(23, 0, '2018-01-20', 3, 'Ok', 1, 0),
(24, 0, '2018-01-20', 3, 'Ok', 1, 1),
(25, 0, '2018-01-19', 2, 'Ok', 1, 1),
(26, 15, '2018-01-18', 4, 'aaa      a aaa', 1, 1),
(27, 19, '2018-01-18', 4, 'aa   a a a a a a a', 1, 1),
(28, 0, '2018-01-19', 5, 'Ok', 1, 0),
(29, 0, '2018-01-19', 5, 'Ok', 1, 1),
(30, 0, '2018-01-21', 5, 'Ok', 1, 1),
(31, 17, '2018-01-20', 5, 'dfsdf', 1, 1),
(32, 0, '2018-01-21', 3, 'Ok', 1, 1),
(33, 10, '2018-01-19', 4, 'aaa     aaaa', 1, 1),
(34, 14, '2018-01-19', 4, 'zzzzz zzz zzz    zzz', 1, 1),
(35, 0, '2018-01-23', 3, 'Ok', 1, 1),
(36, 10, '2018-01-20', 4, 'aaaa   a a a a a a', 1, 1),
(37, 16, '2018-01-20', 4, 'aaa a a a a', 1, 1),
(38, 10, '2018-01-21', 4, 'nn  aa', 1, 1),
(39, 13, '2018-01-21', 4, 'aaa aaa', 1, 1),
(40, 16, '2018-01-17', 4, 'aaa aaa', 1, 1),
(41, 10, '2018-01-22', 3, 'aaa a a a a a ', 1, 1),
(42, 14, '2018-01-22', 3, 'aa aa', 1, 1),
(43, 17, '2018-01-20', 4, 'aa aaaa a a a               a', 1, 1),
(44, 13, '2018-01-20', 4, 'aaaaaaaa aaaaaa', 1, 1),
(45, 10, '2018-01-20', 2, 'aaa a<br />\r\n<br />\r\na', 1, 1),
(46, 16, '2018-01-20', 2, 'ggfg  ', 1, 1),
(47, 16, '2018-01-17', 5, 'n    b', 1, 1),
(48, 0, '2018-01-22', 4, 'Ok', 1, 1),
(49, 10, '2018-01-23', 4, 'aaa a a a ', 1, 1),
(50, 13, '2018-01-23', 4, 'aaa a a a a<br />\r\naaa', 1, 1),
(51, 17, '2018-01-23', 4, 'aaaa<br />\r\na<br />\r\na<br />\r\na', 1, 1),
(52, 17, '2018-01-20', 2, 'aaamama aaa', 1, 1),
(53, 10, '2018-01-23', 5, 'faffsdf   ', 1, 1),
(54, 0, '2018-01-17', 7, 'Ok', 1, 1),
(55, 16, '2018-01-18', 7, 'gak cepat', 1, 1),
(56, 0, '2018-01-21', 2, 'Ok', 1, 1),
(57, 0, '2018-01-22', 2, 'Ok', 1, 1),
(58, 10, '2018-01-23', 2, 'kesiangan', 1, 1),
(59, 17, '2018-01-23', 2, 'gak sopan', 1, 1),
(60, 0, '2018-01-01', 1, 'Ok', 1, 1),
(61, 0, '2018-01-02', 1, 'Ok', 1, 1),
(62, 0, '2018-01-03', 1, 'Ok', 1, 1);

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
  `note` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `ket`, `warna`, `dari`, `sampai`, `note`, `status`) VALUES
(1, 'Teguran', 'yellow', 61, 79, 'Lebih ditingktkan lagi', 1),
(2, 'Sp', 'red', 51, 60, 'Berusaha lah keluar dari zona berbahaya', 1),
(3, 'Keluar', 'black', 0, 50, 'Selamat anda akan keluar', 1),
(4, 'Bagus', 'green', 80, 100, 'Pertahankan', 1);

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
(10, 'Telat', 11, 1, '4,6,3,5,1,2', 1),
(11, 'Bolos', 20, 1, '4,6,3,5,1,2', 1),
(12, 'Ijin', 4, 1, '4,6,3,5,1,2', 1),
(13, 'Pemahaman', 11, 2, '4,6,3,5,1,2', 1),
(14, 'Kesalahan', 12, 2, '4,6,3,5,1,2', 1),
(15, 'Kewajiban Tugas', 12, 2, '4,6,3,5,1,2', 1),
(16, 'Kecepatan', 10, 2, '4,6,3,5,1,2', 1),
(17, 'Sikap', 8, 3, '4,6,3,5,1,2', 1),
(18, 'Bahasa', 6, 3, '4,6,3,5,1,2', 1),
(19, 'Kerapian', 6, 3, '4,6,3,5,1,2', 1),
(20, 'Mencapai Target', 0, 4, '5', 1),
(21, 'Target Tidak Tercapai', 20, 4, '5', 1);

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
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2,11,7,13,9,3,6,5,12,1', '4,6,3,5,1,2', 424182261, 1),
(2, 'adit', '486b6c6b267bc61677367eb6b6458764', '2,7,9,3,5,6', '1', 219223583, 1),
(3, 'arif', '0ff6c3ace16359e41e37d40b8301d67f', '9', '5', 438990025, 1),
(4, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '2,11,7,13,9,3,6,5,12,1', '4,6,3,5,1,2', 424182261, 1);

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
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id_email`);

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
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
