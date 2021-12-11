<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 10/12/2021
  Time: 09:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="css/bootstrap.min.css">
<html>
<head>
  <title>Create Service</title>
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
<h2 style="text-align: center">CREATE SERVICE</h2>
<form method="post">
  <input type="hidden" name="action" value="create">

  <div>
    <input type="text" name="id" placeholder="id">
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
    <input type="submit" value="Add New Service">
  </div>

</form>
</body>
</html>
