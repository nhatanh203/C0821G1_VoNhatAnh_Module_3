<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 10/12/2021
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDIT SERVICE</title>
</head>
<body>
<h2 style="text-align: center">EDIT SERVICE</h2>
<form method="post">
    <input type="hidden" name="action" value="edit">

    <div>
        <input type="text" name="id" placeholder="id want to edit">
    </div>
    <div>
        <input type="text" name="name" placeholder="name">
    </div>
    <div>
        <input type="text" name="area" placeholder="area">
    </div>
    <div>
        <input type="text" name="rentalCost" placeholder="rentalCost">
    </div>
    <div>
        <input type="text" name="maxOfPeople" placeholder="maxOfPeople">
    </div>
    <div>
        <input type="text" name="roomStandard" placeholder="roomStandard">
    </div>
    <div>
        <input type="text" name="description" placeholder="description">
    </div>
    <div>
        <input type="text" name="poolArea" placeholder="poolArea">
    </div>
    <div>
        <input type="text" name="numberOfFloor" placeholder="numberOfFloor">
    </div>
    <div>
        <input type="submit" value="Edit">
    </div>
</form>
</body>
</html>
