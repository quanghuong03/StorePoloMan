<!DOCTYPE html>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<jsp:include page="trang_chu/header.jsp"/>

<div id="breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li class="active">Cart</li>
        </ul>
    </div>
</div>
<!-- section -->
<div class="section">
    <!-- container -->
    <div class="container">
                <div class="col-md-12">
                    <div class="order-summary clearfix">
                        <div class="section-title">
                            <h3 class="title">My Cart</h3>
                        </div>
                        <table class="shopping-cart-table table">
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th></th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Quantity</th>
                                <th class="text-center">Total</th>
                                <th class="text-right"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${giohangct}" var="giohang">
                            <tr>
                                <td class="thumb"><img src="${pageContext.servletContext.contextPath}/img/sanpham/${giohang.ctsp.sp.hinhAnh}" alt=""></td>
                                <td class="details">
                                    <a href="#">${giohang.ctsp.sp.tenSanPham}</a>
                                    <ul>
                                        <li><span>Size: ${giohang.ctsp.sz.soSize}</span></li>
                                        <li><span>Color: ${giohang.ctsp.mauSac.tenMauSac}</span></li>
                                    </ul>
                                </td>
                                <td class="price text-center"><strong>${giohang.ctsp.sp.giaBan}</strong><br><del class="font-weak"><small>$40.00</small></del></td>
                                <td class="qty text-center"><input class="input" type="number" value="${giohang.soLuong}"></td>
                                <td class="total text-center"><strong class="primary-color">${donGia}</strong></td>
                                <td class="text-right"><button class="main-btn icon-btn"><i class="fa fa-close"></i></button></td>
                            </tr>
                            </c:forEach>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th class="empty" colspan="3"></th>
                                <th>TOTAL</th>
                                <th colspan="2" class="total">${tongGia}VND</th>
                            </tr>
                            </tfoot>
                        </table>
                        <div class="pull-right">
                            <a href="/gio-hang/checkout" class="primary-btn">Thanh toán</a>
                        </div>
                    </div>

                </div>
            </form>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->

<jsp:include page="trang_chu/footer.jsp"/>

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/js/main.js"></script>

</body>

</html>