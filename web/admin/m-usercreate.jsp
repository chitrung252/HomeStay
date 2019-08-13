<%-- 
    Document   : m-user
    Created on : Aug 8, 2019, 12:10:47 AM
    Author     : Chi Trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<style>
    form small{
        display: none;
    }
</style>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Quản lí tài khoản</h1>
    <br>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Thêm tài khoản</h6>
        </div>
        <div class="card-body">          
            <form method="POST" action="../<%= UrlWebsite.AMAINCONTROLLER%>" id="formSubmit">
                <div class="form-group">
                    <label for="username">Tên đăng nhập</label>
                    <input type="text" class="form-control" id="username" name="txtUsername" >
                    <small id="error-username" class="form-text text-danger"></small>
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu</label>
                    <input type="password" class="form-control" id="password"  name="txtPassword" >
                    <small id="error-password" class="form-text text-danger"></small>
                </div>
                <div class="form-group">
                    <label for="password">Nhập lại mật khẩu</label>
                    <input type="password" class="form-control" id="re-password" >
                    <small id="error-repassword" class="form-text text-danger"></small>
                </div>
                <div class="form-group">
                    <label for="fullname">Họ và Tên</label>
                    <input type="text" class="form-control" id="fullname" name="txtFullname">
                    <small id="error-fullname" class="form-text text-danger"></small>
                </div>
                <div class="form-group">
                    <label for="address">Địa chỉ</label>
                    <input type="text" class="form-control" id="address" name="txtAddress">
                    <small id="error-address" class="form-text text-danger"></small>
                </div>  
                <div class="form-group">
                    <label for="phone">SĐT</label>
                    <input type="number" class="form-control" id="phone" name="txtPhone">
                    <small id="error-phone" class="form-text text-danger"></small>
                </div> 
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" name="txtEmail">
                    <small id="error-email" class="form-text text-danger"></small>
                </div> 
                <div class="form-group">
                    <label for="roleid">Vai trò</label>
                    <select class="form-control" id="roleid" name="slRoleId">
                        <option value="2">Staff</option>
                    </select>
                </div>
                <div class="row col-md-12 my-3">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="cbStatus" id="exampleRadios1" value="true" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Hoạt động
                        </label>
                    </div>
                    &nbsp;&nbsp;&nbsp;
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="cbStatus" id="exampleRadios2" value="false">
                        <label class="form-check-label" for="exampleRadios2">
                            Đang đóng
                        </label>
                    </div>
                </div>
                <button type="submit" name="action" value="CreateUser" class="btn btn-primary">Lưu</button>
                <a href="../<%= UrlWebsite.USERCONTROLLER%>?action=GetUser "class="btn btn-success">Trở về </a>
            </form>


        </div>
    </div>

</div>
<%@include file="footer.jsp" %>
<script>
    $(function () {
        checkForm();
    });
    function checkForm() {
        var form = $("#formSubmit");
        form.on("submit", function (event) {
            hideErrMess();
            if (!checkValid()) {
                event.preventDefault();
            }
        });
    }
    function checkValid() {
        var username = $("#username").val();
        var password = $("#password").val();
        var repassword = $("#re-password").val();
        var fullname = $("#fullname").val();
        var address = $("#address").val();
        var phone = $("#phone").val();
        var email = $("#email").val();
        var check = true;
        if (username == null || username == "") {
            $("#error-username").text("Vui lòng nhập tên đăng nhập");
            $("#error-username").show();
            check = false;
        }
        if (password == null || password == "") {
            $("#error-password").text("Vui lòng nhập mật khẩu");
            $("#error-password").show();
            check = false;
        }
        if (repassword == null || password == "") {
            $("#error-repassword").text("Vui lòng nhập xác nhận mật khẩu");
            $("#error-repassword").show();
            check = false;
        } else {
            if (repassword != password) {
                $("#error-repassword").text("Không khớp mới mật khẩu đã đặt ");
                $("#error-repassword").show();
                check = false;
            }
        }
        if (fullname == null || fullname == "") {
            $("#error-fullname").text("Vui lòng nhập họ và tên");
            $("#error-fullname").show();
            check = false;
        }
        if (address == null || address == "") {
            $("#error-address").text("Vui lòng nhập địa chỉ ");
            $("#error-address").show();
            check = false;
        }
        if (phone == null || phone == "") {
            $("#error-phone").text("Vui lòng nhập số điện thoại ");
            $("#error-phone").show();
            check = false;
        } else {
            if (phone.length > 10) {
                $("#error-phone").text("Số điện thoại tối đa 10 số");
                $("#error-phone").show();
                check = false;
            }
        }
        if (email == null || email == "") {
            $("#error-email").text("Vui lòng nhập email");
            $("#error-email").show();
            check = false;
        }
        return check;
    }
    function hideErrMess() {
        $("#error-username").hide();
        $("#error-password").hide();
        $("#error-repassword").hide();
        $("#error-fullname").hide();
        $("#error-address").hide();
        $("#error-phone").hide();
        $("#error-email").hide();
    }
</script>