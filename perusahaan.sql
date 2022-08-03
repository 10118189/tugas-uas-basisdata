-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2022 pada 10.02
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perusahaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian`
--
-- Kesalahan membaca struktur untuk tabel perusahaan.bagian: #1932 - Table 'perusahaan.bagian' doesn't exist in engine
-- Kesalahan membaca data untuk tabel perusahaan.bagian: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `perusahaan`.`bagian`' at line 1

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` char(6) NOT NULL,
  `nama_pegawai` varchar(60) NOT NULL,
  `kota` varchar(40) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama_pegawai`, `kota`, `tgl_lahir`, `jenis_kelamin`) VALUES
('12310', 'agustina', 'solok', '1992-05-23', 'wanita'),
('12311', 'ahmad', 'pesisir selatan', '1992-06-11', 'pria'),
('12312', 'yogi', 'bandung', '1991-02-12', 'pria'),
('12313', 'david', 'majalengka', '1990-11-11', 'pria'),
('12314', 'bintang', 'solok', '1992-12-07', 'wanita'),
('12345', 'arum', 'jambi', '1990-11-04', 'wanita'),
('12346', 'wita adna', 'padang', '1990-09-11', 'wanita'),
('12348', 'doni saputra', 'padang pariaman', '1991-11-03', 'pria'),
('12349', 'desi agustina', 'bukit tinggi', '1994-11-28', 'wanita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `nip` char(6) NOT NULL,
  `kode_bagian` char(3) NOT NULL,
  `gaji` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`nip`, `kode_bagian`, `gaji`) VALUES
('12310', '7', '47130000'),
('12311', '6', '31000000'),
('12312', '10', '4000000'),
('12313', '8', '4100000'),
('12314', '9', '4453000'),
('12345', '5', '43000000'),
('12346', '4', '25000000'),
('12347', '3', '20000000'),
('12348', '2', '45000000'),
('12349', '1', '30000000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
