<%-- 
    Document   : aminities
    Created on : Aug 10, 2019, 3:11:36 PM
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
	<link rel="stylesheet" href="main/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="main/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="main/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="main/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="main/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="main/css/owl.carousel.min.css">
	<link rel="stylesheet" href="main/css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="main/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="main/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="main/css/style.css">

	<!-- Modernizr JS -->
	<script src="main/js/modernizr-2.6.2.min.js"></script>
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
							<p class="site">www.yoursitehere.com</p>
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
							<div id="colorlib-logo"><a href="index.html">Luxehotel</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li class="has-dropdown">
									<a href="rooms-suites.html">Rooms</a>
									<ul class="dropdown">
										<li><a href="#">Web Design</a></li>
										<li><a href="#">eCommerce</a></li>
										<li><a href="#">Branding</a></li>
										<li><a href="#">API</a></li>
									</ul>
								</li>
								<li><a href="dining-bar.html">Dining &amp; Bar</a></li>
								<li class="active"><a href="aminities.html">Aminities</a></li>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/img_bg_5.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
				   				<div class="slider-text-inner slider-text-inner2 text-center">
				   					<h2>Accomodation</h2>
				   					<h1>Our Amenities</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
		<div id="colorlib-amenities">
			<div class="container">
				<div class="row">
					<div class="amenities-flex">
						<div class="amenities-img animate-box" style="background-image: url(images/amenities-1.jpg);"></div>
						<div class="desc animate-box">
							<h2><a href="#">Airport Shuttle &amp; Parking Lot</a></h2>
							<p class="price">
								<span class="free">Free</span>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi voluptates eius, nam laudantium, quasi laborum cumque asperiores totam est perferendis itaque id esse quidem recusandae sequi aut? Ratione, enim, consequatur!</p>
						</div>
						<div class="desc animate-box">
							<h2><a href="#">Room Service </a></h2>
							<p class="price">
								<span class="free">Free</span>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi voluptates eius, nam laudantium, quasi laborum cumque asperiores totam est perferendis itaque id esse quidem recusandae sequi aut? Ratione, enim, consequatur!</p>
						</div>
						<div class="amenities-img animate-box" style="background-image: url(images/room-5.jpg);"></div>
						<div class="amenities-img animate-box" style="background-image: url(images/amenities-2.jpg);"></div>
						<div class="desc animate-box">
							<h2><a href="#">SPA &amp; Beauty Centre</a></h2>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room">59</span>
								<span class="per">/ per person</span>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi voluptates eius, nam laudantium, quasi laborum cumque asperiores totam est perferendis itaque id esse quidem recusandae sequi aut? Ratione, enim, consequatur!</p>
						</div>
						<div class="desc animate-box">
							<h2><a href="#">Conference Hall for Business Events</a></h2>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room">359</span>
								<span class="per">/ per night / room</span>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi voluptates eius, nam laudantium, quasi laborum cumque asperiores totam est perferendis itaque id esse quidem recusandae sequi aut? Ratione, enim, consequatur!</p>
						</div>
						<div class="amenities-img animate-box" style="background-image: url(images/amenities-3.jpg);"></div>
					</div>
				</div>
			</div>
		</div>
	
		<div id="colorlib-subscribe" style="background-image: url(images/img_bg_2.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
						<h2>Sign Up for a Newsletter</h2>
						<p>Get A 50% Discounts in every Rooms, Book now!</p>
						<form class="form-inline qbstp-header-subscribe">
							<div class="row">
								<div class="col-md-12 col-md-offset-0">
									<div class="form-group">
										<input type="text" class="form-control" id="email" placeholder="Enter your email">
										<button type="submit" class="btn btn-primary">Subscribe</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<footer id="colorlib-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-3 colorlib-widget">
						<h4>Luxehotel</h4>
						<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
						<p>
							<ul class="colorlib-social-icons">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-linkedin"></i></a></li>
								<li><a href="#"><i class="icon-dribbble"></i></a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-3 colorlib-widget">
						<h4>Quick Links</h4>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#">Accomodation</a></li>
								<li><a href="#">Dining &amp; Bar</a></li>
								<li><a href="#">Restaurants</a></li>
								<li><a href="#">Beach &amp; Resorts</a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-3">
						<h4>Recents Blog Post</h4>
						<ul class="colorlib-footer-links">
							<li><a href="#">The Ultimate Packing List For Female Travelers</a></li>
							<li><a href="#">How These 5 People Found The Path to Their Dream Trip</a></li>
							<li><a href="#">A Definitive Guide to the Best Dining and Drinking Venues in the City</a></li>
						</ul>
					</div>

					<div class="col-md-3 col-md-push-1">
						<h4>Contact Information</h4>
						<ul class="colorlib-footer-links">
							<li>291 South 21th Street, <br> Suite 721 New York NY 10016</li>
							<li><a href="tel://1234567920">+ 1235 2355 98</a></li>
							<li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
							<li><a href="http://luxehotel.com">luxehotel.com</a></li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<p>
							<small class="block">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart3" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</small>
							<small class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
						</p>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="main/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="main/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="main/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="main/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="main/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="main/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="main/js/jquery.magnific-popup.min.js"></script>
	<script src="main/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="main/js/bootstrap-datepicker.js"></script>
	<!-- Main -->
	<script src="main/js/main.js"></script>

	</body>
</html>

