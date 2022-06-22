<?php 

require 'functions.php';
$filmSearch = query("SELECT * FROM film order by deskripsi desc");

if($_GET):
    $filmSearch = query("SELECT * FROM film where judul like '%$_GET[judul]%' order by deskripsi desc");  
else:
    header('Location: ');
endif;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Nonton Film</title>


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
                                <li><a href="index.php?jenis_film=1">Originals</a></li>
                                <li><a href="index.php?jenis_film=2">Action</a></li>
                                <li><a href="index.php?jenis_film=3">Comedy</a></li>
                                <li><a href="index.php?jenis_film=4">Kids</a></li>
                                <li><a href="index.php?jenis_film=5">Anime</a></li>
                                <li><a href="#">More</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="index.php">For you</a>
                                        </li>
                                        <li>
                                            <a href="index.php?jenis_film=5">Anime</a>
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

    <div class="latest-news pt-150 pb-150">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 text-center">
                    <div class="section-title"> 
                        <h3 class="search_result">Hasil Pencarian Untuk <div class="result-text mt-2">"<?= $_GET['judul'] ?>"</div></h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <?php foreach ($filmSearch as $key => $value): ?>
                    <div class="col-sm-12">
                        <div class="single-latest-news row">
                            <div class="col-sm-3">
                                <a href="detail.php?id=<?= $value['id'] ?>">
                                    <img class="m-4" src="<?= $value['poster'] ?>">
                                </a>
                            </div>
                            <div class="col-sm-8 mb-4">
                                <div class="news-text-box p-1 text-dark">
                                    <p>
                                        <h4 href="detail.php?id=<?= $value['id'] ?>" class="text-dark"><?= $value['judul'] ?></h4>
                                    </p>
                                    <hr>
                                    <p>
                                        <?= $value['deskripsi'] ?><hr>
                                        <span style="font-weight:bold">Genre :</span> <?= $value['genre'] ?><hr>
                                        <span style="font-weight:bold">Rating :</span> <?= $value['rating'] ?><hr>
                                        <span style="font-weight:bold">Pemain :</span> <?= $value['pemain'] ?>
                                    </p>
                                </div>
                            </div>
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
                    <p>Pidio Indonesia &copy; <?= date("Y")?> All right reserved.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/js/jquery-1.11.3.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.countdown.js"></script>
    <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
    <script src="assets/js/waypoints.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.meanmenu.min.js"></script>
    <script src="assets/js/sticker.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>