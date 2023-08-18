<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>E-SHOP HTML Template</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/style.css"/>
</head>

</head>

<body>
<jsp:include page="trang_chu/header.jsp"/>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Đơn mua</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>Mã Hoá Đơn</th>
                        <th>Ngày tạo</th>
                        <th>Tình trạng</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>Mã Hoá Đơn</th>
                        <th>Gía trị đơn</th>
                        <th>Tình trạng</th>
                        <th></th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <c:forEach items="${hoaDon}" var="hoaDon">
                        <tr>
                            <td>${hoaDon.maHoaDon}
                                <br>
                                    ${hoaDon.ngayTao}</td>
                            <td><a href="" style="color: blue">${hoaDon.khachHang.tenKhachHang}</a>
                                <br>
                                    ${hoaDon.khachHang.soDienThoai}</td>
                            <td>${hoaDon.ngayTao}</td>
                            <td>
                                <c:if test="${hoaDon.trangThai == 0}">
                                    <a href="" class="btn btn-primary">Đang chờ xác nhận</a>
                                    <button class="btn btn-danger">Hủy đơn</button>
                                </c:if>
                                <c:if test="${hoaDon.trangThai == 1}">
                                    <button class="btn btn-success">Đang vận chuyển</button>
                                </c:if>
                            </td>
                            <td>
                                <button class="btn btn-danger">Xóa</button>
                                <button class="btn btn-success">Chi Tiết</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<jsp:include page="trang_chu/footer.jsp"/>
<!-- Js Plugins -->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/js/main.js"></script>
</body>

</html>