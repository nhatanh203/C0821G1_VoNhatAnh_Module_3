<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 06/12/2021
  Time: 14:50
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
            <span style="font-size : 35px"><strong>CASESTUDY HOMEPAGE</strong></span>
        </div>
        <div class="col-lg-6 fw-bolder fs-3">
        </div>
    </div>
</div>
<div class="container-fluid div1" style="background-color: black">
    <div class="row">
        <div class="col-lg-4 fw-bolder fs-3">
        </div>
        <div class="col-lg-8 fw-bolder fs-3">
            <table border="2px">
                <tr>
                    <th><a href="/customerServlet" style="color:#ffc720">CUSTOMER HOMEPAGE</a></th>
                    <th><a href="/employeeServlet" style="color:#9720ff">EMPLOYEE HOMEPAGE</a></th>
                    <th><a href="/serviceServlet" style="color:#d3400c">SERVICE HOMEPAGE</a></th>
                    <th><a href="/contractServlet" style="color:#0f6c1e">CONTRACT HOMEPAGE</a></th>
                </tr>
            </table>
            <span style="font-size : 15px">
      </span>
            <span style="font-size : 15px">
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
