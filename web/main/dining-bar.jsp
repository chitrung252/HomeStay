<%-- 
    Document   : dining-bar
    Created on : Aug 10, 2019, 3:09:02 PM
    Author     : Admin
--%>

<%@page import="e.admin.resomanager.utils.ChangeValue"%>
<%@page import="java.util.List"%>
<%@page import="tult.dtos.FoodDTO"%>
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
				   				<div class="slider-text-inner slider-text-inner2 text-center">
				   					<h2>Food be like</h2>
				   					<h1>Dining &amp; Bar</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
            <%
            List<FoodDTO> list = (List<FoodDTO>)request.getAttribute("LISTFOOD");
            if(list!=null){
                if(list.size() >0){
       
            %>
		<div id="colorlib-rooms" class="colorlib-light-grey">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
						<span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
						<h2>Main Menu</h2>
					</div>
				</div>
				<div class="row">
				<%
                        int count = 0;
                        for (FoodDTO dto : list) {                                            
                    %>
					<div class="col-md-4 room-wrap animate-box">
                                            <a href="main/<%= dto.getFoodImage()%>" class="room image-popup-link" style="background-image: url(main/<%= dto.getFoodImage()%>);"></a>
						<div class="desc text-center">
							<h3><a href="rooms-suites.jsp"><%= dto.getFoodName()%></a></h3>
							<p class="price">
								<span class="currency currency-menu">$</span>
                                                                <span class="price-room price-menu"><%=  ChangeValue.formatDecimalPrice(Float.parseFloat(dto.getFoodPrice()))%></span>
							</p>
							
						</div>
					</div>
                                        <%
                                        }
                                        %>
				</div>

                            
                       <%
                           }
else{
%>
    no record found
<%
                }
}
                       %>
  
				
				
			</div>
		</div>
		<div id="colorlib-subscribe" style="background-image: url(../main/images/img_bg_2.jpg);">
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


