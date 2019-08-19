<%-- 
    Document   : view
    Created on : Jan 25, 2018, 4:09:53 PM
    Author     : MyPc
--%>

<%@page import="e.admin.resomanager.utils.ChangeValue"%>
<%@page import="tult.dtos.RoomDTO"%>
<%@page import="tult.dtos.CartRoomObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="main/header.jsp"%>
<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(main/images/img_bg_5.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container-fluid">
			   			<div class="row">
				   			<div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
				   				<div class="slider-text-inner slider-text-inner2 text-center">
                                                                    <h2>Điền thông tin cơ bản</h2>
				   					<h1>Thông tin nhận phòng</h1>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>
           
		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
                                    <%
            CartRoomObj cart = (CartRoomObj)session.getAttribute("cart");
                if(cart != null){
            %>
             <form action="MainController" method="POST">  
					<div class="col-md-10 col-md-offset-1 animate-box">
                                         
						<h3>Giỏ hàng</h3>
                                                  <h3>Total : <%= ChangeValue.formatDecimalPrice(cart.getTotal()) %></h3>
                                                  <div class="row contact-info-wrap">
                                                  <div class="col-md-3">
                                                      <button class ="btn btn-danger btn-block" name="action" value="Home">Continue Shopping</button>
                                                  </div>
                                                  <div class="col-md-3">
                                                      <button class ="btn btn-warning btn-block" name="action" value="Remove">Xóa đơn hàng</button>                                                
                        </div>   
                                                  </div>                                                                                               
                                                <% 
                     int count = 0;
                    for (RoomDTO dto : cart.getCart().values()){
                        
                        count++;   
                            %>
                       
						<div class="row contact-info-wrap">
							<div class="col-md-2">
								<p><span><i class="icon-star"></i></span><%= dto.getRoomId()%></p>
							</div>
							<div class="col-md-2">
								<p><span><i class="icon-home"></i></span><%= dto.getRoomName() %></p>
							</div>
							<div class="col-md-2">
								<p><span><i class="icon-price-tag"></i></span><%= ChangeValue.formatDecimalPrice(dto.getPrice()) %></p>
							</div>
                                                        <div class="col-md-2">
								<p><span><i class="icon-note"></i></span><%= dto.getQuanlity() %></p>
							</div>
							<div class="col-md-2">
                                                            <input type="checkbox" name="chkRemove"value="<%= dto.getRoomId() %>"/>
							</div>
						</div>
                                                <%
                                                }
                                                %>
                         
					</div>
             </form>
            <%
                }
            %>
                       
            				<div class="col-md-10 col-md-offset-1 animate-box">
						<h3>Điền thông tin cơ bản</h3>
                                                <form action="AddCustomerController" method="POST">
							<div class="row form-group">
								<div class="col-md-6">
									<label for="fname">FullName</label>
                                                                        <input type="text"   name="txtFullname" class="form-control" placeholder="Your firstname"/>
								</div>
								<div class="col-md-6">
                                                                    <label for="lname">CMND</label> 
                                                                    <input type="text"  name="txtCmnd" class="form-control" placeholder="Your lastname"/>
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="phone">Phone</label>
                                                                        <input type="text"  name="txtPhone" class="form-control" placeholder="Your email address"/>
							</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label for="email">Email</label>
                                                                        <input type="text"  name="txtEmail" class="form-control" placeholder="Your subject of this message">
								</div>
							</div>
                                               
                                                         
							
							<div class="form-group text-center">                                                            
                                                            <input type="submit"  value="Book" class="btn btn-primary"/>
							</div>
						</form>
           
	
					</div>
				</div>
			</div>
		</div>
            
<%@include file="main/footer.jsp" %>		
	
		
		