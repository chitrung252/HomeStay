<%-- 
    Document   : rooms-suites
    Created on : Aug 10, 2019, 3:06:51 PM
    Author     : Admin
--%>

<%@page import="e.admin.resomanager.utils.ChangeValue"%>
<%@page import="tult.dtos.ServiceRoomDTO"%>
<%@page import="tult.daos.ServiceDAO"%>
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
              <%
            List<RoomDTO> list = (List<RoomDTO>)request.getAttribute("LISTROOM");
            if(list!=null){
                if(list.size() >0){
       
            %>
		<div id="colorlib-rooms" class="colorlib-light-grey">
			<div class="container">
				<div class="row">
                        <%int count = 0;
                        for (RoomDTO dto : list) {                                            
                    %> 
					<div class="col-md-4 room-wrap animate-box">
						<a href="main/<%= dto.getRoomTmp1() %>" class="room image-popup-link" style="background-image: url(main/<%= dto.getRoomTmp1()%>);"></a>
						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
							<h3><a href="GetListRoomController"><%= dto.getRoomName() %></a></h3>
							<p class="price">
								<span class="currency">$</span>
                                                                <span class="price-room"><%= ChangeValue.formatDecimalPrice(dto.getPrice()) %></span>
                                                              
							</p>
							<ul>
                                                            <li><i class="icon-check"></i> <%= dto.getDesc() %></li>
                                                            <li><i class="icon-check"></i> Space : <%= ChangeValue.formatFloatToInt(dto.getSpace()) + " m2" %></li>
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
							    <p><a class="btn btn-primary btn-book" href="RoomDetailController?IdRoom=<%= dto.getRoomId() %>">Book now!</a></p>
						</div>
					</div>
                                          <%
                                        }
                                        %>
					
					
					
				</div>
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

