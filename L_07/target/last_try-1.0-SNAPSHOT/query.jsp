<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.DriverManager, java.util.ArrayList, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>DBQuery</title>
</head>
<body>
<h1>DBQuery</h1>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/mydb" user="root" password="qwerty" />

<sql:query var="user" dataSource="${db}">
    SELECT * FROM user WHERE age > 18
</sql:query>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Age</th>
        <th>First Name</th>
        <th>Username</th>
    </tr>
    <c:forEach items="${user.rows}" var="user">
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