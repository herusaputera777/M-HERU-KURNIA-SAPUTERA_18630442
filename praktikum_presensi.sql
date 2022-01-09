-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.35-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table praktikum_presensi.bagian: ~3 rows (approximately)
/*!40000 ALTER TABLE `bagian` DISABLE KEYS */;
REPLACE INTO `bagian` (`id`, `nama_bagian`, `karyawan_id`, `lokasi_id`) VALUES
	(1, 'Autentikasi', 5, 1),
	(2, 'Data Science', 3, 1),
	(3, 'Backend Developer', 6, 2);
/*!40000 ALTER TABLE `bagian` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi.bagian_karyawan: ~6 rows (approximately)
/*!40000 ALTER TABLE `bagian_karyawan` DISABLE KEYS */;
REPLACE INTO `bagian_karyawan` (`id`, `bagian_id`, `karyawan_id`, `tanggal_mulai`) VALUES
	(1, 1, 5, '2018-03-03'),
	(2, 2, 3, '2018-04-01'),
	(3, 3, 6, '2018-04-04'),
	(4, 1, 4, '2018-03-03'),
	(5, 2, 7, '2018-04-01'),
	(6, 3, 8, '2018-04-04');
/*!40000 ALTER TABLE `bagian_karyawan` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi.jabatan: ~5 rows (approximately)
/*!40000 ALTER TABLE `jabatan` DISABLE KEYS */;
REPLACE INTO `jabatan` (`id`, `nama_jabatan`, `gapok_jabatan`, `tunjangan_jabatan`, `uang_makan_perhari`) VALUES
	(1, 'System Analyst', 2400000, 500000, 40000),
	(2, 'Project Manager', 2300000, 450000, 38000),
	(3, 'Senior Programmer', 2200000, 400000, 36000),
	(4, 'Junior Programmer', 2100000, 350000, 34000),
	(5, 'Magang', 1000000, 100000, 20000);
/*!40000 ALTER TABLE `jabatan` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi.jabatan_karyawan: ~17 rows (approximately)
/*!40000 ALTER TABLE `jabatan_karyawan` DISABLE KEYS */;
REPLACE INTO `jabatan_karyawan` (`id`, `jabatan_id`, `karyawan_id`, `tanggal_mulai`) VALUES
	(1, 5, 3, '2013-03-03'),
	(2, 4, 3, '2014-04-01'),
	(3, 5, 4, '2014-04-04'),
	(4, 3, 3, '2015-05-04'),
	(5, 4, 4, '2015-05-05'),
	(6, 5, 5, '2015-05-05'),
	(7, 2, 3, '2015-06-01'),
	(8, 3, 4, '2015-06-02'),
	(9, 4, 5, '2015-06-03'),
	(10, 5, 6, '2015-06-06'),
	(11, 1, 3, '2017-07-01'),
	(12, 2, 4, '2017-07-02'),
	(13, 3, 5, '2017-07-02'),
	(14, 4, 6, '2017-07-02'),
	(15, 5, 7, '2017-07-07'),
	(16, 4, 7, '2018-08-02'),
	(17, 5, 8, '2018-08-08');
