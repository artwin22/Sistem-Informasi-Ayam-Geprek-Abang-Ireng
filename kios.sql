-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2019 at 07:03 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kios`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL,
  `id_statusakun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`, `id_statusakun`) VALUES
(1, 'agai', 'f754edc0dbeedcf647efa488ee757aea', ' admin.png', 1),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin.png', 1),
(3, 'Arwin', '971f498caca7cad075f82de780b33f22', 'customer.png', 2),
(4, 'Deva', '5b369dd8eefbc60ac2880e9538448121', 'customer.png 	', 2),
(5, 'Indah', 'f3385c508ce54d577fd205a1b2ecdfb7', 'customer.png', 2),
(6, 'Dicky', 'ee0b6db238b075d0da86340048fb147a', 'customer.png', 2),
(7, 'Faiz', '9d4d4ab0dfdb72a54b895d78b90b09c7', 'customer.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `suplier`, `modal`, `harga`, `jumlah`, `sisa`) VALUES
(35, 'Ayam Geprek Original', 'Makanan', 'AGAI', 5000, 11000, 98, 100),
(36, 'Ayam Geprek Lada Hitam', 'Makanan', 'AGAI', 6000, 12000, 50, 100),
(37, 'Ayam Geprek Kuah Pedas', 'Makanan', 'AGAI', 5000, 12000, 50, 50),
(38, 'Ayam Geprek Keju', 'Makanan', 'AGAI', 7000, 13500, 50, 50),
(39, 'Ayam Geprek Kuah Telur Pedas', 'Makanan', 'AGAI', 7000, 15500, 60, 60),
(40, 'Ayam Geprek Ajib', 'Makanan', 'AGAI', 7000, 14500, 20, 20),
(41, 'Ayam Geprek Lada Hitam Premium', 'Makanan', 'AGAI', 10000, 17000, 40, 40),
(42, 'Geprek Kuah Pedas Premium', 'Makanan', 'AGAI', 7000, 15000, 20, 20),
(43, 'Lemon Tea Hot', 'Minuman', 'AGAI', 1000, 3500, 100, 100),
(44, 'Lemon Tea Ice', 'Minuman', 'AGAi', 1000, 3500, 100, 100),
(45, 'Tea Hot', 'Minuman', 'AGAI', 500, 2500, 50, 50),
(46, 'Tea Ice', 'Minuman', 'AGAI', 500, 2500, 50, 50),
(47, 'Milo Tea Hot', 'Minuman', 'AGAI', 1000, 3500, 20, 20),
(48, 'Milo Tea Ice', 'Minuman', 'AGAI', 1000, 3500, 20, 20),
(49, 'Susu Coklat Tea Hot', 'Minuman', 'AGAi', 1000, 3500, 10, 10),
(50, 'Susu Coklat Tea Ice', 'Minuman', 'AGAI', 1000, 3500, 10, 10),
(51, 'Godday Tea Hot', 'Minuman', 'AGAI', 1000, 3500, 10, 10),
(52, 'Goodday Tea Ice', 'Minuman', 'AGAI', 1000, 3500, 10, 10),
(53, 'Hilo Tea Hot', 'Minuman', 'AGAI', 1000, 3500, 10, 10),
(54, 'Hilo Tea Ice', 'Minuman', 'AGAI', 1000, 3500, 10, 10),
(55, 'Jeruk Hot', 'Minuman', 'AGAI', 1000, 3500, 30, 30),
(56, 'Telur', 'Menu Ekstra', 'AGAI', 2000, 5000, 50, 50),
(57, 'Nasi', 'Menu Ekstra', 'AGAI', 1000, 3500, 100, 100),
(58, 'Ayam Crispy', 'Menu Ekstra', 'AGAI', 5000, 8500, 25, 25),
(59, 'Tempe', 'Menu Ekstra', 'AGAI', 500, 3500, 40, 40),
(60, 'Tahu', 'Menu Ekstra', 'AGAi', 500, 3500, 40, 40),
(61, 'Terong', 'Menu Ekstra', 'AGAi', 1000, 3500, 10, 10),
(62, 'Keju', 'Menu Ekstra', 'AGAI', 500, 2500, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `barang_laku`
--

CREATE TABLE `barang_laku` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `laba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_laku`
--

INSERT INTO `barang_laku` (`id`, `tanggal`, `nama`, `jumlah`, `harga`, `total_harga`, `laba`) VALUES
(10, '2019-05-21', 'Ayam Geprek Kuas Lada Hitam', 1, 10000, 10000, 5000),
(12, '2019-05-21', 'Ayam Geprek Kuas Lada Hitam', 5, 8000, 40000, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statusakun`
--

CREATE TABLE `statusakun` (
  `id` int(11) NOT NULL,
  `namastatursakun` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statusakun`
--

INSERT INTO `statusakun` (`id`, `namastatursakun`) VALUES
(1, 'Admin'),
(2, 'Pelanggan'),
(0, 'Belum Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_laku`
--
ALTER TABLE `barang_laku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `barang_laku`
--
ALTER TABLE `barang_laku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
