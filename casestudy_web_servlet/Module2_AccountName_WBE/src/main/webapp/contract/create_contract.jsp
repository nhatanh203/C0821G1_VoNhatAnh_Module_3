<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 10/12/2021
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="css/bootstrap.min.css">
<html>
<head>
    <title>Create Contract</title>
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
<h2 style="text-align: center">CREATE CONTRACT</h2>
<form method="post">
    <input type="hidden" name="action" value="create">

    <div>
        <input type="text" name="id" placeholder="id">
    </div>
    <div>
        <input type="text" name="startDay" placeholder="startDay">
    </div>
    <div>
        <input type="text" name="endDay" placeholder="endDay">
    </div>
    <div>
        <input type="text" name="deposit" placeholder="deposit">
    </div>
    <div>
        <input type="text" name="totalMoney" placeholder="totalMoney">
    </div>
    <div>
        <input type="submit" value="Add New Contract">
    </div>

</form>
</body>
</html>