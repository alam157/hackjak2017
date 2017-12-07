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
        <title>Pluton Theme by BraphBerry.com</title>
        <!-- Load Roboto font -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- Load css styles -->
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/bootstrap-responsive.css" />
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/style.css" />
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/pluton.css" />
        <link type="text/css" rel="stylesheet" href="<?=base_url()?>assets/css/stylelogin.css" />
        <!--[if IE 7]>
            <link rel="stylesheet" type="text/css" href="css/pluton-ie7.css" />
        <![endif]-->
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/jquery.cslider.css" />
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/jquery.bxslider.css" />
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/animate.css" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?=base_url()?>assets/images/ico/apple-touch-icon-144.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?=base_url()?>assets/images/ico/apple-touch-icon-114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?=base_url()?>assets/images/apple-touch-icon-72.png">
        <link rel="apple-touch-icon-precomposed" href="<?=base_url()?>assets/images/ico/apple-touch-icon-57.png">
        <link rel="shortcut icon" href="<?=base_url()?>assets/images/ico/favicon.ico">
        
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
    </head>
    
    <body id="bgdetail">
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <a href="<?=base_url()?>" class="brand">
                        <img src="<?=base_url()?>assets/images/logo2.png" width="180" height="50" alt="Logo" />
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
        <div class="section bgdetail " id="portfolio">
            <div class="triangle"></div>
            <div class="container">
                <div class=" title">
                    <h1>DETAIL RS DAN PUSKESMAS</h1>
                    <p>Merupakan Detail dari puskesmas</p>
                </div>
                <ul class="nav nav-pills">
                        <div class="row-fluid">
                            <h4> Nama : <?=$data->nama?> </h4>
                            <h4> Alamat : <?=$data->alamat?> </h4>
                            <h4> Telepon : <?=$data->telp?> </h4>
                            <h4> Fax : <?=$data->fax?> </h4>
                            <h4> Email : <?=$data->email?> </h4>
                            <h4> Websiite : <?=$data->website?> </h4>
                        </div>
                </ul>
                <!-- Start details for portfolio project 1 -->
                
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
						<div class="one_half last"><a href="#" class="btn btn_red">Login</a></div>
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
        <div class="scrollup">
            <a href="#">
                <i class="icon-up-open"></i>
            </a>
        </div>
        <!-- ScrollUp button end -->
        <!-- Include javascript -->
        <script src="<?=base_url()?>assets/js/jquery.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.mixitup.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/modernizr.custom.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.bxslider.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.cslider.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.placeholder.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.inview.js"></script>
        <!-- Load google maps api and call initializeMap function defined in app.js -->
        <script async="" defer="" type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initializeMap"></script>
        <!-- css3-mediaqueries.js for IE8 or older -->
        <!--[if lt IE 9]>
            <script src="js/respond.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="<?=base_url()?>assets/js/app.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.leanModal.min.js"></script>
       <script type="text/javascript">
	$("#modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });

	$(function(){
		// Calling Login Form
		$("#login_form").click(function(){
			$(".social_login").hide();
			$(".user_login").show();
			return false;
		});

		// Calling Register Form
		$("#register_form").click(function(){
			$(".social_login").hide();
			$(".user_register").show();
			$(".header_title").text('Register');
			return false;
		});

		// Going back to Social Forms
		$(".back_btn").click(function(){
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