<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 09/12/2021
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CASE STUDY HOMEPAGE</title>
    <link rel="stylesheet" href="../. ./../css/bootstrap.min.css">
    <style>
        #square {
            width: 80px;
            height: 80px;
            background: #5036ef;
            border: 2px solid black;
            border-radius: 0 0 20px 20px;
        }

        .div1 {;
            border-style: solid;
            width: 100%;
            height: 500px;
        }

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
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 fw-bolder fs-3">
            <div id="square"></div>
        </div>
        <div class="col-lg-6 fw-bolder fs-3" style="text-align: right">
            <span style="font-size: 15px">Võ Nhật Anh</span>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 fw-bolder fs-3">
            <span style="font-size : 15px">LOGO</span>
        </div>
    </div>
</div>
<div class="container-fluid" style="border-style:solid">
    <div class="row">
        <div class="col-lg-6 fw-bolder fs-3">
            <span style="font-size : 35px"><strong>EMPLOYEE HOMEPAGE</strong></span>
        </div>
        <div class="col-lg-6 fw-bolder fs-3">
            <form class="d-flex" method="post">
                <input type="hidden" name="action" value="search">
                <input type="search" name="id" placeholder="id search employee">
                <button type="submit">Search</button>
            </form>
        </div>
    </div>
</div>
<div class="container-fluid div1">
    <div class="row">
        <div class="col-lg-4 fw-bolder fs-3">
            <p><a href="/employeeServlet?action=create">Create</a></p>
            <p><a href="/employeeServlet?action=delete">Delete</a></p>
            <p><a href="/employeeServlet?action=edit">Edit</a></p>
        </div>
        <div class="col-lg-8 fw-bolder fs-3">
      <span style="font-size : 15px">
      </span>
            <span style="font-size : 15px">
      <h2 style="text-align: center"><strong>Employee List</strong></h2>
<div align="center">
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Birthday</th>
            <th>Indentity Card</th>
            <th>PhoneNumber</th>
            <th>Email</th>
            <th>Address</th>
        </tr>
        <c:forEach var="employeeObj" items="${employeeListServlet}">
            <tr>
                <td><c:out value="${employeeObj.id}"/></td>
                <td><c:out value="${employeeObj.name}"/></td>
                <td><c:out value="${employeeObj.birthday}"/></td>
                <td><c:out value="${employeeObj.indentityCard}"/></td>
                <td><c:out value="${employeeObj.phoneNumber}"/></td>
                <td><c:out value="${employeeObj.email}"/></td>
                <td><c:out value="${employeeObj.address}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
      </span>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 fw-bolder fs-3" style="border-style:solid">
            <p style="font-size:15px;text-align: center;">Footer</p>
        </div>
    </div>
</div>
</body>
</html>
