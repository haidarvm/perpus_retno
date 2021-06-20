-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: perpus
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB-1:10.5.10+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'operator','06e55b633481f7bb072957eabcf110c972e86691c3cfedabe088024bffe42f23','Petugas','gambar_admin/avatar5.png'),(2,'mihrawardana','be4bebf29782943c9ede50f14abc9e86bf85732a528a52547d842c3fddc69728','Mihra Wardana','gambar_admin/foto.jpg'),(3,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','Admin Perpustakaan PENS','gambar_admin/ssamson.jpg');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_anggota`
--

DROP TABLE IF EXISTS `data_anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_anggota` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_induk` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_anggota`
--

LOCK TABLES `data_anggota` WRITE;
/*!40000 ALTER TABLE `data_anggota` DISABLE KEYS */;
INSERT INTO `data_anggota` VALUES (2,'anggota@gmail.com','anggota','anggota','d2db645a610dc061b4ace3f4fd438eef9893b69eeaffe7f94014724da87a9e72','P','10','Konawe, 12 09 1999','Semarang','gambar_anggota/avatar.jpg'),(20,'user@gmail.com','user','user','user','L','39','Mandonga, 28 03 1887','Mandonga',''),(22,'cahyaningrtn@gmail.com','retno','retno','retno','P','21','Jombang, 26 Maret 2000','Jombang','gambar_anggota/pp.jpg');
/*!40000 ALTER TABLE `data_anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_buku`
--

DROP TABLE IF EXISTS `data_buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `th_terbit` varchar(250) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `isbn` varchar(250) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah_buku` varchar(250) NOT NULL,
  `asal` varchar(250) NOT NULL,
  `tgl_input` varchar(75) NOT NULL,
  `gambar` text NOT NULL,
  `link_buku` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_buku`
--

LOCK TABLES `data_buku` WRITE;
/*!40000 ALTER TABLE `data_buku` DISABLE KEYS */;
INSERT INTO `data_buku` VALUES (25,'Proposal KIBM Cahya Education','Cahyaning Retno ','2020','PENS','251617','Proposal','36','Koleksi PerpustakaanKU','2021/06/16','gambar_buku/Cahya_Colour.jpg','https://drive.google.com/file/d/1g1HnfcjHvcPULcTtUA9HKPbLPyoolYG3/view?usp=sharing'),(26,'C1hVzNMRHdWBPC1FVGQ1ATzYo2TRcc5upUwgKPval58=','xy0B6fC7aK1yICvMA9grhbfsvjzgoEed','JorjrhxHNz0=','q7PPnVx9kvc=','WVUUx3QRiUs=','C1hVzNMRHdW37L484KBHnQ==','5x5np9VgciI=','zlciSRJ/ef8XuUsEd9aCEVD4qEqupuhW','t+y+POCgR50=','jSqRUmTUhelbkVff31QfZJd2N85mfhNE','rQ1WzvPhIWL43PyfMHFtfJ+5i4EQuzfOozQUdQ8C8dpYIUrkHyrLNk4MhnqR/8r6PM+qt1casktrdWxqCVh5bUqmnuSi0VMUraq2axblPFjogFnazygLMQ==');
/*!40000 ALTER TABLE `data_buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengunjung`
--

DROP TABLE IF EXISTS `pengunjung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengunjung` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(17) NOT NULL,
  `perlu1` varchar(15) NOT NULL,
  `cari` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl_kunjung` date NOT NULL,
  `jam_kunjung` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengunjung`
--

LOCK TABLES `pengunjung` WRITE;
/*!40000 ALTER TABLE `pengunjung` DISABLE KEYS */;
INSERT INTO `pengunjung` VALUES (10,'Mihra Wardana','P','19','Mencari referen','Buku yang berkaitan dengan komputer','Agar menyediakan lebih banyak buku referensi, sehingga kami dapat menemukan referensi sesuai kebutuhan kami','2021-02-01','14:35:53'),(11,'Wardana','P','21','Membaca','Novel','Sebaiknya jumlah  referensi lebih ditingkatkan','2021-02-01','14:43:30'),(12,'Fitri Handayani ','P','21','meminjam buku','buku pemrograman','','2021-06-07','03:54:41'),(13,'firlyana ','P','21','meminjam buku','buku pemrograman','kurang ramah','2021-06-16','06:26:44'),(14,'haidar','L','35','cek','cek','cek','2021-06-19','21:32:40'),(15,'dini','L','34','test','test','test','2021-06-19','22:00:01');
/*!40000 ALTER TABLE `pengunjung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20 18:27:28
