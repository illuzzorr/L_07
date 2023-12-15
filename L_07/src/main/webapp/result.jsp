<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Age</th>
        <th>First Name</th>
        <th>Username</th>
    </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.age}" /></td>
                <td><c:out value="${user.firstName}" /></td>
                <td><c:out value="${user.username}" /></td>
            </tr>
        </c:forEach>
</table>
</body>
</html>

