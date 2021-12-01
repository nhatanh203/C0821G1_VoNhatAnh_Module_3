<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 29/11/2021
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Customer Web</title>
  </head>
  <style>
    td{
      text-align: center;
    }
    th, td {
      border-bottom: 3px solid #ddd;
    }
  </style>

  <h1 style="text-align: center"><strong>Danh sách khách hàng</strong></h1>
  <body>
<table>
  <colgroup>
    <col width="500" span="1">
    <col width="500" span="1">
    <col width="500" span="1">
    <col width="500" span="1">
  </colgroup>
<tr>
  <th><strong>Tên</strong></th>
  <th><strong>Ngày sinh</strong></th>
  <th><strong>Địa chỉ</strong></th>
  <th><strong>Ảnh</strong></th>
</tr>
  <c:forEach var="customerObj" items="${customerListServlet}" varStatus="loop">
<tr>
  <td>
    <c:out value="${customerObj.name}"/>
  </td>
  <td>
    <c:out value="${customerObj.date}"/>
  </td>
  <td>
    <c:out value="${customerObj.address}"/>
  </td>
  <td>
    <img width="60px" height="60px" src="<c:out value="${customerObj.image}"/>"/>
  </td>
  </c:forEach>
</tr>
</table>
  </body>
</html>
