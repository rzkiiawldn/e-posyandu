-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2021 pada 04.40
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.15

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
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `isi_artikel` text NOT NULL,
  `view` int(11) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `id_kategori` varchar(50) NOT NULL,
  `created_by` varchar(225) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi_artikel`, `view`, `foto`, `id_kategori`, `created_by`, `created_date`) VALUES
(19, 'Tumbuh Kembang Anak', 'Mendidik anak untuk belajar berbagi adalah hal yang susah-susah gampang. Pada usia balita biasanya anak mengalami fase egosentris yakni fase dimana anak masih berpusat pada dirinya sendiri. Tak heran jika si kecil enggan meminjamkan barangnya pada orang lain, bahkan si kecil juga senang merebut barang milik temannya. Untuk membantu si kecil belajar berbagi seiring mereka besar nanti, ada beberapa hal yang perlu Moms dan Dads perhatikan', 1, 'artikel.jpg', 'Berat badan normal', 'Dahlia1', '2021-06-22'),
(20, 'Semakin Besar Usia Anak, Semakin Besar Kebutuhan Gizinya', 'Semakin Besar Usia Anak, Semakin Besar Kebutuhan Gizinya</u></h5>\r\n                                <div class=\"mt-4\" style=\"text-align:justify;\">\r\n                                    <p>Memasuki usia Toddler (1-3 tahun), Si Buah Hati mulai aktif bermain dan bereksplorasi di lingkungan sekitarnya. Selain itu, masa tumbuh kembangnya juga mengalami peningkatan yang pesat. Gizi anak yang tercukupi adalah salah satu kunci untuk mendukung optimalnya proses perkembangan ini. Organisasi Kesehatan Dunia (WHO) menyarankan agar Bunda memenuhi kebutuhan gizi Si Buah Hati, terutama pada dua tahun pertamanya. Ini karena segala perkembangan yang terjadi di usia ini tidak dapat diulang kembali. Untuk itu, Bunda diharapkan dapat mengajarkan Si Buah Hati pentingnya menerapkan pola makan sehat sejak dini', 1, 'artikel2.jpg', 'Berat badan lebih', 'Dahlia1', '2021-06-22'),
(21, 'Tahap Pertumbuhan Anak 0-3 Tahun', '<p>Tanpa terasa, selama sembilan bulan mengandung, akhirnya si kecil bisa lahir dengan sehat ke dunia, ya bun. Dalam artikel ini, theAsianparent akan membahas mengenai tahap pertumbuhan anak usia 0-3 bulan. Pertumbuhan si kecil memang perlu dipantau, Bun. Jika ada masalah pada tumbuh kembanganya, maka jangan ragu untuk berkonsultasi ke dokter ya, Bun.</p>\r\n                                    ', 1, 'artikel3.jpg', 'Berat badan kurang', 'Dahlia1', '2021-06-22'),
(22, 'Moms dan Dads, Begini Cara Menanamkan Empati pada Anak Usia Dini', 'Mengajarkan rasa empati pada anak sangat penting untuk dilakukan sejak dini. Selain untuk mendukung tumbuh kembang emosionalnya, rasa empati juga berguna untuk menjaga hubungan sosial anak dengan teman-temannya. Tapi mengajarkan rasa empati pada anak usia dini memang susah-susah gampang. Moms dan Dads perlu mengetahui triknya agar rasa empati anak dapat tumbuh tanpa paksaan. Berikut ini adalah tips menanamkan rasa empati pada anak usia dini yang bisa Moms dan Dads lakukan.\r\n\r\n \r\n\r\nDengan Hal Sederhana\r\n\r\nSikap empati hakekatnya adalah ketika anak bisa merasakan apa yang dirasakan oleh orang lain. Penanaman sikap ini sangat penting agar si kecil dapat memahami konsekuensi dari apapun perbuatan yang dilakukannya kepada orang lain. Bagi anak, sikap empati adalah sesuatu yang abstrak. Dia akan bingung memahami sikap ini jika Moms dan Dads tidak memberikan sebuah contoh yang nyata untuk dia pahami. Karena itu, coba ajarkan si kecil makna dari sikap empati melalui hal sederhana.\r\n\r\n \r\n\r\nSaat si kecil merebut mainan temannya, coba ajak si kecil memikirkan perasaan sedih dan kecewa dari temannya tersebut. Kemudian, minta si kecil membayangkan apabila mainannya yang direbut, tentu si kecil akan merasa sedih dan kecewa juga. Dengan memahami apa yang dirasakan oleh orang lain karena perbuatannya, si kecil akan lebih hati-hati dan memiliki empati ketika bersikap pada temannya.\r\n\r\n \r\n\r\nMelalui Mainan Edukasi\r\n\r\nMoms dan Dads bisa memberikan program edukasi yang memiliki kurikulum yang sesuai dengan usia dan tingkat perkembangannya. Program edukasi Kodomo Challenge meningkatkan rasa empati anak dengan bermain set Peralatan Bayi Hana. Selain itu orangtua dapat mengajarkan makna empati lebih mudah dengan Buku Bergambar dan Video Edukasi. Dengan tampilan visual yang menarik, membuat anak lebih mudah memahami dan mengerti.\r\n\r\n \r\n\r\nBelajar Empati Melalui Dongeng\r\n\r\nSalah satu cara yang bisa Moms dan Dads lakukan untuk menanamkan sikap empati pada anak usia dini adalah dengan melalui dongeng. Moms dan Dads dapat membacakan dongeng dengan kisah-kisah yang mengajarkan tentang kepedulian tokoh utama terhadap keluarga, teman-teman, atau bahkan orang asing yang tidak dikenalnya.\r\n\r\n \r\n\r\nAjarkan pada si kecil jika sikap empati yang ditunjukkan oleh tokoh utama ini pada akhirnya akan mendatangkan kebaikan untuk diri sendiri dan lingkungannya. Dengan memberikan contoh dari buku cerita kesukaannya, si kecil akan lebih mudah memahami makna empati dan bagaimana sikap ini bisa memberikan kebaikan untuk kehidupannya.\r\n\r\n \r\n\r\nMerawat Binatang Peliharaan\r\n\r\nMerawat binatang peliharaan juga bisa menjadi salah satu cara mengajarkan sikap empati pada anak. Bahkan dengan memelihara binatang peliharaan, si kecil juga akan terbiasa memiliki rasa tanggung jawab. Banyak penelitian yang menunjukkan jika anak yang terbiasa bermain dengan binatang peliharaan sejak kecil akan tumbuh menjadi pribadi yang lebih lembut dan peduli dengan orang-orang di sekitarnya.\r\n\r\n \r\n\r\nSebagai langkah awal, Moms dan Dads bisa memilihkan binatang peliharaan yang cenderung lebih mudah untuk dirawat seperti ikan atau kura-kura. Jika Moms dan Dads menilai si kecil sudah bisa lebih bertanggungjawab dengan binatang peliharaannya, Moms dan Dads bisa memberi si kecil binatang peliharaan baru seperti kucing atau anjing.\r\n\r\n \r\n\r\nSaat memelihara binatang peliharaan, ajarkan si kecil untuk bersikap lembut saat memegang binatang tersebut. Jangan lupa untuk selalu mengingatkan si kecil memberi makan dan merawat kebersihan binatang peliharaannya agar mereka bisa terus bermain bersama.\r\n\r\n \r\n\r\nMengajak Anak Bersosialisasi\r\n\r\nMoms dan Dads mungkin bisa melihat si kecil memiliki sikap empati pada orang-orang di rumah. Tapi apakah sikap empati itu akan tetap ada ketika ia dihadapkan pada lingkungan baru? Untuk menanamkan sikap empati pada anak usia dini, Moms dan Dads juga perlu mengajaknya untuk bersosialisasi dengan teman-teman seumurannya.\r\n\r\n \r\n\r\nAjak si kecil bermain di playground dan bertemu dengan teman-teman baru. Di sini, si kecil akan belajar untuk menekan sikap egoisnya dan berbagi dengan anak-anak lain. Biasakan juga agar si kecil tidak malu mengucapkan kata maaf, terima kasih, dan tolong kepada orang lain saat ia berada di tempat umum.\r\n\r\n \r\n\r\nItu tadi beberapa hal yang bisa Moms dan Dads lakukan untuk mengajarkan empati pada anak usia dini. Mengajarkan empati memang tidak bisa dilakukan secara instan. Moms dan Dads perlu melakukannya secara konsisten dan menjadi contoh nyata bagi anak. Dengan memiliki sikap empati, si kecil akan lebih mudah bersosialisasi serta mengatur emosi dirinya saat ia tumbuh besar nantinya.', 1, 'artikel5.jpg', 'Berat badan sangat kurang', 'Dahlia1', '2021-06-22'),
(23, 'Hal penting untuk diketahui sebelum mengajak bayi berenang', 'Berenang memiliki banyak manfaat bagi tubuh. Bukan hanya bagi orang dewasa, berenang ternyata juga baik untuk bayi. Saat mendampingi bayi renang, akan ada interaksi yang intens antara si kecil dengan Moms dan Dads. Hal ini bisa meningkatkan kedekatan antara bayi dan orang tuanya.\r\n\r\nSelain itu, gerakan tangan dan kaki yang secara reflek dilakukan saat bayi renang di dalam air bisa merangsang perkembangan otot dan melatih kemampuan motoriknya. Mengajarkan si kecil berenang juga bisa meningkatkan rasa kepercayaan dirinya. Ketika bayi bisa beradaptasi di kolam hal ini akan membantu Si kecil untuk terbiasa berada di lingkungan baru dan bertemu dengan orang lain sehingga tidak akan kaget ketika suatu hari diajak bepergian ke tempat yang asing baginya.\r\n\r\nMeskipun banyak manfaatnya, tapi mengajak bayi renang tidak boleh dilakukan dengan sembarangan. Ada beberapa hal yang perlu Moms dan Dads perhatikan saat akan mengajak bayi renang, apa saja?\r\n\r\n \r\n\r\nKonsultasikan dengan Dokter Anak\r\nSetiap bayi memiliki daya tahan tubuh yang berbeda-beda. Meskipun saat berada di dalam kandungan si kecil sudah biasa \"berenang\" di air ketuban, namun kondisi air kolam renang tentunya sangat berbeda. Suhu air kolam renang yang dingin, kandungan kaporit dan kondisi kolam yang kotor berpotensi menimbulkan gangguan pada kulit dan kesehatan bayi.\r\n\r\nAgar Moms dan Dads tidak khawatir, sebaiknya lakukan konsultasi pada dokter anak saat pertama kali mengajak bayi renang. Konsultasi ini diperlukan untuk memastikan si kecil dalam kondisi sehat dan tidak alergi pada kandungan yang mungkin ada dalam air kolam renang.\r\n\r\n \r\n\r\nPilih Kolam Renang yang Tepat\r\nPemilihan kolam renang juga jadi hal yang sangat penting untuk diperhatikan sebelum mengajak bayi renang. Agar lebih kondusif, pilih kolam renang yang tidak terlalu ramai. Hindari waktu dimana kolam renang akan sering dikunjungi, seperti di hari libur. Kondisi kolam renang yang terlalu ramai bisa membuat fokus si kecil jadi terpecah. Selain itu, banyaknya pengunjung kolam renang juga akan membatasi ruang gerak Moms dan Dads ketika berenang dengan si kecil.\r\n\r\nJika memungkinkan, Moms dan Dads bisa memilih kolam renang yang punya air hangat dengan suhu sekitar 32 derajat celcius. Tapi jika hal ini tidak memungkinkan, jangan lupa untuk menyiapkan tubuh si kecil terlebih dahulu sebelum masuk ke dalam kolam renang yang dingin, yakni dengan membasuh atau menciprati tubuh anak dengan air keran.\r\n\r\n \r\n\r\nBuat Suasana Rileks dan Menyenangkan\r\nBermain di kolam renang yang luas merupakan hal baru yang akan mengagetkan bagi si kecil. Hal ini bisa membuat bayi jadi takut dan akhirnya menangis saat tubuhnya dimasukkan ke kolam renang. Supaya si kecil menganggap berenang bukanlah kegiatan yang menakutkan, Moms dan Dads perlu membuat kondisi jadi lebih rileks dan menyenangkan. Selalu ajak si kecil untuk berbicara, menyanyi, hingga tertawa saat berada di dalam air. Selain itu, bawa pula mainan-mainan yang bisa mengapung sebagai media hiburan saat bayi renang. Ingat, bahwa tujuan mengajak bayi renang adalah meningkatkan ikatan antara orang tua dan bayi, oleh karena itu “pelampung” yang paling aman bagi bayi adalah tubuh orang tuanya. Moms dan dads perlu untuk terus berada di sekitar bayi untuk memegang, memeluk, dan memberikan rasa aman ketika bayi renang.\r\n\r\n \r\n\r\nPerhatikan Reaksi Tubuh Bayi\r\nMengajak bayi renang bukanlah sebuah pertandingan. Moms dan Dads tidak perlu memaksa si kecil berenang hanya karena tidak ingin kalah dengan anak lain. Jika si kecil belum siap, sebaiknya tunda beberapa bulan hingga anak benar-benar siap.\r\n\r\nMoms dan Dads perlu memperhatikan kondisi tubuh bayi ketika berada di kolam renang untuk mengetahui apakah si kecil sudah benar-benar siap di ajak berenang. Jika ketika bayi renang menunjukkan gejala seperti menggigil, jangan paksakan untuk membiarkan si kecil lebih lama berada di kolam renang. Selain itu, perhatikan juga warna tangan dan bibir anak. Jika tangan dan bibirnya mulai tampak membiru, segera keluar dari kolam dan hangatkan tubuh bayi.\r\n\r\n \r\n\r\nBerikan Treatment Khusus Setelah Selesai Berenang\r\nAgar si kecil tidak kedinginan setelah selesai berenang, Moms dan Dads perlu memberikan perlakuan khusus. Balut tubuh si kecil dengan handuk segera setelah keluar dari kolam renang. Saat memandikannya, gunakan air hangat agar anak tidak menggigil. Setelah itu, jangan lupa untuk berikan ASI atau susu hangat setelahnya untuk mencegah si kecil jadi kembung.\r\n\r\nItu tadi manfaat dan tips bayi renang yang perlu Moms dan Dads ketahui. Dengan mengetahui manfaat dan tips mengajak bayi renang secara tepat, Moms dan Dads tak perlu lagi khawatir untuk mulai mengajarkan keahlian berenang pada anak sejak kecil', 1, 'artijel4.jpg', 'Berat badan lebih', 'Dahlia1', '2021-06-22'),
(26, 'abc', 'as', 0, 'rsz_slider3_(1)2.jpg', 'Berat badan lebih', 'Dahlia1', '2021-07-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataakun`
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
-- Dumping data untuk tabel `dataakun`
--

