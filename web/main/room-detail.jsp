<%-- 
    Document   : detail
    Created on : Aug 18, 2019, 8:27:30 PM
    Author     : Tuan Tu
--%>

<%@page import="java.util.List"%>
<%@page import="tult.dtos.ServiceRoomDTO"%>
<%@page import="e.admin.resomanager.utils.ChangeValue"%>
<%@page import="tult.dtos.RoomDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<style>
    hr{ 

        border:         none;
        border-left:    1px solid gainsboro;
        height:         300px;
        width:          1px;  
        position: absolute;
        top: 0px;
        left: -4%;
    }
    .select-img{
        cursor: pointer !important;
    }
</style>
<aside id="colorlib-hero">
    <div class="flexslider">
        <ul class="slides">
            <li style="background-image: url(../../HotelManagement/main/images/img_bg_5.jpg);">
                <div class="overlay"></div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-md-offset-3 slider-text">
                            <div class="slider-text-inner slider-text-inner2 text-center">
                                <h2>Chắc chắn bạn sẽ thích</h2>
                                <h1>Chi Tiết phòng</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</aside>
<%
   RoomDTO dto = (RoomDTO) request.getAttribute("RoomDetailDTO");
%>
<div id="colorlib-rooms" class="colorlib-light-grey">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center colorlib-heading animate-box">
                <span><i class="icon-star-full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
                <h2>Phòng</h2>
            </div>
        </div>
        <form action="MainController" method="POST">
        <div class="col-md-12 desc animate-box">
            <div class="mx-3">
                <div class="col-md-4 animate-box">
                    <a href="../../HotelManagement/main/<%= dto.getImageUrl() %>" class="room image-popup-link change-img" style="background-image: url(../../HotelManagement/main/<%= dto.getImageUrl() %>);"></a>
                    <div class="p-2 d-flex" style="margin: 10px 0px 10px 15px; box-sizing: border-box;" >
                        <img class="img-thumbnail select-img" src="../../HotelManagement/main/<%= dto.getRoomTmp1() %>" alt="Snow" style="width:100px; height: 100px">
                        <img class="img-thumbnail select-img" src="../../HotelManagement/main/<%= dto.getRoomTmp2() %>" alt="Forest"  style="width:100px; height: 100px">
                        <img class="img-thumbnail select-img" src="../../HotelManagement/main/<%= dto.getRoomTmp3() %>" alt="Mountains"  style="width:100px; height: 100px">
                    </div>
                </div>
                <div class="col-md-4 animate-box">
                    <div class="text-left">
                        <span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                        <h3><a href="rooms-suites.html"><%= dto.getRoomName() %></a></h3>
                        <p class="price">
                            <span class="currency">$</span>
                            <span class="price-room"><%= ChangeValue.formatDecimalPrice(dto.getPrice()) %></span>
                            <span class="per">/ per night</span>
                        </p>
                        <ul>
                            <li><i class="icon-check"></i> <%= dto.getDesc() %></li>
                                            <li><i class="icon-check"></i> Space : <%=  ChangeValue.formatFloatToInt(dto.getSpace()) + "m2" %></li>
                        </ul>

                    </div>
                </div>                        
                <div class="col-md-4 animate-box">
                   <%
                   List<ServiceRoomDTO> dtoService =(List<ServiceRoomDTO>) request.getAttribute("ServiceDetailDTO");
                   %>
                    <hr>
                    <h3>Dịch vụ</h3>
                    <br>
                    <ul class="list-group">
                        <%
                            for (ServiceRoomDTO services : dtoService) {
                                    
                                
                        %>
                        <li class="list-group-item"><%= services.getNameService() %></li>
                        <%
                            }
                        %>
                    </ul>                   
                    <input  type="hidden" name="RoomId" value="<%= dto.getRoomId() %>"/>
                    <input  type="hidden" name="RoomName" value="<%= dto.getRoomName() %>"/>
                    <input  type="hidden" name="RoomPrice" value="<%= dto.getPrice() %>"/>
                    <input  type="hidden" name="RoomImageUrl" value="<%= dto.getImageUrl() %>"/>
                    <button class="btn btn-primary btn-book" name="action" value="Add to Cart">Đặt Phòng!</button>

                </div>
            </div>
        </div>
        </form>
    </div>
</div>
<%@include file="footer.jsp" %>
<script>
    $(function(){
        var selectImg = $(".select-img");
         selectImg.on("click", function(){
             $(".change-img").css("background-image", 'url('+ $(this).attr("src")+')');        
         });
        
    });
    </script>