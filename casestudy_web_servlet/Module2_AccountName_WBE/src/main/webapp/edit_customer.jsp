<%--
  Created by IntelliJ IDEA.
  User: vonhatanh
  Date: 08/12/2021
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<h2 style="text-align: center">EDIT CUSTOMER</h2>
<form method="post">
    <input type="hidden" name="action" value="edit">

    <div>
        <input type="text" name="id" placeholder="id want to edit">
        <h4 style="color: red"><c:out value="${messenger}"/></h4>
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
        <input type="submit" value="Edit Customer">
    </div>

</form>
</form>
</body>
</html>
