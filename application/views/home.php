<!DOCTYPE html>
<!--
 * A Design by GraphBerry
 * Author: GraphBerry
 * Author URL: http://graphberry.com
 * License: http://graphberry.com/pages/license
-->
<html lang="en">

    <head>
        <meta charset=utf-8>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>#HACKJAK2017</title>
        <!-- Load Roboto font -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- Load css styles -->
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/bootstrap-responsive.css" />
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/style.css" />
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/pluton.css" />
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>assets/css/graph.css" />
        <link type="text/css" rel="stylesheet" href="<?= base_url() ?>assets/css/stylelogin.css" />

        <!--[if IE 7]>
            <link rel="stylesheet" type="text/css" href="css/pluton-ie7.css" />
        <![endif]-->
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/jquery.cslider.css" />
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/jquery.bxslider.css" />
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/animate.css" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?= base_url() ?>assets/images/ico/apple-touch-icon-144.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?= base_url() ?>assets/images/ico/apple-touch-icon-114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?= base_url() ?>assets/images/apple-touch-icon-72.png">
        <link rel="apple-touch-icon-precomposed" href="<?= base_url() ?>assets/images/ico/apple-touch-icon-57.png">
        <link rel="shortcut icon" href="<?= base_url() ?>assets/images/ico/favicon.ico">

        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
        <style>
            @media screen and (max-device-width: 480px){
                #home{
                    display: none;
                }
            }
        </style>
    </head>

    <body>
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <a href="<?= base_url() ?>" class="brand">
                        <img src="<?= base_url() ?>assets/images/logo.png" width="180" height="50" alt="Logo" />
                        <!-- This is website logo -->
                    </a>
                    <!-- Navigation button, visible on small resolution -->
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <i class="icon-menu"></i>
                    </button>
                    <!-- Main navigation -->
                    <div class="nav-collapse collapse pull-right">
                        <ul class="nav" id="top-navigation">

                            <!--<li class="active"><a href="login.php">LOGIN</a></li>-->
                            <li class="active"><a id="modal_trigger" href="#modal">LOGIN</a></li>
                            <!--<li class="active"><a href="bgdetail.html">DETAIL</a></li>-->
                            <!--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>-->

                            <!--                            <li><a href="#service">Services</a></li>
                                                        <li><a href="#portfolio">Portfolio</a></li>
                                                        <li><a href="#about">About</a></li>
                                                        <li><a href="#clients">Clients</a></li>
                                                        <li><a href="#price">Price</a></li>
                                                        <li><a href="#contact">Contact</a></li>-->
                        </ul>
                    </div>
                    <!-- End main navigation -->
                </div>
            </div>
        </div>
        <div class="container">
            <div id="modal" class="popupContainer" style="display:none;">
                <header class="popupHeader">
                    <span class="header_title">Login</span>
                    <span class="modal_close"><i class="fa fa-times"></i></span>
                </header>

                <section class="popupBody">
                    <!-- Social Login -->
                    <div class="social_login">
                        <div class="">
                            <a href="#" class="social_box fb">
                                <span class="icon"><i class="fa fa-facebook"></i></span>
                                <span class="icon_title">Connect with Facebook</span>

                            </a>

                            <a href="#" class="social_box google">
                                <span class="icon"><i class="fa fa-google-plus"></i></span>
                                <span class="icon_title">Connect with Google</span>
                            </a>
                        </div>

                        <div class="centeredText">
                            <span>Or use your Email address</span>
                        </div>

                        <div class="action_btns">
                            <div class="one_half"><a href="#" id="login_form" class="btn">Login</a></div>
                            <div class="one_half last"><a href="#" id="register_form" class="btn">Sign up</a></div>
                        </div>
                    </div>

                    <!-- Username & Password Login form -->
                    <div class="user_login">
                        <form>
                            <label>Email / Username</label>
                            <input type="text" />
                            <br />

                            <label>Password</label>
                            <input type="password" />
                            <br />

                            <div class="checkbox">
                                <input id="remember" type="checkbox" />
                                <label for="remember">Remember me on this computer</label>
                            </div>

                            <div class="action_btns">
                                <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                                <div class="one_half last"><a href="<?= base_url()?>index.php/admin" class="btn btn_red">Login</a></div>
                            </div>
                        </form>

                        <a href="#" class="forgot_password">Forgot password?</a>
                    </div>

                    <!-- Register Form -->
                    <div class="user_register">
                        <form>
                            <label>Full Name</label>
                            <input type="text" />
                            <br />

                            <label>Email Address</label>
                            <input type="email" />
                            <br />

                            <label>Password</label>
                            <input type="password" />
                            <br />

                            <div class="checkbox">
                                <input id="send_updates" type="checkbox" />
                                <label for="send_updates">Send me occasional email updates</label>
                            </div>

                            <div class="action_btns">
                                <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                                <div class="one_half last"><a href="#" class="btn btn_red">Register</a></div>
                            </div>
                        </form>
                    </div>
                </section>
            </div>
        </div>
        <div class="container">
            <div id="graph" class="popupContainer" style="display:none;">
                <header class="popupHeader">
                    <span class="header_title">GRAPH</span>
                    <span class="modal_close"><i class="fa fa-times"></i></span>
                </header>

                <section class="popupBody">
                    <div>
                        <form>
                            <label>Full Name</label>

                            <ul class="chart">
                                <li>
                                    <span style="height:5%" title="ActionScript"></span>
                                </li>
                                <li>
                                    <span style="height:70%" title="JavaScript"></span>
                                </li>
                                <li>
                                    <span style="height:50%" title="CoffeScript"></span>
                                </li>
                                <li>
                                    <span style="height:15%" title="HTML"></span>
                                </li>
                            </ul>    

                        </form>
                    </div>
                </section>
            </div>
        </div>

        <!-- Start home section -->
        <div id="home">
            <!-- Start cSlider -->
            <div id="da-slider" class="da-slider">
                <div class="triangle"></div>
                <!-- mask elemet use for masking background image -->
                <div class="mask"></div>
                <!-- All slides centred in container element -->
                <div class="container">
                    <!-- Start first slide -->
                    <div class="da-slide">
                        <!--<div class="da-img"> <img src="<?= base_url() ?>assets/images/16.jpg" alt="image01" width="320"></div>-->
                        <h2 class="fittext2">AYO KE POSYANDU?????</h2>
                        <h4>Punya Balita ditimbang di posyandu ya??</h4>
                        <p>Anak sehat, tambah umur, tambah berat, tambah pandai. Dapatkan pelayanan Gizi dan Imunisasi Lengkap Di Posyandu .....</p>
                        <a href="#" class="da-link button">Baca Selengkapnya</a>
                        <div class="da-img">
                            <img src="<?= base_url() ?>assets/images/18.png" alt="image01" width="320">
                        </div>
                    </div>
                    <!-- End first slide -->
                    <!-- Start second slide -->
                    <div class="da-slide">
                        <h2>VAKSIN SERVIKS GRATIS !!!!</h2>
                        <h4>Sudahkah anda melakukan vaksin ????</h4>
                        <p>Segera Cegah Kanker Serviks dengan Vaksin, Vaksin Serviks Gratis hanya ada di Puskesmas.....</p>
                        <a href="#" class="da-link button">Baca Selengkapnya</a>
                        <div class="da-img">
                            <img src="<?= base_url() ?>assets/images/serviks.jpg" width="320" alt="image02">
                        </div>
                    </div>
                    <!-- End second slide -->
                    <!-- Start third slide -->
                    <div class="da-slide">
                        <h2>ADA LAYANAN  KB GRATIS PADA HARI NASIONAL</h2>
                        <h4>Sebelum anda Terlambat, rencanakan program KB anda !!</h4>
                        <p>Yang hendak mendapatkan pelayanan KB secara Gratis, Baik Konsultasi maupun lainya hanya ada di wilayah ini saja ....</p>
                        <a href="#" class="da-link button">Baca Selengkapnya</a>
                        <div class="da-img">
                            <img src="<?= base_url() ?>assets/images/kb.png" width="320" alt="image03">
                        </div>
                    </div>
                    <!-- Start third slide -->
                    <!-- Start cSlide navigation arrows -->
                    <div class="da-arrows">
                        <span class="da-arrows-prev"></span>
                        <span class="da-arrows-next"></span>
                    </div>
                    <!-- End cSlide navigation arrows -->
                </div>
            </div>
        </div>
        <!-- End home section -->
        <!-- Service section start -->
        <div class="section primary-section" id="service">
            <div class="container">
                <!-- Start title section -->
                <div class="title">
                    <h1>PELAYANAN</h1>
                    <!-- Section's title goes here -->
                    <p>Terdapat 3 button pelayanan pada Icon Gambar di bawah ini, sesuaikan dengan kebutuhan anda</p>
                    <!--Simple description for section goes here. -->
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <a href="<?= base_url() ?>index.php/home/maps_terdekat">  <img class="img-circle" src="<?= base_url() ?>assets/images/coba1.png" alt="service 1" ></a>
                            </div>
                            <h3>List RS & Puskesmas</h3>
                            <p>Dafar Rumah Sakit dan Puskesmas dapat dilihat di menu ini, lokasi, kamar tersedia,dll</p>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <a href="<?= base_url() ?>index.php/home/ambulance"> <img class="img-circle" src="<?= base_url() ?>assets/images/ambulan.png" alt="service 2" /></a>
                            </div>
                            <h3>Ambulance</h3>
                            <p>Anda Membutuhkan ambulance yang dekat dengan anda? segera hubungi</p>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <div class="active">
                                    <a id="graph_trigger" href="<?= base_url() ?>index.php/home/difabel">
                                        <img class="img-circle" src="<?= base_url() ?>assets/images/dfbl.png" alt="service 3"></a>
                                </div>
                                <!--<div class="active"><a id="modal_trigger" href="#modal"></a></div>-->
                            </div>
                            <h3>Ramah Difabel</h3>
                            <p>Anda ingin tempat yang nyaman buat anda sendiri ? Segera temukan</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service section end -->
        <!-- Portfolio section start -->
        <div class="section secondary-section " id="portfolio">
            <div class="triangle"></div>
            <div class="container">
                <div class=" title">
                    <h1>Kritik & Saran</h1>
                    <p>Isikan saran dengan baik dan benar, guna untuk meningkatkan web ini</p>
                </div>
                <ul class="nav nav-pills">
                    <div class="container">
                        <div class="row-fluid">
                            <div class="span5 contact-form centered">
                                <h3>Kritik & Saran</h3>
                                <div id="successSend" class="alert alert-success invisible">
                                    <strong>Well done!</strong>Pesan Berhasil Dikirim.</div>
                                <div id="errorSend" class="alert alert-error invisible">There was an error.</div>
                                <form id="contact-form" action="php/mail.php">
                                    <div class="control-group">
                                        <div class="controls">
                                            <input class="span12" type="text" id="name" name="name" placeholder="* Nama ..." />
                                            <div class="error left-align" id="err-name">Please enter name.</div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <input class="span12" type="email" name="email" id="email" placeholder="* Email..." />
                                            <div class="error left-align" id="err-email">Please enter valid email adress.</div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <textarea class="span12" name="comment" id="comment" placeholder="* Komentas..."></textarea>
                                            <div class="error left-align" id="err-comment">Please enter your comment.</div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <button id="send-mail" class="message-btn">Kirim Pesan</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </ul>
                <!-- Start details for portfolio project 1 -->

            </div>
        </div>
        <!-- Portfolio section end -->
        <!-- About us section start -->
        <div class="section primary-section" id="about">
            <div class="triangle"></div>
            <div class="container">
                <div class="title">
                    <h1>Hubungi Kami</h1>
                    <p>Jika ada masalah pada Web ini, segera laporkan pada kami di No. 031 - X1XXXX2</p>
                </div>
                <div class="row-fluid centered">
                    <ul class="social">
                        <li>
                            <a href="">
                                <span class="icon-facebook-circled"></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span class="icon-twitter-circled"></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <span class="icon-gplus-circled"></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="footer">
            <p>&copy; 2017 Created by <a style="color:#FECE1A">AWESOME TEAM</a></p>
            <p> <a style="color:#FECE1A">#HACKJAK2017</a></p>
        </div>
        <!-- Footer section end -->
        <!-- ScrollUp button start -->
        <div class="scrollup">
            <a href="#">
                <i class="icon-up-open"></i>
            </a>
        </div>
        <!-- ScrollUp button end -->
        <!-- Include javascript -->
        <script src="<?= base_url() ?>assets/js/jquery.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.mixitup.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/modernizr.custom.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.bxslider.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.cslider.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.placeholder.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.inview.js"></script>
        <!-- Load google maps api and call initializeMap function defined in app.js -->
        <!-- css3-mediaqueries.js for IE8 or older -->
        <!--[if lt IE 9]>
            <script src="js/respond.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="<?= base_url() ?>assets/js/app.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.leanModal.min.js"></script>
        <script type="text/javascript">
            $("#modal_trigger").leanModal({top: 200, overlay: 0.6, closeButton: ".modal_close"});
            $("#graph_trigger").leanModal({top: 200, overlay: 0.6, closeButton: ".modal_close"});

            $(function () {
                // Calling Login Form
                $("#login_form").click(function () {
                    $(".social_login").hide();
                    $(".user_login").show();
                    return false;
                });

                // Calling Register Form
                $("#register_form").click(function () {
                    $(".social_login").hide();
                    $(".user_register").show();
                    $(".header_title").text('Register');
                    return false;
                });

                // Going back to Social Forms
                $(".back_btn").click(function () {
                    $(".user_login").hide();
                    $(".user_register").hide();
                    $(".social_login").show();
                    $(".header_title").text('Login');
                    return false;
                });

            })
        </script>
    </body>
</html>