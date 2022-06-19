<?php 

require 'functions.php';

$jenisFilm = ["","Original","Action","Comedy","Kids","Anime"];

if($_GET):
    $filmSearch = query("SELECT * FROM film where id = '$_GET[id]' ");
    $filmSearch = $filmSearch ? $filmSearch[0] : "";

    $anotherFilm = query("SELECT * FROM film where jenis_film = $filmSearch[jenis_film] and id != $_GET[id]");

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
                                            <input type="text" placeholder="Cari di Pidio" class="search_input" name="title">
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
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="single-latest-news text-center bg-transparent shadow-none">
                        <a href="detail.php?id=<?= $filmSearch['id'] ?>">
                            <img class="poster" src="<?= $filmSearch['poster'] ?>" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-sm-8 mt-5">
                    <h3><?= $filmSearch['judul'] ?></h3>
                    <a href="watch.php?id=<?= $filmSearch['id'] ?>" class="btn btn-danger text-white p-3 px-5 my-5" style="border-radius:30px">Mulai Nonton</a><br>
                    Genre : <?= $filmSearch['genre'] ?><hr>
                    Rating : <?= $filmSearch['rating'] ?><hr>
                    Deskripsi : <?= $filmSearch['deskripsi'] ?><hr>
                    Pemain : <?= $filmSearch['pemain'] ?>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-sm-12 mb-4">
                    <h5>Similar to Movie "<?= $filmSearch['judul'] ?>"</h5>
                </div>
                <?php foreach ($anotherFilm as $key => $value): ?>
                    <div class="col-sm-2">
                        <div class="single-latest-news text-center">
                            <a href="detail.php?id=<?= $value['id'] ?>">
                                <img src="<?= $value['poster'] ?>" alt="">
                            </a>
                            <div class="news-text-box p-1 text-dark">
                                <p><a href="single-news.html" class="text-dark"><?= $value['judul'] ?></a></p>
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
                    <p>©Pidio Indonesia &copy; <?= date("Y") ?>.
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