INSERT INTO `dataakun` (`id_akun`, `nik`, `nama`, `email`, `kode_posyandu`, `password`, `alamat`, `no_telepon`, `jabatan`, `role`, `pendidikan_terakhir`, `tempat_lahir`, `tanggal_lahir`, `image`, `created_at`) VALUES
(1, '3173183710387', 'Admin', 'admin@gmail.com', '', '123', 'Jl. Pertukangan Selatan', '', 'Admin', 0, '', 'Jakarta', '2019-09-09', 'default.jpg', '2020-06-22'),
(9, '31730183012808', 'Maryani', 'Maryani17@gmail.com', 'Dahlia1', '12345', 'Jl. ciledug raya', '088137812121', 'Bendahara', 1, 'D3', 'Ciledug', '1985-02-17', 'default.jpg', '2021-05-29'),
(11, '724687391809', 'Agus', 'Agus@gmail.com', 'Dahlia2', 'qwert', 'Jl. Ciledug 5', '09873812342', 'Sektekaris', 1, 'SMP', 'Jakarta', '2012-10-31', 'default.jpg', '2021-06-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataanak`
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
-- Dumping data untuk tabel `dataanak`
--

INSERT INTO `dataanak` (`nik`, `kode_posyandu`, `id_kms`, `nama`, `password`, `tempat_lahir`, `tanggal_lahir`, `jk`, `golongan_darah`, `alamat`, `anak_ke`, `nik_wali`, `nama_wali`, `status`, `created_at`) VALUES
('1234567890', 'Dahlia1', '09876', 'dika', '123', 'jakarta', '2020-04-23', 'Laki-Laki', 'O', 'jalan petukangan 4', '1', '9876544122', 'putri', '1', '2021-06-08'),
('3134576879809', 'Dahlia1', '00001', 'Tyo ', '12345', 'Jakarta', '2021-04-29', 'Laki-Laki', 'B', 'Jl. Pertukangan Selatan', '1', '3176576543545', 'Anisa', '1', '2021-05-29'),
('3178798103987319', 'Dahlia1', '00002', 'Joni', '12345', 'Jakarta', '2021-04-05', 'Laki-Laki', 'A', 'Jl. Dahlia 2', '1', '2376879423423', 'Siti', '1', '2021-06-05'),
('346576867564', 'Dahlia1', '00003', 'Bunga', '12345', 'Jakartaa', '2021-03-05', 'Perempuan', 'O', 'Jl. Meruya Utama', '1', '3546789067890', 'Tina', '1', '2021-06-05'),
('3671728127', 'Dahlia1', '11', '1', '1234', '1', '2021-12-31', 'Laki-Laki', '1', '1', '1', '2376879423423', 'Siti', '1', '2021-06-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataibu`
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
-- Dumping data untuk tabel `dataibu`
--

INSERT INTO `dataibu` (`nik`, `kode_posyandu`, `nama`, `tempat_lahir`, `tanggal_lahir`, `golongan_darah`, `alamat`, `no_telepon`, `created_at`) VALUES
('2376879423423', 'Dahlia1', 'Siti', 'Jakarta', '1990-09-10', 'B', 'Jl. Dahlia 2', '085673189012', '2021-06-05'),
('3176576543545', 'Dahlia1', 'Anisa', 'Jakarta', '1984-09-11', 'B', 'Jl. Pertukangan Selatan ', '087564635546', '2021-05-29'),
('3546789067890', 'Dahlia1', 'Tina', 'Jakarta', '1988-05-12', 'A', 'Jl. Meruya Utama', '0835465768798', '2021-06-05'),
('9876544122', 'Dahlia1', 'putri', 'jakarta', '1995-03-08', 'O', 'jalan petukangan 4', '0987654376543', '2021-06-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataimunisasi`
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
-- Dumping data untuk tabel `dataimunisasi`
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
-- Struktur dari tabel `datakegiatan`
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
-- Dumping data untuk tabel `datakegiatan`
--

INSERT INTO `datakegiatan` (`id_kegiatan`, `kode_posyandu`, `kegiatan`, `isi_kegiatan`, `waktu`, `foto`) VALUES
(12, 'Dahlia1', ' Program kesehatan ibu hamil', 'Pelayanan yang diberikan posyandu kepada ibu hamil mencakup pemeriksaan kehamilan dan pemantauan gizi. Tak hanya pemeriksaan, ibu hamil juga dapat melakukan konsultasi terkait persiapan persalinan dan pemberian ASI.  Agar kondisi kehamilan tetap terjaga, ibu hamil juga bisa mendapatkan vaksin TT untuk mencegah penyakit tetanus yang masih umum terjadi di negara berkembang, seperti Indonesia.  Setelah melahirkan, ibu juga bisa mendapatkan suplemen vitamin A, vitamin B, dan zat besi yang baik dikonsumsi selama masa menyusui, serta pemasangan alat kontrasepsi (KB) di posyandu.', '2021-06-15', 'hamil.jpg'),
(13, 'Dahlia1', 'Program kesehatan anak', 'Salah satu program utama posyandu adalah menyelenggarakan pemeriksaan bayi dan balita secara rutin. Hal ini penting dilakukan untuk memantau tumbuh kembang anak dan mendeteksi sejak dini bila anak mengalami gangguan tumbuh kembang.  Jenis pelayanan yang diselenggarakan posyandu untuk balita mencakup penimbangan berat badan, pengukuran tinggi badan dan lingkar kepala anak, evaluasi tumbuh kembang, serta penyuluhan dan konseling tumbuh kembang. Hasil pemeriksaan tersebut kemudian dicatat di dalam buku KIA atau KMS.', '2021-06-04', 'download.jpg'),
(14, 'Dahlia1', ' Imunisasi', 'Imunisasi wajib merupakan salah satu program pemerintah yang mengharuskan setiap anak usia di bawah 1 tahun untuk melakukan vaksinasi. Kementerian Kesehatan Republik Indonesia telah menetapkan ada 5 jenis imunisasi yang wajib diberikan, yaitu imunisasi hepatitis B, polio, BCG, campak, dan DPT-HB-HiB.  Dalam hal ini, posyandu menjadi salah satu pihak yang berhak menyelenggarakan program imunisasi tersebut. Tak hanya anak, ibu hamil pun juga dapat melakukan vaksinasi di posyandu, misalnya vaksinasi tetanus, hepatitis, dan pneumokokus.', '2021-06-25', 'download_(1).jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datakms`
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
-- Dumping data untuk tabel `datakms`
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
-- Struktur dari tabel `dataposyandu`
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
-- Dumping data untuk tabel `dataposyandu`
--

INSERT INTO `dataposyandu` (`id_posyandu`, `nama_posyandu`, `kode_posyandu`, `alamat`, `jumlah_kader`, `jumlah_wus`, `keterangan`, `lng`, `lat`, `created_date`) VALUES
(1, 'Dahlia 1', 'Dahlia1', 'Jl. M. Saidi 1, Petukangan Sel., Kec. Pesanggrahan, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta, Indonesia', '25', '20', 'Posyandu aktif setiap 1 bulan sekali', '106.75652', '-6.24174', '0000-00-00'),
(5, 'pos1', 'pos1', 'Tangerang, Kota Tangerang, Banten, Indonesia', '20', '200', 'good', '106.6403236', '-6.1701796', '2021-06-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_posyandu`
--

CREATE TABLE `jadwal_posyandu` (
  `id_jadwal` int(11) NOT NULL,
  `kode_posyandu` varchar(225) NOT NULL,
  `hari` date NOT NULL,
  `jam_buka` time NOT NULL,
  `jam_tutup` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal_posyandu`
--

INSERT INTO `jadwal_posyandu` (`id_jadwal`, `kode_posyandu`, `hari`, `jam_buka`, `jam_tutup`) VALUES
(1, 'Dahlia1', '2021-06-08', '09:00:00', '14:00:00'),
(2, 'Dahlia1', '2021-06-21', '08:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengetahuan`
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
-- Dumping data untuk tabel `pengetahuan`
--

INSERT INTO `pengetahuan` (`id_pengetahuan`, `judul`, `isi_pengetahuan`, `id_kategori`, `foto`, `kode_posyandu`, `created_date`) VALUES
(3, 'APA SIH MANFAAT DAN TUJUAN DARI IMUNISAI?', '<h5 class=\"card-title\">Imunisasi pada anak memiliki manfaat penting untuk melindungi dan mencegah terhadap penyakit-penyakit menular yang sangat berbahaya bagi anak</h5>\r\n                                ', 2, 'icon15.png', 'Dahlia1', '2021-06-22'),
(4, 'PERAWATAN SEHARI-HARI ANAK', '<h4>Kebersihan Anak</h4>\r\n- Mandikan dengan sabun 2x sehari\r\n- Keramaskan anak dengan sampo 3x seminggu\r\n- Cuci tangan anak dengan sabun sebelum makan, setelah buang air besar, baung air kecil, dan setelah bermain\r\n  -Jagalah kebersihan telinga anak\r\n  - Gunting kuku tangan dan kaki anak ketika sudah terlihat panjang\r\n- Ajarkan buang air besar dan kecil di WC\r\n- Jagalah kebersihan pakaian, mainan, dan tempat tidur anak\r\n- Jagalah kebersihan perlengkapan makan dan minum anak', 4, 'icon17.png', 'Dahlia1', '2021-06-22'),
(5, 'Tanda Bayi Sehat', 'Tanda Bayi Sehat\r\n- Ketika lahir langsung menangis\r\n- Warna tubuh bayi ketika lahir kemerahan\r\n- Bayi bergerak dengan aktif\r\n- Berat badan bayi ketika lahir 2.500 sampai 4.000 gram', 3, 'icon1.png', 'Dahlia1', '2021-06-22'),
(6, 'Tindakan Untuk Bayi Baru Lahir', 'Tindakan Untuk Bayi Baru Lahir\r\n\r\n- Jagalah kebersihan selama persalinan\r\n- Cegah infeksi kuman pada bayi. Setelah bayi lahir, mintalah salep antibiotik untuk matanya\r\n- Jaga tali pusat agar selalu bersih, kering, dan biarkan terbuka (jangan dibungkus)\r\n- Jangan berikan ramuan apapun pada tali pusat. Jika kotor, bersihkan dengan kain bersih dan air matang\r\n- Mintalah suntikan vitamin K1 untuk mencegah pendarahan pada bayi\r\n- Selalu memastikan bayi sudah buang air besar\r\n- Mintalah imunisasi hepatitis B sebelum bayi berumur 24 jam', 3, 'icon2.png', 'Dahlia1', '2021-06-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengetahuan_kategori`
--

CREATE TABLE `pengetahuan_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengetahuan_kategori`
--

INSERT INTO `pengetahuan_kategori` (`id_kategori`, `kategori`) VALUES
(2, 'Berat badan normal'),
(3, 'Berat badan sangat kurang'),
(4, 'Berat badan lebih'),
(5, 'Berat badan kurang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `dataakun`
--
ALTER TABLE `dataakun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `dataanak`
--
ALTER TABLE `dataanak`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `dataibu`
--
ALTER TABLE `dataibu`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `dataimunisasi`
--
ALTER TABLE `dataimunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indeks untuk tabel `datakegiatan`
--
ALTER TABLE `datakegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `datakms`
--
ALTER TABLE `datakms`
  ADD PRIMARY KEY (`id_pa`);

--
-- Indeks untuk tabel `dataposyandu`
--
ALTER TABLE `dataposyandu`
  ADD PRIMARY KEY (`id_posyandu`);

--
-- Indeks untuk tabel `jadwal_posyandu`
--
ALTER TABLE `jadwal_posyandu`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD PRIMARY KEY (`id_pengetahuan`);

--
-- Indeks untuk tabel `pengetahuan_kategori`
--
ALTER TABLE `pengetahuan_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `dataakun`
--
ALTER TABLE `dataakun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `dataimunisasi`
--
ALTER TABLE `dataimunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `datakegiatan`
--
ALTER TABLE `datakegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `datakms`
--
ALTER TABLE `datakms`
  MODIFY `id_pa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `dataposyandu`
--
ALTER TABLE `dataposyandu`
  MODIFY `id_posyandu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal_posyandu`
--
ALTER TABLE `jadwal_posyandu`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengetahuan`
--
ALTER TABLE `pengetahuan`
  MODIFY `id_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengetahuan_kategori`
--
ALTER TABLE `pengetahuan_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
