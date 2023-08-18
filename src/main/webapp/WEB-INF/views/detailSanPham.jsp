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
<body>
<jsp:include page="trang_chu/header.jsp"/>
<div id="breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Products</a></li>
            <li><a href="#">Category</a></li>
            <li class="active">${sanPham.tenSanPham}</li>
        </ul>
    </div>
</div>

<!-- section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!--  Product Details -->
            <div class="product product-details clearfix">
                <div class="col-md-6">
                    <div id="product-main-view">
                        <div class="product-view">
                            <img src="${pageContext.servletContext.contextPath}/img/sanpham/${sanPham.hinhAnh}" alt="">
                        </div>
                        <div class="product-view">
                            <img src="${pageContext.servletContext.contextPath}/img/sanpham/${sanPham.hinhAnh}" alt="">
                        </div>
                        <div class="product-view">
                            <img src="${pageContext.servletContext.contextPath}/img/sanpham/${sanPham.hinhAnh}" alt="">
                        </div>
                        <div class="product-view">
                            <img src="${pageContext.servletContext.contextPath}/img/sanpham/${sanPham.hinhAnh}" alt="">
                        </div>
                    </div>
                    <div id="product-view">
                        <div class="product-view">
                            <img src="${pageContext.servletContext.contextPath}/img/sanpham/${sanPham.hinhAnh}" alt="">
                        </div>
                        <div class="product-view">
                            <img src="${pageContext.servletContext.contextPath}/img/sanpham/${sanPham.hinhAnh}" alt="">
                        </div>
                        <div class="product-view">
                            <img src="${pageContext.servletContext.contextPath}/img/sanpham/${sanPham.hinhAnh}" alt="">
                        </div>
                        <div class="product-view">
                            <img src="${pageContext.servletContext.contextPath}/img/sanpham/${sanPham.hinhAnh}" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="product-body">
                        <div class="product-label">
                            <span>New</span>
                            <span class="sale">-20%</span>
                        </div>
                        <h2 class="product-name">Mã Sãn Phẩm :  ${selectedChiTiet.maCTSP}</h2>
                        <h2 class="product-name">${sanPham.tenSanPham}</h2>
                        <h3 class="product-price">${sanPham.giaBan}.VND
                            <del class="product-old-price">$45.00</del>
                        </h3>
                        <div>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o empty"></i>
                            </div>
                            <a href="#">3 Review(s) / Add Review</a>
                        </div>
                        <p><strong>Availability:</strong> In Stock</p>
                        <p><strong>Brand:</strong> ${sanPham.th.tenThuongHieu}</p>
                        <p>${sanPham.moTa}</p>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="product-options">
                                    <h4 class="text-uppercase">Size:</h4>
                                    <div class="btn-group" role="group" aria-label="Size">
                                        <c:forEach items="${sizes}" var="size">
                                            <button type="button" name="size"
                                                    class="btn btn-secondary ${selectedMaSize == size.maSize ? 'active btn-danger' : ''}"
                                                    onclick="location.href='${contextPath}/detail/${sanPham.maSanPham}/${size.maSize}/${selectedMaMau}';">
                                                    ${size.soSize}
                                            </button>
                                        </c:forEach>
                                        <input type="hidden" name="size" value="${selectedMaSize}">
                                    </div>
                                    <hr>
                                    <h4 class="text-uppercase">Color:</h4>
                                    <div class="btn-group" role="group" aria-label="Color">
                                        <c:forEach items="${mauSacs}" var="mauSac">
                                            <button type="button" name="mau"
                                                    class="btn btn-secondary ${selectedMaMau == mauSac.maMauSac ? 'active btn-danger' : ''}"
                                                    onclick="location.href='${contextPath}/detail/${sanPham.maSanPham}/${selectedMaSize}/${mauSac.maMauSac}';">
                                                    ${mauSac.tenMauSac}
                                            </button>
                                        </c:forEach>
                                        <input type="hidden" name="mau" value="${selectedMaMau}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <form id="add-to-cart-form" method="POST"
                              action="${pageContext.request.contextPath}/gio-hang/add-to-cart">
                            <div class="product-btns">
                                <div class="qty-input">
                                    <span class="text-uppercase">QTY: </span>
                                    <input class="input" type="number" value="1" name="soLuong">
                                </div>
                                <input type="hidden" name="maCTSP" value="${selectedChiTiet.maCTSP}">
                                <button type="submit" class="primary-btn add-to-cart"><i
                                        class="fa fa-shopping-cart"></i> Add to Cart
                                </button>
                        </form>
                        <div class="pull-right">
                            <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                            <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                            <button class="main-btn icon-btn"><i class="fa fa-share-alt"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="product-tab">
                    <ul class="tab-nav">
                        <li class="active"><a data-toggle="tab" href="#tab1">Description</a></li>
                        <li><a data-toggle="tab" href="#tab1">Details</a></li>
                        <li><a data-toggle="tab" href="#tab2">Reviews (3)</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab1" class="tab-pane fade in active">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                                sunt in culpa qui officia deserunt mollit anim id
                                est laborum.</p>
                        </div>
                        <div id="tab2" class="tab-pane fade in">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="product-reviews">
                                        <div class="single-review">
                                            <div class="review-heading">
                                                <div><a href="#"><i class="fa fa-user-o"></i> John</a></div>
                                                <div><a href="#"><i class="fa fa-clock-o"></i> 27 DEC 2017 / 8:0 PM</a>
                                                </div>
                                                <div class="review-rating pull-right">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o empty"></i>
                                                </div>
                                            </div>
                                            <div class="review-body">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut
                                                    enim ad minim veniam, quis nostrud exercitation ullamco laboris
                                                    nisi
                                                    ut aliquip ex ea commodo consequat.Duis aute irure dolor in
                                                    reprehenderit in voluptate velit esse cillum dolore eu fugiat
                                                    nulla pariatur.</p>
                                            </div>
                                        </div>

                                        <div class="single-review">
                                            <div class="review-heading">
                                                <div><a href="#"><i class="fa fa-user-o"></i> John</a></div>
                                                <div><a href="#"><i class="fa fa-clock-o"></i> 27 DEC 2017 / 8:0 PM</a>
                                                </div>
                                                <div class="review-rating pull-right">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o empty"></i>
                                                </div>
                                            </div>
                                            <div class="review-body">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut
                                                    enim ad minim veniam, quis nostrud exercitation ullamco laboris
                                                    nisi
                                                    ut aliquip ex ea commodo consequat.Duis aute irure dolor in
                                                    reprehenderit in voluptate velit esse cillum dolore eu fugiat
                                                    nulla pariatur.</p>
                                            </div>
                                        </div>

                                        <div class="single-review">
                                            <div class="review-heading">
                                                <div><a href="#"><i class="fa fa-user-o"></i> John</a></div>
                                                <div><a href="#"><i class="fa fa-clock-o"></i> 27 DEC 2017 / 8:0 PM</a>
                                                </div>
                                                <div class="review-rating pull-right">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o empty"></i>
                                                </div>
                                            </div>
                                            <div class="review-body">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut
                                                    enim ad minim veniam, quis nostrud exercitation ullamco laboris
                                                    nisi
                                                    ut aliquip ex ea commodo consequat.Duis aute irure dolor in
                                                    reprehenderit in voluptate velit esse cillum dolore eu fugiat
                                                    nulla pariatur.</p>
                                            </div>
                                        </div>

                                        <ul class="reviews-pages">
                                            <li class="active">1</li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#"><i class="fa fa-caret-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h4 class="text-uppercase">Write Your Review</h4>
                                    <p>Your email address will not be published.</p>
                                    <form class="review-form">
                                        <div class="form-group">
                                            <input class="input" type="text" placeholder="Your Name"/>
                                        </div>
                                        <div class="form-group">
                                            <input class="input" type="email" placeholder="Email Address"/>
                                        </div>
                                        <div class="form-group">
                                            <textarea class="input" placeholder="Your review"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-rating">
                                                <strong class="text-uppercase">Your Rating: </strong>
                                                <div class="stars">
                                                    <input type="radio" id="star5" name="rating" value="5"/><label
                                                        for="star5"></label>
                                                    <input type="radio" id="star4" name="rating" value="4"/><label
                                                        for="star4"></label>
                                                    <input type="radio" id="star3" name="rating" value="3"/><label
                                                        for="star3"></label>
                                                    <input type="radio" id="star2" name="rating" value="2"/><label
                                                        for="star2"></label>
                                                    <input type="radio" id="star1" name="rating" value="1"/><label
                                                        for="star1"></label>
                                                </div>
                                            </div>
                                        </div>
                                        <button class="primary-btn">Submit</button>
                                    </form>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- /Product Details -->
    </div>
    <!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /section -->

