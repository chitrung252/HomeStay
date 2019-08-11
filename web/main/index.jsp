<%-- 
    Document   : index
    Created on : Aug 10, 2019, 2:55:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
            <aside id="colorlib-hero">
                <div class="flexslider">
                    <ul class="slides">
                        <li style="background-image: url(main/images/img_bg_5.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
                                        <div class="slider-text-inner text-center">
                                            <h2>Chào mừng đến với homestay của chúng tôi</h2>
                                            <h1>A TuanTu HomeStay</h1>
                                            <p><a class="btn btn-primary btn-demo" href="#"></i>Chi tiết</a> <a class="btn btn-primary btn-learn">Nhiều hơn</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(main/images/img_bg_1.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
                                        <div class="slider-text-inner text-center">
                                            <h2>Khám phá  &amp; Tận hưởng</h2>
                                            <h1>Mọi thứ bạn cần đều có ở homestay của chúng tôi</h1>
                                            <p><a class="btn btn-primary btn-demo" href="#"></i> Chi tiết </a> <a class="btn btn-primary btn-learn">Nhiều hơn</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(main/images/img_bg_3.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluids">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
                                        <div class="slider-text-inner text-center">
                                            <h2>Khi bạn đến</h2>
                                            <h1>Chúng tôi sẽ làm thỏa mãn cho bạn</h1>
                                            <p><a class="btn btn-primary btn-demo" href="#"></i> Chi tiết</a> <a class="btn btn-primary btn-learn">Nhiều hơn</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(main/images/img_bg_4.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
                                        <div class="slider-text-inner text-center">
                                            <h2>Đến &amp; tận hưởng những phút giây khó quên</h2>
                                            <h1>Trong homestay của chúng tôi</h1>
                                            <p><a class="btn btn-primary btn-demo" href="#"></i> Chi tiết</a> <a class="btn btn-primary btn-learn">Nhiều hơn</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>	   	
                    </ul>
                </div>
            </aside>
            <div id="colorlib-reservation">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 search-wrap">
                            <form method="post" class="colorlib-form">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="date">Check-in:</label>
                                            <div class="form-field">
                                                <i class="icon icon-calendar2"></i>
                                                <input type="text" id="date" class="form-control date" placeholder="Ngày check-in">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="date">Check-out:</label>
                                            <div class="form-field">
                                                <i class="icon icon-calendar2"></i>
                                                <input type="text" id="date" class="form-control date" placeholder="Ngày Check-out">
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="children">Số lượng</label>
                                            <div class="form-field">
                                                <i class="icon icon-arrow-down3"></i>
                                                <select name="people" id="people" class="form-control">
                                                    <option value="#">1</option>
                                                    <option value="#">2</option>
                                                    <option value="#">3</option>
                                                    <option value="#">4</option>
                                                    <option value="#">5+</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <button type="submit" name="submit" id="submit" value="Search" class="btn btn-primary btn-block">Tìm kiếm</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div id="colorlib-services">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 animate-box text-center">
                            <div class="services">
                                <span class="icon">
                                    <i class="flaticon-reception"></i>
                                </span>
                                <h3>24/7 Front Desk</h3>
                                <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                        <div class="col-md-3 animate-box text-center">
                            <div class="services">
                                <span class="icon">
                                    <i class="flaticon-herbs"></i>
                                </span>
                                <h3>Spa Suites</h3>
                                <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                        <div class="col-md-3 animate-box text-center">
                            <div class="services">
                                <span class="icon">
                                    <i class="flaticon-car"></i>
                                </span>
                                <h3>Transfer Services</h3>
                                <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                        <div class="col-md-3 animate-box text-center">
                            <div class="services">
                                <span class="icon">
                                    <i class="flaticon-cheers"></i>
                                </span>
                                <h3>Restaurant &amp; Bar</h3>
                                <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="colorlib-rooms" class="colorlib-light-grey">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
                            <span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
                            <h2>Đặt &amp; Phòng</h2>
                            <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vietnamese, there live the blind texts.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 animate-box">
                            <div class="owl-carousel owl-carousel2">
                                <div class="item">
                                    <a href="main/images/room-1.jpg" class="room image-popup-link" style="background-image: url(main/images/room-1.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="rooms-suites.html">Suite</a></h3>
                                        <p class="price">
                                            <span class="currency">$</span>
                                            <span class="price-room">99</span>
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
                                <div class="item">
                                    <a href="main/images/room-2.jpg" class="room image-popup-link" style="background-image: url(main/images/room-2.jpg);"></a>
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
                                <div class="item">
                                    <a href="main/images/room-3.jpg" class="room image-popup-link" style="background-image: url(main/images/room-3.jpg);"></a>
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
                                <div class="item">
                                    <a href="main/images/room-4.jpg" class="room image-popup-link" style="background-image: url(main/images/room-4.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="rooms-suites.html">Classic Double Room</a></h3>
                                        <p class="price">
                                            <span class="currency">$</span>
                                            <span class="price-room">150</span>
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
                                <div class="item">
                                    <a href="main/images/room-5.jpg" class="room image-popup-link" style="background-image: url(main/images/room-5.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="rooms-suites.html">Superior Double Room</a></h3>
                                        <p class="price">
                                            <span class="currency">$</span>
                                            <span class="price-room">200</span>
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
                                <div class="item">
                                    <a href="main/images/room-6.jpg" class="room image-popup-link" style="background-image: url(main/images/room-6.jpg);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="rooms-suites.html">Superior Family Room</a></h3>
                                        <p class="price">
                                            <span class="currency"><small>$</small></span>
                                            <span class="price-room">299</span>
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
                        <div class="col-md-12 text-center animate-box">
                            <a href="#">View all rooms <i class="icon-arrow-right3"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="colorlib-dining-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
                            <span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
                            <h2>Đồ &amp; ăn</h2>
                            <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="diningbar-flex">
                            <div class="half animate-box">
                                <ul class="nav nav-tabs text-center" role="tablist">
                                    <li role="presentation" class="active"><a href="#mains" aria-controls="mains" role="tab" data-toggle="tab">Mains</a></li>
                                    <li role="presentation"><a href="#desserts" aria-controls="desserts" role="tab" data-toggle="tab">Desserts</a></li>
                                    <li role="presentation"><a href="#drinks" aria-controls="drinks" role="tab" data-toggle="tab">Drinks</a></li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="mains">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <ul class="menu-dish">
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-1.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$25.99</span>
                                                            <h3>Grilled Pork</h3>
                                                            <p class="cat">Meat / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-2.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$30.99</span>
                                                            <h3>Tuna Roast Source</h3>
                                                            <p class="cat">Tuna / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-3.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$40.00</span>
                                                            <h3>Roast Beef (4 sticks)</h3>
                                                            <p class="cat">Crab / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-4.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$20.50</span>
                                                            <h3>Salted Fried Chicken</h3>
                                                            <p class="cat">Crab / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div role="tabpanel" class="tab-pane" id="desserts">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <ul class="menu-dish">
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-1.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$39.90</span>
                                                            <h3>Fried Potatoes with Garlic</h3>
                                                            <p class="cat">Viggies / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-3.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$20.99</span>
                                                            <h3>Tuna Roast Source</h3>
                                                            <p class="cat">Tuna / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-3.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$50.00</span>
                                                            <h3>Roast Beef (4 sticks)</h3>
                                                            <p class="cat">Crab / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-4.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$29.00</span>
                                                            <h3>Salted Fried Chicken</h3>
                                                            <p class="cat">Crab / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div role="tabpanel" class="tab-pane" id="drinks">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <ul class="menu-dish">
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-8.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$25.00</span>
                                                            <h3>Fried Potatoes with Garlic</h3>
                                                            <p class="cat">Viggies / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-9.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$20.50</span>
                                                            <h3>Tuna Roast Source</h3>
                                                            <p class="cat">Tuna / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-3.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$30.00</span>
                                                            <h3>Roast Beef (4 sticks)</h3>
                                                            <p class="cat">Crab / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <figure class="image"><img src="main/images/menu-4.jpg" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$29.99</span>
                                                            <h3>Salted Fried Chicken</h3>
                                                            <p class="cat">Crab / Potatoes / Rice</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end half -->
                            <div class="half diningbar-img" style="background-image: url(main/images/cover_img_1.jpg);"></div><!-- end half -->
                        </div>
                    </div>
                </div>
            </div>
<%@include  file="footer.jsp" %>      
