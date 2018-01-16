<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
	<c:forEach items="${userList}" var="user">
		<tr>
			<td>${user.userID}</td>
			<td>${user.name}</td>
			<td>${user.userID}</td>
			<td>${user.address}</td>
			<td>${user.classroom}</td>
			<td>${user.email}</td>
			<td>${user.nicname}</td>
			<td>${user.password}</td>
			<td>${user.surname}</td>
			<td>${user.username}</td>
			<td><a href="editUser1.do?id=${user.userID}">Edit</a></td>
			<td><a href="deleteUser1.do?id=${user.userID}">remove</a></td>
			
		</tr>
	</c:forEach>
	</table>
	<a href="newUser.do">Add New User</a>
</body>
</html>