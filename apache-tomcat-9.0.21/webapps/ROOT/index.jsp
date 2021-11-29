<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 28/11/2021
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="/calculate" method="get">
    <label>Product Description</label><br>
    <input type="text" name="productDescription"><br>
    <label>List Price</label><br>
    <input type="text" name="price"><br>
    <label>Discount Percent</label><br>
    <input type="text" name="discount"><br>
    <input type="submit" id="submit" value="Calculator"/>
</form>
</body>
</html>
