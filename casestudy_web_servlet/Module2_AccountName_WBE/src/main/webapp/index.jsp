<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 06/12/2021
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Display Case Study Servlet</title>
  <link rel="stylesheet" href="../. ./../css/bootstrap.min.css">
  <style>
    #square {
      width: 80px;
      height: 80px;
      background: #5036ef;
      border: 2px solid black;
      border-radius: 0 0 20px 20px;
    }
    .div1{;
      border-style: solid;
      width: 100%;
      height: 500px;
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
      <span style="font-size: 15px">Nguyen Van A</span>
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
    <div class="col-lg-4 fw-bolder fs-3" style="text-align: right">
      <span style="font-size : 15px">Home</span>
      <span style="font-size : 15px">Customer</span>
    </div>
    <div class="col-lg-4 fw-bolder fs-3">
      <span style="font-size : 15px">Employee</span>
      <span style="font-size : 15px">Service</span>
      <span style="font-size : 15px">Contract</span>
    </div>
    <div class="col-lg-4 fw-bolder fs-3">
            <span style="font-size : 15px">
                <input type="text">
                <input type="button" value="Search">
            </span>
    </div>
  </div>
</div>
<div class="container-fluid div1">
  <div class="row">
    <div class="col-lg-4 fw-bolder fs-3">
      <p style="font-size:15px">Item one</p>
      <p style="font-size:15px">Item two</p>
      <p style="font-size:15px">Item three</p>
    </div>
    <div class="col-lg-8 fw-bolder fs-3">
      <span style="font-size : 15px">Body</span>
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
