-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Mei 2017 pada 04.43
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liqoqiqo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `doa`
--

CREATE TABLE `doa` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `arabic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latin` varchar(100) DEFAULT NULL,
  `meaning` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `doa`
--

INSERT INTO `doa` (`id`, `name`, `arabic`, `latin`, `meaning`) VALUES
(1, 'Doa Keselamatan Dunia Akhirat', 'اَللهُمَّ اِنَّا نَسْأَلُكَ سَلاَمَةً فِى الد', 'ALLOOHUMMA INNAA NAS-ALUKA SALAAMATAN FID DII', 'Ya Allah kami memohon kepadaMu keselamatan da'),
(2, 'Doa Ketika Akan Wudhu', '\r\nاَلْحَمْدُ ِللهِ الَّذِىْ جَعَلَ هذَاالْمَآءَ طَهُوْرًا رَبِّ اِنِّىْ اَعُوْذُبِكَ مِنْ هَمَزَاتِ ', 'AL HAMDULILLAAHIL LADZII JAALA HAADZAL MAA-A THOHUUROO ROBBI INNII AUUDZUBIKA MIN HAMAZAATISY SYAYAA', 'Segala puji bagi Allah yang menjadikan air ini suci dan menyucikan. Ya Allah, aku mohon berilndung k'),
(3, ' Doa Setelah Wudhu', '\r\nاَشْهَدُ اَنْ لآّاِلَهَ اِلاَّاللهُ وَحْدَهُ لاَشَرِيْكَ لَهُ وَاَشْهَدُ اَنَّ مُحَمَّدًاعَبْدُهُ ', 'ASYHADU ALLAA ILAAHA ILLALLOOHU WAHDAHUU LAA SYARIIKA LAHU WA ASYHADU ANNA MUHAMMADAN ABDUHUUWA ROSU', 'Aku mengaku bahwa tidak ada Tuhan selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya, dan aku men'),
(4, ' Doa Masuk Masjid', '\r\nاَللهُمَّ افْتَحْ لِىْ اَبْوَابَ رَحْمَتِكَ \r\n', 'ALLOOHUMMMAF TAHLII ABWAABA ROHAMTIKA', 'Ya Allah, bukakanlah bagiku pintu-pintu rahmat-Mu. '),
(5, 'Doa Keluar Masjid', 'اَللهُمَّ اِنِّى اَسْأَلُكَ مِنْ فَضْلِكَ ', 'ALLOHUMMA INNII AS-ALUKA MIN FADLIKA', 'Ya Allah, sesungguhnya aku memohon keutamaan dari-Mu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` int(11) NOT NULL,
  `mentor_id` int(11) DEFAULT NULL,
  `menti_id` int(11) DEFAULT NULL,
  `mentoring_id` int(11) DEFAULT NULL,
  `status_kehadiran` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menti`
--

CREATE TABLE `menti` (
  `id` int(11) NOT NULL,
  `mentor_id` int(11) DEFAULT NULL,
  `menti_id` int(11) DEFAULT NULL,
  `mentoring_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mentoring`
--

CREATE TABLE `mentoring` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `lon` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `mentor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `avatar` varchar(45) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doa`
--
ALTER TABLE `doa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menti`
--
ALTER TABLE `menti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentoring`
--
ALTER TABLE `mentoring`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doa`
--
ALTER TABLE `doa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menti`
--
ALTER TABLE `menti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mentoring`
--
ALTER TABLE `mentoring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mentoring`
--
ALTER TABLE `mentoring`
  ADD CONSTRAINT `mentor_id` FOREIGN KEY (`mentor_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
