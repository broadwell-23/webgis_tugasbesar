-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2016 at 04:34 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `2016_webgis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `level` enum('KEPALA DINAS','KEPALA BIDANG','ADMIN','OPERATOR') NOT NULL,
  `active` enum('1','0') NOT NULL,
  `last_activity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`, `nama_lengkap`, `level`, `active`, `last_activity`) VALUES
('administrator', 'e10adc3949ba59abbe56e057f20f883e', 'Administrator', 'ADMIN', '1', '2015-08-01 00:00:00'),
('operator1', 'e10adc3949ba59abbe56e057f20f883e', 'Operator 1', 'OPERATOR', '1', '2015-11-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_desa`
--

CREATE TABLE IF NOT EXISTS `tb_desa` (
`id_desa` int(5) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `id_kecamatan` varchar(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_desa`
--

INSERT INTO `tb_desa` (`id_desa`, `nama_desa`, `id_kecamatan`) VALUES
(1, 'Kuala Dua', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kecamatan`
--

CREATE TABLE IF NOT EXISTS `tb_kecamatan` (
`id_kecamatan` int(5) NOT NULL,
  `nama_kecamatan` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_kecamatan`
--

INSERT INTO `tb_kecamatan` (`id_kecamatan`, `nama_kecamatan`) VALUES
(1, 'Sungai Raya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_link`
--

CREATE TABLE IF NOT EXISTS `tb_link` (
`id_link` int(5) NOT NULL,
  `nama_link` varchar(200) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_link`
--

INSERT INTO `tb_link` (`id_link`, `nama_link`, `url`) VALUES
(1, 'Website PRODI INFORMATIKA', 'http://informatika.untan.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengaturan`
--

CREATE TABLE IF NOT EXISTS `tb_pengaturan` (
`id` int(1) NOT NULL,
  `beranda` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_pengaturan`
--

INSERT INTO `tb_pengaturan` (`id`, `beranda`) VALUES
(1, '<h1 style="font-style: italic;"><span style="font-size:36px"><span style="font-family:arial,helvetica,sans-serif">ISI HALAMAN BERANDA</span></span></h1>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sambungan`
--

CREATE TABLE IF NOT EXISTS `tb_sambungan` (
`id_sambungan` int(5) NOT NULL,
  `no_pelanggan` varchar(20) NOT NULL,
  `titik_gps` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `id_desa` varchar(50) NOT NULL,
  `id_kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `kelompok` varchar(50) NOT NULL,
  `foto` text NOT NULL,
  `x` varchar(50) NOT NULL,
  `y` varchar(50) NOT NULL,
  `update_data` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=827 ;

--
-- Dumping data for table `tb_sambungan`
--

INSERT INTO `tb_sambungan` (`id_sambungan`, `no_pelanggan`, `titik_gps`, `nama_pelanggan`, `alamat`, `id_desa`, `id_kecamatan`, `kabupaten`, `status`, `kelompok`, `foto`, `x`, `y`, `update_data`) VALUES
(1, '', '35', 'PDAM KUALA DUA', '', '1', '1', 'Kubu Raya', '', 'KANTOR/INTAKE', '035b.jpg', '-0.14706164841', '109.41496124900', 'Agustus 2016'),
(2, '30000100040', '36', 'NOERLIA FAJARINI', 'PARIT JEPANG NO.75', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '036b.jpg', '-0.14672230944', '109.41478158800', 'Agustus 2016'),
(3, '30000100025', '37', 'WARHADI', 'KOMP. PRT JEPANG N0. 80', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '037b.jpg', '-0.14679703804', '109.41461536300', 'Agustus 2016'),
(4, '30000100036', '38', 'MOHAMMAD SYAMSUL.B', 'PARIT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '038b.jpg', '-0.14697788330', '109.41430676500', 'Agustus 2016'),
(5, '30000100176', '39', 'HJ.NURSIAH', 'JL.PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '039b.jpg', '-0.14714647868', '109.41437430600', 'Agustus 2016'),
(6, '30000100282', '40', 'HJ.NURSIAH', 'GG.SALSABILAH RT 07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '040b.jpg', '-0.14718432967', '109.41438979900', 'Agustus 2016'),
(7, '30000100281', '41', 'M.DJARKASI', 'PRT JEPANG SALSABILAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '041b.jpg', '-0.14724962364', '109.41443243100', 'Agustus 2016'),
(8, '30000100278', '42', 'TUTI SISWATI', 'GG.SALSABILAH RT 07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '042b.jpg', '-0.14729985295', '109.41445047100', 'Agustus 2016'),
(9, '30000100279', '43', 'ERWAN', 'GG.SALSABILAH RT 07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '043b.jpg', '-0.14737114517', '109.41449248000', 'Agustus 2016'),
(10, '30000100280', '44', 'A.RAHIM RAIS', 'PRT JEPANG SALSABILAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '044b.jpg', '-0.14742204934', '109.41452124300', 'Agustus 2016'),
(11, '30000100450', '45', 'HJ.NURSIAH', 'GG.SALSABILAH NO. 7 DEAKT PDAM', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '045b.jpg', '-0.14748106746', '109.41455671500', 'Agustus 2016'),
(12, '30000100451', '46', 'HJ.NURSIAH', 'GG.SALSABILAH NO.9 DEKAT PDAM', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '046b.jpg', '-0.14759306957', '109.41462772100', 'Agustus 2016'),
(13, '30000200447', '47', 'AGUS', 'ANGKASA PERMAI LESTARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '047b.jpg', '-0.14790888550', '109.41419176200', 'Agustus 2016'),
(14, '30000200057', '48', 'TOTO WARSITO', 'ANGKASA PERMAI UJUNG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '048b.jpg', '-0.14779685077', '109.41411509000', 'Agustus 2016'),
(15, '30000200246', '49', 'DIYONO', 'ANGKASA PERMAI UJUNG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '049b.jpg', '-0.14774091502', '109.41418614400', 'Agustus 2016'),
(16, '30000200058', '50', 'A.RANI', 'G.LESTARI PERMAI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '050b.jpg', '-0.14766906457', '109.41430141400', 'Agustus 2016'),
(17, '30000200368', '51', 'SRI MAMI', 'ANGKASA PERMAI NO.101', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '051b.jpg', '-0.14749423694', '109.41435207300', 'Agustus 2016'),
(18, '30000200055', '52', 'ZULHEPNI', 'ANGKASA PERMAI N0.99', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '052b.jpg', '-0.14758682346', '109.41419664000', 'Agustus 2016'),
(19, '30000200049', '53', 'MUDJI SETIYONO', 'ANGKASA PERMAI N0.87', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '053b.jpg', '-0.14764263406', '109.41411007500', 'Agustus 2016'),
(20, '30000200053', '54', 'KACUNG', 'ANGKASA PERMAI N0.97', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '054b.jpg', '-0.14767523235', '109.41405388000', 'Agustus 2016'),
(21, '30000400200', '55', 'CIPLUK SUSIAH', 'PARIT JEPANG RT 07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '055b.jpg', '-0.14771598318', '109.41396696700', 'Agustus 2016'),
(22, '30000200436', '56', 'ABDUL HAPI', 'ANGKASA PERMAI NO.88', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '056b.jpg', '-0.14777144551', '109.41388469100', 'Agustus 2016'),
(23, '30000200052', '58', 'PURWOKO BUTSIYANTO', 'ANGKASA PERMAI N0.95', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '058b.jpg', '-0.14785891723', '109.41373244600', 'Agustus 2016'),
(24, '30000200056', '59', 'NOVITA SARI', 'ANGKASA PERMAI N0.92', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '059b.jpg', '-0.14771999044', '109.41366196000', 'Agustus 2016'),
(25, '30000200051', '60', 'HERRYANSYAH', 'ANGKASA PERMAI N0.91', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '060b.jpg', '-0.14766377428', '109.41373469200', 'Agustus 2016'),
(26, '30000100293', '61', 'KHOIRUL ANAM', 'PRT JEPANG ANGKASA RT 07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '061b.jpg', '-0.14757346352', '109.41388034000', 'Agustus 2016'),
(27, '30000200054', '62', 'R.BAMBANG SETIO BUDI', 'ANGKASA PERMAI N0.98', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '062b.jpg', '-0.14752393157', '109.41396025400', 'Agustus 2016'),
(28, '30000200048', '63', 'SANIAH DALI', 'ANGKASA PERMAI N0.86', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '063b.jpg', '-0.14747270393', '109.41403402800', 'Agustus 2016'),
(29, '30000200245', '64', 'SUPARNO', 'ANGKASA PERMAI NO.87', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '064b.jpg', '-0.14743267352', '109.41410712900', 'Agustus 2016'),
(30, '30000200244', '65', 'WASIS PRAYETNO', 'ANGKASA PERMAI NO.85', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '065b.jpg', '-0.14738598183', '109.41417343600', 'Agustus 2016'),
(31, '30000200202', '66', 'HALASSON TAMBUNAN', 'G.LESTARI PERMAI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '066b.jpg', '-0.14734368338', '109.41426832600', 'Agustus 2016'),
(32, '30000200243', '67', 'NURJANAH', 'ANGKASA PERMAI NO.84', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '067b.jpg', '-0.14723221622', '109.41421098100', 'Agustus 2016'),
(33, '30000200046', '68', 'SARLAN', 'ANGKASA PERMAI N0.83', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '068b.jpg', '-0.14728237384', '109.41412041200', 'Agustus 2016'),
(34, '30000200047', '69', 'SUTRISNO', 'ANGKASA PERMAI N0.82', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '069b.jpg', '-0.14732237151', '109.41405998400', 'Agustus 2016'),
(35, '30000200170', '70', 'DEMSON SITINJAK', 'G.LESTARI PERMAI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '070b.jpg', '-0.14737553828', '109.41397337000', 'Agustus 2016'),
(36, '30000200045', '71', 'JOHANES NUGRAHA AGIL.H', 'ANGKASA PERMAI N0.81', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '071b.jpg', '-0.14741196287', '109.41391673700', 'Agustus 2016'),
(37, '30001100577', '72', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '072b.jpg', '-0.14825152044', '109.41566858500', 'Agustus 2016'),
(38, '30001100578', '73', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '073b.jpg', '-0.14824628361', '109.41571810600', 'Agustus 2016'),
(39, '30001100579', '74', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '074b.jpg', '-0.14823926697', '109.41576491200', 'Agustus 2016'),
(40, '30001100658', '75', 'VILA ANUGRAH PERMAI 4', 'VILA ANUGRAH GG. SRI USMAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '075b.jpg', '-0.14833128473', '109.41590498800', 'Agustus 2016'),
(41, '30001100580', '76', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '076b.jpg', '-0.14821691127', '109.41596774400', 'Agustus 2016'),
(42, '30001100581', '77', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '077b.jpg', '-0.14821605772', '109.41601498300', 'Agustus 2016'),
(43, '30001100582', '78', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '078b.jpg', '-0.14820658189', '109.41606979900', 'Agustus 2016'),
(44, '30001100583', '79', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '079b.jpg', '-0.14819542829', '109.41616743400', 'Agustus 2016'),
(45, '30001100584', '80', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '080b.jpg', '-0.14818776272', '109.41622686600', 'Agustus 2016'),
(46, '30001100585', '81', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '081b.jpg', '-0.14818666525', '109.41628299700', 'Agustus 2016'),
(47, '30001100659', '82', 'VILA ANUGRAH PERMAI 4', 'VILA ANUGRAH GG. SRI USMAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '082b.jpg', '-0.14817114964', '109.41637129300', 'Agustus 2016'),
(48, '30001100586', '83', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '083b.jpg', '-0.14816334869', '109.41641881200', 'Agustus 2016'),
(49, '30001100587', '84', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '084b.jpg', '-0.14815018181', '109.41655411600', 'Agustus 2016'),
(50, '30001100588', '85', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '085b.jpg', '-0.14814408322', '109.41663604000', 'Agustus 2016'),
(51, '30001100596', '86', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '086b.jpg', '-0.14822602356', '109.41664462400', 'Agustus 2016'),
(52, '30001100660', '87', 'SUSILAWATI', 'VILA ANUGRAH GG. SRI USMAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '087b.jpg', '-0.14823130119', '109.41657047900', 'Agustus 2016'),
(53, '30001100661', '88', 'SUBHAN', 'VILA ANUGRAH GG. SRI USMAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '088b.jpg', '-0.14824682195', '109.41643059600', 'Agustus 2016'),
(54, '30001100595', '89', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '089b.jpg', '-0.14825543904', '109.41638387200', 'Agustus 2016'),
(55, '30001100594', '90', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '090b.jpg', '-0.14827705987', '109.41628197800', 'Agustus 2016'),
(56, '', '91', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '091b.jpg', '-0.14828380400', '109.41622518100', 'Agustus 2016'),
(57, '30001100593', '92', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '092b.jpg', '-0.14831638529', '109.41607321200', 'Agustus 2016'),
(58, '30001100662', '93', 'VILA ANUGRAH PERMAI 4', 'VILA ANUGRAH GG. SRI USMAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '093b.jpg', '-0.14832174992', '109.41602975300', 'Agustus 2016'),
(59, '30001100663', '94', 'VILA ANUGRAH PERMAI 4', 'VILA ANUGRAH GG. SRI USMAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '094b.jpg', '-0.14832172367', '109.41597757400', 'Agustus 2016'),
(60, '30001100592', '95', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '095b.jpg', '-0.14833256326', '109.41585601400', 'Agustus 2016'),
(61, '30001100591', '96', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '096b.jpg', '-0.14835035297', '109.41578132000', 'Agustus 2016'),
(62, '30001100590', '97', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '097b.jpg', '-0.14835979164', '109.41573580000', 'Agustus 2016'),
(63, '30001100589', '98', 'VILA ANUGRAH PERMAI 4', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '098b.jpg', '-0.14836544198', '109.41568708700', 'Agustus 2016'),
(64, '30001100647', '99', 'FERINA KHARUNISA', 'VILA ANUGRAH GG. SRI USMAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '099b.jpg', '-0.14836623071', '109.41562894800', 'Agustus 2016'),
(65, '30001100556', '100', 'YUSUF BARI PRIYONO', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '100b.jpg', '-0.14873478537', '109.41472939400', 'Agustus 2016'),
(66, '30001100555', '101', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '101b.jpg', '-0.14872230524', '109.41479140100', 'Agustus 2016'),
(67, '30001100554', '102', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '102b.jpg', '-0.14870184831', '109.41487384400', 'Agustus 2016'),
(68, '30001100553', '103', 'SUYANTO', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '103b.jpg', '-0.14868958182', '109.41494499700', 'Agustus 2016'),
(69, '30001100552', '104', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '104b.jpg', '-0.14865702414', '109.41502363800', 'Agustus 2016'),
(70, '30001100535', '105', 'GALIH CANDRA', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '105b.jpg', '-0.14832516308', '109.41487730900', 'Agustus 2016'),
(71, '30001100536', '106', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '106b.jpg', '-0.14836399235', '109.41478332000', 'Agustus 2016'),
(72, '30001100537', '107', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '107b.jpg', '-0.14841825013', '109.41471145000', 'Agustus 2016'),
(73, '30001100538', '108', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '108b.jpg', '-0.14847250725', '109.41463059600', 'Agustus 2016'),
(74, '30001100539', '109', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '109b.jpg', '-0.14853411591', '109.41456236200', 'Agustus 2016'),
(75, '30001100540', '110', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '110b.jpg', '-0.14858704973', '109.41447843700', 'Agustus 2016'),
(76, '30001100541', '111', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '111b.jpg', '-0.14864683909', '109.41439636700', 'Agustus 2016'),
(77, '30001100542', '112', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '112b.jpg', '-0.14869449193', '109.41430607400', 'Agustus 2016'),
(78, '30001100543', '113', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '113b.jpg', '-0.14875005916', '109.41424757000', 'Agustus 2016'),
(79, '30001100544', '114', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '114b.jpg', '-0.14881630529', '109.41416027500', 'Agustus 2016'),
(80, '30001100545', '115', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '115b.jpg', '-0.14866841791', '109.41406288500', 'Agustus 2016'),
(81, '30001100546', '116', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '116b.jpg', '-0.14861571681', '109.41415360500', 'Agustus 2016'),
(82, '30001100547', '117', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '117b.jpg', '-0.14857314166', '109.41422202800', 'Agustus 2016'),
(83, '30001100548', '118', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '118b.jpg', '-0.14851350962', '109.41430057000', 'Agustus 2016'),
(84, '30001100549', '119', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '119b.jpg', '-0.14847521310', '109.41436893200', 'Agustus 2016'),
(85, '30001100550', '120', 'SUTIATI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '120b.jpg', '-0.14842054893', '109.41444832100', 'Agustus 2016'),
(86, '30001100551', '121', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '121b.jpg', '-0.14837335523', '109.41452565400', 'Agustus 2016'),
(87, '30001100534', '122', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '122b.jpg', '-0.14829562576', '109.41392470500', 'Agustus 2016'),
(88, '30001100533', '123', 'SATRIADI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '123b.jpg', '-0.14824827986', '109.41398701800', 'Agustus 2016'),
(89, '30001100532', '124', 'JOKO SUSILO', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '124b.jpg', '-0.14822102436', '109.41403965900', 'Agustus 2016'),
(90, '30001100531', '125', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '125b.jpg', '-0.14815652902', '109.41411588400', 'Agustus 2016'),
(91, '30000100493', '126', 'EKO SETIAWANTO', 'PARIT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '126b.jpg', '-0.14828410918', '109.41425035700', 'Agustus 2016'),
(92, '30001100530', '127', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '127b.jpg', '-0.14812232517', '109.41417905600', 'Agustus 2016'),
(93, '30001100529', '128', 'HAMDAN RIZKI SANTOSA', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '128b.jpg', '-0.14807455171', '109.41425332500', 'Agustus 2016'),
(94, '30001100528', '129', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '129b.jpg', '-0.14803584352', '109.41432332100', 'Agustus 2016'),
(95, '30001100527', '130', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '130b.jpg', '-0.14797507869', '109.41437909900', 'Agustus 2016'),
(96, '30001100526', '131', 'SUCIPTO', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '131b.jpg', '-0.14790273455', '109.41446893700', 'Agustus 2016'),
(97, '30001100525', '132', 'VILA ANUGRAH PERMAI', 'GG. SRI USMAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '132b.jpg', '-0.14786494878', '109.41453618800', 'Agustus 2016'),
(98, '30000300111', '133', 'SUTARI', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '133b.jpg', '-0.15258442539', '109.41279111700', 'Agustus 2016'),
(99, '', '134', '', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '134b.jpg', '-0.15257762095', '109.41220152000', 'Agustus 2016'),
(100, '30000300639', '135', 'SAGIRAN', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '135b.jpg', '-0.15238828558', '109.41195328700', 'Agustus 2016'),
(101, '30000300636', '136', 'DWI HATMOKO', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '136b.jpg', '-0.15206729155', '109.41152932500', 'Agustus 2016'),
(102, '30000300119', '137', 'SUGIARTO', 'GG. TEGAL SARI 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '137b.jpg', '-0.15175101607', '109.41184965400', 'Agustus 2016'),
(103, '30000300089', '138', 'SURAU NURUL IMAN', 'GG. TEGAL SARI 2 RT.08/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '138b.jpg', '-0.15169188396', '109.41157603900', 'Agustus 2016'),
(104, '30000300637', '139', 'BUKO PRIYATNO', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '139b.jpg', '-0.15154427248', '109.41095620900', 'Agustus 2016'),
(105, '30000300634', '140', 'EDI WAHYUDI APRIANDI', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '140b.jpg', '-0.15128282053', '109.41115625000', 'Agustus 2016'),
(106, '30000300638', '141', 'SULAIMAN', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '141b.jpg', '-0.15101536772', '109.41136146000', 'Agustus 2016'),
(107, '30000300635', '142', 'RUBIYAH', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '142b.jpg', '-0.15111504494', '109.41102032500', 'Agustus 2016'),
(108, '30000300641', '143', 'SUMERI', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '143b.jpg', '-0.15097725180', '109.41015457400', 'Agustus 2016'),
(109, '30000300640', '144', 'MARDIYANTO', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '144b.jpg', '-0.15084798667', '109.40997660300', 'Agustus 2016'),
(110, '', '145', '', 'GG. TEGAL SARI LINTANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '145b.jpg', '-0.15048469241', '109.41024213300', 'Agustus 2016'),
(111, '30000300091', '146', 'PONIRAH', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '146b.jpg', '-0.14986996720', '109.41041866200', 'Agustus 2016'),
(112, '30000300123', '147', 'FRANISCUS S.DIGDOYO', 'GG. TEGAL SARI 1 NO.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '147b.jpg', '-0.14974966751', '109.41052096500', 'Agustus 2016'),
(113, '30000300126', '148', 'NGATINEM', 'GG. TEGAL SARI 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '148b.jpg', '-0.14966549747', '109.41065176200', 'Agustus 2016'),
(114, '30000300283', '149', 'RACHMAH', 'GG. TEGAL SARI 1 NO.4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '149b.jpg', '-0.14956990662', '109.41068471700', 'Agustus 2016'),
(115, '30000300284', '150', 'SURATAJAYA', 'GG. TEGAL SARI 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '150b.jpg', '-0.14917978556', '109.41112280100', 'Agustus 2016'),
(116, '30000300166', '151', 'A. RANI', 'GG. TEGAL SARI 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '151b.jpg', '-0.14906696785', '109.41120219500', 'Agustus 2016'),
(117, '30000300064', '152', 'HENDRYK PRASTYO', 'GG. TEGAL SARI 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '152b.jpg', '-0.14891370322', '109.41129316000', 'Agustus 2016'),
(118, '30000300063', '153', 'TOYEP JAINAL AHMAD', 'GG. TEGAL SARI 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '153b.jpg', '-0.14875200763', '109.41160048600', 'Agustus 2016'),
(119, '30000300062', '154', 'ISROJA', 'GG.TEGAL SARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '154b.jpg', '-0.14860503948', '109.41168704600', 'Agustus 2016'),
(120, '30000300061', '155', 'SRI WAHYUNI', 'GG. TEGAL SARI 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '155b.jpg', '-0.14854633628', '109.41178046300', 'Agustus 2016'),
(121, '30000300199', '156', 'HADI WIBOWO', 'GG. TEGAL SARI 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '156b.jpg', '-0.14840687145', '109.41188693500', 'Agustus 2016'),
(122, '30000300087', '157', 'IGNATIUS SIGIT LULUH.T', 'GG. TEGAL SARI 2 NO.72', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '157b.jpg', '-0.15110493275', '109.41235219800', 'Agustus 2016'),
(123, '30000300084', '158', 'SITI ROHIBAH', 'GG. TEGAL SARI 2 RT08/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '158b.jpg', '-0.15097497674', '109.41246869500', 'Agustus 2016'),
(124, '30000300083', '159', 'HANDOKO', 'GG. TEGAL SARI 2 RT08/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '159b.jpg', '-0.15090357587', '109.41251402700', 'Agustus 2016'),
(125, '30000300085', '160', 'ERLINAWATI', 'GG. TEGAL SARI 2 RT08/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '160b.jpg', '-0.15069998339', '109.41234682800', 'Agustus 2016'),
(126, '30000400067', '161', 'HERI SETIAWAN', 'DE.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '161b.jpg', '-0.15083632543', '109.41257259900', 'Agustus 2016'),
(127, '30000300086', '162', 'SUYATNO', 'GG. TEGAL SARI 2 NO.79', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '162b.jpg', '-0.15081371737', '109.41263103700', 'Agustus 2016'),
(128, '30000400289', '163', 'PARTIYAH', 'DS.KERAMAT 1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '163b.jpg', '1.00000000000', '1.00000000000', 'Agustus 2016'),
(129, '30000400076', '164', 'SETIYO BUDI', 'DS.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '164b.jpg', '-0.15063193407', '109.41277465600', 'Agustus 2016'),
(130, '30000300181', '165', 'HERU WINDARTA', 'GG. TEGAL SARI 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '165b.jpg', '-0.15007100035', '109.41213860900', 'Agustus 2016'),
(131, '30000300093', '166', 'MUJIYANA', 'GG. TEGAL SARI 2  NO.57', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '166b.jpg', '-0.15013171929', '109.41221074800', 'Agustus 2016'),
(132, '30000300094', '167', 'ENDRO CAHYONO', 'GG. TEGAL SARI 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '167b.jpg', '-0.15021779700', '109.41232176000', 'Agustus 2016'),
(133, '30000300702', '168', 'SAR KAMAH', 'GG. TEGAL SARI II', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '168b.jpg', '-0.15008079129', '109.41253893700', 'Agustus 2016'),
(134, '30000300074', '169', 'SUGIONO', 'GG. TEGAL SARI 3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '169b.jpg', '-0.15030824042', '109.41239362000', 'Agustus 2016'),
(135, '30000400068', '170', 'SUJOTO', 'DE.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '170b.jpg', '-0.15036902061', '109.41301967000', 'Agustus 2016'),
(136, '30000300101', '171', 'SADIKUN', 'GG. MURBACH NO.89', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '171b.jpg', '-0.15222161934', '109.41224521600', 'Agustus 2016'),
(137, '30000300097', '172', 'YANTO', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '172b.jpg', '-0.15215842975', '109.41231188200', 'Agustus 2016'),
(138, '30000300102', '173', 'SUMIRAN', 'GG. MURBACH NO.91', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '173b.jpg', '-0.15231031367', '109.41254450500', 'Agustus 2016'),
(139, '30000300106', '174', 'ULIYATI', 'GG. MURBACH NO.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '174b.jpg', '-0.15223883669', '109.41261208600', 'Agustus 2016'),
(140, '30000300103', '175', 'TARUNI IS INDRIATI', 'GG. MURBACH NO.93', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '175b.jpg', '-0.15205369504', '109.41236654400', 'Agustus 2016'),
(141, '30000300090', '176', 'SAILAN', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '176b.jpg', '-0.15215369620', '109.41265006500', 'Agustus 2016'),
(142, '30000300096', '177', 'PARMI', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '177b.jpg', '-0.15191855826', '109.41247979800', 'Agustus 2016'),
(143, '30000300172', '178', 'DARWANTO', 'GG. MURBACH NO.96', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '178b.jpg', '-0.15210775324', '109.41271407400', 'Agustus 2016'),
(144, '30000300095', '179', 'ENDANG GUNAWAN', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '179b.jpg', '-0.15193608794', '109.41282864400', 'Agustus 2016'),
(145, '30000300104', '180', 'PURWADI', 'GG. MURBACH NO.99', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '180b.jpg', '-0.15142971012', '109.41288762100', 'Agustus 2016'),
(146, '30000300107', '181', 'KARSONO', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '181b.jpg', '-0.15126373207', '109.41294336800', 'Agustus 2016'),
(147, '30000300088', '182', 'NURCAHYANI', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '182b.jpg', '-0.15117771801', '109.41306573900', 'Agustus 2016'),
(148, '30000300100', '183', 'IWAN SUHADI', 'GG. MURBACH NO.48', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '183b.jpg', '-0.15109200015', '109.41315172900', 'Agustus 2016'),
(149, '30000300099', '184', 'TUGINO', 'GG. MURBACH NO.47', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '184b.jpg', '-0.15106229672', '109.41270691900', 'Agustus 2016'),
(150, '30000300105', '185', 'SONEM', 'GG. MURBACH NO.49', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '185b.jpg', '-0.15091721564', '109.41319342800', 'Agustus 2016'),
(151, '30000300173', '186', 'SURADI', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '186b.jpg', '-0.15085954304', '109.41376131100', 'Agustus 2016'),
(152, '30000300060', '187', 'H SADELI', 'GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '187b.jpg', '-0.15061581713', '109.41357939500', 'Agustus 2016'),
(153, '30000300098', '188', 'DJAMRO', 'GG. MURBACH NO.42', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '188b.jpg', '-0.15047708531', '109.41362554300', 'Agustus 2016'),
(154, '30000500645', '189', 'KURNIAWATI', 'DPN PESANTREN JL. RASAU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '189b.jpg', '-0.16909652658', '109.41530887900', 'Agustus 2016'),
(155, '30000500646', '190', 'ZAMRONI HASAN', 'DPN PESANTREN JL. RASAU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '190b.jpg', '-0.16896077365', '109.41536041300', 'Agustus 2016'),
(156, '30001000500', '191', 'THALITHA 1', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '191b.jpg', '-0.16359404035', '109.41663243300', 'Agustus 2016'),
(157, '30001000501', '192', 'THALITHA 2', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '192b.jpg', '-0.16364929496', '109.41645311900', 'Agustus 2016'),
(158, '30001000570', '193', 'THALITHA NO.B.4', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '193b.jpg', '-0.16366484443', '109.41634762600', 'Agustus 2016'),
(159, '30001000571', '194', 'THALITHA NO.B.5', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '194b.jpg', '-0.16370165611', '109.41624406000', 'Agustus 2016'),
(160, '30001000572', '195', 'THALITHA NO.B.6', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '195b.jpg', '-0.16373497586', '109.41614653700', 'Agustus 2016'),
(161, '30001000573', '196', 'THALITHA NO.B.7', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '196b.jpg', '-0.16376865568', '109.41605583700', 'Agustus 2016'),
(162, '30001000719', '197', 'THALITHA ', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '197b.jpg', '-0.16413522080', '109.41519469200', 'Agustus 2016'),
(163, '30001000718', '198', 'THALITHA ', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '198b.jpg', '-0.16411393125', '109.41529815800', 'Agustus 2016'),
(164, '', '199', 'MUSHOLLA', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R1B RI/B', '199b.jpg', '-0.16380070700', '109.41595206600', 'Agustus 2016'),
(165, '30001000511', '200', 'THALITHA 12', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '200b.jpg', '-0.16405552927', '109.41561082400', 'Agustus 2016'),
(166, '30001000510', '201', 'THALITHA 11', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '201b.jpg', '-0.16403076621', '109.41569913700', 'Agustus 2016'),
(167, '30001000509', '202', 'THALITHA 10', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '202b.jpg', '-0.16399556294', '109.41580424400', 'Agustus 2016'),
(168, '30001000508', '203', 'THALITHA 9', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '203b.jpg', '-0.16396077778', '109.41591824800', 'Agustus 2016'),
(169, '30001000507', '204', 'THALITHA 8', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '204b.jpg', '-0.16393503670', '109.41601331900', 'Agustus 2016'),
(170, '30001000506', '205', 'THALITHA 7', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '205b.jpg', '-0.16390255938', '109.41611466000', 'Agustus 2016'),
(171, '30001000505', '206', 'THALITHA 6', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '206b.jpg', '-0.16387286377', '109.41622057600', 'Agustus 2016'),
(172, '30001000504', '207', 'THALITHA 5', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '207b.jpg', '-0.16385627857', '109.41631276800', 'Agustus 2016'),
(173, '30001000503', '208', 'THALITHA 4', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '208b.jpg', '-0.16381620291', '109.41642006100', 'Agustus 2016'),
(174, '30001000502', '209', 'THALITHA 3', 'KOMP. THALITHA CLUSTER', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '209b.jpg', '-0.16379151388', '109.41652275200', 'Agustus 2016'),
(175, '30000400431', '210', 'SUKUR', 'RK TALITA JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '210b.jpg', '-0.16376981088', '109.41700949900', 'Agustus 2016'),
(176, '30001200689', '211', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. B.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '211b.jpg', '-0.15914435802', '109.41638155700', 'Agustus 2016'),
(177, '30001200688', '212', 'YANTO LEO SIMANJUNTAK', 'VILLA ANUGRAH PERMAI V. B.11', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '212b.jpg', '-0.15910800925', '109.41631048800', 'Agustus 2016'),
(178, '30001200687', '213', 'SYUKUR ', 'VILLA ANUGRAH PERMAI V. B.10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '213b.jpg', '-0.15905390788', '109.41622884700', 'Agustus 2016'),
(179, '30001200686', '214', 'DESI SUMANTRI', 'VILLA ANUGRAH PERMAI V. B.9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '214b.jpg', '-0.15900868177', '109.41613901700', 'Agustus 2016'),
(180, '30001200685', '215', 'AGUNG MARGONO', 'VILLA ANUGRAH PERMAI V. B.8', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '215b.jpg', '-0.15895441391', '109.41607613800', 'Agustus 2016'),
(181, '30001200684', '216', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. B.7', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '216b.jpg', '-0.15892367449', '109.41601703100', 'Agustus 2016'),
(182, '30001200683', '217', 'ZUMRAH', 'VILLA ANUGRAH PERMAI V. B.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '217b.jpg', '-0.15888586997', '109.41593908900', 'Agustus 2016'),
(183, '30001200682', '218', 'MUSDALIFA', 'VILLA ANUGRAH PERMAI V. B.5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '218b.jpg', '-0.15884170461', '109.41586744400', 'Agustus 2016'),
(184, '30001200681', '219', 'DAHLAMI', 'VILLA ANUGRAH PERMAI V. B.4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '219b.jpg', '-0.15879496944', '109.41580089200', 'Agustus 2016'),
(185, '30001211180', '220', 'RAMDAN', 'VILLA ANUGRAH PERMAI V. B.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '220b.jpg', '-0.15875138546', '109.41571940500', 'Agustus 2016'),
(186, '30001211179', '221', 'RIDWANSYAH', 'VILLA ANUGRAH PERMAI V. B.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '221b.jpg', '-0.15870443226', '109.41564539600', 'Agustus 2016'),
(187, '30001211178', '222', 'SUGIYANTO', 'VILLA ANUGRAH PERMAI V. B.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '222b.jpg', '-0.15865909010', '109.41557051400', 'Agustus 2016'),
(188, '30001211143', '223', 'UNTUNG SUJONO', 'VILLA ANUGRAH PERMAI V. A.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '223b.jpg', '-0.15757055747', '109.41411787900', 'Agustus 2016'),
(189, '30001211144', '224', 'HAZMI', 'VILLA ANUGRAH PERMAI V. A.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '224b.jpg', '-0.15760761404', '109.41420277300', 'Agustus 2016'),
(190, '30001211145', '225', 'YOYOK NUROHMAN', 'VILLA ANUGRAH PERMAI V. A.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '225b.jpg', '-0.15765136176', '109.41427670500', 'Agustus 2016'),
(191, '30001211146', '226', 'JUNIYANTO', 'VILLA ANUGRAH PERMAI V. A.4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '226b.jpg', '-0.15768298431', '109.41434895000', 'Agustus 2016'),
(192, '30001211147', '227', 'SUGENG KASINO', 'VILLA ANUGRAH PERMAI V. A.5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '227b.jpg', '-0.15776050122', '109.41442329800', 'Agustus 2016'),
(193, '30001211148', '228', 'HASANUDDIN', 'VILLA ANUGRAH PERMAI V. A.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '228b.jpg', '-0.15777980112', '109.41450085600', 'Agustus 2016'),
(194, '30001211149', '229', 'RISDIYANTO', 'VILLA ANUGRAH PERMAI V. A.7', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '229b.jpg', '-0.15783183681', '109.41457703500', 'Agustus 2016'),
(195, '30001211150', '230', 'MAHMUD JINIYANTO', 'VILLA ANUGRAH PERMAI V. A.8', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '230b.jpg', '-0.15788578709', '109.41464226500', 'Agustus 2016'),
(196, '30001211151', '231', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '231b.jpg', '-0.15792924479', '109.41472873700', 'Agustus 2016'),
(197, '30001211152', '232', 'YUNI FIRAYANTI', 'VILLA ANUGRAH PERMAI V. A.10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '232b.jpg', '-0.15796831728', '109.41480249200', 'Agustus 2016'),
(198, '30001211153', '233', 'MARLINA TAMPUBOLON', 'VILLA ANUGRAH PERMAI V. A.11', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '233b.jpg', '-0.15800770312', '109.41487942300', 'Agustus 2016'),
(199, '30001211154', '234', 'EKA WAHYU HADI WIBOWO', 'VILLA ANUGRAH PERMAI V. A.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '234b.jpg', '-0.15805404626', '109.41494636400', 'Agustus 2016'),
(200, '30001211155', '235', 'ANGGRAENI', 'VILLA ANUGRAH PERMAI V. A.13', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '235b.jpg', '-0.15810044048', '109.41500681900', 'Agustus 2016'),
(201, '30001211156', '236', 'NUR SARI WAHYUNI', 'VILLA ANUGRAH PERMAI V. A.14', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '236b.jpg', '-0.15814978226', '109.41510169200', 'Agustus 2016'),
(202, '30001211157', '237', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '237b.jpg', '-0.15819943712', '109.41517215700', 'Agustus 2016'),
(203, '30001211158', '238', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '238b.jpg', '-0.15824091989', '109.41525055300', 'Agustus 2016'),
(204, '30001211159', '239', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.17', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '239b.jpg', '-0.15828935985', '109.41532958600', 'Agustus 2016'),
(205, '30001211160', '240', 'RUDI EKO BIDIANTO', 'VILLA ANUGRAH PERMAI V. A.20', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '240b.jpg', '-0.15853818421', '109.41564943000', 'Agustus 2016'),
(206, '30001211161', '241', 'SITI NURSALIMAH', 'VILLA ANUGRAH PERMAI V. A.21', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '241b.jpg', '-0.15858310584', '109.41572021900', 'Agustus 2016'),
(207, '30001211162', '242', 'FRANS MANUMPAK', 'VILLA ANUGRAH PERMAI V. A.22', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '242b.jpg', '-0.15863146783', '109.41579073900', 'Agustus 2016'),
(208, '30001211163', '243', 'AHADIANA RESTU', 'VILLA ANUGRAH PERMAI V. A.23', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '243b.jpg', '-0.15866881158', '109.41584837400', 'Agustus 2016'),
(209, '30001211164', '244', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.24', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '244b.jpg', '-0.15871867865', '109.41593599800', 'Agustus 2016'),
(210, '30001211165', '245', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.25', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '245b.jpg', '-0.15876503959', '109.41600621800', 'Agustus 2016'),
(211, '30001211166', '246', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.26', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '246b.jpg', '-0.15881204314', '109.41608670500', 'Agustus 2016'),
(212, '30001211167', '247', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.27', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '247b.jpg', '-0.15885582222', '109.41614834200', 'Agustus 2016'),
(213, '30001211168', '248', 'BAMBANG SRI WIDARTO', 'VILLA ANUGRAH PERMAI V. A.28', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '248b.jpg', '-0.15889073486', '109.41622952500', 'Agustus 2016'),
(214, '30001211169', '249', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.29', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '249b.jpg', '-0.15893968464', '109.41630372500', 'Agustus 2016'),
(215, '30001211170', '250', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.30', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '250b.jpg', '-0.15900063315', '109.41637479600', 'Agustus 2016'),
(216, '30001211171', '251', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.31', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '251b.jpg', '-0.15904761262', '109.41644121000', 'Agustus 2016'),
(217, '30001211172', '252', 'RIADI GUSMAN', 'VILLA ANUGRAH PERMAI V. A.32', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '252b.jpg', '-0.15908745620', '109.41651827500', 'Agustus 2016'),
(218, '30001211173', '253', 'AWAL RUSSDI MAULANA', 'VILLA ANUGRAH PERMAI V. A.33', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '253b.jpg', '-0.15912636181', '109.41658833900', 'Agustus 2016'),
(219, '30001211174', '254', 'SYUKUR', 'VILLA ANUGRAH PERMAI V. A.34', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '254b.jpg', '-0.15919102870', '109.41665892600', 'Agustus 2016'),
(220, '30001211175', '255', 'ADRIANA', 'VILLA ANUGRAH PERMAI V. A.35', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '255b.jpg', '-0.15923243747', '109.41672011700', 'Agustus 2016'),
(221, '30001211176', '256', 'H. YUSLANIK', 'VILLA ANUGRAH PERMAI V. A.36', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '256b.jpg', '-0.15927284635', '109.41680792000', 'Agustus 2016'),
(222, '30001211177', '257', 'H. YUSLANIK', 'VILLA ANUGRAH PERMAI V. A.37', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '257b.jpg', '-0.15930575035', '109.41687383300', 'Agustus 2016'),
(223, '30000400465', '258', 'PANGIN', 'DS.KERAMAT GG.SAHABAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '258b.jpg', '-0.15952553775', '109.41731842400', 'Agustus 2016'),
(224, '30000400482', '259', 'PANGIN', 'DS.KERAMAT GG.SAHABAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '259b.jpg', '-0.15955295245', '109.41737271400', 'Agustus 2016'),
(225, '30000500336', '261', 'PANGIN', 'JL. RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '261b.jpg', '-0.15970280185', '109.41764024500', 'Agustus 2016'),
(226, '30000600268', '262', 'IR, BADRUL HUSNA', 'BUMI AYU LESTARI A.17', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '262b.jpg', '-0.15780798270', '109.41593680300', 'Agustus 2016'),
(227, '30000600269', '263', 'ROMMY INDRAWAN', 'BUMI AYU LESTARI A.16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '263b.jpg', '-0.15784304294', '109.41601358900', 'Agustus 2016'),
(228, '30000500231', '264', 'JOHANNES D GEMELU', 'BUMI AYU LESTARI D.16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '264b.jpg', '-0.15804217690', '109.41591005800', 'Agustus 2016'),
(229, '30000500324', '265', 'ABET NINGGO', 'BUMI AYU LESTARI B.15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '265b.jpg', '-0.15808178281', '109.41598429600', 'Agustus 2016'),
(230, '30000400430', '266', 'HAMIDAH', 'KOMP.BUMI AYU BB.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '266b.jpg', '-0.15817665396', '109.41620196400', 'Agustus 2016'),
(231, '30000500216', '267', 'M. JUNAEDI', 'BUMI AYU LESTARI B.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '267b.jpg', '-0.15822187934', '109.41628281000', 'Agustus 2016'),
(232, '', '268', '', 'BUMI AYU LESTARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '268b.jpg', '-0.15809699218', '109.41638574000', 'Agustus 2016'),
(233, '30000500394', '269', 'YUSLANIK', 'KOMP. BUMI AYU LESTARI B.10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '269b.jpg', '-0.15836185730', '109.41641727100', 'Agustus 2016'),
(234, '30000400466', '270', 'MELLY MELINDA', 'DS.KERAMAT KUALA DUA RT 08/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '270b.jpg', '-0.15840277260', '109.41649839600', 'Agustus 2016'),
(235, '30000500487', '271', 'RATINERA', 'BUMI AYU LESTARI B.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '271b.jpg', '-0.15853844742', '109.41672296900', 'Agustus 2016'),
(236, '30000500235', '272', 'EKO', 'BUMI AYU LESTARI A.5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '272b.jpg', '-0.15848078912', '109.41692448200', 'Agustus 2016'),
(237, '30000500234', '273', 'SUTIKNO', 'BUMI AYU LESTARI B.4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '273b.jpg', '-0.15866691415', '109.41688681600', 'Agustus 2016'),
(238, '30000500433', '274', 'DEWI SRININGSIH', 'BUMI AYU LESTARI NO.B.4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '274b.jpg', '-0.15854647099', '109.41701710400', 'Agustus 2016'),
(239, '30000500236', '275', 'JUMA&#039;IN', 'BUMI AYU LESTARI B.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '275b.jpg', '-0.15870125307', '109.41693855700', 'Agustus 2016'),
(240, '30000500229', '276', 'SIGIT DESI HARYANTO', 'BUMI AYU LESTARI A.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '276b.jpg', '-0.15867698307', '109.41722322400', 'Agustus 2016'),
(241, '30000500477', '277', 'SUPRIYADI', 'BUNI AYU LESTARI AA.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '277b.jpg', '-0.15873230693', '109.41734955200', 'Agustus 2016'),
(242, '30000600212', '278', 'MAILAN KAMISUDIN', 'BUMI AYU LESTARI D.17', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '278b.jpg', '-0.15826620798', '109.41566850000', 'Agustus 2016'),
(243, '30000500271', '279', 'SUTRISNO', 'JL. KANALISASI BUMI AYU NO.16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '279b.jpg', '-0.15813925009', '109.41581476700', 'Agustus 2016'),
(244, '30000500325', '280', 'DIDIK', 'BUMI AYU LESTARI C.15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '280b.jpg', '-0.15825176725', '109.41598071100', 'Agustus 2016'),
(245, '30000500252', '281', 'SUTARNO', 'JL. KANALISASI AYU LESTARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '281b.jpg', '-0.15836635910', '109.41581815000', 'Agustus 2016'),
(246, '30000500323', '282', 'MARTUA NASUTION', 'BUMI AYU LESTARI C.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '282b.jpg', '-0.15833340768', '109.41611318500', 'Agustus 2016'),
(247, '30000500360', '283', 'HENDRA CAHYO', 'BUMI AYU LESTARI NO. C.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '283b.jpg', '-0.15837942249', '109.41619562400', 'Agustus 2016'),
(248, '30000500256', '284', 'NELLY SOVIA', 'BUMI AYU LESTARI D.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '284b.jpg', '-0.15853839899', '109.41609413600', 'Agustus 2016'),
(249, '30000500257', '285', 'NURHAIDAH', 'BUMI AYU LESTARI C.11', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '285b.jpg', '-0.15842376060', '109.41625019000', 'Agustus 2016'),
(250, '30000500258', '286', 'ADI KUSWOYO', 'BUMI AYU LESTARI C.10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '286b.jpg', '-0.15847948735', '109.41634118400', 'Agustus 2016'),
(251, '30000500318', '287', 'WIDYO RAHARDJO', 'BUMI AYU LESTARI D.9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '287b.jpg', '-0.15869216285', '109.41633667400', 'Agustus 2016'),
(252, '30000500317', '288', 'BASRI', 'BUMI AYU LESTARI C.8', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '288b.jpg', '-0.15859263685', '109.41649215100', 'Agustus 2016'),
(253, '30000500232', '289', 'ENDY WIJAYANTO', 'BUMI AYU LESTARI D.8', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '289b.jpg', '-0.15875373615', '109.41641157800', 'Agustus 2016'),
(254, '30000500326', '290', 'ADI ANGGA', 'BUMI AYU LESTARI D.7', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '290b.jpg', '-0.15879716520', '109.41646581100', 'Agustus 2016'),
(255, '30000500233', '291', 'SUWANDI', 'BUMI AYU LESTARI C.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '291b.jpg', '-0.15868671964', '109.41664436000', 'Agustus 2016'),
(256, '30000500267', '292', 'HERU', 'BUMI AYU LESTARI D.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '292b.jpg', '-0.15884020740', '109.41655229900', 'Agustus 2016'),
(257, '30000500230', '293', 'RISTONO', 'BUMI AYU LESTARI C.5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '293b.jpg', '-0.15874030351', '109.41672567600', 'Agustus 2016'),
(258, '30000500266', '294', 'JUMARI', 'BUMI AYU LESTARI D.15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '294b.jpg', '-0.15888465378', '109.41662674400', 'Agustus 2016'),
(259, '30000500227', '295', 'BARIDAN', 'JL. KANALISASI AYU LESTARI D.4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '295b.jpg', '-0.15895240978', '109.41670376000', 'Agustus 2016'),
(260, '30000500484', '296', 'SUHENDRA', 'BUNI AYU LESTARI C.4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '296b.jpg', '-0.15879441371', '109.41679164500', 'Agustus 2016'),
(261, '30000500228', '297', 'WARIJAN', 'BUMI AYU LESTARI D.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '297b.jpg', '-0.15900161099', '109.41677654900', 'Agustus 2016'),
(262, '30000500459', '298', 'HENDRA APRIANTO', 'BUMI AYU LESTARI C.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '298b.jpg', '-0.15882973611', '109.41687136900', 'Agustus 2016'),
(263, '30000500272', '299', 'BUDIONO', 'JL. KANALISASI BUMI AYU NO.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '299b.jpg', '-0.15895149923', '109.41701483600', 'Agustus 2016'),
(264, '30000600380', '300', 'LILI KRISLIANTI', 'PUTRA DIRGANTARA C.13', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '300b.jpg', '-0.15676940093', '109.41496460600', 'Agustus 2016'),
(265, '30000600458', '301', 'IRSAN', 'PUTRA DIRGANTARA C.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '301b.jpg', '-0.15682195753', '109.41505101100', 'Agustus 2016'),
(266, '30000600379', '302', 'AGUNG RAHMADI', 'PUTRA DIRGANTARA C.11', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '302b.jpg', '-0.15686363323', '109.41510027100', 'Agustus 2016'),
(267, '30000600207', '303', 'BARNAWI', 'PUTRA DIRGANTARA ', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '303b.jpg', '-0.15690675224', '109.41516784900', 'Agustus 2016'),
(268, '30000600396', '304', 'ARIEF SETIYO NUGROHO', 'KOMP. PUTRA DIRGANTARA NO.C/9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '304b.jpg', '-0.15695614786', '109.41525415400', 'Agustus 2016'),
(269, '30000600193', '305', 'NENENG PUSPITASARI MILE', 'G. MERPATI NO. C.8', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '305b.jpg', '-0.15699342058', '109.41532768800', 'Agustus 2016'),
(270, '30000600442', '306', 'YUSRI', 'PUTRA DIRGANTARA C.7', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '306b.jpg', '-0.15706191888', '109.41539381600', 'Agustus 2016'),
(271, '30000500397', '307', 'SUSILAWATI', 'JL. RASAU JAYA GG. DIRGANTARA NO.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '307b.jpg', '-0.15726507406', '109.41536778200', 'Agustus 2016'),
(272, '30000600209', '308', 'SIGIT PURNOMO', 'PUTRA DIRGANTARA C.5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '308b.jpg', '-0.15714391040', '109.41556083100', 'Agustus 2016'),
(273, '30000500297', '309', 'MUJITO', 'KUALA GARDEN C.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '309b.jpg', '-0.15723654209', '109.41570883000', 'Agustus 2016'),
(274, '30000600469', '310', 'HENDRIK NURYOKO', 'PUTRA DIRGANTARA B.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '310b.jpg', '-0.15743639746', '109.41600547200', 'Agustus 2016'),
(275, '30000600325', '311', 'WINARTI', 'PUTRA DIRGANTARA B.10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '311b.jpg', '-0.15754156070', '109.41616500400', 'Agustus 2016'),
(276, '30000600239', '312', 'EPI HERMAWAN', 'PUTRA DIRGANTARA B.9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '312b.jpg', '-0.15757367051', '109.41622752800', 'Agustus 2016'),
(277, '30000600715', '313', 'TUGIMIN', 'PUTRA DIRGANTARA ', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '313b.jpg', '-0.15775985181', '109.41624730200', 'Agustus 2016'),
(278, '30000600706', '314', 'NANING M', 'PUTRA DIRGANTARA NO. B.7', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '314b.jpg', '-0.15766924011', '109.41638285100', 'Agustus 2016'),
(279, '30000600359', '315', 'AIDIL HANDOKO', 'PUTRA DIRGANTARA B.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '315b.jpg', '-0.15768582469', '109.41647957900', 'Agustus 2016'),
(280, '30000600395', '316', 'IDA LILIS', 'KOMP. PUTRA DIRGANTARA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '316b.jpg', '-0.15779682604', '109.41637267600', 'Agustus 2016'),
(281, '30000600339', '317', 'YOGA NOVIAN', 'PUTRA DIRGANTARA B.5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '317b.jpg', '-0.15775568590', '109.41653601100', 'Agustus 2016'),
(282, '30000500315', '318', 'TRI WIDAYANTI', 'JL. RASAU KANALIS B.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '318b.jpg', '-0.15788185843', '109.41672383700', 'Agustus 2016');
INSERT INTO `tb_sambungan` (`id_sambungan`, `no_pelanggan`, `titik_gps`, `nama_pelanggan`, `alamat`, `id_desa`, `id_kecamatan`, `kabupaten`, `status`, `kelompok`, `foto`, `x`, `y`, `update_data`) VALUES
(283, '30000600213', '319', 'NURHANI', 'PUTRA DIRGANTARA B.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '319b.jpg', '-0.15790873166', '109.41676977800', 'Agustus 2016'),
(284, '30000600665', '320', 'DAVIT', 'PUTRA DIRGANTARA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '320b.jpg', '-0.15801072189', '109.41664545700', 'Agustus 2016'),
(285, '30000600237', '321', 'SANG MADE BASMA', 'PUTRA DIRGANTARA B.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '321b.jpg', '-0.15795969958', '109.41684659500', 'Agustus 2016'),
(286, '30000600238', '322', 'RUDI SUBAKO', 'PUTRA DIRGANTARA BB.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '322b.jpg', '-0.15801696273', '109.41721910900', 'Agustus 2016'),
(287, '30000600247', '323', 'SIDIK WASKITO', 'PUTRA DIRGANTARA A.11', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '323b.jpg', '-0.15780113066', '109.41714860800', 'Agustus 2016'),
(288, '30000600206', '324', 'AGUS TRIYANTO', 'PUTRA DIRGANTARA A.8', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '324b.jpg', '-0.15792099710', '109.41707029800', 'Agustus 2016'),
(289, '30000600208', '325', 'ABDUL HALIM MUAZZAM', 'PUTRA DIRGANTARA A.9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '325b.jpg', '-0.15788368745', '109.41700679300', 'Agustus 2016'),
(290, '30000600523', '326', 'NJARI, S.PD', 'PUTRA DIRGANTARA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '326b.jpg', '-0.15778192738', '109.41684527700', 'Agustus 2016'),
(291, '', '327', '', 'PUTRA DIRGANTARA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '327b.jpg', '-0.15765980352', '109.41690519900', 'Agustus 2016'),
(292, '30000600425', '328', 'KHOESROFI', 'KOMP. PUTRA DIRGANTARA B.15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '328b.jpg', '-0.15771863992', '109.41675397500', 'Agustus 2016'),
(293, '30000600371', '329', 'HENDRI', 'PUTRA DIRGANTARA B.26', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '329b.jpg', '-0.15761332956', '109.41685289100', 'Agustus 2016'),
(294, '30000600563', '330', 'ABDUL MU&#039;IN', 'KOMP. PUTRA DIRGANTARA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '330b.jpg', '-0.15768346611', '109.41668147700', 'Agustus 2016'),
(295, '30000600240', '331', 'MULYADI', 'PUTRA DIRGANTARA B.17', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '331b.jpg', '-0.15762501039', '109.41659727200', 'Agustus 2016'),
(296, '30000600211', '332', 'AGUS HAIRUDDIN', 'PUTRA DIRGANTARA B.27', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '332b.jpg', '-0.15751608106', '109.41667782600', 'Agustus 2016'),
(297, '30000600210', '333', 'BUDI KURNIA', 'PUTRA DIRGANTARA B.28', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '333b.jpg', '-0.15744247107', '109.41657235700', 'Agustus 2016'),
(298, '30000600215', '334', 'SENO PRAYOGO ADINOTO', 'PUTRA DIRGANTARA B.19', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '334b.jpg', '-0.15754176674', '109.41645669600', 'Agustus 2016'),
(299, '30000600241', '335', 'MALIK KURNIAWAN', 'PUTRA DIRGANTARA B.29', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '335b.jpg', '-0.15738755737', '109.41648733300', 'Agustus 2016'),
(300, '30000600715', '336', '', 'PUTRA DIRGANTARA ', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '336b.jpg', '-0.15750621123', '109.41638251900', 'Agustus 2016'),
(301, '30000600470', '337', 'DARWIN', 'PUTRA DIRGANTARA B.21', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '337b.jpg', '-0.15745592863', '109.41630422800', 'Agustus 2016'),
(302, '30000600265', '338', 'M.SYAFI&#039;I', 'PUTRA DIRGANTARA B.22', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '338b.jpg', '-0.15740396880', '109.41624129600', 'Agustus 2016'),
(303, '30000600519', '339', 'WISMA KUSWORO', 'PUTRA DIRGANTARA D.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '339b.jpg', '-0.15722003196', '109.41623740100', 'Agustus 2016'),
(304, '30000600680', '340', 'IBNU MUSLIM', 'PUTRA DIRGANTARA B.25', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '340b.jpg', '-0.15730436829', '109.41607923200', 'Agustus 2016'),
(305, '30000600261', '341', 'ASMINI', 'PUTRA DIRGANTARA C.18', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '341b.jpg', '-0.15717038376', '109.41586070600', 'Agustus 2016'),
(306, '30000600260', '342', 'M SUPRIONO', 'PUTRA DIRGANTARA D.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '342b.jpg', '-0.15704016564', '109.41593489300', 'Agustus 2016'),
(307, '30000600471', '343', 'HARIANTO', 'PUTRA DIRGANTARA C.19', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '343b.jpg', '-0.15711603663', '109.41577434200', 'Agustus 2016'),
(308, '30000600214', '344', 'ARIF HANDRIYANTO', 'PUTRA DIRGANTARA D.5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '344b.jpg', '-0.15693667819', '109.41578756900', 'Agustus 2016'),
(309, '30000600475', '345', 'MUHAMMAD NAJI', 'PUTRA DIRGANTARA D.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '345b.jpg', '-0.15688776872', '109.41572311900', 'Agustus 2016'),
(310, '30000600472', '346', 'SUGENG TRISNO', 'PUTRA DIRGANTARA C.21', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '346b.jpg', '-0.15701525628', '109.41564519700', 'Agustus 2016'),
(311, '30000600242', '347', 'CANDRA', 'PUTRA DIRGANTARA C.22', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '347b.jpg', '-0.15696773178', '109.41556897100', 'Agustus 2016'),
(312, '30000600473', '348', 'MADHUSEN', 'PUTRA DIRGANTARA C.28', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '348b.jpg', '-0.15672402372', '109.41518689100', 'Agustus 2016'),
(313, '30000600513', '349', 'SUGENG', 'PUTRA DIRGANTARA D.9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '349b.jpg', '-0.15674699777', '109.41549164800', 'Agustus 2016'),
(314, '30000600474', '350', 'ISKANDAR', 'PUTRA DIRGANTARA C.29', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '350b.jpg', '-0.15664322469', '109.41504138800', 'Agustus 2016'),
(315, '30000600476', '351', 'IMELDA SIMON', 'PUTRA DIRGANTARA D.14', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '351b.jpg', '-0.15650570899', '109.41511908700', 'Agustus 2016'),
(316, '30000600574', '352', 'SRIYATNO', 'KOMP. DIRGANTARA D.15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '352b.jpg', '-0.15644829234', '109.41504393000', 'Agustus 2016'),
(317, '30000600522', '353', 'MULIAWAN', 'PUTRA DIRGANTARA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '353b.jpg', '-0.15635025835', '109.41489999700', 'Agustus 2016'),
(318, '30000600705', '354', 'SUPARMAN', 'PUTRA DIRGANTARA NO. D.31', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '354b.jpg', '-0.15620816159', '109.41507027500', 'Agustus 2016'),
(319, '30000600650', '355', 'SUNARDI', 'KOMP. DIRGANTARA D.29', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '355b.jpg', '-0.15638578313', '109.41520392900', 'Agustus 2016'),
(320, '30000600558', '356', 'NDINDINRIYANTO', 'KOMP. PUTRA DIRGANTARA D.25', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '356b.jpg', '-0.15657184684', '109.41549526600', 'Agustus 2016'),
(321, '30000600559', '357', 'ISWANTI', 'KOMP. PUTRA DIRGANTARA D.24', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '357b.jpg', '-0.15661010675', '109.41557663600', 'Agustus 2016'),
(322, '30000600557', '358', 'TULUS BUDI', 'KOMP. PUTRA DIRGANTARA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '358b.jpg', '-0.15670664204', '109.41571646100', 'Agustus 2016'),
(323, '30000600259', '359', 'YUSUF BUDI DHAMA', 'PUTRA DIRGANTARA D.20', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '359b.jpg', '-0.15684958774', '109.41594274200', 'Agustus 2016'),
(324, '30000600372', '360', 'AGUS BUDI KUNCORO', 'KOMP. BUMI AYU B.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '360b.jpg', '-0.15877412217', '109.41702737200', 'Agustus 2016'),
(325, '30000500161', '361', 'ENY LESTARI', 'KUALA GARDEN NO. A.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '361b.jpg', '-0.15620405359', '109.41713464300', 'Agustus 2016'),
(326, '30000500158', '362', 'SUGIARTI', 'KUALA GARDEN NO. A.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '362b.jpg', '-0.15615982268', '109.41705785500', 'Agustus 2016'),
(327, '30000500273', '363', 'ERWAN SUPARLAN', 'JL. KUALA GARDEN A.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '363b.jpg', '-0.15612259922', '109.41698467700', 'Agustus 2016'),
(328, '30000500159', '364', 'RAMLI', 'KUALA GARDEN NO. A.4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '364b.jpg', '-0.15608023952', '109.41690250200', 'Agustus 2016'),
(329, '30000500163', '365', 'M. BINTARO', 'KUALA GARDEN NO. A.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '365b.jpg', '-0.15592140013', '109.41670189100', 'Agustus 2016'),
(330, '30000500183', '366', 'MISKA WENNI YOGA', 'KUALA GARDEN NO. A.10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '366b.jpg', '-0.15573619558', '109.41638889800', 'Agustus 2016'),
(331, '30000500184', '367', 'BANIAH SPD', 'KUALA GARDEN NO. A.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '367b.jpg', '-0.15563234955', '109.41624034300', 'Agustus 2016'),
(332, '30000500162', '368', 'M. BINTARO', 'KUALA GARDEN NO. A.13', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '368b.jpg', '-0.15559585713', '109.41615499400', 'Agustus 2016'),
(333, '30000500512', '369', 'FARID HUDLAF', 'KUALA GARDEN A.15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '369b.jpg', '-0.15550201481', '109.41598846800', 'Agustus 2016'),
(334, '30000500337', '370', 'AN SUSANTO', 'KUALA GARDEN A.16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '370b.jpg', '-0.15545375351', '109.41590971800', 'Agustus 2016'),
(335, '30000500309', '371', 'RENGGA INDOCIPTA', 'JL. RASAU JAYA GARDEN A.20', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '371b.jpg', '-0.15525999419', '109.41563460500', 'Agustus 2016'),
(336, '30000500296', '372', 'ROY', 'KUALA GARDEN A.21', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '372b.jpg', '-0.15521927369', '109.41558233600', 'Agustus 2016'),
(337, '30000500358', '373', 'GATOT SUYONO', 'KUALA GARDEN C.23', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '373b.jpg', '-0.15552750792', '109.41535849800', 'Agustus 2016'),
(338, '30000500203', '374', 'ASYROFI', 'KUALA GARDEN CITY B.21', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '374b.jpg', '-0.15538661355', '109.41556185200', 'Agustus 2016'),
(339, '30000500186', '375', 'AGUS ARIANSYAH', 'KUALA GARDEN NO. A.19', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '375b.jpg', '-0.15545299251', '109.41569439100', 'Agustus 2016'),
(340, '30000500187', '376', 'TONI KURNIAWAN', 'KUALA GARDEN NO. B.23', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '376b.jpg', '-0.15562601940', '109.41551761000', 'Agustus 2016'),
(341, '30000500189', '377', 'ANGGA MAULANA', 'KUALA GARDEN NO. C.22', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '377b.jpg', '-0.15564793028', '109.41561889400', 'Agustus 2016'),
(342, '30000500185', '378', 'ZAMZAMI', 'KUALA GARDEN NO. B.7', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '378b.jpg', '-0.15556154783', '109.41584345300', 'Agustus 2016'),
(343, '30000500294', '379', 'SATMOJO', 'KUALA GARDEN C.20', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '379b.jpg', '-0.15574963143', '109.41577809200', 'Agustus 2016'),
(344, '30000500205', '380', 'ABDULLAH AL FAGIH', 'KUALA GARDEN CITY B.16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '380b.jpg', '-0.15562505969', '109.41593707500', 'Agustus 2016'),
(345, '30000500182', '381', 'MANGADOR HUTAPEA', 'KUALA GARDEN NO. C.19', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '381b.jpg', '-0.15582175529', '109.41584650000', 'Agustus 2016'),
(346, '30000500406', '382', 'ATHIAH DESTIARINI', 'KOMP. KUALA GARDEN B.14', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '382b.jpg', '-0.15571211407', '109.41608038400', 'Agustus 2016'),
(347, '30000500468', '383', 'IWAN SYAHRIL', 'KUALA GARDEN C.17', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '383b.jpg', '-0.15591223118', '109.41598467700', 'Agustus 2016'),
(348, '30000500188', '384', 'MADE SUMITRA JAYA', 'KUALA GARDEN NO. C.16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '384b.jpg', '-0.15594655598', '109.41606382300', 'Agustus 2016'),
(349, '30000500717', '385', '', 'KUALA GARDEN NO B.12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '385b.jpg', '-0.15580598065', '109.41623163300', 'Agustus 2016'),
(350, '30000500164', '386', 'SLAMET DARWANTO', 'KUALA GARDEN NO. C.14', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '386b.jpg', '-0.15605118442', '109.41623452500', 'Agustus 2016'),
(351, '30000500295', '387', 'TIMARDES S.SOS', 'KUALA GARDEN B.10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '387b.jpg', '-0.15590896644', '109.41639302900', 'Agustus 2016'),
(352, '30000400253', '388', 'ACHMAD CHOZIN', 'DS.KARYA 1 RT 01/03', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '388b.jpg', '-0.15609142378', '109.41630822900', 'Agustus 2016'),
(353, '30000500664', '389', 'I NENGAH SUTARDI', 'KUALA GARDEN NO. B.8', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '389b.jpg', '-0.15598995329', '109.41653965800', 'Agustus 2016'),
(354, '30000500160', '390', 'ILHAM DANI', 'KUALA GARDEN NO. B.6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '390b.jpg', '-0.15608665458', '109.41670385600', 'Agustus 2016'),
(355, '30000500707', '391', 'SUSILO', 'KUALA GARDEN NO. C.9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '391b.jpg', '-0.15626894488', '109.41661072500', 'Agustus 2016'),
(356, '30000500564', '392', 'DADANG AGUS SUPIAN NUR', 'KUALA GARDEN NO. B.3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '392b.jpg', '-0.15648160590', '109.41693049800', 'Agustus 2016'),
(357, '30000500357', '393', 'ARSO SETYO PRABOWO', 'KUALA GARDEN C.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '393b.jpg', '-0.15658224332', '109.41715808900', 'Agustus 2016'),
(358, '30000500335', '394', 'SUSELO UTOMO', 'JL. KANALISASI RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '394b.jpg', '-0.16051008059', '109.41771098500', 'Agustus 2016'),
(359, '30000500322', '395', 'SUWITO', 'JL. RASAU JAYA DS. KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '395b.jpg', '-0.16034728518', '109.41763014700', 'Agustus 2016'),
(360, '30000500248', '396', 'SUYATNO', 'JL RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '396b.jpg', '-0.16010530364', '109.41770290100', 'Agustus 2016'),
(361, '30000400223', '397', 'SRI WINARSIH/PAK PINGIN', 'DS.KERAMAT 1 RT 22/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '397b.jpg', '-0.15982274109', '109.41761222100', 'Agustus 2016'),
(362, '30000500286', '398', 'SULI', 'JL. RASAU JAYA RT 22/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '398b.jpg', '-0.15856837037', '109.41752666100', 'Agustus 2016'),
(363, '30000500697', '399', 'BUJANG ALI SUDIN SANJAYA', 'JL. RAYA RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '399b.jpg', '-0.15826742469', '109.41752476700', 'Agustus 2016'),
(364, '30000500698', '400', 'BUJANG ALI SUDIN SANJAYA', 'JL. RAYA RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '400b.jpg', '-0.15821054461', '109.41754655000', 'Agustus 2016'),
(365, '', '401', '', 'KAWASAN INDOMARET', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '401b.jpg', '-0.15815914172', '109.41753203300', 'Agustus 2016'),
(366, '', '402', '', 'KAWASAN INDOMARET', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '402b.jpg', '-0.15807393694', '109.41754102400', 'Agustus 2016'),
(367, '', '403', '', 'KAWASAN INDOMARET', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '403b.jpg', '-0.15802539028', '109.41753388700', 'Agustus 2016'),
(368, '', '404', '', 'KAWASAN INDOMARET', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '404b.jpg', '-0.15797019811', '109.41753031400', 'Agustus 2016'),
(369, '', '405', '', 'KAWASAN INDOMARET', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '405b.jpg', '-0.15791546981', '109.41753560700', 'Agustus 2016'),
(370, '30000400327', '406', 'M. AWAL', 'DS.KERAMAT 1 RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '406b.jpg', '-0.15468961364', '109.41739499400', 'Agustus 2016'),
(371, '30000400321', '407', 'ADRIANY', 'JL.RAYA KUALA DUA ARAH RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '407b.jpg', '-0.15452447460', '109.41741742100', 'Agustus 2016'),
(372, '30000500708', '408', 'MASJID JAMAAH', 'JL. RASAU JAYA SPG SDN.24', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '408b.jpg', '-0.15413415524', '109.41746891500', 'Agustus 2016'),
(373, '30000400483', '409', 'HASANUDDIN', 'JL.RAYA KUALA DUA GG. ALONG BLKG SD 24', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '409b.jpg', '-0.15379045784', '109.41704672400', 'Agustus 2016'),
(374, '30000500191', '410', 'YURNALIS', 'JL RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '410b.jpg', '-0.15401705448', '109.41753531800', 'Agustus 2016'),
(375, '30000500467', '411', 'WANATO', 'JL. RAYA ARAH RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '411b.jpg', '-0.15365479693', '109.41700181800', 'Agustus 2016'),
(376, '30000500287', '412', 'SDN 24', 'JL. RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R2C RII/C', '412b.jpg', '-0.15362624872', '109.41741512700', 'Agustus 2016'),
(377, '30000500452', '413', 'SUMIATI', 'JL. RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '413b.jpg', '-0.15341066256', '109.41750376200', 'Agustus 2016'),
(378, '30000400194', '414', 'NURHAYATI', 'DS.KERAMAT 1 RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '414b.jpg', '-0.15329307889', '109.41747796000', 'Agustus 2016'),
(379, '30000500485', '415', 'NGINGIN', 'JL. RASAU JAYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '415b.jpg', '-0.15303985073', '109.41746899600', 'Agustus 2016'),
(380, '30000400270', '416', 'HERIYANTO', 'DS.KERAMAT/SPG RASAU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '416b.jpg', '-0.15288279965', '109.41748619700', 'Agustus 2016'),
(381, '30000400444', '417', 'LIM LI KIAU', 'GG.KARYA BARU ALAS', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '417b.jpg', '-0.16152687083', '109.43071027300', 'Agustus 2016'),
(382, '30000700455', '418', 'DJAP KIM LIE', 'JL. RAYA ALAS GG. BERDIKARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '418b.jpg', '-0.16107505819', '109.42791285000', 'Agustus 2016'),
(383, '30000700418', '419', 'LIM TJIANG NGIAP', 'JL. ALAS G. BERDIKARI RT 04', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '419b.jpg', '-0.16082025873', '109.42838079800', 'Agustus 2016'),
(384, '30000700420', '420', 'TJHIN PIT SIU', 'JL. ALAS G. BERDIKARI RT 04', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '420b.jpg', '-0.16080110398', '109.42855094700', 'Agustus 2016'),
(385, '30000700224', '421', 'SUGIANTO', 'JL. ALAS KUSUMA BERDIKARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '421b.jpg', '-0.16097544020', '109.42890692300', 'Agustus 2016'),
(386, '30000700454', '422', 'CUASAN ALIS SANDIONO', 'JL. RAYA ALAS GG. BERDIKARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '422b.jpg', '-0.16059550318', '109.42940857500', 'Agustus 2016'),
(387, '30000700226', '423', 'YOK LIK HENG', 'JL. ALAS KUSUMA BERDIKARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '423b.jpg', '-0.16051746906', '109.42968544100', 'Agustus 2016'),
(388, '30000700059', '424', 'DJAMHO/DEDDY S', 'GG. BERDIKARI ALAS', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '424b.jpg', '-0.16056956590', '109.43009389900', 'Agustus 2016'),
(389, '30000700344', '425', 'MARDIANA', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '425b.jpg', '-0.16049294302', '109.42995530500', 'Agustus 2016'),
(390, '30000700375', '426', 'GEREJA GKKB AMUNG', 'JL. ALAS', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '426b.jpg', '-0.16040007371', '109.42999233100', 'Agustus 2016'),
(391, '30000700498', '427', 'TJONG TJHIN PHIN', 'GG. ALFAKAR', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '427b.jpg', '-0.15966072579', '109.42952682700', 'Agustus 2016'),
(392, '30000700398', '428', 'BAMBANG SUTRISNO', 'GG. SUMBER MAJU UJUNG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '428b.jpg', '-0.16064855466', '109.42519682100', 'Agustus 2016'),
(393, '30000700407', '429', 'HERU HARDIANU', 'GG. ALFAKAR', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '429b.jpg', '-0.16042945090', '109.42557784300', 'Agustus 2016'),
(394, '30000700666', '430', 'KUSNADI', 'GG, ALFAKAR JL. ARAH ALAS', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '430b.jpg', '-0.16042344567', '109.42565803200', 'Agustus 2016'),
(395, '30000700428', '431', 'SY HARTONI SAPUTRA', 'JL. ALAS GG. ALFAKAR', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '431b.jpg', '-0.16036243605', '109.42578766900', 'Agustus 2016'),
(396, '30000700720', '432', '', 'GG.ALFAKAR', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '432b.jpg', '-0.15969508167', '109.42813382900', 'Agustus 2016'),
(397, '30000700644', '433', 'IWAN DARMAWAN', 'GG. ALFAKAR ARAH ALAS', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '433b.jpg', '-0.15982973648', '109.42859481500', 'Agustus 2016'),
(398, '30000700517', '434', 'ICA MARIANI', 'GG. ALFAKAR', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '434b.jpg', '-0.15974631388', '109.42909055000', 'Agustus 2016'),
(399, '30000700457', '435', 'FERRY WADAGDO', 'JL. RAYA ALAS GG. DEBU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '435b.jpg', '-0.15918147856', '109.42865281400', 'Agustus 2016'),
(400, '30000700307', '436', 'BU SUSAN', 'GG. DEBU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '436b.jpg', '-0.15908790626', '109.42753866100', 'Agustus 2016'),
(401, '30000700710', '437', 'MASJID RAMATULLAH', 'JL. ALAS KUSUMA DEPAN KKT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '437b.jpg', '-0.15878828543', '109.42895062800', 'Agustus 2016'),
(402, '30000700423', '438', 'DENG LIBEK', 'GG. SUMBER MAJU 3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '438b.jpg', '-0.15865735686', '109.42754587300', 'Agustus 2016'),
(403, '30000500490', '439', 'TISNAWATI', 'GG. SUMBER MAJU 3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '439b.jpg', '-0.15862595233', '109.42777018300', 'Agustus 2016'),
(404, '30000500709', '440', 'ELLY', 'GG. SUMBER MAJU III', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '440b.jpg', '-0.15877550737', '109.42784269700', 'Agustus 2016'),
(405, '30000400456', '441', 'SUANDES TONGHI/GEREJA', 'DS.KERAMAT 1 (GEREJA KKPKB)', '1', '1', 'Kubu Raya', '30', 'R1B RI/B', '441b.jpg', '-0.15820115414', '109.42887949300', 'Agustus 2016'),
(406, '30000500524', '442', 'ISHAK', 'GG. SUMBER MAJU 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '442b.jpg', '-0.15837275232', '109.42712872100', 'Agustus 2016'),
(407, '30000700453', '443', 'ROHENDI', 'JL. RAYA ALAS SPG G. SUMBER MAJU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '443b.jpg', '-0.15802383080', '109.42825763300', 'Agustus 2016'),
(408, '30000500345', '444', 'EDWAR', 'GG. SUMBER MAJU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '444b.jpg', '-0.15818641847', '109.42560752600', 'Agustus 2016'),
(409, '30000500568', '445', 'JUMI SANUSI', 'GG. SUMBER JAMU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '445b.jpg', '-0.15814884054', '109.42596934500', 'Agustus 2016'),
(410, '30000500362', '446', 'SWARTONO', 'GG. SUMBER MAJU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '446b.jpg', '-0.15823486699', '109.42670468900', 'Agustus 2016'),
(411, '30000500520', '447', 'EKA WULANDARI', 'GG. SUMBER JAMU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '447b.jpg', '-0.15788513235', '109.42714564900', 'Agustus 2016'),
(412, '30000700421', '448', 'ISMAIL', 'JL. ALAS G.SUMBER MAJU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '448b.jpg', '-0.15801395797', '109.42771107900', 'Agustus 2016'),
(413, '30000500494', '449', 'PAIMAN SADIKIN', 'GG. SUMBER MAJU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '449b.jpg', '-0.15757845448', '109.42798998900', 'Agustus 2016'),
(414, '30000700699', '450', 'SITI RAHMANIA', 'JL. ALAS KUSUMA DEPAN KKT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '450b.jpg', '-0.15730103756', '109.42774418400', 'Agustus 2016'),
(415, '30000700419', '451', 'MELLY', 'JL. ALAS G. DEKAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '451b.jpg', '-0.15660384704', '109.42701803300', 'Agustus 2016'),
(416, '30000500377', '452', 'SHOLEH', 'GG. SUMBER MAJU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '452b.jpg', '-0.15997705774', '109.42498753800', 'Agustus 2016'),
(417, '30000500378', '453', 'AGUSTINUS EDITANTO', 'GG. SUMBER MAJU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '453b.jpg', '-0.15965583916', '109.42521655600', 'Agustus 2016'),
(418, '30000500361', '454', 'SUNARYO', 'GG. SUMBER MAJU UJUNG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '454b.jpg', '-0.15949772353', '109.42487079100', 'Agustus 2016'),
(419, '30000700306', '455', 'NURYADI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '455b.jpg', '-0.15816291518', '109.42479196200', 'Agustus 2016'),
(420, '30000700424', '456', 'MESJID BAITUL', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '456b.jpg', '-0.15812401531', '109.42443504800', 'Agustus 2016'),
(421, '30000700408', '457', 'WARDOYO KUSMAN', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '457b.jpg', '-0.15784372805', '109.42445318600', 'Agustus 2016'),
(422, '30000700308', '458', 'ABANG TAJUDIN', 'GG. MASJID', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '458b.jpg', '-0.15770103454', '109.42470445800', 'Agustus 2016'),
(423, '30000700399', '459', 'HAMIDA', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '459b.jpg', '-0.15751991017', '109.42464419600', 'Agustus 2016'),
(424, '30000700422', '460', 'SYAMSUDIN', 'G. GENTENT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '460b.jpg', '-0.15759924063', '109.42440097600', 'Agustus 2016'),
(425, '30000700417', '461', 'MUSTOFA', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '461b.jpg', '-0.15742625135', '109.42438624100', 'Agustus 2016'),
(426, '30000700331', '462', 'MURDI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '462b.jpg', '-0.15776238943', '109.41881367100', 'Agustus 2016'),
(427, '30000700354', '463', 'HALIMAH', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '463b.jpg', '-0.15760100659', '109.41954967500', 'Agustus 2016'),
(428, '30000700351', '464', 'MANSYUR', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '464b.jpg', '-0.15744027656', '109.41963857600', 'Agustus 2016'),
(429, '30000700355', '465', 'LUSIA', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '465b.jpg', '-0.15741840246', '109.41975291600', 'Agustus 2016'),
(430, '30000700356', '466', 'MUHTAR', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '466b.jpg', '-0.15739645169', '109.41983902200', 'Agustus 2016'),
(431, '30000700334', '467', 'MESJID AL IKLAS', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '467b.jpg', '-0.15757099394', '109.41982229300', 'Agustus 2016'),
(432, '30000700353', '468', 'SYAFARUDDIN', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '468b.jpg', '-0.15780166110', '109.41981705500', 'Agustus 2016'),
(433, '30000700332', '469', 'MAHENDRA PARTO', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '469b.jpg', '-0.15734220151', '109.42065425200', 'Agustus 2016'),
(434, '30000700313', '470', 'SUSILAWATI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '470b.jpg', '-0.15737836303', '109.42208626900', 'Agustus 2016'),
(435, '30000700310', '471', 'SUPRAFTI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '471b.jpg', '-0.15701008564', '109.42197349300', 'Agustus 2016'),
(436, '30000700410', '472', 'MUNASRI', 'GG. GENTENG RT 15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '472b.jpg', '-0.15698640236', '109.42215051600', 'Agustus 2016'),
(437, '30000700409', '473', 'BUDI AWIANTO', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '473b.jpg', '-0.15697246178', '109.42261049000', 'Agustus 2016'),
(438, '30000700516', '474', 'SUPRAPTI/RENI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '474b.jpg', '-0.15726535405', '109.42251679600', 'Agustus 2016'),
(439, '30000700412', '475', 'PARNO', 'GG. GENTENG RT 15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '475b.jpg', '-0.15689778002', '109.42282332500', 'Agustus 2016'),
(440, '30000700411', '476', 'EMI WALIANTI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '476b.jpg', '-0.15690938858', '109.42295655000', 'Agustus 2016'),
(441, '30000700413', '477', 'YAJI', 'GG. GENTENG RT 16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '477b.jpg', '-0.15721630522', '109.42304729500', 'Agustus 2016'),
(442, '30000700415', '478', 'HERNISA', 'GG. GENTENG RT 18', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '478b.jpg', '-0.15688608973', '109.42311972100', 'Agustus 2016'),
(443, '30000700478', '479', 'PONIRAN', 'JL. ALAS GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '479b.jpg', '-0.15689496085', '109.42321252800', 'Agustus 2016'),
(444, '30000700414', '480', 'SUPARMAN', 'GG. GENTENG RT 17', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '480b.jpg', '-0.15715595435', '109.42332242800', 'Agustus 2016'),
(445, '30000700341', '481', 'TINI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '481b.jpg', '-0.15710942546', '109.42357811000', 'Agustus 2016'),
(446, '30000700311', '482', 'EDY ASPIA', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '482b.jpg', '-0.15684156765', '109.42501057200', 'Agustus 2016'),
(447, '30000700340', '483', 'LEGIMIN', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '483b.jpg', '-0.15685725528', '109.42512070700', 'Agustus 2016'),
(448, '30000700352', '484', 'BAGUS KHARIMA', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '484b.jpg', '-0.15676949875', '109.42539039800', 'Agustus 2016'),
(449, '30000700333', '485', 'AGUSTIAN', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '485b.jpg', '-0.15635474065', '109.42551280900', 'Agustus 2016'),
(450, '30000700429', '486', 'SURIDA', 'JL. ALAS GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '486b.jpg', '-0.15670066773', '109.42556002600', 'Agustus 2016'),
(451, '30000700288', '487', 'FAUZIAH', 'G. GENTENG JL. RAYA INDUSTRI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '487b.jpg', '-0.15663373540', '109.42598842500', 'Agustus 2016'),
(452, '30000700225', '488', 'SARNIAWATI', 'G. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '488b.jpg', '-0.15632923839', '109.42594947500', 'Agustus 2016'),
(453, '30000700567', '489', 'DWI RAHAYU PUSMAYANI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '489b.jpg', '-0.15633425132', '109.42603104900', 'Agustus 2016'),
(454, '30000700342', '490', 'YANTI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '490b.jpg', '-0.15712249312', '109.42582340600', 'Agustus 2016'),
(455, '30000700221', '491', 'CONG KIM LONG', 'JL. ALAS KUSUMA GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '491b.jpg', '-0.15623190990', '109.42631760300', 'Agustus 2016'),
(456, '30000700222', '492', 'LIE NGIAP SIANG', 'JL. ALAS KUSUMA GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '492b.jpg', '-0.15627075323', '109.42641281600', 'Agustus 2016'),
(457, '30000700343', '493', 'ASENG', 'DEPAN GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '493b.jpg', '-0.15628161605', '109.42649851400', 'Agustus 2016'),
(458, '30000700497', '494', 'ADYANTO', 'DEPAN GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '494b.jpg', '-0.15617206942', '109.42675729400', 'Agustus 2016'),
(459, '30000700562', '495', 'AMOY', 'JL. RAYA ALAS SAMPING KKT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '495b.jpg', '-0.15613246304', '109.42669188700', 'Agustus 2016'),
(460, '30000400401', '496', 'SUYANTO', 'DS.KERAMAT 1 RT 15/001', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '496b.jpg', '-0.15602496223', '109.42600295600', 'Agustus 2016'),
(461, '30000500491', '497', 'SUKIMAN', 'GG. SWAKARSA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '497b.jpg', '-0.15585068833', '109.42539983600', 'Agustus 2016'),
(462, '30000700479', '498', 'UJI WICAKSONO', 'JL. ALAS (WARUNG BAKSO)', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '498b.jpg', '-0.15572838030', '109.42537919900', 'Agustus 2016'),
(463, '30000700481', '499', 'ASANG/RIKY', 'JL. ALAS (DPN KOLAM IKAN)', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '499b.jpg', '-0.15570696800', '109.42529031400', 'Agustus 2016'),
(464, '30000700480', '500', 'SAKSAN', 'JL. ALAS (DPN KOLAM IKAN)', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '500b.jpg', '-0.15558174209', '109.42506871900', 'Agustus 2016'),
(465, '30000700488', '501', 'STEVEN LIM S.KOM.MM', 'JL. RAYA ALAS SPG PLN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '501b.jpg', '-0.15554413341', '109.42493468800', 'Agustus 2016'),
(466, '30000700496', '502', 'PAULUS', 'JL. RAYA ALAS KUSUMA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '502b.jpg', '-0.15541948900', '109.42456586300', 'Agustus 2016'),
(467, '30000500521', '503', 'FATIMAH', 'GG. SAIBAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '503b.jpg', '-0.15603382933', '109.42365829800', 'Agustus 2016'),
(468, '30000700489', '504', 'SURYA DHARMA', 'JL. RAYA ALAS GG. SAIBAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '504b.jpg', '-0.15593390726', '109.42413804600', 'Agustus 2016'),
(469, '30000400652', '505', 'DENI KURNIAWAN', 'JL.RAYA ALAS SPG PPLN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '505b.jpg', '-0.15506426042', '109.42370130100', 'Agustus 2016'),
(470, '30000700486', '506', 'MESJID DARUSSABIRIN', 'GG. KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '506b.jpg', '-0.15035854682', '109.42316143600', 'Agustus 2016'),
(471, '30000700316', '507', 'RUMANTAR MANALU', 'GG. DEBU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '507b.jpg', '-0.15068930275', '109.42347195600', 'Agustus 2016'),
(472, '30000700250', '508', 'TARMIZI', 'G. KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '508b.jpg', '-0.15098730482', '109.42301186600', 'Agustus 2016'),
(473, '30000700251', '509', 'ARDIMANSYAH', 'G. KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '509b.jpg', '-0.15198031676', '109.42297319800', 'Agustus 2016'),
(474, '30000700312', '510', 'AGUS SAFITRI', 'GG. KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '510b.jpg', '-0.15200245969', '109.42262411400', 'Agustus 2016'),
(475, '30000700249', '511', 'NURHASIDAH', 'G. KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '511b.jpg', '-0.15236851739', '109.42248790600', 'Agustus 2016'),
(476, '30000700120', '512', 'HARTINI', 'G. KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '512b.jpg', '-0.15283188279', '109.42273878400', 'Agustus 2016'),
(477, '30000400651', '513', 'ISMOYO', 'GG.KUALA DUA ARAH ALAS', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '513b.jpg', '-0.15271406408', '109.42235146100', 'Agustus 2016'),
(478, '30000400201', '514', 'DHANIL WARDIAN', 'DS.KERAMAT 1 RT 01/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '514b.jpg', '-0.15403048170', '109.42220731400', 'Agustus 2016'),
(479, '30000400195', '515', 'KANTOR KEPALA DESA', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3H RIII/H', '515b.jpg', '-0.15264055297', '109.41815537300', 'Agustus 2016'),
(480, '30000500320', '516', 'SUTEJO', 'JL. RASAU JAYA G. SELAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '516b.jpg', '-0.16040497964', '109.41836671100', 'Agustus 2016'),
(481, '30000500262', '517', 'NAZILI', 'G. SELAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '517b.jpg', '-0.16024747223', '109.41861937800', 'Agustus 2016'),
(482, '30000500314', '518', 'ROY HANAFIE', 'GG. SELAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '518b.jpg', '-0.16014392759', '109.41832868000', 'Agustus 2016'),
(483, '30000400180', '519', 'ZAKARIAS IMIN', 'G.KANTOR RT 06/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '519b.jpg', '-0.15686924674', '109.41827485200', 'Agustus 2016'),
(484, '30000700495', '520', 'PIUS ADO', 'GG. KANTOR', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '520b.jpg', '-0.15460135733', '109.41824911700', 'Agustus 2016'),
(485, '30000700642', '521', 'SITI FITRIA DWI', 'GG. KANTOR KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '521b.jpg', '-0.15454586281', '109.41814886600', 'Agustus 2016'),
(486, '30000700427', '522', 'RITA NASARUDDIN', 'GG. KANTOR', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '522b.jpg', '-0.15446453422', '109.41821483900', 'Agustus 2016'),
(487, '30000906093', '523', 'SULAIMAN', 'SUPADIO 19', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '523b.jpg', '-0.14321949305', '109.40816756600', 'Agustus 2016'),
(488, '30000906089', '524', 'EDI SURYATIN', 'SUPADIO 15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '524b.jpg', '-0.14343584714', '109.40831389400', 'Agustus 2016'),
(489, '30000903150', '525', 'BAMBBANG HARGIYONO', 'METREOLOGI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '525b.jpg', '-0.14363145587', '109.40803464400', 'Agustus 2016'),
(490, '30000906083', '526', 'RABANI', 'SUPADIO 9', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '526b.jpg', '-0.14371240730', '109.40848467900', 'Agustus 2016'),
(491, '30000906085', '527', 'RABUAN', 'SUPADIO 11', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '527b.jpg', '-0.14376905081', '109.40853357500', 'Agustus 2016'),
(492, '30000903808', '528', 'SDN 09 SEI DURIAN', 'SUPADIO', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '528b.jpg', '-0.14438425144', '109.40828867400', 'Agustus 2016'),
(493, '30000906076', '529', 'AGATO ADAN', 'SUPADIO NO.2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '529b.jpg', '-0.14392304611', '109.40869295400', 'Agustus 2016'),
(494, '30000906087', '530', 'AGUSTINUS EDI SUKARNO', 'SUPADIO 13', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '530b.jpg', '-0.14381452933', '109.40881872800', 'Agustus 2016'),
(495, '30000906078', '531', 'SUEF', 'SUPADIO 4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '531b.jpg', '-0.14376742845', '109.40887346000', 'Agustus 2016'),
(496, '30000906079', '532', 'SUTIKNO', 'SUPADIO 5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '532b.jpg', '-0.14369174759', '109.40896788300', 'Agustus 2016'),
(497, '30000906080', '533', 'RD PERHUBUNGAN', 'SUPADIO 6', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '533b.jpg', '-0.14365319729', '109.40904331700', 'Agustus 2016'),
(498, '30000900692', '534', 'ANGKASA PURA II', 'KOMPLEK SUPADIO', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '534b.jpg', '-0.14264400299', '109.40950767800', 'Agustus 2016'),
(499, '30000900693', '535', 'ANGKASA PURA II', 'KOMPLEK SUPADIO', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '535b.jpg', '-0.14260994581', '109.40948972100', 'Agustus 2016'),
(500, '30000800679', '536', 'RD.ANGKASAPURA II', 'KOMP.SUPADIO', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '536b.jpg', '-0.14256808409', '109.40961037300', 'Agustus 2016'),
(501, '30000900691', '537', 'BAREN BELO P/ALFAMART', 'JL. ADISUCIPTO SIMP.SUPADIO', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '537b.jpg', '-0.14300998939', '109.41059230400', 'Agustus 2016'),
(502, '30000900690', '538', 'BUSRI/INDOMARET', 'JL. ADISUCIPTO SIMP.SUPADIO', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '538b.jpg', '-0.14309449865', '109.41060312000', 'Agustus 2016'),
(503, '30000400125', '539', 'USMAN UMAR/SURAU BAITU', 'DS.KERAMAT 1 RT 07/01', '1', '1', 'Kubu Raya', '30', 'R1B RI/B', '539b.jpg', '-0.14817452151', '109.41216940200', 'Agustus 2016'),
(504, '30000400461', '540', 'EDI WIBOWO', 'JL.RAYA KUALA DUA RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '540b.jpg', '-0.14825294317', '109.41224208500', 'Agustus 2016'),
(505, '30000400441', '541', 'HIDAYAT', 'JL.RAYA KUALA DUA RT 07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '541b.jpg', '-0.14832214858', '109.41226939100', 'Agustus 2016'),
(506, '30000400388', '542', 'EDI JUNAIDI', 'JL.RAYA KUALA RT 07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '542b.jpg', '-0.14863254062', '109.41239668500', 'Agustus 2016'),
(507, '30000400153', '543', 'TJU PIANG NYAN', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '543b.jpg', '-0.14864621313', '109.41254565200', 'Agustus 2016'),
(508, '30000400149', '544', 'ANTON/WAYCOM', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '544b.jpg', '-0.14864639146', '109.41261178800', 'Agustus 2016'),
(509, '30000400255', '545', 'CHEK BU', 'JL.RAYA KUALA DUA DPN MINI MARKET', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '545b.jpg', '-0.14870202895', '109.41258164800', 'Agustus 2016'),
(510, '30000400136', '546', 'FRANGKY SONDINATA', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '546b.jpg', '-0.14874846018', '109.41256539300', 'Agustus 2016'),
(511, '30000100134', '547', 'DEDY SANTOSO', 'JL.PARIT JEPANG RT07/01', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '547b.jpg', '-0.14883473974', '109.41264540600', 'Agustus 2016'),
(512, '30000400291', '548', 'EKO HERDIYANTO MALIBU', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '548b.jpg', '-0.14898520962', '109.41261560400', 'Agustus 2016'),
(513, '30000400110', '549', 'M. ISHAK', 'JL.KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '549b.jpg', '-0.14906724224', '109.41269311400', 'Agustus 2016'),
(514, '30000400069', '550', 'SIGIT PURNOMO', 'DE.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '550b.jpg', '-0.14907566081', '109.41313999800', 'Agustus 2016'),
(515, '30000400165', '551', 'M. DJOHARI', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '551b.jpg', '-0.14934638150', '109.41298793400', 'Agustus 2016'),
(516, '30000400073', '552', 'HARDI SUMARLIN', 'JL.KUALA DUA RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '552b.jpg', '-0.14966317104', '109.41326101900', 'Agustus 2016'),
(517, '30000300416', '553', 'TRIN HARTINI, SE', 'JL. RAYA KUALA 2 (DPN TGLSARI)', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '553b.jpg', '-0.14963565280', '109.41350266800', 'Agustus 2016'),
(518, '30000400435', '554', 'SURYANTO', 'JL.RAYA KUALA DUA DPN TGL SARI2', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '554b.jpg', '-0.14968069178', '109.41352876600', 'Agustus 2016'),
(519, '30000400148', '555', 'BARRA S', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '555b.jpg', '-0.14969622523', '109.41361631500', 'Agustus 2016'),
(520, '30000400392', '556', 'BARRA S', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '556b.jpg', '-0.14982180472', '109.41376066900', 'Agustus 2016'),
(521, '30000400157', '557', 'HARTATIK', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '557b.jpg', '-0.14986890999', '109.41380558300', 'Agustus 2016'),
(522, '30000400218', '558', 'SUKAMTO ALIE', 'JL.RAYA KUALA DUA A.1', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '558b.jpg', '-0.14993344078', '109.41395258900', 'Agustus 2016'),
(523, '30000400219', '559', 'SUKAMTO ALIE', 'JL.RAYA KUALA DUA A.2', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '559b.jpg', '-0.15000433616', '109.41395282800', 'Agustus 2016'),
(524, '30000400220', '560', 'SUKAMTO ALIE', 'JL.RAYA KUALA DUA A.3', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '560b.jpg', '-0.14995563845', '109.41385792500', 'Agustus 2016'),
(525, '30000400065', '561', 'SETIYO KUNCORO', 'KUALA DUA  RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '561b.jpg', '-0.14999837113', '109.41407900700', 'Agustus 2016'),
(526, '30000400390', '562', 'SRI UTAMI', 'JL.RAYA KUALA DUA DPN GG. MURBACH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '562b.jpg', '-0.15009557778', '109.41418856900', 'Agustus 2016'),
(527, '30000700117', '563', 'TRI BUDI SUSILO', 'JL. ALAS KUSUMA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '563b.jpg', '-0.15019985515', '109.41431605600', 'Agustus 2016'),
(528, '30000400114', '564', 'SURAU NURUL HASANAH', 'JL.RAYA KUALA DUA ', '1', '1', 'Kubu Raya', '30', 'R1B RI/B', '564b.jpg', '-0.15038971608', '109.41452341000', 'Agustus 2016'),
(529, '30000400118', '565', 'BACHTIAR NUGROHO', 'JL.RAYA KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '565b.jpg', '-0.15028056560', '109.41461949000', 'Agustus 2016'),
(530, '30000400124', '566', 'SARONTO', 'DS.KERAMAT 1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '566b.jpg', '-0.15046216421', '109.41483707000', 'Agustus 2016'),
(531, '30000400082', '567', 'HADI PONIRAN', 'DS.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '567b.jpg', '-0.15042522854', '109.41496016700', 'Agustus 2016'),
(532, '30000400080', '568', 'NGADIMAN', 'DS.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '568b.jpg', '-0.15051513674', '109.41505809600', 'Agustus 2016'),
(533, '30000400152', '569', 'MARSONO', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '569b.jpg', '-0.15084047577', '109.41534201400', 'Agustus 2016'),
(534, '30000400141', '570', 'LIE AJAU', 'JL.RAYA KUALA DUA NO.26', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '570b.jpg', '-0.15090505153', '109.41550824000', 'Agustus 2016'),
(535, '30000400151', '571', 'SAMSUDIN', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '571b.jpg', '-0.15094122797', '109.41557942100', 'Agustus 2016'),
(536, '30000400079', '572', 'TIYAS NINGRUM BUDI', 'DS.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '572b.jpg', '-0.15081759929', '109.41567641400', 'Agustus 2016'),
(537, '30000400078', '573', 'NGATIJO', 'DS.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '573b.jpg', '-0.15089453961', '109.41581003900', 'Agustus 2016'),
(538, '30000400514', '574', 'HERCULES SIMANJUNTAK', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '574b.jpg', '-0.15095894505', '109.41604368500', 'Agustus 2016'),
(539, '30000400190', '575', 'HERKULES SIMANJUNTAK', 'JL.RAYA KUALA DUA RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '575b.jpg', '-0.15109035482', '109.41597672900', 'Agustus 2016'),
(540, '30000400369', '576', 'ESTER', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '576b.jpg', '-0.15133176547', '109.41636085600', 'Agustus 2016'),
(541, '30000400138', '577', 'MINAH', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '577b.jpg', '-0.15139782808', '109.41645917500', 'Agustus 2016'),
(542, '30000400132', '578', 'LIM LIE HIA', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '578b.jpg', '-0.15142707304', '109.41653968100', 'Agustus 2016'),
(543, '30000400440', '579', 'HARYANTO', 'JL.RAYA KUALA DUA DPN FOTOCOPY', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '579b.jpg', '-0.15158374174', '109.41677738600', 'Agustus 2016'),
(544, '30000400438', '580', 'LIU FUT THIN/EDDY', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '580b.jpg', '-0.15162429526', '109.41687099700', 'Agustus 2016'),
(545, '30000400439', '581', 'LIU FUT THIN/EDDY', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '581b.jpg', '-0.15165310787', '109.41692029300', 'Agustus 2016'),
(546, '30000400129', '582', 'PHANG HON APIN', 'JL.RAYA KUALA DUA RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '582b.jpg', '-0.15169682370', '109.41701518100', 'Agustus 2016'),
(547, '30000400290', '583', 'ALPIAN', 'GG.DEBU 02/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '583b.jpg', '-0.14854290629', '109.41727654800', 'Agustus 2016'),
(548, '30000700177', '584', 'ISKANDAR', 'GG. DEBU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '584b.jpg', '-0.14869233380', '109.41729759400', 'Agustus 2016'),
(549, '30000700328', '585', 'SUHADA', 'GG. DEBU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '585b.jpg', '-0.15131873582', '109.41718833500', 'Agustus 2016'),
(550, '30000400115', '586', 'ANWAR SADAD', 'DS. KERAMAT 1 RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '586b.jpg', '-0.15134338111', '109.41717505100', 'Agustus 2016'),
(551, '30000400130', '587', 'SUDJANTAK', 'JL.RAYA KUALA DUA NO.18', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '587b.jpg', '-0.15137051940', '109.41716733300', 'Agustus 2016'),
(552, '30000400443', '588', 'H.M DHOLI', 'GG.DEBU KERAMAT KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '588b.jpg', '-0.15158191282', '109.41721621200', 'Agustus 2016'),
(553, '30000400217', '589', 'BUJANG ALI SUDIN SANJAYA', 'TK. BANGUNAN KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '589b.jpg', '-0.15184757405', '109.41737840200', 'Agustus 2016'),
(554, '30000400696', '590', 'LI KUI HIONG', 'JL.RAYA KUALA DUA SPG JEMBATAN WBA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '590b.jpg', '-0.15203904419', '109.41772001000', 'Agustus 2016'),
(555, '30000700566', '591', 'H.ARMUDIN', 'JL. RAYA KUALA 2 GG. PARIT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '591b.jpg', '-0.15755243677', '109.41368668100', 'Agustus 2016'),
(556, '30000400391', '592', 'SUMIYEM/MADENEM', 'JL.RAYA KUALA DUA GG.PARIT KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '592b.jpg', '-0.15781461005', '109.41348632800', 'Agustus 2016'),
(557, '30000400403', '593', 'TIRASMAH', 'GG.PARIT KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '593b.jpg', '-0.15761565461', '109.41252782900', 'Agustus 2016'),
(558, '30000400565', '594', 'MARI', 'JL.RAYA KUALA DUA GG.PARIT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '594b.jpg', '-0.15734502197', '109.41245161700', 'Agustus 2016'),
(559, '30000400393', '595', 'HASAN', 'JL.RAYA KUALA DUA DPN GG.PARIT KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '595b.jpg', '-0.15713848136', '109.41215158600', 'Agustus 2016'),
(560, '30000400405', '596', 'SARNADIN', 'GG.PARIT KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '596b.jpg', '-0.15729800032', '109.41182737500', 'Agustus 2016'),
(561, '30000400402', '597', 'MUHAMMAD SYAFI&#039;I', 'DS.KERAMAT 1 RT 15/001', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '597b.jpg', '-0.15704333291', '109.41190020500', 'Agustus 2016'),
(562, '30000400382', '598', 'MASJID AN-NUR/ADIMONO', 'GG.PARIT KERAMAT', '1', '1', 'Kubu Raya', '30', 'R1B RI/B', '598b.jpg', '-0.15649375981', '109.41067682800', 'Agustus 2016'),
(563, '30000400404', '599', 'MUWARDI', 'GG.PARIT KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '599b.jpg', '-0.15634684833', '109.41176291500', 'Agustus 2016'),
(564, '30000400704', '600', 'ROHA', 'JL.RAYA KUALA DUA GG.PARIT KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '600b.jpg', '-0.15779057416', '109.41514430000', 'Agustus 2016'),
(565, '30000400649', '601', 'VICENTE NICO MRD', 'DS.PARIT KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '601b.jpg', '-0.15669388150', '109.41405457000', 'Agustus 2016'),
(566, '30000400374', '602', 'MARCELLINA SETYORINI', 'KOMP.PONDOK KURNIA E.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '602b.jpg', '-0.15651672047', '109.41433644900', 'Agustus 2016'),
(567, '30000400703', '603', 'BASIUS BONI', 'PONDOK KURNIA NO.C4 GG.PRT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '603b.jpg', '-0.15615972977', '109.41423476800', 'Agustus 2016'),
(568, '30000400169', '604', 'TIO JAO TIAK', 'GG.KERAMAT 1 RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '604b.jpg', '-0.15339545572', '109.41634381900', 'Agustus 2016'),
(569, '30000400204', '605', 'HARJONO HARTANTO', 'G.KERAMAT 1 RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '605b.jpg', '-0.15289663096', '109.41667882400', 'Agustus 2016'),
(570, '30000800622', '606', 'DJAMALUDIN', 'GG.LESTARI SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '606b.jpg', '-0.15245195398', '109.41683122300', 'Agustus 2016'),
(571, '30000400694', '607', 'EFENDY/CONG SUI', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '607b.jpg', '-0.15207088382', '109.41718275700', 'Agustus 2016');
INSERT INTO `tb_sambungan` (`id_sambungan`, `no_pelanggan`, `titik_gps`, `nama_pelanggan`, `alamat`, `id_desa`, `id_kecamatan`, `kabupaten`, `status`, `kelompok`, `foto`, `x`, `y`, `update_data`) VALUES
(572, '30000400460', '608', 'BUJANG ALI SUDIN SANJAYA', 'JL.RAYA KUALA DUA RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '608b.jpg', '-0.15202821314', '109.41710036100', 'Agustus 2016'),
(573, '30000400319', '609', 'PHANG HON KIE', 'JL.RAYA KUALA DUA DS.KERAMAT 1', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '609b.jpg', '-0.15187025384', '109.41700870300', 'Agustus 2016'),
(574, '30000400714', '610', '', 'JL. RAYA KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '610b.jpg', '-0.15177496460', '109.41681755200', 'Agustus 2016'),
(575, '30000400712', '611', '', 'JL. RAYA KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '611b.jpg', '-0.15181411109', '109.41689452600', 'Agustus 2016'),
(576, '30000400713', '612', '', 'JL. RAYA KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '612b.jpg', '-0.15175693026', '109.41677715300', 'Agustus 2016'),
(577, '30000400112', '613', 'ARIS RAHMANTA/H.SURADI', 'DS.KERAMAT 1 RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '613b.jpg', '-0.15173086908', '109.41629901400', 'Agustus 2016'),
(578, '30000400142', '614', 'SUWENDI SALIM', 'JL.RAYA KUALA DUA NO.8 A-B', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '614b.jpg', '-0.15170528579', '109.41613572400', 'Agustus 2016'),
(579, '30000400143', '615', 'SUWENDI SALIM', 'JL.RAYA KUALA DUA NO.8 C-D', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '615b.jpg', '-0.15168323975', '109.41609203900', 'Agustus 2016'),
(580, '30000400144', '616', 'SUWENDI SALIM', 'JL.RAYA KUALA DUA NO.8 E', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '616b.jpg', '-0.15165669953', '109.41604342700', 'Agustus 2016'),
(581, '30000400145', '617', 'SUWENDI SALIM', 'JL.RAYA KUALA DUA NO.8 F', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '617b.jpg', '-0.15163089895', '109.41600321000', 'Agustus 2016'),
(582, '30000400146', '618', 'SUWENDI SALIM', 'JL.RAYA KUALA DUA NO.8 G', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '618b.jpg', '-0.15160596859', '109.41595518900', 'Agustus 2016'),
(583, '30000400147', '619', 'SUWENDI SALIM', 'JL.RAYA KUALA DUA NO.8 H', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '619b.jpg', '-0.15157778497', '109.41590510400', 'Agustus 2016'),
(584, '30000700122', '620', 'SALIKIN, A.MA', 'G. KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '620b.jpg', '-0.15147557441', '109.41585360600', 'Agustus 2016'),
(585, '30000300062', '621', 'JULIANTI', 'DS. KERAMAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '621b.jpg', '-0.15130330557', '109.41572635700', 'Agustus 2016'),
(586, '30000400192', '622', 'KHIM CUN', 'JL.RAYA KUALA DUA RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '622b.jpg', '-0.15127344118', '109.41569916900', 'Agustus 2016'),
(587, '30000400175', '623', 'KHIM CUN', 'DS.KERAMAT 1 RT 01/001', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '623b.jpg', '-0.15125014467', '109.41564151300', 'Agustus 2016'),
(588, '30000400075', '624', 'MARTONO', 'DS.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '624b.jpg', '-0.15142576620', '109.41555981300', 'Agustus 2016'),
(589, '30000400077', '625', 'YUNITA DESIANA', 'DS.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '625b.jpg', '-0.15137040294', '109.41549633100', 'Agustus 2016'),
(590, '30000400139', '626', 'JOHERMAN', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '626b.jpg', '-0.15143460364', '109.41535961800', 'Agustus 2016'),
(591, '30000400156', '627', 'MEI YEDI TJHIN', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '627b.jpg', '-0.15140891624', '109.41527076600', 'Agustus 2016'),
(592, '30000400140', '628', 'HJ. TRI HARYANI, AMD', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '628b.jpg', '-0.15119306149', '109.41529586500', 'Agustus 2016'),
(593, '30000400121', '629', 'THE KHUNG HUI', 'JL.RAYA KUALA 2 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '629b.jpg', '-0.15115509343', '109.41522732600', 'Agustus 2016'),
(594, '30000400092', '630', 'THE KHUNG HUI', 'JL.RAYA KUALA DUA RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '630b.jpg', '-0.15116947265', '109.41526302300', 'Agustus 2016'),
(595, '30000400072', '631', 'SUMARNI', 'KERAMAT JAYA RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '631b.jpg', '-0.15100305367', '109.41521101300', 'Agustus 2016'),
(596, '30000400116', '632', 'GEREJA/CHARLES', 'JL.RAYA KUALA 2', '1', '1', 'Kubu Raya', '30', 'R1B RI/B', '632b.jpg', '-0.15076030531', '109.41476508900', 'Agustus 2016'),
(597, '30000400081', '633', 'SAMINGAN', 'DS.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '633b.jpg', '-0.15072152143', '109.41469379000', 'Agustus 2016'),
(598, '30000400576', '634', 'DIDIK HARYADI', 'JL.RAYA KUALA DUA ', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '634b.jpg', '-0.15068738231', '109.41463427600', 'Agustus 2016'),
(599, '30000400066', '635', 'SARDI NGALIMAN, S.PD', 'DE.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '635b.jpg', '-0.15061214733', '109.41442660800', 'Agustus 2016'),
(600, '30000400131', '636', 'SUDI', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '636b.jpg', '-0.15058199533', '109.41437309300', 'Agustus 2016'),
(601, '30000400150', '637', 'TJHAI JUN FU', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '637b.jpg', '-0.15053061904', '109.41427589100', 'Agustus 2016'),
(602, '30000400108', '638', 'AGUS PURNOMO', 'JL.RAYA KUALA DUA NO.41', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '638b.jpg', '-0.15061584742', '109.41399262700', 'Agustus 2016'),
(603, '30000400389', '639', 'EVI SUSANTI, S.KOM', 'JL.RAYA KUALA RT 03/01 NO.41', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '639b.jpg', '-0.15068070282', '109.41386082400', 'Agustus 2016'),
(604, '30000400515', '640', 'FERYANTO', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '640b.jpg', '-0.15020236457', '109.41371037300', 'Agustus 2016'),
(605, '30000400285', '641', 'BUDI UTOYO', 'JL.RAYA KUALA DUA RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '641b.jpg', '-0.15027405619', '109.41349853400', 'Agustus 2016'),
(606, '30000400174', '642', 'AGUS SUPRIADI', 'DS.KERAMAT 1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '642b.jpg', '-0.15017769683', '109.41336495000', 'Agustus 2016'),
(607, '30000400113', '643', 'H. IBRAHIM SUHERDHI', 'DS.KERAMAT 1 ', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '643b.jpg', '-0.15005682794', '109.41318760200', 'Agustus 2016'),
(608, '30000400167', '644', 'DIANA SUHARTATI', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '644b.jpg', '-0.14990608281', '109.41306616400', 'Agustus 2016'),
(609, '30000400070', '645', 'RATNO', 'DE.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '645b.jpg', '-0.14965712489', '109.41293266600', 'Agustus 2016'),
(610, '30000400109', '646', 'SUWANDI', 'DS.KERAMAT 1 KUALA 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '646b.jpg', '-0.14957701684', '109.41285168400', 'Agustus 2016'),
(611, '30000400198', '647', 'YONO', 'JL.RAYA KUALA DUA RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '647b.jpg', '-0.14949432569', '109.41278894400', 'Agustus 2016'),
(612, '30000400254', '648', 'SUTRIYONO/MISNATI', 'DS.KERAMAT 1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '648b.jpg', '-0.14959149813', '109.41269435500', 'Agustus 2016'),
(613, '30000400196', '649', 'SURAJI', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '649b.jpg', '-0.14950795305', '109.41259547100', 'Agustus 2016'),
(614, '30000400434', '650', 'NG SIA KHENG', 'JL.RAYA KUALA DUA SPG MARKET SGT', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '650b.jpg', '-0.14928275425', '109.41234868800', 'Agustus 2016'),
(615, '30000400695', '651', 'ANDRE JORDAN', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '651b.jpg', '-0.14925645690', '109.41230269700', 'Agustus 2016'),
(616, '30000400561', '652', 'TJHIA SOK GEK/DESINA', 'JL.RAYA KUALA DUA SPG SANGAT MANIS', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '652b.jpg', '-0.14920922899', '109.41227843800', 'Agustus 2016'),
(617, '30000400133', '653', 'WANDY NURYADI', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '653b.jpg', '-0.14909368087', '109.41230192000', 'Agustus 2016'),
(618, '30000400135', '654', 'SUMINAH', 'JL.RAYA KUALA DUA RT 02/01', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '654b.jpg', '-0.14906873342', '109.41227806000', 'Agustus 2016'),
(619, '30000400137', '655', 'JONI', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '655b.jpg', '-0.14893756283', '109.41226679500', 'Agustus 2016'),
(620, '30000400264', '656', 'RINA SUSANTI', 'DS.KERAMAT/SPG RASAU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '656b.jpg', '-0.14896502766', '109.41228478600', 'Agustus 2016'),
(621, '30000400492', '657', 'WISNU YULIANSYAH', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '657b.jpg', '-0.14886070866', '109.41222328700', 'Agustus 2016'),
(622, '30000400155', '658', 'JUMANSYAH M.NUR', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '658b.jpg', '-0.14870747055', '109.41219610300', 'Agustus 2016'),
(623, '30000400154', '659', 'JUMANSYAH M.NUR', 'JL.RAYA KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '659b.jpg', '-0.14868033845', '109.41218712100', 'Agustus 2016'),
(624, '30000100179', '660', 'FERDI SALAM', 'JL.PARIT JEPANG RT07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '660b.jpg', '-0.14877980415', '109.41196253200', 'Agustus 2016'),
(625, '30000100178', '661', 'HARUNA', 'JL.PRT JEPANG RT07/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '661b.jpg', '-0.14878914225', '109.41208054100', 'Agustus 2016'),
(626, '30000805562', '662', 'PUSKESMAS SEI DURIAN', 'JL.ADISUCIPTO KM 16,1', '1', '1', 'Kubu Raya', '30', 'R3H RIII/H', '662b.jpg', '-0.13968163005', '109.41007001400', 'Agustus 2016'),
(627, '30000810543', '663', 'SUKIJAN', 'GG.LESTARI NO.20', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '663b.jpg', '-0.14166131305', '109.41112203800', 'Agustus 2016'),
(628, '30000810542', '664', 'ANI PURNAMAWATI,SE', 'GG.LESTARI NO.19', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '664b.jpg', '-0.14174746007', '109.41112667600', 'Agustus 2016'),
(629, '30000810549', '665', 'AGUS CAHYONO', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '665b.jpg', '-0.14194640966', '109.41112137400', 'Agustus 2016'),
(630, '30000810545', '666', 'MULYO WALUYO', 'GG.LESTARI NO.17', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '666b.jpg', '-0.14201542518', '109.41109537200', 'Agustus 2016'),
(631, '30000810544', '667', 'LASIMAN', 'GG.LESTARI N0.01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '667b.jpg', '-0.14226818025', '109.41084905800', 'Agustus 2016'),
(632, '30000800373', '668', 'H.M THOYIB', 'G.LESTARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '668b.jpg', '-0.14233054891', '109.41113890900', 'Agustus 2016'),
(633, '30000800624', '669', 'DADANG GUNAWAN', 'GG.LESTARI SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '669b.jpg', '-0.14268572561', '109.41228945400', 'Agustus 2016'),
(634, '30000800619', '670', 'B. GAMAL MASRI', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '670b.jpg', '-0.14274855647', '109.41241866700', 'Agustus 2016'),
(635, '30000800621', '671', 'SUKAMTO', 'GG.LESTARI SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '671b.jpg', '-0.14250248851', '109.41258536500', 'Agustus 2016'),
(636, '30000800620', '672', 'AZUARNI', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '672b.jpg', '-0.14250869877', '109.41270524000', 'Agustus 2016'),
(637, '30000800623', '673', 'JAMAL', 'GG.LESTARI SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '673b.jpg', '-0.14251869999', '109.41279305200', 'Agustus 2016'),
(638, '30000800673', '674', 'SITI MEGAWATI', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '674b.jpg', '-0.14271145250', '109.41273837800', 'Agustus 2016'),
(639, '30000800610', '675', 'SRI HARSIATI', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '675b.jpg', '-0.14271670291', '109.41291334200', 'Agustus 2016'),
(640, '30000800611', '676', 'FATMAWATI', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '676b.jpg', '-0.14260011745', '109.41314489100', 'Agustus 2016'),
(641, '30000800674', '677', 'MOTARUDIN', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '677b.jpg', '-0.14258058470', '109.41328334100', 'Agustus 2016'),
(642, '30000800614', '678', 'ENDANG SUSILOWATI', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '678b.jpg', '-0.14260299838', '109.41341041400', 'Agustus 2016'),
(643, '30000800616', '679', 'SUGRIANIK', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '679b.jpg', '-0.14273291881', '109.41340272300', 'Agustus 2016'),
(644, '30000800609', '680', 'BUDIANTORO', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '680b.jpg', '-0.14278432200', '109.41319616700', 'Agustus 2016'),
(645, '30000800618', '681', 'SAMINO', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '681b.jpg', '-0.14279859565', '109.41335826400', 'Agustus 2016'),
(646, '30000800670', '682', 'MIONO', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '682b.jpg', '-0.14296424287', '109.41313100900', 'Agustus 2016'),
(647, '30000800669', '683', 'KIKI SRI REZEKI', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '683b.jpg', '-0.14305086834', '109.41334052200', 'Agustus 2016'),
(648, '30000801169', '684', 'FX.WIDODO', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '684b.jpg', '-0.14331883284', '109.41278634600', 'Agustus 2016'),
(649, '30000807959', '685', 'I NYOMAN SUDIKA', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '685b.jpg', '-0.14342926473', '109.41288240900', 'Agustus 2016'),
(650, '30000801172', '686', 'NY.SRI HARYONO', 'GG. KARYA 1 PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '686b.jpg', '-0.14332071901', '109.41290122500', 'Agustus 2016'),
(651, '30000800677', '687', 'FERI IRAWAN', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '687b.jpg', '-0.14307367545', '109.41248831100', 'Agustus 2016'),
(652, '30000800678', '688', 'NENENG', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '688b.jpg', '-0.14310034104', '109.41271752700', 'Agustus 2016'),
(653, '30000800671', '689', 'TRAM', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '689b.jpg', '-0.14310273049', '109.41291729000', 'Agustus 2016'),
(654, '30000800615', '690', 'OLIADE', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '690b.jpg', '-0.14301894730', '109.41272651600', 'Agustus 2016'),
(655, '30000800675', '691', 'AGUS NASIR', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '691b.jpg', '-0.14301657784', '109.41292610400', 'Agustus 2016'),
(656, '30000800672', '692', 'IWAN SISWANTO', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '692b.jpg', '-0.14292187527', '109.41288076900', 'Agustus 2016'),
(657, '30000800612', '693', 'KIKI ANDAYANI', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '693b.jpg', '-0.14301655356', '109.41301623100', 'Agustus 2016'),
(658, '30000800676', '694', 'ASEP GUNAWAN', 'GG.KARYA 1 SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '694b.jpg', '-0.14281094135', '109.41275348100', 'Agustus 2016'),
(659, '30000800617', '695', 'SLAMET JUNAIDI', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '695b.jpg', '-0.14282190183', '109.41291713200', 'Agustus 2016'),
(660, '30000811993', '696', 'SUKIJAN/MESJID AWALUDIN', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R1C RI/C', '696b.jpg', '-0.14216630250', '109.41020172400', 'Agustus 2016'),
(661, '30000800386', '697', 'SUGIARTO', 'SIMPANG SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '697b.jpg', '-0.14234240630', '109.41056688400', 'Agustus 2016'),
(662, '30000801164', '698', 'AKMAL', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '698b.jpg', '-0.14246237511', '109.41060988300', 'Agustus 2016'),
(663, '30000801859', '699', 'RAMLI', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '699b.jpg', '-0.14252424106', '109.41067876200', 'Agustus 2016'),
(664, '30000801166', '700', 'PARDIONO', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '700b.jpg', '-0.14257422521', '109.41055514200', 'Agustus 2016'),
(665, '30000801902', '701', 'DWI NOVITA NINGRUM', 'SIMPANG SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '701b.jpg', '-0.14270177421', '109.41067137300', 'Agustus 2016'),
(666, '30000811594', '702', 'ACHMAD SUBKETI', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '702b.jpg', '-0.14277223913', '109.41068166500', 'Agustus 2016'),
(667, '30000801158', '703', 'TEGUH SETIABUDI', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '703b.jpg', '-0.14284125775', '109.41063966500', 'Agustus 2016'),
(668, '30000800655', '704', 'D. ALI FENDI', 'SUNGAI DURIAN RT.001/RW.003', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '704b.jpg', '-0.14270003344', '109.41217641500', 'Agustus 2016'),
(669, '30000800631', '706', 'DJUPRI HARYANTO', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '706b.jpg', '-0.14287609920', '109.41215504700', 'Agustus 2016'),
(670, '30000800653', '707', 'PENDI.A.K', 'SUNGAI DURIAN RT.001/RW.003', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '707b.jpg', '-0.14288559831', '109.41199387600', 'Agustus 2016'),
(671, '30000800632', '708', 'KUSNO', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '708b.jpg', '-0.14288322134', '109.41192433600', 'Agustus 2016'),
(672, '30000800656', '709', 'SRI NUR HARTINI', 'SUNGAI DURIAN RT.001/RW.003', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '709b.jpg', '-0.14274757467', '109.41189108800', 'Agustus 2016'),
(673, '30000800654', '710', 'HERMAN HARTONO', 'SUNGAI DURIAN DUSUN MERDEKA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '710b.jpg', '-0.14286655638', '109.41184961600', 'Agustus 2016'),
(674, '30000800630', '711', 'RAPIDIN ALAMSYAH', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '711b.jpg', '-0.14270616326', '109.41168875300', 'Agustus 2016'),
(675, '30000800626', '712', 'SITI ROHANI', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '712b.jpg', '-0.14287511432', '109.41178851200', 'Agustus 2016'),
(676, '30000800633', '713', 'EKO WAHYUDI', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '713b.jpg', '-0.14288415813', '109.41169285700', 'Agustus 2016'),
(677, '30000800625', '714', 'ABD. WAHAB R', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '714b.jpg', '-0.14287462469', '109.41156215100', 'Agustus 2016'),
(678, '30000800628', '715', 'ZAINUDIN', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '715b.jpg', '-0.14287604424', '109.41146678300', 'Agustus 2016'),
(679, '30000800657', '716', 'ISKANDAR', 'SUNGAI DURIAN DUSUN MERDEKA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '716b.jpg', '-0.14269090412', '109.41144524000', 'Agustus 2016'),
(680, '30000800629', '717', 'H. SUKADI', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '717b.jpg', '-0.14291128245', '109.41116551100', 'Agustus 2016'),
(681, '30000800627', '718', 'URAY WARDI', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '718b.jpg', '-0.14303644520', '109.41119935600', 'Agustus 2016'),
(682, '30000800367', '719', 'ALEK JUNAIDI', 'GG.ANEKA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '719b.jpg', '-0.14302500064', '109.41102360600', 'Agustus 2016'),
(683, '30000800347', '720', 'NURJANAH', 'SIMPANG SEI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '720b.jpg', '-0.14289578830', '109.41068903100', 'Agustus 2016'),
(684, '30000800370', '721', 'SUKASDI', 'SIMPANG SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '721b.jpg', '-0.14319063131', '109.41059746300', 'Agustus 2016'),
(685, '30000800364', '722', 'KARTINA', 'SIMPANG SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '722b.jpg', '-0.14331201779', '109.41060696100', 'Agustus 2016'),
(686, '30000805254', '723', 'ENDANG KUSNADI', 'SEI DURIAN NO.5', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '723b.jpg', '-0.14338530708', '109.41059952700', 'Agustus 2016'),
(687, '30000800365', '724', 'SUGIYO', 'SIMPANG SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '724b.jpg', '-0.14341637081', '109.41060553300', 'Agustus 2016'),
(688, '30000800363', '725', 'YUDIANTO', 'SIMPANG SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '725b.jpg', '-0.14344409585', '109.41060660000', 'Agustus 2016'),
(689, '30000800400', '726', 'SULASIH', 'SIMPANG SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '726b.jpg', '-0.14356275046', '109.41060725300', 'Agustus 2016'),
(690, '30000801165', '727', 'NY.RIAYAMA', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '727b.jpg', '-0.14356966276', '109.41072028400', 'Agustus 2016'),
(691, '30000801167', '728', 'SUKISNO', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '728b.jpg', '-0.14360666790', '109.41090286600', 'Agustus 2016'),
(692, '30000800349', '729', 'H. KOMAIRAH', 'SEI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '729b.jpg', '-0.14348865492', '109.41114363100', 'Agustus 2016'),
(693, '30000800348', '730', 'SIDOMORO PAKPAHAN', 'SEI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3F RIII/F', '730b.jpg', '-0.14351471640', '109.41135780300', 'Agustus 2016'),
(694, '30000802758', '731', 'NGAISAH REMISARI', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '731b.jpg', '-0.14350889361', '109.41140171100', 'Agustus 2016'),
(695, '30000801155', '732', 'TINUS MAT LUI', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '732b.jpg', '-0.14313787610', '109.41135319000', 'Agustus 2016'),
(696, '30000801160', '733', 'SRI NARTO', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '733b.jpg', '-0.14308932707', '109.41144569900', 'Agustus 2016'),
(697, '30000801156', '734', 'ACHMAD BEDU', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '734b.jpg', '-0.14355769252', '109.41160837500', 'Agustus 2016'),
(698, '30000801162', '735', 'SUDARMI', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '735b.jpg', '-0.14359960111', '109.41187466400', 'Agustus 2016'),
(699, '30000800366', '736', 'BAKRI', 'SEI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '736b.jpg', '-0.14361816286', '109.41193487600', 'Agustus 2016'),
(700, '30000801153', '737', 'SRILULUS', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '737b.jpg', '-0.14355248861', '109.41209764800', 'Agustus 2016'),
(701, '30000800668', '738', 'SUPRIYONO', 'JL.SEI DURIAN DEPAN GEREJA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '738b.jpg', '-0.14331449099', '109.41221004300', 'Agustus 2016'),
(702, '30000811923', '739', 'M.SAHURI', 'SEI DURIAN NO.30', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '739b.jpg', '-0.14346965174', '109.41234697600', 'Agustus 2016'),
(703, '30000801159', '740', 'KUSBANDI', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '740b.jpg', '-0.14353897890', '109.41261367700', 'Agustus 2016'),
(704, '30000801157', '741', 'KUSBANDI', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '741b.jpg', '-0.14354112293', '109.41266888400', 'Agustus 2016'),
(705, '30000806043', '742', 'SUPARMI', 'GG.KARYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '742b.jpg', '-0.14356897388', '109.41270404700', 'Agustus 2016'),
(706, '30000802508', '743', 'PARSONO', 'GG.KARYA 1 PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '743b.jpg', '-0.14355350363', '109.41277489300', 'Agustus 2016'),
(707, '30000805297', '744', 'NURYATMAN', 'JL.PELABUHAN LAUT NO.7', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '744b.jpg', '1.00000000000', '1.00000000000', 'Agustus 2016'),
(708, '30000800381', '745', 'TASRIYAH', 'JL.PELABUHAN LAUT NO.29', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '745b.jpg', '-0.14352259816', '109.41298721500', 'Agustus 2016'),
(709, '30000808858', '746', 'BUDI SANTOSO,SE', 'PELABUHAN LAUT NO.29', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '746b.jpg', '-0.14367012671', '109.41307682000', 'Agustus 2016'),
(710, '30000800346', '747', 'H. SUMADJI', 'JL.SEI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '747b.jpg', '-0.14355091639', '109.41313810200', 'Agustus 2016'),
(711, '30000800463', '748', 'JUMADI', 'SEI.DURIAN LAUT GG.KARYA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '748b.jpg', '-0.14354353696', '109.41323346100', 'Agustus 2016'),
(712, '30000800350', '749', 'ADHARI', 'SEI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '749b.jpg', '-0.14365753811', '109.41324476500', 'Agustus 2016'),
(713, '30000805542', '750', 'SARIYANTI', 'JL.PELABUHAN LAUT NO.1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '750b.jpg', '-0.14350523770', '109.41339129500', 'Agustus 2016'),
(714, '30000800560', '751', 'USMAN UMAR', 'GG.KARYA II SEI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '751b.jpg', '-0.14315039101', '109.41373953400', 'Agustus 2016'),
(715, '30000800462', '752', 'SUCI KURNIASIH', 'SEI DURIAN LAUT DS.MERDEKA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '752b.jpg', '-0.14327607271', '109.41376034100', 'Agustus 2016'),
(716, '30000100031', '753', 'PONIRAN', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '753b.jpg', '-0.14336316536', '109.41384957300', 'Agustus 2016'),
(717, '30000801168', '754', 'H.MUSIRAN', 'SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '754b.jpg', '-0.14364304487', '109.41378650300', 'Agustus 2016'),
(718, '30000805551', '755', 'SAMIKUN', 'SEI DURIAN RT06/03', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '755b.jpg', '-0.14356786832', '109.41396111000', 'Agustus 2016'),
(719, '30000800385', '756', 'IBERAHIM ALI', 'JL.SUNGAI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '756b.jpg', '-0.14356454464', '109.41419163900', 'Agustus 2016'),
(720, '30000801170', '757', 'MARWAN/MASRAN', 'JL. PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '757b.jpg', '-0.14361976755', '109.41434994700', 'Agustus 2016'),
(721, '30000800613', '759', 'ATI MARYANA', 'GG.KARYA SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '759b.jpg', '-0.14327610098', '109.41447622400', 'Agustus 2016'),
(722, '30000800426', '760', 'RUSLAH', 'SUNGAI DURIAN LAUT/DKT GG.KARYA 3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '760b.jpg', '-0.14362168242', '109.41452211600', 'Agustus 2016'),
(723, '30000800376', '761', 'MASJID NURUL', 'JL.PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R1C RI/C', '761b.jpg', '-0.14364700697', '109.41596187500', 'Agustus 2016'),
(724, '30000800383', '762', 'SUBIR', 'JL.SUNGAI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '762b.jpg', '-0.14391423105', '109.41556678900', 'Agustus 2016'),
(725, '30000800711', '763', '', 'GG.LESTARI SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '763b.jpg', '-0.14395273556', '109.41485169000', 'Agustus 2016'),
(726, '30000800728', '764', '', 'GG.LESTARI SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '764b.jpg', '-0.14386563102', '109.41478774200', 'Agustus 2016'),
(727, '30000800608', '765', 'SITI ZAINAB SE', 'GG.KURNIA PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '765b.jpg', '-0.14399036225', '109.41466351000', 'Agustus 2016'),
(728, '30000800601', '766', 'SUPARDI', 'GG.KEMUNING PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '766b.jpg', '-0.14415241793', '109.41484803500', 'Agustus 2016'),
(729, '30000800602', '767', 'FREDIAN SOPONO', 'GG.KEMUNING PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '767b.jpg', '-0.14423168714', '109.41482274700', 'Agustus 2016'),
(730, '30000800606', '768', 'SUPRAPTO', 'GG.KURNIA PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '768b.jpg', '-0.14450680031', '109.41481350600', 'Agustus 2016'),
(731, '30000800600', '769', 'M. ALI NIRMAN', 'GG.KEMUNING PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '769b.jpg', '-0.14469562931', '109.41448783500', 'Agustus 2016'),
(732, '30000800597', '770', 'ARBAIN', 'GG.KEMUNING PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '770b.jpg', '-0.14447236314', '109.41561624500', 'Agustus 2016'),
(733, '30000800598', '771', 'SYUAIB DULHAQ', 'GG.KEMUNING PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '771b.jpg', '-0.14453494098', '109.41545733500', 'Agustus 2016'),
(734, '30000800599', '772', 'MARYOTO', 'GG.KEMUNING PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '772b.jpg', '-0.14470128720', '109.41542139300', 'Agustus 2016'),
(735, '30000100648', '773', 'VINI ANIARTI', 'GG.RAWA INDAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '773b.jpg', '-0.14531761192', '109.41446135700', 'Agustus 2016'),
(736, '30000100569', '774', 'PURDIANTO', 'GG.RAWA INDAH/KURNIA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '774b.jpg', '-0.14509915995', '109.41463083400', 'Agustus 2016'),
(737, '30000100041', '775', 'PARIYO', 'GG.RAWA INDAH NO.19', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '775b.jpg', '-0.14512536210', '109.41416321100', 'Agustus 2016'),
(738, '30000100050', '776', 'ROHANA', 'GG.RAWA INDAH NO.16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '776b.jpg', '-0.14503581768', '109.41412777300', 'Agustus 2016'),
(739, '30000100128', '777', 'SUKUSNO', 'JL.RAYA INDAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '777b.jpg', '-0.14505389898', '109.41403793800', 'Agustus 2016'),
(740, '30000800700', '778', 'AHMAD HUSE', 'JL.SUNGAI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '778b.jpg', '-0.14496084773', '109.41387654800', 'Agustus 2016'),
(741, '', '779', '', 'GG.LESTARI SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '779b.jpg', '-0.14444507566', '109.41399627600', 'Agustus 2016'),
(742, '', '780', '', 'GG.LESTARI SEI DURIAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '780b.jpg', '-0.14427036252', '109.41398434900', 'Agustus 2016'),
(743, '30000800607', '781', 'NURKHOLIS', 'GG.KURNIA PELABUHAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '781b.jpg', '-0.14408507640', '109.41388472800', 'Agustus 2016'),
(744, '30000100464', '782', 'SARBINI', 'GG.RAWA INDAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '782b.jpg', '-0.14398401190', '109.41404475800', 'Agustus 2016'),
(745, '30000800384', '783', 'SARBINI', 'JL.SEI DURIAN LAUT GG.RAWA INDAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '783b.jpg', '-0.14411529381', '109.41405361700', 'Agustus 2016'),
(746, '30000100432', '784', 'ROHANI', 'GG.RAWA INDAH RT 05/03', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '784b.jpg', '-0.14473077055', '109.41424664000', 'Agustus 2016'),
(747, '30000100197', '785', 'GUSTIANI', 'GG.RAWA INDAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '785b.jpg', '-0.14485266594', '109.41425384600', 'Agustus 2016'),
(748, '30000100044', '786', 'SUGIANTO', 'GG.RAWA INDAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '786b.jpg', '-0.14590612388', '109.41490419100', 'Agustus 2016'),
(749, '30000100127', '787', 'YANTO', 'JL.RAYA INDAH NO.39', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '787b.jpg', '-0.14611911903', '109.41477338600', 'Agustus 2016'),
(750, '30000100035', '788', 'IYAN SOPYAN', 'KOMP. PRT JEPANG N0. 73', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '788b.jpg', '-0.14640003290', '109.41502100600', 'Agustus 2016'),
(751, '30000100029', '789', 'IDA SETIAWATI', 'KOMP. PRT JEPANG N0. 70', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '789b.jpg', '-0.14649780451', '109.41486771000', 'Agustus 2016'),
(752, '30000100032', '790', 'HERU SUBAGYO', 'KOMP. PRT JEPANG N0. 67', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '790b.jpg', '-0.14653956680', '109.41477324100', 'Agustus 2016'),
(753, '30000100030', '791', 'HERU SUBAGYO', 'KOMP. PRT JEPANG N0. 69', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '791b.jpg', '-0.14667277872', '109.41453190700', 'Agustus 2016'),
(754, '30000100033', '792', 'B.SUMARSONO', 'KOMP. PRT JEPANG N0. 66', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '792b.jpg', '-0.14671856370', '109.41447963500', 'Agustus 2016'),
(755, '30000100034', '793', 'ERIK NUGROHO', 'KOMP. PRT JEPANG N0. 65', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '793b.jpg', '-0.14676112415', '109.41439630400', 'Agustus 2016'),
(756, '30000100039', '794', 'BANGUN SETIAWAN', 'PARIT JEPANG N0.64', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '794b.jpg', '-0.14681605671', '109.41431962100', 'Agustus 2016'),
(757, '30000100026', '795', 'VICENTE NICO MRD', 'KOMP. PRT JEPANG N0. 81', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '795b.jpg', '-0.14686468702', '109.41424583700', 'Agustus 2016'),
(758, '30000200575', '796', 'SUAMRTI', 'ANGKASA PERMAI GG.SRI USMAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '796b.jpg', '-0.14694880561', '109.41405626600', 'Agustus 2016'),
(759, '30000100038', '797', 'VIANNEY SARTONO PUTRA', 'PARIT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '797b.jpg', '-0.14702884889', '109.41394827500', 'Agustus 2016'),
(760, '30000100037', '798', 'ABDUL KHOIR', 'PARIT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '798b.jpg', '-0.14713348870', '109.41377193500', 'Agustus 2016'),
(761, '30000100028', '799', 'UNTUNG WARDJONO', 'KOMP. PRT JEPANG N0. 71', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '799b.jpg', '-0.14720629691', '109.41358862200', 'Agustus 2016'),
(762, '30000100449', '800', 'DIAN FITRIANI', 'PARIT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '800b.jpg', '-0.14727203893', '109.41353045300', 'Agustus 2016'),
(763, '30000100448', '801', 'A.WAHID', 'PERUMAHAN PRT JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '801b.jpg', '-0.14767107243', '109.41351993900', 'Agustus 2016'),
(764, '30000400387', '802', 'ALEK SUKISMAN', 'JL.RAYA KUALA DUA/BLKG MESJID', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '802b.jpg', '-0.14812311117', '109.41255461000', 'Agustus 2016'),
(765, '30000100605', '803', 'HENY SUSANTI,SE', 'KOMP. PU PENGAIRAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '803b.jpg', '-0.14424988751', '109.41636552700', 'Agustus 2016'),
(766, '30000100603', '804', 'BUDJANG BUDIMAN', 'KOMP. PU PENGAIRAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '804b.jpg', '-0.14447145776', '109.41646623300', 'Agustus 2016'),
(767, '30000100604', '805', 'MURSIDI,A.MD', 'KOMP. PU PENGAIRAN', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '805b.jpg', '-0.14466518702', '109.41649041100', 'Agustus 2016'),
(768, '30000100014', '806', 'HAIRONI AR', 'KOMP. PU NO. 24', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '806b.jpg', '-0.14516805349', '109.41686945300', 'Agustus 2016'),
(769, '30000100002', '807', 'SETIYAWAN', 'KOMP. PU NO. 11', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '807b.jpg', '-0.14550638366', '109.41696324400', 'Agustus 2016'),
(770, '30000100001', '808', 'INDARTO', 'KOMP. PU NO. 10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '808b.jpg', '-0.14555027114', '109.41650950500', 'Agustus 2016'),
(771, '30000100003', '809', 'SAMSUL BACHRI', 'KOMP. PU NO. 12', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '809b.jpg', '-0.14576606180', '109.41653288000', 'Agustus 2016'),
(772, '30000100004', '810', 'MOH.SEMAN', 'KOMP. PU NO. 14', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '810b.jpg', '-0.14573124378', '109.41696968300', 'Agustus 2016'),
(773, '30000100006', '811', 'HASSAN', 'KOMP. PU NO. 16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '811b.jpg', '-0.14592484140', '109.41696334400', 'Agustus 2016'),
(774, '30000100005', '812', 'SUHARYONO', 'KOMP. PU NO. 15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '812b.jpg', '-0.14595162859', '109.41652512100', 'Agustus 2016'),
(775, '30000100007', '813', 'MUJAYEN', 'KOMP. PU NO. 17', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '813b.jpg', '-0.14613764589', '109.41653937800', 'Agustus 2016'),
(776, '30000100008', '814', 'NUR URAY ARIPI', 'KOMP. PU NO. 18', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '814b.jpg', '-0.14609875944', '109.41698934700', 'Agustus 2016'),
(777, '30000100009', '815', 'MUHAMAD SAID', 'KOMP. PU NO. 19', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '815b.jpg', '-0.14623882703', '109.41666996700', 'Agustus 2016'),
(778, '30000100010', '816', 'SRI YACHMINI', 'KOMP. PU NO. 20', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '816b.jpg', '-0.14632031773', '109.41698169000', 'Agustus 2016'),
(779, '30000100023', '817', 'NURSIAH', 'KOMP. PU NO. 33', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '817b.jpg', '-0.14600362284', '109.41721713300', 'Agustus 2016'),
(780, '', '818', 'INTAKE PDAM', '', '1', '1', 'Kubu Raya', '', 'KANTOR/INTAKE', '818b.jpg', '-0.14540696187', '109.41775456800', 'Agustus 2016'),
(781, '30000100022', '819', 'SUTRISNO RAHMAD', 'KOMP. PU NO. 32', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '819b.jpg', '-0.14702024453', '109.41723851900', 'Agustus 2016'),
(782, '30000100021', '820', 'ACHMAD JAIS', 'KOMP. PU NO. 31', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '820b.jpg', '-0.14681215982', '109.41730547700', 'Agustus 2016'),
(783, '30000100020', '821', 'SUMARNO HADI,BE', 'KOMP. PU NO. 30', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '821b.jpg', '-0.14662710976', '109.41723747700', 'Agustus 2016'),
(784, '30000100019', '822', 'H.KARSANI SALYO', 'KOMP. PU NO. 29', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '822b.jpg', '-0.14629311959', '109.41721156800', 'Agustus 2016'),
(785, '30000100274', '823', 'NANANG KURNIAWAN', 'KOMP. PU SPG EMPAT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '823b.jpg', '-0.14660324713', '109.41693335500', 'Agustus 2016'),
(786, '30000100301', '824', 'YUYUN SIMALUNGA,A.MD', 'KOMP. PU BARU 4', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '824b.jpg', '-0.14702699896', '109.41694449800', 'Agustus 2016'),
(787, '30000100300', '825', 'UJANG ENTAR SUTARJI', 'KOMP. PU BARU 3', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '825b.jpg', '-0.14690327611', '109.41695021900', 'Agustus 2016'),
(788, '30000100299', '826', 'KARYONO', 'KOMP. PU BARU 2', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '826b.jpg', '-0.14680963915', '109.41692246500', 'Agustus 2016'),
(789, '30000100298', '827', 'HERIANTO WALUYADI', 'KOMP. PU BARU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '827b.jpg', '-0.14670459588', '109.41692008900', 'Agustus 2016'),
(790, '30000100276', '828', 'ANGGREANI ACHMAD', 'KOMP. PU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '828b.jpg', '-0.14663887022', '109.41663974200', 'Agustus 2016'),
(791, '30000100277', '829', 'TRI RETNOWATI,SH', 'KOMP. PU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '829b.jpg', '-0.14666661803', '109.41633549900', 'Agustus 2016'),
(792, '30000100012', '830', 'SUWARDI', 'KOMP. PU NO. 22', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '830b.jpg', '-0.14628989702', '109.41626674900', 'Agustus 2016'),
(793, '30000100024', '831', 'KAMSRI', 'KOMP. PU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '831b.jpg', '-0.14633821999', '109.41610584800', 'Agustus 2016'),
(794, '30000100013', '832', 'HJ NINGSIH', 'KOMP. PU NO. 23', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '832b.jpg', '-0.14664575739', '109.41607704000', 'Agustus 2016'),
(795, '30000100015', '833', 'ASNAH', 'KOMP. PU NO. 25', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '833b.jpg', '-0.14660956734', '109.41587042600', 'Agustus 2016'),
(796, '30000100016', '834', 'AMINARTO', 'KOMP. PU NO. 26', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '834b.jpg', '-0.14636186640', '109.41591903600', 'Agustus 2016'),
(797, '30000100017', '835', 'KAMIN', 'KOMP. PU NO. 27', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '835b.jpg', '-0.14667286456', '109.41573567200', 'Agustus 2016'),
(798, '30000100018', '836', 'SURATMIYANTI', 'KOMP. PU NO. 28', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '836b.jpg', '-0.14633659296', '109.41573874300', 'Agustus 2016'),
(799, '30000100302', '837', 'JOKO MAOLANA', 'KOMP. PU BLKG PDAM NO.15', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '837b.jpg', '-0.14665475769', '109.41546617300', 'Agustus 2016'),
(800, '30000100330', '838', 'HJ.ZULAEHA', 'KOMP.PU BLKG ODAM UJUNG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '838b.jpg', '-0.14789375145', '109.41531336900', 'Agustus 2016'),
(801, '30000100305', '839', 'SUMIATI', 'KOMP. PU BLKG PDAM NO.38', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '839b.jpg', '-0.14774904889', '109.41529541300', 'Agustus 2016'),
(802, '30000100304', '840', 'RUSMANIAH', 'KOMP. PU BLKG PDAM NO.32', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '840b.jpg', '-0.14742347038', '109.41528645300', 'Agustus 2016'),
(803, '30000100445', '841', 'SURYADINATA', 'KOMP. PU BARU NO.29', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '841b.jpg', '-0.14730385598', '109.41548564100', 'Agustus 2016'),
(804, '30000100303', '842', 'SRI WIDIASTUTI', 'KOMP. PU BLKG PDAM NO.26', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '842b.jpg', '-0.14712502208', '109.41525952400', 'Agustus 2016'),
(805, '30000100275', '843', 'FADIAH', 'KOMP. PU SPG BLKG PDAM', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '843b.jpg', '-0.14704185781', '109.41549408600', 'Agustus 2016'),
(806, '30000100329', '844', 'ABDUL HAMID', 'KOMP. PU BLKG PDAM NO.01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '844b.jpg', '-0.14670805539', '109.41522201600', 'Agustus 2016'),
(807, '30000100168', '845', 'ENI INDRAWATI', 'PRT.JEPANG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '845b.jpg', '-0.14653867102', '109.41506964000', 'Agustus 2016'),
(808, '30000100027', '846', 'ERA SETIAWAN', 'KOMP. PRT JEPANG N0. 78', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '846b.jpg', '-0.14657644118', '109.41499044300', 'Agustus 2016'),
(809, '30000100171', '847', 'SURAU AR RAHMAN', 'GG.RAWA INDAH', '1', '1', 'Kubu Raya', '30', 'R1B RI/B', '847b.jpg', '-0.14581516767', '109.41412211900', 'Agustus 2016'),
(810, '30000100292', '848', 'M. RABAIN', 'GG.RAWA INDAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '848b.jpg', '-0.14624355051', '109.41427152000', 'Agustus 2016'),
(811, '30000100446', '849', 'MASRU', 'GG.RAWA INDAH NO.41', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '849b.jpg', '-0.14637279422', '109.41405541400', 'Agustus 2016'),
(812, '30000100437', '850', 'SARBINI', 'GG.RAWA INDAH', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '850b.jpg', '-0.14618465330', '109.41433876600', 'Agustus 2016'),
(813, '30000100042', '851', 'PURNA NINGSIH', 'GG.RAWA INDAH NO.32', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '851b.jpg', '-0.14649789048', '109.41419489300', 'Agustus 2016'),
(814, '30000100043', '852', 'SUGIANTORO', 'GG.RAWA INDAH NO.33', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '852b.jpg', '-0.14657842322', '109.41406310000', 'Agustus 2016'),
(815, '30000100011', '853', 'ISHAK', 'KOMP. PU NO. 21', '1', '1', 'Kubu Raya', '40', 'R3E RIII/E', '853b.jpg', '-0.14628737282', '109.41634316600', 'Agustus 2016'),
(816, '30000906090', '854', 'ROHMAT WIBOWO', 'SUPADIO 16', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '854b.jpg', '-0.14330519555', '109.40821651400', 'Agustus 2016'),
(817, '30000906088', '855', 'TUGIMIN', 'SUPADIO 14', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '855b.jpg', '-0.14348343888', '109.40834982700', 'Agustus 2016'),
(818, '30000906084', '856', 'EDI SUKARNO', 'SUPADIO NO.10', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '856b.jpg', '-0.14366242686', '109.40844280000', 'Agustus 2016'),
(819, '30000906075', '857', 'RD PERHUBUNGAN', 'SUPADIO 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '857b.jpg', '-0.14396303444', '109.40861126300', 'Agustus 2016'),
(820, '30000400071', '858', 'SUGINO', 'DE.KERAMAT1 RT 03/01', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '858b.jpg', '-0.14914827650', '109.41277049200', 'Agustus 2016'),
(821, '30000700643', '859', 'AMIN', 'GG. KANTOR KUALA DUA', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '859b.jpg', '-0.15530961524', '109.41803596900', 'Agustus 2016'),
(822, '30000200518', '860', 'SUSWANTO', 'ANGKASA LESTARI', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '860b.jpg', '-0.14781368760', '109.41381257500', 'Agustus 2016'),
(823, '30000800701', '861', 'DIMAS ANUGRAH', 'JL.SUNGAI DURIAN LAUT', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '861b.jpg', '-0.14411300283', '109.41368540100', 'Agustus 2016'),
(824, '30000700499', '862', 'RUSTAM EFENDI', 'GG. GENTENG', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '862b.jpg', '-0.15644668454', '109.42656218100', 'Agustus 2016'),
(825, '30000500263', '863', 'SAHBANDI', 'G. SUMBER MAJU 1', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '863b.jpg', '-0.15770395078', '109.42808183300', 'Agustus 2016'),
(826, '30000500667', '864', 'AUDRIYANI', 'GG. SUMBER MAJU', '1', '1', 'Kubu Raya', '30', 'R3E RIII/E', '864b.jpg', '-0.15812904415', '109.42835613600', 'Agustus 2016');

-- --------------------------------------------------------

--
-- Table structure for table `tb_statistik`
--

CREATE TABLE IF NOT EXISTS `tb_statistik` (
  `ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_statistik`
--

INSERT INTO `tb_statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('::1', '2016-12-05', 26, '1480908760');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_desa`
--
ALTER TABLE `tb_desa`
 ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
 ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `tb_link`
--
ALTER TABLE `tb_link`
 ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `tb_pengaturan`
--
ALTER TABLE `tb_pengaturan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sambungan`
--
ALTER TABLE `tb_sambungan`
 ADD PRIMARY KEY (`id_sambungan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_desa`
--
ALTER TABLE `tb_desa`
MODIFY `id_desa` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
MODIFY `id_kecamatan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_link`
--
ALTER TABLE `tb_link`
MODIFY `id_link` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_pengaturan`
--
ALTER TABLE `tb_pengaturan`
MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_sambungan`
--
ALTER TABLE `tb_sambungan`
MODIFY `id_sambungan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=827;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
