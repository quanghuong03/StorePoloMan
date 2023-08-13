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
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<jsp:include page="trang_chu/header.jsp"/>
<jsp:include page="trang_chu/banner.jsp"/>

<!-- section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h2 class="title">Latest Products</h2>
                </div>
            </div>
            <!-- section title -->

            <!-- Product Single -->
            <div class="row d-flex align-items-stretch equal-height">
                <c:forEach items="${page.content}" var="ctsp">
                    <div class="col-md-3 col-sm-6 col-xs-6">
                        <div class="product product-single d-flex flex-column h-100">
                            <div class="product-thumb flex-fill overflow-hidden">
                                <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> <a href="${contextPath}/detail/${ctsp.maSanPham}/${selectedMaSize}/${selectedMaMau}">View</a>
                                </button>
                                <img src="img/sanpham/${ctsp.hinhAnh}" alt="" class="img-fluid object-fit-cover">
                            </div>
                            <div class="product-body">
                                <h3 class="product-price">${ctsp.giaBan}VNĐ</h3>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o empty"></i>
                                </div>
                                <h2 class="product-name text-truncate"><a href="#">${ctsp.tenSanPham}</a></h2>
                                <div class="product-btns">
                                    <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                    <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                    <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to
                                        Cart
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <!-- /Product Single -->

        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
    <div class="text-center">
        <div class="d-flex justify-content-center">
            <ul class="pagination">
                <c:if test="${page.hasPrevious()}">
                    <li class="page-item">
                        <a href="?page=${page.number - 1}" class="btn btn-primary page-link">&laquo;</a>
                    </li>
                </c:if>
                <c:forEach var="i" begin="1" end="${page.totalPages}">
                    <li class="page-item ${page.number eq i-1 ? 'active' : ''}">
                        <a href="?page=${i-1}" class="btn btn-primary page-link">${i}</a>
                    </li>
                </c:forEach>
                <c:if test="${page.hasNext()}">
                    <li class="page-item">
                        <a href="?page=${page.number + 1}" class="btn btn-primary page-link">&raquo;</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div>
<!-- /section -->

<jsp:include page="trang_chu/footer.jsp"/>

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>

</body>

</html>