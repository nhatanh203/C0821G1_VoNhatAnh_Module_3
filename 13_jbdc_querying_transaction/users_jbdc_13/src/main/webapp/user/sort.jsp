<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 02/12/2021
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Sort </title>
</head>
<body>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <c:forEach var="sortName" items="${sortUser}">
            <tr>
                <td><c:out value="${sortName.id}"/></td>
                <td><c:out value="${sortName.name}"/></td>
                <td><c:out value="${sortName.email}"/></td>
                <td><c:out value="${sortName.country}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
