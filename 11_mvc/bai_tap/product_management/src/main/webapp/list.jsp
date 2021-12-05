<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 30/11/2021
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/product?action=create"><button>Create new product</button></a>
<h2><strong>Danh sách sản phẩm</strong></h2>
<div align="center">
<table border="1" >
    <tr>
        <th>Name Product</th>
        <th>Prices</th>
        <th>Producer</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td><c:out value="${product.name}"></c:out></td>
            <td><c:out value="${product.price}"></c:out></td>
            <td><c:out value="${product.producer}"></c:out></td>
        </tr>
    </c:forEach>
    <c:out value="${message}"></c:out>
</table>
</div>
</body>
</html>
