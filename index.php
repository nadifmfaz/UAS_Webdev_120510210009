<?php 

require 'functions.php';

$jenisFilm = ["","Original","Action","Comedy","Kids","Anime"];

$film10 = query("SELECT * FROM film order by deskripsi desc limit 10");
$filmAll = query("SELECT * FROM film order by jenis_film asc");

if($_GET){
    $film10 = query("SELECT * FROM film where jenis_film = $_GET[jenis_film] order by deskripsi desc limit 10");
    $filmAll = query("SELECT * FROM film where jenis_film = $_GET[jenis_film] order by jenis_film asc");
}

if(!$filmAll){
    $filmAll = [];
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Pidio - Nonton Tv Streaming, Serial, Sinetron & Sepak Bola | Pidio</title>

    <link rel="shortcut icon" type="image/png" href="assets/img/icons.png">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/all.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
<body>
    <div class="top-header-area" id="sticker">
        <div class="container">
            <div class="header">
                <div class="col-lg-12 col-sm-12 text-center">
                    <div class="main-menu-wrap">
                        <div class="site-logo">
                            <a href="index.php">
                                <img src="img/logo.png" width="200">
                            </a>
                        </div>

                        <nav class="main-menu">
                            <ul>
                                <li><a href="index.php?jenis_film=1">Sports</a></li>
                                <li><a href="index.php?jenis_film=2">TV Show</a></li>
                                <li><a href="index.php?jenis_film=3">Movies</a></li>
                                <li><a href="index.php?jenis_film=4">Kids</a></li>
                                <li><a href="#">More</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="index.php?jenis_film=5">For you</a>
                                        </li>
                                        <li>
                                            <a href="index.php?jenis_film=6">Anime</a>
                                        </li>
                                        <li>
                                            <a href="index.php?jenis_film=7">News</a>
                                        </li>
                                        <li>
                                            <a href="index.php?jenis_film=8">Music</a>
                                        </li>
                                        <li>
                                            <a href="index.php?jenis_film=9">Lifestyle</a>
                                        </li>
                                        <li>
                                            <a href="index.php?jenis_film=10">Entertainment</a>
                                        </li>
                                        <li>
                                            <a href="index.php?jenis_film=11">Education</a>
                                        </li>
                                        <li>
                                            <a href="index.php?jenis_film=12">Fantasy Team</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <div class="search_bar">
                                        <form action="search.php" method="get">
                                            <input type="text" placeholder="Cari di Pidio" class="search_input" name="judul">
                                            <span class="search_submit"><button class="btn button-search search_bar_submit_button" type="submit"><i class="fas fa-search"></i>
                                            </button></span>
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/big/slider-1.webp" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">Pertaruhan The Series</h1>
                    <p class="carousel-desc">Keluar dari penjara, Elzan berjuang mencari uang lewat pertarungan jalanan dan menjadi penagih utang demi menebus rumah keluarga yang mau disita oleh bank. 
                        Dibantu oleh Ara dan Rio, Elzan memperjuangkan keutuhan keluarganya dengan mempertaruhkan segalanya.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-2.webp" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">New Journey to The West: Season 8</h1>
                    <p class="carousel-desc">Di Musim 8, anggota saat ini akan kembali dan temanya akan didasarkan pada dongeng tradisional Korea, Heungbu dan Nolbu.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-3.webp" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">Dishoom</h1>
                    <p class="carousel-desc">Dua hari sebelum bentrokan besar antara India dan Pakistan, pemain kriket top Viraj Sharma hilang. Dengan hanya 36 jam tersisa untuk menemukannya, 
                        Departemen Kepolisian Emirates mempekerjakan seorang perwira India, Kabir Shergill, untuk menyelesaikan kasus tersebut.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-4.webp" alt="Fourth slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">Bad Boys</h1>
                    <p class="carousel-desc">Dua detektif melindungi seorang saksi untuk pembunuhan sambil menyelidiki kasus heroin curian dari ruang penyimpanan bukti dari kantor polisi mereka.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-5.webp" alt="Fifth slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">ATM: Errak Error</h1>
                    <p class="carousel-desc">Hubungan backstreet Jib dan Sua selama 5 tahun membawa mereka kepada persaingan sengit untuk menentukan siapa dari keduanya yang akan resign dari Bank tempat mereka bekerja.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-6.webp" alt="Sixth slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">Kung Fu Panda</h1>
                    <p class="carousel-desc">Yang mengejutkan semua orang, termasuk dirinya sendiri, Po, panda yang kelebihan berat badan dan canggung, dipilih sebagai pelindung Lembah Damai. 
                        Kesesuaiannya akan segera diuji saat musuh bebuyutan lembah datang kembali.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-7.webp" alt="Seventh slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">Virgin Mom</h1>
                    <p class="carousel-desc">Seorang gadis yang masih perawan dan juga atlit berprestasi di bidang badminton tiba-tiba hamil tanpa pernah behubungan seks. 
                        Hamil dengan tetap perawan mengejutkan keluarga dan lingkungan di sekitarnya.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-8.webp" alt="Eighth slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">The Spiderwick Chronicles</h1>
                    <p class="carousel-desc">Saudara kembar Jared dan Simon Grace pindah ke Spiderwick Estate bersama ibu dan saudara perempuan mereka. 
                        Sesampai di sana, mereka menemukan diri mereka dikelilingi oleh makhluk ajaib.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-9.webp" alt="Ninth slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">Haikyuu!!</h1>
                    <p class="carousel-desc">Bertekad untuk menjadi seperti pemain bintang kejuaraan bola voli Shouyou, seorang anak laki-laki pendek yang dijuluki "raksasa kecil", bergabung dengan klub bola voli sekolahnya.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/big/slider-10.webp" alt="Tenth slide">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="carousel-text">Doraemon The Movie: Nobita's Chronicle of the Moon</h1>
                    <p class="carousel-desc">Nobita melihat bulan menguning tadi malam dan memberitahu kelasnya tentang hal itu tapi mereka pikir itu lucu. 
                        Doraemon memberinya "Lencana Klub Penjelajah Sejarah" dan menemukan ada kehidupan di bulan.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="latest-news pt-150 pb-150">
        <div class="container">
            <div class="row">
                <?php $jenis = 0 ?>
                <div class="col-sm-12 bg-light py-2 my-4">
                    <h4 class="text-black"><?= $filmAll ? $jenisFilm[$filmAll[0]['jenis_film']] : "jenis film Kosong" ?></h4>
                </div>
                <?php foreach ($filmAll as $key => $value): ?>
                    <?php 
                    if ($jenis == 0):
                        $jenis = $value['jenis_film'];
                    endif;
                    ?>

                    <?php if($jenis != $value['jenis_film']): ?>
                        <div class="col-sm-12 bg-light py-2 my-4">    
                        <h4 class="text-black"><?= $jenisFilm[$value['jenis_film']] ?></h4>
                        </div>  
                        <?php $jenis = 0 ?>
                    <?php endif; ?>

                    <div class="col-sm-2">
                        <div class="single-latest-news text-center">
                            <a href="detail.php?id=<?= $value['id'] ?>">
                                <img src="<?= $value['poster'] ?>" alt="">
                            </a>
                        </div>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <p>Pidio Indonesia &copy; <?= date("Y") ?>.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/js/jquery-1.11.3.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.meanmenu.min.js"></script>
    <script src="assets/js/sticker.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>
