<!DOCTYPE html>
<html>
    <head>
        <title>HACKJAK 2017</title>
        <meta charset=utf-8>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Load Roboto font -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- Load css styles -->
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/bootstrap-responsive.css" />
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/style.css" />
        <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/pluton.css" />
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
        <link href="<?= base_url() ?>assets/css/bootstrap.min.css" rel="stylesheet">
        <style>

            html { height: 100% }
            body { height: 100%; margin: 0px; padding: 0px }
            #container { width: 100%; height: 100% }
            #map {
                height: 300px;
                width: 100%;
            }
            #nav{
                z-index: 100;
                position: absolute;
                margin-left: 130px;
            }
            .logo{
                width: 35px;
            }
            .firstHeading{
                display: inline;
            }
            #bodyContent a.btn{
                position: absolute;
                bottom: 0px;
                right: 0px;
            }
            #form{
                position: absolute;
                z-index: 300;
                right: 20px;
                top: 20px;
            }
            #modal{
                z-index: 600;
            }
        </style>
    </head>
    <body>
        <div id="container">
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
                                <li class="active"><a href="#modal">LOGIN</a></li>
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
            <div class="row">
                <div class="col-lg-12">
                    <form class="form-control">
                        <h2>Tambahkan Ruang Publik Ramah Difabel</h2>
                        <div class="row">
                            <div class="col-lg-1">
                                <label>Kategori</label>
                            </div>
                            <select class="form-control col-lg-2">
                                <option>Toilet</option>
                                <option>Halte</option>
                                <option>Stasiun</option>
                            </select>
                        </div>
                        <br>
                        
                        <div class="row">
                            <div class="col-lg-1">
                                <label>Keterangan</label>
                            </div>
                            <div class="col-lg-2">
                                <textarea placeholder="Keterangan Lokasi"></textarea>
                            </div>
                        </div>
                        <br>
                        <div id="map"></div>
                        <br>
                        <input type="submit" value="Submit" class="btn btn-primary form-control" >
                    </form>
                </div>
            </div>
        </div>
        <script>
            var markers = [];
            var map;

            function initMap() {
                var jakarta = {lat: -6.175110, lng: 106.865039};
                map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 12,
                    center: jakarta
                });
                var myloc = new google.maps.Marker({
                    clickable: false,
                    icon: new google.maps.MarkerImage('//maps.gstatic.com/mapfiles/mobile/mobileimgs2.png',
                            new google.maps.Size(22, 22),
                            new google.maps.Point(0, 18),
                            new google.maps.Point(11, 11)),
                    shadow: null,
                    zIndex: 999,
                    map: map
                });

                var marker = new google.maps.Marker({
                    map: map,
                    draggable: true,
                    title: "Drag me!"
                });
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function (pos) {
                        var me = new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude);
                        myloc.setPosition(me);
                        marker.setPosition(me);
                        map.setZoom(13);
                        map.setCenter(me);
                    }, function (error) {
                        // ...
                    });
                }
            }
        </script>
        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDgjv6izzqegCSWLWHw6DYZZEpzG_bST8E&callback=initMap">
        </script>
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
        <script src="<?= base_url() ?>assets/js/bootstrap.min.js"></script>
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
        <script src="<?= base_url() ?>assets/js/bootstrap.min.js"></script>

    </body>
</html>