/*!40000 ALTER TABLE `jabatan_karyawan` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi.karyawan: ~8 rows (approximately)
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
REPLACE INTO `karyawan` (`id`, `nik`, `nama_lengkap`, `handphone`, `email`, `tanggal_masuk`, `pengguna_id`) VALUES
	(1, '001', 'Admin', '08112011', 'admin@mail.com', '2011-01-01', 1),
	(2, '002', 'Tes User', '08112012', 'user@mail.com', '2012-02-02', 2),
	(3, '003', 'John Doe', '08112013', 'john@mail.com', '2013-03-03', 3),
	(4, '004', 'Fulan Bin Fulan', '08112014', 'fulan@mail.com', '2014-04-04', 4),
	(5, '005', 'Mawar Kurniani', '08112015', 'mawar@mail.com', '2015-05-05', 5),
	(6, '006', 'Melati Rahmawati', '08112016', 'melati@mail.com', '2016-06-06', 6),
	(7, '007', 'Dahlia Setiani', '08112017', 'dahlia@mail.com', '2017-07-07', 7),
	(8, '008', 'Lily Handayani', '08112018', 'lily@mail.com', '2018-08-08', 8);
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi.lokasi: ~3 rows (approximately)
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
REPLACE INTO `lokasi` (`id`, `nama_lokasi`, `alamat`) VALUES
	(1, 'Kota Banjarmasin', ''),
	(2, 'Kota satui', ''),
	(3, 'Kabupaten Banjar', '');
/*!40000 ALTER TABLE `lokasi` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi.penggajian: ~18 rows (approximately)
/*!40000 ALTER TABLE `penggajian` DISABLE KEYS */;
REPLACE INTO `penggajian` (`id`, `karyawan_id`, `tahun`, `bulan`, `gapok`, `tunjangan`, `uang_makan`) VALUES
	(1, 3, '2020', '11', 2400000, 500000, 800000),
	(2, 4, '2020', '11', 2300000, 450000, 684000),
	(3, 5, '2020', '11', 2200000, 400000, 684000),
	(4, 6, '2020', '11', 2100000, 350000, 640000),
	(5, 7, '2020', '11', 2100000, 350000, 612000),
	(6, 8, '2020', '11', 1000000, 100000, 380000),
	(7, 3, '2020', '12', 2400000, 500000, 800000),
	(8, 4, '2020', '12', 2300000, 450000, 722000),
	(9, 5, '2020', '12', 2200000, 400000, 720000),
	(10, 6, '2020', '12', 2100000, 350000, 680000),
	(11, 7, '2020', '12', 2100000, 350000, 646000),
	(12, 8, '2020', '12', 1000000, 100000, 360000),
	(13, 3, '2021', '01', 2400000, 500000, 800000),
	(14, 4, '2021', '01', 2300000, 450000, 722000),
	(15, 5, '2021', '01', 2200000, 400000, 612000),
	(16, 6, '2021', '01', 2100000, 350000, 680000),
	(17, 7, '2021', '01', 2100000, 350000, 646000),
	(18, 8, '2021', '01', 1000000, 100000, 340000);
