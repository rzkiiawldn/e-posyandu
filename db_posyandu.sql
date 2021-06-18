-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 02:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_posyandu`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `isi_artikel` text NOT NULL,
  `view` int(11) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `created_by` varchar(225) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi_artikel`, `view`, `foto`, `created_by`, `created_date`) VALUES
(11, 'nn', 'b', 2, 'default.jpg', 'Dahlia1', '2021-06-18'),
(12, 'a', 'kj', 17, 'default.jpg', 'Dahlia1', '2021-06-18'),
(13, 'aa', 'a', 1, 'default.jpg', 'Dahlia1', '2021-06-18'),
(14, 'aa', 'a', 2, 'default.jpg', 'Dahlia1', '2021-06-18'),
(15, 'aa', 'a', 0, 'default.jpg', 'Dahlia1', '2021-06-18'),
(16, 'aa', 'aa', 0, 'default.jpg', 'Dahlia1', '2021-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `dataakun`
--

CREATE TABLE `dataakun` (
  `id_akun` int(11) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kode_posyandu` varchar(80) NOT NULL,
  `password` varchar(256) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `pendidikan_terakhir` varchar(20) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `image` varchar(80) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataakun`
--

INSERT INTO `dataakun` (`id_akun`, `nik`, `nama`, `email`, `kode_posyandu`, `password`, `alamat`, `no_telepon`, `jabatan`, `role`, `pendidikan_terakhir`, `tempat_lahir`, `tanggal_lahir`, `image`, `created_at`) VALUES
(1, '3173183710387', 'Admin', 'admin@gmail.com', '', '123', 'Jl. Pertukangan Selatan', '', 'Admin', 0, '', 'Jakarta', '2019-09-09', 'default.jpg', '2020-06-22'),
(9, '31730183012808', 'Maryani', 'Maryani17@gmail.com', 'Dahlia1', '12345', 'Jl. ciledug raya', '088137812121', 'Bendahara', 1, 'D3', 'Ciledug', '1985-02-17', 'default.jpg', '2021-05-29'),
(11, '724687391809', 'Agus', 'Agus@gmail.com', 'Dahlia2', 'qwert', 'Jl. Ciledug 5', '09873812342', 'Sektekaris', 1, 'SMP', 'Jakarta', '2012-10-31', 'default.jpg', '2021-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `dataanak`
--

CREATE TABLE `dataanak` (
  `nik` char(20) NOT NULL,
  `kode_posyandu` varchar(20) NOT NULL,
  `id_kms` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `golongan_darah` varchar(3) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `anak_ke` varchar(2) NOT NULL,
  `nik_wali` varchar(50) NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `status` char(1) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataanak`
--

INSERT INTO `dataanak` (`nik`, `kode_posyandu`, `id_kms`, `nama`, `password`, `tempat_lahir`, `tanggal_lahir`, `jk`, `golongan_darah`, `alamat`, `anak_ke`, `nik_wali`, `nama_wali`, `status`, `created_at`) VALUES
('1234567890', 'Dahlia1', '09876', 'dika', '123', 'jakarta', '2020-04-23', 'Laki-Laki', 'O', 'jalan petukangan 4', '1', '9876544122', 'putri', '1', '2021-06-08'),
('3134576879809', 'Dahlia1', '00001', 'Tyo ', '12345', 'Jakarta', '2021-04-29', 'Laki-Laki', 'B', 'Jl. Pertukangan Selatan', '1', '3176576543545', 'Anisa', '1', '2021-05-29'),
('3178798103987319', 'Dahlia1', '00002', 'Joni', '12345', 'Jakarta', '2021-04-05', 'Laki-Laki', 'A', 'Jl. Dahlia 2', '1', '2376879423423', 'Siti', '1', '2021-06-05'),
('346576867564', 'Dahlia1', '00003', 'Bunga', '12345', 'Jakartaa', '2021-03-05', 'Perempuan', 'O', 'Jl. Meruya Utama', '1', '3546789067890', 'Tina', '1', '2021-06-05'),
('3671728127', 'Dahlia1', '11', '1', '1234', '1', '2021-12-31', 'Laki-Laki', '1', '1', '1', '2376879423423', 'Siti', '1', '2021-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `dataibu`
--

CREATE TABLE `dataibu` (
  `nik` char(20) NOT NULL,
  `kode_posyandu` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `golongan_darah` varchar(3) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_telepon` varchar(30) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataibu`
--

INSERT INTO `dataibu` (`nik`, `kode_posyandu`, `nama`, `tempat_lahir`, `tanggal_lahir`, `golongan_darah`, `alamat`, `no_telepon`, `created_at`) VALUES
('2376879423423', 'Dahlia1', 'Siti', 'Jakarta', '1990-09-10', 'B', 'Jl. Dahlia 2', '085673189012', '2021-06-05'),
('3176576543545', 'Dahlia1', 'Anisa', 'Jakarta', '1984-09-11', 'B', 'Jl. Pertukangan Selatan ', '087564635546', '2021-05-29'),
('3546789067890', 'Dahlia1', 'Tina', 'Jakarta', '1988-05-12', 'A', 'Jl. Meruya Utama', '0835465768798', '2021-06-05'),
('9876544122', 'Dahlia1', 'putri', 'jakarta', '1995-03-08', 'O', 'jalan petukangan 4', '0987654376543', '2021-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `dataimunisasi`
--

CREATE TABLE `dataimunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `kode_posyandu` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_imunisasi` date DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `jenis_imunisasi` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataimunisasi`
--

INSERT INTO `dataimunisasi` (`id_imunisasi`, `nik`, `kode_posyandu`, `nama`, `tanggal_lahir`, `tanggal_imunisasi`, `bulan`, `jenis_imunisasi`, `status`) VALUES
(5, '3134576879809', 'Dahlia1', 'Tyo ', '2021-04-29', '2021-05-13', 'May', 'POLIO I', 1),
(9, '3134576879809', 'Dahlia1', 'Tyo ', '2021-04-29', '2021-05-19', 'May', 'POLIO II', 1),
(10, '3134576879809', 'Dahlia1', 'Tyo ', '2021-04-29', '2021-05-20', 'May', 'POLIO III', 1),
(11, '3134576879809', 'Dahlia1', 'Tyo ', '2021-04-29', '2021-05-26', 'May', 'POLIO IV', 1),
(12, '3134576879809', 'Dahlia1', 'Tyo ', '2021-04-29', '2021-06-05', 'June', 'CAMPAK', 1),
(14, '3134576879809', 'Dahlia1', 'Tyo ', '2021-04-29', '2021-06-05', 'June', 'BCG', 1),
(15, '346576867564', 'Dahlia1', 'Bunga', '2021-03-05', '2021-06-05', 'June', 'BCG', 1),
(16, '346576867564', 'Dahlia1', 'Bunga', '2021-03-05', '2021-05-05', 'May', 'CAMPAK', 1),
(17, '346576867564', 'Dahlia1', 'Bunga', '2021-03-05', '2021-06-05', 'June', 'POLIO I', 1),
(18, '346576867564', 'Dahlia1', 'Bunga', '2021-03-05', '2021-05-05', 'May', 'POLIO II', 1),
(19, '346576867564', 'Dahlia1', 'Bunga', '2021-03-05', '2021-06-05', 'June', 'POLIO III', 1),
(20, '346576867564', 'Dahlia1', 'Bunga', '2021-03-05', '2021-05-05', 'May', 'POLIO IV', 1),
(21, '3178798103987319', 'Dahlia1', 'Joni', '2021-04-05', '2021-06-05', 'June', 'BCG', 1),
(27, '3178798103987319', 'Dahlia1', 'Joni', '2021-04-05', '2021-05-05', 'May', 'CAMPAK', 1),
(28, '3178798103987319', 'Dahlia1', 'Joni', '2021-04-05', '2021-06-05', 'June', 'POLIO I', 1),
(30, '3178798103987319', 'Dahlia1', 'Joni', '2021-04-05', '2021-06-05', 'June', 'POLIO II', 1),
(31, '3178798103987319', 'Dahlia1', 'Joni', '2021-04-05', '2021-05-05', 'May', 'POLIO III', 1),
(32, '3178798103987319', 'Dahlia1', 'Joni', '2021-04-05', '2021-06-05', 'June', 'POLIO IV', 1),
(33, '3134576879809', 'Dahlia1', 'Tyo ', '2021-04-29', '2021-02-06', 'February', 'CAMPAK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datakegiatan`
--

CREATE TABLE `datakegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `kode_posyandu` varchar(100) NOT NULL,
  `kegiatan` varchar(225) NOT NULL,
  `isi_kegiatan` text NOT NULL,
  `waktu` date NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datakegiatan`
--

INSERT INTO `datakegiatan` (`id_kegiatan`, `kode_posyandu`, `kegiatan`, `isi_kegiatan`, `waktu`, `foto`) VALUES
(1, 'Dahlia1', 'aa', 'aaasa', '2021-12-31', 'nanti aja'),
(2, 'Dahlia1', 'aa', 'a', '2021-02-01', 'default.jpg'),
(3, 'Dahlia1', 'aa', 'a', '2021-06-18', 'default.jpg'),
(4, 'Dahlia1', 'a', 'a', '2021-06-18', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `datakms`
--

CREATE TABLE `datakms` (
  `id_pa` int(11) NOT NULL,
  `id_kms` varchar(20) NOT NULL,
  `kode_posyandu` varchar(30) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tanggal_periksa` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `tinggi_badan` varchar(3) NOT NULL,
  `berat_badan` double NOT NULL,
  `umur` varchar(10) NOT NULL,
  `status_gizi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datakms`
--

INSERT INTO `datakms` (`id_pa`, `id_kms`, `kode_posyandu`, `jk`, `tanggal_periksa`, `bulan`, `tahun`, `tinggi_badan`, `berat_badan`, `umur`, `status_gizi`) VALUES
(6, '00001', 'Dahlia1', 'L', '2021-05-29', 'May', '2021', '70', 4.6, '1', 'Berat badan normal'),
(16, '00003', 'Dahlia1', 'P', '2021-06-05', 'June', '2021', '70', 7.3, '3', 'Berat badan lebih'),
(17, '00002', 'Dahlia1', 'L', '2021-06-05', 'June', '2021', '60', 5.2, '2', 'Berat badan normal'),
(18, '09876', 'Dahlia1', 'L', '2021-01-01', 'January', '2021', '100', 100.1, '13', 'Berat badan lebih'),
(19, '00002', 'Dahlia1', 'L', '2021-01-01', 'January', '2021', '100', 100.1, '2', 'Berat badan lebih'),
(20, '00001', 'Dahlia1', 'L', '2021-12-06', 'December', '2021', '70', 7.2, '1', 'Berat badan lebih'),
(21, '00001', 'Dahlia1', 'L', '2021-06-01', 'June', '2021', '100', 10.1, '1', 'Berat badan lebih'),
(22, '00001', 'Dahlia1', 'L', '2021-06-01', 'June', '2021', '40', 10.1, '1', 'Berat badan lebih'),
(23, '00001', 'Dahlia1', 'L', '2021-06-16', 'June', '2021', '10', 1.1, '1', 'Berat badan sangat kurang');

-- --------------------------------------------------------

--
-- Table structure for table `dataposyandu`
--

CREATE TABLE `dataposyandu` (
  `id_posyandu` int(11) NOT NULL,
  `nama_posyandu` varchar(80) NOT NULL,
  `kode_posyandu` varchar(15) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `jumlah_kader` varchar(10) NOT NULL,
  `jumlah_wus` varchar(10) NOT NULL,
  `keterangan` varchar(80) NOT NULL,
  `lng` varchar(128) NOT NULL,
  `lat` varchar(128) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataposyandu`
--

INSERT INTO `dataposyandu` (`id_posyandu`, `nama_posyandu`, `kode_posyandu`, `alamat`, `jumlah_kader`, `jumlah_wus`, `keterangan`, `lng`, `lat`, `created_date`) VALUES
(1, 'Dahlia 1', 'Dahlia1', 'Jl. M. Saidi 1, Petukangan Sel., Kec. Pesanggrahan, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia', '25', '20', 'Posyandu aktif setiap 1 bulan sekali', '106.75652', '-6.24174', '0000-00-00'),
(5, 'pos1', 'pos1', 'Tangerang, Kota Tangerang, Banten, Indonesia', '20', '200', 'good', '106.6403236', '-6.1701796', '2021-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_posyandu`
--

CREATE TABLE `jadwal_posyandu` (
  `id_jadwal` int(11) NOT NULL,
  `kode_posyandu` varchar(225) NOT NULL,
  `hari` varchar(225) NOT NULL,
  `jam_buka` time NOT NULL,
  `jam_tutup` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_posyandu`
--

INSERT INTO `jadwal_posyandu` (`id_jadwal`, `kode_posyandu`, `hari`, `jam_buka`, `jam_tutup`) VALUES
(1, 'Dahlia1', 'Kamis', '09:00:00', '14:00:00'),
(2, 'Dahlia1', 'Senin', '08:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan`
--

CREATE TABLE `pengetahuan` (
  `id_pengetahuan` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `isi_pengetahuan` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `kode_posyandu` varchar(225) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengetahuan`
--

INSERT INTO `pengetahuan` (`id_pengetahuan`, `judul`, `isi_pengetahuan`, `id_kategori`, `foto`, `kode_posyandu`, `created_date`) VALUES
(1, 'aa', 'a', 3, 'default.jpg', 'Dahlia1', '2021-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan_kategori`
--

CREATE TABLE `pengetahuan_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengetahuan_kategori`
--

INSERT INTO `pengetahuan_kategori` (`id_kategori`, `kategori`) VALUES
(2, 'imunisasi'),
(3, 'baru'),
(4, 'ini juga baru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `dataakun`
--
ALTER TABLE `dataakun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `dataanak`
--
ALTER TABLE `dataanak`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `dataibu`
--
ALTER TABLE `dataibu`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `dataimunisasi`
--
ALTER TABLE `dataimunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indexes for table `datakegiatan`
--
ALTER TABLE `datakegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `datakms`
--
ALTER TABLE `datakms`
  ADD PRIMARY KEY (`id_pa`);

--
-- Indexes for table `dataposyandu`
--
ALTER TABLE `dataposyandu`
  ADD PRIMARY KEY (`id_posyandu`);

--
-- Indexes for table `jadwal_posyandu`
--
ALTER TABLE `jadwal_posyandu`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD PRIMARY KEY (`id_pengetahuan`);

--
-- Indexes for table `pengetahuan_kategori`
--
ALTER TABLE `pengetahuan_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dataakun`
--
ALTER TABLE `dataakun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dataimunisasi`
--
ALTER TABLE `dataimunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `datakegiatan`
--
ALTER TABLE `datakegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `datakms`
--
ALTER TABLE `datakms`
  MODIFY `id_pa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dataposyandu`
--
ALTER TABLE `dataposyandu`
  MODIFY `id_posyandu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jadwal_posyandu`
--
ALTER TABLE `jadwal_posyandu`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  MODIFY `id_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengetahuan_kategori`
--
ALTER TABLE `pengetahuan_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
