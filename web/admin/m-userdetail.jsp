<%-- 
    Document   : m-user
    Created on : Aug 8, 2019, 12:10:47 AM
    Author     : Chi Trung
--%>

<%@page import="tult.dtos.UserDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Quản lí tài khoản</h1>
    <br>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Sửa tài khoản</h6>
        </div>
        <div class="card-body">
            <% UserDTO dto = (UserDTO)request.getAttribute("USER"); %>
            <form>
                <div class="form-group">
                    <label for="username">Tên đăng nhập</label>
                    <input type="text" class="form-control" id="username" value="<%= dto.getUsername()%>">
                    <small id="emailHelp" class="form-text text-danger">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" value="<%= dto.getPassword()%> ">
                </div>
                <div class="form-group">
                    <label for="fullname">Họ và Tên</label>
                    <input type="text" class="form-control" id="fullname" value="<%= dto.getFullname()%>">
                </div>
                <div class="form-group">
                    <label for="address">Địa chỉ</label>
                    <input type="text" class="form-control" id="address" value="<%= dto.getAddressUser()%>">
                </div>  
                <div class="form-group">
                    <label for="phone">SĐT</label>
                    <input type="number" class="form-control" id="phone" value="<%= dto.getPhone()%>">
                </div> 
                <div class="form-group">
                    <label for="datecreate">Ngày tạo</label>
                    <input type="date" class="form-control" id="datecreate" disabled="" value="<%= dto.getDayCreate()%>">
                </div>  
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Trạng thái</label>
                </div>
                <button type="submit" name="action" value="UpdateUser" class="btn btn-primary">Lưu</button>
            </form>
        </div>
    </div>

</div>
<%@include file="footer.jsp" %>