<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 01/12/2021
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Find Users Management</title>
</head>
<body>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Find Users Management</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <c:forEach var="ten" items="${user}">
            <tr>
                <td><c:out value="${ten.id}"/></td>
                <td><c:out value="${ten.name}"/></td>
                <td><c:out value="${ten.email}"/></td>
                <td><c:out value="${ten.country}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
