<%-- 
    Document   : index
    Created on : Aug 7, 2019, 2:55:56 PM
    Author     : Chi Trung
--%>

<%@page import="tult.dtos.OrderDTO"%>
<%@page import="tult.daos.RoomDAO"%>
<%@page import="java.util.List"%>
<%@page import="tult.dtos.RoomDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Quan li phong</h1>
        <%
            List<OrderDTO> list = (List<OrderDTO>) request.getAttribute("LROOM");
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Room Name</th>
                    <th>Quanlity</th>
                    <th>Order Name</th>
                    <th>Order Date</th>
                </tr>
            </thead>
            <tbody>
                <% int count = 0;
                    for (OrderDTO room : list) {


                %>
                <tr>
                    <td><%=count++%></td>
                    <td><%= room.getRoomName()%></td>
                    <td><%= room.getQuanlity()%></td>
                    <td><%= room.getOrderName() %></td>
                    <td><%= room.getOrderDate() %></td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </body>
</html>
