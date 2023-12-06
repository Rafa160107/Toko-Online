-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2023 pada 10.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pembelian_produk`
--

CREATE TABLE `detail_pembelian_produk` (
  `id_detail_pembelian_produk` int(11) NOT NULL,
  `id_pembelian_produk` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_pembelian_produk`
--

INSERT INTO `detail_pembelian_produk` (`id_detail_pembelian_produk`, `id_pembelian_produk`, `id_produk`, `id_user`, `qty`) VALUES
(35, 36, 3, 19, 1),
(36, 36, 1, 19, 1),
(37, 36, 4, 19, 1),
(38, 36, 5, 19, 1),
(39, 36, 2, 19, 1),
(40, 37, 4, 19, 1),
(41, 38, 3, 19, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_user`, `tanggal_beli`) VALUES
(2, 2, '2023-10-16'),
(3, 1, '2023-10-16'),
(4, 2, '2023-10-16'),
(5, 1, '2023-10-16'),
(6, 2, '2023-10-16'),
(7, 3, '2023-10-16'),
(8, 3, '2023-10-16'),
(9, 3, '2023-10-16'),
(10, 2, '2023-10-16'),
(11, 2, '2023-10-16'),
(12, 1, '2023-10-16'),
(13, 7, '2023-10-16'),
(14, 8, '2023-10-16'),
(15, 8, '2023-10-16'),
(16, 11, '2023-10-17'),
(17, 15, '2023-10-18'),
(18, 16, '2023-10-19'),
(19, 16, '2023-10-19'),
(20, 17, '2023-10-19'),
(21, 16, '2023-10-19'),
(22, 16, '2023-10-19'),
(23, 16, '2023-10-19'),
(24, 16, '2023-10-19'),
(25, 16, '2023-10-19'),
(26, 16, '2023-10-19'),
(27, 16, '2023-10-19'),
(28, 19, '2023-12-06'),
(29, 19, '2023-12-06'),
(30, 19, '2023-12-06'),
(31, 19, '2023-12-06'),
(32, 19, '2023-12-06'),
(33, 19, '2023-12-06'),
(34, 19, '2023-12-06'),
(35, 19, '2023-12-06'),
(36, 19, '2023-12-06'),
(37, 19, '2023-12-06'),
(38, 19, '2023-12-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `developer` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_release` date NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `harga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `developer`, `deskripsi`, `foto`, `tanggal_release`, `publisher`, `harga`) VALUES
(1, 'Nike Dunk Panda', 'Nike.Ltd', 'A Shoe  of Dunk Series Form Nike, The Name Is Nike Dunk Panda', 'Nike Dunk Low Panda.jpeg', '2015-03-10', 'Nike', 259999),
(2, 'Adidas Samba OG', 'Adidas.Corp', 'A Shoe  of Adidas Series , The Name Is Adidas Samba OG', 'Adidas Samba OG.jpeg', '2020-03-20', 'Adidas', 329999),
(3, 'Nike Airmax 97', 'Nike.Ltd', 'A Shoe  of Sport Series Form Nike, The Name Is Airmax 97', 'Nike Air Max 97.jpeg', '2015-11-10', 'Nike', 266000),
(4, 'NB 2002r Suede', 'New Balance', 'A Shoe Form New Balance, The Name Is NB 2002r Suede', 'New Balance 2002r.jpeg', '2019-10-25', 'New Balance', 812000),
(5, 'Converse Chuck 70s', 'Converse.Ltd', 'A Shoe  of Casual Series Form Convers, The Name Is Converse Chuck 70s', 'Converse Chuck 70s.jpeg', '2013-10-07', 'Converse', 873000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_beli`
--

CREATE TABLE `status_beli` (
  `id_status_beli` int(11) NOT NULL,
  `id_pembelian_produk` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` enum('pelanggan','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_pelanggan`, `tanggal_lahir`, `gender`, `alamat`, `username`, `pass`, `level`) VALUES
(1, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(2, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(3, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(5, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(7, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(8, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(9, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(10, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(11, 'brey', '2023-10-27', 'L', 'Tulungagung', 'idk', 'idk', 'pelanggan'),
(15, 'Joko', '2023-10-20', 'L', 'Pasuruan', 'nein', '9', 'admin'),
(16, 'Daniel', '2023-10-26', 'L', 'Tulungagung', 'ADMIN', '123', 'admin'),
(17, 'Tes2', '2023-10-18', 'P', 'eee', 'tes2', '123', 'pelanggan'),
(18, 'tes3', '2023-10-18', 'L', 'ddd', 'tes3', '123', 'pelanggan'),
(19, 'Rafa', '2023-12-20', 'L', 'Malang', 'Rafa', 'rafa123', 'pelanggan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pembelian_produk`
--
ALTER TABLE `detail_pembelian_produk`
  ADD PRIMARY KEY (`id_detail_pembelian_produk`),
  ADD KEY `id_pembelian_game` (`id_pembelian_produk`,`id_produk`),
  ADD KEY `id_game` (`id_produk`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `status_beli`
--
ALTER TABLE `status_beli`
  ADD PRIMARY KEY (`id_status_beli`),
  ADD KEY `id_pembelian_game` (`id_pembelian_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_pembelian_produk`
--
ALTER TABLE `detail_pembelian_produk`
  MODIFY `id_detail_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `status_beli`
--
ALTER TABLE `status_beli`
  MODIFY `id_status_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_pembelian_produk`
--
ALTER TABLE `detail_pembelian_produk`
  ADD CONSTRAINT `detail_pembelian_produk_ibfk_1` FOREIGN KEY (`id_pembelian_produk`) REFERENCES `pembelian_produk` (`id_pembelian_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pembelian_produk_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_Produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pembelian_produk_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `pembelian_produk` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD CONSTRAINT `pembelian_produk_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `status_beli`
--
ALTER TABLE `status_beli`
  ADD CONSTRAINT `status_beli_ibfk_1` FOREIGN KEY (`id_pembelian_produk`) REFERENCES `detail_pembelian_produk` (`id_pembelian_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
