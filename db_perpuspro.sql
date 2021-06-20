-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2021 pada 15.37
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpuspro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'operator', 'operator', 'Petugas', 'gambar_admin/avatar5.png'),
(2, 'mihrawardana', 'mihrawardana', 'Mihra Wardana', 'gambar_admin/foto.jpg'),
(3, 'admin', 'admin', 'Admin Perpustakaan PENS', 'gambar_admin/ssamson.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id` int(4) NOT NULL,
  `no_induk` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `no_induk`, `nama`, `username`, `password`, `jk`, `kelas`, `ttl`, `alamat`, `foto`) VALUES
(2, 'anggota@gmail.com', 'anggota', 'anggota', 'anggota', 'P', '10', 'Konawe, 12 09 1999', 'Semarang', 'gambar_anggota/IMG-20191104-WA0043.jpg'),
(20, 'user@gmail.com', 'user', 'user', 'user', 'L', '39', 'Mandonga, 28 03 1887', 'Mandonga', ''),
(22, 'cahyaningrtn@gmail.com', 'retno', 'retno', 'retno', 'P', '21', 'Jombang, 26 Maret 2000', 'Jombang', 'gambar_anggota/pp.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `th_terbit` varchar(4) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah_buku` int(2) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tgl_input` varchar(75) NOT NULL,
  `gambar` text NOT NULL,
  `link_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_buku`
--

INSERT INTO `data_buku` (`id`, `judul`, `pengarang`, `th_terbit`, `penerbit`, `isbn`, `kategori`, `jumlah_buku`, `asal`, `tgl_input`, `gambar`, `link_buku`) VALUES
(25, 'Proposal KIBM Cahya Education', 'Cahyaning Retno ', '2020', 'PENS', '251617', 'Proposal', 36, 'Koleksi PerpustakaanKU', '2021/06/16', 'gambar_buku/Cahya_Colour.jpg', 'https://drive.google.com/file/d/1g1HnfcjHvcPULcTtUA9HKPbLPyoolYG3/view?usp=sharing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(17) NOT NULL,
  `perlu1` varchar(15) NOT NULL,
  `cari` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl_kunjung` date NOT NULL,
  `jam_kunjung` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `jk`, `kelas`, `perlu1`, `cari`, `saran`, `tgl_kunjung`, `jam_kunjung`) VALUES
(10, 'Mihra Wardana', 'P', '19', 'Mencari referen', 'Buku yang berkaitan dengan komputer', 'Agar menyediakan lebih banyak buku referensi, sehingga kami dapat menemukan referensi sesuai kebutuhan kami', '2021-02-01', '14:35:53'),
(11, 'Wardana', 'P', '21', 'Membaca', 'Novel', 'Sebaiknya jumlah  referensi lebih ditingkatkan', '2021-02-01', '14:43:30'),
(12, 'Fitri Handayani ', 'P', '21', 'meminjam buku', 'buku pemrograman', '', '2021-06-07', '03:54:41'),
(13, 'firlyana ', 'P', '21', 'meminjam buku', 'buku pemrograman', 'kurang ramah', '2021-06-16', '06:26:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
