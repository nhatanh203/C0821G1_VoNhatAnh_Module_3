<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 07/12/2021
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="css/bootstrap.min.css">
<html>
<head>
    <title>Create Customer</title>
</head>
<style>
    table {
        border: 1px solid black;
    }

    th {
        border: 1px solid black;
    }

    td {
        border: 1px solid black;
    }

    table, th, td {
        border: 1px solid #ccc;
    }

    table {
        border-collapse: collapse;
    }

    tr:hover {
        background-color: #ddd;
        cursor: pointer;
    }
</style>
<body>
<h2 style="text-align: center">CREATE CUSTOMER</h2>
<form method="post">
    <input type="hidden" name="action" value="create">

    <div>
        <input type="text" name="id" placeholder="id">
    </div>
    <div>
        <input type="text" name="typeOfId" placeholder="typeOfId">
    </div>
    <div>
        <input type="text" name="name" placeholder="name">
    </div>
    <div>
        <input type="text" name="birthday" placeholder="birthday (yyyy-mm-dd)">
    </div>
    <div>
        <input type="text" name="gender" placeholder="gender">
    </div>
    <div>
        <input type="text" name="address" placeholder="address">
    </div>
    <div>
        <input type="submit" value="Add New Customer">
    </div>

</form>
</body>
</html>
