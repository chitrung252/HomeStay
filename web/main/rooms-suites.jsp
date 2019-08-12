<%-- 
    Document   : rooms-suites
    Created on : Aug 10, 2019, 3:06:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Luxehotel Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />

        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">

        <!-- Animate.css -->
        <link rel="stylesheet" href="../main/css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="../main/css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="../main/css/bootstrap.css">

        <!-- Magnific Popup -->
        <link rel="stylesheet" href="../main/css/magnific-popup.css">

        <!-- Flexslider  -->
        <link rel="stylesheet" href="../main/css/flexslider.css">

        <!-- Owl Carousel -->
        <link rel="stylesheet" href="../main/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../main/css/owl.theme.default.min.css">

        <!-- Date Picker -->
        <link rel="stylesheet" href="../main/css/bootstrap-datepicker.css">
        <!-- Flaticons  -->
        <link rel="stylesheet" href="../main/fonts/flaticon/font/flaticon.css">

        <!-- Theme style  -->
        <link rel="stylesheet" href="../main/css/style.css">

        <!-- Modernizr JS -->
        <script src="../main/js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="main/js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>

        <div class="colorlib-loader"></div>

        <div id="page">
            <nav class="colorlib-nav" role="navigation">
                <div class="top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-4">
                                <p class="site">www.tuantuhomestay.com</p>
                            </div>
                            <div class="col-xs-8 text-right">
                                <p class="num">Call: +01-123-456</p>
                                <ul class="colorlib-social">
                                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                    <li><a href="#"><i class="icon-dribbble"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="top-menu">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-2">
                                <div id="colorlib-logo"><a href="index.jsp">HomeStay</a></div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li class="active"><a href="index.jsp">Trang chủ</a></li>
                                    <li class="has-dropdown">
                                        <a href="rooms-suites.jsp">Đặt phòng</a>
                                        <!--									<ul class="dropdown">
                                                                                                                        <li><a href="#">Web Design</a></li>
                                                                                                                        <li><a href="#">eCommerce</a></li>
                                                                                                                        <li><a href="#">Branding</a></li>
                                                                                                                        <li><a href="#">API</a></li>
                                                                                                                </ul>-->
                                    </li>
                                    <li><a href="dining-bar.jsp">Đồ ăn</a></li>
                                    <li><a href="../admin/login.jsp">Đăng nhập</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(../main/images/img_bg_5.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
				   				<div class="slider-text-inner slider-text-inner2 text-center">
				   					<h2>Choose our Best</h2>
				   					<h1>Rooms &amp; Suites</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>

		<div id="colorlib-rooms" class="colorlib-light-grey">
			<div class="container">
				<div class="row">
					<div class="col-md-4 room-wrap animate-box">
						<a href="../main/images/room-1.jpg" class="room image-popup-link" style="background-image: url(../main/images/room-1.jpg);"></a>
						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
							<h3><a href="rooms-suites.html">Suite</a></h3>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room">149</span>
								<span class="per">/ per night</span>
							</p>
							<ul>
								<li><i class="icon-check"></i> Only 10 rooms are available</li>
								<li><i class="icon-check"></i> Breakfast included</li>
								<li><i class="icon-check"></i> Price does not include VAT &amp; services fee</li>
							</ul>
							<p><a class="btn btn-primary">Book now!</a></p>
						</div>
					</div>
					<div class="col-md-4 room-wrap animate-box">
						<a href="../main/images/room-2.jpg" class="room image-popup-link" style="background-image: url(../main/images/room-2.jpg);"></a>
						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
							<h3><a href="rooms-suites.html">Double Room</a></h3>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room">199</span>
								<span class="per">/ per night</span>
							</p>
							<ul>
								<li><i class="icon-check"></i> Perfect for traveling couples</li>
								<li><i class="icon-check"></i> Breakfast included</li>
								<li><i class="icon-check"></i> Price does not include VAT &amp; services fee</li>
							</ul>
							<p><a class="btn btn-primary btn-book">Book now!</a></p>
						</div>
					</div>
					<div class="col-md-4 room-wrap animate-box">
						<a href="../main/images/room-3.jpg" class="room image-popup-link" style="background-image: url(../main/images/room-3.jpg);"></a>
						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
							<h3><a href="rooms-suites.html">Family Room</a></h3>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room">249</span>
								<span class="per">/ per night</span>
							</p>
							<ul>
								<li><i class="icon-check"></i> Two double beds</li>
								<li><i class="icon-check"></i> Babysitting facilities</li>
								<li><i class="icon-check"></i> 1 free bed available on request</li>
							</ul>
							<p><a class="btn btn-primary btn-book">Book now!</a></p>
						</div>
					</div>
					<div class="col-md-4 room-wrap animate-box">
						<a href="../main/images/room-4.jpg" class="room image-popup-link" style="background-image: url(../main/images/room-4.jpg);"></a>
						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
							<h3><a href="rooms-suites.html">Classic Double Room</a></h3>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room">179</span>
								<span class="per">/ per night</span>
							</p>
							<ul>
								<li><i class="icon-check"></i> Only 10 rooms are available</li>
								<li><i class="icon-check"></i> Breakfast included</li>
								<li><i class="icon-check"></i> Price does not include VAT &amp; services fee</li>
							</ul>
							<p><a class="btn btn-primary btn-book">Book now!</a></p>
						</div>
					</div>
					<div class="col-md-4 room-wrap animate-box">
						<a href="../main/images/room-5.jpg" class="room image-popup-link" style="background-image: url(../main/images/room-5.jpg);"></a>
						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
							<h3><a href="rooms-suites.html">Superior Double Room</a></h3>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room">270</span>
								<span class="per">/ per night</span>
							</p>
							<ul>
								<li><i class="icon-check"></i> Perfect for traveling couples</li>
								<li><i class="icon-check"></i> Breakfast included</li>
								<li><i class="icon-check"></i> Price does not include VAT &amp; services fee</li>
							</ul>
							<p><a class="btn btn-primary btn-book">Book now!</a></p>
						</div>
					</div>
					<div class="col-md-4 room-wrap animate-box">
						<a href="../main/images/room-6.jpg" class="room image-popup-link" style="background-image: url(../main/images/room-6.jpg);"></a>
						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
							<h3><a href="rooms-suites.html">Superior Family Room</a></h3>
							<p class="price">
								<span class="currency"><small>$</small></span>
								<span class="price-room">270</span>
								<span class="per">/ per night</span>
							</p>
							<ul>
								<li><i class="icon-check"></i> Perfect for traveling couples</li>
								<li><i class="icon-check"></i> Breakfast included</li>
								<li><i class="icon-check"></i> Price does not include VAT &amp; services fee</li>
							</ul>
							<p><a class="btn btn-primary btn-book">Book now!</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		
	
	</div>

		<!-- jQuery -->
	<script src="../main/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../main/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../main/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../main/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="../main/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="../main/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="../main/js/jquery.magnific-popup.min.js"></script>
	<script src="../main/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="../main/js/bootstrap-datepicker.js"></script>
	<!-- Main -->
	<script src="../main/js/main.js"></script>

	</body>
</html>

