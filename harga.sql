-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2017 at 05:26 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `price_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `kode` bigint(10) DEFAULT NULL,
  `nama` varchar(28) DEFAULT NULL,
  `harga_sebelumnya` int(5) DEFAULT NULL,
  `harga_sekarang` int(5) DEFAULT NULL,
  `lokasi` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`kode`, `nama`, `harga_sebelumnya`, `harga_sekarang`, `lokasi`) VALUES
(3859285839, 'Oreo Putih', 8000, 8500, 'Indomaret'),
(3859285840, 'Oreo Cokelat', 8000, 8500, 'Borma'),
(3859285841, 'Nescafe', 5000, 5100, 'Alfamart'),
(3859285842, 'Yeo\'s Soya', 4900, 5000, 'Indomaret'),
(3859285843, 'Sari Roti Roti Sobek Cokelat', 13500, 13500, 'Borma'),
(3859285844, 'MYROTI Roti Sobek', 13500, 13500, 'Alfamart'),
(3859285845, 'Lays Rumput Laut', 8900, 9000, 'Indomaret'),
(3859285846, 'Chitato BBQ', 8900, 9000, 'Borma'),
(3859285847, 'Indomie Kari Ayam', 2300, 2400, 'Alfamart'),
(3859285848, 'Dua Belibis 340g', 19900, 14900, 'Indomaret'),
(3859285849, 'Indomie Mi Goreng', 2200, 2300, 'Borma'),
(3859285850, 'KRAFT Singles Cheese', 8000, 8200, 'Alfamart'),
(3859285851, 'SEDAAP Kecap 135ml', 8200, 8000, 'Indomaret'),
(3859285852, 'Meg Keju Serbaguna 180g', 12500, 9500, 'Borma'),
(3859285853, 'So Klin Softergent 1,6kg', 30700, 30500, 'Alfamart'),
(3859285854, 'Dancow Instant', 57800, 57900, 'Indomaret'),
(3859285855, 'Dancow Full Cream', 57800, 57900, 'Borma'),
(3859285856, 'Sari Roti Roti Sobek Keju', 15000, 15000, 'Alfamart'),
(3859285857, 'Sari Wangi', 13000, 13200, 'Indomaret'),
(3859285858, 'Gula Pasir 1kg', 10000, 10000, 'Borma'),
(3859285859, 'Gula Pasir 500g', 5200, 5200, 'Alfamart'),
(3859285860, 'Paseo Tissue 70 sheets', 3000, 3000, 'Indomaret'),
(3859285861, 'Paseo Tissue 200 sheets', 10000, 10000, 'Borma'),
(3859285862, 'nice Tissue 70 sheets', 3000, 3000, 'Alfamart'),
(3859285863, 'nice Tissue 200 sheets', 10000, 10000, 'Indomaret'),
(3859285864, 'Indomaret Tissue 70 sheets', 2900, 2900, 'Indomaret'),
(3859285865, 'Indomaret Tissue 200 sheets', 9800, 9800, 'Indomaret'),
(3859285866, 'Gunting Kuku', 7000, 7500, 'Indomaret'),
(3859285867, 'Gunting Kuku', 7000, 7500, 'Borma'),
(3859285868, 'Gunting Kuku', 7000, 7500, 'Alfamart');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
