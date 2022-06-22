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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        $(document).ready(function(){
            $(".wish-icon i").click(function(){
                $(this).toggleClass("fa-heart fa-heart-o");
            });
        });	
    </script>

</head>
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
            </div>
            <div class="row">
                <div class="col-sm-10">
                    <div class="single-latest-news text-center bg-dark shadow-none" style="width: 100%;height: 500px;" >
                    </div>
                    <h3><?= $filmSearch['judul'] ?></h3><hr>
                    <?= $filmSearch['deskripsi'] ?><hr>
                    <span style="font-weight:bold">Genre :</span> <?= $filmSearch['genre'] ?><hr>
                    <span style="font-weight:bold">Rating :</span> <?= $filmSearch['rating'] ?><hr>
                    <h6>Komentar</h6>
                    <div class="card">
                        <div class="mt-3 d-flex flex-row align-items-center p-3 form-color"> <img src="https://www.w3schools.com/howto/img_avatar2.png" width="50" class="rounded-circle mr-2"> <input type="text" class="form-control" placeholder="Masukkan komentar anda..."> </div>
                        <div class="mt-2">
                            <div class="d-flex flex-row p-3"> <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar mr-3">
                                <div class="w-100">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex flex-row align-items-center"> <span class="user mr-2">Shintia Purnama</span> </div> <small>12h ago</small>
                                    </div>
                                    <p class="text-justify comment-text mb-0">Lucu bgt hahahahahah</p>
                                    <div class="d-flex flex-row user-feed"> <span class="suka"><i class="fa fa-heart-o mr-2"></i>Suka</span> <span class="ml-3"><i class="fa fa-comments-o mr-2"></i>Balas</span> </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row p-3"> <img src="https://www.w3schools.com/w3images/avatar6.png" alt="Avatar" class="avatar mr-3">
                                <div class="w-100">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex flex-row align-items-center"> <span class="user mr-2">Lesti Kejora</span>  </div> <small>2h ago</small>
                                    </div>
                                    <p class="text-justify comment-text mb-0">Sangat menghibur ygy.</p>
                                    <div class="d-flex flex-row user-feed"> <span class="suka"><i class="fa fa-heart-o mr-2"></i>Suka</span> <span class="ml-3"><i class="fa fa-comments-o mr-2"></i>Balas</span> </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row p-3"> <img src="https://www.w3schools.com/howto/img_avatar.png" alt="Avatar" class="avatar mr-3">
                                <div class="w-100">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex flex-row align-items-center"> <span class="user mr-2">Arifin</span>  </div> <small>12h ago</small>
                                    </div>
                                    <p class="text-justify comment-text mb-0"> 8/10! very recommended!!!!</p>
                                    <div class="d-flex flex-row user-feed"> <span class="suka"><i class="fa fa-heart-o mr-2"></i>Suka</span> <span class="ml-3"><i class="fa fa-comments-o mr-2"></i>Balas</span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-2 row">
                    <div class="col-sm-12 mb-4">
                        <h5>Rekomendasi</h5>
                    </div>
                    <?php foreach ($anotherFilm as $key => $value): ?>
                        <div class="col-sm-12">
                            <div class="single-latest-news text-center">
                                <a href="detail.php?id=<?= $value['id'] ?>">
                                    <img src="<?= $value['poster'] ?>" alt="">
                                </a>
                                <p><a href="detail.php?id=<?= $value['id'] ?>" class="text-dark"><?= $value['judul'] ?></a></p>
                            </div>    
                        </div>
                    <?php endforeach ?>
                </div>
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
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.meanmenu.min.js"></script>
    <script src="assets/js/sticker.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</body>
</html>