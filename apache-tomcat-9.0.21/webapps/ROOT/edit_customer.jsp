<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 08/12/2021
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<h2 style="text-align: center">EDIT CUSTOMER</h2>
<form method="post">
    <input type="hidden" name="action" value="create">
    <div>
        <input type="text" name="id" placeholder="id">
        <input type="text" name="typeOfId" placeholder="typeOfId">
        <input type="text" name="name" placeholder="name">
        <input type="text" name="birthday" placeholder="birthday (yyyy-mm-dd)">
        <input type="text" name="gender" placeholder="gender">
        <input type="text" name="address" placeholder="address">
        <input type="submit" value="Edit">
    </div>
</form>
</body>
</html>