<!-- section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h2 class="title">Picked For You</h2>
                </div>
            </div>
            <!-- section title -->

            <!-- Product Single -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="product product-single">
                    <div class="product-thumb">
                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                        <img src="${pageContext.servletContext.contextPath}/img/product04.jpg" alt="">
                    </div>
                    <div class="product-body">
                        <h3 class="product-price">$32.50</h3>
                        <div class="product-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o empty"></i>
                        </div>
                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                        <div class="product-btns">
                            <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                            <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Product Single -->

            <!-- Product Single -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="product product-single">
                    <div class="product-thumb">
                        <div class="product-label">
                            <span>New</span>
                        </div>
                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                        <img src="${pageContext.servletContext.contextPath}/img/product03.jpg" alt="">
                    </div>
                    <div class="product-body">
                        <h3 class="product-price">$32.50</h3>
                        <div class="product-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o empty"></i>
                        </div>
                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                        <div class="product-btns">
                            <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                            <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Product Single -->

            <!-- Product Single -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="product product-single">
                    <div class="product-thumb">
                        <div class="product-label">
                            <span class="sale">-20%</span>
                        </div>
                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                        <img src="${pageContext.servletContext.contextPath}/img/product02.jpg" alt="">
                    </div>
                    <div class="product-body">
                        <h3 class="product-price">$32.50
                            <del class="product-old-price">$45.00</del>
                        </h3>
                        <div class="product-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o empty"></i>
                        </div>
                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                        <div class="product-btns">
                            <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                            <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Product Single -->

            <!-- Product Single -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="product product-single">
                    <div class="product-thumb">
                        <div class="product-label">
                            <span>New</span>
                            <span class="sale">-20%</span>
                        </div>
                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                        <img src="${pageContext.servletContext.contextPath}/img/product01.jpg" alt="">
                    </div>
                    <div class="product-body">
                        <h3 class="product-price">$32.50
                            <del class="product-old-price">$45.00</del>
                        </h3>
                        <div class="product-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o empty"></i>
                        </div>
                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                        <div class="product-btns">
                            <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                            <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Product Single -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->

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