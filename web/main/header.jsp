<%-- 
    Document   : header
    Created on : Aug 10, 2019, 4:05:52 PM
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
                                <div id="colorlib-logo"><a href="HomeController">HomeStay</a></div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li class="active"><a href="HomeController">Trang chủ</a></li>
                                    <li class="has-dropdown">
                                        <a href="GetListRoomController">Đặt phòng</a>
                                        <!--									<ul class="dropdown">
                                                                                                                        <li><a href="#">Web Design</a></li>
                                                                                                                        <li><a href="#">eCommerce</a></li>
                                                                                                                        <li><a href="#">Branding</a></li>
                                                                                                                        <li><a href="#">API</a></li>
                                                                                                                </ul>-->
                                    </li>
                                    <li><a href="GetListFoodController">Đồ ăn</a></li>
                                    <li><a href="view.jsp">Giỏ hàng</a></li>
                                    <li><a href="admin/login.jsp">Đăng nhập</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>