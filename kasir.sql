-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Bulan Mei 2023 pada 10.11
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_notransaksi`
--

CREATE TABLE `p_notransaksi` (
  `Nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_notransaksi`
--

INSERT INTO `p_notransaksi` (`Nomor`) VALUES
(5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_userkasir`
--

CREATE TABLE `p_userkasir` (
  `ID_Kasir` varchar(15) NOT NULL,
  `namaKasir` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_userkasir`
--

INSERT INTO `p_userkasir` (`ID_Kasir`, `namaKasir`, `password`) VALUES
('kasir1', 'Maulana', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang`
--

CREATE TABLE `t_barang` (
  `ID` int(11) NOT NULL,
  `idBarang` varchar(15) NOT NULL,
  `nmBarang` varchar(30) NOT NULL,
  `hargaPokok` int(12) NOT NULL,
  `hargaJual` int(12) NOT NULL,
  `expDate` date NOT NULL,
  `stok` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_barang`
--

INSERT INTO `t_barang` (`ID`, `idBarang`, `nmBarang`, `hargaPokok`, `hargaJual`, `expDate`, `stok`) VALUES
(1, '001', 'Nutrisari', 2500, 5000, '0000-00-00', 5),
(2, '002', 'God Day Freez', 3000, 6000, '0000-00-00', 5),
(3, '003', 'God Day Moccachino', 3000, 6000, '0000-00-00', 5),
(4, '004', 'God Day Choccolatos', 3000, 6000, '0000-00-00', 5),
(5, '005', 'Teh Tarik', 3000, 6000, '0000-00-00', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kasir`
--

CREATE TABLE `t_kasir` (
  `ID` int(11) NOT NULL,
  `noTransaksi` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `idBarang` varchar(15) NOT NULL,
  `nmBarang` varchar(30) NOT NULL,
  `jumlah` smallint(3) NOT NULL,
  `harga` int(12) NOT NULL,
  `total` int(12) NOT NULL,
  `ID_Kasir` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_tempkasir`
--

CREATE TABLE `t_tempkasir` (
  `No` int(11) NOT NULL,
  `noTransaksi` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `idBarang` varchar(15) NOT NULL,
  `nmBarang` varchar(30) NOT NULL,
  `jumlah` smallint(3) NOT NULL,
  `harga` int(12) NOT NULL,
  `total` int(12) NOT NULL,
  `ID_Kasir` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_tempkasir`
--

INSERT INTO `t_tempkasir` (`No`, `noTransaksi`, `tanggal`, `idBarang`, `nmBarang`, `jumlah`, `harga`, `total`, `ID_Kasir`) VALUES
(1, '05052023/5', '2023-05-05', '001', 'Nutrisari', 1, 5000, 5000, 'kasir1'),
(1, '05052023/5', '2023-05-05', '002', 'God Day Freez', 1, 6000, 6000, 'kasir1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `p_userkasir`
--
ALTER TABLE `p_userkasir`
  ADD PRIMARY KEY (`ID_Kasir`);

--
-- Indeks untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `t_kasir`
--
ALTER TABLE `t_kasir`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_kasir`
--
ALTER TABLE `t_kasir`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
