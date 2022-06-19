-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 04:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vidio`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE SCHEMA vidio;
USE vidio;

SELECT * FROM film;

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `rating` varchar(50) DEFAULT NULL,
  `poster` varchar(255) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `pemain` varchar(250) DEFAULT NULL,
  `jenis_film` varchar(20) DEFAULT NULL,
  
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `judul`, `rating`, `poster`, `genre`, `deskripsi`, `pemain`, `jenis_film`) VALUES
(212, 'Pertaruhan The Series', '18+','https://thumbor.prod.vidiocdn.com/DVYp7rRfv_2QnSOJmF8pXjwmCWw=/223x332/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5421/pertaruhan-the-series-f7cf28.jpg','Action','Keluar dari penjara, Elzan berjuang mencari uang lewat pertarungan jalanan dan menjadi penagih utang demi menebus rumah keluarga yang mau disita oleh bank. Dibantu oleh Ara dan Rio, Elzan memperjuangkan keutuhan keluarganya dengan mempertaruhkan segalanya.', 'Jefri Nichol, Giulio Parengkuan, Clara Bernadeth', '1'),
(213, 'Virgin Mom', '13+', 'https://thumbor.prod.vidiocdn.com/qnyYhH32R9sD__YNBja7vOOOMqo=/223x332/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5252/virgin-mom-f8b2f4.jpg' ,'Drama','Seorang gadis yang masih perawan dan juga atlit berprestasi di bidang badminton tiba-tiba hamil tanpa pernah behubungan seks. Hamil dengan tetap perawan mengejutkan keluarga dan lingkungan di sekitarnya.', 'Amanda Rawles, Ahmad Al Ghazali', '1'),
(214, 'Bad Boys', '18+', 'https://thumbor.prod.vidiocdn.com/Dnw_voUWzIwoYPbR4f1BOUENwFU=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4178/bad-boys-06ef00.jpg','Action','Dua detektif melindungi seorang saksi untuk pembunuhan sambil menyelidiki kasus heroin curian dari ruang penyimpanan bukti dari kantor polisi mereka.', 'Will Smith, Lisa Boyle, Martin Lawrence', '2'),
(215, 'ATM: Errak Error', '18+', 'https://thumbor.prod.vidiocdn.com/BoBqw18qvRwgwiszcoZMcjvJ_zY=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/230/atm-errak-error-900cc7.jpg', 'Comedy', 'Hubungan backstreet Jib dan Sua selama 5 tahun membawa mereka kepada persaingan sengit untuk menentukan siapa dari keduanya yang akan resign dari Bank tempat mereka bekerja.', 'Chantavit Dhanasevi, Preechaya Pongthananikorn', '3'),
(216, 'Kung Fu Panda', '7+', 'https://thumbor.prod.vidiocdn.com/IDlipdeV9EmgXO03oXLI8UXM21I=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5375/kung-fu-panda-ab8ed8.jpg', 'Cartoon', 'Yang mengejutkan semua orang, termasuk dirinya sendiri, Po, panda yang kelebihan berat badan dan canggung, dipilih sebagai pelindung Lembah Damai. Kesesuaiannya akan segera diuji saat musuh bebuyutan lembah datang kembali.', 'Jack Black, Dustin Hoffman, Jackie Chan', '4'),
(217, 'Dishoom', '13+', 'https://thumbor.prod.vidiocdn.com/UJTuVKuSUPlJrAvsfBrpMlUvhMs=/424x630/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5066/dishoom-1ee426.jpg', 'Action', 'Dua hari sebelum bentrokan besar antara India dan Pakistan, pemain kriket top Viraj Sharma hilang. Dengan hanya 36 jam tersisa untuk menemukannya, Departemen Kepolisian Emirates mempekerjakan seorang perwira India, Kabir Shergill, untuk menyelesaikan kasus tersebut.', 'Varun Dhawan, Akshaye Khanna, John Abraham', '2'),
(218, 'Haikyuu!!', '13+', 'https://thumbor.prod.vidiocdn.com/wRUEsFnZizNg7IrG1PF32_zQo8Y=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3751/haikyuu-976979.jpg', 'Anime', 'Bertekad untuk menjadi seperti pemain bintang kejuaraan bola voli Shouyou, seorang anak laki-laki pendek yang dijuluki \"raksasa kecil\", bergabung dengan klub bola voli sekolahnya.', 'Satoshi Hino, Ayumu Murase, Kaito Ishikawa', '5'),
(219, 'Doraemon The Movie: Nobita\'s Chronicle of the Moon', '7+', 'https://thumbor.prod.vidiocdn.com/A_TtV__5liayEFHP0HPiITMGpWM=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3090/doraemon-the-movie-nobita-s-chronicle-of-the-moon-exploration-6b7199.jpg', 'Anime','Nobita melihat bulan menguning tadi malam dan memberitahu kelasnya tentang hal itu tapi mereka pikir itu lucu. Doraemon memberinya \"Lencana Klub Penjelajah Sejarah\" dan menemukan ada kehidupan di bulan.', 'Wasabi Mizuta, Megumi Oohara, Yumi Kakazu', '5'),
(220, 'The Spiderwick Chronicles', '13+', 'https://thumbor.prod.vidiocdn.com/0HnmOzGFw44AdzcKp7PvRm8bXp0=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5458/the-spiderwick-chronicles-1d0be6.jpg', 'Action', 'Saudara kembar Jared dan Simon Grace pindah ke Spiderwick Estate bersama ibu dan saudara perempuan mereka. Sesampai di sana, mereka menemukan diri mereka dikelilingi oleh makhluk ajaib.', 'Mary-Louise Parker, Freddie Highmore, Sarah Bolger', '2'),
(221, 'New Journey to The West: Season 8', '13+', 'https://thumbor.prod.vidiocdn.com/QQmSK4Y7SxJQGPDELbRuzhrrtIA=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5345/new-journey-to-the-west-season-8-0566d9.jpg', 'Comedy', 'Di Musim 8, anggota saat ini akan kembali dan temanya akan didasarkan pada dongeng tradisional Korea, Heungbu dan Nolbu.', 'Cho Kyu-hyun, Kang Ho-dong, Eun Ji-won', '3'),
(222, 'Resident Evil: Retribution', '18+', 'https://thumbor.prod.vidiocdn.com/x1KPhSVnvhNUb5VVpjFiX4mpYic=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3916/resident-evil-extinction-000602.jpg','Action', 'Alice bertarung bersama gerakan perlawanan untuk mendapatkan kembali kebebasannya dari fasilitas pengujian Umbrella Corporation.', 'Milla Jovovich, Michelle Rodriguez, Sienna Guillory', '2'),
(223, 'Sicario', '18+', 'https://thumbor.prod.vidiocdn.com/6qpI8vCT2ZEY92u7mDLDwSu-Qas=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4416/sicario-aa6a34.jpg' ,'Action', 'Selama misi berbahaya untuk menghentikan kartel narkoba yang beroperasi antara AS dan Meksiko, Kate Macer, seorang agen FBI, dihadapkan pada beberapa kenyataan pahit.', 'Benicio Del Toro, Josh Brolin, Emily Olivia Leah Blunt', '2'),
(224, 'Transformers: Dark of the Moon', '13+', 'https://thumbor.prod.vidiocdn.com/OlCx8cev5_NPAbJWjbf5uUDxIxo=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5462/transformers-dark-of-the-moon-fc53cf.jpg','Action', 'Autobots mempelajari pesawat ruang angkasa Cybertronian yang tersembunyi di bulan, dan berlomba melawan Decepticons untuk mencapainya dan mempelajari rahasianya.', 'Shia LaBeouf, Megan Fox, Rosie Huntington-Whiteley', '2'),
(225, 'Jumanji: Welcome to the Jungle', '13+', 'https://thumbor.prod.vidiocdn.com/zDfV5v2GlfXQMR6HIz-dRS3Eito=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3847/jumanji-welcome-to-the-jungle-107d6c.jpg','Action', 'Empat remaja tersedot ke dalam permainan video ajaib, dan satu-satunya cara mereka dapat melarikan diri adalah bekerja sama untuk menyelesaikan permainan.', 'Dwayne Johnson, Kevin Hart, Karen Gillan', '2'),
(226, 'The Amazing Spider-Man', '13+', 'https://thumbor.prod.vidiocdn.com/AFMW9t2bwmgE5BFURWubsmWGrWc=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4175/the-amazing-spider-man-0955b2.png','Action', 'Setelah Peter Parker digigit oleh laba-laba yang diubah secara genetik, ia memperoleh kekuatan seperti laba-laba dan berusaha menyelamatkan kota dari intrik musuh reptil misterius.', 'Emma Stone, Andrew Garfield, Rhys Ifans', '2'),
(227, 'Terminator Genisys', '13+','https://thumbor.prod.vidiocdn.com/Sdq3kxXNCGis5Bqyks4zRYvO1OI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5453/terminator-genisys-767e4d.jpg','Action', 'Ketika John Connor, pemimpin perlawanan manusia, mengirim Sersan Kyle Reese kembali ke 1984 untuk melindungi Sarah Connor dan menjaga masa depan, pergantian peristiwa yang tak terduga menciptakan garis waktu yang retak.', 'Arnold Schwarzenegger, Jai Courtney, Emilia Clarke', '2'),
(228, 'The Raid', '18+','https://thumbor.prod.vidiocdn.com/As-YPiK5t2yc8tOjVbsPSh4N_do=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/682/the-raid-b7f3b3.jpg','Action', 'Setelah terjebak di dalam sebuah rumah persembunyian mafia berlantai 15 milik Tama, kini Rama dan timnya harus bertarung mati-matian untuk membekuk mereka - sekaligus berjuang untuk bertahan hidup.', 'Iko Uwais, Yayan Ruhian, Joe Taslim', '2'),
(229, 'Season of the Witch', '13+','https://thumbor.prod.vidiocdn.com/vyw0WjnF2LxVGRZqxFdyQEONpws=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5214/season-of-the-witch-aab9a7.jpg','Action', 'Ksatria abad keempat belas mengangkut seorang penyihir yang dicurigai ke sebuah biara, di mana para biarawan menyimpulkan bahwa kekuatannya bisa menjadi sumber Black Plague.', 'Nicolas Cage, Ron Perlman, Claire Foy', '2'),
(230, 'John Wick', '18+', 'https://thumbor.prod.vidiocdn.com/8woUOgeARSzHAbiSS9qQmQLAHlY=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4414/john-wick-0ae102.jpg','Action', 'Seorang mantan pembunuh bayaran keluar dari masa pensiunnya untuk melacak para gangster yang membunuh anjingnya dan mengambil semuanya darinya.', 'Keanu Reeves, Michael Nyqvist, Alfie Allen', '2'),
(231, 'Jack Reacher: Never Go Back', '13+', 'https://thumbor.prod.vidiocdn.com/Y8Vl7D8ZEzexMFtqwrCo4omiHgI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5343/jack-reacher-never-go-back-276ecd.png', 'Action', 'Jack Reacher harus mengungkap kebenaran di balik konspirasi besar pemerintah untuk membersihkan namanya saat dalam pelarian sebagai buronan hukum.', 'Tom Cruise, Cobie Smulders, Rosamund Pike', '2'),
(232, 'SPY x FAMILY', '13+', 'https://thumbor.prod.vidiocdn.com/M8MllJY3W0JqCDnXa0ImSz0rYKY=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4893/spy-x-family-fdd860.jpg', 'Anime', 'Ceritanya mengikuti mata-mata yang harus \"membangun keluarga\" untuk menjalankan misi, tidak menyadari bahwa gadis yang dia adopsi sebagai anak perempuan dan wanita yang dia setujui untuk menikah palsu dengannya masing-masing adalah pembaca pikiran dan pembunuh.', 'Saori Hayami, Takuya Eguchi, Atsumi Tanezaki', '5'),
(233, 'Love All Play', '13+', 'https://thumbor.prod.vidiocdn.com/F6CaQoJkuqoA1fOK7tgCikWb5os=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4889/love-all-play-c7af61.jpg','Anime','Serial yang berpusat pada bulu tangkis \"Love All Play\" berfokus pada karakter Ryō Mizushima, seorang pemain bulu tangkis yang berada di tim sekolah menengahnya, tetapi karena sekolah tersebut tidak memiliki pelatih, mereka relatif tidak dikenal, dengan Ryō hanya berhasil turnamen besar karena kekuatan dan keterampilannya yang murni.', 'Natsuki Hanae, Masaya Watanabe', '5'),
(234, 'Kaguya-sama: Love Is War - Ultra Romantic', '18+', 'https://thumbor.prod.vidiocdn.com/NvnRqRmK4L3ugBvmci6kyGnsCFk=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4890/kaguya-sama-love-is-war-ultra-romantic-cdd396.jpg','Anime', 'Menceritakan kisah dari Miyuki Shirogane sang ketua OSIS dan Kaguya Shinomiya sang Wakil Ketua OSIS. Mereka berdua memang merupakan pasangan yang sempurna.', 'Makoto Furukawa, Konomi Kohara, Aoi Koga', '5'),
(235, 'The Rising of the Shield Hero Season 2', '13+', 'https://thumbor.prod.vidiocdn.com/z5CVsSOChscjTY9f-blJ98KzmVA=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4963/the-rising-of-the-shield-hero-season-2-8af446.jpg','Anime', 'Naofumi Iwatani, “Pahlawan Perisai”, ditugaskan untuk menaklukkan “Kura-Kura Roh” di Kerajaan Kura-Kura Roh, yang dipaksa hidup kembali dan akan membawa bencana.', 'Asami Seto, Kaito Ishikawa, Rina Hidaka', '5'),
(236, 'Kingdom Season 4', '18+', 'https://thumbor.prod.vidiocdn.com/PO2SxRKJmeJobhwpZdyDNKMe8GI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4965/kingdom-season-4-4bdcb2.jpg','Anime', 'Pertempuran terbesar dalam sejarah melawan Tentara Koalisi telah meninggalkan luka di Qin dan seluruh Tiongkok. Ying Zheng memberi tahu Pangeran Cheng Jiao mengenai ambisi seumur hidupnya – yaitu menjadi penguasa untuk menyatukan Tiongkok.', 'Masakazu Morita, Jun Fukuyama, Rie Kugimiya', '5'),
(237, 'In The Heart of Kunoichi Tsubaki', '18+', 'https://thumbor.prod.vidiocdn.com/8PfZLEeNAZpz8xrBdip3IgnagmU=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4896/in-the-heart-of-kunoichi-tsubaki-f042ca.jpg','Anime', 'Tsubaki, seorang kunoichi dan murid terbaik dari sekolahnya, tinggal di sebuah desa di mana wanita tidak diperbolehkan berhubungan dengan pria. ', 'Aoi Koga, Ichimichi Mao, Yūko Natsuyoshi', '5'),
(238, 'Naruto','13+','https://thumbor.prod.vidiocdn.com/NH-jtvqcgb4pec1BgjUoar2WiTg=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4131/naruto-501324.jpg','Anime', 'Naruto Uzumaki, seorang ninja yang hiperaktif, periang, dan ambisius yang ingin mewujudkan keinginannya untuk mendapatkan gelar Hokage, pemimpin dan ninja terkuat di desanya.', 'Junko Takeuchi, Kazuhiko Inoue, Noriaki Sugiyama', '5'),
(239, 'Bleach', '13+', 'https://thumbor.prod.vidiocdn.com/QjuvzkSRrtw3fs10mBv4Lmpd0WI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4294/bleach-b40936.jpg', 'Anime', 'Ichigo Kurosaki adalah siswa sekolah menengah biasa sampai keluarganya diserang oleh Hollow, roh jahat yang berusaha melahap jiwa manusia.', 'Masakazu Morita, Fumiko Orikasa, Yuki Matsuoka', '5'),
(240, 'Inuyasha', '13+', 'https://thumbor.prod.vidiocdn.com/PgZdVQeTrNlD3bIKqTiEPVM28Iw=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4133/inuyasha-126234.jpg','Anime', 'Seorang gadis remaja secara berkala melakukan perjalanan kembali ke masa feodal Jepang untuk membantu setengah iblis muda memulihkan pecahan permata kekuatan besar.', 'Kappei Yamaguchi, Satsuki Yukino, Houko Kuwashima', '5'),
(241, 'One Piece', '18+', 'https://thumbor.prod.vidiocdn.com/HGdm23oLOW-lzjPSrq-UlnPeRyg=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/2975/one-piece-12eb21.jpg', 'Anime', 'Mengikuti petualangan Monkey D. Luffy dan kru bajak lautnya untuk menemukan harta karun terbesar yang pernah ditinggalkan oleh Bajak Laut legendaris, Gold Roger. Harta karun misteri terkenal bernama \"One Piece\"', 'Mayumi Tanaka, Akemi Okamura, Kappei Yamaguchi', '5'),
(242, 'Men In Black II', '18+', 'https://thumbor.prod.vidiocdn.com/j6mcZID9Z563po_1cSjZJL6bHZ4=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3857/men-in-black-ii-969ed4.jpg', 'Comedy', 'Agen Jay dikirim untuk menemukan Agen Kay dan memulihkan ingatannya setelah kemunculan kembali kasus dari masa lalu Kay.', 'Will Smith, Tommy Lee Jones, Rip Torn', '3'),
(243, 'Exit', '18+', 'https://thumbor.prod.vidiocdn.com/U0oENkx6TrDtPGtzQdhi5X-OKaU=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3912/exit-8797ed.jpg', 'Comedy', 'Seorang pemanjat tebing mencoba menyelamatkan hari ketika gas putih misterius menyelimuti seluruh distrik di Seoul, Korea Selatan.', 'Im Yoon-ah, Jo Jung-suk, Du-shim Ko', '3'),
(244, 'Love For Sale', '18+', 'https://thumbor.prod.vidiocdn.com/ln3N4JvPXRBWnk8BWTSUnCjA0CQ=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3967/love-for-sale-c06d73.jpg' ,'Comedy', 'Seorang pria lajang dewasa ditantang oleh teman-temannya untuk membawa pacar ke pernikahannya. Ia tidak mau malu dan terpaksa menggunakan situs kencan.', 'Gading Marten, Rukman Rosadi, Adriano Qalbi', '3'),
(245, 'Mr. Bean', '13+','https://thumbor.prod.vidiocdn.com/vaey9YTOiS6s9lDe7rWymyCvUJw=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/285/mr-bean-02646c.jpg','Comedy', 'Acara ini mengikuti Mr Bean saat ia mencoba untuk membebaskan dirinya dari situasi yang memalukan tetapi hanya berakhir membuat dirinya lebih banyak kesulitan.', 'Rowan Atkinson', '3'),
(246, 'Barely Lethal', '18+', 'https://thumbor.prod.vidiocdn.com/Ih59R3YIh2mxK4HtXpJmrtdJcGI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/2238/barely-lethal-b70cac.jpg','Comedy', 'Saat menjalani misi, Megan Walsh, seorang pembunuh, tertarik dengan kehidupan para remaja lain seusianya. Dia memutuskan untuk memalsukan kematiannya sendiri dan mendaftarkan diri ke sebuah sekolah.', 'Samuel L. Jackson, Hailee Steinfeld', '3'),
(247, 'Epen Cupen The Movie', '13+', 'https://thumbor.prod.vidiocdn.com/jp9r0lPp751ENJ6GLOFV7jQPrJs=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/1821/epen-cupen-the-movie-38f9ec.jpg','Comedy', 'Celo, seorang pemuda dari Papua, disuruh ayahnya untuk pergi mencari saudara kembarnya yang hilang sejak kecil. Ia pun mengikuti petunjuk dari mimpi ayahnya yang melihat kembarannya di medan perang.', 'Babe Cabita, Klemen Awi, Marissa Nasution', '3'),
(248, 'Guns Akimbo', '18+', 'https://thumbor.prod.vidiocdn.com/LojPLV43u9NoMjQiEaPeXqdJkuQ=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/2043/guns-akimbo-6c8c27.jpg','Comedy', 'Miles seorang pengembang video game, terbangun dengan pistol di baut pada tangannya. Ia menjadi peserta berikutnya dalam pertandingan mematikan di dunia nyata yang mengalir secara online.', 'Daniel Radcliffe, Samara Weaving, Natasha Liu Bordizzo', '3'),
(249, 'Reuni Z', '18+', 'https://thumbor.prod.vidiocdn.com/ctlkUULlU6DAV9Ry7qFd-_9X0aM=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3494/reuni-z-4f1510.jpg','Comedy', 'Setelah 20 tahun lulus dari sekolah menengah, siswa Zenith mengadakan reuni. Wabah zombie dimulai pada reuni, menginfeksi sebagian besar kelompok. Para penyintas perlu mencari jalan keluar untuk melarikan diri dari zombie yang mengelilingi sekolah.', 'Dinda Kanyadewi, Tora Sudiro, Soleh Solihun', '3'),
(250, 'Imperfect', '13+', 'https://thumbor.prod.vidiocdn.com/1ukfRsMvvfN9WBLrkAnJuDDHHEU=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4836/imperfect-82dd58.jpg','Comedy', 'Terlahir gemuk dan berkulit gelap, rasanya seperti kutukan bagi Rara, apalagi saat dia bekerja di kantor yang dikelilingi gadis-gadis cantik. Bosnya ingin dia menurunkan berat badannya, tetapi ada seorang pria yang mencintai dirinya apa adanya.', 'Jessica Mila, Reza Rahadian, Ernest Prakasa', '3'),
(251, 'The Eagle Shooting Heroes', '13+', 'https://thumbor.prod.vidiocdn.com/lx5DYyuVDcOUBfi9nAFGxrkMfc4=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4669/the-eagle-shooting-heroes-9fddf2.jpg','Comedy', 'Sementara identitas yang salah dan kebingungan gender yang merajalela akan tersajikan, arahan koreografi aksi Sammo Hung dan pemeran all-star yang luar biasa juga membuat tawa dan sensasi datang dalam komedi gila gaya Hong Kong ini.', 'Brigitte Lin, Maggie Cheung, Leslie Cheung', '3'),
(252, 'Free Birds', '7+','https://thumbor.prod.vidiocdn.com/z84TxlBd5fdEbBt2YSDs3BosPCI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/2233/free-birds-6bc56e.jpg', 'Cartoon', 'Dua kalkun memiliki misi untuk menyelamatkan diri mereka dengan cara menghapus hidangan kalkun dari menu Thanksgiving, disamping perbedaan di antara mereka yang amat banyak.', 'Woody Harrelson, Owen Wilson, Dan Fogler', '4'),
(253, 'Avatar', '7+','https://thumbor.prod.vidiocdn.com/BRsFQWUoY3IbtzwwSlqdlK0luso=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4292/avatar-4de08b.png', 'Cartoon', 'Dalam dunia sihir unsur yang dilanda perang, seorang anak laki-laki bangkit kembali untuk melakukan pencarian mistik berbahaya untuk memenuhi takdirnya sebagai Avatar, dan membawa perdamaian ke dunia.', 'Zach Tyler Eisen, Mae Whitman, Jack DeSena', '4'),
(254, 'Dora\'s Birthday Adventure', '7+', 'https://thumbor.prod.vidiocdn.com/NklNilF3qg0sZ5kbWYVTUScfuOQ=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4305/dora-s-birthday-adventure-cdd9df.jpg','Cartoon', 'Dora harus tiba di rumah tepat waktu untuk ulang tahun kesepuluhnya! Tapi dia dan Boots tidak bisa keluar dari buku cerita! Mereka harus membawa kristal permintaan mereka ke Wishing Wizzle agar Dora bisa pulang.', 'Caitlin Sanchez, Jean Carlos Celi, Jessica Conde', '4'),
(255, 'Shaun the Sheep', '<7', 'https://thumbor.prod.vidiocdn.com/PEFK7oqiCWyqsDbb3CZ6gUvbDAU=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/1574/shaun-the-sheep-cc7de7.jpg','Cartoon', 'Inti dari seri animasi ini tentang Shaun yang memiliki kecerdasan seperti manusia, kreativitas, dan tingkah laku dalam lingkungan peternakan.', 'John Sparkes, Kate Harbour', '4'),
(256, 'Masha and The Bear', '<7', 'https://thumbor.prod.vidiocdn.com/WtGX_bKmsdKCe7tWOwezT9g3tuA=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/2145/masha-and-the-bear-1007b7.jpg', 'Cartoon', 'Seekor beruang sirkus pensiunan menetap di hutan dan bersiap untuk kehidupan baru yang tenang dikelilingi oleh kedamaian dan ketenangan sampai dia diperkenalkan dengan seorang gadis kecil petualang bernama Masha.', 'Boris Kutnevich, Alina Kukushkina, Kaitlyn McCormick', '4'),
(257, 'Masha\'s Spooky Stories', '<7', 'https://thumbor.prod.vidiocdn.com/SYOvwqTaIm9c0FB0UianSbPuZxc=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/2582/masha-s-spooky-stories-5f9592.jpg','Cartoon', 'Masha menggambarkan berbagai ketakutan masa kecil termasuk cerita horor dan monster, dan juga menjelaskan bagaimana seseorang dapat melawan fobia tersebut.', 'Azelia Rashika Andini, Alina Kukushkina', '4'),
(258, 'SpongeBob SquarePants', '7+', 'https://thumbor.prod.vidiocdn.com/PgYjkOw9ucwjn_ajsHLR9imp-kM=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4314/spongebob-squarepants-3218a3.jpg','Cartoon', 'Spons laut kuning bernama SpongeBob SquarePants, yang senang menjadi juru masak di Krusty Krab, tinggal di Samudra Pasifik. Dia memulai berbagai petualangan dengan teman-temannya di Bikini Bottom.', 'Tom Kenny, William \"Bill\" Fagerbakke, Rodger Dale Bumpass', '4'),
(259, 'Pinkfong - Sing Along with Baby Shark', '<7', 'https://thumbor.prod.vidiocdn.com/rnN2czCsAKsHHZV5OiLliL7sILc=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/3416/sing-along-with-baby-shark-1c0e23.jpg', 'Cartoon', 'Anda sedang menonton \"Pinkfong Sing Along with Baby Shark\", Baby Shark yang sangat menyenangkan. Seri Sing Along yang dibuat oleh PINKFONG. Nyanyikan, menari, dan mainkan lagu anak-anak favorit anak-anak!', 'Various', '4'),
(260, 'Paw Patrol', '<7', 'https://thumbor.prod.vidiocdn.com/PHeUh3rmGbj-fDjLZWlPGR1AMTI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4287/paw-patrol-4f9747.jpg','Cartoon', 'Enam anak anjing heroik yang dipimpin oleh seorang anak berusia 10 tahun yang paham teknologi melakukan misi penyelamatan berisiko tinggi menggunakan humor, keterampilan memecahkan masalah, dan kendaraan yang keren.', 'Owen Mason, Kallan Holley, Ron Pardo', '4'),
(261, 'Pororo - The Little Penguin', '<7', 'https://thumbor.prod.vidiocdn.com/UkpCIgHMzkdqXfRyR8J1QoMBKkI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/1603/pororo-the-little-penguin-7532c1.png','Cartoon', 'Mengisahkan tentang petualangan Pororo dan teman-temannya yang tinggal di desa bersalju Porong Porong Forest, yang sering menghadapi tantangan serta mempelajari pelajaran praktis dan moral dalam setiap episode.', 'Lee Seon, Mi Ja Lee, Jeong Misuk', '4'),
(262, 'Code Helix', '13+', 'https://thumbor.prod.vidiocdn.com/95TTFR6VZll2ezpDiHV5rA5tUbI=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5441/code-helix-0b9592.jpg','Drama', 'Rendra adalah anak SMA Bintang Perubahan yang berbakat dalam bidang IT. Kehidupan sehari-harinya terlihat sempurna. Namun, semua ternyata semua itu hanya topeng belaka.', 'Ajil Ditto, Shakira Jasmine, Ashira Zamita Teir', '1'),
(263, 'Dating Queen', '18+', 'https://thumbor.prod.vidiocdn.com/A_xtCAjRBxwkGD-oH4QL0n02bcg=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5292/dating-queen-050080.jpg', 'Drama', 'Empat sahabat perempuan menggeluti dunia percintaan lewat aplikasi kencan.', 'Raline Shah, Deva Mahenra, Nadine Alexandra', '1'),
(264, 'Daniel & Nicolette', '18+', 'https://thumbor.prod.vidiocdn.com/4zHmqchgtL-0ADkA0M02LNWyIMs=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4714/daniel-nicolette-ae88d5.jpg', 'Drama', 'Nicole ingin berdiri di atas panggung sebagai seorang DJ, menjadi musisi yang begitu terkenal sehingga ia bisa menyusul kekasihnya, Stevan di Paris.', 'Cinta Laura Kiehl, Jerome Kurnia, Jihane Almira Chedid', '1'),
(265, 'Dilema', '18+', 'https://thumbor.prod.vidiocdn.com/p3DcKObjIWT4bYzedicsdAnWgJs=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5400/dilema-3318e4.jpg', 'Drama', 'SEGERA TAYANG I ANYA seorang psikolog yang bekerja di firma psikolog milik ayahnya, JACQUES BOUVIER , yang terletak di Cote d’Azure - Perancis, memutuskan untuk pulang ke Jakarta dan membuka praktek psikolog sendiri setelah mendapatkan izin praktek di Indonesia.', 'Mischa Chandrawinata, Aulia Sarah, Mathias Muchus', '1'),
(266, 'Cool Boy vs Cool Girl', '13+', 'https://thumbor.prod.vidiocdn.com/p-034BqS7muDski9xKiv1FLtAb8=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/5065/cool-boy-vs-cool-girl-7a4ac1.jpg', 'Romance', 'Keinginan Keysa untuk menjaga hidupnya yang sempurna tiba-tiba berubah ketika ia ditugaskan untuk membujuk Naufan, seorang mantan atlit renang agar kembali bersekolah.', 'Abidzar Al-Ghifari, Natasha Wilona, Rebecca Klopper', '1'),
(267, 'Brutal', '18+', 'https://thumbor.prod.vidiocdn.com/GfDlaq1_YX9LZiP5v6V62gEcVfY=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/2300/brutal-80aac9.jpg' ,'Drama', 'Geng kramat merupakan sebuah geng yang disegani oleh semua orang. Tetapi, sebuah pengkhianatan menjadi awal perpecahan geng tersebut.', 'Kevin Kambey, Rezky Aditya, Zack Lee', '1'),
(268, 'HEART', '13+', 'https://thumbor.prod.vidiocdn.com/66BcBnmfbtIsilxrgG6BXTdF2TU=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/640/heart-6fb022.jpg', 'Drama', 'Rachel seorang gadis tomboi yang aktivitas kesehariannya dihabiskan bersama Farel, sahabatnya sejak kecil. Hingga tiba Luna yang hadir secara tak sengaja sebagai orang ketiga dalam persabahatan Rachel dan Farel.', 'Michelle Ziudith, Aurora Ribero, Achmad Megantara', '1'),
(269, 'Pulang', '13+', 'https://thumbor.prod.vidiocdn.com/E-w_IVb-s-P8eI93CIkfDzatxUU=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4827/pulang-4200b2.jpg','Drama', 'Dewi seorang anak tunggal dari pasangan Intan dan Rahmat, memiliki cita-cita untuk tinggal di Kanada. Ketika ia berhasil, kehidupannya di Kanada terhenti ketika ia terdiagnosa penyakit langka yang menyisakan waktunya tidak lama lagi.', 'Della Dartyan, Dwi Sasono, Putri Ayudya', '1'),
(270, 'DJS The Movie: Biarkan Aku Menari', '13+', 'https://thumbor.prod.vidiocdn.com/nc5dnnHf2-OwABi_egSbrbNcEwY=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4977/djs-the-movie-biarkan-aku-menari-01ba84.jpg','Drama', 'Seumur hidup Wulan, ia hanya ingin menjadi dancer. Ketika ayahnya, Lukman dan kakaknya, Satria masih hidup, mereka lah yang selalu mensupport cita-cita Wulan. Namun kini mereka sudah meninggal, dan Wulan hanya hidup bersama ibunya, Linda.', 'Sandrinna Michelle , Rey Bong, Rayensyah Rassya Hidayah', '1'),
(271, 'Suami-Suami Masa Kini', '18+', 'https://thumbor.prod.vidiocdn.com/eFPGxunoRx-IahMrKZSFrxD7DfQ=/212x315/filters:quality(75)/vidio-web-prod-film/uploads/film/image_portrait/4487/suami-suami-masa-kini-ca11d2.jpg', 'Comedy', 'Masing-masing dengan kehidupan cinta mereka, Yuda, Ical, Raka dan Tobi sudah bersahabat dari SMA. Yuda dengan pernikahannya yang \"asik\", Ical dengan pernikahannya yang normal dan adem, Raka yang menikahi janda kaya namun masih sexy, dan Tobi yang masih belum ingin serius.', 'Ringgo Agus Rahman, Tarra Budiman, Marcell Darwin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_film`
--

CREATE TABLE `jenis_film` (
  `id` varchar(20) NOT NULL,
  `jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_film`
--

INSERT INTO `jenis_film` (`id`, `jenis`) VALUES
('1', 'original'),
('2', 'action'),
('3', 'comedy'),
('4', 'kids'),
('5', 'anime');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_film`
--
ALTER TABLE `jenis_film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`jenis_film_id`) REFERENCES `jenis_film` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
