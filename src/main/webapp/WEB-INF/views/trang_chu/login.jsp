
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

</head>
<body>
<jsp:include page="header.jsp"/>
<c:if test="${not empty error}">
    <p style="color: red;">${error}</p>
</c:if>
<div class="container d-flex align-items-center justify-content-center vh-100">
    <form class="border shadow p-5 rounded-3" method="post" action="/login">
        <h2 class="mb-4">Đăng nhập</h2>
        <div class="mb-3">
            <label for="maKhachHang" class="form-label">Mã khách hàng:</label>
            <input type="text" class="form-control" id="maKhachHang" name="maKhachHang" required>
        </div>
        <div class="mb-3">
            <label for="matKhau" class="form-label">Mật khẩu:</label>
            <input type="password" class="form-control" id="matKhau" name="matKhau" required>
        </div>
        <button type="submit" class="btn btn-primary">Đăng nhập</button>
    </form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>