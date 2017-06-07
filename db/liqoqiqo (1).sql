-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Jun 2017 pada 05.57
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
  `arabic` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `latin` varchar(300) DEFAULT NULL,
  `meaning` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `doa`
--

INSERT INTO `doa` (`id`, `name`, `arabic`, `latin`, `meaning`) VALUES
(1, 'Doa Keselamatan Dunia Akhirat', 'اَللهُمَّ اِنَّا نَسْأَلُكَ سَلاَمَةً فِى الد', 'ALLOOHUMMA INNAA NAS-ALUKA SALAAMATAN FID DII', 'Ya Allah kami memohon kepadaMu keselamatan da'),
(2, 'Doa Ketika Akan Wudhu', '\r\nاَلْحَمْدُ ِللهِ الَّذِىْ جَعَلَ هذَاالْمَآءَ طَهُوْرًا رَبِّ اِنِّىْ اَعُوْذُبِكَ مِنْ هَمَزَاتِ ', 'AL HAMDULILLAAHIL LADZII JAALA HAADZAL MAA-A THOHUUROO ROBBI INNII AUUDZUBIKA MIN HAMAZAATISY SYAYAA', 'Segala puji bagi Allah yang menjadikan air ini suci dan menyucikan. Ya Allah, aku mohon berilndung k'),
(3, ' Doa Setelah Wudhu', '\r\nاَشْهَدُ اَنْ لآّاِلَهَ اِلاَّاللهُ وَحْدَهُ لاَشَرِيْكَ لَهُ وَاَشْهَدُ اَنَّ مُحَمَّدًاعَبْدُهُ ', 'ASYHADU ALLAA ILAAHA ILLALLOOHU WAHDAHUU LAA SYARIIKA LAHU WA ASYHADU ANNA MUHAMMADAN ABDUHUUWA ROSU', 'Aku mengaku bahwa tidak ada Tuhan selain Allah Yang Maha Esa, tidak ada sekutu bagi-Nya, dan aku men'),
(4, ' Doa Masuk Masjid', '\r\nاَللهُمَّ افْتَحْ لِىْ اَبْوَابَ رَحْمَتِكَ \r\n', 'ALLOOHUMMMAF TAHLII ABWAABA ROHAMTIKA', 'Ya Allah, bukakanlah bagiku pintu-pintu rahmat-Mu. '),
(5, 'Doa Keluar Masjid', 'اَللهُمَّ اِنِّى اَسْأَلُكَ مِنْ فَضْلِكَ ', 'ALLOHUMMA INNII AS-ALUKA MIN FADLIKA', 'Ya Allah, sesungguhnya aku memohon keutamaan dari-Mu'),
(6, 'Doa Sebelum Tidur', 'بِسْمِكَ اللّهُمَّ اَحْيَا وَاَمُوْتُ', 'BISMIKAL LOOHUMMA AHYAA WA AMUUTU', 'Dengan nama-Mu ya Allah aku hidup dan aku mati'),
(7, 'Doa Bangun Tidur', 'َلْحَمْدُ ِللهِ الَّذِىْ اَحْيَانَا بَعْدَمَآ اَمَاتَنَا وَاِلَيْهِ النُّشُوْرُ', 'AL HAMDU LILLAAHIL LADZII AHYAANAA BA''DA MAA AMAA TANAA WA ILAIHIN NUSYUUR', 'Segala puji bagi Allah yang telah menghidupkan kami sesudah kami mati (membangunkan dari tidur) dan hanya kepada-Nya kami dikembalikan'),
(8, 'Doa Masuk Ke Kamar Mandi', 'اَللهُمَّ اِنّىْ اَعُوْذُبِكَ مِنَ الْخُبُثِ وَالْخَبَآئِثِ', 'ALLOOHUMMA INNII A''UUDZUBIKA MINAL KHUBUTSI WAL KHOBAAITSI', 'Ya Allah, aku berlindung dari godaan syetan laki-laki dan syetan perempuan\r\n'),
(9, 'Doa Keluar Dari Kamar Mandi', 'غُفْرَانَكَ الْحَمْدُ ِللهِ الَّذِىْ اَذْهَبَ عَنّى اْلاَذَى وَعَافَانِىْ', 'GHUFROONAKAL HAMDU LILLAAHIL LADZII ADZHABA ''ANNIL ADZAA WA ''AAFAANII ', ': Dengan mengharap ampunanMu, segala puji milik Allah yang telah menghilangkan kotoran dari badanku dan yang telah menyejahterakan'),
(10, 'Doa Ketika Akan Mandi', 'اَللهُمَّ اغْفِرْلِى ذَنْبِى وَوَسِّعْ لِى فِىْ دَارِىْ وَبَارِكْ لِىْ فِىْ رِزْقِىْ ', 'ALLOOHUMMAGHFIRLII DZAMBII WA WASSI''LII FII DAARII WA BAARIK LII FII RIZQII', 'Ya Allah ampunilah dosa kesalahanku dan berilah keluasaan di rumahku serta berkahilan pada rizqiku'),
(11, 'Doa Berpakaian', '\r\nاَلْحَمْدُ ِللهِ الَّذِىْ كَسَانِىْ هَذَا وَرَزَقَنِيْهِ مِنْ غَيْرِحَوْلٍ مِنِّىْ وَلاَقُوَّةٍ\r\n', 'AL-HAMDU LILLAAHIL LADZII KASAANII HAADZAA WA ROZAQONIIHI MIN GHOIRI HAWLIN MINNII WA LAA QUWWATIN', 'Segala puji bagi Allah yang memberi aku pakaian ini dan memberi rizqi dengan tiada upaya dan kekuatan dariku'),
(12, 'Doa Bercermin', 'اَلْحَمْدُ ِللهِ، كَمَا حَسَّنْتَ خَلْقِىْ فَحَسّنْ خُلُقِىْ', 'AL-HAMDULILLAAHI KAMAA HASSANTA KHOLQII FAHASSIN KHULUQII', 'Segala puji bagi Allah, baguskanlah budi pekertiku sebagaimana Engkau telah membaguskan rupa wajahku'),
(13, 'Doa Sebelum Makan', '\r\nاَللهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ\r\n', 'ALLOOHUMMA BAARIK LANAA FIIMAA RAZAQTANAA WAQINAA ''ADZAA BANNAAR', 'Ya Allah, berkahilah kami dalam rezeki yang telah Engkau berikan kepada kami dan peliharalah kami dari siksa api neraka'),
(14, 'Doa Sesudah Makan', 'اَلْحَمْدُ ِللهِ الَّذِىْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِيْنَ', 'ALHAMDU LILLAAHIL LADZII ATH''AMANAA WA SAQOONAA WA JA''ALANAA MUSLIMIIN', 'Segala puji bagi Allah yang telah memberi makan kami dan minuman kami, serta menjadikan kami sebagai orang-orang islam'),
(15, 'Doa Keluar Rumah', 'بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ لاَحَوْلَ وَلاَقُوَّةَ اِلاَّ بِاللهِ', 'BISMILLAAHI TAWAKKALTU ''ALALLOOHI LAA HAWLAA WALAA QUWWATA ILLAA BILLAAHI', 'Dengan menyebut nama Allah aku bertawakal kepada Allah, tiada daya kekuatan melainkan dengan Allah'),
(16, 'Doa Masuk Rumah', 'اَللهُمَّ اِنّىْ اَسْأَلُكَ خَيْرَالْمَوْلِجِ وَخَيْرَالْمَخْرَجِ بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ رَبّنَا تَوَكَّلْنَا', 'ALLOOHUMMA INNII AS-ALUKA KHOIROL MAULIJI WA KHOIROL MAKHROJI BISMILLAAHI WA LAJNAA WA BISMILLAAHI KHOROJNAA WA ''ALALLOHI ROBBINAA TAWAKKALNAA', 'Ya Allah, sesungguhnya aku mohon kepada-Mu baiknya tempat masuk dan baiknya tempat keluar dengan menyebut nama Allah kami masuk, dan dengan menyebut nama Allah kami keluar dan kepada Allah Tuhan kami, kami bertawakkal'),
(17, 'Doa Keselamatan Dunia Akhirat', 'اَللهُمَّ اِنَّا نَسْأَلُكَ سَلاَمَةً فِى الدِّيْنِ وَعَافِيَةً فِى الْجَسَدِ وَزِيَادَةً فِى الْعِلْمِ وَبَرَكَةً فِى الرِّزْقِ وَتَوْبَةً قَبْلَ الْمَوْتِ وَرَحْمَةً عِنْدَ الْمَوْتِ وَمَغْفِرَةً بَعْدَ الْمَوْتِ', 'ALLOOHUMMA INNAA NAS-ALUKA SALAAMATAN FID DIINI WA ''AAFIYATAN FIL JASADI WA ZIYAADATAN FIL ''ILMI WA BAROKATAN FIR RIZQI WA TAUBATAN QOBLAL MAUTI WA ROHMATAN ''INDAL MAUTI WA MAGHFIROTAN BA''DAL MAUTI', 'Ya Allah kami memohon kepadaMu keselamatan dalam agama, dan kesejahteraan/kesegaran pada tubuh dan penambahan ilmu, dan keberkahan rizqi, serta taubat sebelum mati dan rahmat di waktu mati, dan keampunan sesudah mati'),
(18, 'Doa Sebelum Belajar', 'يَارَبِّ زِدْنِىْ عِلْمًا وَارْزُقْنِىْ فَهْمًا ', 'YAA ROBBI ZAIDNII''ILMAN WARZUQNII FAHMAN', 'Ya Allah, tambahkanlah aku ilmu dan berikanlah aku rizqi akan kepahaman.'),
(19, 'Doa Sesudah Belajar', 'اَللهُمَّ اِنِّى اَسْتَوْدِعُكَ مَاعَلَّمْتَنِيْهِ فَارْدُدْهُ اِلَىَّ عِنْدَ حَاجَتِىْ وَلاَ تَنْسَنِيْهِ يَارَبَّ الْعَالَمِيْنَ', 'ALLOOHUMMA INNII ASTAUDI''UKA MAA ''ALLAMTANIIHI FARDUD-HU ILAYYA ''INDA HAAJATII WA LAA TANSANIIHI YAA ROBBAL ''ALAAMIINA', 'Ya Allah! sesungguhnya aku menitipkan kepada Engkau ilmu-ilmu yang telah Engkau ajarkan kepadaku, dan kembalikanlah kepadaku sewaktu aku butuh kembali dan janganlah Engkau lupakan aku kepada ilmu itu wahai Tuhan seru sekalian alam'),
(20, 'Doa Ketika Bersin', 'اَلْحَمْدُ ِللهِ', 'AL-HAMDU LILLAAHI', 'Segala Puji Bagi Allah'),
(21, 'Doa Mendengar Orang Bersin', 'يَرْحَمُكَ اللهُ', 'YARHAMUKALLOOHU', 'Semoga Allah memberi rahmat kepadamu');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
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
