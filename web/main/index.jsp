<%-- 
    Document   : index
    Created on : Aug 10, 2019, 2:55:36 PM
    Author     : Admin
--%>

<%@page import="e.admin.resomanager.utils.ChangeValue"%>
<%@page import="tult.daos.ServiceDAO"%>
<%@page import="tult.dtos.ServiceRoomDTO"%>
<%@page import="tult.dtos.FoodDTO"%>
<%@page import="tult.dtos.RoomDTO"%>
<%@page import="java.util.List"%>
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
                                            <p><a class="btn btn-primary btn-demo" href="GetListController"></i> Chi tiết</a> <a class="btn btn-primary btn-learn">Nhiều hơn</a></p>
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
                     <%
            List<RoomDTO> list = (List<RoomDTO>)request.getAttribute("LISTROOM");            
            if(list!=null){
                if(list.size() >0){
       
            %>
            <form action="MainController" method="POST">
                 <div class="row">
                 
                        <div class="col-md-12 animate-box">
                            <div class="owl-carousel owl-carousel2">                                
                                                  <%int count = 0;
                        for (RoomDTO dto : list) {    
                            
                    %> 
                    
                                <div class="item">
                                    
                                    <a href="main/<%=dto.getImageUrl() %>" class="room image-popup-link" style="background-image: url(main/<%=dto.getImageUrl() %>);"></a>
                                    <div class="desc text-center">
                                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                        <h3><a href="main/rooms-suites.jsp"><%= dto.getRoomName() %></a></h3>
                                        <p class="price">
                                            <span class="currency"><small>$</small></span>
                                            <span class="price-room"><%= ChangeValue.formatDecimalPrice(dto.getPrice()) %> </span>
                                            <span class="per">/ per night</span>
                                        </p>
                                        <ul>
                                            <li><i class="icon-check"></i> <%= dto.getDesc() %></li>
                                            <li><i class="icon-check"></i> Space : <%=  ChangeValue.formatFloatToInt(dto.getSpace()) + "m2" %></li>
                                            <%
                                                String result = "";
                                                ServiceDAO dao = new ServiceDAO();
                                                List<ServiceRoomDTO>  dtoService  =(List<ServiceRoomDTO>) dao.getListServiceByRoomId(dto.getRoomId());
                                                for (int i = 0; i < dtoService.size(); i++) {
                                                        result +=  " "+dtoService.get(i).getNameService() + " ,";
                                                        
                                                    }
    
                                            %>
                                            
                                            <li><i class="icon-check"></i> Service bao gồm : <%=  result.toString() %></li>
                                            <%
                                            
                                            %>
                                        </ul>
                                            <input type="hidden" name="RoomId" value="<%=dto.getRoomId() %>"/>
                                            <input type="hidden" name="RoomName" value="<%=dto.getRoomName() %>"/>
                                            <input type="hidden" name="RoomPrice" value="<%=ChangeValue.formatDecimalPrice(dto.getPrice()) %>"/>
                                            <input type="hidden" name="RoomTmp1" value="<%=dto.getRoomTmp1() %>"/>
                                            <p><a class="btn btn-primary btn-book" href="RoomDetailController?IdRoom=<%= dto.getRoomId() %>">Đặt phòng</a></p>


                                    </div>
                                </div>
                                  <%
                                      
                                        }


                                        %>
                   
                            </div>
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
  
                        <div class="col-md-12 text-center animate-box">
                            <a href="GetListRoomController">View all rooms <i class="icon-arrow-right3"></i></a>
                        </div>
                    </div>
            </form>
                </div>
            </div>
                       <%
            List<FoodDTO> list1 = (List<FoodDTO>)request.getAttribute("LISTFOOD");
            if(list1!=null){
                if(list1.size() >0){
       
            %>    
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
                                    <li role="presentation" class="active"><a href="#Food" aria-controls="mains" role="tab" data-toggle="tab">Food</a></li>
                                </ul>
                                <!-- Tab panes -->
                                                        <%
                        int count1 = 0;
                        for (int i  = 0;i<4;i++) {                                            
                    %>
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="mains">
                                            
                                        <div class="row">
                     
                                            <div class="col-md-12">
                                                <ul class="menu-dish">
                                                  
                                                    <li>
                                                        <figure class="image"><img src="main/<%= list1.get(i).getFoodImage() %>" alt="Free Bootstrap Template by colorlib.com"></figure>
                                                        <div class="text">
                                                            <span class="price">$<%= ChangeValue.formatDecimalPrice(Float.parseFloat(list1.get(i).getFoodPrice())) %></span>
                                                            <h3><%=list1.get(i).getFoodName() %></h3>
                                                           
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>                                 
                                    </div>
                 
                                </div>              
                                                        <%
                                        }
                                        %>
            
                            </div><!-- end half -->
			         <div class="half diningbar-img" style="background-image: url(main/images/cover_img_1.jpg);"></div><!-- end half -->
                                          
                        </div>
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
<%@include  file="footer.jsp" %>      

