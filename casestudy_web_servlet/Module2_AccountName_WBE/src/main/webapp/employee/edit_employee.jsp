<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 09/12/2021
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDIT EMPLOYEE</title>
</head>
<body>
<h2 style="text-align: center">EDIT EMPLOYEE</h2>
<form method="post">
    <input type="hidden" name="action" value="edit">
    <div>
        <input type="text" name="id" placeholder="id to edit">
    </div>
    <div>
        <input type="text" name="name" placeholder="name">
    </div>
    <div>
        <input type="text" name="birthday" placeholder="birthday (yyyy-mm-dd)">
    </div>
    <div>
        <input type="text" name="indentityCard" placeholder="indentityCard (xxxxxxxxx)9">
    </div>
    <div>
        <input type="text" name="phoneNumber" placeholder="phoneNumber (xxxxxxxxxx)10">
    </div>
    <div>
        <input type="text" name="email" placeholder="email">
    </div>
    <div>
        <input type="text" name="address" placeholder="address">
    </div>
    <div>
        <input type="submit" value="Edit">
    </div>
</form>
</body>
</html>