/*!40000 ALTER TABLE `penggajian` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi.pengguna: ~8 rows (approximately)
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
REPLACE INTO `pengguna` (`id`, `username`, `password`, `peran`, `login_terakhir`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ADMIN', NULL),
	(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'USER', NULL),
	(3, 'johndoe', '6579e96f76baa00787a28653876c6127', 'USER', NULL),
	(4, 'fulanbinfulan', '7c232f58f03f6d00c8d28166fbff7a8b', 'USER', NULL),
	(5, 'mawar', 'bd117502364227fd8c09098d31e11313', 'USER', NULL),
	(6, 'melati', '27e80ebc907bd57004986be9e6f2dd83', 'USER', NULL),
	(7, 'dahlia', 'ee11cbb19052e40b07aac0ca060c23ee', 'USER', NULL),
	(8, 'lily', '89f288757f4d0693c99b007855fc075e', 'USER', NULL);
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;

-- Dumping data for table praktikum_presensi.presensi: ~66 rows (approximately)
/*!40000 ALTER TABLE `presensi` DISABLE KEYS */;
REPLACE INTO `presensi` (`id`, `karyawan_id`, `tanggal`, `jam_masuk`, `jam_keluar`, `keterangan`) VALUES
	(1, 3, '2020-11-01', NULL, NULL, ''),
	(2, 3, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(3, 3, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
	(4, 3, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
	(5, 3, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
	(6, 3, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
	(7, 3, '2020-11-07', NULL, NULL, ''),
	(8, 3, '2020-11-08', NULL, NULL, ''),
	(9, 3, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
	(10, 3, '2020-11-10', NULL, NULL, 'LIBUR NASIONAL'),
	(11, 3, '2020-11-11', '08:00:00', '16:00:00', 'HADIR'),
	(12, 3, '2020-11-12', '08:00:00', '16:00:00', 'HADIR'),
	(13, 3, '2020-11-13', '08:00:00', '16:00:00', 'HADIR'),
	(14, 3, '2020-11-14', NULL, NULL, ''),
	(15, 3, '2020-11-15', NULL, NULL, ''),
	(16, 3, '2020-11-16', '08:00:00', '16:00:00', 'HADIR'),
	(17, 3, '2020-11-17', '08:00:00', '16:00:00', 'HADIR'),
	(18, 3, '2020-11-18', '08:00:00', '16:00:00', 'HADIR'),
	(19, 3, '2020-11-19', '08:00:00', '16:00:00', 'HADIR'),
	(20, 3, '2020-11-20', '08:00:00', '16:00:00', 'HADIR'),
	(21, 3, '2020-11-21', NULL, NULL, ''),
	(22, 3, '2020-11-22', NULL, NULL, ''),
	(23, 3, '2020-11-23', '08:00:00', '16:00:00', 'HADIR'),
	(24, 3, '2020-11-24', '08:00:00', '16:00:00', 'HADIR'),
	(25, 3, '2020-11-25', '08:00:00', '16:00:00', 'HADIR'),
	(26, 3, '2020-11-26', '08:00:00', '16:00:00', 'HADIR'),
	(27, 3, '2020-11-27', '08:00:00', '16:00:00', 'HADIR'),
	(28, 3, '2020-11-28', NULL, NULL, ''),
	(29, 3, '2020-11-29', NULL, NULL, ''),
	(30, 3, '2020-11-30', '08:00:00', '16:00:00', 'HADIR'),
	(31, 3, '2020-12-01', '08:00:00', '16:00:00', 'HADIR'),
	(32, 3, '2020-12-02', '08:00:00', '16:00:00', 'HADIR'),
	(33, 3, '2020-12-03', '08:00:00', '16:00:00', 'HADIR'),
	(34, 3, '2020-12-04', '08:00:00', '16:00:00', 'HADIR'),
	(35, 3, '2020-12-05', NULL, NULL, ''),
	(36, 3, '2020-12-06', NULL, NULL, ''),
	(37, 3, '2020-12-07', '08:00:00', '16:00:00', 'HADIR'),
	(38, 3, '2020-12-08', '08:00:00', '16:00:00', 'HADIR'),
	(39, 3, '2020-12-09', NULL, NULL, 'LIBUR NASIONAL'),
	(40, 3, '2020-12-10', '08:00:00', '16:00:00', 'HADIR'),
	(41, 3, '2020-12-11', '08:00:00', '16:00:00', 'HADIR'),
	(42, 3, '2020-12-12', NULL, NULL, ''),
	(43, 3, '2020-12-13', NULL, NULL, ''),
	(44, 3, '2020-12-14', '08:00:00', '16:00:00', 'HADIR'),
	(45, 3, '2020-12-15', '08:00:00', '16:00:00', 'HADIR'),
	(46, 3, '2020-12-16', '08:00:00', '16:00:00', 'HADIR'),
	(47, 3, '2020-12-17', '08:00:00', '16:00:00', 'HADIR'),
	(48, 3, '2020-12-18', '08:00:00', '16:00:00', 'HADIR'),
	(49, 3, '2020-12-19', NULL, NULL, ''),
	(50, 3, '2020-12-20', NULL, NULL, ''),
	(51, 3, '2020-12-21', '08:00:00', '16:00:00', 'HADIR'),
	(52, 3, '2020-12-22', '08:00:00', '16:00:00', 'HADIR'),
	(53, 3, '2020-12-23', '08:00:00', '16:00:00', 'HADIR'),
	(54, 3, '2020-11-01', NULL, NULL, ''),
	(55, 3, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(56, 3, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
	(57, 3, '2020-11-04', '08:00:00', '16:00:00', 'HADIR'),
	(58, 3, '2020-11-05', '08:00:00', '16:00:00', 'HADIR'),
	(59, 3, '2020-11-06', '08:00:00', '16:00:00', 'HADIR'),
	(60, 3, '2020-11-07', NULL, NULL, ''),
	(61, 3, '2020-11-08', NULL, NULL, ''),
	(62, 3, '2020-11-09', '08:00:00', '16:00:00', 'HADIR'),
	(63, 3, '2020-11-01', NULL, NULL, ''),
	(64, 3, '2020-11-02', '08:00:00', '16:00:00', 'HADIR'),
	(65, 3, '2020-11-03', '08:00:00', '16:00:00', 'HADIR'),
	(66, 3, '2020-11-04', '08:00:00', '16:00:00', 'HADIR');
/*!40000 ALTER TABLE `presensi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
