
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div id="HTMLtoPDF">
	<c:forEach items="${portfolioList}" var="port">
		<tr>
			<td>${port.frontCover}</td>
			<td><a href="editPort.do?id=${port.portfolio}">Edit</a></td>
			<td><a href="deletePort.do?id=${port.portfolio}">remove</a></td>
		</tr>
	</c:forEach>
	</div>
	<a href="newPort.do">Add New User</a>
	<a href="#" onclick="HTMLtoPDF()">Download PDF</a>
	<script src="js/jspdf.js"></script>
	<script src="js/jquery-2.1.3.js"></script>
	<script src="js/pdfFromHTML.js"></script>
</body>

</html>