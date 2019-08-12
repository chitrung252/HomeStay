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
    <p></p>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <a href="#" class="btn btn-primary btn-icon-split">
                <span class="icon text-white-50">
                    <i class="fas fa-plus"></i>
                </span>
                <span class="text">Thêm</span>
            </a>
            <!--            <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search" style="float: right">
                            <div class="input-group">
                                <input type="text" class="form-control bg-white border-0 small" placeholder="Tìm kiếm..." aria-label="Search" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>-->
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Tên Đăng Nhập</th>
                            <th>Tên Đầy Đủ</th>
                            <th>Ngày Tạo</th>
                            <th>Trạng Thái</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <% List<UserDTO> result = (List<UserDTO>) request.getAttribute("LISTUSER");
                            int count = 1;
                            for (UserDTO dto : result) {
                        %>
                        <tr>
                            <td><%=count++%></td>
                            <td><%=dto.getUsername()%></td>
                            <td><%=dto.getFullname()%></td>
                            <td><%=dto.getDayCreate()%></td>
                            <% if (dto.isIsDelete() == false) {%>
                            <td class="text-success">Hoạt Động</td>
                            <%} else {%>
                            <td class="text-danger">Đang Đóng</td>
                            <%}%>
                            <td><a href="<%= UrlWebsite.AMAINCONTROLLER%>?action=EditUser&userId=<%=dto.getUserId()%>">Sửa</a></td>
                            <td><a href="<%= UrlWebsite.AMAINCONTROLLER%>?action=DeleteUser&userId=<%=dto.getUserId()%>">Xóa</a></td>
                        </tr>
                        <%}
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<%@include file="footer.jsp" %>