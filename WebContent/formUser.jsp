<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" action="saveUser.do" commandName="user">
	<form:hidden path="userID" />
	<br />
	Name: <form:input path="Name" />
	<br />
	Username: <form:input path="Suername" />
	<br />
	<input type="submit" value="Save" />
	</form:form>
</body>
</html>